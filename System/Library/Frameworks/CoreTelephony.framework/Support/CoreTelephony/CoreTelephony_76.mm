void sub_1004CD0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1004CD1A8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50E70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1004CD1E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004CD234(std::string **a1, xpc_object_t *a2)
{
  v3 = *a1;
  v21 = 0uLL;
  v22 = 0;
  sub_10010A62C(&v21, a2);
  p_size = &v3->__r_.__value_.__l.__size_;
  size = v3->__r_.__value_.__l.__size_;
  v18 = v3->__r_.__value_.__r.__words[0];
  v19 = size;
  v20 = v3->__r_.__value_.__r.__words[2];
  if (v20)
  {
    *(size + 16) = &v19;
    v3->__r_.__value_.__r.__words[0] = p_size;
    *p_size = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v18 = &v19;
  }

  v16 = v21;
  v17 = v22;
  v22 = 0;
  v21 = 0uLL;
  sub_100D21B04(v3, &v16);
  v23 = &v16;
  sub_1000B2AF8(&v23);
  if (v20 == v3->__r_.__value_.__r.__words[2])
  {
    v6 = v18;
    if (v18 == &v19)
    {
      goto LABEL_24;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    while (*(v6 + 8) == *(v7 + 8) && BasicSimInfo::operator==())
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v6 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v6 = v9[2];
          v10 = *v6 == v9;
          v9 = v6;
        }

        while (!v10);
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v10 = *v12 == v7;
          v7 = v12;
        }

        while (!v10);
      }

      v7 = v12;
      if (v6 == &v19)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = a1[2];
  v14 = a1[3];
  v15 = (a1[1]->__r_.__value_.__r.__words + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  (v13)(v15);
LABEL_24:
  sub_100359978(&v18, v19);
  v18 = &v21;
  sub_1000B2AF8(&v18);
}

void sub_1004CD3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, char *a13, uint64_t a14, char a15)
{
  sub_100359978(&a12, a13);
  a12 = &a15;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1004CD4AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E50EF0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1004CD4E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004CD52C(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_10006DCAC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v10, object, 0);
    xpc_release(object[0]);
    *&v7 = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      *&v7 = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, &v7, count);
    xpc_release(v7);
    for (i = v11; i != object[1] || v10 != object[0]; i = ++v11)
    {
      *(&v7 + 1) = i;
      v8 = 0;
      *&v7 = &v10;
      sub_10003EAD4(&v7, &v8);
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        LODWORD(v7) = 0;
        *(&v7 + 4) = -1;
        v6 = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1004CD7BC(&v7, &v6);
        xpc_release(v6);
        sub_1004CD970(a1, &v7, &v7);
      }

      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  xpc_release(v3);
}

void sub_1004CD72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_1004CD7BC(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    rest::read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_1004CD91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004CD970(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_1004CDB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1004CDBD0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50F70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1004CDC08(void *a1)
{
  *__p = 0u;
  v7 = 0u;
  v5 = 0u;
  read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, &v5);
  if (__p[1])
  {
    *&v7 = __p[1];
    operator delete(__p[1]);
  }
}

void sub_1004CDCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004CDCBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004CDDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1004CDE94(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50FF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1004CDECC(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1004CDF14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *sub_1004CDF60(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 5)
  {
    return "kCellular";
  }

  else
  {
    return off_101E51078[v1];
  }
}

const char *sub_1004CDF88(_DWORD *a1)
{
  v1 = "kUnknown";
  if (*a1 == 1)
  {
    v1 = "kDisabled";
  }

  if (*a1 == 2)
  {
    return "kEnabled";
  }

  else
  {
    return v1;
  }
}

const char *sub_1004CDFB8(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "kUnknown";
  }

  else
  {
    return off_101E51060[a1 - 1];
  }
}

const char *sub_1004CDFE0(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 3)
  {
    return "kInvalid";
  }

  else
  {
    return off_101E510A8[v1];
  }
}

unint64_t sub_1004CE040(void *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (a1[1] != 9 || (**a1 == 0x454E494645444E55 ? (v2 = *(*a1 + 8) == 68) : (v2 = 0), !v2))
    {
      if (a1[1] != 13 || (**a1 == 0x435F44495F4D4953 ? (v3 = *(*a1 + 5) == 0x45474E4148435F44) : (v3 = 0), !v3))
      {
        if (a1[1] != 13 || (**a1 == 0x435F454349564544 ? (v4 = *(*a1 + 5) == 0x45474E4148435F45) : (v4 = 0), !v4))
        {
          v8 = a1[1];
          if (v8 != 13)
          {
            if (v8 != 20)
            {
LABEL_61:
              v11 = 0;
              v12 = 0;
              return v12 | v11;
            }

            a1 = *a1;
            goto LABEL_40;
          }

          if (**a1 != 0x435F544E45494C43 || *(*a1 + 5) != 0x45474E4148435F54)
          {
            goto LABEL_61;
          }

LABEL_63:
          v11 = &_mh_execute_header;
          v12 = 3;
          return v12 | v11;
        }

LABEL_56:
        v11 = &_mh_execute_header;
        v12 = 2;
        return v12 | v11;
      }

LABEL_55:
      v11 = &_mh_execute_header;
      v12 = 1;
      return v12 | v11;
    }

LABEL_54:
    v12 = 0;
    v11 = &_mh_execute_header;
    return v12 | v11;
  }

  v1 = *(a1 + 23);
  if (v1 == 9)
  {
    if (*a1 != 0x454E494645444E55 || *(a1 + 8) != 68)
    {
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  if (v1 == 13)
  {
    if (*a1 != 0x435F44495F4D4953 || *(a1 + 5) != 0x45474E4148435F44)
    {
      if (*a1 != 0x435F454349564544 || *(a1 + 5) != 0x45474E4148435F45)
      {
        if (*a1 != 0x435F544E45494C43 || *(a1 + 5) != 0x45474E4148435F54)
        {
          goto LABEL_61;
        }

        goto LABEL_63;
      }

      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v1 != 20)
  {
    goto LABEL_61;
  }

LABEL_40:
  if (*a1 != 0x4954505952434E45 || a1[1] != 0x4C494156415F4E4FLL || *(a1 + 4) != 1162625601)
  {
    goto LABEL_61;
  }

  v11 = &_mh_execute_header;
  v12 = 4;
  return v12 | v11;
}

const void **sub_1004CE2CC(const void **a1, char ***a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v4)
  {
    if (v3 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    while (1)
    {
      v6 = memchr(v5, 44, v4);
      v7 = v6 ? v6 - v5 : -1;
      if (v7)
      {
        break;
      }

LABEL_50:
      v5 = (v5 + v7 + 1);
      v4 -= v7 + 1;
      if (!v4)
      {
        return a1;
      }
    }

    if (v4 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    v9 = v5 - 1;
    v10 = v8;
    while (1)
    {
      v11 = v9[1];
      if (!(v11 < 0 ? __maskrune(v11, 0x4000uLL) : _DefaultRuneLocale.__runetype[v11] & 0x4000))
      {
        break;
      }

      ++v9;
      if (!--v10)
      {
        goto LABEL_49;
      }
    }

    v13 = v5 + v8 - 1;
    while (1)
    {
      v15 = *v13--;
      v14 = v15;
      if (!(v15 < 0 ? __maskrune(v14, 0x4000uLL) : _DefaultRuneLocale.__runetype[v14] & 0x4000))
      {
        break;
      }

      if (!--v10)
      {
        goto LABEL_49;
      }
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v31 = v10;
    memmove(&__dst, v9 + 1, v10);
    *(&__dst + v10) = 0;
    v17 = sub_1004CE040(&__dst);
    if (v31 < 0)
    {
      operator delete(__dst);
      if ((v17 & 0x100000000) == 0)
      {
        goto LABEL_49;
      }
    }

    else if ((v17 & 0x100000000) == 0)
    {
      goto LABEL_49;
    }

    v19 = a1[1];
    v18 = a1[2];
    if (v19 >= v18)
    {
      v21 = *a1;
      v22 = v19 - *a1;
      v23 = (v22 >> 2) + 1;
      if (v23 >> 62)
      {
        sub_1000CE3D4();
      }

      v24 = v18 - v21;
      if (v24 >> 1 > v23)
      {
        v23 = v24 >> 1;
      }

      v25 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
      v26 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v25)
      {
        v26 = v23;
      }

      if (v26)
      {
        sub_100016740(a1, v26);
      }

      v27 = (4 * (v22 >> 2));
      *v27 = v17;
      v20 = v27 + 1;
      memcpy(0, v21, v22);
      v28 = *a1;
      *a1 = 0;
      a1[1] = v20;
      a1[2] = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v19 = v17;
      v20 = v19 + 4;
    }

    a1[1] = v20;
LABEL_49:
    if (v7 == -1)
    {
      return a1;
    }

    goto LABEL_50;
  }

  return a1;
}

void sub_1004CE54C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004CE578(int **a1)
{
  v1 = a1[1];
  v2 = *a1;
  if (*a1 == v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = *v2++;
      if ((v4 - 1) < 3)
      {
        v3 = 1;
      }
    }

    while (v2 != v1);
  }

  return v3 & 1;
}

uint64_t sub_1004CE5B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a2[2] != a1[2] || a2[3] != a1[3] || a2[4] != a1[4] || a2[5] != a1[5] || a2[6] != a1[6])
  {
    return 0;
  }

  v2 = a1[1];
  if (a2[1] == 1)
  {
    if (v2)
    {
      return *a2 == *a1;
    }

    return 0;
  }

  return v2 ^ 1u;
}

