void sub_27151198C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  __cxa_free_exception(v20);
  sub_2713A1270(va);
  _Unwind_Resume(a1);
}

void sub_2715119BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271511A2C(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 3)
  {
    goto LABEL_20;
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 4;
  if (v8 > 1)
  {
    sub_27173170C(a1);
    sub_2717318E8(a1, a2);
    v9 = a1[6];
    v10 = a1[7];
    v4 = v10 >= v9;
    v11 = v10 - v9;
    if (!v4)
    {
      v11 = 0;
    }

    if (v11 > 3)
    {
      *(a2 + 24) = *(a1[3] + v9);
      a1[6] += 4;
      v12 = a1[12];
      v13 = a1[9];
      a1[6] = *(v12 - 8) + *(v13 - 8) + 8;
      a1[9] = v13 - 8;
      a1[12] = v12 - 8;
      return;
    }

LABEL_20:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  HIBYTE(v24) = 0;
  LOBYTE(__p[0]) = 0;
  v25 = 0;
  sub_2717318E8(a1, __p);
  v15 = a1[6];
  v14 = a1[7];
  v4 = v14 >= v15;
  v16 = v14 - v15;
  if (!v4)
  {
    v16 = 0;
  }

  if (v16 <= 3)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v19, "Not enough data to read");
    v19->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(v19, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v17 = *(a1[3] + v15);
  v25 = v17;
  a1[6] = v15 + 4;
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    v20 = *__p;
    v21 = v24;
    v22 = v17;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sub_271127178(&v20, __p[0], __p[1]);
  v17 = v25;
  v22 = v25;
  if (*(a2 + 23) < 0)
  {
LABEL_15:
    operator delete(*a2);
    v17 = v22;
  }

LABEL_16:
  *a2 = v20;
  *(a2 + 16) = v21;
  *(a2 + 24) = v17;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_271511C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271511CB0(uint64_t a1)
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

uint64_t sub_271511D3C(uint64_t a1)
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

uint64_t sub_271511DC8(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 56);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 24);
    if (v4 != a1)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 24);
  if (v4 == a1)
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

uint64_t sub_271511EBC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 40);
    if (v3 != a1 + 16)
    {
      goto LABEL_4;
    }

LABEL_8:
    (*(*v3 + 32))(v3);
    return a1;
  }

  v3 = *(a1 + 40);
  if (v3 == a1 + 16)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void sub_271511FC4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715121EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void **);
  v9 = va_arg(va2, void);
  sub_2711B5360(va1);
  sub_27112F828(va2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271512230(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271512284(uint64_t a1)
{
  std::mutex::~mutex((a1 + 48));
  v2 = *(a1 + 32);

  sub_2715122C4(v2);
}

void sub_2715122C4(uint64_t a1)
{
  if (a1)
  {
    sub_2715122C4(*a1);
    sub_2715122C4(*(a1 + 8));
    v2 = *(a1 + 72);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        v3 = a1;

LABEL_7:
        operator delete(v3);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(a1 + 32));
    v3 = a1;

    goto LABEL_7;
  }
}

uint64_t sub_271512390(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 16;
  v5 = *(a2 + 40);
  if (v5)
  {
    if (v5 == a2 + 16)
    {
      *(a1 + 40) = v4;
      (*(**(a2 + 40) + 24))(*(a2 + 40), v4);
      v6 = a1 + 48;
      v7 = *(a2 + 72);
      if (!v7)
      {
LABEL_10:
        *(a1 + 72) = v7;
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 40) = (*(*v5 + 16))(v5);
      v6 = a1 + 48;
      v7 = *(a2 + 72);
      if (!v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    *(a1 + 40) = 0;
    v6 = a1 + 48;
    v7 = *(a2 + 72);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 != a2 + 48)
  {
    v7 = (*(*v7 + 16))(v7);
    goto LABEL_10;
  }

  *(a1 + 72) = v6;
  (*(**(a2 + 72) + 24))(*(a2 + 72), v6);
LABEL_12:
  v8 = *(a2 + 104);
  if (!v8)
  {
LABEL_15:
    *(a1 + 104) = v8;
    goto LABEL_17;
  }

  if (v8 != a2 + 80)
  {
    v8 = (*(*v8 + 16))(v8);
    goto LABEL_15;
  }

  *(a1 + 104) = a1 + 80;
  (*(**(a2 + 104) + 24))(*(a2 + 104), a1 + 80);
LABEL_17:
  v9 = *(a2 + 136);
  if (!v9)
  {
LABEL_20:
    *(a1 + 136) = v9;
    goto LABEL_22;
  }

  if (v9 != a2 + 112)
  {
    v9 = (*(*v9 + 16))(v9);
    goto LABEL_20;
  }

  *(a1 + 136) = a1 + 112;
  (*(**(a2 + 136) + 24))(*(a2 + 136), a1 + 112);
LABEL_22:
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v10 = *(a2 + 144);
  v11 = *(a2 + 152);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    v12 = *(a2 + 192);
    if (v12)
    {
      if (v12 == a2 + 168)
      {
        *(a1 + 192) = a1 + 168;
        (*(**(a2 + 192) + 24))(*(a2 + 192), a1 + 168);
        goto LABEL_31;
      }

      v12 = (*(*v12 + 16))(v12);
    }

    *(a1 + 192) = v12;
LABEL_31:
    *(a1 + 200) = 1;
  }

  *(a1 + 208) = *(a2 + 208);
  return a1;
}

void sub_2715126F4(_Unwind_Exception *a1)
{
  sub_271372BB8(v6);
  sub_271233D2C(v5);
  sub_2711AA15C(v4);
  sub_2711A9E28(v3);
  sub_271511CB0(v2);
  sub_271511D3C(v1);
  _Unwind_Resume(a1);
}

void *sub_271512778(void *a1)
{
  *a1 = &unk_288108B78;
  sub_271515124((a1 + 1));
  return a1;
}

void sub_2715127BC(void *a1)
{
  *a1 = &unk_288108B78;
  sub_271515124((a1 + 1));

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715128A0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_288108B78;
  result = sub_271512390(a2 + 8, a1 + 8);
  *(a2 + 220) = 0;
  *(a2 + 217) = 0;
  return result;
}

void sub_2715128FC(char *a1)
{
  sub_271515124((a1 + 8));

  operator delete(a1);
}

void sub_271512938(uint64_t a1, const void **a2, uint64_t a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v55 = 0x500000001;
  v56 = 0;
  v57 = 1;
  v58 = 0;
  sub_27139A608(&v73, (a1 + 152));
  v60 = 0;
  v62 = v75;
  v6 = v78;
  v63 = v76;
  v65 = -1;
  LOBYTE(v81[0]) = 0;
  LOBYTE(v82[1]) = 0;
  v59 = 0u;
  memset(v72, 0, sizeof(v72));
  v61 = *v74;
  v74[0] = 0;
  v74[1] = 0;
  v75 = 0;
  v64 = 0;
  if (v78 == -1)
  {
    v7 = 0;
  }

  else
  {
    *&v42 = &v64;
    (off_288132AC0[v78])(&v42, v77);
    v65 = v6;
    v7 = v82[1];
  }

  v66 = *v79;
  v67 = v80;
  v80 = 0;
  *v79 = 0uLL;
  LOBYTE(v68) = 0;
  v70 = 0;
  if (v7)
  {
    v68 = *v81;
    v69 = v82[0];
    v81[1] = 0;
    v82[0] = 0;
    v81[0] = 0;
    v70 = 1;
  }

  v71 = 1;
  sub_2713A1844(v72);
  *&v42 = a3;
  *(&v42 + 1) = &v54;
  v86[0] = &unk_2881168D0;
  v86[1] = &v42;
  sub_27184A384(v86, v72);
  if (v81[1])
  {
    if (v71)
    {
      sub_2713974FC(&v59, v72);
    }

    v37 = 0;
    v41 = 0;
    sub_2714FCC00(&v39);
    v9 = HIBYTE(v72[2]);
    if (SHIBYTE(v72[2]) < 0)
    {
      v9 = v72[1];
    }

    if (v9 == 8)
    {
      v10 = v72[0];
      if (SHIBYTE(v72[2]) >= 0)
      {
        v10 = v72;
      }

      v11 = *"cv3d.net" == *v10;
      if ((SHIBYTE(v72[2]) & 0x80000000) == 0)
      {
LABEL_24:
        if (v11)
        {
          goto LABEL_25;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v11 = 0;
      if ((SHIBYTE(v72[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    operator delete(v72[0]);
    if (v11)
    {
LABEL_25:
      sub_2714FCC00(&v39);
      v12 = v73;
      if (SHIBYTE(v72[2]) < 0)
      {
        operator delete(v72[0]);
        if (v12 == 1)
        {
LABEL_27:
          v13 = v40;
          if (*(&v40 + 1))
          {
            atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          if (v13)
          {
            v14 = __dynamic_cast(v13, &unk_28811D1B0, &unk_28811DB40, 0) != 0;
            if (!*(&v13 + 1))
            {
              goto LABEL_66;
            }
          }

          else
          {
            v14 = 0;
            if (!*(&v13 + 1))
            {
              goto LABEL_66;
            }
          }

          if (!atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v13 + 1) + 16))(*(&v13 + 1));
            std::__shared_weak_count::__release_weak(*(&v13 + 1));
          }

LABEL_66:
          if (v14)
          {
            v18 = *(&v40 + 1);
            v17 = v40;
            if (*(&v40 + 1))
            {
              atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
              v19 = v17 + 16;
              if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v18->__on_zero_shared)(v18);
                std::__shared_weak_count::__release_weak(v18);
              }

LABEL_72:
              std::mutex::lock((*(*(a1 + 8) + 240) + 24));
              LOBYTE(v72[0]) = 2;
              *&v72[1] = *v19;
              LODWORD(v73) = *(v19 + 16);
              LOBYTE(v74[0]) = 0;
              LOBYTE(v76) = 0;
              if (*(v19 + 48) == 1)
              {
                if (*(v19 + 47) < 0)
                {
                  sub_271127178(v74, *(v19 + 24), *(v19 + 32));
                }

                else
                {
                  v20 = *(v19 + 24);
                  v75 = *(v19 + 40);
                  *v74 = v20;
                }

                LOBYTE(v76) = 1;
              }

              v77[0] = 0;
              v83 = 0;
              if (*(v19 + 200) == 1)
              {
                sub_2711B0ED4(v77, (v19 + 56));
                v83 = 1;
              }

              v21 = *(v19 + 208);
              v85 = *(v19 + 224);
              v84 = v21;
              operator new();
            }
          }

          else
          {
            v17 = 0;
          }

          v19 = v17 + 16;
          goto LABEL_72;
        }
      }

      else if (v73 == 1)
      {
        goto LABEL_27;
      }

      sub_271505690(&v52, *(a1 + 8), a2, 0, 0);
      sub_2714FCC00(&v39);
      v22 = v73;
      if (SHIBYTE(v72[2]) < 0)
      {
        operator delete(v72[0]);
        if (v22 == 2)
        {
LABEL_82:
          v23 = v40;
          if (*(&v40 + 1))
          {
            atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          if (v23)
          {
            v24 = __dynamic_cast(v23, &unk_28811D1B0, &unk_28811DB88, 0) != 0;
            if (!*(&v23 + 1))
            {
              goto LABEL_94;
            }
          }

          else
          {
            v24 = 0;
            if (!*(&v23 + 1))
            {
              goto LABEL_94;
            }
          }

          if (!atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v23 + 1) + 16))(*(&v23 + 1));
            std::__shared_weak_count::__release_weak(*(&v23 + 1));
          }

LABEL_94:
          if (v24)
          {
            v26 = v40;
            if (!*(&v40 + 1))
            {
              v27 = v40 + 16;
              v28 = *(a1 + 80);
              if (!v28)
              {
                goto LABEL_109;
              }

              goto LABEL_101;
            }

            atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
            v27 = v26 + 16;
            if (!atomic_fetch_add((*(&v26 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (*(**(&v26 + 1) + 16))(*(&v26 + 1));
              std::__shared_weak_count::__release_weak(*(&v26 + 1));
              v27 = v26 + 16;
              v28 = *(a1 + 80);
              if (!v28)
              {
LABEL_109:
                sub_27112AFFC();
              }

              goto LABEL_101;
            }
          }

          else
          {
            v27 = 16;
          }

          v28 = *(a1 + 80);
          if (!v28)
          {
            goto LABEL_109;
          }

LABEL_101:
          (*(*v28 + 48))(v28, v52, *(a1 + 8), v27);
          goto LABEL_121;
        }
      }

      else if (v73 == 2)
      {
        goto LABEL_82;
      }

      sub_2714FCC00(&v39);
      v25 = v73;
      if (SHIBYTE(v72[2]) < 0)
      {
        operator delete(v72[0]);
        if (v25 != 3)
        {
          goto LABEL_121;
        }
      }

      else if (v73 != 3)
      {
        goto LABEL_121;
      }

      v29 = v40;
      if (*(&v40 + 1))
      {
        atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (v29)
      {
        v30 = __dynamic_cast(v29, &unk_28811D1B0, &unk_28811DBB8, 0) != 0;
        if (!*(&v29 + 1))
        {
          goto LABEL_113;
        }
      }

      else
      {
        v30 = 0;
        if (!*(&v29 + 1))
        {
LABEL_113:
          if (v30)
          {
            v31 = v40;
            if (*(&v40 + 1))
            {
              atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
              v32 = v31 + 16;
              if (!atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (*(**(&v31 + 1) + 16))(*(&v31 + 1));
                std::__shared_weak_count::__release_weak(*(&v31 + 1));
                v32 = v31 + 16;
              }
            }

            else
            {
              v32 = v40 + 16;
            }
          }

          else
          {
            v32 = 16;
          }

          v33 = *(a1 + 144);
          if (!v33)
          {
            sub_27112AFFC();
          }

          (*(*v33 + 48))(v33, v52, v32);
LABEL_121:
          v16 = v53;
          if (!v53)
          {
LABEL_124:
            if (v41 == 1)
            {
              v34 = *(&v40 + 1);
              if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v34->__on_zero_shared)(v34);
                std::__shared_weak_count::__release_weak(v34);
              }

              v35 = v38;
              if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v35->__on_zero_shared)(v35);
                std::__shared_weak_count::__release_weak(v35);
              }
            }

            goto LABEL_131;
          }

LABEL_122:
          if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v16->__on_zero_shared)(v16);
            std::__shared_weak_count::__release_weak(v16);
          }

          goto LABEL_124;
        }
      }

      if (!atomic_fetch_add((*(&v29 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(**(&v29 + 1) + 16))(*(&v29 + 1));
        std::__shared_weak_count::__release_weak(*(&v29 + 1));
      }

      goto LABEL_113;
    }

LABEL_58:
    sub_271505690(v72, *(a1 + 8), a2, 0, 0);
    v15 = *(a1 + 48);
    if (!v15)
    {
      sub_27112AFFC();
    }

    (*(*v15 + 48))(v15, v72[0], &v37);
    v16 = v72[1];
    if (!v72[1])
    {
      goto LABEL_124;
    }

    goto LABEL_122;
  }

  if ((atomic_load_explicit(&qword_28087B948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B948))
  {
    qword_28087B980 = 9;
    qword_28087B988 = &off_288132220;
    __cxa_guard_release(&qword_28087B948);
  }

  if ((atomic_load_explicit(&qword_28087B950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B950))
  {
    qword_28087B990 = 10;
    qword_28087B998 = &off_288132220;
    __cxa_guard_release(&qword_28087B950);
  }

  if (LOBYTE(v81[1]) == 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_288108EC0;
    __cxa_throw(exception, &unk_28811C2D8, std::exception::~exception);
  }

  v42 = *v72;
  LOBYTE(v43) = 0;
  v51 = 0;
  if (LOBYTE(v81[0]) == 1)
  {
    sub_27112F6CC(&v43, &v72[2]);
    v51 = 1;
  }

  if (*(&v42 + 1) == qword_28087B988 && v42 == qword_28087B980)
  {
    if ((*(a1 + 216) & 1) == 0)
    {
      v8 = 5;
LABEL_36:
      sub_2715062E4(a1 + 8, a2, &v42, v8);
    }
  }

  else
  {
    v8 = 7;
    if (*(&v42 + 1) != qword_28087B998 || v42 != qword_28087B990)
    {
      goto LABEL_36;
    }

    if ((*(a1 + 216) & 1) == 0)
    {
      v8 = 6;
      goto LABEL_36;
    }
  }

  if (v51 == 1)
  {
    if (v50 == 1)
    {
      if (v49 < 0)
      {
        operator delete(__p);
      }

      if (v47 < 0)
      {
        operator delete(v46);
      }
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }
  }

  if ((v81[1] & 1) == 0 && LOBYTE(v81[0]) == 1)
  {
    if (v80 == 1)
    {
      if (SHIBYTE(v79[1]) < 0)
      {
        operator delete(v78);
      }

      if ((v77[7] & 0x80000000) != 0)
      {
        operator delete(v75);
      }
    }

    if (LOBYTE(v74[1]) == 1 && SHIBYTE(v74[0]) < 0)
    {
      operator delete(v72[2]);
    }
  }

LABEL_131:
  if (v71 == 1)
  {
    sub_2713A1844(&v59);
  }
}

void sub_2715142C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x3D0]) == 1 && SLOBYTE(STACK[0x3CF]) < 0)
  {
    operator delete(STACK[0x3B8]);
  }

  sub_271134CBC(&STACK[0x560]);
  sub_271134CBC(&STACK[0x490]);
  sub_271134CBC(&STACK[0x2C0]);
  sub_2711B039C(&a39);
  sub_27112F828(&a65);
  if (a18 == 1)
  {
    sub_271396310(&a13);
  }

  if (LOBYTE(STACK[0x2B8]) == 1)
  {
    sub_2713A1844(&STACK[0x228]);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271514528(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3kit3viz13NetworkServer7Private19ProcessReceivedDataE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3kit3viz13NetworkServer7Private19ProcessReceivedDataE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3kit3viz13NetworkServer7Private19ProcessReceivedDataE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit3viz13NetworkServer7Private19ProcessReceivedDataE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_2715145A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a2 + 40;
  v5 = *(a2 + 40);
  if (!v5)
  {
    v4 = a1 + 40;
    goto LABEL_5;
  }

  if (v5 != a2 + 16)
  {
    *(a1 + 40) = v5;
LABEL_5:
    *v4 = 0;
    goto LABEL_7;
  }

  *(a1 + 40) = a1 + 16;
  (*(**v4 + 24))();
LABEL_7:
  v6 = a2 + 72;
  v7 = *(a2 + 72);
  if (!v7)
  {
    v6 = a1 + 72;
    goto LABEL_11;
  }

  if (v7 != a2 + 48)
  {
    *(a1 + 72) = v7;
LABEL_11:
    *v6 = 0;
    goto LABEL_13;
  }

  *(a1 + 72) = a1 + 48;
  (*(**v6 + 24))();
LABEL_13:
  v8 = a2 + 104;
  v9 = *(a2 + 104);
  if (!v9)
  {
    v8 = a1 + 104;
    goto LABEL_17;
  }

  if (v9 != a2 + 80)
  {
    *(a1 + 104) = v9;
LABEL_17:
    *v8 = 0;
    goto LABEL_19;
  }

  *(a1 + 104) = a1 + 80;
  (*(**v8 + 24))();
LABEL_19:
  v10 = a2 + 136;
  v11 = *(a2 + 136);
  if (!v11)
  {
    v10 = a1 + 136;
    goto LABEL_23;
  }

  if (v11 != a2 + 112)
  {
    *(a1 + 136) = v11;
LABEL_23:
    *v10 = 0;
    goto LABEL_25;
  }

  *(a1 + 136) = a1 + 112;
  (*(**v10 + 24))();
LABEL_25:
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    v12 = a2 + 192;
    v13 = *(a2 + 192);
    if (v13)
    {
      if (v13 == a2 + 168)
      {
        *(a1 + 192) = a1 + 168;
        (*(**v12 + 24))();
        goto LABEL_32;
      }

      *(a1 + 192) = v13;
    }

    else
    {
      v12 = a1 + 192;
    }

    *v12 = 0;
LABEL_32:
    *(a1 + 200) = 1;
  }

  *(a1 + 208) = *(a2 + 208);
  return a1;
}

void *sub_2715147F4(void *a1)
{
  *a1 = &unk_288108B20;
  v2 = a1[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
      goto LABEL_4;
    }

LABEL_8:
    (*(*v3 + 32))(v3);
    return a1;
  }

  v3 = a1[6];
  if (v3 == a1 + 3)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void sub_2715148F8(void *a1)
{
  *a1 = &unk_288108B20;
  v2 = a1[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
LABEL_4:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

LABEL_8:

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = a1[6];
    if (v3 != a1 + 3)
    {
      goto LABEL_4;
    }
  }

  (*(*v3 + 32))(v3);
  goto LABEL_8;
}

uint64_t sub_271514B0C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_288108B20;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 48);
  if (result)
  {
    if (result == a1 + 24)
    {
      *(a2 + 48) = a2 + 24;
      result = (*(**(a1 + 48) + 24))(*(a1 + 48));
      v5 = *(a1 + 64);
      *(a2 + 56) = *(a1 + 56);
      *(a2 + 64) = v5;
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a2 + 48) = result;
      v5 = *(a1 + 64);
      *(a2 + 56) = *(a1 + 56);
      *(a2 + 64) = v5;
      if (!v5)
      {
        return result;
      }
    }
  }

  else
  {
    *(a2 + 48) = 0;
    v5 = *(a1 + 64);
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 64) = v5;
    if (!v5)
    {
      return result;
    }
  }

  atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  return result;
}

