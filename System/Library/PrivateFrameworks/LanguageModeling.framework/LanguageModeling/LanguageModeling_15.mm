void sub_1AE6D7854(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  if (!a10)
  {
    if (a13)
    {
      --*a13;
    }

    _Unwind_Resume(exception_object);
  }

  (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6D78A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v5 = a5;
  v8 = a2;
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      if (v5)
      {
        while (1)
        {
          v12 = (*(**a3 + 80))();
          v13 = *v12;
          v32 = *v12;
          v33 = *(v12 + 8);
          v34 = *(v12 + 12);
          v14 = *a4;
          v29 = v14;
          v30 = *(a4 + 8);
          v31 = *(a4 + 12);
          v15 = *(a1 + 136);
          if (v14 <= 0xFFFFFFFEFFFFFFFFLL)
          {
            if (v13 == -1)
            {
              v16 = v15[32];
              if (v15[32])
              {
                v17 = -1;
              }

              else
              {
                v17 = 0;
              }

              v28 = v17;
              if (v16)
              {
                goto LABEL_9;
              }
            }

            else
            {
              v18 = HIDWORD(v14);
              if (HIDWORD(v14))
              {
                v19 = 0;
              }

              else
              {
                v19 = -1;
              }

              v28 = v19;
              if (!v18)
              {
                goto LABEL_9;
              }
            }
          }

          else
          {
            if (v15[33])
            {
              goto LABEL_9;
            }

            v28 = v15[34] ^ 1;
          }

          sub_1AE6D7BAC(a1, v8, &v29, &v32, &v28);
LABEL_9:
          (*(**a3 + 88))();
          result = (*(**a3 + 72))();
          if (result)
          {
            return result;
          }
        }
      }

      do
      {
        v20 = (*(**a3 + 80))();
        v21 = *v20;
        v32 = v21;
        v33 = *(v20 + 8);
        v34 = *(v20 + 12);
        v22 = *a4;
        v29 = *a4;
        v30 = *(a4 + 8);
        v31 = *(a4 + 12);
        v23 = *(a1 + 136);
        if (v21 < 0xFFFFFFFF00000000)
        {
          if (v22 == -1)
          {
            v24 = v23[32];
            if (v23[32])
            {
              v25 = -1;
            }

            else
            {
              v25 = 0;
            }

            v28 = v25;
            if (v24)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v26 = HIDWORD(v21);
            if (v26)
            {
              v27 = 0;
            }

            else
            {
              v27 = -1;
            }

            v28 = v27;
            if (!v26)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          if (v23[33])
          {
            goto LABEL_26;
          }

          v28 = v23[34] ^ 1;
        }

        sub_1AE6D7BAC(a1, v8, &v32, &v29, &v28);
LABEL_26:
        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

uint64_t *sub_1AE6D7BAC(uint64_t a1, int a2, float *a3, uint64_t a4, char *a5)
{
  v7 = *(a4 + 12);
  *&v31 = a3[3];
  HIDWORD(v31) = v7;
  v32 = *a5;
  v8 = *a3;
  v9 = *(a4 + 4);
  v10 = a3[2];
  if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
  {
    v25 = a3;
    v26 = a4;
    v22 = __cxa_guard_acquire(&qword_1ED9AC728);
    a3 = v25;
    a4 = v26;
    if (v22)
    {
      dword_1ED9AC720 = -8388609;
      __cxa_guard_release(&qword_1ED9AC728);
      a3 = v25;
      a4 = v26;
    }
  }

  if (v10 != *&dword_1ED9AC720)
  {
    v10 = *(a4 + 8);
    if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
    {
      v27 = a4;
      v23 = a3;
      v24 = __cxa_guard_acquire(&qword_1ED9AC728);
      a3 = v23;
      a4 = v27;
      if (v24)
      {
        dword_1ED9AC720 = -8388609;
        __cxa_guard_release(&qword_1ED9AC728);
        a3 = v23;
        a4 = v27;
      }
    }

    if (v10 != *&dword_1ED9AC720)
    {
      v11 = a3[2];
      v12 = *(a4 + 8);
      v13 = v11 == 3.4028e38;
      v14 = v12 + v11;
      if (v13 || v12 == 3.4028e38)
      {
        v10 = 3.4028e38;
      }

      else
      {
        v10 = v14;
      }
    }
  }

  v15 = *(a1 + 176);
  *(v15 + 16) = &v31;
  v16 = sub_1AE6CC440(v15 + 4);
  if (v16)
  {
    v17 = *(v16 + 4);
  }

  else
  {
    LODWORD(v28) = -1431655765 * ((*(v15 + 14) - *(v15 + 13)) >> 2);
    v17 = v28;
    sub_1AE6CC56C((v15 + 26), &v31);
    sub_1AE6CC6BC(v15 + 8, v28, &v28);
  }

  v28 = __PAIR64__(v9, LODWORD(v8));
  v29 = v10;
  v30 = v17;
  v18 = sub_1AE6CE5A0(*(a1 + 120), a2);
  v19 = v18;
  v20 = *(v18 + 32);
  if (v20 >= *(v18 + 40))
  {
    result = sub_1AE6D28F0((v18 + 24), &v28);
  }

  else
  {
    *v20 = v28;
    *(v20 + 8) = v10;
    *(v20 + 12) = v17;
    result = (v20 + 16);
  }

  *(v19 + 32) = result;
  return result;
}

void sub_1AE6D7FB4(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v3, 0x10E0C401DE81863);
  sub_1AE6C6C70(v2);
  MEMORY[0x1B2706400](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D8038(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 56))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 56))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void sub_1AE6D8170(void *a1)
{
  sub_1AE6D81A8(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6D81A8(void *a1)
{
  *a1 = &unk_1F242D308;
  v2 = a1[17];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      MEMORY[0x1B2706400](v3, 0x20C4093837F09);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      MEMORY[0x1B2706400](v4, 0x20C4093837F09);
    }

    MEMORY[0x1B2706400](v2, 0x1060C40AD892F49);
  }

  v5 = a1[22];
  if (v5)
  {
    v6 = sub_1AE6D3E24(v5);
    MEMORY[0x1B2706400](v6, 0x10E0C401DE81863);
  }

  return sub_1AE6C6C70(a1);
}

float sub_1AE6D82D4@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  (*(***(a1 + 144) + 96))(&v9 + 4);
  result = *(&v9 + 1);
  v11 = HIDWORD(v9);
  v10 = 2139095039;
  if (*(&v9 + 1) == 3.4028e38)
  {
    goto LABEL_3;
  }

  (*(***(a1 + 152) + 96))(&v9);
  result = *&v9;
  v11 = v9;
  v10 = 2139095039;
  if (*&v9 == 3.4028e38)
  {
    goto LABEL_3;
  }

  result = *(&v9 + 1);
  if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
  {
    v7 = result;
    v5 = __cxa_guard_acquire(&qword_1ED9AC728);
    result = v7;
    if (v5)
    {
      dword_1ED9AC720 = -8388609;
      __cxa_guard_release(&qword_1ED9AC728);
      result = v7;
    }
  }

  if (result != *&dword_1ED9AC720)
  {
    result = *&v9;
    if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
    {
      v8 = result;
      v6 = __cxa_guard_acquire(&qword_1ED9AC728);
      result = v8;
      if (v6)
      {
        dword_1ED9AC720 = -8388609;
        __cxa_guard_release(&qword_1ED9AC728);
        result = v8;
      }
    }

    if (result != *&dword_1ED9AC720)
    {
      result = *&v9 + *(&v9 + 1);
      if (*(&v9 + 1) == 3.4028e38 || *&v9 == 3.4028e38)
      {
        result = 3.4028e38;
      }

LABEL_3:
      *a2 = result;
    }
  }

  return result;
}

uint64_t sub_1AE6D84A0(uint64_t a1)
{
  result = (*(**(a1 + 160) + 16))(*(a1 + 160));
  if (result != -1)
  {
    v3 = result;
    result = (*(**(a1 + 168) + 16))(*(a1 + 168));
    if (result != -1)
    {
      v8 = __PAIR64__(result, v3);
      v9 = 0;
      v4 = *(a1 + 176);
      *(v4 + 16) = &v8;
      v5 = sub_1AE6CC440(v4 + 4);
      if (v5)
      {
        return *(v5 + 4);
      }

      else
      {
        v6 = (*(v4 + 14) - *(v4 + 13)) >> 2;
        v7 = (-1431655765 * v6);
        v10 = -1431655765 * v6;
        sub_1AE6CC56C((v4 + 26), &v8);
        sub_1AE6CC6BC(v4 + 8, v7, &v10);
        return v7;
      }
    }
  }

  return result;
}

uint64_t sub_1AE6D8590(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

void sub_1AE6D875C(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v3, 0x20C4093837F09);
  MEMORY[0x1B2706400](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D87C0(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else
  {
    if (*(result + 28))
    {
      v2 = *(result + 32);
      v1 = *(result + 40);
    }

    else
    {
      v1 = *(result + 32);
      v2 = *(result + 40);
    }

    return sub_1AE6D87EC(result, v1, v2);
  }

  return result;
}

uint64_t sub_1AE6D87EC(uint64_t a1, uint64_t a2, void *a3)
{
  while (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = *(a1 + 28) == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (((*(**a3 + 72))() & 1) == 0)
    {
      v8 = (*(**a2 + 80))();
      v9 = (*(**a3 + 80))();
      (*(**a3 + 88))();
      v10 = *(a1 + 28);
      if (v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = v8;
      }

      v12 = *v11;
      if (*v11 <= 0xFFFFFFFEFFFFFFFFLL)
      {
        v13 = v10 ? v8 : v9;
        v14 = *v13;
        if (*v13 != -1)
        {
          v15 = *(v13 + 8);
          v16 = *(v11 + 8);
          v17 = *(v13 + 12);
          LODWORD(v29) = *(v11 + 12);
          HIDWORD(v29) = v17;
          v30 = 0;
          *(a1 + 68) = v12;
          *(a1 + 72) = HIDWORD(v14);
          if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
          {
            v25 = v16;
            v27 = v15;
            v23 = __cxa_guard_acquire(&qword_1ED9AC728);
            v16 = v25;
            v15 = v27;
            if (v23)
            {
              dword_1ED9AC720 = -8388609;
              __cxa_guard_release(&qword_1ED9AC728);
              v16 = v25;
              v15 = v27;
            }
          }

          if (v16 != *&dword_1ED9AC720)
          {
            if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
            {
              v26 = v16;
              v28 = v15;
              v24 = __cxa_guard_acquire(&qword_1ED9AC728);
              v16 = v26;
              v15 = v28;
              if (v24)
              {
                dword_1ED9AC720 = -8388609;
                __cxa_guard_release(&qword_1ED9AC728);
                v16 = v26;
                v15 = v28;
              }
            }

            if (v15 != *&dword_1ED9AC720)
            {
              v18 = v16 == 3.4028e38;
              v16 = v15 + v16;
              if (v18 || v15 == 3.4028e38)
              {
                v16 = 3.4028e38;
              }
            }
          }

          *(a1 + 76) = v16;
          v19 = *(*(a1 + 16) + 176);
          *(v19 + 16) = &v29;
          v20 = sub_1AE6CC440(v19 + 4);
          if (v20)
          {
            v21 = *(v20 + 4);
          }

          else
          {
            v31 = -1431655765 * ((*(v19 + 14) - *(v19 + 13)) >> 2);
            v21 = v31;
            sub_1AE6CC56C((v19 + 26), &v29);
            sub_1AE6CC6BC(v19 + 8, v21, &v31);
          }

          *(a1 + 80) = v21;
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1AE6D8BF0(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t sub_1AE6D8C0C(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t sub_1AE6D8CAC(uint64_t a1, int a2)
{
  *(a1 + 48) = a2 == 0;
  if (*(a1 + 28))
  {
    if (a2)
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      goto LABEL_6;
    }

    return 1;
  }

  if (!a2)
  {
    return 1;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
LABEL_6:
  result = (*(**v3 + 64))();
  if (result)
  {
    v6 = *(a1 + 28) == 0;
    v7 = (*(**v3 + 80))();
    (*(**v4 + 64))(*v4, *(v7 + 4 * v6));

    return sub_1AE6D87EC(a1, v3, v4);
  }

  return result;
}

uint64_t sub_1AE6D8DB8(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    *(result + 24) = a2;
    v2 = (*(*(*(result + 16) + 176) + 104) + 12 * a2);
    v3 = v2[1];
    v4 = result;
    (*(***(result + 32) + 56))(**(result + 32), *v2);
    result = (*(***(v4 + 40) + 56))(**(v4 + 40), v3);
    *(v4 + 64) = *(v4 + 24);
  }

  return result;
}

uint64_t sub_1AE6D8E6C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_1AE6D8E88(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

void sub_1AE6D92D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B2706400](v15, v16);
  _Unwind_Resume(a1);
}

void sub_1AE6D9338(void *a1)
{
  *a1 = &unk_1F242D718;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B2706400](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B2706400](v3, 0x20C4093837F09);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6D9430(void *a1)
{
  *a1 = &unk_1F242D718;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B2706400](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B2706400](v3, 0x20C4093837F09);
  }

  return a1;
}

void sub_1AE6D9508(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a1 + 176) + 104) + 12 * a2);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(a1 + 184);
  if (v5)
  {
    if (v5 == 1)
    {
LABEL_3:
      v6 = *(a1 + 168);
      v7 = *(a1 + 144);
      v8 = v3;
      v9 = v4;
      v10 = 0;
      goto LABEL_23;
    }

    v11 = a2;
    v12 = a1;
    v13 = (*(***(a1 + 144) + 104))(**(a1 + 144), v3);
    v14 = (*(***(v12 + 152) + 104))(**(v12 + 152), v4);
    if (v13 == -1 && v14 == -1)
    {
      v21 = 5;
      strcpy(__p, "FATAL");
      v19 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
      sub_1AE5DB608(v19, ": ", 2);
      sub_1AE5DB608(MEMORY[0x1E69E5300], "ComposeFst: both sides can't require match", 42);
      sub_1AE696D18();
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      a1 = v12;
      *(v12 + 8) |= 4uLL;
      a2 = v11;
    }

    else
    {
      v17 = v14 == -1 || v13 <= v14;
      v18 = v13 == -1 || !v17;
      a2 = v11;
      a1 = v12;
      if (v18)
      {
        goto LABEL_3;
      }
    }
  }

  v7 = *(a1 + 152);
  v6 = *(a1 + 160);
  v8 = v4;
  v9 = v3;
  v10 = 1;
LABEL_23:

  sub_1AE6D96E4(a1, a2, v8, v6, v9, v7, v10);
}

void sub_1AE6D96BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AE6D96E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v7 = a7;
  (*(**a6 + 56))(*a6, a3);
  v18[0] = v7 - 1;
  v18[1] = v7 << 31 >> 31;
  v18[2] = 0;
  v18[3] = a5;
  sub_1AE6D9934(a1, a2, a6, v18, v7);
  v17 = 0;
  (*(*a4 + 120))(a4, a5, v15);
  while (1)
  {
    if (!v15[0])
    {
      v14 = v17;
      if (v17 >= v15[2])
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if ((*(*v15[0] + 16))(v15[0]))
    {
      break;
    }

    if (!v15[0])
    {
      v14 = v17;
LABEL_10:
      v13 = v15[1] + 16 * v14;
      goto LABEL_11;
    }

    v13 = (*(*v15[0] + 24))();
LABEL_11:
    sub_1AE6D9934(a1, a2, a6, v13, v7);
    if (v15[0])
    {
      (*(*v15[0] + 32))(v15[0]);
    }

    else
    {
      ++v17;
    }
  }

  if (v15[0])
  {
    (*(*v15[0] + 8))();
    goto LABEL_17;
  }

LABEL_15:
  if (v16)
  {
    --*v16;
  }

LABEL_17:
  sub_1AE6CE468(a1, a2);
}

void sub_1AE6D98E0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  if (!a10)
  {
    if (a13)
    {
      --*a13;
    }

    _Unwind_Resume(exception_object);
  }

  (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6D9934(uint64_t a1, int a2, void *a3, uint64_t a4, int a5)
{
  v5 = a5;
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      if (v5)
      {
        do
        {
          v12 = (*(**a3 + 80))();
          v13 = *v12;
          v24 = *v12;
          v25 = *(v12 + 8);
          v26 = *(v12 + 12);
          v21 = *a4;
          v22 = *(a4 + 8);
          v23 = *(a4 + 12);
          if (v21 <= 0xFFFFFFFEFFFFFFFFLL)
          {
            v14 = v13 == 0xFFFFFFFFLL;
            if (v13 == 0xFFFFFFFFLL)
            {
              v15 = -1;
            }

            else
            {
              v15 = 0;
            }

            v20 = v15;
            if (!v14)
            {
              sub_1AE6D7BAC(a1, a2, &v21, &v24, &v20);
            }
          }

          (*(**a3 + 88))();
          result = (*(**a3 + 72))();
        }

        while ((result & 1) == 0);
      }

      else
      {
        do
        {
          v16 = (*(**a3 + 80))();
          v24 = *v16;
          v25 = *(v16 + 8);
          v26 = *(v16 + 12);
          v17 = *a4;
          v21 = *a4;
          v22 = *(a4 + 8);
          v23 = *(a4 + 12);
          if (v24 <= 0xFFFFFFFEFFFFFFFFLL)
          {
            v18 = v17 == 0xFFFFFFFFLL;
            v19 = v17 == 0xFFFFFFFFLL ? -1 : 0;
            v20 = v19;
            if (!v18)
            {
              sub_1AE6D7BAC(a1, a2, &v24, &v21, &v20);
            }
          }

          (*(**a3 + 88))();
          result = (*(**a3 + 72))();
        }

        while (!result);
      }
    }
  }

  return result;
}

void sub_1AE6D9E0C(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v3, 0x10E0C401DE81863);
  sub_1AE6C6C70(v2);
  MEMORY[0x1B2706400](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6D9E90(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 56))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 56))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void sub_1AE6D9FC8(void *a1)
{
  sub_1AE6DA000(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6DA000(void *a1)
{
  *a1 = &unk_1F242D6A8;
  v2 = a1[17];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      MEMORY[0x1B2706400](v3, 0x20C4093837F09);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      MEMORY[0x1B2706400](v4, 0x20C4093837F09);
    }

    MEMORY[0x1B2706400](v2, 0x60C40FFD3A10ELL);
  }

  v5 = a1[22];
  if (v5)
  {
    v6 = sub_1AE6D3E24(v5);
    MEMORY[0x1B2706400](v6, 0x10E0C401DE81863);
  }

  return sub_1AE6C6C70(a1);
}

unint64_t sub_1AE6DA150(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v9 = 0;
    v6 = sub_1AE6BB5E4(a1, a2, &v9);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v9 | 4) | v9 & v6;
    return v6 & a2;
  }

  else
  {
    v8 = *(**(a1 + 8) + 24);

    return v8();
  }
}

