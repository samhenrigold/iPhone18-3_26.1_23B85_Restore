uint64_t GCLSourceFromData(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_2500F09CC("GCLSourceFromData");
  if (v6)
  {
    return v6(a1, a2, a3);
  }

  if (!a3)
  {
    return 0x8000000000000000;
  }

  *a3 = 0;
  if (!a1)
  {
    return 0x8000000000000000;
  }

  v8 = operator new(0x30uLL);
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = v8 + 3;
  v9 = operator new(0x10uLL);
  result = 0;
  v8[5] = v9;
  *v9 = &unk_286298630;
  v9[1] = v8 + 5;
  *v8 = a1;
  v8[1] = a2;
  *a3 = v8;
  return result;
}

void GCLSourceRelease(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    sub_2500E5D88((a1 + 2), a1[3]);

    operator delete(a1);
  }
}

uint64_t GCLSourceOptionSet(uint64_t a1, char *__s, int a3)
{
  result = 0x8000000000000000;
  if (!a1 || !__s)
  {
    return result;
  }

  v7 = strlen(__s);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2500E5C5C();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    __dst[1] = v8;
    v14 = v10 | 0x8000000000000000;
    __dst[0] = v9;
  }

  else
  {
    HIBYTE(v14) = v7;
    v9 = __dst;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  memcpy(v9, __s, v8);
LABEL_12:
  *(v8 + v9) = 0;
  v15 = __dst;
  v11 = sub_2500E5E34((a1 + 16), __dst, &unk_25010FF31, &v15);
  v12 = v11;
  if (*(v11 + 20))
  {
    sub_2500E5D18(v11 + 56);
    *(v12 + 20) = 0;
  }

  *(v12 + 14) = a3;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  return 0;
}

void sub_2500E5AA8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500E5A88);
}

uint64_t GCLDecodeMeshFromSource(uint64_t a1, uint64_t a2)
{
  sub_2500E6250(&log);
  v4 = log;
  v10[0] = log;
  v5 = os_signpost_id_generate(log);
  v10[1] = v5;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2500E5000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "GCLDecodeMeshFromSource", "", buf, 2u);
    }
  }

  v7 = 0x8000000000000000;
  if (a1)
  {
    if (a2)
    {
      if (*(a2 + 16) || (v7 = (*(**(a1 + 40) + 16))(*(a1 + 40), a1, a2)) == 0)
      {
        v7 = (*(**(a1 + 40) + 24))(*(a1 + 40), a1, a2);
      }
    }
  }

  sub_2500E62E4(v10);
  return v7;
}

void sub_2500E5C08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2500E62E4(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500E5BF0);
}

void sub_2500E5C4C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500E5C44);
}

