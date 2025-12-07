void sub_100399FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  sub_10039A090(v28 - 128);
  sub_10039A168(&a11);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10039A090(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      *(a1 + 56) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 32) = v3;
      operator delete(v3);
    }

    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

_BYTE *sub_10039A0F0(_BYTE *result, uint64_t *a2, _WORD *a3)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4 >= 0x10000)
  {
    sub_1004C6C04();
  }

  v5 = *a3;
  if (v4 <= v5)
  {
    sub_1004C6BD8();
  }

  *a3 = v5 + 1;
  *result = *(v3 + v5);
  return result;
}

void sub_10039A138(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    sub_10039B2A0(result, a2 - v2);
  }
}

uint64_t sub_10039A168(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_10039A1BC(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  if (v3 < 4)
  {
    v4 = -4000;
LABEL_16:
    v12 = 0;
    *a2 = v4;
    *(a2 + 4) = 0;
    goto LABEL_17;
  }

  if (v3 >> 16)
  {
    v4 = -4001;
    goto LABEL_16;
  }

  v5 = *(v2 + 3);
  v6 = *(v2 + 2);
  if (v3 != (v5 | (v6 << 8)) + 4)
  {
    v4 = -4002;
    goto LABEL_16;
  }

  if ((v5 | (v6 << 8)) != 0xA)
  {
    v4 = -4006;
    goto LABEL_16;
  }

  if (v3 <= 5)
  {
    sub_1004C6C88();
  }

  if (v3 <= 7)
  {
    sub_1004C6C88();
  }

  if (v3 <= 0xB)
  {
    sub_1004C6C5C();
  }

  if (v3 == 12)
  {
    sub_1004C6BD8();
  }

  if (v3 <= 0xD)
  {
    sub_1004C6BD8();
  }

  if (v3 != 14)
  {
    sub_1004C6C30();
  }

  v7 = bswap32(*(v2 + 4));
  v8 = bswap32(*(v2 + 6)) >> 16;
  v9 = bswap32(*(v2 + 8));
  v10 = *(v2 + 12);
  v11 = *(v2 + 13);
  *a2 = 0;
  *(a2 + 4) = HIWORD(v7);
  *(a2 + 6) = v8;
  *(a2 + 8) = v9;
  *(a2 + 12) = v10;
  *(a2 + 13) = v11;
  v12 = 1;
LABEL_17:
  *(a2 + 16) = v12;
}

void sub_10039A2C8(void *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  if (v3 < 4)
  {
    v4 = -4000;
LABEL_16:
    v13 = 0;
    v14 = 0;
    *a2 = v4;
    v15 = 4;
    goto LABEL_17;
  }

  if (v3 >> 16)
  {
    v4 = -4001;
    goto LABEL_16;
  }

  v5 = *(v2 + 3);
  v6 = *(v2 + 2);
  if (v3 != (v5 | (v6 << 8)) + 4)
  {
    v4 = -4002;
    goto LABEL_16;
  }

  if ((v5 | (v6 << 8)) != 9)
  {
    v4 = -4006;
    goto LABEL_16;
  }

  if (v3 == 4)
  {
    sub_1004C6BD8();
  }

  if (v3 <= 5)
  {
    sub_1004C6BD8();
  }

  if (v3 == 6)
  {
    sub_1004C6BD8();
  }

  if (v3 <= 7)
  {
    sub_1004C6BD8();
  }

  if (v3 <= 0xB)
  {
    sub_1004C6C5C();
  }

  v7 = (*(a1 + 4) - *a1);
  if (v7 != 13)
  {
    if (v7 == 12)
    {
      sub_1004C6BD8();
    }

    sub_1004C6CB4();
  }

  v8 = *(v2 + 4);
  v9 = *(v2 + 5);
  v10 = *(v2 + 6);
  v11 = *(v2 + 7);
  v12 = bswap32(*(v2 + 8));
  v13 = *(v2 + 12);
  *a2 = 0;
  *(a2 + 4) = v8;
  *(a2 + 5) = v9;
  *(a2 + 6) = v10;
  *(a2 + 7) = v11;
  *(a2 + 8) = v12;
  v14 = 1;
  v15 = 12;
LABEL_17:
  *(a2 + v15) = v13;
  *(a2 + 16) = v14;
}

uint64_t sub_10039A3E4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 < 4)
  {
    v4 = -4000;
LABEL_12:
    LODWORD(v7) = 0;
    LODWORD(v9) = v4;
    goto LABEL_13;
  }

  if (v3 >> 16)
  {
    v4 = -4001;
    goto LABEL_12;
  }

  v5 = *(v2 + 3);
  v6 = *(v2 + 2);
  if (v3 != (v5 | (v6 << 8)) + 4)
  {
    v4 = -4002;
    goto LABEL_12;
  }

  if ((v5 | (v6 << 8)) != 4)
  {
    v4 = -4006;
    goto LABEL_12;
  }

  if (v3 <= 7)
  {
    sub_1004C6C5C();
  }

  if (v3 != 8)
  {
    sub_1004C6CE0();
  }

  LODWORD(v9) = 0;
  v7 = bswap32(*(v2 + 4)) | &_mh_execute_header;
LABEL_13:
  HIDWORD(v9) = v7;
  return v9;
}

unint64_t sub_10039A49C(uint64_t a1, unsigned __int8 **a2)
{
  result = 4294963290;
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4 < 4)
  {
    return 4294963296;
  }

  if (v4 >> 16)
  {
    return 4294963295;
  }

  v5 = v3[3];
  v6 = v3[2];
  if (v4 != (v5 | (v6 << 8)) + 4)
  {
    return 4294963294;
  }

  if ((v5 | (v6 << 8)) == 1)
  {
    v7 = (*(a2 + 4) - *a2);
    if (v7 != 5)
    {
      if (v7 == 4)
      {
        sub_1004C6BD8();
      }

      sub_1004C6D0C();
    }

    return (v3[4] << 32) | 0x10000000000;
  }

  return result;
}

uint64_t sub_10039A530(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 < 4)
  {
    v4 = -4000;
LABEL_12:
    LODWORD(v7) = 0;
    LODWORD(v9) = v4;
    goto LABEL_13;
  }

  if (v3 >> 16)
  {
    v4 = -4001;
    goto LABEL_12;
  }

  v5 = *(v2 + 3);
  v6 = *(v2 + 2);
  if (v3 != (v5 | (v6 << 8)) + 4)
  {
    v4 = -4002;
    goto LABEL_12;
  }

  if ((v5 | (v6 << 8)) != 4)
  {
    v4 = -4006;
    goto LABEL_12;
  }

  if (v3 <= 7)
  {
    sub_1004C6C5C();
  }

  if (v3 != 8)
  {
    sub_1004C6D38();
  }

  LODWORD(v9) = 0;
  v7 = bswap32(*(v2 + 4)) | &_mh_execute_header;
LABEL_13:
  HIDWORD(v9) = v7;
  return v9;
}

uint64_t sub_10039A5E8(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 < 4)
  {
    v4 = -4000;
LABEL_12:
    LODWORD(v9) = v4;
    BYTE4(v9) = 0;
    return v9;
  }

  if (v3 >> 16)
  {
    v4 = -4001;
    goto LABEL_12;
  }

  v5 = *(v2 + 3);
  v6 = *(v2 + 2);
  if (v3 != (v5 | (v6 << 8)) + 4)
  {
    v4 = -4002;
    goto LABEL_12;
  }

  if ((v5 | (v6 << 8)) != 5)
  {
    v4 = -4006;
    goto LABEL_12;
  }

  if (v3 <= 7)
  {
    sub_1004C6C5C();
  }

  v7 = (*(a2 + 4) - *a2);
  if (v7 != 9)
  {
    if (v7 == 8)
    {
      sub_1004C6BD8();
    }

    sub_1004C6D64();
  }

  LODWORD(v9) = 0;
  HIDWORD(v9) = bswap32(*(v2 + 4));
  return v9;
}

void sub_10039A6B8(char *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v38, 4, &__p);
  v4 = v38;
  v5 = v39;
  v6 = (v39 - v38);
  if ((v39 - v38 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_63;
  }

  v7 = *a1;
  if (v39 >= v40)
  {
    v9 = v40 - v38;
    if (2 * (v40 - v38) <= (v6 + 1))
    {
      v10 = (v6 + 1);
    }

    else
    {
      v10 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v39 - v38;
    *v6 = v7;
    v8 = (v6 + 1);
    memcpy(0, v4, v12);
    v38 = 0;
    v39 = v6 + 1;
    v40 = 0;
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v39 = v7;
    v8 = v5 + 1;
  }

  v39 = v8;
  v13 = *a1;
  if (v13 == 1)
  {
    if (a1[2] == 1)
    {
      v14 = v38;
      v15 = (v8 - v38);
      if ((v8 - v38 - 0xFFFF) >= 0xFFFFFFFFFFFF0000)
      {
        v16 = a1[1];
        if (v8 >= v40)
        {
          v22 = v40 - v38;
          if (2 * (v40 - v38) <= (v15 + 1))
          {
            v23 = (v15 + 1);
          }

          else
          {
            v23 = 2 * v22;
          }

          if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v23;
          }

          if (v19)
          {
            operator new();
          }

          goto LABEL_51;
        }

        goto LABEL_42;
      }

      goto LABEL_63;
    }

    v31 = "evt.commandCompleteSubEventCode.has_value()";
    v32 = 967;
LABEL_68:
    v33 = "encodeEventNotification";
LABEL_69:
    __assert_rtn(v33, "AlishaDCKCoder.cpp", v32, v31);
  }

  if (v13 != 2)
  {
    if (v13 != 3)
    {
      goto LABEL_54;
    }

    if (a1[6] == 1)
    {
      v14 = v38;
      v15 = (v8 - v38);
      if ((v8 - v38 - 0xFFFF) >= 0xFFFFFFFFFFFF0000)
      {
        v16 = a1[5];
        if (v8 >= v40)
        {
          v17 = v40 - v38;
          if (2 * (v40 - v38) <= (v15 + 1))
          {
            v18 = (v15 + 1);
          }

          else
          {
            v18 = 2 * v17;
          }

          if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            operator new();
          }

LABEL_51:
          v24 = v15;
          v25 = v15;
          v26 = v19;
          v27 = &v25[v14 - v8];
          *v25 = v16;
          v8 = v25 + 1;
          memcpy(v27, v14, v24);
          v38 = v27;
          v39 = v8;
          v40 = v26;
          if (v14)
          {
            operator delete(v14);
          }

          goto LABEL_53;
        }

        goto LABEL_42;
      }

LABEL_63:
      v31 = "msg.size() + sizeof(data) <= kMaxMessageSize";
      v32 = 225;
      v33 = "append";
      goto LABEL_69;
    }

    v31 = "evt.deviceRangingIntentSubEventCode.has_value()";
    v32 = 977;
    goto LABEL_68;
  }

  if (a1[4] != 1)
  {
    v31 = "evt.rangingSessionStatusChangedSubEventCode.has_value()";
    v32 = 972;
    goto LABEL_68;
  }

  v14 = v38;
  v15 = (v8 - v38);
  if ((v8 - v38 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_63;
  }

  v16 = a1[3];
  if (v8 >= v40)
  {
    v20 = v40 - v38;
    if (2 * (v40 - v38) <= (v15 + 1))
    {
      v21 = (v15 + 1);
    }

    else
    {
      v21 = 2 * v20;
    }

    if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v21;
    }

    if (v19)
    {
      operator new();
    }

    goto LABEL_51;
  }

LABEL_42:
  *v8++ = v16;
LABEL_53:
  v39 = v8;
LABEL_54:
  v28 = v38;
  v29 = v8 - v38;
  if ((v8 - v38) >= 0x10000)
  {
    v31 = "msg.size() <= kMaxMessageSize";
    v32 = 166;
    v33 = "populateHeader";
    goto LABEL_69;
  }

  if (v29 <= 3)
  {
    sub_100009838(&v38, 4 - v29);
    v28 = v38;
    LOWORD(v29) = v39 - v38;
  }

  v30 = v29 - 4;
  *v28 = 3;
  *(v38 + 1) = 17;
  *(v38 + 2) = HIBYTE(v30);
  *(v38 + 3) = v30;
  __p = 0;
  v35 = 0;
  v36 = 0;
  sub_100009A48(&__p, v38, v39, v39 - v38);
  v37 = 1;
  *a2 = 0;
  sub_10039B130(a2 + 8, &__p);
  if (v37 == 1 && __p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void sub_10039AAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039AB1C(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v42, 4, &__p);
  sub_100399074(*a1, &v42);
  sub_100399074(*(a1 + 8), &v42);
  v4 = v42;
  v5 = v43;
  v6 = (v43 - v42);
  if ((v43 - v42 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_51;
  }

  v7 = *(a1 + 16);
  if (v43 >= v44)
  {
    v9 = v44 - v42;
    if (2 * (v44 - v42) <= (v6 + 1))
    {
      v10 = (v6 + 1);
    }

    else
    {
      v10 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v43 - v42;
    *v6 = v7;
    v8 = v6 + 1;
    memcpy(0, v4, v12);
    v42 = 0;
    v43 = v6 + 1;
    v44 = 0;
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v43 = v7;
    v8 = v5 + 1;
  }

  v43 = v8;
  v13 = v42;
  v14 = (v8 - v42);
  if ((v8 - v42 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_51;
  }

  v15 = *(a1 + 17);
  if (v8 >= v44)
  {
    v17 = v44 - v42;
    if (2 * (v44 - v42) <= (v14 + 1))
    {
      v18 = (v14 + 1);
    }

    else
    {
      v18 = 2 * v17;
    }

    if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      operator new();
    }

    v20 = v8 - v42;
    *v14 = v15;
    v16 = v14 + 1;
    memcpy(0, v13, v20);
    v42 = 0;
    v43 = v14 + 1;
    v44 = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v8 = v15;
    v16 = v8 + 1;
  }

  v43 = v16;
  if ((v16 - v42 - 65534) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_52;
  }

  v21 = *(a1 + 18);
  LOBYTE(__p) = HIBYTE(v21);
  sub_1001FE4D0(&v42, &__p);
  LOBYTE(__p) = v21;
  sub_1001FE4D0(&v42, &__p);
  v22 = v42;
  v23 = v43;
  v24 = (v43 - v42);
  if ((v43 - v42 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
LABEL_51:
    v35 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v36 = 225;
LABEL_53:
    v37 = "append";
    goto LABEL_54;
  }

  v25 = *(a1 + 20);
  if (v43 >= v44)
  {
    v27 = v44 - v42;
    if (2 * (v44 - v42) <= (v24 + 1))
    {
      v28 = (v24 + 1);
    }

    else
    {
      v28 = 2 * v27;
    }

    if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v28;
    }

    if (v29)
    {
      operator new();
    }

    v30 = v43 - v42;
    *v24 = v25;
    v26 = v24 + 1;
    memcpy(0, v22, v30);
    v42 = 0;
    v43 = v24 + 1;
    v44 = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v43 = v25;
    v26 = v23 + 1;
  }

  v43 = v26;
  if ((v26 - v42 - 65534) < 0xFFFFFFFFFFFF0000)
  {
LABEL_52:
    v35 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v36 = 232;
    goto LABEL_53;
  }

  v31 = *(a1 + 22);
  LOBYTE(__p) = HIBYTE(v31);
  sub_1001FE4D0(&v42, &__p);
  LOBYTE(__p) = v31;
  sub_1001FE4D0(&v42, &__p);
  v32 = v42;
  v33 = v43 - v42;
  if ((v43 - v42) >= 0x10000)
  {
    v35 = "msg.size() <= kMaxMessageSize";
    v36 = 166;
    v37 = "populateHeader";
LABEL_54:
    __assert_rtn(v37, "AlishaDCKCoder.cpp", v36, v35);
  }

  if (v33 <= 3)
  {
    sub_100009838(&v42, 4 - v33);
    v32 = v42;
    LOWORD(v33) = v43 - v42;
  }

  v34 = v33 - 4;
  *v32 = 5;
  *(v42 + 1) = 13;
  *(v42 + 2) = HIBYTE(v34);
  *(v42 + 3) = v34;
  __p = 0;
  v39 = 0;
  v40 = 0;
  sub_100009A48(&__p, v42, v43, v43 - v42);
  v41 = 1;
  *a2 = 0;
  sub_10039B130(a2 + 8, &__p);
  if (v41 == 1 && __p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void sub_10039AF54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10039AF98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1001FBC68(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_1001FBC68(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 1);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_100009A48(a1 + 6, *a4, *(a4 + 8), *(a4 + 8) - *a4);
  return a1;
}

void sub_10039B020(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039B054(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10039B0A0(a1, a2);
  }

  sub_100019B38();
}

void sub_10039B0A0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10039B0F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1001678D8(a1);
  }

  return a1;
}

_BYTE *sub_10039B130(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    sub_100009A48(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    a1[24] = 1;
  }

  return a1;
}

void sub_10039B18C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1004C6D90(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10039B1AC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1001FBC68(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    sub_1001FBC68((a1 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 1);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    sub_100009A48((a1 + 48), *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_10039B250(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  if (*(v1 + 72) == 1)
  {
    sub_10039A168(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039B2A0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_100019B38();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1001679B0(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t sub_10039B3C8(unsigned __int8 *a1)
{
  sub_100193120(v52);
  v2 = sub_10000EA44(&v53, "{", 1);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v57.__locale_) = 9;
  v4 = sub_10000EA44(&v53, &v57, 1);
  sub_10000EA44(v4, "Channel: ", 9);
  v5 = std::ostream::operator<<();
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v57.__locale_) = 9;
  v7 = sub_10000EA44(&v53, &v57, 1);
  sub_10000EA44(v7, "Preamble: ", 10);
  v8 = std::ostream::operator<<();
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v57.__locale_) = 9;
  v10 = sub_10000EA44(&v53, &v57, 1);
  sub_10000EA44(v10, "Selected protocol version: ", 27);
  v11 = std::ostream::operator<<();
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v57.__locale_) = 9;
  v13 = sub_10000EA44(&v53, &v57, 1);
  sub_10000EA44(v13, "Selected UWB config id: ", 24);
  v14 = std::ostream::operator<<();
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v57.__locale_) = 9;
  v16 = sub_10000EA44(&v53, &v57, 1);
  sub_10000EA44(v16, "RAN multiplier: ", 16);
  v17 = std::ostream::operator<<();
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v57.__locale_) = 9;
  v19 = sub_10000EA44(&v53, &v57, 1);
  sub_10000EA44(v19, "Num. chaps per slot: ", 21);
  v20 = std::ostream::operator<<();
  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v57.__locale_) = 9;
  v22 = sub_10000EA44(&v53, &v57, 1);
  sub_10000EA44(v22, "Num. slots per round: ", 22);
  v23 = std::ostream::operator<<();
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v57.__locale_) = 9;
  v25 = sub_10000EA44(&v53, &v57, 1);
  sub_10000EA44(v25, "Num. responders: ", 17);
  v26 = std::ostream::operator<<();
  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v57.__locale_) = 9;
  v28 = sub_10000EA44(&v53, &v57, 1);
  sub_10000EA44(v28, "Selected hop config bitmask: ", 29);
  v29 = std::ostream::operator<<();
  std::ios_base::getloc((v29 + *(*v29 - 24)));
  v30 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v30->__vftable[2].~facet_0)(v30, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v57.__locale_) = 9;
  v31 = sub_10000EA44(&v53, &v57, 1);
  sub_10000EA44(v31, "Selected pulse shape combo: ", 28);
  v32 = std::ostream::operator<<();
  std::ios_base::getloc((v32 + *(*v32 - 24)));
  v33 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  if (a1[15] == 1)
  {
    LOBYTE(v57.__locale_) = 9;
    v34 = sub_10000EA44(&v53, &v57, 1);
    v35 = sub_10000EA44(v34, "ACWG enable two ranging rounds per block: ", 42);
    if (a1[15] != 1 || (!a1[12] ? (v36 = "no") : (v36 = "yes"), !a1[12] ? (v37 = 2) : (v37 = 3), (v38 = sub_10000EA44(v35, v36, v37), std::ios_base::getloc((v38 + *(*v38 - 24))), v39 = std::locale::use_facet(&v57, &std::ctype<char>::id), (v39->__vftable[2].~facet_0)(v39, 10), std::locale::~locale(&v57), std::ostream::put(), std::ostream::flush(), a1[15] != 1) || a1[12] == 1 && ((LOBYTE(v57.__locale_) = 9, v40 = sub_10000EA44(&v53, &v57, 1), v41 = sub_10000EA44(v40, "ACWG offset between ranging rounds: ", 36), a1[15] != 1) || (LOBYTE(v57.__locale_) = a1[13], v42 = sub_10000EA44(v41, &v57, 1), std::ios_base::getloc((v42 + *(*v42 - 24))), v43 = std::locale::use_facet(&v57, &std::ctype<char>::id), (v43->__vftable[2].~facet_0)(v43, 10), std::locale::~locale(&v57), std::ostream::put(), std::ostream::flush(), (a1[15] & 1) == 0))))
    {
      sub_1000195BC();
    }

    snprintf(__str, 0x80uLL, "ACWG Final Data2 Bitmask: 0x%02x", a1[14]);
    LOBYTE(v57.__locale_) = 9;
    v44 = sub_10000EA44(&v53, &v57, 1);
    v45 = strlen(__str);
    v46 = sub_10000EA44(v44, __str, v45);
    std::ios_base::getloc((v46 + *(*v46 - 24)));
    v47 = std::locale::use_facet(&v57, &std::ctype<char>::id);
    (v47->__vftable[2].~facet_0)(v47, 10);
    std::locale::~locale(&v57);
    std::ostream::put();
    std::ostream::flush();
  }

  v48 = sub_10000EA44(&v53, "}", 1);
  std::ios_base::getloc((v48 + *(*v48 - 24)));
  v49 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v49->__vftable[2].~facet_0)(v49, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v53 = v50;
  if (v56 < 0)
  {
    operator delete(v55[7].__locale_);
  }

  std::locale::~locale(v55);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10039BFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::locale::~locale((v3 - 192));
  sub_100193C68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10039C050(unsigned __int8 *a1)
{
  sub_100193120(v20);
  v2 = sub_10000EA44(&v21, "{", 1);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v17, &std::ctype<char>::id);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v17);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v17.__locale_) = 9;
  v4 = sub_10000EA44(&v21, &v17, 1);
  sub_10000EA44(v4, "UWB session id: ", 16);
  v5 = std::ostream::operator<<();
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v17, &std::ctype<char>::id);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v17);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v17.__locale_) = 9;
  v7 = sub_10000EA44(&v21, &v17, 1);
  v8 = sub_10000EA44(v7, "Negotiated params: ", 19);
  sub_10039B3C8(a1 + 4);
  if ((v19 & 0x80u) == 0)
  {
    locale = &v17;
  }

  else
  {
    locale = v17.__locale_;
  }

  if ((v19 & 0x80u) == 0)
  {
    v10 = v19;
  }

  else
  {
    v10 = v18;
  }

  v11 = sub_10000EA44(v8, locale, v10);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v25, &std::ctype<char>::id);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v25);
  std::ostream::put();
  std::ostream::flush();
  if (v19 < 0)
  {
    operator delete(v17.__locale_);
  }

  v13 = sub_10000EA44(&v21, "}", 1);
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(&v17, &std::ctype<char>::id);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v17);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v21 = v15;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_10039C4E0(uint64_t *a1)
{
  sub_100193120(v11);
  sub_10000EA44(&v12, "[", 1);
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    do
    {
      sub_100004A08(__p, off_1009A8AA8[*(v2 + v3) - 1]);
      if ((v10 & 0x80u) == 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      if ((v10 & 0x80u) == 0)
      {
        v5 = v10;
      }

      else
      {
        v5 = __p[1];
      }

      sub_10000EA44(&v12, v4, v5);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *a1;
      v6 = a1[1];
      if (~*a1 + v6 > v3)
      {
        sub_10000EA44(&v12, ", ", 2);
        v2 = *a1;
        v6 = a1[1];
      }

      ++v3;
    }

    while (v6 - v2 > v3);
  }

  sub_10000EA44(&v12, "]", 1);
  std::stringbuf::str();
  v12 = v7;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10039C768(char a1@<W0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1)
  {
    v6 = 1;
    sub_1001FE4D0(a2, &v6);
  }

  if ((a1 & 2) != 0)
  {
    v5 = 2;
    sub_1001FE4D0(a2, &v5);
  }

  if ((a1 & 4) != 0)
  {
    v4 = 4;
    sub_1001FE4D0(a2, &v4);
  }
}