uint64_t sub_1AE6DA1E8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  v4 = v3[15];
  v5 = *(v4 + 92);
  if (v5 == a2)
  {
    v6 = *(v4 + 96);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = a2 + 1;
    v8 = *(v4 + 8);
    if (v7 >= (*(v4 + 16) - v8) >> 3)
    {
      goto LABEL_7;
    }

    v6 = *(v8 + 8 * v7);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v9 = *(v6 + 56);
  if ((v9 & 2) != 0)
  {
    *(v6 + 56) = v9 | 8;
    if (v5 == a2)
    {
      goto LABEL_8;
    }

LABEL_10:
    v10 = *(v4 + 8) + 8 * v2 + 8;
    return *(*v10 + 16);
  }

LABEL_7:
  (*(*v3 + 40))(*(a1 + 8), a2);
  v4 = v3[15];
  if (*(v4 + 92) != v2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v10 = v4 + 96;
  return *(*v10 + 16);
}

uint64_t sub_1AE6DA2C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  v4 = v3[15];
  v5 = *(v4 + 92);
  if (v5 == a2)
  {
    v6 = *(v4 + 96);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = a2 + 1;
    v8 = *(v4 + 8);
    if (v7 >= (*(v4 + 16) - v8) >> 3)
    {
      goto LABEL_7;
    }

    v6 = *(v8 + 8 * v7);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v9 = *(v6 + 56);
  if ((v9 & 2) != 0)
  {
    *(v6 + 56) = v9 | 8;
    if (v5 == a2)
    {
      goto LABEL_8;
    }

LABEL_10:
    v10 = *(v4 + 8) + 8 * v2 + 8;
    return *(*v10 + 8);
  }

LABEL_7:
  (*(*v3 + 40))(*(a1 + 8), a2);
  v4 = v3[15];
  if (*(v4 + 92) != v2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v10 = v4 + 96;
  return *(*v10 + 8);
}

uint64_t sub_1AE6DA398(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  v4 = v3[15];
  v5 = *(v4 + 92);
  if (v5 == a2)
  {
    v6 = *(v4 + 96);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = a2 + 1;
    v8 = *(v4 + 8);
    if (v7 >= (*(v4 + 16) - v8) >> 3)
    {
      goto LABEL_7;
    }

    v6 = *(v8 + 8 * v7);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v9 = *(v6 + 56);
  if ((v9 & 2) != 0)
  {
    *(v6 + 56) = v9 | 8;
    if (v5 == a2)
    {
      goto LABEL_8;
    }

LABEL_10:
    v10 = *(v4 + 8) + 8 * v2 + 8;
    return (*(*v10 + 32) - *(*v10 + 24)) >> 4;
  }

LABEL_7:
  (*(*v3 + 40))(*(a1 + 8), a2);
  v4 = v3[15];
  if (*(v4 + 92) != v2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v10 = v4 + 96;
  return (*(*v10 + 32) - *(*v10 + 24)) >> 4;
}

float sub_1AE6DA478@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2;
  v5 = *(a1 + 8);
  v6 = v5[15];
  v7 = *(v6 + 92);
  if (v7 == a2)
  {
    v8 = *(v6 + 96);
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = a2 + 1;
    v10 = *(v6 + 8);
    if (v9 >= (*(v6 + 16) - v10) >> 3)
    {
      goto LABEL_7;
    }

    v8 = *(v10 + 8 * v9);
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v11 = *(v8 + 56);
  if (v11)
  {
    *(v8 + 56) = v11 | 8;
    if (v7 == a2)
    {
      goto LABEL_8;
    }

LABEL_10:
    v14 = (*(v6 + 8) + 8 * v3 + 8);
    goto LABEL_11;
  }

LABEL_7:
  (*(*v5 + 64))(&v17, *(a1 + 8), a2);
  v12 = v17;
  v13 = sub_1AE6CE5A0(v5[15], v3);
  *v13 = v12;
  v13[14] |= 9u;
  v6 = v5[15];
  if (*(v6 + 92) != v3)
  {
    goto LABEL_10;
  }

LABEL_8:
  v14 = (v6 + 96);
LABEL_11:
  v15 = *v14;
  result = *v15;
  *a3 = *v15;
  return result;
}

uint64_t sub_1AE6DA598(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 60) & 1) == 0)
  {
    if ((*(*v1 + 24))(*(a1 + 8), 4))
    {
      *(v1 + 60) = 1;
    }

    else if ((*(v1 + 60) & 1) == 0)
    {
      v2 = (*(*v1 + 56))(v1);
      if (v2 != -1)
      {
        *(v1 + 64) = v2;
        *(v1 + 60) = 1;
        if (*(v1 + 68) <= v2)
        {
          *(v1 + 68) = v2 + 1;
        }
      }
    }
  }

  return *(v1 + 64);
}

uint64_t sub_1AE6DA690(uint64_t result, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(result + 8);
  v6 = v5[15];
  v7 = *(v6 + 92);
  if (v7 == a2)
  {
    v8 = *(v6 + 96);
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = a2 + 1;
    v10 = *(v6 + 8);
    if (v9 >= (*(v6 + 16) - v10) >> 3)
    {
      goto LABEL_7;
    }

    v8 = *(v10 + 8 * v9);
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v11 = *(v8 + 56);
  if ((v11 & 2) != 0)
  {
    *(v8 + 56) = v11 | 8;
    if (v7 == a2)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

LABEL_7:
  result = (*(*v5 + 40))(*(result + 8), a2);
  v6 = v5[15];
  if (*(v6 + 92) == v4)
  {
LABEL_8:
    v12 = (v6 + 96);
    goto LABEL_11;
  }

LABEL_10:
  v12 = (*(v6 + 8) + 8 * v4 + 8);
LABEL_11:
  v13 = *v12;
  v16 = *(v13 + 60);
  v14 = (v13 + 60);
  v15 = v16;
  v17 = *(v14 - 9);
  v18 = (*(v14 - 7) - v17) >> 4;
  if (*(v14 - 7) == v17)
  {
    v17 = 0;
  }

  *a3 = 0;
  a3[1] = v17;
  a3[2] = v18;
  a3[3] = v14;
  *v14 = v15 + 1;
  return result;
}

BOOL sub_1AE6DA88C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 68);
  if (*(a1 + 24) < v2)
  {
    return 0;
  }

  v6 = *(v1 + 96);
  v5 = *(v1 + 100);
  if (v6 <= v5)
  {
    v44 = v6;
    if (*(v1 + 104) == 1)
    {
      v45 = *(v1 + 72);
      v46 = (v5 + 1);
      v47 = v46 - v6;
      v48 = v6 + 1;
      do
      {
        if (((*(v45 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
        {
          goto LABEL_63;
        }

        ++v44;
        *(v1 + 96) = v48++;
        --v47;
      }

      while (v47);
      v6 = v46;
      if (v46 < v2)
      {
        goto LABEL_8;
      }

      return 1;
    }

    if (*(v1 + 112))
    {
      if (*(v1 + 128) == 1)
      {
        v49 = *(v1 + 120);
        v50 = *(v49 + 92);
        v51 = (v5 + 1);
        v52 = v51 - v6;
        v53 = v6 + 1;
        v54 = 8 * v6 + 8;
        do
        {
          v55 = (v49 + 96);
          if (v50 != v44)
          {
            v56 = *(v49 + 8);
            if (v44 + 1 >= (*(v49 + 16) - v56) >> 3)
            {
              goto LABEL_63;
            }

            v55 = (v56 + v54);
          }

          if (!*v55)
          {
            goto LABEL_63;
          }

          ++v44;
          *(v1 + 96) = v53++;
          v54 += 8;
          --v52;
        }

        while (v52);
        v6 = v51;
        if (v51 < v2)
        {
          goto LABEL_8;
        }

        return 1;
      }

      goto LABEL_4;
    }

    v57 = *(v1 + 72);
    v58 = (v5 + 1);
    v59 = v58 - v6;
    v60 = v6 + 1;
    while (((*(v57 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v44) & 1) != 0)
    {
      ++v44;
      *(v1 + 96) = v60++;
      if (!--v59)
      {
        v6 = v58;
        goto LABEL_4;
      }
    }

LABEL_63:
    v6 = v44;
    if (v44 >= v2)
    {
      return 1;
    }

    while (1)
    {
LABEL_8:
      v7 = *(a1 + 8);
      v8 = sub_1AE6CE5A0(*(*(v7 + 8) + 120), v6);
      ++*(v8 + 60);
      v9 = *(v7 + 8);
      v10 = v9[15];
      if (*(v10 + 92) == v6)
      {
        v11 = *(v10 + 96);
        if (!v11)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = v6 + 1;
        v14 = v10 + 8;
        v13 = *(v10 + 8);
        if (v12 >= (*(v14 + 8) - v13) >> 3 || (v11 = *(v13 + 8 * v12)) == 0)
        {
LABEL_14:
          (*(*v9 + 40))(v9, v6);
          goto LABEL_16;
        }
      }

      v15 = *(v11 + 56);
      if ((v15 & 2) == 0)
      {
        goto LABEL_14;
      }

      *(v11 + 56) = v15 | 8;
LABEL_16:
      v16 = *(v8 + 24);
      v17 = *(a1 + 16);
      v18 = *(v8 + 32) - v16;
      if (v18)
      {
        v19 = v18 >> 4;
        v20 = *(v17 + 68);
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v21 = (v16 + 12);
        do
        {
          v23 = *v21;
          v21 += 4;
          v22 = v23;
          if (v20 <= v23)
          {
            v20 = v22 + 1;
            *(v17 + 68) = v22 + 1;
          }

          --v19;
        }

        while (v19);
      }

      sub_1AE6CEAB0(v17, v6);
      v24 = *(a1 + 24);
      v25 = *(a1 + 16);
      v26 = *(v25 + 68);
      --*(v8 + 60);
      result = v24 >= v26;
      if (v24 < v26)
      {
        return result;
      }

      v6 = *(v25 + 96);
      v27 = *(v25 + 100);
      if (v6 <= v27)
      {
        v28 = v6;
        if (*(v25 + 104) == 1)
        {
          v29 = *(v25 + 72);
          v30 = (v27 + 1);
          v31 = v30 - v6;
          v32 = v6 + 1;
          while (((*(v29 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v28) & 1) != 0)
          {
            ++v28;
            *(v25 + 96) = v32++;
            if (!--v31)
            {
              goto LABEL_42;
            }
          }
        }

        else if (*(v25 + 112))
        {
          if (*(v25 + 128) != 1)
          {
            goto LABEL_7;
          }

          v33 = *(v25 + 120);
          v34 = *(v33 + 92);
          v35 = (v27 + 1);
          v36 = v35 - v6;
          v37 = v6 + 1;
          v38 = 8 * v6 + 8;
          while (1)
          {
            v39 = (v33 + 96);
            if (v34 != v28)
            {
              v40 = *(v33 + 8);
              if (v28 + 1 >= (*(v33 + 16) - v40) >> 3)
              {
                break;
              }

              v39 = (v40 + v38);
            }

            if (!*v39)
            {
              break;
            }

            ++v28;
            *(v25 + 96) = v37++;
            v38 += 8;
            if (!--v36)
            {
              v6 = v35;
              goto LABEL_7;
            }
          }
        }

        else
        {
          v41 = *(v25 + 72);
          v30 = (v27 + 1);
          v42 = v30 - v6;
          v43 = v6 + 1;
          while (((*(v41 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v28) & 1) != 0)
          {
            ++v28;
            *(v25 + 96) = v43++;
            if (!--v42)
            {
LABEL_42:
              v6 = v30;
              goto LABEL_7;
            }
          }
        }

        v6 = v28;
      }

LABEL_7:
      if (v6 >= v26)
      {
        return 1;
      }
    }
  }

LABEL_4:
  if (v6 < v2)
  {
    goto LABEL_8;
  }

  return 1;
}

void sub_1AE6DAD9C(_Unwind_Exception *a1)
{
  v4 = sub_1AE6DADB8(v2);
  MEMORY[0x1B2706400](v4, v1);
  _Unwind_Resume(a1);
}

void *sub_1AE6DADB8(void *result)
{
  *result = &unk_1F242D560;
  v1 = result[1];
  v2 = v1[14] - 1;
  v1[14] = v2;
  if (!v2)
  {
    v3 = result;
    (*(*v1 + 8))(v1);
    return v3;
  }

  return result;
}

void sub_1AE6DAE3C(void *a1)
{
  *a1 = &unk_1F242D560;
  v2 = a1[1];
  v3 = v2[14] - 1;
  v2[14] = v3;
  if (!v3)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B2706400);
}

void sub_1AE6DB068(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    v7 = *a1;
    *a1 = 0;
    if (v7)
    {
      sub_1AE6C8078((a1 + 16), v7, *(a1 + 8));
    }

    *(a1 + 8) = 0;
    return;
  }

  v4 = sub_1AE6C7B0C((a1 + 16), a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    sub_1AE6C8078((a1 + 16), v5, *(a1 + 8));
    v6 = *a1;
  }

  else
  {
    v6 = v4;
  }

  *(a1 + 8) = a2;
  bzero(v6, 8 * a2);
  v10 = *(a1 + 24);
  v9 = a1 + 24;
  v8 = v10;
  if (v10)
  {
    v11 = v8[1];
    v12 = a2 - 1;
    if ((a2 & (a2 - 1)) == 0)
    {
      v13 = v11 & v12;
      v6[v13] = v9;
      while (1)
      {
        v14 = *v8;
        if (!*v8)
        {
          break;
        }

        v15 = v14[1] & v12;
        if (v15 == v13)
        {
          v8 = *v8;
        }

        else if (v6[v15])
        {
          *v8 = *v14;
          *v14 = *v6[v15];
          *v6[v15] = v14;
        }

        else
        {
          v6[v15] = v8;
          v8 = v14;
          v13 = v15;
        }
      }

      return;
    }

    if (v11 >= a2)
    {
      v11 %= a2;
    }

    v6[v11] = v9;
    v16 = *v8;
    if (*v8)
    {
      do
      {
        v17 = v16[1];
        if (v17 >= a2)
        {
          v17 %= a2;
        }

        if (v17 != v11)
        {
          if (!v6[v17])
          {
            v6[v17] = v8;
            goto LABEL_23;
          }

          *v8 = *v16;
          *v16 = *v6[v17];
          *v6[v17] = v16;
          v16 = v8;
        }

        v17 = v11;
LABEL_23:
        v8 = v16;
        v16 = *v16;
        v11 = v17;
      }

      while (v16);
    }
  }
}

uint64_t sub_1AE6DB1F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = sub_1AE6C742C(*(a1 + 32));
      v2[3] = v4[7];
      v4[7] = v2;
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 32);
  v6 = v5[1] - 1;
  v5[1] = v6;
  if (!v6)
  {
    v7 = v5[2];
    v8 = v5[3];
    if (v8 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v7[v9];
        if (v10)
        {
          (*(*v10 + 8))(v7[v9]);
          v7 = v5[2];
          v8 = v5[3];
        }

        ++v9;
      }

      while (v9 < (v8 - v7) >> 3);
    }

    if (v7)
    {
      v5[3] = v7;
      operator delete(v7);
    }

    MEMORY[0x1B2706400](v5, 0x1080C40B69A5871);
  }

  return sub_1AE6C70CC(a1);
}

uint64_t sub_1AE6DB2EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!a5)
  {
    operator new();
  }

  *a1 = a5;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5 == 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (a3)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 60) = v5;
  *(a1 + 64) = v6;
  *(a1 + 68) = 0xFFFFFFFF00000000;
  return a1;
}

void sub_1AE6DB40C(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v3, 0x10E1C4003B7394BLL);
  MEMORY[0x1B2706400](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6DB444(uint64_t a1)
{
  if (*(a1 + 12) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      MEMORY[0x1B2706400](v2, 0x1020C405F07FB98);
    }
  }

  sub_1AE673B40(*(a1 + 24));
  return a1;
}

uint64_t sub_1AE6DB4C8(void *a1, void *a2)
{
  v4 = (*(**a1 + 24))(*a1, 0);
  v5 = (*(**a2 + 24))(*a2, 0);
  if (v4 == 1 && ((*(**a1 + 48))() & 0x20) != 0)
  {
    return 1;
  }

  if (!v5 && ((*(**a2 + 48))() & 0x10) != 0)
  {
    return 0;
  }

  if (((*(**a1 + 48))() & 0x20) == 0 || (v6 = (*(**a1 + 24))(*a1, 1), result = 1, v6 != 1))
  {
    if (((*(**a2 + 48))() & 0x10) == 0)
    {
      return 3;
    }

    result = (*(**a2 + 24))(*a2, 1);
    if (result)
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_1AE6DB690(_BYTE *a1)
{
  v1 = a1[8];
  if ((v1 & 1) == 0)
  {
    v3 = (*(**a1 + 48))(*a1) & 0x30;
    v1 = v3 != 0;
    a1[8] = v3 != 0;
    if (!v3)
    {
      v7 = 5;
      strcpy(__p, "FATAL");
      v4 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
      sub_1AE5DB608(v4, ": ", 2);
      sub_1AE5DB608(MEMORY[0x1E69E5300], "LookAheadMatcher: No look-ahead matcher defined", 47);
      sub_1AE696D18();
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      v1 = a1[8];
    }
  }

  return v1 & 1;
}

void sub_1AE6DB76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6DB794(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B2706400](v2, 0x1020C405F07FB98);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B2706400](v3, 0x1020C405F07FB98);
  }

  return a1;
}

void sub_1AE6DB850(uint64_t a1@<X0>, int a2@<W1>, float *a3@<X8>)
{
  v5 = (*(*(a1 + 176) + 104) + 20 * a2);
  v6 = *v5;
  (*(****(a1 + 144) + 96))(&v22 + 4);
  v7.n128_u32[0] = HIDWORD(v22);
  v19 = *(&v22 + 1);
  v23 = 2139095039;
  if (*(&v22 + 1) == 3.4028e38)
  {
    goto LABEL_3;
  }

  v8 = v5[1];
  (*(****(a1 + 152) + 96))(&v22);
  v7.n128_u32[0] = v22;
  v19 = *&v22;
  v23 = 2139095039;
  if (*&v22 == 3.4028e38)
  {
    goto LABEL_3;
  }

  v9 = *(a1 + 136);
  LOBYTE(v19) = *(v5 + 8);
  v20 = v5[3];
  v7.n128_u32[0] = v20;
  v21 = v5[4];
  sub_1AE6DBB68(v9, v6, v8, &v19, v7);
  v10 = *(a1 + 136);
  v11 = *(v10 + 72);
  v12 = *(&v22 + 1);
  if ((v11 & 0x40) != 0)
  {
    v19 = *(&v22 + 1);
    v23 = 2139095039;
    if (*(&v22 + 1) != 3.4028e38)
    {
      v13 = *(v10 + 84);
      if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
      {
        v18 = v13;
        v16 = __cxa_guard_acquire(&qword_1ED9AC728);
        v13 = v18;
        if (v16)
        {
          dword_1ED9AC720 = -8388609;
          __cxa_guard_release(&qword_1ED9AC728);
          v13 = v18;
        }
      }

      if (v12 != *&dword_1ED9AC720)
      {
        if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
        {
          v12 = v13;
          v17 = __cxa_guard_acquire(&qword_1ED9AC728);
          v13 = v12;
          if (v17)
          {
            dword_1ED9AC720 = -8388609;
            __cxa_guard_release(&qword_1ED9AC728);
            v13 = v12;
          }
        }

        if (v13 != *&dword_1ED9AC720 && v13 != 3.4028e38)
        {
          v14 = *(&v22 + 1) - v13;
          if (*(&v22 + 1) == 3.4028e38)
          {
            v12 = 3.4028e38;
          }

          else
          {
            v12 = v14;
          }
        }
      }

      *(&v22 + 1) = v12;
      v11 = *(v10 + 72);
    }
  }

  if ((v11 & 0x80) != 0)
  {
    v19 = v12;
    v23 = 2139095039;
    if (v12 != 3.4028e38 && *(v10 + 96) != -1)
    {
      HIDWORD(v22) = 2139095039;
      v12 = 3.4028e38;
    }
  }

  if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC728))
  {
    dword_1ED9AC720 = -8388609;
    __cxa_guard_release(&qword_1ED9AC728);
  }

  if (v12 != *&dword_1ED9AC720)
  {
    v15 = *&v22;
    if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC728))
    {
      dword_1ED9AC720 = -8388609;
      __cxa_guard_release(&qword_1ED9AC728);
    }

    if (v15 != *&dword_1ED9AC720)
    {
      v7.n128_f32[0] = *&v22 + *(&v22 + 1);
      if (*(&v22 + 1) == 3.4028e38 || *&v22 == 3.4028e38)
      {
        v7.n128_f32[0] = 3.4028e38;
      }

LABEL_3:
      *a3 = v7.n128_f32[0];
    }
  }
}

void sub_1AE6DBB68(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, __n128 a5)
{
  *(a1 + 88) = *a4;
  *(a1 + 92) = *(a4 + 1);
  *(a1 + 96) = *(a4 + 2);
  v8 = *a4;
  *(a1 + 80) = v8;
  a5.n128_u32[0] = *(a4 + 1);
  *(a1 + 84) = a5.n128_u32[0];
  if (*(a1 + 24) != __PAIR64__(a3, a2) || v8 != *(a1 + 32))
  {
    *(a1 + 24) = a2;
    *(a1 + 28) = a3;
    *(a1 + 32) = *a4;
    v9 = (*(**(a1 + 16) + 32))(*(a1 + 16), a2);
    v10 = (*(**(a1 + 16) + 48))(*(a1 + 16), a2);
    (*(**(a1 + 16) + 24))(&v15);
    v16 = v15;
    HIDWORD(v15) = 2139095039;
    a5.n128_u32[0] = v15;
    *(a1 + 33) = v9 == v10 && *&v15 == 3.4028e38;
    *(a1 + 34) = v10 == 0;
  }

  if ((*(a1 + 72) & 0x80) != 0)
  {
    v11 = 112;
    if (*(a1 + 40) == 1)
    {
      v11 = 104;
      v12 = a2;
    }

    else
    {
      v12 = a3;
    }

    *(a1 + 280) = (*(**(a1 + v11) + 32))(*(a1 + v11), v12, a5);
    v13 = *(a1 + 96);
    sub_1AE673B40(*(a1 + 144));
    v14 = *(a1 + 224);
    *(a1 + 136) = a1 + 144;
    *(a1 + 144) = 0u;
    *(a1 + 160) = -1;
    sub_1AE673B40(v14);
    *(a1 + 216) = a1 + 224;
    *(a1 + 224) = 0u;
    *(a1 + 240) = -1;
    if (v13 != -1)
    {
      sub_1AE6DBDA8(a1 + 120, v13);

      sub_1AE6DBDA8(a1 + 200, v13);
    }
  }
}