void sub_2500E5C74(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2500E5CD0(exception, a1);
  __cxa_throw(exception, &unk_286298358, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2500E5CD0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_2500E5D18(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_286298370[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_2500E5D74(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_2500E5D88(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2500E5D88(a1, *a2);
    sub_2500E5D88(a1, a2[1]);
    sub_2500E5DE4((a2 + 4));

    operator delete(a2);
  }
}

void sub_2500E5DE4(uint64_t a1)
{
  sub_2500E5D18(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

_OWORD *sub_2500E5E34(uint64_t ***a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_2500E5EF0(a1, &v13, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x58uLL);
    v12[1] = a1;
    v12[2] = 1;
    v9 = *a4;
    v10 = *(*a4 + 2);
    v7[2] = **a4;
    *(v7 + 6) = v10;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    *(v7 + 14) = 0;
    *(v7 + 20) = 0;
    sub_2500E5F78(a1, v13, v8, v7);
    v12[0] = 0;
    sub_2500E5FD0(v12);
  }

  return v7;
}

uint64_t *sub_2500E5EF0(uint64_t a1, char **a2, uint64_t ***a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_2500E601C(a3, v4 + 32) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_2500E601C(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *sub_2500E5F78(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2500E60B4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_2500E5FD0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2500E5DE4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2500E601C(uint64_t ***a1, char *a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = a2[23];
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  return sub_2500E6054(a1, v2, v5, v6);
}

uint64_t sub_2500E6054(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *sub_2500E60B4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *sub_2500E6250(void *result)
{
  v1 = 0x27F3C0000uLL;
  if ((atomic_load_explicit(&qword_27F3C08B8, memory_order_acquire) & 1) == 0)
  {
    v4 = result;
    v2 = __cxa_guard_acquire(&qword_27F3C08B8);
    v1 = 0x27F3C0000;
    v3 = v2;
    result = v4;
    if (v3)
    {
      qword_27F3C08B0 = os_log_create("com.apple.GeometryCompression", "gcl");
      __cxa_guard_release(&qword_27F3C08B8);
      v1 = 0x27F3C0000;
      result = v4;
    }
  }

  *result = *(v1 + 2224);
  return result;
}

uint64_t sub_2500E62E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = *a1;
    if (os_signpost_enabled(*a1))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_2500E5000, v3, OS_SIGNPOST_INTERVAL_END, v2, "GCLDecodeMeshFromSource", "", v5, 2u);
    }
  }

  return a1;
}

unint64_t sub_2500E636C(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v104 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v3 = a2[1];
  sub_2500E76A4((a1 + 8));
  __p[0] = 0xEEB6CC7FFAA28E71;
  if (sub_2500EA484(v4, v3 & ~(v3 >> 63), __p, 2))
  {
    return 0x8000000000000000;
  }

  LOBYTE(v97) = 0;
  *__p = 0u;
  v96 = 0u;
  if (!sub_2500F1000(v4, v3 & ~(v3 >> 63), __p) || v6 < 0)
  {
    return 0x8000000000000000;
  }

  v7 = LODWORD(__p[1]);
  v8 = SHIDWORD(__p[1]);
  v10 = v96;
  v9 = DWORD1(v96);
  v11 = HIDWORD(v96);
  v83 = DWORD2(v96);
  v12 = v97;
  __p[0] = "vtxs";
  __p[1] = 4;
  v94 = 260;
  *&__dst = v8;
  v86 = 3;
  v93 = a3[2];
  v13 = sub_2500E71FC(a3, 0, 0, &v93, __p, &v94, &__dst, &v86);
  v13[1] = a3;
  v14 = *a3;
  *v13 = *a3;
  *(v14 + 8) = v13;
  *a3 = v13;
  v15 = a3[2] + 1;
  a3[2] = v15;
  __p[0] = "idxs";
  __p[1] = 4;
  v94 = 260;
  *&__dst = v9;
  v86 = 1;
  v93 = v15;
  v16 = sub_2500E71FC(a3, 0, 0, &v93, __p, &v94, &__dst, &v86);
  v16[1] = a3;
  v17 = *a3;
  *v16 = *a3;
  v17[1] = v16;
  *a3 = v16;
  v18 = a3[2] + 1;
  a3[2] = v18;
  v19 = v10;
  __p[0] = "topo";
  __p[1] = 4;
  v94 = 260;
  *&__dst = v10;
  v86 = 1;
  v93 = v18;
  v20 = sub_2500E71FC(a3, 0, 0, &v93, __p, &v94, &__dst, &v86);
  v20[1] = a3;
  v21 = *a3;
  *v20 = *a3;
  v21[1] = v20;
  *a3 = v20;
  v22 = a3[2] + 1;
  a3[2] = v22;
  if (v12)
  {
    __p[0] = "fgrp";
    __p[1] = 4;
    v94 = 260;
    *&__dst = v19;
    v86 = 1;
    v93 = v22;
    v23 = sub_2500E71FC(a3, 0, 0, &v93, __p, &v94, &__dst, &v86);
    v23[1] = a3;
    v24 = *a3;
    *v23 = *a3;
    v24[1] = v23;
    *a3 = v23;
    a3[2] = (a3[2] + 1);
    v25 = v23 + 2;
  }

  else
  {
    v25 = 0;
  }

  if (v11 == 1)
  {
    v26 = 4 * v19;
  }

  else if (v11)
  {
    v26 = 0;
  }

  else
  {
    v26 = 3 * v19;
  }

  if (v16[5] == v26)
  {
    v16[5] = v19;
    if (v11 > 3)
    {
      v27 = 0;
    }

    else
    {
      v27 = qword_25010FFB0[v11];
    }

    v16[6] = v27;
    v16[7] = v27;
  }

  sub_2500E6F30(__p, "faceType");
  *&__dst = __p;
  v28 = sub_2500E5E34(v16 + 12, __p, &unk_25010FF31, &__dst);
  v29 = v28;
  if (*(v28 + 20))
  {
    sub_2500E5D18(v28 + 56);
    *(v29 + 20) = 0;
  }

  *(v29 + 14) = v11;
  if (SBYTE7(v96) < 0)
  {
    operator delete(__p[0]);
  }

  v30 = *(v16 + 30);
  sub_2500E6F30(__p, "idxdby");
  *&__dst = __p;
  v31 = sub_2500E5E34(v13 + 12, __p, &unk_25010FF31, &__dst);
  v32 = v31;
  if (*(v31 + 20))
  {
    sub_2500E5D18(v31 + 56);
    *(v32 + 20) = 0;
  }

  *(v32 + 14) = v30;
  if (SBYTE7(v96) < 0)
  {
    operator delete(__p[0]);
  }

  sub_2500E6F30(__p, "bitdepth");
  *&__dst = __p;
  v33 = sub_2500E5E34(v13 + 12, __p, &unk_25010FF31, &__dst);
  v34 = v33;
  if (*(v33 + 20))
  {
    sub_2500E5D18(v33 + 56);
    *(v34 + 20) = 0;
  }

  *(v34 + 14) = v83;
  if (SBYTE7(v96) < 0)
  {
    operator delete(__p[0]);
  }

  v35 = operator new(0x38uLL);
  *v35 = &unk_2862983B0;
  v35[1] = v13 + 2;
  v35[2] = v16 + 2;
  v35[3] = v20 + 2;
  v35[4] = v25;
  v35[5] = v4;
  v35[6] = v3;
  *(&v96 + 1) = v35;
  sub_2500E6FD8((a1 + 8), __p);
  sub_2500E795C(__p);
  result = 0;
  if (v7)
  {
    v36 = v3 - v7;
    if (v3 - v7 >= 1)
    {
      if (v4)
      {
        v37 = (v7 + v4);
      }

      else
      {
        v37 = v7;
      }

      do
      {
        __p[0] = 0xEEB6CC7FFAA28E71;
        if (sub_2500EA484(v37, v36, __p, 2))
        {
          return 0x8000000000000000;
        }

        v98 = 0;
        v96 = 0u;
        v97 = 0u;
        *__p = 0u;
        if (!sub_2500F27D0(v37, v36, __p) || v38 < 0)
        {
          return 0x8000000000000000;
        }

        v81 = v37;
        v84 = DWORD1(v97);
        v39 = "attr";
        if ((v97 - 1) <= 4)
        {
          v39 = (&off_27969C868)[(v97 - 1)];
        }

        v40 = LODWORD(__p[1]);
        v82 = SHIDWORD(__p[1]);
        v41 = v96;
        v75 = SDWORD1(v96);
        v42 = HIDWORD(v96);
        v78 = HIDWORD(v97);
        v79 = DWORD2(v97);
        v43 = strlen(v39);
        sub_2500E6F30(__p, "attrScope");
        v77 = v40;
        DWORD2(v96) = v84;
        v98 = 0;
        if (v84 >= 5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x25305EAE0](exception, "Unknown scope");
          __cxa_throw(exception, &unk_286298448, MEMORY[0x277D82600]);
        }

        v44 = dword_25010FFD0[v84];
        sub_2500E6F30(v99, "attrScopeM");
        v100 = v44;
        v101 = 0;
        sub_2500E6F30(v102, "bitdepth");
        v45 = 0;
        v103[0] = v42;
        v103[6] = 0;
        v87 = 0;
        v88 = 0;
        v86 = &v87;
        do
        {
          sub_2500E73C8(&v86, &v87, &__p[v45], &__p[v45]);
          v45 += 7;
        }

        while (v45 != 21);
        if (v43 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_2500E5C5C();
        }

        if (v43 >= 0x17)
        {
          if ((v43 | 7) == 0x17)
          {
            v47 = 25;
          }

          else
          {
            v47 = (v43 | 7) + 1;
          }

          p_dst = operator new(v47);
          *(&__dst + 1) = v43;
          v90 = v47 | 0x8000000000000000;
          *&__dst = p_dst;
        }

        else
        {
          HIBYTE(v90) = v43;
          p_dst = &__dst;
          if (!v43)
          {
            goto LABEL_53;
          }
        }

        memcpy(p_dst, v39, v43);
LABEL_53:
        *(p_dst + v43) = 0;
        v91 = v86;
        v92[0] = v87;
        v92[1] = v88;
        if (v88)
        {
          v87[2] = v92;
          v86 = &v87;
          v87 = 0;
          v88 = 0;
        }

        else
        {
          v91 = v92;
        }

        v48 = a3[2];
        v49 = operator new(0x80uLL);
        v50 = v49;
        *(v49 + 1) = 0u;
        *v49 = 0u;
        *(v49 + 8) = 260;
        *(v49 + 5) = v82;
        *(v49 + 6) = v41;
        *(v49 + 7) = v41;
        v49[64] = 0;
        v76 = v49 + 16;
        if (SHIBYTE(v90) < 0)
        {
          sub_2500E7334(v49 + 72, __dst, *(&__dst + 1));
        }

        else
        {
          *(v49 + 72) = __dst;
          *(v49 + 11) = v90;
        }

        v50[13] = 0;
        v50[12] = (v50 + 13);
        v51 = (v50 + 12);
        v50[14] = 0;
        v52 = v91;
        if (v91 != v92)
        {
          do
          {
            sub_2500E73C8((v50 + 12), (v50 + 13), v52 + 32, (v52 + 32));
            v53 = *(v52 + 1);
            if (v53)
            {
              do
              {
                v54 = v53;
                v53 = *v53;
              }

              while (v53);
            }

            else
            {
              do
              {
                v54 = *(v52 + 2);
                v55 = *v54 == v52;
                v52 = v54;
              }

              while (!v55);
            }

            v52 = v54;
          }

          while (v54 != v92);
        }

        v50[15] = v48;
        v56 = a3;
        v57 = *a3;
        *v50 = *a3;
        v50[1] = a3;
        *(v57 + 8) = v50;
        *a3 = v50;
        a3[2] = (a3[2] + 1);
        sub_2500E5D88(&v91, v92[0]);
        if (SHIBYTE(v90) < 0)
        {
          operator delete(__dst);
        }

        sub_2500E5D88(&v86, v87);
        v58 = 0;
        v59 = v81;
        do
        {
          sub_2500E5D18(&v103[v58 / 4]);
          if (SHIBYTE(v102[v58 / 8 + 2]) < 0)
          {
            operator delete(v102[v58 / 8]);
          }

          v58 -= 56;
        }

        while (v58 != -168);
        if (v79 == 1)
        {
          __p[0] = "cond";
          __p[1] = 4;
          v94 = 1;
          *&__dst = v82;
          v86 = 1;
          v93 = a3[2];
          v60 = sub_2500E71FC(a3, 0, 0, &v93, __p, &v94, &__dst, &v86);
          v60[1] = a3;
          v61 = *a3;
          *v60 = *a3;
          *(v61 + 8) = v60;
          *a3 = v60;
          a3[2] = (a3[2] + 1);
          v62 = *(v60 + 30);
          sub_2500E6F30(__p, "condby");
          *&__dst = __p;
          v63 = sub_2500E5E34(v51, __p, &unk_25010FF31, &__dst);
          v64 = v63;
          if (*(v63 + 20))
          {
            sub_2500E5D18(v63 + 56);
            *(v64 + 20) = 0;
          }

          *(v64 + 14) = v62;
          if (SBYTE7(v96) < 0)
          {
            operator delete(__p[0]);
          }

          v65 = v60 + 2;
          v56 = a3;
          v59 = v81;
        }

        else
        {
          v65 = 0;
        }

        if (v78)
        {
          __p[0] = "idxs";
          __p[1] = 4;
          v94 = 4;
          *&__dst = v75;
          v86 = 1;
          v66 = v56 + 2;
          v93 = v56[2];
          v67 = sub_2500E71FC(v56, 0, 0, &v93, __p, &v94, &__dst, &v86);
          v67[1] = a3;
          v68 = *a3;
          *v67 = *a3;
          *(v68 + 8) = v67;
          *a3 = v67;
          ++*v66;
          v69 = *(v67 + 30);
          sub_2500E6F30(__p, "idxdby");
          *&__dst = __p;
          v70 = sub_2500E5E34(v51, __p, &unk_25010FF31, &__dst);
          v71 = v70;
          if (*(v70 + 20))
          {
            sub_2500E5D18(v70 + 56);
            *(v71 + 20) = 0;
          }

          *(v71 + 14) = v69;
          if (SBYTE7(v96) < 0)
          {
            operator delete(__p[0]);
          }

          v72 = v67 + 2;
        }

        else
        {
          v72 = 0;
        }

        v73 = operator new(0x38uLL);
        *v73 = &unk_2862983F8;
        v73[1] = v76;
        v73[2] = v65;
        v73[3] = v72;
        *(v73 + 8) = v84;
        v73[5] = v59;
        v73[6] = v36;
        *(&v96 + 1) = v73;
        sub_2500E6FD8((a1 + 8), __p);
        sub_2500E795C(__p);
        result = 0;
        if (v59)
        {
          v37 = (v77 + v59);
        }

        else
        {
          v37 = v77;
        }

        v36 -= v77;
      }

      while (v36 >= 1 && v77);
    }
  }

  return result;
}

void *sub_2500E6F30(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2500E5C5C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t sub_2500E6FD8(uint64_t *a1, uint64_t a2)
{
  v4 = operator new(0x30uLL);
  *v4 = 0;
  v4[1] = 0;
  v6 = (a2 + 24);
  result = *(a2 + 24);
  if (result)
  {
    if (result == a2)
    {
      v4[5] = v4 + 2;
      result = (*(*result + 24))(result);
      goto LABEL_7;
    }

    v4[5] = result;
  }

  else
  {
    v6 = v4 + 5;
  }

  *v6 = 0;
LABEL_7:
  v7 = *a1;
  *v4 = *a1;
  v4[1] = a1;
  *(v7 + 8) = v4;
  *a1 = v4;
  ++a1[2];
  return result;
}

uint64_t sub_2500E7088(uint64_t a1)
{
  sub_2500E5D18(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2500E70C4(uint64_t a1)
{
  sub_2500FBCFC(&v9);
  v2 = a1 + 8;
  for (i = *(a1 + 16); i != v2; i = *(i + 8))
  {
    v4 = *(i + 40);
    if (!v4)
    {
      sub_2500E7BF0();
    }

    v5 = (*(*v4 + 48))(v4, &v9);
    if (v5)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  v6 = v9;
  v9 = 0;
  if (v6)
  {
    v7 = sub_2500FD840(v6);
    operator delete(v7);
  }

  return v5;
}

void sub_2500E7170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    v11 = sub_2500FD840(a10);
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500E71C0(char *a1)
{
  sub_2500E76A4(a1 + 1);

  operator delete(a1);
}

void *sub_2500E71FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int *a6, uint64_t *a7, uint64_t *a8)
{
  v15 = operator new(0x80uLL);
  v16 = v15;
  *v15 = a2;
  v15[1] = a3;
  v15[2] = 0;
  v17 = *a4;
  v19 = *a5;
  v18 = *(a5 + 8);
  v20 = *a6;
  v21 = *a7;
  v22 = *a8;
  v15[3] = 0;
  *(v15 + 8) = v20;
  v15[5] = v21;
  v15[6] = v22;
  v15[7] = v22;
  *(v15 + 64) = 0;
  if (v18 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2500E5C5C();
  }

  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v18 | 7) + 1;
    }

    v23 = operator new(v24);
    v16[10] = v18;
    v16[11] = v24 | 0x8000000000000000;
    v16[9] = v23;
  }

  else
  {
    v23 = v15 + 9;
    *(v15 + 95) = v18;
    if (!v18)
    {
      goto LABEL_10;
    }
  }

  memmove(v23, v19, v18);
LABEL_10:
  *(v23 + v18) = 0;
  v16[13] = 0;
  v16[12] = v16 + 13;
  v16[14] = 0;
  v16[15] = v17;
  return v16;
}

void sub_2500E7308(_Unwind_Exception *a1)
{
  if (v1[64] == 1)
  {
    if (*v2)
    {
      operator delete[](*v2);
    }
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_2500E7334(_BYTE *__dst, void *__src, unint64_t a3)
{
  v5 = __dst;
  if (a3 > 0x16)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2500E5C5C();
    }

    if ((a3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (a3 | 7) + 1;
    }

    v7 = operator new(v6);
    v5[1] = a3;
    v5[2] = v6 | 0x8000000000000000;
    *v5 = v7;
    v5 = v7;
  }

  else
  {
    __dst[23] = a3;
  }

  return memmove(v5, __src, a3 + 1);
}

uint64_t sub_2500E73C8(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v7 = result;
  v8 = (result + 8);
  if (result + 8 == a2 || (result = sub_2500E601C(a3, (a2 + 32)), (result & 0x80) != 0))
  {
    if (*v7 == a2)
    {
      v11 = a2;
    }

    else
    {
      v10 = *a2;
      if (*a2)
      {
        do
        {
          v11 = v10;
          v10 = *(v10 + 8);
        }

        while (v10);
      }

      else
      {
        v15 = a2;
        do
        {
          v11 = *(v15 + 16);
          v16 = *v11 == v15;
          v15 = v11;
        }

        while (v16);
      }

      result = sub_2500E601C((v11 + 32), a3);
      if ((result & 0x80) == 0)
      {
        goto LABEL_18;
      }
    }

    if (*a2)
    {
      v24 = v11;
      v9 = (v11 + 8);
    }

    else
    {
      v24 = a2;
      v9 = a2;
    }

LABEL_31:
    if (*v9)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = sub_2500E601C((a2 + 32), a3);
  if ((result & 0x80) != 0)
  {
    v9 = (a2 + 8);
    v12 = *(a2 + 8);
    if (v12)
    {
      v13 = *(a2 + 8);
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      v17 = a2;
      do
      {
        v14 = *(v17 + 16);
        v16 = *v14 == v17;
        v17 = v14;
      }

      while (!v16);
    }

    if (v14 == v8)
    {
      goto LABEL_28;
    }

    result = sub_2500E601C(a3, v14 + 32);
    if ((result & 0x80) != 0)
    {
      v12 = *v9;
LABEL_28:
      if (v12)
      {
        v24 = v14;
        v9 = v14;
      }

      else
      {
        v24 = a2;
      }

      goto LABEL_31;
    }

LABEL_18:
    result = sub_2500E5EF0(v7, &v24, a3);
    v9 = result;
    goto LABEL_31;
  }

  v23 = a2;
  v24 = a2;
  v9 = &v23;
  if (a2)
  {
    return result;
  }

LABEL_32:
  v18 = operator new(0x58uLL);
  v19 = v18;
  v21[0] = v18;
  v21[1] = v7;
  v22 = 0;
  if (*(a4 + 23) < 0)
  {
    sub_2500E7334(v18 + 32, *a4, *(a4 + 8));
  }

  else
  {
    *(v18 + 2) = *a4;
    v18[6] = *(a4 + 16);
  }

  *(v19 + 56) = 0;
  *(v19 + 20) = -1;
  sub_2500E5D18((v19 + 7));
  v20 = *(a4 + 48);
  if (v20 != -1)
  {
    v25 = v19 + 7;
    (off_286298390[v20])(&v25, a4 + 24);
    *(v19 + 20) = v20;
  }

  LOBYTE(v22) = 1;
  sub_2500E5F78(v7, v24, v9, v21[0]);
  v21[0] = 0;
  return sub_2500E5FD0(v21);
}

void *sub_2500E7638(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_2500E7334(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_2500E7664(uint64_t a1)
{
  sub_2500E5D88(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2500E76A4(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_2500E795C((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

__n128 sub_2500E7720(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_2862983B0;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  return result;
}

__n128 sub_2500E777C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862983B0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_2500E77BC(uint64_t a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v17[0] = *(a1 + 8);
  v17[1] = v4;
  sub_2500E78E4(v17, 4);
  *&v17[0] = 0;
  v5 = *(a1 + 8);
  if (!v5 || (v6 = *v5) == 0)
  {
    v6 = 0;
    v5 = &qword_250110420;
  }

  v7 = *(a1 + 24);
  if (!v7 || (v8 = *v7) == 0)
  {
    v8 = 0;
    v7 = &qword_250110420;
  }

  v9 = *(a1 + 16);
  if (!v9 || (v10 = *v9) == 0)
  {
    v10 = 0;
    v9 = &qword_250110420;
  }

  v11 = v5[1];
  v12 = v7[1];
  v13 = v9[1];
  v14 = *(a1 + 32);
  if (!v14 || (v15 = *v14) == 0)
  {
    v15 = 0;
    v14 = &qword_250110420;
  }

  return (sub_2500F0C28(*a2, *(a1 + 40), *(a1 + 48) & ~(*(a1 + 48) >> 63), v17, (v6 + 4 * v11), (v8 + 4 * v12), (v10 + 4 * v13), (v15 + 4 * v14[1])) != 0) << 63;
}

uint64_t *sub_2500E78E4(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = 8 * a2;
    do
    {
      v4 = *v2;
      if (*v2)
      {
        if (!*v4)
        {
          v5 = *(v4 + 24) * *(v4 + 16) * *(v4 + 40);
          *(v4 + 8) = 0;
          result = operator new[](v5);
          *v4 = result;
          *(v4 + 48) = 1;
        }
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2500E795C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_2500E79E4(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_2862983F8;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  return result;
}

__n128 sub_2500E7A40(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862983F8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_2500E7A80(uint64_t a1, uint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 8) + 24))
  {
    return 0;
  }

  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  sub_2500E78E4(&v20, 3);
  v20 = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48) & ~(*(a1 + 48) >> 63);
  v6 = *(a1 + 8);
  if (*(a1 + 32))
  {
    if (!v6 || (v7 = *v6) == 0)
    {
      v7 = 0;
      v6 = &qword_250110420;
    }

    v8 = v7 + 4 * v6[1];
    v9 = *(a1 + 24);
    if (!v9 || (v10 = *v9) == 0)
    {
      v10 = 0;
      v9 = &qword_250110420;
    }

    v11 = (v10 + 4 * v9[1]);
    v12 = *(a1 + 16);
    if (!v12 || (v13 = *v12) == 0)
    {
      v13 = 0;
      v12 = &qword_250110420;
    }

    v14 = sub_2500F7358(*a2, v4, v5, &v20, v8, v13 + v12[1], v11);
  }

  else
  {
    if (!v6 || (v16 = *v6) == 0)
    {
      v16 = 0;
      v6 = &qword_250110420;
    }

    v17 = v16 + 4 * v6[1];
    v18 = *(a1 + 16);
    if (!v18 || (v19 = *v18) == 0)
    {
      v19 = 0;
      v18 = &qword_250110420;
    }

    v14 = sub_2500F24AC(*a2, v4, v5, &v20, v17, v19 + v18[1]);
  }

  return (v14 != 0) << 63;
}

void sub_2500E7BF0()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, &unk_286298430, MEMORY[0x277D82660]);
}

void sub_2500E7C3C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_2500E9A94();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 >> 61)
      {
        sub_2500E9AAC();
      }

      v12 = operator new(8 * v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * (v8 >> 3)];
    *v13 = a2;
    v6 = v13 + 8;
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = v6;
    *(a1 + 16) = &v12[8 * v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_2500E7D20(uint64_t a1)
{
  v2 = *(a1 + 344);
  if (!v2)
  {
    sub_2500E7BF0();
  }

  (*(*v2 + 48))(v8);
  if (*(a1 + 144) == 1)
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  v4 = v8[1];
  *(a1 + 96) = v8[0];
  *(a1 + 104) = v4;
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  *(a1 + 136) = v11;
  *(a1 + 144) = v12;
  v12 = 0;
  if (*(a1 + 256) == 1)
  {
    v5 = *(a1 + 208);
    if (v5)
    {
      operator delete[](v5);
    }
  }

  v6 = v14;
  *(a1 + 208) = v13;
  *(a1 + 216) = v6;
  *(a1 + 224) = v15;
  *(a1 + 232) = v16;
  *(a1 + 248) = v17;
  *(a1 + 256) = v18;
  v18 = 0;
  if (*(a1 + 152))
  {
    if (v24)
    {
      if (__p)
      {
        operator delete[](__p);
        if (v18)
        {
          if (v13)
          {
            operator delete[](v13);
          }
        }
      }
    }
  }

  else
  {
    v7 = v20;
    *(a1 + 152) = __p;
    *(a1 + 160) = v7;
    *(a1 + 168) = v21;
    *(a1 + 176) = v22;
    *(a1 + 192) = v23;
    *(a1 + 200) = v24;
    v24 = 0;
  }

  if (v12 == 1)
  {
    if (v8[0])
    {
      operator delete[](v8[0]);
    }
  }
}

uint64_t sub_2500E7E7C(uint64_t a1)
{
  v1 = *(a1 + 232);
  v2 = 12 * *(a1 + 64) + 4 * v1;
  v3 = 4 * v1;
  v4 = v2 + 4 * *(a1 + 128) * *(a1 + 120);
  if (!*(a1 + 24))
  {
    v3 = 0;
  }

  return v4 + v3 + 1024;
}

unint64_t sub_2500E7EB8(uint64_t a1, void *a2, uint64_t *a3)
{
  if ((*(a1 + 32) & 0x80000000) == 0 && sub_2501007B0(a1, *(a1 + 40) + 4 * *(a1 + 48), *(a1 + 64), *(a1 + 208) + 4 * *(a1 + 216), *(a1 + 232), *(a1 + 96) + 4 * *(a1 + 104), *(a1 + 120) * *(a1 + 128), *(a1 + 152) + 4 * *(a1 + 160), (a1 + 32), a1 + 8))
  {
    return 0x8000000000000000;
  }

  v35 = 0;
  if (sub_2500FDBEC(*a2, (*(a1 + 40) + 4 * *(a1 + 48)), *(a1 + 64), (*(a1 + 208) + 4 * *(a1 + 216)), *(a1 + 232), (*(a1 + 96) + 4 * *(a1 + 104)), *(a1 + 120) * *(a1 + 128), (*(a1 + 152) + 4 * *(a1 + 160)), *a3, a3[1] & ~(a3[1] >> 63), &v35, 0, 0, 0, a1 + 8))
  {
    return 0x8000000000000000;
  }

  v7 = *(a1 + 264);
  if (v7)
  {
    v8 = v7[3];
    if (v8)
    {
      v9 = *v7;
      if (*v7)
      {
        v10 = v7[1];
      }

      else
      {
        v11 = v7[5] * v8 * *(v7 + 16);
        v7[1] = 0;
        v9 = operator new[](v11);
        v10 = 0;
        *v7 = v9;
        *(v7 + 48) = 1;
      }

      memmove(&v9[4 * v10], *(*a2 + 64), 4 * v8);
    }
  }

  v12 = *(a1 + 280);
  v13 = *(a1 + 272);
  if (v13 != v12)
  {
    v14 = 0;
    v15 = *(*a2 + 40);
    do
    {
      v16 = *v13;
      v17 = **v13;
      if (!v17)
      {
        v18 = v16[3];
        if (v18)
        {
          v19 = v16[5] * v18 * *(v16 + 16);
          v16[1] = 0;
          v17 = operator new[](v19);
          *v16 = v17;
          *(v16 + 48) = 1;
        }

        else
        {
          v17 = 0;
        }
      }

      v20 = v16[3];
      if (v20)
      {
        v21 = &v17[4 * v16[1]];
        v22 = 4 * v20;
        v23 = v15;
        do
        {
          v24 = *v23++;
          *v21 = v24 - v14;
          v21 += 4;
          v22 -= 4;
        }

        while (v22);
      }

      v15 += v20;
      v14 += v20;
      ++v13;
    }

    while (v13 != v12);
  }

  v26 = *(a1 + 296);
  v25 = *(a1 + 304);
  if (v26 != v25)
  {
    v27 = *(*a2 + 256);
    do
    {
      v28 = *v26;
      v29 = **v26;
      if (!v29)
      {
        v30 = v28[3];
        if (v30)
        {
          v31 = v28[5] * v30 * *(v28 + 16);
          v28[1] = 0;
          v29 = operator new[](v31);
          *v28 = v29;
          *(v28 + 48) = 1;
        }

        else
        {
          v29 = 0;
        }
      }

      v32 = v28[3];
      if (v32)
      {
        memmove(&v29[4 * v28[1]], v27, 4 * v32);
        v32 = v28[3];
      }

      v27 += 4 * v32;
      ++v26;
    }

    while (v26 != v25);
  }

  result = 0;
  if (*a3)
  {
    v33 = *a3 + v35;
  }

  else
  {
    v33 = v35;
  }

  v34 = a3[1] - v35;
  *a3 = v33;
  a3[1] = v34;
  return result;
}

double sub_2500E815C(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (!v2)
  {
    sub_2500E7BF0();
  }

  (*(*v2 + 48))(v6);
  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  v4 = v6[1];
  *(a1 + 104) = v6[0];
  *(a1 + 112) = v4;
  *(a1 + 120) = v7;
  result = *&v8;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 152) = v10;
  return result;
}

uint64_t sub_2500E81F8(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);
  if (*(a1 + 44))
  {
    v3 = v1 * v2;
    if (!*(a1 + 24))
    {
      v1 = 0;
    }

    v4 = 4 * *(a1 + 136) * *(a1 + 128);
    if (!*(a1 + 28))
    {
      v4 = 0;
    }

    v5 = v1 + 4 * v3 + v4;
  }

  else
  {
    v6 = v1 * v2;
    if (!*(a1 + 24))
    {
      v1 = 0;
    }

    v5 = v1 + 4 * v6;
  }

  return v5 + 1024;
}

unint64_t sub_2500E8250(uint64_t a1, int **a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 36);
  if (!*(a1 + 44))
  {
    if ((v11 & 0x80000000) == 0 && sub_250100894(*a2, *(a1 + 48) + 4 * *(a1 + 56), *(a1 + 160) + *(a1 + 168), *(a1 + 40), *(a1 + 80), (a1 + 36), a1 + 8, a8))
    {
      return 0x8000000000000000;
    }

    v27 = 0;
    if (sub_2500FFFD4(*a2, *(a1 + 48) + 4 * *(a1 + 56), (*(a1 + 160) + *(a1 + 168)), *(a1 + 40), 0, *(a1 + 80), *a3, a3[1] & ~(a3[1] >> 63), &v27, a1 + 8))
    {
      return 0x8000000000000000;
    }

    goto LABEL_31;
  }

  v12 = *(a1 + 160);
  v13 = *(a1 + 40);
  v14 = *(a1 + 104);
  v15 = *a2;
  if ((v11 & 0x80000000) == 0)
  {
    *(a1 + 24) = v12 != 0;
    *(a1 + 28) = v14 != 0;
    if (v13 == 1 && *v15 <= 79)
    {
      v16 = 2;
    }

    else
    {
      v16 = 4;
    }

    *(a1 + 16) = v16;
    if (v11 - 3 < 4)
    {
      v17 = 0;
      if (v13 == 1)
      {
        v18 = 3;
      }

      else
      {
        v18 = 1;
      }
    }

    else if (v11 >= 3)
    {
      if (v11 == 11)
      {
        goto LABEL_18;
      }

      if (v13 == 1)
      {
        v18 = 4;
      }

      else
      {
        v18 = 2;
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }

    *(a1 + 20) = v18;
    *(a1 + 32) = v17;
  }

LABEL_18:
  v27 = 0;
  if (sub_250107B34(v15, (*(a1 + 48) + 4 * *(a1 + 56)), (v12 + *(a1 + 168)), v13, 0, *(a1 + 72), *(a1 + 80), (v14 + 4 * *(a1 + 112)), *a3, a3[1] & ~(a3[1] >> 63), &v27, a1 + 8))
  {
    return 0x8000000000000000;
  }

  v20 = *(a1 + 216);
  if (v20)
  {
    v21 = v20[3];
    if (v21)
    {
      v22 = *v20;
      if (*v20)
      {
        v23 = v20[1];
      }

      else
      {
        v24 = v20[5] * v21 * *(v20 + 16);
        v20[1] = 0;
        v22 = operator new[](v24);
        v23 = 0;
        *v20 = v22;
        *(v20 + 48) = 1;
      }

      memmove(&v22[4 * v23], *(*a2 + 410), 4 * v21);
    }
  }

LABEL_31:
  result = 0;
  if (*a3)
  {
    v25 = *a3 + v27;
  }

  else
  {
    v25 = v27;
  }

  v26 = a3[1] - v27;
  *a3 = v25;
  a3[1] = v26;
  return result;
}

void sub_2500E84A0(char *a1)
{
  sub_2500E9B44(a1 + 2);

  operator delete(a1);
}

unint64_t sub_2500E84DC(void *a1, void *a2, void *a3)
{
  v174 = *MEMORY[0x277D85DE8];
  __p = 0;
  v153 = 0;
  v155 = 0;
  v154 = 0;
  v6 = operator new(0x160uLL);
  *(v6 + 1) = 0u;
  *(v6 + 20) = 0u;
  *(v6 + 21) = 0u;
  *(v6 + 18) = 0u;
  *(v6 + 19) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 17) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 12) = 0u;
  *(v6 + 13) = 0u;
  *(v6 + 10) = 0u;
  *(v6 + 11) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *v6 = &unk_2862984A0;
  *(v6 + 1) = 0;
  v6[16] = 4;
  *(v6 + 5) = 2;
  *(v6 + 25) = 16843009;
  v6[29] = 1;
  *(v6 + 8) = 9;
  *(v6 + 17) = 0u;
  *(v6 + 18) = 0u;
  *(v6 + 19) = 0u;
  v151 = v6;
  v7 = a2[1];
  if (v7 == a2)
  {
    goto LABEL_65;
  }

  v8 = a2[1];
  while (1)
  {
    v9 = (v8 + 72);
    v10 = *(v8 + 95);
    if ((v10 & 0x80000000) == 0)
    {
      break;
    }

    if (*(v8 + 80) == 4)
    {
      v9 = *v9;
      goto LABEL_8;
    }

LABEL_9:
    v8 = *(v8 + 8);
    if (v8 == a2)
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  if (v10 != 4)
  {
    goto LABEL_9;
  }

LABEL_8:
  if (*v9 != 1937273974)
  {
    goto LABEL_9;
  }

  v11 = v8 + 16;
  do
  {
LABEL_12:
    v12 = (v7 + 72);
    v13 = *(v7 + 95);
    if (v13 < 0)
    {
      if (*(v7 + 80) != 4)
      {
        goto LABEL_18;
      }

      v12 = *v12;
LABEL_17:
      if (*v12 != 1886545766)
      {
        goto LABEL_18;
      }

      v14 = v7 + 16;
      if (!v11)
      {
        goto LABEL_65;
      }

LABEL_20:
      v15 = 0x8000000000000000;
      if (!*v11 || *(v11 + 16) != 260 || *(v11 + 32) != 3 || v14 && (!*v14 || *(v14 + 16) != 260 || *(v14 + 32) != 1))
      {
        goto LABEL_66;
      }

      sub_2500EBB28(a2, v11, &off_27969C890, &v170);
      sub_2500EB5F4(a2, "topo", &v156);
      v16 = v170;
      if (v170 == v171)
      {
        v18 = 0;
      }

      else
      {
        do
        {
          v17 = *v16;
          if (!*v16)
          {
            goto LABEL_71;
          }

          v18 = 0;
          if (!*v17 || *(v17 + 16) != 260)
          {
            goto LABEL_124;
          }

          v16 += 8;
        }

        while (v16 != v171);
        v19 = v156;
        if (v156 != v157)
        {
          v15 = 0x8000000000000000;
          while (1)
          {
            v20 = *v19;
            if (!*v19)
            {
              break;
            }

            v18 = 0;
            if (!*v20 || *(v20 + 16) != 260)
            {
              goto LABEL_124;
            }

            if (*(v20 + 32) != 1)
            {
              break;
            }

            if (++v19 == v157)
            {
              goto LABEL_39;
            }
          }

LABEL_71:
          v18 = 0;
          v15 = 0x8000000000000000;
          goto LABEL_124;
        }

LABEL_39:
        v149 = a3;
        sub_2500ED0B8(&__p, &v170, &v156, v14, &v160);
        v21 = *v11;
        v22 = *(v11 + 8);
        v23 = *(v11 + 16);
        v24 = *(v11 + 24);
        v25 = *(v11 + 40);
        if (v6[88] == 1)
        {
          v26 = *(v6 + 5);
          if (v26)
          {
            v145 = *(v11 + 24);
            v142 = *(v11 + 40);
            operator delete[](v26);
            v25 = v142;
            v24 = v145;
          }
        }

        *(v6 + 5) = v21;
        *(v6 + 6) = v22;
        *(v6 + 14) = v23;
        *(v6 + 4) = v24;
        *(v6 + 10) = v25;
        v6[88] = 0;
        if (v14)
        {
          v27 = *v14;
          v28 = *(v14 + 8);
          v29 = *(v14 + 16);
          v30 = *(v14 + 24);
          v31 = *(v14 + 40);
          if (v6[200] == 1)
          {
            v32 = *(v6 + 19);
            if (v32)
            {
              v146 = *(v14 + 24);
              v143 = *(v14 + 40);
              operator delete[](v32);
              v31 = v143;
              v30 = v146;
            }
          }

          *(v6 + 19) = v27;
          *(v6 + 20) = v28;
          *(v6 + 42) = v29;
          *(v6 + 11) = v30;
          *(v6 + 24) = v31;
          v6[200] = 0;
        }

        v158 = "genreorder";
        v159 = 10;
        v33 = sub_2500E9BDC(v149, &v158);
        if (v149 + 1 != v33 && !*(v33 + 80) && *(v33 + 56) == 1)
        {
          *(v6 + 33) = sub_2500EC90C(a2, v11, "reorderdby", *(v6 + 8));
          v34 = v161;
          if (v162 != v161)
          {
            v35 = 0;
            do
            {
              v36 = sub_2500EC90C(a2, *(v166 + v35), "reorderdby", v34[v35]);
              sub_2500E7C3C((v6 + 272), v36);
              v37 = sub_2500EC90C(a2, *(v166 + v35), "permutedby", *(v161 + v35));
              sub_2500E7C3C((v6 + 296), v37);
              ++v35;
              v34 = v161;
            }

            while (v35 < (v162 - v161) >> 3);
          }
        }

        v38 = 0;
        v39 = v171 - v170;
        *(v6 + 8) = -1;
        v40 = v14 || v39 > 8;
        v41 = v40;
        v6[24] = v41;
        v147 = v11 + 80;
        v172 = v11 + 80;
        v173 = v149;
        while (1)
        {
          v42 = *(&v172 + v38);
          v158 = "compression-level";
          v159 = 17;
          v43 = sub_2500E9BDC(v42, &v158);
          if (v42 + 8 != v43 && !*(v43 + 80))
          {
            break;
          }

          v38 += 8;
          if (v38 == 16)
          {
            goto LABEL_73;
          }
        }

        *(v6 + 8) = *(v43 + 56);
LABEL_73:
        v45 = 0;
        v172 = v147;
        v173 = v149;
        while (1)
        {
          v46 = *(&v172 + v45);
          v158 = "mode-bin";
          v159 = 8;
          v47 = sub_2500E9BDC(v46, &v158);
          if (v46 + 8 != v47 && !*(v47 + 80))
          {
            break;
          }

          v45 += 8;
          if (v45 == 16)
          {
            goto LABEL_79;
          }
        }

        v6[16] = *(v47 + 56);
LABEL_79:
        v48 = 0;
        v172 = v147;
        v173 = v149;
        while (1)
        {
          v49 = *(&v172 + v48);
          v158 = "mode-pred";
          v159 = 9;
          v50 = sub_2500E9BDC(v49, &v158);
          if (v49 + 8 != v50 && !*(v50 + 80))
          {
            break;
          }

          v48 += 8;
          if (v48 == 16)
          {
            goto LABEL_85;
          }
        }

        *(v6 + 5) = *(v50 + 56);
LABEL_85:
        v51 = 0;
        v172 = v147;
        v173 = v149;
        while (1)
        {
          v52 = *(&v172 + v51);
          v158 = "pmesh-act";
          v159 = 9;
          v53 = sub_2500E9BDC(v52, &v158);
          if (v52 + 8 != v53 && !*(v53 + 80))
          {
            break;
          }

          v51 += 8;
          if (v51 == 16)
          {
            goto LABEL_91;
          }
        }

        v6[25] = *(v53 + 56);
LABEL_91:
        v54 = 0;
        v172 = v147;
        v173 = v149;
        while (1)
        {
          v55 = *(&v172 + v54);
          v158 = "pmesh-tfsc";
          v159 = 10;
          v56 = sub_2500E9BDC(v55, &v158);
          if (v55 + 8 != v56 && !*(v56 + 80))
          {
            break;
          }

          v54 += 8;
          if (v54 == 16)
          {
            goto LABEL_97;
          }
        }

        v6[26] = *(v56 + 56);
LABEL_97:
        v57 = 0;
        v172 = v147;
        v173 = v149;
        while (1)
        {
          v58 = *(&v172 + v57);
          v158 = "pmesh-gbt";
          v159 = 9;
          v59 = sub_2500E9BDC(v58, &v158);
          if (v58 + 8 != v59 && !*(v59 + 80))
          {
            break;
          }

          v57 += 8;
          if (v57 == 16)
          {
            goto LABEL_103;
          }
        }

        v6[27] = *(v59 + 56);
LABEL_103:
        v60 = 0;
        v172 = v147;
        v173 = v149;
        while (1)
        {
          v61 = *(&v172 + v60);
          v158 = "mode-abe";
          v159 = 8;
          v62 = sub_2500E9BDC(v61, &v158);
          if (v61 + 8 != v62 && !*(v62 + 80))
          {
            break;
          }

          v60 += 8;
          if (v60 == 16)
          {
            goto LABEL_109;
          }
        }

        v6[28] = *(v62 + 56);
LABEL_109:
        v63 = 0;
        v172 = v147;
        v173 = v149;
        while (1)
        {
          v64 = *(&v172 + v63);
          v158 = "pmesh-dlpp";
          v159 = 10;
          v65 = sub_2500E9BDC(v64, &v158);
          if (v64 + 8 != v65 && !*(v65 + 80))
          {
            break;
          }

          v63 += 8;
          if (v63 == 16)
          {
            goto LABEL_115;
          }
        }

        v6[29] = *(v65 + 56);
LABEL_115:
        sub_2500EDBA0(&__p, &v160, &v158);
        sub_2500E9D4C((v6 + 320), &v158);
        a3 = v149;
        sub_2500E9CCC(&v158);
        if (v168)
        {
          v169 = v168;
          operator delete(v168);
        }

        if (v166)
        {
          v167 = v166;
          operator delete(v166);
        }

        if (v164)
        {
          v165 = v164;
          operator delete(v164);
        }

        if (v161)
        {
          v162 = v161;
          operator delete(v161);
        }

        v15 = 0;
        v18 = 1;
      }

LABEL_124:
      if (v156)
      {
        v157 = v156;
        operator delete(v156);
      }

      if (v170)
      {
        v171 = v170;
        operator delete(v170);
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_66;
      }

      v66 = v151;
      v150 = a3;
      v151 = 0;
      v67 = operator new(0x18uLL);
      v68 = a1 + 2;
      v67[1] = a1 + 2;
      v67[2] = v66;
      v69 = a1[2];
      *v67 = v69;
      *(v69 + 8) = v67;
      a1[2] = v67;
      ++a1[4];
      sub_2500E9EA8(&v151);
      v70 = a2[1];
      if (v70 == a2)
      {
LABEL_254:
        v134 = a1[3];
        if (v134 == v68)
        {
          v15 = 0;
        }

        else
        {
          do
          {
            (***(v134 + 16))(*(v134 + 16));
            v15 = 0;
            a1[1] += (*(**(v134 + 16) + 8))(*(v134 + 16));
            v134 = *(v134 + 8);
          }

          while (v134 != v68);
        }

        goto LABEL_67;
      }

      v144 = a3 + 1;
      while (1)
      {
        v71 = *(v70 + 95);
        if (v71 < 0)
        {
          v72 = *(v70 + 72);
          v71 = *(v70 + 80);
        }

        else
        {
          v72 = (v70 + 72);
        }

        if (v71 >= 4)
        {
          break;
        }

LABEL_253:
        v70 = *(v70 + 8);
        if (v70 == a2)
        {
          goto LABEL_254;
        }
      }

      v73 = &v72[v71];
      v74 = v72;
      while (1)
      {
        v75 = memchr(v74, 97, v71 - 3);
        if (!v75)
        {
          goto LABEL_253;
        }

        if (*v75 == 1920234593)
        {
          break;
        }

        v74 = v75 + 1;
        v71 = v73 - v74;
        if (v73 - v74 < 4)
        {
          goto LABEL_253;
        }
      }

      if (v75 != v72)
      {
        goto LABEL_253;
      }

      v76 = operator new(0x100uLL);
      *(v76 + 1) = 0u;
      *(v76 + 14) = 0u;
      *(v76 + 15) = 0u;
      *(v76 + 12) = 0u;
      *(v76 + 13) = 0u;
      *(v76 + 10) = 0u;
      *(v76 + 11) = 0u;
      *(v76 + 8) = 0u;
      *(v76 + 9) = 0u;
      *(v76 + 6) = 0u;
      *(v76 + 7) = 0u;
      *(v76 + 4) = 0u;
      *(v76 + 5) = 0u;
      *(v76 + 2) = 0u;
      *(v76 + 3) = 0u;
      *v76 = &unk_2862984D8;
      *(v76 + 1) = 0;
      v76[16] = 4;
      *(v76 + 5) = 2;
      v76[32] = 1;
      *(v76 + 9) = 9;
      v156 = v76;
      sub_2500EBB28(a2, v70 + 16, &off_27969C890, &v158);
      v148 = sub_2500EBCB8(a2, v70 + 16, &off_27969C8A8);
      v77 = 0;
      v15 = 0x8000000000000000;
      v78 = v158;
      if (*(v70 + 16) && *(v70 + 32) == 260)
      {
        v79 = v158;
        if (v158 != v159)
        {
          while (1)
          {
            v80 = *v79;
            if (!*v79)
            {
              break;
            }

            v15 = 0x8000000000000000;
            if (!*v80 || *(v80 + 16) != 260 || *(v80 + 32) != 1)
            {
              goto LABEL_156;
            }

            v79 += 8;
            if (v79 == v159)
            {
              goto LABEL_149;
            }
          }

          v77 = 0;
          v15 = 0x8000000000000000;
          goto LABEL_249;
        }

LABEL_149:
        if (!v148)
        {
LABEL_153:
          v81 = sub_2500EDD80(&__p, &v158, &v160);
          v83 = (v76 + 248);
          v82 = *(v76 + 31);
          *(v76 + 31) = 0;
          if (v82 == v76 + 224)
          {
            (*(*v82 + 32))(v82, v81);
          }

          else if (v82)
          {
            (*(*v82 + 40))(v82, v81);
          }

          v84 = v163;
          if (v163)
          {
            if (v163 == &v160)
            {
              *v83 = (v76 + 224);
              (*(*v84 + 24))(v84, v76 + 224, v81);
              goto LABEL_164;
            }

            *v83 = v163;
            v83 = &v163;
          }

          *v83 = 0;
LABEL_164:
          sub_2500E9E28(&v160);
          v85 = *(v70 + 16);
          v86 = *(v70 + 24);
          v87 = *(v70 + 32);
          v88 = *(v70 + 40);
          v89 = *(v70 + 56);
          if (v76[96] == 1)
          {
            v90 = *(v76 + 6);
            if (v90)
            {
              v140 = *(v70 + 40);
              v138 = *(v70 + 32);
              v136 = *(v70 + 56);
              operator delete[](v90);
              v89 = v136;
              v87 = v138;
              v88 = v140;
            }
          }

          *(v76 + 6) = v85;
          *(v76 + 7) = v86;
          *(v76 + 16) = v87;
          *(v76 + 72) = v88;
          *(v76 + 11) = v89;
          v76[96] = 0;
          if (v148)
          {
            v91 = *v148;
            v92 = *(v148 + 8);
            v93 = *(v148 + 16);
            v94 = *(v148 + 24);
            v95 = *(v148 + 40);
          }

          else
          {
            v91 = 0;
            v92 = 0;
            v93 = 0;
            v95 = 0;
            v94 = 0uLL;
          }

          if (v76[208] == 1)
          {
            v96 = *(v76 + 20);
            if (v96)
            {
              v139 = v92;
              v141 = v91;
              v137 = v94;
              operator delete[](v96);
              v94 = v137;
              v92 = v139;
              v91 = v141;
            }
          }

          *(v76 + 20) = v91;
          *(v76 + 21) = v92;
          *(v76 + 44) = v93;
          *(v76 + 184) = v94;
          *(v76 + 25) = v95;
          v76[208] = 0;
          v97 = *(v70 + 95);
          if (v97 >= 0)
          {
            v98 = (v70 + 72);
          }

          else
          {
            v98 = *(v70 + 72);
          }

          if (v97 >= 0)
          {
            v99 = *(v70 + 95);
          }

          else
          {
            v99 = *(v70 + 80);
          }

          if (v99 >= 8)
          {
            v100 = 8;
          }

          else
          {
            v100 = v99;
          }

          v101 = memcmp(v98, "attrTCrd", v100);
          if (v99 != 8 || v101)
          {
            v103 = memcmp(v98, "attrNorm", v100);
            if (v99 != 8 || v103)
            {
              v104 = memcmp(v98, "attrTgnt", v100);
              if (v99 != 8 || v104)
              {
                v105 = memcmp(v98, "attrBgnt", v100);
                if (v99 != 8 || v105)
                {
                  if (!memcmp(v98, "attrColr", v100) && v99 == 8)
                  {
                    v102 = 5;
                  }

                  else
                  {
                    v102 = 0;
                  }
                }

                else
                {
                  v102 = 4;
                }
              }

              else
              {
                v102 = 3;
              }
            }

            else
            {
              v102 = 2;
            }
          }

          else
          {
            v102 = 1;
          }

          *(v76 + 10) = v102;
          *(v76 + 11) = 0;
          v160 = "genreorder";
          v161 = 10;
          v107 = sub_2500E9BDC(v150, &v160);
          if (v144 != v107 && !*(v107 + 80) && *(v107 + 56) == 1 && v158 != v159)
          {
            *(v76 + 27) = sub_2500EC90C(a2, v70 + 16, "reorderdby", *(v70 + 40));
          }

          v108 = 0;
          *(v76 + 9) = -1;
          v170 = (v70 + 96);
          v171 = v150;
          while (1)
          {
            v109 = (&v170)[v108];
            v160 = "compression-level";
            v161 = 17;
            v110 = sub_2500E9BDC(v109, &v160);
            if (v109 + 8 != v110 && !*(v110 + 80))
            {
              break;
            }

            if (++v108 == 2)
            {
              goto LABEL_211;
            }
          }

          *(v76 + 9) = *(v110 + 56);
LABEL_211:
          v111 = 0;
          v170 = (v70 + 96);
          v171 = v150;
          while (1)
          {
            v112 = (&v170)[v111];
            v160 = "mode-bin";
            v161 = 8;
            v113 = sub_2500E9BDC(v112, &v160);
            if (v112 + 8 != v113 && !*(v113 + 80))
            {
              break;
            }

            if (++v111 == 2)
            {
              goto LABEL_217;
            }
          }

          v76[16] = *(v113 + 56);
LABEL_217:
          v114 = 0;
          v170 = (v70 + 96);
          v171 = v150;
          while (1)
          {
            v115 = (&v170)[v114];
            v160 = "mode-pred";
            v161 = 9;
            v116 = sub_2500E9BDC(v115, &v160);
            if (v115 + 8 != v116 && !*(v116 + 80))
            {
              break;
            }

            if (++v114 == 2)
            {
              goto LABEL_223;
            }
          }

          *(v76 + 5) = *(v116 + 56);
LABEL_223:
          v117 = 0;
          v170 = (v70 + 96);
          v171 = v150;
          while (1)
          {
            v118 = (&v170)[v117];
            v160 = "mode-abe";
            v161 = 8;
            v119 = sub_2500E9BDC(v118, &v160);
            if (v118 + 8 != v119 && !*(v119 + 80))
            {
              break;
            }

            if (++v117 == 2)
            {
              goto LABEL_229;
            }
          }

          v76[32] = *(v119 + 56);
LABEL_229:
          v120 = 0;
          v170 = (v70 + 96);
          v171 = v150;
          while (1)
          {
            v121 = (&v170)[v120];
            v160 = "bitdepth";
            v161 = 8;
            v122 = sub_2500E9BDC(v121, &v160);
            if (v121 + 8 != v122 && !*(v122 + 80))
            {
              break;
            }

            if (++v120 == 2)
            {
              goto LABEL_235;
            }
          }

          *(v76 + 3) = *(v122 + 56);
LABEL_235:
          v123 = 0;
          v170 = (v70 + 96);
          v171 = v150;
          while (1)
          {
            v124 = (&v170)[v123];
            v160 = "attrScope";
            v161 = 9;
            v125 = sub_2500E9BDC(v124, &v160);
            if (v124 + 8 != v125 && !*(v125 + 80))
            {
              break;
            }

            if (++v123 == 2)
            {
              goto LABEL_241;
            }
          }

          *(v76 + 11) = *(v125 + 56);
LABEL_241:
          v126 = 0;
          v170 = (v70 + 96);
          v171 = v150;
          while (1)
          {
            v127 = (&v170)[v126];
            v160 = "attrScopeM";
            v161 = 10;
            v128 = sub_2500E9BDC(v127, &v160);
            if (v127 + 8 != v128 && !*(v128 + 80))
            {
              break;
            }

            if (++v126 == 2)
            {
              goto LABEL_248;
            }
          }

          v129 = *(v128 + 56);
          if (v129 >= 4)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x25305EAE0](exception, "Unknown scope");
            __cxa_throw(exception, &unk_286298448, MEMORY[0x277D82600]);
          }

          *(v76 + 11) = dword_250110010[v129];
LABEL_248:
          v15 = 0;
          v78 = v158;
          v130 = v158 != v159;
          *(v76 + 6) = v148 != 0;
          *(v76 + 7) = v130;
          v77 = 1;
          goto LABEL_249;
        }

        v77 = 0;
        if (*v148 && *(v148 + 16) == 1)
        {
          if (*(v148 + 32) == 1)
          {
            goto LABEL_153;
          }

LABEL_156:
          v77 = 0;
        }
      }

LABEL_249:
      if (v78)
      {
        v159 = v78;
        operator delete(v78);
      }

      if (v77)
      {
        v131 = v156;
        v156 = 0;
        v132 = operator new(0x18uLL);
        v132[1] = v68;
        v132[2] = v131;
        v133 = a1[2];
        *v132 = v133;
        *(v133 + 8) = v132;
        a1[2] = v132;
        ++a1[4];
        sub_2500E9F78(&v156);
        goto LABEL_253;
      }

      sub_2500E9F78(&v156);
      goto LABEL_67;
    }

    if (v13 == 4)
    {
      goto LABEL_17;
    }

LABEL_18:
    v7 = *(v7 + 8);
  }

  while (v7 != a2);
  v14 = 0;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_65:
  v15 = 0x8000000000000000;
LABEL_66:
  sub_2500E9EA8(&v151);
LABEL_67:
  if (__p)
  {
    v153 = __p;
    operator delete(__p);
  }

  return v15;
}

void sub_2500E95EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_2500E9AE0(va);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  sub_2500E9EA8(&a21);
  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2500E976C(uint64_t a1, uint64_t a2)
{
  sub_25010EB08(&v10);
  v4 = a1 + 16;
  for (i = *(a1 + 24); i != v4; i = *(i + 8))
  {
    v6 = (*(**(i + 16) + 16))(*(i + 16), &v10, a2);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    v8 = sub_25010F040(v7);
    operator delete(v8);
  }

  return v6;
}

void sub_2500E9814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    v11 = sub_25010F040(a10);
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2500E9834(uint64_t a1)
{
  sub_2500E9CCC(a1 + 320);
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 272);
  if (v3)
  {
    *(a1 + 280) = v3;
    operator delete(v3);
  }

  if (*(a1 + 256) == 1)
  {
    v4 = *(a1 + 208);
    if (v4)
    {
      operator delete[](v4);
    }
  }

  if (*(a1 + 200) == 1)
  {
    v5 = *(a1 + 152);
    if (v5)
    {
      operator delete[](v5);
    }
  }

  if (*(a1 + 144) == 1)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      operator delete[](v6);
    }
  }

  if (*(a1 + 88) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      operator delete[](v7);
    }
  }

  return a1;
}

void sub_2500E98E0(uint64_t a1)
{
  sub_2500E9CCC(a1 + 320);
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 272);
  if (v3)
  {
    *(a1 + 280) = v3;
    operator delete(v3);
  }

  if (*(a1 + 256) == 1)
  {
    v4 = *(a1 + 208);
    if (v4)
    {
      operator delete[](v4);
    }
  }

  if (*(a1 + 200) == 1)
  {
    v5 = *(a1 + 152);
    if (v5)
    {
      operator delete[](v5);
    }
  }

  if (*(a1 + 144) == 1)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      operator delete[](v6);
    }
  }

  if (*(a1 + 88) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      operator delete[](v7);
    }
  }

  operator delete(a1);
}