uint64_t sub_271514BFC(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = *(a1 + 48);
    if (result != a1 + 24)
    {
      goto LABEL_4;
    }

LABEL_9:
    v4 = *(*result + 32);

    return v4();
  }

  v2 = a1 + 24;
  result = *(a1 + 48);
  if (result == v2)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (!result)
  {
    return result;
  }

  v4 = *(*result + 40);

  return v4();
}

void sub_271514D00(void *__p)
{
  v2 = __p[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = __p[6];
    if (v3 != __p + 3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = __p[6];
    if (v3 != __p + 3)
    {
LABEL_4:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = __p;

      goto LABEL_8;
    }
  }

  (*(*v3 + 32))(v3);
  v4 = __p;

LABEL_8:
  operator delete(v4);
}

void sub_271514E08(uint64_t a1, const void **a2, unsigned __int8 *a3)
{
  v33 = *a3;
  v5 = (*(*(a1 + 8) + 240) + 24);
  v36 = v5;
  v37 = 1;
  std::mutex::lock(v5);
  v32 = *(a1 + 8);
  v6 = *(v32 + 240);
  v9 = *(v6 + 8);
  v7 = (v6 + 8);
  v8 = v9;
  if (!v9)
  {
    goto LABEL_51;
  }

  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = *(a2 + 12);
  v14 = v7;
  do
  {
    v15 = *(v8 + 55);
    if (v15 >= 0)
    {
      v16 = v8 + 4;
    }

    else
    {
      v16 = v8[4];
    }

    if (v15 >= 0)
    {
      v17 = *(v8 + 55);
    }

    else
    {
      v17 = v8[5];
    }

    if (v12 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v12;
    }

    v19 = memcmp(v16, v11, v18);
    if (v19)
    {
      if (v19 < 0)
      {
        goto LABEL_9;
      }

LABEL_22:
      v14 = v8;
      goto LABEL_10;
    }

    if (v17 != v12)
    {
      if (v17 < v12)
      {
LABEL_9:
        ++v8;
        goto LABEL_10;
      }

      goto LABEL_22;
    }

    v20 = *(v8 + 28);
    v29 = v20 >= v13;
    v21 = v20 < v13;
    if (v29)
    {
      v14 = v8;
    }

    v8 += v21;
LABEL_10:
    v8 = *v8;
  }

  while (v8);
  if (v14 == v7)
  {
    goto LABEL_51;
  }

  v22 = *(v14 + 55);
  if (v22 >= 0)
  {
    v23 = v14 + 4;
  }

  else
  {
    v23 = v14[4];
  }

  if (v22 >= 0)
  {
    v24 = *(v14 + 55);
  }

  else
  {
    v24 = v14[5];
  }

  if (v24 >= v12)
  {
    v25 = v12;
  }

  else
  {
    v25 = v24;
  }

  v26 = memcmp(v11, v23, v25);
  if (v26)
  {
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_51:
    v27 = v33;
    if (v33 != 1)
    {
      goto LABEL_52;
    }

LABEL_59:
    std::mutex::unlock(v5);
  }

  else
  {
    v29 = v12 >= v24;
    if (v12 == v24)
    {
      v29 = v13 >= *(v14 + 28);
    }

    if (!v29)
    {
      goto LABEL_51;
    }

LABEL_42:
    v27 = v33;
    if (v33 == 1 && v14 == v7)
    {
      goto LABEL_59;
    }

LABEL_52:
    sub_271505690(&v34, v32, a2, &v36, 1);
    if (v37)
    {
      std::mutex::unlock(v36);
      v37 = 0;
      v38 = v27;
      v30 = *(a1 + 48);
      if (!v30)
      {
        sub_27112AFFC();
      }

      (*(*v30 + 48))(v30, v34, &v38);
      v31 = v35;
      if (v35)
      {
        if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }
      }

      if (v37)
      {
        v5 = v36;
        goto LABEL_59;
      }
    }

    else
    {
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
    }
  }
}

void sub_271515080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, std::mutex *a14, char a15)
{
  if (a15)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715150AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3kit3viz13NetworkServer7Private24ForwardConnectionChangedE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3kit3viz13NetworkServer7Private24ForwardConnectionChangedE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3kit3viz13NetworkServer7Private24ForwardConnectionChangedE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit3viz13NetworkServer7Private24ForwardConnectionChangedE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_271515124(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    v2 = *(a1 + 192);
    if (v2 == a1 + 168)
    {
      (*(*v2 + 32))(v2);
      v3 = *(a1 + 144);
      if (!v3)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (v2)
    {
      (*(*v2 + 40))(v2);
    }
  }

  v3 = *(a1 + 144);
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_6:
  v4 = *(a1 + 152);
  v5 = v3;
  if (v4 != v3)
  {
    do
    {
      v6 = *(v4 - 1);
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v4 -= 16;
    }

    while (v4 != v3);
    v5 = *(a1 + 144);
  }

  *(a1 + 152) = v3;
  operator delete(v5);
LABEL_14:
  v7 = *(a1 + 136);
  if (v7 == a1 + 112)
  {
    (*(*v7 + 32))(v7);
    v8 = *(a1 + 104);
    if (v8 != a1 + 80)
    {
      goto LABEL_18;
    }

LABEL_28:
    (*(*v8 + 32))(v8);
    v9 = *(a1 + 72);
    if (v9 != a1 + 48)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  v8 = *(a1 + 104);
  if (v8 == a1 + 80)
  {
    goto LABEL_28;
  }

LABEL_18:
  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  v9 = *(a1 + 72);
  if (v9 != a1 + 48)
  {
LABEL_21:
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    v10 = *(a1 + 40);
    if (v10 != a1 + 16)
    {
      goto LABEL_24;
    }

LABEL_30:
    (*(*v10 + 32))(v10);
    return a1;
  }

LABEL_29:
  (*(*v9 + 32))(v9);
  v10 = *(a1 + 40);
  if (v10 == a1 + 16)
  {
    goto LABEL_30;
  }

LABEL_24:
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  return a1;
}

void *sub_271515404(void *a1)
{
  *a1 = &unk_28810C0C8;
  v2 = a1[40];
  a1[40] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[39];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1[37];
    if (v4 != a1 + 34)
    {
LABEL_6:
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      v5 = a1[31];
      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = a1[37];
    if (v4 != a1 + 34)
    {
      goto LABEL_6;
    }
  }

  (*(*v4 + 32))(v4);
  v5 = a1[31];
  if (!v5)
  {
LABEL_9:
    sub_271515124((a1 + 3));
    return a1;
  }

LABEL_12:
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_9;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  sub_271515124((a1 + 3));
  return a1;
}

void sub_2715155B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881067A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27151560C(uint64_t a1)
{
  if (*(a1 + 320) == 1)
  {
    sub_2711B039C(a1 + 88);
  }

  std::mutex::~mutex((a1 + 24));
}

uint64_t sub_271515658(uint64_t result)
{
  *result = &unk_288108BD0;
  if (*(result + 56) == 1)
  {
    v1 = *(result + 48);
    if (v1 == result + 24)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 48));
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 48));
    }

    result = v2;
  }

LABEL_7:
  v3 = *(result + 16);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27151576C(uint64_t a1)
{
  *a1 = &unk_288108BD0;
  if (*(a1 + 56) == 1)
  {
    v1 = *(a1 + 48);
    if (v1 == a1 + 24)
    {
      v2 = a1;
      (*(*v1 + 32))(*(a1 + 48));
      goto LABEL_6;
    }

    if (v1)
    {
      v2 = a1;
      (*(*v1 + 40))(*(a1 + 48));
LABEL_6:
      a1 = v2;
    }
  }

  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2715159B4(_Unwind_Exception *a1)
{
  sub_2711D66B0(v3);
  sub_27112F828(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2715159D8(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288108BD0;
  v2 = *(result + 16);
  *(a2 + 8) = *(result + 8);
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = 0;
  *(a2 + 56) = 0;
  if (*(result + 56) == 1)
  {
    v3 = *(result + 48);
    if (v3)
    {
      if (v3 == result + 24)
      {
        *(a2 + 48) = a2 + 24;
        v5 = a2;
        result = (*(**(result + 48) + 24))(*(result + 48), a2 + 24);
        a2 = v5;
        goto LABEL_10;
      }

      v4 = a2;
      result = (*(*v3 + 16))(*(result + 48));
      a2 = v4;
    }

    else
    {
      result = 0;
    }

    *(a2 + 48) = result;
LABEL_10:
    *(a2 + 56) = 1;
  }

  return result;
}

void sub_271515AE4(_Unwind_Exception *a1)
{
  sub_2711D66B0(v2);
  sub_27112F828(v1);
  _Unwind_Resume(a1);
}

void sub_271515B00(uint64_t a1)
{
  if (*(a1 + 56) != 1)
  {
    goto LABEL_5;
  }

  v2 = *(a1 + 48);
  if (v2 != a1 + 24)
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

LABEL_5:
    v3 = *(a1 + 16);
    if (!v3)
    {
      return;
    }

    goto LABEL_6;
  }

  (*(*v2 + 32))(v2);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

LABEL_6:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_271515BF4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v1 = *(a1 + 48);
    if (v1 == a1 + 24)
    {
      v2 = a1;
      (*(*v1 + 32))(*(a1 + 48));
      goto LABEL_6;
    }

    if (v1)
    {
      v2 = a1;
      (*(*v1 + 40))(*(a1 + 48));
LABEL_6:
      a1 = v2;
    }
  }

  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = a1;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a1 = v4;
  }

  operator delete(a1);
}

void sub_271516D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  __cxa_free_exception(v13);
  sub_271506144(va);
  _Unwind_Resume(a1);
}

void sub_271516DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  sub_2715106E4((v28 - 192));
  sub_271392A1C(&a28);
  sub_271506144(&a14);
  _Unwind_Resume(a1);
}

void sub_271516DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  sub_271392A1C(&a31);
  sub_271506144(&a14);
  _Unwind_Resume(a1);
}

void sub_271516ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_271506144(va);
  _Unwind_Resume(a1);
}

void sub_271516EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27139FD58(v10 - 192);
  sub_271506144(va);
  JUMPOUT(0x271516EF4);
}