void sub_1AE6DBDA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = *(a1 + 24);
    if (!v2)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v3 = v2;
        v4 = *(v2 + 28);
        if (v4 <= a2)
        {
          break;
        }

        v2 = *v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      if (v4 >= a2)
      {
        break;
      }

      v2 = v3[1];
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    v5 = *(a1 + 40);
    if (v5 == -1 || v5 > a2)
    {
      *(a1 + 40) = a2;
    }

    v7 = *(a1 + 44);
    if (v7 == -1 || v7 < a2)
    {
      *(a1 + 44) = a2;
    }
  }

  else
  {
    v11 = 5;
    strcpy(__p, "FATAL");
    v9 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
    sub_1AE5DB608(v9, ": ", 2);
    sub_1AE5DB608(MEMORY[0x1E69E5300], "MultiEpsMatcher: Bad multi-eps label: 0", 39);
    sub_1AE696D18();
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1AE6DBF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6DBF30(uint64_t a1)
{
  result = (*(**(a1 + 160) + 16))(*(a1 + 160));
  if (result != -1)
  {
    v3 = result;
    result = (*(**(a1 + 168) + 16))(*(a1 + 168));
    if (result != -1)
    {
      v10 = __PAIR64__(result, v3);
      v11 = 0;
      v12 = 0xFFFFFFFF00000000;
      v4 = *(a1 + 176);
      *(v4 + 128) = &v10;
      v5 = sub_1AE6DC064((v4 + 32));
      if (v5)
      {
        return *(v5 + 4);
      }

      else
      {
        v6 = *(v4 + 112);
        v7 = *(v4 + 120);
        v8 = -858993459 * ((v6 - *(v4 + 104)) >> 2);
        v13 = -858993459 * ((v6 - *(v4 + 104)) >> 2);
        if (v6 >= v7)
        {
          v9 = sub_1AE6DC1A4((v4 + 104), &v10);
        }

        else
        {
          *v6 = v10;
          *(v6 + 8) = v11;
          *(v6 + 12) = v12;
          v9 = v6 + 20;
        }

        *(v4 + 112) = v9;
        sub_1AE6DC2F4((v4 + 32), v8, &v13);
        return v8;
      }
    }
  }

  return result;
}

uint64_t **sub_1AE6DC064(void *a1)
{
  v1 = a1[1];
  if (!*&v1)
  {
    return 0;
  }

  v3 = *(a1[6] + 128);
  v4 = *v3 + 7853 * v3[1] + 7867 * (v3[4] ^ __ROR8__(v3[3] ^ __ROR8__(*(v3 + 8), 59), 59));
  v5 = vcnt_s8(v1);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v4;
    if (v4 >= *&v1)
    {
      v6 = v4 % *&v1;
    }
  }

  else
  {
    v6 = (*&v1 - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (*v7)
  {
    if (v5.u32[0] < 2uLL)
    {
      v9 = *&v1 - 1;
      while (1)
      {
        v10 = v8[1];
        if (v10 == v4)
        {
          if (sub_1AE6DC670(a1 + 8, *(v8 + 4), 0xFFFFFFFF))
          {
            return v8;
          }
        }

        else if ((v10 & v9) != v6)
        {
          return 0;
        }

        v8 = *v8;
        if (!v8)
        {
          return v8;
        }
      }
    }

    do
    {
      v11 = v8[1];
      if (v11 == v4)
      {
        if (sub_1AE6DC670(a1 + 8, *(v8 + 4), 0xFFFFFFFF))
        {
          return v8;
        }
      }

      else
      {
        if (v11 >= *&v1)
        {
          v11 %= *&v1;
        }

        if (v11 != v6)
        {
          return 0;
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  return v8;
}

uint64_t sub_1AE6DC1A4(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 2);
  v7 = v6 + 1;
  if (v6 + 1 > 0xCCCCCCCCCCCCCCCLL)
  {
    sub_1AE5CBB70();
  }

  if (0x999999999999999ALL * ((a1[2] - v3) >> 2) > v7)
  {
    v7 = 0x999999999999999ALL * ((a1[2] - v3) >> 2);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - v3) >> 2) >= 0x666666666666666)
  {
    v8 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    if (v8 <= 0xCCCCCCCCCCCCCCCLL)
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v9 = 4 * ((v4 - v3) >> 2);
  *v9 = *a2;
  *(v9 + 8) = *(a2 + 8);
  *(v9 + 12) = *(a2 + 12);
  *(v9 + 16) = *(a2 + 16);
  v10 = (v9 - (v4 - v3));
  if (v3 != v4)
  {
    v11 = 4 * ((v4 - v3) >> 2) - (v4 - v3);
    do
    {
      *v11 = *v3;
      *(v11 + 8) = v3[8];
      *(v11 + 12) = *(v3 + 3);
      *(v11 + 16) = *(v3 + 4);
      v3 += 20;
      v11 += 20;
    }

    while (v3 != v4);
    v3 = *a1;
  }

  *a1 = v10;
  a1[1] = (v9 + 20);
  a1[2] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 20 * v6 + 20;
}

void sub_1AE6DC2F4(float *a1, uint64_t a2, _DWORD *a3)
{
  v5 = a2;
  if (a2 < -1)
  {
    v9 = 0;
    v10 = *(a1 + 1);
    if (!v10)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v7 = *(a1 + 6);
    if (a2 == -1)
    {
      v8 = *(v7 + 128);
    }

    else
    {
      v8 = (*(v7 + 104) + 20 * a2);
    }

    v9 = *v8 + 7853 * v8[1] + 7867 * (v8[4] ^ __ROR8__(v8[3] ^ __ROR8__(*(v8 + 8), 59), 59));
    v10 = *(a1 + 1);
    if (!v10)
    {
      goto LABEL_27;
    }
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v3 = v9;
    if (v9 >= v10)
    {
      v3 = v9 % v10;
    }
  }

  else
  {
    v3 = (v10 - 1) & v9;
  }

  v12 = *(*a1 + 8 * v3);
  if (v12)
  {
    v13 = *v12;
    if (*v12)
    {
      if (v11.u32[0] < 2uLL)
      {
        while (1)
        {
          v14 = v13[1];
          if (v14 == v9)
          {
            if (sub_1AE6DC670(a1 + 8, *(v13 + 4), v5))
            {
              return;
            }
          }

          else if ((v14 & (v10 - 1)) != v3)
          {
            goto LABEL_27;
          }

          v13 = *v13;
          if (!v13)
          {
            goto LABEL_27;
          }
        }
      }

      do
      {
        v15 = v13[1];
        if (v15 == v9)
        {
          if (sub_1AE6DC670(a1 + 8, *(v13 + 4), v5))
          {
            return;
          }
        }

        else
        {
          if (v15 >= v10)
          {
            v15 %= v10;
          }

          if (v15 != v3)
          {
            break;
          }
        }

        v13 = *v13;
      }

      while (v13);
    }
  }

LABEL_27:
  v16 = sub_1AE6C742C(*(a1 + 4));
  v17 = v16[7];
  if (v17)
  {
    v16[7] = *(v17 + 24);
  }

  else
  {
    v17 = sub_1AE6CCAEC(v16 + 1);
    *(v17 + 24) = 0;
  }

  *v17 = 0;
  *(v17 + 8) = v9;
  *(v17 + 16) = *a3;
  v18 = (*(a1 + 5) + 1);
  v19 = a1[14];
  if (!v10 || (v19 * v10) < v18)
  {
    v20 = 1;
    if (v10 >= 3)
    {
      v20 = (v10 & (v10 - 1)) != 0;
    }

    v21 = v20 | (2 * v10);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      prime = v22;
    }

    else
    {
      prime = v21;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v24 = *(a1 + 2);
    if (prime > *&v24)
    {
      goto LABEL_42;
    }

    if (prime < *&v24)
    {
      v25 = vcvtps_u32_f32(*(a1 + 5) / a1[14]);
      if (*&v24 < 3uLL || (v26 = vcnt_s8(v24), v26.i16[0] = vaddlv_u8(v26), v26.u32[0] > 1uLL))
      {
        v25 = std::__next_prime(v25);
      }

      else
      {
        v27 = 1 << -__clz(v25 - 1);
        if (v25 >= 2)
        {
          v25 = v27;
        }
      }

      if (prime <= v25)
      {
        prime = v25;
      }

      if (prime < *&v24)
      {
LABEL_42:
        sub_1AE6DB068(a1, prime);
      }
    }

    v10 = *(a1 + 1);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v3 = v9 % v10;
      }

      else
      {
        v3 = v9;
      }
    }

    else
    {
      v3 = (v10 - 1) & v9;
    }
  }

  v28 = *a1;
  v29 = *(*a1 + 8 * v3);
  if (v29)
  {
    *v17 = *v29;
  }

  else
  {
    *v17 = *(a1 + 3);
    *(a1 + 3) = v17;
    *(v28 + 8 * v3) = a1 + 6;
    if (!*v17)
    {
      goto LABEL_61;
    }

    v30 = *(*v17 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v30 >= v10)
      {
        v30 %= v10;
      }

      v29 = (v28 + 8 * v30);
    }

    else
    {
      v29 = (v28 + 8 * (v30 & (v10 - 1)));
    }
  }

  *v29 = v17;
LABEL_61:
  ++*(a1 + 5);
}

void sub_1AE6DC65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE6CCBFC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1AE6DC670(void *a1, unsigned int a2, unsigned int a3)
{
  if (a2 < -1 || a3 < -1)
  {
    return a2 == a3;
  }

  v3 = *a1;
  if (a2 == -1)
  {
    v4 = v3[16];
  }

  else
  {
    v4 = v3[13] + 20 * a2;
  }

  v6 = v3[1];
  if (a3 != -1)
  {
    v7 = v3[13] + 20 * a3;
    v8 = v4 == v7;
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_20:
    if (!v8)
    {
      goto LABEL_10;
    }

    return 1;
  }

  v7 = v3[16];
  v8 = v4 == v7;
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_9:
  if (v8)
  {
    return 1;
  }

LABEL_10:
  v9 = *v4 == *v7 && *(v4 + 4) == *(v7 + 4);
  return v9 && *(v4 + 8) == *(v7 + 8) && *(v4 + 12) == *(v7 + 12) && *(v4 + 16) == *(v7 + 16);
}

uint64_t sub_1AE6DC758(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(****(a1 + 144) + 24))(***(a1 + 144), 0) == a3)
  {
    (*(****(a1 + 152) + 24))(***(a1 + 152), 0);
  }

  return 0;
}

void sub_1AE6DC7F0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = (*(*(a1 + 176) + 104) + 20 * a2);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + 136);
  LOBYTE(__p) = *(v5 + 8);
  HIDWORD(__p) = v5[3];
  a3.n128_u32[0] = HIDWORD(__p);
  v20 = v5[4];
  sub_1AE6DBB68(v8, v6, v7, &__p, a3);
  v9 = *(a1 + 184);
  if (!v9)
  {
    goto LABEL_24;
  }

  if (v9 != 1)
  {
    v12 = (*(****(a1 + 144) + 104))(***(a1 + 144), v6);
    v13 = (*(****(a1 + 152) + 104))(***(a1 + 152), v7);
    if (v12 == -1 && v13 == -1)
    {
      v21 = 5;
      strcpy(&__p, "FATAL");
      v18 = sub_1AE5DB608(MEMORY[0x1E69E5300], &__p, 5);
      sub_1AE5DB608(v18, ": ", 2);
      sub_1AE5DB608(MEMORY[0x1E69E5300], "ComposeFst: both sides can't require match", 42);
      sub_1AE696D18();
      if (v21 < 0)
      {
        operator delete(__p);
      }

      *(a1 + 8) |= 4uLL;
    }

    else
    {
      v16 = v13 == -1 || v12 <= v13;
      if (v12 == -1 || !v16)
      {
        goto LABEL_3;
      }
    }

LABEL_24:
    sub_1AE6DCA10(a1, a2, v7, *(a1 + 160), v6, *(a1 + 152), 1);
    return;
  }

LABEL_3:
  v10 = *(a1 + 168);
  v11 = *(a1 + 144);

  sub_1AE6DCA10(a1, a2, v6, v10, v7, v11, 0);
}

void sub_1AE6DC9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AE6DCA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7)
{
  v7 = a7;
  v11 = a3;
  (*(***a6 + 56))(**a6, a3);
  a6[18] = v11;
  LODWORD(v19) = v7 - 1;
  HIDWORD(v19) = v7 << 31 >> 31;
  v20 = 0;
  v21 = a5;
  sub_1AE6DCC74(a1, a2, a6, &v19, v7);
  v18 = 0;
  (*(*a4 + 120))(a4, a5, v16);
  while (1)
  {
    if (!v16[0])
    {
      v15 = v18;
      if (v18 >= v16[2])
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if ((*(*v16[0] + 16))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      v15 = v18;
LABEL_10:
      v14 = (v16[1] + 16 * v15);
      goto LABEL_11;
    }

    v14 = (*(*v16[0] + 24))();
LABEL_11:
    sub_1AE6DCC74(a1, a2, a6, v14, v7);
    if (v16[0])
    {
      (*(*v16[0] + 32))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    goto LABEL_17;
  }

LABEL_15:
  if (v17)
  {
    --*v17;
  }

LABEL_17:
  sub_1AE6CE468(a1, a2);
}

void sub_1AE6DCC20(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  if (!a10)
  {
    if (a13)
    {
      --*a13;
    }

    _Unwind_Resume(exception_object);
  }

  (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6DCC74(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4, int a5)
{
  v5 = a5;
  v8 = a2;
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = sub_1AE6DCEBC(a3, *(a4 + v10));
  if (result && (a3[76] & 1) == 0)
  {
    if (v5)
    {
      do
      {
        v12 = a3 + 60;
        if ((a3[56] & 1) == 0)
        {
          v12 = (*(***a3 + 80))(**a3);
        }

        v20 = *v12;
        v21 = *(v12 + 2);
        v22 = *(v12 + 3);
        v17 = *a4;
        v18 = *(a4 + 2);
        v19 = *(a4 + 3);
        sub_1AE6DD048(v14, *(a1 + 136), &v17, &v20);
        if (v14[0] != 255 || (v24 = v15, v23 = 2139095039, v15 != 3.4028e38) || v16 != -1)
        {
          sub_1AE6DF430(a1, v8, &v17, &v20, v14);
        }

        result = sub_1AE6DD17C(a3);
      }

      while ((a3[76] & 1) == 0);
    }

    else
    {
      do
      {
        v13 = a3 + 60;
        if ((a3[56] & 1) == 0)
        {
          v13 = (*(***a3 + 80))(**a3);
        }

        v20 = *v13;
        v21 = *(v13 + 2);
        v22 = *(v13 + 3);
        v17 = *a4;
        v18 = *(a4 + 2);
        v19 = *(a4 + 3);
        sub_1AE6DD048(v14, *(a1 + 136), &v20, &v17);
        if (v14[0] != 255 || (v24 = v15, v23 = 2139095039, v15 != 3.4028e38) || v16 != -1)
        {
          sub_1AE6DF430(a1, v8, &v20, &v17, v14);
        }

        result = sub_1AE6DD17C(a3);
      }

      while (a3[76] != 1);
    }
  }

  return result;
}

uint64_t sub_1AE6DCEBC(void **a1, unsigned int a2)
{
  v3 = (a1 + 3);
  a1[6] = a1 + 3;
  *(a1 + 56) = 0;
  if (a2 == -1)
  {
    if (a1[1])
    {
      v13 = a1[2];
      while (1)
      {
        a1[6] = v13;
        if (v13 == v3)
        {
          break;
        }

        v14 = (*(***a1 + 64))(**a1, *(v13 + 7));
        v15 = a1[6];
        if (v14)
        {
          if (v15 == v3)
          {
            break;
          }

          result = 1;
          goto LABEL_21;
        }

        v16 = v15[1];
        if (v16)
        {
          do
          {
            v13 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v13 = v15[2];
            v17 = *v13 == v15;
            v15 = v13;
          }

          while (!v17);
        }
      }
    }

    v11 = *(***a1 + 64);
  }

  else
  {
    if (a2 && (a1[1] & 2) != 0)
    {
      v4 = *(a1 + 10);
      if (v4 != -1 && v4 <= a2 && *(a1 + 11) >= a2)
      {
        v6 = *v3;
        if (*v3)
        {
          v7 = (a1 + 3);
          do
          {
            v8 = *(v6 + 28);
            v9 = v8 >= a2;
            v10 = v8 < a2;
            if (v9)
            {
              v7 = v6;
            }

            v6 = *(v6 + 8 * v10);
          }

          while (v6);
          if (v7 != v3 && *(v7 + 7) <= a2)
          {
            result = 1;
            *(a1 + 56) = 1;
            goto LABEL_21;
          }
        }
      }
    }

    v11 = *(***a1 + 64);
  }

  result = v11();
LABEL_21:
  *(a1 + 76) = result ^ 1;
  return result;
}

void sub_1AE6DD048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a2 + 72) & 0x80) == 0)
  {
    sub_1AE6DD304(v13, a2, a3, a4);
    v5 = v13[0];
LABEL_3:
    *a1 = v5;
    *(a1 + 4) = v14;
    *(a1 + 8) = -1;
    return;
  }

  v6 = *(a2 + 96);
  if (v6 == -1)
  {
    v9 = a3;
    v10 = a4;
    sub_1AE6DD304(v13, a2, a3, a4);
    v5 = v13[0];
    if (v13[0] == 255)
    {
      v16 = v14;
      v15 = 2139095039;
      if (v14 == 3.4028e38)
      {
        *a1 = -1;
        *(a1 + 4) = -2155872257;
        return;
      }
    }

    if ((*(a2 + 76) & 1) == 0)
    {
      goto LABEL_3;
    }

    if (*(a2 + 40) == 1)
    {
      v11 = v9;
      v12 = v10;
    }

    else
    {
      v11 = v10;
      v12 = v9;
    }

    sub_1AE6DFBBC(a1, a2, v11, v12, v13);
  }

  else
  {
    if (*(a2 + 40) != 1)
    {
      v7 = a3;
      a3 = a4;
      a4 = v7;
    }

    sub_1AE6DFA40(a1, a2, a3, a4, v6);
  }
}

uint64_t sub_1AE6DD17C(uint64_t result)
{
  v1 = result;
  if (*(result + 56))
  {
    v2 = 1;
LABEL_19:
    *(v1 + 76) = v2;
  }

  else
  {
    (*(***result + 88))(**result);
    result = (*(***v1 + 72))(**v1);
    *(v1 + 76) = result;
    if (result)
    {
      v3 = v1 + 3;
      v4 = v1[6];
      if (v4 != v1 + 3)
      {
        v5 = v4[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v4[2];
            v7 = *v6 == v4;
            v4 = v6;
          }

          while (!v7);
        }

        while (1)
        {
          v1[6] = v6;
          if (v6 == v3)
          {
            goto LABEL_18;
          }

          result = (*(***v1 + 64))(**v1, *(v6 + 7));
          v8 = v1[6];
          if (result)
          {
            break;
          }

          v9 = v8[1];
          if (v9)
          {
            do
            {
              v6 = v9;
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            do
            {
              v6 = v8[2];
              v7 = *v6 == v8;
              v8 = v6;
            }

            while (!v7);
          }
        }

        if (v8 == v3)
        {
LABEL_18:
          result = (*(***v1 + 64))(**v1, 0xFFFFFFFFLL);
          v2 = result ^ 1;
          goto LABEL_19;
        }

        *(v1 + 76) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AE6DD304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 76) = 0;
  v7 = *(a3 + 4);
  if (v7 == -1)
  {
    if (*(a2 + 33))
    {
LABEL_14:
      result = 255;
      v12 = 3.4028e38;
      goto LABEL_46;
    }

    v43 = *(a2 + 34) ^ 1;
  }

  else if (*a4 == -1)
  {
    v9 = *(a2 + 32);
    if (*(a2 + 32))
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    v43 = v10;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }

    v43 = v8;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  if (*(a2 + 40) == 1)
  {
    v14 = a3;
    a3 = a4;
  }

  else
  {
    v14 = a4;
  }

  result = sub_1AE6DFE00(a2, v14, a3, &v43);
  if (result == 0xFF)
  {
    v12 = 3.4028e38;
    result = 255;
  }

  else
  {
    v12 = 0.0;
    if ((*(a2 + 72) & 0x40) != 0)
    {
      v15 = 0.0;
      if (*(a2 + 76) == 1)
      {
        v16 = *(a2 + 8 * (*(a2 + 64) != 1) + 48);
        v17 = result;
        v18 = sub_1AE6DB690(v16);
        result = v17;
        if (v18)
        {
          v15 = *(*v16 + 8);
        }
      }

      v19 = *(a2 + 84);
      v45 = v15;
      v44 = 2139095039;
      if (v15 == 3.4028e38)
      {
        result = 255;
        v12 = 3.4028e38;
      }

      else
      {
        v20 = *(a4 + 8);
        if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
        {
          v39 = result;
          v36 = v19;
          v26 = __cxa_guard_acquire(&qword_1ED9AC728);
          v19 = v36;
          v27 = v26;
          result = v39;
          if (v27)
          {
            dword_1ED9AC720 = -8388609;
            __cxa_guard_release(&qword_1ED9AC728);
            v19 = v36;
            result = v39;
          }
        }

        if (v20 != *&dword_1ED9AC720)
        {
          if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
          {
            v41 = result;
            v20 = v19;
            v32 = __cxa_guard_acquire(&qword_1ED9AC728);
            v19 = v20;
            v33 = v32;
            result = v41;
            if (v33)
            {
              dword_1ED9AC720 = -8388609;
              __cxa_guard_release(&qword_1ED9AC728);
              v19 = v20;
              result = v41;
            }
          }

          if (v15 != *&dword_1ED9AC720)
          {
            v21 = *(a4 + 8);
            v22 = v21 == 3.4028e38;
            v23 = v21 + v15;
            if (v22 || v15 == 3.4028e38)
            {
              v20 = 3.4028e38;
            }

            else
            {
              v20 = v23;
            }
          }
        }

        if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
        {
          v40 = result;
          v37 = v19;
          v28 = __cxa_guard_acquire(&qword_1ED9AC728);
          v19 = v37;
          v29 = v28;
          result = v40;
          if (v29)
          {
            dword_1ED9AC720 = -8388609;
            __cxa_guard_release(&qword_1ED9AC728);
            v19 = v37;
            result = v40;
          }
        }

        if (v20 != *&dword_1ED9AC720)
        {
          if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
          {
            v42 = result;
            v38 = v19;
            v34 = __cxa_guard_acquire(&qword_1ED9AC728);
            v19 = v38;
            v35 = v34;
            result = v42;
            if (v35)
            {
              dword_1ED9AC720 = -8388609;
              __cxa_guard_release(&qword_1ED9AC728);
              v19 = v38;
              result = v42;
            }
          }

          v24 = v20 - v19;
          if (v20 == 3.4028e38)
          {
            v24 = 3.4028e38;
          }

          if (v19 == 3.4028e38)
          {
            v25 = 3.4028e38;
          }

          else
          {
            v25 = v24;
          }

          if (v19 != *&dword_1ED9AC720)
          {
            v19 = v25;
          }
        }

        *(a4 + 8) = v19;
        if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
        {
          v30 = result;
          v31 = __cxa_guard_acquire(&qword_1ED9AC728);
          result = v30;
          if (v31)
          {
            dword_1ED9AC720 = -8388609;
            __cxa_guard_release(&qword_1ED9AC728);
            result = v30;
          }
        }

        v12 = floorf((v15 * 1024.0) + 0.5) * 0.00097656;
        if (v15 == *&dword_1ED9AC720 || v15 == 3.4028e38)
        {
          v12 = v15;
        }
      }
    }
  }

LABEL_46:
  *a1 = result;
  *(a1 + 4) = v12;
  return result;
}

void sub_1AE6DDB24(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v3, 0x10E0C401DE81863);
  sub_1AE6C6C70(v2);
  MEMORY[0x1B2706400](v2, v1);
  _Unwind_Resume(a1);
}

void sub_1AE6DDC0C(int8x8_t *a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a1 = 0;
  if (a2[1])
  {
    operator new();
  }

  a1[1] = 0;
  a1[2] = a1;
  a1[3] = a1;
  sub_1AE6DAED8(a1 + 4, a2[9], a1 + 2, a1 + 3);
}

void sub_1AE6DDD60(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 112) = v4;
    operator delete(v4);
  }

  sub_1AE6DDD88(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6DDD88(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = sub_1AE6C742C(*(a1 + 32));
      v2[3] = v4[7];
      v4[7] = v2;
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 32);
  v6 = v5[1] - 1;
  v5[1] = v6;
  if (!v6)
  {
    v7 = v5[2];
    v8 = v5[3];
    if (v8 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v7[v9];
        if (v10)
        {
          (*(*v10 + 8))(v7[v9]);
          v7 = v5[2];
          v8 = v5[3];
        }

        ++v9;
      }

      while (v9 < (v8 - v7) >> 3);
    }

    if (v7)
    {
      v5[3] = v7;
      operator delete(v7);
    }

    MEMORY[0x1B2706400](v5, 0x1080C40B69A5871);
  }

  return sub_1AE6C70CC(a1);
}