uint64_t sub_2500E999C(uint64_t a1)
{
  sub_2500E9E28(a1 + 224);
  if (*(a1 + 208) == 1)
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      operator delete[](v2);
    }
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  if (*(a1 + 96) == 1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      operator delete[](v4);
    }
  }

  return a1;
}

void sub_2500E9A10(uint64_t a1)
{
  sub_2500E9E28(a1 + 224);
  if (*(a1 + 208) == 1)
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      operator delete[](v2);
    }
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  if (*(a1 + 96) == 1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      operator delete[](v4);
    }
  }

  operator delete(a1);
}

void sub_2500E9AAC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, &unk_286298548, MEMORY[0x277D82620]);
}

void *sub_2500E9AE0(void *a1)
{
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

void sub_2500E9B44(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v6 = v2[1];
        v5 = v2[2];
        v2[2] = 0;
        if (v5)
        {
          (*(*v5 + 32))(v5);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }
}

uint64_t sub_2500E9BDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v4 = sub_2500E9C54(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *(v4 + 55);
  v7 = v6 >= 0 ? (v4 + 32) : *(v4 + 32);
  v8 = v6 >= 0 ? *(v4 + 55) : *(v4 + 40);
  if ((sub_2500E6054(*a2, *(a2 + 8), v7, v8) & 0x80) != 0)
  {
    return v3;
  }

  return v5;
}

uint64_t sub_2500E9C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v7 = *(v5 + 55);
      if (v7 >= 0)
      {
        v8 = (v5 + 32);
      }

      else
      {
        v8 = *(v5 + 32);
      }

      if (v7 >= 0)
      {
        v9 = *(v5 + 55);
      }

      else
      {
        v9 = *(v5 + 40);
      }

      v10 = sub_2500E6054(*a2, *(a2 + 8), v8, v9);
      if (v10 <= 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + 8 * (v10 > 0));
    }

    while (v5);
  }

  return a4;
}