uint64_t sub_1004CE640(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[23];
  if (v2 >= 0)
  {
    v3 = a1[23];
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = a2[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v8 = v7[47];
  if (v8 >= 0)
  {
    v9 = v7[47];
  }

  else
  {
    v9 = *(v7 + 4);
  }

  v10 = v6[47];
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v6 + 4);
  }

  if (v9 != v10)
  {
    return 0;
  }

  v12 = v8 >= 0 ? v7 + 24 : *(v7 + 3);
  v13 = v11 >= 0 ? v6 + 24 : *(v6 + 3);
  if (memcmp(v12, v13, v9))
  {
    return 0;
  }

  v14 = v7[71];
  if (v14 >= 0)
  {
    v15 = v7[71];
  }

  else
  {
    v15 = *(v7 + 7);
  }

  v16 = v6[71];
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v6 + 7);
  }

  if (v15 != v16)
  {
    return 0;
  }

  v18 = v14 >= 0 ? v7 + 48 : *(v7 + 6);
  v19 = v17 >= 0 ? v6 + 48 : *(v6 + 6);
  if (memcmp(v18, v19, v15))
  {
    return 0;
  }

  result = sub_1004CE5B8(v7 + 212, v6 + 212);
  if (result)
  {
    if (v6[194] != v7[194] || v6[195] != v7[195] || v7[192] != v6[192] || v7[193] != v6[193])
    {
      return 0;
    }

    result = sub_100071DF8(v7 + 9, v6 + 9);
    if (!result)
    {
      return result;
    }

    if (*(v7 + 51) != *(v6 + 51) || *(v7 + 52) != *(v6 + 52))
    {
      return 0;
    }

    result = sub_100071DF8(v7 + 15, v6 + 15);
    if (result)
    {
      result = sub_100071DF8(v7 + 18, v6 + 18);
      if (result)
      {
        if (*(v7 + 55) != *(v6 + 55))
        {
          return 0;
        }

        result = sub_100071DF8(v7 + 28, v6 + 28);
        if (result)
        {
          result = sub_100071DF8(v7 + 21, v6 + 21);
          if (result)
          {
            if (v7[196] == v6[196] && v7[197] == v6[197] && v7[198] == v6[198] && v7[199] == v6[199])
            {
              result = sub_100071DF8(v7 + 12, v6 + 12);
              if (result)
              {
                return *(v7 + 50) == *(v6 + 50);
              }

              return result;
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004CE8A8(uint64_t a1)
{
  v1 = 4;
  if (*(a1 + 1))
  {
    v1 = 0;
  }

  return *(a1 + v1);
}

uint64_t sub_1004CE8C0(_BYTE *a1)
{
  v1 = 4;
  if (a1[1])
  {
    v1 = 0;
  }

  if (a1[v1] != 1 || (a1[5] & 1) != 0 || (a1[6] & 1) != 0)
  {
    v2 = 0;
  }

  else if (a1[2])
  {
    v2 = 1;
  }

  else
  {
    v2 = a1[3];
  }

  return v2 & 1;
}

uint64_t sub_1004CE910(_BYTE *a1)
{
  if (a1[5] & 1) != 0 || (a1[6])
  {
    v1 = 0;
  }

  else if (a1[2])
  {
    v1 = 1;
  }

  else
  {
    v1 = a1[3];
  }

  return v1 & 1;
}

uint64_t sub_1004CE944(uint64_t a1, os_log_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) < 0)
    {
      sub_100005F2C(__dst, *a1, *(a1 + 8));
    }

    else
    {
      *__dst = *a1;
      v245 = *(a1 + 16);
    }

    v7 = HIBYTE(v245);
    if (v245 < 0)
    {
      v7 = __dst[1];
    }

    v8 = "(empty)";
    if (v7)
    {
      v9 = "OK";
    }

    else
    {
      v9 = "(empty)";
    }

    if (*(a1 + 47) < 0)
    {
      sub_100005F2C(v242, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      *v242 = *(a1 + 24);
      v243 = *(a1 + 40);
    }

    v10 = HIBYTE(v243);
    if (v243 < 0)
    {
      v10 = v242[1];
    }

    if (v10)
    {
      v11 = "OK";
    }

    else
    {
      v11 = "(empty)";
    }

    if (*(a1 + 71) < 0)
    {
      sub_100005F2C(v240, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      *v240 = *(a1 + 48);
      v241 = *(a1 + 64);
    }

    v12 = HIBYTE(v241);
    if (v241 < 0)
    {
      v12 = v240[1];
    }

    if (v12)
    {
      v13 = "OK";
    }

    else
    {
      v13 = "(empty)";
    }

    v219 = a3;
    if (*(a1 + 95) < 0)
    {
      sub_100005F2C(v238, *(a1 + 72), *(a1 + 80));
    }

    else
    {
      *v238 = *(a1 + 72);
      v239 = *(a1 + 88);
    }

    v14 = HIBYTE(v239);
    if (v239 < 0)
    {
      v14 = v238[1];
    }

    if (v14)
    {
      v15 = "OK";
    }

    else
    {
      v15 = "(empty)";
    }

    v16 = *(a1 + 192);
    if (*(a1 + 143) < 0)
    {
      sub_100005F2C(v236, *(a1 + 120), *(a1 + 128));
    }

    else
    {
      *v236 = *(a1 + 120);
      v237 = *(a1 + 136);
    }

    v217 = v15;
    v17 = HIBYTE(v237);
    if (v237 < 0)
    {
      v17 = v236[1];
    }

    if (v17)
    {
      v8 = "OK";
    }

    v218 = v4;
    v18 = v13;
    if (*(a1 + 167) < 0)
    {
      sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
    }

    else
    {
      *__p = *(a1 + 144);
      v235 = *(a1 + 160);
    }

    v19 = HIBYTE(v235);
    v20 = __p[1];
    v21 = *(a1 + 193);
    v22 = asString();
    *buf = 136448258;
    if (v19 >= 0)
    {
      v23 = v19;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23 == 0;
    *&buf[4] = v9;
    v25 = "(empty)";
    if (!v24)
    {
      v25 = "OK";
    }

    *&buf[12] = 2082;
    *&buf[14] = v11;
    *&buf[22] = 2082;
    *&buf[24] = v18;
    LOWORD(v250[0]) = 2082;
    *(v250 + 2) = v217;
    WORD5(v250[0]) = 1024;
    HIDWORD(v250[0]) = v16;
    LOWORD(v250[1]) = 2082;
    *(&v250[1] + 2) = v8;
    WORD5(v250[1]) = 2082;
    *(&v250[1] + 12) = v25;
    WORD2(v250[2]) = 1024;
    *(&v250[2] + 6) = v21;
    WORD5(v250[2]) = 2080;
    *(&v250[2] + 12) = v22;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I --> IMSI: %{public}s, IMEI: %{public}s, URL: %{public}s, PH#: %{public}s, sms online: %{BOOL}d, GID1: %{public}s, GID2: %{public}s, carrier based: %{BOOL}d, buddy: %s", buf, 0x54u);
    if (SHIBYTE(v235) < 0)
    {
      operator delete(__p[0]);
    }

    v4 = v218;
    a3 = v219;
    if (SHIBYTE(v237) < 0)
    {
      operator delete(v236[0]);
    }

    if (SHIBYTE(v239) < 0)
    {
      operator delete(v238[0]);
    }

    if (SHIBYTE(v241) < 0)
    {
      operator delete(v240[0]);
    }

    if (SHIBYTE(v243) < 0)
    {
      operator delete(v242[0]);
    }

    if (SHIBYTE(v245) < 0)
    {
      operator delete(__dst[0]);
    }

    v6 = *v218;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 220);
    if (v26 > 3)
    {
      v27 = "kInvalid";
    }

    else
    {
      v27 = off_101E510A8[v26];
    }

    if (*(a1 + 247) < 0)
    {
      sub_100005F2C(v232, *(a1 + 224), *(a1 + 232));
    }

    else
    {
      *v232 = *(a1 + 224);
      v233 = *(a1 + 240);
    }

    v28 = HIBYTE(v233);
    if (v233 < 0)
    {
      v28 = v232[1];
    }

    if (v28)
    {
      v29 = "OK";
    }

    else
    {
      v29 = "(empty)";
    }

    v30 = *(a1 + 204);
    if (v30 > 5)
    {
      v31 = "kCellular";
    }

    else
    {
      v31 = off_101E51078[v30];
    }

    v32 = *(a1 + 208);
    if (v32 > 5)
    {
      v33 = "kCellular";
    }

    else
    {
      v33 = off_101E51078[v32];
    }

    v34 = *(a1 + 194);
    v35 = *(a1 + 195);
    *buf = 136447490;
    *&buf[4] = v27;
    *&buf[12] = 2082;
    *&buf[14] = v29;
    *&buf[22] = 2082;
    *&buf[24] = v31;
    LOWORD(v250[0]) = 2082;
    *(v250 + 2) = v33;
    WORD5(v250[0]) = 1024;
    HIDWORD(v250[0]) = v34;
    LOWORD(v250[1]) = 1024;
    *(&v250[1] + 2) = v35;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I --> style: %{public}s, token: %{public}s, provisioning iface: %{public}s, ims iface: %{public}s, did unlock: %{BOOL}d, waiting for bb prov: %{BOOL}d", buf, 0x36u);
    if (SHIBYTE(v233) < 0)
    {
      operator delete(v232[0]);
    }

    v6 = *v4;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1004D0668((a1 + 212), buf);
    if ((buf[23] & 0x80u) == 0)
    {
      v36 = buf;
    }

    else
    {
      v36 = *buf;
    }

    LODWORD(v247) = 136446210;
    *(&v247 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I --> %{public}s", &v247, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v6 = *v4;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v38 = printers::asString((a1 + 196), v37);
    v40 = printers::asString((a1 + 197), v39);
    v42 = printers::asString((a1 + 198), v41);
    v44 = printers::asString((a1 + 199), v43);
    if (*(a1 + 119) < 0)
    {
      sub_100005F2C(v230, *(a1 + 96), *(a1 + 104));
    }

    else
    {
      *v230 = *(a1 + 96);
      v231 = *(a1 + 112);
    }

    v45 = HIBYTE(v231);
    if (v231 < 0)
    {
      v45 = v230[1];
    }

    *buf = 136447234;
    *&buf[4] = v38;
    if (v45)
    {
      v46 = "OK";
    }

    else
    {
      v46 = "(empty)";
    }

    *&buf[12] = 2082;
    *&buf[14] = v40;
    *&buf[22] = 2082;
    *&buf[24] = v42;
    LOWORD(v250[0]) = 2082;
    *(v250 + 2) = v44;
    WORD5(v250[0]) = 2082;
    *(v250 + 12) = v46;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I --> encryption_supported: %{public}s, push_supported: %{public}s, push_enabled: %{public}s, private_relay_supported: %{public}s, msisdn_source: %{public}s", buf, 0x34u);
    if (SHIBYTE(v231) < 0)
    {
      operator delete(v230[0]);
    }
  }

  v262 = 0;
  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v251 = 0u;
  memset(v250, 0, sizeof(v250));
  memset(buf, 0, sizeof(buf));
  sub_10000C320(buf);
  if (*(a3 + 248) == 1)
  {
    sub_10000C030(&buf[16], "--> Changed: ", 13);
    v247 = 0uLL;
    v248 = 0;
    v47 = *(a3 + 23);
    if (v47 >= 0)
    {
      v48 = *(a3 + 23);
    }

    else
    {
      v48 = *(a3 + 8);
    }

    v49 = *(a1 + 23);
    v50 = v49;
    if ((v49 & 0x80u) != 0)
    {
      v49 = *(a1 + 8);
    }

    if (v48 != v49 || (v47 >= 0 ? (v51 = a3) : (v51 = *a3), v50 >= 0 ? (v52 = a1) : (v52 = *a1), memcmp(v51, v52, v48)))
    {
      sub_10000501C(&v246, "Cached-IMSI");
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }
    }

    v53 = *(a3 + 47);
    if (v53 >= 0)
    {
      v54 = *(a3 + 47);
    }

    else
    {
      v54 = *(a3 + 32);
    }

    v55 = *(a1 + 47);
    v56 = v55;
    if ((v55 & 0x80u) != 0)
    {
      v55 = *(a1 + 32);
    }

    if (v54 != v55 || (v53 >= 0 ? (v57 = (a3 + 24)) : (v57 = *(a3 + 24)), v56 >= 0 ? (v58 = (a1 + 24)) : (v58 = *(a1 + 24)), memcmp(v57, v58, v54)))
    {
      sub_10000501C(&v246, "IMEI");
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }
    }

    v59 = *(a3 + 71);
    if (v59 >= 0)
    {
      v60 = *(a3 + 71);
    }

    else
    {
      v60 = *(a3 + 56);
    }

    v61 = *(a1 + 71);
    v62 = v61;
    if ((v61 & 0x80u) != 0)
    {
      v61 = *(a1 + 56);
    }

    if (v60 != v61 || (v59 >= 0 ? (v63 = (a3 + 48)) : (v63 = *(a3 + 48)), v62 >= 0 ? (v64 = (a1 + 48)) : (v64 = *(a1 + 48)), memcmp(v63, v64, v60)))
    {
      sub_10000501C(&v224, "URL: ");
      v65 = std::string::append(&v224, "{", 1uLL);
      v66 = *&v65->__r_.__value_.__l.__data_;
      v225.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
      *&v225.__r_.__value_.__l.__data_ = v66;
      v65->__r_.__value_.__l.__size_ = 0;
      v65->__r_.__value_.__r.__words[2] = 0;
      v65->__r_.__value_.__r.__words[0] = 0;
      v67 = *(a3 + 71);
      if (v67 >= 0)
      {
        v68 = (a3 + 48);
      }

      else
      {
        v68 = *(a3 + 48);
      }

      if (v67 >= 0)
      {
        v69 = *(a3 + 71);
      }

      else
      {
        v69 = *(a3 + 56);
      }

      v70 = std::string::append(&v225, v68, v69);
      v71 = *&v70->__r_.__value_.__l.__data_;
      v226.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
      *&v226.__r_.__value_.__l.__data_ = v71;
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      v72 = std::string::append(&v226, "} ==> ", 6uLL);
      v73 = *&v72->__r_.__value_.__l.__data_;
      v227.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
      *&v227.__r_.__value_.__l.__data_ = v73;
      v72->__r_.__value_.__l.__size_ = 0;
      v72->__r_.__value_.__r.__words[2] = 0;
      v72->__r_.__value_.__r.__words[0] = 0;
      v74 = std::string::append(&v227, "{", 1uLL);
      v75 = *&v74->__r_.__value_.__l.__data_;
      v228.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
      *&v228.__r_.__value_.__l.__data_ = v75;
      v74->__r_.__value_.__l.__size_ = 0;
      v74->__r_.__value_.__r.__words[2] = 0;
      v74->__r_.__value_.__r.__words[0] = 0;
      v76 = *(a1 + 71);
      if (v76 >= 0)
      {
        v77 = (a1 + 48);
      }

      else
      {
        v77 = *(a1 + 48);
      }

      if (v76 >= 0)
      {
        v78 = *(a1 + 71);
      }

      else
      {
        v78 = *(a1 + 56);
      }

      v79 = std::string::append(&v228, v77, v78);
      v80 = *&v79->__r_.__value_.__l.__data_;
      v229.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
      *&v229.__r_.__value_.__l.__data_ = v80;
      v79->__r_.__value_.__l.__size_ = 0;
      v79->__r_.__value_.__r.__words[2] = 0;
      v79->__r_.__value_.__r.__words[0] = 0;
      v81 = std::string::append(&v229, "}", 1uLL);
      v82 = *&v81->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v82;
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v228.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v226.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v224.__r_.__value_.__l.__data_);
      }
    }

    v83 = *(a3 + 95);
    if (v83 >= 0)
    {
      v84 = *(a3 + 95);
    }

    else
    {
      v84 = *(a3 + 80);
    }

    v85 = *(a1 + 95);
    v86 = v85;
    if ((v85 & 0x80u) != 0)
    {
      v85 = *(a1 + 80);
    }

    if (v84 != v85 || (v83 >= 0 ? (v87 = (a3 + 72)) : (v87 = *(a3 + 72)), v86 >= 0 ? (v88 = (a1 + 72)) : (v88 = *(a1 + 72)), memcmp(v87, v88, v84)))
    {
      sub_10000501C(&v246, "MSISDN");
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }
    }

    v89 = *(a3 + 213);
    v90 = *(a1 + 213);
    if (v89 == v90 && *(a3 + 213))
    {
      if (*(a3 + 212) == *(a1 + 212))
      {
        goto LABEL_199;
      }
    }

    else if (v89 == v90)
    {
      goto LABEL_199;
    }

    if (*(a1 + 213))
    {
      v91 = CSIBOOLAsString(*(a1 + 212));
      sub_10000501C(&v229, v91);
      v92 = std::string::insert(&v229, 0, "Switch: ", 8uLL);
      v93 = *&v92->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v93;
      v92->__r_.__value_.__l.__size_ = 0;
      v92->__r_.__value_.__r.__words[2] = 0;
      v92->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v229.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_199;
      }

      v94 = v229.__r_.__value_.__r.__words[0];
      goto LABEL_198;
    }

    sub_10000501C(&v246, "Switch: (null)");
    sub_1000D1054(&v247, &v246);
    if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
    {
      v94 = v246.__r_.__value_.__r.__words[0];
LABEL_198:
      operator delete(v94);
    }

LABEL_199:
    v95 = *(a1 + 216);
    if (*(a3 + 216) != v95)
    {
      v96 = CSIBOOLAsString(v95);
      sub_10000501C(&v229, v96);
      v97 = std::string::insert(&v229, 0, "Switch(default): ", 0x11uLL);
      v98 = *&v97->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v98;
      v97->__r_.__value_.__l.__size_ = 0;
      v97->__r_.__value_.__r.__words[2] = 0;
      v97->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    v99 = *(a1 + 214);
    if (*(a3 + 214) != v99)
    {
      v100 = CSIBOOLAsString(v99);
      sub_10000501C(&v229, v100);
      v101 = std::string::insert(&v229, 0, "Bundle support", 0xEuLL);
      v102 = *&v101->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v102;
      v101->__r_.__value_.__l.__size_ = 0;
      v101->__r_.__value_.__r.__words[2] = 0;
      v101->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    v103 = *(a1 + 215);
    if (*(a3 + 215) != v103)
    {
      v104 = CSIBOOLAsString(v103);
      sub_10000501C(&v229, v104);
      v105 = std::string::insert(&v229, 0, "Entitlement support: ", 0x15uLL);
      v106 = *&v105->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v106;
      v105->__r_.__value_.__l.__size_ = 0;
      v105->__r_.__value_.__r.__words[2] = 0;
      v105->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    v107 = *(a1 + 193);
    if (*(a3 + 193) != v107)
    {
      v108 = CSIBOOLAsString(v107);
      sub_10000501C(&v229, v108);
      v109 = std::string::insert(&v229, 0, "Carrier based: ", 0xFuLL);
      v110 = *&v109->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v110;
      v109->__r_.__value_.__l.__size_ = 0;
      v109->__r_.__value_.__r.__words[2] = 0;
      v109->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    v111 = *(a1 + 204);
    if (*(a3 + 204) != v111)
    {
      if (v111 > 5)
      {
        v112 = "kCellular";
      }

      else
      {
        v112 = off_101E51078[v111];
      }

      sub_10000501C(&v229, v112);
      v113 = std::string::insert(&v229, 0, "Prov interface", 0xEuLL);
      v114 = *&v113->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v113->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v114;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      v113->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    v115 = *(a1 + 208);
    if (*(a3 + 208) != v115)
    {
      if (v115 > 5)
      {
        v116 = "kCellular";
      }

      else
      {
        v116 = off_101E51078[v115];
      }

      sub_10000501C(&v229, v116);
      v117 = std::string::insert(&v229, 0, "Ims interface: ", 0xFuLL);
      v118 = *&v117->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v118;
      v117->__r_.__value_.__l.__size_ = 0;
      v117->__r_.__value_.__r.__words[2] = 0;
      v117->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    v119 = *(a3 + 143);
    if (v119 >= 0)
    {
      v120 = *(a3 + 143);
    }

    else
    {
      v120 = *(a3 + 128);
    }

    v121 = *(a1 + 143);
    v122 = v121;
    if ((v121 & 0x80u) != 0)
    {
      v121 = *(a1 + 128);
    }

    if (v120 != v121 || (v119 >= 0 ? (v123 = (a3 + 120)) : (v123 = *(a3 + 120)), v122 >= 0 ? (v124 = (a1 + 120)) : (v124 = *(a1 + 120)), memcmp(v123, v124, v120)))
    {
      sub_10000501C(&v246, "GID1");
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }
    }

    v125 = *(a3 + 167);
    if (v125 >= 0)
    {
      v126 = *(a3 + 167);
    }

    else
    {
      v126 = *(a3 + 152);
    }

    v127 = *(a1 + 167);
    v128 = v127;
    if ((v127 & 0x80u) != 0)
    {
      v127 = *(a1 + 152);
    }

    if (v126 != v127 || (v125 >= 0 ? (v129 = (a3 + 144)) : (v129 = *(a3 + 144)), v128 >= 0 ? (v130 = (a1 + 144)) : (v130 = *(a1 + 144)), memcmp(v129, v130, v126)))
    {
      sub_10000501C(&v246, "GID2");
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }
    }

    v131 = *(a1 + 194);
    if (*(a3 + 194) != v131)
    {
      v132 = CSIBOOLAsString(v131);
      sub_10000501C(&v229, v132);
      v133 = std::string::insert(&v229, 0, "Did first unlock: ", 0x12uLL);
      v134 = *&v133->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v134;
      v133->__r_.__value_.__l.__size_ = 0;
      v133->__r_.__value_.__r.__words[2] = 0;
      v133->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    v135 = *(a1 + 195);
    if (*(a3 + 195) != v135)
    {
      v136 = CSIBOOLAsString(v135);
      sub_10000501C(&v229, v136);
      v137 = std::string::insert(&v229, 0, "BB prov (waiting): ", 0x13uLL);
      v138 = *&v137->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v137->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v138;
      v137->__r_.__value_.__l.__size_ = 0;
      v137->__r_.__value_.__r.__words[2] = 0;
      v137->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    v139 = *(a1 + 217);
    if (*(a3 + 217) != v139)
    {
      v140 = CSIBOOLAsString(v139);
      sub_10000501C(&v229, v140);
      v141 = std::string::insert(&v229, 0, "Disabled by profile: ", 0x15uLL);
      v142 = *&v141->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v141->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v142;
      v141->__r_.__value_.__l.__size_ = 0;
      v141->__r_.__value_.__r.__words[2] = 0;
      v141->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    v143 = *(a1 + 218);
    if (*(a3 + 218) != v143)
    {
      v144 = CSIBOOLAsString(v143);
      sub_10000501C(&v229, v144);
      v145 = std::string::insert(&v229, 0, "Store demo: ", 0xCuLL);
      v146 = *&v145->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v145->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v146;
      v145->__r_.__value_.__l.__size_ = 0;
      v145->__r_.__value_.__r.__words[2] = 0;
      v145->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    v147 = *(a1 + 192);
    if (*(a3 + 192) != v147)
    {
      v148 = CSIBOOLAsString(v147);
      sub_10000501C(&v229, v148);
      v149 = std::string::insert(&v229, 0, "SMS: ", 5uLL);
      v150 = *&v149->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v149->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v150;
      v149->__r_.__value_.__l.__size_ = 0;
      v149->__r_.__value_.__r.__words[2] = 0;
      v149->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    v151 = *(a1 + 220);
    if (*(a3 + 220) != v151)
    {
      if (v151 > 3)
      {
        v152 = "kInvalid";
      }

      else
      {
        v152 = off_101E510A8[v151];
      }

      sub_10000501C(&v229, v152);
      v153 = std::string::insert(&v229, 0, "Style :", 7uLL);
      v154 = *&v153->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v153->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v154;
      v153->__r_.__value_.__l.__size_ = 0;
      v153->__r_.__value_.__r.__words[2] = 0;
      v153->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    v155 = (a1 + 224);
    v156 = *(a3 + 247);
    if (v156 >= 0)
    {
      v157 = *(a3 + 247);
    }

    else
    {
      v157 = *(a3 + 232);
    }

    v158 = *(a1 + 247);
    v159 = v158;
    if ((v158 & 0x80u) != 0)
    {
      v158 = *(a1 + 232);
    }

    if (v157 != v158 || (v156 >= 0 ? (v160 = (a3 + 224)) : (v160 = *(a3 + 224)), v159 >= 0 ? (v161 = (a1 + 224)) : (v161 = *v155), memcmp(v160, v161, v157)))
    {
      sub_10000501C(&v229, "Token: ");
      if (*(a1 + 247) < 0)
      {
        sub_100005F2C(v222, *(a1 + 224), *(a1 + 232));
      }

      else
      {
        *v222 = *v155;
        v223 = *(a1 + 240);
      }

      v162 = HIBYTE(v223);
      if (v223 < 0)
      {
        v162 = v222[1];
      }

      if (v162)
      {
        v163 = "OK";
      }

      else
      {
        v163 = "(empty)";
      }

      if (v162)
      {
        v164 = 2;
      }

      else
      {
        v164 = 7;
      }

      v165 = std::string::append(&v229, v163, v164);
      v166 = *&v165->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v165->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v166;
      v165->__r_.__value_.__l.__size_ = 0;
      v165->__r_.__value_.__r.__words[2] = 0;
      v165->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v223) < 0)
      {
        operator delete(v222[0]);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    if (*(a3 + 200) != *(a1 + 200))
    {
      sub_10000501C(&v229, "Buddy: ");
      v167 = asString();
      sub_10000501C(&v228, v167);
      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v168 = &v228;
      }

      else
      {
        v168 = v228.__r_.__value_.__r.__words[0];
      }

      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v228.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v228.__r_.__value_.__l.__size_;
      }

      v170 = std::string::append(&v229, v168, size);
      v171 = *&v170->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v170->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v171;
      v170->__r_.__value_.__l.__size_ = 0;
      v170->__r_.__value_.__r.__words[2] = 0;
      v170->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v228.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    if (*(a3 + 196) != *(a1 + 196))
    {
      sub_10000501C(&v229, "Encryption Supported: ");
      v173 = printers::asString((a1 + 196), v172);
      sub_10000501C(&v228, v173);
      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v174 = &v228;
      }

      else
      {
        v174 = v228.__r_.__value_.__r.__words[0];
      }

      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v175 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v175 = v228.__r_.__value_.__l.__size_;
      }

      v176 = std::string::append(&v229, v174, v175);
      v177 = *&v176->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v176->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v177;
      v176->__r_.__value_.__l.__size_ = 0;
      v176->__r_.__value_.__r.__words[2] = 0;
      v176->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v228.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    if (*(a3 + 197) != *(a1 + 197))
    {
      sub_10000501C(&v229, "Push Supported: ");
      v179 = printers::asString((a1 + 197), v178);
      sub_10000501C(&v228, v179);
      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v180 = &v228;
      }

      else
      {
        v180 = v228.__r_.__value_.__r.__words[0];
      }

      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v181 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v181 = v228.__r_.__value_.__l.__size_;
      }

      v182 = std::string::append(&v229, v180, v181);
      v183 = *&v182->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v182->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v183;
      v182->__r_.__value_.__l.__size_ = 0;
      v182->__r_.__value_.__r.__words[2] = 0;
      v182->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v228.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    if (*(a3 + 198) != *(a1 + 198))
    {
      sub_10000501C(&v229, "Push Enabled: ");
      v185 = printers::asString((a1 + 198), v184);
      sub_10000501C(&v228, v185);
      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v186 = &v228;
      }

      else
      {
        v186 = v228.__r_.__value_.__r.__words[0];
      }

      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v187 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v187 = v228.__r_.__value_.__l.__size_;
      }

      v188 = std::string::append(&v229, v186, v187);
      v189 = *&v188->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v188->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v189;
      v188->__r_.__value_.__l.__size_ = 0;
      v188->__r_.__value_.__r.__words[2] = 0;
      v188->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v228.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    if (*(a3 + 199) != *(a1 + 199))
    {
      sub_10000501C(&v229, "Private Relay Supported: ");
      v191 = printers::asString((a1 + 199), v190);
      sub_10000501C(&v228, v191);
      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v192 = &v228;
      }

      else
      {
        v192 = v228.__r_.__value_.__r.__words[0];
      }

      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v193 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v193 = v228.__r_.__value_.__l.__size_;
      }

      v194 = std::string::append(&v229, v192, v193);
      v195 = *&v194->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v194->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v195;
      v194->__r_.__value_.__l.__size_ = 0;
      v194->__r_.__value_.__r.__words[2] = 0;
      v194->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v228.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    v196 = (a1 + 96);
    v197 = *(a3 + 119);
    if (v197 >= 0)
    {
      v198 = *(a3 + 119);
    }

    else
    {
      v198 = *(a3 + 104);
    }

    v199 = *(a1 + 119);
    v200 = v199;
    if ((v199 & 0x80u) != 0)
    {
      v199 = *(a1 + 104);
    }

    if (v198 != v199 || ((v203 = *(a3 + 96), v202 = (a3 + 96), v201 = v203, v197 >= 0) ? (v204 = v202) : (v204 = v201), v200 >= 0 ? (v205 = (a1 + 96)) : (v205 = *v196), memcmp(v204, v205, v198)))
    {
      sub_10000501C(&v229, "MSISDN Source: ");
      if (*(a1 + 119) < 0)
      {
        sub_100005F2C(v220, *(a1 + 96), *(a1 + 104));
      }

      else
      {
        *v220 = *v196;
        v221 = *(a1 + 112);
      }

      v206 = HIBYTE(v221);
      if (v221 < 0)
      {
        v206 = v220[1];
      }

      if (v206)
      {
        v207 = "OK";
      }

      else
      {
        v207 = "(empty)";
      }

      if (v206)
      {
        v208 = 2;
      }

      else
      {
        v208 = 7;
      }

      v209 = std::string::append(&v229, v207, v208);
      v210 = *&v209->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v209->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v210;
      v209->__r_.__value_.__l.__size_ = 0;
      v209->__r_.__value_.__r.__words[2] = 0;
      v209->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&v247, &v246);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v221) < 0)
      {
        operator delete(v220[0]);
      }

      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }
    }

    if (*(&v247 + 1) == v247)
    {
      sub_10000C030(&buf[16], "(nothing)", 9);
    }

    else
    {
      sub_1000D1184(&v246, v247, *(&v247 + 1), ", ", 2uLL);
      if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v211 = &v246;
      }

      else
      {
        v211 = v246.__r_.__value_.__r.__words[0];
      }

      if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v212 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v212 = v246.__r_.__value_.__l.__size_;
      }

      sub_10000C030(&buf[16], v211, v212);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }
    }

    v246.__r_.__value_.__r.__words[0] = &v247;
    sub_1000087B4(&v246);
  }

  v213 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100061574(buf, &v247);
    v214 = v248 >= 0 ? &v247 : v247;
    LODWORD(v246.__r_.__value_.__l.__data_) = 136446210;
    *(v246.__r_.__value_.__r.__words + 4) = v214;
    _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "#I %{public}s", &v246, 0xCu);
    if (SHIBYTE(v248) < 0)
    {
      operator delete(v247);
    }
  }

  *&buf[16] = v215;
  if (SHIBYTE(v251) < 0)
  {
    operator delete(*(&v250[3] + 1));
  }

  std::locale::~locale(v250);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1004D0310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  STACK[0x210] = &STACK[0x230];
  sub_1000087B4(&STACK[0x210]);
  sub_10068C9D8(&STACK[0x250]);
  _Unwind_Resume(a1);
}