uint64_t sub_1AE6DDE84(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    if ((*(**(a1 + 160) + 56))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 56))(*(a1 + 168), 4, 0) || ((*(****(a1 + 144) + 40))(***(a1 + 144), 0) & 4) != 0 || (v4 = (*(****(a1 + 152) + 40))(***(a1 + 152), 0), *(*(a1 + 136) + 40) == 3) || (v4 & 4) != 0)
    {
      *(a1 + 8) |= 4uLL;
    }
  }

  return *(a1 + 8) & a2;
}

void sub_1AE6DDFD4(void *a1)
{
  *a1 = &unk_1F242D4F0;
  v2 = a1[17];
  if (v2)
  {
    if (*(v2 + 212) == 1)
    {
      v3 = *(v2 + 200);
      if (v3)
      {
        if (*v3)
        {
          (*(**v3 + 8))(*v3);
        }

        MEMORY[0x1B2706400](v3, 0x1020C405F07FB98);
      }
    }

    sub_1AE673B40(*(v2 + 224));
    if (*(v2 + 132) == 1)
    {
      v4 = *(v2 + 120);
      if (v4)
      {
        if (*v4)
        {
          (*(**v4 + 8))(*v4);
        }

        MEMORY[0x1B2706400](v4, 0x1020C405F07FB98);
      }
    }

    sub_1AE673B40(*(v2 + 144));
    v5 = sub_1AE6DE3D0(v2);
    MEMORY[0x1B2706400](v5, 0x1060C409DA32DC3);
  }

  v6 = a1[22];
  if (v6)
  {
    v7 = sub_1AE6DE144(v6);
    MEMORY[0x1B2706400](v7, 0x10E0C401DE81863);
  }

  sub_1AE6C6C70(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t *sub_1AE6DE144(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    MEMORY[0x1B2706400](v2, 0xC400A2AC0F1);
  }

  v3 = a1[1];
  if (v3)
  {
    MEMORY[0x1B2706400](v3, 0xC400A2AC0F1);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    do
    {
      v6 = *v5;
      v7 = sub_1AE6C742C(a1[8]);
      v5[3] = v7[7];
      v7[7] = v5;
      v5 = v6;
    }

    while (v6);
  }

  v8 = a1[8];
  v9 = v8[1] - 1;
  v8[1] = v9;
  if (!v9)
  {
    v10 = v8[2];
    v11 = v8[3];
    if (v11 != v10)
    {
      v12 = 0;
      do
      {
        v13 = v10[v12];
        if (v13)
        {
          (*(*v13 + 8))(v10[v12]);
          v10 = v8[2];
          v11 = v8[3];
        }

        ++v12;
      }

      while (v12 < (v11 - v10) >> 3);
    }

    if (v10)
    {
      v8[3] = v10;
      operator delete(v10);
    }

    MEMORY[0x1B2706400](v8, 0x1080C40B69A5871);
  }

  sub_1AE6C70CC((a1 + 4));
  return a1;
}

uint64_t sub_1AE6DE274(void *a1)
{
  *a1 = &unk_1F242D4F0;
  v2 = a1[17];
  if (v2)
  {
    if (*(v2 + 212) == 1)
    {
      v3 = *(v2 + 200);
      if (v3)
      {
        if (*v3)
        {
          (*(**v3 + 8))(*v3);
        }

        MEMORY[0x1B2706400](v3, 0x1020C405F07FB98);
      }
    }

    sub_1AE673B40(*(v2 + 224));
    if (*(v2 + 132) == 1)
    {
      v4 = *(v2 + 120);
      if (v4)
      {
        if (*v4)
        {
          (*(**v4 + 8))(*v4);
        }

        MEMORY[0x1B2706400](v4, 0x1020C405F07FB98);
      }
    }

    sub_1AE673B40(*(v2 + 144));
    v5 = sub_1AE6DE3D0(v2);
    MEMORY[0x1B2706400](v5, 0x1060C409DA32DC3);
  }

  v6 = a1[22];
  if (v6)
  {
    v7 = sub_1AE6DE144(v6);
    MEMORY[0x1B2706400](v7, 0x10E0C401DE81863);
  }

  return sub_1AE6C6C70(a1);
}

uint64_t sub_1AE6DE3D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B2706400](v2, 0x1020C405F07FB98);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B2706400](v3, 0x1020C405F07FB98);
  }

  v4 = *a1;
  if (*a1)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    MEMORY[0x1B2706400](v4, 0x1020C405F07FB98);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    MEMORY[0x1B2706400](v5, 0x1020C405F07FB98);
  }

  return a1;
}

void sub_1AE6DE50C(uint64_t a1@<X0>, int a2@<W1>, float *a3@<X8>)
{
  v5 = *(*(a1 + 176) + 104) + 20 * a2;
  v6 = *v5;
  (*(****(a1 + 144) + 96))(&v22 + 4);
  v7.n128_u32[0] = HIDWORD(v22);
  v19 = *(&v22 + 1);
  v23 = 2139095039;
  if (*(&v22 + 1) == 3.4028e38)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 4);
  (*(****(a1 + 152) + 96))(&v22);
  v7.n128_u32[0] = v22;
  v19 = *&v22;
  v23 = 2139095039;
  if (*&v22 == 3.4028e38)
  {
    goto LABEL_3;
  }

  v9 = *(a1 + 136);
  LOBYTE(v19) = *(v5 + 8);
  v20 = *(v5 + 12);
  v7.n128_u32[0] = v20;
  v21 = *(v5 + 16);
  sub_1AE6DE824(v9, v6, v8, &v19, v7);
  v10 = *(a1 + 136);
  v11 = *(v10 + 72);
  v12 = *(&v22 + 1);
  if ((v11 & 0x40) != 0)
  {
    v19 = *(&v22 + 1);
    v23 = 2139095039;
    if (*(&v22 + 1) != 3.4028e38)
    {
      v13 = *(v10 + 84);
      if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
      {
        v18 = v13;
        v16 = __cxa_guard_acquire(&qword_1ED9AC728);
        v13 = v18;
        if (v16)
        {
          dword_1ED9AC720 = -8388609;
          __cxa_guard_release(&qword_1ED9AC728);
          v13 = v18;
        }
      }

      if (v12 != *&dword_1ED9AC720)
      {
        if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
        {
          v12 = v13;
          v17 = __cxa_guard_acquire(&qword_1ED9AC728);
          v13 = v12;
          if (v17)
          {
            dword_1ED9AC720 = -8388609;
            __cxa_guard_release(&qword_1ED9AC728);
            v13 = v12;
          }
        }

        if (v13 != *&dword_1ED9AC720 && v13 != 3.4028e38)
        {
          v14 = *(&v22 + 1) - v13;
          if (*(&v22 + 1) == 3.4028e38)
          {
            v12 = 3.4028e38;
          }

          else
          {
            v12 = v14;
          }
        }
      }

      *(&v22 + 1) = v12;
      v11 = *(v10 + 72);
    }
  }

  if ((v11 & 0x80) != 0)
  {
    v19 = v12;
    v23 = 2139095039;
    if (v12 != 3.4028e38 && *(v10 + 96) != -1)
    {
      HIDWORD(v22) = 2139095039;
      v12 = 3.4028e38;
    }
  }

  if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC728))
  {
    dword_1ED9AC720 = -8388609;
    __cxa_guard_release(&qword_1ED9AC728);
  }

  if (v12 != *&dword_1ED9AC720)
  {
    v15 = *&v22;
    if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC728))
    {
      dword_1ED9AC720 = -8388609;
      __cxa_guard_release(&qword_1ED9AC728);
    }

    if (v15 != *&dword_1ED9AC720)
    {
      v7.n128_f32[0] = *&v22 + *(&v22 + 1);
      if (*(&v22 + 1) == 3.4028e38 || *&v22 == 3.4028e38)
      {
        v7.n128_f32[0] = 3.4028e38;
      }

LABEL_3:
      *a3 = v7.n128_f32[0];
    }
  }
}

void sub_1AE6DE824(uint64_t a1, unsigned int a2, uint64_t a3, unsigned __int8 *a4, __n128 a5)
{
  *(a1 + 88) = *a4;
  *(a1 + 92) = *(a4 + 1);
  *(a1 + 96) = *(a4 + 2);
  v8 = *a4;
  *(a1 + 80) = v8;
  a5.n128_u32[0] = *(a4 + 1);
  *(a1 + 84) = a5.n128_u32[0];
  if (*(a1 + 24) != __PAIR64__(a3, a2) || v8 != *(a1 + 32))
  {
    *(a1 + 24) = a2;
    *(a1 + 28) = a3;
    *(a1 + 32) = *a4;
    v9 = (*(**(a1 + 16) + 32))(*(a1 + 16), a3);
    v10 = (*(**(a1 + 16) + 40))(*(a1 + 16), a3);
    (*(**(a1 + 16) + 24))(&v15);
    v16 = v15;
    HIDWORD(v15) = 2139095039;
    a5.n128_u32[0] = v15;
    *(a1 + 33) = v9 == v10 && *&v15 == 3.4028e38;
    *(a1 + 34) = v10 == 0;
  }

  if ((*(a1 + 72) & 0x80) != 0)
  {
    v11 = 112;
    if (*(a1 + 40) == 1)
    {
      v11 = 104;
      v12 = a2;
    }

    else
    {
      v12 = a3;
    }

    *(a1 + 280) = (*(**(a1 + v11) + 32))(*(a1 + v11), v12, a5);
    v13 = *(a1 + 96);
    sub_1AE673B40(*(a1 + 144));
    v14 = *(a1 + 224);
    *(a1 + 136) = a1 + 144;
    *(a1 + 144) = 0u;
    *(a1 + 160) = -1;
    sub_1AE673B40(v14);
    *(a1 + 216) = a1 + 224;
    *(a1 + 224) = 0u;
    *(a1 + 240) = -1;
    if (v13 != -1)
    {
      sub_1AE6DBDA8(a1 + 120, v13);

      sub_1AE6DBDA8(a1 + 200, v13);
    }
  }
}

uint64_t sub_1AE6DEA64(uint64_t a1)
{
  result = (*(**(a1 + 160) + 16))(*(a1 + 160));
  if (result != -1)
  {
    v3 = result;
    result = (*(**(a1 + 168) + 16))(*(a1 + 168));
    if (result != -1)
    {
      v10 = __PAIR64__(result, v3);
      v11 = 0;
      v12 = 0xFFFFFFFF00000000;
      v4 = *(a1 + 176);
      *(v4 + 128) = &v10;
      v5 = sub_1AE6DC064((v4 + 32));
      if (v5)
      {
        return *(v5 + 4);
      }

      else
      {
        v6 = *(v4 + 112);
        v7 = *(v4 + 120);
        v8 = -858993459 * ((v6 - *(v4 + 104)) >> 2);
        v13 = -858993459 * ((v6 - *(v4 + 104)) >> 2);
        if (v6 >= v7)
        {
          v9 = sub_1AE6DC1A4((v4 + 104), &v10);
        }

        else
        {
          *v6 = v10;
          *(v6 + 8) = v11;
          *(v6 + 12) = v12;
          v9 = v6 + 20;
        }

        *(v4 + 112) = v9;
        sub_1AE6DC2F4((v4 + 32), v8, &v13);
        return v8;
      }
    }
  }

  return result;
}

uint64_t sub_1AE6DEB98(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(****(a1 + 144) + 24))(***(a1 + 144), 0) == a3)
  {
    (*(****(a1 + 152) + 24))(***(a1 + 152), 0);
  }

  return 0;
}

void sub_1AE6DEC30(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = (*(*(a1 + 176) + 104) + 20 * a2);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + 136);
  LOBYTE(__p) = *(v5 + 8);
  HIDWORD(__p) = v5[3];
  a3.n128_u32[0] = HIDWORD(__p);
  v20 = v5[4];
  sub_1AE6DE824(v8, v6, v7, &__p, a3);
  v9 = *(a1 + 184);
  if (!v9)
  {
    goto LABEL_24;
  }

  if (v9 != 1)
  {
    v12 = (*(****(a1 + 144) + 104))(***(a1 + 144), v6);
    v13 = (*(****(a1 + 152) + 104))(***(a1 + 152), v7);
    if (v12 == -1 && v13 == -1)
    {
      v21 = 5;
      strcpy(&__p, "FATAL");
      v18 = sub_1AE5DB608(MEMORY[0x1E69E5300], &__p, 5);
      sub_1AE5DB608(v18, ": ", 2);
      sub_1AE5DB608(MEMORY[0x1E69E5300], "ComposeFst: both sides can't require match", 42);
      sub_1AE696D18();
      if (v21 < 0)
      {
        operator delete(__p);
      }

      *(a1 + 8) |= 4uLL;
    }

    else
    {
      v16 = v13 == -1 || v12 <= v13;
      if (v12 == -1 || !v16)
      {
        goto LABEL_3;
      }
    }

LABEL_24:
    sub_1AE6DEE50(a1, a2, v7, *(a1 + 160), v6, *(a1 + 152), 1);
    return;
  }

LABEL_3:
  v10 = *(a1 + 168);
  v11 = *(a1 + 144);

  sub_1AE6DEE50(a1, a2, v6, v10, v7, v11, 0);
}

void sub_1AE6DEE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AE6DEE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v7 = a7;
  v11 = a3;
  (*(***a6 + 56))(**a6, a3);
  *(a6 + 18) = v11;
  LODWORD(v19) = v7 - 1;
  HIDWORD(v19) = v7 << 31 >> 31;
  v20 = 0;
  v21 = a5;
  sub_1AE6DF0B4(a1, a2, a6, &v19, v7);
  v18 = 0;
  (*(*a4 + 120))(a4, a5, v16);
  while (1)
  {
    if (!v16[0])
    {
      v15 = v18;
      if (v18 >= v16[2])
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if ((*(*v16[0] + 16))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      v15 = v18;
LABEL_10:
      v14 = (v16[1] + 16 * v15);
      goto LABEL_11;
    }

    v14 = (*(*v16[0] + 24))();
LABEL_11:
    sub_1AE6DF0B4(a1, a2, a6, v14, v7);
    if (v16[0])
    {
      (*(*v16[0] + 32))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    goto LABEL_17;
  }

LABEL_15:
  if (v17)
  {
    --*v17;
  }

LABEL_17:
  sub_1AE6CE468(a1, a2);
}

void sub_1AE6DF060(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  if (!a10)
  {
    if (a13)
    {
      --*a13;
    }

    _Unwind_Resume(exception_object);
  }

  (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6DF0B4(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4, int a5)
{
  v5 = a5;
  v8 = a2;
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = sub_1AE6DCEBC(a3, *(a4 + v10));
  if (result && (a3[76] & 1) == 0)
  {
    if (v5)
    {
      do
      {
        v12 = a3 + 60;
        if ((a3[56] & 1) == 0)
        {
          v12 = (*(***a3 + 80))(**a3);
        }

        v20 = *v12;
        v21 = *(v12 + 2);
        v22 = *(v12 + 3);
        v17 = *a4;
        v18 = *(a4 + 2);
        v19 = *(a4 + 3);
        sub_1AE6DF2FC(v14, *(a1 + 136), &v17, &v20);
        if (v14[0] != 255 || (v24 = v15, v23 = 2139095039, v15 != 3.4028e38) || v16 != -1)
        {
          sub_1AE6DF430(a1, v8, &v17, &v20, v14);
        }

        result = sub_1AE6DD17C(a3);
      }

      while ((a3[76] & 1) == 0);
    }

    else
    {
      do
      {
        v13 = a3 + 60;
        if ((a3[56] & 1) == 0)
        {
          v13 = (*(***a3 + 80))(**a3);
        }

        v20 = *v13;
        v21 = *(v13 + 2);
        v22 = *(v13 + 3);
        v17 = *a4;
        v18 = *(a4 + 2);
        v19 = *(a4 + 3);
        sub_1AE6DF2FC(v14, *(a1 + 136), &v20, &v17);
        if (v14[0] != 255 || (v24 = v15, v23 = 2139095039, v15 != 3.4028e38) || v16 != -1)
        {
          sub_1AE6DF430(a1, v8, &v20, &v17, v14);
        }

        result = sub_1AE6DD17C(a3);
      }

      while (a3[76] != 1);
    }
  }

  return result;
}

void sub_1AE6DF2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a2 + 72) & 0x80) == 0)
  {
    sub_1AE6DF664(v13, a2, a3, a4);
    v5 = v13[0];
LABEL_3:
    *a1 = v5;
    *(a1 + 4) = v14;
    *(a1 + 8) = -1;
    return;
  }

  v6 = *(a2 + 96);
  if (v6 == -1)
  {
    v9 = a3;
    v10 = a4;
    sub_1AE6DF664(v13, a2, a3, a4);
    v5 = v13[0];
    if (v13[0] == 255)
    {
      v16 = v14;
      v15 = 2139095039;
      if (v14 == 3.4028e38)
      {
        *a1 = -1;
        *(a1 + 4) = -2155872257;
        return;
      }
    }

    if ((*(a2 + 76) & 1) == 0)
    {
      goto LABEL_3;
    }

    if (*(a2 + 40) == 1)
    {
      v11 = v9;
      v12 = v10;
    }

    else
    {
      v11 = v10;
      v12 = v9;
    }

    sub_1AE6DFBBC(a1, a2, v11, v12, v13);
  }

  else
  {
    if (*(a2 + 40) != 1)
    {
      v7 = a3;
      a3 = a4;
      a4 = v7;
    }

    sub_1AE6DFA40(a1, a2, a3, a4, v6);
  }
}

uint64_t *sub_1AE6DF430(uint64_t a1, int a2, float *a3, uint64_t a4, char *a5)
{
  v7 = *(a4 + 12);
  *&v35 = a3[3];
  HIDWORD(v35) = v7;
  v36 = *a5;
  v37 = *(a5 + 1);
  v38 = *(a5 + 2);
  v8 = *a3;
  v9 = *(a4 + 4);
  v10 = a3[2];
  if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
  {
    v29 = a3;
    v30 = a4;
    v26 = __cxa_guard_acquire(&qword_1ED9AC728);
    a3 = v29;
    a4 = v30;
    if (v26)
    {
      dword_1ED9AC720 = -8388609;
      __cxa_guard_release(&qword_1ED9AC728);
      a3 = v29;
      a4 = v30;
    }
  }

  if (v10 != *&dword_1ED9AC720)
  {
    v10 = *(a4 + 8);
    if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
    {
      v31 = a4;
      v27 = a3;
      v28 = __cxa_guard_acquire(&qword_1ED9AC728);
      a3 = v27;
      a4 = v31;
      if (v28)
      {
        dword_1ED9AC720 = -8388609;
        __cxa_guard_release(&qword_1ED9AC728);
        a3 = v27;
        a4 = v31;
      }
    }

    if (v10 != *&dword_1ED9AC720)
    {
      v11 = a3[2];
      v12 = *(a4 + 8);
      v13 = v11 == 3.4028e38;
      v14 = v12 + v11;
      if (v13 || v12 == 3.4028e38)
      {
        v10 = 3.4028e38;
      }

      else
      {
        v10 = v14;
      }
    }
  }

  v15 = *(a1 + 176);
  *(v15 + 128) = &v35;
  v16 = sub_1AE6DC064((v15 + 32));
  if (v16)
  {
    LODWORD(v17) = *(v16 + 4);
  }

  else
  {
    v18 = *(v15 + 112);
    v19 = *(v15 + 120);
    v20 = (v18 - *(v15 + 104)) >> 2;
    v17 = (-858993459 * v20);
    LODWORD(v32) = -858993459 * v20;
    if (v18 >= v19)
    {
      v21 = sub_1AE6DC1A4((v15 + 104), &v35);
    }

    else
    {
      *v18 = v35;
      *(v18 + 8) = v36;
      *(v18 + 12) = v37;
      *(v18 + 16) = v38;
      v21 = v18 + 20;
    }

    *(v15 + 112) = v21;
    sub_1AE6DC2F4((v15 + 32), v17, &v32);
  }

  v32 = __PAIR64__(v9, LODWORD(v8));
  v33 = v10;
  v34 = v17;
  v22 = sub_1AE6CE5A0(*(a1 + 120), a2);
  v23 = v22;
  v24 = *(v22 + 32);
  if (v24 >= *(v22 + 40))
  {
    result = sub_1AE6D28F0((v22 + 24), &v32);
  }

  else
  {
    *v24 = v32;
    *(v24 + 8) = v10;
    *(v24 + 12) = v17;
    result = (v24 + 16);
  }

  *(v23 + 32) = result;
  return result;
}