uint64_t sub_2500E9CCC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2500E9D4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_2500E9E28(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_2500E9EA8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_2500E9CCC(v1 + 320);
    v2 = *(v1 + 296);
    if (v2)
    {
      *(v1 + 304) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 272);
    if (v3)
    {
      *(v1 + 280) = v3;
      operator delete(v3);
    }

    if (*(v1 + 256) == 1)
    {
      v4 = *(v1 + 208);
      if (v4)
      {
        operator delete[](v4);
      }
    }

    if (*(v1 + 200) == 1)
    {
      v5 = *(v1 + 152);
      if (v5)
      {
        operator delete[](v5);
      }
    }

    if (*(v1 + 144) == 1)
    {
      v6 = *(v1 + 96);
      if (v6)
      {
        operator delete[](v6);
      }
    }

    if (*(v1 + 88) == 1)
    {
      v7 = *(v1 + 40);
      if (v7)
      {
        operator delete[](v7);
      }
    }

    operator delete(v1);
  }
}

void sub_2500E9F78(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_2500E9E28(v1 + 224);
    if (*(v1 + 208) == 1)
    {
      v2 = *(v1 + 160);
      if (v2)
      {
        operator delete[](v2);
      }
    }

    if (*(v1 + 152) == 1)
    {
      v3 = *(v1 + 104);
      if (v3)
      {
        operator delete[](v3);
      }
    }

    if (*(v1 + 96) == 1)
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        operator delete[](v4);
      }
    }

    operator delete(v1);
  }
}

char *sub_2500EA010(void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    sub_2500E9A94();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

uint64_t GCLBufferSemanticName(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result += 56;
    if (*(v1 + 79) < 0)
    {
      return *result;
    }
  }

  return result;
}

uint64_t GCLBufferProperty(uint64_t a1, char *__s, _DWORD *a3)
{
  result = 0x8000000000000000;
  if (a1 && __s && a3)
  {
    v8[0] = __s;
    v8[1] = strlen(__s);
    v6 = sub_2500E9BDC(a1 + 80, v8);
    v7 = v6;
    if (a1 + 88 == v6 || *(v6 + 80))
    {
      return 0x8000000000000000;
    }

    else
    {
      result = 0;
      *a3 = *(v7 + 56);
    }
  }

  return result;
}

void sub_2500EA0FC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EA0D4);
}

uint64_t GCLBufferPropertyString(uint64_t a1, char *__s, uint64_t *a3)
{
  result = 0x8000000000000000;
  if (a1 && __s && a3)
  {
    v11[0] = __s;
    v11[1] = strlen(__s);
    v6 = sub_2500E9BDC(a1 + 80, v11);
    v7 = v6;
    if (a1 + 88 == v6 || *(v6 + 80) != 1)
    {
      return 0x8000000000000000;
    }

    else
    {
      result = 0;
      v10 = *(v7 + 56);
      v8 = v7 + 56;
      v9 = v10;
      if (*(v8 + 23) < 0)
      {
        v8 = v9;
      }

      *a3 = v8;
    }
  }

  return result;
}