uint64_t sub_271516EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3kit3viz13NetworkClient4Impl28ProcessReceivedServerMessageE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3kit3viz13NetworkClient4Impl28ProcessReceivedServerMessageE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3kit3viz13NetworkClient4Impl28ProcessReceivedServerMessageE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit3viz13NetworkClient4Impl28ProcessReceivedServerMessageE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_271516F74(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0x2E8BA2E8BA2E8BA3 * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v4 + 88 * a2;
      v10 = 88 * a2;
      do
      {
        v11 = sub_27139B104(0);
        sub_27139A608(v4, v11);
        v4 += 88;
        v10 -= 88;
      }

      while (v10);
      v4 = v9;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
    if (v5 + a2 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_271135560();
    }

    v6 = 0x2E8BA2E8BA2E8BA3 * ((v3 - *a1) >> 3);
    v7 = 2 * v6;
    if (2 * v6 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x1745D1745D1745DLL)
    {
      v8 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v8 = v7;
    }

    v22 = a1;
    if (v8)
    {
      if (v8 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v12 = 88 * v5;
    __p = 0;
    v19 = v12;
    v20 = v12;
    v21 = 0;
    v13 = 88 * a2;
    v14 = v12 + 88 * a2;
    do
    {
      v15 = sub_27139B104(0);
      sub_27139A608(v12, v15);
      v12 += 88;
      v13 -= 88;
    }

    while (v13);
    v20 = v14;
    sub_271510F70(a1, &__p);
    v17 = v19;
    for (i = v20; i != v17; sub_27151111C(i))
    {
      i -= 88;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_271517134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715110C8(va);
  _Unwind_Resume(a1);
}

void sub_271517150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715110C8(va);
  _Unwind_Resume(a1);
}

void sub_271517168(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4 != -1)
  {
    if (!v4)
    {
      v6 = *a3;
      v5 = a3[1];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = a2[1];
      *a2 = v6;
      a2[1] = v5;
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);

        std::__shared_weak_count::__release_weak(v7);
      }

      return;
    }

    v8 = a3;
    (off_288132AB0[v4])(&v10, v3);
    a3 = v8;
  }

  *(v3 + 16) = -1;
  v9 = a3[1];
  *v3 = *a3;
  *(v3 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(v3 + 16) = 0;
}

void sub_271517274(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      v6 = *a3;
      v5 = a3[1];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = a2[1];
      *a2 = v6;
      a2[1] = v5;
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);

        std::__shared_weak_count::__release_weak(v7);
      }

      return;
    }

    v8 = a3;
    (off_288132AB0[v4])(&v10, v3);
    a3 = v8;
  }

  *(v3 + 16) = -1;
  v9 = a3[1];
  *v3 = *a3;
  *(v3 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(v3 + 16) = 1;
}

uint64_t sub_271517388(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_271517418(uint64_t a1)
{
  v1 = a1 + 8;
  v2 = *(a1 + 32);
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271517658(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_10;
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Concurrency/include/Kit/Concurrency/Channel/detail/ChannelInputModel.h", 301, "processor_", 0xAuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_9;
    }

    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_13;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "processor_", 10, "", 0);
  }

  while (v4 != v5);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_13:
    abort();
  }

LABEL_9:
  qword_28087C420(*algn_28087C428, "processor_", 10, "", 0);
  v2 = *(v3 + 32);
  if (!v2)
  {
    sub_27112AFFC();
  }

LABEL_10:
  v8 = *(*v2 + 48);

  return v8();
}

uint64_t sub_271517838(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288132B80;
  a2[1] = v2;
  return result;
}

void sub_271517864(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::mutex::lock((v1 + 184));
  atomic_fetch_add((v1 + 128), 0xFFFFFFFF);
  std::condition_variable::notify_one((v1 + 136));

  std::mutex::unlock((v1 + 184));
}

uint64_t sub_2715178B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d3kit3viz13NetworkClient4Impl22BuildNetworkOutputNodeEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d3kit3viz13NetworkClient4Impl22BuildNetworkOutputNodeEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit3viz13NetworkClient4Impl22BuildNetworkOutputNodeEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit3viz13NetworkClient4Impl22BuildNetworkOutputNodeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27151794C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715179A0(uint64_t a1)
{
  v2 = *(*(*(a1 + 144) + 72) + 72);
  (*(*v2 + 64))(v2);
  std::mutex::~mutex((a1 + 208));
  std::condition_variable::~condition_variable((a1 + 160));
  v3 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(a1 + 104) != 1)
  {
LABEL_9:
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v5 = *(a1 + 96);
  if (v5 != a1 + 72)
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    goto LABEL_9;
  }

  (*(*v5 + 32))(v5);
  v6 = *(a1 + 64);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_13:
  v7 = *(a1 + 32);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_271517B84(uint64_t a1, int *a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7)
{
  v11 = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v10 = 0;
  if (*(a7 + 32) != 1)
  {
LABEL_8:
    operator new();
  }

  v7 = *(a7 + 24);
  if (v7)
  {
    if (v7 == a7)
    {
      v9 = v8;
      (*(*v7 + 24))(v7, v8, a3);
      goto LABEL_7;
    }

    v7 = (*(*v7 + 16))(v7, a2, a3);
  }

  v9 = v7;
LABEL_7:
  v10 = 1;
  goto LABEL_8;
}

void sub_271519C3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_27151A144(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 72);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 55) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 55) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 32));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

void sub_27151A224(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288132C00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27151A3F4(uint64_t a1, uint64_t a2)
{
  sub_27150B450(a1, (a2 + 4));
  if (*(a2 + 80) == 1)
  {
    LOBYTE(v14) = 1;
    sub_27173318C((a1 + 24), *(a1 + 32), &v14, &v14 + 1, 1);
    LODWORD(v14) = 1;
    sub_27173318C((a1 + 24), *(a1 + 32), &v14, &v14 + 4, 4);
    sub_2717312C0(a1);
    v4 = (a2 + 32);
    v14 = 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 40) - *(a2 + 32)) >> 3);
    sub_27173318C((a1 + 24), *(a1 + 32), &v14, v15, 8);
    v5 = *(a2 + 40);
    v6 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *(a2 + 32)) >> 3);
    if (v14 <= v6)
    {
      if (v14 < v6)
      {
        v7 = *v4 + 88 * v14;
        while (v5 != v7)
        {
          v5 -= 88;
          sub_27151111C(v5);
        }

        *(a2 + 40) = v7;
      }
    }

    else
    {
      sub_271516F74((a2 + 32), v14 - v6);
    }

    v8 = v14;
    if (v14)
    {
      v9 = 0;
      do
      {
        v10 = *v4;
        __src = 2;
        sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v17, 4);
        sub_2717312C0(a1);
        sub_27150B564(a1, v10 + v9);
        v11 = *(*(a1 + 56) - 8) + *(a1 + 24);
        *(v11 + 10) = *(a1 + 32) - v11 - 18;
        v12 = *(a1 + 56) - 8;
        *(a1 + 56) = v12;
        v9 += 88;
        --v8;
      }

      while (v8);
    }

    else
    {
      v12 = *(a1 + 56);
    }

    v13 = *(v12 - 8) + *(a1 + 24);
    *(v13 + 10) = *(a1 + 32) - v13 - 18;
    *(a1 + 56) -= 8;
  }

  else
  {
    LOBYTE(v14) = 0;
    sub_27173318C((a1 + 24), *(a1 + 32), &v14, &v14 + 1, 1);
  }
}

void sub_27151A61C(int a1@<W1>, void *a2@<X8>)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      operator new();
    }

    if (a1 == 2)
    {
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        operator new();
      case 4:
        operator new();
      case 5:
        operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_27151B150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_27151D454(&v65[1].__shared_weak_owners_);
  sub_271134CBC(v66 + 16);
  sub_2711B039C(&a65);
  std::__shared_weak_count::~__shared_weak_count(v65);
  operator delete(v68);
  sub_2711B039C(&a10);
  _Unwind_Resume(a1);
}

void sub_27151B190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char *a40)
{
  sub_271134CBC(v41 + 16);
  sub_271167834(&a10, a11);
  std::__shared_weak_count::~__shared_weak_count(v40);
  operator delete(v43);
  sub_271167834(&a39, a40);
  _Unwind_Resume(a1);
}

void sub_27151B1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  sub_271134CBC(v39 + 16);
  sub_2713B2190(&a10);
  std::__shared_weak_count::~__shared_weak_count(v38);
  operator delete(v41);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

void sub_27151B1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2711B039C(va);
  _Unwind_Resume(a1);
}

void sub_27151B20C(_Unwind_Exception *a1)
{
  sub_271134CBC(v2 + 16);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_27151B230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

void sub_27151B25C(void *lpsrc@<X2>, int a2@<W1>, void *a3@<X8>)
{
  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        sub_27151B6B8(&v14, lpsrc);
      }

      goto LABEL_14;
    }

    v3 = __dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DB40, 0);
    if (v3)
    {
      v4 = v3 + 16;
      v5 = v3 + 256;
      goto LABEL_27;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
        v4 = 16;
        v5 = 256;
LABEL_27:
        sub_27151E094(&v14, v4, v5);
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_33;
      }
    }

    do
    {
      v11 = *v6;
      v10 = *(v6 + 8);
      v6 += 16;
      v11(v10, "ptr != nullptr", 14, "", 0);
    }

    while (v6 != v7);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  switch(a2)
  {
    case 3:
      sub_27151B9D4(&v14, lpsrc);
    case 4:
      sub_27151BC84(&v14, lpsrc);
    case 5:
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DBA0, 0))
      {
LABEL_32:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v8 = qword_28087C408, v9 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_31:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
          goto LABEL_32;
        }
      }

      else
      {
        v8 = qword_28087C408;
        v9 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_33;
        }
      }

      do
      {
        v13 = *v8;
        v12 = *(v8 + 8);
        v8 += 16;
        v13(v12, "ptr != nullptr", 14, "", 0);
      }

      while (v8 != v9);
      if (byte_28087C430)
      {
        goto LABEL_31;
      }

LABEL_33:
      abort();
  }

LABEL_14:
  *a3 = 0;
  a3[1] = 0;
}

void sub_27151B6A0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_27151B6B8(void *a1, void *lpsrc)
{
  if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DB88, 0))
  {
LABEL_10:
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v2 = qword_28087C408, v3 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    v2 += 16;
    v5(v4, "ptr != nullptr", 14, "", 0);
  }

  while (v2 != v3);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27151B99C(_Unwind_Exception *a1)
{
  sub_27151D454(&v1[1].__shared_weak_owners_);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_27151B9BC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_27151B9D4(void *a1, void *lpsrc)
{
  if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DBB8, 0))
  {
LABEL_10:
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v2 = qword_28087C408, v3 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    v2 += 16;
    v5(v4, "ptr != nullptr", 14, "", 0);
  }

  while (v2 != v3);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27151BC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  sub_271167834(&a10, a11);
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void sub_27151BC84(void *a1, void *lpsrc)
{
  if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DBD0, 0))
  {
LABEL_10:
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v2 = qword_28087C408, v3 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    v2 += 16;
    v5(v4, "ptr != nullptr", 14, "", 0);
  }

  while (v2 != v3);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27151BF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v21);
  _Unwind_Resume(a1);
}

void sub_27151BF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713B2190(va);
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_27151BFA8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_27151C278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x2743BF050](v9, 0x10B2C40EED050F3, a3, a4, a5, a6, a7, a8);
  sub_271130878(&a9);
  _Unwind_Resume(a1);
}