void sub_10039C7E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10039C808(uint64_t *a1)
{
  sub_100193120(v34);
  LOBYTE(v39.__locale_) = 48;
  v2 = sub_100193BA0(&v35, &v39);
  *(v2 + *(*v2 - 24) + 8) = *(v2 + *(*v2 - 24) + 8) & 0xFFFFFFB5 | 8;
  v3 = sub_10000EA44(&v35, "{", 1);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v39, &std::ctype<char>::id);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v39);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v39.__locale_) = 9;
  v5 = sub_10000EA44(&v35, &v39, 1);
  sub_10000EA44(v5, "UWB config ids: [", 17);
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      *(&v37[1].__locale_ + *(v35 - 24)) = 4;
      std::ostream::operator<<();
      v7 = (a1[1] - *a1) >> 1;
      if (v7 - 1 > v6)
      {
        sub_10000EA44(&v35, ", ", 2);
        v7 = (a1[1] - *a1) >> 1;
      }

      ++v6;
    }

    while (v7 > v6);
  }

  v8 = sub_10000EA44(&v35, "], ", 3);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v39, &std::ctype<char>::id);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v39);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v39.__locale_) = 9;
  v10 = sub_10000EA44(&v35, &v39, 1);
  v11 = sub_10000EA44(v10, "Slot bitmask: ", 14);
  *(v11 + *(*v11 - 24) + 24) = 2;
  v12 = std::ostream::operator<<();
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v39, &std::ctype<char>::id);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v39);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v39.__locale_) = 9;
  v14 = sub_10000EA44(&v35, &v39, 1);
  v15 = sub_10000EA44(v14, "Sync code index bitmask: ", 25);
  *(v15 + *(*v15 - 24) + 24) = 8;
  v16 = std::ostream::operator<<();
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v39, &std::ctype<char>::id);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v39);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v39.__locale_) = 9;
  v18 = sub_10000EA44(&v35, &v39, 1);
  v19 = sub_10000EA44(v18, "RF channel bitmask: ", 20);
  *(v19 + *(*v19 - 24) + 24) = 2;
  v20 = std::ostream::operator<<();
  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v39, &std::ctype<char>::id);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v39);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v39.__locale_) = 9;
  v22 = sub_10000EA44(&v35, &v39, 1);
  v23 = sub_10000EA44(v22, "Hop config bitmask: ", 20);
  *(v23 + *(*v23 - 24) + 24) = 2;
  v24 = std::ostream::operator<<();
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(&v39, &std::ctype<char>::id);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v39);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v39.__locale_) = 9;
  v26 = sub_10000EA44(&v35, &v39, 1);
  sub_10000EA44(v26, "Pulse shape combos: [", 21);
  if (a1[6] != a1[5])
  {
    v27 = 0;
    do
    {
      *(&v37[1].__locale_ + *(v35 - 24)) = 2;
      std::ostream::operator<<();
      v28 = a1[5];
      v29 = a1[6];
      if (~v28 + v29 > v27)
      {
        sub_10000EA44(&v35, ", ", 2);
        v28 = a1[5];
        v29 = a1[6];
      }

      ++v27;
    }

    while (v29 - v28 > v27);
  }

  v30 = sub_10000EA44(&v35, "]", 1);
  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&v39, &std::ctype<char>::id);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(&v39);
  std::ostream::put();
  std::ostream::flush();
  sub_10000EA44(&v35, "}", 1);
  std::stringbuf::str();
  v35 = v32;
  if (v38 < 0)
  {
    operator delete(v37[7].__locale_);
  }

  std::locale::~locale(v37);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_10039D078(unsigned __int16 *a1)
{
  sub_100193120(v125);
  std::ios_base::getloc((&v126 + *(v126 - 24)));
  v2 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  v3 = sub_10000EA44(&v126, "{", 1);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v5 = sub_10000EA44(&v126, &v122, 1);
  v6 = sub_10000EA44(v5, "Status: ", 8);
  v7 = sub_1003A0BA8(*a1);
  sub_1003A03C4(v7, &v122);
  if ((v124 & 0x80u) == 0)
  {
    locale = &v122;
  }

  else
  {
    locale = v122.__locale_;
  }

  if ((v124 & 0x80u) == 0)
  {
    v9 = v124;
  }

  else
  {
    v9 = v123;
  }

  v10 = sub_10000EA44(v6, locale, v9);
  v11 = sub_10000EA44(v10, ",", 1);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v130, &std::ctype<char>::id);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v130);
  std::ostream::put();
  std::ostream::flush();
  if (v124 < 0)
  {
    operator delete(v122.__locale_);
  }

  LOBYTE(v122.__locale_) = 48;
  v13 = sub_100193BA0(&v126, &v122);
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  LOBYTE(v122.__locale_) = 9;
  v14 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v14, "Session type: 0x", 16);
  v15 = std::ostream::operator<<();
  v16 = sub_10000EA44(v15, ",", 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  *(&v126 + *(v126 - 24) + 8) = *(&v126 + *(v126 - 24) + 8) & 0xFFFFFFB5 | 2;
  LOBYTE(v122.__locale_) = 9;
  v18 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v18, "UWB session id: ", 16);
  v19 = std::ostream::operator<<();
  v20 = sub_10000EA44(v19, ",", 1);
  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v22 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v22, "Block start time (R1 ticks): ", 29);
  v23 = std::ostream::operator<<();
  v24 = sub_10000EA44(v23, ",", 1);
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v26 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v26, "Block index: ", 13);
  v27 = std::ostream::operator<<();
  v28 = sub_10000EA44(v27, ",", 1);
  std::ios_base::getloc((v28 + *(*v28 - 24)));
  v29 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v29->__vftable[2].~facet_0)(v29, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v30 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v30, "Round index: ", 13);
  v31 = std::ostream::operator<<();
  v32 = sub_10000EA44(v31, ",", 1);
  std::ios_base::getloc((v32 + *(*v32 - 24)));
  v33 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v34 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v34, "Round STS index: ", 17);
  v35 = std::ostream::operator<<();
  v36 = sub_10000EA44(v35, ",", 1);
  std::ios_base::getloc((v36 + *(*v36 - 24)));
  v37 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v37->__vftable[2].~facet_0)(v37, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v38 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v38, "Ranging event: ", 15);
  v39 = std::ostream::operator<<();
  sub_10000EA44(v39, " of ", 4);
  v40 = std::ostream::operator<<();
  v41 = sub_10000EA44(v40, ",", 1);
  std::ios_base::getloc((v41 + *(*v41 - 24)));
  v42 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v42->__vftable[2].~facet_0)(v42, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  if (*(a1 + 80) == 1)
  {
    LOBYTE(v122.__locale_) = 9;
    v43 = sub_10000EA44(&v126, &v122, 1);
    v44 = sub_10000EA44(v43, "Range (m): ", 11);
    *(v44 + *(*v44 - 24) + 16) = 5;
    if ((a1[40] & 1) == 0)
    {
      sub_1000195BC();
    }

    v45 = std::ostream::operator<<();
    v46 = sub_10000EA44(v45, ",", 1);
    std::ios_base::getloc((v46 + *(*v46 - 24)));
    v47 = std::locale::use_facet(&v122, &std::ctype<char>::id);
    (v47->__vftable[2].~facet_0)(v47, 10);
    std::locale::~locale(&v122);
    std::ostream::put();
    std::ostream::flush();
  }

  LOBYTE(v122.__locale_) = 9;
  v48 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v48, "Block size: ", 12);
  v49 = std::ostream::operator<<();
  v50 = sub_10000EA44(v49, ",", 1);
  std::ios_base::getloc((v50 + *(*v50 - 24)));
  v51 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v51->__vftable[2].~facet_0)(v51, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v52 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v52, "Round size: ", 12);
  v53 = std::ostream::operator<<();
  v54 = sub_10000EA44(v53, ",", 1);
  std::ios_base::getloc((v54 + *(*v54 - 24)));
  v55 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v55->__vftable[2].~facet_0)(v55, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v56 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v56, "Slot size: ", 11);
  v57 = std::ostream::operator<<();
  v58 = sub_10000EA44(v57, ",", 1);
  std::ios_base::getloc((v58 + *(*v58 - 24)));
  v59 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v59->__vftable[2].~facet_0)(v59, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v60 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v60, "Num. RX skips: ", 15);
  v61 = std::ostream::operator<<();
  v62 = sub_10000EA44(v61, ",", 1);
  std::ios_base::getloc((v62 + *(*v62 - 24)));
  v63 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v63->__vftable[2].~facet_0)(v63, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v64 = sub_10000EA44(&v126, &v122, 1);
  v65 = sub_10000EA44(v64, "RX skip reasons: ", 17);
  sub_10039C4E0(a1 + 6);
  if ((v124 & 0x80u) == 0)
  {
    v66 = &v122;
  }

  else
  {
    v66 = v122.__locale_;
  }

  if ((v124 & 0x80u) == 0)
  {
    v67 = v124;
  }

  else
  {
    v67 = v123;
  }

  v68 = sub_10000EA44(v65, v66, v67);
  v69 = sub_10000EA44(v68, ",", 1);
  std::ios_base::getloc((v69 + *(*v69 - 24)));
  v70 = std::locale::use_facet(&v130, &std::ctype<char>::id);
  (v70->__vftable[2].~facet_0)(v70, 10);
  std::locale::~locale(&v130);
  std::ostream::put();
  std::ostream::flush();
  if (v124 < 0)
  {
    operator delete(v122.__locale_);
  }

  LOBYTE(v122.__locale_) = 9;
  v71 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v71, "Next hop flag: ", 15);
  v72 = std::ostream::operator<<();
  v73 = sub_10000EA44(v72, ",", 1);
  std::ios_base::getloc((v73 + *(*v73 - 24)));
  v74 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v74->__vftable[2].~facet_0)(v74, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v75 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v75, "Next round index: ", 18);
  v76 = std::ostream::operator<<();
  v77 = sub_10000EA44(v76, ",", 1);
  std::ios_base::getloc((v77 + *(*v77 - 24)));
  v78 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v78->__vftable[2].~facet_0)(v78, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v79 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v79, "Num. successes: ", 16);
  v80 = std::ostream::operator<<();
  v81 = sub_10000EA44(v80, ",", 1);
  std::ios_base::getloc((v81 + *(*v81 - 24)));
  v82 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v82->__vftable[2].~facet_0)(v82, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v83 = sub_10000EA44(&v126, &v122, 1);
  v84 = sub_10000EA44(v83, "Responder info: [", 17);
  std::ios_base::getloc((v84 + *(*v84 - 24)));
  v85 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v85->__vftable[2].~facet_0)(v85, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  v86 = *(a1 + 11);
  for (i = *(a1 + 12); v86 != i; v86 += 16)
  {
    LOBYTE(v122.__locale_) = 9;
    v88 = sub_10000EA44(&v126, &v122, 1);
    LOBYTE(v122.__locale_) = 9;
    v89 = sub_10000EA44(v88, &v122, 1);
    v90 = sub_10000EA44(v89, "{", 1);
    std::ios_base::getloc((v90 + *(*v90 - 24)));
    v91 = std::locale::use_facet(&v122, &std::ctype<char>::id);
    (v91->__vftable[2].~facet_0)(v91, 10);
    std::locale::~locale(&v122);
    std::ostream::put();
    std::ostream::flush();
    LOBYTE(v122.__locale_) = 48;
    v92 = sub_100193BA0(&v126, &v122);
    *(v92 + *(*v92 - 24) + 8) = *(v92 + *(*v92 - 24) + 8) & 0xFFFFFFB5 | 8;
    LOBYTE(v122.__locale_) = 9;
    v93 = sub_10000EA44(&v126, &v122, 1);
    LOBYTE(v122.__locale_) = 9;
    v94 = sub_10000EA44(v93, &v122, 1);
    LOBYTE(v122.__locale_) = 9;
    v95 = sub_10000EA44(v94, &v122, 1);
    v96 = sub_10000EA44(v95, "RX status: 0x", 13);
    *(v96 + *(*v96 - 24) + 24) = 1;
    v97 = std::ostream::operator<<();
    v98 = sub_10000EA44(v97, ",", 1);
    std::ios_base::getloc((v98 + *(*v98 - 24)));
    v99 = std::locale::use_facet(&v122, &std::ctype<char>::id);
    (v99->__vftable[2].~facet_0)(v99, 10);
    std::locale::~locale(&v122);
    std::ostream::put();
    std::ostream::flush();
    *(&v128[-1].__locale_ + *(v126 - 24)) = *(&v128[-1].__locale_ + *(v126 - 24)) & 0xFFFFFFB5 | 2;
    LOBYTE(v122.__locale_) = 9;
    v100 = sub_10000EA44(&v126, &v122, 1);
    LOBYTE(v122.__locale_) = 9;
    v101 = sub_10000EA44(v100, &v122, 1);
    LOBYTE(v122.__locale_) = 9;
    v102 = sub_10000EA44(v101, &v122, 1);
    sub_10000EA44(v102, "CFO (ppm): ", 11);
    v103 = std::ostream::operator<<();
    v104 = sub_10000EA44(v103, ",", 1);
    std::ios_base::getloc((v104 + *(*v104 - 24)));
    v105 = std::locale::use_facet(&v122, &std::ctype<char>::id);
    (v105->__vftable[2].~facet_0)(v105, 10);
    std::locale::~locale(&v122);
    std::ostream::put();
    std::ostream::flush();
    LOBYTE(v122.__locale_) = 9;
    v106 = sub_10000EA44(&v126, &v122, 1);
    LOBYTE(v122.__locale_) = 9;
    v107 = sub_10000EA44(v106, &v122, 1);
    LOBYTE(v122.__locale_) = 9;
    v108 = sub_10000EA44(v107, &v122, 1);
    v109 = sub_10000EA44(v108, "soiRssi (dBm): ", 15);
    *(v109 + *(*v109 - 24) + 16) = 5;
    v110 = std::ostream::operator<<();
    v111 = sub_10000EA44(v110, ",", 1);
    std::ios_base::getloc((v111 + *(*v111 - 24)));
    v112 = std::locale::use_facet(&v122, &std::ctype<char>::id);
    (v112->__vftable[2].~facet_0)(v112, 10);
    std::locale::~locale(&v122);
    std::ostream::put();
    std::ostream::flush();
    LOBYTE(v122.__locale_) = 9;
    v113 = sub_10000EA44(&v126, &v122, 1);
    LOBYTE(v122.__locale_) = 9;
    v114 = sub_10000EA44(v113, &v122, 1);
    v115 = sub_10000EA44(v114, "}, ", 3);
    std::ios_base::getloc((v115 + *(*v115 - 24)));
    v116 = std::locale::use_facet(&v122, &std::ctype<char>::id);
    (v116->__vftable[2].~facet_0)(v116, 10);
    std::locale::~locale(&v122);
    std::ostream::put();
    std::ostream::flush();
  }

  LOBYTE(v122.__locale_) = 9;
  v117 = sub_10000EA44(&v126, &v122, 1);
  v118 = sub_10000EA44(v117, "]", 1);
  std::ios_base::getloc((v118 + *(*v118 - 24)));
  v119 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v119->__vftable[2].~facet_0)(v119, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  sub_10000EA44(&v126, "}", 1);
  std::stringbuf::str();
  v126 = v120;
  if (v129 < 0)
  {
    operator delete(v128[7].__locale_);
  }

  std::locale::~locale(v128);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_10039E7A0(unsigned __int16 *a1)
{
  sub_100193120(v16);
  sub_10000EA44(&v17, "BI: ", 4);
  std::ostream::operator<<();
  v2 = sub_10000EA44(&v17, ", ", 2);
  v3 = sub_1003A0BA8(*a1);
  sub_1003A03C4(v3, __p);
  if ((v15 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v5 = v15;
  }

  else
  {
    v5 = __p[1];
  }

  sub_10000EA44(v2, v4, v5);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a1 + 11);
  for (i = *(a1 + 12); v6 != i; v6 += 16)
  {
    LOBYTE(__p[0]) = 48;
    v8 = sub_100193BA0(&v17, __p);
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
    v9 = sub_10000EA44(&v17, ", <RX: 0x", 9);
    *(v9 + *(*v9 - 24) + 24) = 1;
    std::ostream::operator<<();
    *(&v19[-1].__locale_ + *(v17 - 24)) = *(&v19[-1].__locale_ + *(v17 - 24)) & 0xFFFFFFB5 | 2;
    v10 = sub_10000EA44(&v17, ", SR: ", 6);
    *(v10 + *(*v10 - 24) + 16) = 5;
    v11 = std::ostream::operator<<();
    sub_10000EA44(v11, ">", 1);
  }

  std::stringbuf::str();
  v17 = v12;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10039EAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100193C68(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10039EB08(unsigned __int16 *a1)
{
  sub_100193120(v125);
  std::ios_base::getloc((&v126 + *(v126 - 24)));
  v2 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  v3 = sub_10000EA44(&v126, "{", 1);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v5 = sub_10000EA44(&v126, &v122, 1);
  v6 = sub_10000EA44(v5, "Status: ", 8);
  v7 = sub_1003A0BA8(*a1);
  sub_1003A03C4(v7, &v122);
  if ((v124 & 0x80u) == 0)
  {
    locale = &v122;
  }

  else
  {
    locale = v122.__locale_;
  }

  if ((v124 & 0x80u) == 0)
  {
    v9 = v124;
  }

  else
  {
    v9 = v123;
  }

  v10 = sub_10000EA44(v6, locale, v9);
  v11 = sub_10000EA44(v10, ",", 1);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v130, &std::ctype<char>::id);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v130);
  std::ostream::put();
  std::ostream::flush();
  if (v124 < 0)
  {
    operator delete(v122.__locale_);
  }

  LOBYTE(v122.__locale_) = 48;
  v13 = sub_100193BA0(&v126, &v122);
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  LOBYTE(v122.__locale_) = 9;
  v14 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v14, "Session type: 0x", 16);
  v15 = std::ostream::operator<<();
  v16 = sub_10000EA44(v15, ",", 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  *(&v126 + *(v126 - 24) + 8) = *(&v126 + *(v126 - 24) + 8) & 0xFFFFFFB5 | 2;
  LOBYTE(v122.__locale_) = 9;
  v18 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v18, "UWB session id: ", 16);
  v19 = std::ostream::operator<<();
  v20 = sub_10000EA44(v19, ",", 1);
  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v22 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v22, "Responder index: ", 17);
  v23 = std::ostream::operator<<();
  v24 = sub_10000EA44(v23, ",", 1);
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v26 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v26, "Block start time (R1 ticks): ", 29);
  v27 = std::ostream::operator<<();
  v28 = sub_10000EA44(v27, ",", 1);
  std::ios_base::getloc((v28 + *(*v28 - 24)));
  v29 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v29->__vftable[2].~facet_0)(v29, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v30 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v30, "Block index: ", 13);
  v31 = std::ostream::operator<<();
  v32 = sub_10000EA44(v31, ",", 1);
  std::ios_base::getloc((v32 + *(*v32 - 24)));
  v33 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v34 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v34, "Round index: ", 13);
  v35 = std::ostream::operator<<();
  v36 = sub_10000EA44(v35, ",", 1);
  std::ios_base::getloc((v36 + *(*v36 - 24)));
  v37 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v37->__vftable[2].~facet_0)(v37, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v38 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v38, "Round STS index: ", 17);
  v39 = std::ostream::operator<<();
  v40 = sub_10000EA44(v39, ",", 1);
  std::ios_base::getloc((v40 + *(*v40 - 24)));
  v41 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v41->__vftable[2].~facet_0)(v41, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v42 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v42, "Ranging event: ", 15);
  v43 = std::ostream::operator<<();
  sub_10000EA44(v43, " of ", 4);
  v44 = std::ostream::operator<<();
  v45 = sub_10000EA44(v44, ",", 1);
  std::ios_base::getloc((v45 + *(*v45 - 24)));
  v46 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v46->__vftable[2].~facet_0)(v46, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v47 = sub_10000EA44(&v126, &v122, 1);
  v48 = sub_10000EA44(v47, "Range (m): ", 11);
  *(v48 + *(*v48 - 24) + 16) = 5;
  v49 = std::ostream::operator<<();
  v50 = sub_10000EA44(v49, ",", 1);
  std::ios_base::getloc((v50 + *(*v50 - 24)));
  v51 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v51->__vftable[2].~facet_0)(v51, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v52 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v52, "CFO (ppt): ", 11);
  v53 = std::ostream::operator<<();
  v54 = sub_10000EA44(v53, ",", 1);
  std::ios_base::getloc((v54 + *(*v54 - 24)));
  v55 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v55->__vftable[2].~facet_0)(v55, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 48;
  v56 = sub_100193BA0(&v126, &v122);
  *(v56 + *(*v56 - 24) + 8) = *(v56 + *(*v56 - 24) + 8) & 0xFFFFFFB5 | 8;
  LOBYTE(v122.__locale_) = 9;
  v57 = sub_10000EA44(&v126, &v122, 1);
  v58 = sub_10000EA44(v57, "Pre-poll RX status: 0x", 22);
  *(v58 + *(*v58 - 24) + 24) = 1;
  v59 = std::ostream::operator<<();
  v60 = sub_10000EA44(v59, ",", 1);
  std::ios_base::getloc((v60 + *(*v60 - 24)));
  v61 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v61->__vftable[2].~facet_0)(v61, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  *(&v126 + *(v126 - 24) + 8) = *(&v126 + *(v126 - 24) + 8) & 0xFFFFFFB5 | 2;
  LOBYTE(v122.__locale_) = 9;
  v62 = sub_10000EA44(&v126, &v122, 1);
  v63 = sub_10000EA44(v62, "Pre-poll soiRssi (dBm): ", 24);
  *(v63 + *(*v63 - 24) + 16) = 5;
  v64 = std::ostream::operator<<();
  v65 = sub_10000EA44(v64, ",", 1);
  std::ios_base::getloc((v65 + *(*v65 - 24)));
  v66 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v66->__vftable[2].~facet_0)(v66, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 48;
  v67 = sub_100193BA0(&v126, &v122);
  *(v67 + *(*v67 - 24) + 8) = *(v67 + *(*v67 - 24) + 8) & 0xFFFFFFB5 | 8;
  LOBYTE(v122.__locale_) = 9;
  v68 = sub_10000EA44(&v126, &v122, 1);
  v69 = sub_10000EA44(v68, "Poll RX status: 0x", 18);
  *(v69 + *(*v69 - 24) + 24) = 1;
  v70 = std::ostream::operator<<();
  v71 = sub_10000EA44(v70, ",", 1);
  std::ios_base::getloc((v71 + *(*v71 - 24)));
  v72 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v72->__vftable[2].~facet_0)(v72, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  *(&v126 + *(v126 - 24) + 8) = *(&v126 + *(v126 - 24) + 8) & 0xFFFFFFB5 | 2;
  LOBYTE(v122.__locale_) = 9;
  v73 = sub_10000EA44(&v126, &v122, 1);
  v74 = sub_10000EA44(v73, "Poll soiRssi (dBm): ", 20);
  *(v74 + *(*v74 - 24) + 16) = 5;
  v75 = std::ostream::operator<<();
  v76 = sub_10000EA44(v75, ",", 1);
  std::ios_base::getloc((v76 + *(*v76 - 24)));
  v77 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v77->__vftable[2].~facet_0)(v77, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 48;
  v78 = sub_100193BA0(&v126, &v122);
  *(v78 + *(*v78 - 24) + 8) = *(v78 + *(*v78 - 24) + 8) & 0xFFFFFFB5 | 8;
  LOBYTE(v122.__locale_) = 9;
  v79 = sub_10000EA44(&v126, &v122, 1);
  v80 = sub_10000EA44(v79, "Final RX status: 0x", 19);
  *(v80 + *(*v80 - 24) + 24) = 1;
  v81 = std::ostream::operator<<();
  v82 = sub_10000EA44(v81, ",", 1);
  std::ios_base::getloc((v82 + *(*v82 - 24)));
  v83 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v83->__vftable[2].~facet_0)(v83, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  *(&v126 + *(v126 - 24) + 8) = *(&v126 + *(v126 - 24) + 8) & 0xFFFFFFB5 | 2;
  LOBYTE(v122.__locale_) = 9;
  v84 = sub_10000EA44(&v126, &v122, 1);
  v85 = sub_10000EA44(v84, "Final soiRssi (dBm): ", 21);
  *(v85 + *(*v85 - 24) + 16) = 5;
  v86 = std::ostream::operator<<();
  v87 = sub_10000EA44(v86, ",", 1);
  std::ios_base::getloc((v87 + *(*v87 - 24)));
  v88 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v88->__vftable[2].~facet_0)(v88, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 48;
  v89 = sub_100193BA0(&v126, &v122);
  *(v89 + *(*v89 - 24) + 8) = *(v89 + *(*v89 - 24) + 8) & 0xFFFFFFB5 | 8;
  LOBYTE(v122.__locale_) = 9;
  v90 = sub_10000EA44(&v126, &v122, 1);
  v91 = sub_10000EA44(v90, "Final-data RX status: 0x", 24);
  *(v91 + *(*v91 - 24) + 24) = 1;
  v92 = std::ostream::operator<<();
  v93 = sub_10000EA44(v92, ",", 1);
  std::ios_base::getloc((v93 + *(*v93 - 24)));
  v94 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v94->__vftable[2].~facet_0)(v94, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  *(&v126 + *(v126 - 24) + 8) = *(&v126 + *(v126 - 24) + 8) & 0xFFFFFFB5 | 2;
  LOBYTE(v122.__locale_) = 9;
  v95 = sub_10000EA44(&v126, &v122, 1);
  v96 = sub_10000EA44(v95, "Final-data soiRssi (dBm): ", 26);
  *(v96 + *(*v96 - 24) + 16) = 5;
  v97 = std::ostream::operator<<();
  v98 = sub_10000EA44(v97, ",", 1);
  std::ios_base::getloc((v98 + *(*v98 - 24)));
  v99 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v99->__vftable[2].~facet_0)(v99, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v100 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v100, "Block size: ", 12);
  v101 = std::ostream::operator<<();
  v102 = sub_10000EA44(v101, ",", 1);
  std::ios_base::getloc((v102 + *(*v102 - 24)));
  v103 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v103->__vftable[2].~facet_0)(v103, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v104 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v104, "Round size: ", 12);
  v105 = std::ostream::operator<<();
  v106 = sub_10000EA44(v105, ",", 1);
  std::ios_base::getloc((v106 + *(*v106 - 24)));
  v107 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v107->__vftable[2].~facet_0)(v107, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v108 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v108, "Slot size: ", 11);
  v109 = std::ostream::operator<<();
  v110 = sub_10000EA44(v109, ",", 1);
  std::ios_base::getloc((v110 + *(*v110 - 24)));
  v111 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v111->__vftable[2].~facet_0)(v111, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v112 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v112, "Next hop flag: ", 15);
  v113 = std::ostream::operator<<();
  v114 = sub_10000EA44(v113, ",", 1);
  std::ios_base::getloc((v114 + *(*v114 - 24)));
  v115 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v115->__vftable[2].~facet_0)(v115, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v122.__locale_) = 9;
  v116 = sub_10000EA44(&v126, &v122, 1);
  sub_10000EA44(v116, "Next round index: ", 18);
  v117 = std::ostream::operator<<();
  v118 = sub_10000EA44(v117, ",", 1);
  std::ios_base::getloc((v118 + *(*v118 - 24)));
  v119 = std::locale::use_facet(&v122, &std::ctype<char>::id);
  (v119->__vftable[2].~facet_0)(v119, 10);
  std::locale::~locale(&v122);
  std::ostream::put();
  std::ostream::flush();
  sub_10000EA44(&v126, "}", 1);
  std::stringbuf::str();
  v126 = v120;
  if (v129 < 0)
  {
    operator delete(v128[7].__locale_);
  }

  std::locale::~locale(v128);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void *sub_1003A03C4@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1 <= -1034)
  {
    switch(a1)
    {
      case -4026:
        v2 = "SPLIT_DCK_MESSAGES_TOO_MANY_BYTES";
        break;
      case -4025:
        v2 = "SPLIT_DCK_MESSAGES_NOT_ENOUGH_BYTES";
        break;
      case -4024:
        v2 = "INVALID_DCK_SUB_EVENT_CODE";
        break;
      case -4023:
        v2 = "INVALID_DCK_SUB_EVENT_CATEGORY";
        break;
      case -4022:
        v2 = "DCK_NO_SUB_EVENT_CODE";
        break;
      case -4021:
        v2 = "DCK_NO_SUB_EVENT_CATEGORY";
        break;
      case -4020:
        v2 = "DCK_PULSE_SHAPE_COMBO_LENGTH_EXCEEDS_MSG_SIZE";
        break;
      case -4019:
        v2 = "DCK_PULSE_SHAPE_COMBO_LENGTH_EXCEEDS_UINT8_MAX";
        break;
      case -4018:
        v2 = "DCK_PULSE_SHAPE_COMBO_LENGTH_ZERO";
        break;
      case -4017:
        v2 = "DCK_NO_PULSE_SHAPE_COMBO_LENGTH";
        break;
      case -4016:
        v2 = "DCK_UWB_CONFIG_ID_LENGTH_EXCEEDS_MSG_SIZE";
        break;
      case -4015:
        v2 = "DCK_UWB_CONFIG_ID_LENGTH_EXCEEDS_UINT8_MAX";
        break;
      case -4014:
        v2 = "DCK_UWB_CONFIG_ID_LENGTH_ODD";
        break;
      case -4013:
        v2 = "DCK_UWB_CONFIG_ID_LENGTH_ZERO";
        break;
      case -4012:
        v2 = "DCK_NO_UWB_CONFIG_ID_LENGTH";
        break;
      case -4011:
        v2 = "DCK_PROTOCOL_VERSION_LENGTH_EXCEEDS_MSG_SIZE";
        break;
      case -4010:
        v2 = "DCK_PROTOCOL_VERSION_LENGTH_EXCEEDS_UINT8_MAX";
        break;
      case -4009:
        v2 = "DCK_PROTOCOL_VERSION_LENGTH_ODD";
        break;
      case -4008:
        v2 = "DCK_PROTOCOL_VERSION_LENGTH_ZERO";
        break;
      case -4007:
        v2 = "DCK_NO_PROTOCOL_VERSION_LENGTH";
        break;
      case -4006:
        v2 = "DCK_MSG_UNEXPECTED_DATA_LENGTH";
        break;
      case -4005:
        v2 = "DCK_HEADER_ID_MISMATCHES";
        break;
      case -4004:
        v2 = "INVALID_DCK_MESSAGE_ID";
        break;
      case -4003:
        v2 = "INVALID_DCK_PROTOCOL_TYPE";
        break;
      case -4002:
        v2 = "DCK_MISMATCHED_DATA_LENGTH";
        break;
      case -4001:
        v2 = "DCK_MESSAGE_EXCEEDS_MAX_SIZE";
        break;
      case -4000:
        v2 = "DCK_HEADER_TOO_SHORT";
        break;
      default:
        JUMPOUT(0);
    }
  }

  else
  {
    v2 = "SUCCESS";
    switch(a1)
    {
      case 0:
        return sub_100004A08(a2, v2);
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 7:
      case 9:
      case 10:
      case 11:
      case 15:
      case 16:
      case 17:
      case 24:
      case 25:
      case 26:
      case 27:
      case 30:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 58:
      case 59:
      case 60:
      case 61:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
LABEL_10:
        v2 = "UNKNOWN";
        break;
      case 6:
        v2 = "HSI_ERR_BUSY";
        break;
      case 8:
        v2 = "HSI_ERR_SES_MAX_LIMIT_REACHED";
        break;
      case 12:
        v2 = "HSI_ERR_SES_TIMEOUT";
        break;
      case 13:
        v2 = "HSI_ERR_SES_SYNC_TIMEOUT";
        break;
      case 14:
        v2 = "HSI_ERR_MISSED_RANGING_CYCLE";
        break;
      case 18:
        v2 = "HSI_ERR_SES_ALREADY_ACTIVE";
        break;
      case 19:
        v2 = "HSI_ERR_SES_ALREADY_DISABLED";
        break;
      case 20:
        v2 = "HSI_ERR_SES_SCHEDULING_CONFLICT";
        break;
      case 21:
        v2 = "HSI_ERR_SES_COEX_CONFLICT";
        break;
      case 22:
        v2 = "HSI_ERR_SES_WRONG_SYNC";
        break;
      case 23:
        v2 = "HSI_ERR_START_TIME_ELAPSED";
        break;
      case 28:
        v2 = "HSI_ERR_INVALID_SES_ROLE";
        break;
      case 29:
        v2 = "HSI_ERR_INVALID_ANTENNA_CFG";
        break;
      case 31:
        v2 = "HSI_ERR_INVALID_PREAMBLE";
        break;
      case 32:
        v2 = "HSI_ERR_INVALID_FEM_CFG";
        break;
      case 39:
        v2 = "HSI_ERR_INVALID_CHANNEL";
        break;
      case 48:
        v2 = "HSI_ERR_INVALID_ALISHA_UWB_CFG_ID";
        break;
      case 49:
        v2 = "HSI_ERR_INVALID_ALISHA_RAN_MULTIPLIER";
        break;
      case 50:
        v2 = "HSI_ERR_INVALID_ALISHA_NRESPONDERS";
        break;
      case 51:
        v2 = "HSI_ERR_INVALID_SLOT_SIZE";
        break;
      case 52:
        v2 = "HSI_ERR_INVALID_NSLOTS_PER_ROUND";
        break;
      case 53:
        v2 = "HSI_ERR_INVALID_RBLOCK_CFG";
        break;
      case 54:
        v2 = "HSI_ERR_ALISHA_UWB_SES_ID_NOT_FOUND";
        break;
      case 55:
        v2 = "HSI_ERR_ALISHA_UWB_SES_ID_ALREADY_IN_USE";
        break;
      case 56:
        v2 = "HSI_ERR_ALISHA_KEY_STORE_FULL";
        break;
      case 57:
        v2 = "HSI_ERR_INVALID_ALISHA_RESPONDER_IDX";
        break;
      case 62:
        v2 = "HSI_ERR_SLOT_TIME_ELAPSED";
        break;
      case 63:
        v2 = "HSI_ERR_INVALID_PULSE_SHAPE_COMBO";
        break;
      case 64:
        v2 = "HSI_ERR_INVALID_ALISHA_HOP_MODE";
        break;
      case 65:
        v2 = "HSI_ERR_INVALID_ALISHA_HOP_SEQUENCE";
        break;
      case 71:
        v2 = "HSI_ERR_ALISHA_URSK_RETRIEVAL_FAILED";
        break;
      case 72:
        v2 = "HSI_ERR_ALISHA_GET_KEY_ALREADY_PENDING";
        break;
      case 73:
        v2 = "HSI_ERR_STS_INDEX_EXHAUSTED";
        break;
      case 74:
        v2 = "HSI_ERR_BLOCK_IDX_EXHAUSTED";
        break;
      case 75:
        v2 = "HSI_ERR_ALISHA_URSK_TTL_EXPIRED";
        break;
      case 76:
        v2 = "HSI_ERR_INVALID_ALISHA_STS_INDEX_0";
        break;
      case 77:
        v2 = "HSI_ERR_ALISHA_RESPONSE_TIMEOUT";
        break;
      case 78:
        v2 = "HSI_ERR_ALISHA_TOTAL_TIMEOUT";
        break;
      case 79:
        v2 = "HSI_ERR_UNAUTHENTICATED_CAL_BLOB";
        break;
      case 98:
        v2 = "HSI_ERR_ALISHA_TIMER_CREATION_FAILED";
        break;
      case 99:
        v2 = "HSI_ERR_ALISHA_TIMER_QUERY_FAILED";
        break;
      case 100:
        v2 = "HSI_ERR_ALISHA_TIMER_RESP_INVALID";
        break;
      case 101:
        v2 = "HSI_ERR_ALISHA_TIMER_DELETION_FAILED";
        break;
      case 112:
        v2 = "HSI_ERR_INVALID_ACWG_ROUNDS_OFFSET";
        break;
      case 113:
        v2 = "HSI_ERR_INVALID_ACWG_CONFIG";
        break;
      case 114:
        v2 = "HSI_ERR_SC_GET_KEY_INVALID_KEY_TYPE";
        break;
      case 115:
        v2 = "HSI_ERR_ACWG_FDATA2_RX_FAILED";
        break;
      default:
        switch(a1)
        {
          case -1033:
            v2 = "PREWARM_SECURE_ELEMENT_CHANNEL_UNEXPECTED_RSP";
            break;
          case -1032:
            v2 = "PREWARM_SECURE_ELEMENT_CHANNEL_EMPTY_RSP";
            break;
          case -1031:
            v2 = "PREWARM_SECURE_ELEMENT_CHANNEL_TIMED_OUT";
            break;
          case -1030:
            v2 = "PREWARM_SECURE_ELEMENT_CHANNEL_CMD_FAILED";
            break;
          case -1029:
            v2 = "GET_TEST_MODE_FAILED";
            break;
          case -1028:
            v2 = "SET_TEST_MODE_FAILED";
            break;
          case -1027:
            v2 = "CONFIG_MISSING_MANDATORY_ANTENNA_MASK_KEY";
            break;
          case -1026:
            v2 = "SUBSYSTEM_TIME_CONVERSION_FAILED";
            break;
          case -1025:
            v2 = "TIME_CONVERSION_NOT_READY";
            break;
          case -1024:
            v2 = "GET_SESSION_STATS_AOP_COMMAND_FAILED";
            break;
          case -1023:
            v2 = "RANGE_ENABLE_UNDEFINED_ERROR";
            break;
          case -1022:
            v2 = "RANGE_ENABLE_TIME_CONVERSION_FAILED";
            break;
          case -1021:
            v2 = "PASSTHROUGH_SESSION_NOT_SUPPORTED";
            break;
          case -1020:
            v2 = "SET_URSK_TTL_NOT_SUPPORTED";
            break;
          case -1019:
            v2 = "DELETE_KEYS_TIMED_OUT";
            break;
          case -1018:
            v2 = "DELETE_KEYS_ROSE_COMMAND_FAILED";
            break;
          case -1017:
            v2 = "SET_URSK_TTL_ROSE_COMMAND_FAILED";
            break;
          case -1016:
            v2 = "CONFIG_CONTAINS_INVALID_SYNC_CODE_INDEX";
            break;
          case -1015:
            v2 = "CONFIG_MISSING_MANDATORY_ANCHOR_KEY";
            break;
          case -1014:
            v2 = "CONFIG_MISSING_MANDATORY_PASSTHROUGH_KEY";
            break;
          case -1013:
            v2 = "BUILD_ALISHA_SESSION_FAILED";
            break;
          case -1012:
            v2 = "SET_DEBUG_KEY_NOT_SUPPORTED";
            break;
          case -1011:
            v2 = "ALISHA_KEY_ROSE_COMMAND_ALREADY_IN_FLIGHT";
            break;
          case -1010:
            v2 = "SET_DEBUG_KEY_TIMED_OUT";
            break;
          case -1009:
            v2 = "SET_DEBUG_KEY_ROSE_COMMAND_FAILED";
            break;
          case -1008:
            v2 = "GET_KEY_RETURNED_WRONG_UWB_SESSION_ID";
            break;
          case -1007:
            v2 = "GET_KEY_ROSE_COMMAND_FAILED";
            break;
          case -1006:
            v2 = "GET_CAPABILITIES_TIMED_OUT";
            break;
          case -1005:
            v2 = "GET_CAPABILITIES_ROSE_COMMAND_FAILED";
            break;
          case -1004:
            v2 = "INTERNAL_ERROR_NO_RESULT_PAYLOAD";
            break;
          case -1003:
            v2 = "UNKNOWN_HSI_STATUS_CODE";
            break;
          case -1002:
            v2 = "GET_KEY_TIMED_OUT";
            break;
          case -1001:
            v2 = "RANGE_ENABLE_TIMED_OUT";
            break;
          case -1000:
            v2 = "FAILURE";
            break;
          default:
            goto LABEL_10;
        }

        break;
    }
  }

  return sub_100004A08(a2, v2);
}