unint64_t GCLBufferSetProperty(uint64_t a1, char *a2, int a3)
{
  result = 0x8000000000000000;
  if (a1 && a2)
  {
    sub_2500E6F30(__p, a2);
    v10 = __p;
    v6 = sub_2500E5E34((a1 + 80), __p, &unk_25010FF31, &v10);
    v7 = v6;
    if (*(v6 + 20))
    {
      sub_2500E5D18(v6 + 56);
      *(v7 + 20) = 0;
    }

    *(v7 + 14) = a3;
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_2500EA248(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EA234);
}

unint64_t GCLBufferSetPropertyString(uint64_t a1, char *a2, char *a3)
{
  result = 0x8000000000000000;
  if (a1 && a2)
  {
    sub_2500E6F30(__p, a2);
    *&v10 = __p;
    v6 = sub_2500E5E34((a1 + 80), __p, &unk_25010FF31, &v10);
    v7 = v6;
    if (*(v6 + 20) == 1)
    {
      sub_2500EA43C((v6 + 56), a3);
    }

    else
    {
      sub_2500E6F30(&v10, a3);
      sub_2500E5D18(v7 + 56);
      *(v7 + 56) = v10;
      *(v7 + 9) = v11;
      *(v7 + 20) = 1;
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_2500EA344(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EA330);
}

uint64_t GCLBufferId(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

std::string *sub_2500EA380(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_2500EA43C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_2500EA380(a1, __s, v4);
}

uint64_t sub_2500EA484(_DWORD *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = 3;
  if (a1 && a2 >= 4)
  {
    if ((a2 & 0x7FFFFFFFFFFFFFFCLL) == 4 || (a2 & 0x7FFFFFFFFFFFFFF8) == 8 || a1 == -16 || !a4)
    {
      return 3;
    }

    else
    {
      v5 = a1 + 2;
      v6 = 4 * a4;
      v7 = a1[3];
      while (*a3 != *a1)
      {
        ++a3;
        v4 = 3;
        v6 -= 4;
        if (!v6)
        {
          return v4;
        }
      }

      v4 = 3;
      if (v7 >= 0x10 && a2 >= v7 && a1 != -8 && (a1 + a2) >= a1 && (a1 + v7) >= v5)
      {
        v9 = -1;
        for (i = v7 - 8; i; --i)
        {
          v11 = *v5;
          v5 = (v5 + 1);
          v9 = dword_250110020[v11 ^ HIBYTE(v9)] ^ (v9 << 8);
        }

        if (a1[1] == v9)
        {
          return 0;
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return v4;
}

uint64_t GCLBufferListBegin(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t GCLBufferListIterNext(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t GCLBufferForBufferListIter(uint64_t a1)
{
  if (a1)
  {
    return a1 + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_2500EA58C(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_2500EA980((a1 + 3), 24);
  return a1;
}

void sub_2500EA808(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x25305EC00](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2500EA830(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_2500EA980(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25305EBB0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_2500EAA3C(a1);
  return a1;
}

void sub_2500EAA14(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_2500EAA3C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_2500EAB44(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25305EB40](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_2500EACEC(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x25305EB50](v13);
  return a1;
}

void sub_2500EAC84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x25305EB50](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2500EAC64);
}

uint64_t sub_2500EACEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2500E5C5C();
      }

      if (v12 >= 0x17)
      {
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2500EAEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t GCLOptionsNew(void *a1)
{
  if (!a1)
  {
    return 0x8000000000000000;
  }

  v2 = operator new(0x18uLL);
  result = 0;
  v2[2] = 0;
  v2[1] = 0;
  *v2 = v2 + 1;
  *a1 = v2;
  return result;
}

void sub_2500EAF18(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EAF00);
}

void GCLOptionsRelease(void **a1)
{
  if (a1)
  {
    sub_2500E5D88(a1, a1[1]);

    operator delete(a1);
  }
}

uint64_t GCLOptionsGet(uint64_t a1, char *__s, _DWORD *a3)
{
  result = 0x8000000000000000;
  if (a1 && __s && a3)
  {
    v8[0] = __s;
    v8[1] = strlen(__s);
    v6 = sub_2500E9BDC(a1, v8);
    v7 = v6;
    if (a1 + 8 == v6 || *(v6 + 80))
    {
      return 0x8000000000000000;
    }

    else
    {
      result = 0;
      *a3 = *(v7 + 56);
    }
  }

  return result;
}

void sub_2500EAFF8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EAFD0);
}

unint64_t GCLOptionsSet(uint64_t ***a1, char *a2, int a3)
{
  result = 0x8000000000000000;
  if (a1 && a2)
  {
    sub_2500E6F30(__p, a2);
    v10 = __p;
    v6 = sub_2500E5E34(a1, __p, &unk_25010FF31, &v10);
    v7 = v6;
    if (*(v6 + 20))
    {
      sub_2500E5D18(v6 + 56);
      *(v7 + 20) = 0;
    }

    *(v7 + 14) = a3;
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_2500EB0A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EB08CLL);
}

uint64_t GCLOptionsGetString(uint64_t a1, char *__s, uint64_t *a3)
{
  result = 0x8000000000000000;
  if (a1 && __s && a3)
  {
    v11[0] = __s;
    v11[1] = strlen(__s);
    v6 = sub_2500E9BDC(a1, v11);
    v7 = v6;
    if (a1 + 8 == v6 || *(v6 + 80) != 1)
    {
      *a3 = 0;
      return 0x8000000000000000;
    }

    else
    {
      result = 0;
      v10 = *(v7 + 56);
      v8 = v7 + 56;
      v9 = v10;
      if (*(v8 + 23) < 0)
      {
        v8 = v9;
      }

      *a3 = v8;
    }
  }

  return result;
}

void sub_2500EB170(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EB158);
}

uint64_t GCLOptionsSetString(uint64_t ***a1, char *a2, char *__s)
{
  result = 0x8000000000000000;
  if (a1 && a2)
  {
    sub_2500E6F30(v10, __s);
    sub_2500E6F30(__p, a2);
    v12 = __p;
    v6 = sub_2500E5E34(a1, __p, &unk_25010FF31, &v12);
    v7 = v6;
    if (*(v6 + 20) == 1)
    {
      if (*(v6 + 79) < 0)
      {
        operator delete(v6[7]);
      }

      *(v7 + 7) = *v10;
      v7[9] = v11;
      HIBYTE(v11) = 0;
      LOBYTE(v10[0]) = 0;
    }

    else
    {
      sub_2500E5D18((v6 + 7));
      *(v7 + 7) = *v10;
      v7[9] = v11;
      v10[1] = 0;
      v11 = 0;
      v10[0] = 0;
      *(v7 + 20) = 1;
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(v10[0]);
      }
    }

    return 0;
  }

  return result;
}

void sub_2500EB280(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EB26CLL);
}

uint64_t GCLBufferListFromSource(uint64_t a1, char **a2)
{
  if (!a2)
  {
    return 0x8000000000000000;
  }

  *a2 = 0;
  if (!a1)
  {
    return 0x8000000000000000;
  }

  v4 = operator new(0x18uLL);
  *v4 = v4;
  *(v4 + 1) = v4;
  *(v4 + 2) = 0;
  v5 = (*(**(a1 + 40) + 16))(*(a1 + 40), a1, v4);
  if (v5)
  {
    sub_2500EBD14(v4);
    operator delete(v4);
  }

  else
  {
    *a2 = v4;
  }

  return v5;
}

unint64_t GCLBufferListNew(void *a1)
{
  if (!a1)
  {
    return 0x8000000000000000;
  }

  v2 = operator new(0x18uLL);
  result = 0;
  *v2 = v2;
  v2[1] = v2;
  v2[2] = 0;
  *a1 = v2;
  return result;
}

void sub_2500EB3E4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EB3CCLL);
}

void GCLBufferListRelease(char *a1)
{
  if (a1)
  {
    sub_2500EBD14(a1);

    operator delete(a1);
  }
}

uint64_t GCLBufferListGetBuffer(uint64_t a1, char *__s)
{
  result = 0;
  if (a1 && __s)
  {
    v5 = *(a1 + 8);
    if (v5 == a1)
    {
      return 0;
    }

    v6 = strlen(__s);
    while (1)
    {
      v7 = (v5 + 72);
      v8 = *(v5 + 95);
      if (v8 < 0)
      {
        if (v6 != *(v5 + 80))
        {
          goto LABEL_12;
        }

        if (v6 == -1)
        {
          sub_2500EBE04();
        }

        v7 = *v7;
      }

      else if (v6 != v8)
      {
        goto LABEL_12;
      }

      if (!memcmp(v7, __s, v6))
      {
        return v5 + 16;
      }

LABEL_12:
      v5 = *(v5 + 8);
      if (v5 == a1)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t GCLBufferListGetBufferById(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    while (1)
    {
      v2 = *(v2 + 8);
      if (v2 == result)
      {
        break;
      }

      if (*(v2 + 120) == a2)
      {
        return v2 + 16;
      }
    }

    return 0;
  }

  return result;
}

uint64_t GCLBufferListAppendNew(uint64_t *a1, char *__s, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = 0x8000000000000000;
  if (a1 && __s)
  {
    v18[0] = __s;
    v18[1] = strlen(__s);
    v17 = a3;
    v15 = a5;
    v16 = a4;
    v14 = a1[2];
    v12 = sub_2500E71FC(a1, 0, 0, &v14, v18, &v17, &v16, &v15);
    v13 = *a1;
    *v12 = *a1;
    v12[1] = a1;
    *(v13 + 8) = v12;
    *a1 = v12;
    ++a1[2];
    result = 0;
    if (a6)
    {
      *a6 = v12 + 2;
    }
  }

  return result;
}

void sub_2500EB5E4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EB5CCLL);
}

void sub_2500EB5F4(uint64_t a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_2500EB6EC(a3, *(a1 + 16));
  for (i = *(a1 + 8); i != a1; i = *(i + 8))
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    v7 = (i + 72);
    v8 = strlen(a2);
    v9 = *(i + 95);
    if (v9 < 0)
    {
      if (v8 != *(i + 80))
      {
        continue;
      }

      if (v8 == -1)
      {
        sub_2500EBE04();
      }

      v7 = *v7;
LABEL_10:
      if (memcmp(v7, a2, v8))
      {
        continue;
      }

LABEL_11:
      v10 = i + 16;
      sub_2500EB78C(a3, &v10);
      continue;
    }

    if (v8 == v9)
    {
      goto LABEL_10;
    }
  }
}

void sub_2500EB6C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500EB6EC(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 3)
  {
    if (a2 >> 61)
    {
      sub_2500EBDB4();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_2500EBDCC(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[8 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

void sub_2500EB78C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2500EBDB4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = sub_2500EBDCC(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[8 * v10];
    v12 = &v11[8 * v7];
    *v12 = *a2;
    v6 = v12 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_2500EB860(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_2500EB6EC(a4, *(a1 + 16));
  for (i = *(a1 + 8); i != a1; i = *(i + 8))
  {
    if (a2)
    {
      v9 = (i + 72);
      v10 = strlen(a2);
      v11 = *(i + 95);
      if (v11 < 0)
      {
        if (v10 != *(i + 80))
        {
          continue;
        }

        if (v10 == -1)
        {
          sub_2500EBE04();
        }

        v9 = *v9;
      }

      else if (v10 != v11)
      {
        continue;
      }

      if (memcmp(v9, a2, v10))
      {
        continue;
      }
    }

    v16[0] = "tag";
    v16[1] = 3;
    v12 = sub_2500E9BDC(i + 96, v16);
    if (i + 104 == v12 || *(v12 + 80))
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v13 = *(v12 + 56) & 0xFFFFFF00;
      v15 = *(v12 + 56);
      v14 = 1;
    }

    if (v14 == BYTE4(a3) && (a3 & 0x100000000) != 0)
    {
      if ((v15 | v13) != a3)
      {
        continue;
      }

LABEL_19:
      v16[0] = i + 16;
      sub_2500EB78C(a4, v16);
      continue;
    }

    if (v14 == BYTE4(a3))
    {
      goto LABEL_19;
    }
  }
}

void sub_2500EB9C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500EB9F0(uint64_t a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_2500EB6EC(a3, *(a1 + 16));
  for (i = *(a1 + 8); i != a1; i = *(i + 8))
  {
    if (!a2)
    {
LABEL_10:
      v11[0] = "tag";
      v11[1] = 3;
      v10 = sub_2500E9BDC(i + 96, v11);
      if (i + 104 == v10 || *(v10 + 80))
      {
        v11[0] = i + 16;
        sub_2500EB78C(a3, v11);
      }

      continue;
    }

    v7 = (i + 72);
    v8 = strlen(a2);
    v9 = *(i + 95);
    if (v9 < 0)
    {
      if (v8 != *(i + 80))
      {
        continue;
      }

      if (v8 == -1)
      {
        sub_2500EBE04();
      }

      v7 = *v7;
    }

    else if (v8 != v9)
    {
      continue;
    }

    if (!memcmp(v7, a2, v8))
    {
      goto LABEL_10;
    }
  }
}

void sub_2500EBB00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500EBB28(uint64_t a1@<X0>, uint64_t a2@<X1>, const char **a3@<X2>, char *a4@<X8>)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = a3[1];
  v15 = v8;
  v16[0] = strlen(v8);
  v9 = sub_2500E9BDC(a2 + 80, &v15);
  if (a2 + 88 != v9 && !*(v9 + 80))
  {
    v14 = a1;
    while (1)
    {
      v14 = *(v14 + 8);
      if (v14 == a1)
      {
        break;
      }

      if (*(v14 + 120) == *(v9 + 56))
      {
        v15 = (v14 + 16);
        *(a4 + 1) = 0;
        *(a4 + 2) = 0;
        *a4 = 0;
        sub_2500EBEAC(a4, &v15, v16, 1uLL);
        return;
      }
    }

    goto LABEL_15;
  }

  v10 = strlen(a3[2]);
  v15 = a3[2];
  v16[0] = v10;
  v11 = sub_2500E9BDC(a2 + 80, &v15);
  if (a2 + 88 == v11 || *(v11 + 80))
  {
    v12 = (a2 + 56);
    v13 = *(a2 + 79);
    if (v13 < 0)
    {
      if (*(a2 + 64) != 4)
      {
LABEL_15:
        *a4 = 0;
        *(a4 + 1) = 0;
        *(a4 + 2) = 0;
        return;
      }

      v12 = *v12;
    }

    else if (v13 != 4)
    {
      goto LABEL_15;
    }

    if (*v12 != 1937273974)
    {
      goto LABEL_15;
    }

    sub_2500EB9F0(a1, *a3, a4);
  }

  else
  {
    sub_2500EB860(a1, *a3, *(v11 + 56) | 0x100000000, a4);
  }
}

uint64_t sub_2500EBCB8(uint64_t a1, uint64_t a2, const char **a3)
{
  sub_2500EBB28(a1, a2, a3, &v6);
  if (v6 != v7)
  {
    v3 = *v6;
LABEL_4:
    v7 = v6;
    operator delete(v6);
    return v3;
  }

  v3 = 0;
  v4 = 0;
  if (v6)
  {
    goto LABEL_4;
  }

  return v4;
}

void sub_2500EBD14(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        sub_2500E5D88((v2 + 96), *(v2 + 13));
        if (v2[95] < 0)
        {
          operator delete(*(v2 + 9));
        }

        if (v2[64] == 1)
        {
          v6 = *(v2 + 2);
          if (v6)
          {
            operator delete[](v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *sub_2500EBDCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_2500E9AAC();
  }

  return operator new(8 * a2);
}

void sub_2500EBE1C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2500EBE78(exception, a1);
  __cxa_throw(exception, &unk_286298560, MEMORY[0x277D825F8]);
}

std::logic_error *sub_2500EBE78(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

char *sub_2500EBEAC(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_2500EBF20(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_2500EBF04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2500EBF20(void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_2500EBDB4();
  }

  result = sub_2500EBDCC(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

uint64_t GCLBufferElementType(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t GCLBufferSetElementType(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t GCLBufferNumRows(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t GCLBufferTupleWidth(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

void *GCLBufferData(void *result)
{
  if (result)
  {
    return (*result + result[1]);
  }

  return result;
}

uint64_t GCLBufferBase(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

void *GCLBufferSetBase(void *result, uint64_t a2)
{
  if (result)
  {
    *result = a2;
  }

  return result;
}

uint64_t GCLBufferOffset(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t GCLBufferSetOffset(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t GCLBufferStrideBytes(uint64_t result)
{
  if (result)
  {
    return *(result + 40) * *(result + 16);
  }

  return result;
}

uint64_t GCLBufferStrideElements(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t GCLBufferSetStrideElements(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

int *sub_2500EBFF8(int *result, int *a2, int *a3, unsigned int a4, int *a5, int *a6, int *a7, int *a8, _DWORD *a9)
{
  v10 = *a7;
  v11 = a7[1];
  v12 = *a5 - v10;
  v13 = a5[1] - v11;
  v14 = a7[2];
  v15 = a5[2] - v14;
  v16 = *a6 - v10;
  v17 = a6[1] - v11;
  v18 = a6[2] - v14;
  v19 = *a8 - v10;
  v20 = a8[1] - v11;
  v21 = a8[2] - v14;
  v22 = v12 * v12 + v13 * v13 + v15 * v15;
  v23 = v16 * v16 + v17 * v17 + v18 * v18;
  if (v22 >> 30)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 >> 30 == 0;
  }

  if (v24 && (v19 * v19 + v20 * v20 + v21 * v21) >> 30 == 0)
  {
    v32 = v16 * v12 + v17 * v13 + v18 * v15;
    v33 = v23 * v22 - v32 * v32;
    if (v33)
    {
      v34 = v19 * v12 + v20 * v13 + v21 * v15;
      v35 = v19 * v16 + v20 * v17 + v21 * v18;
      if (v33 >= 0x80)
      {
        v44 = __clz(v33);
        v45 = 57 - v44;
        v46 = 1 << (56 - v44);
        v33 = (v46 + v33) >> v45;
        v47 = v34 * v23 - v35 * v32;
        if (v47 < 0)
        {
          v36 = -((v46 - v47) >> v45);
        }

        else
        {
          v36 = (v46 + v47) >> v45;
        }

        if (v36 >= 0x3FFFFFFFFFFFLL)
        {
          v36 = 0x3FFFFFFFFFFFLL;
        }

        if (v36 <= 0xFFFFC00000000001)
        {
          v36 = 0xFFFFC00000000001;
        }

        v48 = v35 * v22 - v34 * v32;
        if (v48 < 0)
        {
          v37 = -((v46 - v48) >> v45);
        }

        else
        {
          v37 = (v46 + v48) >> v45;
        }
      }

      else
      {
        v36 = v34 * v23 - v35 * v32;
        if (v36 >= 0x3FFFFFFFFFFFLL)
        {
          v36 = 0x3FFFFFFFFFFFLL;
        }

        if (v36 <= 0xFFFFC00000000001)
        {
          v36 = 0xFFFFC00000000001;
        }

        v37 = v35 * v22 - v34 * v32;
      }

      if (v37 >= 0x3FFFFFFFFFFFLL)
      {
        v37 = 0x3FFFFFFFFFFFLL;
      }

      v49 = 0xFFFFC00000000001;
      if (v37 > 0xFFFFC00000000001)
      {
        v49 = v37;
      }

      v50 = word_2501104A2[v33 - 1];
      if (v36 * v50 >= 0x3FFFFFFF)
      {
        v51 = 0x3FFFFFFFLL;
      }

      else
      {
        v51 = v36 * v50;
      }

      if (v51 <= -1073741823)
      {
        v51 = -1073741823;
      }

      v52 = v49 * v50;
      if (v52 >= 0x3FFFFFFF)
      {
        v52 = 0x3FFFFFFFLL;
      }

      if (v52 <= -1073741823)
      {
        v52 = -1073741823;
      }

      if (a4 >= 1)
      {
        v53 = a4;
        do
        {
          v55 = *result++;
          v54 = v55;
          v56 = *a2++;
          v57 = v51 * v54 + v52 * v56;
          v58 = *a3++;
          v59 = v57 + (0x10000 - (v51 + v52)) * v58;
          if (v59 >= 0)
          {
            v60 = (v59 + 0x8000) >> 16;
          }

          else
          {
            v60 = -((0x8000 - v59) >> 16);
          }

          if (v60 >= 0x3FFFFFFF)
          {
            v60 = 0x3FFFFFFFLL;
          }

          if (v60 <= -1073741823)
          {
            LODWORD(v60) = -1073741823;
          }

          *a9++ = v60;
          --v53;
        }

        while (v53);
      }
    }

    else if (a4 >= 1)
    {
      v38 = a4;
      do
      {
        v40 = *result++;
        v39 = v40;
        v42 = *a2++;
        v41 = v42;
        v43 = *a3++;
        *a9++ = v41 + v39 - v43;
        --v38;
      }

      while (v38);
    }
  }

  else if (a4 >= 1)
  {
    v26 = a4;
    do
    {
      v28 = *result++;
      v27 = v28;
      v30 = *a2++;
      v29 = v30;
      v31 = *a3++;
      *a9++ = v29 + v27 - v31;
      --v26;
    }

    while (v26);
  }

  return result;
}

int *sub_2500EC288(int *result, int *a2, int *a3, _DWORD *a4, _DWORD *a5, int *a6, int *a7, _DWORD *a8)
{
  *a8 = 0;
  v8 = a5[1];
  v9 = a4[1];
  v10 = a5[2];
  v11 = a4[2];
  v12 = (v8 - v9) * (v8 - v9) + (*a5 - *a4) * (*a5 - *a4) + (v10 - v11) * (v10 - v11);
  v13 = *a6;
  v14 = a6[1];
  v15 = a6[2];
  v16 = (v14 - v9) * (v14 - v9) + (v13 - *a4) * (v13 - *a4) + (v15 - v11) * (v15 - v11);
  v17 = (v14 - v8) * (v14 - v8) + (v13 - *a5) * (v13 - *a5) + (v15 - v10) * (v15 - v10);
  if (v12 >> 28)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16 >> 28 == 0;
  }

  if (!v18 || v17 >> 28 != 0 || v12 == 0)
  {
    *a7 = (*a2 + *result) / 2;
    LODWORD(v21) = (a2[1] + result[1]) / 2;
  }

  else
  {
    v22 = __clz(v12);
    v23 = 1 << (56 - v22);
    if (v12 >= 0x80)
    {
      v17 = (v23 + v17) >> (57 - v22);
      v16 = (v23 + v16) >> (57 - v22);
      v12 = (v23 + v12) >> (57 - v22);
    }

    v24 = word_2501104A2[v12 - 1];
    v25 = (v16 - v17) * v24;
    v26 = 1073676288;
    if (v25 < 1073676288)
    {
      v26 = v25;
    }

    v27 = v26 + 0x10000;
    v28 = v25 < -1073807360;
    v29 = -1073741824;
    if (!v28)
    {
      v29 = v27;
    }

    v30 = ((v16 * v24) << 18) - v29 * v29;
    v31 = 0xFFFFFFFFLL;
    if (v30 < 0xFFFFFFFFLL)
    {
      v31 = v30;
    }

    v32 = v31 & ~(v31 >> 63);
    v33 = *result;
    v34 = result[1];
    v35 = *a2 - v33;
    v36 = a2[1] - v34;
    v37 = a3[1] - v34;
    v38 = (32 - __clz(v32)) >> 1;
    v39 = ((v32 >> v38) + (1 << v38)) >> 1;
    if (v30 >= 2)
    {
      v40 = v39;
    }

    else
    {
      v40 = v32;
    }

    if ((*a3 - v33) * v36 < v37 * v35)
    {
      v40 = -v40;
      *a8 = 1;
      LODWORD(v33) = *result;
    }

    v41 = v33;
    v42 = v29 * v35 + v40 * v36;
    if (v42 >= 0)
    {
      v43 = (v42 + 0x10000) >> 17;
    }

    else
    {
      v43 = -((0x10000 - v42) >> 17);
    }

    v44 = v43 + v41;
    v45 = v29 * v36 - v40 * v35;
    if (v45 >= 0)
    {
      v46 = (v45 + 0x10000) >> 17;
    }

    else
    {
      v46 = -((0x10000 - v45) >> 17);
    }

    v47 = v46 + result[1];
    if (v44 >= 0x3FFFFFFF)
    {
      v44 = 0x3FFFFFFFLL;
    }

    if (v44 <= -1073741823)
    {
      LODWORD(v44) = -1073741823;
    }

    *a7 = v44;
    if (v47 >= 0x3FFFFFFF)
    {
      v21 = 0x3FFFFFFFLL;
    }

    else
    {
      v21 = v47;
    }

    if (v21 <= -1073741823)
    {
      LODWORD(v21) = -1073741823;
    }
  }

  a7[1] = v21;
  return result;
}

unint64_t sub_2500EC4C8(unint64_t result, int *a2, _DWORD *a3, _DWORD *a4, int *a5, int a6, int *a7)
{
  v7 = a4[1];
  v8 = a3[1];
  v9 = a4[2];
  v10 = a3[2];
  v11 = (v7 - v8) * (v7 - v8) + (*a4 - *a3) * (*a4 - *a3) + (v9 - v10) * (v9 - v10);
  v12 = *a5;
  v13 = a5[1];
  v14 = a5[2];
  v15 = (v13 - v8) * (v13 - v8) + (v12 - *a3) * (v12 - *a3) + (v14 - v10) * (v14 - v10);
  v16 = (v13 - v7) * (v13 - v7) + (v12 - *a4) * (v12 - *a4) + (v14 - v9) * (v14 - v9);
  if (v11 >> 28)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15 >> 28 == 0;
  }

  if (!v17 || v16 >> 28 != 0 || v11 == 0)
  {
    *a7 = (*a2 + *result) / 2;
    LODWORD(v20) = (a2[1] + *(result + 4)) / 2;
  }

  else
  {
    v21 = __clz(v11);
    v22 = 57 - v21;
    v23 = 1 << (56 - v21);
    v24 = (v23 + v11) >> v22;
    v25 = (v23 + v15) >> v22;
    v26 = (v23 + v16) >> v22;
    if (v11 >= 0x80)
    {
      v16 = v26;
      v15 = v25;
      v11 = v24;
    }

    v27 = word_2501104A2[v11 - 1];
    v28 = (v15 - v16) * v27;
    v29 = 1073676288;
    if (v28 < 1073676288)
    {
      v29 = v28;
    }

    v30 = v29 + 0x10000;
    v31 = v28 < -1073807360;
    v32 = -1073741824;
    if (!v31)
    {
      v32 = v30;
    }

    v33 = ((v15 * v27) << 18) - v32 * v32;
    v34 = 0xFFFFFFFFLL;
    if (v33 < 0xFFFFFFFFLL)
    {
      v34 = v33;
    }

    v35 = v34 & ~(v34 >> 63);
    v36 = *result;
    v37 = *(result + 4);
    v38 = *a2 - v36;
    v39 = a2[1] - v37;
    v40 = (32 - __clz(v35)) >> 1;
    result = v35 >> v40;
    if (v33 >= 2)
    {
      v41 = (result + (1 << v40)) >> 1;
    }

    else
    {
      v41 = v35;
    }

    v42 = v41 * *(&unk_2501105A8 + a6);
    v43 = v32 * v38 + v42 * v39;
    if (v43 >= 0)
    {
      v44 = (v43 + 0x10000) >> 17;
    }

    else
    {
      v44 = -((0x10000 - v43) >> 17);
    }

    v45 = v44 + v36;
    v46 = v32 * v39 - v42 * v38;
    if (v46 >= 0)
    {
      v47 = (v46 + 0x10000) >> 17;
    }

    else
    {
      v47 = -((0x10000 - v46) >> 17);
    }

    v20 = v47 + v37;
    if (v45 >= 0x3FFFFFFF)
    {
      v45 = 0x3FFFFFFFLL;
    }

    if (v45 <= -1073741823)
    {
      LODWORD(v45) = -1073741823;
    }

    *a7 = v45;
    if (v20 >= 0x3FFFFFFF)
    {
      v20 = 0x3FFFFFFFLL;
    }

    if (v20 <= -1073741823)
    {
      LODWORD(v20) = -1073741823;
    }
  }

  a7[1] = v20;
  return result;
}

int *sub_2500EC6E4(int *result, int *a2, int *a3, _DWORD *a4, _DWORD *a5, int *a6, int *a7)
{
  v7 = a5[1];
  v8 = a4[1];
  v9 = a5[2];
  v10 = a4[2];
  v11 = (v7 - v8) * (v7 - v8) + (*a5 - *a4) * (*a5 - *a4) + (v9 - v10) * (v9 - v10);
  v12 = *a6;
  v13 = a6[1];
  v14 = a6[2];
  v15 = (v13 - v8) * (v13 - v8) + (v12 - *a4) * (v12 - *a4) + (v14 - v10) * (v14 - v10);
  v16 = (v13 - v7) * (v13 - v7) + (v12 - *a5) * (v12 - *a5) + (v14 - v9) * (v14 - v9);
  if (v11 >> 28)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15 >> 28 == 0;
  }

  if (!v17 || v16 >> 28 != 0 || v11 == 0)
  {
    *a7 = (*a2 + *result) / 2;
    LODWORD(v20) = (a2[1] + result[1]) / 2;
  }

  else
  {
    v21 = __clz(v11);
    v22 = 57 - v21;
    v23 = 1 << (56 - v21);
    v24 = (v23 + v11) >> v22;
    v25 = (v23 + v15) >> v22;
    v26 = (v23 + v16) >> v22;
    if (v11 >= 0x80)
    {
      v16 = v26;
      v15 = v25;
      v11 = v24;
    }

    v27 = word_2501104A2[v11 - 1];
    v28 = (v15 - v16) * v27;
    v29 = 1073676288;
    if (v28 < 1073676288)
    {
      v29 = v28;
    }

    v30 = v29 + 0x10000;
    v31 = v28 < -1073807360;
    v32 = -1073741824;
    if (!v31)
    {
      v32 = v30;
    }

    v33 = ((v15 * v27) << 18) - v32 * v32;
    v34 = 0xFFFFFFFFLL;
    if (v33 < 0xFFFFFFFFLL)
    {
      v34 = v33;
    }

    v35 = v34 & ~(v34 >> 63);
    v36 = *result;
    v37 = result[1];
    v38 = *a2 - v36;
    v39 = a2[1] - v37;
    result = ((32 - __clz(v35)) >> 1);
    if (v33 >= 2)
    {
      v40 = ((v35 >> result) + (1 << result)) >> 1;
    }

    else
    {
      v40 = v35;
    }

    if ((v37 - a3[1]) * v38 < (v36 - *a3) * v39)
    {
      v40 = -v40;
    }

    v41 = v32 * v38 - v40 * v39;
    if (v41 >= 0)
    {
      v42 = (v41 + 0x10000) >> 17;
    }

    else
    {
      v42 = -((0x10000 - v41) >> 17);
    }

    v43 = v42 + v36;
    v44 = v32 * v39 + v40 * v38;
    if (v44 >= 0)
    {
      v45 = (v44 + 0x10000) >> 17;
    }

    else
    {
      v45 = -((0x10000 - v44) >> 17);
    }

    v20 = v45 + v37;
    if (v43 >= 0x3FFFFFFF)
    {
      v43 = 0x3FFFFFFFLL;
    }

    if (v43 <= -1073741823)
    {
      LODWORD(v43) = -1073741823;
    }

    *a7 = v43;
    if (v20 >= 0x3FFFFFFF)
    {
      v20 = 0x3FFFFFFFLL;
    }

    if (v20 <= -1073741823)
    {
      LODWORD(v20) = -1073741823;
    }
  }

  a7[1] = v20;
  return result;
}

void *sub_2500EC90C(void *a1, uint64_t a2, uint64_t **__s, uint64_t ***a4)
{
  __dst = __s;
  v22 = strlen(__s);
  v8 = sub_2500E9BDC(a2 + 80, &__dst);
  if (a2 + 88 != v8 && !*(v8 + 80))
  {
    v20 = a1;
    while (1)
    {
      v20 = v20[1];
      if (v20 == a1)
      {
        break;
      }

      if (v20[15] == *(v8 + 56))
      {
        v18 = v20 + 2;
        if (!v20[2] || *(v20 + 8) != 260 || v20[6] != 1 || v20[5] != a4)
        {
          break;
        }

        return v18;
      }
    }
  }

  __dst = "rord";
  v22 = 4;
  v26 = 260;
  v27 = a4;
  v25 = 1;
  v24 = a1[2];
  v9 = sub_2500E71FC(a1, 0, 0, &v24, &__dst, &v26, &v27, &v25);
  v9[1] = a1;
  v10 = *a1;
  *v9 = *a1;
  *(v10 + 8) = v9;
  *a1 = v9;
  ++a1[2];
  v11 = *(v9 + 30);
  v12 = strlen(__s);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2500E5C5C();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    p_dst = operator new(v15);
    v22 = v13;
    v23 = v15 | 0x8000000000000000;
    __dst = p_dst;
  }

  else
  {
    HIBYTE(v23) = v12;
    p_dst = &__dst;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  memcpy(p_dst, __s, v13);
LABEL_12:
  *(p_dst + v13) = 0;
  v27 = &__dst;
  v16 = sub_2500E5E34((a2 + 80), &__dst, &unk_25010FF31, &v27);
  v17 = v16;
  if (*(v16 + 20))
  {
    sub_2500E5D18(v16 + 56);
    *(v17 + 20) = 0;
  }

  v18 = v9 + 2;
  *(v17 + 14) = v11;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst);
  }

  return v18;
}

void sub_2500ECB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2500ECB34(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v5 = v3 - v4;
  if (v3 == v4)
  {
    v18 = 0;
    v19 = 0;
    result = 0;
    v8 = 0;
    v10 = 1;
  }

  else
  {
    sub_2500EE2DC(a1, v5 >> 3);
    v7 = a1[1];
    bzero(v7, v3 - v4);
    v8 = &v7[v5];
    a1[1] = &v7[v5];
    result = *a1;
    v10 = *a1 == &v7[v5];
    if (*a1 == &v7[v5])
    {
      v10 = 1;
    }

    else
    {
      v11 = 0;
      v12 = &v7[v3 - result - v4 - 8] >> 3;
      v13 = vdupq_n_s64(v12);
      v14 = (v12 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v15 = xmmword_2501105B0;
      v16 = vdupq_n_s64(2uLL);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v13, v15));
        if (v17.i8[0])
        {
          *(result + 8 * v11) = v11;
        }

        if (v17.i8[4])
        {
          *(result + 8 * v11 + 8) = v11 + 1;
        }

        v11 += 2;
        v15 = vaddq_s64(v15, v16);
      }

      while (v14 != v11);
    }

    v18 = &v7[v5];
    v19 = result;
  }

  if (a2[1] != *a2 && *(*a2 + 4) == 1)
  {
    v22 = a2;
    v20 = 126 - 2 * __clz(&v18[-v19] >> 3);
    if (v10)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    return sub_2500EE354(result, v8, &v22, v21, 1);
  }

  return result;
}

void sub_2500ECC8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2500ECCA8(void **a1, uint64_t **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 == *a2)
  {
    v7 = 0;
  }

  else
  {
    if ((v5 >> 3) >> 61)
    {
      sub_2500E9A94();
    }

    v7 = sub_2500EE31C(v5 >> 3);
    *a1 = v7;
    a1[1] = v7;
    a1[2] = &v7[v8];
    v3 = *a2;
    v4 = a2[1];
  }

  for (; v3 != v4; ++v3)
  {
    v9 = *v3;
    v25[0] = "meshid";
    v25[1] = 6;
    v10 = sub_2500E9BDC(v9 + 80, v25);
    if (v9 + 88 == v10 || *(v10 + 80))
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v11 = *(v10 + 56) & 0xFFFFFF00;
      v13 = *(v10 + 56);
      v12 = 0x100000000;
    }

    v14 = v12 | v13 | v11;
    v15 = a1[2];
    if (v7 >= v15)
    {
      v16 = *a1;
      v17 = v7 - *a1;
      v18 = (v17 >> 3) + 1;
      if (v18 >> 61)
      {
        sub_2500E9A94();
      }

      v19 = v15 - v16;
      if (v19 >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        v22 = sub_2500EE31C(v20);
      }

      else
      {
        v22 = 0;
        v21 = 0;
      }

      v23 = &v22[8 * (v17 >> 3)];
      v24 = &v22[8 * v21];
      *v23 = v14;
      v7 = v23 + 1;
      memcpy(v22, v16, v17);
      *a1 = v22;
      a1[2] = v24;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7++ = v14;
    }

    a1[1] = v7;
  }
}

void sub_2500ECE4C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2500ECE74(uint64_t a1)
{
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

void sub_2500ECEB8(void *a1, uint64_t **a2, uint64_t *a3)
{
  sub_2500ECCA8(__p, a2);
  v6 = __p[1];
  v7 = __p[0];
  if (__p[0] != __p[1])
  {
    v8 = 0;
    v9 = __p[0];
    do
    {
      v8 += v9[4];
      v9 += 8;
    }

    while (v9 != __p[1]);
    if (!v8)
    {
      do
      {
        if ((v7[4] & 1) == 0)
        {
          v7[4] = 1;
        }

        *v7 = v8;
        v7 += 8;
        LODWORD(v8) = v8 + 1;
      }

      while (v7 != v6);
    }
  }

  sub_2500ECB34(&v25, __p);
  v11 = *a3;
  v10 = a3[1];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v12 = v10 - v11;
  if (v10 != v11)
  {
    sub_2500EBF20(a1, v12 >> 2);
    v13 = a1[1];
    bzero(v13, 2 * v12);
    a1[1] = &v13[2 * v12];
  }

  v14 = v25;
  if (v26 == v25)
  {
    if (!v25)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = (v26 - v25) >> 3;
    do
    {
      if (v15 == (a1[1] - *a1) >> 3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x25305EAE0](exception, "unexpected submeshed topology buffer id");
        __cxa_throw(exception, &unk_286298448, MEMORY[0x277D82600]);
      }

      v18 = v14[v16];
      v19 = __p[0] + 8 * v18;
      v20 = v19[4];
      v21 = *v19;
      if (v20 == 1 && *(*a3 + 4 * v16) == v21)
      {
        v23 = (*a2)[v18];
        ++v16;
      }

      else
      {
        v23 = 0;
      }

      *(*a1 + 8 * v15++) = v23;
    }

    while (v16 < v17);
  }

  operator delete(v14);
LABEL_23:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_2500ED064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

double sub_2500ED0B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 8);
  if (*a2 == v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25305EAE0](exception, "idx buffer missing");
    goto LABEL_212;
  }

  v8 = *(a3 + 8);
  v9 = v6 - *a2;
  if (v8 != *a3 && v9 < v8 - *a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25305EAE0](exception, "topology and submeshed index buffer mismatch");
    goto LABEL_212;
  }

  if (a4 && v9 >= 9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25305EAE0](exception, "facegroup and submeshed buffers conflict");
LABEL_212:
    __cxa_throw(exception, &unk_286298448, MEMORY[0x277D82600]);
  }

  sub_2500ECCA8(&v141, a2);
  v13 = *(&v141 + 1);
  v14 = v141;
  if (*(&v141 + 1) != v141)
  {
    v15 = 0;
    v16 = v141;
    do
    {
      v15 += *(v16 + 4);
      v16 += 8;
    }

    while (v16 != *(&v141 + 1));
    if (v15)
    {
      if (v15 != (*(&v141 + 1) - v141) >> 3)
      {
        v17 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x25305EAE0](v17, "submeshed index buffer ids incomplete");
        __cxa_throw(v17, &unk_286298448, MEMORY[0x277D82600]);
      }
    }

    else
    {
      do
      {
        if ((*(v14 + 4) & 1) == 0)
        {
          *(v14 + 4) = 1;
        }

        *v14 = v15;
        v14 += 8;
        LODWORD(v15) = v15 + 1;
      }

      while (v14 != v13);
    }
  }

  sub_2500ECB34(&v139, &v141);
  memset(v138, 0, sizeof(v138));
  v18 = *(a2 + 8);
  v19 = v18 - *a2;
  if (v18 != *a2)
  {
    if ((v19 >> 3) >> 62)
    {
      sub_2500E9A94();
    }

    v20 = sub_2500EF8F4(v19 >> 3);
    v22 = &v20[4 * v21];
    bzero(v20, v19 >> 1);
    *&v138[0] = v20;
    *(&v138[0] + 1) = &v20[v19 >> 1];
    *&v138[1] = v22;
    v23 = *(a2 + 8);
    v24 = v23 - *a2;
    if (v23 != *a2)
    {
      if ((v24 >> 3) >> 61)
      {
        sub_2500EBDB4();
      }

      v25 = sub_2500EBDCC(&v138[1] + 8, v24 >> 3);
      v27 = &v25[8 * v26];
      bzero(v25, v24);
      v28 = &v25[v24];
      v29 = &v25[-(*&v138[2] - *(&v138[1] + 1))];
      memcpy(v29, *(&v138[1] + 1), *&v138[2] - *(&v138[1] + 1));
      v30 = *(&v138[1] + 1);
      *(&v138[1] + 1) = v29;
      *&v138[2] = v28;
      *(&v138[2] + 1) = v27;
      if (v30)
      {
        operator delete(v30);
      }
    }
  }

  v31 = v139;
  v32 = v140;
  if (v139 != v140)
  {
    v33 = *&v138[0];
    v34 = v141;
    v35 = v139;
    do
    {
      v36 = v34 + 8 * *v35;
      if ((*(v36 + 4) & 1) == 0)
      {
        sub_2500EF8A8();
      }

      *v33++ = *v36;
      v35 += 8;
    }

    while (v35 != v32);
    v37 = *(&v138[1] + 1);
    v38 = v31;
    do
    {
      v39 = *v38;
      v38 += 8;
      *v37++ = *(*a2 + 8 * v39);
    }

    while (v38 != v32);
  }

  if (v31)
  {
    operator delete(v31);
  }

  if (v141)
  {
    *(&v141 + 1) = v141;
    operator delete(v141);
  }

  sub_2500ECEB8(&v141, a3, v138);
  v132 = a1;
  v133 = a5;
  if (*(&v138[0] + 1) == *&v138[0])
  {
LABEL_213:
    v131 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25305EAE0](v131, "no faces?");
    __cxa_throw(v131, &unk_286298448, MEMORY[0x277D82600]);
  }

  v134 = 0;
  __src = 0;
  v137 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  do
  {
    v45 = *(v141 + 8 * v42);
    if (!v45 || !*v45)
    {
      v45 = &qword_250110420;
    }

    v46 = *(*(&v138[1] + 1) + 8 * v42);
    v47 = *(v46 + 32);
    if (v47 == 3)
    {
      v49 = 1;
      v48 = 1;
    }

    else if (v47 == 4)
    {
      v48 = 1;
      v49 = 2;
    }

    else
    {
      v49 = 0;
      v48 = 0;
    }

    v50 = *v45;
    v136 = v41;
    if (*v45 && (v51 = v45[3]) != 0)
    {
      v52 = v45[2] & 0x7FFFFEFF;
      if (v52 == 4)
      {
        v61 = (v50 + 4 * v45[1]);
        if (v51 == 1)
        {
          v62 = (v50 + 4 * v45[1]);
          v63 = v62;
        }

        else
        {
          v63 = v61 + 1;
          v64 = v61[1];
          v65 = *v61;
          if (v64 >= *v61)
          {
            v62 = v61;
          }

          else
          {
            v62 = v61 + 1;
          }

          if (v64 < v65)
          {
            v63 = v61;
          }

          if (v51 != 2)
          {
            v66 = 0;
            v67 = 4 * v51;
            if (v64 <= v65)
            {
              v68 = *v61;
            }

            else
            {
              v68 = v61[1];
            }

            if (v64 < v65)
            {
              v65 = v61[1];
            }

            v69 = v67 - 8;
            v70 = v67 - 12;
            while (1)
            {
              v71 = &v61[v66 / 4];
              if (v70 == v66)
              {
                break;
              }

              v72 = v71 + 2;
              v75 = v71[3];
              v74 = v71 + 3;
              v73 = v75;
              v76 = *v72;
              if (v75 >= *v72)
              {
                if (v76 < v65)
                {
                  v65 = *v72;
                  v62 = v72;
                }

                v77 = v73 >= v68;
                if (v73 > v68)
                {
                  v68 = v73;
                }

                if (v77)
                {
                  v63 = v74;
                }
              }

              else
              {
                v65 = *v62;
                if (v73 < *v62)
                {
                  v65 = v73;
                  v62 = v74;
                }

                v68 = *v63;
                if (v76 > *v63)
                {
                  v68 = *v72;
                }

                if (v76 >= *v63)
                {
                  v63 = v72;
                }
              }

              v66 += 8;
              if (v69 == v66)
              {
                goto LABEL_118;
              }
            }

            v95 = v71[2];
            v94 = v71 + 2;
            v93 = v95;
            if (v95 >= *v62)
            {
              if (v93 >= *v63)
              {
                v63 = v94;
              }
            }

            else
            {
              v62 = v94;
            }
          }
        }

LABEL_118:
        v56 = v40;
        v99 = *v62;
        v100 = *v63;
      }

      else
      {
        if (v52 != 2)
        {
          v129 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x25305EAE0](v129, "unsupported index type");
          goto LABEL_208;
        }

        v53 = (v50 + 2 * v45[1]);
        if (v51 == 1)
        {
          v54 = (v50 + 2 * v45[1]);
          v55 = v54;
        }

        else
        {
          v55 = v53 + 1;
          v78 = v53[1];
          v79 = *v53;
          if (v78 >= v79)
          {
            v54 = v53;
          }

          else
          {
            v54 = v53 + 1;
          }

          if (v78 < v79)
          {
            v55 = v53;
          }

          if (v51 != 2)
          {
            v80 = 0;
            v81 = 2 * v51;
            if (v78 <= v79)
            {
              LOWORD(v82) = *v53;
            }

            else
            {
              LOWORD(v82) = v53[1];
            }

            if (v78 < v79)
            {
              LOWORD(v79) = v53[1];
            }

            v83 = v81 - 4;
            v84 = v81 - 6;
            while (1)
            {
              v85 = &v53[v80 / 2];
              if (v84 == v80)
              {
                break;
              }

              v86 = v85 + 2;
              v89 = v85[3];
              v88 = v85 + 3;
              v87 = v89;
              v90 = *v86;
              if (v89 >= v90)
              {
                if (v90 < v79)
                {
                  LOWORD(v79) = *v86;
                  v54 = v86;
                }

                v92 = v87 >= v82;
                if (v87 > v82)
                {
                  LOWORD(v82) = v87;
                }

                if (v92)
                {
                  v55 = v88;
                }
              }

              else
              {
                v79 = *v54;
                if (v87 < v79)
                {
                  LOWORD(v79) = v87;
                  v54 = v88;
                }

                v82 = *v55;
                v91 = v90 >= v82;
                if (v90 > v82)
                {
                  LOWORD(v82) = *v86;
                }

                if (v91)
                {
                  v55 = v86;
                }
              }

              v80 += 4;
              if (v83 == v80)
              {
                goto LABEL_121;
              }
            }

            v98 = v85[2];
            v97 = v85 + 2;
            v96 = v98;
            if (v98 >= *v54)
            {
              if (v96 >= *v55)
              {
                v55 = v97;
              }
            }

            else
            {
              v54 = v97;
            }
          }
        }

LABEL_121:
        v56 = v40;
        v99 = *v54;
        v100 = *v55;
      }

      v57 = v43;
      v58 = v44;
      if (v100 == v99 && v99 == 3)
      {
        v59 = 1;
      }

      else
      {
        if (v100 == v99 && v99 == 4)
        {
          v60 = 1;
          v59 = 2;
          goto LABEL_139;
        }

        if (v99 == 3 && v100 == 4)
        {
          v59 = 3;
        }

        else
        {
          v59 = 4;
        }
      }

      v60 = 1;
    }

    else
    {
      v56 = v40;
      v57 = v43;
      v58 = v44;
      v59 = 0;
      v60 = 0;
    }

LABEL_139:
    v139 = "faceType";
    v140 = 8;
    v104 = sub_2500E9BDC(v46 + 80, &v139);
    if (v46 + 88 == v104 || *(v104 + 80))
    {
      v105 = 0;
      v106 = 0;
      if (!v48)
      {
        goto LABEL_149;
      }
    }

    else
    {
      v105 = *(v104 + 56) + 1;
      v106 = 1;
      if (!v48)
      {
LABEL_149:
        LOBYTE(v49) = v105 | v59;
        v44 = v58;
        v107 = v57;
        if (!(v105 | v59))
        {
          v129 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x25305EAE0](v129, "cannot determine mesh face type");
          goto LABEL_208;
        }

        goto LABEL_150;
      }
    }

    if (v60 && v49 != v59)
    {
LABEL_206:
      v129 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25305EAE0](v129, "mesh face type disagreement");
      goto LABEL_208;
    }

    v44 = v58;
    if (v106)
    {
      v107 = v57;
      if (v49 != v105)
      {
        goto LABEL_206;
      }
    }

    else
    {
      v107 = v57;
    }

LABEL_150:
    v108 = *(v46 + 32);
    v40 = v56;
    if (v108 > 1)
    {
      if (!v45[3])
      {
        v109 = *(v46 + 24);
        goto LABEL_168;
      }

      v129 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25305EAE0](v129, "index buffer width > 1 when topology buffer present");
LABEL_208:
      __cxa_throw(v129, &unk_286298448, MEMORY[0x277D82600]);
    }

    if (v108)
    {
      if (v49 == 2)
      {
        v112 = *(v46 + 24);
        v110 = v112 >> 2;
        v111 = v112 >> 10;
        goto LABEL_159;
      }

      if (v49 == 1)
      {
        v110 = *(v46 + 24) / 3uLL;
        v111 = *(v46 + 24) / 0x300uLL;
LABEL_159:
        LODWORD(v108) = 1;
        goto LABEL_162;
      }

      LOBYTE(v110) = 0;
      LODWORD(v108) = 0;
    }

    else
    {
      LOBYTE(v110) = 0;
    }

    v111 = 0;
LABEL_162:
    v109 = v110 | (v111 << 8);
    v113 = v45[3];
    if (v113)
    {
      if (v109 == v113)
      {
        LODWORD(v108) = 0;
      }

      v109 = v45[3];
      if (v108 == 1)
      {
        v129 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x25305EAE0](v129, "index and topology buffers conflict");
        goto LABEL_208;
      }
    }

    else if ((v108 & 1) == 0)
    {
      sub_2500EF8A8();
    }

LABEL_168:
    if (v107 >= v44)
    {
      v114 = v107 - __src;
      v115 = v107 - __src + 1;
      if (v115 < 0)
      {
        sub_2500E9A94();
      }

      v116 = v44 - __src;
      if (2 * (v44 - __src) > v115)
      {
        v115 = 2 * v116;
      }

      if (v116 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v117 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v117 = v115;
      }

      if (v117)
      {
        v118 = operator new(v117);
      }

      else
      {
        v118 = 0;
      }

      v44 = &v118[v117];
      v118[v114] = v49;
      v43 = &v118[v114 + 1];
      memcpy(v118, __src, v114);
      if (__src)
      {
        operator delete(__src);
      }

      __src = v118;
    }

    else
    {
      *v107 = v49;
      v43 = (v107 + 1);
    }

    if (v137 >= v40)
    {
      v119 = v137 - v134;
      v120 = (v137 - v134) >> 3;
      v121 = v120 + 1;
      if ((v120 + 1) >> 61)
      {
        sub_2500E9A94();
      }

      if ((v40 - v134) >> 2 > v121)
      {
        v121 = (v40 - v134) >> 2;
      }

      if ((v40 - v134) >= 0x7FFFFFFFFFFFFFF8)
      {
        v122 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v122 = v121;
      }

      if (v122)
      {
        v124 = sub_2500EE31C(v122);
      }

      else
      {
        v124 = 0;
        v123 = 0;
      }

      v125 = &v124[8 * v120];
      v40 = &v124[8 * v123];
      *v125 = v109;
      v137 = (v125 + 1);
      memcpy(v124, v134, v119);
      if (v134)
      {
        operator delete(v134);
      }

      v134 = v124;
    }

    else
    {
      *v137 = v109;
      v137 += 8;
    }

    v41 = v109 + v136;
    ++v42;
    v126 = v138[0];
  }

  while (v42 < (*(&v138[0] + 1) - *&v138[0]) >> 2);
  if (!v41)
  {
    goto LABEL_213;
  }

  v127 = *v132;
  if (*v132)
  {
    *(v132 + 8) = v127;
    operator delete(v127);
    *v132 = 0;
    *(v132 + 8) = 0;
    *(v132 + 16) = 0;
    v126 = v138[0];
  }

  *v132 = v126;
  *(v132 + 16) = *&v138[1];
  *v133 = v41;
  *(v133 + 8) = v134;
  *(v133 + 16) = v137;
  *(v133 + 24) = v40;
  *(v133 + 32) = __src;
  *(v133 + 40) = v43;
  *(v133 + 48) = v44;
  *(v133 + 56) = *(&v138[1] + 8);
  *(v133 + 72) = *(&v138[2] + 1);
  result = *&v141;
  *(v133 + 80) = v141;
  *(v133 + 96) = v142;
  return result;
}