void sub_27151C2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a16;
  a16 = 0;
  if (v17)
  {
    sub_27184D728(&a16, v17);
  }

  sub_271130878(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_27151C2E4(uint64_t *a1, _DWORD *a2)
{
  if ((atomic_load_explicit(&qword_28087B9B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B9B0))
  {
    sub_27151C914(&off_279E2F8A8, &unk_279E2F8C0);
    __cxa_guard_release(&qword_28087B9B0);
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_2714A56E0(a1, &v23);
  v4 = qword_28087B9C0;
  if (!qword_28087B9C0)
  {
    goto LABEL_41;
  }

  if (v25 >= 0)
  {
    v5 = &v23;
  }

  else
  {
    v5 = v23;
  }

  if (v25 >= 0)
  {
    v6 = HIBYTE(v25);
  }

  else
  {
    v6 = v24;
  }

  v7 = &qword_28087B9C0;
  do
  {
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
      v10 = v8 >= 0 ? *(v4 + 55) : *(v4 + 40);
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, v5, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_24;
      }

LABEL_10:
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v7 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_25:
  if (v7 == &qword_28087B9C0)
  {
    goto LABEL_41;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v5, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v19 = std::string::append(&v21, ", expected ", 0xBuLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_27151C648();
  }

  if (v6 < v15)
  {
    goto LABEL_41;
  }

LABEL_37:
  *a2 = *(v7 + 14);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

  return a1;
}

void sub_27151C570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if (a26 < 0)
      {
LABEL_8:
        operator delete(a21);
        if ((a20 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }

LABEL_11:
      if ((a20 & 0x80000000) == 0)
      {
LABEL_9:
        if (!v34)
        {
LABEL_14:
          if (*(v35 - 65) < 0)
          {
            operator delete(*(v35 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_13:
        __cxa_free_exception(v33);
        goto LABEL_14;
      }

LABEL_12:
      operator delete(a15);
      if ((v34 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if (a26 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_11;
}

void sub_27151C648()
{
  v0[6] = 0;
  v2[0] = v0;
  v2[1] = "{";
  v2[2] = v0;
  v3 = "{";
  v4 = "{";
  *&v1 = v2;
  sub_271136E64(&v1);
  LODWORD(v3) = 0;
  sub_27151CC74(&v1, &dword_271895A80);
}

void sub_27151C8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_271130878(&a22);
  sub_271130878(&a9);
  _Unwind_Resume(a1);
}

void sub_27151C8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(a13);
    sub_271130878(&a9);
    _Unwind_Resume(a1);
  }

  sub_271130878(&a9);
  _Unwind_Resume(a1);
}

void sub_27151C914(int **a1, int **a2)
{
  v4 = *MEMORY[0x277D85DE8];
  qword_28087B9C8 = 0;
  qword_28087B9C0 = 0;
  qword_28087B9B8 = &qword_28087B9C0;
  if (*a1 != *a2 || a1[2] != a2[2])
  {
    sub_27151CC74(&v3, *a1);
  }
}

void sub_27151CC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  sub_27151CE44(qword_28087B9C0);
  _Unwind_Resume(a1);
}

void sub_27151CC50(_Unwind_Exception *a1)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  sub_27151CE44(qword_28087B9C0);
  _Unwind_Resume(a1);
}

void sub_27151CE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (!v11)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a10, v11);
  _Unwind_Resume(exception_object);
}

void sub_27151CE44(char *a1)
{
  if (a1)
  {
    sub_27151CE44(*a1);
    sub_27151CE44(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void sub_27151CEE0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106620;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27151CF34(uint64_t result)
{
  v1 = result;
  *(result + 24) = &unk_28810B878;
  *(result + 32) = &unk_28810B8D8;
  v2 = *(result + 216);
  if (v2 != -1)
  {
    result = (off_288131910[v2])(&v3, result + 40);
  }

  *(v1 + 216) = -1;
  return result;
}

void sub_27151CFD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 200) & 1) != 0 || *(a1 + 160) == 1)
  {
    sub_2713B2524(v14, a1);
    v3 = v15;
    *(a2 + 24) = 0;
    *(a2 + 8) = v3;
    *(a2 + 48) = 0;
    if (v18 == 1)
    {
      *(a2 + 24) = *v16;
      *(a2 + 40) = v17;
      v16[1] = 0;
      v17 = 0;
      v16[0] = 0;
      *(a2 + 48) = 1;
    }

    v4 = v19;
    *(a2 + 80) = 0;
    *(a2 + 56) = v4;
    *(a2 + 72) = v20;
    *(a2 + 104) = 0;
    v5 = v23;
    if (v23 == 1)
    {
      *(a2 + 80) = *v21;
      *(a2 + 96) = v22;
      v21[1] = 0;
      v22 = 0;
      v21[0] = 0;
      *(a2 + 104) = 1;
      *(a2 + 112) = 0;
      v6 = a2 + 112;
      *(a2 + 136) = 0;
      v7 = v26;
      if (v26 != 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *(a2 + 112) = 0;
      v6 = a2 + 112;
      *(a2 + 136) = 0;
      v7 = v26;
      if (v26 != 1)
      {
LABEL_7:
        *(a2 + 144) = 0;
        *(a2 + 168) = 0;
        if (v29 == 1)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }
    }

    *v6 = *__p;
    *(v6 + 16) = v25;
    __p[1] = 0;
    v25 = 0;
    __p[0] = 0;
    *(a2 + 136) = 1;
    *(a2 + 144) = 0;
    *(a2 + 168) = 0;
    if (v29 == 1)
    {
LABEL_8:
      *(a2 + 144) = v27;
      *(a2 + 160) = v28;
      v28 = 0;
      v27 = 0uLL;
      *(a2 + 168) = 1;
      *(a2 + 176) = 0;
      if (!v7)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

LABEL_12:
    *(a2 + 176) = 0;
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (*(a1 + 96) == 1)
  {
    sub_27151D4B0(v14, a1);
    *(a2 + 8) = v15;
    *(a2 + 24) = 0;
    *(a2 + 48) = 0;
    if (v18 == 1)
    {
      *(a2 + 24) = *v16;
      *(a2 + 40) = v17;
      v16[1] = 0;
      v17 = 0;
      v16[0] = 0;
      *(a2 + 48) = 1;
    }

    v8 = v19;
    *(a2 + 80) = 0;
    *(a2 + 56) = v8;
    *(a2 + 72) = v20;
    *(a2 + 104) = 0;
    v5 = v23;
    if (v23 == 1)
    {
      *(a2 + 80) = *v21;
      *(a2 + 96) = v22;
      v21[1] = 0;
      v22 = 0;
      v21[0] = 0;
      *(a2 + 104) = 1;
      *(a2 + 112) = 0;
      v9 = a2 + 112;
      *(a2 + 136) = 0;
      v10 = v26;
      if (v26 != 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *(a2 + 112) = 0;
      v9 = a2 + 112;
      *(a2 + 136) = 0;
      v10 = v26;
      if (v26 != 1)
      {
LABEL_27:
        *(a2 + 144) = 0;
        *(a2 + 168) = 0;
        if (v29 == 1)
        {
          goto LABEL_28;
        }

LABEL_39:
        *(a2 + 176) = 1;
        if (!v10)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    *v9 = *__p;
    *(v9 + 16) = v25;
    __p[1] = 0;
    v25 = 0;
    __p[0] = 0;
    *(a2 + 136) = 1;
    *(a2 + 144) = 0;
    *(a2 + 168) = 0;
    if (v29 == 1)
    {
LABEL_28:
      *(a2 + 144) = v27;
      *(a2 + 160) = v28;
      v28 = 0;
      v27 = 0uLL;
      *(a2 + 168) = 1;
      *(a2 + 176) = 1;
      if (!v10)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    goto LABEL_39;
  }

  sub_271399C9C(v14, a1);
  *(a2 + 8) = v15;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  if (v18 == 1)
  {
    *(a2 + 24) = *v16;
    *(a2 + 40) = v17;
    v16[1] = 0;
    v17 = 0;
    v16[0] = 0;
    *(a2 + 48) = 1;
  }

  v11 = v19;
  *(a2 + 80) = 0;
  *(a2 + 56) = v11;
  *(a2 + 72) = v20;
  *(a2 + 104) = 0;
  v5 = v23;
  if (v23 == 1)
  {
    *(a2 + 80) = *v21;
    *(a2 + 96) = v22;
    v21[1] = 0;
    v22 = 0;
    v21[0] = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 0;
    v12 = a2 + 112;
    *(a2 + 136) = 0;
    v13 = v26;
    if (v26 != 1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *(a2 + 112) = 0;
    v12 = a2 + 112;
    *(a2 + 136) = 0;
    v13 = v26;
    if (v26 != 1)
    {
LABEL_34:
      *(a2 + 144) = 0;
      *(a2 + 168) = 0;
      if (v29 == 1)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }
  }

  *v12 = *__p;
  *(v12 + 16) = v25;
  __p[1] = 0;
  v25 = 0;
  __p[0] = 0;
  *(a2 + 136) = 1;
  *(a2 + 144) = 0;
  *(a2 + 168) = 0;
  if (v29 == 1)
  {
LABEL_35:
    *(a2 + 144) = v27;
    *(a2 + 160) = v28;
    v28 = 0;
    v27 = 0uLL;
    *(a2 + 168) = 1;
    *(a2 + 176) = 2;
    if (!v13)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_43:
  *(a2 + 176) = 2;
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
    v5 = v23;
  }

LABEL_15:
  if ((v5 & 1) != 0 && SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (v18 == 1 && SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

uint64_t sub_27151D454(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2 != -1)
  {
    (off_288132C70[v2])(&v4, a1);
  }

  *(a1 + 176) = -1;
  return a1;
}

uint64_t sub_27151D4B0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 39) < 0)
    {
      sub_271127178((a1 + 24), a2[2], a2[3]);
    }

    else
    {
      v6 = *(a2 + 1);
      *(a1 + 40) = a2[4];
      *(a1 + 24) = v6;
    }

    *(a1 + 48) = 1;
  }

  if (*(a2 + 64) == 1)
  {
    v7 = *(a2 + 56);
    *(a1 + 56) = a2[6];
    *(a1 + 64) = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = v8;
  *(a1 + 104) = 0;
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 95) < 0)
    {
      sub_271127178((a1 + 80), a2[9], a2[10]);
    }

    else
    {
      v9 = *(a2 + 9);
      *(a1 + 96) = a2[11];
      *(a1 + 80) = v9;
    }

    *(a1 + 104) = 1;
  }

  if (*(a2 + 160) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_271127178(&v12, a2[14], a2[15]);
    }

    else
    {
      v12 = *(a2 + 7);
      v13 = a2[16];
    }

    *(a1 + 112) = v12;
    *(a1 + 128) = v13;
    *(a1 + 136) = 1;
    if ((a2[25] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a1 + 112) = 0;
    *(a1 + 136) = 0;
    if ((a2[25] & 1) == 0)
    {
LABEL_21:
      v10 = 0;
      *(a1 + 144) = 0;
      goto LABEL_22;
    }
  }

  sub_27151D6C4(a2 + 22, &v12);
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  v10 = 1;
LABEL_22:
  *(a1 + 168) = v10;
  return a1;
}

void sub_27151D64C(_Unwind_Exception *exception_object)
{
  if (v1[104] == 1 && v1[103] < 0)
  {
    operator delete(*v3);
  }

  if (v1[48] == 1 && v1[47] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_27151D6C4@<D0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = *a1;
  v7 = 0;
  v6 = 0uLL;
  if (v3 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }

  sub_27151D7B0(v4, v3, &v6);
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_27151D7B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_27139DEA8(&v6, v4, a1);
  }

  return a3;
}

void sub_27151D8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27151D8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27151D8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27151D8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27151D918(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106348;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27151D96C(uint64_t a1)
{
  *(a1 + 24) = &unk_28810B728;
  *(a1 + 32) = &unk_28810B788;
  result = sub_2713B1E08(a1 + 224);
  v3 = *(a1 + 216);
  if (v3 != -1)
  {
    result = (off_288131910[v3])(&v4, a1 + 40);
  }

  *(a1 + 216) = -1;
  return result;
}

void sub_27151DA30(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881061C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27151DA84(uint64_t a1)
{
  *(a1 + 24) = &unk_28810B9C8;
  *(a1 + 32) = &unk_28810BA28;
  sub_271167834(a1 + 224, *(a1 + 232));
  v2 = *(a1 + 216);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 40);
  }

  *(a1 + 216) = -1;
}

uint64_t sub_27151DB2C(uint64_t a1, const void ***a2, uint64_t a3)
{
  *a1 = &unk_28810B9C8;
  *(a1 + 8) = &unk_28810BA28;
  sub_27151CFD0(a3, a1 + 16);
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 == v5)
  {
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 200) = a1 + 208;
  }

  else
  {
    do
    {
      sub_2711B1344(&v15, v16, v6 + 4, (v6 + 4));
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v5);
    *(a1 + 208) = 0;
    v11 = v15;
    *(a1 + 200) = a1 + 208;
    *(a1 + 216) = 0;
    if (v11 != v16)
    {
      do
      {
        sub_2711B1344((a1 + 200), (a1 + 208), v11 + 4, (v11 + 4));
        v13 = v11[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v11[2];
            v10 = *v14 == v11;
            v11 = v14;
          }

          while (!v10);
        }

        v11 = v14;
      }

      while (v14 != v16);
    }
  }

  sub_271167834(&v15, v16[0]);
  return a1;
}

void sub_27151DCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  sub_271167834(v13, *v12);
  sub_271167834(&a10, a11);
  sub_27151D454(v11 + 16);
  _Unwind_Resume(a1);
}

void sub_27151DD00(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881061F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27151DD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_28810BA70;
  *(a1 + 8) = &unk_28810BAD0;
  sub_27151CFD0(a3, a1 + 16);
  sub_2714B1860(&v12, a2);
  LOBYTE(__p) = 0;
  v16 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v15 = *(a2 + 40);
    }

    v16 = 1;
  }

  sub_2714B1860((a1 + 200), &v12);
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  if (v16 == 1)
  {
    if (SHIBYTE(v15) < 0)
    {
      sub_271127178((a1 + 224), __p, *(&__p + 1));
      v5 = v16;
      v6 = SHIBYTE(v15);
      *(a1 + 248) = 1;
      if ((v5 & 1) != 0 && v6 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      *(a1 + 224) = __p;
      *(a1 + 240) = v15;
      *(a1 + 248) = 1;
    }
  }

  v7 = v12;
  if (v12)
  {
    v8 = v13;
    v9 = v12;
    if (v13 != v12)
    {
      do
      {
        v10 = *(v8 - 9);
        v8 -= 4;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v12;
    }

    v13 = v7;
    operator delete(v9);
  }

  return a1;
}

void sub_27151DEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (*(v19 + 248) == 1 && *(v19 + 247) < 0)
  {
    operator delete(*v20);
  }

  sub_2711BEA2C((v19 + 200));
  sub_2713B2190(&a10);
  sub_27151D454(v19 + 16);
  _Unwind_Resume(a1);
}

void sub_27151DFA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106188;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27151DFF8(uint64_t result)
{
  v1 = result;
  *(result + 24) = &unk_28810B920;
  *(result + 32) = &unk_28810B980;
  v2 = *(result + 216);
  if (v2 != -1)
  {
    result = (off_288131910[v2])(&v3, result + 40);
  }

  *(v1 + 216) = -1;
  return result;
}

void sub_27151E2F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
    std::__shared_weak_count::~__shared_weak_count(v37);
    operator delete(v39);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::~__shared_weak_count(v37);
  operator delete(v40);
  _Unwind_Resume(a1);
}

void sub_27151E39C(int a2@<W1>, void *a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      operator new();
    case 2:
      __p = 0;
      v15 = 0;
      v16[0] = 0;
      sub_271758DF0(v12, 7, &__p);
    case 3:
      __p = 0;
      v15 = 0;
      v16[0] = 0;
      sub_27175B3E8();
    case 4:
      __p = 0;
      v15 = 0;
      v16[0] = 0;
      sub_27175B98C();
    case 5:
      sub_27173FC50(v3);
    case 6:
      sub_2715CA084(v3);
    case 7:
      operator new();
    case 8:
      operator new();
    case 9:
      v12[0] = 0;
      v12[1] = 0;
      v13 = 0;
      sub_27174E2EC(&__p, v12);
    case 10:
      HIBYTE(v4) = 0;
      LOBYTE(v3[0]) = 0;
      LODWORD(v5) = 6;
      HIBYTE(v7) = 0;
      LOBYTE(v6[0]) = 0;
      LODWORD(v8) = 0;
      v10[0] = 0;
      LOBYTE(v9) = 0;
      v11 = 0;
      operator new();
    case 11:
      sub_27153D0B8(v3);
    case 12:
      __p = 0;
      v15 = 0;
      v16[0] = 0;
      sub_271750B14();
    case 13:
      __p = 0;
      v15 = 0;
      v16[0] = 0;
      sub_271751114();
    default:
      *a3 = 0;
      a3[1] = 0;
      return;
  }
}

void sub_27151FDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_27151D454(&v22[1].__shared_weak_owners_);
  sub_271134CBC(v23 + 16);
  sub_27173FDFC(va);
  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v25);
  sub_27173FDFC(&a9);
  _Unwind_Resume(a1);
}

void sub_27151FE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_271134CBC(v23 + 16);
  sub_27112F828(va);
  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v25);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27151FEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_271134CBC(v23 + 16);
  sub_27112F828(va);
  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v25);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27151FEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_271134CBC(v23 + 16);
  sub_27112F828(va);
  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v25);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27151FF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_271134CBC(v23 + 16);
  sub_27112F828(va);
  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v25);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27151FF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_271134CBC(v23 + 16);
  sub_27112F828(va);
  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v25);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2715200D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271520140(void *lpsrc@<X2>, int a2@<W1>, void *a3@<X8>)
{
  switch(a2)
  {
    case 1:
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811D018, 0))
      {
        goto LABEL_93;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/IData.h", 839, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_92:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_93:
          operator new();
        }
      }

      else
      {
        v5 = qword_28087C408;
        v6 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v34 = *v5;
        v33 = *(v5 + 8);
        v5 += 16;
        v34(v33, "ptr != nullptr", 14, "", 0);
      }

      while (v5 != v6);
      if (byte_28087C430)
      {
        goto LABEL_92;
      }

      goto LABEL_104;
    case 2:
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DC18, 0))
      {
        goto LABEL_78;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_77:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_78:
          operator new();
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v28 = *v13;
        v27 = *(v13 + 8);
        v13 += 16;
        v28(v27, "ptr != nullptr", 14, "", 0);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_77;
      }

      goto LABEL_104;
    case 3:
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DC48, 0))
      {
        goto LABEL_83;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_82:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_83:
          operator new();
        }
      }

      else
      {
        v15 = qword_28087C408;
        v16 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v30 = *v15;
        v29 = *(v15 + 8);
        v15 += 16;
        v30(v29, "ptr != nullptr", 14, "", 0);
      }

      while (v15 != v16);
      if (byte_28087C430)
      {
        goto LABEL_82;
      }

      goto LABEL_104;
    case 4:
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DC30, 0))
      {
        goto LABEL_63;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_62:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_63:
          operator new();
        }
      }

      else
      {
        v7 = qword_28087C408;
        v8 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v22 = *v7;
        v21 = *(v7 + 8);
        v7 += 16;
        v22(v21, "ptr != nullptr", 14, "", 0);
      }

      while (v7 != v8);
      if (byte_28087C430)
      {
        goto LABEL_62;
      }

      goto LABEL_104;
    case 5:
      sub_271521B90(&v39, lpsrc);
    case 6:
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811D5E8, 0))
      {
        goto LABEL_103;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_102:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_103:
          operator new();
        }
      }

      else
      {
        v19 = qword_28087C408;
        v20 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v38 = *v19;
        v37 = *(v19 + 8);
        v19 += 16;
        v38(v37, "ptr != nullptr", 14, "", 0);
      }

      while (v19 != v20);
      if (byte_28087C430)
      {
        goto LABEL_102;
      }

      goto LABEL_104;
    case 7:
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DB58, 0))
      {
        goto LABEL_88;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/IData.h", 839, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_87:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_88:
          operator new();
        }
      }

      else
      {
        v3 = qword_28087C408;
        v4 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v32 = *v3;
        v31 = *(v3 + 8);
        v3 += 16;
        v32(v31, "ptr != nullptr", 14, "", 0);
      }

      while (v3 != v4);
      if (byte_28087C430)
      {
        goto LABEL_87;
      }

      goto LABEL_104;
    case 8:
      sub_27152182C(&v39, lpsrc);
    case 9:
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DC90, 0))
      {
        goto LABEL_73;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_72:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_73:
          operator new();
        }
      }

      else
      {
        v11 = qword_28087C408;
        v12 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v26 = *v11;
        v25 = *(v11 + 8);
        v11 += 16;
        v26(v25, "ptr != nullptr", 14, "", 0);
      }

      while (v11 != v12);
      if (byte_28087C430)
      {
        goto LABEL_72;
      }

      goto LABEL_104;
    case 10:
      sub_271521E98(&v39, lpsrc);
    case 11:
      sub_2715222D4(&v39, lpsrc);
    case 12:
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DC78, 0))
      {
        goto LABEL_68;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_67:
          qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_68:
          operator new();
        }
      }

      else
      {
        v9 = qword_28087C408;
        v10 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v24 = *v9;
        v23 = *(v9 + 8);
        v9 += 16;
        v24(v23, "ptr != nullptr", 14, "", 0);
      }

      while (v9 != v10);
      if (byte_28087C430)
      {
        goto LABEL_67;
      }

      goto LABEL_104;
    case 13:
      if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DC60, 0))
      {
        goto LABEL_98;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1)
        {
          goto LABEL_97;
        }

        v17 = qword_28087C408;
        v18 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v17 = qword_28087C408;
        v18 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_104;
        }
      }

      do
      {
        v36 = *v17;
        v35 = *(v17 + 8);
        v17 += 16;
        v36(v35, "ptr != nullptr", 14, "", 0);
      }

      while (v17 != v18);
      if ((byte_28087C430 & 1) == 0)
      {
LABEL_104:
        abort();
      }