uint64_t sub_1003A0BA8(unsigned int a1)
{
  if (a1 > 0x73)
  {
    return 4294966293;
  }

  else
  {
    return dword_10056E2C4[a1];
  }
}

uint64_t sub_1003A0BE0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a4[1];
  *(a1 + 32) = *a4;
  *(a1 + 40) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a5[1];
  *(a1 + 48) = *a5;
  *(a1 + 56) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003A2E04(a1 + 64, a6);
  sub_1003A2E9C(a1 + 96, a7);
  sub_1003A2F34(a1 + 128, a8);
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0;
  *(a1 + 184) = 0;
  *(a1 + 188) = 3;
  if (!*a1)
  {
    v16 = "_parameterNegotiator";
    v17 = 56;
    goto LABEL_20;
  }

  if (!*(a1 + 16))
  {
    v16 = "_rangingLimitManager";
    v17 = 57;
    goto LABEL_20;
  }

  if (!*(a1 + 32))
  {
    v16 = "_uwbSystem";
    v17 = 58;
    goto LABEL_20;
  }

  if (!*(a1 + 88))
  {
    v16 = "_rangeEnableCallback";
    v17 = 59;
    goto LABEL_20;
  }

  if (!*(a1 + 120))
  {
    v16 = "_rangeDisableCallback";
    v17 = 60;
LABEL_20:
    __assert_rtn("StateMachine", "AlishaStateMachine.cpp", v17, v16);
  }

  return a1;
}

void sub_1003A0D40(_Unwind_Exception *a1)
{
  sub_1003A304C((v1 + 12));
  sub_1003A2FCC((v1 + 8));
  v3 = v1[7];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  v4 = v1[5];
  if (v4)
  {
    sub_10000AD84(v4);
  }

  v5 = v1[3];
  if (v5)
  {
    sub_10000AD84(v5);
  }

  v6 = v1[1];
  if (v6)
  {
    sub_10000AD84(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003A0DB0(void *a1)
{
  sub_1003A0E44(a1);
  v2 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v2)
  {
    sub_10000AD84(v2);
  }

  v3 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  if (v3)
  {
    sub_10000AD84(v3);
  }

  v4 = a1[5];
  a1[4] = 0;
  a1[5] = 0;
  if (v4)
  {
    sub_10000AD84(v4);
  }

  v5 = a1[7];
  a1[6] = 0;
  a1[7] = 0;
  if (v5)
  {
    sub_10000AD84(v5);
  }

  sub_1003A30CC((a1 + 8));
  sub_1003A3150((a1 + 12));

  return sub_1003A31D4((a1 + 16));
}

uint64_t sub_1003A0E44(uint64_t a1)
{
  v2 = *(a1 + 160);
  if ((v2 - 1) < 2)
  {
    goto LABEL_4;
  }

  if (!*(a1 + 160))
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2 == 5)
  {
LABEL_4:
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 152))
  {
    sub_1003A2CD0(a1 + 128, v2, 0);
  }

  *(a1 + 160) = 0;
LABEL_10:
  sub_100397130(*a1);
  if (*(a1 + 168) == 1)
  {
    *(a1 + 168) = 0;
  }

  if (*(a1 + 184) == 1)
  {
    *(a1 + 184) = 0;
  }

  *(a1 + 188) = 3;
  if (!v3)
  {
    return 0;
  }

  v4 = sub_1003A19FC(a1, 3);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A03C4(v4, __p);
    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315138;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#alisha-sm,_resetToInitialState called while ranging. rangeDisable returns status code %s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4;
}