void sub_2500EDAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  v24 = *(v22 - 112);
  if (v24)
  {
    *(v22 - 104) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2500EDBA0@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v20 = *a2;
  v21 = *(a2 + 7);
  *v22 = a2[9];
  a2[7] = 0;
  a2[8] = 0;
  *&v22[8] = *(a2 + 5);
  v6 = a2[12];
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  a2[12] = 0;
  *&v22[24] = v6;
  v23 = 0uLL;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = (v8 - *a1) >> 2;
  v24 = 0;
  sub_2500EF92C(&v23, v7, v8, v9);
  v10 = *(a2 + 1);
  v12 = a2[3];
  v11 = a2[4];
  a2[3] = 0;
  a2[4] = 0;
  a2[1] = 0;
  a2[2] = 0;
  *&v13 = v12;
  *(&v13 + 1) = v11;
  v19 = v10;
  v27 = *(a2 + 5);
  v18 = v27;
  v25 = v10;
  v26 = v13;
  a2[5] = 0;
  a2[6] = 0;
  LOBYTE(v4) = *(v4 + 24);
  v28 = v4;
  *(a3 + 24) = 0;
  v14 = operator new(0x90uLL);
  *v14 = &unk_2862985A0;
  *(v14 + 1) = v20;
  *(v14 + 1) = v21;
  *(v14 + 2) = *v22;
  v15 = v23;
  *(v14 + 3) = *&v22[16];
  *(v14 + 4) = v15;
  *(v14 + 10) = v24;
  *&v16 = v12;
  *(&v16 + 1) = v11;
  *(v14 + 88) = v19;
  *(v14 + 104) = v16;
  result = v18;
  *(v14 + 120) = v18;
  v14[136] = v4;
  *(v14 + 137) = 0;
  *(v14 + 35) = 0;
  *(a3 + 24) = v14;
  return result;
}