LABEL_97:
      qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
LABEL_98:
      operator new();
    default:
      *a3 = 0;
      a3[1] = 0;
      return;
  }
}

void sub_271521730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_271521750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_271521770(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_27152178C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_2715217AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_2715217CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_2715217EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_27152180C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_27152182C(void *a1, void *lpsrc)
{
  if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28812E720, 0))
  {
LABEL_10:
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v2 = qword_28087C408, v3 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    v2 += 16;
    v5(v4, "ptr != nullptr", 14, "", 0);
  }

  while (v2 != v3);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271521B34(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
    std::__shared_weak_count::~__shared_weak_count(v1);
    operator delete(v4);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_271521B90(void *a1, void *lpsrc)
{
  if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DCA8, 0))
  {
LABEL_10:
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v2 = qword_28087C408, v3 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    v2 += 16;
    v5(v4, "ptr != nullptr", 14, "", 0);
  }

  while (v2 != v3);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271521E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27151D454(&v3[1].__shared_weak_owners_);
  sub_27173FDFC(va);
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_271521E98(void *a1, void *lpsrc)
{
  if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DB70, 0))
  {
LABEL_10:
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v2 = qword_28087C408, v3 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    v2 += 16;
    v5(v4, "ptr != nullptr", 14, "", 0);
  }

  while (v2 != v3);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271522200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    std::__shared_weak_count::~__shared_weak_count(v28);
    operator delete(v30);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a9);
  std::__shared_weak_count::~__shared_weak_count(v28);
  operator delete(v31);
  _Unwind_Resume(a1);
}