uint64_t sub_1003A0FB8(uint64_t a1, uint64_t a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), &__p);
    v5 = v13 >= 0 ? &__p : __p;
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK cap RQ in state %s", buf, 0xCu);
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

  v6 = sub_1003A0E44(a1);
  if (v6)
  {
    sub_1003A0E44(a1);
    LODWORD(__p) = v6;
    *(&__p + 4) = 0;
    return v6;
  }

  else
  {
    sub_1003A2D48(&__p, a2, a2 + 24, a2 + 48);
    v8 = sub_1003975AC(*a1, &__p);
    if ((*&v9 & 0x10000) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1004;
    }

    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_1003A0E44(a1);
      *buf = v11;
      *&buf[4] = 0;
      v18[0] = v11;
    }

    else
    {
      if ((v9 & 0x10000) == 0)
      {
        sub_1000195BC();
      }

      LODWORD(v18[0]) = 0;
      *(v18 + 4) = HIDWORD(v8) & 0xFFFF0000 | WORD2(v8) | (v9 << 32) | 0x1000000000000;
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    return v18[0];
  }
}

void sub_1003A1180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10039A168(va);
  _Unwind_Resume(a1);
}

void sub_1003A11A4(uint64_t a1@<X0>, int *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), __p);
    v9 = v32 >= 0 ? __p : *__p;
    *buf = 136315138;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK session RQ in state %s", buf, 0xCu);
    if (v32 < 0)
    {
      operator delete(*__p);
    }
  }

  if (*(a1 + 160))
  {
    sub_1003A0E44(a1);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(*v10 + 16))(v10, 0);
    v11 = *(a1 + 48);
    if (v11)
    {
      (*(*v11 + 104))(v11);
    }
  }

  (*(**(a1 + 32) + 24))(__p);
  v12 = *__p;
  v13 = v31;
  v14 = *(a1 + 48);
  if (v14)
  {
    (*(*v14 + 112))(v14);
  }

  if (v12 || (v13 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C6DA8();
    }

    sub_1003A0E44(a1);
    *a4 = -3012;
    *(a4 + 4) = 0;
    *(a4 + 16) = 0;
  }

  else
  {
    *(a1 + 164) = a2[1];
    *(a1 + 168) = 1;
    if ((v31 & 1) == 0)
    {
      goto LABEL_24;
    }

    v15 = *(a1 + 184);
    *(a1 + 172) = *&__p[4];
    *(a1 + 180) = v30;
    if ((v15 & 1) == 0)
    {
      *(a1 + 184) = 1;
    }

    v16 = *(a2 + 4);
    v26 = *a2;
    v27 = v16;
    v28 = a3;
    sub_10039778C(*a1, &v26, buf);
    if (*buf || (v37 & 1) == 0)
    {
      if (v37)
      {
        v19 = 0;
      }

      else
      {
        v19 = -1004;
      }

      if (*buf)
      {
        v20 = *buf;
      }

      else
      {
        v20 = v19;
      }

      sub_1003A0E44(a1);
      v21 = 0;
      *a4 = v20;
      *(a4 + 4) = 0;
    }

    else
    {
      v17 = *(a1 + 160);
      if (v17 != 1)
      {
        if (*(a1 + 152))
        {
          sub_1003A2CD0(a1 + 128, v17, 1);
          v18 = v37;
          *(a1 + 160) = 1;
          if ((v18 & 1) == 0)
          {
LABEL_24:
            sub_1000195BC();
          }
        }

        else
        {
          *(a1 + 160) = 1;
        }
      }

      v21 = 1;
      v22 = 1 << v35;
      v23 = v34;
      v24 = HIDWORD(v34);
      v25 = v36;
      *a4 = 0;
      *(a4 + 4) = v23;
      *(a4 + 8) = v24;
      *(a4 + 12) = v22;
      *(a4 + 13) = v25;
    }

    *(a4 + 16) = v21;
  }
}

uint64_t sub_1003A14CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), &__p);
    v9 = (SBYTE7(v29) & 0x80u) == 0 ? &__p : __p;
    *buf = 136315138;
    *v37 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK session setup RQ in state %s", buf, 0xCu);
    if (SBYTE7(v29) < 0)
    {
      operator delete(__p);
    }
  }

  if (*(a1 + 160) != 1)
  {
    result = sub_1003A0E44(a1);
    v17 = -3008;
LABEL_23:
    *a4 = v17;
    goto LABEL_24;
  }

  if ((*(a1 + 168) & 1) == 0)
  {
    result = sub_1003A0E44(a1);
    v17 = -3002;
    goto LABEL_23;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    result = sub_1003A0E44(a1);
    v17 = -3003;
    goto LABEL_23;
  }

  v10 = *(a2 + 8);
  v11 = *(a2 + 4);
  v32[0] = *a2;
  v32[1] = v11;
  v33 = v10;
  v34 = a3;
  sub_100397AE8(*a1, v32, &__p);
  v12 = __p;
  v13 = v31;
  if (!__p && (v31 & 1) != 0)
  {
    if ((*(**(a1 + 16) + 16))(*(a1 + 16)))
    {
      v14 = *(a1 + 160);
      if (v14 != 2)
      {
        if (*(a1 + 152))
        {
          sub_1003A2CD0(a1 + 128, v14, 2);
        }

        *(a1 + 160) = 2;
      }

      result = *(a1 + 48);
      if (result)
      {
        result = (*(*result + 40))(result);
      }

      v16 = 0;
      goto LABEL_37;
    }

    if ((v31 & 1) == 0 || (*(a1 + 168) & 1) == 0)
    {
      goto LABEL_47;
    }

    v26 = v29;
    v35 = v30;
    v18 = *(a1 + 88);
    if (!v18)
    {
      sub_100037B10();
    }

    (*(*v18 + 48))(buf);
    v12 = *buf;
    v13 = v38;
    if (!*buf && (v38 & 1) != 0)
    {
      v19 = *a1;
      v35 = *&v37[4];
      v16 = sub_1003974B4(v19, &v35);
      v20 = *(a1 + 160);
      if (v20 != 3)
      {
        if (*(a1 + 152))
        {
          sub_1003A2CD0(a1 + 128, v20, 3);
        }

        *(a1 + 160) = 3;
      }

      (*(**(a1 + 16) + 32))(*(a1 + 16));
      result = *(a1 + 48);
      if (result)
      {
        result = (*(*result + 24))(result, BYTE9(v26), v26, BYTE6(v26));
      }

LABEL_37:
      if (v31 & 1) != 0 && (*(a1 + 184))
      {
        v21 = v28;
        v22 = *(a1 + 176);
        v23 = *(a1 + 180);
        *(a1 + 184) = 0;
        *a4 = 0;
        *(a4 + 8) = v22;
        *(a4 + 16) = v16;
        *(a4 + 24) = v23;
        *(a4 + 28) = v21;
        *(a4 + 32) = 1;
        return result;
      }

LABEL_47:
      sub_1000195BC();
    }
  }

  if (v13)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1004;
  }

  if (v12)
  {
    v25 = v12;
  }

  else
  {
    v25 = v24;
  }

  result = sub_1003A0E44(a1);
  *a4 = v25;
LABEL_24:
  *(a4 + 8) = 0;
  *(a4 + 32) = 0;
  return result;
}

uint64_t sub_1003A1844(uint64_t a1, _DWORD *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), __p);
    if (v13 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK suspend RQ in state %s", buf, 0xCu);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 160);
  if ((v6 - 3) >= 2)
  {
    if (v6 == 1)
    {
      sub_1003A0E44(a1);
      return 4294964296;
    }

    if (v6 != 2)
    {
      return 0x10000000000;
    }

    if (!*(a1 + 152))
    {
      goto LABEL_13;
    }

    v7 = a1 + 128;
    LOBYTE(v8) = 2;
    goto LABEL_12;
  }

  if ((*(a1 + 168) & 1) == 0)
  {
    v9 = 4294964294;
    sub_1003A0E44(a1);
    return v9;
  }

  if (*(a1 + 164) != *a2)
  {
    sub_1003A0E44(a1);
    return 4294964295;
  }

  v10 = sub_1003A19FC(a1, 2);
  if (v10)
  {
    LODWORD(v9) = v10;
    sub_1003A0E44(a1);
    return v9;
  }

  v8 = *(a1 + 160);
  if (v8 != 5)
  {
    if (!*(a1 + 152))
    {
      goto LABEL_13;
    }

    v7 = a1 + 128;
LABEL_12:
    sub_1003A2CD0(v7, v8, 5);
LABEL_13:
    *(a1 + 160) = 5;
  }

  return 0x10000000000;
}

uint64_t sub_1003A19FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 120);
  if (!v3)
  {
    sub_100037B10();
  }

  (*(*v3 + 48))(&v8);
  v5 = v8;
  (*(**(a1 + 16) + 40))(*(a1 + 16));
  v6 = *(a1 + 48);
  if (v6)
  {
    if (v12 == 1)
    {
      (*(*v6 + 120))(v6, &v9);
      v6 = *(a1 + 48);
    }

    (*(*v6 + 32))(v6, a2);
  }

  if (v12 == 1 && __p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1003A1B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a18 == 1)
  {
    sub_1004C6E34(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003A1B3C@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), &__p);
    v7 = v16 >= 0 ? &__p : __p;
    *buf = 136315138;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK recovery RQ in state %s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0;
  result = sub_1003A1C9C(a1, 1, *a2, buf, &__p);
  if (__p || (v18 & 1) == 0)
  {
    if (v18)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1004;
    }

    if (__p)
    {
      v13 = __p;
    }

    else
    {
      v13 = v12;
    }

    result = sub_1003A0E44(a1);
    v11 = 0;
    *a3 = v13;
    *(a3 + 8) = 0;
  }

  else
  {
    v9 = v15;
    v10 = v17;
    *a3 = 0;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    v11 = 1;
  }

  *(a3 + 24) = v11;
  return result;
}

uint64_t sub_1003A1C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  if ((a2 - 3) <= 0xFDu)
  {
    sub_1004C6EEC();
  }

  v10 = *(a1 + 160);
  if (v10 > 2)
  {
    if (v10 != 4)
    {
      if (v10 != 3)
      {
        goto LABEL_14;
      }

      v12 = sub_1003A19FC(a1, 3);
      if (v12)
      {
        v13 = v12;
        result = sub_1003A0E44(a1);
        *a5 = v13;
LABEL_35:
        *(a5 + 8) = 0;
        *(a5 + 40) = 0;
        return result;
      }

      v11 = *(a1 + 160);
      if (v11 == 5)
      {
        goto LABEL_14;
      }

      if (*(a1 + 152))
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

LABEL_12:
    result = sub_1003A0E44(a1);
    v15 = -3005;
LABEL_34:
    *a5 = v15;
    goto LABEL_35;
  }

  if (v10 < 2)
  {
    goto LABEL_12;
  }

  if (*(a1 + 152))
  {
    LOBYTE(v11) = 2;
LABEL_6:
    sub_1003A2CD0(a1 + 128, v11, 5);
  }

LABEL_7:
  *(a1 + 160) = 5;
LABEL_14:
  v16 = *(a1 + 48);
  if (v16)
  {
    (*(*v16 + 16))(v16, a2);
  }

  if ((*(a1 + 168) & 1) == 0)
  {
    result = sub_1003A0E44(a1);
    v15 = -3002;
    goto LABEL_34;
  }

  if (*(a1 + 164) != a3)
  {
    result = sub_1003A0E44(a1);
    v15 = -3006;
    goto LABEL_34;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(*v17 + 104))(v17);
  }

  (*(**(a1 + 32) + 24))(&v40);
  v18 = v40;
  v19 = v43;
  v20 = *(a1 + 48);
  if (v20)
  {
    (*(*v20 + 112))(v20);
  }

  if (v18 || (v19 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C6E60();
    }

    result = sub_1003A0E44(a1);
    v15 = -3013;
    goto LABEL_34;
  }

  v21.n128_f64[0] = sub_100397F80(*a1, a4, &v35);
  v22 = v35;
  v23 = v39;
  if (v35 || (v39 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (a4[1] == 1 && (v36 & 0x100) == 0)
  {
    result = sub_1003A0E44(a1);
    v15 = -3004;
    goto LABEL_34;
  }

  if ((*(**(a1 + 16) + 16))(*(a1 + 16), v21))
  {
    v24 = *(a1 + 160);
    if (v24 != 2)
    {
      if (*(a1 + 152))
      {
        sub_1003A2CD0(a1 + 128, v24, 2);
      }

      *(a1 + 160) = 2;
    }

    result = *(a1 + 48);
    if (result)
    {
      result = (*(*result + 40))(result);
    }

    v25 = 0;
    goto LABEL_56;
  }

  if ((v39 & 1) == 0 || (*(a1 + 168) & 1) == 0)
  {
LABEL_67:
    sub_1000195BC();
  }

  v34 = v37;
  v44 = v38;
  sub_1003A3258(a1 + 64);
  v22 = v31;
  v23 = v33;
  if (v31 || (v33 & 1) == 0)
  {
LABEL_59:
    if (v23)
    {
      v29 = 0;
    }

    else
    {
      v29 = -1004;
    }

    if (v22)
    {
      v30 = v22;
    }

    else
    {
      v30 = v29;
    }

    result = sub_1003A0E44(a1);
    *a5 = v30;
    goto LABEL_35;
  }

  v26 = *a1;
  v44 = v32;
  v25 = sub_1003974B4(v26, &v44);
  v27 = *(a1 + 160);
  if (v27 != 3)
  {
    if (*(a1 + 152))
    {
      sub_1003A2CD0(a1 + 128, v27, 3);
    }

    *(a1 + 160) = 3;
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16));
  result = *(a1 + 48);
  if (result)
  {
    result = (*(*result + 24))(result, BYTE9(v34), v34, BYTE6(v34));
  }

LABEL_56:
  if ((v39 & 1) == 0 || (v43 & 1) == 0)
  {
    goto LABEL_67;
  }

  v28 = v36;
  *(a5 + 8) = v41;
  *(a5 + 16) = v42;
  *a5 = 0;
  *(a5 + 24) = v25;
  *(a5 + 32) = v28;
  *(a5 + 40) = 1;
  return result;
}

uint64_t sub_1003A2100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), &__p);
    v7 = v17 >= 0 ? &__p : __p;
    *buf = 136315138;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK configurable recovery RQ in state %s", buf, 0xCu);
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }

  *buf = *(a2 + 4) | 0x100;
  result = sub_1003A1C9C(a1, 2, *a2, buf, &__p);
  if (__p || (v21 & 1) == 0)
  {
    if (v21)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1004;
    }

    if (__p)
    {
      v14 = __p;
    }

    else
    {
      v14 = v13;
    }

    result = sub_1003A0E44(a1);
    v12 = 0;
    *a3 = v14;
    *(a3 + 8) = 0;
  }

  else
  {
    if ((v20 & 1) == 0)
    {
      sub_1004C7000();
    }

    v9 = v19;
    v10 = v16;
    v11 = v18;
    *a3 = 0;
    *(a3 + 8) = v9;
    *(a3 + 12) = v10;
    *(a3 + 16) = v11;
    v12 = 1;
  }

  *(a3 + 24) = v12;
  return result;
}

NSObject *sub_1003A227C(uint64_t a1, _BYTE *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), __p);
    v5 = v15 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Processing DCK suspend RS in state %s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 160);
  if (*(a1 + 160) <= 3u)
  {
    if ((v6 - 1) < 3)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C702C(v6, v7);
      }

      return 4294964287;
    }

    if (*(a1 + 160))
    {
      return v4;
    }

    goto LABEL_20;
  }

  if (v6 == 5)
  {
LABEL_20:
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      sub_1003A0BC8(v6, __p);
      v10 = v15 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#alisha-sm,processDCKSuspendRS: ignoring suspend response in state %s", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  if (v6 != 4)
  {
    return v4;
  }

  if (*a2)
  {
    if (*(a1 + 152))
    {
      sub_1003A2CD0(a1 + 128, 4, 3);
    }

    v4 = 0;
    v8 = 3;
    goto LABEL_18;
  }

  v12 = sub_1003A19FC(a1, *(a1 + 188));
  if (!v12)
  {
    v13 = *(a1 + 160);
    if (v13 == 5)
    {
      return 0;
    }

    if (*(a1 + 152))
    {
      sub_1003A2CD0(a1 + 128, v13, 5);
    }

    v4 = 0;
    v8 = 5;
LABEL_18:
    *(a1 + 160) = v8;
    return v4;
  }

  v4 = v12;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C70CC();
  }

  return v4;
}

void sub_1003A24D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004A08(v33, off_1009A8AF8[v3]);
    v7 = SBYTE3(v37);
    v8 = *v33;
    sub_1003A0BC8(*(a1 + 160), __p);
    v9 = v33;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v32 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315394;
    v39 = v9;
    v40 = 2080;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Suspend on timeout event %s in state %s", buf, 0x16u);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE3(v37) < 0)
    {
      operator delete(*v33);
    }
  }

  if (v3 > 3)
  {
    if (v3 == 5)
    {
      if (*(a1 + 160) != 4)
      {
        goto LABEL_63;
      }

      v17 = sub_1003A19FC(a1, *(a1 + 188));
      if (v17)
      {
LABEL_54:
        sub_1003A0E44(a1);
        v15 = 0;
        *a3 = v17;
        goto LABEL_64;
      }

      v20 = *(a1 + 160);
      if (v20 == 5)
      {
        goto LABEL_63;
      }

      if (*(a1 + 152))
      {
LABEL_61:
        sub_1003A2CD0(a1 + 128, v20, 5);
      }

LABEL_62:
      *(a1 + 160) = 5;
      goto LABEL_63;
    }

    if (v3 != 4)
    {
      return;
    }

    v11 = *(a1 + 160);
LABEL_21:
    if (v11 <= 2)
    {
      if ((v11 - 1) < 2)
      {
        v14 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        sub_1003A2AA0(v3, v33);
        v27 = SBYTE3(v37);
        v28 = *v33;
        sub_1003A0BC8(*(a1 + 160), __p);
        v29 = v33;
        if (v27 < 0)
        {
          v29 = v28;
        }

        if (v32 >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        *buf = 136315394;
        v39 = v29;
        v40 = 2080;
        v41 = v30;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#alisha-sm,suspendOnTimeout error: %s event is received but state is %s", buf, 0x16u);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        if ((SBYTE3(v37) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_86;
      }

LABEL_63:
      v15 = 0;
      *a3 = 0;
      goto LABEL_64;
    }

    if (v11 == 5)
    {
      goto LABEL_63;
    }

    if (v11 != 4)
    {
      if (v11 != 3)
      {
        goto LABEL_63;
      }

      v17 = sub_1003A19FC(a1, *(a1 + 188));
      if (v17)
      {
        goto LABEL_54;
      }

      v21 = *(a1 + 160);
      if (v21 == 5)
      {
LABEL_31:
        *a3 = 0;
        *(a3 + 4) = 117440514;
        v15 = 1;
        *(a3 + 8) = 1;
        *(a3 + 10) = 0;
        *(a3 + 12) = 1;
LABEL_65:
        *(a3 + 16) = v15;
        return;
      }

      if (*(a1 + 152))
      {
        sub_1003A2CD0(a1 + 128, v21, 5);
      }

LABEL_30:
      *(a1 + 160) = 5;
      goto LABEL_31;
    }

    v17 = sub_1003A19FC(a1, *(a1 + 188));
    if (v17)
    {
      goto LABEL_54;
    }

    v20 = *(a1 + 160);
    if (v20 == 5)
    {
      goto LABEL_63;
    }

    if (*(a1 + 152))
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  if ((v3 - 2) < 2)
  {
    v11 = *(a1 + 160);
    if (v11 <= 5)
    {
      v12 = 1 << v11;
      if ((v12 & 0x31) == 0)
      {
        if ((v12 & 6) == 0)
        {
          if (*(a1 + 168))
          {
            *(a1 + 188) = v3 != 2;
            if (*(a1 + 152))
            {
              sub_1003A2CD0(a1 + 128, 3, 4);
              v19 = *(a1 + 168);
              *(a1 + 160) = 4;
              if ((v19 & 1) == 0)
              {
                sub_1000195BC();
              }
            }

            else
            {
              *(a1 + 160) = 4;
            }

            v22 = *(a1 + 164);
            *a3 = 0;
            *(a3 + 4) = v22;
            *(a3 + 12) = 0;
            v15 = 1;
            goto LABEL_65;
          }

          sub_1003A0E44(a1);
          v15 = 0;
          v16 = -3002;
          goto LABEL_25;
        }

        v13 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        sub_1003A2AA0(v3, v33);
        v23 = SBYTE3(v37);
        v24 = *v33;
        sub_1003A0BC8(*(a1 + 160), __p);
        v25 = v33;
        if (v23 < 0)
        {
          v25 = v24;
        }

        v26 = v32 >= 0 ? __p : __p[0];
        *buf = 136315394;
        v39 = v25;
        v40 = 2080;
        v41 = v26;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#alisha-sm,suspendOnTimeout error: %s event is received but state is %s", buf, 0x16u);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        if ((SBYTE3(v37) & 0x80000000) == 0)
        {
LABEL_24:
          sub_1003A0E44(a1);
          v15 = 0;
          v16 = -3010;
LABEL_25:
          *a3 = v16;
LABEL_64:
          *(a3 + 4) = 0;
          goto LABEL_65;
        }

LABEL_86:
        operator delete(*v33);
        goto LABEL_24;
      }

      goto LABEL_63;
    }

    goto LABEL_21;
  }

  if (v3 == 1)
  {
    if (*(a1 + 160) != 2)
    {
      goto LABEL_63;
    }

    if (*(a1 + 152))
    {
      sub_1003A2CD0(a1 + 128, 2, 5);
    }

    goto LABEL_30;
  }

  if (!v3)
  {
    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C7158(v18, v33);
      v18 = *v33;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v33 = 136315650;
      *&v33[4] = "/Library/Caches/com.apple.xbs/Sources/Proximity/Libraries/AlishaSupport/AlishaStateMachine.cpp";
      v34 = 1024;
      v35 = 525;
      v36 = 2080;
      v37 = "suspendOnTimeout";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "#alisha-sm,%s:%d: assertion failure in %s", v33, 0x1Cu);
    }

    abort();
  }
}