void sub_1004D05F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a71);
  }

  JUMPOUT(0x1004D05E8);
}

uint64_t sub_1004D0668@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *__p = 0u;
  v29 = 0u;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v25 = 0u;
  sub_10000C320(&v25);
  if (a1[1] == 1)
  {
    v4 = sub_10000C030(&v26, "switch: ", 8);
    if ((a1[1] & 1) == 0)
    {
      sub_1000D1644();
    }

    v5 = v4;
    v6 = CSIBOOLAsString(*a1);
    v7 = strlen(v6);
    sub_10000C030(v5, v6, v7);
  }

  else
  {
    sub_10000C030(&v26, "switch: (null)", 14);
  }

  v8 = sub_10000C030(&v26, ", bundle_support: ", 18);
  v9 = CSIBOOLAsString(a1[2]);
  v10 = strlen(v9);
  sub_10000C030(v8, v9, v10);
  v11 = sub_10000C030(&v26, ", entitlement_support: ", 23);
  v12 = CSIBOOLAsString(a1[3]);
  v13 = strlen(v12);
  sub_10000C030(v11, v12, v13);
  v14 = sub_10000C030(&v26, ", enabled_by_default: ", 22);
  v15 = CSIBOOLAsString(a1[4]);
  v16 = strlen(v15);
  sub_10000C030(v14, v15, v16);
  v17 = sub_10000C030(&v26, ", disabled_by_profile: ", 23);
  v18 = CSIBOOLAsString(a1[5]);
  v19 = strlen(v18);
  sub_10000C030(v17, v18, v19);
  v20 = sub_10000C030(&v26, ", is_store_demo_device: ", 24);
  v21 = CSIBOOLAsString(a1[6]);
  v22 = strlen(v21);
  sub_10000C030(v20, v21, v22);
  sub_100061574(&v25, a2);
  *&v26 = v23;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v27);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_1004D09B0(void *a1, void *a2)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v48 = v2;
  v49 = v3;
  v8 = a2;
  v9 = a1;
  if (v4 < 0)
  {
    a1 = *a1;
  }

  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v5))
  {
    return 0;
  }

  v10 = *(v9 + 47);
  if (v10 >= 0)
  {
    v11 = *(v9 + 47);
  }

  else
  {
    v11 = v9[4];
  }

  v12 = *(v8 + 47);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = v8[4];
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? v9 + 3 : v9[3];
  v15 = v13 >= 0 ? v8 + 3 : v8[3];
  if (memcmp(v14, v15, v11))
  {
    return 0;
  }

  v16 = v9[15];
  v17 = v9[16];
  v18 = v8[15];
  if (v17 - v16 != v8[16] - v18)
  {
    return 0;
  }

  while (v16 != v17)
  {
    result = sub_100022D3C(&v46, v16, v18);
    if (!result)
    {
      return result;
    }

    v16 += 3;
    v18 += 3;
  }

  v20 = v9[18];
  v21 = v9[19];
  v22 = v8[18];
  if (v21 - v20 != v8[19] - v22)
  {
    return 0;
  }

  while (v20 != v21)
  {
    result = sub_100022D3C(&v47, v20, v22);
    if (!result)
    {
      return result;
    }

    v20 += 3;
    v22 += 3;
  }

  v23 = *(v9 + 95);
  if (v23 >= 0)
  {
    v24 = *(v9 + 95);
  }

  else
  {
    v24 = v9[10];
  }

  v25 = *(v8 + 95);
  v26 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v25 = v8[10];
  }

  if (v24 != v25)
  {
    return 0;
  }

  v27 = v23 >= 0 ? v9 + 9 : v9[9];
  v28 = v26 >= 0 ? v8 + 9 : v8[9];
  if (memcmp(v27, v28, v24))
  {
    return 0;
  }

  v29 = *(v9 + 119);
  if (v29 >= 0)
  {
    v30 = *(v9 + 119);
  }

  else
  {
    v30 = v9[13];
  }

  v31 = *(v8 + 119);
  v32 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v31 = v8[13];
  }

  if (v30 != v31)
  {
    return 0;
  }

  v33 = v29 >= 0 ? v9 + 12 : v9[12];
  v34 = v32 >= 0 ? v8 + 12 : v8[12];
  if (memcmp(v33, v34, v30))
  {
    return 0;
  }

  result = sub_100071DF8(v9 + 6, v8 + 6);
  if (result)
  {
    if (*(v9 + 249) != *(v8 + 249) || *(v9 + 250) != *(v8 + 250) || *(v9 + 76) != *(v8 + 76))
    {
      return 0;
    }

    result = sub_100071DF8(v9 + 39, v8 + 39);
    if (!result)
    {
      return result;
    }

    if (*(v9 + 246) != *(v8 + 246) || *(v9 + 247) != *(v8 + 247) || *(v9 + 248) != *(v8 + 248))
    {
      return 0;
    }

    v35 = *(v8 + 44);
    if (v9[22])
    {
      if ((v35 & (v9[21] == v8[21])) != 1)
      {
        return 0;
      }
    }

    else if (v35)
    {
      return 0;
    }

    v36 = *(v8 + 48);
    if (v9[24])
    {
      if ((v36 & (v9[23] == v8[23])) != 1)
      {
        return 0;
      }
    }

    else if (v36)
    {
      return 0;
    }

    v37 = *(v8 + 52);
    if (v9[26])
    {
      if ((v37 & (v9[25] == v8[25])) != 1)
      {
        return 0;
      }
    }

    else if (v37)
    {
      return 0;
    }

    v38 = *(v9 + 116);
    if ((v38 & 0x100) != 0)
    {
      result = 0;
      if ((v8[29] & 0x100) == 0 || v38 != *(v8 + 116))
      {
        return result;
      }
    }

    else if ((v8[29] & 0x100) != 0)
    {
      return 0;
    }

    v39 = *(v9 + 117);
    if ((v39 & 0x100) != 0)
    {
      result = 0;
      if ((*(v8 + 117) & 0x100) == 0 || v39 != *(v8 + 117))
      {
        return result;
      }
    }

    else if ((*(v8 + 117) & 0x100) != 0)
    {
      return 0;
    }

    v40 = *(v9 + 118);
    if ((v40 & 0x100) != 0)
    {
      result = 0;
      if ((*(v8 + 118) & 0x100) == 0 || v40 != *(v8 + 118))
      {
        return result;
      }
    }

    else if ((*(v8 + 118) & 0x100) != 0)
    {
      return 0;
    }

    v41 = *(v9 + 119);
    if ((v41 & 0x100) != 0)
    {
      result = 0;
      if ((*(v8 + 119) & 0x100) == 0 || v41 != *(v8 + 119))
      {
        return result;
      }
    }

    else if ((*(v8 + 119) & 0x100) != 0)
    {
      return 0;
    }

    v42 = *(v9 + 121);
    if ((v42 & 0x100) != 0)
    {
      result = 0;
      if ((*(v8 + 121) & 0x100) == 0 || v42 != *(v8 + 121))
      {
        return result;
      }
    }

    else if ((*(v8 + 121) & 0x100) != 0)
    {
      return 0;
    }

    v43 = *(v9 + 120);
    if ((v43 & 0x100) == 0)
    {
      if ((v8[30] & 0x100) == 0)
      {
LABEL_112:
        v44 = *(v9 + 122);
        v45 = *(v8 + 122);
        if ((v44 & 0x100) != 0)
        {
          return (v44 == v45) & (v45 >> 8);
        }

        else
        {
          return (v45 & 0x100) == 0;
        }
      }

      return 0;
    }

    result = 0;
    if ((v8[30] & 0x100) != 0 && v43 == *(v8 + 120))
    {
      goto LABEL_112;
    }
  }

  return result;
}

uint64_t sub_1004D0E00(uint64_t a1)
{
  v1 = 247;
  if (*(a1 + 245))
  {
    v1 = 244;
  }

  if (*(a1 + v1) == 1)
  {
    v2 = *(a1 + 246);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL sub_1004D0E34(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v8 = *(v7 + 47);
  if (v8 >= 0)
  {
    v9 = *(v7 + 47);
  }

  else
  {
    v9 = v7[4];
  }

  v10 = *(v6 + 47);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v6[4];
  }

  if (v9 != v10)
  {
    return 0;
  }

  v12 = v8 >= 0 ? v7 + 3 : v7[3];
  v13 = v11 >= 0 ? v6 + 3 : v6[3];
  if (memcmp(v12, v13, v9))
  {
    return 0;
  }

  v14 = *(v7 + 71);
  if (v14 >= 0)
  {
    v15 = *(v7 + 71);
  }

  else
  {
    v15 = v7[7];
  }

  v16 = *(v6 + 71);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = v6[7];
  }

  if (v15 == v16 && (v14 >= 0 ? (v18 = v7 + 6) : (v18 = v7[6]), v17 >= 0 ? (v19 = v6 + 6) : (v19 = v6[6]), !memcmp(v18, v19, v15) && v7[9] == v6[9] && *(v7 + 80) == *(v6 + 80)))
  {
    return *(v7 + 81) == *(v6 + 81);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1004D0F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 != v3 || v2 == 0)
  {
    if (v2 != v3)
    {
      return 0;
    }
  }

  else if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 == v6 && v5 != 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

    return *(a1 + 32) == *(a2 + 32);
  }

  if (v5 == v6)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

void *sub_1004D102C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &off_101E510F8;
  a1[1] = off_101E51280;
  sub_10174D9C0((a1 + 4), 2, a2, -1);
  v9 = a3[1];
  a1[15] = *a3;
  a1[16] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  a1[17] = 0;
  a1[18] = 0;
  v10 = a4[1];
  a1[19] = *a4;
  a1[20] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a5[1];
  a1[21] = *a5;
  a1[22] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  a1[23] = 0;
  a1[24] = 0;
  a1[26] = 0;
  v12 = a1[18];
  a1[17] = 0;
  a1[18] = 0;
  if (v12)
  {
    sub_100004A34(v12);
  }

  return a1;
}

void sub_1004D111C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MMSOperationInterface::~MMSOperationInterface(v1);
  _Unwind_Resume(a1);
}

void sub_1004D1140(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 120));
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v15 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v15);
  if (!v11)
  {
    v12 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v13 = 0;
    v14 = 1;
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = v11[3];
  v13 = v11[4];
  if (!v13)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v14 = 0;
  if (v12)
  {
LABEL_10:
    (*(*v12 + 192))(v12, a2);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (!v12)
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1004D1268(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D1284(MMSOperationInterface *this)
{
  *this = &off_101E510F8;
  *(this + 1) = off_101E51280;
  v2 = *(this + 26);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 18);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 16);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  v8 = *(this + 3);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  MMSOperationInterface::~MMSOperationInterface(this);
}

void sub_1004D1364(MMSOperationInterface *a1)
{
  sub_1004D1284(a1);

  operator delete();
}

void sub_1004D139C(uint64_t a1)
{
  sub_1004D1284((a1 - 8));

  operator delete();
}

char *sub_1004D13E8@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[103] < 0)
  {
    return sub_100005F2C(a2, *(result + 10), *(result + 11));
  }

  *a2 = *(result + 5);
  *(a2 + 16) = *(result + 12);
  return result;
}

void sub_1004D1410(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  std::string::operator=((a1 + 80), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1004D1480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D14BC(uint64_t a1)
{
  Registry::getTimerService(&v6, *(a1 + 120));
  v2 = (**v6)(v6);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64) << v3;
  if (v4 >= *(a1 + 72))
  {
    v4 = *(a1 + 72);
  }

  *(a1 + 56) = v2 + 1000000000 * v4;
  if (v7)
  {
    sub_100004A34(v7);
    v3 = *(a1 + 40);
  }

  result = (v3 + 1);
  *(a1 + 40) = result;
  return result;
}

void sub_1004D1554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D156C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 << *(a1 + 40) >= *(a1 + 72))
  {
    return *(a1 + 72);
  }

  else
  {
    return v1 << *(a1 + 40);
  }
}

uint64_t sub_1004D15E4(uint64_t a1)
{
  v1 = *(a1 + 56);
  Registry::getTimerService(&v4, *(a1 + 120));
  v2 = (**v4)(v4);
  if (v5)
  {
    sub_100004A34(v5);
  }

  return (v1 - v2) / 1000000000;
}

void sub_1004D1670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D1688(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1004D16F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 160);
  *(a1 + 152) = v3;
  *(a1 + 160) = v2;
  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1004D171C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 144);
  *(a1 + 136) = v3;
  *(a1 + 144) = v2;
  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1004D1748(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v4 = *(a1 + 208);
  *(a1 + 208) = v3;
  if (v4)
  {

    dispatch_release(v4);
  }
}

void sub_1004D17A0(uint64_t a1)
{
  if (os_log_type_enabled(**(a1 + 200), OS_LOG_TYPE_ERROR))
  {
    sub_101772774();
  }
}

void sub_1004D17E0(uint64_t a1, uint64_t *a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 120));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *&v21 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v21);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (!v12)
  {
LABEL_7:
    if (os_log_type_enabled(**(a1 + 200), OS_LOG_TYPE_ERROR))
    {
      sub_1017727B0();
    }

    v14 = *(a1 + 192);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    if (!v14)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_100004A34(v14);
    goto LABEL_20;
  }

LABEL_13:
  v15 = *(a1 + 48);
  v16 = a2[1];
  v19 = *a2;
  v20 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v12 + 264))(&v21, v12, v15, &v19);
  v17 = v21;
  v21 = 0uLL;
  v18 = *(a1 + 192);
  *(a1 + 184) = v17;
  if (v18)
  {
    sub_100004A34(v18);
    if (*(&v21 + 1))
    {
      sub_100004A34(*(&v21 + 1));
    }
  }

  v14 = v20;
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_20:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1004D1984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D19AC(uint64_t a1)
{
  (*(**(a1 + 184) + 72))(*(a1 + 184), a1 + 8);
  v2 = *(a1 + 184);
  v3 = *(a1 + 208);
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  (*(*v2 + 56))(v2, &object);
  if (object)
  {
    dispatch_release(object);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1004D1B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, ...)
{
  va_start(va, object);
  sub_1004D2BB8(va);
  _Unwind_Resume(a1);
}

void sub_1004D1B78(uint64_t a1@<X0>, char *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X8>)
{
  v9 = *(a1 + 200);
  v10 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 36);
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Getting message from MMSC HTTP Response, MsgId %u", buf, 8u);
  }

  if (sub_100BB1A2C(*a4))
  {
    v20 = 0;
    memset(buf, 0, sizeof(buf));
    sub_1015662DC(buf, 0, 0, *(a1 + 48));
    BYTE1(v20) = 1;
    v17 = 0uLL;
    sub_1004D1FE0(a1, a4, buf, &v17);
  }

  v12 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    v14 = v21;
    sub_100BB1C20(*a4, v21);
    if (v22 < 0)
    {
      v14 = *v21;
    }

    sub_100BB1A00(v18, *a4);
    v15 = sub_100BB1540(v18);
    v16 = *(a1 + 36);
    *buf = 136315650;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = v15;
    *&buf[22] = 1024;
    *&buf[24] = v16;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MMSC HTTP response NOT SUCCESSFUL: Status:%s Response:%s, MsgId %u", buf, 0x1Cu);
    sub_100BB18D8(v18);
    if (v22 < 0)
    {
      operator delete(*v21);
    }
  }

  if (sub_100BB1A40(*a4, *(a1 + 200)))
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  *a3 = v13;
  *a5 = 0;
  *(a5 + 1) = 0;
}

void sub_1004D1F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (a10)
  {
    sub_100004A34(a10);
  }

  ctu::OsLogLogger::~OsLogLogger(va);
  _Unwind_Resume(a1);
}

