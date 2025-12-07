void sub_F65B80(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[7] = v4;
    operator delete(v4);
    v5 = v1[3];
    if (!v5)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = v1[3];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v1[4] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_F65BBC@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F65C84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F65CA0@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F65D68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F65D84@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F65E4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F65E68@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F65F30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F65F4C@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F66014(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F66030@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F660F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_F66114(uint64_t a1, void *a2)
{
  if (!sub_F6A05C(a2))
  {
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v10);
    sub_4A5C(&v10, "Path has an empty PathLeg.", 26);
    if ((v20 & 0x10) != 0)
    {
      v5 = v19;
      if (v19 < v16)
      {
        v19 = v16;
        v5 = v16;
      }

      v6 = v15;
      v4 = v5 - v15;
      if (v5 - v15 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v20 & 8) == 0)
      {
        v4 = 0;
        v9 = 0;
LABEL_31:
        *(&__p + v4) = 0;
        sub_7E854(&__p, 3u);
        if (v9 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        std::locale::~locale(&v12);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v6 = v13;
      v4 = v14 - v13;
      if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v9 = v4;
    if (!v4)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (sub_F6D428(a2))
  {
    return 1;
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v10);
    sub_4A5C(&v10, "Path has an inconsistent PathLeg.", 33);
    if ((v20 & 0x10) != 0)
    {
      v7 = v19;
      if (v19 < v16)
      {
        v19 = v16;
        v7 = v16;
      }

      v6 = v15;
      v4 = v7 - v15;
      if (v7 - v15 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if ((v20 & 8) == 0)
      {
        v4 = 0;
        v9 = 0;
        goto LABEL_31;
      }

      v6 = v13;
      v4 = v14 - v13;
      if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_37:
        sub_3244();
      }
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v9 = v4;
    if (!v4)
    {
      goto LABEL_31;
    }

LABEL_30:
    memmove(&__p, v6, v4);
    goto LABEL_31;
  }

  return result;
}

void sub_F664B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_F66530(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (**result == 1)
  {
    v4 = result;
    v5 = sub_F69688(a2);
    result = sub_4D1DB0(a3);
    if (*v5 != *result || *(v5 + 2) != BYTE2(*result))
    {
      result = sub_7E7E4(3u);
      if (!result)
      {
LABEL_21:
        **v4 = 0;
        return result;
      }

      sub_19594F8(&v11);
      sub_4A5C(&v11, "Path has inconsistent WaypointInfo.", 35);
      if ((v21 & 0x10) != 0)
      {
        v7 = v20;
        if (v20 < v17)
        {
          v20 = v17;
          v7 = v17;
        }

        v8 = v16;
        v6 = v7 - v16;
        if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((v21 & 8) == 0)
        {
          v6 = 0;
          v10 = 0;
LABEL_16:
          *(&__p + v6) = 0;
          sub_7E854(&__p, 3u);
          if (v10 < 0)
          {
            operator delete(__p);
          }

          if (v19 < 0)
          {
            operator delete(v18);
          }

          std::locale::~locale(&v13);
          std::ostream::~ostream();
          result = std::ios::~ios();
          goto LABEL_21;
        }

        v8 = v14;
        v6 = v15 - v14;
        if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_24:
          sub_3244();
        }
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      v10 = v6;
      if (v6)
      {
        memmove(&__p, v8, v6);
      }

      goto LABEL_16;
    }
  }

  return result;
}

void sub_F667CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t *sub_F66818@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F668E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F66904@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F669D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F669F0@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F66AC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F66ADC@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F66BAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F66BC8@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F66C90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F66CAC@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F66D74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F66D90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 16) = 0u;
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 24) = *a2;
  *(a1 + 40) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 48) = *a3;
  *(a1 + 64) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v6 != v7)
  {
    if (a4)
    {
      v8 = *(a1 + 48);
      v9 = ((*(a1 + 56) - v8) >> 4) - 1;
      *(a1 + 16) = v9;
      v10 = (v8 + 16 * v9);
LABEL_21:
      *a1 = *v10;
      return a1;
    }

    v11 = *(a1 + 16);
    if (v11 >= ((v7 - v6) >> 4) - 1)
    {
LABEL_20:
      v10 = (v6 + 16 * v11);
      goto LABEL_21;
    }

    while (1)
    {
      v12 = 16 * v11;
      v13 = v6 + v12;
      v14 = *v5 + v12;
      if (*(v6 + v12))
      {
        v15 = *(v13 + 8);
        v16 = sub_F6FD88(*(v6 + v12));
        v17 = v15 < v16;
        v18 = *v14;
        if (!*v14)
        {
          if (v15 < v16)
          {
            goto LABEL_19;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v18 = *v14;
        if (!*v14)
        {
          goto LABEL_7;
        }

        v17 = 0;
      }

      v19 = *(v14 + 8);
      v20 = sub_F6FD88(v18);
      if (v19 < v20 && v17)
      {
        v22 = sub_F6FE3C(*v13, *(v13 + 8));
        if (v22 != sub_F6FE3C(*v14, *(v14 + 8)))
        {
LABEL_19:
          v11 = *(a1 + 16);
          v6 = *(a1 + 24);
          goto LABEL_20;
        }
      }

      else if ((v17 ^ (v19 < v20)))
      {
        goto LABEL_19;
      }

LABEL_7:
      v6 = *(a1 + 24);
      v11 = *(a1 + 16) + 1;
      *(a1 + 16) = v11;
      if (v11 >= ((*(a1 + 32) - v6) >> 4) - 1)
      {
        goto LABEL_19;
      }
    }
  }

  return a1;
}

void sub_F66F24(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[7] = v4;
    operator delete(v4);
    v5 = v1[3];
    if (!v5)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = v1[3];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v1[4] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_F66F60@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F67028(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F67044@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F6710C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_F67128(uint64_t a1, uint64_t a2)
{
  if (!sub_F700E4(a2))
  {
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v10);
    sub_4A5C(&v10, "Path has an empty PathLeg.", 26);
    if ((v20 & 0x10) != 0)
    {
      v5 = v19;
      if (v19 < v16)
      {
        v19 = v16;
        v5 = v16;
      }

      v6 = v15;
      v4 = v5 - v15;
      if (v5 - v15 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v20 & 8) == 0)
      {
        v4 = 0;
        v9 = 0;
LABEL_31:
        *(&__p + v4) = 0;
        sub_7E854(&__p, 3u);
        if (v9 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        std::locale::~locale(&v12);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v6 = v13;
      v4 = v14 - v13;
      if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v9 = v4;
    if (!v4)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (sub_F70108(a2))
  {
    return 1;
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v10);
    sub_4A5C(&v10, "Path has an inconsistent PathLeg.", 33);
    if ((v20 & 0x10) != 0)
    {
      v7 = v19;
      if (v19 < v16)
      {
        v19 = v16;
        v7 = v16;
      }

      v6 = v15;
      v4 = v7 - v15;
      if (v7 - v15 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if ((v20 & 8) == 0)
      {
        v4 = 0;
        v9 = 0;
        goto LABEL_31;
      }

      v6 = v13;
      v4 = v14 - v13;
      if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_37:
        sub_3244();
      }
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v9 = v4;
    if (!v4)
    {
      goto LABEL_31;
    }

LABEL_30:
    memmove(&__p, v6, v4);
    goto LABEL_31;
  }

  return result;
}

void sub_F674CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_F67544(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (**result == 1)
  {
    v4 = result;
    v5 = sub_F69688(a2);
    result = sub_4D1DB0(a3);
    if (*v5 != *result || *(v5 + 2) != BYTE2(*result))
    {
      result = sub_7E7E4(3u);
      if (!result)
      {
LABEL_21:
        **v4 = 0;
        return result;
      }

      sub_19594F8(&v11);
      sub_4A5C(&v11, "Path has inconsistent WaypointInfo.", 35);
      if ((v21 & 0x10) != 0)
      {
        v7 = v20;
        if (v20 < v17)
        {
          v20 = v17;
          v7 = v17;
        }

        v8 = v16;
        v6 = v7 - v16;
        if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((v21 & 8) == 0)
        {
          v6 = 0;
          v10 = 0;
LABEL_16:
          *(&__p + v6) = 0;
          sub_7E854(&__p, 3u);
          if (v10 < 0)
          {
            operator delete(__p);
          }

          if (v19 < 0)
          {
            operator delete(v18);
          }

          std::locale::~locale(&v13);
          std::ostream::~ostream();
          result = std::ios::~ios();
          goto LABEL_21;
        }

        v8 = v14;
        v6 = v15 - v14;
        if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_24:
          sub_3244();
        }
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      v10 = v6;
      if (v6)
      {
        memmove(&__p, v8, v6);
      }

      goto LABEL_16;
    }
  }

  return result;
}

void sub_F677E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t *sub_F6782C@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F678F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F67910@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F679D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F679F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 16) = 0u;
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 24) = *a2;
  *(a1 + 40) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 48) = *a3;
  *(a1 + 64) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v6 != v7)
  {
    if (a4)
    {
      v8 = *(a1 + 48);
      v9 = ((*(a1 + 56) - v8) >> 4) - 1;
      *(a1 + 16) = v9;
      v10 = (v8 + 16 * v9);
LABEL_21:
      *a1 = *v10;
      return a1;
    }

    v11 = *(a1 + 16);
    if (v11 >= ((v7 - v6) >> 4) - 1)
    {
LABEL_20:
      v10 = (v6 + 16 * v11);
      goto LABEL_21;
    }

    while (1)
    {
      v12 = 16 * v11;
      v13 = v6 + v12;
      v14 = *v5 + v12;
      if (*(v6 + v12))
      {
        v15 = *(v13 + 8);
        v16 = sub_F69D2C(*(v6 + v12));
        v17 = v15 < v16;
        v18 = *v14;
        if (!*v14)
        {
          if (v15 < v16)
          {
            goto LABEL_19;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v18 = *v14;
        if (!*v14)
        {
          goto LABEL_7;
        }

        v17 = 0;
      }

      v19 = *(v14 + 8);
      v20 = sub_F69D2C(v18);
      if (v19 < v20 && v17)
      {
        v22 = sub_F69DE0(*v13, *(v13 + 8));
        if (v22 != sub_F69DE0(*v14, *(v14 + 8)))
        {
LABEL_19:
          v11 = *(a1 + 16);
          v6 = *(a1 + 24);
          goto LABEL_20;
        }
      }

      else if ((v17 ^ (v19 < v20)))
      {
        goto LABEL_19;
      }

LABEL_7:
      v6 = *(a1 + 24);
      v11 = *(a1 + 16) + 1;
      *(a1 + 16) = v11;
      if (v11 >= ((*(a1 + 32) - v6) >> 4) - 1)
      {
        goto LABEL_19;
      }
    }
  }

  return a1;
}

void sub_F67B88(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[7] = v4;
    operator delete(v4);
    v5 = v1[3];
    if (!v5)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = v1[3];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v1[4] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_F67BC4@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F67C8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_F67CA8@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xF128CFC4A33F128DLL * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F67D70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_F67D8C(uint64_t a1, void *a2)
{
  if (!sub_F6A05C(a2))
  {
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v10);
    sub_4A5C(&v10, "Path has an empty PathLeg.", 26);
    if ((v20 & 0x10) != 0)
    {
      v5 = v19;
      if (v19 < v16)
      {
        v19 = v16;
        v5 = v16;
      }

      v6 = v15;
      v4 = v5 - v15;
      if (v5 - v15 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v20 & 8) == 0)
      {
        v4 = 0;
        v9 = 0;
LABEL_31:
        *(&__p + v4) = 0;
        sub_7E854(&__p, 3u);
        if (v9 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        std::locale::~locale(&v12);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v6 = v13;
      v4 = v14 - v13;
      if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v9 = v4;
    if (!v4)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (sub_F6A080(a2))
  {
    return 1;
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v10);
    sub_4A5C(&v10, "Path has an inconsistent PathLeg.", 33);
    if ((v20 & 0x10) != 0)
    {
      v7 = v19;
      if (v19 < v16)
      {
        v19 = v16;
        v7 = v16;
      }

      v6 = v15;
      v4 = v7 - v15;
      if (v7 - v15 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if ((v20 & 8) == 0)
      {
        v4 = 0;
        v9 = 0;
        goto LABEL_31;
      }

      v6 = v13;
      v4 = v14 - v13;
      if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_37:
        sub_3244();
      }
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v9 = v4;
    if (!v4)
    {
      goto LABEL_31;
    }

LABEL_30:
    memmove(&__p, v6, v4);
    goto LABEL_31;
  }

  return result;
}

void sub_F68130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_F681A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (**result == 1)
  {
    v4 = result;
    v5 = sub_F69688(a2);
    result = sub_4D1DB0(a3);
    if (*v5 != *result || *(v5 + 2) != BYTE2(*result))
    {
      result = sub_7E7E4(3u);
      if (!result)
      {
LABEL_21:
        **v4 = 0;
        return result;
      }

      sub_19594F8(&v11);
      sub_4A5C(&v11, "Path has inconsistent WaypointInfo.", 35);
      if ((v21 & 0x10) != 0)
      {
        v7 = v20;
        if (v20 < v17)
        {
          v20 = v17;
          v7 = v17;
        }

        v8 = v16;
        v6 = v7 - v16;
        if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((v21 & 8) == 0)
        {
          v6 = 0;
          v10 = 0;
LABEL_16:
          *(&__p + v6) = 0;
          sub_7E854(&__p, 3u);
          if (v10 < 0)
          {
            operator delete(__p);
          }

          if (v19 < 0)
          {
            operator delete(v18);
          }

          std::locale::~locale(&v13);
          std::ostream::~ostream();
          result = std::ios::~ios();
          goto LABEL_21;
        }

        v8 = v14;
        v6 = v15 - v14;
        if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_24:
          sub_3244();
        }
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      v10 = v6;
      if (v6)
      {
        memmove(&__p, v8, v6);
      }

      goto LABEL_16;
    }
  }

  return result;
}

void sub_F68444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_F68490()
{
  byte_27BF85F = 3;
  LODWORD(qword_27BF848) = 5136193;
  byte_27BF877 = 3;
  LODWORD(qword_27BF860) = 5136194;
  byte_27BF88F = 3;
  LODWORD(qword_27BF878) = 5136195;
  byte_27BF8A7 = 15;
  strcpy(&qword_27BF890, "vehicle_mass_kg");
  byte_27BF8BF = 21;
  strcpy(&xmmword_27BF8A8, "vehicle_cargo_mass_kg");
  byte_27BF8D7 = 19;
  strcpy(&qword_27BF8C0, "vehicle_aux_power_w");
  byte_27BF8EF = 15;
  strcpy(&qword_27BF8D8, "dcdc_efficiency");
  strcpy(&qword_27BF8F0, "drive_train_efficiency");
  HIBYTE(word_27BF906) = 22;
  operator new();
}

void sub_F6866C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27BF906) < 0)
  {
    sub_21E55D4();
  }

  sub_21E55E0();
  _Unwind_Resume(a1);
}

uint64_t sub_F6868C(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0x1000000000000;
  *(a1 + 176) = 0x7FFFFFFF;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0x7FFFFFFF;
  *(a1 + 188) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 208) = 0x8000000080000000;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 268) = 0x7FFFFFFF;
  *(a1 + 272) = 0x8000000080000000;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 312) = -1;
  *(a1 + 314) = 0;
  *(a1 + 316) = -1;
  *(a1 + 318) = 0;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0x3FF0000000000000;
  *(a1 + 368) = 1;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2359296000;
  *(a1 + 399) = 0;
  *(a1 + 408) = 0;
  *(a1 + 440) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0x3FF0000000000000;
  *(a1 + 456) = 1;
  *(a1 + 472) = 0;
  *(a1 + 480) = 2359296000;
  *(a1 + 464) = 0;
  *(a1 + 487) = 0;
  *(a1 + 496) = -1;
  *(a1 + 500) = -1;
  *(a1 + 550) = 0;
  *(a1 + 518) = 0u;
  *(a1 + 534) = 0u;
  *(a1 + 502) = 0u;
  sub_F687F4(a1);
  return a1;
}

void sub_F687B4(_Unwind_Exception *a1)
{
  sub_4D0584(v1 + 504);
  sub_49A8F8(v2);
  v4 = *(v1 + 152);
  if (v4)
  {
    *(v1 + 160) = v4;
    operator delete(v4);
  }

  sub_21E56B0(v1 + 128);
  _Unwind_Resume(a1);
}

double sub_F687F4(uint64_t a1)
{
  v3 = *(a1 + 104);
  for (i = *(a1 + 112); i != v3; i -= 56)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  v6 = (a1 + 216);
  v5 = *(a1 + 216);
  *(a1 + 112) = v3;
  *(a1 + 48) = 0;
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = xmmword_22AEA20;
  *(a1 + 176) = 0x7FFFFFFFLL;
  *(a1 + 184) = 0x7FFFFFFF;
  *(a1 + 188) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0x8000000080000000;
  if (v5)
  {
    *(a1 + 224) = v5;
    operator delete(v5);
    *v6 = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  v7 = *(a1 + 240);
  *v6 = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  if (v7)
  {
    *(a1 + 248) = v7;
    operator delete(v7);
  }

  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 256) = 0;
  *(a1 + 268) = 0x7FFFFFFF;
  *&result = 0x8000000080000000;
  *(a1 + 272) = 0x8000000080000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0x3FF0000000000000;
  *(a1 + 368) = 1;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2359296000;
  *(a1 + 399) = 0;
  *(a1 + 408) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0x3FF0000000000000;
  *(a1 + 456) = 1;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 2359296000;
  *(a1 + 487) = 0;
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 160) = *(a1 + 152);
  return result;
}