uint64_t sub_1AE6DF664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 76) = 0;
  if (*a4 == -1)
  {
    if (*(a2 + 33))
    {
      goto LABEL_12;
    }

    v43 = (*(a2 + 34) & 1) == 0;
  }

  else
  {
    v7 = *(a3 + 4);
    if (v7 != -1)
    {
      if (v7)
      {
        v43 = 0;
        goto LABEL_13;
      }

LABEL_12:
      result = 255;
      v12 = 3.4028e38;
      goto LABEL_43;
    }

    v8 = *(a2 + 32);
    v9 = v8 == 1;
    if (v8 == 1)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    v43 = v10;
    if (v9)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  if (*(a2 + 40) == 1)
  {
    v14 = a3;
    a3 = a4;
  }

  else
  {
    v14 = a4;
  }

  result = sub_1AE6DFE00(a2, v14, a3, &v43);
  if (result == 0xFF)
  {
    v12 = 3.4028e38;
    result = 255;
  }

  else
  {
    v12 = 0.0;
    if ((*(a2 + 72) & 0x40) != 0)
    {
      v15 = 0.0;
      if (*(a2 + 76) == 1)
      {
        v16 = *(a2 + 8 * (*(a2 + 64) != 1) + 48);
        v17 = result;
        v18 = sub_1AE6DB690(v16);
        result = v17;
        if (v18)
        {
          v15 = *(*v16 + 8);
        }
      }

      v19 = *(a2 + 84);
      v45 = v15;
      v44 = 2139095039;
      if (v15 == 3.4028e38)
      {
        result = 255;
        v12 = 3.4028e38;
      }

      else
      {
        v20 = *(a4 + 8);
        if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
        {
          v39 = result;
          v36 = v19;
          v26 = __cxa_guard_acquire(&qword_1ED9AC728);
          v19 = v36;
          v27 = v26;
          result = v39;
          if (v27)
          {
            dword_1ED9AC720 = -8388609;
            __cxa_guard_release(&qword_1ED9AC728);
            v19 = v36;
            result = v39;
          }
        }

        if (v20 != *&dword_1ED9AC720)
        {
          if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
          {
            v41 = result;
            v20 = v19;
            v32 = __cxa_guard_acquire(&qword_1ED9AC728);
            v19 = v20;
            v33 = v32;
            result = v41;
            if (v33)
            {
              dword_1ED9AC720 = -8388609;
              __cxa_guard_release(&qword_1ED9AC728);
              v19 = v20;
              result = v41;
            }
          }

          if (v15 != *&dword_1ED9AC720)
          {
            v21 = *(a4 + 8);
            v22 = v21 == 3.4028e38;
            v23 = v21 + v15;
            if (v22 || v15 == 3.4028e38)
            {
              v20 = 3.4028e38;
            }

            else
            {
              v20 = v23;
            }
          }
        }

        if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
        {
          v40 = result;
          v37 = v19;
          v28 = __cxa_guard_acquire(&qword_1ED9AC728);
          v19 = v37;
          v29 = v28;
          result = v40;
          if (v29)
          {
            dword_1ED9AC720 = -8388609;
            __cxa_guard_release(&qword_1ED9AC728);
            v19 = v37;
            result = v40;
          }
        }

        v24 = *&dword_1ED9AC720;
        if (v20 != *&dword_1ED9AC720)
        {
          if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
          {
            v42 = result;
            v38 = v19;
            v34 = __cxa_guard_acquire(&qword_1ED9AC728);
            v19 = v38;
            v35 = v34;
            result = v42;
            if (v35)
            {
              dword_1ED9AC720 = -8388609;
              __cxa_guard_release(&qword_1ED9AC728);
              v19 = v38;
              result = v42;
            }
          }

          v24 = *&dword_1ED9AC720;
          if (v19 != *&dword_1ED9AC720)
          {
            v25 = v20 - v19;
            if (v20 == 3.4028e38)
            {
              v25 = 3.4028e38;
            }

            if (v19 == 3.4028e38)
            {
              v24 = 3.4028e38;
            }

            else
            {
              v24 = v25;
            }
          }
        }

        *(a4 + 8) = v24;
        if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
        {
          v30 = result;
          v31 = __cxa_guard_acquire(&qword_1ED9AC728);
          result = v30;
          if (v31)
          {
            dword_1ED9AC720 = -8388609;
            __cxa_guard_release(&qword_1ED9AC728);
            result = v30;
          }
        }

        v12 = floorf((v15 * 1024.0) + 0.5) * 0.00097656;
        if (v15 == *&dword_1ED9AC720 || v15 == 3.4028e38)
        {
          v12 = v15;
        }
      }
    }
  }

LABEL_43:
  *a1 = result;
  *(a1 + 4) = v12;
  return result;
}

uint64_t sub_1AE6DFA40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 40);
  v6 = v5 != 1;
  v7 = v5 == 1;
  if (*(a4 + 4 * v6) != -1)
  {
    goto LABEL_2;
  }

  v8 = 4 * v7;
  v9 = *(a3 + v8);
  if (v9 == a5)
  {
    *(a3 + v8) = 0;
    *result = 0;
    *(result + 4) = 0xFFFFFFFF00000000;
  }

  else
  {
    if (v9)
    {
LABEL_2:
      *result = -1;
      *(result + 4) = -2155872257;
      return result;
    }

    if (*(a2 + 280) == 1)
    {
      *result = *(a2 + 88);
      *(result + 4) = *(a2 + 92);
      *(result + 8) = *(a2 + 96);
    }

    else
    {
      v11 = result;
      v12 = a2 + 48;
      (*(***(v12 + 8 * (*(a2 + 64) != 1)) + 56))(**(v12 + 8 * (*(a2 + 64) != 1)), *(a3 + 12));
      v14 = *(v12 + 8 * (*(a2 + 64) != 1));
      result = sub_1AE6DB690(v14);
      if (result && (result = (*(**v14 + 120))(*v14, a5), !result))
      {
        *v11 = -1;
        *(v11 + 4) = -2155872257;
      }

      else
      {
        *v11 = *(a2 + 88);
        *(v11 + 4) = *(a2 + 92);
        *(v11 + 8) = *(a2 + 96);
      }
    }
  }

  return result;
}

float sub_1AE6DFBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 4 * (*(a2 + 40) == 1);
  if (*(a4 + v5) || *(a3 + 4 * (*(a2 + 40) == 1)) && (*(a2 + 73) & 4) != 0)
  {
    goto LABEL_2;
  }

  v10 = a1;
  v11 = a5;
  v13 = *(a2 + 8 * (*(a2 + 64) != 1) + 48);
  if (!sub_1AE6DB690(v13))
  {
    v6 = -1;
    a5 = v11;
    a1 = v10;
    goto LABEL_3;
  }

  v14 = *v13;
  v15 = *(*v13 + 24);
  a5 = v11;
  a1 = v10;
  if (v15 == -1)
  {
LABEL_2:
    v6 = -1;
  }

  else
  {
    v17 = *(v14 + 12);
    v16 = *(v14 + 16);
    v18 = *(v14 + 20);
    if (*(a2 + 40) == 1)
    {
      v19 = *(v14 + 12);
    }

    else
    {
      v19 = *(v14 + 16);
    }

    v20 = a3;
    *(a3 + v5) = v19;
    v21 = a4;
    *a4 = v17;
    *(a4 + 4) = v16;
    v22 = *(a4 + 8);
    v23 = 0x1ED9AC000uLL;
    if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
    {
      v31 = v22;
      v32 = v18;
      v26 = __cxa_guard_acquire(&qword_1ED9AC728);
      v22 = v31;
      v18 = v32;
      v23 = 0x1ED9AC000uLL;
      v21 = a4;
      v20 = a3;
      a5 = v11;
      v27 = v26;
      a1 = v10;
      if (v27)
      {
        dword_1ED9AC720 = -8388609;
        __cxa_guard_release(&qword_1ED9AC728);
        v22 = v31;
        v18 = v32;
        v23 = 0x1ED9AC000;
        v21 = a4;
        v20 = a3;
        a1 = v10;
        a5 = v11;
      }
    }

    if (v22 != *(v23 + 1824))
    {
      if ((atomic_load_explicit(&qword_1ED9AC728, memory_order_acquire) & 1) == 0)
      {
        v33 = v18;
        v28 = v23;
        v29 = __cxa_guard_acquire(&qword_1ED9AC728);
        v23 = v28;
        v18 = v33;
        v21 = a4;
        v20 = a3;
        a5 = v11;
        v30 = v29;
        a1 = v10;
        if (v30)
        {
          *(v28 + 1824) = -8388609;
          __cxa_guard_release(&qword_1ED9AC728);
          v23 = v28;
          v18 = v33;
          v21 = a4;
          v20 = a3;
          a1 = v10;
          a5 = v11;
        }
      }

      if (v18 != *(v23 + 1824))
      {
        v24 = *(v21 + 8);
        v25 = v18 == 3.4028e38;
        v18 = v24 + v18;
        if (v24 == 3.4028e38 || v25)
        {
          v18 = 3.4028e38;
        }
      }
    }

    *(v21 + 8) = v18;
    *(v21 + 12) = v15;
    v6 = *(v20 + v5);
  }

LABEL_3:
  *a1 = *a5;
  result = *(a5 + 4);
  *(a1 + 4) = result;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1AE6DFE00(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = *(a1 + 72);
  if (*(a2 + 4 * (*(a1 + 40) == 1)))
  {
    if ((v6 & 0x100) == 0)
    {
      return *a4;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    return *a4;
  }

  *(a1 + 76) = 1;
  v7 = a1 + 48;
  v8 = **(a1 + 48 + 8 * (*(a1 + 64) != 1));
  (*(*v8 + 56))(v8, *(a2 + 12));
  v10 = *(a1 + 64);
  v11 = v10 == 1;
  v12 = v10 != 1;
  v13 = v11;
  v14 = *(v7 + 8 * v12);
  v15 = **(v7 + 8 * v13);
  v16 = (*(*v15 + 32))(v15);
  v17 = *(a3 + 12);
  if (!sub_1AE6DB690(v14) || (*(**v14 + 128))(*v14, v16, v17))
  {
    return *a4;
  }

  return 255;
}

void sub_1AE6E036C(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v3, 0x10E0C401DE81863);
  sub_1AE6C6C70(v2);
  MEMORY[0x1B2706400](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6E0454(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    if ((*(**(a1 + 160) + 56))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 56))(*(a1 + 168), 4, 0) || ((*(****(a1 + 144) + 40))(***(a1 + 144), 0) & 4) != 0 || (v4 = (*(****(a1 + 152) + 40))(***(a1 + 152), 0), *(*(a1 + 136) + 40) == 3) || (v4 & 4) != 0)
    {
      *(a1 + 8) |= 4uLL;
    }
  }

  return *(a1 + 8) & a2;
}

void sub_1AE6E05A4(void *a1)
{
  *a1 = &unk_1F242D480;
  v2 = a1[17];
  if (v2)
  {
    if (*(v2 + 212) == 1)
    {
      v3 = *(v2 + 200);
      if (v3)
      {
        if (*v3)
        {
          (*(**v3 + 8))(*v3);
        }

        MEMORY[0x1B2706400](v3, 0x1020C405F07FB98);
      }
    }

    sub_1AE673B40(*(v2 + 224));
    if (*(v2 + 132) == 1)
    {
      v4 = *(v2 + 120);
      if (v4)
      {
        if (*v4)
        {
          (*(**v4 + 8))(*v4);
        }

        MEMORY[0x1B2706400](v4, 0x1020C405F07FB98);
      }
    }

    sub_1AE673B40(*(v2 + 144));
    v5 = sub_1AE6DE3D0(v2);
    MEMORY[0x1B2706400](v5, 0x1060C409DA32DC3);
  }

  v6 = a1[22];
  if (v6)
  {
    v7 = sub_1AE6DE144(v6);
    MEMORY[0x1B2706400](v7, 0x10E0C401DE81863);
  }

  sub_1AE6C6C70(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6E0714(void *a1)
{
  *a1 = &unk_1F242D480;
  v2 = a1[17];
  if (v2)
  {
    if (*(v2 + 212) == 1)
    {
      v3 = *(v2 + 200);
      if (v3)
      {
        if (*v3)
        {
          (*(**v3 + 8))(*v3);
        }

        MEMORY[0x1B2706400](v3, 0x1020C405F07FB98);
      }
    }

    sub_1AE673B40(*(v2 + 224));
    if (*(v2 + 132) == 1)
    {
      v4 = *(v2 + 120);
      if (v4)
      {
        if (*v4)
        {
          (*(**v4 + 8))(*v4);
        }

        MEMORY[0x1B2706400](v4, 0x1020C405F07FB98);
      }
    }

    sub_1AE673B40(*(v2 + 144));
    v5 = sub_1AE6DE3D0(v2);
    MEMORY[0x1B2706400](v5, 0x1060C409DA32DC3);
  }

  v6 = a1[22];
  if (v6)
  {
    v7 = sub_1AE6DE144(v6);
    MEMORY[0x1B2706400](v7, 0x10E0C401DE81863);
  }

  return sub_1AE6C6C70(a1);
}

void sub_1AE6E0870(_BYTE *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"URL");
  sub_1AE68FC50(&v10, Value);
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(v8, "URL missing for CoreLM tokenizer resource");
    sub_1AE660DB0(exception, v8);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  sub_1AE6E0AF4(&cf, v10);
  if (!cf)
  {
    v5 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v5, "Could not construct");
    __cxa_throw(v5, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE6E0BA4(v8, cf, @"sp.dat");
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v8[0])
  {
    v6 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v6, "Could not construct");
    __cxa_throw(v6, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE68FD10(&cf, v8[0]);
  if (!cf)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v7, "Could not construct");
    __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE66D27C(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8[0])
  {
    CFRelease(v8[0]);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void sub_1AE6E0A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17)
{
  __cxa_free_exception(v17);
  sub_1AE63109C(&a16);
  sub_1AE68C59C(&__p);
  sub_1AE68C59C(&a17);
  _Unwind_Resume(a1);
}

const void *sub_1AE6E0AF4(void *a1, const __CFURL *a2)
{
  result = CFURLCreateCopyDeletingLastPathComponent(0, a2);
  *a1 = result;
  if (result)
  {
    v4 = CFGetTypeID(result);
    result = CFURLGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1AE6E0B7C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AE66A234(v1);
  _Unwind_Resume(a1);
}

const void *sub_1AE6E0BA4(void *a1, const __CFURL *a2, const __CFString *a3)
{
  result = CFURLCreateCopyAppendingPathComponent(0, a2, a3, 0);
  *a1 = result;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFURLGetTypeID();
    if (v5 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1AE6E0C30(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AE66A234(v1);
  _Unwind_Resume(a1);
}

void sub_1AE6E0C58(_BYTE *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"URL");
  sub_1AE68FC50(&v10, Value);
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(v8, "URL missing for CoreLM tokenizer resource");
    sub_1AE660DB0(exception, v8);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  sub_1AE6E0AF4(&cf, v10);
  if (!cf)
  {
    v5 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v5, "Could not construct");
    __cxa_throw(v5, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE6E0BA4(v8, cf, @"modelInfo.plist");
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v8[0])
  {
    v6 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v6, "Could not construct");
    __cxa_throw(v6, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE68FD10(&cf, v8[0]);
  if (!cf)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v7, "Could not construct");
    __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE66D27C(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8[0])
  {
    CFRelease(v8[0]);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void sub_1AE6E0E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17)
{
  __cxa_free_exception(v17);
  sub_1AE63109C(&a16);
  sub_1AE68C59C(&__p);
  sub_1AE68C59C(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6E0EDC(CFDictionaryRef theDict)
{
  sub_1AE6E0C58(__p, theDict);
  v3 = MEMORY[0x1E695DF20];
  if (v30 >= 0)
  {
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v1, __p, v2);
  }

  else
  {
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v1, __p[0], v2);
  }

  v7 = objc_msgSend_dictionaryWithContentsOfFile_(v3, v5, v4, v6);
  if (v7 && (v11 = v7, v12 = objc_msgSend_allKeys(v7, v8, v9, v10), v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v13, "MaximumSequenceLength", v14), objc_msgSend_containsObject_(v12, v16, v15, v17)))
  {
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v18, "MaximumSequenceLength", v19);
    v23 = objc_msgSend_objectForKeyedSubscript_(v11, v21, v20, v22);
    result = objc_msgSend_intValue(v23, v24, v25, v26);
    if ((v30 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 256;
    if ((v30 & 0x80000000) == 0)
    {
      return result;
    }
  }

  v28 = result;
  operator delete(__p[0]);
  return v28;
}

void sub_1AE6E0FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE6E0FEC(void *a1)
{
  if (a1)
  {
    sub_1AE6E0FEC(*a1);
    sub_1AE6E0FEC(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t sub_1AE6E1048()
{
  result = MGIsQuestionValid();
  if (result)
  {
    result = MGGetSInt64Answer();
    byte_1EB5E0A58 = result > 31;
  }

  return result;
}

void *sub_1AE6E108C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0B50)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_1AE6E131C;
    v6[4] = &unk_1E7A2E260;
    v6[5] = v6;
    v7 = xmmword_1E7A2E248;
    v8 = 0;
    qword_1EB5E0B50 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0B50;
    if (qword_1EB5E0B50)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v6[0]);
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0B50;
LABEL_5:
  result = dlsym(v2, "kNLGazetteerCompressedModelURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED9AC860 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE6E11D4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0B50)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_1AE6E131C;
    v6[4] = &unk_1E7A2E260;
    v6[5] = v6;
    v7 = xmmword_1E7A2E248;
    v8 = 0;
    qword_1EB5E0B50 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0B50;
    if (qword_1EB5E0B50)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v6[0]);
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0B50;
LABEL_5:
  result = dlsym(v2, "NLGazetteerCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC7D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE6E131C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EB5E0B50 = result;
  return result;
}

uint64_t sub_1AE6E1390(uint64_t *a1, const char *a2)
{
  v3 = *MEMORY[0x1E695E480];
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v35 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  MutableCopy = CFStringCreateMutableCopy(v3, 0, v4);
  v7 = MutableCopy;
  v34 = MutableCopy;
  if (!MutableCopy)
  {
    v10 = 0;
LABEL_71:
    CFRelease(v5);
    return v10;
  }

  Length = CFStringGetLength(MutableCopy);
  v44.location = 0;
  v44.length = Length;
  if (CFStringFindWithOptions(v7, @"'s", v44, 0xCuLL, 0))
  {
    v9 = CFStringGetLength(@"'s");
LABEL_11:
    v43.length = v9;
    v43.location = Length - v9;
    CFStringDelete(v7, v43);
    v11 = 1;
    goto LABEL_12;
  }

  Length = CFStringGetLength(v7);
  v45.location = 0;
  v45.length = Length;
  if (CFStringFindWithOptions(v7, @"'", v45, 0xCuLL, 0))
  {
    v9 = CFStringGetLength(@"'");
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:
  CFStringTransform(v7, 0, *MEMORY[0x1E695E9A0], 0);
  v32.__r_.__value_.__s.__data_[0] = 0;
  v33 = 0;
  v12 = *a1;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v13 = off_1EB5E0AA0;
  v42 = off_1EB5E0AA0;
  if (!off_1EB5E0AA0)
  {
    v36.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    v36.__r_.__value_.__l.__size_ = 3221225472;
    v36.__r_.__value_.__r.__words[2] = sub_1AE6E1814;
    v37 = &unk_1E7A2E228;
    v38 = &v39;
    sub_1AE6E1814(&v36);
    v13 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (v13)
  {
    v14 = v13(v12, v7);
    v15 = v14;
    if (!v14)
    {
      v10 = 0;
LABEL_70:
      CFRelease(v7);
      goto LABEL_71;
    }

    sub_1AE5CC874(v14, &v36);
    v32 = v36;
    v33 = 1;
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v36.__r_.__value_.__l.__size_;
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v32;
    }

    else
    {
      v17 = v36.__r_.__value_.__r.__words[0];
    }

    if (size >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = size;
    }

    v19 = memcmp(v17, "NAME", v18);
    if (size != 4 || v19)
    {
      if (size >= 0xE)
      {
        v22 = 14;
      }

      else
      {
        v22 = size;
      }

      v23 = memcmp(v17, "AMBIGIOUS_NAME", v22);
      if (size != 14 || v23)
      {
        if (size >= 0xA)
        {
          v24 = 10;
        }

        else
        {
          v24 = size;
        }

        v25 = memcmp(v17, "PLACE_NAME", v24);
        if (size != 10 || v25)
        {
          if (size >= 0xD)
          {
            v26 = 13;
          }

          else
          {
            v26 = size;
          }

          v27 = memcmp(v17, "RACE_SINGULAR", v26);
          if (size != 13 || v27)
          {
            if (!std::string::compare(&v32, "RACE_PLURAL"))
            {
              v20 = v11 == 0;
              v21 = 9;
            }

            else if (!std::string::compare(&v32, "COLOR_RACE_SINGULAR"))
            {
              v20 = v11 == 0;
              v21 = 11;
            }

            else if (!std::string::compare(&v32, "COLOR_RACE_PLURAL"))
            {
              v20 = v11 == 0;
              v21 = 13;
            }

            else if (!std::string::compare(&v32, "RELIGION_NAME"))
            {
              v20 = v11 == 0;
              v21 = 15;
            }

            else
            {
              if (std::string::compare(&v32, "RELIGION_PEOPLE_SINGULAR"))
              {
                v28 = std::string::compare(&v32, "RELIGION_PEOPLE_PLURAL");
                if (v11)
                {
                  v29 = 20;
                }

                else
                {
                  v29 = 19;
                }

                if (v28)
                {
                  v10 = 0;
                }

                else
                {
                  v10 = v29;
                }

                goto LABEL_67;
              }

              v20 = v11 == 0;
              v21 = 17;
            }
          }

          else
          {
            v20 = v11 == 0;
            v21 = 7;
          }
        }

        else
        {
          v20 = v11 == 0;
          v21 = 5;
        }
      }

      else
      {
        v20 = v11 == 0;
        v21 = 3;
      }
    }

    else
    {
      v20 = v11 == 0;
      v21 = 1;
    }

    if (v20)
    {
      v10 = v21;
    }

    else
    {
      v10 = v21 + 1;
    }

LABEL_67:
    CFRelease(v15);
    if ((v33 & 1) != 0 && SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    goto LABEL_70;
  }

  v31 = dlerror();
  result = abort_report_np("%s", v31);
  __break(1u);
  return result;
}

void sub_1AE6E17BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, const void *);
  _Block_object_dispose((v15 - 80), 8);
  sub_1AE67D824(va);
  sub_1AE636D70(va1);
  _Unwind_Resume(a1);
}

void *sub_1AE6E1814(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0B50)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_1AE6E131C;
    v6[4] = &unk_1E7A2E260;
    v6[5] = v6;
    v7 = xmmword_1E7A2E248;
    v8 = 0;
    qword_1EB5E0B50 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0B50;
    if (qword_1EB5E0B50)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v6[0]);
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0B50;
LABEL_5:
  result = dlsym(v2, "NLGazetteerCopyLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0AA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AE6E195C(uint64_t *a1, uint64_t *a2)
{
  v17[19] = *MEMORY[0x1E69E9840];
  sub_1AE6AD3E0(v15, a2);
  if (v15[1] >= 0x10)
  {
    v3 = *sub_1AE7182FC(v15) == -1635387661;
    v4 = v15[0];
    if (!v15[0])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = v15[0];
    if (!v15[0])
    {
LABEL_6:
      if (v3)
      {
        operator new();
      }

      sub_1AE6AD3E0(v15, a2);
      if (v15[1] >= 0x30)
      {
        v5 = *sub_1AE6AD658(v15) == 2142173355;
        v6 = v15[0];
        if (!v15[0])
        {
          goto LABEL_13;
        }
      }

      else
      {
        v5 = 0;
        v6 = v15[0];
        if (!v15[0])
        {
LABEL_13:
          if (v5)
          {
            operator new();
          }

          sub_1AE6942BC(v15, a2, 4);
          if ((*(&v16[2] + *(v15[0] - 24)) & 5) == 0)
          {
            std::istream::read();
            if ((*(&v16[2] + *(v15[0] - 24)) & 5) != 0)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x1B2705EB0](exception, "Failed to read from input file stream");
              __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            std::istream::read();
            if ((*(&v16[2] + *(v15[0] - 24)) & 5) != 0)
            {
              v10 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x1B2705EB0](v10, "Failed to read from input file stream");
              __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            std::istream::read();
            if ((*(&v16[2] + *(v15[0] - 24)) & 5) != 0)
            {
              v11 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x1B2705EB0](v11, "Failed to read from input file stream");
              __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            std::istream::read();
            if ((*(&v16[2] + *(v15[0] - 24)) & 5) != 0)
            {
              v12 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x1B2705EB0](v12, "Failed to read from input file stream");
              __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            std::istream::read();
            if ((*(&v16[2] + *(v15[0] - 24)) & 5) != 0)
            {
              v13 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x1B2705EB0](v13, "Failed to read from input file stream");
              __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }
          }

          v15[0] = *MEMORY[0x1E69E54C8];
          *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
          MEMORY[0x1B2705FF0](v16);
          std::istream::~istream();
          MEMORY[0x1B2706340](v17);
          v7 = __cxa_allocate_exception(0x20uLL);
          std::operator+<char>();
          v8 = std::string::append(&v14, "'", 1uLL);
          *v15 = *&v8->__r_.__value_.__l.__data_;
          v16[0] = *(&v8->__r_.__value_.__l + 2);
          v8->__r_.__value_.__l.__size_ = 0;
          v8->__r_.__value_.__r.__words[2] = 0;
          v8->__r_.__value_.__r.__words[0] = 0;
          sub_1AE64FB94(v7, v15);
          __cxa_throw(v7, &unk_1F2432910, sub_1AE64FC40);
        }
      }

      munmap(v6, v15[1]);
      goto LABEL_13;
    }
  }

  munmap(v4, v15[1]);
  goto LABEL_6;
}

void sub_1AE6E306C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v36 & 1) == 0)
    {
LABEL_8:
      sub_1AE644C5C(&a27);
      sub_1AE6AD7D4(v35);
      MEMORY[0x1B2706400](v32, v34);
      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v33);
  goto LABEL_8;
}

uint64_t sub_1AE6E34C0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED9AC600 = result;
  return result;
}