void sub_1004D1FE0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint8_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + 200);
  v8 = *(a1 + 48);
  v9 = *(a1 + 36);
  v10 = sub_1007E14B4(*a2);
  v11 = *v10;
  v12 = v10[1];
  v13 = *v7;
  if (*v10 == v12)
  {
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      sub_1017728E4(v9, v13, v27);
    }

    *a4 = 0;
    operator new();
  }

  v14 = v10;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = v12 - v11;
    *&buf[12] = 1024;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Decoding %lu byte response, MsgId %u", buf, 0x12u);
  }

  v37 = 0;
  memset(buf, 0, sizeof(buf));
  sub_1015662DC(buf, 0, 0, v8);
  if (!a3)
  {
    a3 = buf;
  }

  sub_1015662D0(a3, *v14, *(v14 + 2) - *v14);
  ServiceMap = Registry::getServiceMap(*(a1 + 120));
  v16 = ServiceMap;
  if (v17 < 0)
  {
    v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(ServiceMap);
  __p = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, &__p);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v24 = 0;
      if (!v23)
      {
LABEL_12:
        v25 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p) = 67109120;
          HIDWORD(__p) = v9;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to get CarrierSettingsInterface, MsgId: %u", &__p, 8u);
        }

        v26 = 1;
        goto LABEL_24;
      }

LABEL_20:
      *v32 = @"MMS";
      *&v32[8] = @"UseFullBufferForDecoding";
      v34 = 0;
      v35 = 0;
      __p = 0;
      sub_10005B328(&__p, v32, &v32[16], 2uLL);
      v31 = 0;
      (*(*v23 + 104))(v32, v23, v8, 1, &__p, kCFBooleanTrue, 0);
      sub_10002FE1C(&v31, v32);
      sub_10000A1EC(v32);
      v32[0] = 1;
      ctu::cf::assign(v32, v31, v28);
      v26 = v32[0];
      v29 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v30 = CSIBOOLAsString(v26);
        *v32 = 136315394;
        *&v32[4] = v30;
        *&v32[12] = 1024;
        *&v32[14] = v9;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I MMS Response use full buffer: %s, MsgId: %u", v32, 0x12u);
      }

      sub_100045C8C(&v31);
      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }

LABEL_24:
      if ((v24 & 1) == 0)
      {
        sub_100004A34(v22);
      }

      sub_1015689C4(a3, v26, 1);
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
  if (!v23)
  {
    goto LABEL_12;
  }

  goto LABEL_20;
}

void sub_1004D240C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_100045C8C(&a15);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  ctu::OsLogLogger::~OsLogLogger(&a26);
  _Unwind_Resume(a1);
}

void sub_1004D24A8(uint64_t a1)
{
  if (os_log_type_enabled(**(a1 + 200), OS_LOG_TYPE_ERROR))
  {
    sub_101772958();
  }
}

uint64_t sub_1004D24E8(void *a1, uint64_t a2, char a3)
{
  if (!(*(*a1 + 176))(a1))
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v13 = 0;
    v6 = a1[21];
    if (v6)
    {
      v7 = (*(*v6 + 40))(v6);
      std::string::operator=(__p, v7);
      v8 = (SBYTE7(v13) & 0x80u) == 0 ? __p : __p[0];
    }

    else
    {
      v8 = __p;
    }

    sub_101135C3C(a2, v8);
    if (SBYTE7(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = 0;
  *__p = 0u;
  v13 = 0u;
  sub_101135C24(__p);
  v9 = sub_101136D4C(__p, a1[19]);
  if (v9)
  {
    if ((a3 & 1) == 0)
    {
      if (v13 >= 0)
      {
        v10 = HIBYTE(v13);
      }

      else
      {
        v10 = v13;
      }

      sub_101135D4C(a2, v10);
    }

    sub_1011360AC(a2, __p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  return v9;
}

void sub_1004D2634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D2664@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 160);
  *a2 = *(result + 152);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

BOOL sub_1004D2680(void *a1, void *a2)
{
  v4 = (*(*a1 + 192))(a1);
  if (v4 != (*(*a2 + 192))(a2))
  {
    return 0;
  }

  v7 = a1[19];
  if (!v7)
  {
    return 0;
  }

  v8 = a2[19];
  if (!v8)
  {
    return 0;
  }

  if (v7 == v8)
  {
    return 1;
  }

  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  v5 = sub_1013D8788(v7, "X-Mms-Transaction-ID") && sub_1013D8788(a2[19], "X-Mms-Transaction-ID") && sub_100071DF8(v11, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return v5;
}

void sub_1004D27B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D2870(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1004D287C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *sub_1004D2888(void *a1)
{
  *a1 = off_101E51300;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004D28D4(void *a1)
{
  *a1 = off_101E51300;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004D29B4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E51300;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004D29F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004D2A04(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004D2A44(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = a1[1];
  v6 = a1[3];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7 && a1[2])
    {
      v8 = v4;
      v9 = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ((*v5)[43])(v5, &v8);
      if (v9)
      {
        sub_100004A34(v9);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
  }

  if (!os_log_type_enabled(*v5[25], OS_LOG_TYPE_ERROR))
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_101772994();
  if (v7)
  {
LABEL_11:
    sub_100004A34(v7);
  }

LABEL_12:
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1004D2B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v11);
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004D2B6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D2BB8(uint64_t a1)
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

uint64_t AppNetworkAccessObserver::AppNetworkAccessObserver(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1004D3800(v7, a3);
  AppNetworkAccessObserverInterface::AppNetworkAccessObserverInterface(a1, v7);
  sub_1004D3898(v7);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = off_101E51390;
  v5 = a2[1];
  *(a1 + 56) = *a2;
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 112));
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 920));
  return a1;
}

void sub_1004D2D24(_Unwind_Exception *a1)
{
  sub_10004543C(v2 + 40);
  v5 = *v3;
  *v3 = 0;
  if (v5)
  {
    sub_1001A9614(v3, v5);
  }

  sub_10006EC28(v2, *(v1 + 80));
  v6 = *(v1 + 64);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(v1 + 48);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  AppNetworkAccessObserverInterface::~AppNetworkAccessObserverInterface(v1);
  _Unwind_Resume(a1);
}

void AppNetworkAccessObserver::~AppNetworkAccessObserver(AppNetworkAccessObserver *this)
{
  *this = off_101E51390;
  v3 = this + 96;
  v2 = *(this + 12);
  if (v2)
  {
    ctu::RestModule::disconnect(v2);
  }

  sub_10004543C(this + 920);
  sub_10004543C(this + 112);
  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    sub_1001A9614(v3, v4);
  }

  sub_10006EC28(this + 72, *(this + 10));
  v5 = *(this + 8);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  AppNetworkAccessObserverInterface::~AppNetworkAccessObserverInterface(this);
}

{
  AppNetworkAccessObserver::~AppNetworkAccessObserver(this);

  operator delete();
}

uint64_t AppNetworkAccessObserver::isPathSatellite(AppNetworkAccessObserver *this)
{
  v1 = *(this + 26);
  if (v1 == 1)
  {
    v2 = 916;
  }

  else
  {
    if (v1 != 2)
    {
      v3 = 0;
      return v3 & 1;
    }

    v2 = 1724;
  }

  v3 = *(this + v2);
  return v3 & 1;
}

void AppNetworkAccessObserver::observe(void *a1, void *a2, NSObject **a3, NSObject **a4, Registry **a5)
{
  v9 = a1 + 10;
  sub_10006EC28((a1 + 9), a1[10]);
  *v9 = 0;
  v9[1] = 0;
  *(v9 - 1) = v9;
  v12 = *a2;
  v10 = a2 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      v13 = *(v11 + 7);
      v30 = v13;
      switch(v13)
      {
        case 2:
          v21 = a5[1];
          if (v21)
          {
            atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
          }

          v22 = a1[6];
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 16), 1uLL, memory_order_relaxed);
          }

          v31 = 0;
          operator new();
        case 1:
          v16 = *a3;
          v29[0] = v16;
          if (v16)
          {
            dispatch_retain(v16);
          }

          v17 = *a4;
          object = v17;
          if (v17)
          {
            dispatch_retain(v17);
          }

          v18 = a5[1];
          v27[0] = *a5;
          v27[1] = v18;
          if (v18)
          {
            atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
          }

          AppNetworkAccessObserver::setupRestIfNeeded(a1, v29, &object, v27);
          if (v18)
          {
            sub_100004A34(v18);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v29[0])
          {
            dispatch_release(v29[0]);
          }

          v19 = a5[1];
          if (v19)
          {
            atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
          }

          v20 = a1[6];
          if (v20)
          {
            atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
          }

          v32 = 0;
          operator new();
        case 0:
          v14 = a5[1];
          v29[1] = *a5;
          v29[2] = v14;
          if (v14)
          {
            atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
          }

          v15 = a1[6];
          if (v15)
          {
            atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
          }

          v33 = 0;
          operator new();
      }

      v23 = v11[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v11[2];
          v25 = *v24 == v11;
          v11 = v24;
        }

        while (!v25);
      }

      v11 = v24;
    }

    while (v24 != v10);
  }
}

void sub_1004D3350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, dispatch_object_t object, dispatch_object_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_10001C200(va);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t AppNetworkAccessObserver::setupRestIfNeeded(uint64_t result, uint64_t a2, uint64_t a3, Registry **a4)
{
  if (!*(result + 96))
  {
    sub_1004D3528();
  }

  return result;
}

void sub_1004D3510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D35F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1004D3640(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/reg_net_info1");
  v5[0] = off_101E51588;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1004D36F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004D3720(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/reg_net_info2");
  v5[0] = off_101E51608;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1004D37D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004D3800(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1004D3898(uint64_t a1)
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

void *sub_1004D3918(void *a1)
{
  *a1 = off_101E51408;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004D3964(void *a1)
{
  *a1 = off_101E51408;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004D3A44(uint64_t result, uint64_t a2)
{
  *a2 = off_101E51408;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004D3A84(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004D3A94(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004D3AD4(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *v11 = *(a2 + 16);
  *&v11[3] = *(a2 + 19);
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        v10 = (*(*v7 + 16))(v7);
        if (v5 < 0)
        {
          sub_100005F2C(__p, v3, v4);
        }

        else
        {
          __p[0] = v3;
          __p[1] = v4;
          *v13 = *v11;
          *&v13[3] = *&v11[3];
          v14 = v5;
        }

        sub_1004D3C60(v7 + 8, __p, v10);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v9);
    }
  }

  if (v5 < 0)
  {
    operator delete(v3);
  }
}

void sub_1004D3BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v16);
  if (v17 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004D3C14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D3C60(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void *sub_1004D3CB4(void *a1)
{
  *a1 = off_101E51488;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004D3D00(void *a1)
{
  *a1 = off_101E51488;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004D3DE0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E51488;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004D3E20(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004D3E30(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004D3E70(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *v10 = *(a2 + 16);
  *&v10[3] = *(a2 + 19);
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        if (v5 < 0)
        {
          sub_100005F2C(__p, v3, v4);
        }

        else
        {
          __p[0] = v3;
          __p[1] = v4;
          *v12 = *v10;
          *&v12[3] = *&v10[3];
          v13 = v5;
        }

        sub_1004D3C60(v7 + 8, __p, 1);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v9);
    }
  }

  if (v5 < 0)
  {
    operator delete(v3);
  }
}

void sub_1004D3F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100004A34(v16);
  operator delete(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D3F8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004D3FD8(void *a1)
{
  *a1 = off_101E51508;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004D4024(void *a1)
{
  *a1 = off_101E51508;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004D4104(uint64_t result, uint64_t a2)
{
  *a2 = off_101E51508;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004D4144(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004D4154(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004D4194(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *v10 = *(a2 + 16);
  *&v10[3] = *(a2 + 19);
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        if (v5 < 0)
        {
          sub_100005F2C(__p, v3, v4);
        }

        else
        {
          __p[0] = v3;
          __p[1] = v4;
          *v12 = *v10;
          *&v12[3] = *&v10[3];
          v13 = v5;
        }

        sub_1004D3C60(v7 + 8, __p, 2);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v9);
    }
  }

  if (v5 < 0)
  {
    operator delete(v3);
  }
}

void sub_1004D4270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100004A34(v16);
  operator delete(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D42B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D436C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E51588;
  a2[1] = v2;
  return result;
}

uint64_t sub_1004D43A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D445C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E51608;
  a2[1] = v2;
  return result;
}

uint64_t sub_1004D4490(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_uint **sub_1004D4504(atomic_uint **a1)
{
  *a1 = off_101E519D0;
  sub_10004A724(a1 + 2);
  return a1;
}

atomic_uint **sub_1004D4548(atomic_uint **a1)
{
  *a1 = off_101E51A40;
  sub_10004A724(a1 + 2);
  return a1;
}

atomic_uint **sub_1004D458C(atomic_uint **a1)
{
  *a1 = off_101E51AB0;
  sub_10004A724(a1 + 2);
  return a1;
}

atomic_uint **sub_1004D45D0(atomic_uint **a1)
{
  *a1 = off_101E51B20;
  sub_10004A724(a1 + 2);
  return a1;
}

atomic_uint **sub_1004D4614(atomic_uint **a1)
{
  *a1 = off_101E51B90;
  sub_10004A724(a1 + 2);
  return a1;
}

atomic_uint **sub_1004D4658(atomic_uint **a1)
{
  *a1 = off_101E51C00;
  sub_10004A724(a1 + 2);
  return a1;
}

atomic_uint **sub_1004D469C(atomic_uint **a1)
{
  *a1 = off_101E51C70;
  sub_10004A724(a1 + 2);
  return a1;
}

atomic_uint **sub_1004D46E0(atomic_uint **a1)
{
  *a1 = off_101E51CE0;
  sub_10004A724(a1 + 2);
  return a1;
}

atomic_uint **sub_1004D4724(atomic_uint **a1)
{
  *a1 = off_101E51D50;
  sub_10004A724(a1 + 2);
  return a1;
}

atomic_uint **sub_1004D4768(atomic_uint **a1)
{
  *a1 = off_101E51DC0;
  sub_10004A724(a1 + 2);
  return a1;
}

atomic_uint **sub_1004D47AC(atomic_uint **a1)
{
  *a1 = off_101E51E30;
  sub_10004A724(a1 + 2);
  return a1;
}

atomic_uint **sub_1004D47F0(atomic_uint **a1)
{
  *a1 = off_101E51EA0;
  sub_10004A724(a1 + 2);
  return a1;
}

atomic_uint **sub_1004D4834(atomic_uint **a1)
{
  *a1 = off_101E51F10;
  sub_10004A724(a1 + 2);
  return a1;
}

uint64_t entitlements::getAwdEntitlementRequestType(entitlements *this, objc_object *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v3 = sub_100531868(this) - 2, v3 <= 0xE))
  {
    return dword_101812058[v3];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void entitlements::sCreateHttpRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v5 = *a5;
  *a5 = 0uLL;
  ctu::Http::HttpRequest::create();
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1004D4930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::CEHTTPDriver(uint64_t a1, NSObject **a2, void *a3, char *a4, void *a5, uint64_t *a6, __int128 *a7, uint64_t *a8)
{
  v15 = *a2;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v16 = a8[1];
  v19 = *a8;
  v20 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1009C0FD0(a1, &object, a3, "CEHTTPDriver", a4, a5, a6, &v19);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &off_101E516F8;
  *(a1 + 424) = a4;
  if (*(a7 + 23) < 0)
  {
    v18 = *(a7 + 1);
    if (v18)
    {
      sub_100005F2C((a1 + 432), *a7, v18);
      goto LABEL_15;
    }
  }

  else if (*(a7 + 23))
  {
    v17 = *a7;
    *(a1 + 448) = *(a7 + 2);
    *(a1 + 432) = v17;
    goto LABEL_15;
  }

  sub_100A8161C(*a6, a1 + 432);
LABEL_15:
  sub_100A81988(*a6, (a1 + 456));
  *(a1 + 536) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 600) = *(***(a1 + 128) + 49) == 1;
  *(a1 + 608) = 0u;
  *(a1 + 624) = a1 + 624;
  *(a1 + 632) = a1 + 624;
  *(a1 + 676) = 0;
  *(a1 + 680) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 672) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 688) = a1 + 696;
  *(a1 + 720) = 0u;
  *(a1 + 712) = a1 + 720;
  *(a1 + 736) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 776) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 784) = a1 + 792;
  *(a1 + 816) = 0u;
  *(a1 + 808) = a1 + 816;
  *(a1 + 840) = 0u;
  *(a1 + 832) = a1 + 840;
  *(a1 + 856) = 0;
  entitlements::CEHTTPDriver::addNewPendingQuery();
}

void sub_1004D4CD4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  JUMPOUT(0x1004D4CCCLL);
}

void entitlements::CEHTTPDriver::~CEHTTPDriver(entitlements::CEHTTPDriver *this)
{
  *this = &off_101E516F8;
  *(this + 124) = 1;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 16));
    v4 = *(this + 20);
    v5 = 136315906;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    v9 = 2080;
    v10 = v4;
    v11 = 2080;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sDriver is going away. Invalidating all incomplete actions", &v5, 0x2Au);
  }

  LOBYTE(v5) = 0;
  LOBYTE(v6) = 0;
  entitlements::CEHTTPDriver::terminateAllQueries(this, 0, &v5);
}

{
  entitlements::CEHTTPDriver::~CEHTTPDriver(this);
}

void sub_1004D50C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void entitlements::CEHTTPDriver::terminateAllQueries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + 624);
  for (i = *(a1 + 632); i != v6; i = i[1])
  {
    entitlements::CEHTTPDriver::postQueryEvent(a1, a2, i[2], a3);
  }

  v8 = *(a1 + 608);
  if (v8)
  {
    entitlements::CEHTTPDriver::postQueryEvent(a1, a2, v8, a3);
  }

  sub_1004EDC58(v6);
  if (*(a1 + 676) == 1)
  {
    *(a1 + 676) = 0;
  }

  v9 = *(a1 + 616);
  *(a1 + 608) = 0u;
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PersonalityInfo::logPrefix(***(a1 + 128));
    v12 = *(a1 + 160);
    *buf = 136315906;
    v14 = v11;
    v15 = 2080;
    v16 = " ";
    v17 = 2080;
    v18 = v12;
    v19 = 2080;
    v20 = "";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAll pending and requested queries terminated", buf, 0x2Au);
  }

  entitlements::CEHTTPDriver::addNewPendingQuery();
}

void entitlements::CEHTTPDriver::initialize_sync(entitlements::CEHTTPDriver *this)
{
  sub_1009C16DC(this);
  sub_100004AA0(&v4, this + 1);
  v2 = *(&v4 + 1);
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  sub_10000501C(&v3, "/cc/props/connection_state");
  operator new();
}