void sub_1003A2A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A2AB4(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(*(a1 + 160), __p);
    v3 = v11 >= 0 ? __p : *__p;
    *buf = 136315138;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#alisha-sm,Stop ranging in state %s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(*__p);
    }
  }

  v4 = *(a1 + 160);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3u:
        v5 = sub_1003A19FC(a1, 3);
        if (!v5)
        {
          v6 = *(a1 + 160);
          if (v6 != 5)
          {
            if (*(a1 + 152))
            {
              sub_1003A2CD0(a1 + 128, v6, 5);
            }

            *(a1 + 160) = 5;
          }

          goto LABEL_23;
        }

        break;
      case 4u:
        v5 = sub_1003A19FC(a1, *(a1 + 188));
        if (!v5)
        {
          v9 = *(a1 + 160);
          if (v9 != 5)
          {
            if (*(a1 + 152))
            {
              sub_1003A2CD0(a1 + 128, v9, 5);
            }

            *(a1 + 160) = 5;
          }

          goto LABEL_25;
        }

        break;
      case 5u:
        goto LABEL_25;
      default:
        return v12[0];
    }

    v7 = v5;
    sub_1003A0E44(a1);
    *__p = v7;
    *&__p[4] = 0;
    v12[0] = v7;
    return v12[0];
  }

  if (!*(a1 + 160))
  {
LABEL_25:
    LODWORD(v12[0]) = 0;
    *(v12 + 4) = 0;
    return v12[0];
  }

  if (v4 == 1)
  {
    sub_1003A0E44(a1);
    goto LABEL_25;
  }

  if (v4 == 2)
  {
    if (*(a1 + 152))
    {
      sub_1003A2CD0(a1 + 128, 2, 5);
    }

    *(a1 + 160) = 5;
LABEL_23:
    LODWORD(v12[0]) = 0;
    *(v12 + 4) = 0x100000107000002;
  }

  return v12[0];
}