void sub_27152228C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_2715222A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27151D454(&v9[1].__shared_weak_owners_);
  sub_2713B1398(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_2715222D4(void *a1, void *lpsrc)
{
  if (__dynamic_cast(lpsrc, &unk_28811D1B0, &unk_28811DBE8, 0))
  {
LABEL_10:
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/include/Kit/Visualization/DataIO.h", 1091, "ptr != nullptr", 0xEuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v2 = qword_28087C408, v3 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "ptr != nullptr", 14, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    v2 += 16;
    v5(v4, "ptr != nullptr", 14, "", 0);
  }

  while (v2 != v3);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271522588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27151D454(&v3[1].__shared_weak_owners_);
  sub_271376568(va);
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_2715225B8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_2715225E0(uint64_t a1, int a2)
{
  v4 = a2;
  if ((a2 - 1) < 0xD)
  {
    v3 = a2;
    v6 = 0;
    sub_271523BB0(&v7, v5, &v3);
  }

  return sub_2715226D8("unknown type id ", &v4);
}

void sub_2715226B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715226C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715226D8(std::string *a1, unsigned int *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = a1;
  v9 = v4;
  v10 = a1;
  v11 = a1;
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_271236FD8(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v7;
  (off_288132CB8[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v6;
  result = (off_288132CE8[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_288132CD0[v5])(&v7, v4);
  }

  return result;
}

void sub_2715227F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27152280C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2715227FCLL);
}

void sub_271522850(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881065E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715228EC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106498;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271522940(uint64_t a1)
{
  *(a1 + 24) = &unk_288131CA8;
  *(a1 + 32) = &unk_288131D08;
  v2 = *(a1 + 240);
  if (v2)
  {
    *(a1 + 248) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v4, a1 + 40);
  }

  *(a1 + 216) = -1;
}

void sub_271522A0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106460;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271522A60(uint64_t a1)
{
  *(a1 + 24) = &unk_28810B3E0;
  *(a1 + 32) = &unk_28810B440;
  v2 = *(a1 + 248);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_288132D00[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_271522B74(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271522BC8(uint64_t a1)
{
  *(a1 + 24) = &unk_28810B530;
  *(a1 + 32) = &unk_28810B590;
  v2 = *(a1 + 248);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_288132D00[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_271522CDC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881063F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271522D30(uint64_t a1)
{
  *(a1 + 24) = &unk_28810B488;
  *(a1 + 32) = &unk_28810B4E8;
  v2 = *(a1 + 248);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_288132D00[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_271522E44(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881065B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void *sub_271522E98(void *result)
{
  v1 = result;
  v2 = result[29];
  result[3] = &unk_28810B680;
  result[4] = &unk_28810B6E0;
  if (v2)
  {
    result = v2(0);
  }

  v3 = *(v1 + 54);
  if (v3 != -1)
  {
    result = (off_288131910[v3])(&v4, v1 + 5);
  }

  *(v1 + 54) = -1;
  return result;
}

void sub_271522F78(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271522FCC(uint64_t a1)
{
  *(a1 + 24) = &unk_288131D78;
  *(a1 + 32) = &unk_288131DD8;
  v2 = *(a1 + 232);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_288132D00[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_2715230E0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27152317C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106690;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715231D0(uint64_t a1)
{
  *(a1 + 24) = &unk_28810B5D8;
  *(a1 + 32) = &unk_28810B638;
  v2 = *(a1 + 240);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_288132D00[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_2715232E4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881063B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271523344(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_271127178(a1, *a2, *(a2 + 1));
    *(a1 + 24) = *(a2 + 6);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = *(a2 + 6);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_271127178((a1 + 32), *(a2 + 4), *(a2 + 5));
LABEL_6:
  *(a1 + 56) = *(a2 + 14);
  if (*(a2 + 87) < 0)
  {
    sub_271127178((a1 + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    sub_271127178((a1 + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 88) = v7;
  }

  return a1;
}

void sub_271523434(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
    if ((*(v1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 32));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_2715234C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106230;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27152351C(uint64_t a1)
{
  *(a1 + 24) = &unk_28810BB18;
  *(a1 + 32) = &unk_28810BB78;
  if (*(a1 + 400) == 1 && *(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
    if (*(a1 + 368) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 368) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

LABEL_7:
  v2 = *(a1 + 216);
  if (v2 != -1)
  {
    (off_288132D00[v2])(&v3, a1 + 40);
  }

  *(a1 + 216) = -1;
}

void sub_271523734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10[176] == 1 && v10[175] < 0)
  {
    operator delete(*v12);
  }

  if (v10[144] == 1 && v10[143] < 0)
  {
    operator delete(*v11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715237C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106540;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27152381C(uint64_t a1)
{
  *(a1 + 24) = &unk_28810BC68;
  *(a1 + 32) = &unk_28810BCC8;
  v2 = *(a1 + 248);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_288132D00[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_271523930(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271523984(uint64_t a1)
{
  *(a1 + 24) = &unk_28810BBC0;
  *(a1 + 32) = &unk_28810BC20;
  v2 = *(a1 + 248);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 216);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 216);
  if (v3 != -1)
  {
LABEL_4:
    (off_288132D00[v3])(&v4, a1 + 40);
  }

LABEL_5:
  *(a1 + 216) = -1;
}

void sub_271523A98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288132D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271523B34(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288132D78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271523DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **sub_271523DFC(void **a1, __int128 ***a2)
{
  v4 = a1[1];
  a1[3] = (a1[3] + 1);
  v5 = **a2;
  if (!v4)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v4;
      if ((sub_271528D80(v5, v4 + 4) & 0x80) == 0)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if ((sub_271528D80(v6 + 4, v5) & 0x80) == 0)
    {
      break;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  ++v6[11];
  v8 = a2[2];
  v7 = a2 + 2;
  v9 = (v8[3])(v7);
  v10 = 48;
  if (!*(v9 + 64))
  {
    v10 = 0;
  }

  v11 = v9 + v10;
  v12 = v6 + 12;
  if (*(v6 + 112) == 1)
  {
    if (*v11 >= *v12)
    {
      v13 = v6 + 12;
    }

    else
    {
      v13 = v11;
    }

    v14 = *v13;
    *(v6 + 104) = *(v13 + 8);
    *v12 = v14;
    v15 = v6 + 15;
    if (*(v6 + 136) != 1)
    {
      goto LABEL_15;
    }

LABEL_17:
    if (*v15 >= *v11)
    {
      v11 = v15;
    }

    v16 = *v11;
    *(v15 + 8) = *(v11 + 8);
    *v15 = v16;
    goto LABEL_20;
  }

  *v12 = *v11;
  *(v6 + 112) = 1;
  v15 = v6 + 15;
  if (*(v6 + 136) == 1)
  {
    goto LABEL_17;
  }

LABEL_15:
  *v15 = *v11;
  *(v6 + 136) = 1;
LABEL_20:
  sub_2714FCC00(v7);
  v17 = v6[19];
  if (!v17)
  {
LABEL_56:
    operator new();
  }

  v18 = HIBYTE(v35);
  if (v35 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if (v35 >= 0)
  {
    v20 = HIBYTE(v35);
  }

  else
  {
    v20 = __p[1];
  }

  v21 = v36;
  while (1)
  {
    while (1)
    {
      v22 = v17;
      v25 = v17[4];
      v23 = v17 + 4;
      v24 = v25;
      v26 = *(v23 + 23);
      v27 = v26 >= 0 ? v23 : v24;
      v28 = v26 >= 0 ? *(v23 + 23) : v23[1];
      v29 = (v28 >= v20 ? v20 : v28);
      v30 = memcmp(v19, v27, v29);
      if (!v30)
      {
        break;
      }

      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

LABEL_28:
      v17 = *v22;
      if (!*v22)
      {
        goto LABEL_56;
      }
    }

    if (v20 == v28)
    {
      if (v21 < *(v22 + 14))
      {
        goto LABEL_28;
      }
    }

    else if (v20 < v28)
    {
      goto LABEL_28;
    }

LABEL_40:
    v31 = memcmp(v27, v19, v29);
    if (v31)
    {
      if ((v31 & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_49;
    }

    v32 = v28 >= v20;
    if (v28 == v20)
    {
      v32 = *(v22 + 14) >= v21;
    }

    if (v32)
    {
      break;
    }

LABEL_49:
    v17 = v22[1];
    if (!v17)
    {
      goto LABEL_56;
    }
  }

  ++v22[8];
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_271524210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 80) == 1 && *(v9 + 79) < 0)
  {
    operator delete(*v10);
  }

  if (*(v9 + 55) < 0)
  {
    operator delete(*(v9 + 32));
  }

  sub_271528D08(&a9);
  _Unwind_Resume(a1);
}

void sub_271524258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271524274(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  __p = *a2;
  v6 = v3;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = v4;
  v8 = &unk_288131488;
  operator new();
}

void sub_2715245B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, char *);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_271396440(v13);
  if (a13)
  {
    sub_271528A10(a10);
  }

  sub_271396440(va1);
  sub_271398430(va);
  _Unwind_Resume(a1);
}

void sub_2715245E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271398430(va);
  _Unwind_Resume(a1);
}

void sub_2715245F8(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v7 = __p;
  v8 = 0;
  if (a3)
  {
    if (a3 < 0x666666666666667)
    {
      operator new();
    }

    sub_271135560();
  }

  v6 = &unk_288131488;
  operator new();
}

void sub_271524A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, char *);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_271396440(v13);
  if (a13)
  {
    sub_271528A10(a10);
  }

  sub_271396440(va1);
  sub_271398430(va);
  _Unwind_Resume(a1);
}

void sub_271524A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271398430(va);
  _Unwind_Resume(a1);
}

void *sub_271524A5C(void *result)
{
  *result = &unk_288132DC8;
  v1 = result[5];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  result[1] = &unk_288131488;
  v3 = result[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271524B60(void *a1)
{
  *a1 = &unk_288132DC8;
  v1 = a1[5];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  a1[1] = &unk_288131488;
  v3 = a1[3];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271524C78(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *(a1 + 80);
  v4 = *(a1 + 72);
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    v5 = *(v3 - 8);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = *(v3 - 32);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(v3 - 32);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

LABEL_4:
    v3 -= 40;
  }

  while (v3 != v2);
  v4 = *(a1 + 72);
LABEL_13:
  *(a1 + 80) = v2;
  operator delete(v4);
LABEL_14:
  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_271524D84(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *(a1 + 80);
  v4 = *(a1 + 72);
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v5 = *(v3 - 8);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = *(v3 - 32);
      if (v6)
      {
LABEL_8:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }
    }

    else
    {
      v6 = *(v3 - 32);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v3 -= 40;
    if (v3 == v2)
    {
      v4 = *(a1 + 72);
LABEL_13:
      *(a1 + 80) = v2;
      operator delete(v4);
LABEL_14:
      std::mutex::~mutex((a1 + 8));

      JUMPOUT(0x2743BF050);
    }
  }
}

void sub_271524EB0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087B9E0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087B9E0))
    {
      sub_27112B400(qword_28087BA18, "viz::UnlimitedRecorder");
      __cxa_guard_release(&qword_28087B9E0);
    }
  }

  sub_271525C14(a1, &v2);
}

void sub_27152506C(__int128 *a1, void **a2, void *a3, void **a4)
{
  v7 = -1;
  if (*(a1 + 23) < 0)
  {
    v4 = a2;
    sub_271127178(&v5, *a1, *(a1 + 1));
    a2 = v4;
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 2);
  }

  v7 = 1;
  __dst = &v5;
  v9 = a2;
  v10[0] = &v5;
  v10[1] = a2;
  v10[2] = a2;
  sub_271136F58(v10, &v5);
  operator new();
}

void sub_271525A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  __cxa_guard_abort(&qword_28087B9D0);
  v40 = *(v38 - 136);
  *(v38 - 136) = 0;
  if (v40)
  {
    sub_27184D728(v38 - 136, v40);
  }

  sub_271396440(&a30);
  v41 = a21;
  a21 = 0;
  if (v41)
  {
    sub_27184D728(&a21, v41);
  }

  sub_271137AE8(&a11);
  _Unwind_Resume(a1);
}

void sub_271525C14(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 8));
  v4 = *(a1 + 72);
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - v4) >> 3);
  v6[0] = 0;
  v6[32] = 0;
  sub_2715245F8(a2, v4, v5, v6);
}

void sub_271525C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_271528A10(a11);
  }

  std::mutex::unlock((v14 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_271525CB8(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *(a1 + 80);
  if (v4 >= *(a1 + 88))
  {
    v8 = sub_2711825F8((a1 + 72), a2);
  }

  else
  {
    v5 = a2[1];
    *v4 = *a2;
    v4[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = a2[3];
    v6 = a2[4];
    v4[2] = off_28810C940;
    v4[3] = v7;
    v4[4] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = (v4 + 5);
  }

  *(a1 + 80) = v8;
  std::mutex::unlock((a1 + 8));
  return a1;
}

void sub_271525D78(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 8));
  v4 = *(a1 + 72);
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - v4) >> 3);
  v6 = *(a1 + 96);
  *(a1 + 96) = v5;
  v7[0] = 0;
  v7[32] = 0;
  sub_2715245F8(a2, (v4 + 40 * v6), v5 - v6, v7);
}

void sub_271525E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_271528A10(a11);
  }

  std::mutex::unlock((v14 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_271525E30(uint64_t a1)
{
  sub_271528AB8(a1 + 72);
  if (*(a1 + 64) != 1)
  {
    return a1;
  }

  v2 = *(a1 + 56);
  if (v2 != a1 + 32)
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }

  (*(*v2 + 32))(v2);
  return a1;
}

void sub_271525ED4(uint64_t a1)
{
  sub_271528AB8(a1 + 72);
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 56);
    if (v2 == a1 + 32)
    {
      (*(*v2 + 32))(v2);
    }

    else if (v2)
    {
      (*(*v2 + 40))(v2);
    }
  }

  JUMPOUT(0x2743BF050);
}

void sub_271525F8C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878DB0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DB0))
    {
      sub_27112B400(&xmmword_280878D98, "viz::LimitedRecorder");
      __cxa_guard_release(&qword_280878DB0);
    }
  }

  sub_271526148(a1, &v2);
}

void sub_271526148(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 72));
  v3 = *(a1 + 144);
  v25 = a1;
  if (*(a1 + 152) == v3)
  {
    __p = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v4 = *(a1 + 168);
    v5 = *(a1 + 176);
    v6 = v4 / 0x66;
    v7 = v4 % 0x66;
    v8 = *(v3 + 8 * (v4 / 0x66)) + 40 * (v4 % 0x66);
    v9 = v5 + v4;
    v10 = 8 * (v9 / 0x66);
    v11 = *(v3 + v10);
    v30 = 0;
    v31 = 0;
    __p = 0;
    if (v11 + 40 * (v9 % 0x66) != v8)
    {
      v12 = v9 % 0x66 + 102 * ((v10 - 8 * v6) >> 3);
      p_p = &__p;
      LOBYTE(v33) = 0;
      if (v12 != v7)
      {
        if (v12 - v7 < 0x666666666666667)
        {
          operator new();
        }

        sub_271135560();
      }
    }
  }

  if (*(v25 + 28) == 1)
  {
    v27[0] = 0;
    v27[1] = 0;
    v26 = v27;
    v13 = *(v25 + 224);
    if (v13 != (v25 + 232))
    {
      do
      {
        v14 = v27[0];
        v15 = v27;
        if (v26 == v27)
        {
          goto LABEL_24;
        }

        v16 = v27[0];
        v17 = v27;
        if (v27[0])
        {
          do
          {
            v15 = v16;
            v16 = v16[1];
          }

          while (v16);
        }

        else
        {
          do
          {
            v15 = v17[2];
            v18 = *v15 == v17;
            v17 = v15;
          }

          while (v18);
        }

        if ((sub_271528D80(v15 + 4, v13 + 4) & 0x80) != 0)
        {
LABEL_24:
          if (v14)
          {
            v20 = v15;
          }

          else
          {
            v20 = &v26;
          }

          if (!v20[1])
          {
LABEL_30:
            operator new();
          }
        }

        else
        {
          if (!v14)
          {
            goto LABEL_30;
          }

          while (1)
          {
            while (1)
            {
              v19 = v14;
              if ((sub_271528D80(v13 + 4, v14 + 4) & 0x80) == 0)
              {
                break;
              }

              v14 = *v14;
              if (!*v19)
              {
                goto LABEL_30;
              }
            }

            if ((sub_271528D80(v14 + 4, v13 + 4) & 0x80) == 0)
            {
              break;
            }

            v14 = v14[1];
            if (!v14)
            {
              goto LABEL_30;
            }
          }
        }

        v21 = v13[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v13[2];
            v18 = *v22 == v13;
            v13 = v22;
          }

          while (!v18);
        }

        v13 = v22;
      }

      while (v22 != (v25 + 232));
    }

    v27[2] = *(v25 + 248);
    v23 = 1;
  }

  else
  {
    v23 = 0;
    LOBYTE(v26) = 0;
  }

  v28 = v23;
  sub_271524274(a2, &__p, &v26);
}

void sub_271526930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_2715288FC((v11 - 112));
  std::mutex::unlock((a11 + 72));
  _Unwind_Resume(a1);
}

void sub_271526950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (*(v24 + 80) == 1 && *(a16 + 79) < 0)
  {
    operator delete(*v25);
  }

  if (*(a16 + 55) < 0)
  {
    operator delete(*(a16 + 32));
  }

  sub_271528D08((v26 - 136));
  sub_271528A10(a21);
  sub_271398430(va);
  std::mutex::unlock((a11 + 72));
  _Unwind_Resume(a1);
}

uint64_t sub_271526A04(uint64_t a1, void *a2)
{
  v102 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 72));
  v4 = *(a1 + 176);
  if (v4)
  {
    v5 = (*(*(*(*(a1 + 144) + 8 * ((v4 + *(a1 + 168) - 1) / 0x66uLL)) + 40 * ((v4 + *(a1 + 168) - 1) % 0x66uLL) + 16) + 24))();
    v6 = 48;
    if (!*(v5 + 64))
    {
      v6 = 0;
    }

    v98 = *(v5 + v6 + 8);
    v7 = (*(a2[2] + 24))();
    v8 = 48;
    if (!*(v7 + 64))
    {
      v8 = 0;
    }

    v97 = *(v7 + v8);
    if (BYTE8(v97) != v98)
    {
      sub_2714C2388(&v97, &v98, "limited recorder", 16);
    }

    v4 = *(a1 + 176);
  }

  v9 = *(a1 + 144);
  v10 = *(a1 + 152);
  if (v10 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 102 * (v10 - v9) - 1;
  }

  v12 = *(a1 + 168);
  v13 = v12 + v4;
  if (v11 == v13)
  {
    if (v12 < 0x66)
    {
      v14 = *(a1 + 160);
      v15 = *(a1 + 136);
      if (v10 - v9 < (v14 - v15))
      {
        operator new();
      }

      if (v14 == v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = (v14 - v15) >> 2;
      }

      if (!(v16 >> 61))
      {
        operator new();
      }

      sub_2711270EC();
    }

    *(a1 + 168) = v12 - 102;
    v99 = *v9;
    *(a1 + 144) = v9 + 1;
    sub_271382FA0((a1 + 136), &v99);
    v9 = *(a1 + 144);
    v13 = *(a1 + 176) + *(a1 + 168);
  }

  v17 = v9[v13 / 0x66] + 5 * (v13 % 0x66);
  *v17 = *a2;
  v18 = a2[1];
  v17[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v17[2] = off_28810C940;
  v17[3] = a2[3];
  v19 = a2[4];
  v17[4] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(a1 + 176);
  *(a1 + 176) = v20 + 1;
  if (*(a1 + 16) == 1 && (v20 + 1) >= *(a1 + 216))
  {
    v21 = (*(*(*(*(a1 + 144) + 8 * ((*(a1 + 168) + v20) / 0x66uLL)) + 40 * ((*(a1 + 168) + v20) % 0x66uLL) + 16) + 24))();
    v22 = 48;
    if (!*(v21 + 64))
    {
      v22 = 0;
    }

    v23 = v21 + v22;
    v24 = *(v21 + v22);
    v25 = *(v21 + v22 + 8);
    LODWORD(v97) = *(v23 + 9);
    *(&v97 + 3) = *(v23 + 12);
    if (*(a1 + 208) == 1)
    {
      if (v24 <= *(a1 + 192))
      {
        goto LABEL_143;
      }

      *(a1 + 192) = v24;
      *(a1 + 200) = v25;
      v26 = *(a1 + 144);
      v27 = *(a1 + 152);
      if (v27 == v26)
      {
        goto LABEL_143;
      }
    }

    else
    {
      *(a1 + 192) = v24;
      *(a1 + 200) = v25;
      *(a1 + 201) = v97;
      *(a1 + 204) = *(&v97 + 3);
      *(a1 + 208) = 1;
      v26 = *(a1 + 144);
      v27 = *(a1 + 152);
      if (v27 == v26)
      {
        goto LABEL_143;
      }
    }

    v28 = *(a1 + 168);
    v29 = *(a1 + 176) + v28;
    v30 = (v26 + 8 * (v29 / 0x66));
    v31 = *v30;
    v32 = *v30 + 40 * (v29 % 0x66);
    v33 = v28 / 0x66;
    v34 = *(v26 + 8 * (v28 / 0x66)) + 40 * (v28 % 0x66);
    if (v34 != v32)
    {
      v35 = v24 - *(a1 + 8);
      while (1)
      {
        v36 = v32;
        if (v32 == v31)
        {
          v36 = *(v30 - 1) + 4080;
        }

        v37 = (*(*(v36 - 24) + 24))();
        v38 = *(v37 + 64) ? 48 : 0;
        if (*(v37 + v38) < v35)
        {
          break;
        }

        v31 = *v30;
        if (v32 == *v30)
        {
          v39 = *--v30;
          v31 = v39;
          v32 = v39 + 4080;
        }

        v32 -= 40;
        if (v34 == v32)
        {
          v32 = v34;
          break;
        }
      }

      v28 = *(a1 + 168);
      v26 = *(a1 + 144);
      v27 = *(a1 + 152);
      v33 = v28 / 0x66;
    }

    v40 = (v26 + 8 * v33);
    if (v27 == v26)
    {
      if (!v32)
      {
        goto LABEL_143;
      }

      v41 = 0;
      if (*(a1 + 28) == 1)
      {
LABEL_51:
        if (v41 != v32)
        {
          v42 = v41;
          v43 = (v26 + 8 * v33);
          do
          {
            sub_271523DFC((a1 + 224), v42);
            v42 += 5;
            if ((v42 - *v43) == 4080)
            {
              v44 = v43[1];
              ++v43;
              v42 = v44;
            }
          }

          while (v42 != v32);
        }

LABEL_62:
        v46 = *(a1 + 29) != 1 || v41 == v32;
        if (!v46)
        {
          v64 = v41;
          v65 = v40;
          do
          {
            sub_271523DFC((a1 + 256), v64);
            v64 += 5;
            if ((v64 - *v65) == 4080)
            {
              v66 = v65[1];
              ++v65;
              v64 = v66;
            }
          }

          while (v64 != v32);
        }

        if (v41 == v32)
        {
          v47 = 0;
        }

        else
        {
          v47 = 102 * (v30 - v40) - 0x3333333333333333 * ((v32 - *v30) >> 3) + 0x3333333333333333 * ((v41 - *v40) >> 3);
        }

        v48 = *(a1 + 168);
        v49 = *(a1 + 144);
        v50 = *(a1 + 152);
        v51 = (v49 + 8 * (v48 / 0x66));
        if (v50 == v49)
        {
          v52 = 0;
          if (!v41)
          {
LABEL_72:
            v53 = 0;
            v54 = v52;
            v55 = (v49 + 8 * (v48 / 0x66));
            v56 = *(a1 + 176);
            if (v47 < 1)
            {
              goto LABEL_142;
            }

            goto LABEL_80;
          }
        }

        else
        {
          v52 = *v51 + 40 * (v48 % 0x66);
          if (v41 == v52)
          {
            goto LABEL_72;
          }
        }

        v53 = 102 * (v40 - v51) - 0x3333333333333333 * ((v41 - *v40) >> 3) + 0x3333333333333333 * ((v52 - *v51) >> 3);
        if (v53)
        {
          v57 = 102 * (v40 - v51) - 0x3333333333333333 * ((v41 - *v40) >> 3);
          if (v57 < 1)
          {
            v67 = 101 - v57;
            v55 = &v51[-(v67 / 0x66)];
            v54 = *v55 + 40 * (102 * (v67 / 0x66) - v67) + 4040;
            v56 = *(a1 + 176);
            if (v47 < 1)
            {
              goto LABEL_142;
            }
          }

          else
          {
            v55 = &v51[v57 / 0x66uLL];
            v54 = *v55 + 40 * (v57 % 0x66uLL);
            v56 = *(a1 + 176);
            if (v47 < 1)
            {
              goto LABEL_142;
            }
          }
        }

        else
        {
          v54 = v52;
          v55 = (v49 + 8 * (v48 / 0x66));
          v56 = *(a1 + 176);
          if (v47 < 1)
          {
LABEL_142:
            *(a1 + 216) = (*(a1 + 24) * v56);
            goto LABEL_143;
          }
        }

LABEL_80:
        v58 = v47 - 0x3333333333333333 * ((v54 - *v55) >> 3);
        if (v53 <= (v56 - v47) >> 1)
        {
          if (v58 < 1)
          {
            v72 = (101 - v58) / 0x66uLL;
            v62 = &v55[-v72];
            v63 = *v62 + 40 * (v58 - 101 + 102 * v72) + 4040;
          }

          else
          {
            v62 = &v55[v58 / 0x66uLL];
            v63 = *v62 + 40 * (v58 % 0x66uLL);
          }

          if (v51 == v55)
          {
            sub_2715295A4(&v99, v52, v54, v62, v63);
          }

          else
          {
            sub_2715295A4(&v99, *v55, v54, v62, v63);
            while (--v55 != v51)
            {
              sub_2715295A4(&v99, *v55, *v55 + 4080, v100, v101);
            }

            sub_2715295A4(&v99, v52, *v51 + 4080, v100, v101);
          }

          v76 = v101;
          while (v52 != v76)
          {
            v80 = *(v52 + 32);
            if (v80 && !atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v80->__on_zero_shared)(v80);
              std::__shared_weak_count::__release_weak(v80);
            }

            v81 = *(v52 + 8);
            if (v81 && !atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v81->__on_zero_shared)(v81);
              std::__shared_weak_count::__release_weak(v81);
            }

            v52 += 40;
            if (v52 - *v51 == 4080)
            {
              v82 = v51[1];
              ++v51;
              v52 = v82;
            }
          }

          v56 = *(a1 + 176) - v47;
          v77 = *(a1 + 168) + v47;
          *(a1 + 168) = v77;
          *(a1 + 176) = v56;
          if (v77 >= 0xCC)
          {
            v78 = *(a1 + 144);
            do
            {
              operator delete(*v78);
              v78 = (*(a1 + 144) + 8);
              *(a1 + 144) = v78;
              v79 = *(a1 + 168) - 102;
              *(a1 + 168) = v79;
            }

            while (v79 >= 0xCC);
            v56 = *(a1 + 176);
          }
        }

        else
        {
          if (v58 < 1)
          {
            v68 = 101 - v58;
            v59 = &v55[-(v68 / 0x66)];
            v60 = *v59;
            v61 = (*v59 + 40 * (102 * (v68 / 0x66) - v68) + 4040);
          }

          else
          {
            v59 = &v55[v58 / 0x66uLL];
            v60 = *v59;
            v61 = (*v59 + 40 * (v58 % 0x66uLL));
          }

          v69 = v56 + v48;
          v70 = (v49 + 8 * (v69 / 0x66));
          if (v50 == v49)
          {
            v71 = 0;
          }

          else
          {
            v71 = (*v70 + 40 * (v69 % 0x66));
          }

          if (v59 == v70)
          {
            sub_271529760(&v99, v61, v71, v55, v54);
          }

          else
          {
            sub_271529760(&v99, v61, (v60 + 4080), v55, v54);
            v73 = v100;
            v74 = v101;
            v75 = (v59 + 1);
            if (v59 + 1 != v70)
            {
              do
              {
                sub_271529760(&v99, *v75, *v75 + 255, v73, v74);
                v73 = v100;
                v74 = v101;
                ++v75;
              }

              while (v75 != v70);
            }

            sub_271529760(&v99, *v70, v71, v73, v74);
          }

          v83 = v100;
          v84 = v101;
          v86 = *(a1 + 144);
          v85 = *(a1 + 152);
          if (v85 == v86)
          {
            v88 = 0;
          }

          else
          {
            v87 = *(a1 + 176) + *(a1 + 168);
            v88 = (*(v86 + 8 * (v87 / 0x66)) + 40 * (v87 % 0x66));
          }

          if (v88 != v101)
          {
            do
            {
              v89 = *(v84 + 4);
              if (v89 && !atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v89->__on_zero_shared)(v89);
                std::__shared_weak_count::__release_weak(v89);
              }

              v90 = *(v84 + 1);
              if (v90 && !atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v90->__on_zero_shared)(v90);
                std::__shared_weak_count::__release_weak(v90);
              }

              v84 += 40;
              if (&v84[-*v83] == 4080)
              {
                v91 = *(v83 + 1);
                v83 = (v83 + 8);
                v84 = v91;
              }
            }

            while (v84 != v88);
            v86 = *(a1 + 144);
            v85 = *(a1 + 152);
          }

          v92 = v85 - v86;
          v46 = v92 == 0;
          v93 = 102 * (v92 >> 3) - 1;
          if (v46)
          {
            v93 = 0;
          }

          v94 = *(a1 + 168);
          v56 = *(a1 + 176) - v47;
          *(a1 + 176) = v56;
          if (v93 - (v94 + v56) >= 0xCC)
          {
            do
            {
              operator delete(*(v85 - 8));
              v85 = *(a1 + 152) - 8;
              v46 = v85 == *(a1 + 144);
              v95 = 102 * ((v85 - *(a1 + 144)) >> 3) - 1;
              *(a1 + 152) = v85;
              if (v46)
              {
                v95 = 0;
              }

              v56 = *(a1 + 176);
            }

            while (v95 - (v56 + *(a1 + 168)) >= 0xCC);
          }
        }

        goto LABEL_142;
      }
    }

    else
    {
      v41 = *v40 + 40 * (v28 % 0x66);
      if (v32 == v41)
      {
        goto LABEL_143;
      }

      if (*(a1 + 28) == 1)
      {
        goto LABEL_51;
      }
    }

    if (v41 == v32)
    {
      v45 = 0;
    }

    else
    {
      v45 = 102 * (v30 - v40) - 0x3333333333333333 * ((v32 - *v30) >> 3) + 0x3333333333333333 * ((v41 - *v40) >> 3);
    }

    *(a1 + 248) += v45;
    goto LABEL_62;
  }