void *sub_2500EDD0C(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[5] = v5;
    operator delete(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    a1[2] = v6;
    operator delete(v6);
  }

  return a1;
}

__n128 sub_2500EDD80@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  if (*a2 == v4)
  {
    v5 = 0;
    v9 = 0u;
  }

  else
  {
    if ((v4 - *a2) >> 3 != (a1[1] - *a1) >> 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25305EAE0](exception, "mismatched submeshed attribute index buffers");
      __cxa_throw(exception, &unk_286298448, MEMORY[0x277D82600]);
    }

    sub_2500ECEB8(&v10, a2, a1);
    v9 = v10;
    v5 = v11;
  }

  v10 = 0uLL;
  v11 = 0;
  *(a3 + 24) = 0;
  v6 = operator new(0x20uLL);
  *v6 = &unk_2862985E8;
  result = v9;
  *(v6 + 8) = v9;
  *(v6 + 3) = v5;
  *(a3 + 24) = v6;
  return result;
}

unint64_t GCLEncodeMeshFromBufferList(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_2500F08A4("GCLEncodeMeshFromBufferList");
  if (v6)
  {
    return v6(a1, a2, a3);
  }

  sub_2500E6250(&log);
  v23[0] = log;
  v8 = os_signpost_id_generate(log);
  v23[1] = v8;
  if (&v8[-1].isa + 7 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    v10 = v23[0];
    if (os_signpost_enabled(v23[0]))
    {
      LOWORD(v20[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_2500E5000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, "GCLEncodeMeshFromBufferList", byte_2501106A1, v20, 2u);
    }
  }

  v7 = 0x8000000000000000;
  if (a1 && a2 && *a2)
  {
    if ((atomic_load_explicit(&qword_27F3C0EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F3C0EE0))
    {
      qword_27F3C0EF8 = 0;
      qword_27F3C0EF0 = 0;
      qword_27F3C0EE8 = &qword_27F3C0EF0;
      __cxa_atexit(sub_2500EE204, &qword_27F3C0EE8, &dword_2500E5000);
      __cxa_guard_release(&qword_27F3C0EE0);
    }

    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = &qword_27F3C0EE8;
    }

    log = "codec";
    v22 = 5;
    v12 = sub_2500E9BDC(v11, &log);
    if (v11 + 1 == v12 || *(v12 + 80) != 1 || ((v15 = *(v12 + 56), v13 = v12 + 56, v14 = v15, v16 = *(v13 + 8), *(v13 + 23) >= 0) ? (v17 = *(v13 + 23)) : (v13 = v14, v17 = v16), sub_2500EE230(v13, v17, "pmesh", 5)))
    {
      v7 = 0x8000000000000000;
    }

    else
    {
      v19 = operator new(0x28uLL);
      *v19 = &unk_286298510;
      v19[1] = 0;
      v19[2] = (v19 + 2);
      v19[3] = (v19 + 2);
      v19[4] = 0;
      if (off_286298520(v19, a1, v11))
      {
        v7 = 0x8000000000000000;
      }

      else
      {
        sub_2500EF9C4(&log, v19[1]);
        v20[0] = log;
        v20[1] = v22 - log;
        if ((*(*v19 + 24))(v19, v20))
        {
          v7 = 0x8000000000000000;
        }

        else
        {
          (*a2)(*(a2 + 8));
          v7 = 0;
        }

        if (log)
        {
          v22 = log;
          operator delete(log);
        }
      }

      (*(*v19 + 8))(v19);
    }
  }

  sub_2500F0524(v23);
  return v7;
}

void sub_2500EE184(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v14 + 8))(v14, a2, a3, a4, a5, a6, a7, a8);
  sub_2500F0524(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2500EE00CLL);
}

uint64_t sub_2500EE230(char *__s, char *a2, char *a3, int64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = __s;
  v6 = &a2[__s];
  if (a4 <= a2)
  {
    v10 = *a3;
    do
    {
      if (&a2[-a4] == -1)
      {
        break;
      }

      v11 = memchr(__s, v10, &a2[-a4 + 1]);
      if (!v11)
      {
        break;
      }

      v7 = v11;
      if (!memcmp(v11, a3, a4))
      {
        goto LABEL_4;
      }

      __s = v7 + 1;
      a2 = (v6 - (v7 + 1));
    }

    while (a2 >= a4);
  }

  v7 = v6;
LABEL_4:
  if (v7 == v6)
  {
    return -1;
  }

  else
  {
    return v7 - v5;
  }
}

void *sub_2500EE2DC(uint64_t *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_2500E9A94();
  }

  result = sub_2500EE31C(a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 8 * v4;
  return result;
}

void *sub_2500EE31C(unint64_t a1)
{
  if (a1 >> 61)
  {
    sub_2500E9AAC();
  }

  return operator new(8 * a1);
}

uint64_t sub_2500EE354(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v239 = a2 - 1;
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          v122 = **a3;

          return sub_2500EF0B8(v10, v10 + 1, v239, v122);
        case 4:

          return sub_2500EF298(v10, v10 + 1, v10 + 2, v239, a3);
        case 5:

          return sub_2500EF430(v10, v10 + 1, v10 + 2, v10 + 3, v239, a3);
      }

      goto LABEL_10;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      break;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 == a2)
        {
          return result;
        }

        v123 = v10 + 1;
        if (v10 + 1 == a2)
        {
          return result;
        }

        v124 = **a3;
        v125 = 8;
        v126 = v10;
        while (1)
        {
          v128 = *v126;
          v127 = v126[1];
          v126 = v123;
          v129 = v124 + 8 * v127;
          v130 = (v124 + 8 * v128);
          v131 = *(v129 + 4);
          v132 = *(v130 + 4);
          if (v131 == 1 && (v132 & 1) != 0)
          {
            v133 = *v130;
            if (*v129 >= v133)
            {
              v134 = 1;
            }

            else
            {
              v134 = -1;
            }

            if (*v129 == v133)
            {
              v134 = 0;
            }

            if (v134 < 0)
            {
LABEL_266:
              v137 = v131 ^ 1;
              v138 = v125;
              while (1)
              {
                *(v10 + v138) = v128;
                v139 = v138 - 8;
                if (v138 == 8)
                {
                  break;
                }

                v128 = *(v10 + v138 - 16);
                v140 = (v124 + 8 * v128);
                v141 = *(v140 + 4);
                if (v131 && (v141 & 1) != 0)
                {
                  v142 = *v140;
                  v143 = *v129 == v142;
                  if (*v129 >= v142)
                  {
                    result = 1;
                  }

                  else
                  {
                    result = 255;
                  }

                  if (v143)
                  {
                    result = 0;
                  }
                }

                else
                {
                  v144 = v137 & v141;
                  if ((v137 & v141) != 0)
                  {
                    v145 = 255;
                  }

                  else
                  {
                    v145 = 1;
                  }

                  if (v144 != v131)
                  {
                    result = v145;
                  }

                  else
                  {
                    result = 0;
                  }
                }

                v138 = v139;
                if ((result & 0x80) == 0)
                {
                  v146 = (v10 + v139);
                  goto LABEL_285;
                }
              }

              v146 = v10;
LABEL_285:
              *v146 = v127;
            }
          }

          else
          {
            if (((v131 ^ 1) & v132) != 0)
            {
              v135 = -1;
            }

            else
            {
              v135 = 1;
            }

            if ((v132 | v131))
            {
              v136 = v135;
            }

            else
            {
              v136 = 0;
            }

            if (v136 < 0)
            {
              goto LABEL_266;
            }
          }

          v123 = v126 + 1;
          v125 += 8;
          if (v126 + 1 == a2)
          {
            return result;
          }
        }
      }

      if (v10 == a2)
      {
        return result;
      }

      v218 = v10 + 1;
      if (v10 + 1 == a2)
      {
        return result;
      }

      v219 = **a3;
      while (1)
      {
        v221 = *v9;
        v220 = v9[1];
        v9 = v218;
        v222 = v219 + 8 * v220;
        v223 = (v219 + 8 * v221);
        v224 = *(v222 + 4);
        v225 = *(v223 + 4);
        if (v224 == 1 && (v225 & 1) != 0)
        {
          break;
        }

        if (((v224 ^ 1) & v225) != 0)
        {
          v228 = -1;
        }

        else
        {
          v228 = 1;
        }

        if ((v225 | v224))
        {
          v229 = v228;
        }

        else
        {
          v229 = 0;
        }

        if (v229 < 0)
        {
          goto LABEL_443;
        }

LABEL_460:
        v218 = v9 + 1;
        if (v9 + 1 == a2)
        {
          return result;
        }
      }

      v226 = *v223;
      if (*v222 >= v226)
      {
        v227 = 1;
      }

      else
      {
        v227 = -1;
      }

      if (*v222 == v226)
      {
        v227 = 0;
      }

      if ((v227 & 0x80) == 0)
      {
        goto LABEL_460;
      }