uint64_t sub_1003A2CD0(uint64_t a1, char a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100037B10();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t *sub_1003A2D48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1001FBC68(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_1001FBC68(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 1);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_100009A48(a1 + 6, *a4, *(a4 + 8), *(a4 + 8) - *a4);
  return a1;
}

void sub_1003A2DD0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A2E04(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003A2E9C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003A2F34(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003A2FCC(uint64_t a1)
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

uint64_t sub_1003A304C(uint64_t a1)
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

uint64_t sub_1003A30CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_1003A3150(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_1003A31D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_1003A3258(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1003A32B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = sub_1003A455C(a1, a2);
  sub_1003A2F34(v11 + 32, a3);
  v12 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v13 = a5[1];
  *(a1 + 96) = *a5;
  *(a1 + 104) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a6[1];
  *(a1 + 112) = *a6;
  *(a1 + 120) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C7230(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  if (!*(a1 + 24))
  {
    v24 = "_constructSessionCallback";
    v25 = 31;
    goto LABEL_18;
  }

  if (!*(a1 + 64))
  {
    v24 = "_uwbSystem";
    v25 = 32;
    goto LABEL_18;
  }

  if (!*(a1 + 96))
  {
    v24 = "_paramNegotiator";
    v25 = 33;
    goto LABEL_18;
  }

  if (!*(a1 + 112))
  {
    v24 = "_rangingLimitManager";
    v25 = 34;
LABEL_18:
    __assert_rtn("AcwgManager", "AcwgManager.cpp", v25, v24);
  }

  return a1;
}

uint64_t sub_1003A3494(void *a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C72A8(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  sub_1003A3558(a1);
  sub_100021914((a1 + 18));
  v10 = a1[17];
  a1[17] = 0;
  if (v10)
  {
    operator delete();
  }

  sub_1003A3664(a1 + 16, 0);
  v11 = a1[15];
  if (v11)
  {
    sub_10000AD84(v11);
  }

  v12 = a1[13];
  if (v12)
  {
    sub_10000AD84(v12);
  }

  v13 = a1[11];
  if (v13)
  {
    sub_10000AD84(v13);
  }

  v14 = a1[9];
  if (v14)
  {
    sub_10000AD84(v14);
  }

  sub_1001FF1A0((a1 + 4));
  return sub_1001FF220(a1);
}

uint64_t sub_1003A3558(void *a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C7320(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = a1[16];
  if (v10)
  {
    sub_1003A0DB0(v10);
    sub_1003A3664(a1 + 16, 0);
  }

  if (a1[10])
  {
    sub_1003A3704(a1, &v16);
    if (v19 == 1)
    {
      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }
    }
  }

  v11 = a1[17];
  a1[17] = 0;
  if (v11)
  {
    operator delete();
  }

  sub_100022400(a1 + 18);
  v12 = a1[9];
  a1[8] = 0;
  a1[9] = 0;
  if (v12)
  {
    sub_10000AD84(v12);
  }

  v13 = a1[13];
  a1[12] = 0;
  a1[13] = 0;
  if (v13)
  {
    sub_10000AD84(v13);
  }

  v14 = a1[15];
  a1[14] = 0;
  a1[15] = 0;
  if (v14)
  {
    sub_10000AD84(v14);
  }

  sub_1003A45F4(a1);
  return sub_1003A31D4((a1 + 4));
}

void *sub_1003A3664(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1001FF1A0((v2 + 16));
    sub_1003A304C((v2 + 12));
    sub_1003A2FCC((v2 + 8));
    v3 = v2[7];
    if (v3)
    {
      sub_10000AD84(v3);
    }

    v4 = v2[5];
    if (v4)
    {
      sub_10000AD84(v4);
    }

    v5 = v2[3];
    if (v5)
    {
      sub_10000AD84(v5);
    }

    v6 = v2[1];
    if (v6)
    {
      sub_10000AD84(v6);
    }

    operator delete();
  }

  return result;
}

void sub_1003A3704(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C7398(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    (*(*v12 + 32))(v12);
    v13 = *(a1 + 88);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    if (v13)
    {
      sub_10000AD84(v13);
    }
  }

  else
  {
    v14[0] = 0;
    v17 = 0;
    *a2 = 0;
    sub_1003433A0((a2 + 2), v14);
    if (v17 == 1 && __p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }
}

void sub_1003A37D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    sub_1004C1F34(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A37F8(void *a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C7410(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  if (!a1[16])
  {
    operator new();
  }

  if (!a1[17])
  {
    operator new();
  }

  return 0;
}

void sub_1003A3A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  sub_1001FF1A0(va);
  sub_1003A304C(va1);
  sub_1003A2FCC(v17 - 72);
  if (a11)
  {
    sub_10000AD84(a11);
  }

  if (a13)
  {
    sub_10000AD84(a13);
  }

  if (a15)
  {
    sub_10000AD84(a15);
  }

  if (a17)
  {
    sub_10000AD84(a17);
  }

  operator delete();
}

uint64_t sub_1003A3AF8(uint64_t a1, char a2, char a3)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 136315138;
    *&v14[4] = "_stateChangedHandler";
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#acwg-mgr,In method: '%s'", v14, 0xCu);
    v6 = qword_1009F9820;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(a2, v14);
    v7 = v15;
    v8 = *v14;
    sub_1003A0BC8(a3, __p);
    v9 = v14;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v13 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315394;
    v17 = v9;
    v18 = 2080;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#acwg-mgr,State machine state changed handler. Old state: %s. New state: %s", buf, 0x16u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*v14);
    }
  }

  return sub_1003A2CD0(a1 + 32, a2, a3);
}

void sub_1003A3C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A3CB0(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C7488(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *(a1 + 128);
  if (!v10)
  {
    sub_1004C7500();
  }

  v11 = sub_1003A2AB4(v10);
  return sub_1003A3D14(a1, v11);
}

uint64_t sub_1003A3D14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = sub_1003A6E4C(*(a1 + 136), a2);
  if ((v3 & 0x1000000) == 0)
  {
    goto LABEL_3;
  }

  if (BYTE4(v2) == 3)
  {
    if ((v3 & 0x10000) != 0)
    {
      if (BYTE1(v3) < 3u)
      {
        return 4294967196;
      }

      goto LABEL_3;
    }

LABEL_36:
    sub_1000195BC();
  }

  if (BYTE4(v2) == 2)
  {
    if (v3)
    {
      if (HIBYTE(v2) - 1) < 7u && ((0x69u >> (HIBYTE(v2) - 1)))
      {
        return dword_10056E934[(HIBYTE(v2) - 1)];
      }

      goto LABEL_3;
    }

    goto LABEL_36;
  }

  if (BYTE4(v2) != 1)
  {
    goto LABEL_3;
  }

  if ((v2 & 0x1000000000000) == 0)
  {
    goto LABEL_36;
  }

  if (BYTE5(v2) == 2)
  {
    return 4294967196;
  }

  if (BYTE5(v2) == 255 || BYTE5(v2) == 133)
  {
    return 4294967194;
  }

LABEL_3:
  v4 = 0;
  if (v2 <= -1034)
  {
    if ((v2 + 4026) >= 0x1B)
    {
      if ((v2 + 2024) > 0x18)
      {
        if ((v2 + 3013) >= 0xE)
        {
          return v4;
        }
      }

      else if (((1 << (v2 - 24)) & 0x73FFEF) != 0)
      {
        return 4294967194;
      }
    }

    return 4294967196;
  }

  if ((v2 + 1033) < 0x22)
  {
    return 4294967196;
  }

  v5 = (v2 - 6) > 0x3B || ((1 << (v2 - 6)) & 0xF0FFC0206C3F1C5) == 0;
  if (!v5 || (v2 - 71) <= 0x2C && ((1 << (v2 - 71)) & 0x1E00780001FFLL) != 0)
  {
    return 4294967196;
  }

  return v4;
}

void sub_1003A3E90(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C752C(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  LOWORD(v37[0]) = *(a2 + 58);
  v43 = 0;
  v44 = 0;
  v42 = 0;
  sub_1001FE45C(&v42, v37, v37 + 1, 1);
  sub_10039AF98(v37, &v42, a2, a2 + 24);
  v14 = sub_1003A0FB8(*(a1 + 128), v37);
  v16 = v15;
  v17 = sub_1003A3D14(a1, v14);
  if (v17)
  {
    *a3 = v17;
    *(a3 + 4) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    if ((v16 & 0x10000) == 0)
    {
      sub_1000195BC();
    }

    v18 = HIDWORD(v14);
    v19 = HIWORD(v14);
    v20 = *(a2 + 52);
    v21 = *(a2 + 48);
    LOWORD(v34[0]) = v18;
    HIWORD(v34[0]) = v19;
    v34[1] = v20;
    v35 = v16;
    v36 = v21;
    sub_1003A11A4(*(a1 + 128), v34, *(a2 + 56), &v28);
    v22 = sub_1003A3D14(a1, v28);
    if (v22)
    {
      v23 = 0;
      *a3 = v22;
      *(a3 + 4) = 0;
    }

    else
    {
      if ((v33 & 1) == 0)
      {
        sub_1000195BC();
      }

      v24 = v29;
      v25 = v30;
      v26 = v31;
      v27 = v32;
      *a3 = 0;
      *(a3 + 4) = v19;
      *(a3 + 6) = v16;
      *(a3 + 7) = v26;
      *(a3 + 8) = v25;
      *(a3 + 12) = v24;
      v23 = 1;
      *(a3 + 14) = v27;
    }

    *(a3 + 16) = v23;
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void sub_1003A4050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10039A168(va);
  v11 = *(v9 - 72);
  if (v11)
  {
    *(v9 - 64) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003A4088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C75A4(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = *(a2 + 8);
  v15 = *(a2 + 4);
  v27[0] = *a2;
  v27[1] = v15;
  v28 = v14;
  sub_1003A14CC(*(a1 + 128), v27, *(a2 + 9) | 0x100, v22);
  result = sub_1003A3D14(a1, v22[0]);
  if (result)
  {
    v17 = 0;
    *a3 = result;
    *(a3 + 8) = 0;
  }

  else
  {
    if ((v26 & 1) == 0)
    {
      sub_1000195BC();
    }

    v18 = v22[2];
    v19 = v23;
    v20 = v24;
    v21 = v25;
    *a3 = 0;
    *(a3 + 8) = v18;
    *(a3 + 16) = v19;
    *(a3 + 24) = v20;
    *(a3 + 28) = v21;
    v17 = 1;
  }

  *(a3 + 32) = v17;
  return result;
}

uint64_t sub_1003A4168@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C761C(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v21 = a2;
  sub_1003A1B3C(*(a1 + 128), &v21, v18);
  result = sub_1003A3D14(a1, v18[0]);
  if (result)
  {
    v15 = 0;
    *a3 = result;
    *(a3 + 8) = 0;
  }

  else
  {
    if ((v20 & 1) == 0)
    {
      sub_1000195BC();
    }

    v16 = v18[2];
    v17 = v19;
    *a3 = 0;
    *(a3 + 8) = v16;
    *(a3 + 16) = v17;
    v15 = 1;
  }

  *(a3 + 24) = v15;
  return result;
}

void sub_1003A4224(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C7694(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  sub_100397178(*(a1 + 96), a2, a3);
}

uint64_t sub_1003A428C(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_1003A42BC(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C770C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *(a1 + 64);
  if (!v10)
  {
    sub_1004C7784();
  }

  return (*(*v10 + 32))(v10, a1 + 144);
}

uint64_t sub_1003A4338(uint64_t a1, int a2, int *a3)
{
  v16 = a2;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C77B0(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  (*(**(a1 + 64) + 24))(&v15);
  v13 = v15;
  if (!v15)
  {
    sub_1003A4DE0((a1 + 144), &v16, &v16);
    v13 = v15;
  }

  *a3 = v13;
  return sub_1003A3D14(a1, v13);
}

uint64_t sub_1003A43F4(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "handleUWBSystemError";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "#acwg-mgr,In method: '%s'", &v5, 0xCu);
    v2 = qword_1009F9820;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#acwg-mgr,handleUWBSystemError", &v5, 2u);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    sub_10039711C(v3);
  }

  sub_100022400((a1 + 144));
  return 0;
}

void *sub_1003A4500@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1 <= -102)
  {
    if (a1 == -103)
    {
      v2 = "URSK_UNAVAILABLE";
    }

    else
    {
      v2 = "WRONG_PARAMETERS";
    }
  }

  else if (a1 == -101)
  {
    v2 = "RESOURCE_UNAVAILABLE";
  }

  else if (a1)
  {
    v2 = "UNKNOWN_ERROR";
  }

  else
  {
    v2 = "SUCCESS";
  }

  return sub_100004A08(a2, v2);
}

uint64_t sub_1003A455C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003A45F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_1003A46E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A8B38;
  a2[1] = v2;
  return result;
}

void sub_1003A4714(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4[3])
  {
    sub_1004C7828();
  }

  v5 = *a2;
  if (v4[10])
  {
    sub_1003A3704(*(a1 + 8), v19);
    if (v22 == 1)
    {
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }
    }
  }

  v6 = v4[3];
  if (!v6)
  {
    sub_100037B10();
  }

  (*(*v6 + 48))(v16);
  v7 = v16[0];
  if (LODWORD(v16[0]) || (v18 & 1) == 0)
  {
    if (v18)
    {
      v11 = 0;
    }

    else
    {
      v11 = -1004;
    }

    if (!LODWORD(v16[0]))
    {
      v7 = v11;
    }

    goto LABEL_25;
  }

  v8 = v16[1];
  v9 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v4[11];
  v4[10] = v8;
  v4[11] = v9;
  if (v10)
  {
    sub_10000AD84(v10);
    v8 = v4[10];
  }

  if (!v8)
  {
    v7 = -1013;
LABEL_25:
    *a3 = v7;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    goto LABEL_26;
  }

  (*(*v8 + 24))(v8, v5);
  if (*a3)
  {
    sub_1003A3704(v4, v12);
    if (v15 == 1 && v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }

  else
  {
    v12[0] = (*(*v4[10] + 16))(v4[10]);
    sub_1003A4958(v4 + 18, v12, v12);
  }

LABEL_26:
  if (v18 == 1)
  {
    if (v17)
    {
      sub_10000AD84(v17);
    }
  }
}

void sub_1003A48E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  if (a21 == 1)
  {
    if (a20)
    {
      sub_10000AD84(a20);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A490C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1003A4958(void *a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

__n128 sub_1003A4C04(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009A8BC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1003A4C3C(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_1003A4C64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1003A4D2C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009A8C88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1003A4D64(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *a2, *a3);
}

uint64_t sub_1003A4D94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1003A4DE0(void *a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t sub_1003A5010(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

uint64_t sub_1003A5050(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = sub_1003A455C(a1, a2);
  sub_1003A2F34(v16 + 32, a3);
  v17 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v18 = a5[1];
  *(a1 + 96) = *a5;
  *(a1 + 104) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = a6[1];
  *(a1 + 112) = *a6;
  *(a1 + 120) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = a7[1];
  *(a1 + 128) = *a7;
  *(a1 + 136) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = a8[1];
  *(a1 + 144) = *a8;
  *(a1 + 152) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  v22 = a9[1];
  *(a1 + 216) = *a9;
  *(a1 + 224) = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  if (!*(a1 + 24))
  {
    v24 = "_constructSessionCallback";
    v25 = 34;
    goto LABEL_24;
  }

  if (!*(a1 + 64))
  {
    v24 = "_system";
    v25 = 35;
    goto LABEL_24;
  }

  if (!*(a1 + 96))
  {
    v24 = "_dckCoder";
    v25 = 36;
    goto LABEL_24;
  }

  if (!*(a1 + 112))
  {
    v24 = "_paramNegotiator";
    v25 = 37;
    goto LABEL_24;
  }

  if (!*(a1 + 128))
  {
    v24 = "_rangingLimitManager";
    v25 = 38;
LABEL_24:
    __assert_rtn("AlishaManager", "AlishaManager.cpp", v25, v24);
  }

  return a1;
}

uint64_t sub_1003A52AC(void *a1)
{
  sub_1003A5374(a1);
  v2 = a1[28];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  sub_100021914((a1 + 22));
  v3 = a1[21];
  a1[21] = 0;
  if (v3)
  {
    operator delete();
  }

  sub_1003A3664(a1 + 20, 0);
  v4 = a1[19];
  if (v4)
  {
    sub_10000AD84(v4);
  }

  v5 = a1[17];
  if (v5)
  {
    sub_10000AD84(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    sub_10000AD84(v6);
  }

  v7 = a1[13];
  if (v7)
  {
    sub_10000AD84(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    sub_10000AD84(v8);
  }

  v9 = a1[9];
  if (v9)
  {
    sub_10000AD84(v9);
  }

  sub_1001FF1A0((a1 + 4));

  return sub_1001FF220(a1);
}

uint64_t sub_1003A5374(void *a1)
{
  v3 = a1 + 20;
  v2 = a1[20];
  if (v2)
  {
    sub_1003A0DB0(v2);
    sub_1003A3664(v3, 0);
  }

  if (a1[10])
  {
    sub_1003A5488(a1, &v12);
    if (v15 == 1)
    {
      if (__p)
      {
        v14 = __p;
        operator delete(__p);
      }
    }
  }

  v4 = a1[21];
  a1[21] = 0;
  if (v4)
  {
    operator delete();
  }

  sub_100022400(a1 + 22);
  v5 = a1[9];
  a1[8] = 0;
  a1[9] = 0;
  if (v5)
  {
    sub_10000AD84(v5);
  }

  v6 = a1[13];
  a1[12] = 0;
  a1[13] = 0;
  if (v6)
  {
    sub_10000AD84(v6);
  }

  v7 = a1[15];
  a1[14] = 0;
  a1[15] = 0;
  if (v7)
  {
    sub_10000AD84(v7);
  }

  v8 = a1[17];
  a1[16] = 0;
  a1[17] = 0;
  if (v8)
  {
    sub_10000AD84(v8);
  }

  v9 = a1[19];
  a1[18] = 0;
  a1[19] = 0;
  if (v9)
  {
    sub_10000AD84(v9);
  }

  v10 = a1[28];
  a1[27] = 0;
  a1[28] = 0;
  if (v10)
  {
    sub_10000AD84(v10);
  }

  sub_1003A45F4(a1);
  return sub_1003A31D4((a1 + 4));
}

void sub_1003A5488(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 88);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    if (v4)
    {

      sub_10000AD84(v4);
    }
  }

  else
  {
    v5[0] = 0;
    v8 = 0;
    *a2 = 0;
    sub_1003433A0((a2 + 2), v5);
    if (v8 == 1 && __p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }
}

void sub_1003A553C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    sub_1004C1F34(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A555C(void *a1)
{
  if (!a1[20])
  {
    operator new();
  }

  if (!a1[21])
  {
    operator new();
  }

  return 0;
}

void sub_1003A57D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  sub_1001FF1A0(va);
  sub_1003A304C(va1);
  sub_1003A2FCC(v17 - 72);
  if (a11)
  {
    sub_10000AD84(a11);
  }

  if (a13)
  {
    sub_10000AD84(a13);
  }

  if (a15)
  {
    sub_10000AD84(a15);
  }

  if (a17)
  {
    sub_10000AD84(a17);
  }

  operator delete();
}

uint64_t sub_1003A584C(uint64_t a1, char a2, char a3)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(a2, v14);
    v7 = v15;
    v8 = v14[0];
    sub_1003A0BC8(a3, __p);
    v9 = v14;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v13 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315394;
    v17 = v9;
    v18 = 2080;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#alisha-mgr,State machine state changed handler. Old state: %s. New state: %s", buf, 0x16u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  return sub_1003A2CD0(a1 + 32, a2, a3);
}

void sub_1003A598C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A59B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 160);
  if (!v2)
  {
    sub_1004C7854();
  }

  v4 = sub_1003A2AB4(v2);
  v17 = v4;
  v18 = v5;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = (v5 & 0x1000000) == 0;
  }

  if (!v6)
  {
    sub_10039A6B8(&v17 + 4, &v13);
    if (v13)
    {
      v7 = "dckEncodedResult.statusCode == StatusCode::SUCCESS";
      v8 = 143;
    }

    else
    {
      if (v16)
      {
        __p = 0;
        v10 = 0;
        v11 = 0;
        sub_100009A48(&__p, v14, v15, v15 - v14);
        v12 = 1;
        *a2 = 0;
        sub_10039B130((a2 + 8), &__p);
        if (v12 == 1 && __p)
        {
          v10 = __p;
          operator delete(__p);
        }

        if (v16 == 1)
        {
          if (v14)
          {
            v15 = v14;
            operator delete(v14);
          }
        }

        return;
      }

      v7 = "dckEncodedResult.payload.has_value()";
      v8 = 144;
    }

    __assert_rtn("stopRanging", "AlishaManager.cpp", v8, v7);
  }

  *a2 = v4;

  sub_10039B130((a2 + 8), &unk_1009F79A0);
}

void sub_1003A5AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a18 == 1)
  {
    if (a15)
    {
      operator delete(a15);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A5B44(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[18];
  if (v6)
  {
    (*(*v6 + 16))(v6, a2);
  }

  v7 = sub_1003984A8(a1[12], a2);
  if ((v7 & 0x1000000000000) == 0)
  {
    v8 = a1[27];
    if (v8)
    {
      (*(*v8 + 56))(v8, v7);
    }

    *a3 = v7;
    v9 = (a3 + 8);
LABEL_19:

    sub_10039B130(v9, &unk_1009F79A0);
    return;
  }

  if ((v7 & 0xFF00000000) != 0x200000000)
  {
    v11 = a1[27];
    if (v11)
    {
      (*(*v11 + 56))(v11, 4294963293);
    }

    *a3 = -4003;
    v9 = (a3 + 8);
    goto LABEL_19;
  }

  v35 = -1000;
  sub_10039B130(&v36, &unk_1009F79A0);
  if (BYTE5(v7) <= 6u)
  {
    if (BYTE5(v7) > 3u)
    {
      switch(BYTE5(v7))
      {
        case 4u:
          goto LABEL_11;
        case 5u:
          sub_10039A2C8(a2, &v22);
          v35 = v22;
          if (v24 != 1)
          {
            break;
          }

          sub_1003A14CC(a1[20], &v22 + 4, 0, &v30);
          v35 = v30;
          if (v33 != 1)
          {
            break;
          }

          sub_100398D3C(&v32, &v25);
          sub_1003A6270(&v35, &v25);
          if (v29 != 1)
          {
            break;
          }

          v15 = __p;
          if (!__p)
          {
            break;
          }

          v27 = __p;
LABEL_62:
          operator delete(v15);
          break;
        case 6u:
          goto LABEL_11;
      }
    }

    else
    {
      switch(BYTE5(v7))
      {
        case 1u:
          sub_100399A5C(a2, &v30);
          v35 = v30;
          if (v34 == 1)
          {
            v22 = sub_1003A0FB8(a1[20], &v32);
            LODWORD(v23) = v14;
            v35 = v22;
            if ((v14 & 0x10000) != 0)
            {
              sub_100398558(&v22 + 2, &v25);
              sub_1003A6270(&v35, &v25);
              if (v29 == 1)
              {
                if (__p)
                {
                  v27 = __p;
                  operator delete(__p);
                }
              }
            }
          }

          sub_1003A62A4(&v30);
          break;
        case 2u:
          goto LABEL_11;
        case 3u:
          sub_10039A1BC(a2, &v25);
          v35 = v25;
          if (v27 == 1)
          {
            sub_1003A11A4(a1[20], &v25 + 1, 0, &v22);
            v35 = v22;
            if (v24 == 1)
            {
              sub_100398830(&v22 + 4, &v30);
              goto LABEL_59;
            }
          }

          break;
      }
    }
  }

  else
  {
    if (BYTE5(v7) <= 0x15u)
    {
      if (((1 << SBYTE5(v7)) & 0x3BFC00) != 0)
      {
LABEL_11:
        v10 = a1[27];
        if (v10)
        {
          (*(*v10 + 56))(v10, 4294963292);
        }

        *a3 = -4004;
        sub_10039B130((a3 + 8), &unk_1009F79A0);
        if ((v38 & 1) != 0 && v36)
        {
          *(&v36 + 1) = v36;
          operator delete(v36);
        }

        return;
      }

      if (BYTE5(v7) == 9)
      {
        v22 = sub_10039A530(a1[12], a2);
        LODWORD(v23) = v18;
        v35 = v22;
        if ((v18 & 1) == 0)
        {
          goto LABEL_63;
        }

        sub_1003A1B3C(a1[20], &v22 + 1, &v25);
        v35 = v25;
        if (v28 != 1)
        {
          goto LABEL_63;
        }

        sub_10039958C(&__p, &v30);
        goto LABEL_59;
      }

      if (BYTE5(v7) == 18)
      {
        v22 = sub_10039A5E8(a1[12], a2);
        v23 = v12;
        v35 = v22;
        if ((v12 & 0x100000000) == 0)
        {
          goto LABEL_63;
        }

        sub_1003A2100(a1[20], &v22 + 4, &v25);
        v35 = v25;
        if (v28 != 1)
        {
          goto LABEL_63;
        }

        sub_100399784(&__p, &v30);
        goto LABEL_59;
      }
    }

    if (BYTE5(v7) != 7)
    {
      if (BYTE5(v7) == 8)
      {
        v13 = sub_10039A49C(a1[12], a2);
        v30 = v13;
        v31 = WORD2(v13);
        v35 = v13;
        if ((v13 & 0x10000000000) != 0)
        {
          v35 = sub_1003A227C(a1[20], &v31);
        }
      }

      goto LABEL_63;
    }

    v25 = sub_10039A3E4(a1[12], a2);
    LODWORD(__p) = v16;
    v35 = v25;
    if (v16)
    {
      v17 = sub_1003A1844(a1[20], &v25 + 1);
      LODWORD(v22) = v17;
      WORD2(v22) = WORD2(v17);
      v35 = v17;
      if ((v17 & 0x10000000000) != 0)
      {
        sub_100399340(&v22 + 4, &v30);
LABEL_59:
        sub_1003A6270(&v35, &v30);
        if (v33 != 1)
        {
          goto LABEL_63;
        }

        v15 = v32.n128_u64[0];
        if (!v32.n128_u64[0])
        {
          goto LABEL_63;
        }

        v32.n128_u64[1] = v32.n128_u64[0];
        goto LABEL_62;
      }
    }
  }

LABEL_63:
  if (v35)
  {
    v25 = sub_1003A6E4C(a1[21], v35);
    LODWORD(__p) = v19;
    v35 = v25;
    if ((v19 & 0x1000000) != 0)
    {
      sub_10039A6B8(&v25 + 4, &v30);
      v35 = v30;
      sub_1003A6858(&v36, &v32);
      if (v33 == 1)
      {
        if (v32.n128_u64[0])
        {
          v32.n128_u64[1] = v32.n128_u64[0];
          operator delete(v32.n128_u64[0]);
        }
      }
    }

    v20 = a1[27];
    if (v20)
    {
      if (v35)
      {
        (*(*v20 + 56))(v20);
      }

      else
      {
        if ((BYTE3(__p) & 1) == 0)
        {
          __assert_rtn("processDCKMessage", "AlishaManager.cpp", 308, "evtGenResult.payload.has_value()");
        }

        (*(*v20 + 48))(v20, &v25 + 4);
      }
    }
  }

  v21 = a1[18];
  if (v21 && v38 == 1)
  {
    (*(*v21 + 24))(v21, &v36);
  }

  *a3 = v35;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  if (v38 == 1)
  {
    *(a3 + 8) = v36;
    *(a3 + 24) = v37;
    v37 = 0;
    v36 = 0uLL;
    *(a3 + 32) = 1;
  }
}

void sub_1003A61E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (*(v17 - 56) == 1)
  {
    v19 = *(v17 - 80);
    if (v19)
    {
      *(v17 - 72) = v19;
      operator delete(v19);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_1003A6270(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  sub_1003A6858((a1 + 2), (a2 + 2));
  return a1;
}

uint64_t sub_1003A62A4(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      *(a1 + 64) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      *(a1 + 40) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      *(a1 + 16) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

void sub_1003A6304(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 144);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2);
  }

  sub_100397178(*(a1 + 112), a2, &v13);
  *a4 = v13;
  sub_10039B130((a4 + 8), &unk_1009F79A0);
  if (v16 == 1)
  {
    sub_10039AB1C(&v14, &v10);
    *a4 = v10;
    sub_1003A6858(a4 + 8, &__p);
    if (v12 == 1 && __p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    v9 = *(a3 + 24);
    *a3 = v14;
    *(a3 + 16) = v15;
    if ((v9 & 1) == 0)
    {
      *(a3 + 24) = 1;
    }
  }
}

void sub_1003A641C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A6444(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = -1000;
  sub_10039B130((a3 + 8), &unk_1009F79A0);
  if ((a2 - 1) >= 5)
  {
    if (!a2)
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#alisha-mgr,SessionRequested timeout received", buf, 2u);
      }

      *a3 = 0;
    }
  }

  else
  {
    v6 = *(a1 + 160);
    if (!v6)
    {
      return;
    }

    sub_1003A24D0(v6, a2, &v21);
    v7 = v21;
    if (!v21)
    {
      *a3 = 0;
      if (v24 != 1)
      {
        return;
      }

      if (v23 == 1)
      {
        sub_10039A6B8(&v22, buf);
        *a3 = *buf;
        sub_1003A6858(a3 + 8, &__p);
      }

      else
      {
        if (v23)
        {
          __assert_rtn("processTimeoutEvent", "AlishaManager.cpp", 369, "false");
        }

        sub_10039915C(&v22, buf);
        *a3 = *buf;
        sub_1003A6858(a3 + 8, &__p);
      }

      goto LABEL_16;
    }

    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1003A2AA0(a2, buf);
      v11 = __p.n128_i8[15];
      v12 = *buf;
      sub_1003A03C4(v21, &v15);
      v13 = buf;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if (v17 >= 0)
      {
        v14 = &v15;
      }

      else
      {
        v14 = v15;
      }

      *v25 = 136315394;
      v26 = v13;
      v27 = 2080;
      v28 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#alisha-mgr,Processing timeout event %s returned non-successful status code %s", v25, 0x16u);
      if (v17 < 0)
      {
        operator delete(v15);
      }

      if (__p.n128_i8[15] < 0)
      {
        operator delete(*buf);
      }

      v7 = v21;
    }

    v15 = sub_1003A6E4C(*(a1 + 168), v7);
    v16 = v9;
    *a3 = v15;
    if ((v9 & 0x1000000) != 0)
    {
      sub_10039A6B8(&v15 + 4, buf);
      *a3 = *buf;
      sub_1003A6858(a3 + 8, &__p);
LABEL_16:
      if (v20 == 1)
      {
        if (__p.n128_u64[0])
        {
          __p.n128_u64[1] = __p.n128_u64[0];
          operator delete(__p.n128_u64[0]);
        }
      }
    }
  }
}

void sub_1003A6714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_100020444(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A6784(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1004C7880();
  }

  v4 = *(*v3 + 32);

  return v4();
}

uint64_t sub_1003A67D4(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#alisha-mgr,handleUWBSystemError", v5, 2u);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    sub_10039711C(v3);
  }

  sub_100022400((a1 + 176));
  return 0;
}

__n128 sub_1003A6858(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = sub_10016D9A8(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_1003A6960(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A8D20;
  a2[1] = v2;
  return result;
}

void sub_1003A698C(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4[3])
  {
    sub_1004C78AC();
  }

  v5 = *a2;
  if (v4[10])
  {
    sub_1003A5488(*(a1 + 8), v19);
    if (v22 == 1)
    {
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }
    }
  }

  v6 = v4[3];
  if (!v6)
  {
    sub_100037B10();
  }

  (*(*v6 + 48))(v16);
  v7 = v16[0];
  if (LODWORD(v16[0]) || (v18 & 1) == 0)
  {
    if (v18)
    {
      v11 = 0;
    }

    else
    {
      v11 = -1004;
    }

    if (!LODWORD(v16[0]))
    {
      v7 = v11;
    }

    goto LABEL_25;
  }

  v8 = v16[1];
  v9 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v4[11];
  v4[10] = v8;
  v4[11] = v9;
  if (v10)
  {
    sub_10000AD84(v10);
    v8 = v4[10];
  }

  if (!v8)
  {
    v7 = -1013;
LABEL_25:
    *a3 = v7;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    goto LABEL_26;
  }

  (*(*v8 + 24))(v8, v5);
  if (*a3)
  {
    sub_1003A5488(v4, v12);
    if (v15 == 1 && v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }

  else
  {
    v12[0] = (*(*v4[10] + 16))(v4[10]);
    sub_1003A4958(v4 + 22, v12, v12);
  }

LABEL_26:
  if (v18 == 1)
  {
    if (v17)
    {
      sub_10000AD84(v17);
    }
  }
}

void sub_1003A6B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  if (a21 == 1)
  {
    if (a20)
    {
      sub_10000AD84(a20);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A6B84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1003A6C4C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009A8DA0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1003A6C84(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_1003A6CAC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1003A6D74(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009A8E50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1003A6DAC(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *a2, *a3);
}

uint64_t sub_1003A6DDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003A6E4C(uint64_t a1, int a2)
{
  if (a2 <= -3014)
  {
    if ((a2 + 4020) < 0x15)
    {
      v3 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        sub_1003A03C4(a2, v41);
        v4 = v42;
        v5 = v41[0];
        sub_100398190(255, __p);
        v6 = v41;
        if (v4 < 0)
        {
          v6 = v5;
        }

        if (v45 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = *__p;
        }

        *buf = 136315394;
        v47 = v6;
        v48 = 2080;
        v49 = v7;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#alisha-dck-evt,Got internal status code %s. Returning DCK sub-event code %s.", buf, 0x16u);
        if (v45 < 0)
        {
          operator delete(*__p);
        }

        if (v42 < 0)
        {
          operator delete(v41[0]);
        }
      }

      LODWORD(v43) = 0;
      v8 = -255;
LABEL_14:
      LODWORD(v9) = v8 | 0x10000;
      goto LABEL_90;
    }

    goto LABEL_83;
  }

  if (a2 <= -2021)
  {
    v16 = a2 - 59;
    if ((a2 + 3013) <= 0xD)
    {
      if (((1 << v16) & 0x3070) != 0)
      {
        v23 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          sub_1003A03C4(a2, v41);
          v24 = v42;
          v25 = v41[0];
          sub_1003981CC(4, __p);
          v26 = v41;
          if (v24 < 0)
          {
            v26 = v25;
          }

          if (v45 >= 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = *__p;
          }

          *buf = 136315394;
          v47 = v26;
          v48 = 2080;
          v49 = v27;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#alisha-dck-evt,Got internal status code %s. Returning DCK sub-event code %s.", buf, 0x16u);
          if (v45 < 0)
          {
            operator delete(*__p);
          }

          if (v42 < 0)
          {
            operator delete(v41[0]);
          }
        }

        LODWORD(v43) = 0;
        v22 = 67108866;
        goto LABEL_54;
      }

      if (((1 << v16) & 0x381) != 0)
      {
        v17 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          sub_1003A03C4(a2, v41);
          v18 = v42;
          v19 = v41[0];
          sub_1003981CC(6, __p);
          v20 = v41;
          if (v18 < 0)
          {
            v20 = v19;
          }

          if (v45 >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = *__p;
          }

          *buf = 136315394;
          v47 = v20;
          v48 = 2080;
          v49 = v21;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#alisha-dck-evt,Got internal status code %s. Returning DCK sub-event code %s.", buf, 0x16u);
          if (v45 < 0)
          {
            operator delete(*__p);
          }

          if (v42 < 0)
          {
            operator delete(v41[0]);
          }
        }

        LODWORD(v43) = 0;
        v22 = 100663298;
LABEL_54:
        v9 = &_mh_execute_header & 0xFFFFFFFFFFFFLL | v22 | 0x100000000000000;
        goto LABEL_90;
      }

      if (a2 == -3012)
      {
        goto LABEL_72;
      }
    }

LABEL_83:
    v38 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      sub_1003A03C4(a2, v41);
      v39 = v42 >= 0 ? v41 : v41[0];
      *__p = 136315138;
      *&__p[4] = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#alisha-dck-evt,Passthrough of status code %s", __p, 0xCu);
      if (v42 < 0)
      {
        operator delete(v41[0]);
      }
    }

    LODWORD(v9) = 0;
    LODWORD(v43) = a2;
    goto LABEL_90;
  }

  if ((a2 + 2020) <= 0x12)
  {
    v10 = 1 << (a2 - 28);
    if ((v10 & 0x78001) != 0)
    {
      v11 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        sub_1003A03C4(a2, v41);
        v12 = v42;
        v13 = v41[0];
        sub_100398190(2, __p);
        v14 = v41;
        if (v12 < 0)
        {
          v14 = v13;
        }

        if (v45 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = *__p;
        }

        *buf = 136315394;
        v47 = v14;
        v48 = 2080;
        v49 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#alisha-dck-evt,Got internal status code %s. Returning DCK sub-event code %s.", buf, 0x16u);
        if (v45 < 0)
        {
          operator delete(*__p);
        }

        if (v42 < 0)
        {
          operator delete(v41[0]);
        }
      }

      LODWORD(v43) = 0;
      v8 = 513;
      goto LABEL_14;
    }

    if ((v10 & 0x1010) != 0)
    {
      v28 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        sub_1003A03C4(a2, v41);
        v29 = v42;
        v30 = v41[0];
        sub_100398190(133, __p);
        v31 = v41;
        if (v29 < 0)
        {
          v31 = v30;
        }

        if (v45 >= 0)
        {
          v32 = __p;
        }

        else
        {
          v32 = *__p;
        }

        *buf = 136315394;
        v47 = v31;
        v48 = 2080;
        v49 = v32;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#alisha-dck-evt,Got internal status code %s. Returning DCK sub-event code %s.", buf, 0x16u);
        if (v45 < 0)
        {
          operator delete(*__p);
        }

        if (v42 < 0)
        {
          operator delete(v41[0]);
        }
      }

      LODWORD(v43) = 0;
      v8 = -31487;
      goto LABEL_14;
    }
  }

  if ((a2 - 54) > 0x15 || ((1 << (a2 - 54)) & 0x220001) == 0)
  {
    if (!a2)
    {
      sub_1004C78D8();
    }

    goto LABEL_83;
  }

LABEL_72:
  v33 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A03C4(a2, v41);
    v34 = v42;
    v35 = v41[0];
    sub_1003981CC(1, __p);
    v36 = v41;
    if (v34 < 0)
    {
      v36 = v35;
    }

    if (v45 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = *__p;
    }

    *buf = 136315394;
    v47 = v36;
    v48 = 2080;
    v49 = v37;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#alisha-dck-evt,Got internal status code %s. Returning DCK sub-event code %s.", buf, 0x16u);
    if (v45 < 0)
    {
      operator delete(*__p);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }
  }

  LODWORD(v43) = 0;
  LODWORD(v9) = 16777218;
LABEL_90:
  HIDWORD(v43) = v9;
  return v43;
}

void sub_1003A74D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A7510(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 40) = 0x100000004;
  *(a1 + 8) = 0;
  *(a1 + 16) = off_1009A8EE8;
  *(a1 + 24) = xmmword_10056ED80;
  *(a1 + 48) = a1 + 56;
  *(a1 + 112) = 0x400000004;
  *(a1 + 88) = off_1009A8F30;
  *(a1 + 96) = xmmword_10056ED90;
  *(a1 + 120) = a1 + 128;
  sub_1003A75FC(a1);
  return a1;
}

void sub_1003A75C0(_Unwind_Exception *a1)
{
  *v2 = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

double sub_1003A75FC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = 0x100000004;
  v3 = off_1009A8EE8;
  v4 = xmmword_10056ED80;
  v6 = v7;
  sub_1003A8C00(&v3, 4, 1);
  sub_1003A8C50(&v3, 0.0);
  sub_1003A8CFC(a1 + 16, &v3);
  v5 = 0x400000004;
  v3 = off_1009A8F30;
  v4 = xmmword_10056ED90;
  v6 = v7;
  sub_1003A8C00(&v3, 4, 4);
  sub_1003A8C50(&v3, 0.0);
  *&result = sub_1003A8CFC(a1 + 88, &v3).n128_u64[0];
  return result;
}

void *sub_1003A773C(uint64_t a1, void *a2)
{
  *(a1 + 8) = *a2;
  v11 = 0x100000004;
  v9 = off_1009A8EE8;
  v10 = xmmword_10056ED80;
  v12 = v13;
  sub_1003A8C00(&v9, 4, 1);
  sub_1003A8C50(&v9, 0.0);
  sub_1003A8CFC(a1 + 16, &v9);
  v4 = a2[1];
  *sub_1003A8DB0(a1 + 16, 0, 0) = v4;
  v5 = a2[2];
  *sub_1003A8DB0(a1 + 16, 1, 0) = v5;
  v6 = a2[3];
  *sub_1003A8DB0(a1 + 16, 2, 0) = v6;
  v7 = a2[4];
  *sub_1003A8DB0(a1 + 16, 3, 0) = v7;
  v11 = 0x400000004;
  v9 = off_1009A8F30;
  v10 = xmmword_10056ED90;
  v12 = v13;
  sub_1003A8C00(&v9, 4, 4);
  sub_1003A8C50(&v9, 0.0);
  sub_1003A8CFC(a1 + 88, &v9);
  *sub_1003A8DB0(a1 + 88, 0, 0) = 0x3F7F212D77318FC5;
  *sub_1003A8DB0(a1 + 88, 1, 1) = 0x3FF0000000000000;
  *sub_1003A8DB0(a1 + 88, 2, 2) = 0x3FF0000000000000;
  result = sub_1003A8DB0(a1 + 88, 3, 3);
  *result = 0x3FA47AE147AE147BLL;
  *a1 = 1;
  return result;
}

void sub_1003A7928(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v4 = *a2;
    v5 = *a2 - *(a1 + 8);
    if (v5 <= 0.0)
    {
      sub_1004C7964();
    }

    if (v4 != *(a2 + 8))
    {
      sub_1004C7938();
    }

    if (v4 != *(a2 + 56))
    {
      sub_1004C790C();
    }

    v97 = 0x400000004;
    v95 = off_1009A8F30;
    v96 = xmmword_10056ED90;
    v98 = &v99;
    sub_1003A8C00(&v95, 4, 4);
    sub_1003A8C50(&v95, 0.0);
    *sub_1003A8DB0(&v95, 0, 0) = v5 * 0.00000507;
    v6 = v5 * 0.000167;
    *sub_1003A8DB0(&v95, 1, 1) = v6;
    *sub_1003A8DB0(&v95, 2, 2) = v6;
    *sub_1003A8DB0(&v95, 3, 3) = v6;
    v92 = 0x400000004;
    v91 = xmmword_10056ED90;
    v90 = off_1009A8F30;
    v93 = &v94;
    sub_1003A8EBC(a1 + 88, &v95, &v90);
    v87 = 0x100000003;
    v86 = xmmword_10056EDA0;
    v85 = off_1009A8F78;
    v88 = &v89;
    sub_1003A8C00(&v85, 3, 1);
    sub_1003A8C50(&v85, 0.0);
    v7 = *sub_1003A8DB0(a1 + 16, 1, 0);
    *sub_1003A8DB0(&v85, 0, 0) = v7;
    v8 = *sub_1003A8DB0(a1 + 16, 2, 0);
    *sub_1003A8DB0(&v85, 1, 0) = v8;
    v9 = *sub_1003A8DB0(a1 + 16, 3, 0);
    *sub_1003A8DB0(&v85, 2, 0) = v9;
    v10 = sub_1003A8DB0(a1 + 16, 0, 0);
    v11 = sin(*v10);
    v12 = sub_1003A8DB0(a1 + 16, 0, 0);
    v13 = cos(*v12);
    v82 = 0x300000003;
    v81 = xmmword_10056EDB0;
    v80 = off_1009A8FC0;
    v83 = &v84;
    sub_1003A8C00(&v80, 3, 3);
    sub_1003A8C50(&v80, 0.0);
    *sub_1003A8DB0(&v80, 0, 0) = v13;
    v14 = -v11;
    *sub_1003A8DB0(&v80, 0, 1) = -v11;
    *sub_1003A8DB0(&v80, 1, 0) = v11;
    *sub_1003A8DB0(&v80, 1, 1) = v13;
    *sub_1003A8DB0(&v80, 2, 2) = 0x3FF0000000000000;
    v77 = 0x100000003;
    v76 = xmmword_10056EDA0;
    v75 = off_1009A8F78;
    v78 = &v79;
    sub_1003A8C00(&v75, 3, 1);
    sub_1003A8C50(&v75, 0.0);
    v15 = *(a2 + 64);
    v16 = *(a2 + 72);
    v17 = *(a2 + 80);
    *sub_1003A8DB0(&v75, 0, 0) = v15;
    *sub_1003A8DB0(&v75, 1, 0) = v16;
    *sub_1003A8DB0(&v75, 2, 0) = v17;
    v37 = 0x100000003;
    v36 = xmmword_10056EDA0;
    *buf = off_1009A8F78;
    v38 = v39;
    sub_1003A90A8(&v80, &v75, buf);
    v72 = 0x100000003;
    v71 = xmmword_10056EDA0;
    v70 = off_1009A8F78;
    v73 = &v74;
    sub_1003A8EBC(buf, &v85, &v70);
    v67 = 0x100000003;
    v66 = xmmword_10056EDA0;
    v65 = off_1009A8F78;
    v68 = &v69;
    sub_1003A8C00(&v65, 3, 1);
    sub_1003A8C50(&v65, 0.0);
    v18 = *(a2 + 16);
    *sub_1003A8DB0(&v65, 0, 0) = v18;
    v19 = *(a2 + 24);
    *sub_1003A8DB0(&v65, 1, 0) = v19;
    v20 = *(a2 + 32);
    *sub_1003A8DB0(&v65, 2, 0) = v20;
    v62 = 0x100000003;
    v61 = xmmword_10056EDA0;
    v60 = off_1009A8F78;
    v63 = &v64;
    sub_1003A920C(&v65, &v70, &v60);
    v21 = sub_1002EB6B8(&v60, 0, 0);
    v22 = sub_1002EB6B8(&v60, 0, 0);
    v23 = sub_1002EB6B8(&v60, 1, 0);
    if (sqrt(v23 * sub_1002EB6B8(&v60, 1, 0) + v21 * v22) <= 3.0)
    {
      v57 = 0x400000003;
      v56 = xmmword_10056EDC0;
      v55 = off_1009A9008;
      v58 = &v59;
      sub_1003A8C00(&v55, 3, 4);
      sub_1003A8C50(&v55, 0.0);
      *sub_1003A8DB0(&v55, 0, 0) = v14 * v15 - v13 * v16;
      *sub_1003A8DB0(&v55, 0, 1) = 0x3FF0000000000000;
      *sub_1003A8DB0(&v55, 1, 0) = v16 * v14 + v13 * v15;
      *sub_1003A8DB0(&v55, 1, 2) = 0x3FF0000000000000;
      *sub_1003A8DB0(&v55, 2, 3) = 0x3FF0000000000000;
      v52 = 0x300000003;
      v51 = xmmword_10056EDB0;
      v50 = off_1009A8FC0;
      v53 = &v54;
      sub_1003A8C00(&v50, 3, 3);
      sub_1003A8C50(&v50, 0.0);
      *sub_1003A8DB0(&v50, 0, 0) = 0x3FF0000000000000;
      *sub_1003A8DB0(&v50, 1, 1) = 0x3FF0000000000000;
      *sub_1003A8DB0(&v50, 2, 2) = 0x3FF0000000000000;
      v37 = 0x400000003;
      v36 = xmmword_10056EDC0;
      *buf = off_1009A9008;
      v38 = v39;
      sub_1003A90A8(&v55, &v90, buf);
      sub_1003A9510(&v30, DWORD1(v56), v56);
      sub_1003A9464(&v55, &v30);
      v27 = 0x300000003;
      v26 = xmmword_10056EDB0;
      v25 = off_1009A8FC0;
      v28 = v29;
      sub_1003A90A8(buf, &v30, &v25);
      v47 = 0x300000003;
      v46 = xmmword_10056EDB0;
      v45 = off_1009A8FC0;
      v48 = &v49;
      sub_1003A8EBC(&v25, &v50, &v45);
      v42 = 0x300000003;
      v41 = xmmword_10056EDB0;
      v40 = off_1009A8FC0;
      v43 = &v44;
      v32 = 0x100000003;
      v31 = xmmword_10056EDA0;
      v30 = off_1009A9098;
      v33 = &v34;
      v27 = 0x100000003;
      v26 = xmmword_10056EDA0;
      v25 = off_1009A9098;
      v28 = v29;
      v37 = 0x10000000CLL;
      v36 = xmmword_10056EDD0;
      *buf = off_1009A9120;
      v38 = v39;
      sub_1003A9668(&v45, &v30, &v25, buf, &v40);
    }

    v24 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#loc-tkf,prefit residuals fail innovation test, return", buf, 2u);
    }
  }
}