void sub_1004D5D64(_Unwind_Exception *a1)
{
  sub_1000062D4(v1 - 128);
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::handleConnectionAvailability_sync(uint64_t this)
{
  v2 = *(this + 832);
  v3 = (this + 840);
  if (v2 == (this + 840))
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    while (1)
    {
      v5 = ConnectionAvailabilityContainer::available();
      if (v5)
      {
        break;
      }

      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v4 |= v5;
      v2 = v7;
      if (v7 == v3)
      {
        goto LABEL_13;
      }
    }

    v4 = 1;
  }

LABEL_13:
  v9 = ***(this + 128);
  if (*(v9 + 49))
  {
    goto LABEL_14;
  }

  v18 = *v3;
  if (!*v3)
  {
    goto LABEL_14;
  }

  v19 = *(v9 + 52);
  v20 = v3;
  do
  {
    if (*(v18 + 28) >= v19)
    {
      v20 = v18;
    }

    v18 = *(v18 + 8 * (*(v18 + 28) < v19));
  }

  while (v18);
  if (v20 == v3 || v19 < *(v20 + 7))
  {
LABEL_14:
    v10 = 0;
  }

  else
  {
    v10 = ConnectionAvailabilityContainer::available();
  }

  v11 = v4 & 1;
  if (*(this + 776) != (v4 & 1) || *(this + 777) != v10)
  {
    v12 = *(this + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(***(this + 128));
      v14 = *(this + 160);
      v15 = asStringBool(*(this + 776));
      v16 = asStringBool(v4 & 1);
      v17 = asStringBool(*(this + 777));
      v21 = 136316930;
      v22 = v13;
      v23 = 2080;
      v24 = " ";
      v25 = 2080;
      v26 = v14;
      v27 = 2080;
      v28 = "";
      v29 = 2080;
      v30 = v15;
      v31 = 2080;
      v32 = v16;
      v33 = 2080;
      v34 = v17;
      v35 = 2080;
      v36 = asStringBool(v10);
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sConnection availability changed. Internet: %s -> %s, Entitlement: %s -> %s. Issuing any pending transactions", &v21, 0x52u);
    }

    *(this + 776) = v11;
    if (*(this + 777) != v10)
    {
      *(this + 777) = v10;
      if (v10)
      {
        sub_1009C43FC(this, "connection availability");
      }
    }

    entitlements::CEHTTPDriver::evaluateConnectivityStateChange(this);
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
  }
}

uint64_t entitlements::CEHTTPDriver::evaluateConnectivityStateChange(entitlements::CEHTTPDriver *this)
{
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  *v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  v34 = 0u;
  sub_10000C320(&v34);
  v2 = sub_100A81C8C(*(this + 18));
  v3 = v2;
  if ((v2 & 2) != 0)
  {
    v4 = (*(this + 776) & 1) != 0 || (*(this + 736) & 1) != 0 || *(this + 858) == 1;
    *buf = 1;
    v5 = sub_100A7F79C(buf);
    v6 = strlen(v5);
    v7 = sub_10000C030(&v35, v5, v6);
    sub_10000C030(v7, ":[", 2);
    if (*(this + 776))
    {
      sub_10000C030(&v35, "cellular", 8);
      if (*(this + 736) != 1)
      {
LABEL_14:
        if ((*(this + 858) & 1) == 0)
        {
LABEL_23:
          sub_10000C030(&v35, "]", 1);
          if ((v3 & 1) == 0)
          {
            goto LABEL_32;
          }

          v11 = *(this + 777);
          sub_10000C030(&v35, " and ", 5);
          v8 = this + 777;
          v4 |= v11;
          goto LABEL_25;
        }

        sub_10000C030(&v35, ", ", 2);
        v9 = "via phone";
        v10 = 9;
LABEL_22:
        sub_10000C030(&v35, v9, v10);
        goto LABEL_23;
      }

      sub_10000C030(&v35, ", ", 2);
    }

    else if ((*(this + 736) & 1) == 0)
    {
      if (*(this + 858))
      {
        v9 = "via phone";
      }

      else
      {
        v9 = "unavailable";
      }

      if (*(this + 858))
      {
        v10 = 9;
      }

      else
      {
        v10 = 11;
      }

      goto LABEL_22;
    }

    sub_10000C030(&v35, "wifi", 4);
    goto LABEL_14;
  }

  if ((v2 & 1) == 0)
  {
    sub_10000C030(&v35, "no options", 10);
    v4 = 0;
    goto LABEL_32;
  }

  v8 = this + 777;
  v4 = *(this + 777);
LABEL_25:
  *buf = 0;
  v12 = sub_100A7F79C(buf);
  v13 = strlen(v12);
  sub_10000C030(&v35, v12, v13);
  if (*v8)
  {
    v14 = ":[available]";
  }

  else
  {
    v14 = ":[unavailable]";
  }

  if (*v8)
  {
    v15 = 12;
  }

  else
  {
    v15 = 14;
  }

  sub_10000C030(&v35, v14, v15);
LABEL_32:
  v16 = *(this + 5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = PersonalityInfo::logPrefix(***(this + 16));
    v18 = *(this + 20);
    sub_10006EE70(&v35 + 8, &__p);
    v19 = v33 >= 0 ? &__p : __p;
    *buf = 136316162;
    *&buf[4] = v17;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v51 = 2080;
    v52 = v18;
    v53 = 2080;
    v54 = "";
    v55 = 2082;
    v56 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sTransport availability: %{public}s", buf, 0x34u);
    if (v33 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 859) != (v4 & 1))
  {
    v20 = *(this + 5);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = PersonalityInfo::logPrefix(***(this + 16));
      v22 = *(this + 20);
      v23 = asStringBool(v4 & 1);
      *buf = 136316162;
      *&buf[4] = v21;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v51 = 2080;
      v52 = v22;
      v53 = 2080;
      v54 = "";
      v55 = 2080;
      v56 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sTransport availability changes to: %s", buf, 0x34u);
    }

    *(this + 859) = v4 & 1;
    v24 = *(this + 14);
    if (v24)
    {
      v25 = std::__shared_weak_count::lock(v24);
      if (v25)
      {
        v26 = v25;
        v27 = *(this + 13);
        if (v27)
        {
          sub_100004AA0(buf, this + 1);
          v28 = *&buf[8];
          __p = *buf;
          v32 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v28);
          }

          (**v27)(v27, &__p, *(this + 859));
          if (v32)
          {
            std::__shared_weak_count::__release_weak(v32);
          }
        }

        sub_100004A34(v26);
      }
    }
  }

  *&v35 = v29;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[1]);
  }

  std::locale::~locale(v36);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1004D6774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  sub_100004A34(v12);
  sub_10068C9D8(va);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::handleBBActivationEvent_sync(Registry **this)
{
  if (!*(**this[16] + 49))
  {
    ServiceMap = Registry::getServiceMap(this[6]);
    v3 = ServiceMap;
    if ((v4 & 0x8000000000000000) != 0)
    {
      v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      v6 = 5381;
      do
      {
        v4 = v6;
        v7 = *v5++;
        v6 = (33 * v6) ^ v7;
      }

      while (v7);
    }

    std::mutex::lock(ServiceMap);
    v13 = v4;
    v8 = sub_100009510(&v3[1].__m_.__sig, &v13);
    if (v8)
    {
      v10 = v8[3];
      v9 = v8[4];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v3);
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v9);
        v11 = 0;
        if (!v10)
        {
LABEL_14:
          if ((v11 & 1) == 0)
          {
            sub_100004A34(v9);
          }

          return;
        }

LABEL_11:
        sub_100004AA0(&v13, this + 1);
        v12 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v12);
        }

        v15 = 0;
        operator new();
      }
    }

    else
    {
      v10 = 0;
    }

    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }
}

void sub_1004D69B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000FF50(va);
  if ((v8 & 1) == 0)
  {
    sub_100004A34(v7);
  }

  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::handleWifiAvailable(uint64_t this, int a2)
{
  if (*(this + 736) != a2)
  {
    v2 = a2;
    v4 = *(this + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(***(this + 128));
      v6 = *(this + 160);
      v7 = asStringBool(*(this + 736));
      v11 = 136316418;
      v12 = v5;
      v13 = 2080;
      v14 = " ";
      v15 = 2080;
      v16 = v6;
      v17 = 2080;
      v18 = "";
      v19 = 2080;
      v20 = v7;
      v21 = 2080;
      v22 = asStringBool(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sWifi availability is changing from %s to %s", &v11, 0x3Eu);
    }

    *(this + 736) = v2;
    entitlements::CEHTTPDriver::evaluateConnectivityStateChange(this);
    if (*(this + 736) == 1)
    {
      sub_1009C18B8(this, "handleWifiAvailable", 0);
      v8 = *(this + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = PersonalityInfo::logPrefix(***(this + 128));
        v10 = *(this + 160);
        v11 = 136315906;
        v12 = v9;
        v13 = 2080;
        v14 = " ";
        v15 = 2080;
        v16 = v10;
        v17 = 2080;
        v18 = "";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sBecame WiFi attached, issuing any pending transactions", &v11, 0x2Au);
      }

      entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
    }
  }
}

void entitlements::CEHTTPDriver::sendRequestIfPending_sync(uint64_t this)
{
  if ((*(this + 640) > 1uLL || sub_1005358AC(*(this + 648))) && !*(this + 608))
  {
    v2 = *(this + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = PersonalityInfo::logPrefix(***(this + 128));
      v4 = *(this + 160);
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = " ";
      v9 = 2080;
      v10 = v4;
      v11 = 2080;
      v12 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________   Sending Request for pending query", &v5, 0x2Au);
    }

    entitlements::CEHTTPDriver::initiateRequestQuery_sync(this, 0);
  }
}

void entitlements::CEHTTPDriver::handleDeviceInProximityChange_sync(uint64_t this, int a2)
{
  if (*(this + 858) != a2)
  {
    v2 = a2;
    v4 = *(this + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(***(this + 128));
      v6 = *(this + 160);
      v7 = asStringBool(v2);
      v8 = asStringBool(*(this + 858));
      v12 = 136316418;
      v13 = v5;
      v14 = 2080;
      v15 = " ";
      v16 = 2080;
      v17 = v6;
      v18 = 2080;
      v19 = "";
      v20 = 2080;
      v21 = v7;
      v22 = 2080;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%siPhone proximity is changing from %s to %s", &v12, 0x3Eu);
    }

    entitlements::CEHTTPDriver::evaluateConnectivityStateChange(this);
    if (*(this + 858) == 1)
    {
      sub_1009C18B8(this, "handleNearbyDevicesChanged", 0);
      v9 = *(this + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = PersonalityInfo::logPrefix(***(this + 128));
        v11 = *(this + 160);
        v12 = 136315906;
        v13 = v10;
        v14 = 2080;
        v15 = " ";
        v16 = 2080;
        v17 = v11;
        v18 = 2080;
        v19 = "";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%siPhone is in proximity, issuing any pending transactions", &v12, 0x2Au);
      }

      entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
    }
  }
}

void entitlements::CEHTTPDriver::reset_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 128));
    v6 = *(a1 + 160);
    *v8 = 136315906;
    *&v8[4] = v5;
    *&v8[12] = 2080;
    *&v8[14] = " ";
    *&v8[22] = 2080;
    v9 = v6;
    v10 = 2080;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________   Reset called on driver. Cancelling all transactions.", v8, 0x2Au);
  }

  sub_1009C1748(a1, v2);
  sub_100A81C94(*(a1 + 144), v8);
  v7 = (a1 + 544);
  if (*(a1 + 567) < 0)
  {
    operator delete(*v7);
  }

  *v7 = *v8;
  *(a1 + 560) = *&v8[16];
  v8[0] = 0;
  v8[4] = 0;
  entitlements::CEHTTPDriver::terminateAllQueries(a1, 0, v8);
}

uint64_t entitlements::CEHTTPDriver::invalidateConnection_sync(entitlements::CEHTTPDriver *this)
{
  v2 = this + 568;
  v3 = *(this + 72);
  *v2 = 0u;
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 74);
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 96);
  *(v2 + 24) = 0;
  *(v2 + 25) = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }

  return _CFURLConnectionInvalidateConnectionCache();
}

void entitlements::CEHTTPDriver::cleanToken(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 13);
      if (v5)
      {
        sub_100004AA0(__p, this + 1);
        v9 = *__p;
        LOBYTE(__p[0]) = 0;
        v8 = 0;
        (*(*v5 + 16))(v5, &v9, __p);
        if (v8 == 1 && __p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (*(&v9 + 1))
        {
          sub_100004A34(*(&v9 + 1));
        }
      }

      sub_100004A34(v4);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  (*(*this + 280))(this, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1004D723C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12 == 1)
  {
    sub_1017729D0(&__p);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::cleanGBAAuthInfo(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 13);
      if (v5)
      {
        sub_100004AA0(__p, this + 1);
        v9 = *__p;
        LOBYTE(__p[0]) = 0;
        v8 = 0;
        (*(*v5 + 32))(v5, &v9, __p);
        if (v8 == 1 && SHIBYTE(v7) < 0)
        {
          operator delete(__p[0]);
        }

        if (*(&v9 + 1))
        {
          sub_100004A34(*(&v9 + 1));
        }
      }

      sub_100004A34(v4);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  (*(*this + 392))(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004D73A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::readToken(entitlements::CEHTTPDriver *this)
{
  *v15 = 0u;
  v16 = 0u;
  v2 = *(this + 14);
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = v3;
  v5 = *(this + 13);
  if (v5)
  {
    sub_100004AA0(&v17, this + 1);
    v14 = v17;
    (*(*v5 + 8))(__p, v5, &v14);
    sub_1004EDCD0(v15, __p);
    if (v20 == 1 && *__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    if (*(&v14 + 1))
    {
      sub_100004A34(*(&v14 + 1));
    }
  }

  sub_100004A34(v4);
  if (BYTE8(v16))
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(this + 16));
      v8 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v7;
      *&__p[12] = 2080;
      *&__p[14] = " ";
      v19 = 2080;
      v20 = v8;
      v21 = 2080;
      v22 = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sFound Auth Token", __p, 0x2Au);
    }

    if (*(*(this + 18) + 56) <= 1uLL && !*(this + 30))
    {
      v9 = *(this + 16);
      v10 = *(this + 17);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10043E720((v9 + 480), v15);
      if (v10)
      {
        sub_100004A34(v10);
      }
    }

    (*(*this + 280))(this, v15);
  }

  else
  {
LABEL_19:
    (*(*this + 288))(this, 0);
    v11 = *(this + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(this + 16));
      v13 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v12;
      *&__p[12] = 2080;
      *&__p[14] = " ";
      v19 = 2080;
      v20 = v13;
      v21 = 2080;
      v22 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNo auth token stored in keychain", __p, 0x2Au);
    }
  }

  if (BYTE8(v16) == 1)
  {
    if (v15[0])
    {
      v15[1] = v15[0];
      operator delete(v15[0]);
    }
  }
}