void *sub_1AE6E3534(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC600)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE6E34C0;
    v6[4] = &unk_1E7A2E298;
    v6[5] = v6;
    v7 = xmmword_1E7A2E280;
    v8 = 0;
    qword_1ED9AC600 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC600;
    if (qword_1ED9AC600)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v6[0]);
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC600;
LABEL_5:
  result = dlsym(v2, "DDScannerCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC608 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE6E367C()
{
  v11 = *MEMORY[0x1E69E9840];
  qword_1ED9AC6D0 = 850045863;
  unk_1ED9AC6D8 = 0u;
  unk_1ED9AC6E8 = 0u;
  unk_1ED9AC6F8 = 0u;
  qword_1ED9AC708 = 0;
  if (qword_1ED9AC600 || (v3 = MEMORY[0x1E69E9820], v4 = 0x40000000, v5 = sub_1AE6E34C0, v6 = &unk_1E7A2E298, v7 = 0, v8 = xmmword_1E7A2E280, v9 = 0, (qword_1ED9AC600 = _sl_dlopen()) != 0))
  {
    *&v8 = 0;
    *(&v8 + 1) = &v8;
    v9 = 0x2000000000;
    v0 = off_1ED9AC608;
    v10 = off_1ED9AC608;
    if (!off_1ED9AC608)
    {
      v3 = MEMORY[0x1E69E9820];
      v4 = 0x40000000;
      v5 = sub_1AE6E3534;
      v6 = &unk_1E7A2E2C0;
      v7 = &v8;
      sub_1AE6E3534(&v3);
      v0 = *(*(&v8 + 1) + 24);
    }

    _Block_object_dispose(&v8, 8);
    if (!v0)
    {
      v2 = dlerror();
      abort_report_np("%s", v2);
      __break(1u);
    }

    result = (v0)(1, 0, 0);
  }

  else
  {
    result = 0;
  }

  qword_1ED9AC710 = result;
  return result;
}

void sub_1AE6E3844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  std::mutex::~mutex(&qword_1ED9AC6D0);
  _Unwind_Resume(a1);
}

void *sub_1AE6E3870(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC600)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE6E34C0;
    v6[4] = &unk_1E7A2E298;
    v6[5] = v6;
    v7 = xmmword_1E7A2E280;
    v8 = 0;
    qword_1ED9AC600 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC600;
    if (qword_1ED9AC600)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v6[0]);
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC600;
LABEL_5:
  result = dlsym(v2, "DDScannerScanStringWithRange");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC5F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE6E39B8(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC600)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE6E34C0;
    v6[4] = &unk_1E7A2E298;
    v6[5] = v6;
    v7 = xmmword_1E7A2E280;
    v8 = 0;
    qword_1ED9AC600 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC600;
    if (qword_1ED9AC600)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v6[0]);
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC600;
LABEL_5:
  result = dlsym(v2, "DDScannerCopyResultsWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC5E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE6E3B00(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC600)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE6E34C0;
    v6[4] = &unk_1E7A2E298;
    v6[5] = v6;
    v7 = xmmword_1E7A2E280;
    v8 = 0;
    qword_1ED9AC600 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC600;
    if (qword_1ED9AC600)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v6[0]);
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC600;
LABEL_5:
  result = dlsym(v2, "DDResultGetRangeForURLification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC5E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE6E3C48(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC600)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE6E34C0;
    v6[4] = &unk_1E7A2E298;
    v6[5] = v6;
    v7 = xmmword_1E7A2E280;
    v8 = 0;
    qword_1ED9AC600 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC600;
    if (qword_1ED9AC600)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v6[0]);
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC600;
LABEL_5:
  result = dlsym(v2, "DDResultGetCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC5F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE6E3D90(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC600)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE6E34C0;
    v6[4] = &unk_1E7A2E298;
    v6[5] = v6;
    v7 = xmmword_1E7A2E280;
    v8 = 0;
    qword_1ED9AC600 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC600;
    if (qword_1ED9AC600)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v6[0]);
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC600;
LABEL_5:
  result = dlsym(v2, "DDScannerReset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC610 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE6E3ED8(void *result)
{
  result[3] = 0;
  result[4] = 0;
  result[2] = &unk_1F242D9E0;
  return result;
}

void sub_1AE6E3F28(void *a1)
{
  *a1 = &unk_1F242D9E0;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6E3FD0(void *result)
{
  *result = &unk_1F242D9E0;
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

void sub_1AE6E407C(void *a1)
{
  *a1 = &unk_1F242DA40;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6E410C(void *result)
{
  *result = &unk_1F242DA40;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1AE6E4180(void *a1)
{
  *a1 = &unk_1F242DAA0;
  if (a1[1])
  {
    v1 = sub_1AE5CA370(a1[1]);
    MEMORY[0x1B2706400](v1, 0x10F0C4069D522A4);
  }

  JUMPOUT(0x1B2706400);
}

void sub_1AE6E4228(void *a1)
{
  *a1 = &unk_1F242DB00;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6E42B8(void *result)
{
  *result = &unk_1F242DB00;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1AE6E4350(void *a1)
{
  *a1 = &unk_1F242DB60;
  if (a1[1])
  {
    v1 = sub_1AE6E43D4(a1[1]);
    MEMORY[0x1B2706400](v1, 0x1032C40D853B9C0);
  }

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6E43D4(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 48);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 48);
    }

    *(a1 + 56) = v6;
    operator delete(v8);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_21:
    operator delete(*a1);
    return a1;
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_21;
  }

  return a1;
}

void *sub_1AE6E44BC(void *result)
{
  *result = &unk_1F242DB60;
  if (result[1])
  {
    v1 = result;
    v2 = sub_1AE6E43D4(result[1]);
    MEMORY[0x1B2706400](v2, 0x1032C40D853B9C0);
    return v1;
  }

  return result;
}

void sub_1AE6E4544(void *a1)
{
  *a1 = &unk_1F242DBC0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6E45D4(void *result)
{
  *result = &unk_1F242DBC0;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_1AE6E4648(uint64_t a1)
{
  CFAllocatorGetDefault();
  if ((atomic_load_explicit(&qword_1ED9AC770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC770))
  {
    qword_1EE7BD0F0 = 0;
    unk_1EE7BD100 = 0u;
    unk_1EE7BD110 = 0u;
    qword_1ED9AC760 = _CFRuntimeRegisterClass();
    __cxa_guard_release(&qword_1ED9AC770);
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

uint64_t sub_1AE6E4714(uint64_t a1)
{
  CFAllocatorGetDefault();
  if ((atomic_load_explicit(&qword_1ED9AC778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC778))
  {
    qword_1EE7BD030 = 0;
    unk_1EE7BD040 = 0u;
    unk_1EE7BD050 = 0u;
    qword_1ED9AC768 = _CFRuntimeRegisterClass();
    __cxa_guard_release(&qword_1ED9AC778);
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

void sub_1AE6E47E0(uint64_t a1, int a2, double a3)
{
  v3 = ((a3 - *(a1 + 256)) * 0.0000115740741);
  if (a2)
  {
    if (v3 <= 1)
    {
      v3 = 1;
    }
  }

  else if (v3 < 1)
  {
    return;
  }

  v4 = *(a1 + 152);
  if (v4 != (a1 + 160))
  {
    do
    {
      v5 = v4[7];
      v6 = v3;
      if (v5 != v4 + 8)
      {
        do
        {
          v10 = v5;
          do
          {
            *(v10 + 14) = (*(v10 + 14) * 0.95);
            v11 = v10[1];
            if (v11)
            {
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11);
            }

            else
            {
              do
              {
                v12 = v10[2];
                v13 = *v12 == v10;
                v10 = v12;
              }

              while (!v13);
            }

            v10 = v12;
          }

          while (v12 != v4 + 8);
          v9 = __OFSUB__(v6--, 1);
        }

        while (!((v6 < 0) ^ v9 | (v6 == 0)));
      }

      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v13 = *v8 == v4;
          v4 = v8;
        }

        while (!v13);
      }

      v4 = v8;
    }

    while (v8 != (a1 + 160));
  }

  *(a1 + 256) = CFAbsoluteTimeGetCurrent();
}

double sub_1AE6E4910(uint64_t a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0.0;
  }

  v3 = __p;
  sub_1AE5CC874(a2, __p);
  v6 = *(a1 + 208);
  v4 = (a1 + 208);
  v5 = v6;
  v7 = v23;
  v8 = 0.0;
  if (!v6)
  {
    goto LABEL_35;
  }

  if ((v23 & 0x80u) == 0)
  {
    v9 = v23;
  }

  else
  {
    v3 = __p[0];
    v9 = __p[1];
  }

  v10 = v4;
  do
  {
    while (1)
    {
      v11 = *(v5 + 55);
      v12 = v11 >= 0 ? (v5 + 4) : *(v5 + 4);
      v13 = v11 >= 0 ? *(v5 + 55) : *(v5 + 5);
      v14 = v9 >= v13 ? v13 : v9;
      v15 = memcmp(v12, v3, v14);
      if (v15)
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_21;
      }

LABEL_7:
      v5 = *(v5 + 1);
      if (!v5)
      {
        goto LABEL_22;
      }
    }

    if (v15 < 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    v10 = v5;
    v5 = *v5;
  }

  while (v5);
LABEL_22:
  if (v10 != v4)
  {
    v16 = *(v10 + 55);
    if (v16 >= 0)
    {
      v17 = v10 + 4;
    }

    else
    {
      v17 = *(v10 + 4);
    }

    if (v16 >= 0)
    {
      v18 = *(v10 + 55);
    }

    else
    {
      v18 = *(v10 + 5);
    }

    if (v18 >= v9)
    {
      v19 = v9;
    }

    else
    {
      v19 = v18;
    }

    v20 = memcmp(v3, v17, v19);
    if (v20)
    {
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (v9 >= v18)
    {
LABEL_34:
      v8 = v10[7];
    }
  }

LABEL_35:
  if ((v7 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

uint64_t sub_1AE6E4A5C(uint64_t result)
{
  if (*(result + 248) == 1)
  {
    v8 = (result + 56);
    v7 = sub_1AE652064((result + 56), "BEGIN IMMEDIATE");
    if ((v7 == 0) != (v7 != 5))
    {
      if (qword_1ED9AC8F8 != -1)
      {
        dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
      }

      sub_1AE731C2C(qword_1ED9AC900, v1, "Could not begin transaction, error %d", v2, v3, v4, v5, v6, v7);
    }

    sub_1AE652064(v8, "DELETE FROM RecipientByLangMatrix");
    sub_1AE652064(v8, "DELETE FROM EmojiByApp");
    sub_1AE652064(v8, "DELETE FROM OfflineAdaptationTimeByApp");
    operator new();
  }

  return result;
}

void sub_1AE6E50EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v36 = __cxa_begin_catch(exception_object);
  if (qword_1ED9AC8F8 != -1)
  {
    v45 = v36;
    dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    v36 = v45;
  }

  v37 = qword_1ED9AC900;
  v38 = (*(*v36 + 16))(v36);
  sub_1AE731C2C(v37, v39, "Serialization of languagelikelihood.dat model failed due to busy signal: %s", v40, v41, v42, v43, v44, v38);

  __cxa_end_catch();
}

void sub_1AE6E53A8(uint64_t a1, const __CFString *a2, uint64_t **a3)
{
  if (a2)
  {
    sub_1AE5CC874(a2, __p);
    sub_1AE652648(a1 + 56, __p, a3);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = 0;
    LOBYTE(__p[0]) = 0;
    sub_1AE652648(a1 + 56, __p, a3);
  }
}

void sub_1AE6E541C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6E5438(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a2;
  v161 = *MEMORY[0x1E69E9840];
  if (!a2 && a3)
  {
    return 0;
  }

  if (!a2)
  {
    v5 = a3;
    v139[1] = 0;
    v140 = 0;
    v139[0] = &v139[1];
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_1AE652648(a1 + 56, &__p.__r_.__value_.__l.__data_, v139);
    sub_1AE627688(v139[1]);
    a3 = v5;
  }

  LOBYTE(v135) = 0;
  v6 = 0uLL;
  memset(v136, 0, 49);
  *v134 = 0u;
  v131 = a3;
  v132 = v4;
  if (a3 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v4 + 8 * v7) + 24);
      if (*(v8 + 23) < 0)
      {
        sub_1AE5DBF1C(&__p, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&__p.__r_.__value_.__l.__data_ = v9;
      }

      v10 = v134[0];
      v11 = v134[1] - v134[0];
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v134[1] - v134[0]) >> 3) + 1;
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1AE5CBB70();
      }

      if (0x5555555555555556 * (-v134[0] >> 3) > v12)
      {
        v12 = 0x5555555555555556 * (-v134[0] >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v134[0] >> 3) >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        if (v13 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v14 = (8 * ((v134[1] - v134[0]) >> 3));
      *v14 = __p;
      memset(&__p, 0, sizeof(__p));
      v15 = v14 + 1;
      v16 = v14 - v11;
      memcpy(v14 - v11, v134[0], v11);
      v134[0] = v16;
      if (v10)
      {
        operator delete(v10);
        v134[1] = v15;
        v17 = v132;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v17 = v132;
        v134[1] = v15;
      }

      v18 = *(*(v17 + 8 * v7) + 24);
      if (*(v18 + 47) < 0)
      {
        sub_1AE5DBF1C(&__p, *(v18 + 24), *(v18 + 32));
      }

      else
      {
        __p = *(v18 + 24);
      }

      v19 = v17;
      sub_1AE65569C(&v155, (v18 + 48));
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v21 = *(v18 + 72);
      v20 = *(v18 + 80);
      __dst.__r_.__value_.__r.__words[0] = &v158;
      __dst.__r_.__value_.__s.__data_[8] = 0;
      v22 = (v20 - v21);
      if (v20 != v21)
      {
        if ((v22 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      v23 = v155;
      if (v155 != p_dst)
      {
        v24 = *&v136[9];
        do
        {
          if (v24 < *&v136[17])
          {
            if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
            {
              sub_1AE5DBF1C(v24, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
            }

            else
            {
              v25 = *&v23->__r_.__value_.__l.__data_;
              *(v24 + 16) = *(&v23->__r_.__value_.__l + 2);
              *v24 = v25;
            }

            v24 += 24;
          }

          else
          {
            v26 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *&v136[1]) >> 3);
            v27 = v26 + 1;
            if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1AE5CBB70();
            }

            if (0x5555555555555556 * ((*&v136[17] - *&v136[1]) >> 3) > v27)
            {
              v27 = 0x5555555555555556 * ((*&v136[17] - *&v136[1]) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*&v136[17] - *&v136[1]) >> 3) >= 0x555555555555555)
            {
              v28 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v28 = v27;
            }

            v142.__locale_ = &v136[1];
            if (v28)
            {
              if (v28 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1AE5CB09C();
            }

            v29 = 24 * v26;
            v139[0] = 0;
            v139[1] = v29;
            v30 = 0;
            v140 = v29;
            v141 = 0;
            if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
            {
              sub_1AE5DBF1C(v29, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
              v29 = v139[1];
              v32 = v140;
              v30 = v141;
            }

            else
            {
              v31 = *&v23->__r_.__value_.__l.__data_;
              *(v29 + 16) = *(&v23->__r_.__value_.__l + 2);
              *v29 = v31;
              v32 = v29;
            }

            v24 = v32 + 24;
            v33 = (v29 - (*&v136[9] - *&v136[1]));
            memcpy(v33, *&v136[1], *&v136[9] - *&v136[1]);
            v34 = *&v136[1];
            *&v136[1] = v33;
            *&v136[9] = v24;
            *&v136[17] = v30;
            if (v34)
            {
              operator delete(v34);
            }
          }

          *&v136[9] = v24;
          ++v23;
        }

        while (v23 != p_dst);
        v22 = v159;
      }

      v35 = v158;
      if (v158 != v22)
      {
        v36 = *&v136[33];
        do
        {
          if (v36 < *&v136[41])
          {
            if (*(v35 + 23) < 0)
            {
              sub_1AE5DBF1C(v36, *v35, v35[1]);
            }

            else
            {
              v37 = *v35;
              v36[2] = v35[2];
              *v36 = v37;
            }

            v36[3] = v35[3];
            v36 += 4;
          }

          else
          {
            v38 = (v36 - *&v136[25]) >> 5;
            if ((v38 + 1) >> 59)
            {
              sub_1AE5CBB70();
            }

            v39 = (*&v136[41] - *&v136[25]) >> 4;
            if (v39 <= v38 + 1)
            {
              v39 = v38 + 1;
            }

            if (*&v136[41] - *&v136[25] >= 0x7FFFFFFFFFFFFFE0uLL)
            {
              v40 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v40 = v39;
            }

            v142.__locale_ = &v136[25];
            if (v40)
            {
              if (!(v40 >> 59))
              {
                operator new();
              }

              sub_1AE5CB09C();
            }

            v41 = (32 * v38);
            v139[0] = 0;
            v139[1] = v41;
            v42 = 0;
            v140 = v41;
            v141 = 0;
            if (*(v35 + 23) < 0)
            {
              sub_1AE5DBF1C(v41, *v35, v35[1]);
              v44 = v139[1];
              v45 = v140;
              v42 = v141;
            }

            else
            {
              v43 = *v35;
              v41[2] = v35[2];
              *v41 = v43;
              v44 = v41;
              v45 = v41;
            }

            v41[3] = v35[3];
            v36 = v45 + 4;
            v46 = &v44[-(*&v136[33] - *&v136[25])];
            memcpy(v46, *&v136[25], *&v136[33] - *&v136[25]);
            v47 = *&v136[25];
            *&v136[25] = v46;
            *&v136[33] = v36;
            *&v136[41] = v42;
            if (v47)
            {
              operator delete(v47);
            }
          }

          *&v136[33] = v36;
          v35 += 4;
          v22 = v159;
        }

        while (v35 != v159);
        v35 = v158;
      }

      if (v35)
      {
        v48 = v35;
        if (v22 != v35)
        {
          do
          {
            v49 = *(v22 - 9);
            v22 -= 4;
            if (v49 < 0)
            {
              operator delete(*v22);
            }
          }

          while (v22 != v35);
          v48 = v158;
        }

        v159 = v35;
        operator delete(v48);
      }

      v50 = v155;
      v4 = v19;
      if (v155)
      {
        p_data = &p_dst->__r_.__value_.__l.__data_;
        v52 = v155;
        if (p_dst != v155)
        {
          do
          {
            v53 = *(p_data - 1);
            p_data -= 3;
            if (v53 < 0)
            {
              operator delete(*p_data);
            }
          }

          while (p_data != v50);
          v52 = v155;
        }

        p_dst = v50;
        operator delete(v52);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v7;
    }

    while (v7 != v131);
    v6 = *v134;
  }

  v54 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v6.n128_u64[1] - v6.n128_u64[0]) >> 3));
  if (v6.n128_u64[1] == v6.n128_u64[0])
  {
    v55 = 0;
  }

  else
  {
    v55 = v54;
  }

  sub_1AE6E7E68(v6.n128_u64[0], v6.n128_u64[1], v55, 1, v6);
  sub_1AE5F2968(v139);
  v56 = v134[0];
  if (v134[1] != v134[0])
  {
    v57 = *(v134[0] + 23);
    v58 = v57 >= 0 ? v134[0] : *v134[0];
    if (v57 >= 0)
    {
      sub_1AE5DB608(&v140, v58, *(v134[0] + 23));
    }

    else
    {
      sub_1AE5DB608(&v140, v58, *(v134[0] + 1));
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v134[1] - v134[0]) >> 3) >= 2)
    {
      v59 = 0;
      v60 = 1;
      do
      {
        sub_1AE5DB608(&v140, "-", 1);
        v61 = v56[v59 + 47];
        if (v61 >= 0)
        {
          v62 = &v56[v59 + 24];
        }

        else
        {
          v62 = *&v56[v59 + 24];
        }

        if (v61 >= 0)
        {
          sub_1AE5DB608(&v140, v62, v56[v59 + 47]);
        }

        else
        {
          sub_1AE5DB608(&v140, v62, *&v56[v59 + 32]);
        }

        ++v60;
        v56 = v134[0];
        v59 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v134[1] - v134[0]) >> 3) > v60);
    }
  }

  if ((v150 & 0x10) != 0)
  {
    v64 = v149;
    if (v149 < v146)
    {
      v149 = v146;
      v64 = v146;
    }

    v65 = &v145;
  }

  else
  {
    if ((v150 & 8) == 0)
    {
      v63 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      goto LABEL_127;
    }

    v65 = v143;
    v64 = v144;
  }

  v66 = *v65;
  v63 = v64 - *v65;
  if (v63 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  if (v63 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v64 - *v65;
  if (v63)
  {
    memmove(&__dst, v66, v63);
  }

LABEL_127:
  __dst.__r_.__value_.__s.__data_[v63] = 0;
  v67 = std::string::insert(&__dst, 0, "Multilingual-", 0xDuLL);
  v68 = *&v67->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v68;
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  v69 = std::string::append(&__p, ".model", 6uLL);
  v138 = *v69;
  v69->__r_.__value_.__l.__size_ = 0;
  v69->__r_.__value_.__r.__words[2] = 0;
  v69->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_129;
    }

LABEL_190:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_129;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_190;
  }

LABEL_129:
  v70 = v134[0];
  if (*(v134[0] + 23) < 0)
  {
    v70 = *v134[0];
  }

  v71 = CFStringCreateWithCString(0, v70, 0x8000100u);
  v72 = CFLocaleCreate(0, v71);
  v73 = *MEMORY[0x1E69AC080];
  __dst.__r_.__value_.__r.__words[0] = 0;
  __dst.__r_.__value_.__l.__size_ = &__dst;
  __dst.__r_.__value_.__r.__words[2] = 0x2000000000;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  __p.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  __p.__r_.__value_.__l.__size_ = 0x40000000;
  __p.__r_.__value_.__r.__words[2] = sub_1AE5D2F0C;
  v155 = &unk_1E7A2D8E8;
  v157 = v73;
  p_dst = &__dst;
  cf = v72;
  LDEnumerateAssetDataItems();
  v74 = *(__dst.__r_.__value_.__l.__size_ + 24);
  _Block_object_dispose(&__dst, 8);
  PathComponent = 0;
  v76 = 0;
  v137 = v74;
  memset(&v136[49], 0, 24);
  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v138.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v138.__r_.__value_.__l.__size_;
  }

  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v78 = &v138;
  }

  else
  {
    v78 = v138.__r_.__value_.__r.__words[0];
  }

  while (v76 < CFArrayGetCount(v74))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v74, v76);
    PathComponent = CFURLCopyLastPathComponent(ValueAtIndex);
    sub_1AE5CC874(PathComponent, &__p);
    v80 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v81 = __p.__r_.__value_.__l.__size_;
    v82 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      v81 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      p_p = &__p;
    }

    if (v81 >= size)
    {
      v84 = size;
    }

    else
    {
      v84 = v81;
    }

    v85 = v81 == size;
    if (memcmp(v78, p_p, v84))
    {
      v85 = 0;
    }

    if (v80 < 0)
    {
      operator delete(v82);
    }

    ++v76;
    if (v85)
    {
      v86 = CFURLCopyPath(ValueAtIndex);
      sub_1AE5CC874(v86, &__p);
      *&v136[49] = __p;
      break;
    }
  }

  CFRelease(cf);
  CFRelease(PathComponent);
  v93 = v136[72];
  if (v136[72] < 0)
  {
    v93 = *&v136[57];
  }

  if (!v93)
  {
    if (qword_1ED9AC8F8 != -1)
    {
      dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    }

    v111 = qword_1ED9AC900;
    if ((v150 & 0x10) != 0)
    {
      v113 = v149;
      if (v149 < v146)
      {
        v149 = v146;
        v113 = v146;
      }

      v114 = &v145;
    }

    else
    {
      if ((v150 & 8) == 0)
      {
        v112 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_206:
        __p.__r_.__value_.__s.__data_[v112] = 0;
        v116 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v116 = __p.__r_.__value_.__r.__words[0];
        }

        sub_1AE731C2C(v111, v87, "Could not find Multilingual Classifier for language: %s", v88, v89, v90, v91, v92, v116);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_212;
      }

      v114 = v143;
      v113 = v144;
    }

    v115 = *v114;
    v112 = v113 - *v114;
    if (v112 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AE5DB4F0();
    }

    if (v112 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v113 - *v114;
    if (v112)
    {
      memmove(&__p, v115, v112);
    }

    goto LABEL_206;
  }

  v94 = *(a1 + 16);
  if (!v94)
  {
    goto LABEL_211;
  }

  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v95 = &v138;
  }

  else
  {
    v95 = v138.__r_.__value_.__r.__words[0];
  }

  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v96 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v96 = v138.__r_.__value_.__l.__size_;
  }

  v97 = (a1 + 16);
  do
  {
    while (1)
    {
      v98 = *(v94 + 55);
      v99 = v98 >= 0 ? v94 + 4 : v94[4];
      v100 = v98 >= 0 ? *(v94 + 55) : v94[5];
      v101 = v96 >= v100 ? v100 : v96;
      v102 = memcmp(v99, v95, v101);
      if (v102)
      {
        break;
      }

      if (v100 >= v96)
      {
        goto LABEL_175;
      }

LABEL_161:
      v94 = v94[1];
      if (!v94)
      {
        goto LABEL_176;
      }
    }

    if (v102 < 0)
    {
      goto LABEL_161;
    }

LABEL_175:
    v97 = v94;
    v94 = *v94;
  }

  while (v94);