void *sub_1003A8988@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (*result)
  {
    v3 = result;
    v4 = result[1];
    v5 = *sub_1003A8DB0((result + 2), 0, 0);
    v6 = 1;
    v7 = *sub_1003A8DB0((v3 + 2), 1, 0);
    v8 = *sub_1003A8DB0((v3 + 2), 2, 0);
    result = sub_1003A8DB0((v3 + 2), 3, 0);
    v9 = *result;
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 40) = v6;
  return result;
}

void sub_1003A8AA0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      if (!a2)
      {
        sub_1004C79BC();
      }

      v6 = v4 + v2 - *(a1 + 20);
      if (v6 <= 0)
      {
        sub_1004C7990();
      }

      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = (v7 - 1);
        v9 = *(a1 + 32);
        v10 = 1;
        do
        {
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = *(v9 + 8 * v10);
            v13 = v10;
            do
            {
              v13 = v13 * v6 % v8;
              v14 = *(v9 + 8 * v13);
              *(v9 + 8 * v13) = v12;
              *v11 = 1;
              v11 = &a2[v13];
              v12 = v14;
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v8);
      }
    }
  }
}

_DWORD *sub_1003A8C00(_DWORD *result, int a2, int a3)
{
  if (a2 < 0)
  {
    sub_1004C7A6C();
  }

  if (result[6] < a2)
  {
    sub_1004C7A40();
  }

  if (a3 < 0)
  {
    sub_1004C7A14();
  }

  if (result[7] < a3)
  {
    sub_1004C79E8();
  }

  result[2] = a2;
  result[3] = a3;
  result[4] = a3 * a2;
  result[5] = a2;
  return result;
}

uint64_t sub_1003A8C50(uint64_t result, double a2)
{
  v2 = *(result + 32);
  if (!v2)
  {
    sub_1004C7A98();
  }

  v3 = *(result + 16);
  if (v3 > 3)
  {
    v10 = (v2 + 8 * v3);
    v11 = (v3 - 1) >> 1;
    v12 = vdupq_lane_s64(*&a2, 0);
    do
    {
      *v2++ = v12;
      --v11;
    }

    while (v11);
    v10[-1] = v12;
  }

  else if (v3 >= 1)
  {
    v4 = (v3 + 1) & 0xFFFFFFFE;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = xmmword_1005615E0;
    v7 = &v2->i64[1];
    v8 = vdupq_n_s64(2uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v5, v6));
      if (v9.i8[0])
      {
        *(v7 - 1) = a2;
      }

      if (v9.i8[4])
      {
        *v7 = a2;
      }

      v6 = vaddq_s64(v6, v8);
      v7 += 2;
      v4 -= 2;
    }

    while (v4);
  }

  return result;
}

__n128 sub_1003A8CFC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a2 + 8);
    if (*(a1 + 24) < v2)
    {
      sub_1004C7AF0();
    }

    v3 = *(a2 + 12);
    if (*(a1 + 28) < v3)
    {
      sub_1004C7AC4();
    }

    *(a1 + 8) = v2;
    *(a1 + 12) = v3;
    v4 = v3 * v2;
    *(a1 + 16) = v4;
    *(a1 + 20) = v2;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v10 = *(a1 + 32);
      v11 = *(a2 + 32);
      v12 = (v10 + 8 * (v5 - 2));
      v13 = (v11 + 8 * (v5 - 2));
      v14 = (v5 - 1) >> 1;
      do
      {
        v15 = *v11++;
        *v10++ = v15;
        --v14;
      }

      while (v14);
      result = *v13;
      *v12 = *v13;
    }

    else if (v4 >= 1)
    {
      v6 = *(a2 + 32);
      v7 = *(a1 + 32);
      do
      {
        v8 = *v6++;
        result.n128_u64[0] = v8;
        *v7++ = v8;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t sub_1003A8DB0(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_1004C7B74();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    sub_1004C7B48();
  }

  if (v4 >= *(a1 + 16))
  {
    sub_1004C7B1C();
  }

  return v3 + 8 * v4;
}

uint64_t sub_1003A8DF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x400000004;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009A8F30;
  if (a2 > 4)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 5)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

float64x2_t sub_1003A8EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 != *(a2 + 8))
  {
    sub_1004C7BA0();
  }

  v7 = *(a1 + 12);
  if (v7 != *(a2 + 12))
  {
    sub_1004C7BCC();
  }

  if (a1 == a3)
  {
    sub_1004C7C24();
  }

  if (a2 == a3)
  {
    sub_1004C7BF8();
  }

  sub_1003A8C00(a3, v4, v7);
  v9 = *(a3 + 16);
  if (v9 > 3)
  {
    v16 = *(a1 + 32);
    v17 = *(a2 + 32);
    v18 = (v16 + 8 * (v9 - 2));
    v19 = *(a3 + 32);
    v20 = (v17 + 8 * (v9 - 2));
    v21 = (v19 + 8 * (v9 - 2));
    v22 = (v9 - 1) >> 1;
    do
    {
      v23 = *v16++;
      v24 = v23;
      v25 = *v17++;
      *v19++ = vaddq_f64(v24, v25);
      --v22;
    }

    while (v22);
    result = vaddq_f64(*v18, *v20);
    *v21 = result;
  }

  else if (v9 >= 1)
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = *(a3 + 32);
    do
    {
      v13 = *v10++;
      v14 = v13;
      v15 = *v11++;
      result.f64[0] = v14 + v15;
      *v12++ = result.f64[0];
      --v9;
    }

    while (v9);
  }

  return result;
}

double *sub_1003A90A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 12);
  if (v3 != *(a2 + 8))
  {
    sub_1004C7C50();
  }

  if (a1 == a3)
  {
    sub_1004C7CA8();
  }

  if (a2 == a3)
  {
    sub_1004C7C7C();
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 12);
  result = sub_1003A8C00(a3, *(a1 + 8), *(a2 + 12));
  if (v3 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v3;
  }

  if (v10 <= v7)
  {
    v10 = v7;
  }

  v11 = *(a1 + 32);
  if (v10 > 5)
  {
    return cblas_dgemm_NEWLAPACK();
  }

  if (v8)
  {
    v12 = 0;
    v13 = *(a2 + 32);
    v14 = *(a3 + 32);
    do
    {
      if (v7)
      {
        v15 = 0;
        v16 = v11;
        do
        {
          v17 = 0.0;
          if (v3)
          {
            v18 = v3;
            v19 = v13;
            result = v16;
            do
            {
              v20 = *v19++;
              v17 = v17 + *result * v20;
              result += v7;
              --v18;
            }

            while (v18);
          }

          *(v14 + 8 * v12 * v7 + 8 * v15++) = v17;
          ++v16;
        }

        while (v15 != v7);
      }

      ++v12;
      v13 += v3;
    }

    while (v12 != v8);
  }

  return result;
}

float64x2_t sub_1003A920C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 != *(a2 + 8))
  {
    sub_1004C7CD4();
  }

  v7 = *(a1 + 12);
  if (v7 != *(a2 + 12))
  {
    sub_1004C7D00();
  }

  if (a1 == a3)
  {
    sub_1004C7D58();
  }

  if (a2 == a3)
  {
    sub_1004C7D2C();
  }

  sub_1003A8C00(a3, v4, v7);
  v9 = *(a3 + 16);
  if (v9 > 3)
  {
    v16 = *(a1 + 32);
    v17 = *(a2 + 32);
    v18 = (v16 + 8 * (v9 - 2));
    v19 = *(a3 + 32);
    v20 = (v17 + 8 * (v9 - 2));
    v21 = (v19 + 8 * (v9 - 2));
    v22 = (v9 - 1) >> 1;
    do
    {
      v23 = *v16++;
      v24 = v23;
      v25 = *v17++;
      *v19++ = vsubq_f64(v24, v25);
      --v22;
    }

    while (v22);
    result = vsubq_f64(*v18, *v20);
    *v21 = result;
  }

  else if (v9 >= 1)
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = *(a3 + 32);
    do
    {
      v13 = *v10++;
      v14 = v13;
      v15 = *v11++;
      result.f64[0] = v14 - v15;
      *v12++ = result.f64[0];
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1003A930C(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x400000003;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009A9008;
  if (a2 > 3)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 5)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

double *sub_1003A9464(_DWORD *a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    sub_1004C7D84();
  }

  result = sub_1003A8C00(a2, a1[3], a1[2]);
  v5 = a2[2];
  if (v5)
  {
    v6 = 0;
    v7 = a2[3];
    do
    {
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v9 = sub_1002EB6B8(a1, i, v6);
          result = sub_1003A8DB0(a2, v6, i);
          *result = v9;
        }
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_1003A9510(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x300000004;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009A9050;
  if (a2 > 4)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 4)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

void sub_1003A9668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = *(a1 + 8);
  if (v5 == *(a1 + 12))
  {
    if (*(a2 + 28) * *(a2 + 24) >= v5)
    {
      if (*(a3 + 28) * *(a3 + 24) >= v5)
      {
        if (*(a4 + 28) * *(a4 + 24) >= 4 * v5)
        {
          if (a5[6] >= v5)
          {
            if (a5[7] >= v5)
            {
              sub_1003A8CFC(a5, a1);
              v8 = a5[2];
              v9 = a5[3];
              v10 = a5[5];
              __dst = *(a2 + 32);
              LODWORD(v16) = v8;
              LODWORD(v15) = v9;
              v18 = v10;
              if (v8 >= 1)
              {
                v11 = 4 * v8;
                v12 = operator new[](4 * v8, &std::nothrow);
                if (v12)
                {
                  v13 = v12;
                  v17 = 0;
                  dgetrf_NEWLAPACK();
                  memcpy(__dst, v13, v11);
                  operator delete[]();
                }

                sub_1004C7E34(-5);
              }

              sub_1004C7E34(-1);
            }

            sub_1004C7E90();
          }

          sub_1004C7EBC();
        }

        sub_1004C7EE8();
      }

      sub_1004C7F14();
    }

    sub_1004C7F40();
  }

  sub_1004C7DB0();
}

void sub_1003A9B44(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      if (!a2)
      {
        sub_1004C79BC();
      }

      v6 = v4 + v2 - *(a1 + 20);
      if (v6 <= 0)
      {
        sub_1004C7990();
      }

      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = (v7 - 1);
        v9 = *(a1 + 32);
        v10 = 1;
        do
        {
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = *(v9 + 4 * v10);
            v13 = v10;
            do
            {
              v13 = v13 * v6 % v8;
              v14 = *(v9 + 4 * v13);
              *(v9 + 4 * v13) = v12;
              *v11 = 1;
              v11 = &a2[v13];
              v12 = v14;
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v8);
      }
    }
  }
}

void sub_1003A9CA4(unsigned int *a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  if (a1 != a3)
  {
    if (a1 != a4)
    {
      if (a3 != a4)
      {
        v6 = a1[2];
        if (v6 == a1[3])
        {
          if (*(a2 + 28) * *(a2 + 24) >= v6)
          {
            if (a3[7] * a3[6] >= 4 * v6)
            {
              if (a4[6] >= v6)
              {
                if (a4[7] >= v6)
                {
                  sub_1003A8CFC(a4, a1);
                  v7 = a4[2];
                  v8 = *(a2 + 32);
                  if (v7 >= 1)
                  {
                    v9 = 4 * v7;
                    v10 = operator new[](4 * v7, &std::nothrow);
                    if (v10)
                    {
                      v11 = v10;
                      dgetrf_NEWLAPACK();
                      memcpy(v8, v11, v9);
                      operator delete[]();
                    }

                    sub_1004C7FC4(-5);
                  }

                  sub_1004C7FC4(-1);
                }

                sub_1004C8020();
              }

              sub_1004C804C();
            }

            sub_1004C8078();
          }

          sub_1004C80A4();
        }

        sub_1004C7F6C();
      }

      sub_1004C80D0();
    }

    sub_1004C80FC();
  }

  sub_1004C8128();
}

uint64_t sub_1003A9F6C(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_1004C81AC();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    sub_1004C8180();
  }

  if (v4 >= *(a1 + 16))
  {
    sub_1004C8154();
  }

  return v3 + 8 * v4;
}

void sub_1003A9FB0(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 65793;
  *(a1 + 4) = 256;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 496) = 0;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  operator new();
}

void sub_1003AA244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 576);
  sub_10038E148(&a9);
  sub_10004EDBC(v12);
  sub_1003AFB60(v11, 0);
  if (*(v9 + 128) == 1)
  {
    v14 = *(v9 + 96);
    if (v14)
    {
      *(v9 + 104) = v14;
      operator delete(v14);
    }
  }

  sub_1003AFB14(v10, 0);
  _Unwind_Resume(a1);
}

void sub_1003AA2EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 544);
  if (!v4 || *a2 > *(*(*(a1 + 512) + (((v4 + *(a1 + 536) - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v4 + *(a1 + 536) - 1) & 0x1F) << 7)))
  {
    v5 = *(a1 + 552);
    *(a1 + 552) = *(a2 + 80);
    v6 = *(a2 + 88);
    *(a1 + 568) = *(a2 + 96);
    *(a1 + 560) = v6;
    v7 = *a2;
    if (*(a1 + 32) != 1 || *(a1 + 24) < v7)
    {
      *(a1 + 24) = v7;
      *(a1 + 32) = 1;
    }

    v8 = *(a2 + 80);
    if (v5 == v8)
    {
      goto LABEL_19;
    }

    if (v8 == 2)
    {
      v9 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v13 = *a2;
      *buf = 134217984;
      *&buf[4] = v13;
      v11 = "#sa_algo,VIO Tracking State changed to Normal at %f s";
    }

    else if (v8 == 1)
    {
      v9 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v12 = *a2;
      *buf = 134217984;
      *&buf[4] = v12;
      v11 = "#sa_algo,VIO Tracking State changed to Limited at %f s";
    }

    else
    {
      if (v8)
      {
        goto LABEL_19;
      }

      v9 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v10 = *a2;
      *buf = 134217984;
      *&buf[4] = v10;
      v11 = "#sa_algo,VIO Tracking State changed to Not Available at %f s";
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
LABEL_19:
    sub_1003AA800(a1, a2);
    v15 = *(a2 + 80);
    if (v5 == 2 && v15 != 2)
    {
      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#sa_algo,VIO Tracking not normal anymore - resetting", buf, 2u);
      }

      if (*(a1 + 416) == 1)
      {
        v17 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#sa_algo,VIO Tracking not normal before the cached measurement can be interpolated - passing the cached measurement to the range filter without VIO", buf, 2u);
          if ((*(a1 + 416) & 1) == 0)
          {
            sub_1000195BC();
          }
        }

        sub_1003AAC3C(a1, a1 + 184);
      }

      sub_1003AADD8(a1);
      v15 = *(a2 + 80);
    }

    if (v15 == 2)
    {
      if (*(a2 + 84) == 1)
      {
        v18 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *a2;
          if (*(a2 + 85))
          {
            v20 = "YES";
          }

          else
          {
            v20 = "NO";
          }

          *buf = 134218498;
          *&buf[4] = v19;
          *&buf[12] = 2080;
          *&buf[14] = "YES";
          *&buf[22] = 2080;
          *&buf[24] = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#sa_algo,VIO reported relocalization event at %f s, MAJOR: %s, MINOR: %s - resetting", buf, 0x20u);
        }

        sub_1003AADD8(a1);
      }

      else
      {
        if (*(a2 + 85) == 1)
        {
          v21 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *a2;
            *buf = 134217984;
            *&buf[4] = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#sa_algo,VIO reported MINOR relocalization event at %f s", buf, 0xCu);
          }
        }

        v23 = 0;
        v24 = *(a2 + 16);
        v25 = *(a2 + 32);
        v26 = *(a2 + 48);
        v27 = *(a2 + 64);
        v34 = xmmword_10056EE60;
        *__p = xmmword_10056EE70;
        v36 = xmmword_10056EE80;
        v37 = xmmword_10056EE90;
        do
        {
          *&buf[v23 * 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*&__p[v23 - 2])), v25, __p[v23 - 2], 1), v26, *&__p[v23 - 2], 2), v27, *&__p[v23 - 2], 3);
          v23 += 2;
        }

        while (v23 != 8);
        v28 = *buf;
        v29 = *&buf[16];
        v30 = v39;
        v31 = v40;
        v32 = *(a2 + 80);
        v33 = *(a2 + 84);
        *buf = *a2;
        *&buf[16] = v28;
        v39 = v29;
        v40 = v30;
        v41 = v31;
        v42 = v32;
        v43 = v33;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v14 = sub_1003AAEB4((a1 + 504), buf);
        if ((*(a1 + 6) & 1) == 0)
        {
          sub_1003CDA30(*(a1 + 72), &v34, *buf, *(&v41 + 1));
          sub_1003AAF5C(a1 + 80, &v34);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }
      }
    }

    sub_1003AAFE4(a1, v14);
    sub_1003AB6B0(a1);
    sub_1003ABF38(a1);
    return;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C81D8();
  }
}