LABEL_143:
  std::mutex::unlock((a1 + 72));
  return a1;
}

void sub_271527CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  operator delete(v16);
  operator delete(v15);
  std::mutex::unlock((v14 + 72));
  _Unwind_Resume(a1);
}

void sub_271527DE8(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 72));
  v4 = *(a1 + 248);
  v6 = *(a1 + 176);
  v5 = *(a1 + 184);
  v7 = v5 >= v4;
  v8 = v5 - v4;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 168);
  v11 = v6 - v9;
  *(a1 + 184) = v6 - v9 + v5;
  v12 = v10 / 0x66;
  v13 = *(a1 + 144);
  if (*(a1 + 152) == v13)
  {
    v15 = 0;
    v19 = 0;
    v20 = (v13 + 8 * v12);
    v17 = (v6 + v10) / 0x66;
  }

  else
  {
    v14 = v10 % 0x66;
    v15 = *(v13 + 8 * v12) + 40 * (v10 % 0x66);
    v16 = v6 + v10;
    v17 = (v6 + v10) / 0x66;
    v18 = v16 - 102 * v17;
    v19 = *(v13 + 8 * v17) + 40 * v18;
    v20 = (v13 + 8 * v12);
    if (v19 != v15)
    {
      v21 = v18 - v14 + 102 * ((8 * v17 - 8 * v12) >> 3);
      v7 = v21 >= v9;
      v22 = v21 - v9;
      if (!v7)
      {
        v22 = 0;
      }

      v23 = __OFSUB__(v21, v22);
      v24 = v21 - v22;
      if (!((v24 < 0) ^ v23 | (v24 == 0)))
      {
        v25 = v24 + v14;
        if (v25 < 1)
        {
          v35 = 101 - v25;
          v20 -= v35 / 0x66;
          v15 = *v20 + 40 * (102 * (v35 / 0x66) - v35) + 4040;
          if (v19 != v15)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v20 += v25 / 0x66uLL;
          v15 = *v20 + 40 * (v25 % 0x66uLL);
          if (v19 != v15)
          {
LABEL_35:
            v36 = 102 * ((v13 + 8 * v17 - v20) >> 3) - 0x3333333333333333 * ((v19 - *(v13 + 8 * v17)) >> 3) + 0x3333333333333333 * ((v15 - *v20) >> 3);
            if (v36 < v11)
            {
              v11 = v36;
            }

            if (!v11)
            {
              goto LABEL_38;
            }

            goto LABEL_17;
          }
        }

LABEL_14:
        if (v11 > 0)
        {
          v11 = 0;
        }

        if (!v11)
        {
LABEL_38:
          __p = 0;
          v43 = 0;
          v44 = 0;
          if (*(a1 + 29) != 1)
          {
            goto LABEL_39;
          }

          goto LABEL_25;
        }

LABEL_17:
        v26 = v11 - 0x3333333333333333 * ((v15 - *v20) >> 3);
        if (v26 < 1)
        {
          v29 = 101 - v26;
          v27 = &v20[-(v29 / 0x66)];
          v28 = *v27 + 40 * (102 * (v29 / 0x66) - v29) + 4040;
          __p = 0;
          v43 = 0;
          v44 = 0;
          if (v28 == v15)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v27 = &v20[v26 / 0x66uLL];
          v28 = *v27 + 40 * (v26 % 0x66uLL);
          __p = 0;
          v43 = 0;
          v44 = 0;
          if (v28 == v15)
          {
            goto LABEL_24;
          }
        }

        v30 = 102 * (v27 - v20) - 0x3333333333333333 * ((v28 - *v27) >> 3) + 0x3333333333333333 * ((v15 - *v20) >> 3);
        p_p = &__p;
        LOBYTE(v46) = 0;
        if (v30)
        {
          if (v30 < 0x666666666666667)
          {
            operator new();
          }

          sub_271135560();
        }

LABEL_24:
        if (*(a1 + 29) != 1)
        {
LABEL_39:
          LOBYTE(v37) = 0;
          v41 = 0;
          goto LABEL_40;
        }

LABEL_25:
        p_p = &v46;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        LOBYTE(v37) = 0;
        v41 = 0;
        if (*(a1 + 288) == 1)
        {
          v31 = (a1 + 264);
          v32 = *(a1 + 264);
          v37 = *(a1 + 256);
          v38 = v32;
          if (*(a1 + 272))
          {
            *(v32 + 16) = &v38;
            v32 = 0;
            *(a1 + 256) = v31;
            *v31 = 0;
            *(a1 + 272) = 0;
          }

          else
          {
            v37 = &v38;
          }

          v40 = *(a1 + 280);
          v41 = 1;
          sub_271528A10(v32);
          v33 = v46;
          *(a1 + 256) = p_p;
          *(a1 + 264) = v33;
          v34 = v47;
          *(a1 + 272) = v47;
          if (v34)
          {
            *(v33 + 16) = v31;
            p_p = &v46;
            v46 = 0;
            v47 = 0;
            v33 = 0;
          }

          else
          {
            *(a1 + 256) = v31;
          }

          *(a1 + 280) = v48;
          sub_271528A10(v33);
        }

        else
        {
          *(a1 + 256) = a1 + 264;
          *(a1 + 264) = 0;
          *(a1 + 272) = 0;
          *(a1 + 280) = 0;
          *(a1 + 288) = 1;
          sub_271528A10(0);
        }

LABEL_40:
        sub_271524274(a2, &__p, &v37);
      }
    }
  }

  if (v19 != v15)
  {
    goto LABEL_35;
  }

  goto LABEL_14;
}

void sub_271528368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2715288FC(va);
  std::mutex::unlock((v16 + 72));
  _Unwind_Resume(a1);
}

void sub_271528384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, ...)
{
  va_start(va, a11);
  if (a11 == 1)
  {
    sub_271528A10(a8);
  }

  sub_271398430(va);
  std::mutex::unlock((v11 + 72));
  _Unwind_Resume(a1);
}

uint64_t sub_2715283C0(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_271528438(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715284EC(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_271528564(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271528620(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  std::mutex::lock((v4 + 8));
  v5 = *(v4 + 80);
  if (v5 >= *(v4 + 88))
  {
    v9 = sub_2711825F8((v4 + 72), a2);
  }

  else
  {
    v6 = a2[1];
    *v5 = *a2;
    v5[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = a2[3];
    v7 = a2[4];
    v5[2] = off_28810C940;
    v5[3] = v8;
    v5[4] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = (v5 + 5);
  }

  *(v4 + 80) = v9;
  std::mutex::unlock((v4 + 8));
  return a1;
}

uint64_t sub_2715286EC(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_271528764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void ***sub_2715288FC(void ***a1)
{
  if (a1[1])
  {
    return a1;
  }

  v2 = *a1;
  v3 = **a1;
  if (!v3)
  {
    return a1;
  }

  v4 = v2[1];
  v5 = **a1;
  if (v4 == v3)
  {
    goto LABEL_14;
  }

  do
  {
    v6 = *(v4 - 1);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      v7 = *(v4 - 4);
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *(v4 - 4);
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

LABEL_5:
    v4 -= 40;
  }

  while (v4 != v3);
  v5 = **a1;
LABEL_14:
  v2[1] = v3;
  operator delete(v5);
  return a1;
}

void sub_271528A10(uint64_t a1)
{
  if (a1)
  {
    sub_271528A10(*a1);
    sub_271528A10(*(a1 + 8));
    sub_27151CE44(*(a1 + 152));
    if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        v2 = a1;

LABEL_7:
        operator delete(v2);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(a1 + 32));
    v2 = a1;

    goto LABEL_7;
  }
}

void sub_271528AB8(uint64_t a1)
{
  if (*(a1 + 216) == 1)
  {
    sub_271528A10(*(a1 + 192));
  }

  sub_271528A10(*(a1 + 160));
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  if (v3 == v2)
  {
    v3 = *(a1 + 72);
    *(a1 + 104) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 96);
    v5 = &v2[v4 / 0x66];
    v6 = *v5 + 40 * (v4 % 0x66);
    v7 = v2[(*(a1 + 104) + v4) / 0x66] + 40 * ((*(a1 + 104) + v4) % 0x66);
    if (v6 != v7)
    {
      while (1)
      {
        v8 = *(v6 + 32);
        if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
          v9 = *(v6 + 8);
          if (v9)
          {
LABEL_10:
            if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }
          }
        }

        else
        {
          v9 = *(v6 + 8);
          if (v9)
          {
            goto LABEL_10;
          }
        }

        v6 += 40;
        if (v6 - *v5 == 4080)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }

        if (v6 == v7)
        {
          v2 = *(a1 + 72);
          v3 = *(a1 + 80);
          break;
        }
      }
    }

    *(a1 + 104) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 80);
        v2 = (*(a1 + 72) + 8);
        *(a1 + 72) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 51;
    goto LABEL_23;
  }

  if (v11 == 2)
  {
    v12 = 102;
LABEL_23:
    *(a1 + 96) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v14 != v15)
    {
      *(a1 + 80) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    operator delete(v16);
  }

  std::mutex::~mutex(a1);
}

uint64_t *sub_271528D08(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_27151CE44(*(v1 + 152));
      if (*(v1 + 80) == 1 && *(v1 + 79) < 0)
      {
        operator delete(*(v1 + 56));
      }

      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_271528D80(void *a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v5 = v4;
  }

  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = memcmp(a1, a2, v8);
  if (v9)
  {
    if ((v9 & 0x80000000) == 0)
    {
      return 1;
    }

    return 255;
  }

  if (v5 != v7)
  {
    if (v5 >= v7)
    {
      return 1;
    }

    return 255;
  }

  v11 = *(v3 + 48);
  v12 = *(v2 + 48);
  if (v11 == 1 && (v12 & 1) != 0)
  {
    v15 = v3[3];
    v14 = v3 + 3;
    v13 = v15;
    v16 = *(v14 + 23);
    if (v16 >= 0)
    {
      v17 = v14;
    }

    else
    {
      v17 = v13;
    }

    if (v16 >= 0)
    {
      v18 = *(v14 + 23);
    }

    else
    {
      v18 = v14[1];
    }

    v21 = v2[3];
    v20 = v2 + 3;
    v19 = v21;
    v22 = *(v20 + 23);
    if (v22 >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v19;
    }

    if (v22 >= 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = v20[1];
    }

    if (v24 >= v18)
    {
      v25 = v18;
    }

    else
    {
      v25 = v24;
    }

    v26 = memcmp(v17, v23, v25);
    if (v26)
    {
      if ((v26 & 0x80000000) == 0)
      {
        return 1;
      }
    }

    else
    {
      if (v18 == v24)
      {
        return 0;
      }

      if (v18 >= v24)
      {
        return 1;
      }
    }

    return 255;
  }

  else
  {
    if (((v11 ^ 1) & v12) != 0)
    {
      v27 = -1;
    }

    else
    {
      v27 = 1;
    }

    if ((v12 | v11))
    {
      return v27;
    }

    else
    {
      return 0;
    }
  }
}

void sub_271529108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271529164(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  v5 = *(a2 + 8);
  std::to_string(&v23, *v4);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v23;
  }

  else
  {
    v6 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  sub_271120E64(*v5, v6, size);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    v8 = *(a1 + 8);
    if (*a2)
    {
LABEL_11:
      *a2 = 0;
      v9 = *(a2 + 8);
      if (*(v8 + 16) == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v8 = *(a1 + 8);
    if (*a2)
    {
      goto LABEL_11;
    }
  }

  sub_271120E64(**(a2 + 8), ",", 1);
  *a2 = 0;
  v9 = *(a2 + 8);
  if (*(v8 + 16) == 1)
  {
LABEL_12:
    sub_2711DC2EC(&v23, v9, v8);
  }

LABEL_15:
  sub_271120E64(*v9, "nullopt", 7);
  v10 = *(a1 + 16);
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  v11 = *(a2 + 8);
  if (*(v10 + 16) == 1)
  {
    sub_2711DC2EC(&v23, v11, v10);
  }

  sub_271120E64(*v11, "nullopt", 7);
  v12 = *(a1 + 24);
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  v13 = *(a2 + 8);
  v14 = v12 + 1;
  v15 = *v13;
  if (*v12 == v12 + 1)
  {
    return sub_271120E64(v15, "{}", 2);
  }

  sub_271120E64(v15, "{", 1);
  v16 = *v12;
  sub_271529440(v13, (v16 + 4));
  v17 = v16[1];
  if (v17)
  {
    do
    {
      v18 = v17;
      v17 = *v17;
    }

    while (v17);
  }

  else
  {
    do
    {
      v18 = v16[2];
      v19 = *v18 == v16;
      v16 = v18;
    }

    while (!v19);
  }

  if (v18 != v14)
  {
    do
    {
      sub_271120E64(*v13, ",", 1);
      sub_271529440(v13, (v18 + 4));
      v20 = v18[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v18[2];
          v19 = *v21 == v18;
          v18 = v21;
        }

        while (!v19);
      }

      v18 = v21;
    }

    while (v21 != v14);
  }

  return sub_271120E64(*v13, "}", 1);
}

void sub_271529424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271529440(void **a1, std::string::size_type a2)
{
  sub_271120E64(*a1, "{", 1);
  v8.__r_.__value_.__r.__words[0] = a2;
  v8.__r_.__value_.__l.__size_ = a2 + 24;
  sub_2711DD6A8(&v7, a1, &v8);
  sub_271120E64(*a1, ",", 1);
  std::to_string(&v8, *(a2 + 32));
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v8;
  }

  else
  {
    v4 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  sub_271120E64(*a1, v4, size);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return sub_271120E64(*a1, "}", 1);
}

void sub_271529508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271529544(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288133040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t *sub_2715295A4(uint64_t *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a2;
  if (a2 == a3)
  {
    goto LABEL_22;
  }

  v23 = result;
  v8 = *a4;
  v9 = a5;
  v10 = a3;
  while (1)
  {
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3);
    if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - v7) >> 3)) >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v7) >> 3);
    }

    if (v12)
    {
      v13 = -40 * v12;
      v14 = v10 - 40;
      v5 = v9;
      while (1)
      {
        v15 = *v14;
        *v14 = 0;
        *(v14 + 8) = 0;
        v16 = *(v9 - 32);
        *(v5 - 40) = v15;
        v5 -= 40;
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
          v19 = *(v14 + 24);
          *(v14 + 24) = 0;
          *(v14 + 32) = 0;
          v18 = *(v9 - 8);
          *(v9 - 16) = v19;
          if (v18)
          {
LABEL_12:
            if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v18->__on_zero_shared)(v18);
              std::__shared_weak_count::__release_weak(v18);
            }
          }
        }

        else
        {
          v17 = *(v14 + 24);
          *(v14 + 24) = 0;
          *(v14 + 32) = 0;
          v18 = *(v9 - 8);
          *(v9 - 16) = v17;
          if (v18)
          {
            goto LABEL_12;
          }
        }

        v14 -= 40;
        v9 = v5;
        v13 += 40;
        if (!v13)
        {
          goto LABEL_17;
        }
      }
    }

    v5 = v9;
LABEL_17:
    v10 -= 40 * v12;
    if (v10 == v7)
    {
      break;
    }

    v20 = *--v6;
    v8 = v20;
    v9 = v20 + 4080;
  }

  if (*v6 + 4080 == v5)
  {
    v21 = v6[1];
    ++v6;
    v5 = v21;
  }

  v7 = a3;
  result = v23;
LABEL_22:
  *result = v7;
  result[1] = v6;
  result[2] = v5;
  return result;
}

void sub_271529760(__int128 **a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  if (a2 == a3)
  {
    v13 = a2;
    goto LABEL_21;
  }

  v10 = *a4;
  while (1)
  {
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - a5 + 4080) >> 3);
    if ((0xCCCCCCCCCCCCCCCDLL * ((a3 - v7) >> 3)) < v12)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - v7) >> 3);
    }

    if (v12)
    {
      break;
    }