LABEL_443:
      v230 = v224 ^ 1;
      v231 = v9;
      do
      {
        *v231 = v221;
        v221 = *(v231 - 2);
        v232 = (v219 + 8 * v221);
        v233 = *(v232 + 4);
        if (v224 && (v233 & 1) != 0)
        {
          v234 = *v232;
          v235 = *v222 == v234;
          if (*v222 >= v234)
          {
            v236 = 1;
          }

          else
          {
            v236 = -1;
          }

          if (v235)
          {
            v236 = 0;
          }
        }

        else
        {
          v237 = v230 & v233;
          if ((v230 & v233) != 0)
          {
            v238 = -1;
          }

          else
          {
            v238 = 1;
          }

          if (v237 != v224)
          {
            v236 = v238;
          }

          else
          {
            v236 = 0;
          }
        }

        --v231;
      }

      while (v236 < 0);
      *v231 = v220;
      goto LABEL_460;
    }

    if (!a4)
    {
      if (v10 == a2)
      {
        return result;
      }

      v147 = (v11 - 2) >> 1;
      v148 = *a3;
      v149 = v147;
      while (1)
      {
        v150 = v149;
        if (v147 >= v149)
        {
          v151 = (2 * v149) | 1;
          v152 = &v10[v151];
          v153 = 2 * v149 + 2;
          v154 = *v148;
          if (v153 < v11)
          {
            v155 = v154 + 8 * *v152;
            v156 = v154 + 8 * v152[1];
            v157 = *(v155 + 4);
            v158 = *(v156 + 4);
            if (v157 == 1 && (v158 & 1) != 0)
            {
              if (*v155 >= *v156)
              {
                v159 = 1;
              }

              else
              {
                v159 = -1;
              }

              if (*v155 == *v156)
              {
                v159 = 0;
              }
            }

            else
            {
              if (((v157 ^ 1) & v158) != 0)
              {
                v160 = -1;
              }

              else
              {
                v160 = 1;
              }

              if ((v158 | v157))
              {
                v159 = v160;
              }

              else
              {
                v159 = 0;
              }
            }

            if (v159 < 0)
            {
              ++v152;
              v151 = 2 * v150 + 2;
            }
          }

          v161 = &v10[v150];
          v162 = *v152;
          v163 = *v161;
          v164 = v154 + 8 * *v152;
          v165 = v154 + 8 * *v161;
          v166 = *(v164 + 4);
          v167 = *(v165 + 4);
          if (v166 == 1 && (v167 & 1) != 0)
          {
            v168 = *v164;
            v169 = v168 == *v165;
            if (v168 >= *v165)
            {
              v170 = 1;
            }

            else
            {
              v170 = -1;
            }

            if (v169)
            {
              v170 = 0;
            }

            if (v170 < 0)
            {
              goto LABEL_358;
            }
          }

          else
          {
            if (((v166 ^ 1) & v167) != 0)
            {
              v171 = -1;
            }

            else
            {
              v171 = 1;
            }

            if (((v167 | v166) & 1) == 0)
            {
              v171 = 0;
            }

            if (v171 < 0)
            {
              goto LABEL_358;
            }
          }

          do
          {
            v172 = v152;
            *v161 = v162;
            if (v147 < v151)
            {
              break;
            }

            v173 = (2 * v151) | 1;
            v152 = &v10[v173];
            v151 = 2 * v151 + 2;
            if (v151 >= v11)
            {
              v151 = v173;
            }

            else
            {
              v174 = v154 + 8 * *v152;
              v175 = v154 + 8 * v152[1];
              v176 = *(v174 + 4);
              v177 = *(v175 + 4);
              if (v176 == 1 && (v177 & 1) != 0)
              {
                if (*v174 >= *v175)
                {
                  v178 = 1;
                }

                else
                {
                  v178 = -1;
                }

                if (*v174 == *v175)
                {
                  v178 = 0;
                }
              }

              else
              {
                v179 = ((v176 ^ 1) & v177) != 0 ? -1 : 1;
                v178 = ((v177 | v176) & 1) != 0 ? v179 : 0;
              }

              if (v178 < 0)
              {
                ++v152;
              }

              else
              {
                v151 = v173;
              }
            }

            v162 = *v152;
            v180 = v154 + 8 * *v152;
            v181 = *(v180 + 4);
            if (v181 == 1 && (v167 & 1) != 0)
            {
              v182 = *v180 >= *v165 ? 1 : -1;
              v183 = *v180 == *v165 ? 0 : v182;
            }

            else
            {
              if (((v181 ^ 1) & v167) != 0)
              {
                v183 = -1;
              }

              else
              {
                v183 = 1;
              }

              if (((v167 | v181) & 1) == 0)
              {
                v183 = 0;
              }
            }

            v161 = v172;
          }

          while ((v183 & 0x80) == 0);
          *v172 = v163;
        }

LABEL_358:
        v149 = v150 - 1;
        if (!v150)
        {
          while (1)
          {
            v184 = 0;
            v185 = *v10;
            v186 = *a3;
            v187 = v10;
            do
            {
              v188 = &v187[v184];
              v189 = v188 + 1;
              result = 2 * v184;
              v190 = (2 * v184) | 1;
              v184 = 2 * v184 + 2;
              if (v184 >= v11)
              {
                v184 = v190;
              }

              else
              {
                v192 = v188[2];
                v191 = v188 + 2;
                v193 = *v186 + 8 * *(v191 - 1);
                v194 = *v186 + 8 * v192;
                v195 = *(v193 + 4);
                v196 = *(v194 + 4);
                if (v195 == 1 && (v196 & 1) != 0)
                {
                  if (*v193 >= *v194)
                  {
                    result = 1;
                  }

                  else
                  {
                    result = 255;
                  }

                  if (*v193 == *v194)
                  {
                    result = 0;
                  }
                }

                else
                {
                  if (((v195 ^ 1) & v196) != 0)
                  {
                    v197 = 255;
                  }

                  else
                  {
                    v197 = 1;
                  }

                  if ((v196 | v195))
                  {
                    result = v197;
                  }

                  else
                  {
                    result = 0;
                  }
                }

                if ((result & 0x80) != 0)
                {
                  v189 = v191;
                }

                else
                {
                  v184 = v190;
                }
              }

              *v187 = *v189;
              v187 = v189;
            }

            while (v184 <= ((v11 - 2) >> 1));
            if (v189 == --a2)
            {
              *v189 = v185;
            }

            else
            {
              *v189 = *a2;
              *a2 = v185;
              v198 = (v189 - v10 + 8) >> 3;
              v199 = v198 < 2;
              v200 = v198 - 2;
              if (!v199)
              {
                v201 = v200 >> 1;
                v202 = &v10[v201];
                v203 = *v202;
                v204 = *v189;
                v205 = *v186;
                v206 = v205 + 8 * *v202;
                v207 = v205 + 8 * *v189;
                v208 = *(v206 + 4);
                v209 = *(v207 + 4);
                if (v208 == 1 && (v209 & 1) != 0)
                {
                  v210 = *v206;
                  v211 = v210 == *v207;
                  if (v210 >= *v207)
                  {
                    result = 1;
                  }

                  else
                  {
                    result = 255;
                  }

                  if (v211)
                  {
                    result = 0;
                  }

                  if ((result & 0x80) == 0)
                  {
                    goto LABEL_414;
                  }
                }

                else
                {
                  if (((v208 ^ 1) & v209) != 0)
                  {
                    result = 255;
                  }

                  else
                  {
                    result = 1;
                  }

                  if (((v209 | v208) & 1) == 0)
                  {
                    result = 0;
                  }

                  if ((result & 0x80) == 0)
                  {
                    goto LABEL_414;
                  }
                }

                do
                {
                  result = v202;
                  *v189 = v203;
                  if (!v201)
                  {
                    break;
                  }

                  v201 = (v201 - 1) >> 1;
                  v202 = &v10[v201];
                  v203 = *v202;
                  v212 = v205 + 8 * *v202;
                  v213 = *(v212 + 4);
                  if (v213 == 1 && (v209 & 1) != 0)
                  {
                    v214 = *v212 >= *v207 ? 1 : -1;
                    v215 = *v212 == *v207 ? 0 : v214;
                  }

                  else
                  {
                    if (((v213 ^ 1) & v209) != 0)
                    {
                      v215 = -1;
                    }

                    else
                    {
                      v215 = 1;
                    }

                    if (((v209 | v213) & 1) == 0)
                    {
                      v215 = 0;
                    }
                  }

                  v189 = result;
                }

                while (v215 < 0);
                *result = v204;
              }
            }

LABEL_414:
            v199 = v11-- <= 2;
            if (v199)
            {
              return result;
            }
          }
        }
      }
    }

    v12 = v11 >> 1;
    v13 = &v10[v11 >> 1];
    v14 = **a3;
    if (v11 < 0x81)
    {
      result = sub_2500EF0B8(&v9[v11 >> 1], v9, v239, v14);
    }

    else
    {
      sub_2500EF0B8(v9, &v9[v11 >> 1], v239, v14);
      sub_2500EF0B8(v9 + 1, v13 - 1, a2 - 2, **a3);
      sub_2500EF0B8(v9 + 2, &v9[v12 + 1], a2 - 3, **a3);
      result = sub_2500EF0B8(v13 - 1, v13, &v9[v12 + 1], **a3);
      v15 = *v9;
      *v9 = *v13;
      *v13 = v15;
    }

    --a4;
    v16 = *v9;
    v17 = **a3;
    v18 = v17 + 8 * *v9;
    if (a5)
    {
      v19 = *(v18 + 4);
      goto LABEL_40;
    }

    v20 = v17 + 8 * *(v9 - 1);
    v21 = *(v20 + 4);
    v19 = *(v18 + 4);
    if (v21 == 1 && (v19 & 1) != 0)
    {
      if (*v20 >= *v18)
      {
        v22 = 1;
      }

      else
      {
        v22 = -1;
      }

      if (*v20 == *v18)
      {
        v22 = 0;
      }

      if ((v22 & 0x80) == 0)
      {
        goto LABEL_25;
      }

LABEL_40:
      v30 = 0;
      do
      {
        v31 = v9[v30 + 1];
        v32 = v17 + 8 * v31;
        v33 = *(v32 + 4);
        if ((v33 & v19) == 1)
        {
          if (*v32 >= *v18)
          {
            v34 = 1;
          }

          else
          {
            v34 = -1;
          }

          if (*v32 == *v18)
          {
            v34 = 0;
          }
        }

        else
        {
          if (((v33 ^ 1) & v19) != 0)
          {
            v35 = -1;
          }

          else
          {
            v35 = 1;
          }

          if ((v19 | v33))
          {
            v34 = v35;
          }

          else
          {
            v34 = 0;
          }
        }

        ++v30;
      }

      while (v34 < 0);
      v36 = &v9[v30];
      v37 = a2;
      if (v30 == 1)
      {
        v37 = a2;
        do
        {
          if (v36 >= v37)
          {
            break;
          }

          v44 = *--v37;
          v45 = v17 + 8 * v44;
          v46 = *(v45 + 4);
          if ((v46 & v19) == 1)
          {
            if (*v45 >= *v18)
            {
              v47 = 1;
            }

            else
            {
              v47 = -1;
            }

            if (*v45 == *v18)
            {
              v47 = 0;
            }
          }

          else
          {
            v48 = ((v46 ^ 1) & v19) != 0 ? -1 : 1;
            v47 = ((v19 | v46) & 1) != 0 ? v48 : 0;
          }
        }

        while ((v47 & 0x80) == 0);
      }

      else
      {
        do
        {
          while (1)
          {
            v38 = *--v37;
            v39 = v17 + 8 * v38;
            v40 = *(v39 + 4);
            if ((v40 & v19) == 1)
            {
              break;
            }

            if (((v40 ^ 1) & v19) != 0)
            {
              v42 = -1;
            }

            else
            {
              v42 = 1;
            }

            if ((v19 | v40))
            {
              v43 = v42;
            }

            else
            {
              v43 = 0;
            }

            if (v43 < 0)
            {
              goto LABEL_88;
            }
          }

          if (*v39 >= *v18)
          {
            v41 = 1;
          }

          else
          {
            v41 = -1;
          }

          if (*v39 == *v18)
          {
            v41 = 0;
          }
        }

        while ((v41 & 0x80) == 0);
      }

LABEL_88:
      if (v36 >= v37)
      {
        v64 = v36 - 1;
      }

      else
      {
        v49 = *v37;
        v50 = v36;
        v51 = v37;
        do
        {
          *v50 = v49;
          *v51 = v31;
          do
          {
            while (1)
            {
              v52 = v50[1];
              ++v50;
              v31 = v52;
              v53 = v17 + 8 * v52;
              v54 = *(v53 + 4);
              if ((v54 & v19) == 1)
              {
                break;
              }

              if (((v54 ^ 1) & v19) != 0)
              {
                v56 = -1;
              }

              else
              {
                v56 = 1;
              }

              if ((v19 | v54))
              {
                v57 = v56;
              }

              else
              {
                v57 = 0;
              }

              if ((v57 & 0x80) == 0)
              {
                goto LABEL_106;
              }
            }

            if (*v53 >= *v18)
            {
              v55 = 1;
            }

            else
            {
              v55 = -1;
            }

            if (*v53 == *v18)
            {
              v55 = 0;
            }
          }

          while (v55 < 0);
          do
          {
LABEL_106:
            while (1)
            {
              v58 = *--v51;
              v49 = v58;
              v59 = v17 + 8 * v58;
              v60 = *(v59 + 4);
              if ((v60 & v19) == 1)
              {
                break;
              }

              if (((v60 ^ 1) & v19) != 0)
              {
                v62 = -1;
              }

              else
              {
                v62 = 1;
              }

              if ((v19 | v60))
              {
                v63 = v62;
              }

              else
              {
                v63 = 0;
              }

              if (v63 < 0)
              {
                goto LABEL_121;
              }
            }

            if (*v59 >= *v18)
            {
              v61 = 1;
            }

            else
            {
              v61 = -1;
            }

            if (*v59 == *v18)
            {
              v61 = 0;
            }
          }

          while ((v61 & 0x80) == 0);
LABEL_121:
          ;
        }

        while (v50 < v51);
        v64 = v50 - 1;
      }

      if (v64 != v9)
      {
        *v9 = *v64;
      }

      *v64 = v16;
      if (v36 < v37)
      {
LABEL_129:
        result = sub_2500EE354(v9, v64, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v64 + 1;
      }

      else
      {
        v65 = sub_2500EF634(v9, v64, a3);
        v10 = v64 + 1;
        result = sub_2500EF634(v64 + 1, a2, a3);
        if (result)
        {
          a2 = v64;
          if (v65)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v65)
        {
          goto LABEL_129;
        }
      }
    }

    else
    {
      if (((v21 ^ 1) & v19) != 0)
      {
        v28 = -1;
      }

      else
      {
        v28 = 1;
      }

      if ((v19 | v21))
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      if (v29 < 0)
      {
        goto LABEL_40;
      }

LABEL_25:
      v23 = (v17 + 8 * *v239);
      v24 = *(v23 + 4);
      if (v19 & 1) != 0 && (v23[1])
      {
        v25 = 0;
        v26 = *v23;
        if (*v18 >= v26)
        {
          v27 = 1;
        }

        else
        {
          v27 = -1;
        }

        if (*v18 == v26)
        {
          v27 = 0;
        }
      }

      else
      {
        v25 = v19 ^ 1;
        if ((v19 ^ 1) & v24)
        {
          v66 = -1;
        }

        else
        {
          v66 = 1;
        }

        if ((v24 | v19))
        {
          v27 = v66;
        }

        else
        {
          v27 = 0;
        }
      }

      v10 = v9;
      if (v27 < 0)
      {
        do
        {
          v75 = v10[1];
          ++v10;
          v76 = (v17 + 8 * v75);
          v77 = *(v76 + 4);
          if (v19 & 1) != 0 && (v77)
          {
            v78 = *v76;
            v79 = *v18 == v78;
            if (*v18 >= v78)
            {
              v80 = 1;
            }

            else
            {
              v80 = -1;
            }

            if (v79)
            {
              v80 = 0;
            }
          }

          else
          {
            v81 = v25 & v77;
            if (v25 & v77)
            {
              v82 = -1;
            }

            else
            {
              v82 = 1;
            }

            if ((v81 ^ v19))
            {
              v80 = v82;
            }

            else
            {
              v80 = 0;
            }
          }
        }

        while ((v80 & 0x80) == 0);
      }

      else
      {
        v67 = v9 + 1;
        do
        {
          v10 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v68 = (v17 + 8 * *v67);
          v69 = *(v68 + 4);
          if (v19 & 1) != 0 && (v69)
          {
            v70 = *v68;
            v71 = *v18 == v70;
            if (*v18 >= v70)
            {
              v72 = 1;
            }

            else
            {
              v72 = -1;
            }

            if (v71)
            {
              v72 = 0;
            }
          }

          else
          {
            v73 = v25 & v69;
            v74 = (v25 & v69 & 1) != 0 ? -1 : 1;
            v72 = ((v73 ^ v19) & 1) != 0 ? v74 : 0;
          }

          v67 = v10 + 1;
        }

        while ((v72 & 0x80) == 0);
      }

      v83 = a2;
      if (v10 < a2)
      {
        v83 = a2;
        do
        {
          while (1)
          {
            v84 = *--v83;
            v85 = (v17 + 8 * v84);
            v86 = *(v85 + 4);
            if (v19 & 1) != 0 && (v86)
            {
              break;
            }

            v90 = v25 & v86;
            if (v25 & v86)
            {
              v91 = -1;
            }

            else
            {
              v91 = 1;
            }

            if ((v90 ^ v19))
            {
              v92 = v91;
            }

            else
            {
              v92 = 0;
            }

            if ((v92 & 0x80) == 0)
            {
              goto LABEL_188;
            }
          }

          v87 = *v85;
          v88 = *v18 == v87;
          if (*v18 >= v87)
          {
            v89 = 1;
          }

          else
          {
            v89 = -1;
          }

          if (v88)
          {
            v89 = 0;
          }
        }

        while (v89 < 0);
      }

LABEL_188:
      if (v10 < v83)
      {
        v93 = *v10;
        v94 = *v83;
        do
        {
          *v10 = v94;
          *v83 = v93;
          do
          {
            while (1)
            {
              v95 = v10[1];
              ++v10;
              v93 = v95;
              v96 = (v17 + 8 * v95);
              v97 = *(v96 + 4);
              if (v19 & 1) != 0 && (v97)
              {
                break;
              }

              v101 = v25 & v97;
              if (v25 & v97)
              {
                v102 = -1;
              }

              else
              {
                v102 = 1;
              }

              if ((v101 ^ v19))
              {
                v103 = v102;
              }

              else
              {
                v103 = 0;
              }

              if (v103 < 0)
              {
                goto LABEL_207;
              }
            }

            v98 = *v96;
            v99 = *v18 == v98;
            if (*v18 >= v98)
            {
              v100 = 1;
            }

            else
            {
              v100 = -1;
            }

            if (v99)
            {
              v100 = 0;
            }
          }

          while ((v100 & 0x80) == 0);
          do
          {
LABEL_207:
            while (1)
            {
              v104 = *--v83;
              v94 = v104;
              v105 = (v17 + 8 * v104);
              v106 = *(v105 + 4);
              if (v19 & 1) != 0 && (v106)
              {
                break;
              }

              v110 = v25 & v106;
              if (v25 & v106)
              {
                v111 = -1;
              }

              else
              {
                v111 = 1;
              }

              if ((v110 ^ v19))
              {
                v112 = v111;
              }

              else
              {
                v112 = 0;
              }

              if ((v112 & 0x80) == 0)
              {
                goto LABEL_223;
              }
            }

            v107 = *v105;
            v108 = *v18 == v107;
            if (*v18 >= v107)
            {
              v109 = 1;
            }

            else
            {
              v109 = -1;
            }

            if (v108)
            {
              v109 = 0;
            }
          }

          while (v109 < 0);
LABEL_223:
          ;
        }

        while (v10 < v83);
      }

      v113 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v113;
      }

      a5 = 0;
      *v113 = v16;
    }
  }

  v114 = *(a2 - 1);
  v115 = *v10;
  v116 = **a3;
  v117 = v116 + 8 * v114;
  v118 = v116 + 8 * *v10;
  v119 = *(v117 + 4);
  v120 = *(v118 + 4);
  if (v119 == 1 && (v120 & 1) != 0)
  {
    v121 = -1;
    if (*v117 >= *v118)
    {
      v121 = 1;
    }

    if (*v117 == *v118)
    {
      v121 = 0;
    }

    if ((v121 & 0x80) == 0)
    {
      return result;
    }

LABEL_423:
    *v10 = v114;
    *(a2 - 1) = v115;
    return result;
  }

  v216 = -1;
  if (((v119 ^ 1) & v120) == 0)
  {
    v216 = 1;
  }

  if ((v120 | v119))
  {
    v217 = v216;
  }

  else
  {
    v217 = 0;
  }

  if (v217 < 0)
  {
    goto LABEL_423;
  }

  return result;
}

uint64_t *sub_2500EF0B8(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = (a4 + 8 * *a2);
  v7 = (a4 + 8 * *result);
  v8 = *(v6 + 4);
  v9 = *(v7 + 4);
  if (v8 == 1 && (v9 & 1) != 0)
  {
    v10 = -1;
    if (*v6 >= *v7)
    {
      v10 = 1;
    }

    if (*v6 == *v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v12 = -1;
    if (((v8 ^ 1) & v9) == 0)
    {
      v12 = 1;
    }

    if ((v9 | v8))
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }
  }

  v13 = *a3;
  v14 = a4 + 8 * *a3;
  v15 = *(v14 + 4);
  v16 = v8 & v15;
  if (v11 < 0)
  {
    if (v16)
    {
      v18 = *v6;
      v19 = -1;
      if (*v14 >= v18)
      {
        v19 = 1;
      }

      if (*v14 == v18)
      {
        v19 = 0;
      }

      if (v19 < 0)
      {
LABEL_27:
        *result = v13;
        goto LABEL_69;
      }
    }

    else
    {
      v27 = -1;
      if ((v8 & (v15 ^ 1)) == 0)
      {
        v27 = 1;
      }

      if (v8 | v15)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      if (v28 < 0)
      {
        goto LABEL_27;
      }
    }

    *result = v4;
    *a2 = v5;
    v29 = a4 + 8 * *a3;
    v30 = *(v29 + 4);
    if (v30 == 1 && (v9 & 1) != 0)
    {
      v31 = *v7;
      v32 = *v29 >= v31;
      v33 = *v29 == v31;
      v34 = -1;
      if (v32)
      {
        v34 = 1;
      }

      if (v33)
      {
        v34 = 0;
      }

      if ((v34 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v37 = -1;
      if (((v30 ^ 1) & v9) == 0)
      {
        v37 = 1;
      }

      if (((v9 | v30) & 1) == 0)
      {
        v37 = 0;
      }

      if ((v37 & 0x80) == 0)
      {
        return result;
      }
    }

    *a2 = *a3;
LABEL_69:
    *a3 = v5;
    return result;
  }

  if (v16)
  {
    v17 = -1;
    if (*v14 >= *v6)
    {
      v17 = 1;
    }

    if (*v14 == *v6)
    {
      v17 = 0;
    }

    if ((v17 & 0x80) == 0)
    {
      return result;
    }

LABEL_33:
    *a2 = v13;
    *a3 = v4;
    v21 = *result;
    v22 = a4 + 8 * *a2;
    v23 = a4 + 8 * *result;
    v24 = *(v22 + 4);
    v25 = *(v23 + 4);
    if (v24 == 1 && (v25 & 1) != 0)
    {
      v26 = -1;
      if (*v22 >= *v23)
      {
        v26 = 1;
      }

      if (*v22 == *v23)
      {
        v26 = 0;
      }

      if ((v26 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v35 = -1;
      if (((v24 ^ 1) & v25) == 0)
      {
        v35 = 1;
      }

      if ((v25 | v24))
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      if ((v36 & 0x80) == 0)
      {
        return result;
      }
    }

    *result = *a2;
    *a2 = v21;
    return result;
  }

  v20 = -1;
  if ((v8 & (v15 ^ 1)) == 0)
  {
    v20 = 1;
  }

  if (!(v8 | v15))
  {
    v20 = 0;
  }

  if (v20 < 0)
  {
    goto LABEL_33;
  }

  return result;
}

uint64_t *sub_2500EF298(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  result = sub_2500EF0B8(a1, a2, a3, **a5);
  v11 = *a3;
  v12 = **a5;
  v13 = v12 + 8 * *a4;
  v14 = v12 + 8 * *a3;
  v15 = *(v13 + 4);
  v16 = *(v14 + 4);
  if (v15 == 1 && (v16 & 1) != 0)
  {
    v17 = -1;
    if (*v13 >= *v14)
    {
      v17 = 1;
    }

    if (*v13 == *v14)
    {
      v17 = 0;
    }

    if ((v17 & 0x80) == 0)
    {
      return result;
    }

LABEL_15:
    *a3 = *a4;
    *a4 = v11;
    v20 = *a2;
    v21 = v12 + 8 * *a3;
    v22 = v12 + 8 * *a2;
    v23 = *(v21 + 4);
    v24 = *(v22 + 4);
    if (v23 == 1 && (v24 & 1) != 0)
    {
      v25 = -1;
      if (*v21 >= *v22)
      {
        v25 = 1;
      }

      if (*v21 == *v22)
      {
        v25 = 0;
      }

      if ((v25 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v26 = -1;
      if (((v23 ^ 1) & v24) == 0)
      {
        v26 = 1;
      }

      if ((v24 | v23))
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      if ((v27 & 0x80) == 0)
      {
        return result;
      }
    }

    *a2 = *a3;
    *a3 = v20;
    v28 = *a1;
    v29 = v12 + 8 * *a2;
    v30 = v12 + 8 * *a1;
    v31 = *(v29 + 4);
    v32 = *(v30 + 4);
    if (v31 == 1 && (v32 & 1) != 0)
    {
      v33 = -1;
      if (*v29 >= *v30)
      {
        v33 = 1;
      }

      if (*v29 == *v30)
      {
        v33 = 0;
      }

      if ((v33 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v34 = -1;
      if (((v31 ^ 1) & v32) == 0)
      {
        v34 = 1;
      }

      if ((v32 | v31))
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      if ((v35 & 0x80) == 0)
      {
        return result;
      }
    }

    *a1 = *a2;
    *a2 = v28;
    return result;
  }

  v18 = -1;
  if (((v15 ^ 1) & v16) == 0)
  {
    v18 = 1;
  }

  if ((v16 | v15))
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 < 0)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t *sub_2500EF430(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  result = sub_2500EF298(a1, a2, a3, a4, a6);
  v13 = *a4;
  v14 = **a6;
  v15 = v14 + 8 * *a5;
  v16 = v14 + 8 * *a4;
  v17 = *(v15 + 4);
  v18 = *(v16 + 4);
  if (v17 == 1 && (v18 & 1) != 0)
  {
    v19 = -1;
    if (*v15 >= *v16)
    {
      v19 = 1;
    }

    if (*v15 == *v16)
    {
      v19 = 0;
    }

    if ((v19 & 0x80) == 0)
    {
      return result;
    }

LABEL_15:
    *a4 = *a5;
    *a5 = v13;
    v22 = *a3;
    v23 = v14 + 8 * *a4;
    v24 = v14 + 8 * *a3;
    v25 = *(v23 + 4);
    v26 = *(v24 + 4);
    if (v25 == 1 && (v26 & 1) != 0)
    {
      v27 = -1;
      if (*v23 >= *v24)
      {
        v27 = 1;
      }

      if (*v23 == *v24)
      {
        v27 = 0;
      }

      if ((v27 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v28 = -1;
      if (((v25 ^ 1) & v26) == 0)
      {
        v28 = 1;
      }

      if ((v26 | v25))
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      if ((v29 & 0x80) == 0)
      {
        return result;
      }
    }

    *a3 = *a4;
    *a4 = v22;
    v30 = *a2;
    v31 = v14 + 8 * *a3;
    v32 = v14 + 8 * *a2;
    v33 = *(v31 + 4);
    v34 = *(v32 + 4);
    if (v33 == 1 && (v34 & 1) != 0)
    {
      v35 = -1;
      if (*v31 >= *v32)
      {
        v35 = 1;
      }

      if (*v31 == *v32)
      {
        v35 = 0;
      }

      if ((v35 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v36 = -1;
      if (((v33 ^ 1) & v34) == 0)
      {
        v36 = 1;
      }

      if ((v34 | v33))
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      if ((v37 & 0x80) == 0)
      {
        return result;
      }
    }

    *a2 = *a3;
    *a3 = v30;
    v38 = *a1;
    v39 = v14 + 8 * *a2;
    v40 = v14 + 8 * *a1;
    v41 = *(v39 + 4);
    v42 = *(v40 + 4);
    if (v41 == 1 && (v42 & 1) != 0)
    {
      v43 = -1;
      if (*v39 >= *v40)
      {
        v43 = 1;
      }

      if (*v39 == *v40)
      {
        v43 = 0;
      }

      if ((v43 & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      v44 = -1;
      if (((v41 ^ 1) & v42) == 0)
      {
        v44 = 1;
      }

      if ((v42 | v41))
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      if ((v45 & 0x80) == 0)
      {
        return result;
      }
    }

    *a1 = *a2;
    *a2 = v38;
    return result;
  }

  v20 = -1;
  if (((v17 ^ 1) & v18) == 0)
  {
    v20 = 1;
  }

  if ((v18 | v17))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 < 0)
  {
    goto LABEL_15;
  }

  return result;
}