void sub_1003AA7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AA800(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if (*(result + 48) != 1 || v3 - *(result + 40) >= 0.2)
  {
    *(result + 40) = v3;
    *(result + 48) = 1;
    sub_10026B0D4(&v20);
    sub_10000EA44(&v20, "tracking state: ", 16);
    v4 = *(a2 + 80);
    if (v4 < 3)
    {
      sub_10000EA44(&v20, off_1009A91A0[v4], qword_10056EF38[v4]);
    }

    sub_10000EA44(&v20, ", light intensity ", 18);
    if (*(a2 + 96) == 1)
    {
      v5 = v20;
      *(&v20 + *(v20 - 3) + 8) = *(&v20 + *(v20 - 3) + 8) & 0xFFFFFEFB | 4;
      *(&v22[0].__locale_ + *(v5 - 3)) = 2;
      std::ostream::operator<<();
    }

    else
    {
      sub_10000EA44(&v20, "-", 1);
    }

    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a2;
      std::stringbuf::str();
      v8 = v19 >= 0 ? &__p : __p;
      v9 = *(a2 + 32);
      v10 = COERCE_FLOAT(*(a2 + 16));
      v11 = COERCE_FLOAT(HIDWORD(*(a2 + 16)));
      v12 = COERCE_FLOAT(*(a2 + 24));
      v13 = COERCE_FLOAT(HIDWORD(*(a2 + 16)));
      v14 = *(a2 + 48);
      v15 = *(a2 + 64);
      v16 = COERCE_FLOAT(HIDWORD(*(a2 + 32)));
      v17 = COERCE_FLOAT(*(a2 + 40));
      *buf = 134222338;
      v25 = v7;
      v26 = 2080;
      v27 = v8;
      v28 = 2048;
      v29 = v10;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v12;
      v34 = 2048;
      v35 = v13;
      v36 = 2048;
      v37 = *&v9;
      v38 = 2048;
      v39 = v16;
      v40 = 2048;
      v41 = v17;
      v42 = 2048;
      v43 = *(&v9 + 3);
      v44 = 2048;
      v45 = *&v14;
      v46 = 2048;
      v47 = *(&v14 + 1);
      v48 = 2048;
      v49 = *(&v14 + 2);
      v50 = 2048;
      v51 = *(&v14 + 3);
      v52 = 2048;
      v53 = *&v15;
      v54 = 2048;
      v55 = *(&v15 + 1);
      v56 = 2048;
      v57 = *(&v15 + 2);
      v58 = 2048;
      v59 = *(&v15 + 3);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#sa_algo,Pose timestamp: %f, %s, pose [%3.2f, %3.2f, %3.2f, %3.2f, ...\n\t%3.2f, %3.2f, %3.2f, %3.2f, ...\n\t%3.2f, %3.2f, %3.2f, %3.2f, ... \n\t%3.2f, %3.2f, %3.2f, %3.2f]", buf, 0xB6u);
      if (v19 < 0)
      {
        operator delete(__p);
      }
    }

    if (v23 < 0)
    {
      operator delete(v22[7].__locale_);
    }

    std::locale::~locale(v22);
    std::ostream::~ostream();
    return std::ios::~ios();
  }

  return result;
}

void sub_1003AAC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10038B85C(va);
  _Unwind_Resume(a1);
}

void sub_1003AAC3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 176) == 1 && (v5 = *(a1 + 168), v4 <= v5))
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a2 + 16);
      *buf = 134218496;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v4;
      *&buf[22] = 2048;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#sa_algo,Not passing range measurement without VIO to range filter, range: %0.2f m, timestamp: %f s, range filter time: %f s", buf, 0x20u);
    }
  }

  else
  {
    v6 = *(a2 + 16);
    *buf = *(a2 + 8);
    *&buf[8] = v6;
    *&buf[16] = 0x3FB999999999999ALL;
    LODWORD(v14) = 0;
    v7 = *(a1 + 6);
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 134218240;
      *&v12[4] = v6;
      *&v12[12] = 2048;
      *&v12[14] = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#sa_algo,Passing range measurement without VIO to range filter, range: %0.2f m, timestamp: %f s", v12, 0x16u);
    }

    sub_1003C9B88(*(a1 + 136), buf, v7, 1, v12);
    v9 = *&v12[16];
    *(a1 + 144) = *v12;
    *(a1 + 160) = v9;
    *(a1 + 176) = 1;
  }
}

void sub_1003AADD8(uint64_t a1)
{
  if (*(a1 + 416) == 1)
  {
    *(a1 + 416) = 0;
  }

  v2 = *(a1 + 512);
  v3 = *(a1 + 520);
  *(a1 + 544) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v2 = (*(a1 + 512) + 8);
      *(a1 + 512) = v2;
      v4 = (*(a1 + 520) - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 16;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = 32;
  }

  *(a1 + 536) = v5;
LABEL_10:
  if (*(a1 + 128) == 1)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      *(a1 + 104) = v6;
      operator delete(v6);
    }

    *(a1 + 128) = 0;
  }

  sub_1003CDBFC(*(a1 + 72));
  if (*(a1 + 496) == 1)
  {
    *(a1 + 456) = 0;
    if (*(a1 + 488) == 1)
    {
      *(a1 + 488) = 0;
    }
  }
}

__n128 sub_1003AAEB4(unint64_t *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 4 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1003AFBE8(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + ((v7 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v7 & 0x1F) << 7);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  *(v8 + 32) = a2[2];
  *(v8 + 48) = v11;
  *v8 = v9;
  *(v8 + 16) = v10;
  result = a2[4];
  v13 = a2[5];
  v14 = a2[7];
  *(v8 + 96) = a2[6];
  *(v8 + 112) = v14;
  *(v8 + 64) = result;
  *(v8 + 80) = v13;
  ++a1[5];
  return result;
}

uint64_t sub_1003AAF5C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      *(a1 + 24) = v4;
      operator delete(v4);
    }

    *(a1 + 48) = 0;
  }

  v5 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = a2[4];
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  *(a1 + 40) = a2[5];
  *(a1 + 48) = 1;
  return a1;
}

void sub_1003AAFE4(uint64_t a1, __n128 a2)
{
  if (*(a1 + 496) != 1)
  {
    return;
  }

  if (*(a1 + 456) != 1)
  {
    return;
  }

  v3 = *(a1 + 544);
  if (!v3)
  {
    return;
  }

  v4 = *(a1 + 424);
  v5 = *(a1 + 512);
  v6 = *(a1 + 536);
  v7 = *(a1 + 520);
  if (v7 == v5)
  {
    v25 = (v5 + 8 * (v6 >> 5));
    goto LABEL_17;
  }

  v8 = *(a1 + 432);
  v9 = *(a1 + 440);
  v10 = (v6 >> 2) & 0x3FFFFFFFFFFFFFF8;
  v11 = (v5 + v10);
  v12 = *(v5 + v10) + ((*(a1 + 536) & 0x1FLL) << 7);
  v13 = v6 + v3;
  v14 = ((v6 + v3) >> 2) & 0x3FFFFFFFFFFFFFF8;
  v15 = *(a1 + 448);
  v16 = *(v5 + v14) + ((v13 & 0x1F) << 7);
  *buf = v5 + v10;
  *&buf[8] = v12;
  if (v16 != v12)
  {
    v17 = ((v16 - *(v5 + v14)) >> 7) + 4 * (v14 - v10);
    v18 = v12 - *(v5 + v10);
    v19 = v17 - (v18 >> 7);
    if (v17 != v18 >> 7)
    {
      do
      {
        v20 = v19 >> 1;
        v21 = sub_1003B0628(buf, v19 >> 1);
        if (v4 >= *v22)
        {
          v23 = v22 + 16;
          if ((v22 - *v21 + 128) == 4096)
          {
            v24 = v21[1];
            ++v21;
            v23 = v24;
          }

          *buf = v21;
          *&buf[8] = v23;
          v20 = v19 + ~v20;
        }

        v19 = v20;
      }

      while (v20);
      v11 = *buf;
      v12 = *&buf[8];
      v5 = *(a1 + 512);
      v6 = *(a1 + 536);
      v7 = *(a1 + 520);
    }
  }

  v25 = (v5 + 8 * (v6 >> 5));
  if (v7 == v5)
  {
    if (v12)
    {
      v27 = 0;
      v26 = *(a1 + 544);
      goto LABEL_23;
    }

LABEL_17:
    v28 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      v50 = *(*v25 + ((v6 & 0x1F) << 7));
      *buf = 134218240;
      *&buf[4] = v4;
      *&buf[12] = 2048;
      *&buf[14] = v50;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "#sa_algo,AoA Measurement at %f s earlier than the first pose in history at %f s - skipping interpolation and marking impossible to interpolate", buf, 0x16u);
    }

    if ((*(a1 + 496) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 456) = 0;
    goto LABEL_37;
  }

  if (*v25 + ((v6 & 0x1F) << 7) == v12)
  {
    goto LABEL_17;
  }

  v26 = *(a1 + 544);
  v27 = *(v5 + (((v26 + v6) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v26 + v6) & 0x1F) << 7);
LABEL_23:
  if (v27 != v12)
  {
    v29 = (v12 - *v11) >> 7;
    if (v29 < 2)
    {
      v35 = 32 - v29;
      v31 = v11[-(v35 >> 5)];
      v32 = ~v35 & 0x1FLL;
    }

    else
    {
      v30 = v29 - 1;
      v31 = *(v11 + ((v30 >> 2) & 0x3FFFFFFFFFFFFFF8));
      v32 = v30 & 0x1F;
    }

    v36 = v31 + (v32 << 7);
    v37 = (v4 - *v36) / (*v12 - *v36);
    v52 = v37;
    v55 = *(v36 + 64);
    *v38.i64 = sub_1003ADBF0(*(v36 + 16), *(v36 + 32), *(v36 + 48));
    v53 = v38;
    v51 = *(v12 + 64);
    *v39.i64 = sub_1003ADBF0(*(v12 + 16), *(v12 + 32), *(v12 + 48));
    v40 = vmulq_f32(v53, v39);
    v41 = vextq_s8(v40, v40, 8uLL);
    *v40.f32 = vadd_f32(*v40.f32, *v41.f32);
    v40.f32[0] = vaddv_f32(*v40.f32);
    v41.i64[0] = 0;
    sub_1003AF8E8(v53, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v40, v41)), 0), vnegq_f32(v39), v39), v52);
    v54 = v42;
    v72 = 0x100000003;
    v71 = xmmword_10056EDA0;
    v70 = off_1009A8F78;
    v73 = &v74;
    sub_1003A8C00(&v70, 3, 1);
    sub_1003A8C50(&v70, 0.0);
    v67 = 0x100000004;
    v66 = xmmword_10056ED80;
    v65 = off_1009A8EE8;
    v68 = &v69;
    sub_1003A8C00(&v65, 4, 1);
    sub_1003A8C50(&v65, 0.0);
    v43 = 0;
    v56 = vmlaq_n_f32(v55, vsubq_f32(v51, v55), v52);
    do
    {
      v44 = sub_1003AFDBC(&v70, v43);
      v58 = v56;
      *v44 = *(&v58 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3)));
      v45 = sub_1003AFDBC(&v65, v43);
      v57 = v54;
      *v45 = *(&v57 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43++ & 3)));
    }

    while (v43 != 3);
    *sub_1003AFDBC(&v65, 3) = *(&v54 + 3);
    sub_10041511C(&v65, buf);
    sub_100415018(v64, v8, v9, v15);
    *&v76 = 0x100000003;
    *&v75[8] = xmmword_10056EDA0;
    *v75 = off_1009A8F78;
    *v77 = &v77[8];
    sub_1003A90A8(buf, v64, v75);
    v61 = 0x100000003;
    v59 = off_1009A8F78;
    v60 = xmmword_10056EDA0;
    v62 = &v63;
    sub_1003A8EBC(v75, &v70, &v59);
    v46 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v75 = 134219520;
      *&v75[4] = v56.f32[0];
      *&v75[12] = 2048;
      *&v75[14] = v56.f32[1];
      *&v75[22] = 2048;
      v76 = v56.f32[2];
      *v77 = 2048;
      *&v77[2] = *&v54;
      v78 = 2048;
      v79 = *(&v54 + 1);
      v80 = 2048;
      v81 = *(&v54 + 2);
      v82 = 2048;
      v83 = *(&v54 + 3);
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#sa_algo,AoA Measurement pos: [%3.2f, %3.2f, %3.2f] quat: [%3.2f, %3.2f, %3.2f, %3.2f]", v75, 0x48u);
    }

    v47 = sub_1002EB67C(&v59, 0);
    v48 = sub_1002EB67C(&v59, 1);
    v49 = sub_1002EB67C(&v59, 2);
    if ((*(a1 + 496) & 1) == 0)
    {
      sub_1000195BC();
    }

    if (*(a1 + 488) == 1)
    {
      *(a1 + 488) = 0;
    }

    *(a1 + 464) = v47;
    *(a1 + 472) = v48;
    *(a1 + 480) = v49;
    *(a1 + 488) = 1;
    *(a1 + 456) = 2;
LABEL_37:
    sub_1003ADA30(a1);
    return;
  }

  v33 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v34 = *(*(v5 + (((v6 + v26 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v6 + v26 - 1) & 0x1F) << 7));
    *buf = 134218240;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = v34;
    _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "#sa_algo,AoA Measurement at %f s later than the last pose in history at %f s - skipping interpolation", buf, 0x16u);
  }
}

void sub_1003AB6B0(uint64_t a1)
{
  if (*(a1 + 416) != 1)
  {
    return;
  }

  v2 = *(a1 + 544);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 192);
  v4 = *(a1 + 512);
  v5 = *(a1 + 536);
  v6 = *(a1 + 520);
  if (v6 == v4)
  {
    v28 = (v4 + 8 * (v5 >> 5));
  }

  else
  {
    v7 = *(a1 + 200);
    v8 = *(a1 + 208);
    v9 = *(a1 + 220);
    v10 = *(a1 + 368);
    v11 = *(a1 + 376);
    v72 = *(a1 + 384);
    v12 = *(a1 + 400);
    v13 = (v5 >> 2) & 0x3FFFFFFFFFFFFFF8;
    v14 = (v4 + v13);
    v15 = *(v4 + v13) + ((*(a1 + 536) & 0x1FLL) << 7);
    v16 = v5 + v2;
    v17 = ((v5 + v2) >> 2) & 0x3FFFFFFFFFFFFFF8;
    v18 = *(a1 + 408);
    v19 = *(v4 + v17) + ((v16 & 0x1F) << 7);
    *buf = v4 + v13;
    *&buf[8] = v15;
    if (v19 != v15)
    {
      v20 = ((v19 - *(v4 + v17)) >> 7) + 4 * (v17 - v13);
      v21 = v15 - *(v4 + v13);
      v22 = v20 - (v21 >> 7);
      if (v20 != v21 >> 7)
      {
        do
        {
          v23 = v22 >> 1;
          v24 = sub_1003B0628(buf, v22 >> 1);
          if (v3 >= *v25)
          {
            v26 = v25 + 16;
            if ((v25 - *v24 + 128) == 4096)
            {
              v27 = v24[1];
              ++v24;
              v26 = v27;
            }

            *buf = v24;
            *&buf[8] = v26;
            v23 = v22 + ~v23;
          }

          v22 = v23;
        }

        while (v23);
        v14 = *buf;
        v15 = *&buf[8];
        v4 = *(a1 + 512);
        v5 = *(a1 + 536);
        v6 = *(a1 + 520);
      }
    }

    v28 = (v4 + 8 * (v5 >> 5));
    if (v6 == v4)
    {
      if (v15)
      {
        v30 = 0;
        v29 = *(a1 + 544);
LABEL_22:
        if (v30 == v15)
        {
          v37 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            v38 = *(*(v4 + (((v5 + v29 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v5 + v29 - 1) & 0x1F) << 7));
            *buf = 134218240;
            *&buf[4] = v3;
            *&buf[12] = 2048;
            *&buf[14] = v38;
            _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "#sa_algo,Measurement at %f s later than the last pose in history at %f s - skipping interpolation", buf, 0x16u);
          }
        }

        else
        {
          v32 = (v15 - *v14) >> 7;
          if (v32 < 2)
          {
            v39 = 32 - v32;
            v34 = &v14[-(v39 >> 5)];
            v35 = *v34;
            v36 = ~v39 & 0x1FLL;
          }

          else
          {
            v33 = v32 - 1;
            v34 = &v14[v33 >> 5];
            v35 = *v34;
            v36 = v33 & 0x1F;
          }

          v40 = v35 + (v36 << 7);
          v41 = (v3 - *v40) / (*v15 - *v40);
          v73 = v41;
          v70 = *(v40 + 64);
          *v42.i64 = sub_1003ADBF0(*(v40 + 16), *(v40 + 32), *(v40 + 48));
          v66 = v42;
          v68 = *(v15 + 64);
          *v43.i64 = sub_1003ADBF0(*(v15 + 16), *(v15 + 32), *(v15 + 48));
          v44 = vmulq_f32(v66, v43);
          v45 = vextq_s8(v44, v44, 8uLL);
          *v44.f32 = vadd_f32(*v44.f32, *v45.f32);
          v44.f32[0] = vaddv_f32(*v44.f32);
          v45.i64[0] = 0;
          sub_1003AF8E8(v66, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v44, v45)), 0), vnegq_f32(v43), v43), v73);
          v46 = vmlaq_n_f32(v70, vsubq_f32(v68, v70), v73);
          v74 = vcvtq_f64_f32(*v46.f32);
          v47 = v46.f32[2];
          v69 = vcvt_hight_f64_f32(v48);
          v71 = vcvtq_f64_f32(*v48.f32);
          *buf = 0;
          *&buf[8] = 0;
          *&buf[16] = 0x3FB999999999999ALL;
          v102 = 0;
          LOBYTE(v103.f64[0]) = 0;
          v108 = 0;
          v109 = 0u;
          memset(v110, 0, sizeof(v110));
          if (*(a1 + 4) == 1 && (v9 & 1) != 0 && (v11 & 1) != 0 && (v18 & 1) != 0)
          {
            v49 = vrev64_s32(v8);
            v50 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              v51 = v7;
              *v76 = 134221056;
              v77 = v51;
              v78 = 2048;
              *v79 = v3;
              *&v79[8] = 2048;
              v80 = v74.f64[0];
              v81 = 2048;
              v82 = v74.f64[1];
              v83 = 2048;
              v84 = v47;
              v85 = 2048;
              v86 = v71.f64[0];
              v87 = 2048;
              v88 = v71.f64[1];
              v89 = 2048;
              v90 = v69.f64[0];
              v91 = 2048;
              v92 = v69.f64[1];
              v93 = 2048;
              v67 = vcvtq_f64_f32(v49);
              v94 = v67.f64[0];
              v95 = 2048;
              v96 = v67.f64[1];
              v97 = 2048;
              v98 = v10;
              v99 = 2048;
              v100 = v12;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#sa_algo,Passing range measurement with AoA to batch filter and range filter, range: %0.2f m, timestamp: %f s, device position:[%0.2f,%0.2f,%0.2f], device quat:[%0.2f,%0.2f,%0.2f,%0.2f], elevation: %3.2f rad, azimuth: %3.2f rad, sweepAngle: %3.1f deg, trackScore: %3.1f", v76, 0x84u);
              v52 = v67;
            }

            else
            {
              v52 = vcvtq_f64_f32(v49);
              v51 = v7;
            }

            *buf = v3;
            *&buf[8] = v51;
            *&buf[16] = 0x3FB999999999999ALL;
            v102 = 0;
            v103 = vdivq_f64(vmulq_f64(v52, vdupq_n_s64(0x4066800000000000uLL)), vdupq_n_s64(0x400921FB54442D18uLL));
            v104 = 0x4024000000000000;
            v105 = v10;
            v106 = v12;
            v107 = v72;
            v54 = 1;
          }

          else
          {
            v53 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              *v76 = 134220032;
              v77 = v7;
              v78 = 2048;
              *v79 = v3;
              *&v79[8] = 2048;
              v80 = v74.f64[0];
              v81 = 2048;
              v82 = v74.f64[1];
              v83 = 2048;
              v84 = v47;
              v85 = 2048;
              v86 = v71.f64[0];
              v87 = 2048;
              v88 = v71.f64[1];
              v89 = 2048;
              v90 = v69.f64[0];
              v91 = 2048;
              v92 = v69.f64[1];
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#sa_algo,Passing range measurement to batch filter and range filter, range: %0.2f m, timestamp: %f s, device position:[%0.2f,%0.2f,%0.2f], device quat:[%0.2f,%0.2f,%0.2f,%0.2f]", v76, 0x5Cu);
            }

            v54 = 0;
            *buf = v3;
            *&buf[8] = v7;
            *&buf[16] = 0x3FB999999999999ALL;
            v102 = 0;
            LOBYTE(v103.f64[0]) = 0;
          }

          v108 = v54;
          v109 = v74;
          *v110 = v47;
          *&v110[8] = v71;
          *&v110[24] = v69;
          if (*(a1 + 176) == 1)
          {
            v55 = v3 - *(a1 + 168) <= 2.0;
            v56 = *(a1 + 152);
          }

          else
          {
            v55 = 0;
            v56 = 0.0;
          }

          sub_1003CF890(*(a1 + 72), v55, v56);
          sub_1003AFA50(v76, (a1 + 80));
          sub_1003CF89C(*(a1 + 72), buf, v75);
          sub_1003AAF5C(a1 + 80, v75);
          if (*&v75[16])
          {
            *&v75[24] = *&v75[16];
            operator delete(*&v75[16]);
          }

          sub_1003C90FC(*(a1 + 136), buf, v75);
          if (*(a1 + 176) == 1)
          {
            *(a1 + 176) = 0;
          }

          v57 = *&v75[16];
          *(a1 + 144) = *v75;
          *(a1 + 160) = v57;
          *(a1 + 176) = 1;
          if (BYTE4(v84) != 1)
          {
            goto LABEL_47;
          }

          if ((*(a1 + 128) & 1) == 0)
          {
            sub_1000195BC();
          }

          if (*v76 != *(a1 + 80))
          {
LABEL_47:
            sub_1003AEFD4(a1);
          }

          v58 = *(a1 + 512);
          v59 = (v58 + 8 * (*(a1 + 536) >> 5));
          if (*(a1 + 520) == v58)
          {
            v60 = 0;
          }

          else
          {
            v60 = *v59 + ((*(a1 + 536) & 0x1FLL) << 7);
          }

          sub_1003AF1E0((a1 + 504), v59, v60, v34, v40);
          v61 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            v63 = *(a1 + 512);
            v64 = *(*(v63 + ((*(a1 + 536) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(a1 + 536) & 0x1FLL) << 7));
            v65 = *(*(v63 + (((*(a1 + 536) + *(a1 + 544) - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((*(a1 + 536) + *(a1 + 544) - 1) & 0x1F) << 7));
            *v75 = 134218240;
            *&v75[4] = v64;
            *&v75[12] = 2048;
            *&v75[14] = v65;
            _os_log_debug_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "#sa_algo,Pose history now between %f s and %f s", v75, 0x16u);
          }

          if (*(a1 + 416) == 1)
          {
            *(a1 + 416) = 0;
          }

          if (BYTE4(v84) == 1)
          {
            if (*&v79[2])
            {
              v80 = *&v79[2];
              operator delete(*&v79[2]);
            }
          }
        }

        return;
      }
    }

    else if (*v28 + ((v5 & 0x1F) << 7) != v15)
    {
      v29 = *(a1 + 544);
      v30 = *(v4 + (((v29 + v5) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v29 + v5) & 0x1F) << 7);
      goto LABEL_22;
    }
  }

  v31 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    v62 = *(*v28 + ((v5 & 0x1F) << 7));
    *buf = 134218240;
    *&buf[4] = v3;
    *&buf[12] = 2048;
    *&buf[14] = v62;
    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#sa_algo,Measurement at %f s earlier than the first pose in history at %f s - skipping interpolation and removing range measurement", buf, 0x16u);
  }

  if (*(a1 + 416) == 1)
  {
    *(a1 + 416) = 0;
  }
}