LABEL_176:
  if (v97 == (a1 + 16))
  {
    goto LABEL_211;
  }

  v105 = v97[4];
  v104 = v97 + 4;
  v103 = v105;
  v106 = *(v104 + 23);
  if (v106 >= 0)
  {
    v107 = v104;
  }

  else
  {
    v107 = v103;
  }

  if (v106 >= 0)
  {
    v108 = *(v104 + 23);
  }

  else
  {
    v108 = v104[1];
  }

  if (v108 >= v96)
  {
    v109 = v96;
  }

  else
  {
    v109 = v108;
  }

  v110 = memcmp(v95, v107, v109);
  if (v110)
  {
    if (v110 < 0)
    {
LABEL_211:
      operator new();
    }
  }

  else if (v96 < v108)
  {
    goto LABEL_211;
  }

LABEL_212:
  if ((v136[72] & 0x80000000) != 0)
  {
    operator delete(*&v136[49]);
    v117 = v137;
    if (!v137)
    {
      goto LABEL_217;
    }

    goto LABEL_216;
  }

  v117 = v137;
  if (v137)
  {
LABEL_216:
    CFRelease(v117);
  }

LABEL_217:
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  v139[0] = *MEMORY[0x1E69E54D8];
  v118 = *(MEMORY[0x1E69E54D8] + 72);
  *(v139 + *(v139[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
  v140 = v118;
  v141 = MEMORY[0x1E69E5548] + 16;
  if (v148 < 0)
  {
    operator delete(v147);
  }

  v141 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v142);
  std::iostream::~basic_iostream();
  MEMORY[0x1B2706340](&v151);
  if (v134[0])
  {
    v119 = v134[1];
    while (v119 != v134[0])
    {
      v120 = *(v119 - 1);
      v119 -= 3;
      if (v120 < 0)
      {
        operator delete(*v119);
      }
    }

    operator delete(v134[0]);
  }

  v121 = *&v136[25];
  if (*&v136[25])
  {
    v122 = *&v136[33];
    v123 = *&v136[25];
    if (*&v136[33] != *&v136[25])
    {
      do
      {
        v124 = *(v122 - 9);
        v122 -= 4;
        if (v124 < 0)
        {
          operator delete(*v122);
        }
      }

      while (v122 != v121);
      v123 = *&v136[25];
    }

    *&v136[33] = v121;
    operator delete(v123);
  }

  v125 = *&v136[1];
  if (*&v136[1])
  {
    v126 = *&v136[9];
    v127 = *&v136[1];
    if (*&v136[9] != *&v136[1])
    {
      do
      {
        v128 = *(v126 - 1);
        v126 -= 3;
        if (v128 < 0)
        {
          operator delete(*v126);
        }
      }

      while (v126 != v125);
      v127 = *&v136[1];
    }

    *&v136[9] = v125;
    operator delete(v127);
  }

  if ((v136[0] & 0x80000000) != 0)
  {
    operator delete(v135);
  }

  return 0;
}

void sub_1AE6E7ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, const void *a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1AE6276E4(&STACK[0x2B0]);
  if (a40 < 0)
  {
    operator delete(__p);
  }

  sub_1AE65B4FC(&a41);
  if (a47 < 0)
  {
    operator delete(a42);
  }

  sub_1AE5F2C0C(&a49, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B2706340](&a65);
  sub_1AE645234(&a23);
  sub_1AE6562D0(&a26);
  _Unwind_Resume(a1);
}

__n128 sub_1AE6E7E68(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
  v281 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a2;
  __s2 = &a2[-2].n128_u64[1];
  j = a1;
  while (1)
  {
    v10 = j;
    v11 = v8 - j;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - j) >> 3);
    v13 = v12 - 2;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          result.n128_u64[0] = sub_1AE6E92C4(v10, (v10 + 24), __s2).n128_u64[0];
          return result;
        case 4:

          result.n128_u64[0] = sub_1AE6E9508(v10, (v10 + 24), (v10 + 48), __s2).n128_u64[0];
          return result;
        case 5:

          result.n128_u64[0] = sub_1AE6E96A0(v10, (v10 + 24), (v10 + 48), (v10 + 72), __s2).n128_u64[0];
          return result;
      }

      goto LABEL_10;
    }

    if (v12 < 2)
    {
      return result;
    }

    v8 = a2;
    if (v12 == 2)
    {
      break;
    }

