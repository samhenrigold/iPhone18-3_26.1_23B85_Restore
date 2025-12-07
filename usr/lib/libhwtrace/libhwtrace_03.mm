void *hwtrace_get_disassembly(uint64_t a1, unint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 72) + 8);
  v19[0] = v4 + 8;
  v20 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v24 = v26;
  v25 = 0xA00000000;
  v26[20] = 0;
  v27 = 0;
  if (sub_298BDA9EC(v4, 0, a2, v19) || !(*(**(v4 + 816) + 24))(*(v4 + 816), v23, *(v20 + 48) + a2 - v19[1], 4, a2))
  {
    v5 = 0;
    v8 = v24;
    if (v24 == v26)
    {
      return v5;
    }

    goto LABEL_12;
  }

  v5 = (a1 + 152);
  MEMORY[0x29C294300](a1 + 152, "");
  v11 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v10 = &unk_2A1F1E040;
  v18 = a1 + 152;
  sub_298ADDDB0(&v10);
  (*(**(v4 + 816) + 32))(__p);
  if ((v22 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v7 = v22;
  }

  else
  {
    v7 = __p[1];
  }

  sub_298B9BCEC(&v10, v6, v7);
  if ((v22 & 0x80000000) == 0)
  {
    sub_298B9AE14(&v10);
    if ((*(a1 + 175) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v5 = *v5;
    v8 = v24;
    if (v24 == v26)
    {
      return v5;
    }

    goto LABEL_12;
  }

  operator delete(__p[0]);
  sub_298B9AE14(&v10);
  if (*(a1 + 175) < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v8 = v24;
  if (v24 != v26)
  {
LABEL_12:
    free(v8);
  }

  return v5;
}

void hwtrace_compute_backtrace_at_index(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = ((a2 & 7) << 16) | (a2 << 32) | (a2 >> 3);
  v63 = 0;
  v64 = v5;
  v44 = a1 + 22;
  a1[23] = a1[22];
  v61 = 0;
  v62 = 0;
  v43 = sub_298B0417C(a1, v5, a3);
  v6 = sub_298B04364(a1[10], a1[11], v5, a3);
  v60 = v6;
  v8 = sub_298B078C0(a1[10], a1[11], v5, v7);
  (*(**(v8 + 432) + 24))(v49);
  v9 = v49[0];
  v10 = *(*(v49[0] + 328) + 16);
  if (v10)
  {
    v11 = 0;
    v12 = *(v49[0] + 88);
    while (1)
    {
      v16 = (v10 >> 1) + v11;
      if (v12 > v16)
      {
        v13 = *(v9 + 128);
        if (v13 <= v16)
        {
          v12 = v16 - v13 + 1;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        if (*(v9 + 96) + v12 > v16)
        {
          v14 = *(v9 + 104);
          goto LABEL_7;
        }

        v12 = (v10 >> 1) + v11;
      }

      *(v9 + 112) = *(v9 + 104);
      (*(**(v9 + 72) + 40))(*(v9 + 72), v12);
      v14 = *(v9 + 104);
      v15 = 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 112) - v14) >> 3);
      *(v9 + 88) = v12;
      *(v9 + 96) = v15;
LABEL_7:
      if (*(v14 + 24 * (v16 - v12) + 8) > v6)
      {
        v10 >>= 1;
      }

      else
      {
        v11 = v16 + 1;
        v10 += ~(v10 >> 1);
      }

      if (!v10)
      {
        goto LABEL_16;
      }
    }
  }

  v11 = 0;
  v12 = *(v49[0] + 88);
LABEL_16:
  if (v11)
  {
    v17 = v11 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v12 <= v17)
  {
    v19 = v44;
    if (*(v9 + 96) + v12 > v17)
    {
      v20 = *(v9 + 104);
      goto LABEL_28;
    }

    v18 = *(v9 + 128);
    v12 = v17;
  }

  else
  {
    v18 = *(v9 + 128);
    if (v18 <= v17)
    {
      v12 = v17 - v18 + 1;
    }

    else
    {
      v12 = 0;
    }

    v19 = v44;
  }

  v22 = *(v9 + 104);
  v21 = (v9 + 104);
  v21[1] = v22;
  (*(**(v21 - 4) + 40))(*(v21 - 4), v12, v18, v21, *(v21 - 3));
  v20 = *v21;
  v23 = 0xAAAAAAAAAAAAAAABLL * ((v21[1] - *v21) >> 3);
  *(v21 - 2) = v12;
  *(v21 - 1) = v23;
LABEL_28:
  v24 = *(v20 + 24 * (v17 - v12) + 16);
  v25 = v49[0];
  v49[0] = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v59 = v24;
  v26 = a1[9];
  v27 = *(v26 + 40);
  v28 = *(v26 + 48);
  if (v27 == v28)
  {
    v29 = 0;
    v30 = 0;
  }

  else
  {
    do
    {
      v31 = *(v27 + 56);
      v49[0] = v27;
      v49[1] = &v64;
      v50 = &v60;
      v51 = a1;
      v52 = &v59;
      v53 = &v61;
      sub_298B06C6C(v31 + 112, sub_298B07AA8, v49);
      v27 += 64;
    }

    while (v27 != v28);
    v30 = v61;
    v29 = v62;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v58 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  LODWORD(v53) = 0;
  LODWORD(v45) = 16842753;
  BYTE4(v45) = 0;
  BYTE8(v45) = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v32 = a1[13];
  if (!v32)
  {
    operator new();
  }

  v65 = v49;
  sub_298BB613C(v30, 0xAAAAAAAAAAAAAAABLL * (v29 - v30), &v45, v32, v43, 1u, sub_298B07CA0, &v65);
  v33 = v50;
  if (v50)
  {
    if (!v57)
    {
      goto LABEL_45;
    }

    v34 = (v57 - 1);
    v35 = v34 + 1;
    v36 = **(v50 + 28) + 8 * v34;
    while ((**v36 & 3) != 1)
    {
      --v35;
      v36 -= 8;
      if (v35 < 1)
      {
        v37 = 0;
        goto LABEL_43;
      }
    }

    v37 = (*(*v36 + 16) << 17) >> 15;
LABEL_43:
    *&v45 = v37;
    WORD4(v45) = 256;
    while (1)
    {
      sub_298B07988(v19, &v45);
LABEL_45:
      v38 = *(v33 + 28);
      if (!v38)
      {
        break;
      }

      v39 = *(v38 + 8);
      if (!v39)
      {
        break;
      }

      v33 = *(*v38 + 8 * v39 - 8);
      v40 = *v33 & 3;
      if (v40 == 1)
      {
        v41 = (v33[2] << 17) >> 15;
      }

      else
      {
        v41 = 0;
      }

      *&v45 = v41;
      BYTE8(v45) = v40 == 3;
      BYTE9(v45) = v40 == 2;
    }
  }

  MEMORY[0x29C2945E0](v54, 8);
  MEMORY[0x29C2945E0](v51, 8);
  v42 = v50;
  v50 = 0;
  if (v42)
  {
    sub_298B07DB0((v42 + 28));
    MEMORY[0x29C2945F0](v42, 0x1020C40CE35E8ABLL);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }
}

uint64_t hwtrace_compute_callstacks(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  if (a6)
  {
    v7 = a6 & 3;
  }

  else
  {
    v7 = 1;
  }

  v8 = (a5 >> 1) & 1;
  v9 = a5 & 1;
  v10 = ((a2 & 7) << 16) | (a2 << 32);
  v11 = (a2 >> 3);
  v12 = a1[25];
  for (i = a1[26]; i != v12; i -= 88)
  {
    MEMORY[0x29C2945E0](*(i - 40), 8);
    MEMORY[0x29C2945E0](*(i - 64), 8);
    v14 = *(i - 72);
    *(i - 72) = 0;
    if (v14)
    {
      sub_298B07DB0((v14 + 28));
      MEMORY[0x29C2945F0](v14, 0x1020C40CE35E8ABLL);
    }
  }

  a1[26] = v12;
  v23[0] = sub_298B078C0(a1[10], a1[11], v10 | v11, a4) + 336;
  v23[1] = a3;
  v23[2] = a4;
  LOBYTE(v19) = v7;
  BYTE1(v19) = v9;
  BYTE2(v19) = v8;
  *(&v19 + 3) = 0;
  BYTE8(v19) = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v15 = a1[13];
  if (!v15)
  {
    operator new();
  }

  v24 = a1;
  return sub_298BB613C(v23, 1, &v19, v15, 0, 0, sub_298B07E70, &v24);
}

void hwtrace_compute_callstacks_for_time(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a5)
  {
    v9 = a5 & 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = a4 & 1;
  v11 = a1[25];
  for (i = a1[26]; i != v11; i -= 88)
  {
    MEMORY[0x29C2945E0](*(i - 40), 8);
    MEMORY[0x29C2945E0](*(i - 64), 8);
    v13 = *(i - 72);
    *(i - 72) = 0;
    if (v13)
    {
      sub_298B07DB0((v13 + 28));
      MEMORY[0x29C2945F0](v13, 0x1020C40CE35E8ABLL);
    }
  }

  v14 = 0;
  v15 = 0;
  v16 = (a4 >> 1) & 1;
  a1[26] = v11;
  __p = 0;
  v28 = 0;
  v29 = 0;
  v17 = a1[9];
  *&v23 = &__p;
  v18 = sub_298B08244;
  v19 = *(v17 + 40);
  v20 = *(v17 + 48);
  if (v19 != v20)
  {
    do
    {
      v21 = v18;
      sub_298B06C6C(*(v19 + 56) + 112, v18, &v23);
      v18 = v21;
      v19 += 64;
    }

    while (v19 != v20);
    v15 = __p;
    v14 = v28;
  }

  LOBYTE(v23) = v9;
  BYTE1(v23) = v10;
  BYTE2(v23) = v16;
  *(&v23 + 3) = 0;
  *(&v23 + 1) = a2;
  v24 = 1;
  v25 = a3;
  v26 = 1;
  v22 = a1[13];
  if (!v22)
  {
    operator new();
  }

  v30 = a1;
  sub_298BB613C(v15, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3), &v23, v22, 0, 0, sub_298B08384, &v30);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

unsigned __int16 *hwtrace_get_stacknode_metric(unsigned __int16 **a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 3) | (*(*a1 + 5) << 16);
  if ((v4 & 0x800000) == 0)
  {
    v5 = (v4 & 0x3FFFFF);
    if ((v4 & 0x400000) != 0)
    {
      goto LABEL_16;
    }

LABEL_7:
    v11 = (*v2 | (*(v2 + 2) << 16)) >> 2;
    if (a2 == 1)
    {
      return v5;
    }

    else
    {
      return v11;
    }
  }

  v6 = *v3;
  v7 = *(v3 + 4);
  if (v7)
  {
    LODWORD(v8) = (v7 - 1) & ((v2 >> 4) ^ (v2 >> 9));
    v9 = (v6 + 16 * v8);
    v10 = *v9;
    if (*v9 == v2)
    {
      v5 = v9[1];
      if ((v4 & 0x400000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

    v13 = 1;
    while (v10 != -4096)
    {
      v14 = v8 + v13++;
      v8 = v14 & (v7 - 1);
      v10 = *(v6 + 16 * v8);
      if (v10 == v2)
      {
        v5 = *(v6 + 16 * v8 + 8);
        if ((v4 & 0x400000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }
  }

  v5 = *(v6 + 16 * v7 + 8);
  if ((v4 & 0x400000) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v15 = *(v3 + 3);
  v16 = *(v3 + 10);
  if (v16)
  {
    LODWORD(v17) = (v16 - 1) & ((v2 >> 4) ^ (v2 >> 9));
    v18 = (v15 + 16 * v17);
    v19 = *v18;
    if (*v18 == v2)
    {
      if (a2 == 1)
      {
        return v5;
      }

      else
      {
        return v18[1];
      }
    }

    v20 = 1;
    while (v19 != -4096)
    {
      v21 = v17 + v20++;
      v17 = v21 & (v16 - 1);
      v19 = *(v15 + 16 * v17);
      if (v19 == v2)
      {
        if (a2 == 1)
        {
          return v5;
        }

        else
        {
          return *(v15 + 16 * v17 + 8);
        }
      }
    }
  }

  if (a2 == 1)
  {
    return v5;
  }

  else
  {
    return *(v15 + 16 * v16 + 8);
  }
}

uint64_t hwtrace_get_stacknode_pc(uint64_t a1)
{
  if ((**a1 & 3) == 1)
  {
    return (*(*a1 + 16) << 17) >> 15;
  }

  else
  {
    return 0;
  }
}

uint64_t hwtrace_get_stacknode_child_count(uint64_t a1)
{
  v1 = *(*a1 + 28);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t hwtrace_free_stacknode(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t hwtrace_free_computed_callstacks(uint64_t result)
{
  v1 = result;
  v2 = *(result + 200);
  for (i = *(result + 208); i != v2; i -= 88)
  {
    MEMORY[0x29C2945E0](*(i - 40), 8);
    result = MEMORY[0x29C2945E0](*(i - 64), 8);
    v4 = *(i - 72);
    *(i - 72) = 0;
    if (v4)
    {
      sub_298B07DB0((v4 + 28));
      result = MEMORY[0x29C2945F0](v4, 0x1020C40CE35E8ABLL);
    }
  }

  *(v1 + 208) = v2;
  return result;
}

uint64_t *sub_298B06434(uint64_t **a1, _BYTE *a2, size_t a3)
{
  v8 = *a1;
  *a1 = 0;
  sub_298B851B0(&v8, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_298B064F0(p_p, size, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    result = v8;
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    result = v8;
    if (!v8)
    {
      return result;
    }
  }

  return (*(*result + 8))(result);
}

_BYTE *sub_298B064F0(_BYTE *a1, size_t a2, _BYTE *a3, size_t a4)
{
  v8 = sub_298B9CEA8();
  v9 = v8;
  v10 = v8[4];
  if (v8[3] - v10 > 0xCuLL)
  {
    qmemcpy(v10, "fatal error: ", 13);
    v14 = v8[3];
    v11 = (v8[4] + 13);
    *(v9 + 32) = v11;
    if (a4 <= v14 - v11)
    {
LABEL_3:
      if (a4)
      {
        memcpy(v11, a3, a4);
        v11 = (*(v9 + 32) + a4);
        *(v9 + 32) = v11;
      }

      v12 = a4 != 0;
      if (*(v9 + 24) - v11 < v12)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_298B9BCEC(v8, "fatal error: ", 0xDuLL);
    v11 = *(v9 + 32);
    if (a4 <= *(v9 + 24) - v11)
    {
      goto LABEL_3;
    }
  }

  sub_298B9BCEC(v9, a3, a4);
  v11 = *(v9 + 32);
  v12 = a4 != 0;
  if (*(v9 + 24) - v11 < v12)
  {
LABEL_6:
    if (a4)
    {
      v13 = ":";
    }

    else
    {
      v13 = "";
    }

    sub_298B9BCEC(v9, v13, v12);
    goto LABEL_14;
  }

LABEL_12:
  if (a4)
  {
    v15 = v12;
    memcpy(v11, ":", v12);
    *(v9 + 32) += v15;
  }

LABEL_14:
  v16 = " ";
  if (a2)
  {
    v17 = memchr(a1, 10, a2);
    if (v17 - a1 != -1 && v17 != 0)
    {
      v16 = "\n";
    }
  }

  v19 = *(v9 + 32);
  if (*(v9 + 24) == v19)
  {
    sub_298B9BCEC(v9, v16, 1uLL);
    result = *(v9 + 32);
    if (a2 > *(v9 + 24) - result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *v19 = *v16;
    v20 = *(v9 + 24);
    result = (*(v9 + 32) + 1);
    *(v9 + 32) = result;
    if (a2 > v20 - result)
    {
LABEL_22:
      sub_298B9BCEC(v9, a1, a2);
      result = *(v9 + 32);
      goto LABEL_26;
    }
  }

  if (a2)
  {
    memcpy(result, a1, a2);
    result = (*(v9 + 32) + a2);
    *(v9 + 32) = result;
  }

LABEL_26:
  if (*(v9 + 24) == result)
  {

    return sub_298B9BCEC(v9, "\n", 1uLL);
  }

  else
  {
    *result = 10;
    ++*(v9 + 32);
  }

  return result;
}

uint64_t *sub_298B06740(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_298B067E0(v2);
    MEMORY[0x29C2945F0](v4, 0x10E0C408B335C42);
    return v3;
  }

  return v1;
}

uint64_t sub_298B06794(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298B067E0(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298B067E0(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 88);
  if (v2)
  {
    v4 = 16 * v2;
    v5 = (v3 + 8);
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v5;
        *v5 = 0;
        if (v6)
        {
          sub_298AE95D0((v6 + 8));
          sub_298AE9670((v6 + 8));
          MEMORY[0x29C2945E0](v6[5], 8);
          v7 = v6[2];
          if (v7)
          {
            v6[3] = v7;
            operator delete(v7);
          }

          MEMORY[0x29C2945F0](v6, 0x10B1C40E98BF481);
        }
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
    v3 = *(a1 + 88);
  }

  MEMORY[0x29C2945E0](v3, 8);
  std::mutex::~mutex((a1 + 24));
  return a1;
}

void sub_298B068B4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  if (v4 < v3)
  {
    *v4 = a2;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0u;
    *(v4 + 152) = 0u;
    *(v4 + 168) = 0u;
    v5 = v4 + 200;
    *(v4 + 184) = 0u;
LABEL_3:
    v2[11] = v5;
    return;
  }

  v6 = v2[10];
  v7 = 0x8F5C28F5C28F5C29 * ((v4 - v6) >> 3) + 1;
  if (v7 > 0x147AE147AE147AELL)
  {
    sub_298ADDDA0();
  }

  v8 = 0x8F5C28F5C28F5C29 * ((v3 - v6) >> 3);
  if (2 * v8 > v7)
  {
    v7 = 2 * v8;
  }

  if (v8 >= 0xA3D70A3D70A3D7)
  {
    v9 = 0x147AE147AE147AELL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (v9 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v10 = 8 * ((v4 - v6) >> 3);
  *v10 = a2;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  v5 = v10 + 200;
  v11 = v10 - (v4 - v6);
  if (v6 != v4)
  {
    v12 = v6;
    v13 = v10 - (v4 - v6);
    do
    {
      *v13 = *v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = *(v12 + 1);
      *(v13 + 24) = v12[3];
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 32) = *(v12 + 2);
      *(v13 + 48) = v12[6];
      v12[4] = 0;
      v12[5] = 0;
      v12[6] = 0;
      *(v13 + 64) = 0;
      *(v13 + 72) = 0;
      *(v13 + 56) = *(v12 + 7);
      *(v13 + 72) = v12[9];
      v12[7] = 0;
      v12[8] = 0;
      v12[9] = 0;
      *(v13 + 88) = 0;
      *(v13 + 96) = 0;
      *(v13 + 80) = *(v12 + 5);
      *(v13 + 96) = v12[12];
      v12[10] = 0;
      v12[11] = 0;
      v12[12] = 0;
      *(v13 + 112) = 0;
      *(v13 + 120) = 0;
      *(v13 + 104) = *(v12 + 13);
      *(v13 + 120) = v12[15];
      v12[13] = 0;
      v12[14] = 0;
      v12[15] = 0;
      *(v13 + 136) = 0;
      *(v13 + 144) = 0;
      *(v13 + 128) = *(v12 + 8);
      *(v13 + 144) = v12[18];
      v12[16] = 0;
      v12[17] = 0;
      v12[18] = 0;
      *(v13 + 160) = 0;
      *(v13 + 168) = 0;
      *(v13 + 152) = *(v12 + 19);
      *(v13 + 168) = v12[21];
      v12[19] = 0;
      v12[20] = 0;
      v12[21] = 0;
      *(v13 + 184) = 0;
      *(v13 + 192) = 0;
      *(v13 + 176) = *(v12 + 11);
      *(v13 + 192) = v12[24];
      v12[22] = 0;
      v12[23] = 0;
      v12[24] = 0;
      v12 += 25;
      v13 += 200;
    }

    while (v12 != v4);
    while (1)
    {
      v14 = v6[22];
      if (v14)
      {
        v6[23] = v14;
        operator delete(v14);
        v15 = v6[19];
        if (!v15)
        {
LABEL_20:
          v16 = v6[16];
          if (!v16)
          {
            goto LABEL_21;
          }

          goto LABEL_29;
        }
      }

      else
      {
        v15 = v6[19];
        if (!v15)
        {
          goto LABEL_20;
        }
      }

      v6[20] = v15;
      operator delete(v15);
      v16 = v6[16];
      if (!v16)
      {
LABEL_21:
        v17 = v6[13];
        if (!v17)
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      }

LABEL_29:
      v6[17] = v16;
      operator delete(v16);
      v17 = v6[13];
      if (!v17)
      {
LABEL_22:
        v18 = v6[10];
        if (!v18)
        {
          goto LABEL_23;
        }

        goto LABEL_31;
      }

LABEL_30:
      v6[14] = v17;
      operator delete(v17);
      v18 = v6[10];
      if (!v18)
      {
LABEL_23:
        v19 = v6[7];
        if (!v19)
        {
          goto LABEL_24;
        }

        goto LABEL_32;
      }

LABEL_31:
      v6[11] = v18;
      operator delete(v18);
      v19 = v6[7];
      if (!v19)
      {
LABEL_24:
        v20 = v6[4];
        if (v20)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }

LABEL_32:
      v6[8] = v19;
      operator delete(v19);
      v20 = v6[4];
      if (v20)
      {
LABEL_33:
        v6[5] = v20;
        operator delete(v20);
        v21 = v6[1];
        if (!v21)
        {
          goto LABEL_17;
        }

LABEL_26:
        v6[2] = v21;
        operator delete(v21);
        goto LABEL_17;
      }

LABEL_25:
      v21 = v6[1];
      if (v21)
      {
        goto LABEL_26;
      }

LABEL_17:
      v6 += 25;
      if (v6 == v4)
      {
        v6 = v2[10];
        break;
      }
    }
  }

  v2[10] = v11;
  v2[11] = v5;
  v2[12] = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  v2[11] = v5;
}

uint64_t sub_298B06C6C(uint64_t result, void (*a2)(void, void), uint64_t a3)
{
  if ((*(result + 32) & 1) == 0)
  {
    v56 = 0;
    v32 = a2;
    v33 = result;
    v34 = a3;
    sub_298AE75D4(result, &v56);
    result = v33;
    a3 = v34;
    a2 = v32;
  }

  v3 = *(result + 40);
  if (v3)
  {
    v11 = result;
    v12 = a2;
    v13 = a3;
    a2(a3, v3);
    result = v11;
    a3 = v13;
    a2 = v12;
  }

  if ((*(result + 33) & 1) == 0)
  {
    v56 = 1;
    v35 = a2;
    v36 = result;
    v37 = a3;
    sub_298AE75D4(result, &v56);
    result = v36;
    a3 = v37;
    a2 = v35;
  }

  v4 = *(result + 48);
  if (v4)
  {
    v14 = result;
    v15 = a2;
    v16 = a3;
    a2(a3, v4);
    result = v14;
    a3 = v16;
    a2 = v15;
  }

  if ((*(result + 34) & 1) == 0)
  {
    v56 = 2;
    v38 = a2;
    v39 = result;
    v40 = a3;
    sub_298AE75D4(result, &v56);
    result = v39;
    a3 = v40;
    a2 = v38;
  }

  v5 = *(result + 56);
  if (v5)
  {
    v17 = result;
    v18 = a2;
    v19 = a3;
    a2(a3, v5);
    result = v17;
    a3 = v19;
    a2 = v18;
  }

  if ((*(result + 35) & 1) == 0)
  {
    v56 = 3;
    v41 = a2;
    v42 = result;
    v43 = a3;
    sub_298AE75D4(result, &v56);
    result = v42;
    a3 = v43;
    a2 = v41;
  }

  v6 = *(result + 64);
  if (v6)
  {
    v20 = result;
    v21 = a2;
    v22 = a3;
    a2(a3, v6);
    result = v20;
    a3 = v22;
    a2 = v21;
  }

  if ((*(result + 36) & 1) == 0)
  {
    v56 = 4;
    v44 = a2;
    v45 = result;
    v46 = a3;
    sub_298AE75D4(result, &v56);
    result = v45;
    a3 = v46;
    a2 = v44;
  }

  v7 = *(result + 72);
  if (v7)
  {
    v23 = result;
    v24 = a2;
    v25 = a3;
    a2(a3, v7);
    result = v23;
    a3 = v25;
    a2 = v24;
  }

  if ((*(result + 37) & 1) == 0)
  {
    v56 = 5;
    v47 = a2;
    v48 = result;
    v49 = a3;
    sub_298AE75D4(result, &v56);
    result = v48;
    a3 = v49;
    a2 = v47;
  }

  v8 = *(result + 80);
  if (v8)
  {
    v26 = result;
    v27 = a2;
    v28 = a3;
    a2(a3, v8);
    result = v26;
    a3 = v28;
    a2 = v27;
  }

  if ((*(result + 38) & 1) == 0)
  {
    v56 = 6;
    v50 = a2;
    v51 = result;
    v52 = a3;
    sub_298AE75D4(result, &v56);
    result = v51;
    a3 = v52;
    a2 = v50;
  }

  v9 = *(result + 88);
  if (v9)
  {
    v29 = result;
    v30 = a2;
    v31 = a3;
    a2(a3, v9);
    result = v29;
    a3 = v31;
    a2 = v30;
  }

  if ((*(result + 39) & 1) == 0)
  {
    v56 = 7;
    v53 = a2;
    v54 = result;
    v55 = a3;
    sub_298AE75D4(result, &v56);
    result = v54;
    a3 = v55;
    a2 = v53;
  }

  v10 = *(result + 96);
  if (v10)
  {
    return (a2)(a3, v10);
  }

  return result;
}

void sub_298B06FA0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v15 = 0;
  v3 = v2 + 24 * *(a2 + 4);
  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 8) = v5;
  (*(**(a2 + 432) + 24))(&v14);
  v6 = v14;
  v7 = *(*(v14 + 328) + 8);
  if (!v7)
  {
    v14 = 0;
    goto LABEL_15;
  }

  v8 = 0;
  for (i = 0; i != v7; ++i)
  {
    v11 = *(v6 + 24);
    if (v11 > i)
    {
      v10 = *(v6 + 64);
      if (v10 <= i)
      {
        v11 = i - v10 + 1;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_6;
    }

    if (*(v6 + 32) + v11 <= i)
    {
      v11 = i;
LABEL_6:
      *(v6 + 48) = *(v6 + 40);
      (*(**(v6 + 8) + 32))(*(v6 + 8), v11);
      v12 = *(v6 + 40);
      v13 = 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 48) - v12) >> 2);
      *(v6 + 24) = v11;
      *(v6 + 32) = v13;
      goto LABEL_7;
    }

    v12 = *(v6 + 40);
LABEL_7:
    v15 += *(v12 - 12 * v11 + v8) >> 47;
    sub_298AFB228(v4, &v15);
    v8 += 12;
  }

  v6 = v14;
  v14 = 0;
  if (v6)
  {
LABEL_15:
    (*(*v6 + 8))(v6);
  }
}

_BYTE **sub_298B07144(_BYTE **result, uint64_t a2)
{
  v2 = *(a2 + 360) - *(a2 + 416) - (*(a2 + 368) + *(a2 + 376) + *(a2 + 392) + *(a2 + 408));
  if ((v2 & ~(v2 >> 63)) / *(*(a2 + 432) + 8) <= 0.01)
  {
    return result;
  }

  v4 = result;
  v5 = sub_298B9CDFC();
  v6 = v5;
  v7 = v5[4];
  if ((v5[3] - v7) > 8)
  {
    *(v7 + 8) = 32;
    *v7 = *"Observed ";
    v5[4] += 9;
    if (v2 > 0xFFFFFFFFLL)
    {
LABEL_4:
      sub_298B8FEA0(v5, v2 & ~(v2 >> 63), 0, 0, 0);
      v8 = v6[4];
      if (v6[3] - v8 > 0x1BuLL)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = sub_298B9BCEC(v5, "Observed ", 9uLL);
    if (v2 > 0xFFFFFFFFLL)
    {
      goto LABEL_4;
    }
  }

  sub_298B8FC48(v5, v2 & ~(v2 >> 63), 0, 0, 0);
  v8 = v6[4];
  if (v6[3] - v8 > 0x1BuLL)
  {
LABEL_5:
    qmemcpy(v8, " excess decoding desyncs on ", 28);
    v6[4] += 28;
    v9 = *(*(*v4 + 5) + 32) - 1;
    if (v9 > 3)
    {
      goto LABEL_6;
    }

LABEL_11:
    v11 = qword_298CF79B0[v9];
    v10 = off_29EEB4A30[v9];
    v12 = v6[4];
    if (v11 <= v6[3] - v12)
    {
      goto LABEL_7;
    }

LABEL_12:
    sub_298B9BCEC(v6, v10, v11);
    goto LABEL_13;
  }

LABEL_10:
  sub_298B9BCEC(v6, " excess decoding desyncs on ", 0x1CuLL);
  v9 = *(*(*v4 + 5) + 32) - 1;
  if (v9 <= 3)
  {
    goto LABEL_11;
  }

LABEL_6:
  v10 = "E";
  v11 = 1;
  v12 = v6[4];
  if (v6[3] == v12)
  {
    goto LABEL_12;
  }

LABEL_7:
  memcpy(v12, v10, v11);
  v6[4] += v11;
LABEL_13:
  sub_298B8FC48(v6, *(*(*v4 + 5) + 4), 0, 0, 0);
  v13 = v6[4];
  if ((v6[3] - v13) > 5)
  {
    *(v13 + 4) = 8293;
    *v13 = 1919894304;
    v6[4] += 6;
  }

  else
  {
    sub_298B9BCEC(v6, " Core ", 6uLL);
  }

  result = sub_298B8FC48(v6, *(a2 + 4), 0, 0, 0);
  v14 = v6[4];
  if (v6[3] - v14 > 1uLL)
  {
    *v14 = 2606;
    v6[4] += 2;
  }

  else
  {
    result = sub_298B9BCEC(v6, ".\n", 2uLL);
  }

  *v4[1] = 1;
  return result;
}

uint64_t sub_298B07410(uint64_t a1, uint64_t a2)
{
  v40 = *(a2 + 4);
  v4 = *(a2 + 360);
  v5 = *(a2 + 368);
  v6 = *(a2 + 376);
  v7 = *(a2 + 392);
  v8 = *(a2 + 408);
  v9 = *(a2 + 416);
  v10 = sub_298B9CDFC();
  v11 = v10;
  v12 = *(*(*a1 + 40) + 32) - 1;
  if (v12 > 3)
  {
    v14 = "E";
    v13 = 1;
    v15 = v5 + v6;
    v16 = v7 + v8;
    v17 = v10[4];
    if (v11[3] != v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = qword_298CF79B0[v12];
    v14 = off_29EEB4A30[v12];
    v15 = v5 + v6;
    v16 = v7 + v8;
    v17 = v10[4];
    if (v13 <= v11[3] - v17)
    {
LABEL_3:
      memcpy(v17, v14, v13);
      v11[4] += v13;
      goto LABEL_6;
    }
  }

  sub_298B9BCEC(v11, v14, v13);
LABEL_6:
  v18 = v4 - v9;
  sub_298B8FC48(v11, *(*(*a1 + 40) + 4), 0, 0, 0);
  v19 = v11[4];
  if ((v11[3] - v19) > 5)
  {
    *(v19 + 4) = 21840;
    *v19 = 1126187040;
    v11[4] += 6;
  }

  else
  {
    sub_298B9BCEC(v11, " @ CPU", 6uLL);
  }

  v20 = v18 - (v15 + v16);
  sub_298B8FC48(v11, v40, 0, 0, 0);
  v21 = v11[4];
  if (v11[3] - v21 > 1uLL)
  {
    *v21 = 8250;
    v38 = v11[3];
    v22 = (v11[4] + 2);
    v11[4] = v22;
    v23 = v20 & ~(v20 >> 63);
    if ((v38 - v22) > 0xF)
    {
LABEL_11:
      *v22 = *"[ExcessDesyncs: ";
      v11[4] += 16;
      v24 = v11;
      if (v20 > 0xFFFFFFFFLL)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  else
  {
    sub_298B9BCEC(v11, ": ", 2uLL);
    v22 = v11[4];
    v23 = v20 & ~(v20 >> 63);
    if (v11[3] - v22 > 0xFuLL)
    {
      goto LABEL_11;
    }
  }

  v24 = sub_298B9BCEC(v11, "[ExcessDesyncs: ", 0x10uLL);
  if (v20 > 0xFFFFFFFFLL)
  {
LABEL_12:
    sub_298B8FEA0(v24, v23, 0, 0, 0);
    v25 = v11[4];
    if (v11[3] - v25 > 1uLL)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  sub_298B8FC48(v24, v23, 0, 0, 0);
  v25 = v11[4];
  if (v11[3] - v25 > 1uLL)
  {
LABEL_13:
    *v25 = 8285;
    v26 = v11[3];
    v27 = (v11[4] + 2);
    v11[4] = v27;
    if ((v26 - v27) > 6)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  sub_298B9BCEC(v11, "] ", 2uLL);
  v27 = v11[4];
  if (v11[3] - v27 > 6uLL)
  {
LABEL_14:
    *(v27 + 3) = 540701552;
    *v27 = 1885423451;
    v11[4] += 7;
    v28 = *(a2 + 360);
    v29 = v11;
    if (HIDWORD(v28))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v29 = sub_298B9BCEC(v11, "[Gaps: ", 7uLL);
  v28 = *(a2 + 360);
  if (HIDWORD(v28))
  {
LABEL_15:
    sub_298B8FEA0(v29, v28, 0, 0, 0);
    v30 = v11[4];
    if (v11[3] - v30 > 1uLL)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_298B8FC48(v29, v28, 0, 0, 0);
  v30 = v11[4];
  if (v11[3] - v30 > 1uLL)
  {
LABEL_16:
    *v30 = 8285;
    v31 = v11[3];
    v32 = (v11[4] + 2);
    v11[4] = v32;
    if ((v31 - v32) > 0x17)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_298B9BCEC(v11, "] ", 2uLL);
  v32 = v11[4];
  if (v11[3] - v32 > 0x17uLL)
  {
LABEL_17:
    qmemcpy(v32, "[NumMissingInstruction: ", 24);
    v11[4] += 24;
    v33 = *(a2 + 368);
    v34 = v11;
    if (HIDWORD(v33))
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_30:
  v34 = sub_298B9BCEC(v11, "[NumMissingInstruction: ", 0x18uLL);
  v33 = *(a2 + 368);
  if (HIDWORD(v33))
  {
LABEL_18:
    result = sub_298B8FEA0(v34, v33, 0, 0, 0);
    v36 = v11[4];
    if (v11[3] == v36)
    {
      goto LABEL_19;
    }

LABEL_32:
    *v36 = 93;
    v39 = v11[3];
    v37 = (v11[4] + 1);
    v11[4] = v37;
    if (v39 == v37)
    {
      goto LABEL_20;
    }

LABEL_33:
    *v37 = 10;
    ++v11[4];
    return result;
  }

LABEL_31:
  result = sub_298B8FC48(v34, v33, 0, 0, 0);
  v36 = v11[4];
  if (v11[3] != v36)
  {
    goto LABEL_32;
  }

LABEL_19:
  result = sub_298B9BCEC(v11, "]", 1uLL);
  v37 = v11[4];
  if (v11[3] != v37)
  {
    goto LABEL_33;
  }

LABEL_20:

  return sub_298B9BCEC(v11, "\n", 1uLL);
}

uint64_t sub_298B078C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (0x8F5C28F5C28F5C29 * ((a2 - a1) >> 3) <= a3)
  {
    v7 = a3;
    v8 = sub_298B9A258(a1);
    v9 = sub_298B00584(v8, "Cluster index ");
    v10 = sub_298B06C38(v9, v7);
    sub_298B00584(v10, " out of bounds");
    abort();
  }

  v4 = WORD1(a3);
  v5 = *(*(a1 + 200 * a3) + 56);
  if (*(v5 + WORD1(a3) + 144))
  {
    return *(v5 + 8 * WORD1(a3) + 152);
  }

  v11 = WORD1(a3);
  sub_298AE75D4(v5 + 112, &v11);
  return *(v5 + 8 * v4 + 152);
}

void sub_298B07988(uint64_t a1, _OWORD *a2)
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
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_298ADDDA0();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
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

void sub_298B07AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*a1 + 32);
  v7 = *(a2 + 4);
  v8 = (v7 + 8 * v6);
  if (*(*(a1 + 8) + 4) == v8)
  {
    v9 = **(a1 + 16);
LABEL_7:
    v15 = v9 + 1;
    v16 = a2 + 336;
    v17 = *(a1 + 40);
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    if (v18 >= v19)
    {
      v21 = *v17;
      v22 = 0xAAAAAAAAAAAAAAABLL * (&v18[-*v17] >> 3);
      v23 = v22 + 1;
      if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_298ADDDA0();
      }

      v24 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v21) >> 3);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x555555555555555)
      {
        v25 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        if (v25 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      v26 = (8 * (&v18[-*v17] >> 3));
      *v26 = v16;
      v26[1] = 0;
      v26[2] = v15;
      v20 = 24 * v22 + 24;
      v27 = v26 - (v18 - v21);
      memcpy(v27, v21, v18 - v21);
      *v17 = v27;
      *(v17 + 8) = v20;
      *(v17 + 16) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v18 = v16;
      *(v18 + 1) = 0;
      v20 = (v18 + 24);
      *(v18 + 2) = v15;
    }

    *(v17 + 8) = v20;
    return;
  }

  v10 = **(a1 + 32);
  v11 = sub_298B078C0(*(*(a1 + 24) + 80), *(*(a1 + 24) + 88), v6 | (v7 << 16) | (v8 << 32), a4);
  (*(**(v11 + 432) + 24))(&v28);
  v9 = sub_298BFC9BC(v28, v10, 1);
  v13 = v12;
  v14 = v28;
  v28 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if ((v13 & 1) != 0 && v9 != -1)
  {
    goto LABEL_7;
  }
}

void sub_298B07CA0(uint64_t *a1, uint64_t a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a2 + 40);
  *(a2 + 40) = 0;
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  *(a2 + 48) = a3;
  v9 = *(a2 + 64);
  *(a2 + 64) = 0;
  v12 = *(a2 + 72);
  v10 = *a1;
  *v10 = *a2;
  v11 = *(v10 + 16);
  *(v10 + 16) = v3;
  if (v11)
  {
    sub_298B07DB0((v11 + 28));
    MEMORY[0x29C2945F0](v11, 0x1020C40CE35E8ABLL);
  }

  MEMORY[0x29C2945E0](*(v10 + 24), 8);
  *(v10 + 24) = v4;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  MEMORY[0x29C2945E0](*(v10 + 48), 8);
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  *(v10 + 72) = v12;
  MEMORY[0x29C2945E0](0, 8);

  JUMPOUT(0x29C2945E0);
}

char ***sub_298B07DB0(char ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 2);
    if (v4)
    {
      v5 = 8 * v4;
      v6 = v3 - 8;
      do
      {
        v7 = *&v6[v5];
        *&v6[v5] = 0;
        if (v7)
        {
          sub_298B07DB0((v7 + 28));
          MEMORY[0x29C2945F0](v7, 0x1020C40CE35E8ABLL);
        }

        v5 -= 8;
      }

      while (v5);
      v3 = *v2;
    }

    if (v3 != (v2 + 2))
    {
      free(v3);
    }

    MEMORY[0x29C2945F0](v2, 0x1080C40ABB4582ELL);
  }

  return a1;
}

uint64_t sub_298B07E70(uint64_t *a1, __int128 *a2)
{
  v20 = *a2;
  v2 = *(a2 + 2);
  v3 = *(a2 + 3);
  v21 = v2;
  v22 = v3;
  a2[1] = 0uLL;
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  v23 = v4;
  v24 = v5;
  *(a2 + 4) = 0;
  v6 = *(a2 + 10);
  v25 = v6;
  *(a2 + 10) = 0;
  v7 = *(a2 + 6);
  v26 = v7;
  *(a2 + 6) = 0;
  v8 = *(a2 + 14);
  v9 = *(a2 + 15);
  v27 = v8;
  v28 = v9;
  *(a2 + 7) = 0;
  v10 = *(a2 + 16);
  v29 = v10;
  *(a2 + 16) = 0;
  v11 = *(a2 + 72);
  v30 = v11;
  v12 = *a1;
  v13 = *(*a1 + 208);
  if (v13 >= *(*a1 + 216))
  {
    v18 = sub_298B07FBC((v12 + 200), &v20, v11);
    v16 = v26;
    v14 = v21;
    v15 = v22;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = *a2;
    *(v13 + 16) = v2;
    *(v13 + 24) = v3;
    *v13 = v17;
    *(v13 + 32) = v4;
    *(v13 + 36) = v5;
    *(v13 + 40) = v6;
    *(v13 + 48) = v7;
    *(v13 + 56) = v8;
    *(v13 + 60) = v9;
    *(v13 + 64) = v10;
    v18 = v13 + 88;
    *(v13 + 72) = v30;
  }

  *(v12 + 208) = v18;
  MEMORY[0x29C2945E0](v16, 8);
  result = MEMORY[0x29C2945E0](v15, 8);
  if (v14)
  {
    sub_298B07DB0((v14 + 28));

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298B07FBC(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v3 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_298ADDDA0();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  a3.n128_u64[0] = 0;
  v7 = *(a2 + 16);
  v8 = 8 * ((a1[1] - *a1) >> 3);
  *v8 = *a2;
  *(v8 + 16) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v8 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v8 + 48) = *(a2 + 48);
  v9 = *(a2 + 56);
  *(a2 + 48) = a3;
  *(v8 + 56) = v9;
  *(v8 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(v8 + 72) = *(a2 + 72);
  v10 = *a1;
  v11 = a1[1];
  v12 = 88 * v3 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = 88 * v3 + *a1 - v11;
    do
    {
      *v14 = *v13;
      v15 = v13[2];
      v13[2] = 0;
      *(v14 + 16) = v15;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 24) = v13[3];
      v13[3] = 0;
      *(v14 + 32) = *(v13 + 8);
      *(v13 + 8) = 0;
      LODWORD(v15) = *(v14 + 36);
      *(v14 + 36) = *(v13 + 9);
      *(v13 + 9) = v15;
      LODWORD(v15) = *(v14 + 40);
      *(v14 + 40) = *(v13 + 10);
      *(v13 + 10) = v15;
      *(v14 + 64) = 0;
      *(v14 + 56) = 0;
      *(v14 + 48) = v13[6];
      v13[6] = 0;
      *(v14 + 56) = *(v13 + 14);
      *(v13 + 14) = 0;
      LODWORD(v15) = *(v14 + 60);
      *(v14 + 60) = *(v13 + 15);
      *(v13 + 15) = v15;
      LODWORD(v15) = *(v14 + 64);
      *(v14 + 64) = *(v13 + 16);
      *(v13 + 16) = v15;
      *(v14 + 72) = *(v13 + 9);
      v13 += 11;
      v14 += 88;
    }

    while (v13 != v11);
    do
    {
      MEMORY[0x29C2945E0](v10[6], 8);
      MEMORY[0x29C2945E0](v10[3], 8);
      v16 = v10[2];
      v10[2] = 0;
      if (v16)
      {
        sub_298B07DB0((v16 + 28));
        MEMORY[0x29C2945F0](v16, 0x1020C40CE35E8ABLL);
      }

      v10 += 11;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = 88 * v3 + 88;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return 88 * v3 + 88;
}

void sub_298B08244(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + 336;
  v4 = *(*(a2 + 432) + 8);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (v5 < v6)
  {
    *v5 = v3;
    *(v5 + 1) = 0;
    v7 = (v5 + 24);
    *(v5 + 2) = v4;
LABEL_3:
    *(v2 + 8) = v7;
    return;
  }

  v8 = *v2;
  v9 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*v2] >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_298ADDDA0();
  }

  v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x555555555555555)
  {
    v12 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v13 = (8 * (&v5[-*v2] >> 3));
  *v13 = v3;
  v13[1] = 0;
  v13[2] = v4;
  v7 = 24 * v9 + 24;
  v14 = (24 * v9 - (v5 - v8));
  memcpy(v14, v8, v5 - v8);
  *v2 = v14;
  *(v2 + 8) = v7;
  *(v2 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(v2 + 8) = v7;
}

uint64_t sub_298B08384(uint64_t *a1, __int128 *a2)
{
  v20 = *a2;
  v2 = *(a2 + 2);
  v3 = *(a2 + 3);
  v21 = v2;
  v22 = v3;
  a2[1] = 0uLL;
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  v23 = v4;
  v24 = v5;
  *(a2 + 4) = 0;
  v6 = *(a2 + 10);
  v25 = v6;
  *(a2 + 10) = 0;
  v7 = *(a2 + 6);
  v26 = v7;
  *(a2 + 6) = 0;
  v8 = *(a2 + 14);
  v9 = *(a2 + 15);
  v27 = v8;
  v28 = v9;
  *(a2 + 7) = 0;
  v10 = *(a2 + 16);
  v29 = v10;
  *(a2 + 16) = 0;
  v11 = *(a2 + 72);
  v30 = v11;
  v12 = *a1;
  v13 = *(*a1 + 208);
  if (v13 >= *(*a1 + 216))
  {
    v18 = sub_298B07FBC((v12 + 200), &v20, v11);
    v16 = v26;
    v14 = v21;
    v15 = v22;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = *a2;
    *(v13 + 16) = v2;
    *(v13 + 24) = v3;
    *v13 = v17;
    *(v13 + 32) = v4;
    *(v13 + 36) = v5;
    *(v13 + 40) = v6;
    *(v13 + 48) = v7;
    *(v13 + 56) = v8;
    *(v13 + 60) = v9;
    *(v13 + 64) = v10;
    v18 = v13 + 88;
    *(v13 + 72) = v30;
  }

  *(v12 + 208) = v18;
  MEMORY[0x29C2945E0](v16, 8);
  result = MEMORY[0x29C2945E0](v15, 8);
  if (v14)
  {
    sub_298B07DB0((v14 + 28));

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

void *sub_298B084D0(void **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    sub_298ADDDA0();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v5 = 0x155555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x155555555555555)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v6 = (a1[1] - *a1) >> 6 << 6;
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 80);
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 80) = v7;
  *(v6 + 95) = *(a2 + 95);
  v8 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v8;
  *(192 * v2 + 0x68) = 0;
  *(v6 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    *(192 * v2 + 0x68) = *(a2 + 104);
    *(192 * v2 + 0x78) = *(a2 + 120);
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    *(192 * v2 + 0x80) = 1;
  }

  *(192 * v2 + 0x88) = *(a2 + 136);
  *(192 * v2 + 0x98) = *(a2 + 152);
  v9 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v10 = *(a2 + 176);
  v11 = *(a2 + 184);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(192 * v2 + 0xB0) = v10;
  *(192 * v2 + 0xB8) = v11;
  v12 = (v6 + 192);
  v13 = *a1;
  v14 = a1[1];
  v15 = (v6 + *a1 - v14);
  *(v6 + 160) = v9;
  sub_298B08664(a1, v13, v14, v15);
  v16 = *a1;
  *a1 = v15;
  a1[1] = v12;
  a1[2] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  return v12;
}

void sub_298B08664(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2 + 13;
    v7 = a4 + 104;
    do
    {
      v10 = v6 - 13;
      *(v7 - 104) = *(v6 - 13);
      v11 = *(v6 - 6);
      *(v7 - 80) = *(v6 - 10);
      *(v7 - 96) = v11;
      v10[2] = 0;
      v10[3] = 0;
      v10[1] = 0;
      *(v7 - 72) = *(v6 - 9);
      v12 = *(v6 - 7);
      v13 = *(v6 - 5);
      v14 = *(v6 - 3);
      *(v7 - 9) = *(v6 - 9);
      *(v7 - 24) = v14;
      *(v7 - 40) = v13;
      *(v7 - 56) = v12;
      *v7 = 0;
      *(v7 + 24) = 0;
      if (*(v6 + 24) == 1)
      {
        v15 = *v6;
        *(v7 + 16) = v6[2];
        *v7 = v15;
        v6[1] = 0;
        v6[2] = 0;
        *v6 = 0;
        *(v7 + 24) = 1;
      }

      v8 = v6[6];
      *(v7 + 32) = *(v6 + 2);
      *(v7 + 48) = v8;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 56) = *(v6 + 7);
      v9 = v6[10];
      *(v7 + 72) = v6[9];
      v6[7] = 0;
      v6[8] = 0;
      v6[9] = 0;
      v6[10] = 0;
      *(v7 + 80) = v9;
      v6 += 24;
      v7 += 192;
    }

    while (v10 + 24 != a3);
    while (1)
    {
      v17 = v5[23];
      v5[23] = 0;
      if (v17)
      {
        (*(*v17 + 16))(v17);
        v16 = v5[20];
        if (v16)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v16 = v5[20];
        if (v16)
        {
LABEL_7:
          v5[21] = v16;
          operator delete(v16);
          if (*(v5 + 128) == 1)
          {
            goto LABEL_13;
          }

          goto LABEL_15;
        }
      }

      if (*(v5 + 128) == 1)
      {
LABEL_13:
        if (*(v5 + 127) < 0)
        {
          operator delete(v5[13]);
        }
      }

LABEL_15:
      if (*(v5 + 31) < 0)
      {
        operator delete(v5[1]);
        v5 += 24;
        if (v5 == a3)
        {
          return;
        }
      }

      else
      {
        v5 += 24;
        if (v5 == a3)
        {
          return;
        }
      }
    }
  }
}

uint64_t sub_298B0880C(uint64_t a1, unsigned int *a2, void *a3, unsigned int *a4, unint64_t a5, uint64_t a6)
{
  v166[20] = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if (a5 >= 4)
  {
    v8 = 0;
    *a3 = 4;
    v9 = *a4;
    while (1)
    {
      v10 = 0;
      v160 = v8;
      v11 = *(&off_29EEB4A50 + v8);
      v12 = *(a1 + 16);
      v13 = 3;
      v14 = v11;
      v15 = *v11;
      if (v15 == 2)
      {
LABEL_6:
        v16 = 0;
        v17 = 0;
        v18 = (v14 + 1);
        while (1)
        {
          v19 = *v18;
          v20 = *v18 & 0x7F;
          if (v17 >= 0x3F)
          {
            v88 = v20 > 1;
            if (v17 != 63)
            {
              v88 = v20 != 0;
            }

            if (v88)
            {
              break;
            }
          }

          v16 += v20 << v17;
          v17 += 7;
          ++v18;
          if ((v19 & 0x80) == 0)
          {
            goto LABEL_9;
          }
        }

        v16 = 0;
LABEL_9:
        v21 = &v14[v18 - (v14 + 1) + 1];
        v14 = v21 + 3;
        if (v16 != v10)
        {
          v22 = *v21;
          v23 = v21[2];
LABEL_11:
          v14 += v22 | (v23 << 16);
          goto LABEL_5;
        }

        goto LABEL_5;
      }

      while (v15 < 5)
      {
        switch(v15)
        {
          case 1:
            v24 = 0;
            v25 = 0;
            v26 = (v14 + 1);
            while (1)
            {
              v27 = *v26;
              v28 = *v26 & 0x7F;
              if (v25 >= 0x3F)
              {
                v89 = v28 > 1;
                if (v25 != 63)
                {
                  v89 = v28 != 0;
                }

                if (v89)
                {
                  break;
                }
              }

              v24 += v28 << v25;
              v25 += 7;
              ++v26;
              if ((v27 & 0x80) == 0)
              {
                goto LABEL_17;
              }
            }

            LOBYTE(v24) = 0;
LABEL_17:
            v29 = &v14[v26 - (v14 + 1) + 1];
            v30 = *v29;
            v14 = v29 + 1;
            v31 = ~(-1 << v30) << v24;
            if (v30 == 32)
            {
              v32 = -1;
            }

            else
            {
              v32 = v31;
            }

            v10 = (v32 & v9) >> v24;
            v15 = *v14;
            if (v15 == 2)
            {
              goto LABEL_6;
            }

            break;
          case 4:
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v62 = v14 + 1;
            while (1)
            {
              v63 = v62[v59];
              v64 = v63 & 0x7F;
              if (v61 >= 0x3F)
              {
                v105 = v64 > 1;
                if (v61 != 63)
                {
                  v105 = v64 != 0;
                }

                if (v105)
                {
                  break;
                }
              }

              v60 += v64 << v61;
              v61 += 7;
              ++v59;
              if ((v63 & 0x80) == 0)
              {
                v65 = &v62[v59];
                v66 = *v65;
                v67 = v65[1];
                v68 = v65 + 3;
                v69 = v65[2];
                v70 = *(v12 + 216);
                switch(v60)
                {
                  case 1:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 232) & 0x4000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 2:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v125 = *(v12 + 232);
                    goto LABEL_375;
                  case 3:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 232) & 0x10000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 4:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 232) & 0x80000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 5:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    v126 = *(v12 + 232);
                    if ((v126 & 0x8000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v126 & 0x40000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 6:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    if ((*(v12 + 235) & 4) != 0)
                    {
                      goto LABEL_236;
                    }

                    goto LABEL_151;
                  case 7:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v122 = *(v12 + 232);
                    if ((v122 & 0x4000000) != 0)
                    {
                      goto LABEL_311;
                    }

                    goto LABEL_249;
                  case 8:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v127 = *(v12 + 232);
                    goto LABEL_379;
                  case 9:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v128 = *(v12 + 232);
                    goto LABEL_411;
                  case 10:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    v129 = *(v12 + 232);
                    if ((v129 & 0x4000000) != 0)
                    {
                      goto LABEL_293;
                    }

                    goto LABEL_151;
                  case 11:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    v129 = *(v12 + 232);
                    if ((v129 & 0x8000000) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_293:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    v12 = v90;
                    if ((v129 & 0x400000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 12:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    if ((*(v12 + 235) & 4) != 0)
                    {
                      goto LABEL_364;
                    }

                    goto LABEL_151;
                  case 13:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    v121 = *(v12 + 232);
                    if ((v121 & 0x4000000) != 0)
                    {
                      goto LABEL_258;
                    }

                    goto LABEL_151;
                  case 14:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    v130 = *(v12 + 232);
                    if ((v130 & 0x4000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v130 & 0x80000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 15:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
LABEL_302:
                      v12 = v90;
                      v14 = v68;
                      goto LABEL_5;
                    }

                    if ((*(v12 + 235) & 4) == 0)
                    {
LABEL_151:
                      v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                      v12 = v90;
                      goto LABEL_5;
                    }

LABEL_368:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    v12 = v90;
                    if ((v70 & 0x10000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 16:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v70 = *(v12 + 232);
                    if ((v70 & 0x40000000000) != 0)
                    {
                      goto LABEL_311;
                    }

                    goto LABEL_160;
                  case 17:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v122 = *(v12 + 232);
                    if ((v122 & 0x8000000) != 0)
                    {
                      goto LABEL_311;
                    }

                    goto LABEL_249;
                  case 18:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v70 = *(v12 + 232);
                    if ((v70 & 0x80000000000) == 0)
                    {
                      goto LABEL_160;
                    }

LABEL_311:
                    v14 = v68;
                    goto LABEL_5;
                  case 19:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 237) & 4) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x800000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 20:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 234) & 0x4000200) != 0)
                    {
                      goto LABEL_314;
                    }

                    goto LABEL_151;
                  case 21:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 232) & 0x40000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 22:
                    if ((v70 & 0x40) == 0)
                    {
                      v122 = *(v12 + 232);
                      if ((v122 & 0x2000000) == 0)
                      {
                        goto LABEL_249;
                      }
                    }

                    goto LABEL_143;
                  case 23:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 234) & 0x4000200) != 0)
                    {
                      goto LABEL_321;
                    }

                    goto LABEL_151;
                  case 24:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v70 = *(v12 + 232);
                    goto LABEL_325;
                  case 25:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 237) & 4) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_321:
                    v12 = v90;
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v90 + 224) & 0x100000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 26:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v123 = *(v12 + 232);
                    goto LABEL_419;
                  case 27:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 232) & 0x200000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 28:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 234) & 0x8000400) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 224) & 0x1000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 29:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 232) & 0x800000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 30:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v70 = *(v12 + 232);
LABEL_339:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x400000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 31:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 234) & 0x8000400) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_236:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    v12 = v90;
                    if ((v70 & 0x2000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 32:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v70 & 0x4000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v124 = *(v12 + 232);
                    if ((v124 & 0x40000000000) != 0)
                    {
LABEL_404:
                      v12 = v90;
                      v14 = v68;
                      goto LABEL_5;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v124 & 0x2000000) == 0)
                    {
                      goto LABEL_5;
                    }

                    goto LABEL_70;
                  case 33:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v131 = *(v12 + 232);
                    if ((v131 & 0x8000000000) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v131 & 0x80000000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    v12 = v90;
                    if ((v70 & 0x80000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 34:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v132 = *(v12 + 232);
                    if ((v132 & 0x10000000000) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v132 & 0x80000000000) != 0)
                    {
                      goto LABEL_187;
                    }

                    goto LABEL_151;
                  case 35:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v133 = *(v12 + 232);
                    if ((v133 & 0x20000000000) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v133 & 0x80000000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    v12 = v90;
                    if ((v70 & 0x200000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 36:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v70 & 0x4000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 232) & 0x40000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 37:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 237) & 4) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 224) & 0x40000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 38:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 237) & 4) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_314:
                    v12 = v90;
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v90 + 224) & 0x80000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 39:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 234) & 0x8000400) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_364:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    v12 = v90;
                    if ((v70 & 0x40000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 40:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 234) & 0x8000400) != 0)
                    {
                      goto LABEL_368;
                    }

                    goto LABEL_151;
                  case 41:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v122 = *(v12 + 232);
LABEL_249:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v122 & 0x1000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 42:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 224) & 0x200000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 43:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 224) & 0x80000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 44:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v125 = *(v12 + 224);
LABEL_375:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v125 & 0x20000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 45:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v127 = *(v12 + 224);
LABEL_379:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v127 & 0x200000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 46:
                    if ((v70 & 0x40) == 0)
                    {
                      goto LABEL_454;
                    }

                    goto LABEL_143;
                  case 47:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v121 = *(v12 + 224);
                    if ((v121 & 0x40000000000000) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_258:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    v12 = v90;
                    if ((v121 & 0x200000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 48:
                    if ((v70 & 0x40) != 0 || (*(v12 + 228) & 2) != 0)
                    {
                      goto LABEL_143;
                    }

                    v70 = *(v12 + 232);
LABEL_160:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x2000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 49:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x200000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 50:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v90 = v12;
                    v91 = *(v12 + 224);
                    if ((v91 & 0x200000000) != 0)
                    {
                      goto LABEL_87;
                    }

                    goto LABEL_151;
                  case 51:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x2000000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 52:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v90 = v12;
                    if ((*(v12 + 228) & 2) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x400000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 53:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x40000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 54:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x100000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 55:
                    if ((v70 & 0x40) == 0)
                    {
                      goto LABEL_437;
                    }

                    goto LABEL_143;
                  case 56:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 232) & 0x800000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 57:
                    if ((v70 & 0x40) == 0)
                    {
                      goto LABEL_415;
                    }

                    goto LABEL_143;
                  case 58:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v70 = *(v12 + 224);
                    if ((v70 & 0x200000000) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_187:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    v12 = v90;
                    if ((v70 & 0x100000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 59:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v70 & 0x2000000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v91 = *(v12 + 224);
                    if ((v91 & 0x200000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    goto LABEL_87;
                  case 60:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 228) & 2) != 0)
                    {
                      goto LABEL_197;
                    }

                    goto LABEL_151;
                  case 61:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v70 = *(v12 + 224);
                    goto LABEL_394;
                  case 62:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v70 = *(v12 + 232);
LABEL_394:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x1000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 63:
                    if ((v70 & 0x40) == 0)
                    {
                      goto LABEL_325;
                    }

                    goto LABEL_143;
                  case 64:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 224) & 0x100000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 65:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x10000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 66:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v70 & 0x2000000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 224) & 0x200000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 67:
                    if ((v70 & 0x40) == 0)
                    {
                      goto LABEL_160;
                    }

                    goto LABEL_143;
                  case 68:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v70 = *(v12 + 224);
LABEL_325:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x100000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 69:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 224) & 0x1000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 70:
                    if ((v70 & 0x40) == 0)
                    {
                      goto LABEL_339;
                    }

                    goto LABEL_143;
                  case 71:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v70 = *(v12 + 232);
LABEL_454:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x800000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 72:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 240) & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 73:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 232) & 0x1000000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 74:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v70 = *(v12 + 240);
LABEL_445:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x80) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 75:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v119 = *(v12 + 232);
                    goto LABEL_441;
                  case 76:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v70 = *(v12 + 224);
LABEL_437:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if (v70)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 77:
                    if ((v70 & 0x40) == 0)
                    {
                      goto LABEL_445;
                    }

                    goto LABEL_143;
                  case 78:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 224) & 0x800) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 79:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x8000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 80:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 224) & 0x20000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 81:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x8000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 82:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v123 = *(v12 + 224);
LABEL_419:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v123 & 0x80000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 83:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v70 = *(v12 + 224);
LABEL_415:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x80000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 84:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v128 = *(v12 + 224);
LABEL_411:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v128 & 0x8000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 85:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v120 = *(v12 + 232);
                    goto LABEL_407;
                  case 86:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 239) & 1) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x8000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 87:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v70 = *(v12 + 224);
LABEL_398:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x800000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 88:
                    if ((v70 & 0x40) == 0)
                    {
                      goto LABEL_394;
                    }

                    goto LABEL_143;
                  case 89:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 224) & 0x20000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 90:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 224) & 0x40000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 91:
                    if ((v70 & 0x40) == 0)
                    {
                      goto LABEL_398;
                    }

                    goto LABEL_143;
                  case 92:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v119 = *(v12 + 224);
LABEL_441:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v119 & 0x100000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 93:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v118 = *(v12 + 224);
                    if ((v118 & 0x8000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v118 & 0x20000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 94:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 226) & 4) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v70 & 0x800000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 95:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 228) & 2) == 0 && (*(v12 + 235) & 2) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_197:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    v12 = v90;
                    if ((v70 & 0x4000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 96:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 224) & 4) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 97:
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((*(v12 + 232) & 0x400000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 98:
                    v90 = v12;
                    if ((v70 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v91 = *(v12 + 224);
                    if ((v91 & 0x200000000) == 0 && (*(v12 + 235) & 2) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_87:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    v12 = v90;
                    if ((v91 & 4) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 99:
                    if ((v70 & 0x40) != 0)
                    {
LABEL_143:
                      v14 = v68;
                      goto LABEL_5;
                    }

                    v120 = *(v12 + 224);
LABEL_407:
                    v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
                    if ((v120 & 0x100000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  default:
                    if ((v70 & 0x40) == 0)
                    {
                      goto LABEL_120;
                    }

                    goto LABEL_70;
                }
              }
            }

            v106 = &v62[v59];
            v68 = v106 + 3;
            if ((*(v12 + 216) & 0x40) != 0)
            {
              v14 = v106 + 3;
            }

            else
            {
              v66 = *v106;
              v67 = v106[1];
              v69 = v106[2];
LABEL_120:
              v14 = &v68[v66 | (v67 << 8) | (v69 << 16)];
              if ((*(v12 + 232) & 0x2000000) != 0)
              {
LABEL_70:
                v14 = v68;
              }
            }

            goto LABEL_5;
          case 3:
            v71 = 0;
            v72 = 0;
            v73 = (v14 + 1);
            while (1)
            {
              v74 = *v73;
              v75 = *v73 & 0x7F;
              if (v72 >= 0x3F)
              {
                v107 = v75 > 1;
                if (v72 != 63)
                {
                  v107 = v75 != 0;
                }

                if (v107)
                {
                  break;
                }
              }

              v71 += v75 << v72;
              v72 += 7;
              ++v73;
              if ((v74 & 0x80) == 0)
              {
                goto LABEL_61;
              }
            }

            LOBYTE(v71) = 0;
LABEL_61:
            v76 = 0;
            v77 = 0;
            v78 = &v14[v73 - (v14 + 1) + 1];
            v80 = *v78;
            v79 = v78 + 1;
            v81 = ~(-1 << v80) << v71;
            if (v80 == 32)
            {
              v82 = -1;
            }

            else
            {
              v82 = v81;
            }

            v83 = (v82 & v9) >> v71;
            v84 = v79;
            while (1)
            {
              v85 = *v84;
              v86 = *v84 & 0x7F;
              if (v77 >= 0x3F)
              {
                v108 = v86 > 1;
                if (v77 != 63)
                {
                  v108 = v86 != 0;
                }

                if (v108)
                {
                  break;
                }
              }

              v76 += v86 << v77;
              v77 += 7;
              ++v84;
              if ((v85 & 0x80) == 0)
              {
                goto LABEL_67;
              }
            }

            v76 = 0;
LABEL_67:
            v87 = &v79[v84 - v79];
            v14 = v87 + 3;
            if (v76 != v83)
            {
              v22 = *v87;
              v23 = v87[2];
              goto LABEL_11;
            }

LABEL_5:
            v15 = *v14;
            if (v15 == 2)
            {
              goto LABEL_6;
            }

            break;
          default:
            goto LABEL_460;
        }
      }

      if (v15 > 5)
      {
        if (v15 == 7)
        {
          v92 = 0;
          v93 = 0;
          v94 = (v14 + 1);
          while (1)
          {
            v95 = *v94;
            v96 = *v94 & 0x7F;
            if (v93 >= 0x3F)
            {
              v109 = v96 > 1;
              if (v93 != 63)
              {
                v109 = v96 != 0;
              }

              if (v109)
              {
                break;
              }
            }

            v92 += v96 << v93;
            v93 += 7;
            ++v94;
            if ((v95 & 0x80) == 0)
            {
              goto LABEL_93;
            }
          }

          v92 = 0;
LABEL_93:
          v97 = 0;
          v98 = 0;
          v99 = &v14[v94 - (v14 + 1) + 1];
          v100 = v99;
          while (1)
          {
            v101 = *v100;
            v102 = *v100 & 0x7F;
            if (v98 >= 0x3F)
            {
              v110 = v102 > 1;
              if (v98 != 63)
              {
                v110 = v102 != 0;
              }

              if (v110)
              {
                break;
              }
            }

            v97 += v102 << v98;
            v98 += 7;
            ++v100;
            if ((v101 & 0x80) == 0)
            {
              goto LABEL_96;
            }
          }

          LODWORD(v97) = 0;
LABEL_96:
          v14 = (v99 + (v100 - v99));
          if (v92 & v9 | v97 & ~v9)
          {
            v13 = 1;
          }

          else
          {
            v13 = v13;
          }

          goto LABEL_5;
        }

        v134 = v11;
        v159 = v12;
        if (v15 == 6)
        {
          v138 = v10;
          v139 = 0;
          v140 = 0;
          v141 = (v14 + 1);
          while (1)
          {
            v142 = *v141;
            v143 = *v141 & 0x7F;
            if (v140 >= 0x3F)
            {
              v154 = v143 > 1;
              if (v140 != 63)
              {
                v154 = v143 != 0;
              }

              if (v154)
              {
                break;
              }
            }

            v139 += v143 << v140;
            v140 += 7;
            ++v141;
            if ((v142 & 0x80) == 0)
            {
              goto LABEL_465;
            }
          }

          LODWORD(v139) = 0;
LABEL_465:
          v144 = 0;
          v145 = 0;
          v146 = &v14[v141 - (v14 + 1) + 1];
          v147 = v146;
          while (1)
          {
            v148 = *v147;
            v149 = *v147 & 0x7F;
            if (v145 >= 0x3F)
            {
              v155 = v149 > 1;
              if (v145 != 63)
              {
                v155 = v149 != 0;
              }

              if (v155)
              {
                break;
              }
            }

            v144 += v149 << v145;
            v145 += 7;
            ++v147;
            if ((v148 & 0x80) == 0)
            {
              goto LABEL_468;
            }
          }

          LODWORD(v144) = 0;
LABEL_468:
          v150 = (v146 + (v147 - v146));
          v158 = *v150;
          v14 = v150 + 3;
          v156 = v150[2];
          v157 = v150[1];
          v164 = 0u;
          v165[0] = v166;
          v165[1] = 0xA00000000;
          LODWORD(v164) = v139;
          v163 = 0;
          v151 = sub_298B0A438(v13, v144, v9, &v164, a6, a1, &v163);
          v152 = v163;
          if (v163 == 1)
          {
            v153 = v151;
            *a2 = v164;
            sub_298B1DCE0((a2 + 4), v165);
            v162 = v153;
          }

          else
          {
            v14 += v158 | (v157 << 8) | (v156 << 16);
            v153 = 3;
          }

          if (v165[0] != v166)
          {
            free(v165[0]);
          }

          v13 = v153;
          v12 = v159;
          v10 = v138;
          v11 = v134;
          if ((v152 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (v15 != 8)
          {
LABEL_460:
            v135 = v14 - v11;
            v136 = sub_298B9CEA8();
            v137 = sub_298B9B068(v136, v135);
            sub_298B00584(v137, ": Unexpected decode table opcode!\n");
          }

          v162 = 0;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
        v35 = (v14 + 1);
        while (1)
        {
          v36 = *v35;
          v37 = *v35 & 0x7F;
          if (v34 >= 0x3F)
          {
            v104 = v37 > 1;
            if (v34 != 63)
            {
              v104 = v37 != 0;
            }

            if (v104)
            {
              break;
            }
          }

          v33 += v37 << v34;
          v34 += 7;
          ++v35;
          if ((v36 & 0x80) == 0)
          {
            goto LABEL_26;
          }
        }

        LODWORD(v33) = 0;
LABEL_26:
        v38 = 0;
        v39 = 0;
        v40 = &v14[v35 - (v14 + 1) + 1];
        while (1)
        {
          v41 = *v40;
          v42 = *v40 & 0x7F;
          if (v39 >= 0x3F)
          {
            v103 = v42 > 1;
            if (v39 != 63)
            {
              v103 = v42 != 0;
            }

            if (v103)
            {
              break;
            }
          }

          v38 += v42 << v39;
          v39 += 7;
          ++v40;
          if ((v41 & 0x80) == 0)
          {
            goto LABEL_29;
          }
        }

        LODWORD(v38) = 0;
LABEL_29:
        a2[6] = 0;
        *a2 = v33;
        v162 = sub_298B0A438(v13, v38, v9, a2, a6, a1, &v164);
      }

      v43 = v9;
      v44 = a1;
      v45 = *a2;
      v46 = (**(a1 + 40) - 32 * v45);
      if (v46[1])
      {
        break;
      }

LABEL_44:
      a1 = v44;
      v9 = v43;
      v57 = v162;
      if (v45 == 4388 || v45 == 6733)
      {
        sub_298B0A034(a2, *(*(a2 + 2) + 32), *(*(a2 + 2) + 40));
      }

      if (v162)
      {
        return v57;
      }

      v8 = v160 + 8;
      if (v160 == 8)
      {
        return 0;
      }
    }

    v47 = 0;
    v48 = -16;
    v49 = v46;
    v50 = 1;
    while (1)
    {
      v51 = &v49[16 * *v46 + 3 * v46[6]];
      v52 = *(v51 + 35);
      if (v52 != 2)
      {
        if (v52 == 13)
        {
          v111 = v50 - 1;
          v112 = *(a2 + 2);
          v113 = a2[6];
          v114 = a2[7];
          if (v50 - 1 == v113)
          {
            if (v113 >= v114)
            {
              sub_298B90A44((a2 + 4), a2 + 8, v50, 16);
              v111 = a2[6];
              v112 = *(a2 + 2);
            }

            *(v112 + 16 * v111) = xmmword_298CF79D0;
            ++a2[6];
          }

          else
          {
            if (v113 >= v114)
            {
              sub_298B90A44((a2 + 4), a2 + 8, v113 + 1, 16);
              v112 = *(a2 + 2);
              v113 = a2[6];
            }

            v115 = (v112 + v47);
            *(v112 + 16 * v113) = *(v112 + 16 * v113 - 16);
            v116 = *(a2 + 2);
            v117 = a2[6];
            if (v112 + v47 != v116 + 16 * v117 - 16)
            {
              memmove((v112 - v48), v115, v48 + v116 + 16 * a2[6] - v112);
              v117 = a2[6];
            }

            a2[6] = v117 + 1;
            *v115 = xmmword_298CF79D0;
          }
        }

        goto LABEL_34;
      }

      v54 = v51[16];
      if (v54 == 285)
      {
        v55 = *(a2 + 2);
        v56 = xmmword_298CF79E0;
        goto LABEL_43;
      }

      if (v54 == 288)
      {
        break;
      }

      if (v54 == 287)
      {
        v55 = *(a2 + 2);
        v56 = xmmword_298CF7A00;
LABEL_43:
        v164 = v56;
        sub_298B0A294(a2 + 2, v55 + v47, &v164);
      }

LABEL_34:
      v47 += 16;
      v48 -= 16;
      v49 += 3;
      if (v50++ >= v46[1])
      {
        LODWORD(v45) = *a2;
        goto LABEL_44;
      }
    }

    v55 = *(a2 + 2);
    v56 = xmmword_298CF79F0;
    goto LABEL_43;
  }

  return 0;
}

uint64_t sub_298B0A034(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (v3 >= *(result + 28))
  {
    v5 = result;
    v6 = a2;
    v7 = a3;
    sub_298B90A44(result + 16, (result + 32), v3 + 1, 16);
    a2 = v6;
    a3 = v7;
    result = v5;
    LODWORD(v3) = *(v5 + 24);
  }

  v4 = (*(result + 16) + 16 * v3);
  *v4 = a2;
  v4[1] = a3;
  ++*(result + 24);
  return result;
}

void *sub_298B0A0B8()
{
  *(sub_298CEE78C() + 16) = sub_298B0A144;
  *(sub_298CEE7F8() + 16) = sub_298B0A144;
  *(sub_298CEE78C() + 31) = sub_298B0A1CC;
  *(sub_298CEE7F8() + 31) = sub_298B0A1CC;
  *(sub_298CEE864() + 16) = sub_298B0A144;
  *(sub_298CEE864() + 31) = sub_298B0A1CC;
  *(sub_298CEE8D0() + 16) = sub_298B0A144;
  *(sub_298CEE8D0() + 31) = sub_298B0A1CC;
  *(sub_298CEE948() + 16) = sub_298B0A144;
  result = sub_298CEE948();
  result[31] = sub_298B0A1CC;
  return result;
}

void sub_298B0A258(void *a1)
{
  sub_298B0A3C0(a1);

  JUMPOUT(0x29C2945F0);
}

__n128 sub_298B0A294(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  if (*a1 + 16 * v4 == a2)
  {
    result = *a3;
    if (v4 >= v5)
    {
      v13 = a1;
      v17 = *a3;
      sub_298B90A44(a1, a1 + 2, v4 + 1, 16);
      result = v17;
      a1 = v13;
      v4 = *(v13 + 2);
      v3 = *v13;
    }

    *(v3 + 16 * v4) = result;
    ++*(a1 + 2);
  }

  else
  {
    v7 = a2 - v3;
    if (v4 >= v5)
    {
      v14 = a3;
      v15 = a1;
      v16 = a2 - v3;
      sub_298B90A44(a1, a1 + 2, v4 + 1, 16);
      v7 = v16;
      a3 = v14;
      a1 = v15;
      v3 = *v15;
      v4 = *(v15 + 2);
    }

    v8 = (v3 + v7);
    *(v3 + 16 * v4) = *(v3 + 16 * v4 - 16);
    v9 = *(a1 + 2);
    v10 = *a1 + 16 * v9;
    if ((v10 - 16) != v8)
    {
      v11 = a1;
      v12 = a3;
      memmove(&v8[1], v8, v10 - 16 - v8);
      a3 = v12;
      a1 = v11;
      LODWORD(v9) = *(v11 + 2);
    }

    *(a1 + 2) = v9 + 1;
    result = *a3;
    *v8 = *a3;
  }

  return result;
}

void *sub_298B0A3C0(void *a1)
{
  *a1 = &unk_2A1F1BBF0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    v4 = a1;
    MEMORY[0x29C2945F0](v2, 0x10F0C40CB53E019);
    a1 = v4;
  }

  return sub_298CEF3B8(a1);
}

uint64_t sub_298B0A438(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *a7 = 1;
  switch(a2)
  {
    case 1:
      v628 = a3;
      v629 = word_298D19FAA[(a3 & 3) + 32];
      goto LABEL_513;
    case 2:
      v158 = a3;
      v159 = word_298D19FAA[(a3 & 1) + 16];
      v160 = a4;
      v161 = result;
      sub_298B0A034(a4, 1, v159);
      v162 = v161 & 3;
      if (!v162)
      {
        return 0;
      }

      v163 = v160;
      sub_298B0A034(v160, 1, v159);
      sub_298B0A034(v160, 1, word_298DFB41A[(v158 >> 10) & 7]);
      sub_298B0A034(v160, 1, word_298DFB41A[v158 >> 13]);
      v164 = v158;
      v165 = word_298DFC5CA[(v158 >> 5) & 0x1F];
      v166 = v160[6];
      if (v166 >= v160[7])
      {
        sub_298B90A44((v160 + 4), v160 + 8, v166 + 1, 16);
        v164 = v158;
        v163 = v160;
        LODWORD(v166) = v160[6];
      }

      v167 = (*(v163 + 2) + 16 * v166);
      *v167 = 1;
      v167[1] = v165;
      v168 = v163[7];
      v169 = v163[6] + 1;
      v163[6] = v169;
      v170 = word_298DFC5CA[HIWORD(v164) & 0x1F];
      result = v162;
      if (v169 >= v168)
      {
        sub_298B90A44((v163 + 4), v163 + 8, v169 + 1, 16);
        result = v162;
        v163 = v160;
        LODWORD(v169) = v160[6];
      }

      v171 = (*(v163 + 2) + 16 * v169);
      *v171 = 1;
      v171[1] = v170;
      ++v163[6];
      return result;
    case 3:
      v628 = a3;
      v629 = word_298D19FAA[(a3 & 7) + 48];
LABEL_513:
      v630 = a4;
      v631 = result;
      sub_298B0A034(a4, 1, v629);
      v632 = v631 & 3;
      if (!v632)
      {
        return 0;
      }

      sub_298B0A034(v630, 1, v629);
      sub_298B0A034(v630, 1, word_298DFB41A[(v628 >> 10) & 7]);
      sub_298B0A034(v630, 1, word_298DFB41A[v628 >> 13]);
      sub_298B1A0DC(v630, (v628 >> 5) & 0x1F);
      v633 = HIWORD(v628) & 0x1F;
      goto LABEL_515;
    case 4:
      v816 = a3;
      v1177 = a3 & 0x1E;
      v1178 = word_298DFCDBC;
      goto LABEL_811;
    case 5:
      v816 = a3;
      v1177 = a3 & 0x1C;
      v1178 = word_298DFE670;
      goto LABEL_811;
    case 6:
      v1179 = a3;
      v1180 = a3 & 0x1E;
      v1181 = word_298DFCDBC;
      goto LABEL_815;
    case 7:
      v1179 = a3;
      v1180 = a3 & 0x1C;
      v1181 = word_298DFE670;
      goto LABEL_815;
    case 8:
      v816 = a3;
      v1177 = a3 & 7 | (8 * ((a3 >> 4) & 1));
      v1178 = &unk_298DFD006;
      goto LABEL_811;
    case 9:
      v816 = a3;
      v1177 = a3 & 3 | (4 * ((a3 >> 4) & 1));
      v1178 = word_298DFF1FA;
LABEL_811:
      v819 = a4;
      v1182 = result;
      sub_298B0A034(a4, 1, v1178[v1177]);
      v46 = v1182 & 3;
      if (!v46)
      {
        return 0;
      }

      v1183 = (v816 >> 10) & 7 | 8;
      v1184 = word_298DFB3E8;
      goto LABEL_1085;
    case 10:
      v1179 = a3;
      v1180 = a3 & 7 | (8 * ((a3 >> 4) & 1));
      v1181 = &unk_298DFD006;
      goto LABEL_815;
    case 11:
      v1179 = a3;
      v1180 = a3 & 3 | (4 * ((a3 >> 4) & 1));
      v1181 = word_298DFF1FA;
LABEL_815:
      v44 = a4;
      v1185 = result;
      sub_298B0A034(a4, 1, v1181[v1180]);
      v46 = v1185 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB3E8[(v1179 >> 10) & 7 | 8]);
      sub_298B1A150(v44, (v1179 >> 5) & 0x1F);
      v47 = HIWORD(v1179) & 0xF;
      v48 = v47 | 0xFFFFFFFFFFFFFFF0;
      v49 = (v1179 & 0x80000) == 0;
      goto LABEL_40;
    case 12:
      v1186 = a3;
      v1187 = a4;
      v1188 = result;
      sub_298B0A034(a4, 1, word_298DFBA40[(a3 >> 13) & 3]);
      v1189 = v1188 & 3;
      if (!v1189)
      {
        return 0;
      }

      sub_298B0A034(v1187, 2, v1186 & 0xF);
      goto LABEL_1283;
    case 13:
      v1190 = a3;
      v911 = a4;
      v1191 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1191 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, v1190 & 0x1F);
      sub_298B0A034(v911, 1, word_298DFB41A[(v1190 >> 10) & 7]);
      sub_298B0A034(v911, 1, word_298DFBA40[(v1190 >> 13) & 3]);
      v50 = (v1190 >> 5) & 0xF;
      goto LABEL_700;
    case 14:
      v1192 = a3;
      v44 = a4;
      v1193 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1193 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFBA40[(v1192 >> 13) & 3]);
      v50 = (v1192 >> 5) & 0xF;
      goto LABEL_43;
    case 15:
      v1194 = a3;
      v1195 = (a3 >> 13) & 3;
      v1196 = word_298DFBA40;
      goto LABEL_827;
    case 16:
      v1197 = a3;
      v819 = a4;
      v1198 = result;
      sub_298B0A034(a4, 1, word_298DFBA40[(a3 >> 13) & 3]);
      v46 = v1198 & 3;
      if (!v46)
      {
        return 0;
      }

      v1199 = v1197 & 3;
      goto LABEL_831;
    case 17:
      v1194 = a3;
      v1195 = (a3 >> 13) & 3;
      v1196 = word_298DFBA64;
LABEL_827:
      v819 = a4;
      v1200 = result;
      sub_298B0A034(a4, 1, v1196[v1195]);
      v46 = v1200 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v819, 2, v1194 & 7);
      goto LABEL_1009;
    case 18:
      v1197 = a3;
      v819 = a4;
      v1201 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1201 & 3;
      if (!v46)
      {
        return 0;
      }

      v1199 = v1197 & 7;
LABEL_831:
      sub_298B0A034(v819, 2, v1199);
      goto LABEL_832;
    case 19:
      v1202 = a3;
      v44 = a4;
      v1203 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v46 = v1203 & 3;
      if (!v46)
      {
        return 0;
      }

      v1204 = (v1202 >> 13) & 3;
      v1205 = word_298DFBA40;
      goto LABEL_841;
    case 20:
      v1206 = a3;
      v44 = a4;
      v1207 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v46 = v1207 & 3;
      if (!v46)
      {
        return 0;
      }

      goto LABEL_861;
    case 21:
      v1202 = a3;
      v1208 = a3 & 0x1E;
      v1209 = word_298DFCDBC;
      goto LABEL_839;
    case 22:
      v1202 = a3;
      v1208 = a3 & 0x1C;
      v1209 = word_298DFE670;
LABEL_839:
      v44 = a4;
      v1210 = result;
      sub_298B0A034(a4, 1, v1209[v1208]);
      v46 = v1210 & 3;
      if (!v46)
      {
        return 0;
      }

      v1204 = (v1202 >> 13) & 3;
      v1205 = word_298DFBA64;
LABEL_841:
      sub_298B0A034(v44, 1, v1205[v1204]);
      v50 = v1202 >> 5;
      goto LABEL_43;
    case 23:
      v1211 = result;
      sub_298B0A034(a4, 2, a3);
      return v1211 & 3;
    case 24:
      v1212 = a3;
      v1213 = a4;
      v1214 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v364 = v1214 & 3;
      if (!v364)
      {
        return 0;
      }

      v367 = v1212 & 7;
      goto LABEL_2051;
    case 25:
      v1215 = a3;
      v1213 = a4;
      v1216 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v364 = v1216 & 3;
      if (!v364)
      {
        return 0;
      }

      v367 = v1215 & 3;
      goto LABEL_2051;
    case 26:
      v1217 = a3;
      v1213 = a4;
      v1218 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v364 = v1218 & 3;
      if (!v364)
      {
        return 0;
      }

      v367 = v1217 & 1;
      goto LABEL_2051;
    case 27:
      v1219 = a3;
      v1220 = word_298D19FAA[((a3 >> 3) & 1) + 16];
      v630 = a4;
      v1221 = result;
      sub_298B0A034(a4, 1, v1220);
      v632 = v1221 & 3;
      if (!v632)
      {
        return 0;
      }

      sub_298B0A034(v630, 1, v1220);
      sub_298B0A034(v630, 1, word_298DFBA40[(v1219 >> 13) & 3]);
      v1222 = v1219 & 7;
      goto LABEL_915;
    case 28:
      v1223 = a3;
      v911 = a4;
      v1224 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1224 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, v1223 & 0x1F);
      sub_298B0A034(v911, 1, word_298DFB41A[(v1223 >> 10) & 7]);
      sub_298B0A034(v911, 1, word_298D19FAA[((v1223 >> 8) & 1) + 16]);
      sub_298B0A034(v911, 1, word_298DFBA40[(v1223 >> 13) & 3]);
      v50 = v1223 >> 5;
      goto LABEL_700;
    case 29:
      v1225 = a3;
      v892 = a4;
      v1226 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v364 = v1226 & 3;
      if (!v364)
      {
        return 0;
      }

      v1227 = v1225;
      v1228 = word_298D19FAA[((v1225 >> 8) & 1) + 16];
      sub_298B0A034(v892, 1, v1228);
      sub_298B0A034(v892, 1, v1228);
      sub_298B0A034(v892, 1, word_298DFBA40[(v1227 >> 13) & 3]);
      v367 = v1227 >> 5;
      goto LABEL_685;
    case 30:
      v1229 = a3;
      v1230 = word_298D19FAA[((a3 >> 2) & 1) + 16];
      v1231 = a4;
      v1232 = result;
      sub_298B0A034(a4, 1, v1230);
      v364 = v1232 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v1231, 1, v1230);
      sub_298B0A034(v1231, 1, word_298DFBA40[(v1229 >> 13) & 3]);
      v1233 = v1229 & 3;
      goto LABEL_881;
    case 31:
      v1234 = a3;
      v1235 = word_298D19FAA[((a3 >> 1) & 1) + 16];
      v1231 = a4;
      v1236 = result;
      sub_298B0A034(a4, 1, v1235);
      v364 = v1236 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v1231, 1, v1235);
      sub_298B0A034(v1231, 1, word_298DFBA40[(v1234 >> 13) & 3]);
      v1237 = v1234 & 1;
      v1238 = v1231;
      v1239 = 2;
      goto LABEL_934;
    case 32:
      v1206 = a3;
      v44 = a4;
      v1240 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v46 = v1240 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298D19FAA[((v1206 >> 7) & 1) + 16]);
LABEL_861:
      sub_298B0A034(v44, 1, word_298DFBA40[(v1206 >> 13) & 3]);
      v50 = (v1206 >> 5) & 3;
      goto LABEL_43;
    case 33:
      v1241 = a3;
      v892 = a4;
      v1242 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v364 = v1242 & 3;
      if (!v364)
      {
        return 0;
      }

      v1243 = v1241;
      v1244 = word_298D19FAA[((v1241 >> 7) & 1) + 16];
      goto LABEL_878;
    case 34:
      v1245 = a3;
      v44 = a4;
      v1246 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v46 = v1246 & 3;
      if (!v46)
      {
        return 0;
      }

      v1247 = word_298D19FAA[((v1245 >> 6) & 1) + 16];
      goto LABEL_886;
    case 35:
      v1248 = a3;
      v892 = a4;
      v1249 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v364 = v1249 & 3;
      if (!v364)
      {
        return 0;
      }

      v1250 = v1248;
      v1251 = word_298D19FAA[((v1248 >> 6) & 1) + 16];
      goto LABEL_924;
    case 36:
      return result;
    case 37:
      v1252 = a3;
      v1213 = a4;
      v1253 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v364 = v1253 & 3;
      if (!v364)
      {
        return 0;
      }

      v367 = (v1252 >> 12) & 7;
      goto LABEL_2051;
    case 38:
      v1254 = result;
      v1255 = a3;
      v1256 = a4;
      sub_298B0A034(a4, 2, (a3 >> 12) & 7);
      sub_298B0A034(v1256, 1, word_298DFBCEE[v1255 & 0x1F]);
      return v1254 & 3;
    case 39:
      v1257 = result;
      v1258 = a3;
      v1259 = a4;
      sub_298B0A034(a4, 2, (a3 >> 12) & 3);
      sub_298B1A0DC(v1259, v1258 & 0x1F);
      return v1257 & 3;
    case 40:
      v1219 = a3;
      v1260 = word_298D19FAA[((a3 >> 2) & 3) + 32];
      v630 = a4;
      v1261 = result;
      sub_298B0A034(a4, 1, v1260);
      v632 = v1261 & 3;
      if (!v632)
      {
        return 0;
      }

      sub_298B0A034(v630, 1, v1260);
      sub_298B0A034(v630, 1, word_298DFBA40[(v1219 >> 13) & 3]);
      v1222 = v1219 & 3;
      goto LABEL_915;
    case 41:
      v1262 = a3;
      v911 = a4;
      v1263 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1263 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, v1262 & 0x1F);
      sub_298B0A034(v911, 1, word_298DFB41A[(v1262 >> 10) & 7]);
      sub_298B0A034(v911, 1, word_298D19FAA[((v1262 >> 7) & 3) + 32]);
      sub_298B0A034(v911, 1, word_298DFBA40[(v1262 >> 13) & 3]);
      v50 = (v1262 >> 5) & 3;
      goto LABEL_700;
    case 42:
      v1264 = a3;
      v892 = a4;
      v1265 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v364 = v1265 & 3;
      if (!v364)
      {
        return 0;
      }

      v1243 = v1264;
      v1244 = word_298D19FAA[((v1264 >> 7) & 3) + 32];
LABEL_878:
      sub_298B0A034(v892, 1, v1244);
      sub_298B0A034(v892, 1, v1244);
      sub_298B0A034(v892, 1, word_298DFBA40[(v1243 >> 13) & 3]);
      v367 = (v1243 >> 5) & 3;
      goto LABEL_685;
    case 43:
      v1229 = a3;
      v1266 = word_298D19FAA[((a3 >> 1) & 3) + 32];
      v1231 = a4;
      v1267 = result;
      sub_298B0A034(a4, 1, v1266);
      v364 = v1267 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v1231, 1, v1266);
      sub_298B0A034(v1231, 1, word_298DFBA40[(v1229 >> 13) & 3]);
      v1233 = v1229 & 1;
LABEL_881:
      v1268 = v1231;
      v1269 = 2;
      goto LABEL_882;
    case 44:
      v1234 = a3;
      v1272 = word_298D19FAA[(a3 & 3) + 32];
      goto LABEL_932;
    case 45:
      v1245 = a3;
      v44 = a4;
      v1273 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v46 = v1273 & 3;
      if (!v46)
      {
        return 0;
      }

      v1247 = word_298D19FAA[(v1245 >> 6) + 32];
LABEL_886:
      sub_298B0A034(v44, 1, v1247);
      sub_298B0A034(v44, 1, word_298DFBA40[(v1245 >> 13) & 3]);
      v50 = (v1245 >> 5) & 1;
      goto LABEL_43;
    case 46:
      v1274 = a3;
      v892 = a4;
      v1275 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v364 = v1275 & 3;
      if (!v364)
      {
        return 0;
      }

      v1250 = v1274;
      v1251 = word_298D19FAA[(v1274 >> 6) + 32];
      goto LABEL_924;
    case 47:
      v1276 = a3;
      v819 = a4;
      v1277 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v46 = v1277 & 3;
      if (!v46)
      {
        return 0;
      }

      v1278 = word_298D19FAA[((v1276 >> 5) & 3) + 32];
      goto LABEL_940;
    case 48:
      v1279 = a3;
      v1231 = a4;
      v1280 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v364 = v1280 & 3;
      if (!v364)
      {
        return 0;
      }

      v1281 = v1279;
      v1282 = word_298D19FAA[((v1279 >> 5) & 3) + 32];
      goto LABEL_944;
    case 49:
      v1194 = a3;
      v819 = a4;
      v1283 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      goto LABEL_1008;
    case 50:
      v1284 = a3;
      v1285 = a3 & 0x1C;
      v1286 = word_298DFE670;
      goto LABEL_902;
    case 51:
      v1287 = a3;
      v1288 = a3 & 0x1E;
      v1289 = word_298DFCDBC;
      goto LABEL_905;
    case 52:
      v1290 = a3;
      v1291 = a3 & 0x1C;
      v1292 = word_298DFE670;
      goto LABEL_908;
    case 53:
      v1293 = a3;
      v1294 = a3 & 0x1E;
      v1295 = word_298DFCDBC;
      goto LABEL_911;
    case 54:
      v1219 = a3;
      v1296 = word_298D19FAA[(a3 & 3) + 32];
      goto LABEL_951;
    case 55:
      v1297 = a3;
      v362 = a4;
      v1298 = result;
      sub_298B0A034(a4, 1, word_298DFF1FA[a3 & 3 | (4 * ((a3 >> 4) & 1))]);
      v364 = v1298 & 3;
      if (!v364)
      {
        return 0;
      }

      v365 = (v1297 >> 5) & 0x1E;
      v366 = word_298DFCDBC;
      goto LABEL_279;
    case 56:
      v1284 = a3;
      v1285 = a3 & 3 | (4 * ((a3 >> 4) & 1));
      v1286 = word_298DFF1FA;
LABEL_902:
      v911 = a4;
      v1299 = result;
      sub_298B0A034(a4, 1, v1286[v1285]);
      v46 = v1299 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, (v1284 >> 5) & 0x1F);
      v50 = HIWORD(v1284) & 1;
      goto LABEL_700;
    case 57:
      v1287 = a3;
      v1288 = a3 & 7 | (8 * ((a3 >> 4) & 1));
      v1289 = &unk_298DFD006;
LABEL_905:
      v911 = a4;
      v1300 = result;
      sub_298B0A034(a4, 1, v1289[v1288]);
      v46 = v1300 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, (v1287 >> 5) & 0x1F);
      v50 = (v1287 >> 15) & 3;
      goto LABEL_700;
    case 58:
      v1290 = a3;
      v1291 = a3 & 3 | (4 * ((a3 >> 4) & 1));
      v1292 = word_298DFF1FA;
LABEL_908:
      v911 = a4;
      v1301 = result;
      sub_298B0A034(a4, 1, v1292[v1291]);
      v46 = v1301 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, (v1290 >> 5) & 0x1F);
      v50 = HIWORD(v1290) & 3;
      goto LABEL_700;
    case 59:
      v1293 = a3;
      v1294 = a3 & 7 | (8 * ((a3 >> 4) & 1));
      v1295 = &unk_298DFD006;
LABEL_911:
      v911 = a4;
      v1302 = result;
      sub_298B0A034(a4, 1, v1295[v1294]);
      v46 = v1302 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, (v1293 >> 5) & 0x1F);
      v50 = (v1293 >> 15) & 7;
      goto LABEL_700;
    case 60:
      v1219 = a3;
      v1303 = word_298D19FAA[((a3 >> 1) & 7) + 48];
      v630 = a4;
      v1304 = result;
      sub_298B0A034(a4, 1, v1303);
      v632 = v1304 & 3;
      if (!v632)
      {
        return 0;
      }

      sub_298B0A034(v630, 1, v1303);
      sub_298B0A034(v630, 1, word_298DFBA40[(v1219 >> 13) & 3]);
      v1222 = v1219 & 1;
LABEL_915:
      v1305 = v630;
      v1306 = 2;
      goto LABEL_916;
    case 61:
      v1219 = a3;
      v1308 = word_298D19FAA[(a3 & 0xF) + 64];
      v630 = a4;
      v1309 = result;
      sub_298B0A034(a4, 1, v1308);
      v632 = v1309 & 3;
      if (!v632)
      {
        return 0;
      }

      sub_298B0A034(v630, 1, v1308);
      v1222 = word_298DFBA40[(v1219 >> 13) & 3];
      v1305 = v630;
      v1306 = 1;
LABEL_916:
      sub_298B0A034(v1305, v1306, v1222);
      v1307 = word_298DFB41A[(v1219 >> 10) & 7];
      goto LABEL_917;
    case 62:
      v1310 = a3;
      v911 = a4;
      v1311 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1311 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, v1310 & 0x1F);
      sub_298B0A034(v911, 1, word_298DFB41A[(v1310 >> 10) & 7]);
      sub_298B0A034(v911, 1, word_298D19FAA[((v1310 >> 6) & 7) + 48]);
      sub_298B0A034(v911, 1, word_298DFBA40[(v1310 >> 13) & 3]);
      v50 = (v1310 >> 5) & 1;
      goto LABEL_700;
    case 63:
      v1312 = a3;
      v892 = a4;
      v1313 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v364 = v1313 & 3;
      if (!v364)
      {
        return 0;
      }

      v1250 = v1312;
      v1251 = word_298D19FAA[((v1312 >> 6) & 7) + 48];
LABEL_924:
      sub_298B0A034(v892, 1, v1251);
      sub_298B0A034(v892, 1, v1251);
      sub_298B0A034(v892, 1, word_298DFBA40[(v1250 >> 13) & 3]);
      v367 = (v1250 >> 5) & 1;
      goto LABEL_685;
    case 64:
      v1314 = a3;
      v1315 = a4;
      v1316 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1316 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1315, v1314 & 0x1F);
      sub_298B0A034(v1315, 1, word_298DFB41A[(v1314 >> 10) & 7]);
      sub_298B0A034(v1315, 1, word_298D19FAA[((v1314 >> 5) & 0xF) + 64]);
      v1317 = (v1314 >> 13) & 3;
      v1318 = word_298DFBA40;
      goto LABEL_1209;
    case 65:
      v1319 = a3;
      v1231 = a4;
      v1320 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v364 = v1320 & 3;
      if (!v364)
      {
        return 0;
      }

      v1281 = v1319;
      v1282 = word_298D19FAA[((v1319 >> 5) & 0xF) + 64];
      goto LABEL_944;
    case 66:
      v1229 = a3;
      v1321 = word_298D19FAA[(a3 & 7) + 48];
      v1231 = a4;
      v1322 = result;
      sub_298B0A034(a4, 1, v1321);
      v364 = v1322 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v1231, 1, v1321);
      v1233 = word_298DFBA40[(v1229 >> 13) & 3];
      v1268 = v1231;
      v1269 = 1;
LABEL_882:
      sub_298B0A034(v1268, v1269, v1233);
      v1270 = (v1229 >> 5) & 0x1E;
      v1271 = word_298DFCDBC;
      goto LABEL_945;
    case 67:
      v1234 = a3;
      v1272 = word_298D19FAA[(a3 & 7) + 48];
LABEL_932:
      v1231 = a4;
      v1323 = result;
      sub_298B0A034(a4, 1, v1272);
      v364 = v1323 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v1231, 1, v1272);
      v1237 = word_298DFBA40[(v1234 >> 13) & 3];
      v1238 = v1231;
      v1239 = 1;
LABEL_934:
      sub_298B0A034(v1238, v1239, v1237);
      v1270 = (v1234 >> 5) & 0x1C;
      v1271 = word_298DFE670;
      goto LABEL_945;
    case 68:
      v1276 = a3;
      v1324 = a3 & 0x1E;
      v1325 = word_298DFCDBC;
      goto LABEL_938;
    case 69:
      v1326 = a3;
      v1327 = a3 & 0x1E;
      v1328 = word_298DFCDBC;
      goto LABEL_942;
    case 70:
      v1276 = a3;
      v1324 = a3 & 0x1C;
      v1325 = word_298DFE670;
LABEL_938:
      v819 = a4;
      v1329 = result;
      sub_298B0A034(a4, 1, v1325[v1324]);
      v46 = v1329 & 3;
      if (!v46)
      {
        return 0;
      }

      v1278 = word_298D19FAA[(v1276 >> 5) + 48];
LABEL_940:
      sub_298B0A034(v819, 1, v1278);
      v823 = (v1276 >> 13) & 3;
      v824 = word_298DFBA40;
      goto LABEL_632;
    case 71:
      v1326 = a3;
      v1327 = a3 & 0x1C;
      v1328 = word_298DFE670;
LABEL_942:
      v1231 = a4;
      v1330 = result;
      sub_298B0A034(a4, 1, v1328[v1327]);
      v364 = v1330 & 3;
      if (!v364)
      {
        return 0;
      }

      v1281 = v1326;
      v1282 = word_298D19FAA[(v1326 >> 5) + 48];
LABEL_944:
      sub_298B0A034(v1231, 1, v1282);
      sub_298B0A034(v1231, 1, v1282);
      v1270 = (v1281 >> 13) & 3;
      v1271 = word_298DFBA40;
LABEL_945:
      v367 = v1271[v1270];
      v368 = v1231;
      goto LABEL_281;
    case 72:
      v1331 = a3;
      v44 = a4;
      v1332 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1332 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1331 >> 5) & 0x1F);
      v50 = (v1331 >> 14) & 7;
      goto LABEL_43;
    case 73:
      v1333 = a3;
      v44 = a4;
      v1334 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1334 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1333 >> 5) & 0x1F);
      v50 = (v1333 >> 14) & 0xF;
      goto LABEL_43;
    case 74:
      v1219 = a3;
      v1296 = word_298D19FAA[(a3 & 7) + 48];
LABEL_951:
      v630 = a4;
      v1335 = result;
      sub_298B0A034(a4, 1, v1296);
      v632 = v1335 & 3;
      if (!v632)
      {
        return 0;
      }

      sub_298B0A034(v630, 1, v1296);
      sub_298B0A034(v630, 1, word_298DFB41A[(v1219 >> 10) & 7]);
      v1307 = word_298DFB41A[v1219 >> 13];
LABEL_917:
      sub_298B0A034(v630, 1, v1307);
      v633 = (v1219 >> 5) & 0x1F;
      goto LABEL_515;
    case 75:
      v1336 = a3;
      v44 = a4;
      v1337 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1337 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1336 & 3);
      sub_298B1A0DC(v44, (v1336 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1336) & 0xF);
      v50 = (v1336 >> 12) & 8 | (v1336 >> 10) & 7;
      goto LABEL_43;
    case 76:
      v1338 = a3;
      v44 = a4;
      v1339 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1339 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1338 & 1);
      v1340 = (v1338 >> 5) & 0x1E;
      v1341 = word_298DFCDBC;
      goto LABEL_959;
    case 77:
      v1338 = a3;
      v44 = a4;
      v1342 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1342 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1338 & 1);
      v1340 = (v1338 >> 5) & 0x1C;
      v1341 = word_298DFE670;
LABEL_959:
      sub_298B0A034(v44, 1, v1341[v1340]);
      sub_298B1A0DC(v44, HIWORD(v1338) & 0xF);
      v1343 = (v1338 >> 8) & 0xC;
      goto LABEL_1037;
    case 78:
      v1344 = a3;
      v44 = a4;
      v1345 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1345 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1344 & 7);
      v1346 = (v1344 >> 5) & 0x1E;
      v1347 = word_298DFCDBC;
      goto LABEL_964;
    case 79:
      v1344 = a3;
      v44 = a4;
      v1348 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1348 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1344 & 7);
      v1346 = (v1344 >> 5) & 0x1C;
      v1347 = word_298DFE670;
LABEL_964:
      sub_298B0A034(v44, 1, v1347[v1346]);
      sub_298B1A0DC(v44, HIWORD(v1344) & 0xF);
      v1349 = (v1344 >> 9) & 6;
      goto LABEL_965;
    case 80:
      v1350 = a3;
      v1187 = a4;
      v1351 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1189 = v1351 & 3;
      if (!v1189)
      {
        return 0;
      }

      v1352 = v1350 & 1;
      goto LABEL_981;
    case 81:
      v1350 = a3;
      v1187 = a4;
      v1353 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1189 = v1353 & 3;
      if (!v1189)
      {
        return 0;
      }

      v1354 = v1350 & 1;
      goto LABEL_984;
    case 82:
      v1350 = a3;
      v1187 = a4;
      v1355 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1189 = v1355 & 3;
      if (!v1189)
      {
        return 0;
      }

      v1356 = v1350 & 3;
      goto LABEL_978;
    case 83:
      v1350 = a3;
      v1187 = a4;
      v1357 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1189 = v1357 & 3;
      if (!v1189)
      {
        return 0;
      }

      v1352 = v1350 & 3;
      goto LABEL_981;
    case 84:
      v1350 = a3;
      v1187 = a4;
      v1358 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1189 = v1358 & 3;
      if (!v1189)
      {
        return 0;
      }

      v1354 = v1350 & 3;
      goto LABEL_984;
    case 85:
      v1350 = a3;
      v1187 = a4;
      v1359 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1189 = v1359 & 3;
      if (!v1189)
      {
        return 0;
      }

      v1356 = v1350 & 7;
LABEL_978:
      sub_298B0A034(v1187, 2, v1356);
      sub_298B1A0DC(v1187, (v1350 >> 5) & 0x1F);
      goto LABEL_986;
    case 86:
      v1350 = a3;
      v1187 = a4;
      v1360 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1189 = v1360 & 3;
      if (!v1189)
      {
        return 0;
      }

      v1352 = v1350 & 7;
LABEL_981:
      sub_298B0A034(v1187, 2, v1352);
      v1361 = (v1350 >> 5) & 0x1F;
      v1362 = word_298DFCDBC;
      goto LABEL_985;
    case 87:
      v1350 = a3;
      v1187 = a4;
      v1363 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1189 = v1363 & 3;
      if (!v1189)
      {
        return 0;
      }

      v1354 = v1350 & 7;
LABEL_984:
      sub_298B0A034(v1187, 2, v1354);
      v1361 = (v1350 >> 5) & 0x1F;
      v1362 = word_298DFE670;
LABEL_985:
      sub_298B0A034(v1187, 1, v1362[v1361]);
LABEL_986:
      v1364 = HIWORD(v1350) & 0xF;
      goto LABEL_1285;
    case 88:
      v1365 = a3;
      v472 = word_298DFCDBC;
      v362 = a4;
      v1366 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v364 = v1366 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v362, 1, word_298DFB3E8[(v1365 >> 10) & 7 | 8]);
      sub_298B0A034(v362, 1, word_298DFCDBC[(v1365 >> 5) & 0x1E]);
      v474 = HIWORD(v1365) & 0x1E;
      goto LABEL_374;
    case 89:
      v1367 = a3;
      v472 = word_298DFE670;
      v362 = a4;
      v1368 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v364 = v1368 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v362, 1, word_298DFB3E8[(v1367 >> 10) & 7 | 8]);
      sub_298B0A034(v362, 1, word_298DFE670[(v1367 >> 5) & 0x1C]);
      v474 = HIWORD(v1367) & 0x1C;
      goto LABEL_374;
    case 90:
      v1369 = a3;
      v1370 = a3 & 0x1E;
      v1371 = word_298DFCDBC;
      goto LABEL_993;
    case 91:
      v1369 = a3;
      v1370 = a3 & 0x1C;
      v1371 = word_298DFE670;
LABEL_993:
      v1372 = v1371[v1370];
      v1373 = a4;
      v1374 = result;
      sub_298B0A034(a4, 1, v1372);
      v1375 = v1374 & 3;
      if (!v1375)
      {
        return 0;
      }

      sub_298B0A034(v1373, 1, v1372);
      v1376 = HIWORD(v1369) & 0xF;
      goto LABEL_1004;
    case 92:
      v1377 = a3;
      v1378 = word_298DFCDBC;
      v1379 = word_298DFCDBC[a3 & 0x1E];
      v878 = a4;
      v1380 = result;
      sub_298B0A034(a4, 1, v1379);
      v880 = v1380 & 3;
      if (!v880)
      {
        return 0;
      }

      sub_298B0A034(v878, 1, v1379);
      v1381 = HIWORD(v1377) & 0x1E;
      goto LABEL_999;
    case 93:
      v1382 = a3;
      v1378 = word_298DFE670;
      v1383 = word_298DFE670[a3 & 0x1C];
      v878 = a4;
      v1384 = result;
      sub_298B0A034(a4, 1, v1383);
      v880 = v1384 & 3;
      if (!v880)
      {
        return 0;
      }

      sub_298B0A034(v878, 1, v1383);
      v1381 = HIWORD(v1382) & 0x1C;
LABEL_999:
      v881 = v1378[v1381];
      goto LABEL_677;
    case 94:
      v1385 = a3;
      v1386 = a3 & 0x1E;
      v1387 = word_298DFCDBC;
      goto LABEL_1002;
    case 95:
      v1385 = a3;
      v1386 = a3 & 0x1C;
      v1387 = word_298DFE670;
LABEL_1002:
      v1388 = v1387[v1386];
      v1373 = a4;
      v1389 = result;
      sub_298B0A034(a4, 1, v1388);
      v1375 = v1389 & 3;
      if (!v1375)
      {
        return 0;
      }

      sub_298B0A034(v1373, 1, v1388);
      sub_298B1A0DC(v1373, (v1385 >> 5) & 0x1F);
      v1376 = HIWORD(v1385) & 0x1F;
LABEL_1004:
      sub_298B1A0DC(v1373, v1376);
      return v1375;
    case 96:
      v1390 = a3;
      v1391 = a4;
      v1392 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v1189 = v1392 & 3;
      if (!v1189)
      {
        return 0;
      }

      goto LABEL_1166;
    case 97:
      v1194 = a3;
      v819 = a4;
      v1283 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
LABEL_1008:
      v46 = v1283 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_1009:
      v823 = (v1194 >> 5) & 0x1E;
      v824 = word_298DFCDBC;
      goto LABEL_632;
    case 98:
      v1393 = a3;
      v1394 = word_298DFCDBC;
      v273 = a4;
      v1395 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v275 = v1395 & 3;
      if (!v275)
      {
        return 0;
      }

      v1396 = (v1393 >> 5) & 0x1E;
      goto LABEL_1016;
    case 99:
      v1397 = a3;
      v1398 = a4;
      v1399 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v632 = v1399 & 3;
      if (!v632)
      {
        return 0;
      }

      goto LABEL_1182;
    case 100:
      v1400 = a3;
      v1394 = word_298DFE670;
      v273 = a4;
      v1401 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v275 = v1401 & 3;
      if (!v275)
      {
        return 0;
      }

      v1396 = (v1400 >> 5) & 0x1C;
LABEL_1016:
      v277 = v1394[v1396];
      goto LABEL_221;
    case 101:
      v1197 = a3;
      v819 = a4;
      v1402 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1402 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_832:
      v823 = (v1197 >> 5) & 0x1C;
      v824 = word_298DFE670;
      goto LABEL_632;
    case 102:
      v1403 = a3;
      v44 = a4;
      v1404 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1404 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1403 & 7);
      v1405 = (v1403 >> 5) & 0x1E;
      v1406 = word_298DFCDBC;
      goto LABEL_1023;
    case 103:
      v1403 = a3;
      v44 = a4;
      v1407 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1407 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1403 & 7);
      v1405 = (v1403 >> 5) & 0x1C;
      v1406 = word_298DFE670;
LABEL_1023:
      sub_298B0A034(v44, 1, v1406[v1405]);
      sub_298B1A0DC(v44, HIWORD(v1403) & 0xF);
      v50 = (v1403 >> 10) & 3;
      goto LABEL_43;
    case 104:
      v1408 = a3;
      v174 = a4;
      v1409 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1409 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v174, 1, word_298DFE670[(v1408 >> 5) & 0x1C]);
      v177 = HIWORD(v1408) & 0x1F;
      goto LABEL_139;
    case 105:
      v1410 = a3;
      v44 = a4;
      v1411 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1411 & 3;
      if (!v46)
      {
        return 0;
      }

      v1412 = v1410 >> 13;
      v1413 = v1410 & 3;
      goto LABEL_1045;
    case 106:
      v1414 = a3;
      v44 = a4;
      v1415 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1415 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1414 & 7);
      sub_298B1A0DC(v44, (v1414 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1414) & 0xF);
      v50 = (v1414 >> 9) & 6 | (v1414 >> 3) & 1 | (v1414 >> 12) & 8;
      goto LABEL_43;
    case 107:
      v1338 = a3;
      v44 = a4;
      v1416 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1416 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1338 & 1);
      v1417 = (v1338 >> 5) & 0x1E;
      v1418 = word_298DFCDBC;
      goto LABEL_1036;
    case 108:
      v1419 = a3;
      v44 = a4;
      v1420 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1420 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1419 & 7);
      v1421 = (v1419 >> 5) & 0x1E;
      v1422 = word_298DFCDBC;
      goto LABEL_1040;
    case 109:
      v1338 = a3;
      v44 = a4;
      v1423 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1423 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1338 & 1);
      v1417 = (v1338 >> 5) & 0x1C;
      v1418 = word_298DFE670;
LABEL_1036:
      sub_298B0A034(v44, 1, v1418[v1417]);
      sub_298B1A0DC(v44, HIWORD(v1338) & 0xF);
      v1343 = (v1338 >> 8) & 4;
LABEL_1037:
      v50 = v1343 & 0xFFFFFFFC | (v1338 >> 1) & 3;
      goto LABEL_43;
    case 110:
      v1419 = a3;
      v44 = a4;
      v1424 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1424 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1419 & 7);
      v1421 = (v1419 >> 5) & 0x1C;
      v1422 = word_298DFE670;
LABEL_1040:
      sub_298B0A034(v44, 1, v1422[v1421]);
      sub_298B1A0DC(v44, HIWORD(v1419) & 0xF);
      v50 = (v1419 >> 10) & 1;
      goto LABEL_43;
    case 111:
      v1344 = a3;
      v44 = a4;
      v1425 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1425 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1344 & 7);
      sub_298B0A034(v44, 1, word_298DFCDBC[(v1344 >> 5) & 0x1E]);
      sub_298B1A0DC(v44, HIWORD(v1344) & 0xF);
      v1349 = (v1344 >> 9) & 2;
LABEL_965:
      v50 = v1349 & 0xFFFFFFFE | (v1344 >> 3) & 1;
      goto LABEL_43;
    case 112:
      v1410 = a3;
      v44 = a4;
      v1426 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1426 & 3;
      if (!v46)
      {
        return 0;
      }

      v1412 = v1410 >> 13;
      v1413 = v1410 & 7;
LABEL_1045:
      sub_298B0A034(v44, 2, v1413);
      sub_298B1A0DC(v44, (v1410 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1410) & 0xF);
      v50 = v1412 & 4 | (v1410 >> 10) & 3;
      goto LABEL_43;
    case 113:
      v1427 = a3;
      v44 = a4;
      v1428 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1428 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1427 & 3);
      v1429 = (v1427 >> 5) & 0x1E;
      v1430 = word_298DFCDBC;
      goto LABEL_1050;
    case 114:
      v1427 = a3;
      v44 = a4;
      v1431 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1431 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1427 & 3);
      v1429 = (v1427 >> 5) & 0x1C;
      v1430 = word_298DFE670;
LABEL_1050:
      sub_298B0A034(v44, 1, v1430[v1429]);
      sub_298B1A0DC(v44, HIWORD(v1427) & 0xF);
      v50 = (v1427 >> 9) & 6 | (v1427 >> 2) & 1;
      goto LABEL_43;
    case 115:
      v1432 = a3;
      v44 = a4;
      v1433 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1433 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1432 & 3);
      v1434 = (v1432 >> 5) & 0x1C;
      v1435 = word_298DFE670;
      goto LABEL_1055;
    case 116:
      v1432 = a3;
      v44 = a4;
      v1436 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1436 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1432 & 3);
      v1434 = (v1432 >> 5) & 0x1E;
      v1435 = word_298DFCDBC;
LABEL_1055:
      sub_298B0A034(v44, 1, v1435[v1434]);
      sub_298B1A0DC(v44, HIWORD(v1432) & 0xF);
      v50 = (v1432 >> 8) & 0xC | (v1432 >> 2) & 3;
      goto LABEL_43;
    case 117:
      v1437 = a3;
      v819 = a4;
      v1438 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1438 & 3;
      if (!v46)
      {
        return 0;
      }

      v1439 = v1437 & 1;
      goto LABEL_1066;
    case 118:
      v1440 = a3;
      v819 = a4;
      v1441 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1441 & 3;
      if (!v46)
      {
        return 0;
      }

      v1442 = v1440 & 1;
      goto LABEL_1069;
    case 119:
      v1437 = a3;
      v819 = a4;
      v1443 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1443 & 3;
      if (!v46)
      {
        return 0;
      }

      v1439 = v1437 & 3;
      goto LABEL_1066;
    case 120:
      v1440 = a3;
      v819 = a4;
      v1444 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1444 & 3;
      if (!v46)
      {
        return 0;
      }

      v1442 = v1440 & 3;
      goto LABEL_1069;
    case 121:
      v1437 = a3;
      v819 = a4;
      v1445 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1445 & 3;
      if (!v46)
      {
        return 0;
      }

      v1439 = v1437 & 7;
LABEL_1066:
      sub_298B0A034(v819, 2, v1439);
      v1446 = word_298DFCDBC;
      sub_298B0A034(v819, 1, word_298DFCDBC[(v1437 >> 5) & 0x1E]);
      v1447 = HIWORD(v1437) & 0x1E;
      goto LABEL_1351;
    case 122:
      v1440 = a3;
      v819 = a4;
      v1448 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1448 & 3;
      if (!v46)
      {
        return 0;
      }

      v1442 = v1440 & 7;
LABEL_1069:
      sub_298B0A034(v819, 2, v1442);
      v1446 = word_298DFE670;
      sub_298B0A034(v819, 1, word_298DFE670[(v1440 >> 5) & 0x1C]);
      v1447 = HIWORD(v1440) & 0x1C;
      goto LABEL_1351;
    case 123:
      v1449 = a3;
      v1450 = a4;
      v1451 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1451 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1450, 1, word_298DFCDBC[(v1449 >> 5) & 0x1E]);
      goto LABEL_1988;
    case 124:
      v1452 = a3;
      v1453 = a4;
      v1454 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1454 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1453, 1, word_298DFE670[(v1452 >> 5) & 0x1C]);
      goto LABEL_1254;
    case 125:
      v816 = a3;
      v819 = a4;
      v1455 = result;
      sub_298B0A034(a4, 1, word_298DFBA40[(a3 >> 13) & 3]);
      v46 = v1455 & 3;
      if (!v46)
      {
        return 0;
      }

      v1456 = v816 & 0xF;
      goto LABEL_1082;
    case 126:
      v816 = a3;
      v819 = a4;
      v1457 = result;
      sub_298B0A034(a4, 1, word_298D19FAA[((a3 >> 3) & 1) + 16]);
      v46 = v1457 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v819, 1, word_298DFBA40[(v816 >> 13) & 3]);
      v1456 = v816 & 7;
      goto LABEL_1082;
    case 127:
      v816 = a3;
      v819 = a4;
      v1458 = result;
      sub_298B0A034(a4, 1, word_298D19FAA[((a3 >> 2) & 3) + 32]);
      v46 = v1458 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v819, 1, word_298DFBA40[(v816 >> 13) & 3]);
      v1456 = v816 & 3;
      goto LABEL_1082;
    case 128:
      v816 = a3;
      v819 = a4;
      v1459 = result;
      sub_298B0A034(a4, 1, word_298D19FAA[((a3 >> 1) & 7) + 48]);
      v46 = v1459 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v819, 1, word_298DFBA40[(v816 >> 13) & 3]);
      v1456 = v816 & 1;
LABEL_1082:
      v1460 = v819;
      v1461 = 2;
      goto LABEL_1083;
    case 129:
      v1462 = a3;
      v1463 = a4;
      v1464 = result;
      sub_298B0A034(a4, 1, word_298DFBA40[(a3 >> 13) & 3]);
      v1465 = v1464 & 3;
      if (!v1465)
      {
        return 0;
      }

      sub_298B0A034(v1463, 2, v1462 & 0xF);
      sub_298B1A150(v1463, (v1462 >> 5) & 0x1F);
      return v1465;
    case 130:
      v1466 = result;
      sub_298B1A150(a4, (a3 >> 5) & 0x1F);
      return v1466 & 3;
    case 131:
      v816 = a3;
      v819 = a4;
      v1467 = result;
      sub_298B0A034(a4, 1, word_298D19FAA[(a3 & 0xF) + 64]);
      v46 = v1467 & 3;
      if (!v46)
      {
        return 0;
      }

      v1456 = word_298DFBA40[(v816 >> 13) & 3];
      v1460 = v819;
      v1461 = 1;
LABEL_1083:
      sub_298B0A034(v1460, v1461, v1456);
      goto LABEL_1084;
    case 132:
      v1186 = a3;
      v1187 = a4;
      v1468 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1189 = v1468 & 3;
      if (!v1189)
      {
        return 0;
      }

      sub_298B0A034(v1187, 1, word_298DFB41A[(v1186 >> 10) & 7]);
      sub_298B1A0DC(v1187, v1186 & 0x1F);
      goto LABEL_1284;
    case 133:
      v1186 = a3;
      v1187 = a4;
      v1469 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      goto LABEL_1282;
    case 134:
      v1186 = a3;
      v1187 = a4;
      v1469 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      goto LABEL_1282;
    case 135:
      v1470 = a3;
      v1391 = a4;
      v1471 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1189 = v1471 & 3;
      if (!v1189)
      {
        return 0;
      }

      sub_298B1A0DC(v1391, v1470 & 0x1F);
      sub_298B0A034(v1391, 1, word_298DFB41A[(v1470 >> 10) & 7]);
      v1364 = (v1470 >> 5) & 0x1F;
      goto LABEL_1198;
    case 136:
      v1472 = a3;
      v1187 = a4;
      v1473 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1189 = v1473 & 3;
      if (!v1189)
      {
        return 0;
      }

      sub_298B0A034(v1187, 1, word_298DFB41A[(v1472 >> 10) & 7]);
      sub_298B1A0DC(v1187, v1472 & 0x1F);
      goto LABEL_1437;
    case 137:
      v1474 = a3;
      v1475 = a4;
      v1476 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1476 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1475, 1, word_298DFB41A[(v1474 >> 10) & 7]);
      sub_298B1A0DC(v1475, v1474 & 0x1F);
      v177 = v1474 >> 5;
      goto LABEL_1984;
    case 138:
      v1477 = a3;
      v1450 = a4;
      v1478 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1478 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1450, 1, word_298DFB41A[(v1477 >> 10) & 7]);
      sub_298B1A0DC(v1450, v1477 & 0x1F);
      v177 = (v1477 >> 5) & 0xF;
      goto LABEL_1989;
    case 139:
      v1479 = a3;
      v174 = a4;
      v1480 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1480 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v174, 1, word_298DFB41A[(v1479 >> 10) & 7]);
      sub_298B1A0DC(v174, v1479 & 0x1F);
      v177 = (v1479 >> 5) & 0x1F;
      goto LABEL_139;
    case 140:
      v1481 = a3;
      v884 = a4;
      v1482 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v886 = v1482 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B0A034(v884, 1, word_298DFB41A[(v1481 >> 10) & 7]);
      sub_298B1A0DC(v884, v1481 & 0x1F);
      v887 = v1481 >> 5;
      goto LABEL_681;
    case 141:
      v1483 = a3;
      v914 = a4;
      v1484 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v886 = v1484 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B0A034(v914, 1, word_298DFB41A[(v1483 >> 10) & 7]);
      sub_298B1A0DC(v914, v1483 & 0x1F);
      v887 = (v1483 >> 5) & 0xF;
      goto LABEL_703;
    case 142:
      v1485 = a3;
      v1486 = a4;
      v1487 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v886 = v1487 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B0A034(v1486, 1, word_298DFB41A[(v1485 >> 10) & 7]);
      sub_298B1A0DC(v1486, v1485 & 0x1F);
      v887 = (v1485 >> 5) & 0x1F;
      goto LABEL_1738;
    case 143:
      v1186 = a3;
      v1187 = a4;
      v1488 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1189 = v1488 & 3;
      if (!v1189)
      {
        return 0;
      }

      sub_298B0A034(v1187, 1, word_298DFB41A[(v1186 >> 10) & 7]);
      sub_298B1A0DC(v1187, v1186 & 0x1F);
      sub_298B1A0DC(v1187, HIWORD(v1186) & 0x1F);
      goto LABEL_1284;
    case 144:
      v1489 = a3;
      v1453 = a4;
      v1490 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1490 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1453, 1, word_298DFB41A[(v1489 >> 10) & 7]);
      sub_298B1A0DC(v1453, v1489 & 0x1F);
      v177 = (v1489 >> 17) & 0x20 | (v1489 >> 5) & 0x1F;
      goto LABEL_1255;
    case 145:
      v1491 = a3;
      v1492 = a4;
      v1493 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v886 = v1493 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B0A034(v1492, 1, word_298DFB41A[(v1491 >> 10) & 7]);
      sub_298B1A0DC(v1492, v1491 & 0x1F);
      v887 = (v1491 >> 17) & 0x20 | (v1491 >> 5) & 0x1F;
      goto LABEL_2038;
    case 146:
      return sub_298B1A238(a4, a3) & result;
    case 147:
      v1494 = a3;
      v1495 = a4;
      v1496 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1497 = v1496 & 3;
      if (!v1497)
      {
        return 0;
      }

      sub_298B0A034(v1495, 1, word_298DFB41A[HIWORD(v1494) & 0xF]);
      goto LABEL_1387;
    case 148:
      v1498 = a3;
      v1499 = a4;
      v1500 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1501 = v1500 & 3;
      if (!v1501)
      {
        return 0;
      }

      sub_298B0A034(v1499, 1, word_298DFB41A[HIWORD(v1498) & 0xF]);
      goto LABEL_1390;
    case 149:
      v1502 = a3;
      v1503 = a4;
      v1504 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1497 = v1504 & 3;
      if (!v1497)
      {
        return 0;
      }

      v1505 = v1502;
      sub_298B1A0DC(v1503, v1502 & 0x1F);
      sub_298B0A034(v1503, 1, word_298DFB41A[HIWORD(v1502) & 0xF]);
      goto LABEL_1369;
    case 150:
      v1506 = a3;
      v1507 = a4;
      v1508 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1501 = v1508 & 3;
      if (!v1501)
      {
        return 0;
      }

      v1509 = v1506;
      sub_298B1A0DC(v1507, v1506 & 0x1F);
      sub_298B0A034(v1507, 1, word_298DFB41A[HIWORD(v1506) & 0xF]);
      goto LABEL_1372;
    case 151:
      v1510 = a3;
      v911 = a4;
      v1511 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1511 & 3;
      if (!v46)
      {
        return 0;
      }

      v1512 = v1510;
      sub_298B1A0DC(v911, v1510 & 0x1F);
      sub_298B0A034(v911, 1, word_298DFB41A[HIWORD(v1510) & 0xF]);
      goto LABEL_1385;
    case 152:
      v1513 = a3;
      v1514 = a4;
      v1515 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1501 = v1515 & 3;
      if (!v1501)
      {
        return 0;
      }

      sub_298B0A034(v1514, 1, word_298DFB41A[HIWORD(v1513) & 0xF]);
      goto LABEL_1392;
    case 153:
      v1516 = a3;
      v1517 = a4;
      v1518 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1501 = v1518 & 3;
      if (!v1501)
      {
        return 0;
      }

      sub_298B0A034(v1517, 1, word_298DFB41A[HIWORD(v1516) & 0xF]);
      goto LABEL_1394;
    case 154:
      v1519 = a3;
      v1520 = a4;
      v1521 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1501 = v1521 & 3;
      if (!v1501)
      {
        return 0;
      }

      v1522 = v1519;
      sub_298B1A0DC(v1520, v1519 & 0x1F);
      sub_298B0A034(v1520, 1, word_298DFB41A[HIWORD(v1519) & 0xF]);
      goto LABEL_1375;
    case 155:
      v1523 = a3;
      v1524 = a4;
      v1525 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1501 = v1525 & 3;
      if (!v1501)
      {
        return 0;
      }

      v1526 = v1523;
      sub_298B1A0DC(v1524, v1523 & 0x1F);
      sub_298B0A034(v1524, 1, word_298DFB41A[HIWORD(v1523) & 0xF]);
      goto LABEL_1378;
    case 156:
      v1472 = a3;
      v1187 = a4;
      v1527 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1189 = v1527 & 3;
      if (!v1189)
      {
        return 0;
      }

      goto LABEL_1437;
    case 157:
      v1528 = a3;
      v911 = a4;
      v1529 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1529 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, v1528 & 0x1F);
      sub_298B1A0DC(v911, (v1528 >> 5) & 0x1F);
      v50 = (v1528 >> 13) & 0xF8 | (v1528 >> 10) & 7;
      goto LABEL_700;
    case 158:
      v1530 = a3;
      v44 = a4;
      v1531 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1531 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFCDBC[(v1530 >> 5) & 0x1F]);
      v50 = (v1530 >> 13) & 0xF8 | (v1530 >> 10) & 7;
      goto LABEL_43;
    case 159:
      v1532 = a3;
      v44 = a4;
      v1533 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1533 & 3;
      if (!v46)
      {
        return 0;
      }

      v1534 = (v1532 >> 5) & 0x1F;
      goto LABEL_1426;
    case 160:
      v1535 = a3;
      v44 = a4;
      v1536 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1536 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1535 >> 5) & 0x1F);
      v50 = (v1535 >> 21) & 6 | (v1535 >> 20) & 1;
      goto LABEL_43;
    case 161:
      v1537 = a3;
      v44 = a4;
      v1538 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1538 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1537 >> 5) & 0x1F);
      v50 = (v1537 >> 20) & 0xC | (v1537 >> 19) & 3;
      goto LABEL_43;
    case 162:
      v1539 = a3;
      v44 = a4;
      v1540 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1540 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1539 >> 5) & 0x1F);
      v50 = (v1539 >> 19) & 0x18 | (v1539 >> 18) & 7;
      goto LABEL_43;
    case 163:
      v1541 = a3;
      v44 = a4;
      v1542 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1542 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1541 >> 5) & 0x1F);
      v50 = (v1541 >> 18) & 0x30 | (v1541 >> 17) & 0xF;
      goto LABEL_43;
    case 164:
      v1543 = a3;
      v44 = a4;
      v1544 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1544 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1543 >> 5) & 0x1F);
      v50 = (v1543 >> 20) & 1;
      goto LABEL_43;
    case 165:
      v1545 = a3;
      v44 = a4;
      v1546 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1546 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1545 >> 5) & 0x1F);
      goto LABEL_2018;
    case 166:
      v1547 = a3;
      v44 = a4;
      v1548 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1548 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1547 >> 5) & 0x1F);
      v50 = (v1547 >> 18) & 7;
      goto LABEL_43;
    case 167:
      v1549 = a3;
      v44 = a4;
      v1550 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1550 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1549 >> 5) & 0x1F);
      v50 = (v1549 >> 17) & 0xF;
      goto LABEL_43;
    case 168:
      v1551 = a3;
      v911 = a4;
      v1552 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1552 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, v1551 & 0x1F);
      sub_298B1A0DC(v911, (v1551 >> 5) & 0x1F);
      v50 = HIWORD(v1551) & 0xF;
      goto LABEL_700;
    case 169:
      v1472 = a3;
      v1187 = a4;
      v1553 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1189 = v1553 & 3;
      if (!v1189)
      {
        return 0;
      }

      sub_298B0A034(v1187, 1, word_298DFCDBC[(v1472 >> 5) & 0x1F]);
      goto LABEL_1438;
    case 170:
      v1390 = a3;
      v1391 = a4;
      v1554 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1189 = v1554 & 3;
      if (!v1189)
      {
        return 0;
      }

      sub_298B1A0DC(v1391, v1390 & 0x1F);
LABEL_1166:
      sub_298B1A0DC(v1391, (v1390 >> 5) & 0x1F);
      v1364 = HIWORD(v1390) & 0x1F;
      goto LABEL_1198;
    case 171:
      v1555 = a3;
      v1556 = a4;
      v1557 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1557 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1556, v1555 & 0x1F);
      sub_298B1A0DC(v1556, (v1555 >> 5) & 0x1F);
      v177 = HIWORD(v1555) & 7;
      v178 = v1556;
      goto LABEL_1985;
    case 172:
      v1558 = a3;
      v1559 = a4;
      v1560 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1560 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1559, v1558 & 0x1F);
      sub_298B1A0DC(v1559, (v1558 >> 5) & 0x1F);
      v177 = HIWORD(v1558) & 0xF;
      goto LABEL_2004;
    case 173:
      v1561 = a3;
      v1562 = a4;
      v1563 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1563 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1562, v1561 & 0x1F);
      sub_298B1A0DC(v1562, (v1561 >> 5) & 0x1F);
      v177 = HIWORD(v1561) & 0x1F;
      v178 = v1562;
      goto LABEL_140;
    case 174:
      v1564 = a3;
      v1565 = a4;
      v1566 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1566 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1565, v1564 & 0x1F);
      sub_298B1A0DC(v1565, (v1564 >> 5) & 0x1F);
      v177 = (v1564 >> 17) & 0x20 | HIWORD(v1564) & 0x1F;
      goto LABEL_2035;
    case 175:
      v1567 = a3;
      v1391 = a4;
      v1568 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1189 = v1568 & 3;
      if (!v1189)
      {
        return 0;
      }

      v1569 = v1567;
      sub_298B1A0DC(v1391, v1567 & 0x1F);
      v1570 = HIWORD(v1567) & 0x1F;
      goto LABEL_1197;
    case 176:
      v1571 = a3;
      v819 = a4;
      v1572 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1572 & 3;
      if (!v46)
      {
        return 0;
      }

      v823 = (v1571 >> 5) & 0x1F;
      v824 = word_298DFB922;
      goto LABEL_632;
    case 177:
      v1573 = a3;
      v1574 = a4;
      v1575 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1576 = v1575 & 3;
      if (!v1576)
      {
        return 0;
      }

      sub_298B1A0DC(v1574, v1573 & 0x1F);
      v1577 = (v1573 >> 5) & 0x1F;
      goto LABEL_1331;
    case 178:
      v1397 = a3;
      v1398 = a4;
      v1578 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v632 = v1578 & 3;
      if (!v632)
      {
        return 0;
      }

LABEL_1182:
      v633 = (v1397 >> 5) & 0x1F;
      v634 = v1398;
      goto LABEL_516;
    case 179:
      v1579 = a3;
      v911 = a4;
      v1580 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1580 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, (v1579 >> 5) & 0x1F);
      v50 = (v1579 >> 17) & 1;
      goto LABEL_700;
    case 180:
      v1581 = a3;
      v911 = a4;
      v1582 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1582 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, (v1581 >> 5) & 0x1F);
      v50 = (v1581 >> 17) & 3;
      goto LABEL_700;
    case 181:
      v1583 = a3;
      v1315 = a4;
      v1584 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1584 & 3;
      if (!v46)
      {
        return 0;
      }

      v1585 = v1583;
      sub_298B1A0DC(v1315, v1583 & 0x1F);
      goto LABEL_1208;
    case 182:
      v1586 = a3;
      v1315 = a4;
      v1587 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1587 & 3;
      if (!v46)
      {
        return 0;
      }

      v1585 = v1586;
      sub_298B1A0DC(v1315, v1586 & 0x1F);
      v1588 = (v1586 >> 17) & 1;
      goto LABEL_1207;
    case 183:
      v1589 = a3;
      v1315 = a4;
      v1590 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1590 & 3;
      if (!v46)
      {
        return 0;
      }

      v1585 = v1589;
      sub_298B1A0DC(v1315, v1589 & 0x1F);
      v1588 = (v1589 >> 17) & 3;
      goto LABEL_1207;
    case 184:
      v1186 = a3;
      v1187 = a4;
      v1591 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1189 = v1591 & 3;
      if (!v1189)
      {
        return 0;
      }

      goto LABEL_1284;
    case 185:
      v1592 = a3;
      v1391 = a4;
      v1593 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1189 = v1593 & 3;
      if (!v1189)
      {
        return 0;
      }

      v1569 = v1592;
      v1570 = v1592 & 0x1F;
LABEL_1197:
      sub_298B1A0DC(v1391, v1570);
      v1364 = (v1569 >> 5) & 0x1F;
LABEL_1198:
      v1594 = v1391;
      goto LABEL_1286;
    case 186:
      v351 = a3;
      v353 = a4;
      v1595 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v356 = v1595 & 3;
      if (!v356)
      {
        return 0;
      }

      goto LABEL_275;
    case 187:
      v1596 = a3;
      v1315 = a4;
      v1597 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1597 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1315, v1596 & 0x1F);
      v1317 = (v1596 >> 5) & 0x1F;
      v1318 = word_298DFBCEE;
      goto LABEL_1209;
    case 188:
      v1598 = a3;
      v911 = a4;
      v1599 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1599 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, (v1598 >> 5) & 0x1F);
      v50 = (v1598 >> 20) & 4 | (v1598 >> 17) & 3;
      goto LABEL_700;
    case 189:
      v1600 = a3;
      v1315 = a4;
      v1601 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1601 & 3;
      if (!v46)
      {
        return 0;
      }

      v1585 = v1600;
      sub_298B1A0DC(v1315, v1600 & 0x1F);
      v1588 = (v1600 >> 20) & 4 | (v1600 >> 17) & 3;
LABEL_1207:
      sub_298B0A034(v1315, 2, v1588);
LABEL_1208:
      v1317 = (v1585 >> 5) & 0xF;
      v1318 = word_298DFB41A;
      goto LABEL_1209;
    case 190:
      v1602 = a3;
      v44 = a4;
      v1603 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1603 & 3;
      if (!v46)
      {
        return 0;
      }

      if (((v1602 >> 5) & 0x10) != 0)
      {
        v1604 = (v1602 >> 5) & 0x1F | 0xFFFFFFFFFFFFFFE0;
      }

      else
      {
        v1604 = (v1602 >> 5) & 0x1F;
      }

      sub_298B0A034(v44, 2, v1604);
      v47 = HIWORD(v1602) & 0x1F;
      v48 = v47 | 0xFFFFFFFFFFFFFFE0;
      v49 = (v1602 & 0x100000) == 0;
      goto LABEL_40;
    case 191:
      v1605 = a3;
      v44 = a4;
      v1606 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1606 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A55C(v44, (v1605 >> 5) & 0x1F);
      goto LABEL_1230;
    case 192:
      v1607 = a3;
      v1608 = a4;
      v1609 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1576 = v1609 & 3;
      if (!v1576)
      {
        return 0;
      }

      if (((v1607 >> 5) & 0x10) != 0)
      {
        v1610 = (v1607 >> 5) & 0x1F | 0xFFFFFFFFFFFFFFE0;
      }

      else
      {
        v1610 = (v1607 >> 5) & 0x1F;
      }

      sub_298B0A034(v1608, 2, v1610);
      goto LABEL_1728;
    case 193:
      v1607 = a3;
      v1608 = a4;
      v1611 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1576 = v1611 & 3;
      if (!v1576)
      {
        return 0;
      }

      goto LABEL_1727;
    case 194:
      v1612 = a3;
      v44 = a4;
      v1613 = result;
      sub_298B1A150(a4, a3 & 0x1F);
      v46 = v1613 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v44, HIWORD(v1612) & 0x1F);
LABEL_1227:
      v47 = (v1612 >> 5) & 0x3F;
      v48 = v47 | 0xFFFFFFFFFFFFFFC0;
      v49 = ((v1612 >> 5) & 0x20) == 0;
      goto LABEL_40;
    case 195:
      v1612 = a3;
      v44 = a4;
      v1614 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v1614 & 3;
      if (v46)
      {
        goto LABEL_1227;
      }

      return 0;
    case 196:
      v1605 = a3;
      v44 = a4;
      v1615 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1615 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFBCEE[(v1605 >> 5) & 0x1F]);
LABEL_1230:
      v47 = HIWORD(v1605) & 0x1F;
      v48 = v47 | 0xFFFFFFFFFFFFFFE0;
      v49 = (v1605 & 0x100000) == 0;
      goto LABEL_40;
    case 197:
      v816 = a3;
      v819 = a4;
      v1616 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1616 & 3;
      if (!v46)
      {
        return 0;
      }

      if (((v816 >> 5) & 0x10) != 0)
      {
        v1617 = (v816 >> 5) & 0x1F | 0xFFFFFFFFFFFFFFE0;
      }

      else
      {
        v1617 = (v816 >> 5) & 0x1F;
      }

      sub_298B0A034(v819, 2, v1617);
      goto LABEL_631;
    case 198:
      v1618 = a3;
      v819 = a4;
      v1619 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      goto LABEL_1348;
    case 199:
      v1620 = a3;
      v472 = word_298DFB41A;
      v362 = a4;
      v1621 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v364 = v1621 & 3;
      if (!v364)
      {
        return 0;
      }

      goto LABEL_1311;
    case 200:
      v1622 = a3;
      v1623 = a3 & 0xF;
      goto LABEL_1325;
    case 201:
      v1624 = a3;
      v1475 = a4;
      v1625 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1625 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1475, (v1624 >> 5) & 0x1F);
      goto LABEL_1983;
    case 202:
      v1449 = a3;
      v1450 = a4;
      v1626 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1626 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1450, (v1449 >> 5) & 0x1F);
      goto LABEL_1988;
    case 203:
      v1627 = a3;
      v174 = a4;
      v1628 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1628 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v174, (v1627 >> 5) & 0x1F);
      v177 = HIWORD(v1627) & 0x1F;
      goto LABEL_139;
    case 204:
      v1629 = a3;
      v884 = a4;
      v1630 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v886 = v1630 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B1A0DC(v884, (v1629 >> 5) & 0x1F);
      v887 = HIWORD(v1629) & 7;
      goto LABEL_681;
    case 205:
      v1631 = a3;
      v914 = a4;
      v1632 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v886 = v1632 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B1A0DC(v914, (v1631 >> 5) & 0x1F);
      goto LABEL_1999;
    case 206:
      v1633 = a3;
      v1486 = a4;
      v1634 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v886 = v1634 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B1A0DC(v1486, (v1633 >> 5) & 0x1F);
      goto LABEL_1737;
    case 207:
      v1452 = a3;
      v1453 = a4;
      v1635 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1635 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1453, (v1452 >> 5) & 0x1F);
LABEL_1254:
      v177 = (v1452 >> 17) & 0x20 | HIWORD(v1452) & 0x1F;
      goto LABEL_1255;
    case 208:
      v1636 = a3;
      v1492 = a4;
      v1637 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v886 = v1637 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B1A0DC(v1492, (v1636 >> 5) & 0x1F);
      v887 = (v1636 >> 17) & 0x20 | HIWORD(v1636) & 0x1F;
      goto LABEL_2038;
    case 209:
      v1638 = a3;
      v1315 = a4;
      v1639 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1639 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1315, v1638 & 0x1F);
      sub_298B0A034(v1315, 1, word_298DFB41A[(v1638 >> 10) & 7]);
      v1317 = (v1638 >> 5) & 0x1F;
      v1318 = "\r";
      goto LABEL_1209;
    case 210:
      v1640 = a3;
      v1315 = a4;
      v1641 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1641 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1315, v1640 & 0x1F);
      sub_298B0A034(v1315, 1, word_298DFB41A[(v1640 >> 10) & 7]);
      v1317 = (v1640 >> 5) & 0x1F;
      v1318 = word_298DFB36E;
      goto LABEL_1209;
    case 211:
      v1186 = a3;
      v1187 = a4;
      v1469 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      goto LABEL_1282;
    case 212:
      v1186 = a3;
      v1642 = a3 & 0x1F;
      v1643 = "\r";
      goto LABEL_1281;
    case 213:
      v1186 = a3;
      v1642 = a3 & 0x1F;
      v1643 = word_298DFB36E;
      goto LABEL_1281;
    case 214:
      v1644 = a3;
      v1315 = a4;
      v1645 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1645 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1315, v1644 & 0x1F);
      sub_298B0A034(v1315, 1, word_298DFB41A[(v1644 >> 10) & 7]);
      v1317 = (v1644 >> 5) & 0x1F;
      v1318 = word_298DFB922;
      goto LABEL_1209;
    case 215:
      v1646 = a3;
      v1647 = a3 & 0x1F;
      v1648 = "\r";
      goto LABEL_1292;
    case 216:
      v1646 = a3;
      v1647 = a3 & 0x1F;
      v1648 = word_298DFB36E;
      goto LABEL_1292;
    case 217:
      v1649 = a3;
      v819 = a4;
      v1650 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1650 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v819, 1, word_298DFB41A[(v1649 >> 10) & 7]);
      v823 = (v1649 >> 5) & 0x1F;
      v824 = word_298DFCDBC;
      goto LABEL_632;
    case 218:
      v1186 = a3;
      v1187 = a4;
      v1651 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v1189 = v1651 & 3;
      if (!v1189)
      {
        return 0;
      }

      sub_298B0A034(v1187, 1, word_298DFB41A[(v1186 >> 10) & 7]);
      sub_298B1A55C(v1187, v1186 & 0x1F);
      goto LABEL_1284;
    case 219:
      v1652 = a3;
      v1315 = a4;
      v1653 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1653 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1315, v1652 & 0x1F);
      sub_298B0A034(v1315, 1, word_298DFB41A[(v1652 >> 10) & 7]);
      v1317 = (v1652 >> 5) & 0x1F;
      v1318 = word_298DFB86A;
      goto LABEL_1209;
    case 220:
      v1654 = a3;
      v1315 = a4;
      v1655 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1655 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1315, v1654 & 0x1F);
      sub_298B0A034(v1315, 1, word_298DFB41A[(v1654 >> 10) & 7]);
      v1317 = (v1654 >> 5) & 0x1F;
      v1318 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_1209:
      v50 = v1318[v1317];
      v51 = v1315;
      goto LABEL_604;
    case 221:
      v1186 = a3;
      v1642 = a3 & 0x1F;
      v1643 = word_298DFBCEE;
      goto LABEL_1281;
    case 222:
      v1186 = a3;
      v1642 = a3 & 0x1F;
      v1643 = word_298DFB86A;
      goto LABEL_1281;
    case 223:
      v1186 = a3;
      v1642 = a3 & 0x1F;
      v1643 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_1281:
      v1187 = a4;
      v1469 = result;
      sub_298B0A034(a4, 1, v1643[v1642]);
LABEL_1282:
      v1189 = v1469 & 3;
      if (!v1189)
      {
        return 0;
      }

LABEL_1283:
      sub_298B0A034(v1187, 1, word_298DFB41A[(v1186 >> 10) & 7]);
LABEL_1284:
      v1364 = (v1186 >> 5) & 0x1F;
      goto LABEL_1285;
    case 224:
      v1656 = a3;
      v1657 = a4;
      v1658 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v356 = v1658 & 3;
      if (!v356)
      {
        return 0;
      }

      sub_298B1A0DC(v1657, v1656 & 0x1F);
      sub_298B0A034(v1657, 1, word_298DFB41A[(v1656 >> 10) & 7]);
      v357 = (v1656 >> 5) & 0x1F;
      v358 = v1657;
      goto LABEL_351;
    case 225:
      v1646 = a3;
      v1647 = a3 & 0x1F;
      v1648 = word_298DFB86A;
      goto LABEL_1292;
    case 226:
      v1646 = a3;
      v1647 = a3 & 0x1F;
      v1648 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1292;
    case 227:
      v1646 = a3;
      v1647 = a3 & 0x1F;
      v1648 = word_298DFBCEE;
LABEL_1292:
      v1659 = v1648[v1647];
      v630 = a4;
      v1660 = result;
      sub_298B0A034(a4, 1, v1659);
      v632 = v1660 & 3;
      if (!v632)
      {
        return 0;
      }

      sub_298B0A034(v630, 1, word_298DFB41A[(v1646 >> 10) & 7]);
      sub_298B0A034(v630, 1, v1659);
      v633 = (v1646 >> 5) & 0x1F;
LABEL_515:
      v634 = v630;
LABEL_516:
      sub_298B1A0DC(v634, v633);
      return v632;
    case 228:
      v1661 = a3;
      v44 = a4;
      v1662 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v1662 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, (v1661 >> 5) & 0x1F);
      v50 = (HIWORD(v1661) & 0xF) + 1;
      goto LABEL_43;
    case 229:
      v1663 = a3;
      v1664 = word_298DFBCEE[a3 & 0x1F];
      v892 = a4;
      v1665 = result;
      sub_298B0A034(a4, 1, v1664);
      v364 = v1665 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v892, 1, v1664);
      sub_298B0A034(v892, 2, (v1663 >> 5) & 0x1F);
      v367 = (HIWORD(v1663) & 0xF) + 1;
      goto LABEL_685;
    case 230:
      v1666 = a3;
      v911 = a4;
      v1667 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v1667 & 3;
      if (!v46)
      {
        return 0;
      }

      v1668 = v1666;
      sub_298B1A55C(v911, v1666 & 0x1F);
      goto LABEL_1302;
    case 231:
      v1669 = a3;
      v911 = a4;
      v1670 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1670 & 3;
      if (!v46)
      {
        return 0;
      }

      v1668 = v1669;
      sub_298B1A0DC(v911, v1669 & 0x1F);
LABEL_1302:
      sub_298B0A034(v911, 2, (v1668 >> 5) & 0x1F);
      v50 = (HIWORD(v1668) & 0xF) + 1;
      goto LABEL_700;
    case 232:
      v1472 = a3;
      v1187 = a4;
      v1671 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1189 = v1671 & 3;
      if (!v1189)
      {
        return 0;
      }

      v1672 = (v1472 >> 10) & 0xF;
      goto LABEL_1436;
    case 233:
      v1673 = a3;
      v1187 = a4;
      v1674 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v1189 = v1674 & 3;
      if (!v1189)
      {
        return 0;
      }

      sub_298B0A034(v1187, 1, word_298DFB41A[(v1673 >> 10) & 7]);
      sub_298B1A0DC(v1187, (v1673 >> 5) & 0x1F);
      v1364 = HIWORD(v1673) & 0x1F;
      goto LABEL_1285;
    case 234:
      v1675 = a3;
      v44 = a4;
      v1676 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1676 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1675 >> 10) & 7]);
      sub_298B1A0DC(v44, (v1675 >> 5) & 0x1F);
      v47 = HIWORD(v1675) & 0x1F;
      v48 = v47 | 0xFFFFFFFFFFFFFFE0;
      v49 = (v1675 & 0x100000) == 0;
      goto LABEL_40;
    case 235:
      v1620 = a3;
      v472 = word_298DFB41A;
      v362 = a4;
      v1677 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v364 = v1677 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v362, 1, word_298DFB41A[(v1620 >> 10) & 0xF]);
LABEL_1311:
      sub_298B0A034(v362, 1, word_298DFB41A[(v1620 >> 5) & 0xF]);
      v474 = HIWORD(v1620) & 0xF;
      goto LABEL_374;
    case 236:
      v1678 = a3;
      v472 = word_298DFB41A;
      v362 = a4;
      v1679 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v364 = v1679 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v362, 1, word_298DFB41A[(v1678 >> 10) & 0xF]);
      v474 = (v1678 >> 5) & 0xF;
      goto LABEL_374;
    case 237:
      v1680 = a3;
      v1681 = word_298DFB41A[a3 & 0xF];
      v1682 = a4;
      v1683 = result;
      sub_298B0A034(a4, 1, v1681);
      v364 = v1683 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v1682, 1, word_298DFB41A[(v1680 >> 10) & 0xF]);
LABEL_1319:
      sub_298B0A034(v1682, 1, word_298DFB41A[(v1680 >> 5) & 0xF]);
      v368 = v1682;
      goto LABEL_1320;
    case 238:
      v1684 = a3;
      v1685 = word_298DFB41A[a3 & 0xF];
      v1686 = a4;
      v1687 = result;
      sub_298B0A034(a4, 1, v1685);
      v275 = v1687 & 3;
      if (!v275)
      {
        return 0;
      }

      sub_298B0A034(v1686, 1, v1685);
      sub_298B0A034(v1686, 1, word_298DFB41A[(v1684 >> 10) & 0xF]);
      v277 = word_298DFB41A[(v1684 >> 5) & 0xF];
      v278 = v1686;
      goto LABEL_222;
    case 239:
      v1680 = a3;
      v1681 = word_298DFB41A[a3 & 0xF];
      v1682 = a4;
      v1688 = result;
      sub_298B0A034(a4, 1, v1681);
      v364 = v1688 & 3;
      if (v364)
      {
        goto LABEL_1319;
      }

      return 0;
    case 240:
      v1689 = a3;
      v1213 = a4;
      v1690 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v364 = v1690 & 3;
      if (!v364)
      {
        return 0;
      }

      v367 = (v1689 >> 5) & 0x1F;
      goto LABEL_2051;
    case 241:
      v76 = a3 & 0xF;
      goto LABEL_1364;
    case 242:
      v1622 = a3;
      v1623 = (a3 >> 10) & 0xF;
LABEL_1325:
      v272 = word_298DFB41A;
      v273 = a4;
      v1691 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[v1623]);
      v275 = v1691 & 3;
      if (!v275)
      {
        return 0;
      }

      v276 = (v1622 >> 5) & 0xF;
      goto LABEL_220;
    case 243:
      v1692 = a3;
      v44 = a4;
      v1693 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1693 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1692 >> 10) & 7]);
      sub_298B1A0DC(v44, (v1692 >> 5) & 0x1F);
      v50 = (v1692 >> 14) & 0x7F;
      goto LABEL_43;
    case 244:
      v1694 = a3;
      v1574 = a4;
      v1695 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v1576 = v1695 & 3;
      if (!v1576)
      {
        return 0;
      }

      sub_298B1A55C(v1574, (v1694 >> 5) & 0x1F);
      v1577 = HIWORD(v1694) & 0x1F;
LABEL_1331:
      v1696 = v1574;
      goto LABEL_1730;
    case 245:
      v1618 = a3;
      v1697 = a3 & 0xF;
      v1698 = word_298DFB41A;
      goto LABEL_1347;
    case 246:
      v1699 = a3;
      v1700 = a4;
      v1701 = result;
      sub_298B1A55C(a4, (a3 >> 5) & 0x1F);
      v1702 = v1701 & 3;
      if (!v1702)
      {
        return 0;
      }

      sub_298B1A55C(v1700, HIWORD(v1699) & 0x1F);
      return v1702;
    case 247:
      v270 = a3;
      v271 = (a3 >> 5) & 0x1F;
      v272 = word_298DFBCEE;
      goto LABEL_218;
    case 248:
      v1703 = a3;
      v44 = a4;
      v1704 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1704 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1703 >> 10) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFB41A[(v1703 >> 5) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFBA40[HIWORD(v1703) & 3]);
      v50 = (v1703 >> 23) & 1;
      goto LABEL_43;
    case 249:
      v1705 = a3;
      v44 = a4;
      v1706 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1706 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1705 >> 10) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFB41A[(v1705 >> 5) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFBA40[HIWORD(v1705) & 3]);
      v50 = (v1705 >> 22) & 3;
      goto LABEL_43;
    case 250:
      v1707 = a3;
      v44 = a4;
      v1708 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1708 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1707 >> 10) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFB41A[(v1707 >> 5) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFBA40[HIWORD(v1707) & 3]);
      v50 = (v1707 >> 21) & 6 | (v1707 >> 20) & 1;
      goto LABEL_43;
    case 251:
      v1709 = a3;
      v44 = a4;
      v1710 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1710 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1709 >> 10) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFB41A[(v1709 >> 5) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFBA40[HIWORD(v1709) & 3]);
      v50 = (v1709 >> 20) & 0xC | (v1709 >> 19) & 3;
      goto LABEL_43;
    case 252:
      v1711 = a3;
      v44 = a4;
      v1712 = result;
      sub_298B0A034(a4, 1, word_298DFB3E8[a3 & 7 | 8]);
      v46 = v1712 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFBCEE[(v1711 >> 5) & 0x1F]);
      sub_298B0A034(v44, 1, word_298DFBCEE[HIWORD(v1711) & 0x1F]);
      v50 = (v1711 >> 13) & 1;
      goto LABEL_43;
    case 253:
      v1618 = a3;
      v1697 = a3 & 0xE;
      v1698 = word_298DFB4CE;
LABEL_1347:
      v819 = a4;
      v1619 = result;
      sub_298B0A034(a4, 1, v1698[v1697]);
LABEL_1348:
      v46 = v1619 & 3;
      if (!v46)
      {
        return 0;
      }

      v1713 = (v1618 >> 5) & 0x1F;
      v1446 = word_298DFBCEE;
      goto LABEL_1350;
    case 254:
      v1714 = a3;
      v44 = a4;
      v1715 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1715 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB3E8[(v1714 >> 5) | 8]);
      v50 = (v1714 >> 8) & 3;
      goto LABEL_43;
    case 255:
      v1716 = a3;
      v44 = a4;
      v1717 = result;
      sub_298B0A034(a4, 1, word_298DFB4CE[a3 & 0xF]);
      v46 = v1717 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB3E8[(v1716 >> 5) | 8]);
      v50 = (v1716 >> 8) & 1;
      goto LABEL_43;
    case 256:
      v76 = a3 & 7 | 8;
      v77 = word_298DFB3E8;
      goto LABEL_71;
    case 257:
      v1718 = a3;
      v819 = a4;
      v1719 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v1719 & 3;
      if (!v46)
      {
        return 0;
      }

      v1446 = word_298DFB41A;
      sub_298B0A034(v819, 1, word_298DFB41A[(v1718 >> 10) & 0xF]);
      v1447 = (v1718 >> 5) & 0xF;
      goto LABEL_1351;
    case 258:
      v1720 = a3;
      v44 = a4;
      v1721 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v1721 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB3E8[(v1720 >> 5) & 0xF]);
      v50 = (v1720 >> 10) & 1;
      goto LABEL_43;
    case 259:
      v1722 = a3;
      v1681 = word_298DFBCEE[a3 & 0x1F];
      v1723 = a4;
      v1724 = result;
      sub_298B0A034(a4, 1, v1681);
      v364 = v1724 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v1723, 1, word_298DFB41A[(v1722 >> 5) & 0xF]);
      v368 = v1723;
      goto LABEL_1320;
    case 260:
      v76 = (a3 >> 5) & 0xF;
LABEL_1364:
      v77 = word_298DFB41A;
      goto LABEL_71;
    case 261:
      v1725 = a3;
      v1608 = a4;
      v1726 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v1576 = v1726 & 3;
      if (!v1576)
      {
        return 0;
      }

      sub_298B0A034(v1608, 1, word_298DFB41A[(v1725 >> 5) & 0xF]);
      v1577 = v1725 & 0x1F;
      goto LABEL_1729;
    case 262:
      v1727 = a3;
      v1503 = a4;
      v1728 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1497 = v1728 & 3;
      if (!v1497)
      {
        return 0;
      }

      v1505 = v1727;
      sub_298B1A0DC(v1503, v1727 & 0x1F);
LABEL_1369:
      v1729 = (v1505 >> 5) & 0x1FF;
      v1730 = v1503;
      return sub_298B1A3B4(v1730, v1729) & v1497;
    case 263:
      v1731 = a3;
      v1507 = a4;
      v1732 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1501 = v1732 & 3;
      if (!v1501)
      {
        return 0;
      }

      v1509 = v1731;
      sub_298B1A0DC(v1507, v1731 & 0x1F);
LABEL_1372:
      v1733 = (v1509 >> 5) & 0x1FF;
      v1734 = v1507;
      goto LABEL_1395;
    case 264:
      v1735 = a3;
      v1520 = a4;
      v1736 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1501 = v1736 & 3;
      if (!v1501)
      {
        return 0;
      }

      v1522 = v1735;
      sub_298B1A0DC(v1520, v1735 & 0x1F);
LABEL_1375:
      v1733 = (v1522 >> 5) & 0x1FF;
      v1734 = v1520;
      goto LABEL_1395;
    case 265:
      v1737 = a3;
      v1524 = a4;
      v1738 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1501 = v1738 & 3;
      if (!v1501)
      {
        return 0;
      }

      v1526 = v1737;
      sub_298B1A0DC(v1524, v1737 & 0x1F);
LABEL_1378:
      v1733 = (v1526 >> 5) & 0x1FF;
      v1734 = v1524;
      goto LABEL_1395;
    case 266:
      v1739 = a3;
      v911 = a4;
      v1740 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1740 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, v1739 & 0x1F);
      if (((v1739 >> 5) & 0x80) != 0)
      {
        v50 = (v1739 >> 5) | 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        v50 = (v1739 >> 5);
      }

      goto LABEL_700;
    case 267:
      v1741 = a3;
      v911 = a4;
      v1742 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1742 & 3;
      if (!v46)
      {
        return 0;
      }

      v1512 = v1741;
      sub_298B1A0DC(v911, v1741 & 0x1F);
LABEL_1385:
      v50 = (v1512 >> 5);
      goto LABEL_700;
    case 268:
      v1494 = a3;
      v1495 = a4;
      v1743 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1497 = v1743 & 3;
      if (!v1497)
      {
        return 0;
      }

LABEL_1387:
      v1729 = (v1494 >> 5) & 0x1FF;
      v1730 = v1495;
      return sub_298B1A3B4(v1730, v1729) & v1497;
    case 269:
      v1498 = a3;
      v1499 = a4;
      v1744 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1501 = v1744 & 3;
      if (!v1501)
      {
        return 0;
      }

LABEL_1390:
      v1733 = (v1498 >> 5) & 0x1FF;
      v1734 = v1499;
      goto LABEL_1395;
    case 270:
      v1513 = a3;
      v1514 = a4;
      v1745 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1501 = v1745 & 3;
      if (!v1501)
      {
        return 0;
      }

LABEL_1392:
      v1733 = (v1513 >> 5) & 0x1FF;
      v1734 = v1514;
      goto LABEL_1395;
    case 271:
      v1516 = a3;
      v1517 = a4;
      v1746 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1501 = v1746 & 3;
      if (!v1501)
      {
        return 0;
      }

LABEL_1394:
      v1733 = (v1516 >> 5) & 0x1FF;
      v1734 = v1517;
LABEL_1395:
      sub_298B1A488(v1734, v1733);
      return v1501;
    case 272:
      v1747 = a3;
      v44 = a4;
      v1748 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1748 & 3;
      if (!v46)
      {
        return 0;
      }

      v50 = (v1747 >> 5);
      goto LABEL_43;
    case 273:
      v1749 = a3;
      v911 = a4;
      v1750 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1750 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, v1749 & 0x1F);
      sub_298B1A0DC(v911, (v1749 >> 5) & 0x1F);
      sub_298B1A0DC(v911, HIWORD(v1749) & 7);
      v50 = (v1749 >> 20) & 4 | (v1749 >> 19) & 3;
      goto LABEL_700;
    case 274:
      v1751 = a3;
      v911 = a4;
      v1752 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1752 & 3;
      if (!v46)
      {
        return 0;
      }

      v1753 = v1751;
      sub_298B1A0DC(v911, v1751 & 0x1F);
      sub_298B1A0DC(v911, (v1751 >> 5) & 0x1F);
      sub_298B1A0DC(v911, HIWORD(v1751) & 0x1F);
      goto LABEL_1416;
    case 275:
      v1754 = a3;
      v911 = a4;
      v1755 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1755 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, v1754 & 0x1F);
      sub_298B1A0DC(v911, (v1754 >> 5) & 0x1F);
      sub_298B1A0DC(v911, HIWORD(v1754) & 7);
      v50 = (v1754 >> 19) & 3;
      goto LABEL_700;
    case 276:
      v1756 = a3;
      v911 = a4;
      v1757 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1757 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, v1756 & 0x1F);
      sub_298B1A0DC(v911, (v1756 >> 5) & 0x1F);
      sub_298B1A0DC(v911, HIWORD(v1756) & 0xF);
      v50 = (v1756 >> 20) & 1;
      goto LABEL_700;
    case 277:
      v1758 = a3;
      v911 = a4;
      v1759 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1759 & 3;
      if (!v46)
      {
        return 0;
      }

      v1760 = v1758;
      sub_298B1A0DC(v911, v1758 & 0x1F);
      sub_298B1A0DC(v911, (v1758 >> 5) & 0x1F);
      sub_298B1A0DC(v911, HIWORD(v1758) & 7);
      v1761 = (v1758 >> 18) & 6;
      goto LABEL_1410;
    case 278:
      v1762 = a3;
      v911 = a4;
      v1763 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1763 & 3;
      if (!v46)
      {
        return 0;
      }

      v1760 = v1762;
      sub_298B1A0DC(v911, v1762 & 0x1F);
      sub_298B1A0DC(v911, (v1762 >> 5) & 0x1F);
      sub_298B1A0DC(v911, HIWORD(v1762) & 0xF);
      v1761 = (v1762 >> 19) & 2;
LABEL_1410:
      v50 = v1761 & 0xFFFFFFFE | (v1760 >> 11) & 1;
      goto LABEL_700;
    case 279:
      v1764 = a3;
      v911 = a4;
      v1765 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1765 & 3;
      if (!v46)
      {
        return 0;
      }

      v1753 = v1764;
      sub_298B1A0DC(v911, v1764 & 0x1F);
      sub_298B1A0DC(v911, (v1764 >> 5) & 0x1F);
      sub_298B1A0DC(v911, HIWORD(v1764) & 7);
      v1766 = (v1764 >> 19) & 3;
      goto LABEL_1415;
    case 280:
      v1767 = a3;
      v911 = a4;
      v1768 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1768 & 3;
      if (!v46)
      {
        return 0;
      }

      v1753 = v1767;
      sub_298B1A0DC(v911, v1767 & 0x1F);
      sub_298B1A0DC(v911, (v1767 >> 5) & 0x1F);
      sub_298B1A0DC(v911, HIWORD(v1767) & 0xF);
      v1766 = (v1767 >> 20) & 1;
LABEL_1415:
      sub_298B0A034(v911, 2, v1766);
LABEL_1416:
      v50 = (v1753 >> 10) & 3;
      goto LABEL_700;
    case 281:
      v1532 = a3;
      v44 = a4;
      v1769 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1769 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1532 >> 5) & 0x1F);
      goto LABEL_1425;
    case 282:
      v1770 = a3;
      v44 = a4;
      v1771 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1771 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1770 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1770) & 0x1F);
      v50 = (v1770 >> 21) & 6 | (v1770 >> 12) & 1;
      goto LABEL_43;
    case 283:
      v1772 = a3;
      v44 = a4;
      v1773 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1773 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1772 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1772) & 0x1F);
      v50 = (v1772 >> 23) & 1;
      goto LABEL_43;
    case 284:
      v1532 = a3;
      v44 = a4;
      v1774 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1774 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFCDBC[(v1532 >> 5) & 0x1F]);
LABEL_1425:
      v1534 = HIWORD(v1532) & 0x1F;
LABEL_1426:
      sub_298B1A0DC(v44, v1534);
      v50 = (v1532 >> 22) & 3;
      goto LABEL_43;
    case 285:
      v1775 = a3;
      v44 = a4;
      v1776 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1776 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1775 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1775) & 7);
      v1777 = (v1775 >> 18) & 6;
      goto LABEL_1431;
    case 286:
      v1775 = a3;
      v44 = a4;
      v1778 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1778 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1775 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1775) & 0xF);
      v1777 = (v1775 >> 19) & 2;
LABEL_1431:
      v50 = v1777 & 0xFFFFFFFE | (v1775 >> 11) & 1;
      goto LABEL_43;
    case 287:
      v1779 = a3;
      v911 = a4;
      v1780 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1780 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, v1779 & 0x1F);
      sub_298B1A0DC(v911, (v1779 >> 5) & 0x1F);
      v50 = (v1779 >> 10) & 1;
      goto LABEL_700;
    case 288:
      v1472 = a3;
      v1187 = a4;
      v1781 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1189 = v1781 & 3;
      if (!v1189)
      {
        return 0;
      }

      v1672 = (v1472 >> 10) & 7;
LABEL_1436:
      sub_298B0A034(v1187, 1, word_298DFB41A[v1672]);
LABEL_1437:
      sub_298B1A0DC(v1187, (v1472 >> 5) & 0x1F);
      goto LABEL_1438;
    case 289:
      v1782 = a3;
      v44 = a4;
      v1783 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1783 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1782 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1782) & 7);
      v50 = (v1782 >> 20) & 4 | (v1782 >> 19) & 3;
      goto LABEL_43;
    case 290:
      v1545 = a3;
      v44 = a4;
      v1784 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1784 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1545 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1545) & 7);
      goto LABEL_2018;
    case 291:
      v1785 = a3;
      v44 = a4;
      v1786 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1786 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1785 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1785) & 0xF);
      v50 = (v1785 >> 20) & 1;
      goto LABEL_43;
    case 292:
      v1787 = a3;
      v1788 = a4;
      v1789 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1790 = v1789 & 3;
      if (!v1790)
      {
        return 0;
      }

      sub_298B1A0DC(v1788, v1787 & 0x1F);
      return v1790;
    case 293:
      v1791 = a3;
      v1792 = a4;
      v1793 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v886 = v1793 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B1A0DC(v1792, v1791 & 0x1F);
      sub_298B1A0DC(v1792, (v1791 >> 5) & 0x1F);
      v887 = HIWORD(v1791) & 7;
      v888 = v1792;
      goto LABEL_682;
    case 294:
      v1794 = a3;
      v1795 = a4;
      v1796 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v886 = v1796 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B1A0DC(v1795, v1794 & 0x1F);
      sub_298B1A0DC(v1795, (v1794 >> 5) & 0x1F);
      v887 = HIWORD(v1794) & 0xF;
      v888 = v1795;
      v889 = 16;
      goto LABEL_706;
    case 295:
      v1797 = a3;
      v1798 = a4;
      v1799 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v886 = v1799 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B1A0DC(v1798, v1797 & 0x1F);
      sub_298B1A0DC(v1798, (v1797 >> 5) & 0x1F);
      v887 = HIWORD(v1797) & 0x1F;
      v888 = v1798;
      goto LABEL_1739;
    case 296:
      v1800 = a3;
      v1801 = a4;
      v1802 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v886 = v1802 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B1A0DC(v1801, v1800 & 0x1F);
      sub_298B1A0DC(v1801, (v1800 >> 5) & 0x1F);
      v887 = (v1800 >> 17) & 0x20 | HIWORD(v1800) & 0x1F;
      v888 = v1801;
      v889 = 64;
      goto LABEL_706;
    case 297:
      v1803 = a3;
      v44 = a4;
      v1804 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1804 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1803 >> 10) & 7]);
      sub_298B1A0DC(v44, v1803 & 0x1F);
      sub_298B1A0DC(v44, (v1803 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1803) & 0x1F);
      v50 = (v1803 >> 13) & 3;
      goto LABEL_43;
    case 298:
      v1805 = a3;
      v911 = a4;
      v1806 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1806 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, v1805 & 0x1F);
      sub_298B1A0DC(v911, (v1805 >> 5) & 0x1F);
      sub_298B1A0DC(v911, HIWORD(v1805) & 7);
      v50 = (v1805 >> 17) & 0xC | (v1805 >> 10) & 3;
      goto LABEL_700;
    case 299:
      v1807 = a3;
      v44 = a4;
      v1808 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1808 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1807 >> 10) & 7]);
      sub_298B1A0DC(v44, v1807 & 0x1F);
      sub_298B1A0DC(v44, (v1807 >> 5) & 0x1F);
      v50 = HIWORD(v1807) & 1;
      goto LABEL_43;
    case 300:
      v1809 = a3;
      v1187 = a4;
      v1810 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v1189 = v1810 & 3;
      if (!v1189)
      {
        return 0;
      }

      sub_298B0A034(v1187, 1, word_298DFB41A[(v1809 >> 10) & 7]);
      v1364 = (v1809 >> 5) & 0x1F;
      goto LABEL_1285;
    case 301:
      v1811 = a3;
      v911 = a4;
      v1812 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1812 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v911, v1811 & 0x1F);
      sub_298B1A0DC(v911, (v1811 >> 5) & 0x1F);
      v50 = HIWORD(v1811) & 7;
      goto LABEL_700;
    case 302:
      v1813 = a3;
      v44 = a4;
      v1814 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1814 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1813 >> 10) & 7]);
      sub_298B1A0DC(v44, v1813 & 0x1F);
      v50 = (v1813 >> 5) & 1;
      goto LABEL_43;
    case 303:
      v1472 = a3;
      v1187 = a4;
      v1815 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1189 = v1815 & 3;
      if (!v1189)
      {
        return 0;
      }

      sub_298B0A034(v1187, 1, word_298DFB41A[(v1472 >> 10) & 7]);
      sub_298B1A150(v1187, (v1472 >> 5) & 0x1F);
LABEL_1438:
      v1364 = HIWORD(v1472) & 0x1F;
LABEL_1285:
      v1594 = v1187;
      goto LABEL_1286;
    case 304:
      v1816 = result;
      v1817 = a3;
      v1818 = a4;
      sub_298B0A034(a4, 2, a3 & 0xF);
      sub_298B0A034(v1818, 1, word_298DFB41A[(v1817 >> 10) & 7]);
      v1189 = v1816 & 3;
      if (!v1189)
      {
        return 0;
      }

      sub_298B1A150(v1818, (v1817 >> 5) & 0x1F);
      v1364 = HIWORD(v1817) & 0x1F;
      v1594 = v1818;
LABEL_1286:
      sub_298B1A0DC(v1594, v1364);
      return v1189;
    case 305:
      v1819 = a3;
      v911 = a4;
      v1820 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1820 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v911, (v1819 >> 5) & 0x1F);
      if (((v1819 >> 13) & 0x100) != 0)
      {
        v50 = (v1819 >> 13) & 0x1F8 | (v1819 >> 10) & 7 | 0xFFFFFFFFFFFFFE00;
      }

      else
      {
        v50 = (v1819 >> 13) & 0x1F8 | (v1819 >> 10) & 7;
      }

      goto LABEL_700;
    case 306:
      v1821 = result;
      v1822 = a3;
      v1823 = a4;
      sub_298B0A034(a4, 2, a3 & 0xF);
      v1824 = v1822;
      v1825 = word_298DFB41A[(v1822 >> 10) & 7];
      v1826 = v1823;
      sub_298B0A034(v1823, 1, v1825);
      v46 = v1821 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v1823, (v1824 >> 5) & 0x1F);
      if ((v1824 & 0x200000) != 0)
      {
        v50 = HIWORD(v1824) & 0x3F | 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v50 = HIWORD(v1824) & 0x3F;
      }

      goto LABEL_1492;
    case 307:
      v1827 = a3;
      v44 = a4;
      v1828 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1828 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v44, (v1827 >> 5) & 0x1F);
      v47 = (v1827 >> 13) & 0x1F8 | (v1827 >> 10) & 7;
      v48 = v47 | 0xFFFFFFFFFFFFFE00;
      v49 = ((v1827 >> 13) & 0x100) == 0;
      goto LABEL_40;
    case 308:
      v816 = a3;
      v819 = a4;
      v1829 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1829 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v819, 1, word_298DFB41A[(v816 >> 10) & 7]);
      sub_298B1A0DC(v819, (v816 >> 5) & 0x1F);
      goto LABEL_631;
    case 309:
      v1830 = a3;
      v44 = a4;
      v1831 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1831 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1830 >> 10) & 7]);
      sub_298B1A0DC(v44, (v1830 >> 5) & 0x1F);
      v50 = HIWORD(v1830) & 0x1F;
      goto LABEL_43;
    case 310:
      v1832 = a3;
      v44 = a4;
      v1833 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1833 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1832 >> 10) & 7]);
      sub_298B1A150(v44, (v1832 >> 5) & 0x1F);
      v50 = HIWORD(v1832) & 0x3F;
      goto LABEL_43;
    case 311:
      v1834 = result;
      v1835 = a3;
      v1836 = a4;
      sub_298B0A034(a4, 2, a3 & 0xF);
      sub_298B0A034(v1836, 1, word_298DFB41A[(v1835 >> 10) & 7]);
      if ((v1834 & 3) == 0)
      {
        return 0;
      }

      sub_298B1A150(v1836, (v1835 >> 5) & 0x1F);
      v1837 = HIWORD(v1835) & 0x1F;
      if (v1837 == 31)
      {
        v1838 = 0;
      }

      else
      {
        sub_298B0A034(v1836, 1, word_298DFBDB2[v1837]);
        v1838 = 3;
      }

      return v1838 & v1834 & 3u;
    case 312:
      v1839 = result;
      v1840 = a3;
      v1841 = a4;
      sub_298B0A034(a4, 2, a3 & 0xF);
      v1842 = v1840;
      v1843 = word_298DFB41A[(v1840 >> 10) & 7];
      v1826 = v1841;
      sub_298B0A034(v1841, 1, v1843);
      v46 = v1839 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1841, (v1842 >> 5) & 0x1F);
      v50 = HIWORD(v1842) & 0x1F;
LABEL_1492:
      v51 = v1826;
      goto LABEL_44;
    case 313:
      v1844 = a3;
      v1845 = a4;
      v1846 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      goto LABEL_1503;
    case 314:
      v1847 = a3;
      v44 = a4;
      v1848 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      goto LABEL_1510;
    case 315:
      v816 = a3;
      v819 = a4;
      v1849 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1849 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_1084:
      v1183 = (v816 >> 10) & 7;
      v1184 = word_298DFB41A;
LABEL_1085:
      sub_298B0A034(v819, 1, v1184[v1183]);
      sub_298B1A150(v819, (v816 >> 5) & 0x1F);
      goto LABEL_631;
    case 316:
      v1844 = a3;
      v1850 = a3 & 0x1F;
      v1851 = word_298DFCDBC;
      goto LABEL_1502;
    case 317:
      v1847 = a3;
      v1852 = a3 & 0x1F;
      v1853 = word_298DFCDBC;
      goto LABEL_1509;
    case 318:
      v1844 = a3;
      v1850 = a3 & 0x1F;
      v1851 = &unk_298DFD6C0;
      goto LABEL_1502;
    case 319:
      v1847 = a3;
      v1852 = a3 & 0x1F;
      v1853 = &unk_298DFD6C0;
      goto LABEL_1509;
    case 320:
      v1844 = a3;
      v1850 = a3 & 0x1F;
      v1851 = word_298DFE670;
LABEL_1502:
      v1845 = a4;
      v1846 = result;
      sub_298B0A034(a4, 1, v1851[v1850]);
LABEL_1503:
      v1854 = v1846 & 3;
      if (!v1854)
      {
        return 0;
      }

      sub_298B0A034(v1845, 1, word_298DFB41A[(v1844 >> 10) & 7]);
      sub_298B1A150(v1845, (v1844 >> 5) & 0x1F);
      v1855 = HIWORD(v1844) & 0x1F;
      if (v1855 == 31)
      {
        v1856 = 0;
      }

      else
      {
        sub_298B0A034(v1845, 1, word_298DFBDB2[v1855]);
        v1856 = 3;
      }

      return v1856 & v1854;
    case 321:
      v1847 = a3;
      v1852 = a3 & 0x1F;
      v1853 = word_298DFE670;
LABEL_1509:
      v44 = a4;
      v1848 = result;
      sub_298B0A034(a4, 1, v1853[v1852]);
LABEL_1510:
      v46 = v1848 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1847 >> 10) & 7]);
      sub_298B1A150(v44, (v1847 >> 5) & 0x1F);
      v47 = HIWORD(v1847) & 0xF;
      v48 = v47 | 0xFFFFFFFFFFFFFFF0;
      v49 = (v1847 & 0x80000) == 0;
      goto LABEL_40;
    case 322:
      return sub_298B1A5D0(a4, a3) & result;
    case 323:
      v351 = a3;
      v1857 = WORD1(a3) & 0x1F;
      v353 = a4;
      v1858 = sub_298B1DC44(a4, 0x20u, v1857) & result;
      if (!v1858)
      {
        return 0;
      }

      v1859 = sub_298B1DC44(v353, 0x20u, v1857) & v1858;
      if (!v1859)
      {
        return 0;
      }

      v356 = sub_298B1DC44(v353, 0x20u, v351 & 0x1F) & v1859;
      if (!v356)
      {
        return 0;
      }

      goto LABEL_275;
    case 324:
      v852 = a3;
      v1860 = WORD1(a3) & 0x1F;
      v577 = a4;
      v1861 = result;
      sub_298B1A55C(a4, v1860);
      v404 = v1861 & 3;
      if (!v404)
      {
        return 0;
      }

      sub_298B1A55C(v577, v1860);
      sub_298B1A55C(v577, v852 & 0x1F);
      goto LABEL_656;
    case 325:
      return sub_298B1A8C8(a4, a3) & result;
    case 326:
      return sub_298B1ABCC(a4, a3) & result;
    case 327:
      return sub_298B1ADBC(a4, a3) & result;
    case 328:
      v351 = a3;
      v352 = WORD1(a3) & 0x1F;
      v353 = a4;
      v354 = sub_298B1DC44(a4, 0x3Bu, v352) & result;
      if (v354)
      {
        v355 = sub_298B1DC44(v353, 0x3Bu, v352) & v354;
        if (v355)
        {
          v356 = sub_298B1DC44(v353, 0x3Bu, v351 & 0x1F) & v355;
          if (v356)
          {
            goto LABEL_275;
          }
        }
      }

      return 0;
    case 329:
      v575 = a3;
      v576 = word_298DFBCEE[WORD1(a3) & 0x1F];
      v577 = a4;
      v578 = result;
      sub_298B0A034(a4, 1, v576);
      v404 = v578 & 3;
      if (!v404)
      {
        return 0;
      }

      sub_298B0A034(v577, 1, v576);
      sub_298B0A034(v577, 1, word_298DFBCEE[v575 & 0x1F]);
      v408 = (v575 >> 5) & 0x1F;
      goto LABEL_472;
    case 330:
      v22 = word_298DFC9B6[a3 & 0x1F];
      v23 = *(a4 + 24);
      if (v23 >= *(a4 + 28))
      {
        v660 = result;
        v661 = a3;
        v662 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v23 + 1, 16);
        LOBYTE(result) = v660;
        LODWORD(a3) = v661;
        a4 = v662;
        LODWORD(v23) = *(v662 + 24);
      }

      v24 = (*(a4 + 16) + 16 * v23);
      *v24 = 1;
      v24[1] = v22;
      v25 = (*(a4 + 24) + 1);
      *(a4 + 24) = v25;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v19 = word_298DFBD50[(a3 >> 5) & 0x1F];
      v26 = *(a4 + 28);
      goto LABEL_16;
    case 331:
      v302 = a3;
      v303 = a3 & 0x1F;
      v304 = &unk_298DFC74A;
      goto LABEL_242;
    case 332:
      v1867 = a3;
      v1868 = a3 & 0x1F;
      v1869 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1971;
    case 333:
      v302 = a3;
      v303 = a3 & 0x1F;
      v304 = &unk_298DFC052;
LABEL_242:
      v305 = a4;
      v306 = result;
      sub_298B0A034(a4, 1, v304[v303]);
      result = v306 & 3;
      if ((v306 & 3) != 0)
      {
        v307 = word_298DFBD50[(v302 >> 5) & 0x1F];
        v308 = v305;
        v309 = v305[6];
        if (v309 >= v305[7])
        {
          sub_298B90A44((v305 + 4), v305 + 8, v309 + 1, 16);
          result = v306 & 3;
          v308 = v305;
          LODWORD(v309) = v305[6];
        }

        v310 = (*(v308 + 2) + 16 * v309);
        *v310 = 1;
        v310[1] = v307;
        ++v308[6];
      }

      return result;
    case 334:
      v1867 = a3;
      v1868 = a3 & 0x1F;
      v1869 = word_298DFE5F0;
      goto LABEL_1971;
    case 335:
      v1867 = a3;
      v1868 = a3 & 0x1F;
      v1869 = word_298DFD63C;
      goto LABEL_1971;
    case 336:
      v351 = a3;
      v353 = a4;
      v1870 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v356 = v1870 & 3;
      if (!v356)
      {
        return 0;
      }

      goto LABEL_275;
    case 337:
      v1867 = a3;
      v1868 = a3 & 0x1F;
      v1869 = word_298DFCD40;
      goto LABEL_1971;
    case 338:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1874 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1874 & 3;
      if (!v364)
      {
        return 0;
      }

      v1875 = v1871 & 0x1F;
      v1876 = word_298DFC9B6;
      goto LABEL_1544;
    case 339:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1877 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1877 & 3;
      if (!v364)
      {
        return 0;
      }

      v1875 = v1871 & 0x1F;
      v1876 = &unk_298DFC74A;
      goto LABEL_1544;
    case 340:
      v815 = result;
      v816 = a3;
      v817 = word_298DFBD50[(a3 >> 5) & 0x1F];
      v818 = *(a4 + 24);
      v819 = a4;
      if (v818 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v818 + 1, 16);
        LODWORD(v818) = *(v819 + 24);
      }

      v820 = (*(v819 + 16) + 16 * v818);
      *v820 = 1;
      v820[1] = v817;
      ++*(v819 + 24);
      v46 = v815 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v819, 1, a0123456789Abcd_0[v816 & 0x1F]);
      v821 = *(v819 + 24);
      if (v821 >= *(v819 + 28))
      {
        sub_298B90A44(v819 + 16, (v819 + 32), v821 + 1, 16);
        LODWORD(v821) = *(v819 + 24);
      }

      v822 = (*(v819 + 16) + 16 * v821);
      *v822 = 1;
      v822[1] = v817;
      ++*(v819 + 24);
LABEL_631:
      v823 = HIWORD(v816) & 0x1F;
      v824 = word_298DFBCEE;
      goto LABEL_632;
    case 341:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1878 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1878 & 3;
      if (!v364)
      {
        return 0;
      }

      v1875 = v1871 & 0x1F;
      v1876 = &unk_298DFC052;
      goto LABEL_1544;
    case 342:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1879 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1879 & 3;
      if (!v364)
      {
        return 0;
      }

      v1875 = v1871 & 0x1F;
      v1876 = word_298DFE5F0;
      goto LABEL_1544;
    case 343:
      v779 = result;
      v780 = a3;
      v781 = word_298DFBD50[(a3 >> 5) & 0x1F];
      v782 = *(a4 + 24);
      v783 = a4;
      if (v782 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v782 + 1, 16);
        LODWORD(v782) = *(v783 + 24);
      }

      v784 = (*(v783 + 16) + 16 * v782);
      *v784 = 1;
      v784[1] = v781;
      ++*(v783 + 24);
      v46 = v779 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v783, 1, word_298DFD63C[v780 & 0x1F]);
      v785 = *(v783 + 24);
      if (v785 >= *(v783 + 28))
      {
        sub_298B90A44(v783 + 16, (v783 + 32), v785 + 1, 16);
        LODWORD(v785) = *(v783 + 24);
      }

      v51 = v783;
      v786 = (*(v783 + 16) + 16 * v785);
      *v786 = 1;
      v786[1] = v781;
      ++*(v783 + 24);
      v50 = word_298DFBCEE[HIWORD(v780) & 0x1F];
      goto LABEL_604;
    case 344:
      v1880 = a3;
      v1881 = (a3 >> 5) & 0x1F;
      v1882 = a4;
      v1883 = result;
      sub_298B1A150(a4, v1881);
      v364 = v1883 & 3;
      if (!v364)
      {
        return 0;
      }

      v1884 = v1880;
      sub_298B1A1C4(v1882, v1880 & 0x1F);
      goto LABEL_1667;
    case 345:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1885 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1885 & 3;
      if (!v364)
      {
        return 0;
      }

      v1875 = v1871 & 0x1F;
      v1876 = word_298DFCD40;
LABEL_1544:
      v1886 = v1876[v1875];
      v1887 = v1873;
      v1888 = 1;
      goto LABEL_1637;
    case 346:
      v351 = a3;
      v353 = a4;
      v1889 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      goto LABEL_1551;
    case 347:
      v828 = a3;
      v829 = a3 & 0x1F;
      v830 = word_298DFD63C;
      goto LABEL_636;
    case 348:
      v975 = result;
      v828 = a3;
      v976 = word_298DFC574[a3 & 0x1F];
      v977 = *(a4 + 24);
      v831 = a4;
      if (v977 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v977 + 1, 16);
        LODWORD(v977) = *(v831 + 24);
      }

      v978 = (*(v831 + 16) + 16 * v977);
      *v978 = 1;
      v978[1] = v976;
      v835 = (*(v831 + 24) + 1);
      *(v831 + 24) = v835;
      v833 = v975 & 3;
      if (!v833)
      {
        return 0;
      }

      v834 = (v828 >> 28) & 4 | (v828 >> 11) & 3;
      goto LABEL_639;
    case 349:
      v351 = a3;
      v1890 = a3 & 0x1F;
      v1891 = word_298DFD63C;
      goto LABEL_1555;
    case 350:
      v351 = a3;
      v353 = a4;
      v1892 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      goto LABEL_1561;
    case 351:
      v351 = a3;
      v353 = a4;
      v1893 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      goto LABEL_1566;
    case 352:
      v351 = a3;
      v1894 = a3 & 0x1F;
      v1895 = word_298DFD63C;
      goto LABEL_1560;
    case 353:
      v828 = a3;
      v831 = a4;
      v1036 = result;
      sub_298B0A034(a4, 1, word_298DFD63C[a3 & 0x1F]);
      v833 = v1036 & 3;
      if (!v833)
      {
        return 0;
      }

      v834 = (v828 >> 30) & 1;
      goto LABEL_638;
    case 354:
      v828 = a3;
      v829 = a3 & 0x1F;
      v830 = word_298DFCD40;
LABEL_636:
      v831 = a4;
      v832 = result;
      sub_298B0A034(a4, 1, v830[v829]);
      v833 = v832 & 3;
      if (!v833)
      {
        return 0;
      }

      v834 = (v828 >> 27) & 8 | (v828 >> 10) & 7;
LABEL_638:
      v835 = *(v831 + 24);
LABEL_639:
      if (v835 >= *(v831 + 28))
      {
        sub_298B90A44(v831 + 16, (v831 + 32), v835 + 1, 16);
        LODWORD(v835) = *(v831 + 24);
      }

      v836 = (*(v831 + 16) + 16 * v835);
      *v836 = 2;
      v836[1] = v834;
      v837 = *(v831 + 28);
      v838 = (*(v831 + 24) + 1);
      *(v831 + 24) = v838;
      v839 = word_298DFBD50[(v828 >> 5) & 0x1F];
      if (v838 >= v837)
      {
        sub_298B90A44(v831 + 16, (v831 + 32), v838 + 1, 16);
        LODWORD(v838) = *(v831 + 24);
      }

      v840 = (*(v831 + 16) + 16 * v838);
      v841 = 1;
      goto LABEL_644;
    case 355:
      v351 = a3;
      v353 = a4;
      v1889 = result;
      sub_298B0A034(a4, 1, word_298DFE5F0[a3 & 0x1F]);
LABEL_1551:
      v356 = v1889 & 3;
      if (!v356)
      {
        return 0;
      }

      v1896 = (v351 >> 27) & 8 | (v351 >> 10) & 7;
      goto LABEL_1563;
    case 356:
      v351 = a3;
      v1890 = a3 & 0x1F;
      v1891 = word_298DFCD40;
      goto LABEL_1555;
    case 357:
      v351 = a3;
      v1890 = a3 & 0x1F;
      v1891 = word_298DFE5F0;
LABEL_1555:
      v353 = a4;
      v1897 = result;
      sub_298B0A034(a4, 1, v1891[v1890]);
      v356 = v1897 & 3;
      if (!v356)
      {
        return 0;
      }

      v1896 = (v351 >> 28) & 4 | (v351 >> 11) & 3;
      goto LABEL_1563;
    case 358:
      v351 = a3;
      v1894 = a3 & 0x1F;
      v1895 = word_298DFCD40;
      goto LABEL_1560;
    case 359:
      v351 = a3;
      v1898 = a3 & 0x1F;
      v1899 = word_298DFCD40;
      goto LABEL_1565;
    case 360:
      v351 = a3;
      v1894 = a3 & 0x1F;
      v1895 = word_298DFE5F0;
LABEL_1560:
      v353 = a4;
      v1892 = result;
      sub_298B0A034(a4, 1, v1895[v1894]);
LABEL_1561:
      v356 = v1892 & 3;
      if (!v356)
      {
        return 0;
      }

      v1896 = (v351 >> 29) & 2 | (v351 >> 12) & 1;
      goto LABEL_1563;
    case 361:
      v351 = a3;
      v1898 = a3 & 0x1F;
      v1899 = word_298DFE5F0;
LABEL_1565:
      v353 = a4;
      v1893 = result;
      sub_298B0A034(a4, 1, v1899[v1898]);
LABEL_1566:
      v356 = v1893 & 3;
      if (!v356)
      {
        return 0;
      }

      v1896 = (v351 >> 30) & 1;
LABEL_1563:
      sub_298B0A034(v353, 2, v1896);
LABEL_275:
      v357 = (v351 >> 5) & 0x1F;
      v358 = v353;
      goto LABEL_351;
    case 362:
      v1900 = a3;
      v1901 = a4;
      v1902 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v356 = v1902 & 3;
      if (!v356)
      {
        return 0;
      }

      v1903 = v1900;
      sub_298B1A1C4(v1901, v1900 & 0x1F);
      v1904 = (v1900 >> 27) & 8 | (v1900 >> 10) & 7;
      goto LABEL_1578;
    case 363:
      v852 = a3;
      v1905 = a3 & 0x1F;
      v1906 = word_298DFD63C;
      goto LABEL_1586;
    case 364:
      v1907 = a3;
      v1901 = a4;
      v1908 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v356 = v1908 & 3;
      if (!v356)
      {
        return 0;
      }

      v1903 = v1907;
      sub_298B1A1C4(v1901, v1907 & 0x1F);
      v1904 = (v1907 >> 28) & 4 | (v1907 >> 11) & 3;
      goto LABEL_1578;
    case 365:
      v852 = a3;
      v1909 = a3 & 0x1F;
      v1910 = word_298DFD63C;
      goto LABEL_1590;
    case 366:
      v1911 = a3;
      v1901 = a4;
      v1912 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v356 = v1912 & 3;
      if (!v356)
      {
        return 0;
      }

      v1903 = v1911;
      sub_298B1A1C4(v1901, v1911 & 0x1F);
      v1904 = (v1911 >> 29) & 2 | (v1911 >> 12) & 1;
      goto LABEL_1578;
    case 367:
      v1913 = a3;
      v1901 = a4;
      v1914 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v356 = v1914 & 3;
      if (!v356)
      {
        return 0;
      }

      v1903 = v1913;
      sub_298B1A1C4(v1901, v1913 & 0x1F);
      v1904 = (v1913 >> 30) & 1;
LABEL_1578:
      sub_298B0A034(v1901, 2, v1904);
      v357 = (v1903 >> 5) & 0x1F;
      v358 = v1901;
      goto LABEL_351;
    case 368:
      v732 = a3;
      v733 = word_298DFD63C[a3 & 0x1F];
      v734 = a4;
      v735 = result;
      sub_298B0A034(a4, 1, v733);
      v736 = v735 & 3;
      if (!v736)
      {
        return 0;
      }

      sub_298B0A034(v734, 1, v733);
      v737 = (v732 >> 29) & 2 | (v732 >> 12) & 1;
      goto LABEL_569;
    case 369:
      v852 = a3;
      v853 = word_298DFD63C[a3 & 0x1F];
      v577 = a4;
      v854 = result;
      sub_298B0A034(a4, 1, v853);
      v404 = v854 & 3;
      if (v404)
      {
        goto LABEL_654;
      }

      return 0;
    case 370:
      v732 = a3;
      v755 = word_298DFCD40[a3 & 0x1F];
      v734 = a4;
      v756 = result;
      sub_298B0A034(a4, 1, v755);
      v736 = v756 & 3;
      if (!v736)
      {
        return 0;
      }

      sub_298B0A034(v734, 1, v755);
      v737 = (v732 >> 27) & 8 | (v732 >> 10) & 7;
LABEL_569:
      v738 = *(v734 + 24);
      if (v738 >= *(v734 + 28))
      {
        sub_298B90A44(v734 + 16, (v734 + 32), v738 + 1, 16);
        LODWORD(v738) = *(v734 + 24);
      }

      v739 = (*(v734 + 16) + 16 * v738);
      *v739 = 2;
      v739[1] = v737;
      v740 = *(v734 + 28);
      v741 = (*(v734 + 24) + 1);
      *(v734 + 24) = v741;
      v742 = word_298DFBD50[(v732 >> 5) & 0x1F];
      if (v741 >= v740)
      {
        sub_298B90A44(v734 + 16, (v734 + 32), v741 + 1, 16);
        LODWORD(v741) = *(v734 + 24);
      }

      v743 = (*(v734 + 16) + 16 * v741);
      *v743 = 1;
      v743[1] = v742;
      ++*(v734 + 24);
      return v736;
    case 371:
      v852 = a3;
      v1905 = a3 & 0x1F;
      v1906 = word_298DFE5F0;
LABEL_1586:
      v1922 = v1906[v1905];
      v577 = a4;
      v1923 = result;
      sub_298B0A034(a4, 1, v1922);
      v404 = v1923 & 3;
      if (!v404)
      {
        return 0;
      }

      sub_298B0A034(v577, 1, v1922);
      v855 = (v852 >> 27) & 8 | (v852 >> 10) & 7;
      goto LABEL_655;
    case 372:
      v852 = a3;
      v1909 = a3 & 0x1F;
      v1910 = word_298DFCD40;
      goto LABEL_1590;
    case 373:
      v852 = a3;
      v1909 = a3 & 0x1F;
      v1910 = word_298DFE5F0;
LABEL_1590:
      v1924 = v1910[v1909];
      v577 = a4;
      v1925 = result;
      sub_298B0A034(a4, 1, v1924);
      v404 = v1925 & 3;
      if (!v404)
      {
        return 0;
      }

      sub_298B0A034(v577, 1, v1924);
      v855 = (v852 >> 28) & 4 | (v852 >> 11) & 3;
      goto LABEL_655;
    case 374:
      v852 = a3;
      v1926 = a3 & 0x1F;
      v1927 = word_298DFCD40;
      goto LABEL_1595;
    case 375:
      v852 = a3;
      v1928 = a3 & 0x1F;
      v1929 = word_298DFCD40;
      goto LABEL_1598;
    case 376:
      v852 = a3;
      v1926 = a3 & 0x1F;
      v1927 = word_298DFE5F0;
LABEL_1595:
      v1930 = v1927[v1926];
      v577 = a4;
      v1931 = result;
      sub_298B0A034(a4, 1, v1930);
      v404 = v1931 & 3;
      if (!v404)
      {
        return 0;
      }

      sub_298B0A034(v577, 1, v1930);
      v855 = (v852 >> 29) & 2 | (v852 >> 12) & 1;
      goto LABEL_655;
    case 377:
      v852 = a3;
      v1928 = a3 & 0x1F;
      v1929 = word_298DFE5F0;
LABEL_1598:
      v853 = v1929[v1928];
      v577 = a4;
      v1932 = result;
      sub_298B0A034(a4, 1, v853);
      v404 = v1932 & 3;
      if (!v404)
      {
        return 0;
      }

LABEL_654:
      sub_298B0A034(v577, 1, v853);
      v855 = (v852 >> 30) & 1;
LABEL_655:
      sub_298B0A034(v577, 2, v855);
LABEL_656:
      v408 = (v852 >> 5) & 0x1F;
LABEL_472:
      v407 = v577;
      goto LABEL_319;
    case 378:
      v1933 = a3;
      v1881 = (a3 >> 5) & 0x1F;
      v1882 = a4;
      v1934 = result;
      sub_298B1A150(a4, v1881);
      v364 = v1934 & 3;
      if (!v364)
      {
        return 0;
      }

      v1884 = v1933;
      goto LABEL_1640;
    case 379:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1935 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1935 & 3;
      if (!v364)
      {
        return 0;
      }

      v1936 = v1871 & 0x1F;
      v1937 = word_298DFCD40;
      goto LABEL_1608;
    case 380:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1938 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1938 & 3;
      if (!v364)
      {
        return 0;
      }

      v1936 = v1871 & 0x1F;
      v1937 = word_298DFD63C;
      goto LABEL_1608;
    case 381:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1939 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1939 & 3;
      if (!v364)
      {
        return 0;
      }

      v1936 = v1871 & 0x1F;
      v1937 = word_298DFE5F0;
LABEL_1608:
      sub_298B0A034(v1873, 1, v1937[v1936]);
      v1886 = (v1871 >> 27) & 8 | (v1871 >> 10) & 7;
      goto LABEL_1636;
    case 382:
      v1940 = a3;
      v1881 = (a3 >> 5) & 0x1F;
      v1882 = a4;
      v1941 = result;
      sub_298B1A150(a4, v1881);
      v364 = v1941 & 3;
      if (!v364)
      {
        return 0;
      }

      v1884 = v1940;
      goto LABEL_1650;
    case 383:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1942 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1942 & 3;
      if (!v364)
      {
        return 0;
      }

      v1943 = v1871 & 0x1F;
      v1944 = word_298DFCD40;
      goto LABEL_1617;
    case 384:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1945 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1945 & 3;
      if (!v364)
      {
        return 0;
      }

      v1943 = v1871 & 0x1F;
      v1944 = word_298DFD63C;
      goto LABEL_1617;
    case 385:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1946 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1946 & 3;
      if (!v364)
      {
        return 0;
      }

      v1943 = v1871 & 0x1F;
      v1944 = word_298DFE5F0;
LABEL_1617:
      sub_298B0A034(v1873, 1, v1944[v1943]);
      v1886 = (v1871 >> 28) & 4 | (v1871 >> 11) & 3;
      goto LABEL_1636;
    case 386:
      v1947 = a3;
      v1881 = (a3 >> 5) & 0x1F;
      v1882 = a4;
      v1948 = result;
      sub_298B1A150(a4, v1881);
      v364 = v1948 & 3;
      if (!v364)
      {
        return 0;
      }

      v1884 = v1947;
      goto LABEL_1660;
    case 387:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1949 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1949 & 3;
      if (!v364)
      {
        return 0;
      }

      v1950 = v1871 & 0x1F;
      v1951 = word_298DFCD40;
      goto LABEL_1630;
    case 388:
      v1952 = a3;
      v1881 = (a3 >> 5) & 0x1F;
      v1882 = a4;
      v1953 = result;
      sub_298B1A150(a4, v1881);
      v364 = v1953 & 3;
      if (!v364)
      {
        return 0;
      }

      v1884 = v1952;
      goto LABEL_1665;
    case 389:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1954 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1954 & 3;
      if (!v364)
      {
        return 0;
      }

      v1955 = v1871 & 0x1F;
      v1956 = word_298DFCD40;
      goto LABEL_1635;
    case 390:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1957 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1957 & 3;
      if (!v364)
      {
        return 0;
      }

      v1950 = v1871 & 0x1F;
      v1951 = word_298DFD63C;
      goto LABEL_1630;
    case 391:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1958 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1958 & 3;
      if (!v364)
      {
        return 0;
      }

      v1950 = v1871 & 0x1F;
      v1951 = word_298DFE5F0;
LABEL_1630:
      sub_298B0A034(v1873, 1, v1951[v1950]);
      v1886 = (v1871 >> 29) & 2 | (v1871 >> 12) & 1;
      goto LABEL_1636;
    case 392:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1959 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1959 & 3;
      if (!v364)
      {
        return 0;
      }

      v1955 = v1871 & 0x1F;
      v1956 = word_298DFD63C;
      goto LABEL_1635;
    case 393:
      v1871 = a3;
      v1872 = (a3 >> 5) & 0x1F;
      v1873 = a4;
      v1960 = result;
      sub_298B1A150(a4, v1872);
      v364 = v1960 & 3;
      if (!v364)
      {
        return 0;
      }

      v1955 = v1871 & 0x1F;
      v1956 = word_298DFE5F0;
LABEL_1635:
      sub_298B0A034(v1873, 1, v1956[v1955]);
      v1886 = (v1871 >> 30) & 1;
LABEL_1636:
      v1887 = v1873;
      v1888 = 2;
LABEL_1637:
      sub_298B0A034(v1887, v1888, v1886);
      sub_298B1A150(v1873, v1872);
      v367 = word_298DFBCEE[HIWORD(v1871) & 0x1F];
      v368 = v1873;
      goto LABEL_281;
    case 394:
      v1933 = a3;
      v1881 = (a3 >> 5) & 0x1F;
      v1882 = a4;
      v1961 = result;
      sub_298B1A150(a4, v1881);
      v364 = v1961 & 3;
      if (!v364)
      {
        return 0;
      }

      v1884 = v1933;
      sub_298B1A1C4(v1882, v1933 & 0x1F);
LABEL_1640:
      sub_298B1A1C4(v1882, v1933 & 0x1F);
      v1962 = (v1884 >> 27) & 8 | (v1884 >> 10) & 7;
      goto LABEL_1666;
    case 395:
      v1963 = a3;
      v1964 = (a3 >> 5) & 0x1F;
      v1965 = a4;
      v1966 = result;
      sub_298B1A150(a4, v1964);
      v275 = v1966 & 3;
      if (!v275)
      {
        return 0;
      }

      v1967 = v1963;
      v1968 = v1963 & 0x1F;
      v1969 = word_298DFCD40;
      goto LABEL_1647;
    case 396:
      v1970 = a3;
      v1964 = (a3 >> 5) & 0x1F;
      v1965 = a4;
      v1971 = result;
      sub_298B1A150(a4, v1964);
      v275 = v1971 & 3;
      if (!v275)
      {
        return 0;
      }

      v1967 = v1970;
      v1968 = v1970 & 0x1F;
      v1969 = word_298DFD63C;
      goto LABEL_1647;
    case 397:
      v1972 = a3;
      v1964 = (a3 >> 5) & 0x1F;
      v1965 = a4;
      v1973 = result;
      sub_298B1A150(a4, v1964);
      v275 = v1973 & 3;
      if (!v275)
      {
        return 0;
      }

      v1967 = v1972;
      v1968 = v1972 & 0x1F;
      v1969 = word_298DFE5F0;
LABEL_1647:
      v1974 = v1969[v1968];
      sub_298B0A034(v1965, 1, v1974);
      sub_298B0A034(v1965, 1, v1974);
      v1975 = (v1967 >> 27) & 8 | (v1967 >> 10) & 7;
      goto LABEL_1681;
    case 398:
      v1940 = a3;
      v1881 = (a3 >> 5) & 0x1F;
      v1882 = a4;
      v1976 = result;
      sub_298B1A150(a4, v1881);
      v364 = v1976 & 3;
      if (!v364)
      {
        return 0;
      }

      v1884 = v1940;
      sub_298B1A1C4(v1882, v1940 & 0x1F);
LABEL_1650:
      sub_298B1A1C4(v1882, v1940 & 0x1F);
      v1962 = (v1884 >> 28) & 4 | (v1884 >> 11) & 3;
      goto LABEL_1666;
    case 399:
      v1977 = a3;
      v1964 = (a3 >> 5) & 0x1F;
      v1965 = a4;
      v1978 = result;
      sub_298B1A150(a4, v1964);
      v275 = v1978 & 3;
      if (!v275)
      {
        return 0;
      }

      v1967 = v1977;
      v1979 = v1977 & 0x1F;
      v1980 = word_298DFCD40;
      goto LABEL_1657;
    case 400:
      v1981 = a3;
      v1964 = (a3 >> 5) & 0x1F;
      v1965 = a4;
      v1982 = result;
      sub_298B1A150(a4, v1964);
      v275 = v1982 & 3;
      if (!v275)
      {
        return 0;
      }

      v1967 = v1981;
      v1979 = v1981 & 0x1F;
      v1980 = word_298DFD63C;
      goto LABEL_1657;
    case 401:
      v1983 = a3;
      v1964 = (a3 >> 5) & 0x1F;
      v1965 = a4;
      v1984 = result;
      sub_298B1A150(a4, v1964);
      v275 = v1984 & 3;
      if (!v275)
      {
        return 0;
      }

      v1967 = v1983;
      v1979 = v1983 & 0x1F;
      v1980 = word_298DFE5F0;
LABEL_1657:
      v1985 = v1980[v1979];
      sub_298B0A034(v1965, 1, v1985);
      sub_298B0A034(v1965, 1, v1985);
      v1975 = (v1967 >> 28) & 4 | (v1967 >> 11) & 3;
      goto LABEL_1681;
    case 402:
      v1947 = a3;
      v1881 = (a3 >> 5) & 0x1F;
      v1882 = a4;
      v1986 = result;
      sub_298B1A150(a4, v1881);
      v364 = v1986 & 3;
      if (!v364)
      {
        return 0;
      }

      v1884 = v1947;
      sub_298B1A1C4(v1882, v1947 & 0x1F);
LABEL_1660:
      sub_298B1A1C4(v1882, v1947 & 0x1F);
      v1962 = (v1884 >> 29) & 2 | (v1884 >> 12) & 1;
      goto LABEL_1666;
    case 403:
      v1987 = a3;
      v1964 = (a3 >> 5) & 0x1F;
      v1965 = a4;
      v1988 = result;
      sub_298B1A150(a4, v1964);
      v275 = v1988 & 3;
      if (!v275)
      {
        return 0;
      }

      v1967 = v1987;
      v1989 = v1987 & 0x1F;
      v1990 = word_298DFCD40;
      goto LABEL_1675;
    case 404:
      v1952 = a3;
      v1881 = (a3 >> 5) & 0x1F;
      v1882 = a4;
      v1991 = result;
      sub_298B1A150(a4, v1881);
      v364 = v1991 & 3;
      if (!v364)
      {
        return 0;
      }

      v1884 = v1952;
      sub_298B1A1C4(v1882, v1952 & 0x1F);
LABEL_1665:
      sub_298B1A1C4(v1882, v1952 & 0x1F);
      v1962 = (v1884 >> 30) & 1;
LABEL_1666:
      sub_298B0A034(v1882, 2, v1962);
LABEL_1667:
      sub_298B1A150(v1882, v1881);
      v367 = word_298DFBCEE[HIWORD(v1884) & 0x1F];
      goto LABEL_1668;
    case 405:
      v1992 = a3;
      v1964 = (a3 >> 5) & 0x1F;
      v1965 = a4;
      v1993 = result;
      sub_298B1A150(a4, v1964);
      v275 = v1993 & 3;
      if (!v275)
      {
        return 0;
      }

      v1967 = v1992;
      v1994 = v1992 & 0x1F;
      v1995 = word_298DFCD40;
      goto LABEL_1680;
    case 406:
      v1996 = a3;
      v1964 = (a3 >> 5) & 0x1F;
      v1965 = a4;
      v1997 = result;
      sub_298B1A150(a4, v1964);
      v275 = v1997 & 3;
      if (!v275)
      {
        return 0;
      }

      v1967 = v1996;
      v1989 = v1996 & 0x1F;
      v1990 = word_298DFD63C;
      goto LABEL_1675;
    case 407:
      v1998 = a3;
      v1964 = (a3 >> 5) & 0x1F;
      v1965 = a4;
      v1999 = result;
      sub_298B1A150(a4, v1964);
      v275 = v1999 & 3;
      if (!v275)
      {
        return 0;
      }

      v1967 = v1998;
      v1989 = v1998 & 0x1F;
      v1990 = word_298DFE5F0;
LABEL_1675:
      v2000 = v1990[v1989];
      sub_298B0A034(v1965, 1, v2000);
      sub_298B0A034(v1965, 1, v2000);
      v1975 = (v1967 >> 29) & 2 | (v1967 >> 12) & 1;
      goto LABEL_1681;
    case 408:
      v2001 = a3;
      v1964 = (a3 >> 5) & 0x1F;
      v1965 = a4;
      v2002 = result;
      sub_298B1A150(a4, v1964);
      v275 = v2002 & 3;
      if (!v275)
      {
        return 0;
      }

      v1967 = v2001;
      v1994 = v2001 & 0x1F;
      v1995 = word_298DFD63C;
      goto LABEL_1680;
    case 409:
      v2003 = a3;
      v1964 = (a3 >> 5) & 0x1F;
      v1965 = a4;
      v2004 = result;
      sub_298B1A150(a4, v1964);
      v275 = v2004 & 3;
      if (!v275)
      {
        return 0;
      }

      v1967 = v2003;
      v1994 = v2003 & 0x1F;
      v1995 = word_298DFE5F0;
LABEL_1680:
      v2005 = v1995[v1994];
      sub_298B0A034(v1965, 1, v2005);
      sub_298B0A034(v1965, 1, v2005);
      v1975 = (v1967 >> 30) & 1;
LABEL_1681:
      sub_298B0A034(v1965, 2, v1975);
      sub_298B1A150(v1965, v1964);
      v277 = word_298DFBCEE[HIWORD(v1967) & 0x1F];
      v278 = v1965;
      goto LABEL_222;
    case 410:
      v2006 = a3;
      v2007 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v1882 = a4;
      v2008 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v364 = v2008 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B1A1C4(v1882, (v2006 >> 5) & 0x1F);
      v2009 = HIWORD(v2006) & 0x1F;
      goto LABEL_1931;
    case 411:
      v1618 = a3;
      v819 = a4;
      v2010 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2010 & 3;
      if (!v46)
      {
        return 0;
      }

      v1713 = (v1618 >> 5) & 0x1F;
      v1446 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_1350:
      sub_298B0A034(v819, 1, v1446[v1713]);
      v1447 = HIWORD(v1618) & 0x1F;
LABEL_1351:
      v50 = v1446[v1447];
      goto LABEL_633;
    case 412:
      v2011 = a3;
      v2012 = a3 & 0x1F;
      v2013 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1694;
    case 413:
      v2014 = a3;
      v2015 = a3 & 0x1F;
      v2016 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1697;
    case 414:
      v908 = a3;
      v2017 = a3 & 0x1F;
      v2018 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1700;
    case 415:
      v922 = a3;
      v362 = a4;
      v923 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v364 = v923 & 3;
      if (!v364)
      {
        return 0;
      }

      v924 = a0123456789Abcd_0[(v922 >> 5) & 0x1F];
      goto LABEL_711;
    case 416:
      v653 = a3;
      v654 = a0123456789Abcd_0[a3 & 0x1F];
      v655 = *(a4 + 24);
      if (v655 >= *(a4 + 28))
      {
        v2387 = result;
        v2388 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v655 + 1, 16);
        LOBYTE(result) = v2387;
        a4 = v2388;
        LODWORD(v655) = *(v2388 + 24);
      }

      v656 = (*(a4 + 16) + 16 * v655);
      *v656 = 1;
      v656[1] = v654;
      ++*(a4 + 24);
      v364 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v367 = a0123456789Abcd_0[(v653 >> 5) & 0x1F];
      v368 = a4;
      goto LABEL_281;
    case 417:
      v903 = a3;
      v2024 = a3 & 0x1F;
      v2025 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1830;
    case 418:
      v981 = a3;
      v982 = a0123456789Abcd_0[a3 & 0x1F];
      v983 = a4;
      v984 = result;
      sub_298B0A034(a4, 1, v982);
      v880 = v984 & 3;
      if (!v880)
      {
        return 0;
      }

      sub_298B0A034(v983, 1, v982);
      v985 = word_298DFC574[(v981 >> 5) & 0x1F];
      v986 = *(v983 + 24);
      if (v986 >= *(v983 + 28))
      {
        sub_298B90A44(v983 + 16, (v983 + 32), v986 + 1, 16);
        LODWORD(v986) = *(v983 + 24);
      }

      v987 = (*(v983 + 16) + 16 * v986);
      *v987 = 1;
      v987[1] = v985;
      ++*(v983 + 24);
      v881 = a0123456789Abcd_0[HIWORD(v981) & 0x1F];
      v882 = v983;
      goto LABEL_678;
    case 419:
      v68 = word_298DFC574[a3 & 0x1F];
      v69 = *(a4 + 24);
      if (v69 >= *(a4 + 28))
      {
        v995 = result;
        v996 = a3;
        v997 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v69 + 1, 16);
        LOBYTE(result) = v995;
        LODWORD(a3) = v996;
        a4 = v997;
        LODWORD(v69) = *(v997 + 24);
      }

      v70 = (*(a4 + 16) + 16 * v69);
      *v70 = 1;
      v70[1] = v68;
      v71 = (*(a4 + 24) + 1);
      *(a4 + 24) = v71;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v72 = word_298DFC574[(a3 >> 5) & 0x1F];
      if (v71 >= *(a4 + 28))
      {
        v998 = result;
        v999 = a3;
        v1000 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v71 + 1, 16);
        result = v998;
        LODWORD(a3) = v999;
        a4 = v1000;
        LODWORD(v71) = *(v1000 + 24);
      }

      v73 = (*(a4 + 16) + 16 * v71);
      *v73 = 1;
      v73[1] = v72;
      v26 = *(a4 + 28);
      v25 = (*(a4 + 24) + 1);
      *(a4 + 24) = v25;
      v19 = a0123456789Abcd_0[WORD1(a3) & 0x1F];
LABEL_16:
      if (v25 >= v26)
      {
        v658 = result;
        v659 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v25 + 1, 16);
        result = v658;
        a4 = v659;
        LODWORD(v25) = *(v659 + 24);
      }

      v20 = (*(a4 + 16) + 16 * v25);
      v21 = 1;
      goto LABEL_36;
    case 420:
      v91 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v92 = a0123456789Abcd_0[a3 & 0x1F];
      v93 = *(a4 + 24);
      if (v93 >= *(a4 + 28))
      {
        v1033 = result;
        v1034 = a3;
        v1035 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v93 + 1, 16);
        LOBYTE(result) = v1033;
        LODWORD(a3) = v1034;
        a4 = v1035;
        LODWORD(v93) = *(v1035 + 24);
      }

      v94 = (*(a4 + 16) + 16 * v93);
      *v94 = 1;
      v94[1] = v92;
      ++*(a4 + 24);
      v95 = result & 3;
      if ((result & 3) != 0)
      {
        goto LABEL_86;
      }

      return 0;
    case 421:
      v423 = a3;
      v424 = a3 & 0x1F;
      v425 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_331;
    case 422:
      v2077 = a3;
      v2039 = a4;
      v2078 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v2032 = v2078 & 3;
      if (!v2032)
      {
        return 0;
      }

      v2073 = (v2077 >> 5) & 0x1F;
      goto LABEL_1768;
    case 423:
      v842 = result;
      v843 = a3;
      v844 = word_298DFB8C4[a3 & 0x1F];
      v845 = *(a4 + 24);
      v831 = a4;
      if (v845 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v845 + 1, 16);
        LODWORD(v845) = *(v831 + 24);
      }

      v846 = (*(v831 + 16) + 16 * v845);
      *v846 = 1;
      v846[1] = v844;
      v847 = (*(v831 + 24) + 1);
      *(v831 + 24) = v847;
      v833 = v842 & 3;
      if (!v833)
      {
        return 0;
      }

      v848 = word_298DFC574[(v843 >> 5) & 0x1F];
      if (v847 >= *(v831 + 28))
      {
        sub_298B90A44(v831 + 16, (v831 + 32), v847 + 1, 16);
        LODWORD(v847) = *(v831 + 24);
      }

      v849 = (*(v831 + 16) + 16 * v847);
      *v849 = 1;
      v849[1] = v848;
      v850 = *(v831 + 28);
      v851 = (*(v831 + 24) + 1);
      *(v831 + 24) = v851;
      v839 = (v843 >> 18) & 7;
      if (v851 >= v850)
      {
        sub_298B90A44(v831 + 16, (v831 + 32), v851 + 1, 16);
        LODWORD(v851) = *(v831 + 24);
      }

      v840 = (*(v831 + 16) + 16 * v851);
      v841 = 2;
LABEL_644:
      *v840 = v841;
      v840[1] = v839;
      ++*(v831 + 24);
      return v833;
    case 424:
      v907 = result;
      v908 = a3;
      v909 = word_298DFB8C4[a3 & 0x1F];
      v910 = *(a4 + 24);
      v911 = a4;
      if (v910 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v910 + 1, 16);
        LODWORD(v910) = *(v911 + 24);
      }

      v912 = (*(v911 + 16) + 16 * v910);
      *v912 = 1;
      v912[1] = v909;
      ++*(v911 + 24);
      v46 = v907 & 3;
      if (v46)
      {
        goto LABEL_699;
      }

      return 0;
    case 425:
      v429 = a3;
      v430 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v431 = a0123456789Abcd_0[a3 & 0x1F];
      v432 = a4;
      v433 = result;
      sub_298B0A034(a4, 1, v431);
      v275 = v433 & 3;
      if (!v275)
      {
        return 0;
      }

      sub_298B0A034(v432, 1, v431);
      v434 = (v429 >> 5) & 0x1F;
      v435 = word_298DFCD40;
      goto LABEL_337;
    case 426:
      v876 = a3;
      v877 = a0123456789Abcd_0[a3 & 0x1F];
      v878 = a4;
      v879 = result;
      sub_298B0A034(a4, 1, v877);
      v880 = v879 & 3;
      if (!v880)
      {
        return 0;
      }

      sub_298B0A034(v878, 1, v877);
      v881 = a0123456789Abcd_0[(v876 >> 5) & 0x1F];
LABEL_677:
      v882 = v878;
LABEL_678:
      sub_298B0A034(v882, 1, v881);
      return v880;
    case 427:
      v2055 = a3;
      v2056 = a3 & 0x1F;
      v2057 = word_298DFB36E;
      goto LABEL_2012;
    case 428:
      v1545 = a3;
      v44 = a4;
      v2318 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2318 & 3;
      if (v46)
      {
        goto LABEL_2017;
      }

      return 0;
    case 429:
      v922 = a3;
      v362 = a4;
      v2319 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v364 = v2319 & 3;
      if (!v364)
      {
        return 0;
      }

      v2049 = (v922 >> 5) & 0x1F;
      v2050 = word_298DFD63C;
      goto LABEL_2021;
    case 430:
      v2322 = a3;
      v2030 = a4;
      v2323 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v2032 = v2323 & 3;
      if (!v2032)
      {
        return 0;
      }

      sub_298B1A1C4(v2030, (v2322 >> 5) & 0x1F);
      v2073 = HIWORD(v2322) & 0x1F;
      goto LABEL_1773;
    case 431:
      v429 = a3;
      v430 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v436 = a0123456789Abcd_0[a3 & 0x1F];
      v432 = a4;
      v437 = result;
      sub_298B0A034(a4, 1, v436);
      v275 = v437 & 3;
      if (!v275)
      {
        return 0;
      }

      sub_298B0A034(v432, 1, v436);
      v434 = (v429 >> 5) & 0x1F;
      v435 = word_298DFD63C;
      goto LABEL_337;
    case 432:
      v2043 = a3;
      v2044 = a4;
      v2045 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2045 & 3;
      if (!v46)
      {
        return 0;
      }

      v2046 = v2043;
      v2047 = v2043 & 0x1F;
      v819 = v2044;
      sub_298B1A1C4(v2044, v2047);
      sub_298B0A034(v2044, 1, a0123456789Abcd_0[(v2046 >> 5) & 0x1F]);
      v50 = a0123456789Abcd_0[HIWORD(v2046) & 0x1F];
      goto LABEL_633;
    case 433:
      v922 = a3;
      v362 = a4;
      v2048 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v364 = v2048 & 3;
      if (!v364)
      {
        return 0;
      }

      v2049 = (v922 >> 5) & 0x1F;
      v2050 = word_298DFE5F0;
LABEL_2021:
      v924 = v2050[v2049];
LABEL_711:
      sub_298B0A034(v362, 1, v924);
      v367 = a0123456789Abcd_0[HIWORD(v922) & 0x1F];
      goto LABEL_280;
    case 434:
      v429 = a3;
      v430 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v2051 = a0123456789Abcd_0[a3 & 0x1F];
      v432 = a4;
      v2052 = result;
      sub_298B0A034(a4, 1, v2051);
      v275 = v2052 & 3;
      if (!v275)
      {
        return 0;
      }

      sub_298B0A034(v432, 1, v2051);
      v434 = (v429 >> 5) & 0x1F;
      v435 = word_298DFE5F0;
LABEL_337:
      v438 = v435[v434];
      goto LABEL_338;
    case 435:
      v2053 = a3;
      v819 = a4;
      v2054 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2054 & 3;
      if (!v46)
      {
        return 0;
      }

      v823 = (v2053 >> 5) & 0x1F;
      v824 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_632:
      v50 = v824[v823];
LABEL_633:
      v51 = v819;
LABEL_604:
      v52 = 1;
      goto LABEL_45;
    case 436:
      v429 = a3;
      v925 = a3 & 0x1F;
      v430 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_713;
    case 437:
      v2055 = a3;
      v2056 = a3 & 0x1F;
      v2057 = "\r";
      goto LABEL_2012;
    case 438:
      v2058 = a3;
      v2030 = a4;
      v2059 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2032 = v2059 & 3;
      if (!v2032)
      {
        return 0;
      }

      v2033 = v2058;
      sub_298B1A1C4(v2030, v2058 & 0x1F);
      sub_298B1A1C4(v2030, (v2058 >> 5) & 0x1F);
      goto LABEL_1772;
    case 439:
      v605 = a3;
      v226 = a4;
      v606 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v205 = v606 & 3;
      if (!v205)
      {
        return 0;
      }

      v607 = v605;
      v608 = a0123456789Abcd_0[(v605 >> 5) & 0x1F];
      v206 = v226;
      sub_298B0A034(v226, 1, v608);
      sub_298B0A034(v226, 1, a0123456789Abcd_0[HIWORD(v607) & 0x1F]);
      v207 = (v607 >> 11) & 7;
      goto LABEL_175;
    case 440:
      v324 = word_298DFC574;
      v622 = word_298DFC574[a3 & 0x1F];
      v623 = *(a4 + 24);
      if (v623 >= *(a4 + 28))
      {
        v2379 = result;
        v2380 = a3;
        v2381 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v623 + 1, 16);
        LOBYTE(result) = v2379;
        LODWORD(a3) = v2380;
        a4 = v2381;
        LODWORD(v623) = *(v2381 + 24);
      }

      v624 = (*(a4 + 16) + 16 * v623);
      *v624 = 1;
      v624[1] = v622;
      v625 = (*(a4 + 24) + 1);
      *(a4 + 24) = v625;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v626 = word_298DFC574[(a3 >> 5) & 0x1F];
      if (v625 >= *(a4 + 28))
      {
        v2382 = result;
        v2383 = a3;
        v2384 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v625 + 1, 16);
        result = v2382;
        LODWORD(a3) = v2383;
        a4 = v2384;
        LODWORD(v625) = *(v2384 + 24);
      }

      v627 = (*(a4 + 16) + 16 * v625);
      *v627 = 1;
      v627[1] = v626;
      v87 = *(a4 + 28);
      v88 = (*(a4 + 24) + 1);
      *(a4 + 24) = v88;
      v335 = WORD1(a3) & 0x1F;
      goto LABEL_263;
    case 441:
      v254 = word_298DFC574[a3 & 0x1F];
      v255 = *(a4 + 24);
      if (v255 >= *(a4 + 28))
      {
        v1106 = result;
        v1107 = a3;
        v1108 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v255 + 1, 16);
        LOBYTE(result) = v1106;
        LODWORD(a3) = v1107;
        a4 = v1108;
        LODWORD(v255) = *(v1108 + 24);
      }

      v256 = (*(a4 + 16) + 16 * v255);
      *v256 = 1;
      v256[1] = v254;
      v257 = (*(a4 + 24) + 1);
      *(a4 + 24) = v257;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v258 = word_298DFC574[(a3 >> 5) & 0x1F];
      if (v257 >= *(a4 + 28))
      {
        v1109 = result;
        v1110 = a3;
        v1111 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v257 + 1, 16);
        result = v1109;
        LODWORD(a3) = v1110;
        a4 = v1111;
        LODWORD(v257) = *(v1111 + 24);
      }

      v259 = (*(a4 + 16) + 16 * v257);
      *v259 = 1;
      v259[1] = v258;
      v37 = *(a4 + 28);
      v38 = (*(a4 + 24) + 1);
      *(a4 + 24) = v38;
      v19 = (a3 >> 20) & 1;
      goto LABEL_33;
    case 442:
      v1545 = a3;
      v44 = a4;
      v2252 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2252 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_2017:
      sub_298B1A1C4(v44, (v1545 >> 5) & 0x1F);
LABEL_2018:
      v50 = (v1545 >> 19) & 3;
      goto LABEL_43;
    case 443:
      v2253 = a3;
      v44 = a4;
      v2254 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2254 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2253 >> 5) & 0x1F);
      v50 = (v2253 >> 18) & 7;
      goto LABEL_43;
    case 444:
      v64 = word_298DFC574[a3 & 0x1F];
      v65 = *(a4 + 24);
      if (v65 >= *(a4 + 28))
      {
        v992 = result;
        v993 = a3;
        v994 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v65 + 1, 16);
        LOBYTE(result) = v992;
        LODWORD(a3) = v993;
        a4 = v994;
        LODWORD(v65) = *(v994 + 24);
      }

      v66 = (*(a4 + 16) + 16 * v65);
      *v66 = 1;
      v66[1] = v64;
      ++*(a4 + 24);
      v46 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v44 = a4;
      v67 = a3;
      sub_298B1A1C4(a4, (a3 >> 5) & 0x1F);
      v50 = (v67 >> 17) & 0xF;
      goto LABEL_43;
    case 445:
      v370 = word_298DFC574[a3 & 0x1F];
      v371 = *(a4 + 24);
      if (v371 >= *(a4 + 28))
      {
        v1127 = result;
        v1128 = a3;
        v1129 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v371 + 1, 16);
        LOBYTE(result) = v1127;
        LODWORD(a3) = v1128;
        a4 = v1129;
        LODWORD(v371) = *(v1129 + 24);
      }

      v372 = (*(a4 + 16) + 16 * v371);
      *v372 = 1;
      v372[1] = v370;
      ++*(a4 + 24);
      v373 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      sub_298B1A1C4(a4, (a3 >> 5) & 0x1F);
      return v373;
    case 446:
      v592 = word_298DFC574[a3 & 0x1F];
      v593 = *(a4 + 24);
      if (v593 >= *(a4 + 28))
      {
        v2376 = result;
        v2377 = a3;
        v2378 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v593 + 1, 16);
        LOBYTE(result) = v2376;
        LODWORD(a3) = v2377;
        a4 = v2378;
        LODWORD(v593) = *(v2378 + 24);
      }

      v594 = (*(a4 + 16) + 16 * v593);
      *v594 = 1;
      v594[1] = v592;
      ++*(a4 + 24);
      v264 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v267 = word_298DFBCEE[(a3 >> 5) & 0x1F];
      v268 = a4;
      v269 = 1;
      goto LABEL_216;
    case 447:
      v1917 = a3;
      v1608 = a4;
      v1918 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v1576 = v1918 & 3;
      if (!v1576)
      {
        return 0;
      }

      v1577 = (v1917 >> 5) & 0x1F;
      goto LABEL_1729;
    case 448:
      v1919 = a3;
      v1920 = a4;
      v1921 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v1921 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v1920, v1919 & 0x1F);
      sub_298B0A034(v1920, 2, (v1919 >> 20) & 1);
      v50 = word_298DFBCEE[(v1919 >> 5) & 0x1F];
      v51 = v1920;
      v52 = 1;
      goto LABEL_45;
    case 449:
      v248 = word_298DFC574[a3 & 0x1F];
      v249 = *(a4 + 24);
      if (v249 >= *(a4 + 28))
      {
        v1100 = result;
        v1101 = a3;
        v1102 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v249 + 1, 16);
        LOBYTE(result) = v1100;
        LODWORD(a3) = v1101;
        a4 = v1102;
        LODWORD(v249) = *(v1102 + 24);
      }

      v250 = (*(a4 + 16) + 16 * v249);
      *v250 = 1;
      v250[1] = v248;
      v251 = (*(a4 + 24) + 1);
      *(a4 + 24) = v251;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      if (v251 >= *(a4 + 28))
      {
        v1103 = result;
        v1104 = a3;
        v1105 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v251 + 1, 16);
        result = v1103;
        LODWORD(a3) = v1104;
        a4 = v1105;
        LODWORD(v251) = *(v1105 + 24);
      }

      v252 = (*(a4 + 16) + 16 * v251);
      *v252 = 1;
      v252[1] = v248;
      v245 = *(a4 + 28);
      v246 = (*(a4 + 24) + 1);
      *(a4 + 24) = v246;
      v247 = (a3 >> 19) & 3;
      goto LABEL_197;
    case 450:
      v240 = word_298DFC574[a3 & 0x1F];
      v241 = *(a4 + 24);
      if (v241 >= *(a4 + 28))
      {
        v1097 = result;
        v1098 = a3;
        v1099 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v241 + 1, 16);
        LOBYTE(result) = v1097;
        LODWORD(a3) = v1098;
        a4 = v1099;
        LODWORD(v241) = *(v1099 + 24);
      }

      v242 = (*(a4 + 16) + 16 * v241);
      *v242 = 1;
      v242[1] = v240;
      v243 = (*(a4 + 24) + 1);
      *(a4 + 24) = v243;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      if (v243 >= *(a4 + 28))
      {
        v2350 = result;
        v2351 = a3;
        v2352 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v243 + 1, 16);
        result = v2350;
        LODWORD(a3) = v2351;
        a4 = v2352;
        LODWORD(v243) = *(v2352 + 24);
      }

      v244 = (*(a4 + 16) + 16 * v243);
      *v244 = 1;
      v244[1] = v240;
      v245 = *(a4 + 28);
      v246 = (*(a4 + 24) + 1);
      *(a4 + 24) = v246;
      v247 = (a3 >> 18) & 7;
      goto LABEL_197;
    case 451:
      v543 = word_298DFC574[a3 & 0x1F];
      v544 = *(a4 + 24);
      if (v544 >= *(a4 + 28))
      {
        v2339 = result;
        v2340 = a3;
        v2341 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v544 + 1, 16);
        LOBYTE(result) = v2339;
        LODWORD(a3) = v2340;
        a4 = v2341;
        LODWORD(v544) = *(v2341 + 24);
      }

      v545 = (*(a4 + 16) + 16 * v544);
      *v545 = 1;
      v545[1] = v543;
      v546 = (*(a4 + 24) + 1);
      *(a4 + 24) = v546;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      if (v546 >= *(a4 + 28))
      {
        v2342 = result;
        v2343 = a3;
        v2344 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v546 + 1, 16);
        result = v2342;
        LODWORD(a3) = v2343;
        a4 = v2344;
        LODWORD(v546) = *(v2344 + 24);
      }

      v547 = (*(a4 + 16) + 16 * v546);
      *v547 = 1;
      v547[1] = v543;
      v245 = *(a4 + 28);
      v246 = (*(a4 + 24) + 1);
      *(a4 + 24) = v246;
      v247 = (a3 >> 17) & 0xF;
LABEL_197:
      if (v246 >= v245)
      {
        v1094 = result;
        v1095 = a3;
        v1096 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v246 + 1, 16);
        result = v1094;
        LODWORD(a3) = v1095;
        a4 = v1096;
        LODWORD(v246) = *(v1096 + 24);
      }

      v253 = (*(a4 + 16) + 16 * v246);
      *v253 = 2;
      v253[1] = v247;
      v87 = *(a4 + 28);
      v88 = (*(a4 + 24) + 1);
      *(a4 + 24) = v88;
      v89 = (a3 >> 5) & 0x1F;
      v90 = word_298DFB8C4;
      goto LABEL_79;
    case 452:
      v91 = word_298DFC574;
      v467 = word_298DFC574[a3 & 0x1F];
      v468 = *(a4 + 24);
      if (v468 >= *(a4 + 28))
      {
        v1159 = result;
        v1160 = a3;
        v1161 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v468 + 1, 16);
        LOBYTE(result) = v1159;
        LODWORD(a3) = v1160;
        a4 = v1161;
        LODWORD(v468) = *(v1161 + 24);
      }

      v469 = (*(a4 + 16) + 16 * v468);
      *v469 = 1;
      v469[1] = v467;
      ++*(a4 + 24);
      v95 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

LABEL_86:
      v96 = (a3 >> 5) & 0x1F;
      v97 = word_298DFCD40;
      goto LABEL_87;
    case 453:
      v690 = a3;
      v691 = word_298DFC574[a3 & 0x1F];
      v692 = *(a4 + 24);
      if (v692 >= *(a4 + 28))
      {
        v2398 = result;
        v2399 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v692 + 1, 16);
        LOBYTE(result) = v2398;
        a4 = v2399;
        LODWORD(v692) = *(v2399 + 24);
      }

      v693 = (*(a4 + 16) + 16 * v692);
      *v693 = 1;
      v693[1] = v691;
      v694 = (*(a4 + 24) + 1);
      *(a4 + 24) = v694;
      v695 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      if (v694 >= *(a4 + 28))
      {
        v2400 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v694 + 1, 16);
        a4 = v2400;
        LODWORD(v694) = *(v2400 + 24);
      }

      v696 = (*(a4 + 16) + 16 * v694);
      *v696 = 1;
      v696[1] = v691;
      v697 = *(a4 + 28);
      v698 = (*(a4 + 24) + 1);
      *(a4 + 24) = v698;
      v699 = word_298DFC574[(v690 >> 5) & 0x1F];
      if (v698 >= v697)
      {
        v2401 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v698 + 1, 16);
        a4 = v2401;
        LODWORD(v698) = *(v2401 + 24);
      }

      v700 = (*(a4 + 16) + 16 * v698);
      *v700 = 1;
      v700[1] = v699;
      ++*(a4 + 24);
      return v695;
    case 454:
      v423 = a3;
      v424 = a3 & 0x1F;
      v425 = word_298DFBCEE;
      goto LABEL_331;
    case 455:
      v2011 = a3;
      v2012 = a3 & 0x1F;
      v2013 = word_298DFBCEE;
LABEL_1694:
      v911 = a4;
      v2026 = result;
      sub_298B0A034(a4, 1, v2013[v2012]);
      v46 = v2026 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v911, (v2011 >> 5) & 0x1F);
      v50 = (v2011 >> 19) & 3;
      goto LABEL_700;
    case 456:
      v2014 = a3;
      v2015 = a3 & 0x1F;
      v2016 = word_298DFBCEE;
LABEL_1697:
      v911 = a4;
      v2027 = result;
      sub_298B0A034(a4, 1, v2016[v2015]);
      v46 = v2027 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v911, (v2014 >> 5) & 0x1F);
      v50 = (v2014 >> 18) & 7;
      goto LABEL_700;
    case 457:
      v908 = a3;
      v2017 = a3 & 0x1F;
      v2018 = word_298DFBCEE;
LABEL_1700:
      v911 = a4;
      v2028 = result;
      sub_298B0A034(a4, 1, v2018[v2017]);
      v46 = v2028 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_699:
      sub_298B1A1C4(v911, (v908 >> 5) & 0x1F);
      v50 = (v908 >> 17) & 0xF;
      goto LABEL_700;
    case 458:
      v2029 = a3;
      v2030 = a4;
      v2031 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2032 = v2031 & 3;
      if (!v2032)
      {
        return 0;
      }

      v2033 = v2029;
      sub_298B1A1C4(v2030, v2029 & 0x1F);
      v2034 = (v2029 >> 5) & 0x1F;
      v2035 = word_298DFCD40;
      goto LABEL_1771;
    case 459:
      v423 = a3;
      v424 = a3 & 0x1F;
      v425 = word_298DFB36E;
      goto LABEL_331;
    case 460:
      v2036 = a3;
      v911 = a4;
      v2037 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v2037 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v911, (v2036 >> 5) & 0x1F);
      v50 = (v2036 >> 20) & 1;
      goto LABEL_700;
    case 461:
      v2038 = a3;
      v2039 = a4;
      v2040 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2032 = v2040 & 3;
      if (!v2032)
      {
        return 0;
      }

      v2041 = (v2038 >> 5) & 0x1F;
      v2042 = word_298DFD63C;
      goto LABEL_1767;
    case 462:
      v91 = word_298DFC574;
      v566 = word_298DFC574[a3 & 0x1F];
      v567 = *(a4 + 24);
      if (v567 >= *(a4 + 28))
      {
        v2359 = result;
        v2360 = a3;
        v2361 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v567 + 1, 16);
        LOBYTE(result) = v2359;
        LODWORD(a3) = v2360;
        a4 = v2361;
        LODWORD(v567) = *(v2361 + 24);
      }

      v568 = (*(a4 + 16) + 16 * v567);
      *v568 = 1;
      v568[1] = v566;
      v569 = (*(a4 + 24) + 1);
      *(a4 + 24) = v569;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v95 = result;
      if (v569 >= *(a4 + 28))
      {
        v2362 = a3;
        v2363 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v569 + 1, 16);
        LODWORD(a3) = v2362;
        a4 = v2363;
        LODWORD(v569) = *(v2363 + 24);
      }

      v570 = (*(a4 + 16) + 16 * v569);
      *v570 = 1;
      v570[1] = v566;
      ++*(a4 + 24);
      v96 = (a3 >> 5) & 0x1F;
      v97 = word_298DFD63C;
LABEL_87:
      v98 = a3;
      v99 = a4;
      sub_298B0A034(a4, 1, v97[v96]);
      v100 = v99;
      v101 = v91[HIWORD(v98) & 0x1F];
      v102 = v99[6];
      if (v102 >= v99[7])
      {
        sub_298B90A44((v99 + 4), v99 + 8, v102 + 1, 16);
        v100 = v99;
        LODWORD(v102) = v99[6];
      }

      v103 = (*(v100 + 2) + 16 * v102);
      *v103 = 1;
      v103[1] = v101;
      ++v100[6];
      return v95;
    case 463:
      v2038 = a3;
      v2039 = a4;
      v2095 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2032 = v2095 & 3;
      if (!v2032)
      {
        return 0;
      }

      v2041 = (v2038 >> 5) & 0x1F;
      v2042 = word_298DFE5F0;
LABEL_1767:
      sub_298B0A034(v2039, 1, v2042[v2041]);
      v2073 = HIWORD(v2038) & 0x1F;
      goto LABEL_1768;
    case 464:
      v2097 = a3;
      v2030 = a4;
      v2098 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2032 = v2098 & 3;
      if (!v2032)
      {
        return 0;
      }

      v2033 = v2097;
      sub_298B1A1C4(v2030, v2097 & 0x1F);
      v2034 = (v2097 >> 5) & 0x1F;
      v2035 = word_298DFE5F0;
LABEL_1771:
      sub_298B0A034(v2030, 1, v2035[v2034]);
LABEL_1772:
      v2073 = HIWORD(v2033) & 0x1F;
LABEL_1773:
      v2096 = v2030;
      goto LABEL_1774;
    case 465:
      v423 = a3;
      v424 = a3 & 0x1F;
      v425 = "\r";
      goto LABEL_331;
    case 466:
      v2099 = a3;
      v44 = a4;
      v2100 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2100 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2099 >> 5) & 0x1F);
      sub_298B1A1C4(v44, HIWORD(v2099) & 0x1F);
      v50 = (v2099 >> 11) & 0xF;
      goto LABEL_43;
    case 467:
      v423 = a3;
      v424 = a3 & 0x1F;
      v425 = word_298DFB86A;
LABEL_331:
      v426 = a4;
      v427 = result;
      sub_298B0A034(a4, 1, v425[v424]);
      v428 = v427 & 3;
      if (!v428)
      {
        return 0;
      }

      sub_298B1A1C4(v426, (v423 >> 5) & 0x1F);
      return v428;
    case 468:
      v579 = word_298DFC574[a3 & 0x1F];
      v580 = *(a4 + 24);
      if (v580 >= *(a4 + 28))
      {
        v2364 = result;
        v2365 = a3;
        v2366 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v580 + 1, 16);
        LOBYTE(result) = v2364;
        LODWORD(a3) = v2365;
        a4 = v2366;
        LODWORD(v580) = *(v2366 + 24);
      }

      v581 = (*(a4 + 16) + 16 * v580);
      *v581 = 1;
      v581[1] = v579;
      v582 = (*(a4 + 24) + 1);
      *(a4 + 24) = v582;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      if (v582 >= *(a4 + 28))
      {
        v2367 = result;
        v2368 = a3;
        v2369 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v582 + 1, 16);
        result = v2367;
        LODWORD(a3) = v2368;
        a4 = v2369;
        LODWORD(v582) = *(v2369 + 24);
      }

      v583 = (*(a4 + 16) + 16 * v582);
      *v583 = 1;
      v583[1] = v579;
      v584 = *(a4 + 28);
      v585 = (*(a4 + 24) + 1);
      *(a4 + 24) = v585;
      v586 = (a3 >> 20) & 1;
      if (v585 >= v584)
      {
        v2370 = result;
        v2371 = a3;
        v2372 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v585 + 1, 16);
        result = v2370;
        LODWORD(a3) = v2371;
        a4 = v2372;
        LODWORD(v585) = *(v2372 + 24);
      }

      v587 = (*(a4 + 16) + 16 * v585);
      *v587 = 2;
      v587[1] = v586;
      v588 = *(a4 + 28);
      v589 = (*(a4 + 24) + 1);
      *(a4 + 24) = v589;
      v590 = word_298DFC574[(a3 >> 5) & 0x1F];
      if (v589 >= v588)
      {
        v2373 = result;
        v2374 = a3;
        v2375 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v589 + 1, 16);
        result = v2373;
        LODWORD(a3) = v2374;
        a4 = v2375;
        LODWORD(v589) = *(v2375 + 24);
      }

      v591 = (*(a4 + 16) + 16 * v589);
      *v591 = 1;
      v591[1] = v590;
      v37 = *(a4 + 28);
      v38 = (*(a4 + 24) + 1);
      *(a4 + 24) = v38;
      v19 = (a3 >> 14) & 1;
      goto LABEL_33;
    case 469:
      v409 = word_298DFC574[a3 & 0x1F];
      v410 = *(a4 + 24);
      if (v410 >= *(a4 + 28))
      {
        v1141 = result;
        v1142 = a3;
        v1143 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v410 + 1, 16);
        LOBYTE(result) = v1141;
        LODWORD(a3) = v1142;
        a4 = v1143;
        LODWORD(v410) = *(v1143 + 24);
      }

      v411 = (*(a4 + 16) + 16 * v410);
      *v411 = 1;
      v411[1] = v409;
      v412 = (*(a4 + 24) + 1);
      *(a4 + 24) = v412;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v264 = result;
      v413 = a3;
      v414 = a4;
      if (v412 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v412 + 1, 16);
        LODWORD(v412) = *(v414 + 24);
      }

      v415 = (*(v414 + 16) + 16 * v412);
      *v415 = 1;
      v415[1] = v409;
      v416 = *(v414 + 28);
      v417 = (*(v414 + 24) + 1);
      *(v414 + 24) = v417;
      if (v417 >= v416)
      {
        sub_298B90A44(v414 + 16, (v414 + 32), v417 + 1, 16);
        LODWORD(v417) = *(v414 + 24);
      }

      v418 = (*(v414 + 16) + 16 * v417);
      *v418 = 2;
      v418[1] = (v413 >> 19) & 3;
      v419 = *(v414 + 28);
      v420 = (*(v414 + 24) + 1);
      *(v414 + 24) = v420;
      v421 = word_298DFC574[(v413 >> 5) & 0x1F];
      if (v420 >= v419)
      {
        sub_298B90A44(v414 + 16, (v414 + 32), v420 + 1, 16);
        LODWORD(v420) = *(v414 + 24);
      }

      v268 = v414;
      v422 = (*(v414 + 16) + 16 * v420);
      *v422 = 1;
      v422[1] = v421;
      ++*(v414 + 24);
      v267 = (v413 >> 13) & 3;
      goto LABEL_215;
    case 470:
      v289 = word_298DFC574[a3 & 0x1F];
      v290 = *(a4 + 24);
      if (v290 >= *(a4 + 28))
      {
        v1115 = result;
        v1116 = a3;
        v1117 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v290 + 1, 16);
        LOBYTE(result) = v1115;
        LODWORD(a3) = v1116;
        a4 = v1117;
        LODWORD(v290) = *(v1117 + 24);
      }

      v291 = (*(a4 + 16) + 16 * v290);
      *v291 = 1;
      v291[1] = v289;
      v292 = (*(a4 + 24) + 1);
      *(a4 + 24) = v292;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v46 = result;
      if (v292 >= *(a4 + 28))
      {
        v1144 = a3;
        v1145 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v292 + 1, 16);
        LODWORD(a3) = v1144;
        a4 = v1145;
        LODWORD(v292) = *(v1145 + 24);
      }

      v293 = (*(a4 + 16) + 16 * v292);
      *v293 = 1;
      v293[1] = v289;
      v294 = *(a4 + 28);
      v295 = (*(a4 + 24) + 1);
      *(a4 + 24) = v295;
      v296 = (a3 >> 18) & 7;
      if (v295 >= v294)
      {
        v1146 = a3;
        v1147 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v295 + 1, 16);
        LODWORD(a3) = v1146;
        a4 = v1147;
        LODWORD(v295) = *(v1147 + 24);
      }

      v297 = (*(a4 + 16) + 16 * v295);
      *v297 = 2;
      v297[1] = v296;
      v298 = *(a4 + 28);
      v299 = (*(a4 + 24) + 1);
      *(a4 + 24) = v299;
      v300 = word_298DFC574[(a3 >> 5) & 0x1F];
      if (v299 >= v298)
      {
        v1148 = a3;
        v1149 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v299 + 1, 16);
        LODWORD(a3) = v1148;
        a4 = v1149;
        LODWORD(v299) = *(v1149 + 24);
      }

      v301 = (*(a4 + 16) + 16 * v299);
      *v301 = 1;
      v301[1] = v300;
      ++*(a4 + 24);
      v50 = (a3 >> 12) & 7;
      goto LABEL_240;
    case 471:
      v493 = word_298DFC574[a3 & 0x1F];
      v494 = *(a4 + 24);
      if (v494 >= *(a4 + 28))
      {
        v1166 = result;
        v1167 = a3;
        v1168 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v494 + 1, 16);
        LOBYTE(result) = v1166;
        LODWORD(a3) = v1167;
        a4 = v1168;
        LODWORD(v494) = *(v1168 + 24);
      }

      v495 = (*(a4 + 16) + 16 * v494);
      *v495 = 1;
      v495[1] = v493;
      v496 = (*(a4 + 24) + 1);
      *(a4 + 24) = v496;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v46 = result;
      if (v496 >= *(a4 + 28))
      {
        v2353 = a3;
        v2354 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v496 + 1, 16);
        LODWORD(a3) = v2353;
        a4 = v2354;
        LODWORD(v496) = *(v2354 + 24);
      }

      v497 = (*(a4 + 16) + 16 * v496);
      *v497 = 1;
      v497[1] = v493;
      v498 = *(a4 + 28);
      v499 = (*(a4 + 24) + 1);
      *(a4 + 24) = v499;
      v500 = (a3 >> 17) & 0xF;
      if (v499 >= v498)
      {
        v2355 = a3;
        v2356 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v499 + 1, 16);
        LODWORD(a3) = v2355;
        a4 = v2356;
        LODWORD(v499) = *(v2356 + 24);
      }

      v501 = (*(a4 + 16) + 16 * v499);
      *v501 = 2;
      v501[1] = v500;
      v502 = *(a4 + 28);
      v503 = (*(a4 + 24) + 1);
      *(a4 + 24) = v503;
      v504 = word_298DFC574[(a3 >> 5) & 0x1F];
      if (v503 >= v502)
      {
        v2357 = a3;
        v2358 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v503 + 1, 16);
        LODWORD(a3) = v2357;
        a4 = v2358;
        LODWORD(v503) = *(v2358 + 24);
      }

      v505 = (*(a4 + 16) + 16 * v503);
      *v505 = 1;
      v505[1] = v504;
      ++*(a4 + 24);
      v50 = (a3 >> 11) & 0xF;
LABEL_240:
      v51 = a4;
      goto LABEL_44;
    case 472:
      v2071 = a3;
      v2039 = a4;
      v2072 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2032 = v2072 & 3;
      if (!v2032)
      {
        return 0;
      }

      sub_298B1A1C4(v2039, (v2071 >> 5) & 0x1F);
      sub_298B1A1C4(v2039, HIWORD(v2071) & 0x1F);
      v2073 = (v2071 >> 10) & 0x1F;
LABEL_1768:
      v2096 = v2039;
LABEL_1774:
      sub_298B1A1C4(v2096, v2073);
      return v2032;
    case 473:
      v2055 = a3;
      v2056 = a3 & 0x1F;
      v2057 = word_298DFB86A;
      goto LABEL_2012;
    case 474:
      v2074 = a3;
      v2075 = a0123456789Abcd_0[a3 & 0x1F];
      v892 = a4;
      v2076 = result;
      sub_298B0A034(a4, 1, v2075);
      v364 = v2076 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v892, 1, v2075);
      sub_298B0A034(v892, 1, a0123456789Abcd_0[(v2074 >> 5) & 0x1F]);
      sub_298B0A034(v892, 1, a0123456789Abcd_0[HIWORD(v2074) & 0x1F]);
      v367 = (v2074 >> 11) & 3;
      goto LABEL_685;
    case 475:
      v456 = a3;
      v226 = a4;
      v457 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v205 = v457 & 3;
      if (!v205)
      {
        return 0;
      }

      v458 = v456;
      v459 = a0123456789Abcd_0[(v456 >> 5) & 0x1F];
      v206 = v226;
      sub_298B0A034(v226, 1, v459);
      sub_298B0A034(v226, 1, a0123456789Abcd_0[HIWORD(v458) & 0x1F]);
      v207 = (v458 >> 12) & 1;
      goto LABEL_175;
    case 476:
      v2255 = a3;
      v44 = a4;
      v2256 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2256 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2255 >> 5) & 0x1F);
      sub_298B1A1C4(v44, HIWORD(v2255) & 0x1F);
      v50 = (v2255 >> 14) & 1;
      goto LABEL_43;
    case 477:
      v2257 = a3;
      v44 = a4;
      v2258 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2258 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFCD40[(v2257 >> 5) & 0x1F]);
      goto LABEL_1955;
    case 478:
      v2259 = a3;
      v911 = a4;
      v2260 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2260 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v911, v2259 & 0x1F);
      sub_298B1A1C4(v911, (v2259 >> 5) & 0x1F);
      sub_298B1A1C4(v911, HIWORD(v2259) & 0x1F);
      v50 = (v2259 >> 11) & 3;
      goto LABEL_700;
    case 479:
      v2261 = a3;
      v44 = a4;
      v2262 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2262 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2261 >> 5) & 0x1F);
      sub_298B1A1C4(v44, HIWORD(v2261) & 0x1F);
      v50 = (v2261 >> 12) & 1;
      goto LABEL_43;
    case 480:
      v2263 = a3;
      v911 = a4;
      v2264 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2264 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v911, v2263 & 0x1F);
      sub_298B1A1C4(v911, (v2263 >> 5) & 0x1F);
      sub_298B1A1C4(v911, HIWORD(v2263) & 0x1F);
      v50 = (v2263 >> 12) & 3;
      goto LABEL_700;
    case 481:
      v2257 = a3;
      v44 = a4;
      v2265 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2265 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2257 >> 5) & 0x1F);
LABEL_1955:
      sub_298B1A1C4(v44, HIWORD(v2257) & 0x1F);
      v50 = (v2257 >> 13) & 3;
      goto LABEL_43;
    case 482:
      v2266 = a3;
      v44 = a4;
      v2267 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2267 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2266 >> 5) & 0x1F);
      sub_298B1A1C4(v44, HIWORD(v2266) & 0x1F);
      v50 = v2266 >> 10;
      goto LABEL_43;
    case 483:
      v2268 = a3;
      v44 = a4;
      v2269 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2269 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2268 >> 5) & 0x1F);
      sub_298B1A1C4(v44, HIWORD(v2268) & 0x1F);
      v50 = (v2268 >> 12) & 7;
      goto LABEL_43;
    case 484:
      v2173 = a3;
      v2174 = a3 & 0x1F;
      v2175 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1961;
    case 485:
      v766 = a3;
      v767 = a0123456789Abcd_0[a3 & 0x1F];
      v768 = a4;
      v769 = result;
      sub_298B0A034(a4, 1, v767);
      v770 = v769 & 3;
      if (!v770)
      {
        return 0;
      }

      sub_298B0A034(v768, 1, v767);
      sub_298B0A034(v768, 1, a0123456789Abcd_0[(v766 >> 5) & 0x1F]);
      sub_298B1A1C4(v768, HIWORD(v766) & 0xF);
      v771 = *(v768 + 24);
      if (v771 >= *(v768 + 28))
      {
        sub_298B90A44(v768 + 16, (v768 + 32), v771 + 1, 16);
        LODWORD(v771) = *(v768 + 24);
      }

      v772 = (*(v768 + 16) + 16 * v771);
      *v772 = 2;
      v772[1] = (v766 >> 9) & 4 | (v766 >> 20) & 3;
      ++*(v768 + 24);
      return v770;
    case 486:
      v919 = a3;
      v920 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v44 = a4;
      v2272 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v46 = v2272 & 3;
      if (!v46)
      {
        return 0;
      }

      goto LABEL_708;
    case 487:
      v2273 = result;
      sub_298B1B3B8(a4, a3);
      return v2273 & 3;
    case 488:
      v2274 = a3;
      v1475 = a4;
      v2275 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v2275 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1475, 1, a0123456789Abcd_0[(v2274 >> 5) & 0x1F]);
      v177 = HIWORD(v2274) & 7;
      goto LABEL_1984;
    case 489:
      v2210 = a3;
      v2211 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v1450 = a4;
      v2276 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v2276 & 3;
      if (v176)
      {
        goto LABEL_1969;
      }

      return 0;
    case 490:
      v172 = a3;
      v173 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v174 = a4;
      v175 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v175 & 3;
      if (v176)
      {
        goto LABEL_138;
      }

      return 0;
    case 491:
      v2019 = result;
      sub_298B1B52C(a4, a3);
      return v2019 & 3;
    case 492:
      v2020 = a3;
      v2021 = a0123456789Abcd_0[a3 & 0x1F];
      v2022 = a4;
      v2023 = result;
      sub_298B0A034(a4, 1, v2021);
      v719 = v2023 & 3;
      if (!v719)
      {
        return 0;
      }

      sub_298B0A034(v2022, 1, v2021);
      sub_298B0A034(v2022, 1, a0123456789Abcd_0[(v2020 >> 5) & 0x1F]);
      v720 = HIWORD(v2020) & 7;
      v721 = v2022;
      v722 = 8;
      goto LABEL_566;
    case 493:
      v883 = a3;
      v884 = a4;
      v885 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v886 = v885 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B0A034(v884, 1, a0123456789Abcd_0[(v883 >> 5) & 0x1F]);
      v887 = HIWORD(v883) & 7;
LABEL_681:
      v888 = v884;
      goto LABEL_682;
    case 494:
      v715 = a3;
      v716 = a0123456789Abcd_0[a3 & 0x1F];
      v717 = a4;
      v718 = result;
      sub_298B0A034(a4, 1, v716);
      v719 = v718 & 3;
      if (!v719)
      {
        return 0;
      }

      sub_298B0A034(v717, 1, v716);
      sub_298B0A034(v717, 1, a0123456789Abcd_0[(v715 >> 5) & 0x1F]);
      v720 = HIWORD(v715) & 0xF;
      v721 = v717;
      v722 = 16;
      goto LABEL_566;
    case 495:
      v913 = a3;
      v914 = a4;
      v915 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v886 = v915 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B0A034(v914, 1, a0123456789Abcd_0[(v913 >> 5) & 0x1F]);
      v887 = HIWORD(v913) & 0xF;
      goto LABEL_703;
    case 496:
      v2060 = a3;
      v2061 = a0123456789Abcd_0[a3 & 0x1F];
      v2062 = a4;
      v2063 = result;
      sub_298B0A034(a4, 1, v2061);
      v719 = v2063 & 3;
      if (!v719)
      {
        return 0;
      }

      sub_298B0A034(v2062, 1, v2061);
      sub_298B0A034(v2062, 1, a0123456789Abcd_0[(v2060 >> 5) & 0x1F]);
      v720 = HIWORD(v2060) & 0x1F;
      v721 = v2062;
      v722 = 32;
LABEL_566:
      sub_298B1DB34(v721, v720, v722);
      return v719;
    case 497:
      v2064 = a3;
      v1486 = a4;
      v2065 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v886 = v2065 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B0A034(v1486, 1, a0123456789Abcd_0[(v2064 >> 5) & 0x1F]);
      v887 = HIWORD(v2064) & 0x1F;
      goto LABEL_1738;
    case 498:
      v1051 = a3;
      v1052 = a4;
      v1053 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v1053 & 3;
      if (!v176)
      {
        return 0;
      }

      v1054 = word_298DFC574[(v1051 >> 5) & 0x1F];
      v1055 = *(v1052 + 24);
      if (v1055 >= *(v1052 + 28))
      {
        sub_298B90A44(v1052 + 16, (v1052 + 32), v1055 + 1, 16);
        LODWORD(v1055) = *(v1052 + 24);
      }

      v178 = v1052;
      v1056 = (*(v1052 + 16) + 16 * v1055);
      *v1056 = 1;
      v1056[1] = v1054;
      ++*(v1052 + 24);
      v177 = HIWORD(v1051) & 7 | 8;
      v179 = 16;
      goto LABEL_141;
    case 499:
      v1057 = result;
      v1058 = a3;
      v1059 = word_298DFC574[a3 & 0x1F];
      v1060 = *(a4 + 24);
      v1061 = a4;
      if (v1060 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v1060 + 1, 16);
        LODWORD(v1060) = *(v1061 + 24);
      }

      v1062 = (*(v1061 + 16) + 16 * v1060);
      *v1062 = 1;
      v1062[1] = v1059;
      ++*(v1061 + 24);
      v443 = v1057 & 3;
      if (!v443)
      {
        return 0;
      }

      sub_298B0A034(v1061, 1, a0123456789Abcd_0[(v1058 >> 5) & 0x1F]);
      v444 = HIWORD(v1058) & 7;
      v445 = v1061;
      goto LABEL_341;
    case 500:
      v801 = a3;
      v802 = a4;
      v803 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v803 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v802, (v801 >> 5) & 0x1F);
      v177 = HIWORD(v801) & 0xF | 0x10;
      goto LABEL_617;
    case 501:
      v1631 = a3;
      v914 = a4;
      v2069 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v886 = v2069 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B0A034(v914, 1, a0123456789Abcd_0[(v1631 >> 5) & 0x1F]);
      goto LABEL_1999;
    case 502:
      v773 = a3;
      v774 = a4;
      v775 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v775 & 3;
      if (!v176)
      {
        return 0;
      }

      v776 = word_298DFC574[(v773 >> 5) & 0x1F];
      v777 = *(v774 + 24);
      if (v777 >= *(v774 + 28))
      {
        sub_298B90A44(v774 + 16, (v774 + 32), v777 + 1, 16);
        LODWORD(v777) = *(v774 + 24);
      }

      v178 = v774;
      v778 = (*(v774 + 16) + 16 * v777);
      *v778 = 1;
      v778[1] = v776;
      ++*(v774 + 24);
      v177 = HIWORD(v773) & 0x1F | 0x20;
      v179 = 64;
      goto LABEL_141;
    case 503:
      v1633 = a3;
      v1486 = a4;
      v2070 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v886 = v2070 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B0A034(v1486, 1, a0123456789Abcd_0[(v1633 >> 5) & 0x1F]);
LABEL_1737:
      v887 = HIWORD(v1633) & 0x1F;
LABEL_1738:
      v888 = v1486;
      goto LABEL_1739;
    case 504:
      v856 = result;
      v857 = a3;
      v858 = word_298DFC574[a3 & 0x1F];
      v859 = *(a4 + 24);
      v805 = a4;
      if (v859 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v859 + 1, 16);
        LODWORD(v859) = *(v805 + 24);
      }

      v860 = (*(v805 + 16) + 16 * v859);
      *v860 = 1;
      v860[1] = v858;
      v861 = (*(v805 + 24) + 1);
      *(v805 + 24) = v861;
      v807 = v856 & 3;
      if (!v807)
      {
        return 0;
      }

      if (v861 >= *(v805 + 28))
      {
        sub_298B90A44(v805 + 16, (v805 + 32), v861 + 1, 16);
        LODWORD(v861) = *(v805 + 24);
      }

      v862 = (*(v805 + 16) + 16 * v861);
      *v862 = 1;
      v862[1] = v858;
      v863 = *(v805 + 28);
      v864 = (*(v805 + 24) + 1);
      *(v805 + 24) = v864;
      v865 = word_298DFC574[(v857 >> 5) & 0x1F];
      if (v864 >= v863)
      {
        sub_298B90A44(v805 + 16, (v805 + 32), v864 + 1, 16);
        LODWORD(v864) = *(v805 + 24);
      }

      v866 = (*(v805 + 16) + 16 * v864);
      *v866 = 1;
      v866[1] = v865;
      v867 = *(v805 + 28);
      v868 = (*(v805 + 24) + 1);
      *(v805 + 24) = v868;
      v869 = word_298DFC574[HIWORD(v857) & 7];
      if (v868 >= v867)
      {
        sub_298B90A44(v805 + 16, (v805 + 32), v868 + 1, 16);
        LODWORD(v868) = *(v805 + 24);
      }

      v870 = (*(v805 + 16) + 16 * v868);
      *v870 = 1;
      v870[1] = v869;
      v871 = *(v805 + 28);
      v812 = (*(v805 + 24) + 1);
      *(v805 + 24) = v812;
      v813 = (v857 >> 8) & 8 | (v857 >> 19) & 7;
      goto LABEL_667;
    case 505:
      v439 = a3;
      v440 = a0123456789Abcd_0[a3 & 0x1F];
      v441 = a4;
      v442 = result;
      sub_298B0A034(a4, 1, v440);
      v443 = v442 & 3;
      if (!v443)
      {
        return 0;
      }

      sub_298B0A034(v441, 1, v440);
      sub_298B0A034(v441, 1, a0123456789Abcd_0[(v439 >> 5) & 0x1F]);
      v444 = HIWORD(v439) & 7;
      v445 = v441;
LABEL_341:
      v446 = 8;
      goto LABEL_342;
    case 506:
      v2279 = a3;
      v2280 = a0123456789Abcd_0[a3 & 0x1F];
      v2281 = a4;
      v2282 = result;
      sub_298B0A034(a4, 1, v2280);
      v443 = v2282 & 3;
      if (!v443)
      {
        return 0;
      }

      sub_298B0A034(v2281, 1, v2280);
      sub_298B0A034(v2281, 1, a0123456789Abcd_0[(v2279 >> 5) & 0x1F]);
      v444 = HIWORD(v2279) & 0xF;
      v445 = v2281;
      v446 = 16;
      goto LABEL_342;
    case 507:
      v2283 = a3;
      v2284 = a0123456789Abcd_0[a3 & 0x1F];
      v2285 = a4;
      v2286 = result;
      sub_298B0A034(a4, 1, v2284);
      v443 = v2286 & 3;
      if (!v443)
      {
        return 0;
      }

      sub_298B0A034(v2285, 1, v2284);
      sub_298B0A034(v2285, 1, a0123456789Abcd_0[(v2283 >> 5) & 0x1F]);
      v444 = HIWORD(v2283) & 0x1F;
      v445 = v2285;
      v446 = 32;
      goto LABEL_342;
    case 508:
      v2287 = a3;
      v911 = a4;
      v2288 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2288 & 3;
      if (!v46)
      {
        return 0;
      }

      v2289 = v2287;
      sub_298B1A1C4(v911, v2287 & 0x1F);
      sub_298B1A1C4(v911, (v2287 >> 5) & 0x1F);
      goto LABEL_2043;
    case 509:
      v1001 = result;
      v1002 = a3;
      v1003 = word_298DFC574[a3 & 0x1F];
      v1004 = *(a4 + 24);
      v895 = a4;
      if (v1004 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v1004 + 1, 16);
        LODWORD(v1004) = *(v895 + 24);
      }

      v1005 = (*(v895 + 16) + 16 * v1004);
      *v1005 = 1;
      v1005[1] = v1003;
      v1006 = (*(v895 + 24) + 1);
      *(v895 + 24) = v1006;
      v897 = v1001 & 3;
      if (!v897)
      {
        return 0;
      }

      if (v1006 >= *(v895 + 28))
      {
        sub_298B90A44(v895 + 16, (v895 + 32), v1006 + 1, 16);
        LODWORD(v1006) = *(v895 + 24);
      }

      v1007 = (*(v895 + 16) + 16 * v1006);
      *v1007 = 1;
      v1007[1] = v1003;
      v1008 = *(v895 + 28);
      v1009 = (*(v895 + 24) + 1);
      *(v895 + 24) = v1009;
      v1010 = word_298DFC574[(v1002 >> 5) & 0x1F];
      if (v1009 >= v1008)
      {
        sub_298B90A44(v895 + 16, (v895 + 32), v1009 + 1, 16);
        LODWORD(v1009) = *(v895 + 24);
      }

      v1011 = (*(v895 + 16) + 16 * v1009);
      *v1011 = 1;
      v1011[1] = v1010;
      ++*(v895 + 24);
      sub_298B1A1C4(v895, HIWORD(v1002) & 0xF);
      v1012 = (v1002 >> 9) & 4 | (v1002 >> 20) & 3;
      v1013 = *(v895 + 24);
      if (v1013 >= *(v895 + 28))
      {
        sub_298B90A44(v895 + 16, (v895 + 32), v1013 + 1, 16);
        LODWORD(v1013) = *(v895 + 24);
      }

      v1014 = (*(v895 + 16) + 16 * v1013);
      *v1014 = 2;
      v1014[1] = v1012;
      goto LABEL_693;
    case 510:
      v2290 = a3;
      v44 = a4;
      v2291 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2291 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2290 >> 5) & 0x1F);
      goto LABEL_2028;
    case 511:
      v1624 = a3;
      v1475 = a4;
      v2292 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2292 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1475, (v1624 >> 5) & 0x1F);
      goto LABEL_1983;
    case 512:
      v1449 = a3;
      v1450 = a4;
      v2293 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2293 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1450, (v1449 >> 5) & 0x1F);
      goto LABEL_1988;
    case 513:
      v2294 = a3;
      v174 = a4;
      v2295 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2295 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v174, (v2294 >> 5) & 0x1F);
      v177 = HIWORD(v2294) & 0x1F;
      goto LABEL_139;
    case 514:
      v2296 = a3;
      v2297 = a4;
      v2298 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2298 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v2297, v2296 & 0x1F);
      sub_298B1A1C4(v2297, (v2296 >> 5) & 0x1F);
      v177 = HIWORD(v2296) & 7;
      v178 = v2297;
      goto LABEL_1985;
    case 515:
      v928 = result;
      v929 = a3;
      v930 = word_298DFC574[a3 & 0x1F];
      v931 = *(a4 + 24);
      v932 = a4;
      if (v931 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v931 + 1, 16);
        LODWORD(v931) = *(v932 + 24);
      }

      v933 = (*(v932 + 16) + 16 * v931);
      *v933 = 1;
      v933[1] = v930;
      v934 = (*(v932 + 24) + 1);
      *(v932 + 24) = v934;
      v935 = v928 & 3;
      if (!v935)
      {
        return 0;
      }

      v936 = word_298DFC574[(v929 >> 5) & 0x1F];
      if (v934 >= *(v932 + 28))
      {
        sub_298B90A44(v932 + 16, (v932 + 32), v934 + 1, 16);
        LODWORD(v934) = *(v932 + 24);
      }

      v937 = v932;
      v938 = (*(v932 + 16) + 16 * v934);
      *v938 = 1;
      v938[1] = v936;
      ++*(v932 + 24);
      v939 = HIWORD(v929) & 7;
      v940 = 8;
      goto LABEL_721;
    case 516:
      v2299 = a3;
      v1559 = a4;
      v2300 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2300 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1559, v2299 & 0x1F);
      sub_298B1A1C4(v1559, (v2299 >> 5) & 0x1F);
      v177 = HIWORD(v2299) & 0xF;
      goto LABEL_2004;
    case 517:
      v1631 = a3;
      v914 = a4;
      v2301 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v886 = v2301 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B1A1C4(v914, (v1631 >> 5) & 0x1F);
LABEL_1999:
      v887 = HIWORD(v1631) & 0xF;
LABEL_703:
      v888 = v914;
      v889 = 16;
      goto LABEL_706;
    case 518:
      v2302 = a3;
      v802 = a4;
      v2303 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2303 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v802, v2302 & 0x1F);
      sub_298B1A1C4(v802, (v2302 >> 5) & 0x1F);
      v177 = HIWORD(v2302) & 0x1F;
LABEL_617:
      v178 = v802;
      goto LABEL_140;
    case 519:
      v1015 = result;
      v1016 = a3;
      v1017 = word_298DFC574[a3 & 0x1F];
      v1018 = *(a4 + 24);
      v1019 = a4;
      if (v1018 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v1018 + 1, 16);
        LODWORD(v1018) = *(v1019 + 24);
      }

      v1020 = (*(v1019 + 16) + 16 * v1018);
      *v1020 = 1;
      v1020[1] = v1017;
      v1021 = (*(v1019 + 24) + 1);
      *(v1019 + 24) = v1021;
      v935 = v1015 & 3;
      if (!v935)
      {
        return 0;
      }

      v1022 = word_298DFC574[(v1016 >> 5) & 0x1F];
      if (v1021 >= *(v1019 + 28))
      {
        sub_298B90A44(v1019 + 16, (v1019 + 32), v1021 + 1, 16);
        LODWORD(v1021) = *(v1019 + 24);
      }

      v937 = v1019;
      v1023 = (*(v1019 + 16) + 16 * v1021);
      *v1023 = 1;
      v1023[1] = v1022;
      ++*(v1019 + 24);
      v939 = HIWORD(v1016) & 0x1F;
      v940 = 32;
LABEL_721:
      sub_298B1DBB8(v937, v939, v940);
      return v935;
    case 520:
      v2304 = a3;
      v1559 = a4;
      v2305 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2305 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1559, v2304 & 0x1F);
      sub_298B1A1C4(v1559, (v2304 >> 5) & 0x1F);
      v177 = HIWORD(v2304) & 7 | 8;
LABEL_2004:
      v178 = v1559;
      goto LABEL_1990;
    case 521:
      v704 = a3;
      v705 = word_298DFC574[a3 & 0x1F];
      v706 = *(a4 + 24);
      if (v706 >= *(a4 + 28))
      {
        v2402 = result;
        v2403 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v706 + 1, 16);
        LOBYTE(result) = v2402;
        a4 = v2403;
        LODWORD(v706) = *(v2403 + 24);
      }

      v707 = (*(a4 + 16) + 16 * v706);
      *v707 = 1;
      v707[1] = v705;
      v708 = (*(a4 + 24) + 1);
      *(a4 + 24) = v708;
      v176 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      if (v708 >= *(a4 + 28))
      {
        v2404 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v708 + 1, 16);
        a4 = v2404;
        LODWORD(v708) = *(v2404 + 24);
      }

      v709 = (*(a4 + 16) + 16 * v708);
      *v709 = 1;
      v709[1] = v705;
      v710 = *(a4 + 28);
      v711 = (*(a4 + 24) + 1);
      *(a4 + 24) = v711;
      v712 = v704;
      v713 = word_298DFC574[(v704 >> 5) & 0x1F];
      if (v711 >= v710)
      {
        v2405 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v711 + 1, 16);
        v712 = v704;
        a4 = v2405;
        LODWORD(v711) = *(v2405 + 24);
      }

      v714 = (*(a4 + 16) + 16 * v711);
      *v714 = 1;
      v714[1] = v713;
      ++*(a4 + 24);
      v177 = HIWORD(v712) & 0xF | 0x10;
      v178 = a4;
      goto LABEL_140;
    case 522:
      v2306 = a3;
      v1565 = a4;
      v2307 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2307 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1565, v2306 & 0x1F);
      sub_298B1A1C4(v1565, (v2306 >> 5) & 0x1F);
      v177 = HIWORD(v2306) & 0x1F | 0x20;
      goto LABEL_2035;
    case 523:
      v2308 = a3;
      v2309 = a4;
      v2310 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v886 = v2310 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B1A1C4(v2309, v2308 & 0x1F);
      sub_298B1A1C4(v2309, (v2308 >> 5) & 0x1F);
      v887 = HIWORD(v2308) & 7;
      v888 = v2309;
LABEL_682:
      v889 = 8;
      goto LABEL_706;
    case 524:
      v2311 = a3;
      v2312 = a4;
      v2313 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v886 = v2313 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B1A1C4(v2312, v2311 & 0x1F);
      sub_298B1A1C4(v2312, (v2311 >> 5) & 0x1F);
      v887 = HIWORD(v2311) & 0xF;
      v888 = v2312;
      v889 = 16;
      goto LABEL_706;
    case 525:
      v2315 = a3;
      v2316 = a4;
      v2317 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v886 = v2317 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B1A1C4(v2316, v2315 & 0x1F);
      sub_298B1A1C4(v2316, (v2315 >> 5) & 0x1F);
      v887 = HIWORD(v2315) & 0x1F;
      v888 = v2316;
LABEL_1739:
      v889 = 32;
      goto LABEL_706;
    case 526:
      v2320 = a3;
      v911 = a4;
      v2321 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2321 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v911, v2320 & 0x1F);
      sub_298B0A034(v911, 1, a0123456789Abcd_0[(v2320 >> 5) & 0x1F]);
      sub_298B1A1C4(v911, HIWORD(v2320) & 0xF);
      v50 = (v2320 >> 9) & 4 | (v2320 >> 20) & 3;
      goto LABEL_700;
    case 527:
      v2290 = a3;
      v44 = a4;
      v2324 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2324 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, a0123456789Abcd_0[(v2290 >> 5) & 0x1F]);
LABEL_2028:
      sub_298B1A1C4(v44, HIWORD(v2290) & 0xF);
      v50 = (v2290 >> 9) & 4 | (v2290 >> 20) & 3;
      goto LABEL_43;
    case 528:
      v2325 = a3;
      v2326 = a0123456789Abcd_0[a3 & 0x1F];
      v892 = a4;
      v2327 = result;
      sub_298B0A034(a4, 1, v2326);
      v364 = v2327 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v892, 1, v2326);
      sub_298B0A034(v892, 1, a0123456789Abcd_0[(v2325 >> 5) & 0x1F]);
      sub_298B1A1C4(v892, HIWORD(v2325) & 0x1F);
      sub_298B0A034(v892, 2, (v2325 >> 21) & 1);
      v367 = (v2325 >> 13) & 3;
      goto LABEL_685;
    case 529:
      v2328 = a3;
      v1453 = a4;
      v2329 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2329 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1453, (v2328 >> 5) & 0x1F);
      v177 = HIWORD(v2328) & 0x3F;
      goto LABEL_1255;
    case 530:
      v2330 = a3;
      v1565 = a4;
      v2331 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2331 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1565, v2330 & 0x1F);
      sub_298B1A1C4(v1565, (v2330 >> 5) & 0x1F);
      v177 = HIWORD(v2330) & 0x3F;
LABEL_2035:
      v178 = v1565;
      goto LABEL_1256;
    case 531:
      v2332 = a3;
      v1492 = a4;
      v2333 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v886 = v2333 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B1A1C4(v1492, (v2332 >> 5) & 0x1F);
      v887 = HIWORD(v2332) & 0x3F;
LABEL_2038:
      v888 = v1492;
      v889 = 64;
      goto LABEL_706;
    case 532:
      v2334 = a3;
      v911 = a4;
      v2335 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2335 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v911, v2334 & 0x1F);
      sub_298B1A1C4(v911, (v2334 >> 5) & 0x1F);
      sub_298B1A1C4(v911, HIWORD(v2334) & 0x1F);
      sub_298B0A034(v911, 2, (v2334 >> 10) & 2 | (v2334 >> 21) & 1);
      v50 = (v2334 >> 13) & 3;
      goto LABEL_700;
    case 533:
      v646 = a3;
      v647 = a3 & 0x1F;
      v648 = word_298DFC574[a3 & 0x1F];
      v649 = *(a4 + 24);
      if (v649 >= *(a4 + 28))
      {
        v2385 = result;
        v2386 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v649 + 1, 16);
        LOBYTE(result) = v2385;
        a4 = v2386;
        LODWORD(v649) = *(v2386 + 24);
      }

      v650 = (*(a4 + 16) + 16 * v649);
      *v650 = 1;
      v650[1] = v648;
      ++*(a4 + 24);
      v443 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v651 = v647;
      v652 = a4;
      sub_298B1A1C4(a4, v651);
      sub_298B1A1C4(v652, (v646 >> 5) & 0x1F);
      v444 = HIWORD(v646) & 0x3F;
      v445 = v652;
      v446 = 64;
LABEL_342:
      sub_298B1DBB8(v445, v444, v446);
      return v443;
    case 534:
      v2336 = a3;
      v911 = a4;
      v2337 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2337 & 3;
      if (!v46)
      {
        return 0;
      }

      v2289 = v2336;
      sub_298B1A1C4(v911, v2336 & 0x1F);
      sub_298B0A034(v911, 1, a0123456789Abcd_0[(v2336 >> 5) & 0x1F]);
LABEL_2043:
      sub_298B1A1C4(v911, HIWORD(v2289) & 0x1F);
      v50 = (v2289 >> 10) & 2 | (v2289 >> 21) & 1;
      goto LABEL_700;
    case 535:
      v763 = a3;
      v764 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v44 = a4;
      v765 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v46 = v765 & 3;
      if (v46)
      {
        goto LABEL_588;
      }

      return 0;
    case 536:
      v688 = a3;
      v44 = a4;
      v2338 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2338 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, a0123456789Abcd_0[(v688 >> 5) & 0x1F]);
      goto LABEL_543;
    case 537:
      v684 = a3;
      v685 = word_298DFC574[a3 & 0x1F];
      v686 = *(a4 + 24);
      if (v686 >= *(a4 + 28))
      {
        v2396 = result;
        v2397 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v686 + 1, 16);
        LOBYTE(result) = v2396;
        a4 = v2397;
        LODWORD(v686) = *(v2397 + 24);
      }

      v687 = (*(a4 + 16) + 16 * v686);
      *v687 = 1;
      v687[1] = v685;
      ++*(a4 + 24);
      v46 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v688 = v684;
      v689 = (v684 >> 5) & 0x1F;
      v44 = a4;
      sub_298B1A1C4(a4, v689);
      goto LABEL_543;
    case 538:
      v955 = result;
      v956 = a3;
      v957 = word_298DFC574[a3 & 0x1F];
      v958 = *(a4 + 24);
      v805 = a4;
      if (v958 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v958 + 1, 16);
        LODWORD(v958) = *(v805 + 24);
      }

      v959 = (*(v805 + 16) + 16 * v958);
      *v959 = 1;
      v959[1] = v957;
      v960 = (*(v805 + 24) + 1);
      *(v805 + 24) = v960;
      v807 = v955 & 3;
      if (!v807)
      {
        return 0;
      }

      if (v960 >= *(v805 + 28))
      {
        sub_298B90A44(v805 + 16, (v805 + 32), v960 + 1, 16);
        LODWORD(v960) = *(v805 + 24);
      }

      v961 = (*(v805 + 16) + 16 * v960);
      *v961 = 1;
      v961[1] = v957;
      v962 = *(v805 + 28);
      v963 = (*(v805 + 24) + 1);
      *(v805 + 24) = v963;
      v964 = word_298DFC574[(v956 >> 5) & 0x1F];
      if (v963 >= v962)
      {
        sub_298B90A44(v805 + 16, (v805 + 32), v963 + 1, 16);
        LODWORD(v963) = *(v805 + 24);
      }

      v965 = (*(v805 + 16) + 16 * v963);
      *v965 = 1;
      v965[1] = v964;
      v966 = *(v805 + 28);
      v967 = (*(v805 + 24) + 1);
      *(v805 + 24) = v967;
      v968 = word_298DFC574[HIWORD(v956) & 0x1F];
      if (v967 >= v966)
      {
        sub_298B90A44(v805 + 16, (v805 + 32), v967 + 1, 16);
        LODWORD(v967) = *(v805 + 24);
      }

      v969 = (*(v805 + 16) + 16 * v967);
      *v969 = 1;
      v969[1] = v968;
      v970 = *(v805 + 28);
      v971 = (*(v805 + 24) + 1);
      *(v805 + 24) = v971;
      if (v971 >= v970)
      {
        sub_298B90A44(v805 + 16, (v805 + 32), v971 + 1, 16);
        LODWORD(v971) = *(v805 + 24);
      }

      v972 = (*(v805 + 16) + 16 * v971);
      *v972 = 2;
      v972[1] = (v956 >> 11) & 1;
      v871 = *(v805 + 28);
      v812 = (*(v805 + 24) + 1);
      *(v805 + 24) = v812;
      v813 = (v956 >> 13) & 3;
      goto LABEL_667;
    case 539:
      v1862 = a3;
      v911 = a4;
      v1863 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v1863 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v911, v1862 & 0x1F);
      sub_298B1A1C4(v911, (v1862 >> 5) & 0x1F);
      sub_298B1A1C4(v911, HIWORD(v1862) & 0x1F);
      v50 = (v1862 >> 11) & 1;
LABEL_700:
      v51 = v911;
      goto LABEL_44;
    case 540:
      v1864 = a3;
      v44 = a4;
      v1865 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v1865 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v1864 >> 5) & 0x1F);
      sub_298B1A1C4(v44, HIWORD(v1864) & 0x1F);
      v50 = (v1864 >> 11) & 1;
      goto LABEL_43;
    case 541:
      v1866 = result;
      sub_298B1B6B8(a4, a3, a5, a6);
      return v1866 & 3;
    case 542:
      v260 = word_298DFB8C4[a3 & 0x1F];
      v261 = *(a4 + 24);
      if (v261 >= *(a4 + 28))
      {
        v1112 = result;
        v1113 = a3;
        v1114 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v261 + 1, 16);
        LOBYTE(result) = v1112;
        LODWORD(a3) = v1113;
        a4 = v1114;
        LODWORD(v261) = *(v1114 + 24);
      }

      v262 = (*(a4 + 16) + 16 * v261);
      *v262 = 1;
      v262[1] = v260;
      v263 = (*(a4 + 24) + 1);
      *(a4 + 24) = v263;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v264 = result;
      v265 = word_298DFB8C4[(a3 >> 5) & 0x1F];
      if (v263 >= *(a4 + 28))
      {
        v1130 = a3;
        v1131 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v263 + 1, 16);
        LODWORD(a3) = v1130;
        a4 = v1131;
        LODWORD(v263) = *(v1131 + 24);
      }

      v266 = (*(a4 + 16) + 16 * v263);
      *v266 = 1;
      v266[1] = v265;
      ++*(a4 + 24);
      if (((a3 >> 10) & 0x80) != 0)
      {
        v267 = (a3 >> 10) | 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        v267 = (a3 >> 10);
      }

      v268 = a4;
LABEL_215:
      v269 = 2;
LABEL_216:
      sub_298B0A034(v268, v269, v267);
      return v264;
    case 543:
      v533 = word_298DFB8C4[a3 & 0x1F];
      v534 = *(a4 + 24);
      if (v534 >= *(a4 + 28))
      {
        v1171 = result;
        v1172 = a3;
        v1173 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v534 + 1, 16);
        LOBYTE(result) = v1171;
        LODWORD(a3) = v1172;
        a4 = v1173;
        LODWORD(v534) = *(v1173 + 24);
      }

      v535 = (*(a4 + 16) + 16 * v534);
      *v535 = 1;
      v535[1] = v533;
      v536 = (*(a4 + 24) + 1);
      *(a4 + 24) = v536;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v537 = word_298DFB8C4[(a3 >> 5) & 0x1F];
      if (v536 >= *(a4 + 28))
      {
        v1174 = result;
        v1175 = a3;
        v1176 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v536 + 1, 16);
        result = v1174;
        LODWORD(a3) = v1175;
        a4 = v1176;
        LODWORD(v536) = *(v1176 + 24);
      }

      v538 = (*(a4 + 16) + 16 * v536);
      *v538 = 1;
      v538[1] = v537;
      v37 = *(a4 + 28);
      v38 = (*(a4 + 24) + 1);
      *(a4 + 24) = v38;
      v19 = (a3 >> 10);
      goto LABEL_33;
    case 544:
      return sub_298B1B808(a4, a3, a5, a6) & result;
    case 545:
      v43 = a3;
      v44 = a4;
      v45 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v45 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFBCEE[(v43 >> 5) & 0x1F]);
      v47 = (v43 >> 10);
      v48 = v47 | 0xFFFFFFFFFFFFFF00;
      v49 = ((v43 >> 10) & 0x80) == 0;
      goto LABEL_40;
    case 546:
      v1915 = a3;
      v44 = a4;
      v1916 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v1916 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFBCEE[(v1915 >> 5) & 0x1F]);
      v50 = (v1915 >> 10);
      goto LABEL_43;
    case 547:
      v27 = word_298DFBD50[a3 & 0x1F];
      v28 = *(a4 + 24);
      if (v28 >= *(a4 + 28))
      {
        v723 = result;
        v724 = a3;
        v725 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v28 + 1, 16);
        LOBYTE(result) = v723;
        LODWORD(a3) = v724;
        a4 = v725;
        LODWORD(v28) = *(v725 + 24);
      }

      v29 = (*(a4 + 16) + 16 * v28);
      *v29 = 1;
      v29[1] = v27;
      v30 = (*(a4 + 24) + 1);
      *(a4 + 24) = v30;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v31 = word_298DFBD50[(a3 >> 5) & 0x1F];
      if (v30 >= *(a4 + 28))
      {
        v726 = result;
        v727 = a3;
        v728 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v30 + 1, 16);
        result = v726;
        LODWORD(a3) = v727;
        a4 = v728;
        LODWORD(v30) = *(v728 + 24);
      }

      v32 = (*(a4 + 16) + 16 * v30);
      *v32 = 1;
      v32[1] = v31;
      v33 = *(a4 + 28);
      v34 = (*(a4 + 24) + 1);
      *(a4 + 24) = v34;
      v35 = WORD1(a3) & 0x3F;
      if (v34 >= v33)
      {
        v729 = result;
        v730 = a3;
        v731 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v34 + 1, 16);
        result = v729;
        LODWORD(a3) = v730;
        a4 = v731;
        LODWORD(v34) = *(v731 + 24);
      }

      v36 = (*(a4 + 16) + 16 * v34);
      *v36 = 2;
      v36[1] = v35;
      v37 = *(a4 + 28);
      v38 = (*(a4 + 24) + 1);
      *(a4 + 24) = v38;
      v19 = (a3 >> 10) & 0xF;
      goto LABEL_33;
    case 548:
      return sub_298B1BA24(a4, a3) & result;
    case 549:
      return sub_298B1BBEC(a4, a3) & result;
    case 550:
      v2093 = a3;
      v44 = a4;
      v2094 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2094 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A55C(v44, (v2093 >> 5) & 0x1F);
      sub_298B0A034(v44, 2, HIWORD(v2093) & 0x1F);
      v50 = (v2093 >> 10) & 0x1F;
      goto LABEL_43;
    case 551:
      v53 = word_298DFB8C4[a3 & 0x1F];
      v54 = *(a4 + 24);
      if (v54 >= *(a4 + 28))
      {
        v941 = result;
        v942 = a3;
        v943 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v54 + 1, 16);
        LOBYTE(result) = v941;
        LODWORD(a3) = v942;
        a4 = v943;
        LODWORD(v54) = *(v943 + 24);
      }

      v55 = (*(a4 + 16) + 16 * v54);
      *v55 = 1;
      v55[1] = v53;
      v56 = (*(a4 + 24) + 1);
      *(a4 + 24) = v56;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v57 = word_298DFB8C4[(a3 >> 5) & 0x1F];
      if (v56 >= *(a4 + 28))
      {
        v944 = result;
        v945 = a3;
        v946 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v56 + 1, 16);
        result = v944;
        LODWORD(a3) = v945;
        a4 = v946;
        LODWORD(v56) = *(v946 + 24);
      }

      v58 = (*(a4 + 16) + 16 * v56);
      *v58 = 1;
      v58[1] = v57;
      v59 = *(a4 + 28);
      v60 = (*(a4 + 24) + 1);
      *(a4 + 24) = v60;
      v61 = word_298DFB8C4[WORD1(a3) & 0x1F];
      if (v60 >= v59)
      {
        v947 = result;
        v948 = a3;
        v949 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v60 + 1, 16);
        result = v947;
        LODWORD(a3) = v948;
        a4 = v949;
        LODWORD(v60) = *(v949 + 24);
      }

      v62 = (*(a4 + 16) + 16 * v60);
      v63 = 1;
      goto LABEL_56;
    case 552:
      v39 = word_298DFB8C4[a3 & 0x1F];
      v40 = *(a4 + 24);
      if (v40 >= *(a4 + 28))
      {
        v825 = result;
        v826 = a3;
        v827 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v40 + 1, 16);
        LOBYTE(result) = v825;
        LODWORD(a3) = v826;
        a4 = v827;
        LODWORD(v40) = *(v827 + 24);
      }

      v41 = (*(a4 + 16) + 16 * v40);
      *v41 = 1;
      v41[1] = v39;
      v42 = (*(a4 + 24) + 1);
      *(a4 + 24) = v42;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      if (v42 >= *(a4 + 28))
      {
        v1042 = result;
        v1043 = a3;
        v1044 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v42 + 1, 16);
        result = v1042;
        LODWORD(a3) = v1043;
        a4 = v1044;
        LODWORD(v42) = *(v1044 + 24);
      }

      v180 = (*(a4 + 16) + 16 * v42);
      *v180 = 1;
      v180[1] = v39;
      v181 = *(a4 + 28);
      v182 = (*(a4 + 24) + 1);
      *(a4 + 24) = v182;
      v183 = word_298DFB8C4[(a3 >> 5) & 0x1F];
      if (v182 >= v181)
      {
        v1045 = result;
        v1046 = a3;
        v1047 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v182 + 1, 16);
        result = v1045;
        LODWORD(a3) = v1046;
        a4 = v1047;
        LODWORD(v182) = *(v1047 + 24);
      }

      v184 = (*(a4 + 16) + 16 * v182);
      *v184 = 1;
      v184[1] = v183;
      v185 = *(a4 + 28);
      v186 = (*(a4 + 24) + 1);
      *(a4 + 24) = v186;
      v61 = WORD1(a3) & 0x1F;
      if (v186 >= v185)
      {
        v1048 = result;
        v1049 = a3;
        v1050 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v186 + 1, 16);
        result = v1048;
        LODWORD(a3) = v1049;
        a4 = v1050;
        LODWORD(v186) = *(v1050 + 24);
      }

      v62 = (*(a4 + 16) + 16 * v186);
      v63 = 2;
LABEL_56:
      *v62 = v63;
      v62[1] = v61;
      v37 = *(a4 + 28);
      v38 = (*(a4 + 24) + 1);
      *(a4 + 24) = v38;
      v19 = (a3 >> 10) & 0x1F;
      goto LABEL_33;
    case 553:
      v894 = a3;
      v895 = a4;
      v896 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v897 = v896 & 3;
      if (!v897)
      {
        return 0;
      }

      sub_298B0A034(v895, 1, word_298DFBCEE[(v894 >> 5) & 0x1F]);
      v898 = *(v895 + 24);
      if (v898 >= *(v895 + 28))
      {
        sub_298B90A44(v895 + 16, (v895 + 32), v898 + 1, 16);
        LODWORD(v898) = *(v895 + 24);
      }

      v899 = (*(v895 + 16) + 16 * v898);
      *v899 = 2;
      v899[1] = HIWORD(v894) & 0x3F;
      v900 = *(v895 + 28);
      v901 = (*(v895 + 24) + 1);
      *(v895 + 24) = v901;
      if (v901 >= v900)
      {
        sub_298B90A44(v895 + 16, (v895 + 32), v901 + 1, 16);
        LODWORD(v901) = *(v895 + 24);
      }

      v902 = (*(v895 + 16) + 16 * v901);
      *v902 = 2;
      v902[1] = v894 >> 10;
LABEL_693:
      ++*(v895 + 24);
      return v897;
    case 554:
      v225 = a3;
      v226 = a4;
      v227 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v205 = v227 & 3;
      if (!v205)
      {
        return 0;
      }

      v228 = v225;
      v229 = word_298DFBCEE[(v225 >> 5) & 0x1F];
      v206 = v226;
      sub_298B0A034(v226, 1, v229);
      sub_298B0A034(v226, 1, word_298DFBCEE[HIWORD(v228) & 0x1F]);
      v207 = v228 >> 10;
LABEL_175:
      v230 = *(v226 + 24);
      if (v230 >= *(v226 + 28))
      {
        sub_298B90A44(v206 + 16, (v206 + 32), v230 + 1, 16);
        v206 = v226;
        LODWORD(v230) = *(v226 + 24);
      }

      v209 = (*(v206 + 16) + 16 * v230);
      v210 = 2;
      goto LABEL_178;
    case 555:
      v124 = a3;
      v125 = word_298DFBCEE[a3 & 0x1F];
      v126 = a4;
      v127 = result;
      sub_298B0A034(a4, 1, v125);
      v128 = v127 & 3;
      if (!v128)
      {
        return 0;
      }

      v129 = v126;
      sub_298B0A034(v126, 1, v125);
      sub_298B0A034(v126, 1, word_298DFBCEE[(v124 >> 5) & 0x1F]);
      v130 = v124;
      v131 = v126[6];
      if (v131 >= v126[7])
      {
        sub_298B90A44((v126 + 4), v126 + 8, v131 + 1, 16);
        v130 = v124;
        v129 = v126;
        LODWORD(v131) = v126[6];
      }

      v132 = (*(v129 + 2) + 16 * v131);
      *v132 = 2;
      v132[1] = HIWORD(v124) & 0x3F;
      v133 = v129[7];
      v134 = v129[6] + 1;
      v129[6] = v134;
      v135 = v130 >> 10;
      if (v134 >= v133)
      {
        sub_298B90A44((v129 + 4), v129 + 8, v134 + 1, 16);
        v129 = v126;
        LODWORD(v134) = v126[6];
      }

      v136 = (*(v129 + 2) + 16 * v134);
      *v136 = 2;
      v136[1] = v135;
      ++v129[6];
      return v128;
    case 556:
      v609 = -(a3 >> 5);
      v610 = *(a6 + 24);
      if (v610)
      {
        v611 = result;
        v612 = a4;
        LOBYTE(result) = (*(*v610 + 16))(v610, a4, *(a6 + 32), -4 * (a3 >> 5), a5, 0, 0, 0, 4);
        a4 = v612;
        v613 = result;
        LOBYTE(result) = v611;
        if (v613)
        {
          return result & 3;
        }
      }

      v614 = *(a4 + 24);
      if (v614 >= *(a4 + 28))
      {
        goto LABEL_498;
      }

      goto LABEL_505;
    case 557:
      if ((a3 >> 25))
      {
        v609 = a3 & 0x3FFFFFF | 0xFFFFFFFFFC000000;
      }

      else
      {
        v609 = a3 & 0x3FFFFFF;
      }

      v617 = *(a6 + 24);
      if (v617)
      {
        v618 = result;
        v619 = a4;
        LOBYTE(result) = (*(*v617 + 16))(v617, a4, *(a6 + 32), 4 * v609, a5, 1, 0, 0, 4);
        a4 = v619;
        v620 = result;
        LOBYTE(result) = v618;
        if (v620)
        {
          return result & 3;
        }
      }

      v614 = *(a4 + 24);
      if (v614 < *(a4 + 28))
      {
        goto LABEL_505;
      }

LABEL_498:
      v615 = result;
      v616 = a4;
      sub_298B90A44(a4 + 16, (a4 + 32), v614 + 1, 16);
      LOBYTE(result) = v615;
      a4 = v616;
      LODWORD(v614) = *(v616 + 24);
LABEL_505:
      v621 = (*(a4 + 16) + 16 * v614);
      *v621 = 2;
      v621[1] = v609;
      goto LABEL_308;
    case 558:
      v557 = word_298DFB8C4[a3 & 0x1F];
      v558 = *(a4 + 24);
      if (v558 >= *(a4 + 28))
      {
        v2345 = result;
        v2346 = a3;
        v2347 = a4;
        v2348 = a6;
        v2349 = a5;
        sub_298B90A44(a4 + 16, (a4 + 32), v558 + 1, 16);
        a5 = v2349;
        a6 = v2348;
        LOBYTE(result) = v2345;
        LODWORD(a3) = v2346;
        a4 = v2347;
        LODWORD(v558) = *(v2347 + 24);
      }

      v559 = (*(a4 + 16) + 16 * v558);
      *v559 = 1;
      v559[1] = v557;
      ++*(a4 + 24);
      v560 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      sub_298B1BDA0(a4, (a3 >> 5) & 0x7FFFF, a5, a6);
      return v560;
    case 559:
      v211 = a6;
      v212 = result;
      v213 = (a3 >> 26) & 0x20 | (a3 >> 19) & 0x1F;
      if (((a3 >> 5) & 0x2000) != 0)
      {
        v214 = (a3 >> 5) & 0x3FFF | 0xFFFFFFFFFFFFC000;
      }

      else
      {
        v214 = (a3 >> 5) & 0x3FFF;
      }

      v215 = a4;
      if ((a3 & 0x80000000) != 0)
      {
        sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      }

      else
      {
        sub_298B1A55C(a4, a3 & 0x1F);
      }

      v216 = v215;
      v217 = v215[6];
      v218 = v211;
      if (v217 >= v215[7])
      {
        sub_298B90A44((v215 + 4), v215 + 8, v217 + 1, 16);
        v218 = v211;
        v216 = v215;
        LODWORD(v217) = v215[6];
      }

      v219 = (*(v216 + 2) + 16 * v217);
      *v219 = 2;
      v219[1] = v213;
      v220 = v216[6] + 1;
      v216[6] = v220;
      v221 = *(v218 + 24);
      if (v221)
      {
        v222 = v216;
        v223 = (*(*v221 + 16))(v221);
        LOBYTE(result) = v212;
        if (v223)
        {
          return result & 3;
        }

        v216 = v222;
        v220 = v222[6];
      }

      else
      {
        LOBYTE(result) = v212;
      }

      if (v220 >= v216[7])
      {
        v1063 = v216;
        sub_298B90A44((v216 + 4), v216 + 8, v220 + 1, 16);
        LOBYTE(result) = v212;
        v216 = v1063;
        v220 = v1063[6];
      }

      v224 = (*(v216 + 2) + 16 * v220);
      *v224 = 2;
      v224[1] = v214;
      ++v216[6];
      return result & 3;
    case 560:
      v384 = result;
      v385 = a3 & 0xF;
      v386 = *(a4 + 24);
      if (v386 >= *(a4 + 28))
      {
        v1135 = a3;
        v1136 = a4;
        v1137 = a6;
        sub_298B90A44(a4 + 16, (a4 + 32), v386 + 1, 16);
        a6 = v1137;
        LODWORD(a3) = v1135;
        a4 = v1136;
        LODWORD(v386) = *(v1136 + 24);
      }

      v387 = (*(a4 + 16) + 16 * v386);
      *v387 = 2;
      v387[1] = v385;
      v388 = *(a4 + 24) + 1;
      *(a4 + 24) = v388;
      if (((a3 >> 5) & 0x40000) != 0)
      {
        v389 = (a3 >> 5) & 0x7FFFF | 0xFFFFFFFFFFF80000;
      }

      else
      {
        v389 = (a3 >> 5) & 0x7FFFF;
      }

      v390 = *(a6 + 24);
      if (v390)
      {
        v391 = a4;
        v392 = (*(*v390 + 16))(v390, a4, *(a6 + 32), 4 * v389);
        LOBYTE(result) = v384;
        if (v392)
        {
          return result & 3;
        }

        a4 = v391;
        v388 = *(v391 + 24);
      }

      else
      {
        LOBYTE(result) = v384;
      }

      if (*(a4 + 28) > v388)
      {
        goto LABEL_307;
      }

      goto LABEL_365;
    case 561:
      v2101 = a5;
      v2406 = a6;
      v2102 = a3;
      v2103 = a3 & 0x1F;
      v2104 = word_298DFBCEE;
      goto LABEL_1790;
    case 562:
      v19 = (a3 >> 5);
      goto LABEL_32;
    case 563:
      v76 = a3 & 0x1F;
      goto LABEL_70;
    case 564:
      v19 = (a3 >> 5) & 0x7F;
      goto LABEL_32;
    case 565:
      v19 = (a3 >> 8) & 0xC | 3;
      goto LABEL_32;
    case 566:
      v19 = (a3 >> 8) & 0xF;
LABEL_32:
      v38 = *(a4 + 24);
      v37 = *(a4 + 28);
LABEL_33:
      if (v38 >= v37)
      {
        v599 = result;
        v600 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v38 + 1, 16);
        result = v599;
        a4 = v600;
        LODWORD(v38) = *(v600 + 24);
      }

      v20 = (*(a4 + 16) + 16 * v38);
      v21 = 2;
      goto LABEL_36;
    case 567:
      v2248 = result;
      v1213 = a4;
      v2249 = a3;
      v2250 = (a3 >> 9) & 7;
      if ((v2250 - 4) >= 0xFFFFFFFD)
      {
        sub_298B0A034(a4, 2, v2250);
        v2251 = 3;
      }

      else
      {
        v2251 = 0;
      }

      v364 = v2251 & v2248;
      if (!v364)
      {
        return 0;
      }

      v367 = (v2249 >> 8) & 1;
      goto LABEL_2051;
    case 568:
      v601 = WORD1(a3) & 7;
      v602 = a3 >> 5;
      if (v601 || v602 >= 3)
      {
        v603 = a7;
        v663 = a6;
        v664 = result;
        v665 = (a3 >> 8) & 0xF;
        v666 = v602 | (8 * v601);
        v667 = *(a4 + 24);
        if (v667 >= *(a4 + 28))
        {
          v2392 = v666;
          v2393 = a4;
          sub_298B90A44(a4 + 16, (a4 + 32), v667 + 1, 16);
          v666 = v2392;
          a4 = v2393;
          LODWORD(v667) = *(v2393 + 24);
        }

        v668 = (*(a4 + 16) + 16 * v667);
        *v668 = 2;
        v668[1] = v666;
        v669 = *(a4 + 28);
        v670 = (*(a4 + 24) + 1);
        *(a4 + 24) = v670;
        if (v670 >= v669)
        {
          v2394 = v666;
          v2395 = a4;
          sub_298B90A44(a4 + 16, (a4 + 32), v670 + 1, 16);
          LODWORD(v666) = v2394;
          a4 = v2395;
          LODWORD(v670) = *(v2395 + 24);
        }

        v671 = (*(a4 + 16) + 16 * v670);
        *v671 = 2;
        v671[1] = v665;
        ++*(a4 + 24);
        v672 = sub_298CEEB34(v666);
        if (v672 && ((v673 = *(v663 + 16), v674 = *(v673 + 216), (*(v673 + 216) & 0x40) != 0) || (v675 = *(v673 + 232), v676 = *(v673 + 248), v677 = *(v673 + 264), v678 = *(v673 + 280), v679 = *(v672 + 2), __s1 = *(v672 + 1), v2409 = v679, v680 = *(v672 + 4), v2410 = *(v672 + 3), v2411 = v680, v681 = *(v672 + 6), v2412 = *(v672 + 5), v2413 = v681, v682 = *(v673 + 296), __s1 = vandq_s8(__s1, v674), v2409 = vandq_s8(v2409, v675), v2410 = vandq_s8(v2410, v676), v2411 = vandq_s8(v2411, v677), v2412 = vandq_s8(v2412, v678), v2413 = vandq_s8(v681, v682), !memcmp(&__s1, v672 + 2, 0x60uLL))))
        {
          v604 = 3;
        }

        else
        {
          v604 = 0;
        }

        LODWORD(result) = v664;
      }

      else
      {
        v603 = a7;
        v604 = 0;
      }

      v683 = v604 & result;
      if (v683)
      {
        return v683;
      }

      goto LABEL_1859;
    case 569:
      v79 = result;
      v787 = a3;
      v788 = WORD1(a3) & 7;
      v789 = *(a4 + 24);
      v790 = a4;
      if (v789 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v789 + 1, 16);
        LODWORD(v789) = *(v790 + 24);
      }

      v791 = (*(v790 + 16) + 16 * v789);
      *v791 = 2;
      v791[1] = v788;
      v792 = *(v790 + 28);
      v793 = (*(v790 + 24) + 1);
      *(v790 + 24) = v793;
      if (v793 >= v792)
      {
        sub_298B90A44(v790 + 16, (v790 + 32), v793 + 1, 16);
        LODWORD(v793) = *(v790 + 24);
      }

      v794 = (*(v790 + 16) + 16 * v793);
      *v794 = 2;
      v794[1] = v787 >> 12;
      v795 = *(v790 + 28);
      v796 = (*(v790 + 24) + 1);
      *(v790 + 24) = v796;
      if (v796 >= v795)
      {
        sub_298B90A44(v790 + 16, (v790 + 32), v796 + 1, 16);
        LODWORD(v796) = *(v790 + 24);
      }

      v797 = (*(v790 + 16) + 16 * v796);
      *v797 = 2;
      v797[1] = (v787 >> 8) & 0xF;
      v798 = *(v790 + 28);
      v799 = (*(v790 + 24) + 1);
      *(v790 + 24) = v799;
      if (v799 >= v798)
      {
        sub_298B90A44(v790 + 16, (v790 + 32), v799 + 1, 16);
        LODWORD(v799) = *(v790 + 24);
      }

      v80 = v790;
      v800 = (*(v790 + 16) + 16 * v799);
      *v800 = 2;
      v800[1] = v787 >> 5;
      ++*(v790 + 24);
      v78 = word_298DFBCEE[v787 & 0x1F];
      goto LABEL_72;
    case 570:
      v1064 = a3;
      v805 = a4;
      v1065 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v807 = v1065 & 3;
      if (!v807)
      {
        return 0;
      }

      v1066 = *(v805 + 24);
      if (v1066 >= *(v805 + 28))
      {
        sub_298B90A44(v805 + 16, (v805 + 32), v1066 + 1, 16);
        LODWORD(v1066) = *(v805 + 24);
      }

      v1067 = (*(v805 + 16) + 16 * v1066);
      *v1067 = 2;
      v1067[1] = HIWORD(v1064) & 7;
      v1068 = *(v805 + 28);
      v1069 = (*(v805 + 24) + 1);
      *(v805 + 24) = v1069;
      if (v1069 >= v1068)
      {
        sub_298B90A44(v805 + 16, (v805 + 32), v1069 + 1, 16);
        LODWORD(v1069) = *(v805 + 24);
      }

      v1070 = (*(v805 + 16) + 16 * v1069);
      *v1070 = 2;
      v1070[1] = v1064 >> 12;
      v1071 = *(v805 + 28);
      v1072 = (*(v805 + 24) + 1);
      *(v805 + 24) = v1072;
      if (v1072 >= v1071)
      {
        sub_298B90A44(v805 + 16, (v805 + 32), v1072 + 1, 16);
        LODWORD(v1072) = *(v805 + 24);
      }

      v1073 = (*(v805 + 16) + 16 * v1072);
      *v1073 = 2;
      v1073[1] = (v1064 >> 8) & 0xF;
      v871 = *(v805 + 28);
      v812 = (*(v805 + 24) + 1);
      *(v805 + 24) = v812;
      v813 = v1064 >> 5;
LABEL_667:
      if (v812 >= v871)
      {
        goto LABEL_668;
      }

      goto LABEL_624;
    case 571:
      v1074 = result;
      if ((~a3 & 0x1F) != 0)
      {
        return 0;
      }

      v1075 = a4;
      v1076 = a3;
      v1077 = a3 >> 12;
      v1078 = WORD1(a3) & 7;
      v1079 = *(a4 + 24);
      if (v1079 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v1079 + 1, 16);
        LODWORD(v1079) = *(v1075 + 24);
      }

      v1080 = (v1076 >> 8) & 0xF;
      v1081 = (*(v1075 + 16) + 16 * v1079);
      *v1081 = 2;
      v1081[1] = v1078;
      v1082 = *(v1075 + 28);
      v1083 = (*(v1075 + 24) + 1);
      *(v1075 + 24) = v1083;
      if (v1083 >= v1082)
      {
        sub_298B90A44(v1075 + 16, (v1075 + 32), v1083 + 1, 16);
        LODWORD(v1083) = *(v1075 + 24);
      }

      v1084 = v1076 >> 5;
      v1085 = (*(v1075 + 16) + 16 * v1083);
      *v1085 = 2;
      v1085[1] = v1077;
      v1086 = *(v1075 + 28);
      v1087 = (*(v1075 + 24) + 1);
      *(v1075 + 24) = v1087;
      if (v1087 >= v1086)
      {
        sub_298B90A44(v1075 + 16, (v1075 + 32), v1087 + 1, 16);
        LODWORD(v1087) = *(v1075 + 24);
      }

      v1088 = (*(v1075 + 16) + 16 * v1087);
      *v1088 = 2;
      v1088[1] = v1080;
      v1089 = *(v1075 + 28);
      v1090 = (*(v1075 + 24) + 1);
      *(v1075 + 24) = v1090;
      if (v1090 >= v1089)
      {
        sub_298B90A44(v1075 + 16, (v1075 + 32), v1090 + 1, 16);
        LODWORD(v1090) = *(v1075 + 24);
      }

      v1091 = (*(v1075 + 16) + 16 * v1090);
      *v1091 = 2;
      v1091[1] = v1084;
      v1092 = *(v1075 + 28);
      v1093 = (*(v1075 + 24) + 1);
      *(v1075 + 24) = v1093;
      if (v1093 >= v1092)
      {
        sub_298B90A44(v1075 + 16, (v1075 + 32), v1093 + 1, 16);
        LODWORD(v1093) = *(v1075 + 24);
      }

      *(*(v1075 + 16) + 16 * v1093) = xmmword_298CF7A10;
      ++*(v1075 + 24);
      return v1074 & 3;
    case 572:
      v2079 = result;
      v2080 = a3;
      v2081 = a4;
      sub_298B0A034(a4, 2, WORD1(a3) & 7);
      sub_298B0A034(v2081, 2, v2080 >> 12);
      sub_298B0A034(v2081, 2, (v2080 >> 8) & 0xF);
      sub_298B0A034(v2081, 2, v2080 >> 5);
      return sub_298B1DC44(v2081, 0x3Bu, v2080 & 0x1F) & v2079;
    case 573:
      v2082 = a3;
      v2083 = a4;
      v2084 = result;
      sub_298B0A034(a4, 2, (a3 >> 5));
      if ((v2084 & 3) == 0)
      {
        return 0;
      }

      return sub_298B1DC44(v2083, 0x3Bu, v2082 & 0x1F) & v2084;
    case 574:
      v2085 = a3;
      v44 = a4;
      v46 = sub_298B1DC44(a4, 0x3Bu, a3 & 0x1F) & result;
      if (!v46)
      {
        return 0;
      }

      v50 = (v2085 >> 5);
      goto LABEL_43;
    case 575:
      v76 = (a3 >> 5) & 0x1F;
LABEL_70:
      v77 = word_298DFBCEE;
      goto LABEL_71;
    case 576:
      v2086 = result;
      if ((a3 & 0x1F) == 0x1F)
      {
        v2087 = 0;
      }

      else
      {
        sub_298B0A034(a4, 1, word_298DFBDB2[a3 & 0x1F]);
        v2087 = 3;
      }

      return v2087 & v2086;
    case 577:
      v2088 = a3;
      v2089 = a4;
      v2090 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[(a3 >> 5) & 0x1F]);
      v2091 = v2090 & 3;
      if (!v2091)
      {
        return 0;
      }

      sub_298B1A150(v2089, v2088 & 0x1F);
      return v2091;
    case 578:
      return sub_298B1BE80(a4, a3) & result;
    case 579:
      return sub_298B1CA0C(a4, a3) & result;
    case 580:
      v74 = a3 & 0x1F;
      if (v74 == 31)
      {
        v75 = 0;
      }

      else
      {
        v104 = result;
        v105 = a3;
        v106 = a4;
        sub_298B0A034(a4, 1, word_298DFBDB2[a3 & 0x1F]);
        LODWORD(result) = v104;
        LODWORD(a3) = v105;
        a4 = v106;
        v75 = 3;
      }

      v107 = v75 & result;
      if ((v75 & result) == 0)
      {
        return 0;
      }

      v108 = WORD1(a3) & 0x1F;
      v109 = a3;
      if (v108 == 31)
      {
        v110 = 0;
      }

      else
      {
        v111 = a4;
        sub_298B0A034(a4, 1, word_298DFBDB2[v108]);
        a4 = v111;
        v110 = 3;
      }

      v112 = v110 & v107;
      if (!v112)
      {
        return 0;
      }

      if (v74 == 31)
      {
        v113 = 0;
      }

      else
      {
        v114 = word_298DFBDB2[v74];
        v115 = a4;
        sub_298B0A034(a4, 1, v114);
        a4 = v115;
        v113 = 3;
      }

      v116 = v113 & v112;
      if ((v113 & v112) == 0)
      {
        return 0;
      }

      if (v108 == 31)
      {
        v117 = a4;
        v118 = 0;
      }

      else
      {
        v119 = word_298DFBDB2[v108];
        v117 = a4;
        sub_298B0A034(a4, 1, v119);
        v118 = 3;
      }

      result = v118 & v116;
      if ((v118 & v116) != 0)
      {
        v120 = word_298DFBD50[(v109 >> 5) & 0x1F];
        v121 = v117;
        v122 = v117[6];
        if (v122 >= v117[7])
        {
          v1024 = result;
          sub_298B90A44((v117 + 4), v117 + 8, v122 + 1, 16);
          result = v1024;
          v121 = v117;
          LODWORD(v122) = v117[6];
        }

        v123 = (*(v121 + 2) + 16 * v122);
        *v123 = 1;
        v123[1] = v120;
        ++v121[6];
      }

      return result;
    case 581:
      return sub_298B1CC5C(a4, a3) & result;
    case 582:
      v1607 = a3;
      v1608 = a4;
      v2066 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v1576 = v2066 & 3;
      if (!v1576)
      {
        return 0;
      }

LABEL_1727:
      sub_298B1A55C(v1608, (v1607 >> 5) & 0x1F);
LABEL_1728:
      v1577 = HIWORD(v1607) & 0x1F;
LABEL_1729:
      v1696 = v1608;
LABEL_1730:
      sub_298B1A55C(v1696, v1577);
      return v1576;
    case 583:
      v2067 = a3;
      v44 = a4;
      v2068 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2068 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A55C(v44, (v2067 >> 5) & 0x1F);
      sub_298B1A55C(v44, HIWORD(v2067) & 0x1F);
      v50 = v2067 >> 12;
      goto LABEL_43;
    case 584:
      v324 = word_298DFB8C4;
      v325 = word_298DFB8C4[a3 & 0x1F];
      v326 = *(a4 + 24);
      if (v326 >= *(a4 + 28))
      {
        v1118 = result;
        v1119 = a3;
        v1120 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v326 + 1, 16);
        LOBYTE(result) = v1118;
        LODWORD(a3) = v1119;
        a4 = v1120;
        LODWORD(v326) = *(v1120 + 24);
      }

      v327 = (*(a4 + 16) + 16 * v326);
      *v327 = 1;
      v327[1] = v325;
      v328 = (*(a4 + 24) + 1);
      *(a4 + 24) = v328;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v329 = word_298DFB8C4[(a3 >> 5) & 0x1F];
      if (v328 >= *(a4 + 28))
      {
        v1121 = result;
        v1122 = a3;
        v1123 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v328 + 1, 16);
        result = v1121;
        LODWORD(a3) = v1122;
        a4 = v1123;
        LODWORD(v328) = *(v1123 + 24);
      }

      v330 = (*(a4 + 16) + 16 * v328);
      *v330 = 1;
      v330[1] = v329;
      v331 = *(a4 + 28);
      v332 = (*(a4 + 24) + 1);
      *(a4 + 24) = v332;
      v333 = word_298DFB8C4[WORD1(a3) & 0x1F];
      if (v332 >= v331)
      {
        v1124 = result;
        v1125 = a3;
        v1126 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v332 + 1, 16);
        result = v1124;
        LODWORD(a3) = v1125;
        a4 = v1126;
        LODWORD(v332) = *(v1126 + 24);
      }

      v334 = (*(a4 + 16) + 16 * v332);
      *v334 = 1;
      v334[1] = v333;
      v87 = *(a4 + 28);
      v88 = (*(a4 + 24) + 1);
      *(a4 + 24) = v88;
      v335 = (a3 >> 10) & 0x1F;
LABEL_263:
      v19 = v324[v335];
      goto LABEL_80;
    case 585:
      v81 = word_298DFB8C4[a3 & 0x1F];
      v82 = *(a4 + 24);
      if (v82 >= *(a4 + 28))
      {
        v1027 = result;
        v1028 = a3;
        v1029 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v82 + 1, 16);
        LOBYTE(result) = v1027;
        LODWORD(a3) = v1028;
        a4 = v1029;
        LODWORD(v82) = *(v1029 + 24);
      }

      v83 = (*(a4 + 16) + 16 * v82);
      *v83 = 1;
      v83[1] = v81;
      v84 = (*(a4 + 24) + 1);
      *(a4 + 24) = v84;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v85 = word_298DFB8C4[WORD1(a3) & 0x1F];
      if (v84 >= *(a4 + 28))
      {
        v1030 = result;
        v1031 = a3;
        v1032 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v84 + 1, 16);
        result = v1030;
        LODWORD(a3) = v1031;
        a4 = v1032;
        LODWORD(v84) = *(v1032 + 24);
      }

      v86 = (*(a4 + 16) + 16 * v84);
      *v86 = 1;
      v86[1] = v85;
      v87 = *(a4 + 28);
      v88 = (*(a4 + 24) + 1);
      *(a4 + 24) = v88;
      v89 = (a3 >> 5) & 0x1F;
      v90 = word_298DFBD50;
LABEL_79:
      v19 = v90[v89];
LABEL_80:
      if (v88 >= v87)
      {
        v1025 = result;
        v1026 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v88 + 1, 16);
        result = v1025;
        a4 = v1026;
        LODWORD(v88) = *(v1026 + 24);
      }

      v20 = (*(a4 + 16) + 16 * v88);
      v21 = 1;
      goto LABEL_36;
    case 586:
      v202 = a3;
      v203 = a4;
      v204 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v205 = v204 & 3;
      if (!v205)
      {
        return 0;
      }

      v206 = v203;
      sub_298B0A034(v203, 1, word_298DFBCEE[HIWORD(v202) & 0x1F]);
      v207 = word_298DFBD50[(v202 >> 5) & 0x1F];
      v208 = v203[6];
      if (v208 >= v203[7])
      {
        sub_298B90A44((v203 + 4), v203 + 8, v208 + 1, 16);
        v206 = v203;
        LODWORD(v208) = v203[6];
      }

      v209 = (*(v206 + 16) + 16 * v208);
      v210 = 1;
LABEL_178:
      *v209 = v210;
      v209[1] = v207;
      ++*(v206 + 24);
      return v205;
    case 587:
      v374 = word_298DFB8C4[a3 & 0x1F];
      v375 = *(a4 + 24);
      if (v375 >= *(a4 + 28))
      {
        v1132 = result;
        v1133 = a3;
        v1134 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v375 + 1, 16);
        LOBYTE(result) = v1132;
        LODWORD(a3) = v1133;
        a4 = v1134;
        LODWORD(v375) = *(v1134 + 24);
      }

      v376 = (*(a4 + 16) + 16 * v375);
      *v376 = 1;
      v376[1] = v374;
      v377 = (*(a4 + 24) + 1);
      *(a4 + 24) = v377;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v378 = word_298DFBD50[(a3 >> 5) & 0x1F];
      v190 = result;
      if (v377 >= *(a4 + 28))
      {
        v1155 = a3;
        v1156 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v377 + 1, 16);
        LODWORD(a3) = v1155;
        a4 = v1156;
        LODWORD(v377) = *(v1156 + 24);
      }

      v379 = (*(a4 + 16) + 16 * v377);
      *v379 = 1;
      v379[1] = v378;
      v380 = *(a4 + 28);
      v381 = (*(a4 + 24) + 1);
      *(a4 + 24) = v381;
      v382 = word_298DFB8C4[WORD1(a3) & 0x1F];
      if (v381 >= v380)
      {
        v1157 = a3;
        v1158 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v381 + 1, 16);
        LODWORD(a3) = v1157;
        a4 = v1158;
        LODWORD(v381) = *(v1158 + 24);
      }

      v383 = (*(a4 + 16) + 16 * v381);
      *v383 = 1;
      v383[1] = v382;
      ++*(a4 + 24);
      v200 = (a3 >> 14) & 2 | (a3 >> 12) & 1;
      v201 = a4;
      goto LABEL_154;
    case 588:
      v320 = a3;
      v321 = a4;
      v322 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v323 = v322 & 3;
      if (!v323)
      {
        return 0;
      }

      v539 = v320;
      v540 = word_298DFBD50[(v320 >> 5) & 0x1F];
      v512 = v321;
      v541 = v321[6];
      if (v541 >= v321[7])
      {
        sub_298B90A44((v321 + 4), v321 + 8, v541 + 1, 16);
        v539 = v320;
        v512 = v321;
        LODWORD(v541) = v321[6];
      }

      v542 = (*(v512 + 16) + 16 * v541);
      *v542 = 1;
      v542[1] = v540;
      ++*(v512 + 24);
      v515 = word_298DFBCEE[HIWORD(v539) & 0x1F];
      goto LABEL_409;
    case 589:
      v454 = a3;
      v455 = a4;
      v2092 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v356 = v2092 & 3;
      if (!v356)
      {
        return 0;
      }

      goto LABEL_349;
    case 590:
      v187 = a3;
      v188 = a4;
      v189 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v190 = v189 & 3;
      if (!v190)
      {
        return 0;
      }

      v191 = v187;
      v192 = word_298DFBD50[(v187 >> 5) & 0x1F];
      v193 = v188;
      v194 = v188[6];
      if (v194 >= v188[7])
      {
        sub_298B90A44((v188 + 4), v188 + 8, v194 + 1, 16);
        v191 = v187;
        v193 = v188;
        LODWORD(v194) = v188[6];
      }

      v195 = (*(v193 + 2) + 16 * v194);
      *v195 = 1;
      v195[1] = v192;
      ++v193[6];
      v196 = HIWORD(v191) & 0x1F;
      v197 = v193;
      v198 = v193;
      v199 = v191;
      goto LABEL_153;
    case 591:
      v320 = a3;
      v321 = a4;
      v509 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v323 = v509 & 3;
      if (!v323)
      {
        return 0;
      }

      v510 = v320;
      v511 = word_298DFBD50[(v320 >> 5) & 0x1F];
      v512 = v321;
      v513 = v321[6];
      if (v513 >= v321[7])
      {
        sub_298B90A44((v321 + 4), v321 + 8, v513 + 1, 16);
        v510 = v320;
        v512 = v321;
        LODWORD(v513) = v321[6];
      }

      v514 = (*(v512 + 16) + 16 * v513);
      *v514 = 1;
      v514[1] = v511;
      ++*(v512 + 24);
      v515 = word_298DFBCEE[HIWORD(v510) & 0x1F];
LABEL_409:
      sub_298B0A034(v512, 1, v515);
      v516 = v320;
      v237 = v321;
      v517 = (v320 >> 15) & 1;
      v518 = v321[6];
      if (v518 >= v321[7])
      {
        sub_298B90A44((v321 + 4), v321 + 8, v518 + 1, 16);
        v516 = v320;
        v237 = v321;
        LODWORD(v518) = v321[6];
      }

      v519 = (v516 >> 12) & 1;
      v520 = (*(v237 + 2) + 16 * v518);
      *v520 = 2;
      v520[1] = v517;
      v521 = v237[7];
      v522 = v237[6] + 1;
      v237[6] = v522;
      result = v323;
      if (v522 >= v521)
      {
        sub_298B90A44((v237 + 4), v237 + 8, v522 + 1, 16);
        result = v323;
        v237 = v321;
        LODWORD(v522) = v321[6];
      }

      v523 = (*(v237 + 2) + 16 * v522);
      *v523 = 2;
      v523[1] = v519;
      goto LABEL_184;
    case 592:
      return sub_298B1CF24(a4, a3, a5, a6) & result;
    case 593:
      v2247 = result;
      sub_298B1A55C(a4, (a3 >> 5) & 0x1F);
      return v2247 & 3;
    case 594:
      v137 = a3;
      v44 = a4;
      v138 = result;
      sub_298B1A55C(a4, (a3 >> 5) & 0x1F);
      v46 = v138 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A55C(v44, HIWORD(v137) & 0x1F);
      goto LABEL_115;
    case 595:
      v7 = word_298DFB8C4[(a3 >> 5) & 0x1F];
      v8 = *(a4 + 24);
      if (v8 >= *(a4 + 28))
      {
        v635 = result;
        v636 = a3;
        v637 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v8 + 1, 16);
        LOBYTE(result) = v635;
        LODWORD(a3) = v636;
        a4 = v637;
        LODWORD(v8) = *(v637 + 24);
      }

      v9 = (*(a4 + 16) + 16 * v8);
      *v9 = 1;
      v9[1] = v7;
      v10 = (*(a4 + 24) + 1);
      *(a4 + 24) = v10;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v11 = WORD1(a3) & 0x1F;
      if (v10 >= *(a4 + 28))
      {
        v638 = result;
        v639 = a3;
        v640 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v10 + 1, 16);
        result = v638;
        LOWORD(a3) = v639;
        a4 = v640;
        LODWORD(v10) = *(v640 + 24);
      }

      v12 = (*(a4 + 16) + 16 * v10);
      *v12 = 2;
      v12[1] = v11;
      v13 = *(a4 + 28);
      v14 = (*(a4 + 24) + 1);
      *(a4 + 24) = v14;
      v15 = a3 & 0xF;
      if (v14 >= v13)
      {
        v641 = result;
        v642 = a3;
        v643 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v14 + 1, 16);
        result = v641;
        LOWORD(a3) = v642;
        a4 = v643;
        LODWORD(v14) = *(v643 + 24);
      }

      v16 = (*(a4 + 16) + 16 * v14);
      *v16 = 2;
      v16[1] = v15;
      v17 = *(a4 + 28);
      v18 = (*(a4 + 24) + 1);
      *(a4 + 24) = v18;
      v19 = a3 >> 12;
      if (v18 >= v17)
      {
        v644 = result;
        v645 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v18 + 1, 16);
        result = v644;
        a4 = v645;
        LODWORD(v18) = *(v645 + 24);
      }

      v20 = (*(a4 + 16) + 16 * v18);
      v21 = 2;
LABEL_36:
      *v20 = v21;
      v20[1] = v19;
      ++*(a4 + 24);
      return result;
    case 596:
      v548 = a3;
      v549 = a4;
      v550 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v551 = v550 & 3;
      if (!v551)
      {
        return 0;
      }

      sub_298B1A55C(v549, (v548 >> 5) & 0x1F);
      return v551;
    case 597:
      v400 = (a3 >> 5) & 0x1F;
      v401 = word_298DFBD50[v400];
      v402 = *(a4 + 24);
      if (v402 >= *(a4 + 28))
      {
        v1138 = result;
        v1139 = a3;
        v1140 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v402 + 1, 16);
        LOBYTE(result) = v1138;
        LODWORD(a3) = v1139;
        a4 = v1140;
        LODWORD(v402) = *(v1140 + 24);
      }

      v403 = (*(a4 + 16) + 16 * v402);
      *v403 = 1;
      v403[1] = v401;
      ++*(a4 + 24);
      v404 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v405 = a4;
      v406 = a3;
      sub_298B1A55C(a4, a3 & 0x1F);
      sub_298B1A55C(v405, HIWORD(v406) & 0x1F);
      goto LABEL_318;
    case 598:
      v485 = word_298DFBD50[(a3 >> 5) & 0x1F];
      v486 = *(a4 + 24);
      if (v486 >= *(a4 + 28))
      {
        v1163 = result;
        v1164 = a3;
        v1165 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v486 + 1, 16);
        LOBYTE(result) = v1163;
        LOBYTE(a3) = v1164;
        a4 = v1165;
        LODWORD(v486) = *(v1165 + 24);
      }

      v487 = (*(a4 + 16) + 16 * v486);
      *v487 = 1;
      v487[1] = v485;
      ++*(a4 + 24);
      v488 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v489 = a4;
      sub_298B1A55C(a4, a3 & 0x1F);
      v490 = v489;
      v491 = v489[6];
      if (v491 >= v489[7])
      {
        sub_298B90A44((v489 + 4), v489 + 8, v491 + 1, 16);
        v490 = v489;
        LODWORD(v491) = v489[6];
      }

      v492 = (*(v490 + 2) + 16 * v491);
      *v492 = 1;
      v492[1] = v485;
      ++v490[6];
      return v488;
    case 599:
      v701 = a3;
      v702 = a3 & 0x1F;
      v472 = word_298DFBCEE;
      goto LABEL_553;
    case 600:
      v2105 = a3;
      v44 = a4;
      v2106 = result;
      sub_298B1A150(a4, a3 & 0x1F);
      v46 = v2106 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v44, (v2105 >> 5) & 0x1F);
      sub_298B0A034(v44, 1, word_298DFBCEE[HIWORD(v2105) & 0x1F]);
      v50 = (v2105 >> 10) & 7;
      goto LABEL_43;
    case 601:
      v316 = a3;
      v317 = a3 & 0x1F;
      v318 = word_298DFBCEE;
      goto LABEL_251;
    case 602:
      v2107 = a3;
      v2108 = a4;
      v2109 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v356 = v2109 & 3;
      if (!v356)
      {
        return 0;
      }

      sub_298B1A150(v2108, (v2107 >> 5) & 0x1F);
      v357 = HIWORD(v2107) & 0x1F;
      v358 = v2108;
      goto LABEL_351;
    case 603:
      v151 = word_298DFBD50[a3 & 0x1F];
      v152 = *(a4 + 24);
      if (v152 >= *(a4 + 28))
      {
        v1037 = result;
        v1038 = a3;
        v1039 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v152 + 1, 16);
        LOBYTE(result) = v1037;
        LODWORD(a3) = v1038;
        a4 = v1039;
        LODWORD(v152) = *(v1039 + 24);
      }

      v153 = (*(a4 + 16) + 16 * v152);
      *v153 = 1;
      v153[1] = v151;
      v154 = (*(a4 + 24) + 1);
      *(a4 + 24) = v154;
      result &= 3u;
      if (result)
      {
        v155 = result;
        v156 = word_298DFBD50[(a3 >> 5) & 0x1F];
        if (v154 >= *(a4 + 28))
        {
          v1040 = a3;
          v1041 = a4;
          sub_298B90A44(a4 + 16, (a4 + 32), v154 + 1, 16);
          LODWORD(a3) = v1040;
          a4 = v1041;
          LODWORD(v154) = *(v1041 + 24);
        }

        v157 = (*(a4 + 16) + 16 * v154);
        *v157 = 1;
        v157[1] = v156;
        ++*(a4 + 24);
        sub_298B0A034(a4, 1, word_298DFBCEE[WORD1(a3) & 0x1F]);
        return v155;
      }

      return result;
    case 604:
      v2239 = a3;
      v2007 = word_298DFBCEE;
      v1882 = a4;
      v2240 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v364 = v2240 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B1A150(v1882, (v2239 >> 5) & 0x1F);
      v2009 = HIWORD(v2239) & 0x1F;
      goto LABEL_1931;
    case 605:
      v2241 = a3;
      v455 = a4;
      v2242 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v356 = v2242 & 3;
      if (!v356)
      {
        return 0;
      }

      sub_298B0A034(v455, 1, word_298DFBCEE[(v2241 >> 5) & 0x1F]);
      v357 = HIWORD(v2241) & 0x1F;
      goto LABEL_350;
    case 606:
      v2245 = a3;
      v562 = a4;
      v2246 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2246 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A55C(v562, (v2245 >> 5) & 0x1F);
      v564 = HIWORD(v2245) & 0x1F;
      goto LABEL_452;
    case 607:
      v470 = a3;
      v471 = a3 & 0x1F;
      v472 = word_298DFBCEE;
      goto LABEL_372;
    case 608:
      v2243 = a3;
      v2007 = word_298DFBCEE;
      v1882 = a4;
      v2244 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v364 = v2244 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B1A55C(v1882, (v2243 >> 5) & 0x1F);
      sub_298B1A55C(v1882, HIWORD(v2243) & 0x1F);
      v2009 = (v2243 >> 10) & 0x1F;
LABEL_1931:
      v367 = v2007[v2009];
LABEL_1668:
      v368 = v1882;
      goto LABEL_281;
    case 609:
      v279 = a3;
      v44 = a4;
      v280 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[(a3 >> 5) & 0x1F]);
      v46 = v280 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, (v279 >> 15) & 0x3F);
      v50 = v279 & 0xF;
      goto LABEL_43;
    case 610:
      v336 = a3;
      v337 = (a3 >> 5) & 0x1F;
      v338 = word_298DFBCEE;
      goto LABEL_265;
    case 611:
      v137 = a3;
      v44 = a4;
      v2231 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[(a3 >> 5) & 0x1F]);
      v46 = v2231 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, HIWORD(v137) & 0x1F);
LABEL_115:
      sub_298B0A034(v44, 2, v137 & 0xF);
      v50 = v137 >> 12;
      goto LABEL_43;
    case 612:
      v384 = result;
      v460 = a3 & 0x1F;
      v461 = *(a4 + 24);
      if (v461 >= *(a4 + 28))
      {
        v1152 = a3;
        v1153 = a4;
        v1154 = a6;
        sub_298B90A44(a4 + 16, (a4 + 32), v461 + 1, 16);
        a6 = v1154;
        LODWORD(a3) = v1152;
        a4 = v1153;
        LODWORD(v461) = *(v1153 + 24);
      }

      v462 = (*(a4 + 16) + 16 * v461);
      *v462 = 2;
      v462[1] = v460;
      v388 = *(a4 + 24) + 1;
      *(a4 + 24) = v388;
      if (((a3 >> 5) & 0x40000) != 0)
      {
        v389 = (a3 >> 5) & 0x7FFFF | 0xFFFFFFFFFFF80000;
      }

      else
      {
        v389 = (a3 >> 5) & 0x7FFFF;
      }

      v463 = *(a6 + 24);
      if (v463)
      {
        v464 = a4;
        v465 = (*(*v463 + 16))(v463, a4, *(a6 + 32), 4 * v389);
        LOBYTE(result) = v384;
        if (v465)
        {
          return result & 3;
        }

        a4 = v464;
        v388 = *(v464 + 24);
      }

      else
      {
        LOBYTE(result) = v384;
      }

      if (*(a4 + 28) <= v388)
      {
LABEL_365:
        v466 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v388 + 1, 16);
        LOBYTE(result) = v384;
        a4 = v466;
        v388 = *(v466 + 24);
      }

LABEL_307:
      v393 = (*(a4 + 16) + 16 * v388);
      *v393 = 2;
      v393[1] = v389;
LABEL_308:
      ++*(a4 + 24);
      return result & 3;
    case 613:
      v506 = a3;
      v400 = (a3 >> 5) & 0x1F;
      v405 = a4;
      v507 = result;
      sub_298B1A150(a4, v400);
      v404 = v507 & 3;
      if (!v404)
      {
        return 0;
      }

      sub_298B0A034(v405, 1, word_298DFBCEE[v506 & 0x1F]);
      v508 = word_298DFBCEE[HIWORD(v506) & 0x1F];
      goto LABEL_404;
    case 614:
      v1867 = a3;
      v1868 = a3 & 0x1F;
      v1869 = word_298DFBCEE;
LABEL_1971:
      v2277 = a4;
      v2278 = result;
      sub_298B0A034(a4, 1, v1869[v1868]);
      v404 = v2278 & 3;
      if (!v404)
      {
        return 0;
      }

      v408 = (v1867 >> 5) & 0x1F;
      v407 = v2277;
      goto LABEL_319;
    case 615:
      v2227 = a3;
      v2228 = (a3 >> 5) & 0x1F;
      v2229 = a4;
      v2230 = result;
      sub_298B1A150(a4, v2228);
      v364 = v2230 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B1A150(v2229, v2227 & 0x1F);
      sub_298B1A150(v2229, v2228);
      if (((v2227 >> 12) & 0x100) != 0)
      {
        v367 = (v2227 >> 12) & 0x1FF | 0xFFFFFFFFFFFFFE00;
      }

      else
      {
        v367 = (v2227 >> 12) & 0x1FF;
      }

      v368 = v2229;
      goto LABEL_686;
    case 616:
      v973 = a3;
      v44 = a4;
      v974 = result;
      sub_298B1A150(a4, a3 & 0x1F);
      goto LABEL_739;
    case 617:
      v2232 = a3;
      v2233 = word_298DFBCEE[a3 & 0x1F];
      v892 = a4;
      v2234 = result;
      sub_298B0A034(a4, 1, v2233);
      v364 = v2234 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v892, 1, v2233);
      sub_298B1A150(v892, (v2232 >> 5) & 0x1F);
      if (((v2232 >> 12) & 0x100) != 0)
      {
        v367 = (v2232 >> 12) & 0x1FF | 0xFFFFFFFFFFFFFE00;
      }

      else
      {
        v367 = (v2232 >> 12) & 0x1FF;
      }

      goto LABEL_685;
    case 618:
      v2237 = a3;
      v400 = (a3 >> 5) & 0x1F;
      v405 = a4;
      v2238 = result;
      sub_298B1A150(a4, v400);
      v404 = v2238 & 3;
      if (!v404)
      {
        return 0;
      }

      v508 = word_298DFBCEE[v2237 & 0x1F];
LABEL_404:
      sub_298B0A034(v405, 1, v508);
LABEL_318:
      v407 = v405;
      v408 = v400;
LABEL_319:
      sub_298B1A150(v407, v408);
      return v404;
    case 619:
      v447 = a3;
      v448 = a3 & 0x1F;
      v272 = word_298DFBCEE;
      goto LABEL_344;
    case 620:
      v2110 = a3;
      v2111 = word_298DFBCEE[a3 & 0x1F];
      v2112 = a4;
      v2113 = result;
      sub_298B0A034(a4, 1, v2111);
      v2114 = v2113 & 3;
      if (!v2114)
      {
        return 0;
      }

      sub_298B0A034(v2112, 1, v2111);
      sub_298B1A150(v2112, (v2110 >> 5) & 0x1F);
      return v2114;
    case 621:
      v1681 = word_298DFBCEE[a3 & 0x1F];
      v2115 = a4;
      v2116 = result;
      sub_298B0A034(a4, 1, v1681);
      v364 = v2116 & 3;
      if (!v364)
      {
        return 0;
      }

      v368 = v2115;
LABEL_1320:
      v369 = 1;
      v367 = v1681;
      goto LABEL_282;
    case 622:
      v571 = 0;
      if ((a3 & 0x1Fu) <= 0x16 && (a3 & 1) == 0)
      {
        v572 = *(&unk_298E00012 + (a3 & 0x1F));
        v573 = *(a4 + 24);
        if (v573 >= *(a4 + 28))
        {
          v2389 = result;
          v2390 = a3;
          v2391 = a4;
          sub_298B90A44(a4 + 16, (a4 + 32), v573 + 1, 16);
          LODWORD(result) = v2389;
          LODWORD(a3) = v2390;
          a4 = v2391;
          LODWORD(v573) = *(v2391 + 24);
        }

        v574 = (*(a4 + 16) + 16 * v573);
        *v574 = 1;
        v574[1] = v572;
        ++*(a4 + 24);
        v571 = 3;
      }

      v149 = v571 & result;
      if ((v571 & result) == 0)
      {
        return 0;
      }

      v150 = (a3 >> 5) & 0x1F;
      v145 = a4;
      goto LABEL_124;
    case 623:
      v139 = a3;
      v140 = a4;
      v141 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[WORD1(a3) & 0x1F]);
      if ((v141 & 3) == 0)
      {
        return 0;
      }

      v142 = v141;
      v143 = 0;
      v144 = v139;
      if ((v139 & 0x1F) > 0x16)
      {
        v145 = v140;
      }

      else
      {
        v145 = v140;
        if ((v139 & 1) == 0)
        {
          v146 = *(&unk_298E00012 + (v139 & 0x1F));
          v147 = v140[6];
          if (v147 >= v140[7])
          {
            sub_298B90A44((v140 + 4), v140 + 8, v147 + 1, 16);
            v142 = v141;
            v144 = v139;
            v145 = v140;
            LODWORD(v147) = v140[6];
          }

          v148 = (*(v145 + 16) + 16 * v147);
          *v148 = 1;
          v148[1] = v146;
          ++*(v145 + 24);
          v143 = 3;
        }
      }

      v149 = v143 & v142;
      if ((v143 & v142) == 0)
      {
        return 0;
      }

      v150 = (v144 >> 5) & 0x1F;
LABEL_124:
      sub_298B1A150(v145, v150);
      return v149;
    case 624:
      return sub_298B1D350(a4, a3) & result;
    case 625:
      v603 = a7;
      v2235 = result;
      v2236 = sub_298B1D578(a4, a3);
      v683 = v2236 & v2235;
      if ((v2236 & v2235) == 0)
      {
        goto LABEL_1859;
      }

      return v683;
    case 626:
      v2101 = a5;
      v2406 = a6;
      v2102 = a3;
      v2103 = a3 & 0x1F;
      v2104 = word_298DFB86A;
LABEL_1790:
      v2117 = a4;
      v2118 = result;
      sub_298B0A034(a4, 1, v2104[v2103]);
      v2119 = v2118 & 3;
      if (!v2119)
      {
        return 0;
      }

      sub_298B1BDA0(v2117, (v2102 >> 5) & 0x7FFFF, v2101, v2406);
      return v2119;
    case 627:
      v552 = a3;
      v553 = a3 & 0x1F;
      v554 = "\r";
      goto LABEL_441;
    case 628:
      v973 = a3;
      v44 = a4;
      v974 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
LABEL_739:
      v46 = v974 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v44, (v973 >> 5) & 0x1F);
      v47 = (v973 >> 12) & 0x1FF;
      v48 = v47 | 0xFFFFFFFFFFFFFE00;
      v49 = ((v973 >> 12) & 0x100) == 0;
LABEL_40:
      if (v49)
      {
        v50 = v47;
      }

      else
      {
        v50 = v48;
      }

      goto LABEL_43;
    case 629:
      v311 = a3;
      v312 = a3 & 0x1F;
      v313 = word_298DFB86A;
      goto LABEL_247;
    case 630:
      v988 = a3;
      v44 = a4;
      v2218 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2218 & 3;
      if (!v46)
      {
        return 0;
      }

      v990 = (v988 >> 5) & 0x1F;
      v991 = word_298DFB86A;
      goto LABEL_754;
    case 631:
      v2225 = a3;
      v562 = a4;
      v2226 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2226 & 3;
      if (!v46)
      {
        return 0;
      }

      v564 = (v2225 >> 5) & 0x1F;
      v565 = word_298DFB86A;
      goto LABEL_453;
    case 632:
      v903 = a3;
      v904 = a4;
      v905 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v906 = v905 & 3;
      if (v906)
      {
        goto LABEL_695;
      }

      return 0;
    case 633:
      v270 = a3;
      v271 = (a3 >> 5) & 0x1F;
      v272 = word_298DFB86A;
      goto LABEL_218;
    case 634:
      v76 = (a3 >> 5) & 0x1F;
      v77 = word_298DFB86A;
      goto LABEL_71;
    case 635:
      v447 = a3;
      v448 = a3 & 0x1F;
      v272 = word_298DFB86A;
      goto LABEL_344;
    case 636:
      v359 = a3;
      v360 = a3 & 0x1F;
      v361 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_277;
    case 637:
      v359 = a3;
      v360 = a3 & 0x1F;
      v361 = word_298DFB36E;
      goto LABEL_277;
    case 638:
      v231 = a3;
      v232 = a3 & 0x1F;
      v233 = word_298DFB86A;
      goto LABEL_180;
    case 639:
      v744 = a3;
      v745 = (a3 >> 5) & 0x1F;
      v746 = word_298DFB86A;
      goto LABEL_575;
    case 640:
      v701 = a3;
      v702 = a3 & 0x1F;
      v472 = word_298DFB86A;
      goto LABEL_553;
    case 641:
      v394 = a3;
      v395 = a4;
      v396 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v341 = v396 & 3;
      if (!v341)
      {
        return 0;
      }

      v397 = v394;
      v398 = word_298DFB86A[(v394 >> 5) & 0x1F];
      v343 = v395;
      sub_298B0A034(v395, 1, v398);
      sub_298B0A034(v395, 1, word_298DFB86A[HIWORD(v397) & 0x1F]);
      v349 = v397 >> 12;
      goto LABEL_311;
    case 642:
      v311 = a3;
      v312 = a3 & 0x1F;
      v313 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_247;
    case 643:
      v988 = a3;
      v44 = a4;
      v989 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v989 & 3;
      if (!v46)
      {
        return 0;
      }

      v990 = (v988 >> 5) & 0x1F;
      v991 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_754;
    case 644:
      v2120 = a3;
      v562 = a4;
      v2121 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2121 & 3;
      if (!v46)
      {
        return 0;
      }

      v564 = (v2120 >> 5) & 0x1F;
      v565 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_453;
    case 645:
      v270 = a3;
      v271 = (a3 >> 5) & 0x1F;
      v272 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_218;
    case 646:
      v76 = (a3 >> 5) & 0x1F;
      v77 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_71;
    case 647:
      v231 = a3;
      v232 = a3 & 0x1F;
      v233 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_180:
      v234 = a4;
      v235 = result;
      sub_298B0A034(a4, 1, v233[v232]);
      result = v235 & 3;
      if ((v235 & 3) == 0)
      {
        return result;
      }

      v236 = (v231 >> 13);
      v237 = v234;
      v238 = v234[6];
      if (v238 >= v234[7])
      {
        sub_298B90A44((v234 + 4), v234 + 8, v238 + 1, 16);
        result = v235 & 3;
        v237 = v234;
        LODWORD(v238) = v234[6];
      }

      v239 = (*(v237 + 2) + 16 * v238);
      *v239 = 2;
      v239[1] = v236;
      goto LABEL_184;
    case 648:
      v336 = a3;
      v337 = (a3 >> 5) & 0x1F;
      v338 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_265:
      v339 = a4;
      v340 = result;
      sub_298B0A034(a4, 1, v338[v337]);
      v341 = v340 & 3;
      if (!v341)
      {
        return 0;
      }

      v342 = v338[HIWORD(v336) & 0x1F];
      v343 = v339;
      sub_298B0A034(v339, 1, v342);
      v344 = v336;
      v345 = v339[6];
      if (v345 >= v339[7])
      {
        sub_298B90A44((v339 + 4), v339 + 8, v345 + 1, 16);
        v344 = v336;
        v343 = v339;
        LODWORD(v345) = v339[6];
      }

      v346 = (*(v343 + 16) + 16 * v345);
      *v346 = 2;
      v346[1] = v336 & 0xF;
      v347 = *(v343 + 28);
      v348 = (*(v343 + 24) + 1);
      *(v343 + 24) = v348;
      v349 = v344 >> 12;
      if (v348 >= v347)
      {
        sub_298B90A44(v343 + 16, (v343 + 32), v348 + 1, 16);
        v343 = v339;
        LODWORD(v348) = v339[6];
      }

      v350 = (*(v343 + 16) + 16 * v348);
      goto LABEL_271;
    case 649:
      v316 = a3;
      v317 = a3 & 0x1F;
      v318 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_251;
    case 650:
      v311 = a3;
      v312 = a3 & 0x1F;
      v313 = word_298DFB36E;
LABEL_247:
      v314 = a4;
      v315 = result;
      sub_298B0A034(a4, 1, v313[v312]);
      v46 = v315 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A55C(v314, (v311 >> 5) & 0x1F);
      v50 = 32 - ((v311 >> 10) & 0x1F);
      v51 = v314;
      goto LABEL_44;
    case 651:
      v988 = a3;
      v44 = a4;
      v2133 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2133 & 3;
      if (!v46)
      {
        return 0;
      }

      v990 = (v988 >> 5) & 0x1F;
      v991 = word_298DFB36E;
LABEL_754:
      sub_298B0A034(v44, 1, v991[v990]);
      v287 = (v988 >> 10) & 0x1F;
      v288 = 32;
      goto LABEL_229;
    case 652:
      v2219 = a3;
      v562 = a4;
      v2220 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2220 & 3;
      if (!v46)
      {
        return 0;
      }

      v564 = (v2219 >> 5) & 0x1F;
      v565 = word_298DFB36E;
      goto LABEL_453;
    case 653:
      v903 = a3;
      v2024 = a3 & 0x1F;
      v2025 = word_298DFB36E;
LABEL_1830:
      v904 = a4;
      v2152 = result;
      sub_298B0A034(a4, 1, v2025[v2024]);
      v906 = v2152 & 3;
      if (!v906)
      {
        return 0;
      }

LABEL_695:
      sub_298B1A55C(v904, (v903 >> 5) & 0x1F);
      return v906;
    case 654:
      v270 = a3;
      v271 = (a3 >> 5) & 0x1F;
      v272 = word_298DFB36E;
LABEL_218:
      v273 = a4;
      v274 = result;
      sub_298B0A034(a4, 1, v272[v271]);
      v275 = v274 & 3;
      if (!v275)
      {
        return 0;
      }

      v276 = HIWORD(v270) & 0x1F;
      goto LABEL_220;
    case 655:
      v76 = (a3 >> 5) & 0x1F;
      v77 = word_298DFB36E;
LABEL_71:
      v78 = v77[v76];
      v79 = result;
      v80 = a4;
LABEL_72:
      sub_298B0A034(v80, 1, v78);
      return v79 & 3;
    case 656:
      v447 = a3;
      v448 = a3 & 0x1F;
      v272 = word_298DFB36E;
      goto LABEL_344;
    case 657:
      v2159 = a3;
      v2160 = a3 & 0x1F;
      v2161 = word_298DFB86A;
      goto LABEL_1895;
    case 658:
      v2159 = a3;
      v2160 = a3 & 0x1F;
      v2161 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1895;
    case 659:
      v2122 = a3;
      v1213 = a4;
      v2123 = result;
      sub_298B0A034(a4, 1, word_298DFB36E[a3 & 0x1F]);
      v364 = v2123 & 3;
      if (!v364)
      {
        return 0;
      }

      v367 = (v2122 >> 13);
      goto LABEL_2051;
    case 660:
      v744 = a3;
      v745 = (a3 >> 5) & 0x1F;
      v746 = word_298DFB36E;
LABEL_575:
      v747 = a4;
      v748 = result;
      sub_298B0A034(a4, 1, v746[v745]);
      v749 = v748 & 3;
      if (!v749)
      {
        return 0;
      }

      sub_298B0A034(v747, 1, v746[HIWORD(v744) & 0x1F]);
      v750 = *(v747 + 24);
      if (v750 >= *(v747 + 28))
      {
        sub_298B90A44(v747 + 16, (v747 + 32), v750 + 1, 16);
        LODWORD(v750) = *(v747 + 24);
      }

      v751 = (*(v747 + 16) + 16 * v750);
      *v751 = 2;
      v751[1] = v744 & 0xF;
      v752 = *(v747 + 28);
      v753 = (*(v747 + 24) + 1);
      *(v747 + 24) = v753;
      if (v753 >= v752)
      {
        sub_298B90A44(v747 + 16, (v747 + 32), v753 + 1, 16);
        LODWORD(v753) = *(v747 + 24);
      }

      v754 = (*(v747 + 16) + 16 * v753);
      *v754 = 2;
      v754[1] = v744 >> 12;
      ++*(v747 + 24);
      return v749;
    case 661:
      v701 = a3;
      v702 = a3 & 0x1F;
      v472 = word_298DFB36E;
      goto LABEL_553;
    case 662:
      v316 = a3;
      v317 = a3 & 0x1F;
      v318 = word_298DFB36E;
LABEL_251:
      v44 = a4;
      v319 = result;
      sub_298B0A034(a4, 1, v318[v317]);
      v46 = v319 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, v318[(v316 >> 5) & 0x1F]);
      sub_298B0A034(v44, 1, v318[HIWORD(v316) & 0x1F]);
      v50 = v316 >> 12;
      goto LABEL_43;
    case 663:
      v470 = a3;
      v471 = a3 & 0x1F;
      v472 = word_298DFB86A;
      goto LABEL_372;
    case 664:
      v470 = a3;
      v471 = a3 & 0x1F;
      v472 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_372;
    case 665:
      v470 = a3;
      v471 = a3 & 0x1F;
      v472 = word_298DFB36E;
LABEL_372:
      v362 = a4;
      v473 = result;
      sub_298B0A034(a4, 1, v472[v471]);
      v364 = v473 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v362, 1, v472[(v470 >> 5) & 0x1F]);
      sub_298B0A034(v362, 1, v472[HIWORD(v470) & 0x1F]);
      v474 = (v470 >> 10) & 0x1F;
      goto LABEL_374;
    case 666:
      v2143 = a3;
      v2144 = a3 & 0x1F;
      v2145 = "\r";
      goto LABEL_1869;
    case 667:
      v757 = a3;
      v760 = a4;
      v872 = result;
      sub_298B0A034(a4, 1, asc_298DFB328[a3 & 0x1F]);
      goto LABEL_672;
    case 668:
      v199 = a3;
      v198 = a4;
      v2128 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v190 = v2128 & 3;
      if (!v190)
      {
        return 0;
      }

      sub_298B1A150(v198, (v199 >> 5) & 0x1F);
      v196 = HIWORD(v199) & 0x1F;
      v197 = v198;
LABEL_153:
      sub_298B1A55C(v197, v196);
      v200 = (v199 >> 14) & 2 | (v199 >> 12) & 1;
      v201 = v198;
      goto LABEL_154;
    case 669:
      v872 = result;
      v757 = a3;
      v873 = word_298DFC574[a3 & 0x1F];
      v874 = *(a4 + 24);
      v760 = a4;
      if (v874 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v874 + 1, 16);
        LODWORD(v874) = *(v760 + 24);
      }

      v875 = (*(v760 + 16) + 16 * v874);
      *v875 = 1;
      v875[1] = v873;
      ++*(v760 + 24);
LABEL_672:
      v190 = v872 & 3;
      if (!v190)
      {
        return 0;
      }

      goto LABEL_585;
    case 670:
      v475 = a5;
      v476 = a6;
      v477 = a3;
      v478 = a4;
      v479 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      result = v479 & 3;
      if ((v479 & 3) == 0)
      {
        return result;
      }

      v480 = ((v477 >> 5) & 0x40000) != 0 ? (v477 >> 5) & 0x7FFFF | 0xFFFFFFFFFFF80000 : (v477 >> 5) & 0x7FFFF;
      v481 = *(v476 + 24);
      if (v481)
      {
        v482 = (*(*v481 + 16))(v481, v478, *(v476 + 32), 4 * v480, v475, *v478 != 4380, 0, 0, 4);
        result = v479 & 3;
        if (v482)
        {
          return result;
        }
      }

      v237 = v478;
      v483 = v478[6];
      if (v478[7] <= v483)
      {
        v1162 = result;
        sub_298B90A44((v478 + 4), v478 + 8, v483 + 1, 16);
        result = v1162;
        v237 = v478;
        LODWORD(v483) = v478[6];
      }

      v484 = (*(v237 + 2) + 16 * v483);
      goto LABEL_384;
    case 671:
      v552 = a3;
      v553 = a3 & 0x1F;
      v554 = word_298DFB36E;
      goto LABEL_441;
    case 672:
      v2221 = a3;
      v2222 = a4;
      v2223 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2224 = v2223 & 3;
      if (!v2224)
      {
        return 0;
      }

      sub_298B1A1C4(v2222, v2221 & 0x1F);
      sub_298B0A034(v2222, 1, word_298DFB86A[(v2221 >> 5) & 0x1F]);
      sub_298B1A1C4(v2222, HIWORD(v2221) & 0x1F);
      return v2224;
    case 673:
      v2207 = a3;
      v2208 = a4;
      v2209 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v46 = v2209 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v2208, (v2207 >> 5) & 0x1F);
      v50 = (v2207 >> 20) & 1;
      v51 = v2208;
      goto LABEL_44;
    case 674:
      v524 = a3;
      v525 = a4;
      v526 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      result = v526 & 3;
      if ((v526 & 3) == 0)
      {
        return result;
      }

      v527 = v524;
      v528 = word_298DFC574[(v524 >> 5) & 0x1F];
      v237 = v525;
      v529 = v525[6];
      if (v529 >= v525[7])
      {
        v1169 = result;
        sub_298B90A44((v525 + 4), v525 + 8, v529 + 1, 16);
        result = v1169;
        v527 = v524;
        v237 = v525;
        LODWORD(v529) = v525[6];
      }

      v530 = (*(v237 + 2) + 16 * v529);
      *v530 = 1;
      v530[1] = v528;
      v531 = v237[7];
      v532 = v237[6] + 1;
      v237[6] = v532;
      v480 = (v527 >> 19) & 3;
      if (v532 >= v531)
      {
        v1170 = result;
        sub_298B90A44((v237 + 4), v237 + 8, v532 + 1, 16);
        result = v1170;
        v237 = v525;
        LODWORD(v532) = v525[6];
      }

      v484 = (*(v237 + 2) + 16 * v532);
LABEL_384:
      *v484 = 2;
      v484[1] = v480;
LABEL_184:
      ++v237[6];
      return result;
    case 675:
      v804 = a3;
      v805 = a4;
      v806 = result;
      sub_298B0A034(a4, 1, word_298DFB36E[a3 & 0x1F]);
      v807 = v806 & 3;
      if (!v807)
      {
        return 0;
      }

      v808 = word_298DFC574[(v804 >> 5) & 0x1F];
      v809 = *(v805 + 24);
      if (v809 >= *(v805 + 28))
      {
        sub_298B90A44(v805 + 16, (v805 + 32), v809 + 1, 16);
        LODWORD(v809) = *(v805 + 24);
      }

      v810 = (*(v805 + 16) + 16 * v809);
      *v810 = 1;
      v810[1] = v808;
      v811 = *(v805 + 28);
      v812 = (*(v805 + 24) + 1);
      *(v805 + 24) = v812;
      v813 = (v804 >> 18) & 7;
      goto LABEL_623;
    case 676:
      v950 = a3;
      v805 = a4;
      v951 = result;
      sub_298B0A034(a4, 1, asc_298DFB328[a3 & 0x1F]);
      v807 = v951 & 3;
      if (!v807)
      {
        return 0;
      }

      v952 = word_298DFC574[(v950 >> 5) & 0x1F];
      v953 = *(v805 + 24);
      if (v953 >= *(v805 + 28))
      {
        sub_298B90A44(v805 + 16, (v805 + 32), v953 + 1, 16);
        LODWORD(v953) = *(v805 + 24);
      }

      v954 = (*(v805 + 16) + 16 * v953);
      *v954 = 1;
      v954[1] = v952;
      v811 = *(v805 + 28);
      v812 = (*(v805 + 24) + 1);
      *(v805 + 24) = v812;
      v813 = (v950 >> 17) & 0xF;
LABEL_623:
      if (v812 >= v811)
      {
LABEL_668:
        sub_298B90A44(v805 + 16, (v805 + 32), v812 + 1, 16);
        LODWORD(v812) = *(v805 + 24);
      }

LABEL_624:
      v814 = (*(v805 + 16) + 16 * v812);
      *v814 = 2;
      v814[1] = v813;
      ++*(v805 + 24);
      return v807;
    case 677:
      v701 = a3;
      v702 = a3 & 0x1F;
      v472 = "\r";
LABEL_553:
      v362 = a4;
      v703 = result;
      sub_298B0A034(a4, 1, v472[v702]);
      v364 = v703 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v362, 1, v472[(v701 >> 5) & 0x1F]);
      v474 = HIWORD(v701) & 0x1F;
LABEL_374:
      v367 = v472[v474];
      goto LABEL_280;
    case 678:
      v2149 = a3;
      v2150 = a3 & 0x1F;
      v2151 = "\r";
      goto LABEL_1891;
    case 679:
      v2149 = a3;
      v2150 = a3 & 0x1F;
      v2151 = word_298DFB36E;
      goto LABEL_1891;
    case 680:
      v2149 = a3;
      v2150 = a3 & 0x1F;
      v2151 = word_298DFB86A;
LABEL_1891:
      v2213 = v2151[v2150];
      v2214 = a4;
      v2215 = result;
      sub_298B0A034(a4, 1, v2213);
      v2216 = v2215 & 3;
      if (!v2216)
      {
        return 0;
      }

      sub_298B0A034(v2214, 1, v2213);
      sub_298B0A034(v2214, 1, v2151[(v2149 >> 5) & 0x1F]);
      return v2216;
    case 681:
      v2159 = a3;
      v2160 = a3 & 0x1F;
      v2161 = "\r";
      goto LABEL_1895;
    case 682:
      v447 = a3;
      v448 = a3 & 0x1F;
      v272 = "\r";
LABEL_344:
      v273 = a4;
      v449 = result;
      sub_298B0A034(a4, 1, v272[v448]);
      v275 = v449 & 3;
      if (!v275)
      {
        return 0;
      }

      v276 = (v447 >> 5) & 0x1F;
LABEL_220:
      v277 = v272[v276];
LABEL_221:
      v278 = v273;
      goto LABEL_222;
    case 683:
      v2178 = a3;
      v2205 = word_298DFB86A[a3 & 0x1F];
      v2180 = a4;
      v2206 = result;
      sub_298B0A034(a4, 1, v2205);
      v364 = v2206 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v2180, 1, v2205);
      v2182 = (v2178 >> 5) & 0x1F;
      v2183 = word_298DFB36E;
      goto LABEL_1885;
    case 684:
      v2178 = a3;
      v2179 = a0123456789Abcd_0[a3 & 0x1F];
      v2180 = a4;
      v2181 = result;
      sub_298B0A034(a4, 1, v2179);
      v364 = v2181 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v2180, 1, v2179);
      v2182 = (v2178 >> 5) & 0x1F;
      v2183 = word_298DFB86A;
LABEL_1885:
      sub_298B0A034(v2180, 1, v2183[v2182]);
      v367 = v2183[HIWORD(v2178) & 0x1F];
      v368 = v2180;
      goto LABEL_281;
    case 685:
      v2138 = a3;
      v562 = a4;
      v2139 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v46 = v2139 & 3;
      if (!v46)
      {
        return 0;
      }

      v2140 = (v2138 >> 5) & 0x1F;
      v2141 = word_298DFB36E;
      goto LABEL_1882;
    case 686:
      v2138 = a3;
      v562 = a4;
      v2204 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v46 = v2204 & 3;
      if (!v46)
      {
        return 0;
      }

      v2140 = (v2138 >> 5) & 0x1F;
      v2141 = word_298DFB86A;
LABEL_1882:
      sub_298B0A034(v562, 1, v2141[v2140]);
      v50 = v2141[HIWORD(v2138) & 0x1F];
      goto LABEL_454;
    case 687:
      v2176 = a3;
      v1453 = a4;
      v2177 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v2177 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1453, 1, a0123456789Abcd_0[(v2176 >> 5) & 0x1F]);
      v177 = HIWORD(v2176) & 0x3F;
LABEL_1255:
      v178 = v1453;
LABEL_1256:
      v179 = 64;
      goto LABEL_141;
    case 688:
      v2135 = a3;
      v2136 = word_298DFB36E[a3 & 0x1F];
      v892 = a4;
      v2137 = result;
      sub_298B0A034(a4, 1, v2136);
      v364 = v2137 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v892, 1, v2136);
      sub_298B0A034(v892, 1, word_298DFB36E[(v2135 >> 5) & 0x1F]);
      sub_298B1A1C4(v892, HIWORD(v2135) & 0xF);
      v367 = (v2135 >> 9) & 4 | (v2135 >> 20) & 3;
      goto LABEL_685;
    case 689:
      v2198 = a3;
      v2199 = a0123456789Abcd_0[a3 & 0x1F];
      v2200 = a4;
      v2201 = result;
      sub_298B0A034(a4, 1, v2199);
      v2202 = v2201 & 3;
      if (!v2202)
      {
        return 0;
      }

      sub_298B0A034(v2200, 1, v2199);
      sub_298B0A034(v2200, 1, a0123456789Abcd_0[(v2198 >> 5) & 0x1F]);
      sub_298B1DB34(v2200, HIWORD(v2198) & 0x3F, 64);
      return v2202;
    case 690:
      v2173 = a3;
      v2174 = a3 & 0x1F;
      v2175 = word_298DFB86A;
LABEL_1961:
      v2270 = v2175[v2174];
      v892 = a4;
      v2271 = result;
      sub_298B0A034(a4, 1, v2270);
      v364 = v2271 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v892, 1, v2270);
      sub_298B0A034(v892, 1, v2175[(v2173 >> 5) & 0x1F]);
      sub_298B1A1C4(v892, HIWORD(v2173) & 0x1F);
      v367 = (v2173 >> 10) & 2 | (v2173 >> 21) & 1;
      goto LABEL_685;
    case 691:
      v890 = a3;
      v891 = a0123456789Abcd_0[a3 & 0x1F];
      v892 = a4;
      v893 = result;
      sub_298B0A034(a4, 1, v891);
      v364 = v893 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v892, 1, v891);
      sub_298B0A034(v892, 1, a0123456789Abcd_0[(v890 >> 5) & 0x1F]);
      sub_298B1A1C4(v892, HIWORD(v890) & 0x1F);
      v367 = (v890 >> 11) & 1;
      goto LABEL_685;
    case 692:
      v2146 = a3;
      v2147 = word_298DFB86A[a3 & 0x1F];
      v892 = a4;
      v2148 = result;
      sub_298B0A034(a4, 1, v2147);
      v364 = v2148 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v892, 1, v2147);
      sub_298B0A034(v892, 1, word_298DFB36E[(v2146 >> 5) & 0x1F]);
      sub_298B1A1C4(v892, HIWORD(v2146) & 0xF);
      v367 = (v2146 >> 9) & 4 | (v2146 >> 20) & 3;
      goto LABEL_685;
    case 693:
      v2124 = a3;
      v2125 = a0123456789Abcd_0[a3 & 0x1F];
      v892 = a4;
      v2126 = result;
      sub_298B0A034(a4, 1, v2125);
      v364 = v2126 & 3;
      if (!v364)
      {
        return 0;
      }

      sub_298B0A034(v892, 1, v2125);
      sub_298B0A034(v892, 1, word_298DFB86A[(v2124 >> 5) & 0x1F]);
      sub_298B1A1C4(v892, HIWORD(v2124) & 0x1F);
      v367 = (v2124 >> 10) & 2 | (v2124 >> 21) & 1;
LABEL_685:
      v368 = v892;
      goto LABEL_686;
    case 694:
      v2192 = a3;
      v2193 = a4;
      v2194 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v886 = v2194 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B0A034(v2193, 1, a0123456789Abcd_0[(v2192 >> 5) & 0x1F]);
      v887 = HIWORD(v2192) & 0x3F;
      v888 = v2193;
      v889 = 64;
      goto LABEL_706;
    case 695:
      v2153 = a3;
      v2154 = a4;
      v2155 = result;
      sub_298B0A034(a4, 1, asc_298DFB328[a3 & 0x1F]);
      v886 = v2155 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B0A034(v2154, 1, asc_298DFB328[(v2153 >> 5) & 0x1F]);
      v887 = HIWORD(v2153) & 7;
      v888 = v2154;
      v889 = 8;
      goto LABEL_706;
    case 696:
      v2129 = a3;
      v2130 = a4;
      v2131 = result;
      sub_298B0A034(a4, 1, word_298DFB36E[a3 & 0x1F]);
      v886 = v2131 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B0A034(v2130, 1, word_298DFB36E[(v2129 >> 5) & 0x1F]);
      v887 = HIWORD(v2129) & 0xF;
      v888 = v2130;
      v889 = 16;
      goto LABEL_706;
    case 697:
      v916 = a3;
      v917 = a4;
      v918 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v886 = v918 & 3;
      if (!v886)
      {
        return 0;
      }

      sub_298B0A034(v917, 1, word_298DFB86A[(v916 >> 5) & 0x1F]);
      v887 = HIWORD(v916) & 0x1F;
      v888 = v917;
      v889 = 32;
LABEL_706:
      sub_298B1DBB8(v888, v887, v889);
      return v886;
    case 698:
      v919 = a3;
      v920 = word_298DFB36E;
      v44 = a4;
      v921 = result;
      sub_298B0A034(a4, 1, word_298DFB36E[a3 & 0x1F]);
      v46 = v921 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_708:
      sub_298B0A034(v44, 1, v920[(v919 >> 5) & 0x1F]);
      sub_298B1A1C4(v44, HIWORD(v919) & 0xF);
      v50 = (v919 >> 9) & 4 | (v919 >> 20) & 3;
      goto LABEL_43;
    case 699:
      v1624 = a3;
      v1475 = a4;
      v2127 = result;
      sub_298B0A034(a4, 1, asc_298DFB328[a3 & 0x1F]);
      v176 = v2127 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1475, 1, word_298DFB36E[(v1624 >> 5) & 0x1F]);
LABEL_1983:
      v177 = HIWORD(v1624) & 7;
LABEL_1984:
      v178 = v1475;
LABEL_1985:
      v179 = 8;
      goto LABEL_141;
    case 700:
      v1449 = a3;
      v1450 = a4;
      v2196 = result;
      sub_298B0A034(a4, 1, word_298DFB36E[a3 & 0x1F]);
      v176 = v2196 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1450, 1, word_298DFB86A[(v1449 >> 5) & 0x1F]);
LABEL_1988:
      v177 = HIWORD(v1449) & 0xF;
      goto LABEL_1989;
    case 701:
      v2164 = a3;
      v174 = a4;
      v2165 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v176 = v2165 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v174, 1, a0123456789Abcd_0[(v2164 >> 5) & 0x1F]);
      v177 = HIWORD(v2164) & 0x1F;
      goto LABEL_139;
    case 702:
      v763 = a3;
      v764 = word_298DFB86A;
      v44 = a4;
      v2142 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v46 = v2142 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_588:
      sub_298B0A034(v44, 1, v764[(v763 >> 5) & 0x1F]);
      sub_298B1A1C4(v44, HIWORD(v763) & 0x1F);
      v50 = (v763 >> 10) & 2 | (v763 >> 21) & 1;
      goto LABEL_43;
    case 703:
      v979 = a3;
      v44 = a4;
      v980 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v46 = v980 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, a0123456789Abcd_0[(v979 >> 5) & 0x1F]);
      sub_298B1A1C4(v44, HIWORD(v979) & 0x1F);
      v50 = (v979 >> 11) & 1;
      goto LABEL_43;
    case 704:
      v595 = a3;
      v395 = a4;
      v596 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v341 = v596 & 3;
      if (!v341)
      {
        return 0;
      }

      v597 = v595;
      v598 = word_298DFB36E[(v595 >> 5) & 0x1F];
      v343 = v395;
      sub_298B0A034(v395, 1, v598);
      sub_298B1A1C4(v395, HIWORD(v597) & 0xF);
      v349 = (v597 >> 9) & 4 | (v597 >> 20) & 3;
LABEL_311:
      v399 = *(v395 + 24);
      if (v399 >= *(v395 + 28))
      {
        sub_298B90A44(v343 + 16, (v343 + 32), v399 + 1, 16);
        v343 = v395;
        LODWORD(v399) = *(v395 + 24);
      }

      v350 = (*(v343 + 16) + 16 * v399);
LABEL_271:
      *v350 = 2;
      v350[1] = v349;
      ++*(v343 + 24);
      return v341;
    case 705:
      v688 = a3;
      v44 = a4;
      v2197 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v46 = v2197 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB86A[(v688 >> 5) & 0x1F]);
LABEL_543:
      sub_298B1A1C4(v44, HIWORD(v688) & 0x1F);
      v50 = (v688 >> 10) & 2 | (v688 >> 21) & 1;
      goto LABEL_43;
    case 706:
      v2210 = a3;
      v2211 = word_298DFB36E;
      v1450 = a4;
      v2212 = result;
      sub_298B0A034(a4, 1, word_298DFB36E[a3 & 0x1F]);
      v176 = v2212 & 3;
      if (!v176)
      {
        return 0;
      }

LABEL_1969:
      sub_298B0A034(v1450, 1, v2211[(v2210 >> 5) & 0x1F]);
      v177 = HIWORD(v2210) & 0xF;
LABEL_1989:
      v178 = v1450;
LABEL_1990:
      v179 = 16;
      goto LABEL_141;
    case 707:
      v172 = a3;
      v173 = word_298DFB86A;
      v174 = a4;
      v2134 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v176 = v2134 & 3;
      if (!v176)
      {
        return 0;
      }

LABEL_138:
      sub_298B0A034(v174, 1, v173[(v172 >> 5) & 0x1F]);
      v177 = HIWORD(v172) & 0x1F;
LABEL_139:
      v178 = v174;
LABEL_140:
      v179 = 32;
LABEL_141:
      sub_298B1DB34(v178, v177, v179);
      return v176;
    case 708:
      v2143 = a3;
      v2144 = a3 & 0x1F;
      v2145 = word_298DFB36E;
      goto LABEL_1869;
    case 709:
      v757 = a3;
      v758 = a3 & 0x1F;
      v759 = word_298DFB36E;
      goto LABEL_584;
    case 710:
      v429 = a3;
      v925 = a3 & 0x1F;
      v430 = word_298DFB36E;
      goto LABEL_713;
    case 711:
      v429 = a3;
      v925 = a3 & 0x1F;
      v430 = word_298DFB86A;
LABEL_713:
      v926 = v430[v925];
      v432 = a4;
      v927 = result;
      sub_298B0A034(a4, 1, v926);
      v275 = v927 & 3;
      if (!v275)
      {
        return 0;
      }

      sub_298B0A034(v432, 1, v926);
      v438 = v430[(v429 >> 5) & 0x1F];
LABEL_338:
      sub_298B0A034(v432, 1, v438);
      v277 = v430[HIWORD(v429) & 0x1F];
      v278 = v432;
LABEL_222:
      sub_298B0A034(v278, 1, v277);
      return v275;
    case 712:
      v2166 = a3;
      v2167 = a0123456789Abcd_0[a3 & 0x1F];
      v2168 = a4;
      v2169 = result;
      sub_298B0A034(a4, 1, v2167);
      v2170 = v2169 & 3;
      if (!v2170)
      {
        return 0;
      }

      sub_298B0A034(v2168, 1, v2167);
      sub_298B0A034(v2168, 1, a0123456789Abcd_0[(v2166 >> 5) & 0x1F]);
      sub_298B1DBB8(v2168, HIWORD(v2166) & 0x3F, 64);
      return v2170;
    case 713:
      v2187 = a5;
      v2407 = a6;
      v2188 = a3;
      v2189 = a4;
      v2190 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2191 = v2190 & 3;
      if (!v2191)
      {
        return 0;
      }

      sub_298B1BDA0(v2189, (v2188 >> 5) & 0x7FFFF, v2187, v2407);
      return v2191;
    case 714:
      v552 = a3;
      v553 = a3 & 0x1F;
      v554 = word_298DFB86A;
      goto LABEL_441;
    case 715:
      v281 = a3;
      v282 = a3 & 0x1F;
      v283 = word_298DFB86A;
      goto LABEL_226;
    case 716:
      v281 = a3;
      v44 = a4;
      v2132 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v2132 & 3;
      if (!v46)
      {
        return 0;
      }

      v285 = (v281 >> 5) & 0x1F;
      v286 = word_298DFB86A;
      goto LABEL_228;
    case 717:
      v359 = a3;
      v360 = a3 & 0x1F;
      v361 = word_298DFBCEE;
LABEL_277:
      v362 = a4;
      v363 = result;
      sub_298B0A034(a4, 1, v361[v360]);
      v364 = v363 & 3;
      if (!v364)
      {
        return 0;
      }

      v365 = (v359 >> 5) & 0x1F;
      v366 = word_298DFB86A;
      goto LABEL_279;
    case 718:
      v2156 = a3;
      v2157 = a3 & 0x1F;
      v2158 = word_298DFB86A;
      goto LABEL_1840;
    case 719:
      v281 = a3;
      v282 = a3 & 0x1F;
      v283 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_226;
    case 720:
      v281 = a3;
      v44 = a4;
      v657 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v657 & 3;
      if (!v46)
      {
        return 0;
      }

      v285 = (v281 >> 5) & 0x1F;
      v286 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_228;
    case 721:
      v2055 = a3;
      v2056 = a3 & 0x1F;
      v2057 = word_298DFBCEE;
LABEL_2012:
      v362 = a4;
      v2314 = result;
      sub_298B0A034(a4, 1, v2057[v2056]);
      v364 = v2314 & 3;
      if (!v364)
      {
        return 0;
      }

      v365 = (v2055 >> 5) & 0x1F;
      v366 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_279;
    case 722:
      v2156 = a3;
      v2157 = a3 & 0x1F;
      v2158 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1840;
    case 723:
      v2203 = result;
      sub_298B1D7B8(a4, a3);
      return v2203 & 3;
    case 724:
      v281 = a3;
      v282 = a3 & 0x1F;
      v283 = word_298DFB36E;
LABEL_226:
      v44 = a4;
      v284 = result;
      sub_298B0A034(a4, 1, v283[v282]);
      v46 = v284 & 3;
      if (!v46)
      {
        return 0;
      }

      v285 = (v281 >> 5) & 0x1F;
      v286 = word_298DFBCEE;
      goto LABEL_228;
    case 725:
      v281 = a3;
      v44 = a4;
      v2184 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v2184 & 3;
      if (!v46)
      {
        return 0;
      }

      v285 = (v281 >> 5) & 0x1F;
      v286 = word_298DFB36E;
LABEL_228:
      sub_298B0A034(v44, 1, v286[v285]);
      v287 = v281 >> 10;
      v288 = 64;
LABEL_229:
      v50 = (v288 - v287);
LABEL_43:
      v51 = v44;
      goto LABEL_44;
    case 726:
      v2159 = a3;
      v2160 = a3 & 0x1F;
      v2161 = word_298DFBCEE;
LABEL_1895:
      v362 = a4;
      v2217 = result;
      sub_298B0A034(a4, 1, v2161[v2160]);
      v364 = v2217 & 3;
      if (!v364)
      {
        return 0;
      }

      v365 = (v2159 >> 5) & 0x1F;
      v366 = word_298DFB36E;
      goto LABEL_279;
    case 727:
      v2156 = a3;
      v2157 = a3 & 0x1F;
      v2158 = word_298DFB36E;
LABEL_1840:
      v362 = a4;
      v2162 = result;
      sub_298B0A034(a4, 1, v2158[v2157]);
      v364 = v2162 & 3;
      if (!v364)
      {
        return 0;
      }

      v365 = (v2156 >> 5) & 0x1F;
      v366 = word_298DFBCEE;
LABEL_279:
      v367 = v366[v365];
LABEL_280:
      v368 = v362;
LABEL_281:
      v369 = 1;
      goto LABEL_282;
    case 728:
      v2143 = a3;
      v2144 = a3 & 0x1F;
      v2145 = word_298DFB86A;
      goto LABEL_1869;
    case 729:
      v757 = a3;
      v758 = a3 & 0x1F;
      v759 = word_298DFB86A;
      goto LABEL_584;
    case 730:
      v552 = a3;
      v553 = a3 & 0x1F;
      v554 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_441:
      v555 = a4;
      v556 = result;
      sub_298B0A034(a4, 1, v554[v553]);
      v46 = v556 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v555, (v552 >> 5) & 0x1F);
      if (((v552 >> 12) & 0x100) != 0)
      {
        v50 = (v552 >> 12) & 0x1FF | 0xFFFFFFFFFFFFFE00;
      }

      else
      {
        v50 = (v552 >> 12) & 0x1FF;
      }

      v51 = v555;
LABEL_44:
      v52 = 2;
      goto LABEL_45;
    case 731:
      v2143 = a3;
      v2144 = a3 & 0x1F;
      v2145 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_1869:
      v760 = a4;
      v2195 = result;
      sub_298B0A034(a4, 1, v2145[v2144]);
      v190 = v2195 & 3;
      if (!v190)
      {
        return 0;
      }

      v762 = v2143;
      sub_298B1A150(v760, (v2143 >> 5) & 0x1F);
      sub_298B1A55C(v760, HIWORD(v2143) & 0x1F);
      goto LABEL_586;
    case 732:
      v757 = a3;
      v758 = a3 & 0x1F;
      v759 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_584:
      v760 = a4;
      v761 = result;
      sub_298B0A034(a4, 1, v759[v758]);
      v190 = v761 & 3;
      if (!v190)
      {
        return 0;
      }

LABEL_585:
      v762 = v757;
      sub_298B1A150(v760, (v757 >> 5) & 0x1F);
      sub_298B0A034(v760, 1, word_298DFBCEE[HIWORD(v757) & 0x1F]);
LABEL_586:
      v200 = (v762 >> 14) & 2 | (v762 >> 12) & 1;
      v201 = v760;
LABEL_154:
      sub_298B1CE54(v201, v200);
      return v190;
    case 733:
      v603 = a7;
      v2185 = result;
      v2186 = sub_298B1D948(a4, a3, a6);
      v683 = v2186 & v2185;
      if ((v2186 & v2185) != 0)
      {
        return v683;
      }

LABEL_1859:
      result = 0;
      *v603 = 0;
      return result;
    case 734:
      v561 = a3;
      v562 = a4;
      v563 = result;
      sub_298B0A034(a4, 2, (a3 >> 5));
      v46 = v563 & 3;
      if (!v46)
      {
        return 0;
      }

      v564 = v561 & 0x1F;
LABEL_452:
      v565 = word_298DFBCEE;
LABEL_453:
      v50 = v565[v564];
LABEL_454:
      v51 = v562;
      v52 = 1;
LABEL_45:
      sub_298B0A034(v51, v52, v50);
      return v46;
    case 735:
      v2171 = a3;
      v1213 = a4;
      v2172 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v364 = v2172 & 3;
      if (!v364)
      {
        return 0;
      }

      v367 = (v2171 >> 5);
LABEL_2051:
      v368 = v1213;
LABEL_686:
      v369 = 2;
LABEL_282:
      sub_298B0A034(v368, v369, v367);
      return v364;
    case 736:
      v450 = result;
      v451 = a3 & 7 | (8 * ((a3 >> 12) & 3)) | (a3 >> 10) & 0x20;
      v452 = *(a4 + 24);
      if (v452 >= *(a4 + 28))
      {
        v1150 = a3;
        v1151 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v452 + 1, 16);
        LODWORD(a3) = v1150;
        a4 = v1151;
        LODWORD(v452) = *(v1151 + 24);
      }

      v453 = (*(a4 + 16) + 16 * v452);
      *v453 = 2;
      v453[1] = v451;
      ++*(a4 + 24);
      v454 = a3;
      v455 = a4;
      sub_298B0A034(a4, 1, word_298DFBCEE[WORD1(a3) & 0x1F]);
      v356 = v450 & 3;
      if (!v356)
      {
        return 0;
      }

LABEL_349:
      v357 = (v454 >> 5) & 0x1F;
LABEL_350:
      v358 = v455;
LABEL_351:
      sub_298B1A150(v358, v357);
      return v356;
    default:
      v2163 = result;
      sub_298B0A034(a4, 2, a3);
      return v2163;
  }
}