void sub_F68964(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_F68D28(a1, a2))
  {

    sub_F6868C(a3);
    return;
  }

  v6 = *a1;
  sub_F6868C(a3);
  *(a3 + 96) = *(v6 + 96);
  v40 = v6;
  v41 = 0;
  if (sub_F68D28(a1, &v40))
  {
    v7 = *(v6 + 352);
    v8 = *(v6 + 368);
    v9 = *(v6 + 384);
    *(a3 + 399) = *(v6 + 399);
    *(a3 + 384) = v9;
    v10 = *(v6 + 336);
    *(a3 + 320) = *(v6 + 320);
    *(a3 + 336) = v10;
    *(a3 + 352) = v7;
    *(a3 + 368) = v8;
    if (*(a3 + 396) == 3)
    {
      *(a3 + 396) = 5;
    }

    v11 = *(v6 + 176);
    v12 = *(v6 + 192);
    *(a3 + 208) = *(v6 + 208);
    *(a3 + 176) = v11;
    *(a3 + 192) = v12;
    if (v6 != a3)
    {
      sub_4D88D0((a3 + 216), *(v6 + 216), *(v6 + 224), (*(v6 + 224) - *(v6 + 216)) >> 4);
      sub_4D88D0((a3 + 240), *(v6 + 240), *(v6 + 248), (*(v6 + 248) - *(v6 + 240)) >> 4);
    }

    v13 = *(v6 + 264);
    v14 = *(v6 + 296);
    *(a3 + 280) = *(v6 + 280);
    *(a3 + 296) = v14;
    *(a3 + 264) = v13;
  }

  v15 = *(v6 + 24);
  v16 = *(v6 + 32);
  if (v15 == v16 && !*(v6 + 48))
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x2E8BA2E8BA2E8BA3 * ((v16 - v15) >> 3) + 1;
  }

  v40 = v6;
  v41 = v17;
  if (sub_F68D28(a2, &v40))
  {
    v18 = *(v6 + 440);
    v19 = *(v6 + 456);
    v20 = *(v6 + 472);
    *(a3 + 487) = *(v6 + 487);
    *(a3 + 472) = v20;
    v21 = *(v6 + 424);
    *(a3 + 408) = *(v6 + 408);
    *(a3 + 424) = v21;
    *(a3 + 440) = v18;
    *(a3 + 456) = v19;
    if (*(a3 + 484) == 3)
    {
      *(a3 + 484) = 4;
    }

    v22 = a1[1];
    v23 = a2[1];
    if (v23 - v22 == 1)
    {
LABEL_18:
      v24 = sub_F691B8(v6, v22);
      v26 = *a1;
      v25 = a1[1];
      v27 = *(*a1 + 24);
      v28 = *(*a1 + 32);
      if (v27 == v28 && !*(v26 + 48))
      {
        v29 = -1;
        if (v25)
        {
LABEL_21:
          if (v29 == v25)
          {
            if (*(v26 + 48))
            {
              v30 = (v26 + 56);
              if (*(v6 + 512) <= v22)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v30 = (v28 - 48);
              if (*(v6 + 512) <= v22)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
            v30 = sub_F698C8((*a1 + 24), v25);
            if (*(v6 + 512) <= v22)
            {
LABEL_38:
              LODWORD(v37) = 0;
LABEL_46:
              sub_F69060(a3, v24, v30, v37);
              return;
            }
          }

LABEL_45:
          v37 = (*(*(v6 + 504) + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v22) & 1;
          goto LABEL_46;
        }
      }

      else
      {
        v29 = 0x2E8BA2E8BA2E8BA3 * ((v28 - v27) >> 3);
        if (v25)
        {
          goto LABEL_21;
        }
      }

      v38 = *(v26 + 48);
      v39 = (v26 + 56);
      if (v38)
      {
        v30 = v39;
      }

      else
      {
        v30 = *(*a1 + 24);
      }

      if (*(v6 + 512) <= v22)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  else
  {
    *(a3 + 408) = 1000000000;
    v22 = a1[1];
    v23 = a2[1];
    if (v23 - v22 == 1)
    {
      goto LABEL_18;
    }
  }

  v31 = v23 - 1;
  if (v22 <= v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = v22;
  }

  if (v22 < v31)
  {
    do
    {
      v33 = sub_F698C8((v6 + 24), v22);
      v34 = *(v6 + 512);
      if (v34 > v22 && (v35 = *(v6 + 504), ((*(v35 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v22) & 1) != 0) && v34 > v22 + 1)
      {
        v36 = (*(v35 + (((v22 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v22 + 1)) & 1;
      }

      else
      {
        LODWORD(v36) = 0;
      }

      sub_F692F8(a3, v33, v36);
      ++v22;
    }

    while (v32 != v22);
  }
}

BOOL sub_F68D28(void *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    v5 = 0;
    v6 = *a2;
    if (*a2)
    {
      goto LABEL_7;
    }

LABEL_20:
    v11 = 0;
    return v5 ^ v11 ^ 1;
  }

  v3 = v2[3];
  v4 = v2[4];
  if (v3 == v4 && !v2[6])
  {
    v5 = 0;
    v6 = *a2;
    if (*a2)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  v5 = a1[1] < (0x2E8BA2E8BA2E8BA3 * ((v4 - v3) >> 3) + 1);
  v6 = *a2;
  if (!*a2)
  {
    goto LABEL_20;
  }

LABEL_7:
  v8 = a2[1];
  v9 = v6[3];
  v10 = v6[4];
  if (v9 == v10 && !v6[6])
  {
    goto LABEL_20;
  }

  v11 = v8 < 0x2E8BA2E8BA2E8BA3 * (v10 - v9) + 1;
  if (!v5 || !v11)
  {
    return v5 ^ v11 ^ 1;
  }

  v12 = a1[1];
  v14 = v2[3];
  v13 = v2[4];
  if (v14 != v13 || v2[6])
  {
    v15 = 0x2E8BA2E8BA2E8BA3 * ((v13 - v14) >> 3);
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_25:
    v21 = v2[6];
    v22 = v2 + 7;
    if (v21)
    {
      v19 = v22;
    }

    else
    {
      v19 = v14;
    }

    if (v9 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v15 = -1;
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (v15 == v12)
  {
    v16 = v2[6];
    v17 = v13 - 48;
    v18 = v2 + 7;
    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    if (v9 != v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v19 = sub_F698C8(v2 + 3, v12);
    v6 = *a2;
    v8 = a2[1];
    v9 = *(*a2 + 24);
    v10 = *(*a2 + 32);
    if (v9 != v10)
    {
      goto LABEL_30;
    }
  }

LABEL_29:
  if (!v6[6])
  {
    v23 = -1;
    if (v8)
    {
      goto LABEL_31;
    }

LABEL_35:
    v24 = v6[6];
    goto LABEL_36;
  }

LABEL_30:
  v23 = 0x2E8BA2E8BA2E8BA3 * (v10 - v9);
  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_31:
  if (v23 != v8)
  {
    return v19 == sub_F698C8(v6 + 3, v8);
  }

  v24 = v6[6];
  v9 = v10 - 6;
LABEL_36:
  v25 = v6 + 7;
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v9;
  }

  return v19 == v26;
}

uint64_t sub_F68F20(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  *(result + 399) = *(a2 + 79);
  *(result + 384) = v4;
  v5 = *(a2 + 16);
  *(result + 320) = *a2;
  *(result + 336) = v5;
  *(result + 352) = v2;
  *(result + 368) = v3;
  if (*(result + 396) == 3)
  {
    *(result + 396) = 5;
  }

  return result;
}

__n128 sub_F68F5C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 208) = *(a2 + 4);
  *(a1 + 176) = v4;
  *(a1 + 192) = v5;
  if ((a1 + 176) != a2)
  {
    sub_4D88D0((a1 + 216), *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 4);
    sub_4D88D0((a1 + 240), *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 4);
  }

  result = *(a2 + 88);
  v7 = *(a2 + 120);
  *(a1 + 280) = *(a2 + 104);
  *(a1 + 296) = v7;
  *(a1 + 264) = result;
  return result;
}

uint64_t sub_F6901C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  *(result + 487) = *(a2 + 79);
  *(result + 472) = v4;
  v5 = *(a2 + 16);
  *(result + 408) = *a2;
  *(result + 424) = v5;
  *(result + 440) = v2;
  *(result + 456) = v3;
  if (*(result + 484) == 3)
  {
    *(result + 484) = 4;
  }

  return result;
}

void sub_F69060(uint64_t a1, uint64_t a2, int **a3, int a4)
{
  *(a1 + 48) = a2;
  v6 = *a3;
  v7 = *(a3 + 1);
  *(a1 + 88) = a3[4];
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 32) = *(a1 + 24);
  v8 = *a3;
  v9 = (*a3 - **a3);
  v10 = *v9;
  if (v10 < 0x9B)
  {
    v11 = 0;
    if (v10 < 0x2F)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = v9[77];
    if (v9[77])
    {
      v11 = (8 * *&v8[v11]) & 0x40;
    }
  }

  v12 = v9[23];
  if (v12 && v8[v12] == 21)
  {
    v11 |= 0x80uLL;
  }

LABEL_8:
  v20[3] = v4;
  v20[4] = v5;
  *(a1 + 96) = v11;
  v13 = *(a1 + 528);
  v14 = *(a1 + 536);
  if (v13 != v14)
  {
    v15 = *(a1 + 504);
    v16 = *(a1 + 528);
    do
    {
      v17 = *v16++;
      *(v15 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v17);
    }

    while (v16 != v14);
  }

  *(a1 + 536) = v13;
  if (a4)
  {
    v20[0] = 0;
    if (*(a1 + 512))
    {
      if (**(a1 + 504))
      {
        return;
      }
    }

    else
    {
      v19 = a1;
      sub_4D9168(a1 + 504, 1uLL, 0);
      a1 = v19;
      if (**(v19 + 504))
      {
        return;
      }
    }

    v18 = a1;
    sub_2512DC(a1 + 528, v20);
    *(*(v18 + 504) + ((v20[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << SLOBYTE(v20[0]);
  }
}

unint64_t sub_F691B8(void *a1, unint64_t a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v3 == v2 && !a1[6])
  {
    v4 = -1;
    if (a2)
    {
LABEL_4:
      if (v4 == a2)
      {
        result = a1[6];
        if (!result)
        {
          return (((*(v2 - 16) >> 16) & 0xFFFF0000 | (*(v2 - 16) << 32) | (2 * ((*(v2 - 16) & 0xFF000000000000) == 0))) + 4 * *(v2 - 6)) & 0xFFFFFFFFFFFFFFFELL | (*(v2 - 4) >> 1) & 1;
        }
      }

      else
      {
        v6 = sub_F698C8(a1 + 3, a2);
        return (((*(v6 + 32) >> 16) & 0xFFFF0000 | (*(v6 + 32) << 32) | (2 * ((*(v6 + 32) & 0xFF000000000000) == 0))) + 4 * *(v6 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v6 + 84) & 1;
      }

      return result;
    }
  }

  else
  {
    v4 = 0x2E8BA2E8BA2E8BA3 * ((v2 - v3) >> 3);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  result = a1[6];
  if (!result)
  {
    return (((*(v3 + 32) >> 16) & 0xFFFF0000 | (*(v3 + 32) << 32) | (2 * ((*(v3 + 32) & 0xFF000000000000) == 0))) + 4 * *(v3 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v3 + 84) & 1;
  }

  return result;
}

uint64_t sub_F692C8(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 512) <= a2)
  {
    return 0;
  }

  else
  {
    return (*(*(a1 + 504) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1;
  }
}

void sub_F692F8(void *a1, uint64_t a2, int a3)
{
  a1[12] |= sub_F6AF54(a2, a1[3] == a1[4], 1);
  v6 = a1[4];
  v7 = a1[5];
  if (v6 >= v7)
  {
    v13 = a1[3];
    v14 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v13) >> 3) + 1;
    if (v14 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_1794();
    }

    v15 = 0x2E8BA2E8BA2E8BA3 * ((v7 - v13) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x1745D1745D1745DLL)
    {
      v16 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      sub_1808();
    }

    v17 = *(a2 + 48);
    v18 = 8 * ((v6 - v13) >> 3);
    *(v18 + 32) = *(a2 + 32);
    *(v18 + 48) = v17;
    *(v18 + 64) = *(a2 + 64);
    *(v18 + 80) = *(a2 + 80);
    v19 = *(a2 + 16);
    *v18 = *a2;
    *(v18 + 16) = v19;
    v12 = v18 + 88;
    v20 = (v18 - (v6 - v13));
    memcpy(v20, v13, v6 - v13);
    a1[3] = v20;
    a1[4] = v12;
    a1[5] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v8 = *(a2 + 16);
    *v6 = *a2;
    *(v6 + 16) = v8;
    v9 = *(a2 + 32);
    v10 = *(a2 + 48);
    v11 = *(a2 + 64);
    *(v6 + 80) = *(a2 + 80);
    *(v6 + 48) = v10;
    *(v6 + 64) = v11;
    *(v6 + 32) = v9;
    v12 = v6 + 88;
  }

  a1[4] = v12;
  if (a3)
  {
    v21 = 0x2E8BA2E8BA2E8BA3 * ((v12 - a1[3]) >> 3);
    v22 = v21 - 1;
    v25 = v21 - 1;
    if (v21 - 1 >= a1[64])
    {
      sub_4D9168((a1 + 63), v21, 0);
    }

    v23 = a1[63];
    if (((*(v23 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      sub_2512DC((a1 + 66), &v25);
      v23 = a1[63];
      *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    }

    v24 = 0x2E8BA2E8BA2E8BA3 * ((a1[4] - a1[3]) >> 3);
    v25 = v24;
    if (v24 >= a1[64])
    {
      sub_4D9168((a1 + 63), v24 + 1, 0);
      v23 = a1[63];
    }

    if (((*(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      sub_2512DC((a1 + 66), &v25);
      *(a1[63] + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    }
  }
}

unint64_t sub_F695C8(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    v3 = *(a1 + 24);
    return (((*(v3 + 32) >> 16) & 0xFFFF0000 | (*(v3 + 32) << 32) | (2 * ((*(v3 + 32) & 0xFF000000000000) == 0))) + 4 * *(v3 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v3 + 84) & 1;
  }

  return result;
}

unint64_t sub_F69610(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    v3 = *(a1 + 32);
    return (((*(v3 - 16) >> 16) & 0xFFFF0000 | (*(v3 - 16) << 32) | (2 * ((*(v3 - 16) & 0xFF000000000000) == 0))) + 4 * *(v3 - 6)) & 0xFFFFFFFFFFFFFFFELL | (*(v3 - 4) >> 1) & 1;
  }

  return result;
}

uint64_t sub_F69654(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return a1 + 56;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t sub_F6966C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return a1 + 56;
  }

  else
  {
    return *(a1 + 32) - 48;
  }
}

void sub_F696A8(void *a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = a1[3];
  v5 = a1[4];
  v6 = 0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 3);
  if (v6 != -1)
  {
    if ((v6 + 1) <= 0x666666666666666)
    {
      operator new();
    }

LABEL_22:
    sub_1794();
  }

  for (i = a2; v4 != v5; v4 += 88)
  {
    v7 = *v4;
    v8 = *(v4 + 16);
    v25 = *(v4 + 32);
    v24[0] = v7;
    v24[1] = v8;
    sub_31F2E4(&i, v24);
  }

  if (a1[6])
  {
    v9 = a1 + 7;
    v10 = a2[1];
    v11 = a2[2];
    if (v10 < v11)
    {
LABEL_8:
      v12 = *v9;
      v13 = *(v9 + 1);
      *(v10 + 32) = v9[4];
      *v10 = v12;
      *(v10 + 16) = v13;
      v14 = v10 + 40;
      goto LABEL_21;
    }
  }

  else
  {
    v9 = (a1[4] - 48);
    v10 = a2[1];
    v11 = a2[2];
    if (v10 < v11)
    {
      goto LABEL_8;
    }
  }

  v15 = *a2;
  v16 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - *a2) >> 3);
  v17 = v16 + 1;
  if (v16 + 1 > 0x666666666666666)
  {
    goto LABEL_22;
  }

  v18 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v15) >> 3);
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x333333333333333)
  {
    v19 = 0x666666666666666;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    if (v19 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 8 * ((v10 - *a2) >> 3);
  v21 = *v9;
  v22 = *(v9 + 1);
  *(v20 + 32) = v9[4];
  *v20 = v21;
  *(v20 + 16) = v22;
  v14 = 40 * v16 + 40;
  v23 = (40 * v16 - (v10 - v15));
  memcpy(v23, v15, v10 - v15);
  *a2 = v23;
  a2[1] = v14;
  a2[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

LABEL_21:
  a2[1] = v14;
}

void sub_F698A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_F698C8(void *a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 88 * a2;
}

void sub_F69A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

unint64_t sub_F69AEC(void *a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 88 * a2;
}

void sub_F69C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_F69D2C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  if (v1 == v2 && !a1[6])
  {
    return 0;
  }

  else
  {
    return 0x2E8BA2E8BA2E8BA3 * ((v2 - v1) >> 3) + 1;
  }
}

void *sub_F69D90@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[3];
  v3 = result[4];
  if (v2 == v3 && !result[6])
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0;
  }

  else
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0x2E8BA2E8BA2E8BA3 * ((v3 - v2) >> 3) + 1;
  }

  return result;
}

void *sub_F69DE0(void *a1, unint64_t a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v3 == v2 && !a1[6])
  {
    v4 = -1;
    if (a2)
    {
LABEL_4:
      if (v4 != a2)
      {
        return sub_F698C8(a1 + 3, a2);
      }

      v5 = v2 - 48;
      if (a1[6])
      {
        return a1 + 7;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v4 = 0x2E8BA2E8BA2E8BA3 * ((v2 - v3) >> 3);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  if (a1[6])
  {
    return a1 + 7;
  }

  else
  {
    return a1[3];
  }
}

uint64_t sub_F69E5C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 32);
    if (v2 == v3 && !*(a1 + 48))
    {
      if (a2 == -1)
      {
LABEL_5:
        v4 = *(a1 + 408);
        v7 = *(a1 + 24);
        v6 = *(a1 + 32);
        v5 = (a1 + 24);
        if (v7 != v6)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if (0x2E8BA2E8BA2E8BA3 * ((v3 - v2) >> 3) == a2)
    {
      goto LABEL_5;
    }

    v4 = 1000000000;
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

  else if (*(a1 + 48))
  {
    v4 = *(a1 + 408) - *(a1 + 320);
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = 1000000000 - *(a1 + 320);
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

LABEL_14:
  if (*(a1 + 48))
  {
LABEL_15:
    v8 = 0x2E8BA2E8BA2E8BA3 * (v6 - v7);
    if (a2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v8 = -1;
  if (a2)
  {
LABEL_16:
    if (v8 == a2)
    {
      if (*(a1 + 48))
      {
        v9 = (a1 + 56);
      }

      else
      {
        v9 = v6 - 6;
      }
    }

    else
    {
      v9 = sub_F698C8(v5, a2);
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*(a1 + 48))
  {
    v9 = (a1 + 56);
  }

  else
  {
    v9 = v7;
  }

LABEL_25:
  v10 = (*v9 - **v9);
  v11 = 0.0;
  if (*v10 >= 9u)
  {
    v12 = v10[4];
    if (v12)
    {
      LODWORD(v11) = *(*v9 + v12);
      v11 = *&v11;
    }
  }

  v13 = v4 / 1000000000.0 * v11;
  if (v13 >= 0.0)
  {
    if (v13 < 4.50359963e15)
    {
      v14 = (v13 + v13) + 1;
      return (v14 >> 1);
    }
  }

  else if (v13 > -4.50359963e15)
  {
    v14 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
    return (v14 >> 1);
  }

  return v13;
}

BOOL sub_F6A080(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if (*(a1 + 320) > *(a1 + 408))
    {
      return 0;
    }

    v12 = *(a1 + 56);
    v13 = (v12 - *v12);
    v14 = *v13;
    if (v14 < 0x9B)
    {
      LODWORD(v15) = 0;
      if (v14 < 0x2F)
      {
        return (~*(a1 + 96) & v15) == 0;
      }
    }

    else
    {
      v15 = v13[77];
      if (v13[77])
      {
        v15 = (8 * *(v12 + v15)) & 0x40;
      }
    }

    v16 = v13[23];
    if (v16)
    {
      if (*(v12 + v16) == 21)
      {
        LODWORD(v15) = v15 | 0x80;
      }
    }

    return (~*(a1 + 96) & v15) == 0;
  }

  v38 = 1;
  v37 = &v38;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3 != v4 && v3 + 11 != v4)
  {
    do
    {
      sub_F7237C(&v37, v3, (v3 + 11));
      v6 = v3 + 22;
      v3 += 11;
    }

    while (v6 != v4);
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
  }

  v7 = *(a1 + 48);
  if (v3 == v4)
  {
    if (!v7)
    {
      v11 = 0;
      v36 = 0;
      goto LABEL_35;
    }
  }

  else if (!v7)
  {
    v8 = *v3;
    v9 = (*v3 - **v3);
    v10 = *v9;
    if (v10 >= 0x9B)
    {
      goto LABEL_13;
    }

LABEL_25:
    v11 = 0;
    if (v10 < 0x2F)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v8 = *(a1 + 56);
  v9 = (v8 - *v8);
  v10 = *v9;
  if (v10 < 0x9B)
  {
    goto LABEL_25;
  }

LABEL_13:
  v11 = v9[77];
  if (v9[77])
  {
    v11 = (8 * *(v8 + v11)) & 0x40;
  }

LABEL_26:
  v17 = v9[23];
  if (v17 && *(v8 + v17) == 21)
  {
    v11 |= 0x80uLL;
  }

LABEL_29:
  v36 = v11;
  v25 = COERCE_DOUBLE(&v36);
  if (v3 != v4)
  {
    do
    {
      v18 = sub_F7146C(&v25, v3);
      if (!v18)
      {
        break;
      }

      v3 += 11;
    }

    while (v3 != v4);
    v38 &= v18;
    if ((v36 & ~*(a1 + 96)) == 0)
    {
      goto LABEL_54;
    }

LABEL_36:
    if (!sub_7E7E4(3u))
    {
LABEL_53:
      v38 = 0;
      goto LABEL_54;
    }

    sub_19594F8(&v25);
    sub_4A5C(&v25, "PathLeg has inconsistent features.", 34);
    if ((v35 & 0x10) != 0)
    {
      v20 = v34;
      if (v34 < v31)
      {
        v34 = v31;
        v20 = v31;
      }

      v21 = v30;
      v19 = v20 - v30;
      if (v20 - v30 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if ((v35 & 8) == 0)
      {
        v19 = 0;
        v24 = 0;
LABEL_48:
        *(&__dst + v19) = 0;
        sub_7E854(&__dst, 3u);
        if (v24 < 0)
        {
          operator delete(__dst);
        }

        if (v33 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v27);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_53;
      }

      v21 = v28;
      v19 = v29 - v28;
      if ((v29 - v28) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_56:
        sub_3244();
      }
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    v24 = v19;
    if (v19)
    {
      memmove(&__dst, v21, v19);
    }

    goto LABEL_48;
  }

LABEL_35:
  v38 &= 1u;
  if ((v11 & ~*(a1 + 96)) != 0)
  {
    goto LABEL_36;
  }

LABEL_54:
  v22 = sub_F6A524((a1 + 176));
  return v22 & v38;
}

void sub_F6A4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_F6A524(int *a1)
{
  if (*a1 == 0x7FFFFFFF)
  {
    return 1;
  }

  if (a1[9] == 0x7FFFFFFF)
  {
    return 1;
  }

  if (!sub_4566B4(a1 + 2))
  {
    return 1;
  }

  v3 = a1[28];
  switch(v3)
  {
    case 0:
      return 1;
    case 2:
      v4 = *(a1 + 13);
      result = 1;
      if (v4 > 0xFFFFFFFEFFFFFFFFLL || !v4)
      {
        return result;
      }

      break;
    case 1:
      if (*(a1 + 13) == -1)
      {
        return 1;
      }

      break;
    default:
      sub_5AF20();
  }

  if (*a1 != 0x7FFFFFFF && *a1 < a1[9])
  {
    result = sub_7E7E4(3u);
    if (result)
    {
      sub_19594F8(&v29);
      sub_4A5C(&v29, "ChargeInfo has charging time ", 29);
      v5 = std::ostream::operator<<();
      sub_4A5C(v5, " minutes, which is less than the minimum charging time (", 56);
      v6 = std::ostream::operator<<();
      sub_4A5C(v6, " minutes).", 10);
      if ((v39 & 0x10) != 0)
      {
        v9 = v38;
        if (v38 < v35)
        {
          v38 = v35;
          v9 = v35;
        }

        v10 = &v34;
      }

      else
      {
        if ((v39 & 8) == 0)
        {
          v7 = 0;
          v28 = 0;
LABEL_102:
          *(&__p + v7) = 0;
          sub_7E854(&__p, 3u);
          if (v28 < 0)
          {
            operator delete(__p);
          }

          if (v37 < 0)
          {
            operator delete(v36);
          }

          std::locale::~locale(&v31);
          std::ostream::~ostream();
          std::ios::~ios();
          return 0;
        }

        v10 = v32;
        v9 = v33;
      }

      v11 = *v10;
      v7 = v9 - *v10;
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v7 >= 0x17)
      {
        operator new();
      }

      v28 = v9 - *v10;
      if (!v7)
      {
        goto LABEL_102;
      }

      goto LABEL_101;
    }

    return result;
  }

  if (*(a1 + 5) != *(a1 + 6) || !sub_7E7E4(3u))
  {
    goto LABEL_49;
  }

  sub_19594F8(&v29);
  sub_4A5C(&v29, "ChargeInfo without any suggested connectors set.", 48);
  if ((v39 & 0x10) != 0)
  {
    v12 = v38;
    if (v38 < v35)
    {
      v38 = v35;
      v12 = v35;
    }

    v13 = &v34;
    goto LABEL_38;
  }

  if ((v39 & 8) != 0)
  {
    v13 = v32;
    v12 = v33;
LABEL_38:
    v14 = *v13;
    v8 = v12 - *v13;
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v28 = v12 - *v13;
    if (v8)
    {
      memmove(&__p, v14, v8);
    }

    goto LABEL_44;
  }

  v8 = 0;
  v28 = 0;
LABEL_44:
  *(&__p + v8) = 0;
  sub_7E854(&__p, 3u);
  if (v28 < 0)
  {
    operator delete(__p);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  std::locale::~locale(&v31);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_49:
  v15 = *(a1 + 5);
  v16 = *(a1 + 6);
  if (v15 == v16)
  {
LABEL_58:
    if (v15 != v16)
    {
      do
      {
        v19 = sub_96DDC(v15);
        if (!v19)
        {
          break;
        }

        v15 += 16;
      }

      while (v15 != v16);
      if (!v19)
      {
        result = sub_7E7E4(3u);
        if (result)
        {
          sub_19594F8(&v29);
          sub_4A5C(&v29, "Got an invalid suggested connector (type UNKNOWN or invalid power).", 67);
          if ((v39 & 0x10) != 0)
          {
            v25 = v38;
            if (v38 < v35)
            {
              v38 = v35;
              v25 = v35;
            }

            v26 = &v34;
          }

          else
          {
            if ((v39 & 8) == 0)
            {
              v7 = 0;
              v28 = 0;
              goto LABEL_102;
            }

            v26 = v32;
            v25 = v33;
          }

          v11 = *v26;
          v7 = v25 - *v26;
          if (v7 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v7 >= 0x17)
          {
            operator new();
          }

          v28 = v25 - *v26;
          if (!v7)
          {
            goto LABEL_102;
          }

          goto LABEL_101;
        }

        return result;
      }
    }

    v20 = *(a1 + 8);
    v21 = *(a1 + 9);
    if (v20 != v21)
    {
      do
      {
        v22 = sub_96DDC(v20);
        if (!v22)
        {
          break;
        }

        v20 += 16;
      }

      while (v20 != v21);
      if (!v22)
      {
        result = sub_7E7E4(3u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v29);
        sub_4A5C(&v29, "Got an invalid supported connector (type UNKNOWN or invalid power).", 67);
        sub_1959680(&v29, &__p);
        sub_7E854(&__p, 3u);
LABEL_82:
        if (v28 < 0)
        {
          operator delete(__p);
        }

        sub_1959728(&v29);
        return 0;
      }
    }

    if (*(a1 + 16) == 0x7FFFFFFFFFFFFFFFLL)
    {
      result = sub_7E7E4(3u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v29);
      sub_4A5C(&v29, "ChargeInfo has an invalid POI neighborhood info.", 48);
      sub_1959680(&v29, &__p);
      sub_7E854(&__p, 3u);
      goto LABEL_82;
    }

    return 1;
  }

  v17 = *(a1 + 9);
  if (*(a1 + 8) != v17)
  {
    while (1)
    {
      v18 = *(a1 + 8);
      if (v18 == v17)
      {
        break;
      }

      while (!sub_96E20(v18, v15))
      {
        v18 += 16;
        if (v18 == v17)
        {
          v18 = v17;
          break;
        }
      }

      v17 = *(a1 + 9);
      if (v18 == v17)
      {
        break;
      }

      v15 += 16;
      if (v15 == v16)
      {
        v15 = *(a1 + 5);
        v16 = *(a1 + 6);
        goto LABEL_58;
      }
    }
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v29);
    sub_4A5C(&v29, "Suggested connector not part of the list of supported connectors.", 65);
    if ((v39 & 0x10) != 0)
    {
      v23 = v38;
      if (v38 < v35)
      {
        v38 = v35;
        v23 = v35;
      }

      v24 = &v34;
    }

    else
    {
      if ((v39 & 8) == 0)
      {
        v7 = 0;
        v28 = 0;
        goto LABEL_102;
      }

      v24 = v32;
      v23 = v33;
    }

    v11 = *v24;
    v7 = v23 - *v24;
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v28 = v23 - *v24;
    if (!v7)
    {
      goto LABEL_102;
    }

LABEL_101:
    memmove(&__p, v11, v7);
    goto LABEL_102;
  }

  return result;
}

void sub_F6AE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_F6AF54(int **a1, int a2, int a3)
{
  if (!a2)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v4 = *a1;
  v5 = (*a1 - **a1);
  v6 = *v5;
  if (v6 < 0x9B)
  {
    v7 = 0;
    if (v6 < 0x2F)
    {
      goto LABEL_12;
    }

    v8 = v5[23];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else if (v5[77])
  {
    v7 = (8 * *(v4 + v5[77])) & 0x40;
    v8 = v5[23];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v8 = v5[23];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (*(v4 + v8) == 21)
  {
    v7 |= 0x80uLL;
  }

LABEL_12:
  if (a3)
  {
    v9 = a1[5];
    v10 = (v9 - *v9);
    v11 = *v10;
    if (v11 < 0x9B)
    {
      v12 = 0;
      if (v11 < 0x2F)
      {
LABEL_20:
        v7 |= v12;
        goto LABEL_21;
      }
    }

    else
    {
      v12 = v10[77];
      if (v10[77])
      {
        v12 = (8 * *(v9 + v12)) & 0x40;
      }
    }

    v13 = v10[23];
    if (v13 && *(v9 + v13) == 21)
    {
      v12 |= 0x80uLL;
    }

    goto LABEL_20;
  }

LABEL_21:
  if (sub_314160(a1) || sub_314010(a1 + 5) || sub_314400(a1) || sub_3142B0(a1 + 5))
  {
    return v7 | 0x100;
  }

  return v7;
}

void sub_F6B080(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[3];
  v7 = 0x2E8BA2E8BA2E8BA3 * ((a3 - a2) >> 3) + 0x2E8BA2E8BA2E8BA3 * ((a1[4] - v6) >> 3);
  if (0x2E8BA2E8BA2E8BA3 * ((a1[5] - v6) >> 3) < v7)
  {
    if (v7 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }

  if (a3 != a2)
  {
    do
    {
      sub_F692F8(a1, v4, 0);
      v4 += 88;
    }

    while (v4 != a3);
  }
}

void sub_F6B1A0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = *(a2 + 48) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(a1 + 48) = 0;
  }

  sub_F6B080(a1, *(a2 + 24), *(a2 + 32));
  v5 = *(a2 + 440);
  v6 = *(a2 + 456);
  v7 = *(a2 + 472);
  *(a1 + 487) = *(a2 + 487);
  *(a1 + 472) = v7;
  v8 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v8;
  *(a1 + 440) = v5;
  *(a1 + 456) = v6;
  if (*(a1 + 484) == 3)
  {
    *(a1 + 484) = 4;
  }
}

char *sub_F6B224(char **a1, char *__src, __int128 *a3)
{
  v3 = __src;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v12 = *a1;
    v13 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 3) + 1;
    if (v13 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_1794();
    }

    v14 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v12) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x1745D1745D1745DLL)
    {
      v15 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      sub_1808();
    }

    v20 = 8 * ((__src - v12) >> 3);
    if (!(0x2E8BA2E8BA2E8BA3 * ((__src - v12) >> 3)))
    {
      if (__src - v12 < 1)
      {
        operator new();
      }

      v20 = 8 * ((__src - v12) >> 3) - 88 * ((0x2E8BA2E8BA2E8BA3 * ((8 * ((__src - v12) >> 3)) >> 3) + 1 + ((0x2E8BA2E8BA2E8BA3 * ((8 * ((__src - v12) >> 3)) >> 3) + 1) >> 63)) >> 1);
    }

    v21 = a3[1];
    *v20 = *a3;
    *(v20 + 16) = v21;
    v22 = a3[2];
    v23 = a3[3];
    v24 = a3[4];
    *(v20 + 80) = *(a3 + 10);
    *(v20 + 48) = v23;
    *(v20 + 64) = v24;
    *(v20 + 32) = v22;
    memcpy((v20 + 88), __src, a1[1] - __src);
    v25 = *a1;
    v26 = (v20 + 88 + a1[1] - v3);
    a1[1] = v3;
    v27 = v3 - v25;
    v28 = (v20 - (v3 - v25));
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    a1[1] = v26;
    a1[2] = 0;
    if (v29)
    {
      operator delete(v29);
    }

    return v20;
  }

  else
  {
    if (__src != v5)
    {
      v33 = a3[2];
      v34 = a3[3];
      v35 = a3[4];
      v36 = *(a3 + 10);
      v7 = __src + 88;
      v31 = *a3;
      v32 = a3[1];
      if (v5 < 0x58)
      {
        a1[1] = v5;
        if (v5 == v7)
        {
LABEL_21:
          *(v3 + 2) = v33;
          *(v3 + 3) = v34;
          *(v3 + 4) = v35;
          *(v3 + 10) = v36;
          *v3 = v31;
          *(v3 + 1) = v32;
          return v3;
        }
      }

      else
      {
        v8 = *(v5 - 72);
        *v5 = *(v5 - 88);
        *(v5 + 1) = v8;
        v9 = *(v5 - 56);
        v10 = *(v5 - 40);
        v11 = *(v5 - 24);
        *(v5 + 10) = *(v5 - 1);
        *(v5 + 3) = v10;
        *(v5 + 4) = v11;
        *(v5 + 2) = v9;
        a1[1] = v5 + 88;
        if (v5 == v7)
        {
          goto LABEL_21;
        }
      }

      memmove(__src + 88, __src, v5 - v7);
      goto LABEL_21;
    }

    v16 = a3[1];
    *v5 = *a3;
    *(v5 + 1) = v16;
    v17 = a3[2];
    v18 = a3[3];
    v19 = a3[4];
    *(v5 + 10) = *(a3 + 10);
    *(v5 + 3) = v18;
    *(v5 + 4) = v19;
    *(v5 + 2) = v17;
    a1[1] = v5 + 88;
  }

  return v3;
}

void sub_F6B504(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_F6B51C(char *result, uint64_t a2)
{
  v3 = result;
  if (*(result + 6))
  {
    v4 = *(a2 + 48) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(result + 6) = 0;
  }

  v6 = *(a2 + 24);
  for (i = *(a2 + 32); i != v6; result = sub_F6B224(v3 + 3, *(v3 + 3), i))
  {
    i = (i - 88);
    *(v3 + 12) |= sub_F6AF54(i, 1, *(v3 + 3) == *(v3 + 4));
  }

  v7 = *(a2 + 352);
  v8 = *(a2 + 368);
  v9 = *(a2 + 384);
  *(v3 + 399) = *(a2 + 399);
  *(v3 + 24) = v9;
  v10 = *(a2 + 336);
  *(v3 + 20) = *(a2 + 320);
  *(v3 + 21) = v10;
  *(v3 + 22) = v7;
  *(v3 + 23) = v8;
  if (*(v3 + 99) == 3)
  {
    *(v3 + 99) = 5;
  }

  return result;
}

uint64_t sub_F6B5E8(uint64_t result)
{
  *(result + 96) = 0;
  v1 = *(result + 32);
  v2 = *(result + 24);
  if (v2 != v1)
  {
    v3 = result;
    v4 = *v2;
    v5 = (*v2 - **v2);
    v6 = *v5;
    if (v6 < 0x9B)
    {
      v7 = 0;
      if (v6 < 0x2F)
      {
LABEL_9:
        *(result + 96) = v7;
        for (i = v2 + 5; ; i += 11)
        {
          v10 = *i;
          v11 = (*i - **i);
          v12 = *v11;
          if (v12 < 0x9B)
          {
            v13 = 0;
            if (v12 >= 0x2F)
            {
              v14 = v11[23];
              if (v14)
              {
LABEL_16:
                if (*(v10 + v14) == 21)
                {
                  v13 |= 0x80uLL;
                }
              }
            }
          }

          else if (v11[77])
          {
            v13 = (8 * *(v10 + v11[77])) & 0x40;
            v14 = v11[23];
            if (v14)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v13 = 0;
            v14 = v11[23];
            if (v14)
            {
              goto LABEL_16;
            }
          }

          result = sub_314160(i - 5);
          if (result & 1) != 0 || (result = sub_314010(i), (result) || (result = sub_314400(i - 5), (result) || (result = sub_3142B0(i), result))
          {
            v13 |= 0x100uLL;
          }

          *(v3 + 96) |= v13;
          v15 = i + 6;
          if (v15 == v1)
          {
            return result;
          }
        }
      }
    }

    else
    {
      v7 = v5[77];
      if (v5[77])
      {
        v7 = (8 * *(v4 + v7)) & 0x40;
      }
    }

    v8 = v5[23];
    if (v8 && *(v4 + v8) == 21)
    {
      v7 |= 0x80uLL;
    }

    goto LABEL_9;
  }

  return result;
}

char *sub_F6B74C(uint64_t a1, char *a2, char *a3, int a4)
{
  if (*(a1 + 24) == a2)
  {
    if (*(a1 + 32) == a3)
    {
      return *(a1 + 24);
    }
  }

  else if (a4)
  {
    v5 = *(a3 - 3);
    v6 = *(a3 - 2);
    *(a2 - 2) = *(a3 - 2);
    *(a2 - 3) = v5;
    *(a2 - 2) = v6;
  }

  if (a3 != a2)
  {
    v7 = *(a1 + 32);
    v8 = v7 - a3;
    if (v7 != a3)
    {
      v9 = a1;
      memmove(a2, a3, v7 - a3);
      a1 = v9;
    }

    *(a1 + 32) = &a2[v8];
  }

  sub_F6B5E8(a1);
  return a2;
}

uint64_t sub_F6B804(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = *(a1 + 56);
    v2 = (v1 - *v1);
    v3 = 0.0;
    if (*v2 >= 9u)
    {
      v4 = v2[4];
      if (v4)
      {
        LODWORD(v3) = *(v1 + v4);
        v3 = *&v3;
      }
    }

    v5 = v3 * ((*(a1 + 408) - *(a1 + 320)) / 1000000000.0);
    if (v5 >= 0.0)
    {
      if (v5 < 4.50359963e15)
      {
        v6 = (v5 + v5) + 1;
        return (v6 >> 1);
      }
    }

    else if (v5 > -4.50359963e15)
    {
      v6 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
      return (v6 >> 1);
    }

    return v5;
  }

  v7 = *(a1 + 24);
  v8 = (*v7 - **v7);
  v9 = 0.0;
  if (*v8 >= 9u)
  {
    v10 = v8[4];
    if (v10)
    {
      LODWORD(v9) = *(*v7 + v10);
      v9 = *&v9;
    }
  }

  v11 = v9 * ((1000000000 - *(a1 + 320)) / 1000000000.0);
  if (v11 >= 0.0)
  {
    HIDWORD(v12) = 1127219200;
    if (v11 >= 4.50359963e15)
    {
      goto LABEL_21;
    }

    v13 = (v11 + v11) + 1;
  }

  else
  {
    HIDWORD(v12) = -1020264448;
    if (v11 <= -4.50359963e15)
    {
      goto LABEL_21;
    }

    v13 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
  }

  v11 = (v13 >> 1);
LABEL_21:
  v15 = v11;
  v16 = *(a1 + 32);
  v17 = 0x2E8BA2E8BA2E8BA3 * ((v16 - v7) >> 3);
  if (v17 >= 2)
  {
    v18 = v7 + 11;
    v19 = v17 - 1;
    do
    {
      while (1)
      {
        v20 = (*v18 - **v18);
        if (*v20 >= 9u)
        {
          v21 = v20[4];
          if (v21)
          {
            break;
          }
        }

        v18 += 11;
        if (!--v19)
        {
          goto LABEL_27;
        }
      }

      v15 += *(*v18 + v21);
      v18 += 11;
      --v19;
    }

    while (v19);
  }

LABEL_27:
  v22 = *(v16 - 48);
  v23 = (v22 - *v22);
  v24 = 0.0;
  if (*v23 >= 9u)
  {
    v25 = v23[4];
    if (v25)
    {
      LODWORD(v24) = *(v22 + v25);
      v24 = *&v24;
    }
  }

  LODWORD(v12) = *(a1 + 408);
  v26 = v24 * (v12 / 1000000000.0);
  if (v26 >= 0.0)
  {
    if (v26 < 4.50359963e15)
    {
      v27 = (v26 + v26) + 1;
      goto LABEL_35;
    }
  }

  else if (v26 > -4.50359963e15)
  {
    v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
LABEL_35:
    v26 = (v27 >> 1);
  }

  return v15 + v26;
}

BOOL sub_F6BA98(uint64_t a1, void *a2)
{
  if ((*(a1 + 48) != 0) != (a2[6] != 0))
  {
    return 0;
  }

  result = sub_F71798(a1 + 320, (a2 + 40));
  if (result)
  {
    result = sub_F71798(a1 + 408, (a2 + 51));
    if (result)
    {
      if (*(a1 + 48) && a2[6])
      {
        v5 = a2[11];
        if (__PAIR64__(*(a1 + 92), *(a1 + 88)) == __PAIR64__(WORD2(v5), v5))
        {
          return *(a1 + 94) == BYTE6(v5);
        }

        return 0;
      }

      v7 = *(a1 + 24);
      v6 = *(a1 + 32);
      v8 = a2[3];
      if (v6 - v7 == a2[4] - v8)
      {
        if (v7 != v6)
        {
          v9 = 0;
          while (1)
          {
            v10 = v7 + v9;
            v11 = *(v8 + v9 + 32);
            if (*(v7 + v9 + 32) != v11)
            {
              break;
            }

            result = 0;
            if (*(v10 + 36) != WORD2(v11) || *(v10 + 38) != BYTE6(v11))
            {
              return result;
            }

            v12 = v7 + v9;
            v13 = *(v8 + v9 + 72);
            if (*(v7 + v9 + 72) != v13)
            {
              return 0;
            }

            result = 0;
            if (*(v12 + 76) != WORD2(v13) || *(v12 + 78) != BYTE6(v13))
            {
              return result;
            }

            if (*(v7 + v9 + 80) != *(v8 + v9 + 80) || ((*(v8 + v9 + 84) ^ *(v7 + v9 + 84)) & 7) != 0)
            {
              return 0;
            }

            v9 += 88;
            result = 1;
            if (v7 + v9 == v6)
            {
              return result;
            }
          }

          return 0;
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_F6BC80(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v7 = *(a1 + 104);
  v8 = *(a1 + 112);
  v6 = (a1 + 104);
  v9 = v7;
  if (v7 != v8)
  {
    v9 = v7;
    while (1)
    {
      v10 = *(v9 + 12);
      if (v10 != -1 && *v9 == a2)
      {
        v11 = *(v9 + 4) == a3 && v10 == a4;
        if (v11 && *(v9 + 8) == a5)
        {
          break;
        }
      }

      v9 += 56;
      if (v9 == v8)
      {
        goto LABEL_14;
      }
    }
  }

  if (v9 != v8)
  {
    return v9;
  }

LABEL_14:
  if (v8 - v7 == -56)
  {
    for (; v8 != v7; v8 -= 56)
    {
      v13 = *(v8 - 24);
      if (v13)
      {
        *(v8 - 16) = v13;
        operator delete(v13);
      }
    }

    *(a1 + 112) = v7;
    return v7 - 56;
  }

  else
  {
    sub_F718E4(v6, 1uLL);
    return *(a1 + 112) - 56;
  }
}

uint64_t sub_F6BD80(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0x1000000000000;
  *(a1 + 176) = 0x7FFFFFFF;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0x7FFFFFFF;
  *(a1 + 188) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 208) = 0x8000000080000000;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 268) = 0x7FFFFFFF;
  *(a1 + 272) = 0x8000000080000000;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 312) = -1;
  *(a1 + 314) = 0;
  *(a1 + 316) = -1;
  *(a1 + 318) = 0;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0x3FF0000000000000;
  *(a1 + 368) = 1;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2359296000;
  *(a1 + 399) = 0;
  *(a1 + 408) = 0;
  *(a1 + 440) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0x3FF0000000000000;
  *(a1 + 456) = 1;
  *(a1 + 472) = 0;
  *(a1 + 480) = 2359296000;
  *(a1 + 464) = 0;
  *(a1 + 487) = 0;
  *(a1 + 496) = -1;
  *(a1 + 500) = -1;
  *(a1 + 550) = 0;
  *(a1 + 518) = 0u;
  *(a1 + 534) = 0u;
  *(a1 + 502) = 0u;
  sub_F687F4(a1);
  return a1;
}

void sub_F6BEA8(_Unwind_Exception *a1)
{
  sub_4D0584(v1 + 504);
  sub_49A8F8(v2);
  v4 = *(v1 + 152);
  if (v4)
  {
    *(v1 + 160) = v4;
    operator delete(v4);
  }

  sub_21E56B0(v1 + 128);
  _Unwind_Resume(a1);
}

BOOL sub_F6BEEC(void *a1, void *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[3];
    v4 = v2[4];
    if (v3 == v4 && !v2[6])
    {
      v5 = 0;
    }

    else
    {
      v5 = 1 - 0x5555555555555555 * ((v4 - v3) >> 5);
    }

    v6 = a1[1] < v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  if (!*a2 || (v9 = a2[1], v10 = v7[3], v11 = v7[4], v10 == v11) && !v7[6])
  {
    v12 = 0;
    return v6 ^ v12 ^ 1;
  }

  v12 = v9 < 1 - 0x5555555555555555 * ((v11 - v10) >> 5);
  if (!v6 || !v12)
  {
    return v6 ^ v12 ^ 1;
  }

  v13 = a1[1];
  v15 = v2[3];
  v14 = v2[4];
  if (v15 != v14 || v2[6])
  {
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 5);
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_26:
    v22 = v2[6];
    v23 = v2 + 7;
    if (v22)
    {
      v20 = v23;
    }

    else
    {
      v20 = v15;
    }

    if (v10 != v11)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v16 = -1;
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_14:
  if (v16 == v13)
  {
    v17 = v2[6];
    v18 = v14 - 56;
    v19 = v2 + 7;
    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    if (v10 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v20 = sub_F6CBC8(v2 + 3, v13);
    v7 = *a2;
    v9 = a2[1];
    v10 = *(*a2 + 24);
    v11 = *(*a2 + 32);
    if (v10 != v11)
    {
      goto LABEL_31;
    }
  }

LABEL_30:
  if (!v7[6])
  {
    v24 = -1;
    if (v9)
    {
      goto LABEL_32;
    }

LABEL_36:
    v25 = v7[6];
    goto LABEL_37;
  }

LABEL_31:
  v24 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 5);
  if (!v9)
  {
    goto LABEL_36;
  }

LABEL_32:
  if (v24 != v9)
  {
    return v20 == sub_F6CBC8(v7 + 3, v9);
  }

  v25 = v7[6];
  v10 = v11 - 56;
LABEL_37:
  v26 = (v7 + 7);
  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = v10;
  }

  return v20 == v27;
}

void sub_F6C100(uint64_t a1, uint64_t a2, int **a3, int a4)
{
  *(a1 + 48) = a2;
  v6 = *a3;
  v7 = *(a3 + 1);
  *(a1 + 88) = a3[4];
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 32) = *(a1 + 24);
  v8 = *a3;
  v9 = (*a3 - **a3);
  v10 = *v9;
  if (v10 < 0x9B)
  {
    v11 = 0;
    if (v10 < 0x2F)
    {
      v12 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v11 = v9[77];
    if (v9[77])
    {
      v11 = (*&v8[v11] >> 4) & 0x10;
    }
  }

  if (v9[23] && !v8[v9[23]])
  {
    v11 |= 0x20uLL;
    v12 = 1;
    if (v10 < 0x9B)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = 1;
    if (v10 < 0x9B)
    {
      goto LABEL_14;
    }
  }

  if (v9[77] && (v8[v9[77]] & 8) != 0)
  {
    v11 |= 0x40uLL;
  }

LABEL_14:
  if (v12)
  {
    v13 = v9[23];
    if (v13)
    {
      if (v8[v13] == 21)
      {
        v11 |= 0x80uLL;
      }
    }
  }

  v21[3] = v4;
  v21[4] = v5;
  *(a1 + 96) = v11;
  v14 = *(a1 + 528);
  v15 = *(a1 + 536);
  if (v14 != v15)
  {
    v16 = *(a1 + 504);
    v17 = *(a1 + 528);
    do
    {
      v18 = *v17++;
      *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v18);
    }

    while (v17 != v15);
  }

  *(a1 + 536) = v14;
  if (a4)
  {
    v21[0] = 0;
    if (*(a1 + 512))
    {
      if (**(a1 + 504))
      {
        return;
      }
    }

    else
    {
      v20 = a1;
      sub_4D9168(a1 + 504, 1uLL, 0);
      a1 = v20;
      if (**(v20 + 504))
      {
        return;
      }
    }

    v19 = a1;
    sub_2512DC(a1 + 528, v21);
    *(*(v19 + 504) + ((v21[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << SLOBYTE(v21[0]);
  }
}

unint64_t sub_F6C2B0(void *a1, unint64_t a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v3 == v2 && !a1[6])
  {
    v4 = -1;
    if (a2)
    {
LABEL_4:
      if (v4 == a2)
      {
        result = a1[6];
        if (!result)
        {
          return (((*(v2 - 24) >> 16) & 0xFFFF0000 | (*(v2 - 24) << 32) | (2 * ((*(v2 - 24) & 0xFF000000000000) == 0))) + 4 * *(v2 - 14)) & 0xFFFFFFFFFFFFFFFELL | (*(v2 - 8) >> 1) & 1;
        }
      }

      else
      {
        v6 = sub_F6CBC8(a1 + 3, a2);
        return (((*(v6 + 32) >> 16) & 0xFFFF0000 | (*(v6 + 32) << 32) | (2 * ((*(v6 + 32) & 0xFF000000000000) == 0))) + 4 * *(v6 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v6 + 88) & 1;
      }

      return result;
    }
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 5);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  result = a1[6];
  if (!result)
  {
    return (((*(v3 + 32) >> 16) & 0xFFFF0000 | (*(v3 + 32) << 32) | (2 * ((*(v3 + 32) & 0xFF000000000000) == 0))) + 4 * *(v3 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v3 + 88) & 1;
  }

  return result;
}

void sub_F6C3B8(void *a1, int **a2, int a3)
{
  a1[12] |= sub_F6D98C(a2, a1[3] == a1[4], 1);
  v6 = a1[4];
  v7 = a1[5];
  if (v6 >= v7)
  {
    v13 = a1[3];
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v13) >> 5) + 1;
    if (v14 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v13) >> 5);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x155555555555555)
    {
      v16 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v17 = *(a2 + 3);
    v18 = (32 * ((v6 - v13) >> 5));
    v18[2] = *(a2 + 2);
    v18[3] = v17;
    v19 = *(a2 + 5);
    v18[4] = *(a2 + 4);
    v18[5] = v19;
    v20 = *(a2 + 1);
    *v18 = *a2;
    v18[1] = v20;
    v12 = v18 + 6;
    v21 = v18 - (v6 - v13);
    memcpy(v21, v13, v6 - v13);
    a1[3] = v21;
    a1[4] = v12;
    a1[5] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v8 = *(a2 + 1);
    *v6 = *a2;
    *(v6 + 1) = v8;
    v9 = *(a2 + 2);
    v10 = *(a2 + 3);
    v11 = *(a2 + 5);
    *(v6 + 4) = *(a2 + 4);
    *(v6 + 5) = v11;
    *(v6 + 2) = v9;
    *(v6 + 3) = v10;
    v12 = v6 + 96;
  }

  a1[4] = v12;
  if (a3)
  {
    v22 = 0xAAAAAAAAAAAAAAABLL * ((v12 - a1[3]) >> 5);
    v23 = v22 - 1;
    v26 = v22 - 1;
    if (v22 - 1 >= a1[64])
    {
      sub_4D9168((a1 + 63), v22, 0);
    }

    v24 = a1[63];
    if (((*(v24 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      sub_2512DC((a1 + 66), &v26);
      v24 = a1[63];
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    }

    v25 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 5);
    v26 = v25;
    if (v25 >= a1[64])
    {
      sub_4D9168((a1 + 63), v25 + 1, 0);
      v24 = a1[63];
    }

    if (((*(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      sub_2512DC((a1 + 66), &v26);
      *(a1[63] + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    }
  }
}

uint64_t sub_F6C650(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 512);
  if (v2 > a2 && (v3 = *(a1 + 504), ((*(v3 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1) != 0) && v2 > a2 + 1)
  {
    return (*(v3 + (((a2 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (a2 + 1)) & 1;
  }

  else
  {
    return 0;
  }
}

void sub_F6C6A0(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[5] - a1[3]) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

unint64_t sub_F6C788(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    v3 = *(a1 + 24);
    return (((*(v3 + 32) >> 16) & 0xFFFF0000 | (*(v3 + 32) << 32) | (2 * ((*(v3 + 32) & 0xFF000000000000) == 0))) + 4 * *(v3 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v3 + 88) & 1;
  }

  return result;
}

unint64_t sub_F6C7D0(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    v3 = *(a1 + 32);
    return (((*(v3 - 24) >> 16) & 0xFFFF0000 | (*(v3 - 24) << 32) | (2 * ((*(v3 - 24) & 0xFF000000000000) == 0))) + 4 * *(v3 - 14)) & 0xFFFFFFFFFFFFFFFELL | (*(v3 - 8) >> 1) & 1;
  }

  return result;
}

uint64_t sub_F6C814(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return a1 + 56;
  }

  else
  {
    return *(a1 + 32) - 56;
  }
}

__n128 sub_F6C830(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = (a1 + 216);
  v6 = *(a1 + 216);
  *(v7 - 1) = *(a2 + 4);
  *(v7 - 3) = v5;
  *(v7 - 5) = v4;
  if (v6)
  {
    *(a1 + 224) = v6;
    operator delete(v6);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  *(a1 + 216) = *(a2 + 40);
  *(a1 + 232) = *(a2 + 7);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  v8 = *(a1 + 240);
  if (v8)
  {
    *(a1 + 248) = v8;
    operator delete(v8);
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
  }

  *(a1 + 240) = a2[4];
  *(a1 + 256) = *(a2 + 10);
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  result = *(a2 + 88);
  v10 = *(a2 + 120);
  *(a1 + 280) = *(a2 + 104);
  *(a1 + 296) = v10;
  *(a1 + 264) = result;
  return result;
}

void sub_F6C8F0(void *a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = a1[3];
  v5 = a1[4];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 5);
  if (v6 != -1)
  {
    if (v6 + 1 <= 0x666666666666666)
    {
      operator new();
    }

LABEL_22:
    sub_1794();
  }

  for (i = a2; v4 != v5; v4 += 96)
  {
    v7 = *v4;
    v8 = *(v4 + 16);
    v25 = *(v4 + 32);
    v24[0] = v7;
    v24[1] = v8;
    sub_31F2E4(&i, v24);
  }

  if (a1[6])
  {
    v9 = a1 + 7;
    v10 = a2[1];
    v11 = a2[2];
    if (v10 < v11)
    {
LABEL_8:
      v12 = *v9;
      v13 = *(v9 + 1);
      *(v10 + 32) = v9[4];
      *v10 = v12;
      *(v10 + 16) = v13;
      v14 = v10 + 40;
      goto LABEL_21;
    }
  }

  else
  {
    v9 = (a1[4] - 56);
    v10 = a2[1];
    v11 = a2[2];
    if (v10 < v11)
    {
      goto LABEL_8;
    }
  }

  v15 = *a2;
  v16 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - *a2) >> 3);
  v17 = v16 + 1;
  if (v16 + 1 > 0x666666666666666)
  {
    goto LABEL_22;
  }

  v18 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v15) >> 3);
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x333333333333333)
  {
    v19 = 0x666666666666666;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    if (v19 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 8 * ((v10 - *a2) >> 3);
  v21 = *v9;
  v22 = *(v9 + 1);
  *(v20 + 32) = v9[4];
  *v20 = v21;
  *(v20 + 16) = v22;
  v14 = 40 * v16 + 40;
  v23 = (40 * v16 - (v10 - v15));
  memcpy(v23, v15, v10 - v15);
  *a2 = v23;
  a2[1] = v14;
  a2[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

LABEL_21:
  a2[1] = v14;
}

void sub_F6CAE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_F6CB08(__n128 *a1, __n128 *a2)
{
  v5 = a1 + 8;
  v4 = a1[8].n128_u64[0];
  if (v4)
  {
    a1[8].n128_u64[1] = v4;
    operator delete(v4);
    v5->n128_u64[0] = 0;
    v5->n128_u64[1] = 0;
    v5[1].n128_u64[0] = 0;
  }

  result = *a2;
  a1[8] = *a2;
  a1[9].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_F6CB68(void *a1, __n128 *a2)
{
  v5 = a1 + 19;
  v4 = a1[19];
  if (v4)
  {
    a1[20] = v4;
    operator delete(v4);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  result = *a2;
  *(a1 + 19) = *a2;
  a1[21] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

unint64_t sub_F6CBC8(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 96 * a2;
}

void sub_F6CD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

unint64_t sub_F6CDEC(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 96 * a2;
}

void sub_F6CF28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

unint64_t sub_F6D024(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  if (v1 == v2 && !a1[6])
  {
    return 0;
  }

  else
  {
    return 0xAAAAAAAAAAAAAAABLL * ((v2 - v1) >> 5) + 1;
  }
}

void *sub_F6D05C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[3];
  v3 = result[4];
  if (v2 == v3 && !result[6])
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0;
  }

  else
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) + 1;
  }

  return result;
}

void *sub_F6D0A4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[3];
  v3 = result[4];
  if (v2 == v3 && !result[6])
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) + 1;
    *a2 = result;
    a2[1] = v4;
    a2[2] = result;
    a2[3] = v4;
  }

  return result;
}

void *sub_F6D0EC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[3];
  v3 = result[4];
  if (v2 == v3 && !result[6])
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0;
    a2[4] = result;
    a2[5] = 0;
    a2[6] = result;
    a2[7] = 0;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) + 1;
    *a2 = result;
    a2[1] = v4;
    a2[2] = result;
    a2[3] = v4;
    a2[4] = result;
    a2[5] = 0;
    a2[6] = result;
    a2[7] = 0;
  }

  return result;
}

uint64_t sub_F6D170@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 136);
  *a2 = *(result + 128);
  a2[1] = v2;
  return result;
}

void *sub_F6D17C(void *a1, unint64_t a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v3 == v2 && !a1[6])
  {
    v4 = -1;
    if (a2)
    {
LABEL_4:
      if (v4 != a2)
      {
        return sub_F6CBC8(a1 + 3, a2);
      }

      v5 = v2 - 56;
      if (a1[6])
      {
        return a1 + 7;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 5);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  if (a1[6])
  {
    return a1 + 7;
  }

  else
  {
    return a1[3];
  }
}

uint64_t sub_F6D1F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 320);
  }
}

uint64_t sub_F6D204(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3 && !*(a1 + 48))
  {
    if (a2 == -1)
    {
      return *(a1 + 408);
    }
  }

  else if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) == a2)
  {
    return *(a1 + 408);
  }

  return 1000000000;
}

uint64_t sub_F6D254(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 32);
    if (v2 == v3 && !*(a1 + 48))
    {
      if (a2 == -1)
      {
LABEL_5:
        v4 = *(a1 + 408);
        v7 = *(a1 + 24);
        v6 = *(a1 + 32);
        v5 = (a1 + 24);
        if (v7 != v6)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) == a2)
    {
      goto LABEL_5;
    }

    v4 = 1000000000;
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

  else if (*(a1 + 48))
  {
    v4 = *(a1 + 408) - *(a1 + 320);
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = 1000000000 - *(a1 + 320);
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

LABEL_14:
  if (*(a1 + 48))
  {
LABEL_15:
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 5);
    if (a2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v8 = -1;
  if (a2)
  {
LABEL_16:
    if (v8 == a2)
    {
      v9 = v6 - 56;
      if (*(a1 + 48))
      {
        v10 = (a1 + 56);
      }

      else
      {
        v10 = v9;
      }
    }

    else
    {
      v10 = sub_F6CBC8(v5, a2);
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*(a1 + 48))
  {
    v10 = (a1 + 56);
  }

  else
  {
    v10 = v7;
  }

LABEL_25:
  v11 = (*v10 - **v10);
  v12 = 0.0;
  if (*v11 >= 9u)
  {
    v13 = v11[4];
    if (v13)
    {
      LODWORD(v12) = *(*v10 + v13);
      v12 = *&v12;
    }
  }

  v14 = v4 / 1000000000.0 * v12;
  if (v14 >= 0.0)
  {
    if (v14 < 4.50359963e15)
    {
      v15 = (v14 + v14) + 1;
      return (v15 >> 1);
    }
  }

  else if (v14 > -4.50359963e15)
  {
    v15 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
    return (v15 >> 1);
  }

  return v14;
}

BOOL sub_F6D428(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    v41 = 1;
    v40 = &v41;
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    if (v3 != v4 && v3 + 12 != v4)
    {
      do
      {
        sub_F7270C(&v40, v3, (v3 + 12));
        v6 = v3 + 24;
        v3 += 12;
      }

      while (v6 != v4);
      v3 = *(a1 + 24);
      v4 = *(a1 + 32);
    }

    v7 = *(a1 + 48);
    if (v3 == v4)
    {
      if (!v7)
      {
        v11 = 0;
        v39 = 0;
        goto LABEL_55;
      }
    }

    else if (!v7)
    {
      v8 = *v3;
      v9 = (*v3 - **v3);
      v10 = *v9;
      if (v10 >= 0x9B)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    v8 = *(a1 + 56);
    v9 = (v8 - *v8);
    v10 = *v9;
    if (v10 >= 0x9B)
    {
LABEL_13:
      v11 = v9[77];
      if (v9[77])
      {
        v11 = (*(v8 + v11) >> 4) & 0x10;
      }

      goto LABEL_26;
    }

LABEL_25:
    v11 = 0;
    if (v10 < 0x2F)
    {
      v18 = 0;
      goto LABEL_36;
    }

LABEL_26:
    if (v9[23] && !*(v8 + v9[23]))
    {
      v11 |= 0x20uLL;
      v18 = 1;
      if (v10 < 0x9B)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v18 = 1;
      if (v10 < 0x9B)
      {
        goto LABEL_36;
      }
    }

    if (v9[77] && (*(v8 + v9[77]) & 8) != 0)
    {
      v11 |= 0x40uLL;
    }

LABEL_36:
    if (v18)
    {
      v19 = v9[23];
      if (v19)
      {
        if (*(v8 + v19) == 21)
        {
          v11 |= 0x80uLL;
        }
      }
    }

    v39 = v11;
    v28 = COERCE_DOUBLE(&v39);
    if (v3 != v4)
    {
      do
      {
        v20 = sub_F71B0C(&v28, v3);
        if (!v20)
        {
          break;
        }

        v3 += 12;
      }

      while (v3 != v4);
      v41 &= v20;
      if ((v39 & ~*(a1 + 96)) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_56;
    }

LABEL_55:
    v41 &= 1u;
    if ((v11 & ~*(a1 + 96)) == 0)
    {
LABEL_74:
      v25 = sub_F6A524((a1 + 176));
      return v25 & v41;
    }

LABEL_56:
    if (!sub_7E7E4(3u))
    {
LABEL_73:
      v41 = 0;
      goto LABEL_74;
    }

    sub_19594F8(&v28);
    sub_4A5C(&v28, "PathLeg has inconsistent features.", 34);
    if ((v38 & 0x10) != 0)
    {
      v23 = v37;
      if (v37 < v34)
      {
        v37 = v34;
        v23 = v34;
      }

      v24 = v33;
      v22 = v23 - v33;
      if (v23 - v33 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if ((v38 & 8) == 0)
      {
        v22 = 0;
        v27 = 0;
LABEL_68:
        *(&__dst + v22) = 0;
        sub_7E854(&__dst, 3u);
        if (v27 < 0)
        {
          operator delete(__dst);
        }

        if (v36 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v30);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_73;
      }

      v24 = v31;
      v22 = v32 - v31;
      if ((v32 - v31) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_76:
        sub_3244();
      }
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v27 = v22;
    if (v22)
    {
      memmove(&__dst, v24, v22);
    }

    goto LABEL_68;
  }

  if (*(a1 + 320) > *(a1 + 408))
  {
    return 0;
  }

  v12 = *(a1 + 56);
  v13 = (v12 - *v12);
  v14 = *v13;
  if (v14 < 0x9B)
  {
    LODWORD(v15) = 0;
    if (v14 < 0x2F)
    {
      v16 = 0;
      v17 = *(a1 + 96);
      goto LABEL_49;
    }
  }

  else
  {
    v15 = v13[77];
    if (v13[77])
    {
      v15 = (*(v12 + v15) >> 4) & 0x10;
    }
  }

  if (v13[23] && !*(v12 + v13[23]))
  {
    LODWORD(v15) = v15 | 0x20;
    v16 = 1;
    v17 = *(a1 + 96);
    if (v14 < 0x9B)
    {
      goto LABEL_49;
    }

LABEL_46:
    if (v13[77] && (*(v12 + v13[77]) & 8) != 0)
    {
      LODWORD(v15) = v15 | 0x40;
    }

    goto LABEL_49;
  }

  v16 = 1;
  v17 = *(a1 + 96);
  if (v14 >= 0x9B)
  {
    goto LABEL_46;
  }

LABEL_49:
  if (v16)
  {
    v21 = v13[23];
    if (v21)
    {
      if (*(v12 + v21) == 21)
      {
        LODWORD(v15) = v15 | 0x80;
      }
    }
  }

  return (~v17 & v15) == 0;
}

void sub_F6D938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

unint64_t sub_F6D98C(int **a1, int a2, int a3)
{
  if (!a2)
  {
    v7 = 0;
    goto LABEL_20;
  }

  v4 = *a1;
  v5 = (*a1 - **a1);
  v6 = *v5;
  if (v6 < 0x9B)
  {
    v7 = 0;
    if (v6 < 0x2F)
    {
      v8 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v5[77];
    if (v5[77])
    {
      v7 = (*&v4[v7] >> 4) & 0x10;
    }
  }

  if (!v5[23] || v4[v5[23]])
  {
    v8 = 1;
    if (v6 < 0x9B)
    {
      goto LABEL_16;
    }

LABEL_13:
    if (v5[77] && (v4[v5[77]] & 8) != 0)
    {
      v7 |= 0x40uLL;
    }

    goto LABEL_16;
  }

  v7 |= 0x20uLL;
  v8 = 1;
  if (v6 >= 0x9B)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (v8)
  {
    v9 = v5[23];
    if (v9)
    {
      if (v4[v9] == 21)
      {
        v7 |= 0x80uLL;
      }
    }
  }

LABEL_20:
  if (!a3)
  {
    goto LABEL_39;
  }

  v10 = a1[5];
  v11 = (v10 - *v10);
  v12 = *v11;
  if (v12 < 0x9B)
  {
    v13 = 0;
    if (v12 < 0x2F)
    {
      v14 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v13 = v11[77];
    if (v11[77])
    {
      v13 = (*(v10 + v13) >> 4) & 0x10;
    }
  }

  if (v11[23] && !*(v10 + v11[23]))
  {
    v13 |= 0x20uLL;
    v14 = 1;
    if (v12 < 0x9B)
    {
      goto LABEL_34;
    }

LABEL_31:
    if (v11[77] && (*(v10 + v11[77]) & 8) != 0)
    {
      v13 |= 0x40uLL;
    }

    goto LABEL_34;
  }

  v14 = 1;
  if (v12 >= 0x9B)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (v14)
  {
    v15 = v11[23];
    if (v15)
    {
      if (*(v10 + v15) == 21)
      {
        v13 |= 0x80uLL;
      }
    }
  }

  v7 |= v13;
LABEL_39:
  v16 = *a1;
  v17 = (*a1 - **a1);
  v18 = *v17;
  if (*(a1 + 38))
  {
    if (v18 >= 0x4F)
    {
      v19 = v17[39];
      if (v19)
      {
        if ((*&v16[v19] & 8) != 0 || (*&v16[v19] & 4) != 0)
        {
          goto LABEL_59;
        }
      }
    }
  }

  else if (v18 >= 0x4F)
  {
    v20 = v17[39];
    if (v20)
    {
      if ((*&v16[v20] & 0x80) != 0 || (*&v16[v20] & 0x40) != 0)
      {
        goto LABEL_59;
      }
    }
  }

  v21 = a1[5];
  v22 = (v21 - *v21);
  v23 = *v22;
  if (*(a1 + 78))
  {
    if (v23 < 0x4F)
    {
      goto LABEL_60;
    }

    v24 = v22[39];
    if (!v24 || (*(v21 + v24) & 0x20) == 0 && (*(v21 + v24) & 0x10) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (v23 < 0x4F)
    {
      goto LABEL_60;
    }

    v25 = v22[39];
    if (!v25 || (*(v21 + v25) & 2) == 0 && (*(v21 + v25) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

LABEL_59:
  v7 |= 0x100uLL;
LABEL_60:
  v26 = a1[6];
  v27 = (v26 - *v26);
  if (*v27 < 0x11u)
  {
    goto LABEL_68;
  }

  v28 = v27[8];
  if (!v28)
  {
    goto LABEL_68;
  }

  if ((*(v26 + v28) & 0x20) != 0)
  {
    v29 = a1[1];
    v30 = (v29 - *v29);
    if (*v30 < 0x11u || (v31 = v30[8]) == 0 || (*(v29 + v31) & 0x20) == 0)
    {
      v7 |= 0x400uLL;
    }
  }

  if ((*(v26 + v28) & 0x10) == 0 || (v35 = a1[1], v36 = (v35 - *v35), *v36 >= 0x11u) && (v37 = v36[8]) != 0 && (*(v35 + v37) & 0x10) != 0)
  {
LABEL_68:
    v32 = v7 & 0xFFFFFFFFFFFFFDFFLL;
  }

  else
  {
    v32 = v7 | 0x200;
  }

  v33 = v32 & 0xFFFFFFFFFFFFE7FFLL | ((((a1[11] & 0x10) >> 4) & 1) << 12) | (((~*(a1 + 88) & 0x41) == 0) << 11);
  if (sub_F71E38(a1) || sub_F71F38(a1))
  {
    return v33 | 0x2000;
  }

  else
  {
    return v33 & 0xFFFFFFFFFFFFDFFFLL;
  }
}

void sub_F6DCCC(void *a1, int **a2, int **a3)
{
  v4 = a2;
  v6 = a1[3];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 5) - 0x5555555555555555 * ((a1[4] - v6) >> 5);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[5] - v6) >> 5) < v7)
  {
    if (v7 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  if (a3 != a2)
  {
    do
    {
      sub_F6C3B8(a1, v4, 0);
      v4 += 12;
    }

    while (v4 != a3);
  }
}

void sub_F6DDE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = *(a2 + 48) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(a1 + 48) = 0;
  }

  sub_F6DCCC(a1, *(a2 + 24), *(a2 + 32));
  v5 = *(a2 + 440);
  v6 = *(a2 + 456);
  v7 = *(a2 + 472);
  *(a1 + 487) = *(a2 + 487);
  *(a1 + 472) = v7;
  v8 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v8;
  *(a1 + 440) = v5;
  *(a1 + 456) = v6;
  if (*(a1 + 484) == 3)
  {
    *(a1 + 484) = 4;
  }
}

char *sub_F6DE64(void *a1, char *__src, _OWORD *a3)
{
  v3 = __src;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v12 = *a1;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5) + 1;
    if (v13 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v12) >> 5);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x155555555555555)
    {
      v15 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v20 = (32 * ((__src - v12) >> 5));
    if (!(0xAAAAAAAAAAAAAAABLL * ((__src - v12) >> 5)))
    {
      if (__src - v12 < 1)
      {
        operator new();
      }

      v20 = (32 * ((__src - v12) >> 5) - 96 * ((1 - 0x5555555555555555 * ((32 * ((__src - v12) >> 5)) >> 5) + ((1 - 0x5555555555555555 * ((32 * ((__src - v12) >> 5)) >> 5)) >> 63)) >> 1));
    }

    v21 = a3[1];
    *v20 = *a3;
    v20[1] = v21;
    v22 = a3[2];
    v23 = a3[3];
    v24 = a3[5];
    v20[4] = a3[4];
    v20[5] = v24;
    v20[2] = v22;
    v20[3] = v23;
    memcpy(v20 + 6, __src, a1[1] - __src);
    v25 = *a1;
    v26 = v20 + a1[1] - v3 + 96;
    a1[1] = v3;
    v27 = v3 - v25;
    v28 = v20 - (v3 - v25);
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    a1[1] = v26;
    a1[2] = 0;
    if (v29)
    {
      operator delete(v29);
    }

    return v20;
  }

  else
  {
    if (__src != v5)
    {
      v33 = a3[2];
      v34 = a3[3];
      *v35 = a3[4];
      *&v35[16] = a3[5];
      v7 = __src + 96;
      v31 = *a3;
      v32 = a3[1];
      if (v5 < 0x60)
      {
        a1[1] = v5;
        if (v5 == v7)
        {
LABEL_21:
          *(v3 + 2) = v33;
          *(v3 + 3) = v34;
          *(v3 + 4) = *v35;
          *(v3 + 76) = *&v35[12];
          *v3 = v31;
          *(v3 + 1) = v32;
          return v3;
        }
      }

      else
      {
        v8 = *(v5 - 80);
        *v5 = *(v5 - 96);
        *(v5 + 16) = v8;
        v9 = *(v5 - 64);
        v10 = *(v5 - 48);
        v11 = *(v5 - 16);
        *(v5 + 64) = *(v5 - 32);
        *(v5 + 80) = v11;
        *(v5 + 32) = v9;
        *(v5 + 48) = v10;
        a1[1] = v5 + 96;
        if (v5 == v7)
        {
          goto LABEL_21;
        }
      }

      memmove(v7, __src, v5 - v7 - 4);
      goto LABEL_21;
    }

    v16 = a3[1];
    *v5 = *a3;
    *(v5 + 16) = v16;
    v17 = a3[2];
    v18 = a3[3];
    v19 = a3[5];
    *(v5 + 64) = a3[4];
    *(v5 + 80) = v19;
    *(v5 + 32) = v17;
    *(v5 + 48) = v18;
    a1[1] = v5 + 96;
  }

  return v3;
}

void sub_F6E110(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_F6E128(char *result, uint64_t a2)
{
  v3 = result;
  if (*(result + 6))
  {
    v4 = *(a2 + 48) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(result + 6) = 0;
  }

  v6 = *(a2 + 24);
  for (i = *(a2 + 32); i != v6; result = sub_F6DE64(v3 + 3, *(v3 + 3), i))
  {
    i -= 12;
    *(v3 + 12) |= sub_F6D98C(i, 1, *(v3 + 3) == *(v3 + 4));
  }

  v7 = *(a2 + 352);
  v8 = *(a2 + 368);
  v9 = *(a2 + 384);
  *(v3 + 399) = *(a2 + 399);
  *(v3 + 24) = v9;
  v10 = *(a2 + 336);
  *(v3 + 20) = *(a2 + 320);
  *(v3 + 21) = v10;
  *(v3 + 22) = v7;
  *(v3 + 23) = v8;
  if (*(v3 + 99) == 3)
  {
    *(v3 + 99) = 5;
  }

  return result;
}

unint64_t sub_F6E1F4(unint64_t result)
{
  *(result + 96) = 0;
  v1 = *(result + 32);
  v2 = *(result + 24);
  if (v2 == v1)
  {
    return result;
  }

  v3 = result;
  v4 = *v2;
  v5 = (*v2 - **v2);
  v6 = *v5;
  if (v6 < 0x9B)
  {
    v7 = 0;
    if (v6 < 0x2F)
    {
      v8 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v7 = v5[77];
    if (v5[77])
    {
      v7 = (*(v4 + v7) >> 4) & 0x10;
    }
  }

  if (v5[23] && !*(v4 + v5[23]))
  {
    v7 |= 0x20uLL;
    v8 = 1;
    if (v6 < 0x9B)
    {
      goto LABEL_15;
    }

LABEL_12:
    if (v5[77] && (*(v4 + v5[77]) & 8) != 0)
    {
      v7 |= 0x40uLL;
    }

    goto LABEL_15;
  }

  v8 = 1;
  if (v6 >= 0x9B)
  {
    goto LABEL_12;
  }

LABEL_15:
  if (v8 && (v9 = v5[23]) != 0 && *(v4 + v9) == 21)
  {
    *(result + 96) = v7 | 0x80;
  }

  else
  {
    *(result + 96) = v7;
  }

  do
  {
    result = sub_F6D98C(v2, 0, 1);
    *(v3 + 96) |= result;
    v2 += 12;
  }

  while (v2 != v1);
  return result;
}

char *sub_F6E314(unint64_t a1, char *a2, char *a3, int a4)
{
  if (*(a1 + 24) == a2)
  {
    if (*(a1 + 32) == a3)
    {
      return *(a1 + 24);
    }
  }

  else if (a4)
  {
    v5 = *(a3 - 56);
    v6 = *(a3 - 40);
    *(a2 - 3) = *(a3 - 3);
    *(a2 - 40) = v6;
    *(a2 - 56) = v5;
  }

  if (a3 != a2)
  {
    v7 = *(a1 + 32);
    v8 = v7 - a3;
    if (v7 != a3)
    {
      v9 = a1;
      memmove(a2, a3, v8 - 4);
      a1 = v9;
    }

    *(a1 + 32) = &a2[v8];
  }

  sub_F6E1F4(a1);
  return a2;
}

uint64_t sub_F6E3D4(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = *(a1 + 56);
    v2 = (v1 - *v1);
    v3 = 0.0;
    if (*v2 >= 9u)
    {
      v4 = v2[4];
      if (v4)
      {
        LODWORD(v3) = *(v1 + v4);
        v3 = *&v3;
      }
    }

    v5 = v3 * ((*(a1 + 408) - *(a1 + 320)) / 1000000000.0);
    if (v5 >= 0.0)
    {
      if (v5 < 4.50359963e15)
      {
        v6 = (v5 + v5) + 1;
        return (v6 >> 1);
      }
    }

    else if (v5 > -4.50359963e15)
    {
      v6 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
      return (v6 >> 1);
    }

    return v5;
  }

  v7 = *(a1 + 24);
  v8 = (*v7 - **v7);
  v9 = 0.0;
  if (*v8 >= 9u)
  {
    v10 = v8[4];
    if (v10)
    {
      LODWORD(v9) = *(*v7 + v10);
      v9 = *&v9;
    }
  }

  v11 = v9 * ((1000000000 - *(a1 + 320)) / 1000000000.0);
  if (v11 >= 0.0)
  {
    HIDWORD(v12) = 1127219200;
    if (v11 >= 4.50359963e15)
    {
      goto LABEL_21;
    }

    v13 = (v11 + v11) + 1;
  }

  else
  {
    HIDWORD(v12) = -1020264448;
    if (v11 <= -4.50359963e15)
    {
      goto LABEL_21;
    }

    v13 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
  }

  v11 = (v13 >> 1);
LABEL_21:
  v15 = v11;
  v16 = *(a1 + 32);
  v17 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v7) >> 5);
  if (v17 >= 2)
  {
    v18 = v7 + 12;
    v19 = v17 - 1;
    do
    {
      while (1)
      {
        v20 = (*v18 - **v18);
        if (*v20 >= 9u)
        {
          v21 = v20[4];
          if (v21)
          {
            break;
          }
        }

        v18 += 12;
        if (!--v19)
        {
          goto LABEL_27;
        }
      }

      v15 += *(*v18 + v21);
      v18 += 12;
      --v19;
    }

    while (v19);
  }

LABEL_27:
  v22 = *(v16 - 56);
  v23 = (v22 - *v22);
  v24 = 0.0;
  if (*v23 >= 9u)
  {
    v25 = v23[4];
    if (v25)
    {
      LODWORD(v24) = *(v22 + v25);
      v24 = *&v24;
    }
  }

  LODWORD(v12) = *(a1 + 408);
  v26 = v24 * (v12 / 1000000000.0);
  if (v26 >= 0.0)
  {
    if (v26 < 4.50359963e15)
    {
      v27 = (v26 + v26) + 1;
      goto LABEL_35;
    }
  }

  else if (v26 > -4.50359963e15)
  {
    v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
LABEL_35:
    v26 = (v27 >> 1);
  }

  return v15 + v26;
}

BOOL sub_F6E668(uint64_t a1, void *a2)
{
  if ((*(a1 + 48) != 0) != (a2[6] != 0))
  {
    return 0;
  }

  result = sub_F71798(a1 + 320, (a2 + 40));
  if (result)
  {
    result = sub_F71798(a1 + 408, (a2 + 51));
    if (result)
    {
      if (*(a1 + 48) && a2[6])
      {
        v5 = a2[11];
        if (__PAIR64__(*(a1 + 92), *(a1 + 88)) == __PAIR64__(WORD2(v5), v5))
        {
          return *(a1 + 94) == BYTE6(v5);
        }

        return 0;
      }

      v7 = *(a1 + 24);
      v6 = *(a1 + 32);
      v8 = a2[3];
      if (v6 - v7 == a2[4] - v8)
      {
        if (v7 != v6)
        {
          v9 = 0;
          while (1)
          {
            v10 = v7 + v9;
            v11 = *(v8 + v9 + 32);
            if (*(v7 + v9 + 32) != v11)
            {
              break;
            }

            result = 0;
            if (*(v10 + 36) != WORD2(v11) || *(v10 + 38) != BYTE6(v11))
            {
              return result;
            }

            v12 = v7 + v9;
            v13 = *(v8 + v9 + 72);
            if (*(v7 + v9 + 72) != v13)
            {
              return 0;
            }

            result = 0;
            if (*(v12 + 76) != WORD2(v13) || *(v12 + 78) != BYTE6(v13))
            {
              return result;
            }

            if (*(v8 + v9 + 80) != *(v7 + v9 + 80) || ((*(v8 + v9 + 88) ^ *(v7 + v9 + 88)) & 3) != 0 || ((*(v8 + v9 + 84) ^ *(v7 + v9 + 84)) & 0x7FFF) != 0)
            {
              return 0;
            }

            result = 0;
            if (((*(v8 + v9 + 88) ^ *(v7 + v9 + 88)) & 0x7C) == 0 && *(v8 + v9 + 86) == *(v7 + v9 + 86))
            {
              v9 += 96;
              result = 1;
              if (v7 + v9 != v6)
              {
                continue;
              }
            }

            return result;
          }

          return 0;
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_F6E86C(uint64_t a1)
{
  *(a1 + 176) = 0x7FFFFFFF;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0x7FFFFFFF;
  *(a1 + 188) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 208) = 0x8000000080000000;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 268) = 0x7FFFFFFF;
  *(a1 + 272) = 0x8000000080000000;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 312) = -1;
  *(a1 + 314) = 0;
  *(a1 + 316) = -1;
  *(a1 + 318) = 0;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0x3FF0000000000000;
  *(a1 + 368) = 1;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 394) = -29536;
  *(a1 + 399) = 0;
  *(a1 + 396) = 0;
  *(a1 + 408) = 0;
  *(a1 + 440) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0x3FF0000000000000;
  *(a1 + 456) = 1;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 2359296000;
  *(a1 + 487) = 0;
  *(a1 + 496) = -1;
  *(a1 + 500) = -1;
  *(a1 + 550) = 0;
  *(a1 + 502) = 0u;
  *(a1 + 518) = 0u;
  *(a1 + 534) = 0u;
  sub_F6E9D8(a1);
  return a1;
}

void sub_F6E998(_Unwind_Exception *a1)
{
  sub_4D0584(v1 + 504);
  sub_49A8F8(v2);
  v4 = *(v1 + 152);
  if (v4)
  {
    *(v1 + 160) = v4;
    operator delete(v4);
  }

  sub_21E56B0(v1 + 128);
  _Unwind_Resume(a1);
}

double sub_F6E9D8(uint64_t a1)
{
  v3 = *(a1 + 104);
  for (i = *(a1 + 112); i != v3; i -= 56)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  v6 = (a1 + 216);
  v5 = *(a1 + 216);
  *(a1 + 112) = v3;
  *(a1 + 48) = 0;
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 176) = 0x7FFFFFFFLL;
  *(a1 + 184) = 0x7FFFFFFF;
  *(a1 + 188) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0x8000000080000000;
  if (v5)
  {
    *(a1 + 224) = v5;
    operator delete(v5);
    *v6 = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  v7 = *(a1 + 240);
  *v6 = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  if (v7)
  {
    *(a1 + 248) = v7;
    operator delete(v7);
  }

  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 256) = 0;
  *(a1 + 268) = 0x7FFFFFFF;
  *&result = 0x8000000080000000;
  *(a1 + 272) = 0x8000000080000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0x3FF0000000000000;
  *(a1 + 368) = 1;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2359296000;
  *(a1 + 399) = 0;
  *(a1 + 408) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0x3FF0000000000000;
  *(a1 + 456) = 1;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 2359296000;
  *(a1 + 487) = 0;
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 160) = *(a1 + 152);
  return result;
}

void sub_F6EB40(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_F6EF04(a1, a2))
  {

    sub_F6E86C(a3);
    return;
  }

  v6 = *a1;
  sub_F6E86C(a3);
  *(a3 + 96) = *(v6 + 96);
  v40 = v6;
  v41 = 0;
  if (sub_F6EF04(a1, &v40))
  {
    v7 = *(v6 + 352);
    v8 = *(v6 + 368);
    v9 = *(v6 + 384);
    *(a3 + 399) = *(v6 + 399);
    *(a3 + 384) = v9;
    v10 = *(v6 + 336);
    *(a3 + 320) = *(v6 + 320);
    *(a3 + 336) = v10;
    *(a3 + 352) = v7;
    *(a3 + 368) = v8;
    if (*(a3 + 396) == 3)
    {
      *(a3 + 396) = 5;
    }

    v11 = *(v6 + 176);
    v12 = *(v6 + 192);
    *(a3 + 208) = *(v6 + 208);
    *(a3 + 176) = v11;
    *(a3 + 192) = v12;
    if (v6 != a3)
    {
      sub_4D88D0((a3 + 216), *(v6 + 216), *(v6 + 224), (*(v6 + 224) - *(v6 + 216)) >> 4);
      sub_4D88D0((a3 + 240), *(v6 + 240), *(v6 + 248), (*(v6 + 248) - *(v6 + 240)) >> 4);
    }

    v13 = *(v6 + 264);
    v14 = *(v6 + 296);
    *(a3 + 280) = *(v6 + 280);
    *(a3 + 296) = v14;
    *(a3 + 264) = v13;
  }

  v15 = *(v6 + 24);
  v16 = *(v6 + 32);
  if (v15 == v16 && !*(v6 + 48))
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x2E8BA2E8BA2E8BA3 * ((v16 - v15) >> 3) + 1;
  }

  v40 = v6;
  v41 = v17;
  if (sub_F6EF04(a2, &v40))
  {
    v18 = *(v6 + 440);
    v19 = *(v6 + 456);
    v20 = *(v6 + 472);
    *(a3 + 487) = *(v6 + 487);
    *(a3 + 472) = v20;
    v21 = *(v6 + 424);
    *(a3 + 408) = *(v6 + 408);
    *(a3 + 424) = v21;
    *(a3 + 440) = v18;
    *(a3 + 456) = v19;
    if (*(a3 + 484) == 3)
    {
      *(a3 + 484) = 4;
    }

    v22 = a1[1];
    v23 = a2[1];
    if (v23 - v22 == 1)
    {
LABEL_18:
      v24 = sub_F6F134(v6, v22);
      v26 = *a1;
      v25 = a1[1];
      v27 = *(*a1 + 24);
      v28 = *(*a1 + 32);
      if (v27 == v28 && !*(v26 + 48))
      {
        v29 = -1;
        if (v25)
        {
LABEL_21:
          if (v29 == v25)
          {
            if (*(v26 + 48))
            {
              v30 = (v26 + 56);
              if (*(v6 + 512) <= v22)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v30 = (v28 - 48);
              if (*(v6 + 512) <= v22)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
            v30 = sub_F6F948((*a1 + 24), v25);
            if (*(v6 + 512) <= v22)
            {
LABEL_38:
              LODWORD(v37) = 0;
LABEL_46:
              sub_F69060(a3, v24, v30, v37);
              return;
            }
          }

LABEL_45:
          v37 = (*(*(v6 + 504) + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v22) & 1;
          goto LABEL_46;
        }
      }

      else
      {
        v29 = 0x2E8BA2E8BA2E8BA3 * ((v28 - v27) >> 3);
        if (v25)
        {
          goto LABEL_21;
        }
      }

      v38 = *(v26 + 48);
      v39 = (v26 + 56);
      if (v38)
      {
        v30 = v39;
      }

      else
      {
        v30 = *(*a1 + 24);
      }

      if (*(v6 + 512) <= v22)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  else
  {
    *(a3 + 408) = 1000000000;
    v22 = a1[1];
    v23 = a2[1];
    if (v23 - v22 == 1)
    {
      goto LABEL_18;
    }
  }

  v31 = v23 - 1;
  if (v22 <= v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = v22;
  }

  if (v22 < v31)
  {
    do
    {
      v33 = sub_F6F948((v6 + 24), v22);
      v34 = *(v6 + 512);
      if (v34 > v22 && (v35 = *(v6 + 504), ((*(v35 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v22) & 1) != 0) && v34 > v22 + 1)
      {
        v36 = (*(v35 + (((v22 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v22 + 1)) & 1;
      }

      else
      {
        LODWORD(v36) = 0;
      }

      sub_F6F284(a3, v33, v36);
      ++v22;
    }

    while (v32 != v22);
  }
}

BOOL sub_F6EF04(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    v5 = 0;
    v6 = *a2;
    if (*a2)
    {
      goto LABEL_7;
    }

LABEL_20:
    v11 = 0;
    return v5 ^ v11 ^ 1;
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (v3 == v4 && !*(v2 + 48))
  {
    v5 = 0;
    v6 = *a2;
    if (*a2)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  v5 = a1[1] < (0x2E8BA2E8BA2E8BA3 * ((v4 - v3) >> 3) + 1);
  v6 = *a2;
  if (!*a2)
  {
    goto LABEL_20;
  }

LABEL_7:
  v8 = a2[1];
  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  if (v9 == v10 && !*(v6 + 48))
  {
    goto LABEL_20;
  }

  v11 = v8 < 0x2E8BA2E8BA2E8BA3 * ((v10 - v9) >> 3) + 1;
  if (!v5 || !v11)
  {
    return v5 ^ v11 ^ 1;
  }

  v12 = a1[1];
  v14 = *(v2 + 24);
  v13 = *(v2 + 32);
  if (v14 != v13 || *(v2 + 48))
  {
    v15 = 0x2E8BA2E8BA2E8BA3 * ((v13 - v14) >> 3);
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_25:
    v21 = *(v2 + 48);
    v22 = v2 + 56;
    if (v21)
    {
      v19 = v22;
    }

    else
    {
      v19 = v14;
    }

    if (v9 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v15 = -1;
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (v15 == v12)
  {
    v16 = *(v2 + 48);
    v17 = v13 - 48;
    v18 = v2 + 56;
    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    if (v9 != v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v19 = sub_F6F948((v2 + 24), v12);
    v6 = *a2;
    v8 = a2[1];
    v9 = *(*a2 + 24);
    v10 = *(*a2 + 32);
    if (v9 != v10)
    {
      goto LABEL_30;
    }
  }

LABEL_29:
  if (!*(v6 + 48))
  {
    v23 = -1;
    if (v8)
    {
      goto LABEL_31;
    }

LABEL_35:
    v24 = *(v6 + 48);
    goto LABEL_36;
  }

LABEL_30:
  v23 = 0x2E8BA2E8BA2E8BA3 * ((v10 - v9) >> 3);
  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_31:
  if (v23 != v8)
  {
    return v19 == sub_F6F948((v6 + 24), v8);
  }

  v24 = *(v6 + 48);
  v9 = v10 - 48;
LABEL_36:
  v25 = v6 + 56;
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v9;
  }

  return v19 == v26;
}

unint64_t sub_F6F134(void *a1, unint64_t a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v3 != v2 || *(a1 + 12))
  {
    v4 = 0x2E8BA2E8BA2E8BA3 * ((v2 - v3) >> 3);
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_15:
    if (*(a1 + 12))
    {
      return a1[6];
    }

    v12 = *(v3 + 32);
    v13 = *(v3 + 80);
    v14 = HIDWORD(v12) & 0xFFFFFFF;
    v15 = (v12 >> 33) & 0x10000000;
    v16 = HIDWORD(v12) & 0x40000000;
    if (v12 < 0 && v16 == 0)
    {
      v18 = 0x40000000;
    }

    else
    {
      v18 = 0;
    }

    v19 = v13 >> 25;
    return v12 | ((v19 & 0x80000000 | v14 | v15 | (v16 >> 1) | v18) << 32);
  }

  v4 = -1;
  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (v4 == a2)
  {
    if (*(a1 + 12))
    {
      return a1[6];
    }

    v12 = *(v2 - 16);
    v20 = *(v2 - 8);
    v14 = HIDWORD(v12) & 0xFFFFFFF;
    v15 = (v12 >> 33) & 0x10000000;
    v16 = HIDWORD(v12) & 0x40000000;
    if (v12 < 0 && v16 == 0)
    {
      v18 = 0x40000000;
    }

    else
    {
      v18 = 0;
    }

    v19 = v20 >> 26;
    return v12 | ((v19 & 0x80000000 | v14 | v15 | (v16 >> 1) | v18) << 32);
  }

  v6 = sub_F6F948(a1 + 3, a2);
  v7 = *(v6 + 32);
  v8 = *(v6 + 80);
  v9 = HIDWORD(v7) & 0x40000000;
  if (v7 < 0 && v9 == 0)
  {
    v11 = 0x40000000;
  }

  else
  {
    v11 = 0;
  }

  return v7 | (((v8 >> 25) & 0x80000000 | HIDWORD(v7) & 0xFFFFFFF | (v7 >> 33) & 0x10000000 | (v9 >> 1) | v11) << 32);
}

void sub_F6F284(void *a1, uint64_t a2, int a3)
{
  a1[12] |= sub_F705AC(a2, a1[3] == a1[4], 1);
  v6 = a1[4];
  v7 = a1[5];
  if (v6 >= v7)
  {
    v13 = a1[3];
    v14 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v13) >> 3) + 1;
    if (v14 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_1794();
    }

    v15 = 0x2E8BA2E8BA2E8BA3 * ((v7 - v13) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x1745D1745D1745DLL)
    {
      v16 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      sub_1808();
    }

    v17 = *(a2 + 48);
    v18 = 8 * ((v6 - v13) >> 3);
    *(v18 + 32) = *(a2 + 32);
    *(v18 + 48) = v17;
    *(v18 + 64) = *(a2 + 64);
    *(v18 + 80) = *(a2 + 80);
    v19 = *(a2 + 16);
    *v18 = *a2;
    *(v18 + 16) = v19;
    v12 = v18 + 88;
    v20 = (v18 - (v6 - v13));
    memcpy(v20, v13, v6 - v13);
    a1[3] = v20;
    a1[4] = v12;
    a1[5] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v8 = *(a2 + 16);
    *v6 = *a2;
    *(v6 + 16) = v8;
    v9 = *(a2 + 32);
    v10 = *(a2 + 48);
    v11 = *(a2 + 64);
    *(v6 + 80) = *(a2 + 80);
    *(v6 + 48) = v10;
    *(v6 + 64) = v11;
    *(v6 + 32) = v9;
    v12 = v6 + 88;
  }

  a1[4] = v12;
  if (a3)
  {
    v21 = 0x2E8BA2E8BA2E8BA3 * ((v12 - a1[3]) >> 3);
    v22 = v21 - 1;
    v25 = v21 - 1;
    if (v21 - 1 >= a1[64])
    {
      sub_4D9168((a1 + 63), v21, 0);
    }

    v23 = a1[63];
    if (((*(v23 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      sub_2512DC((a1 + 66), &v25);
      v23 = a1[63];
      *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    }

    v24 = 0x2E8BA2E8BA2E8BA3 * ((a1[4] - a1[3]) >> 3);
    v25 = v24;
    if (v24 >= a1[64])
    {
      sub_4D9168((a1 + 63), v24 + 1, 0);
      v23 = a1[63];
    }

    if (((*(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      sub_2512DC((a1 + 66), &v25);
      *(a1[63] + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    }
  }
}

void sub_F6F544(void *a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[5] - a1[3]) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }
}

unint64_t sub_F6F638(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return *(a1 + 48);
  }

  v2 = *(a1 + 24);
  v3 = *(v2 + 32);
  v4 = *(v2 + 80);
  v5 = HIDWORD(v3) & 0x40000000;
  if (v3 < 0 && v5 == 0)
  {
    v7 = 0x40000000;
  }

  else
  {
    v7 = 0;
  }

  return v3 | (((v4 >> 25) & 0x80000000 | HIDWORD(v3) & 0xFFFFFFF | (v3 >> 33) & 0x10000000 | (v5 >> 1) | v7) << 32);
}

unint64_t sub_F6F698(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return *(a1 + 48);
  }

  v2 = *(a1 + 32);
  v3 = *(v2 - 16);
  v4 = *(v2 - 8);
  v5 = HIDWORD(v3) & 0x40000000;
  if (v3 < 0 && v5 == 0)
  {
    v7 = 0x40000000;
  }

  else
  {
    v7 = 0;
  }

  return v3 | (((v4 >> 26) & 0x80000000 | HIDWORD(v3) & 0xFFFFFFF | (v3 >> 33) & 0x10000000 | (v5 >> 1) | v7) << 32);
}

uint64_t sub_F6F6F4(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return a1 + 56;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t sub_F6F70C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return a1 + 56;
  }

  else
  {
    return *(a1 + 32) - 48;
  }
}

void sub_F6F728(uint64_t a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = 0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 3);
  if (v6 != -1)
  {
    if ((v6 + 1) <= 0x666666666666666)
    {
      operator new();
    }

LABEL_22:
    sub_1794();
  }

  for (i = a2; v4 != v5; v4 += 88)
  {
    v7 = *v4;
    v8 = *(v4 + 16);
    v25 = *(v4 + 32);
    v24[0] = v7;
    v24[1] = v8;
    sub_F72A9C(&i, v24);
  }

  if (*(a1 + 48))
  {
    v9 = a1 + 56;
    v10 = a2[1];
    v11 = a2[2];
    if (v10 < v11)
    {
LABEL_8:
      v12 = *v9;
      v13 = *(v9 + 16);
      *(v10 + 32) = *(v9 + 32);
      *v10 = v12;
      *(v10 + 16) = v13;
      v14 = v10 + 40;
      goto LABEL_21;
    }
  }

  else
  {
    v9 = *(a1 + 32) - 48;
    v10 = a2[1];
    v11 = a2[2];
    if (v10 < v11)
    {
      goto LABEL_8;
    }
  }

  v15 = *a2;
  v16 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - *a2) >> 3);
  v17 = v16 + 1;
  if (v16 + 1 > 0x666666666666666)
  {
    goto LABEL_22;
  }

  v18 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v15) >> 3);
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x333333333333333)
  {
    v19 = 0x666666666666666;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    if (v19 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 8 * ((v10 - *a2) >> 3);
  v21 = *v9;
  v22 = *(v9 + 16);
  *(v20 + 32) = *(v9 + 32);
  *v20 = v21;
  *(v20 + 16) = v22;
  v14 = 40 * v16 + 40;
  v23 = (40 * v16 - (v10 - v15));
  memcpy(v23, v15, v10 - v15);
  *a2 = v23;
  a2[1] = v14;
  a2[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

LABEL_21:
  a2[1] = v14;
}

void sub_F6F928(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_F6F948(void *a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 88 * a2;
}

void sub_F6FA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

unint64_t sub_F6FB6C(void *a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 88 * a2;
}

void sub_F6FCA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_F6FD88(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2 && !*(a1 + 48))
  {
    return 0;
  }

  else
  {
    return 0x2E8BA2E8BA2E8BA3 * ((v2 - v1) >> 3) + 1;
  }
}

uint64_t sub_F6FDEC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  v3 = *(result + 32);
  if (v2 == v3 && !*(result + 48))
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0;
  }

  else
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0x2E8BA2E8BA2E8BA3 * ((v3 - v2) >> 3) + 1;
  }

  return result;
}

unint64_t sub_F6FE3C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 == v2 && !*(a1 + 48))
  {
    v4 = -1;
    if (a2)
    {
LABEL_4:
      if (v4 != a2)
      {
        return sub_F6F948((a1 + 24), a2);
      }

      v5 = v2 - 48;
      if (*(a1 + 48))
      {
        return a1 + 56;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v4 = 0x2E8BA2E8BA2E8BA3 * ((v2 - v3) >> 3);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  if (*(a1 + 48))
  {
    return a1 + 56;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t sub_F6FEB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3 && !*(a1 + 48))
  {
    if (a2 == -1)
    {
      return *(a1 + 408);
    }
  }

  else if (0x2E8BA2E8BA2E8BA3 * ((v3 - v2) >> 3) == a2)
  {
    return *(a1 + 408);
  }

  return 1000000000;
}

uint64_t sub_F6FF10(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 32);
    if (v2 == v3 && !*(a1 + 48))
    {
      if (a2 == -1)
      {
LABEL_5:
        v4 = *(a1 + 408);
        v7 = *(a1 + 24);
        v6 = *(a1 + 32);
        v5 = (a1 + 24);
        if (v7 != v6)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if (0x2E8BA2E8BA2E8BA3 * ((v3 - v2) >> 3) == a2)
    {
      goto LABEL_5;
    }

    v4 = 1000000000;
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

  else if (*(a1 + 48))
  {
    v4 = *(a1 + 408) - *(a1 + 320);
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = 1000000000 - *(a1 + 320);
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

LABEL_14:
  if (*(a1 + 48))
  {
LABEL_15:
    v8 = 0x2E8BA2E8BA2E8BA3 * (v6 - v7);
    if (a2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v8 = -1;
  if (a2)
  {
LABEL_16:
    if (v8 == a2)
    {
      if (*(a1 + 48))
      {
        v9 = (a1 + 56);
      }

      else
      {
        v9 = v6 - 6;
      }
    }

    else
    {
      v9 = sub_F6F948(v5, a2);
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*(a1 + 48))
  {
    v9 = (a1 + 56);
  }

  else
  {
    v9 = v7;
  }

LABEL_25:
  v10 = (*v9 - **v9);
  v11 = 0.0;
  if (*v10 >= 9u)
  {
    v12 = v10[4];
    if (v12)
    {
      LODWORD(v11) = *(*v9 + v12);
      v11 = *&v11;
    }
  }

  v13 = v4 / 1000000000.0 * v11;
  if (v13 >= 0.0)
  {
    if (v13 < 4.50359963e15)
    {
      v14 = (v13 + v13) + 1;
      return (v14 >> 1);
    }
  }

  else if (v13 > -4.50359963e15)
  {
    v14 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
    return (v14 >> 1);
  }

  return v13;
}

BOOL sub_F70108(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if (*(a1 + 320) > *(a1 + 408))
    {
      return 0;
    }

    v12 = *(a1 + 56);
    v13 = (v12 - *v12);
    v14 = *v13;
    if (v14 < 0x9B)
    {
      LODWORD(v15) = 0;
      if (v14 < 0x2F)
      {
        return (~*(a1 + 96) & v15) == 0;
      }
    }

    else
    {
      v15 = v13[77];
      if (v13[77])
      {
        v15 = (8 * *(v12 + v15)) & 0x40;
      }
    }

    v16 = v13[23];
    if (v16)
    {
      if (*(v12 + v16) == 21)
      {
        LODWORD(v15) = v15 | 0x80;
      }
    }

    return (~*(a1 + 96) & v15) == 0;
  }

  v38 = 1;
  v37 = &v38;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3 != v4 && v3 + 11 != v4)
  {
    do
    {
      sub_F72BF4(&v37, v3, (v3 + 11));
      v6 = v3 + 22;
      v3 += 11;
    }

    while (v6 != v4);
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
  }

  v7 = *(a1 + 48);
  if (v3 == v4)
  {
    if (!v7)
    {
      v11 = 0;
      v36 = 0;
      goto LABEL_35;
    }
  }

  else if (!v7)
  {
    v8 = *v3;
    v9 = (*v3 - **v3);
    v10 = *v9;
    if (v10 >= 0x9B)
    {
      goto LABEL_13;
    }

LABEL_25:
    v11 = 0;
    if (v10 < 0x2F)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v8 = *(a1 + 56);
  v9 = (v8 - *v8);
  v10 = *v9;
  if (v10 < 0x9B)
  {
    goto LABEL_25;
  }

LABEL_13:
  v11 = v9[77];
  if (v9[77])
  {
    v11 = (8 * *(v8 + v11)) & 0x40;
  }

LABEL_26:
  v17 = v9[23];
  if (v17 && *(v8 + v17) == 21)
  {
    v11 |= 0x80uLL;
  }

LABEL_29:
  v36 = v11;
  v25 = COERCE_DOUBLE(&v36);
  if (v3 != v4)
  {
    do
    {
      v18 = sub_F72050(&v25, v3);
      if (!v18)
      {
        break;
      }

      v3 += 11;
    }

    while (v3 != v4);
    v38 &= v18;
    if ((v36 & ~*(a1 + 96)) == 0)
    {
      goto LABEL_54;
    }

LABEL_36:
    if (!sub_7E7E4(3u))
    {
LABEL_53:
      v38 = 0;
      goto LABEL_54;
    }

    sub_19594F8(&v25);
    sub_4A5C(&v25, "PathLeg has inconsistent features.", 34);
    if ((v35 & 0x10) != 0)
    {
      v20 = v34;
      if (v34 < v31)
      {
        v34 = v31;
        v20 = v31;
      }

      v21 = v30;
      v19 = v20 - v30;
      if (v20 - v30 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if ((v35 & 8) == 0)
      {
        v19 = 0;
        v24 = 0;
LABEL_48:
        *(&__dst + v19) = 0;
        sub_7E854(&__dst, 3u);
        if (v24 < 0)
        {
          operator delete(__dst);
        }

        if (v33 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v27);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_53;
      }

      v21 = v28;
      v19 = v29 - v28;
      if ((v29 - v28) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_56:
        sub_3244();
      }
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    v24 = v19;
    if (v19)
    {
      memmove(&__dst, v21, v19);
    }

    goto LABEL_48;
  }

LABEL_35:
  v38 &= 1u;
  if ((v11 & ~*(a1 + 96)) != 0)
  {
    goto LABEL_36;
  }

LABEL_54:
  v22 = sub_F6A524((a1 + 176));
  return v22 & v38;
}

void sub_F70560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_F705AC(int **a1, int a2, int a3)
{
  if (!a2)
  {
    result = 0;
    goto LABEL_12;
  }

  v4 = *a1;
  v5 = (*a1 - **a1);
  v6 = *v5;
  if (v6 < 0x9B)
  {
    result = 0;
    if (v6 < 0x2F)
    {
      goto LABEL_12;
    }

    v8 = v5[23];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else if (v5[77])
  {
    result = (8 * *&v4[v5[77]]) & 0x40;
    v8 = v5[23];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = 0;
    v8 = v5[23];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (v4[v8] == 21)
  {
    result |= 0x80uLL;
  }

LABEL_12:
  if (!a3)
  {
    goto LABEL_21;
  }

  v9 = a1[5];
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v11 >= 0x9B)
  {
    v12 = v10[77];
    if (v10[77])
    {
      v12 = (8 * *(v9 + v12)) & 0x40;
    }

    goto LABEL_17;
  }

  v12 = 0;
  if (v11 >= 0x2F)
  {
LABEL_17:
    v13 = v10[23];
    if (v13 && *(v9 + v13) == 21)
    {
      v12 |= 0x80uLL;
    }
  }

  result |= v12;
LABEL_21:
  v14 = *(a1 + 9);
  v15 = *a1;
  v16 = (*a1 - **a1);
  v17 = *v16;
  if ((v14 & 0x20000000) != 0)
  {
    if (v17 >= 0x51 && v16[40] && (*&v15[v16[40]] & 0x40) != 0)
    {
      return result | 0x100;
    }
  }

  else if (v17 >= 0x51 && v16[40] && (*&v15[v16[40]] & 4) != 0)
  {
    return result | 0x100;
  }

  v18 = *(a1 + 19);
  v19 = a1[5];
  v20 = (v19 - *v19);
  v21 = *v20;
  if ((v18 & 0x20000000) != 0)
  {
    if (v21 >= 0x51 && v20[40] && (*(v19 + v20[40]) & 1) != 0)
    {
      return result | 0x100;
    }
  }

  else if (v21 >= 0x51 && v20[40] && (*(v19 + v20[40]) & 0x10) != 0)
  {
    return result | 0x100;
  }

  if ((v14 & 0x20000000) != 0)
  {
    if (v17 >= 0x51)
    {
      v23 = v16[40];
      if (v23)
      {
        if ((*&v15[v23] & 0x80) != 0)
        {
          return result | 0x100;
        }
      }
    }
  }

  else if (v17 >= 0x51)
  {
    v22 = v16[40];
    if (v22)
    {
      if ((*&v15[v22] & 8) != 0)
      {
        return result | 0x100;
      }
    }
  }

  if ((v18 & 0x20000000) == 0)
  {
    if (v21 < 0x51 || !v20[40] || (*(v19 + v20[40]) & 0x20) == 0)
    {
      return result;
    }

    return result | 0x100;
  }

  if (v21 >= 0x51 && v20[40] && (*(v19 + v20[40]) & 2) != 0)
  {
    return result | 0x100;
  }

  return result;
}

void sub_F707C4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[3];
  v7 = 0x2E8BA2E8BA2E8BA3 * ((a3 - a2) >> 3) + 0x2E8BA2E8BA2E8BA3 * ((a1[4] - v6) >> 3);
  if (0x2E8BA2E8BA2E8BA3 * ((a1[5] - v6) >> 3) < v7)
  {
    if (v7 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }

  if (a3 != a2)
  {
    do
    {
      sub_F6F284(a1, v4, 0);
      v4 += 88;
    }

    while (v4 != a3);
  }
}

void sub_F708E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = *(a2 + 48) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(a1 + 48) = 0;
  }

  sub_F707C4(a1, *(a2 + 24), *(a2 + 32));
  v5 = *(a2 + 440);
  v6 = *(a2 + 456);
  v7 = *(a2 + 472);
  *(a1 + 487) = *(a2 + 487);
  *(a1 + 472) = v7;
  v8 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v8;
  *(a1 + 440) = v5;
  *(a1 + 456) = v6;
  if (*(a1 + 484) == 3)
  {
    *(a1 + 484) = 4;
  }
}

char *sub_F70968(char **a1, char *__src, __int128 *a3)
{
  v3 = __src;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v12 = *a1;
    v13 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 3) + 1;
    if (v13 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_1794();
    }

    v14 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v12) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x1745D1745D1745DLL)
    {
      v15 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      sub_1808();
    }

    v20 = 8 * ((__src - v12) >> 3);
    if (!(0x2E8BA2E8BA2E8BA3 * ((__src - v12) >> 3)))
    {
      if (__src - v12 < 1)
      {
        operator new();
      }

      v20 = 8 * ((__src - v12) >> 3) - 88 * ((0x2E8BA2E8BA2E8BA3 * ((8 * ((__src - v12) >> 3)) >> 3) + 1 + ((0x2E8BA2E8BA2E8BA3 * ((8 * ((__src - v12) >> 3)) >> 3) + 1) >> 63)) >> 1);
    }

    v21 = a3[1];
    *v20 = *a3;
    *(v20 + 16) = v21;
    v22 = a3[2];
    v23 = a3[3];
    v24 = a3[4];
    *(v20 + 80) = *(a3 + 10);
    *(v20 + 48) = v23;
    *(v20 + 64) = v24;
    *(v20 + 32) = v22;
    memcpy((v20 + 88), __src, a1[1] - __src);
    v25 = *a1;
    v26 = (v20 + 88 + a1[1] - v3);
    a1[1] = v3;
    v27 = v3 - v25;
    v28 = (v20 - (v3 - v25));
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    a1[1] = v26;
    a1[2] = 0;
    if (v29)
    {
      operator delete(v29);
    }

    return v20;
  }

  else
  {
    if (__src != v5)
    {
      v33 = a3[2];
      v34 = a3[3];
      v35 = a3[4];
      v36 = *(a3 + 10);
      v7 = __src + 88;
      v31 = *a3;
      v32 = a3[1];
      if (v5 < 0x58)
      {
        a1[1] = v5;
        if (v5 == v7)
        {
LABEL_21:
          *(v3 + 2) = v33;
          *(v3 + 3) = v34;
          *(v3 + 4) = v35;
          *(v3 + 10) = v36;
          *v3 = v31;
          *(v3 + 1) = v32;
          return v3;
        }
      }

      else
      {
        v8 = *(v5 - 72);
        *v5 = *(v5 - 88);
        *(v5 + 1) = v8;
        v9 = *(v5 - 56);
        v10 = *(v5 - 40);
        v11 = *(v5 - 24);
        *(v5 + 10) = *(v5 - 1);
        *(v5 + 3) = v10;
        *(v5 + 4) = v11;
        *(v5 + 2) = v9;
        a1[1] = v5 + 88;
        if (v5 == v7)
        {
          goto LABEL_21;
        }
      }

      memmove(__src + 88, __src, v5 - v7);
      goto LABEL_21;
    }

    v16 = a3[1];
    *v5 = *a3;
    *(v5 + 1) = v16;
    v17 = a3[2];
    v18 = a3[3];
    v19 = a3[4];
    *(v5 + 10) = *(a3 + 10);
    *(v5 + 3) = v18;
    *(v5 + 4) = v19;
    *(v5 + 2) = v17;
    a1[1] = v5 + 88;
  }

  return v3;
}

void sub_F70C48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_F70C60(char *result, uint64_t a2)
{
  v3 = result;
  if (*(result + 12))
  {
    v4 = *(a2 + 48) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(result + 12) = 0;
  }

  v6 = *(a2 + 24);
  for (i = *(a2 + 32); i != v6; result = sub_F70968(v3 + 3, *(v3 + 3), i))
  {
    i = (i - 88);
    *(v3 + 12) |= sub_F705AC(i, 1, *(v3 + 3) == *(v3 + 4));
  }

  v7 = *(a2 + 352);
  v8 = *(a2 + 368);
  v9 = *(a2 + 384);
  *(v3 + 399) = *(a2 + 399);
  *(v3 + 24) = v9;
  v10 = *(a2 + 336);
  *(v3 + 20) = *(a2 + 320);
  *(v3 + 21) = v10;
  *(v3 + 22) = v7;
  *(v3 + 23) = v8;
  if (*(v3 + 99) == 3)
  {
    *(v3 + 99) = 5;
  }

  return result;
}

uint64_t sub_F70D2C(uint64_t result)
{
  *(result + 96) = 0;
  v1 = *(result + 32);
  v2 = *(result + 24);
  if (v2 != v1)
  {
    v3 = result;
    v4 = *v2;
    v5 = (*v2 - **v2);
    v6 = *v5;
    if (v6 < 0x9B)
    {
      v7 = 0;
      if (v6 < 0x2F)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = v5[77];
      if (v5[77])
      {
        v7 = (8 * *(v4 + v7)) & 0x40;
      }
    }

    v8 = v5[23];
    if (v8 && *(v4 + v8) == 21)
    {
      *(result + 96) = v7 | 0x80;
      goto LABEL_10;
    }

LABEL_9:
    *(result + 96) = v7;
    do
    {
LABEL_10:
      result = sub_F705AC(v2, 0, 1);
      *(v3 + 96) |= result;
      v2 += 11;
    }

    while (v2 != v1);
  }

  return result;
}

int **sub_F70DF4(void *a1, int **a2, int **a3, int a4)
{
  v6 = a1[3];
  if (v6 != a2)
  {
    if (a4)
    {
      v7 = *(a3 - 3);
      v8 = *(a3 - 2);
      *(a2 - 2) = *(a3 - 2);
      *(a2 - 3) = v7;
      *(a2 - 2) = v8;
      v6 = a1[3];
    }

LABEL_5:
    if (a3 == a2)
    {
      v9 = a1[4];
      a1[12] = 0;
      if (v6 == v9)
      {
        return a2;
      }
    }

    else
    {
      v11 = a1[4];
      v12 = v11 - a3;
      if (v11 != a3)
      {
        memmove(a2, a3, v11 - a3);
        v6 = a1[3];
      }

      v9 = (a2 + v12);
      a1[4] = a2 + v12;
      a1[12] = 0;
      if (v6 == (a2 + v12))
      {
        return a2;
      }
    }

    v13 = *v6;
    v14 = (*v6 - **v6);
    v15 = *v14;
    if (v15 < 0x9B)
    {
      v16 = 0;
      if (v15 < 0x2F)
      {
LABEL_18:
        a1[12] = v16;
        do
        {
          a1[12] |= sub_F705AC(v6, 0, 1);
          v6 += 11;
        }

        while (v6 != v9);
        return a2;
      }
    }

    else
    {
      v16 = v14[77];
      if (v14[77])
      {
        v16 = (8 * *(v13 + v16)) & 0x40;
      }
    }

    v17 = v14[23];
    if (v17 && *(v13 + v17) == 21)
    {
      v16 |= 0x80uLL;
    }

    goto LABEL_18;
  }

  if (a1[4] != a3)
  {
    goto LABEL_5;
  }

  return a1[3];
}

uint64_t sub_F70F54(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = *(a1 + 56);
    v2 = (v1 - *v1);
    v3 = 0.0;
    if (*v2 >= 9u)
    {
      v4 = v2[4];
      if (v4)
      {
        LODWORD(v3) = *(v1 + v4);
        v3 = *&v3;
      }
    }

    v5 = v3 * ((*(a1 + 408) - *(a1 + 320)) / 1000000000.0);
    if (v5 >= 0.0)
    {
      if (v5 < 4.50359963e15)
      {
        v6 = (v5 + v5) + 1;
        return (v6 >> 1);
      }
    }

    else if (v5 > -4.50359963e15)
    {
      v6 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
      return (v6 >> 1);
    }

    return v5;
  }

  v7 = *(a1 + 24);
  v8 = (*v7 - **v7);
  v9 = 0.0;
  if (*v8 >= 9u)
  {
    v10 = v8[4];
    if (v10)
    {
      LODWORD(v9) = *(*v7 + v10);
      v9 = *&v9;
    }
  }

  v11 = v9 * ((1000000000 - *(a1 + 320)) / 1000000000.0);
  if (v11 >= 0.0)
  {
    HIDWORD(v12) = 1127219200;
    if (v11 >= 4.50359963e15)
    {
      goto LABEL_21;
    }

    v13 = (v11 + v11) + 1;
  }

  else
  {
    HIDWORD(v12) = -1020264448;
    if (v11 <= -4.50359963e15)
    {
      goto LABEL_21;
    }

    v13 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
  }

  v11 = (v13 >> 1);
LABEL_21:
  v15 = v11;
  v16 = *(a1 + 32);
  v17 = 0x2E8BA2E8BA2E8BA3 * ((v16 - v7) >> 3);
  if (v17 >= 2)
  {
    v18 = v7 + 11;
    v19 = v17 - 1;
    do
    {
      while (1)
      {
        v20 = (*v18 - **v18);
        if (*v20 >= 9u)
        {
          v21 = v20[4];
          if (v21)
          {
            break;
          }
        }

        v18 += 11;
        if (!--v19)
        {
          goto LABEL_27;
        }
      }

      v15 += *(*v18 + v21);
      v18 += 11;
      --v19;
    }

    while (v19);
  }

LABEL_27:
  v22 = *(v16 - 48);
  v23 = (v22 - *v22);
  v24 = 0.0;
  if (*v23 >= 9u)
  {
    v25 = v23[4];
    if (v25)
    {
      LODWORD(v24) = *(v22 + v25);
      v24 = *&v24;
    }
  }

  LODWORD(v12) = *(a1 + 408);
  v26 = v24 * (v12 / 1000000000.0);
  if (v26 >= 0.0)
  {
    if (v26 < 4.50359963e15)
    {
      v27 = (v26 + v26) + 1;
      goto LABEL_35;
    }
  }

  else if (v26 > -4.50359963e15)
  {
    v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
LABEL_35:
    v26 = (v27 >> 1);
  }

  return v15 + v26;
}

BOOL sub_F711D0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) != 0) != (*(a2 + 48) != 0))
  {
    return 0;
  }

  result = sub_F71798(a1 + 320, a2 + 320);
  if (result)
  {
    result = sub_F71798(a1 + 408, a2 + 408);
    if (result)
    {
      if (*(a1 + 48) && *(a2 + 48))
      {
        v5 = *(a2 + 88);
        if (*(a1 + 88) == v5)
        {
          return *(a1 + 92) == HIDWORD(v5);
        }
      }

      else
      {
        v7 = *(a1 + 24);
        v6 = *(a1 + 32);
        v8 = *(a2 + 24);
        if (v6 - v7 == *(a2 + 32) - v8)
        {
          if (v7 == v6)
          {
            return 1;
          }

          v9 = (v8 + 80);
          result = 1;
          while (*(v7 + 4) == *(v9 - 6) && *(v7 + 9) == *(v9 - 1) && ((*v9 ^ *(v7 + 10)) & 0x1FFFFFFFFFFFFFFFLL) == 0)
          {
            v7 += 88;
            v9 += 11;
            if (v7 == v6)
            {
              return result;
            }
          }
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_F7134C(size_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      if ((0x2E8BA2E8BA2E8BA3 * (v4 >> 3)) < 0x2E8BA2E8BA2E8BBLL)
      {
        operator new();
      }

      sub_1808();
    }

    if (v4 < v3)
    {
      v6 = 8 * (v4 >> 3);
      v7 = a1[1] - v2;
      v8 = v6 - v7;
      memcpy((v6 - v7), v2, v7);
      *a1 = v8;
      a1[1] = v6;
      a1[2] = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

BOOL sub_F7146C(void **a1, int **a2)
{
  **a1 |= sub_F6AF54(a2, 1, 1);
  v3 = sub_3116D0(a2);
  v4 = sub_311544(a2 + 5);
  if (v3 == v4 || !sub_7E7E4(3u))
  {
    return v3 == v4;
  }

  sub_19594F8(&v16);
  v5 = sub_4A5C(&v16, "PathLeg inconsistency found on junction level, ", 47);
  v6 = sub_3116D0(a2);
  v7 = sub_2FF718(v5, __ROR8__(v6, 32));
  v8 = sub_4A5C(v7, " != ", 4);
  v9 = sub_311544(a2 + 5);
  sub_2FF718(v8, __ROR8__(v9, 32));
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v10 >= 0x17)
    {
      operator new();
    }

    v15 = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_14;
  }

  if ((v26 & 8) != 0)
  {
    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v15 = 0;
LABEL_14:
  *(&__p + v10) = 0;
  sub_7E854(&__p, 3u);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  std::ios::~ios();
  return v3 == v4;
}

void sub_F7174C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

BOOL sub_F71798(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 != v3)
  {
    v4 = v2 - v3;
    if (v4 <= 0.0)
    {
      v4 = -v4;
    }

    if (v4 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56) || *(a1 + 60) != *(a2 + 60) || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v5 = *(a1 + 73);
  v6 = *(a2 + 73);
  if (v5 == v6 && *(a1 + 73))
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  if (*(a1 + 74) == *(a2 + 74) && *(a1 + 76) == *(a2 + 76) && *(a1 + 80) == *(a2 + 80) && *(a1 + 81) == *(a2 + 81))
  {
    return *(a1 + 82) == *(a2 + 82);
  }

  return 0;
}