LABEL_3:
    v11 = *(v6 + 1);
    v6 = (v6 + 8);
    v10 = v11;
    a5 = v11;
  }

  v13 = (v7 + 40 * v12);
  do
  {
    v14 = *v7;
    *v7 = 0;
    *(v7 + 1) = 0;
    v15 = *(a5 + 8);
    *a5 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
      v18 = *(v7 + 24);
      *(v7 + 3) = 0;
      *(v7 + 4) = 0;
      v17 = *(a5 + 32);
      *(a5 + 24) = v18;
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v16 = *(v7 + 24);
      *(v7 + 3) = 0;
      *(v7 + 4) = 0;
      v17 = *(a5 + 32);
      *(a5 + 24) = v16;
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

LABEL_8:
    v7 = (v7 + 40);
    a5 += 40;
  }

  while (v7 != v13);
  if (v13 != a3)
  {
    v7 = v13;
    goto LABEL_3;
  }

  if (a5 == *v6 + 4080)
  {
    v19 = *(v6 + 1);
    v6 = (v6 + 8);
    a5 = v19;
  }

LABEL_21:
  *a1 = v13;
  a1[1] = v6;
  a1[2] = a5;
}

void sub_27152990C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271529944(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_271529974(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3viz9IRecorderEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3viz9IRecorderEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3viz9IRecorderEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3viz9IRecorderEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2715299F4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288133140;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271529A48(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *(a1 + 104);
  v4 = *(a1 + 96);
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    v5 = *(v3 - 8);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = *(v3 - 32);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(v3 - 32);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

LABEL_4:
    v3 -= 40;
  }

  while (v3 != v2);
  v4 = *(a1 + 96);
LABEL_13:
  *(a1 + 104) = v2;
  operator delete(v4);
LABEL_14:

  std::mutex::~mutex((a1 + 32));
}

void sub_271529B80(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288133190;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271529BD4(uint64_t a1)
{
  sub_271528AB8(a1 + 96);
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 80);
    if (v2 == a1 + 56)
    {
      v3 = *(*v2 + 32);

      goto LABEL_10;
    }

    if (v2)
    {
      v3 = *(*v2 + 40);

LABEL_10:
      v3();
    }
  }
}

uint64_t sub_271529C98(uint64_t result, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *v12 = *a2;
  *&v12[13] = *(a2 + 13);
  v3 = *(a2 + 21);
  v4 = *(a2 + 22);
  v13[0] = 0;
  v15 = 0;
  v5 = *(a3 + 32);
  if (v5 == 1)
  {
    v6 = *(a3 + 24);
    if (v6)
    {
      if (v6 == a3)
      {
        v14 = v13;
        v7 = result;
        (*(*v6 + 24))(v6, v13);
        result = v7;
      }

      else
      {
        v14 = *(a3 + 24);
        *(a3 + 24) = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = 1;
  }

  *result = &unk_288132E40;
  *(result + 8) = *v12;
  *(result + 21) = *&v12[13];
  *(result + 29) = v3;
  *(result + 30) = v4;
  *(result + 32) = 0;
  v8 = result + 32;
  *(result + 64) = 0;
  if (v5)
  {
    v9 = v14;
    if (v14)
    {
      if (v14 == v13)
      {
        *(result + 56) = v8;
        v10 = result;
        (*(*v9 + 24))(v9);
        result = v10;
      }

      else
      {
        *(result + 56) = v14;
        v14 = 0;
      }
    }

    else
    {
      *(result + 56) = 0;
    }

    *(result + 64) = 1;
  }

  *(result + 224) = 0u;
  *(result + 232) = 0;
  *(result + 240) = 0u;
  *(result + 192) = 0u;
  *(result + 288) = 0;
  *(result + 272) = 0u;
  *(result + 256) = 0u;
  *(result + 208) = 0u;
  *(result + 72) = 850045863;
  *(result + 240) = 0;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0;
  *(result + 224) = result + 232;
  if (v3)
  {
    *(result + 264) = 0;
    *(result + 272) = 0;
    *(result + 256) = result + 264;
    *(result + 288) = 1;
  }

  if (v15 == 1)
  {
    if (v14 == v13)
    {
      v11 = result;
      (*(*v14 + 32))(v14, v8);
    }

    else
    {
      if (!v14)
      {
        return result;
      }

      v11 = result;
      (*(*v14 + 40))(v14, v8);
    }

    return v11;
  }

  return result;
}

void sub_271529F34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271529F48(uint64_t a1)
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

__int128 *sub_271529FD4(__int128 *a1, uint64_t a2)
{
  LOBYTE(v5) = 0;
  v16 = *(a2 + 120);
  if ((v16 & 1) == 0)
  {
    v5 = *a2;
    LOBYTE(v6[0]) = 0;
    v15 = 0;
    if (*(a2 + 112) == 1)
    {
      v8 = 0;
      if (*(a2 + 40) == 1)
      {
        *v6 = *(a2 + 16);
        v7 = *(a2 + 32);
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 16) = 0;
        v8 = 1;
      }

      LOBYTE(v9[0]) = 0;
      v14 = 0;
      if (*(a2 + 104) == 1)
      {
        v3 = *(a2 + 72);
        v10 = *(a2 + 64);
        *v9 = *(a2 + 48);
        *(a2 + 56) = 0;
        *(a2 + 64) = 0;
        *(a2 + 48) = 0;
        v11 = v3;
        *__p = *(a2 + 80);
        v13 = *(a2 + 96);
        *(a2 + 80) = 0;
        *(a2 + 88) = 0;
        *(a2 + 96) = 0;
        v14 = 1;
      }

      v15 = 1;
    }
  }

  sub_27112ED5C(&v5, a1);
  if ((v16 & 1) == 0 && v15 == 1)
  {
    if (v14 == 1)
    {
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v10) < 0)
      {
        operator delete(v9[0]);
      }
    }

    if (v8 == 1 && SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }
  }

  return a1;
}

uint64_t sub_27152A124(uint64_t a1)
{
  if (*(a1 + 608) == 1)
  {
    *(a1 + 608) = 0;
  }

  v2 = *(a1 + 592);
  *(a1 + 592) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 552) == 1)
  {
    v3 = *(a1 + 544);
    *(a1 + 544) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(a1 + 552) = 0;
  }

  sub_271536768(*(a1 + 632));
  v4 = *(a1 + 616);
  *(a1 + 616) = 0;
  if (v4)
  {
    std::mutex::~mutex(v4);
    MEMORY[0x2743BF050]();
  }

  v5 = *(a1 + 592);
  *(a1 + 592) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 568);
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = *(a1 + 576);
  v8 = *(a1 + 568);
  if (v7 == v6)
  {
    goto LABEL_26;
  }

  do
  {
    v9 = *(v7 - 8);
    if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = *(v7 - 24);
      if (!v10)
      {
        goto LABEL_21;
      }

LABEL_20:
      std::__shared_weak_count::__release_weak(v10);
      goto LABEL_21;
    }

    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *(v7 - 24);
    if (v10)
    {
      goto LABEL_20;
    }

LABEL_21:
    v11 = *(v7 - 40);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    sub_2711B039C(v7 - 280);
    v7 -= 288;
  }

  while (v7 != v6);
  v8 = *(a1 + 568);
LABEL_26:
  *(a1 + 576) = v6;
  operator delete(v8);
LABEL_27:
  v12 = *(a1 + 560);
  *(a1 + 560) = 0;
  if (v12)
  {
    std::mutex::~mutex(v12);
    MEMORY[0x2743BF050]();
  }

  if (*(a1 + 552) == 1)
  {
    v13 = *(a1 + 544);
    *(a1 + 544) = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  v14 = *(a1 + 528);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (*(a1 + 464) == 1)
  {
    v15 = *(a1 + 456);
    if (v15 == a1 + 432)
    {
      (*(*v15 + 32))(v15);
    }

    else if (v15)
    {
      (*(*v15 + 40))(v15);
    }
  }

  sub_271372C50(a1 + 272);
  sub_2711B039C(a1 + 40);
  return a1;
}

void sub_27152A3C4(uint64_t a1)
{
  sub_27152A124(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27152A3FC(uint64_t a1@<X0>, const void ****a2@<X1>, uint64_t a3@<X8>)
{
  v35 = 0;
  v36 = "data";
  v34 = 0;
  v5 = *(a1 + 248);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    v35 = v7;
    if (v7)
    {
      v8 = *(a1 + 240);
      v34 = v8;
      if (v8)
      {
        sub_27152B698(a3, v8, a1, a2);
LABEL_29:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  sub_271536A98(v12, &v36);
  if (SHIBYTE(v13) < 0)
  {
    sub_271127178(v14, v12[0], v12[1]);
  }

  else
  {
    *v14 = *v12;
    v15 = v13;
  }

  v16 = 1;
  LOBYTE(v17) = 0;
  v21 = 0;
  v22 = 1;
  sub_271389570(10, v14, &v23);
  *a3 = v23;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v33 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_19;
  }

  *(a3 + 40) = 0;
  v9 = v26;
  if (v26 == 1)
  {
    *(a3 + 16) = __p;
    *(a3 + 32) = v25;
    v25 = 0;
    __p = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v32 & 1) == 0)
    {
LABEL_12:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v11 = v29;
  *(v10 + 16) = v28;
  *v10 = v27;
  v27 = 0uLL;
  *(a3 + 72) = v11;
  *(a3 + 80) = v30;
  *(a3 + 96) = v31;
  v28 = 0;
  v30 = 0uLL;
  v31 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_19:
  if (v22 != 1)
  {
    goto LABEL_26;
  }

  if (v21 == 1)
  {
    if ((v20 & 0x80000000) == 0)
    {
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_33:
      operator delete(v17);
      if (v16 != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    operator delete(v19);
    if (v18 < 0)
    {
      goto LABEL_33;
    }
  }

LABEL_23:
  if (v16 != 1)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

LABEL_26:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v7)
  {
    goto LABEL_29;
  }
}

void sub_27152A6FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = 0;
  v36 = "sync update";
  v34 = 0;
  v5 = *(a1 + 248);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    v35 = v7;
    if (v7)
    {
      v8 = *(a1 + 240);
      v34 = v8;
      if (v8)
      {
        sub_27152BB9C(a3, v8, a1, a2);
LABEL_29:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  sub_271536A98(v12, &v36);
  if (SHIBYTE(v13) < 0)
  {
    sub_271127178(v14, v12[0], v12[1]);
  }

  else
  {
    *v14 = *v12;
    v15 = v13;
  }

  v16 = 1;
  LOBYTE(v17) = 0;
  v21 = 0;
  v22 = 1;
  sub_271389570(10, v14, &v23);
  *a3 = v23;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v33 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_19;
  }

  *(a3 + 40) = 0;
  v9 = v26;
  if (v26 == 1)
  {
    *(a3 + 16) = __p;
    *(a3 + 32) = v25;
    v25 = 0;
    __p = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v32 & 1) == 0)
    {
LABEL_12:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v11 = v29;
  *(v10 + 16) = v28;
  *v10 = v27;
  v27 = 0uLL;
  *(a3 + 72) = v11;
  *(a3 + 80) = v30;
  *(a3 + 96) = v31;
  v28 = 0;
  v30 = 0uLL;
  v31 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_19:
  if (v22 != 1)
  {
    goto LABEL_26;
  }

  if (v21 == 1)
  {
    if ((v20 & 0x80000000) == 0)
    {
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_33:
      operator delete(v17);
      if (v16 != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    operator delete(v19);
    if (v18 < 0)
    {
      goto LABEL_33;
    }
  }

LABEL_23:
  if (v16 != 1)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

LABEL_26:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v7)
  {
    goto LABEL_29;
  }
}

void sub_27152A9FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = 0;
  v36 = "connection status update";
  v34 = 0;
  v5 = *(a1 + 248);
  if (v5)
  {
    v6 = a2;
    v7 = std::__shared_weak_count::lock(v5);
    v35 = v7;
    if (v7)
    {
      v8 = *(a1 + 240);
      v34 = v8;
      if (v8)
      {
        sub_27152CCAC(a3, v8, a1, v6);
LABEL_29:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  sub_271536A98(v12, &v36);
  if (SHIBYTE(v13) < 0)
  {
    sub_271127178(v14, v12[0], v12[1]);
  }

  else
  {
    *v14 = *v12;
    v15 = v13;
  }

  v16 = 1;
  LOBYTE(v17) = 0;
  v21 = 0;
  v22 = 1;
  sub_271389570(10, v14, &v23);
  *a3 = v23;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v33 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_19;
  }

  *(a3 + 40) = 0;
  v9 = v26;
  if (v26 == 1)
  {
    *(a3 + 16) = __p;
    *(a3 + 32) = v25;
    v25 = 0;
    __p = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v32 & 1) == 0)
    {
LABEL_12:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v11 = v29;
  *(v10 + 16) = v28;
  *v10 = v27;
  v27 = 0uLL;
  *(a3 + 72) = v11;
  *(a3 + 80) = v30;
  *(a3 + 96) = v31;
  v28 = 0;
  v30 = 0uLL;
  v31 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_19:
  if (v22 != 1)
  {
    goto LABEL_26;
  }

  if (v21 == 1)
  {
    if ((v20 & 0x80000000) == 0)
    {
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_33:
      operator delete(v17);
      if (v16 != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    operator delete(v19);
    if (v18 < 0)
    {
      goto LABEL_33;
    }
  }

LABEL_23:
  if (v16 != 1)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

LABEL_26:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v7)
  {
    goto LABEL_29;
  }
}

void sub_27152ACFC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = 0;
  v36 = "contexts status update";
  v34 = 0;
  v5 = *(a1 + 248);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    v35 = v7;
    if (v7)
    {
      v8 = *(a1 + 240);
      v34 = v8;
      if (v8)
      {
        sub_27152E2BC(a3, v8, a1, a2);
LABEL_29:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  sub_271536A98(v12, &v36);
  if (SHIBYTE(v13) < 0)
  {
    sub_271127178(v14, v12[0], v12[1]);
  }

  else
  {
    *v14 = *v12;
    v15 = v13;
  }

  v16 = 1;
  LOBYTE(v17) = 0;
  v21 = 0;
  v22 = 1;
  sub_271389570(10, v14, &v23);
  *a3 = v23;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v33 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_19;
  }

  *(a3 + 40) = 0;
  v9 = v26;
  if (v26 == 1)
  {
    *(a3 + 16) = __p;
    *(a3 + 32) = v25;
    v25 = 0;
    __p = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v32 & 1) == 0)
    {
LABEL_12:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v11 = v29;
  *(v10 + 16) = v28;
  *v10 = v27;
  v27 = 0uLL;
  *(a3 + 72) = v11;
  *(a3 + 80) = v30;
  *(a3 + 96) = v31;
  v28 = 0;
  v30 = 0uLL;
  v31 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_19:
  if (v22 != 1)
  {
    goto LABEL_26;
  }

  if (v21 == 1)
  {
    if ((v20 & 0x80000000) == 0)
    {
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_33:
      operator delete(v17);
      if (v16 != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    operator delete(v19);
    if (v18 < 0)
    {
      goto LABEL_33;
    }
  }

LABEL_23:
  if (v16 != 1)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

LABEL_26:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v7)
  {
    goto LABEL_29;
  }
}

void sub_27152AFFC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = 0x500000001;
  *&v19[1] = 0x200000001;
  v19[0] = 0;
  v19[3] = 0;
  sub_2714F77C8(a2, 1, &v18, &v9);
  *a3 = 1;
  *(a3 + 8) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  if (v13 == 1)
  {
    if (SHIBYTE(v12) < 0)
    {
      sub_271127178((a3 + 32), __p, *(&__p + 1));
    }

    else
    {
      *(a3 + 32) = __p;
      *(a3 + 48) = v12;
    }

    *(a3 + 56) = 1;
  }

  *(a3 + 64) = 0;
  *(a3 + 208) = 0;
  if (v15 == 1)
  {
    sub_2711B0ED4(a3 + 64, &v14);
    *(a3 + 208) = 1;
  }

  *(a3 + 216) = v16;
  v6 = a1[65];
  *(a3 + 232) = v17;
  *(a3 + 240) = v6;
  v7 = a1[66];
  *(a3 + 248) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 32);
  *(a3 + 256) = *(a2 + 24);
  *(a3 + 264) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}