LABEL_10:
    v276 = v10;
    if (v11 <= 575)
    {
      if ((a4 & 1) == 0)
      {
        if (v10 != v8)
        {
          v244 = (v10 + 24);
          if ((v10 + 24) != a2)
          {
            while (1)
            {
              v247 = v10;
              v10 = v244;
              v248 = *(v247 + 47);
              if (v248 >= 0)
              {
                v249 = v244;
              }

              else
              {
                v249 = v247[3];
              }

              if (v248 >= 0)
              {
                v250 = *(v247 + 47);
              }

              else
              {
                v250 = v247[4];
              }

              v251 = *(v247 + 23);
              if (v251 >= 0)
              {
                v252 = v247;
              }

              else
              {
                v252 = *v247;
              }

              if (v251 >= 0)
              {
                v253 = *(v247 + 23);
              }

              else
              {
                v253 = v247[1];
              }

              if (v253 >= v250)
              {
                v254 = v250;
              }

              else
              {
                v254 = v253;
              }

              v255 = memcmp(v249, v252, v254);
              if (v255)
              {
                v246 = a2;
                if (v255 < 0)
                {
                  goto LABEL_498;
                }
              }

              else
              {
                v246 = a2;
                if (v250 < v253)
                {
LABEL_498:
                  v256 = *v10;
                  v278 = *(v10 + 16);
                  v277 = v256;
                  *(v10 + 8) = 0;
                  *(v10 + 16) = 0;
                  *v10 = 0;
                  if (v278 >= 0)
                  {
                    v257 = &v277;
                  }

                  else
                  {
                    v257 = v277.n128_u64[0];
                  }

                  v258 = v10;
                  if (v278 >= 0)
                  {
                    v259 = HIBYTE(v278);
                  }

                  else
                  {
                    v259 = v277.n128_u64[1];
                  }

                  v260 = v258;
                  while (1)
                  {
                    *v258 = *(v258 - 24);
                    *(v258 + 16) = *(v258 - 8);
                    *(v258 - 1) = 0;
                    *(v258 - 24) = 0;
                    v261 = *(v258 - 25);
                    if (v261 >= 0)
                    {
                      v262 = (v258 - 48);
                    }

                    else
                    {
                      v262 = *(v258 - 48);
                    }

                    if (v261 >= 0)
                    {
                      v263 = *(v258 - 25);
                    }

                    else
                    {
                      v263 = *(v258 - 40);
                    }

                    if (v263 >= v259)
                    {
                      v264 = v259;
                    }

                    else
                    {
                      v264 = v263;
                    }

                    v265 = memcmp(v257, v262, v264);
                    if (v265)
                    {
                      if ((v265 & 0x80000000) == 0)
                      {
LABEL_477:
                        v245 = (v258 - 24);
                        result = v277;
                        v245[1].n128_u64[0] = v278;
                        *v245 = result;
                        v10 = v260;
                        v246 = a2;
                        break;
                      }
                    }

                    else if (v259 >= v263)
                    {
                      goto LABEL_477;
                    }

                    v258 -= 24;
                  }
                }
              }

              v244 = (v10 + 24);
              if ((v10 + 24) == v246)
              {
                return result;
              }
            }
          }
        }

        return result;
      }

      if (v10 == v8)
      {
        return result;
      }

      v127 = (v10 + 24);
      if ((v10 + 24) == a2)
      {
        return result;
      }

      v128 = 0;
      v129 = v10;
      while (1)
      {
        v179 = v129;
        v129 = v127;
        v180 = v179[2].n128_i8[15];
        if (v180 >= 0)
        {
          v181 = v127;
        }

        else
        {
          v181 = v179[1].n128_u64[1];
        }

        if (v180 >= 0)
        {
          v182 = v179[2].n128_u8[15];
        }

        else
        {
          v182 = v179[2].n128_u64[0];
        }

        v183 = v179[1].n128_i8[7];
        if (v183 >= 0)
        {
          v184 = v179;
        }

        else
        {
          v184 = v179->n128_u64[0];
        }

        if (v183 >= 0)
        {
          v185 = v179[1].n128_u8[7];
        }

        else
        {
          v185 = v179->n128_u64[1];
        }

        if (v185 >= v182)
        {
          v186 = v182;
        }

        else
        {
          v186 = v185;
        }

        v187 = memcmp(v181, v184, v186);
        if (v187)
        {
          v188 = v276;
          if (v187 < 0)
          {
            goto LABEL_380;
          }
        }

        else
        {
          v188 = v276;
          if (v182 < v185)
          {
LABEL_380:
            v189 = *v129;
            v278 = *(v129 + 16);
            v277 = v189;
            if (v278 >= 0)
            {
              v190 = &v277;
            }

            else
            {
              v190 = v189.n128_u64[0];
            }

            if (v278 >= 0)
            {
              v191 = HIBYTE(v278);
            }

            else
            {
              v191 = v189.n128_u64[1];
            }

            *(v129 + 16) = v179[1].n128_u64[0];
            *v129 = *v179;
            v179[1].n128_u8[7] = 0;
            v179->n128_u8[0] = 0;
            v178 = v188;
            if (v179 != v188)
            {
              v192 = v128;
              while (1)
              {
                v193 = (v276 + v192);
                v194 = v276->n128_i8[v192 - 1];
                if (v194 >= 0)
                {
                  v195 = &v276[-1] + v192 - 8;
                }

                else
                {
                  v195 = *(&v276[-1] + v192 - 8);
                }

                if (v194 >= 0)
                {
                  v196 = v276->n128_u8[v192 - 1];
                }

                else
                {
                  v196 = *(v276[-1].n128_u64 + v192);
                }

                if (v196 >= v191)
                {
                  v197 = v191;
                }

                else
                {
                  v197 = v196;
                }

                v198 = memcmp(v190, v195, v197);
                if (v198)
                {
                  if ((v198 & 0x80000000) == 0)
                  {
                    v178 = (v276 + v192);
                    break;
                  }
                }

                else if (v191 >= v196)
                {
                  v178 = v179;
                  break;
                }

                v179 = (v179 - 24);
                *v193 = *(v276 + v192 - 24);
                v193[1].n128_u64[0] = *(&v276->n128_u64[-1] + v192);
                v193[-1].n128_u8[15] = 0;
                v193[-2].n128_u8[8] = 0;
                v192 -= 24;
                if (!v192)
                {
                  v178 = v276;
                  break;
                }
              }
            }

            result = v277;
            v178[1].n128_u64[0] = v278;
            *v178 = result;
          }
        }

        v127 = (v129 + 24);
        v128 += 24;
        if ((v129 + 24) == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      if (v10 == v8)
      {
        return result;
      }

      v268 = v11;
      v130 = v13 >> 1;
      v131 = v13 >> 1;
      while (1)
      {
        v134 = v131;
        if (v130 < v131)
        {
          goto LABEL_274;
        }

        v135 = (2 * v131) | 1;
        v136 = v10 + 24 * v135;
        v137 = 2 * v131 + 2;
        if (v137 >= v12)
        {
          goto LABEL_294;
        }

        v138 = v131;
        v139 = (v136 + 24);
        v140 = *(v136 + 23);
        v141 = v140 >= 0 ? (v10 + 24 * v135) : *v136;
        v142 = v140 >= 0 ? *(v136 + 23) : *(v136 + 8);
        v143 = *(v136 + 47);
        v144 = v143 >= 0 ? (v136 + 24) : *(v136 + 24);
        v145 = v143 >= 0 ? *(v136 + 47) : *(v136 + 32);
        v146 = v145 >= v142 ? v142 : v145;
        v147 = memcmp(v141, v144, v146);
        if (v147)
        {
          break;
        }

        v63 = v142 >= v145;
        v10 = v276;
        v134 = v138;
        if (v63)
        {
          goto LABEL_294;
        }

LABEL_295:
        v148 = v10 + 24 * v134;
        v149 = *(v139 + 23);
        if (v149 >= 0)
        {
          v150 = v139;
        }

        else
        {
          v150 = *v139;
        }

        if (v149 >= 0)
        {
          v151 = *(v139 + 23);
        }

        else
        {
          v151 = v139[1];
        }

        v152 = *(v148 + 23);
        if (v152 >= 0)
        {
          v153 = (v10 + 24 * v134);
        }

        else
        {
          v153 = *v148;
        }

        if (v152 >= 0)
        {
          v154 = *(v148 + 23);
        }

        else
        {
          v154 = *(v148 + 8);
        }

        if (v154 >= v151)
        {
          v155 = v151;
        }

        else
        {
          v155 = v154;
        }

        v156 = memcmp(v150, v153, v155);
        if (v156)
        {
          v10 = v276;
          if ((v156 & 0x80000000) == 0)
          {
            goto LABEL_315;
          }
        }

        else
        {
          v63 = v151 >= v154;
          v10 = v276;
          if (v63)
          {
LABEL_315:
            v270 = v134;
            v157 = *v148;
            v278 = *(v148 + 16);
            v277 = v157;
            *(v148 + 8) = 0;
            *(v148 + 16) = 0;
            *v148 = 0;
            v158 = *v139;
            *(v148 + 16) = v139[2];
            *v148 = v158;
            *(v139 + 23) = 0;
            *v139 = 0;
            if (v130 < v137)
            {
LABEL_272:
              v132 = v139;
LABEL_273:
              v133 = v277;
              v132[1].n128_u64[0] = v278;
              *v132 = v133;
              v134 = v270;
              goto LABEL_274;
            }

            v159 = &v277;
            if (v278 < 0)
            {
              v159 = v277.n128_u64[0];
            }

            __s2a = v159;
            if (v278 >= 0)
            {
              v160 = HIBYTE(v278);
            }

            else
            {
              v160 = v277.n128_u64[1];
            }

            while (2)
            {
              v162 = (2 * v137) | 1;
              v163 = v10 + 24 * v162;
              v137 = 2 * v137 + 2;
              if (v137 < v12)
              {
                v164 = v130;
                v132 = (v163 + 24);
                v165 = *(v163 + 23);
                if (v165 >= 0)
                {
                  v166 = v163;
                }

                else
                {
                  v166 = *v163;
                }

                if (v165 >= 0)
                {
                  v167 = *(v163 + 23);
                }

                else
                {
                  v167 = *(v163 + 8);
                }

                v168 = *(v163 + 47);
                if (v168 >= 0)
                {
                  v169 = (v163 + 24);
                }

                else
                {
                  v169 = *(v163 + 24);
                }

                if (v168 >= 0)
                {
                  v170 = *(v163 + 47);
                }

                else
                {
                  v170 = *(v163 + 32);
                }

                if (v170 >= v167)
                {
                  v171 = v167;
                }

                else
                {
                  v171 = v170;
                }

                v172 = memcmp(v166, v169, v171);
                if (v172)
                {
                  v130 = v164;
                  if ((v172 & 0x80000000) == 0)
                  {
                    break;
                  }

LABEL_342:
                  v173 = v132[1].n128_i8[7];
                  if (v173 >= 0)
                  {
                    v174 = v132;
                  }

                  else
                  {
                    v174 = v132->n128_u64[0];
                  }

                  if (v173 >= 0)
                  {
                    v175 = v132[1].n128_u8[7];
                  }

                  else
                  {
                    v175 = v132->n128_u64[1];
                  }

                  if (v160 >= v175)
                  {
                    v176 = v175;
                  }

                  else
                  {
                    v176 = v160;
                  }

                  v177 = memcmp(v174, __s2a, v176);
                  if (v177)
                  {
                    v10 = v276;
                    if (v177 < 0)
                    {
                      goto LABEL_272;
                    }
                  }

                  else
                  {
                    v10 = v276;
                    if (v175 < v160)
                    {
                      goto LABEL_272;
                    }
                  }

                  v161 = *v132;
                  v139[2] = v132[1].n128_u64[0];
                  *v139 = v161;
                  v132[1].n128_u8[7] = 0;
                  v132->n128_u8[0] = 0;
                  v139 = v132;
                  if (v130 < v137)
                  {
                    goto LABEL_273;
                  }

                  continue;
                }

                v63 = v167 >= v170;
                v130 = v164;
                if (!v63)
                {
                  goto LABEL_342;
                }
              }

              break;
            }

            v132 = v163;
            v137 = v162;
            goto LABEL_342;
          }
        }

LABEL_274:
        v131 = v134 - 1;
        if (!v134)
        {
          v199 = 0xAAAAAAAAAAAAAAABLL * (v268 >> 3);
          while (1)
          {
            v202 = 0;
            __s2b = a2;
            v269 = *v10;
            v279.n128_u64[0] = *(v10 + 8);
            *(v279.n128_u64 + 7) = *(v10 + 15);
            v271 = *(v10 + 23);
            *(v10 + 8) = 0;
            *(v10 + 16) = 0;
            *v10 = 0;
            do
            {
              v203 = v10;
              v204 = v10 + 24 * v202;
              v10 = v204 + 24;
              v205 = 2 * v202;
              v202 = (2 * v202) | 1;
              v206 = v205 + 2;
              if (v205 + 2 < v199)
              {
                v209 = *(v204 + 48);
                v208 = v204 + 48;
                v207 = v209;
                v210 = *(v208 - 1);
                if (v210 >= 0)
                {
                  v211 = v10;
                }

                else
                {
                  v211 = *(v208 - 24);
                }

                if (v210 >= 0)
                {
                  v212 = *(v208 - 1);
                }

                else
                {
                  v212 = *(v208 - 16);
                }

                v213 = *(v208 + 23);
                if (v213 >= 0)
                {
                  v214 = v208;
                }

                else
                {
                  v214 = v207;
                }

                if (v213 >= 0)
                {
                  v215 = *(v208 + 23);
                }

                else
                {
                  v215 = *(v208 + 8);
                }

                if (v215 >= v212)
                {
                  v216 = v212;
                }

                else
                {
                  v216 = v215;
                }

                v217 = memcmp(v211, v214, v216);
                if (v217)
                {
                  if (v217 < 0)
                  {
                    goto LABEL_407;
                  }
                }

                else if (v212 < v215)
                {
LABEL_407:
                  v10 = v208;
                  v202 = v206;
                }
              }

              result = *v10;
              v203[1].n128_u64[0] = *(v10 + 16);
              *v203 = result;
              *(v10 + 23) = 0;
              *v10 = 0;
            }

            while (v202 <= ((v199 - 2) >> 1));
            a2 = (a2 - 24);
            if (v10 == &__s2b[-2].n128_i8[8])
            {
              *v10 = v269;
              v200 = *(v279.n128_i64 + 7);
              *(v10 + 8) = v279.n128_u64[0];
              *(v10 + 15) = v200;
              *(v10 + 23) = v271;
            }

            else
            {
              result = *(__s2b - 24);
              *(v10 + 16) = __s2b[-1].n128_u64[1];
              *v10 = result;
              __s2b[-2].n128_u64[1] = v269;
              v218 = v279.n128_u64[0];
              *(__s2b[-1].n128_u64 + 7) = *(v279.n128_u64 + 7);
              __s2b[-1].n128_u64[0] = v218;
              __s2b[-1].n128_u8[15] = v271;
              v219 = v10 - v276 + 24;
              if (v219 >= 25)
              {
                v220 = -2 - 0x5555555555555555 * (v219 >> 3);
                v221 = v220 >> 1;
                v222 = v276 + 24 * (v220 >> 1);
                v223 = v222[23];
                if (v223 >= 0)
                {
                  v224 = v276 + 24 * (v220 >> 1);
                }

                else
                {
                  v224 = *v222;
                }

                if (v223 >= 0)
                {
                  v225 = v222[23];
                }

                else
                {
                  v225 = *(v222 + 1);
                }

                v226 = *(v10 + 23);
                if (v226 >= 0)
                {
                  v227 = v10;
                }

                else
                {
                  v227 = *v10;
                }

                if (v226 >= 0)
                {
                  v228 = *(v10 + 23);
                }

                else
                {
                  v228 = *(v10 + 8);
                }

                if (v228 >= v225)
                {
                  v229 = v225;
                }

                else
                {
                  v229 = v228;
                }

                v230 = memcmp(v224, v227, v229);
                if (v230)
                {
                  if (v230 < 0)
                  {
LABEL_451:
                    v231 = *v10;
                    v278 = *(v10 + 16);
                    v277 = v231;
                    *(v10 + 8) = 0;
                    *(v10 + 16) = 0;
                    *v10 = 0;
                    if (v278 >= 0)
                    {
                      v232 = &v277;
                    }

                    else
                    {
                      v232 = v277.n128_u64[0];
                    }

                    if (v278 >= 0)
                    {
                      v233 = HIBYTE(v278);
                    }

                    else
                    {
                      v233 = v277.n128_u64[1];
                    }

                    v234 = *v222;
                    *(v10 + 16) = *(v222 + 2);
                    *v10 = v234;
                    v222[23] = 0;
                    *v222 = 0;
                    if (v220 >= 2)
                    {
                      v235 = v276;
                      while (1)
                      {
                        v237 = v221 - 1;
                        v221 = (v221 - 1) >> 1;
                        v238 = v235 + 24 * v221;
                        v239 = v238[23];
                        if (v239 >= 0)
                        {
                          v240 = v235 + 24 * v221;
                        }

                        else
                        {
                          v240 = *v238;
                        }

                        if (v239 >= 0)
                        {
                          v241 = v238[23];
                        }

                        else
                        {
                          v241 = *(v238 + 1);
                        }

                        if (v233 >= v241)
                        {
                          v242 = v241;
                        }

                        else
                        {
                          v242 = v233;
                        }

                        v243 = memcmp(v240, v232, v242);
                        if (v243)
                        {
                          if ((v243 & 0x80000000) == 0)
                          {
                            break;
                          }
                        }

                        else if (v241 >= v233)
                        {
                          break;
                        }

                        v236 = *v238;
                        *(v222 + 2) = *(v238 + 2);
                        *v222 = v236;
                        v238[23] = 0;
                        *v238 = 0;
                        v222 = v238;
                        v235 = v276;
                        if (v237 <= 1)
                        {
                          goto LABEL_473;
                        }
                      }
                    }

                    v238 = v222;
LABEL_473:
                    result = v277;
                    *(v238 + 2) = v278;
                    *v238 = result;
                  }
                }

                else if (v225 < v228)
                {
                  goto LABEL_451;
                }
              }
            }

            v201 = v199-- <= 2;
            v10 = v276;
            if (v201)
            {
              return result;
            }
          }
        }
      }

      v10 = v276;
      v134 = v138;
      if (v147 < 0)
      {
        goto LABEL_295;
      }

LABEL_294:
      v139 = v136;
      v137 = v135;
      goto LABEL_295;
    }

    v14 = v12 >> 1;
    v15 = v10 + 24 * (v12 >> 1);
    if (v11 < 0xC01)
    {
      sub_1AE6E92C4(v15, v10, __s2);
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_33:
      v28 = *v10;
      v280 = *(v10 + 16);
      v279 = v28;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *v10 = 0;
      if (v280 >= 0)
      {
        v29 = &v279;
      }

      else
      {
        v29 = v279.n128_u64[0];
      }

      if (v280 >= 0)
      {
        v30 = HIBYTE(v280);
      }

      else
      {
        v30 = v279.n128_u64[1];
      }

      for (i = (v10 + 24); ; i = (i + 24))
      {
        v32 = i[1].n128_i8[7];
        v33 = v32 >= 0 ? i : i->n128_u64[0];
        v34 = v32 >= 0 ? i[1].n128_u8[7] : i->n128_u64[1];
        v35 = v30 >= v34 ? v34 : v30;
        v36 = memcmp(v33, v29, v35);
        if (v36)
        {
          break;
        }

        if (v34 >= v30)
        {
          goto LABEL_53;
        }

LABEL_41:
        ;
      }

      if (v36 < 0)
      {
        goto LABEL_41;
      }

LABEL_53:
      v37 = &a2[-2].n128_i8[8];
      if (&i[-2].n128_i8[8] == v10)
      {
        v38 = v8;
        if (i < v8)
        {
          v39 = &a2[-2].n128_i8[8];
          do
          {
            while (1)
            {
              v38 = v39;
              v64 = v39[23];
              v65 = (v64 & 0x80u) == 0 ? v38 : *v38;
              v66 = (v64 & 0x80u) == 0 ? v64 : v38[1];
              v67 = v30 >= v66 ? v66 : v30;
              v68 = memcmp(v65, v29, v67);
              v39 = (v38 - 3);
              if (!v68)
              {
                break;
              }

              if (v68 < 0 || i >= v38)
              {
                goto LABEL_68;
              }
            }

            v63 = v66 < v30 || i >= v38;
          }

          while (!v63);
        }
      }

      else
      {
        do
        {
          while (1)
          {
            v38 = v37;
            v40 = v37[23];
            v41 = (v40 & 0x80u) == 0 ? v38 : *v38;
            v42 = (v40 & 0x80u) == 0 ? v40 : v38[1];
            v43 = v30 >= v42 ? v42 : v30;
            v44 = memcmp(v41, v29, v43);
            v37 = (v38 - 3);
            if (v44)
            {
              break;
            }

            if (v42 < v30)
            {
              goto LABEL_68;
            }
          }
        }

        while ((v44 & 0x80000000) == 0);
      }

LABEL_68:
      j = i;
      if (i < v38)
      {
        j = i;
        v45 = v38;
        do
        {
          v46 = *j;
          v278 = j[1].n128_i64[0];
          v277 = v46;
          v47 = *v45;
          j[1].n128_u64[0] = v45[2];
          *j = v47;
          v48 = v277;
          v45[2] = v278;
          *v45 = v48;
          if (v280 >= 0)
          {
            v49 = &v279;
          }

          else
          {
            v49 = v279.n128_u64[0];
          }

          if (v280 >= 0)
          {
            v50 = HIBYTE(v280);
          }

          else
          {
            v50 = v279.n128_u64[1];
          }

          v51 = (j + 24);
          do
          {
            while (1)
            {
              j = v51;
              v52 = v51[1].n128_u8[7];
              v53 = (v52 & 0x80u) == 0 ? j : j->n128_u64[0];
              v54 = (v52 & 0x80u) == 0 ? v52 : j->n128_u64[1];
              v55 = v50 >= v54 ? v54 : v50;
              v56 = memcmp(v53, v49, v55);
              v51 = (j + 24);
              if (v56)
              {
                break;
              }

              if (v54 >= v50)
              {
                goto LABEL_90;
              }
            }
          }

          while (v56 < 0);
LABEL_90:
          v57 = v45 - 3;
          do
          {
            while (1)
            {
              v45 = v57;
              v58 = *(v57 + 23);
              v59 = v58 >= 0 ? v45 : *v45;
              v60 = v58 >= 0 ? v58 : v45[1];
              v61 = v50 >= v60 ? v60 : v50;
              v62 = memcmp(v59, v49, v61);
              v57 = v45 - 3;
              if (v62)
              {
                break;
              }

              if (v60 < v50)
              {
                goto LABEL_70;
              }
            }
          }

          while ((v62 & 0x80000000) == 0);
LABEL_70:
          ;
        }

        while (j < v45);
      }

      v69 = &j[-2].n128_u64[1];
      a1 = v276;
      if (&j[-2].n128_i8[8] == v276)
      {
        v8 = a2;
        if (j[-1].n128_i8[15] < 0)
        {
          operator delete(*v69);
        }
      }

      else
      {
        if (v276[1].n128_i8[7] < 0)
        {
          operator delete(v276->n128_u64[0]);
        }

        v70 = *v69;
        v276[1].n128_u64[0] = j[-1].n128_u64[1];
        *v276 = v70;
        j[-1].n128_u8[15] = 0;
        j[-2].n128_u8[8] = 0;
        v8 = a2;
      }

      result = v279;
      j[-1].n128_u64[1] = v280;
      *v69 = result;
      if (i < v38)
      {
LABEL_130:
        result.n128_u64[0] = sub_1AE6E7E68(v276, (j - 24), a3, a4 & 1, result).n128_u64[0];
        a4 = 0;
      }

      else
      {
        v71 = sub_1AE6E98B4(v276, &j[-2].n128_u64[1]);
        if (sub_1AE6E98B4(j, v8))
        {
          a2 = (j - 24);
          if (v71)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v71)
        {
          goto LABEL_130;
        }
      }
    }

    else
    {
      sub_1AE6E92C4(v10, v15, __s2);
      v16 = 24 * v14;
      sub_1AE6E92C4((v10 + 24), (v16 + v10 - 24), &a2[-3]);
      sub_1AE6E92C4((v10 + 48), (v10 + 24 + v16), &a2[-5].n128_u64[1]);
      sub_1AE6E92C4((v16 + v10 - 24), v15, (v10 + 24 + v16));
      v17 = *v10;
      v278 = *(v10 + 16);
      v277 = v17;
      v18 = *(v15 + 16);
      *v10 = *v15;
      *(v10 + 16) = v18;
      v19 = v277;
      *(v15 + 16) = v278;
      *v15 = v19;
      --a3;
      if (a4)
      {
        goto LABEL_33;
      }

LABEL_16:
      v20 = *(v10 - 1);
      if (v20 >= 0)
      {
        v21 = (v10 - 24);
      }

      else
      {
        v21 = *(v10 - 24);
      }

      if (v20 >= 0)
      {
        v22 = *(v10 - 1);
      }

      else
      {
        v22 = *(v10 - 16);
      }

      v23 = *(v10 + 23);
      if (v23 >= 0)
      {
        v24 = v10;
      }

      else
      {
        v24 = *v10;
      }

      if (v23 >= 0)
      {
        v25 = *(v10 + 23);
      }

      else
      {
        v25 = *(v10 + 8);
      }

      if (v25 >= v22)
      {
        v26 = v22;
      }

      else
      {
        v26 = v25;
      }

      v27 = memcmp(v21, v24, v26);
      if (v27)
      {
        if (v27 < 0)
        {
          goto LABEL_33;
        }
      }

      else if (v22 < v25)
      {
        goto LABEL_33;
      }

      v72 = *v10;
      v280 = *(v10 + 16);
      v279 = v72;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *v10 = 0;
      if (v280 >= 0)
      {
        v73 = &v279;
      }

      else
      {
        v73 = v279.n128_u64[0];
      }

      if (v280 >= 0)
      {
        v74 = HIBYTE(v280);
      }

      else
      {
        v74 = v279.n128_u64[1];
      }

      v75 = *(v8 - 1);
      v76 = v8;
      v77 = *(v8 - 3);
      v78 = *(v76 - 2);
      if ((v75 & 0x80u) == 0)
      {
        v79 = &a2[-2].n128_i8[8];
      }

      else
      {
        v79 = v77;
      }

      if ((v75 & 0x80u) == 0)
      {
        v80 = v75;
      }

      else
      {
        v80 = *(v76 - 2);
      }

      if (v80 >= v74)
      {
        v81 = v74;
      }

      else
      {
        v81 = v80;
      }

      v82 = memcmp(v73, v79, v81);
      if (v82)
      {
        if ((v82 & 0x80000000) == 0)
        {
          goto LABEL_149;
        }
      }

      else if (v74 >= v80)
      {
LABEL_149:
        for (j = (v276 + 24); j < a2; j = (j + 24))
        {
          v83 = j[1].n128_i8[7];
          if (v83 >= 0)
          {
            v84 = j;
          }

          else
          {
            v84 = j->n128_u64[0];
          }

          if (v83 >= 0)
          {
            v85 = j[1].n128_u8[7];
          }

          else
          {
            v85 = j->n128_u64[1];
          }

          if (v85 >= v74)
          {
            v86 = v74;
          }

          else
          {
            v86 = v85;
          }

          v87 = memcmp(v73, v84, v86);
          if (v87)
          {
            if (v87 < 0)
            {
              goto LABEL_179;
            }
          }

          else if (v74 < v85)
          {
            goto LABEL_179;
          }
        }

        goto LABEL_179;
      }

      v88 = (v276 + 24);
      do
      {
        while (1)
        {
          j = v88;
          v89 = v88[1].n128_u8[7];
          v90 = (v89 & 0x80u) == 0 ? j : j->n128_u64[0];
          v91 = (v89 & 0x80u) == 0 ? v89 : j->n128_u64[1];
          v92 = v91 >= v74 ? v74 : v91;
          v93 = memcmp(v73, v90, v92);
          v88 = (j + 24);
          if (v93)
          {
            break;
          }

          if (v74 < v91)
          {
            goto LABEL_179;
          }
        }
      }

      while ((v93 & 0x80000000) == 0);
LABEL_179:
      k = a2;
      if (j < a2)
      {
        for (k = (a2 - 24); ; v78 = k->n128_u64[1])
        {
          if ((v75 & 0x80u) == 0)
          {
            v96 = k;
          }

          else
          {
            v96 = v77;
          }

          if ((v75 & 0x80u) == 0)
          {
            v78 = v75;
          }

          if (v78 >= v74)
          {
            v97 = v74;
          }

          else
          {
            v97 = v78;
          }

          v98 = memcmp(v73, v96, v97);
          if (v98)
          {
            if ((v98 & 0x80000000) == 0)
            {
              break;
            }
          }

          else if (v74 >= v78)
          {
            break;
          }

          v95 = k[-2].n128_u64[1];
          k = (k - 24);
          v77 = v95;
          v75 = k[1].n128_u8[7];
        }
      }

      if (j >= k)
      {
        v8 = a2;
        v99 = v276;
      }

      else
      {
        v8 = a2;
        v99 = v276;
        do
        {
          v100 = *j;
          v278 = j[1].n128_i64[0];
          v277 = v100;
          v101 = *k;
          j[1].n128_u64[0] = k[1].n128_u64[0];
          *j = v101;
          v102 = v277;
          k[1].n128_u64[0] = v278;
          *k = v102;
          if (v280 >= 0)
          {
            v103 = &v279;
          }

          else
          {
            v103 = v279.n128_u64[0];
          }

          if (v280 >= 0)
          {
            v104 = HIBYTE(v280);
          }

          else
          {
            v104 = v279.n128_u64[1];
          }

          v105 = (j + 24);
          do
          {
            while (1)
            {
              j = v105;
              v106 = v105[1].n128_u8[7];
              v107 = (v106 & 0x80u) == 0 ? j : j->n128_u64[0];
              v108 = (v106 & 0x80u) == 0 ? v106 : j->n128_u64[1];
              v109 = v108 >= v104 ? v104 : v108;
              v110 = memcmp(v103, v107, v109);
              v105 = (j + 24);
              if (v110)
              {
                break;
              }

              if (v104 < v108)
              {
                goto LABEL_215;
              }
            }
          }

          while ((v110 & 0x80000000) == 0);
LABEL_215:
          v111 = (k - 24);
          do
          {
            while (1)
            {
              k = v111;
              v112 = v111[1].n128_u8[7];
              v113 = (v112 & 0x80u) == 0 ? k : k->n128_u64[0];
              v114 = (v112 & 0x80u) == 0 ? v112 : k->n128_u64[1];
              v115 = v114 >= v104 ? v104 : v114;
              v116 = memcmp(v103, v113, v115);
              v111 = (k - 24);
              if (v116)
              {
                break;
              }

              if (v104 >= v114)
              {
                goto LABEL_195;
              }
            }
          }

          while (v116 < 0);
LABEL_195:
          ;
        }

        while (j < k);
      }

      v117 = &j[-2].n128_u64[1];
      if (&j[-2].n128_i8[8] == v99)
      {
        if (j[-1].n128_i8[15] < 0)
        {
          operator delete(*v117);
        }
      }

      else
      {
        if (v99[1].n128_i8[7] < 0)
        {
          operator delete(v99->n128_u64[0]);
        }

        v118 = *v117;
        v99[1].n128_u64[0] = j[-1].n128_u64[1];
        *v99 = v118;
        j[-1].n128_u8[15] = 0;
        j[-2].n128_u8[8] = 0;
      }

      a4 = 0;
      result = v279;
      j[-1].n128_u64[1] = v280;
      *v117 = result;
    }
  }

  v119 = a2[-1].n128_i8[15];
  if (v119 >= 0)
  {
    v120 = &a2[-2].n128_i8[8];
  }

  else
  {
    v120 = a2[-2].n128_u64[1];
  }

  if (v119 >= 0)
  {
    v121 = a2[-1].n128_u8[15];
  }

  else
  {
    v121 = a2[-1].n128_u64[0];
  }

  v122 = *(v10 + 23);
  if (v122 >= 0)
  {
    v123 = v10;
  }

  else
  {
    v123 = *v10;
  }

  if (v122 >= 0)
  {
    v124 = *(v10 + 23);
  }

  else
  {
    v124 = *(v10 + 8);
  }

  if (v124 >= v121)
  {
    v125 = v121;
  }

  else
  {
    v125 = v124;
  }

  v126 = memcmp(v120, v123, v125);
  if (v126)
  {
    if (v126 < 0)
    {
LABEL_520:
      v266 = *v10;
      v278 = *(v10 + 16);
      v277 = v266;
      v267 = *__s2;
      *(v10 + 16) = a2[-1].n128_u64[1];
      *v10 = v267;
      result = v277;
      a2[-1].n128_u64[1] = v278;
      *__s2 = result;
    }
  }

  else if (v121 < v124)
  {
    goto LABEL_520;
  }

  return result;
}