void sub_1004D76E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (a14 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::readGBAAuthentication(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 13);
      if (v5)
      {
        *__p = 0u;
        v9 = 0u;
        sub_100004AA0(&v10, this + 1);
        v7 = v10;
        (*(*v5 + 24))(__p, v5, &v7);
        if (*(&v7 + 1))
        {
          sub_100004A34(*(&v7 + 1));
        }

        v6 = BYTE8(v9);
        if (BYTE8(v9) == 1)
        {
          (*(*this + 392))(this, __p);
          v6 = BYTE8(v9);
        }

        if ((v6 & 1) != 0 && SBYTE7(v9) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1004D7858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::addAuthDataIfNeeded_sync(uint64_t a1, uint64_t a2)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  sub_100A83334(*(a1 + 144), &v42);
  memset(&v41, 0, sizeof(v41));
  memset(&v40, 0, sizeof(v40));
  memset(&v39, 0, sizeof(v39));
  v4 = strlen("1");
  v5 = v4;
  if ((SHIBYTE(v44) & 0x8000000000000000) != 0)
  {
    if (v4 == v43)
    {
      if (v4 == -1)
      {
        sub_10013C334();
      }

      v6 = v42;
LABEL_7:
      if (!memcmp(v6, "1", v5))
      {
        goto LABEL_23;
      }
    }
  }

  else if (v4 == SHIBYTE(v44))
  {
    v6 = &v42;
    goto LABEL_7;
  }

  std::string::operator=(&v41, (*(a1 + 128) + 432));
  std::string::operator=(&v40, (*(a1 + 128) + 456));
  v7 = *(a1 + 128);
  v8 = *(v7 + 431);
  if (v8 >= 0)
  {
    v9 = *(v7 + 431);
  }

  else
  {
    v9 = *(v7 + 416);
  }

  v10 = *(v7 + 455);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v7 + 440);
  }

  if (v9 != v10 || ((v12 = (v7 + 432), v8 >= 0) ? (v13 = (v7 + 408)) : (v13 = *(v7 + 408)), (v14 = *(v7 + 432), v11 >= 0) ? (v15 = v12) : (v15 = v14), memcmp(v13, v15, v9)))
  {
    if (sub_100A8202C(*(a1 + 144)))
    {
      std::string::operator=(&v39, (*(a1 + 128) + 408));
    }
  }

LABEL_23:
  __dst = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  if (!sub_100A81F8C(*(a1 + 144)))
  {
    goto LABEL_34;
  }

  v16 = *(a1 + 128);
  if ((*(v16 + 111) & 0x8000000000000000) != 0)
  {
    if (!*(v16 + 96))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (*(v16 + 111))
  {
LABEL_28:
    sub_1001696A4(&__dst, (v16 + 88));
    v16 = *(a1 + 128);
  }

LABEL_29:
  if ((*(v16 + 135) & 0x8000000000000000) != 0)
  {
    if (!*(v16 + 120))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (*(v16 + 135))
  {
LABEL_33:
    sub_1001696A4(&v35, (v16 + 112));
  }

LABEL_34:
  LODWORD(v17) = *(a1 + 172);
  if ((v17 - 3) < 3)
  {
    goto LABEL_52;
  }

  if ((v17 - 1) >= 2)
  {
    if (v17)
    {
      goto LABEL_44;
    }

    if (*(***(a1 + 128) + 49) == 2)
    {
      LODWORD(v17) = 4;
    }

    else
    {
      v17 = *(a1 + 279);
      if (v17 < 0)
      {
        v17 = *(a1 + 264);
      }

      if (!v17)
      {
        goto LABEL_52;
      }

      LODWORD(v17) = 3;
    }

    *(a1 + 172) = v17;
LABEL_52:
    v22 = v17;
    v20 = *(a1 + 128);
    if (*(v20 + 407) < 0)
    {
      sub_100005F2C(&v23, *(v20 + 384), *(v20 + 392));
    }

    else
    {
      v23 = *(v20 + 384);
      v24 = *(v20 + 400);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v25, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v41;
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v26, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
    }

    else
    {
      v26 = v40;
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v27, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
    }

    else
    {
      v27 = v39;
    }

    if (*(a1 + 279) < 0)
    {
      sub_100005F2C(&v28, *(a1 + 256), *(a1 + 264));
    }

    else
    {
      v28 = *(a1 + 256);
      v29 = *(a1 + 272);
    }

    sub_10006F264(v30, (a1 + 280));
    v31 = *(a1 + 312);
    v32 = *(a1 + 320);
    v33[0] = 0;
    v33[24] = 0;
    v34[0] = 0;
    v34[24] = 0;
    v19 = sub_10053A478(a2, &v22);
    sub_1004EDD68(&v22);
    sub_10053BC08(a2);
    goto LABEL_68;
  }

  v18 = *(a1 + 176);
  if (v18 == 2)
  {
LABEL_39:
    v22 = *(a1 + 172);
    if (*(a1 + 231) < 0)
    {
      sub_100005F2C(&v23, *(a1 + 208), *(a1 + 216));
    }

    else
    {
      v23 = *(a1 + 208);
      v24 = *(a1 + 224);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v25, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v41;
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v26, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
    }

    else
    {
      v26 = v40;
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v27, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
    }

    else
    {
      v27 = v39;
    }

    if (*(a1 + 255) < 0)
    {
      sub_100005F2C(&v28, *(a1 + 232), *(a1 + 240));
    }

    else
    {
      v28 = *(a1 + 232);
      v29 = *(a1 + 248);
    }

    v30[0] = 0;
    v30[24] = 0;
    LOBYTE(v31) = 0;
    v32 = 0;
    sub_10006F264(v33, &__dst);
    sub_10006F264(v34, &v35);
    v19 = sub_10053A478(a2, &v22);
    sub_1004EDD68(&v22);
    sub_10053BC08(a2);
    goto LABEL_68;
  }

  if (v18 != 1)
  {
    if (!v18)
    {
      goto LABEL_39;
    }

LABEL_44:
    v19 = 1;
    goto LABEL_68;
  }

  v19 = sub_10053B944(a2, (a1 + 464), (a1 + 488));
  if (*(a1 + 487) < 0)
  {
    **(a1 + 464) = 0;
    *(a1 + 472) = 0;
  }

  else
  {
    *(a1 + 464) = 0;
    *(a1 + 487) = 0;
  }

  if (*(a1 + 511) < 0)
  {
    **(a1 + 488) = 0;
    *(a1 + 496) = 0;
  }

  else
  {
    *(a1 + 488) = 0;
    *(a1 + 511) = 0;
  }

  sub_10053B8BC(a2);
LABEL_68:
  if (BYTE8(v36) == 1 && SBYTE7(v36) < 0)
  {
    operator delete(v35);
  }

  if (BYTE8(v38) == 1 && SBYTE7(v38) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }

  return v19;
}

void sub_1004D7E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v55 - 168) == 1 && *(v55 - 169) < 0)
  {
    operator delete(*(v55 - 192));
  }

  if (*(v55 - 136) == 1 && *(v55 - 137) < 0)
  {
    operator delete(*(v55 - 160));
  }

  if (*(v55 - 105) < 0)
  {
    operator delete(*(v55 - 128));
  }

  if (*(v55 - 81) < 0)
  {
    operator delete(*(v55 - 104));
  }

  if (*(v55 - 57) < 0)
  {
    operator delete(*(v55 - 80));
  }

  if (*(v55 - 33) < 0)
  {
    operator delete(*(v55 - 56));
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::queryEntitlements(uint64_t a1, uint64_t *a2, void *a3)
{
  entitlements::CEHTTPDriver::queryEntitlements_sync(a1, a2, a3);

  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
}

void entitlements::CEHTTPDriver::queryEntitlements_sync(uint64_t a1, uint64_t *a2, void *a3)
{
  v24 = 0;
  ctu::ns::AutoPool::AutoPool(&v24);
  v6 = sub_1008374DC(*(a1 + 144));
  v7 = sub_100A8209C(*(a1 + 144));
  v8 = v6 | 5;
  if (!v7)
  {
    v8 = v6;
  }

  v23 = *a3 & v8;
  if ((v23 & 0x7FFFFF) != 0)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v21);
    if (v22)
    {
      sub_100004A34(v22);
    }

    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(***(a1 + 128));
      v11 = *(a1 + 160);
      sub_100072374(&v23, __p);
      v12 = v20 >= 0 ? __p : __p[0];
      *buf = 136316162;
      v26 = v10;
      v27 = 2080;
      v28 = " ";
      v29 = 2080;
      v30 = v11;
      v31 = 2080;
      v32 = "";
      v33 = 2082;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%squeryEntitlements_sync with %{public}s", buf, 0x34u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v13 = sub_100531A7C(&v23);
    v14 = *(a1 + 608);
    if (v14)
    {
      v13 = sub_100538EC8(v14, v13);
    }

    v15 = sub_100536380(*(a1 + 648), v13);
    if (v15)
    {
      entitlements::CEHTTPDriver::applyActionPolicy(a1, v15, a2);
    }

    else
    {
      sub_100537494(*(a1 + 648), &v23);
    }
  }

  else
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = PersonalityInfo::logPrefix(***(a1 + 128));
      v18 = *(a1 + 160);
      *buf = 136315906;
      v26 = v17;
      v27 = 2080;
      v28 = " ";
      v29 = 2080;
      v30 = v18;
      v31 = 2080;
      v32 = "";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sNo entitlements to query", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v24);
}

void sub_1004D8240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 648);
  v6 = *(v5 + 120);
  if ((v6 & 0x100000000) != 0)
  {
    if (v6 != a2)
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = PersonalityInfo::logPrefix(***(a1 + 128));
        v10 = *(a1 + 160);
        if (a2 == -1)
        {
          v11 = "-";
        }

        else
        {
          v11 = sub_10006EE44(a2);
        }

        v12 = *(*(a1 + 648) + 120);
        if ((v12 & 0x100000000) != 0)
        {
          v13 = sub_10006EE44(v12);
        }

        else
        {
          v13 = "-";
        }

        *buf = 136316418;
        v16 = v9;
        v17 = 2080;
        v18 = " ";
        v19 = 2080;
        v20 = v10;
        v21 = 2080;
        v22 = "";
        v23 = 2080;
        v24 = v11;
        v25 = 2080;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAdding new pending query because I am:%s. Existing query dedicated to:%s", buf, 0x3Eu);
      }

      entitlements::CEHTTPDriver::addNewPendingQuery();
    }
  }

  else
  {
    sub_1005358AC(v5);
  }

  v14 = *(a1 + 656);
  *a3 = *(a1 + 648);
  a3[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }
}

void entitlements::CEHTTPDriver::applyActionPolicy(void *result, void *a2, uint64_t *a3)
{
  v6 = *a3;
  if (*(*a3 + 16) == 1 && *(v6 + 12))
  {
    [a2 setAttemptsLimit:?];
    v6 = *a3;
  }

  if (*(v6 + 2) == 1)
  {
    [a2 setBootstrapDataAllowed:1];
    v6 = *a3;
  }

  if (*v6 == 1 && sub_100A836FC(*(result + 18)))
  {
    [a2 setNeedSecureIntent:1];
  }

  v7 = *a3;
  if (*(*a3 + 1) == 1)
  {
    [a2 setFullAuthenticationNeeded];
    v7 = *a3;
  }

  if (*(v7 + 48) == 1)
  {
    v8 = *(result + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(***(result + 16));
      v10 = *(result + 20);
      v14 = 136315906;
      v15 = v9;
      v16 = 2080;
      v17 = " ";
      v18 = 2080;
      v19 = v10;
      v20 = 2080;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sblind signature provided for authentication!!!", &v14, 0x2Au);
      v7 = *a3;
    }

    LOBYTE(v14) = 0;
    BYTE4(v15) = 0;
    (*(*result + 264))(result, v7 + 24, v7 + 56, &v14);
    v7 = *a3;
  }

  if (*(v7 + 8) == 1 && *(v7 + 4))
  {
    [a2 setCancelationTimestampInSecond:?];
    entitlements::CEHTTPDriver::checkPendingQueriesCancelation(result);
    v7 = *a3;
  }

  if (*(v7 + 3) == 1)
  {
    v11 = *(result + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(result + 16));
      v13 = *(result + 20);
      v14 = 136315906;
      v15 = v12;
      v16 = 2080;
      v17 = " ";
      v18 = 2080;
      v19 = v13;
      v20 = 2080;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sforced action added!!!", &v14, 0x2Au);
    }

    *(result + 737) = 1;
    [a2 setUserInitiated:1];
    (*(*result + 344))(result, 0);
  }
}

BOOL entitlements::CEHTTPDriver::setEntitlements(uint64_t a1, void *a2)
{
  v3 = entitlements::CEHTTPDriver::setEntitlements_sync(a1, a2);
  if (v3)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return v3;
}

BOOL entitlements::CEHTTPDriver::setEntitlements_sync(uint64_t a1, void *a2)
{
  v13 = 0;
  ctu::ns::AutoPool::AutoPool(&v13);
  v4 = *a2 & 0x7FFFFFLL;
  if (v4)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v11);
    if (v12)
    {
      sub_100004A34(v12);
    }

    v5 = sub_100531B28(a2);
    v6 = *(a1 + 608);
    if (v6)
    {
      v5 = sub_100538F40(v6, v5);
    }

    sub_1005363F8(*(a1 + 648), v5);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(***(a1 + 128));
      v9 = *(a1 + 160);
      *buf = 136315906;
      v15 = v8;
      v16 = 2080;
      v17 = " ";
      v18 = 2080;
      v19 = v9;
      v20 = 2080;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sNo entitlements to query", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v13);
  return v4 != 0;
}

void sub_1004D8868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::getProvisioning(uint64_t a1, void *a2)
{
  Provisioning_sync = entitlements::CEHTTPDriver::getProvisioning_sync(a1, a2);
  if (Provisioning_sync)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return Provisioning_sync;
}

BOOL entitlements::CEHTTPDriver::getProvisioning_sync(uint64_t a1, void *a2)
{
  v13 = 0;
  ctu::ns::AutoPool::AutoPool(&v13);
  v4 = *a2 & 0x7FFFFFLL;
  if (v4)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v11);
    if (v12)
    {
      sub_100004A34(v12);
    }

    v5 = sub_100531B28(a2);
    v6 = *(a1 + 608);
    if (v6)
    {
      v5 = sub_100538FB8(v6, v5);
    }

    sub_100536470(*(a1 + 648), v5);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(***(a1 + 128));
      v9 = *(a1 + 160);
      *buf = 136315906;
      v15 = v8;
      v16 = 2080;
      v17 = " ";
      v18 = 2080;
      v19 = v9;
      v20 = 2080;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sempty get provisioning request", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v13);
  return v4 != 0;
}

void sub_1004D8A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::setProvisioning(uint64_t a1, void *a2)
{
  v3 = entitlements::CEHTTPDriver::setProvisioning_sync(a1, a2);
  if (v3)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return v3;
}

BOOL entitlements::CEHTTPDriver::setProvisioning_sync(uint64_t a1, void *a2)
{
  v13 = 0;
  ctu::ns::AutoPool::AutoPool(&v13);
  v4 = a2[2];
  if (v4)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, *(*a2 + 32), &v11);
    if (v12)
    {
      sub_100004A34(v12);
    }

    v5 = sub_100531BE8(a2);
    v6 = *(a1 + 608);
    if (v6)
    {
      v5 = sub_100539030(v6, v5);
    }

    sub_1005364E8(*(a1 + 648), v5);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(***(a1 + 128));
      v9 = *(a1 + 160);
      *buf = 136315906;
      v15 = v8;
      v16 = 2080;
      v17 = " ";
      v18 = 2080;
      v19 = v9;
      v20 = 2080;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sempty set provisioning request", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v13);
  return v4 != 0;
}

void sub_1004D8BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::getRegisteredLocationStatus(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(a1 + 128));
    v10 = *(a1 + 160);
    sub_100072374(a4, __p);
    v11 = v15 >= 0 ? __p : __p[0];
    *buf = 136316162;
    v17 = v9;
    v18 = 2080;
    v19 = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = "";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sgetRegisteredLocationStatus with %s", buf, 0x34u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  RegisteredLocationStatus_sync = entitlements::CEHTTPDriver::getRegisteredLocationStatus_sync(a1, a2, a3);
  if (RegisteredLocationStatus_sync)
  {
    if ((*a4 & 0x7FFFFF) != 0)
    {
      entitlements::CEHTTPDriver::queryEntitlements_sync(a1, a2, a4);
    }

    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return RegisteredLocationStatus_sync;
}

BOOL entitlements::CEHTTPDriver::getRegisteredLocationStatus_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v20 = 0;
  ctu::ns::AutoPool::AutoPool(&v20);
  sub_100A83334(*(a1 + 144), __s1);
  v6 = strlen("1");
  if ((__s1[23] & 0x8000000000000000) != 0)
  {
    if (v6 == *&__s1[8])
    {
      if (v6 == -1)
      {
        sub_10013C334();
      }

      v8 = *__s1;
      v7 = memcmp(*__s1, "1", v6) == 0;
    }

    else
    {
      v7 = 0;
      v8 = *__s1;
    }

    operator delete(v8);
  }

  else
  {
    v7 = v6 == __s1[23] && memcmp(__s1, "1", v6) == 0;
  }

  v9 = sub_100A3C8F4(a3, !v7);
  if (v9)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v18);
    if (v19)
    {
      sub_100004A34(v19);
    }

    if (v7)
    {
      v10 = *(a1 + 128);
      if (*(v10 + 455) < 0)
      {
        sub_100005F2C(__s1, *(v10 + 432), *(v10 + 440));
      }

      else
      {
        *__s1 = *(v10 + 432);
        *&__s1[16] = *(v10 + 448);
      }
    }

    else
    {
      memset(__s1, 0, sizeof(__s1));
    }

    v14 = sub_100532024(a3, v7, __s1);
    if ((__s1[23] & 0x80000000) != 0)
    {
      operator delete(*__s1);
    }

    v15 = *(a1 + 608);
    if (v15)
    {
      v14 = sub_100539794(v15, v14);
    }

    v16 = sub_100539720(*(a1 + 648), v14);
    entitlements::CEHTTPDriver::applyActionPolicy(a1, v16, a2);
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(a1 + 128));
      v13 = *(a1 + 160);
      *__s1 = 136315906;
      *&__s1[4] = v12;
      *&__s1[12] = 2080;
      *&__s1[14] = " ";
      *&__s1[22] = 2080;
      v22 = v13;
      v23 = 2080;
      v24 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sGet registration location status is not valid", __s1, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v20);
  return v9;
}

uint64_t entitlements::CEHTTPDriver::enablePushNotification(uint64_t a1, uint64_t *a2)
{
  memset(v5, 0, sizeof(v5));
  sub_1003FB24C(v5, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
  v3 = entitlements::CEHTTPDriver::enablePushNotification_sync(a1, v5);
  v6 = v5;
  sub_1003EAC3C(&v6);
  if (v3)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return v3;
}

void sub_1004D90C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003EAC3C(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::enablePushNotification_sync(uint64_t a1, int **a2)
{
  v19 = 0;
  ctu::ns::AutoPool::AutoPool(&v19);
  v4 = sub_100A3E238(a2);
  if (v4)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v17);
    if (v18)
    {
      sub_100004A34(v18);
    }

    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(a1 + 128));
      v7 = *(a1 + 160);
      sub_100A42054(a2, __p);
      v8 = v16 >= 0 ? __p : __p[0];
      *buf = 136316162;
      v21 = v6;
      v22 = 2080;
      v23 = " ";
      v24 = 2080;
      v25 = v7;
      v26 = 2080;
      v27 = "";
      v28 = 2080;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAdding enable push notification with %s", buf, 0x34u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_1005324F4(a2);
    v10 = *(a1 + 608);
    if (v10)
    {
      v9 = sub_100539804(v10, v9);
    }

    sub_100536E30(*(a1 + 648), v9);
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(a1 + 128));
      v13 = *(a1 + 160);
      *buf = 136315906;
      v21 = v12;
      v22 = 2080;
      v23 = " ";
      v24 = 2080;
      v25 = v13;
      v26 = 2080;
      v27 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sEnable push notificaiton request is not valid", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v19);
  return v4;
}

void sub_1004D9308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::disablePushNotification(uint64_t a1, uint64_t *a2)
{
  memset(v5, 0, sizeof(v5));
  sub_1003FBC44(v5, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  v3 = entitlements::CEHTTPDriver::disablePushNotification_sync(a1, v5);
  v6 = v5;
  sub_1003EAD54(&v6);
  if (v3)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return v3;
}

void sub_1004D93C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003EAD54(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::disablePushNotification_sync(uint64_t a1, int **a2)
{
  v19 = 0;
  ctu::ns::AutoPool::AutoPool(&v19);
  v4 = sub_100A3E27C(a2);
  if (v4)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v17);
    if (v18)
    {
      sub_100004A34(v18);
    }

    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(a1 + 128));
      v7 = *(a1 + 160);
      sub_100A421E0(a2, __p);
      v8 = v16 >= 0 ? __p : __p[0];
      *buf = 136316162;
      v21 = v6;
      v22 = 2080;
      v23 = " ";
      v24 = 2080;
      v25 = v7;
      v26 = 2080;
      v27 = "";
      v28 = 2080;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAdding disable push notification with %s", buf, 0x34u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_1005328D4(a2);
    v10 = *(a1 + 608);
    if (v10)
    {
      v9 = sub_100539904(v10, v9);
    }

    sub_100539884(*(a1 + 648), v9);
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(a1 + 128));
      v13 = *(a1 + 160);
      *buf = 136315906;
      v21 = v12;
      v22 = 2080;
      v23 = " ";
      v24 = 2080;
      v25 = v13;
      v26 = 2080;
      v27 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sDisable push notificaiton request is not valid", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v19);
  return v4;
}

void sub_1004D9600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::queryPhoneNumber(uint64_t a1, uint64_t ***a2)
{
  entitlements::CEHTTPDriver::queryPhoneNumber_sync(a1, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::queryPhoneNumber_sync(uint64_t a1, uint64_t ***a2)
{
  v9 = 0;
  ctu::ns::AutoPool::AutoPool(&v9);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v4 = sub_100532B1C(a2);
  v5 = *(a1 + 608);
  if (v5)
  {
    v4 = sub_1005399FC(v5, v4);
  }

  sub_100539984(*(a1 + 648), v4);
  ctu::ns::AutoPool::~AutoPool(&v9);
  return 1;
}

void sub_1004D96E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::hasActionOfType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 608);
  if (v4)
  {
    v5 = sub_10053588C(v4, a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1 + 624;
  for (i = *(a1 + 632); i != v6; i = *(i + 8))
  {
    if (sub_10053588C(*(i + 16), v2))
    {
      return v6 != i || v5;
    }
  }

  i = v6;
  return v6 != i || v5;
}

uint64_t entitlements::CEHTTPDriver::queryAccountSubscriptionAndUsageStatus(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  entitlements::CEHTTPDriver::queryAccountSubscriptionAndUsageStatus_sync(a1, a2, a3, a4);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::queryAccountSubscriptionAndUsageStatus_sync(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v8 = sub_10053A274(a1[81], v5, v4);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004D9834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::queryVVMAccountStatus(uint64_t a1, void *a2)
{
  entitlements::CEHTTPDriver::queryVVMAccountStatus_sync(a1, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::queryVVMAccountStatus_sync(uint64_t a1, void *a2)
{
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_10053BC8C(*(a1 + 648), a2);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::updatePushToken(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if ((a4 & 1) != 0 || (*(a1 + 416) & 1) == 0)
  {
    *(a1 + 416) = 0;
    if (entitlements::CEHTTPDriver::updatePushToken_sync(a1, a2))
    {
      sub_100070A80();
    }
  }

  return 0;
}

void sub_1004D99C8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_100270CFC(va);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::updatePushToken_sync(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    *buf = 0;
    ctu::ns::AutoPool::AutoPool(buf);
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v11);
    if (v12)
    {
      sub_100004A34(v12);
    }

    v5 = sub_100532BC8(a2);
    v6 = *(a1 + 608);
    if (v6)
    {
      v5 = sub_100539AE4(v6, v5);
    }

    sub_100539A6C(*(a1 + 648), v5);
    ctu::ns::AutoPool::~AutoPool(buf);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(***(a1 + 128));
      v9 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v8;
      v14 = 2080;
      v15 = " ";
      v16 = 2080;
      v17 = v9;
      v18 = 2080;
      v19 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sempty token", buf, 0x2Au);
    }
  }

  return v3 != 0;
}

void sub_1004D9B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::getSIMStatus(uint64_t a1, uint64_t *a2, entitlements::GetSIMStatusRequest *a3)
{
  SIMStatus_sync = entitlements::CEHTTPDriver::getSIMStatus_sync(a1, a2, a3);
  if (SIMStatus_sync)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return SIMStatus_sync;
}

BOOL entitlements::CEHTTPDriver::getSIMStatus_sync(uint64_t a1, uint64_t *a2, entitlements::GetSIMStatusRequest *this)
{
  v6 = entitlements::GetSIMStatusRequest::valid(this);
  if (v6)
  {
    *buf = 0;
    ctu::ns::AutoPool::AutoPool(buf);
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v14);
    if (v15)
    {
      sub_100004A34(v15);
    }

    v7 = sub_100532C44(this);
    v8 = *(a1 + 608);
    if (v8)
    {
      v7 = sub_100539BC8(v8, v7);
    }

    v9 = sub_100539B54(*(a1 + 648), v7);
    entitlements::CEHTTPDriver::applyActionPolicy(a1, v9, a2);
    ctu::ns::AutoPool::~AutoPool(buf);
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 128));
      v12 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v11;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v12;
      v21 = 2080;
      v22 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sempty iccid", buf, 0x2Au);
    }
  }

  return v6;
}

void sub_1004D9D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::signUpForSIMService(uint64_t a1, uint64_t *a2, entitlements::SignUpSIMRequest *a3)
{
  v4 = entitlements::CEHTTPDriver::signUpForSIMService_sync(a1, a2, a3);
  if (v4)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return v4;
}

BOOL entitlements::CEHTTPDriver::signUpForSIMService_sync(uint64_t a1, uint64_t *a2, entitlements::SignUpSIMRequest *this)
{
  v6 = entitlements::SignUpSIMRequest::valid(this);
  if (v6)
  {
    *buf = 0;
    ctu::ns::AutoPool::AutoPool(buf);
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v14);
    if (v15)
    {
      sub_100004A34(v15);
    }

    v7 = sub_100533294(this);
    v8 = *(a1 + 608);
    if (v8)
    {
      v7 = sub_100539CAC(v8, v7);
    }

    v9 = sub_100539C38(*(a1 + 648), v7);
    entitlements::CEHTTPDriver::applyActionPolicy(a1, v9, a2);
    ctu::ns::AutoPool::~AutoPool(buf);
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 128));
      v12 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v11;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v12;
      v21 = 2080;
      v22 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%ssignUpForSIMService request is not valid", buf, 0x2Au);
    }
  }

  return v6;
}

void sub_1004D9EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getGeofenceData(void *a1, uint64_t *a2, uint64_t **a3)
{
  entitlements::CEHTTPDriver::getGeofenceData_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getGeofenceData_sync(void *a1, uint64_t *a2, uint64_t **a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = sub_100533944(a3);
  v7 = a1[76];
  if (v7)
  {
    v6 = sub_100538BAC(v7, v6);
  }

  v8 = sub_100538B38(a1[81], v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004D9FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getSigningKeys(void *a1, uint64_t *a2, uint64_t **a3)
{
  entitlements::CEHTTPDriver::getSigningKeys_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getSigningKeys_sync(void *a1, uint64_t *a2, uint64_t **a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = sub_100533A68(a3);
  v7 = a1[76];
  if (v7)
  {
    v6 = sub_100538C90(v7, v6);
  }

  v8 = sub_100538C1C(a1[81], v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004DA0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getBlindSignatures(void *a1, uint64_t *a2, uint64_t ***a3)
{
  entitlements::CEHTTPDriver::getBlindSignatures_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getBlindSignatures_sync(void *a1, uint64_t *a2, uint64_t ***a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = sub_100533B18(a3);
  v7 = a1[76];
  if (v7)
  {
    v6 = sub_100538D74(v7, v6);
  }

  v8 = sub_100538D00(a1[81], v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004DA1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::enableService(void *a1, uint64_t *a2, uint64_t *a3)
{
  entitlements::CEHTTPDriver::enableService_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::enableService_sync(void *a1, uint64_t *a2, uint64_t *a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = sub_100533CC8(a3);
  v7 = a1[76];
  if (v7)
  {
    v6 = sub_100538E58(v7, v6);
  }

  v8 = sub_100538DE4(a1[81], v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004DA29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getCarrierAuthNonce(void *a1, uint64_t *a2)
{
  entitlements::CEHTTPDriver::getCarrierAuthNonce_sync(a1, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getCarrierAuthNonce_sync(void *a1, uint64_t *a2)
{
  v9 = 0;
  ctu::ns::AutoPool::AutoPool(&v9);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v4 = a1[76];
  if (!v4 || !sub_10053588C(v4, 16))
  {
    v5 = sub_100539D1C(a1[81]);
    entitlements::CEHTTPDriver::applyActionPolicy(a1, v5, a2);
  }

  ctu::ns::AutoPool::~AutoPool(&v9);
  return 1;
}

void sub_1004DA374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::authenticateTrustFlag(void *a1, uint64_t *a2, uint64_t a3)
{
  entitlements::CEHTTPDriver::authenticateTrustFlag_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::authenticateTrustFlag_sync(void *a1, uint64_t *a2, uint64_t a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = sub_100533E3C(a3);
  v7 = a1[76];
  if (v7)
  {
    v6 = sub_100539DF8(v7, v6);
  }

  v8 = sub_100539D84(a1[81], v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004DA460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::transferSIMService(void *a1, uint64_t *a2, uint64_t a3)
{
  entitlements::CEHTTPDriver::transferSIMService_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::transferSIMService_sync(void *a1, uint64_t *a2, uint64_t a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = codec::toJSONObject(a3);
  v7 = a1[76];
  if (v7)
  {
    v6 = sub_100539F50(v7, v6);
  }

  v8 = sub_100539E68(a1[81], v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004DA54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::transferAuthorization(void *a1, uint64_t *a2, uint64_t a3)
{
  entitlements::CEHTTPDriver::transferAuthorization_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::transferAuthorization_sync(void *a1, uint64_t *a2, uint64_t a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = codec::toJSONObject(a3);
  v7 = a1[76];
  if (v7)
  {
    v6 = sub_100539FC0(v7, v6);
  }

  v8 = sub_100539EDC(a1[81], v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004DA638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::getIDSTrustToken(uint64_t a1, uint64_t *a2, const void **a3)
{
  if (objc_opt_class() && (v6 = dispatch_queue_create("com.apple.CommCenter.ent.ids_auth", 0)) != 0)
  {
    v7 = v6;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3052000000;
    v24 = sub_1004DA97C;
    v25 = sub_1004DA98C;
    v26 = [[IDSPhoneCertificateVendor alloc] initWithQueue:v6];
    if (v22[5])
    {
      if (*(***(a1 + 128) + 52) == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      v9 = [IDSCarrierTokenRequestParameters alloc];
      v10 = *(a1 + 128);
      v11 = (v10 + 16);
      if (*(v10 + 39) < 0)
      {
        v11 = *v11;
      }

      v12 = [NSString stringWithUTF8String:v11];
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      v14 = [v9 initWithSubscriptionSource:v8 IMEI:v12 carrierNonce:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v13)}];
      if (*a3)
      {
        v15 = _Block_copy(*a3);
      }

      else
      {
        v15 = 0;
      }

      v16 = v22[5];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3321888768;
      v18[2] = sub_1004DA998;
      v18[3] = &unk_101E518B8;
      v18[5] = a1;
      if (v15)
      {
        v17 = _Block_copy(v15);
      }

      else
      {
        v17 = 0;
      }

      aBlock = v17;
      v18[4] = &v21;
      [v16 requestCarrierTokenWithParameters:v14 completion:v18];
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v15)
      {
        _Block_release(v15);
      }
    }

    else
    {
      v20 = 0;
      sub_1004DA8F0(a3);
    }

    _Block_object_dispose(&v21, 8);
    dispatch_release(v7);
  }

  else
  {
    LOBYTE(v21) = 0;
    sub_1004DA8F0(a3);
  }
}

void sub_1004DA88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  dispatch_release(v16);
  _Unwind_Resume(a1);
}

void sub_1004DA954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a9 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004DA998(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[5];
  v7 = *(v6 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(v6 + 128));
    v9 = *(v6 + 160);
    *__p = 136316162;
    *&__p[4] = v8;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v9;
    v15 = 2080;
    v16 = "";
    v17 = 1024;
    v18 = a3 == 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sDone request IDS token: %d", __p, 0x30u);
  }

  if (a3 || ![objc_msgSend(a2 "tokenString")])
  {
    __p[0] = 0;
    sub_1004DA8F0((a1 + 6));
  }

  else
  {
    sub_10000501C(__p, [objc_msgSend(a2 "tokenString")]);
    sub_1004DAB34(a1 + 6, __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*__p);
    }
  }
}

void sub_1004DAB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004DAB34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *__p = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(v2 + 16))();
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004DABA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a9 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004DABD0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 48) = result;
  return result;
}

void sub_1004DAC04(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t entitlements::CEHTTPDriver::getPreferredRoamingNetworks(entitlements::CEHTTPDriver *this)
{
  entitlements::CEHTTPDriver::getPreferredRoamingNetworks_sync(this);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getPreferredRoamingNetworks_sync(entitlements::CEHTTPDriver *this)
{
  v6 = 0;
  ctu::ns::AutoPool::AutoPool(&v6);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(this, -1, &v4);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v2 = *(this + 76);
  if (!v2 || !sub_10053588C(v2, 19))
  {
    sub_10053A030(*(this + 81));
  }

  ctu::ns::AutoPool::~AutoPool(&v6);
  return 1;
}

void sub_1004DACD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getPSDeviceList(entitlements::CEHTTPDriver *this)
{
  entitlements::CEHTTPDriver::getPSDeviceList_sync(this);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getPSDeviceList_sync(entitlements::CEHTTPDriver *this)
{
  v6 = 0;
  ctu::ns::AutoPool::AutoPool(&v6);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(this, -1, &v4);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v2 = *(this + 76);
  if (!v2 || !sub_10053588C(v2, 8))
  {
    sub_10053A09C(*(this + 81));
  }

  ctu::ns::AutoPool::~AutoPool(&v6);
  return 1;
}

void sub_1004DAD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getCarrierSpaceUpdates(uint64_t a1, id *a2)
{
  entitlements::CEHTTPDriver::getCarrierSpaceUpdates_sync(a1, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getCarrierSpaceUpdates_sync(uint64_t a1, id *a2)
{
  v9 = 0;
  ctu::ns::AutoPool::AutoPool(&v9);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v4 = sub_100534000(a2);
  v5 = *(a1 + 608);
  if (v5)
  {
    v4 = sub_10053A188(v5, 9, v4);
  }

  sub_10053A108(*(a1 + 648), 9, v4, 0);
  ctu::ns::AutoPool::~AutoPool(&v9);
  return 1;
}

void sub_1004DAE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::updateAccountWithFeatureOrService(uint64_t a1, id *a2)
{
  entitlements::CEHTTPDriver::updateAccountWithFeatureOrService_sync(a1, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::updateAccountWithFeatureOrService_sync(uint64_t a1, id *a2)
{
  v8 = 0;
  ctu::ns::AutoPool::AutoPool(&v8);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v4 = sub_100534000(a2);
  sub_10053A1F4(*(a1 + 648), 10, v4, 0);
  ctu::ns::AutoPool::~AutoPool(&v8);
  return 1;
}

void sub_1004DAF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getAuthorizationTokens(void *a1, uint64_t *a2, int **a3)
{
  v13 = 0;
  ctu::ns::AutoPool::AutoPool(&v13);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v11);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v7 = a1[81];
  v8 = sub_10053402C(a3, v6);
  v9 = sub_100536F38(v7, v8);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v9, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  ctu::ns::AutoPool::~AutoPool(&v13);
  return 1;
}

void sub_1004DAFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::issueGenericRequestGET(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v11 = 0;
  ctu::ns::AutoPool::AutoPool(&v11);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v6 = sub_100534000(a3);
  v7 = *(a1 + 608);
  if (v7)
  {
    v6 = sub_10053A188(v7, v4, v6);
  }

  sub_10053A108(*(a1 + 648), v4, v6, *(a3 + 8));
  ctu::ns::AutoPool::~AutoPool(&v11);
  return 1;
}

void sub_1004DB094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::issueGenericRequestSET(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v11 = 0;
  ctu::ns::AutoPool::AutoPool(&v11);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v6 = sub_100534000(a3);
  v7 = *(a1 + 608);
  if (v7)
  {
    v6 = sub_10053A188(v7, v4, v6);
  }

  sub_10053A1F4(*(a1 + 648), v4, v6, *(a3 + 8));
  ctu::ns::AutoPool::~AutoPool(&v11);
  return 1;
}

void sub_1004DB148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::handleDataContextError_sync(uint64_t result, uint64_t a2)
{
  v2 = ***(result + 128);
  if (!*(v2 + 49) && *a2 == *(v2 + 52) && (*(a2 + 9) & 0x80) != 0)
  {
    v4 = *(result + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(v2);
      v6 = *(result + 160);
      toString();
      if (v9 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136316162;
      v11 = v5;
      v12 = 2080;
      v13 = " ";
      v14 = 2080;
      v15 = v6;
      v16 = 2080;
      v17 = "";
      v18 = 2080;
      v19 = p_p;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sActivation of Dedicated APN seems to fail '%s', try to retry later.", buf, 0x34u);
      if (v9 < 0)
      {
        operator delete(__p);
      }
    }

    entitlements::CEHTTPDriver::connectionIssueNeedToBackoff(result);
  }
}

void entitlements::CEHTTPDriver::connectionIssueNeedToBackoff(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 100) + 1;
  *(this + 100) = v2;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(***(this + 16));
    v5 = *(this + 20);
    v6 = *(this + 100);
    *buf = 136316162;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = v5;
    v26 = 2080;
    v27 = "";
    v28 = 1024;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sConnection reported failure on one of actions, fConnectionErrorBackoffCnt = %d", buf, 0x30u);
    v2 = *(this + 100);
    v3 = *(this + 5);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(this + 16));
    v8 = *(this + 20);
    *buf = 136316162;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = v8;
    v26 = 2080;
    v27 = "";
    v28 = 1024;
    v29 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sengaging %u seconds block on communication", buf, 0x30u);
  }

  sub_100004AA0(buf, this + 1);
  v10 = *buf;
  v9 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }

  Registry::getTimerService(buf, *(this + 6));
  v11 = *buf;
  sub_10000501C(__p, "connection initiated backoff");
  v12 = *(this + 3);
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3321888768;
  aBlock[2] = sub_1004E39C8;
  aBlock[3] = &unk_101E518E8;
  aBlock[4] = this;
  aBlock[5] = v10;
  v17 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = _Block_copy(aBlock);
  sub_100D23364(v11, __p, 1, 1000000 * v2, &object, &v18);
  v13 = v22;
  v22 = 0;
  v14 = *(this + 51);
  *(this + 51) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v22;
    v22 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  if (v18)
  {
    _Block_release(v18);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_1004DB5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::handleConnectionStateChange_sync(uint64_t result, uint64_t a2)
{
  v2 = ***(result + 128);
  if (!*(v2 + 49))
  {
    v6 = *(a2 + 8);
    v4 = a2 + 8;
    v5 = v6;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = *(v2 + 52);
    v8 = v4;
    do
    {
      if (*(v5 + 32) >= v7)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < v7));
    }

    while (v5);
    if (v8 == v4 || v7 < *(v8 + 32))
    {
LABEL_10:
      v8 = v4;
    }

    v9 = *(result + 792);
    if (v9)
    {
      v10 = *(v2 + 52);
      v11 = result + 792;
      do
      {
        if (*(v9 + 32) >= v10)
        {
          v11 = v9;
        }

        v9 = *(v9 + 8 * (*(v9 + 32) < v10));
      }

      while (v9);
      if (v11 != result + 792 && v10 >= *(v11 + 32))
      {
        v14 = *(v11 + 48);
        v12 = v11 + 48;
        v13 = v14;
        if (v14)
        {
          v15 = v12;
          do
          {
            if (*(v13 + 32) >= 15)
            {
              v15 = v13;
            }

            v13 = *(v13 + 8 * (*(v13 + 32) < 15));
          }

          while (v13);
          if (v15 != v12 && *(v15 + 32) <= 15)
          {
            v16 = *(v15 + 44);
            if (v8 == v4)
            {
              goto LABEL_34;
            }

            v19 = *(v8 + 48);
            v17 = v8 + 48;
            v18 = v19;
            if (!v19)
            {
              goto LABEL_34;
            }

            v20 = v17;
            do
            {
              if (*(v18 + 32) >= 15)
              {
                v20 = v18;
              }

              v18 = *(v18 + 8 * (*(v18 + 32) < 15));
            }

            while (v18);
            if (v20 == v17 || *(v20 + 32) > 15)
            {
LABEL_34:
              v21 = 0;
            }

            else
            {
              v21 = *(v20 + 44) == 2;
            }

            if (v16 == 2 && !v21)
            {
              sub_1009C43FC(result, "connection activation");
              v22 = *(result + 40);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = PersonalityInfo::logPrefix(***(result + 128));
                v24 = *(result + 160);
                v25 = 136315906;
                v26 = v23;
                v27 = 2080;
                v28 = " ";
                v29 = 2080;
                v30 = v24;
                v31 = 2080;
                v32 = "";
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sInitiate pending query on context activate", &v25, 0x2Au);
              }

              entitlements::CEHTTPDriver::sendRequestIfPending_sync(result);
            }
          }
        }
      }
    }
  }
}

void entitlements::CEHTTPDriver::handleDataAttached_sync(uint64_t this)
{
  v1 = ***(this + 128);
  if (!*(v1 + 49))
  {
    v3 = *(this + 816);
    if (v3)
    {
      v4 = *(v1 + 52);
      v5 = this + 816;
      do
      {
        if (*(v3 + 28) >= v4)
        {
          v5 = v3;
        }

        v3 = *(v3 + 8 * (*(v3 + 28) < v4));
      }

      while (v3);
      if (v5 != this + 816 && v4 >= *(v5 + 28) && *(v5 + 32) == 1)
      {
        sub_1009C18B8(this, "Became data attached", 0);
        v6 = *(this + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = PersonalityInfo::logPrefix(***(this + 128));
          v8 = *(this + 160);
          v9 = 136315906;
          v10 = v7;
          v11 = 2080;
          v12 = " ";
          v13 = 2080;
          v14 = v8;
          v15 = 2080;
          v16 = "";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sBecame data attached, issuing any pending transactions", &v9, 0x2Au);
        }

        entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
      }
    }
  }
}

unint64_t entitlements::CEHTTPDriver::postprocessAuthResponse(uint64_t a1, uint64_t a2)
{
  if (sub_10053588C(*(a1 + 608), 28))
  {
    if (*(a1 + 536) == 1)
    {
      if (*(a1 + 535) < 0)
      {
        operator delete(*(a1 + 512));
      }

      *(a1 + 536) = 0;
    }

    v5 = *(*a2 + 448);
    v4 = *(*a2 + 456);
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!sub_10053588C(*(a1 + 608), 29))
  {
    v9 = 1;
    return (v9 << 8) | 0x177000000001;
  }

  v5 = *(*a2 + 464);
  v4 = *(*a2 + 472);
  if (v4)
  {
LABEL_7:
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_8:
  if (v5)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(a1 + 128));
      v8 = *(a1 + 160);
      *buf = 136316162;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v12 = 2080;
      v13 = v8;
      v14 = 2080;
      v15 = "";
      v16 = 2080;
      v17 = "authentication";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________   Received response: %s", buf, 0x34u);
    }

    sub_1004FB0D8();
  }

  v9 = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }

  return (v9 << 8) | 0x177000000001;
}

void sub_1004DC918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53, uint64_t a54, std::__shared_weak_count *a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a61 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a42)
  {
    sub_100004A34(a42);
  }

  sub_100004A34(v66);
  if (a43)
  {
    operator delete(a43);
  }

  if (*(v67 - 89) < 0)
  {
    operator delete(*(v67 - 112));
  }

  if (a53 == 1 && a52 < 0)
  {
    operator delete(a47);
  }

  if (LOBYTE(STACK[0x378]) == 1)
  {
    sub_100220C2C(&a65);
  }

  if (a55)
  {
    sub_100004A34(a55);
  }

  if (v65)
  {
    sub_100004A34(v65);
  }

  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::handle_EAPAKA_Challenge_sync(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 487) < 0)
  {
    **(a1 + 464) = 0;
    *(a1 + 472) = 0;
  }

  else
  {
    *(a1 + 464) = 0;
    *(a1 + 487) = 0;
  }

  if (*(a1 + 511) < 0)
  {
    **(a1 + 488) = 0;
    *(a1 + 496) = 0;
  }

  else
  {
    *(a1 + 488) = 0;
    *(a1 + 511) = 0;
  }

  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  v3 = *(a1 + 172);
  v4 = *(a1 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = PersonalityInfo::logPrefix(***(a1 + 128));
      v7 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v14 = 2080;
      v15 = v7;
      v16 = 2080;
      v17 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived an EAP_AKA challenge", buf, 0x2Au);
    }

    ctu::base64::decode();
    memset(lpsrc, 0, sizeof(lpsrc));
    sub_1009F51FC(lpsrc);
  }

  if (v5)
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 128));
    v9 = *(a1 + 160);
    *buf = 136315906;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v14 = 2080;
    v15 = v9;
    v16 = 2080;
    v17 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnsupported Authentication Type", buf, 0x2Au);
  }

  ctu::ns::AutoPool::~AutoPool(&v12);
  return 0;
}

void sub_1004DD328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, void *__p, uint64_t a37)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  sub_1004EAB88(v40 - 208);
  sub_10004EC58(v38 | 8, a25);
  sub_10004EC58(&a28, a29);
  if (a35)
  {
    sub_100004A34(a35);
  }

  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v43 = __cxa_begin_catch(a1);
    v44 = *(v37 + 40);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = PersonalityInfo::logPrefix(***(v37 + 128));
      v46 = *(v37 + 160);
      v47 = (*(*v43 + 16))(v43);
      *(v40 - 208) = 136316162;
      *(v39 + 148) = v45;
      *(v40 - 196) = 2080;
      *(v39 + 158) = " ";
      *(v40 - 186) = 2080;
      *(v40 - 184) = v46;
      *(v40 - 176) = 2080;
      *(v39 + 178) = "";
      *(v40 - 166) = 2080;
      *(v39 + 188) = v47;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sEAP exception: %s", (v40 - 208), 0x34u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1004DCFD0);
  }

  ctu::ns::AutoPool::~AutoPool((v40 - 224));
  _Unwind_Resume(a1);
}

atomic_uint **sub_1004DD510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v11 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v9 = *(a3 + 16);
  }

  sub_1004FB298((a1 + 24), __dst, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__dst[0]);
  }

  v6 = sub_1005A2298((a1 + 8));
  return sub_1004FB4B0(v6, a2, a3);
}

void sub_1004DD5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1004DD610(const void **a1)
{
  sub_10000A1EC(a1 + 2);
  sub_10000A1EC(a1 + 1);

  return sub_10001021C(a1);
}

void entitlements::CEHTTPDriver::prepareAnActionResult(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, const void **a5@<X6>, uint64_t a6@<X8>, uint64_t *a7)
{
  v17 = 0uLL;
  sub_10053DF18(a1, a2, &v17);
  v11 = v17;
  if (v17)
  {
    sub_100010024(&v15, a5);
    v12 = a7[1];
    v13 = *a7;
    v14 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v11 + 24))(&v16, v11, a3, &v15, a4, &v13);
    *a6 = v16;
    v16 = 0uLL;
    if (v14)
    {
      sub_100004A34(v14);
    }

    sub_10001021C(&v15);
  }

  if (*(&v17 + 1))
  {
    sub_100004A34(*(&v17 + 1));
  }

  if (!v11)
  {
    *a6 = 0;
    *(a6 + 8) = 0;
  }
}

void sub_1004DD74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10001021C(&a12);
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::postAnActionResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, const void **a6, const void **a7)
{
  v11 = a3;
  if (a3 == 12)
  {
    v14 = *a5;
    v15 = a5[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a4 == 3 && *v14 == 6000)
    {
      *(a1 + 416) = **(v14 + 24);
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = PersonalityInfo::logPrefix(***(a1 + 128));
        v21 = *(a1 + 160);
        v18 = asStringBool(*(a1 + 416));
        *buf = 136316162;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v28 = 2080;
        v29 = v21;
        v30 = 2080;
        v31 = "";
        v32 = 2080;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sSetting update push token acknowledged: %s", buf, 0x34u);
      }
    }

    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  v26 = 0uLL;
  sub_10053DF18(a2, v11, &v26);
  v19 = v26;
  if (v26)
  {
    if (*(a1 + 124))
    {
      v24 = 0;
      v25 = 0;
    }

    else
    {
      sub_100004AA0(buf, (a1 + 8));
      v20 = *&buf[8];
      v24 = *buf;
      v25 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v20);
      }
    }

    sub_100010024(&v23, a6);
    sub_100060E84(&v22, a7);
    (*(*v19 + 32))(v19, &v24, a1 + 104, a4, a5, &v23, &v22);
    sub_10000A1EC(&v22);
    sub_10001021C(&v23);
    if (v25)
    {
      std::__shared_weak_count::__release_weak(v25);
    }
  }

  if (*(&v26 + 1))
  {
    sub_100004A34(*(&v26 + 1));
  }
}

void sub_1004DD9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19)
{
  if (v19)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::postActionResults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  if (sub_10053588C(a3, 0))
  {
    goto LABEL_10;
  }

  v9 = **a4;
  v8 = (*a4)[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v8);
    if (!v9)
    {
      goto LABEL_10;
    }

    v9 = **a4;
    v10 = (*a4)[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = 0;
  }

  v23 = v9;
  v24 = v10;
  v21 = 0;
  v22 = 0;
  entitlements::CEHTTPDriver::postAnActionResult(a1, a3, 0, a2, &v23, &v22, &v21);
  sub_10000A1EC(&v21);
  sub_10001021C(&v22);
  if (v24)
  {
    sub_100004A34(v24);
  }

LABEL_10:
  for (i = 0; i != 28; ++i)
  {
    cf = 0;
    v26 = 0;
    v27[0] = 0;
    sub_1005354F0(a3, &cf, i);
    v12 = cf;
    if (cf)
    {
      v13 = *&(*a4)[2 * i];
      v14 = (*a4)[2 * i + 1];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v20 = v13;
      v19 = v12;
      CFRetain(v12);
      v18 = v27[0];
      if (v27[0])
      {
        CFRetain(v27[0]);
      }

      entitlements::CEHTTPDriver::postAnActionResult(a1, a3, i, a2, &v20, &v19, &v18);
      sub_10000A1EC(&v18);
      sub_10001021C(&v19);
      if (*(&v20 + 1))
      {
        sub_100004A34(*(&v20 + 1));
      }
    }

    sub_10000A1EC(v27);
    sub_10000A1EC(&v26);
    sub_10001021C(&cf);
  }

  v15 = (*a4)[26];
  v16 = (*a4)[27];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v15)
    {
LABEL_28:
      sub_100004A34(v16);
      return;
    }

    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else if (!v15)
  {
    return;
  }

  if (a2 == 3)
  {
    v17 = *(v15 + 24);
    if (v17)
    {
      cf = _NSConcreteStackBlock;
      v26 = 3221225472;
      v27[0] = sub_1004EE060;
      v27[1] = &unk_101E51F70;
      v27[2] = v17;
      sub_1004EDEB4(0x80109, &cf);
    }
  }

  if (v16)
  {
    sub_100004A34(v16);
    goto LABEL_28;
  }
}

void sub_1004DDC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v21)
  {
    sub_100004A34(v21);
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

const void **entitlements::CEHTTPDriver::prepareActionResults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = 0;
  v7 = 0;
  do
  {
    cf = 0;
    v25 = 0;
    v26 = 0;
    sub_1005354F0(a3, &cf, v7);
    v8 = cf;
    if (cf)
    {
      v22 = 0;
      v23 = 0;
      v9 = *(*a4 + v6);
      v10 = *(*a4 + v6 + 8);
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v21 = v9;
      v20[0] = 0;
      v20[4] = 0;
      v19 = v8;
      CFRetain(v8);
      v18 = v26;
      if (v26)
      {
        CFRetain(v26);
      }

      v17[0] = 0;
      v17[1] = 0;
      entitlements::CEHTTPDriver::prepareAnActionResult(a3, v7, &v21, v20, &v19, &v22, v17);
      sub_10000A1EC(&v18);
      sub_10001021C(&v19);
      if (*(&v21 + 1))
      {
        sub_100004A34(*(&v21 + 1));
      }

      v11 = v22;
      v12 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *a4;
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v13 = *a4;
      }

      v14 = (v13 + v6);
      v15 = v14[1];
      *v14 = v11;
      v14[1] = v12;
      if (v15)
      {
        sub_100004A34(v15);
      }

      if (v12)
      {
        sub_100004A34(v12);
        sub_100004A34(v12);
      }
    }

    sub_10000A1EC(&v26);
    sub_10000A1EC(&v25);
    result = sub_10001021C(&cf);
    v7 = (v7 + 1);
    v6 += 16;
  }

  while (v6 != 448);
  return result;
}

void sub_1004DDE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, std::__shared_weak_count *);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  sub_10000A1EC(va);
  sub_10001021C(va1);
  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_1004DD610(va2);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::validateAndParseHttpResponse_sync(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = a1 + 48;
  v5 = *(a1 + 48);
  v54[0] = 0;
  v54[1] = 0;
  v55 = 0;
  v7 = sub_1004DE990(v5, ***(v6 + 80), *(v6 + 80) + 64, v54);
  if ((v7 & 1) == 0 && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 128));
    sub_101772A64(v8, a1, v79);
  }

  v53 = 0;
  ctu::ns::AutoPool::AutoPool(&v53);
  if (*(a1 + 744))
  {
    *(*(a1 + 744) + 8) = std::chrono::system_clock::now();
  }

  v9 = (a1 + 608);
  v10 = *(a1 + 608);
  if (!v10 || (sub_1005358AC(v10) & 1) == 0)
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = PersonalityInfo::logPrefix(***(a1 + 128));
      v25 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v24;
      v59 = 2080;
      v60 = " ";
      v61 = 2080;
      v62 = v25;
      v63 = 2080;
      v64 = "";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnsolicited Response, ignoring", buf, 0x2Au);
    }

    if (!v7 || *(a1 + 120))
    {
      goto LABEL_51;
    }

    sub_1004F0D24(buf, 0x1EuLL);
    sub_1004DECA8((a1 + 608), v6, a1 + 144, a1 + 432, buf, 0, 0x100000003, v54, 0, 0, 0);
    goto LABEL_46;
  }

  if (!*a2)
  {
    v26 = *(a1 + 40);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = PersonalityInfo::logPrefix(***(a1 + 128));
      v28 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v27;
      v59 = 2080;
      v60 = " ";
      v61 = 2080;
      v62 = v28;
      v63 = 2080;
      v64 = "";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sResponse: <nil>", buf, 0x2Au);
    }

    if (!v7 || *(a1 + 120))
    {
      goto LABEL_51;
    }

    sub_1004F0D24(buf, 0x1EuLL);
    sub_1004DECA8((a1 + 608), v6, a1 + 144, a1 + 432, buf, 0, 0x100000001, v54, 0, 0, 0);
LABEL_46:
    v56[0] = buf;
    sub_1000212F4(v56);
LABEL_51:
    v29 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_52;
  }

  v11 = (*(**a2 + 24))(*a2);
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v45 = PersonalityInfo::logPrefix(***(a1 + 128));
    v13 = *(a1 + 160);
    (*(**a2 + 64))(v56);
    if (v57 >= 0)
    {
      v14 = v56;
    }

    else
    {
      v14 = v56[0];
    }

    v44 = v14;
    v43 = (*(**a2 + 16))();
    (*(**a2 + 16))();
    ctu::Http::asString();
    if (v52 >= 0)
    {
      v16 = v51;
    }

    else
    {
      v16 = v51[0];
    }

    v41 = v16;
    v42 = v13;
    ctu::Http::asString(v11, v15);
    if (v50 >= 0)
    {
      v17 = v49;
    }

    else
    {
      v17 = v49[0];
    }

    v40 = v17;
    v18 = (*(**a2 + 32))();
    (*(**a2 + 16))();
    (*(**a2 + 32))();
    ctu::Http::asString();
    if (v48 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    *buf = 136317698;
    *&buf[4] = v45;
    v59 = 2080;
    v60 = " ";
    v61 = 2080;
    v62 = v42;
    v63 = 2080;
    v64 = "";
    v65 = 2080;
    v66 = v44;
    v67 = 1024;
    v68 = v43;
    v69 = 2080;
    v70 = v41;
    v71 = 1024;
    v72 = v11;
    v73 = 2080;
    v74 = v40;
    v75 = 2048;
    v76 = v18;
    v77 = 2080;
    v78 = v19;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sResponse Status: '%s', Result: %d (%s), Status: '%d' (%s), ErrorCode: '%ld' (%s)", buf, 0x68u);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = (a1 + 608);
    if (v50 < 0)
    {
      operator delete(v49[0]);
    }

    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    v12 = *(a1 + 40);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    PersonalityInfo::logPrefix(***(a1 + 128));
    (*(**a2 + 48))(v51);
    sub_101772ACC();
  }

  if (*(a1 + 744))
  {
    *(*(a1 + 744) + 16) = (*(**a2 + 32))();
  }

  if ((*(**a2 + 16))() == 1)
  {
    if (v11 == 200)
    {
      __p[0] = 0;
      v20 = *v9;
      (*(**a2 + 40))(buf);
      v21 = sub_10053C9AC(v20, *buf, a3);
      sub_10002D760(buf);
      if (v21)
      {
        if (v7 && !*(a1 + 120))
        {
          v22 = sub_100552758(*v9);
          sub_1004DECA8(v9, v6, a1 + 144, a1 + 432, a3, 0x1000000C8, &_mh_execute_header, v54, 0, 0, v22 | &_mh_execute_header);
        }
      }

      else
      {
        v36 = v9;
        v37 = *(a1 + 40);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = PersonalityInfo::logPrefix(***(a1 + 128));
          v39 = *(a1 + 160);
          *buf = 136315906;
          *&buf[4] = v38;
          v59 = 2080;
          v60 = " ";
          v61 = 2080;
          v62 = v39;
          v63 = 2080;
          v64 = "";
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sCouldn't parse responses", buf, 0x2Au);
        }

        if (v7 && !*(a1 + 120))
        {
          sub_1004F0D24(buf, 0x1EuLL);
          sub_1004DECA8(v36, v6, a1 + 144, a1 + 432, buf, 0x1000000C8, 0x100000002, v54, 0, 0, 0);
          v49[0] = buf;
          sub_1000212F4(v49);
        }
      }

      sub_100010250(__p);
      v29 = v21;
      v11 = 200;
    }

    else
    {
      if (v7 && !*(a1 + 120))
      {
        sub_1004F0D24(buf, 0x1EuLL);
        v35 = (*(**a2 + 32))();
        sub_1004DECA8(v9, v6, a1 + 144, a1 + 432, buf, v11 | &_mh_execute_header, 0, v54, v35, 1, 0);
        v49[0] = buf;
        sub_1000212F4(v49);
      }

      v29 = 1;
    }
  }

  else
  {
    if (v7 && !*(a1 + 120))
    {
      sub_1004F0D24(buf, 0x1EuLL);
      v34 = (*(**a2 + 32))();
      sub_1004DECA8(v9, v6, a1 + 144, a1 + 432, buf, 0, 0, v54, v34, 1, 0);
      v49[0] = buf;
      sub_1000212F4(v49);
    }

    v29 = 0;
  }

LABEL_52:
  v30 = *(a1 + 40);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = PersonalityInfo::logPrefix(***(a1 + 128));
    v32 = *(a1 + 160);
    *buf = 136315906;
    *&buf[4] = v31;
    v59 = 2080;
    v60 = " ";
    v61 = 2080;
    v62 = v32;
    v63 = 2080;
    v64 = "";
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%svalidateAndParseHttpResponse_sync  ", buf, 0x2Au);
  }

  ctu::ns::AutoPool::~AutoPool(&v53);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54[0]);
  }

  return v29 | (v11 << 32);
}