void sub_9CB030(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 8);
  if (v5 != v4)
  {
    while (*v5 != 2)
    {
      v5 += 1426;
      if (v5 == v4)
      {
        return;
      }
    }
  }

  if (v5 != v4)
  {
    sub_9CB8FC(__p, v5, *(a1 + 16));
    *&v11 = "{Line}";
    v6 = sub_353894(__p, "{Line}", &unk_229EB70, &v11);
    if ((*(v6 + 63) & 0x8000000000000000) != 0)
    {
      if (v6[6])
      {
LABEL_8:
        strcpy(v10, "Board_List_Line_{Mode}");
        v10[23] = 22;
        sub_9CB294(a1, v10, __p, &v11);
        if (*(a2 + 55) < 0)
        {
          operator delete(*(a2 + 32));
        }

        *(a2 + 32) = v11;
        *(a2 + 48) = v12;
        v7 = v14;
        if (!v14)
        {
LABEL_14:
          v8 = __p[0];
          __p[0] = 0;
          if (v8)
          {
            operator delete(v8);
          }

          return;
        }

        while (1)
        {
          v9 = *v7;
          if (*(v7 + 63) < 0)
          {
            operator delete(v7[5]);
            if (*(v7 + 39) < 0)
            {
LABEL_21:
              operator delete(v7[2]);
            }
          }

          else if (*(v7 + 39) < 0)
          {
            goto LABEL_21;
          }

          operator delete(v7);
          v7 = v9;
          if (!v9)
          {
            goto LABEL_14;
          }
        }
      }
    }

    else if (*(v6 + 63))
    {
      goto LABEL_8;
    }

    operator new();
  }
}

void sub_9CB23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  operator delete(v14);
  sub_2CD04(va);
  _Unwind_Resume(a1);
}

void sub_9CB258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2CD04(va);
  _Unwind_Resume(a1);
}

void sub_9CB26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2CD04(va);
  _Unwind_Resume(a1);
}

void sub_9CB280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2CD04(va);
  _Unwind_Resume(a1);
}

void sub_9CB294(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  sub_9CD974(a3, *(a3 + 40), 0, 1, *a1, __p);
  v7 = a1[1];
  v9 = *a1;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  sub_6A58C4(__p, a3, &v9, 0, a4);
  v8 = v10;
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(__p[0]);
    return;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_11;
  }
}

void sub_9CB3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_1F1A8(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_9CB3E4(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  result = (*(**a2 + 56))(*a2, a3);
  if (result)
  {
    (*(**a2 + 16))(v12);
    v8 = sub_4D1F6C(v12);
    if (!v8)
    {
      sub_9CB5D0(v8, v5, 0, v12, a4);
    }

    sub_6081F0(v12);
    (*(**a2 + 16))(v12);
    v9 = sub_4D1F6C(v12);
    if (!v9)
    {
      sub_9CB5D0(v9, v5, 1, v12, a4);
    }

    sub_6081F0(v12);
    (*(**a2 + 16))(v12);
    v10 = sub_4D1F6C(v12);
    if (!v10)
    {
      sub_9CB5D0(v10, v5, 2, v12, a4);
    }

    sub_6081F0(v12);
    (*(**a2 + 16))(v12);
    v11 = sub_4D1F6C(v12);
    if (!v11)
    {
      sub_9CB5D0(v11, v5, 3, v12, a4);
    }

    return sub_6081F0(v12);
  }

  return result;
}

void sub_9CB5D0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5)
{
  if (a2 == 1)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v13 = a5[207];
        if (v13 >= a5[208])
        {
          a5[207] = sub_5C489C(a5 + 206, a4);
        }

        else
        {
          sub_55BD50(a5[207], a4);
          a5[207] = v13 + 160;
          a5[207] = v13 + 160;
        }
      }

      else if (a3 == 3)
      {
        v9 = a5[210];
        if (v9 >= a5[211])
        {
          a5[210] = sub_5C489C(a5 + 209, a4);
        }

        else
        {
          sub_55BD50(a5[210], a4);
          a5[210] = v9 + 160;
          a5[210] = v9 + 160;
        }
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v7 = a5[204];
        if (v7 >= a5[205])
        {
          a5[204] = sub_5C489C(a5 + 203, a4);
        }

        else
        {
          sub_55BD50(a5[204], a4);
          a5[204] = v7 + 160;
          a5[204] = v7 + 160;
        }
      }
    }

    else
    {
      v12 = a5[201];
      if (v12 >= a5[202])
      {
        a5[201] = sub_5C489C(a5 + 200, a4);
      }

      else
      {
        sub_55BD50(a5[201], a4);
        a5[201] = v12 + 160;
        a5[201] = v12 + 160;
      }
    }
  }

  else if (a2 == 2)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v11 = a5[134];
        if (v11 >= a5[135])
        {
          a5[134] = sub_5C489C(a5 + 133, a4);
        }

        else
        {
          sub_55BD50(a5[134], a4);
          a5[134] = v11 + 160;
          a5[134] = v11 + 160;
        }
      }

      else if (a3 == 3)
      {
        v8 = a5[137];
        if (v8 >= a5[138])
        {
          a5[137] = sub_5C489C(a5 + 136, a4);
        }

        else
        {
          sub_55BD50(a5[137], a4);
          a5[137] = v8 + 160;
          a5[137] = v8 + 160;
        }
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v6 = a5[131];
        if (v6 >= a5[132])
        {
          a5[131] = sub_5C489C(a5 + 130, a4);
        }

        else
        {
          sub_55BD50(a5[131], a4);
          a5[131] = v6 + 160;
          a5[131] = v6 + 160;
        }
      }
    }

    else
    {
      v10 = a5[128];
      if (v10 >= a5[129])
      {
        a5[128] = sub_5C489C(a5 + 127, a4);
      }

      else
      {
        sub_55BD50(a5[128], a4);
        a5[128] = v10 + 160;
        a5[128] = v10 + 160;
      }
    }
  }
}

uint64_t sub_9CB8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 2;
  if (*(a2 + 792) == 1)
  {
    v5 = *(a3 + 72) + 696 * *(a2 + 752);
    *(a1 + 40) = *(v5 + 556);
    sub_9D4538(v5, &v17);
    v19 = "{Line}";
    v6 = sub_353894(a1, "{Line}", &unk_229EB70, &v19);
    if (*(v6 + 63) < 0)
    {
      v7 = v6;
      operator delete(v6[5]);
      v6 = v7;
    }

    *(v6 + 5) = v17;
    v6[7] = v18;
    v8 = *(a2 + 224);
    if (v8 != *(a2 + 232))
    {
      *&v17 = "{Headsign}";
      v9 = sub_353894(a1, "{Headsign}", &unk_229EB70, &v17);
      v10 = v9 + 5;
      if (v9 + 5 != v8)
      {
        v11 = *(v9 + 63);
        v12 = *(v8 + 23);
        if (v11 < 0)
        {
          if (v12 >= 0)
          {
            v15 = v8;
          }

          else
          {
            v15 = *v8;
          }

          if (v12 >= 0)
          {
            v16 = *(v8 + 23);
          }

          else
          {
            v16 = v8[1];
          }

          sub_13B38(v10, v15, v16);
        }

        else
        {
          if ((*(v8 + 23) & 0x80) == 0)
          {
            v13 = *v8;
            v10[2] = v8[2];
            *v10 = v13;
            return a1;
          }

          sub_13A68(v10, *v8, v8[1]);
        }
      }
    }
  }

  return a1;
}

void sub_9CBAA0()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B3468 = 0u;
  unk_27B3478 = 0u;
  dword_27B3488 = 1065353216;
  sub_3A9A34(&xmmword_27B3468, v0, v0);
  sub_3A9A34(&xmmword_27B3468, v3, v3);
  sub_3A9A34(&xmmword_27B3468, __p, __p);
  sub_3A9A34(&xmmword_27B3468, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B3410 = 0;
    qword_27B3418 = 0;
    qword_27B3408 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_9CBD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3420)
  {
    qword_27B3428 = qword_27B3420;
    operator delete(qword_27B3420);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9CBE3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      *(a2 + 23) = 7;
      strcpy(a2, "Vehicle");
      break;
    case 10:
    case 140:
      *(a2 + 23) = 3;
      *a2 = 7566658;
      break;
    case 11:
    case 141:
      *(a2 + 23) = 5;
      strcpy(a2, "Coach");
      break;
    case 20:
      *(a2 + 23) = 4;
      strcpy(a2, "Taxi");
      break;
    case 30:
      *(a2 + 23) = 7;
      strcpy(a2, "Shuttle");
      break;
    case 31:
    case 142:
      *(a2 + 23) = 10;
      strcpy(a2, "ShuttleBus");
      break;
    case 40:
      *(a2 + 23) = 4;
      strcpy(a2, "Rail");
      break;
    case 41:
      *(a2 + 23) = 6;
      strcpy(a2, "Subway");
      break;
    case 42:
      v2 = "HighSpeedRail";
      goto LABEL_21;
    case 50:
      *(a2 + 23) = 9;
      strcpy(a2, "LightRail");
      break;
    case 51:
      *(a2 + 23) = 9;
      strcpy(a2, "Streetcar");
      break;
    case 52:
      *(a2 + 23) = 4;
      strcpy(a2, "Tram");
      break;
    case 54:
      *(a2 + 23) = 7;
      strcpy(a2, "Trolley");
      break;
    case 55:
      *(a2 + 23) = 10;
      strcpy(a2, "TrolleyBus");
      break;
    case 60:
      *(a2 + 23) = 8;
      strcpy(a2, "Monorail");
      break;
    case 70:
      *(a2 + 23) = 8;
      strcpy(a2, "CableCar");
      break;
    case 80:
      *(a2 + 23) = 9;
      strcpy(a2, "Funicular");
      break;
    case 90:
    case 91:
      *(a2 + 23) = 10;
      strcpy(a2, "AerialTram");
      break;
    case 92:
      v2 = "AerialGondola";
LABEL_21:
      *(a2 + 23) = 13;
      *a2 = *v2;
      *(a2 + 5) = *(v2 + 5);
      *(a2 + 13) = 0;
      break;
    case 100:
      *(a2 + 23) = 5;
      strcpy(a2, "Ferry");
      break;
    case 101:
      *(a2 + 23) = 9;
      strcpy(a2, "WaterTaxi");
      break;
    case 102:
      *(a2 + 23) = 8;
      strcpy(a2, "WaterBus");
      break;
    case 110:
      *(a2 + 23) = 4;
      strcpy(a2, "Boat");
      break;
    case 111:
      *(a2 + 23) = 4;
      strcpy(a2, "Ship");
      break;
    case 120:
    case 143:
      *(a2 + 23) = 15;
      strcpy(a2, "BusRapidTransit");
      break;
    case 130:
      *(a2 + 23) = 7;
      strcpy(a2, "Jeepney");
      break;
    default:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      break;
  }

  return result;
}

void sub_9CC42C(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, std::string *a5@<X8>)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = 0;
        v7 = "station";
        if (a4)
        {
          v7 = "Station";
        }

        v8 = 7;
        HIBYTE(v16) = 7;
        *__s = *v7;
        *&__s[3] = *(v7 + 3);
        __s[7] = 0;
        if (a2 > 5)
        {
          goto LABEL_27;
        }

LABEL_17:
        if (a2 <= 2)
        {
          if (a2 != 1)
          {
            if (a2 != 2)
            {
              goto LABEL_42;
            }

            goto LABEL_23;
          }
        }

        else
        {
          if (a2 == 3)
          {
LABEL_31:
            v10 = 6;
            HIBYTE(v13) = 6;
            qmemcpy(__p, "Subway", 6);
            goto LABEL_34;
          }

          if (a2 != 4)
          {
LABEL_23:
            v10 = 5;
            HIBYTE(v13) = 5;
            qmemcpy(__p, "Train", 5);
LABEL_34:
            *(__p | v10) = 0;
            a5->__r_.__value_.__l.__size_ = 0;
            a5->__r_.__value_.__r.__words[2] = 0;
            a5->__r_.__value_.__r.__words[0] = 0;
            std::string::append(a5, __p, v10);
            if (v6)
            {
              goto LABEL_37;
            }

            std::string::append(a5, " ", 1uLL);
            goto LABEL_36;
          }
        }

        v10 = 3;
        HIBYTE(v13) = 3;
        qmemcpy(__p, "Bus", 3);
        goto LABEL_34;
      }

LABEL_16:
      v8 = 0;
      *__s = 0;
      v15 = 0;
      v6 = 1;
      v16 = 0;
      if (a2 > 5)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (a1 != 2)
  {
    if (a1 != 3 || !a3)
    {
      goto LABEL_16;
    }

LABEL_11:
    v6 = 0;
    v8 = 4;
    HIBYTE(v16) = 4;
    if (a4)
    {
      v9 = 1886352467;
    }

    else
    {
      v9 = 1886352499;
    }

    *__s = v9;
    __s[4] = 0;
    if (a2 <= 5)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  v6 = 0;
  v8 = 8;
  HIBYTE(v16) = 8;
  v11 = 0x6C616E696D726554;
  if (!a4)
  {
    v11 = 0x6C616E696D726574;
  }

  *__s = v11;
  LOBYTE(v15) = 0;
  if (a2 <= 5)
  {
    goto LABEL_17;
  }

LABEL_27:
  if ((a2 - 8) < 2)
  {
    v10 = 4;
    HIBYTE(v13) = 4;
    LODWORD(__p[0]) = 1835102804;
    goto LABEL_34;
  }

  if (a2 == 6)
  {
    goto LABEL_31;
  }

  if (a2 == 7)
  {
    v10 = 5;
    HIBYTE(v13) = 5;
    qmemcpy(__p, "Ferry", 5);
    goto LABEL_34;
  }

LABEL_42:
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  a5->__r_.__value_.__r.__words[0] = 0;
  if ((v6 & 1) == 0)
  {
LABEL_36:
    std::string::append(a5, __s, v8);
  }

LABEL_37:
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(*__s);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_41;
  }
}

void sub_9CC6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  sub_21E3864(&a14, &a9, &a15);
  _Unwind_Resume(a1);
}

uint64_t sub_9CC6F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 4)
  {
    if (result <= 7)
    {
      if (result != 5)
      {
        if (result != 6)
        {
          *(a2 + 23) = 5;
          strcpy(a2, "Ferry");
          return result;
        }

LABEL_15:
        *(a2 + 23) = 6;
        strcpy(a2, "Subway");
        return result;
      }

LABEL_14:
      *(a2 + 23) = 5;
      strcpy(a2, "Train");
      return result;
    }

    if ((result - 8) < 2)
    {
      *(a2 + 23) = 4;
      strcpy(a2, "Tram");
      return result;
    }
  }

  else
  {
    if (result > 1)
    {
      if (result != 2)
      {
        if (result != 3)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (result == 1)
    {
LABEL_11:
      *(a2 + 23) = 3;
      *a2 = 7566658;
      return result;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void sub_9CC800(signed int a1@<W0>, int a2@<W1>, void *a3@<X8>)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 != 5)
      {
        if (a1 != 6)
        {
          v4 = 0;
          v5 = 5;
          p_dst = (__dst.__r_.__value_.__r.__words + 5);
          HIBYTE(v22) = 5;
          strcpy(v21, "Ferry");
          v7 = sub_9BCDB4(7u, a2);
          if (v7 > 1)
          {
            goto LABEL_27;
          }

          goto LABEL_20;
        }

LABEL_19:
        v4 = 0;
        p_dst = (__dst.__r_.__value_.__r.__words + 6);
        v5 = 6;
        HIBYTE(v22) = 6;
        strcpy(v21, "Subway");
        v7 = sub_9BCDB4(a1, a2);
        if (v7 > 1)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if ((a1 - 8) < 2)
    {
      v4 = 0;
      p_dst = (__dst.__r_.__value_.__r.__words + 4);
      v5 = 4;
      HIBYTE(v22) = 4;
      strcpy(v21, "Tram");
      v7 = sub_9BCDB4(a1, a2);
      if (v7 <= 1)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_26:
    v5 = 0;
    v21[0] = 0;
    v21[1] = 0;
    p_dst = &__dst;
    v4 = 1;
    v22 = 0;
    v7 = sub_9BCDB4(a1, a2);
    if (v7 > 1)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  if (a1 == 2)
  {
LABEL_17:
    v4 = 0;
    v5 = 5;
    p_dst = (__dst.__r_.__value_.__r.__words + 5);
    HIBYTE(v22) = 5;
    strcpy(v21, "Train");
    v7 = sub_9BCDB4(a1, a2);
    if (v7 <= 1)
    {
      goto LABEL_20;
    }

LABEL_27:
    if (v7 != 2)
    {
      if (v7 == 3)
      {
LABEL_29:
        v9 = 4;
        HIBYTE(v20) = 4;
        if (v4)
        {
          v10 = 1886352467;
        }

        else
        {
          v10 = 1886352499;
        }

        LODWORD(__src) = v10;
        BYTE4(__src) = 0;
        if ((v4 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      goto LABEL_34;
    }

    v9 = 8;
    HIBYTE(v20) = 8;
    v12 = 0x6C616E696D726554;
    if (!v4)
    {
      v12 = 0x6C616E696D726574;
    }

    __src = v12;
    LOBYTE(v19) = 0;
    if (v4)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

  if (a1 == 3)
  {
    goto LABEL_19;
  }

LABEL_12:
  v4 = 0;
  p_dst = (__dst.__r_.__value_.__r.__words + 3);
  v5 = 3;
  HIBYTE(v22) = 3;
  LODWORD(v21[0]) = 7566658;
  v7 = sub_9BCDB4(a1, a2);
  if (v7 > 1)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (!v7)
  {
    goto LABEL_29;
  }

  if (v7 != 1)
  {
LABEL_34:
    __src = 0;
    v19 = 0;
    v20 = 0;
    if (!v4)
    {
      v9 = 0;
      goto LABEL_43;
    }

    v11 = 0;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    *(a3 + 23) = 8;
LABEL_40:
    strcpy(a3 + v11, " skipped");
    return;
  }

  v8 = "station";
  if (v4)
  {
    v8 = "Station";
  }

  v9 = 7;
  HIBYTE(v20) = 7;
  LODWORD(__src) = *v8;
  *(&__src + 3) = *(v8 + 3);
  HIBYTE(__src) = 0;
  if (v4)
  {
LABEL_39:
    v11 = v9;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    *(a3 + 23) = v9 + 8;
    memcpy(a3, &__src, v9);
    goto LABEL_40;
  }

LABEL_43:
  memset(&__dst, 0, sizeof(__dst));
  *(&__dst.__r_.__value_.__s + 23) = v5 + 1;
  memcpy(&__dst, v21, v5);
  *(&__dst | v5) = 32;
  p_dst->__r_.__value_.__s.__data_[1] = 0;
  v13 = std::string::append(&__dst, &__src, v9);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v17, " skipped", 8uLL);
  *a3 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_45:
      if (SHIBYTE(v20) < 0)
      {
        goto LABEL_49;
      }

      return;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v20) < 0)
  {
LABEL_49:
    operator delete(__src);
  }
}

void sub_9CCBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a23);
  _Unwind_Resume(exception_object);
}

void sub_9CCC50(unsigned int *a1, const char *a2, const char *a3, uint64_t a4, unsigned int *a5, std::string *a6, uint64_t *a7, uint64_t a8)
{
  if (*(a4 + 1) == 1)
  {
    v15 = sub_25A44(a5, a1, a3);
    if (v15)
    {
      if (v15 <= 6 && !sub_25A44(a5, a5 + 1, a2))
      {
        std::string::append(a6, "_DayOfWeek", 0xAuLL);
        *&v30.__r_.__value_.__r.__words[1] = 0x6B00uLL;
        *(&v30.__r_.__value_.__s + 23) = 10;
        qmemcpy(&v30, "{DayOfWee", 9);
        v23 = *(a8 + 23);
        if (v23 >= 0)
        {
          v24 = a8;
        }

        else
        {
          v24 = *a8;
        }

        if (v23 >= 0)
        {
          v25 = *(a8 + 23);
        }

        else
        {
          v25 = *(a8 + 8);
        }

        v26 = std::string::append(&v30, v24, v25);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = std::string::append(&v31, "}", 1uLL);
        v29 = *&v28->__r_.__value_.__l.__data_;
        v33 = v28->__r_.__value_.__r.__words[2];
        *__p = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        sub_64E308(a7, __p, a1, a3, 1);
        goto LABEL_14;
      }

      std::string::append(a6, "_Date", 5uLL);
      v30.__r_.__value_.__r.__words[2] = 0x500000000000000;
      *&v30.__r_.__value_.__l.__data_ = 0x657461447BuLL;
      v16 = *(a8 + 23);
      if (v16 >= 0)
      {
        v17 = a8;
      }

      else
      {
        v17 = *a8;
      }

      if (v16 >= 0)
      {
        v18 = *(a8 + 23);
      }

      else
      {
        v18 = *(a8 + 8);
      }

      v19 = std::string::append(&v30, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = std::string::append(&v31, "}", 1uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v33 = v21->__r_.__value_.__r.__words[2];
      *__p = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_13:
        sub_64E308(a7, __p, a1, a3, 2);
LABEL_14:
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p[0]);
        }

        return;
      }

      operator delete(v30.__r_.__value_.__l.__data_);
      goto LABEL_13;
    }
  }
}

void sub_9CCEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9CCF00(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_2C5A0(a1, "{Line}");
  if (v6)
  {
    v7 = v6;
    v8 = (v6 + 5);
    if (*(v7 + 63) < 0)
    {
      if (!v7[6])
      {
        return;
      }

      __endptr[0] = 0;
      v8 = *v8;
    }

    else
    {
      if (!*(v7 + 63))
      {
        return;
      }

      __endptr[0] = 0;
    }

    v9 = __endptr;
    strtol(v8, __endptr, 10);
    if (!*__endptr[0])
    {
      sub_6A5584(a3, a1, a2, 0, __endptr);
      v10 = v26;
      v12 = __endptr[0];
      v11 = __endptr[1];
      if (v26 < 0)
      {
        v9 = __endptr[0];
      }

      if (v26 >= 0)
      {
        v11 = v26;
      }

      v13 = v9 + v11;
      if (v11 >= 6)
      {
        v14 = v9;
        do
        {
          v15 = memchr(v14, 123, v11 - 5);
          if (!v15)
          {
            break;
          }

          if (*v15 == 1852394619 && *(v15 + 2) == 32101)
          {
            goto LABEL_21;
          }

          v14 = (v15 + 1);
          v11 = v13 - v14;
        }

        while (v13 - v14 > 5);
      }

      v15 = v13;
LABEL_21:
      v18 = v15 == v13 || v15 - v9 == -1;
      if (v10 < 0)
      {
        operator delete(v12);
      }

      if (!v18)
      {
        v19 = *(a3 + 23);
        if ((v19 & 0x80u) == 0)
        {
          v20 = a3;
        }

        else
        {
          v20 = *a3;
        }

        if ((v19 & 0x80u) != 0)
        {
          v19 = *(a3 + 8);
        }

        if (v19 >= 5)
        {
          v21 = (v20 + v19);
          v22 = v20;
          do
          {
            v23 = memchr(v22, 95, v19 - 4);
            if (!v23)
            {
              break;
            }

            if (*v23 == 1852394591 && v23[4] == 101)
            {
              if (v23 != v21 && &v23[-v20] != -1)
              {
                std::string::replace(a3, &v23[-v20], 5uLL, "_LineNumber", 0xBuLL);
              }

              return;
            }

            v22 = v23 + 1;
            v19 = v21 - v22;
          }

          while (v21 - v22 >= 5);
        }
      }
    }
  }
}

void sub_9CD0E0(uint64_t a1, int a2, std::string *a3)
{
  v6 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  v9 = v7 + size;
  if (size >= 7)
  {
    v10 = size;
    v11 = v7;
    do
    {
      v12 = memchr(v11, 95, v10 - 6);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      if (*v12 == 1937331039 && *(v12 + 3) == 1835365491)
      {
        goto LABEL_16;
      }

      v11 = (v12 + 1);
      v10 = v9 - (v13 + 1);
    }

    while (v10 > 6);
  }

  v13 = v7 + size;
LABEL_16:
  if (size >= 5)
  {
    v15 = size;
    v16 = v7;
    do
    {
      v17 = memchr(v16, 95, v15 - 4);
      if (!v17)
      {
        break;
      }

      if (*v17 == 1852394591 && v17[4] == 101)
      {
        goto LABEL_25;
      }

      v16 = (v17 + 1);
      v15 = v9 - v16;
    }

    while (v9 - v16 > 4);
  }

  v17 = v7 + size;
LABEL_25:
  if (a2 && (v17 != v9 ? (v19 = v17 - v7 == -1) : (v19 = 1), v19 ? (v20 = 0) : (v20 = 1), v13 - v7 != -1 ? (v21 = v13 == v9) : (v21 = 1), !v21 || v20))
  {
    if (size >= 6)
    {
      v25 = v7;
      do
      {
        v26 = memchr(v25, 123, size - 5);
        if (!v26)
        {
          break;
        }

        if (*v26 == 1685015931 && *(v26 + 2) == 32101)
        {
          if (v26 != v9 && v26 - v7 != -1)
          {

            std::string::replace(a3, v26 - v7, 6uLL, "NoType", 6uLL);
          }

          return;
        }

        v25 = (v26 + 1);
        size = v9 - v25;
      }

      while (v9 - v25 >= 6);
    }
  }

  else
  {
    sub_9CBE3C(a1, __p);
    if (size >= 6)
    {
      v22 = v7;
      do
      {
        v23 = memchr(v22, 123, size - 5);
        if (!v23)
        {
          break;
        }

        if (*v23 == 1685015931 && *(v23 + 2) == 32101)
        {
          if (v23 != v9 && v23 - v7 != -1)
          {
            if ((v31 & 0x80u) == 0)
            {
              v28 = __p;
            }

            else
            {
              v28 = __p[0];
            }

            if ((v31 & 0x80u) == 0)
            {
              v29 = v31;
            }

            else
            {
              v29 = __p[1];
            }

            std::string::replace(a3, v23 - v7, 6uLL, v28, v29);
          }

          break;
        }

        v22 = (v23 + 1);
        size = v9 - v22;
      }

      while (v9 - v22 >= 6);
    }

    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_9CD374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_9CD390(void *a1, uint64_t a2)
{
  v4 = sub_2C5A0(a1, "{Line}");
  if (!v4)
  {
    v6 = 1;
    v7 = sub_2C5A0(a1, "{System}");
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_19:
    v9 = 1;
    v10 = sub_2C5A0(a1, "{Direction}");
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_20:
    v12 = 1;
    v13 = sub_2C5A0(a1, "{VehicleNumber}");
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_21:
    v15 = 1;
    result = sub_2C5A0(a1, "{Headsign}");
    if (result)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v5 = *(v4 + 63);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = v4[6];
  }

  v6 = v5 == 0;
  v7 = sub_2C5A0(a1, "{System}");
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_5:
  v8 = *(v7 + 63);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = v7[6];
  }

  v9 = v8 == 0;
  v10 = sub_2C5A0(a1, "{Direction}");
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_8:
  v11 = *(v10 + 63);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v11 = v10[6];
  }

  v12 = v11 == 0;
  v13 = sub_2C5A0(a1, "{VehicleNumber}");
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_11:
  v14 = *(v13 + 63);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v14 = v13[6];
  }

  v15 = v14 == 0;
  result = sub_2C5A0(a1, "{Headsign}");
  if (result)
  {
LABEL_14:
    data = result[2].__r_.__value_.__s.__data_[15];
    if ((data & 0x8000000000000000) != 0)
    {
      data = result[2].__r_.__value_.__l.__data_;
    }

    v18 = data == 0;
    if (!v6)
    {
      goto LABEL_40;
    }

    goto LABEL_23;
  }

LABEL_22:
  v18 = 1;
  if (!v6)
  {
    goto LABEL_40;
  }

LABEL_23:
  v19 = *(a2 + 23);
  if ((v19 & 0x80u) == 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a2 + 8);
  }

  if (v19 >= 5)
  {
    v21 = (v20 + v19);
    result = v20;
    do
    {
      result = memchr(result, 95, v19 - 4);
      if (!result)
      {
        break;
      }

      if (LODWORD(result->__r_.__value_.__l.__data_) == 1852394591 && result->__r_.__value_.__s.__data_[4] == 101)
      {
        if (result != v21 && result - v20 != -1)
        {
          result = std::string::replace(a2, result - v20, 5uLL, byte_22A5E10, 0);
        }

        break;
      }

      result = (result + 1);
      v19 = v21 - result;
    }

    while (v21 - result >= 5);
  }

LABEL_40:
  if (v9)
  {
    v23 = *(a2 + 23);
    if ((v23 & 0x80u) == 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = *a2;
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = *(a2 + 8);
    }

    if (v23 >= 7)
    {
      v25 = (v24 + v23);
      result = v24;
      do
      {
        result = memchr(result, 95, v23 - 6);
        if (!result)
        {
          break;
        }

        if (LODWORD(result->__r_.__value_.__l.__data_) == 1937331039 && *(result->__r_.__value_.__r.__words + 3) == 1835365491)
        {
          if (result != v25 && result - v24 != -1)
          {
            result = std::string::replace(a2, result - v24, 7uLL, byte_22A5E10, 0);
          }

          break;
        }

        result = (result + 1);
        v23 = v25 - result;
      }

      while (v25 - result >= 7);
    }
  }

  if (v12)
  {
    v27 = *(a2 + 23);
    if ((v27 & 0x80u) == 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    if ((v27 & 0x80u) != 0)
    {
      v27 = *(a2 + 8);
    }

    if (v27 >= 10)
    {
      v29 = (v28 + v27);
      result = v28;
      do
      {
        result = memchr(result, 95, v27 - 9);
        if (!result)
        {
          break;
        }

        if (result->__r_.__value_.__r.__words[0] == 0x697463657269445FLL && LOWORD(result->__r_.__value_.__r.__words[1]) == 28271)
        {
          if (result != v29 && result - v28 != -1)
          {
            result = std::string::replace(a2, result - v28, 0xAuLL, byte_22A5E10, 0);
          }

          break;
        }

        result = (result + 1);
        v27 = v29 - result;
      }

      while (v29 - result >= 10);
    }
  }

  if (v15)
  {
    v31 = *(a2 + 23);
    if ((v31 & 0x80u) == 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = *a2;
    }

    if ((v31 & 0x80u) != 0)
    {
      v31 = *(a2 + 8);
    }

    if (v31 >= 14)
    {
      v33 = (v32 + v31);
      result = v32;
      do
      {
        result = memchr(result, 95, v31 - 13);
        if (!result)
        {
          break;
        }

        if (result->__r_.__value_.__r.__words[0] == 0x656C63696865565FLL && *(result->__r_.__value_.__r.__words + 6) == 0x7265626D754E656CLL)
        {
          if (result != v33 && result - v32 != -1)
          {
            result = std::string::replace(a2, result - v32, 0xEuLL, byte_22A5E10, 0);
          }

          break;
        }

        result = (result + 1);
        v31 = v33 - result;
      }

      while (v33 - result >= 14);
    }
  }

  if (v18)
  {
    v35 = *(a2 + 23);
    if (v35 >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = *a2;
    }

    if (v35 >= 0)
    {
      v37 = *(a2 + 23);
    }

    else
    {
      v37 = *(a2 + 8);
    }

    v38 = (v36 + v37);
    if (v37 >= 12)
    {
      v39 = v37;
      result = v36;
      do
      {
        result = memchr(result, 95, v39 - 11);
        if (!result)
        {
          break;
        }

        if (result->__r_.__value_.__r.__words[0] == 0x646165485F6F545FLL && LODWORD(result->__r_.__value_.__r.__words[1]) == 1852270963)
        {
          if (result != v38)
          {
            v41 = (result - v36);
            if (result - v36 != -1)
            {
              v42 = a2;
              v43 = 12;
LABEL_137:

              return std::string::replace(v42, v41, v43, byte_22A5E10, 0);
            }
          }

          break;
        }

        result = (result + 1);
        v39 = v38 - result;
      }

      while (v38 - result >= 12);
      if (v37 >= 16)
      {
        v44 = v37;
        result = v36;
        do
        {
          result = memchr(result, 95, v44 - 15);
          if (!result)
          {
            break;
          }

          if (result->__r_.__value_.__r.__words[0] == 0x5F647261776F545FLL && result->__r_.__value_.__l.__size_ == 0x6E67697364616548)
          {
            if (result != v38)
            {
              v41 = (result - v36);
              if (result - v36 != -1)
              {
                v42 = a2;
                v43 = 16;
                goto LABEL_137;
              }
            }

            break;
          }

          result = (result + 1);
          v44 = v38 - result;
        }

        while (v38 - result >= 16);
      }
    }

    if (v37 >= 9)
    {
      result = v36;
      do
      {
        result = memchr(result, 95, v37 - 8);
        if (!result)
        {
          break;
        }

        if (result->__r_.__value_.__r.__words[0] == 0x676973646165485FLL && result->__r_.__value_.__s.__data_[8] == 110)
        {
          if (result != v38)
          {
            v41 = (result - v36);
            if (result - v36 != -1)
            {
              v42 = a2;
              v43 = 9;
              goto LABEL_137;
            }
          }

          return result;
        }

        result = (result + 1);
        v37 = v38 - result;
      }

      while (v38 - result >= 9);
    }
  }

  return result;
}

void sub_9CD974(void *a1, uint64_t a2, int a3, char a4, uint64_t *a5, uint64_t a6)
{
  sub_9CD390(a1, a6);
  sub_9CD0E0(a2, a3, a6);
  sub_9CCF00(a1, a5, a6);
  if ((a4 & 1) == 0)
  {
    qmemcpy(v20, "_VehicleNumber", 14);
    v19 = 20;
    strcpy(__p, "_VehicleAlphanumeric");
    v12 = *(a6 + 23);
    if ((v12 & 0x80u) == 0)
    {
      v13 = a6;
    }

    else
    {
      v13 = *a6;
    }

    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a6 + 8);
    }

    if (v12 >= 14)
    {
      v14 = (v13 + v12);
      v15 = v13;
      do
      {
        v16 = memchr(v15, 95, v12 - 13);
        if (!v16)
        {
          break;
        }

        if (*v16 == v20[0] && *(v16 + 6) == *(v20 + 6))
        {
          if (v16 != v14 && &v16[-v13] != -1)
          {
            std::string::replace(a6, &v16[-v13], 0xEuLL, __p, 0x14uLL);
            if (v19 < 0)
            {
              operator delete(*__p);
            }
          }

          return;
        }

        v15 = v16 + 1;
        v12 = v14 - v15;
      }

      while (v14 - v15 >= 14);
    }
  }
}

void sub_9CDAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9CDAFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, void *a8, __int128 *a9, uint64_t a10)
{
  sub_9274F4(a5, a2);
  v13 = *(a3 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a3 + 8);
  }

  if (v13)
  {
    sub_9274F4(a5, a3);
  }

  sub_9274F4(a5, a4);
  operator new();
}

void sub_9CDE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_4B98C4(&a10);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_9CDEEC(unsigned int a1)
{
  v1 = 0x202010100uLL >> (8 * a1);
  if (a1 >= 5)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 3;
}

void sub_9CDF10(int a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  if (a1 > 2)
  {
    if (a1 == 4)
    {
      __dst = 0uLL;
      v19 = 0;
      memset(v17, 0, 24);
      if (a4)
      {
        BYTE7(v17[1]) = 22;
        qmemcpy(v17, "{RT_Symbol} No service", 22);
        v9 = 6;
        v7 = 2;
        v8 = 1;
      }

      else
      {
        v8 = 0;
        BYTE7(v17[1]) = 10;
        qmemcpy(v17, "No service", 10);
        v9 = 6;
        v7 = 2;
      }

      goto LABEL_24;
    }

    if (a1 == 3)
    {
      __dst = 0uLL;
      v19 = 0;
      memset(v17, 0, 24);
      if (a4)
      {
        BYTE7(v17[1]) = 18;
        qmemcpy(v17, "{RT_Symbol} Delays", 18);
        v7 = 2;
        v8 = 1;
      }

      else
      {
        v8 = 0;
        BYTE7(v17[1]) = 6;
        qmemcpy(v17, "Delays", 6);
        v7 = 2;
      }

      v9 = 2;
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  if ((a1 - 1) < 2)
  {
    v7 = 1;
    __dst = 0uLL;
    v19 = 0;
    memset(v17, 0, 24);
    if (a1 == 1)
    {
      goto LABEL_44;
    }

    goto LABEL_15;
  }

  if (a1)
  {
LABEL_14:
    v7 = 0;
    __dst = 0uLL;
    v19 = 0;
    memset(v17, 0, 24);
    if (a1 == 1)
    {
      goto LABEL_44;
    }

LABEL_15:
    if (a1 != 2)
    {
      v8 = 0;
      *(a3 + 104) = 0;
      goto LABEL_36;
    }

    if (a4)
    {
      HIBYTE(v19) = 11;
      strcpy(&__dst, "{RT_Symbol}");
      v8 = 1;
      *(a3 + 104) = 1;
      goto LABEL_36;
    }

    v8 = 0;
    BYTE7(v17[1]) = 7;
    qmemcpy(v17, "On-time", 7);
    v9 = 1;
LABEL_24:
    *(a3 + 104) = v9;
    v10 = sub_9274F4(a2, v17);
    if (&__dst != v10)
    {
      v11 = *(v10 + 23);
      if (SHIBYTE(v19) < 0)
      {
        if (v11 >= 0)
        {
          v13 = v10;
        }

        else
        {
          v13 = *v10;
        }

        if (v11 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        sub_13B38(&__dst, v13, v14);
      }

      else if ((*(v10 + 23) & 0x80) != 0)
      {
        sub_13A68(&__dst, *v10, v10[1]);
      }

      else
      {
        v12 = *v10;
        v19 = v10[2];
        __dst = v12;
      }
    }

    goto LABEL_36;
  }

  __dst = 0uLL;
  v19 = 0;
  memset(v17, 0, 24);
  v8 = 0;
  v7 = 0;
  if ((a4 & 1) == 0)
  {
    v9 = 0;
    BYTE7(v17[1]) = 9;
    qmemcpy(v17, "Scheduled", 9);
    goto LABEL_24;
  }

  *(a3 + 104) = 0;
LABEL_36:
  v15 = HIBYTE(v19);
  if (SHIBYTE(v19) < 0)
  {
    v15 = *(&__dst + 1);
  }

  if (v15)
  {
    v16[0] = 0;
    sub_64C770(a3, &__dst, &unk_22A5E40, v7, v16);
  }

  if (a5 != 0x7FFFFFFFLL)
  {
    sub_64B998(v16);
    sub_64F2E8(a3, v16, a5);
  }

  if (v8)
  {
    sub_588850(1, v16);
    sub_64BF94(a3, "{RT_Symbol}", v16);
  }

LABEL_44:
  if ((SBYTE7(v17[1]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      return;
    }

LABEL_48:
    operator delete(__dst);
    return;
  }

  operator delete(*&v17[0]);
  if (SHIBYTE(v19) < 0)
  {
    goto LABEL_48;
  }
}

void sub_9CE2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5CEBB8(&a9);
  if (*(v9 - 89) < 0)
  {
    operator delete(*(v9 - 112));
    if ((*(v9 - 57) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v9 - 57) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*(v9 - 80));
  _Unwind_Resume(a1);
}

BOOL sub_9CE360(int a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*(a3 + 1444))
  {
    v4 = *(a3 + 1177) >= 0xCu;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*(a2 + 488) == *(a2 + 496))
  {
    return 0;
  }

  v5 = *(a2 + 116);
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (*a4 < 0)
  {
    v7 = -5;
  }

  else
  {
    v7 = 5;
  }

  return v5 < (*a4 / 10 + a1 + (((103 * (v7 + *a4 % 10)) >> 15) & 1) + ((103 * (v7 + *a4 % 10)) >> 10));
}

uint64_t sub_9CE3F8(uint64_t result, unsigned int a2)
{
  v2 = 0x50402030100uLL >> (8 * a2);
  if (a2 >= 6)
  {
    LOBYTE(v2) = 0;
  }

  *(result + 104) = v2;
  return result;
}

void sub_9CE41C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_9274F4(a2, a1);
  if (*(v5 + 23) < 0)
  {
    sub_325C(&__p, *v5, v5[1]);
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    if (v7 == v8)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v6 = *v5;
    __p.__r_.__value_.__r.__words[2] = v5[2];
    *&__p.__r_.__value_.__l.__data_ = v6;
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    if (v7 == v8)
    {
      goto LABEL_37;
    }
  }

  do
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v15 = v7[23];
    if (v15 >= 0)
    {
      v16 = v7;
    }

    else
    {
      v16 = *v7;
    }

    if (v15 >= 0)
    {
      v17 = v7[23];
    }

    else
    {
      v17 = *(v7 + 1);
    }

    if (v17)
    {
      if (size >= v17)
      {
        v18 = p_p + size;
        v19 = *v16;
        v20 = p_p;
        do
        {
          v21 = size - v17;
          if (v21 == -1)
          {
            break;
          }

          v22 = memchr(v20, v19, v21 + 1);
          if (!v22)
          {
            break;
          }

          v23 = v22;
          if (!memcmp(v22, v16, v17))
          {
            if (v23 != v18)
            {
              v9 = v23 - p_p;
              if (v23 - p_p != -1)
              {
                goto LABEL_7;
              }
            }

            break;
          }

          v20 = (v23 + 1);
          size = v18 - (v23 + 1);
        }

        while (size >= v17);
      }
    }

    else
    {
      v9 = 0;
LABEL_7:
      v10 = v7[47];
      if (v10 >= 0)
      {
        v11 = v7 + 24;
      }

      else
      {
        v11 = *(v7 + 3);
      }

      if (v10 >= 0)
      {
        v12 = v7[47];
      }

      else
      {
        v12 = *(v7 + 4);
      }

      std::string::replace(&__p, v9, v17, v11, v12);
    }

    v7 += 48;
  }

  while (v7 != v8);
LABEL_37:
  sub_64C184(a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_9CE5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9CE5D4(__int128 **a1, __int128 *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 2 * v3;
  sub_64AC90(32 * v3, a2, *a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v16] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v16] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      *(v13 + 24) = *(v12 + 24);
      v12 += 2;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 2;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_9CE740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4BB0B8(va);
  _Unwind_Resume(a1);
}

void sub_9CEA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B34D8)
  {
    qword_27B34E0 = qword_27B34D8;
    operator delete(qword_27B34D8);
  }

  _Unwind_Resume(exception_object);
}

void sub_9CEAD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0x7FFFFFFF;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  HIBYTE(v10[2]) = 19;
  strcpy(v10, "TransitInstructions");
  __p = 0;
  v8 = 0;
  v9 = 0;
  v2 = sub_3AEC94(a1, v10, &__p);
  v3 = __p;
  if (__p)
  {
    v4 = v8;
    v5 = __p;
    if (v8 != __p)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = __p;
    }

    v8 = v3;
    operator delete(v5);
  }

  if (SHIBYTE(v10[2]) < 0)
  {
    operator delete(v10[0]);
  }

  HIBYTE(v10[2]) = 10;
  strcpy(v10, "countdowns");
  sub_5F5AC(v2, v10);
  if (SHIBYTE(v10[2]) < 0)
  {
    operator delete(v10[0]);
  }

  operator new();
}

void sub_9CEF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9CF030(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4 || (v5 = *(v3 + 2), *(v3 + 1) != v5) && *(v5 - 5704) == 4)
  {
    v25 = 0;
    v6 = *a1;
    v24 = &v25;
    v7 = 0x4EC4EC4EC4EC4EC5 * ((v4 - v3) >> 3);
    if (v7 >= 2)
    {
      *v28 = 0u;
      *__p = 0u;
      v30 = 1065353216;
      if (v3 != v4)
      {
        do
        {
          v8 = *(v3 + 1);
          v9 = *(v3 + 2);
          if (v8 != v9)
          {
            while (*v8 != 2)
            {
              v8 += 5704;
              if (v8 == v9)
              {
                v8 = *(v3 + 2);
                break;
              }
            }
          }

          v10 = *(v8 + 752);
          v11 = v6[9];
          if (0x66FD0EB66FD0EB67 * ((v6[10] - v11) >> 3) <= v10)
          {
            sub_6FAB4();
          }

          v12 = v11 + 696 * v10;
          v13 = *(v12 + 672);
          for (i = *(v12 + 680); v13 != i; v13 += 2)
          {
            v31[0] = v13;
            v15 = sub_9CF4B8(v28, v13, &unk_229EB70, v31);
            ++*(v15 + 6);
          }

          v3 += 104;
        }

        while (v3 != v4);
        v16 = __p[0];
        v3 = *a2;
        v4 = a2[1];
        v17 = &v4[-*a2] >> 3;
        if (__p[0])
        {
          v7 = 0x4EC4EC4EC4EC4EC5 * v17;
          while (v7 != *(v16 + 6))
          {
            v16 = *v16;
            if (!v16)
            {
              goto LABEL_22;
            }
          }

          v18 = *(v16 + 2);
          goto LABEL_23;
        }

        v7 = 0x4EC4EC4EC4EC4EC5 * v17;
      }

LABEL_22:
      v18 = -1;
LABEL_23:
      v27 = v18;
      v26 = &v27;
      v31[0] = &v24;
      v31[1] = v6;
      v31[2] = &v27;
      v31[3] = &v26;
      v19 = 126 - 2 * __clz(v7);
      if (v4 == v3)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      sub_9CF7F4(v3, v4, v31, v20, 1);
      v21 = __p[0];
      if (__p[0])
      {
        do
        {
          v22 = *v21;
          operator delete(v21);
          v21 = v22;
        }

        while (v22);
      }

      v23 = v28[0];
      v28[0] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }
  }
}

void sub_9CF280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_9CF294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_9CF2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_9CF2BC(uint64_t *a1, char **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 - *a2;
  if (v4 >= 0x11)
  {
    v5 = *a1;
    *v23 = 0u;
    *__p = 0u;
    v25 = 1065353216;
    if (v2 == v3)
    {
      goto LABEL_14;
    }

    do
    {
      v7 = v5[9];
      if ((0x66FD0EB66FD0EB67 * ((v5[10] - v7) >> 3)) <= *v2)
      {
        sub_6FAB4();
      }

      v8 = v7 + 696 * *v2;
      v9 = *(v8 + 672);
      for (i = *(v8 + 680); v9 != i; v9 += 2)
      {
        v26[0] = v9;
        v11 = sub_9CF4B8(v23, v9, &unk_229EB70, v26);
        ++*(v11 + 6);
      }

      v2 += 16;
    }

    while (v2 != v3);
    v12 = __p[0];
    v2 = *a2;
    v3 = a2[1];
    v4 = v3 - *a2;
    if (!__p[0])
    {
LABEL_14:
      v22 = -1;
      v13 = v4 >> 4;
    }

    else
    {
      v13 = v4 >> 4;
      while (v13 != *(v12 + 6))
      {
        v12 = *v12;
        if (!v12)
        {
          v14 = -1;
          goto LABEL_16;
        }
      }

      v14 = *(v12 + 2);
LABEL_16:
      v22 = v14;
    }

    v21 = &v22;
    v26[0] = &v20;
    v26[1] = v5;
    v26[2] = &v22;
    v26[3] = &v21;
    v15 = 126 - 2 * __clz(v13);
    if (v3 == v2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    sub_9D2520(v2, v3, v26, v16, 1);
    v17 = __p[0];
    if (__p[0])
    {
      do
      {
        v18 = *v17;
        operator delete(v17);
        v17 = v18;
      }

      while (v18);
    }

    v19 = v23[0];
    v23[0] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }
}

void sub_9CF47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_9CF490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_9CF4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void *sub_9CF4B8(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (v9[2] == v4)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_9CF7F4(char *a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a3;
LABEL_2:
  v293 = a2 - 104;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = &a2[-v7];
    v9 = 0x4EC4EC4EC4EC4EC5 * (&a2[-v7] >> 3);
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return;
    }

    if (v9 == 2)
    {
      if (sub_9D18A8(v6, *(a2 - 12), *(a2 - 11), *(a1 + 1), *(a1 + 2)))
      {

        sub_9D2128(a1, v293);
      }

      return;
    }

LABEL_10:
    if (v8 <= 2495)
    {
      if (a5)
      {
        if (a1 == a2)
        {
          return;
        }

        v58 = a1 + 104;
        if (a1 + 104 == a2)
        {
          return;
        }

        v59 = a1;
        while (2)
        {
          v61 = v58;
          if (!sub_9D18A8(v6, *(v59 + 14), *(v59 + 15), *(v59 + 1), *(v59 + 2)))
          {
LABEL_101:
            v58 = v61 + 104;
            v59 = v61;
            if (v61 + 104 == a2)
            {
              return;
            }

            continue;
          }

          break;
        }

        v318 = *v61;
        *v320 = *(v59 + 7);
        *&v320[16] = *(v59 + 16);
        *(v59 + 14) = 0;
        *(v59 + 15) = 0;
        *(v59 + 16) = 0;
        v326 = *(v59 + 136);
        v332 = *(v59 + 19);
        *(v59 + 17) = 0;
        *(v59 + 18) = 0;
        *(v59 + 19) = 0;
        v338 = *(v59 + 10);
        v344 = *(v59 + 22);
        *v350 = *(v59 + 184);
        *&v350[16] = *(v59 + 25);
        *(v59 + 23) = 0;
        *(v59 + 24) = 0;
        v294 = v61;
        v62 = v61;
        *(v59 + 25) = 0;
        while (2)
        {
          v63 = v59;
          v64 = (v59 + 8);
          *v62 = *v59;
          v65 = (v62 + 8);
          v66 = *(v62 + 1);
          if (v66)
          {
            v67 = *(v62 + 2);
            v68 = *(v62 + 1);
            if (v67 != v66)
            {
              do
              {
                v67 = sub_9750F8(v67 - 5704);
              }

              while (v67 != v66);
              v68 = *v65;
            }

            *(v62 + 2) = v66;
            operator delete(v68);
            *v65 = 0;
            *(v62 + 2) = 0;
            *(v62 + 3) = 0;
          }

          *(v62 + 8) = *(v63 + 8);
          *(v62 + 3) = *(v63 + 3);
          *v64 = 0;
          v64[1] = 0;
          v300 = v64;
          v64[2] = 0;
          if (v62[55] < 0)
          {
            operator delete(*(v62 + 4));
          }

          *(v62 + 2) = *(v63 + 2);
          *(v62 + 6) = *(v63 + 6);
          v63[55] = 0;
          v63[32] = 0;
          v69 = *(v62 + 10);
          *(v62 + 56) = *(v63 + 56);
          v306 = (v62 + 80);
          *(v62 + 9) = *(v63 + 9);
          if (v69)
          {
            v70 = *(v62 + 11);
            v71 = v69;
            if (v70 == v69)
            {
LABEL_135:
              *(v62 + 11) = v69;
              operator delete(v71);
              *v306 = 0;
              *(v62 + 11) = 0;
              *(v62 + 12) = 0;
              goto LABEL_136;
            }

            while (2)
            {
              v72 = *(v70 - 3);
              if (v72)
              {
                v73 = *(v70 - 2);
                v74 = *(v70 - 3);
                if (v73 != v72)
                {
                  v75 = *(v70 - 2);
                  do
                  {
                    v78 = *(v75 - 3);
                    v75 -= 3;
                    v77 = v78;
                    if (v78)
                    {
                      v79 = *(v73 - 2);
                      v76 = v77;
                      if (v79 != v77)
                      {
                        do
                        {
                          v80 = *(v79 - 3);
                          if (v80)
                          {
                            *(v79 - 2) = v80;
                            operator delete(v80);
                          }

                          v79 -= 32;
                        }

                        while (v79 != v77);
                        v76 = *v75;
                      }

                      *(v73 - 2) = v77;
                      operator delete(v76);
                    }

                    v73 = v75;
                  }

                  while (v75 != v72);
                  v74 = *(v70 - 3);
                }

                *(v70 - 2) = v72;
                operator delete(v74);
              }

              if (*(v70 - 25) < 0)
              {
                operator delete(*(v70 - 6));
                v81 = v70 - 9;
                v6 = a3;
                if (*(v70 - 49) < 0)
                {
                  goto LABEL_133;
                }
              }

              else
              {
                v81 = v70 - 9;
                v6 = a3;
                if (*(v70 - 49) < 0)
                {
LABEL_133:
                  operator delete(*v81);
                }
              }

              v70 = v81;
              if (v81 == v69)
              {
                v71 = *v306;
                goto LABEL_135;
              }

              continue;
            }
          }

LABEL_136:
          v82 = (v63 + 80);
          *(v62 + 5) = *(v63 + 5);
          *(v62 + 12) = *(v63 + 12);
          *(v63 + 10) = 0;
          *(v63 + 11) = 0;
          *(v63 + 12) = 0;
          if (v63 == a1)
          {
            v84 = a1;
            v83 = v300;
            *a1 = v318;
            v85 = *(v63 + 1);
            if (!v85)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v59 = v63 - 104;
            v62 = v63;
            v83 = v300;
            if (sub_9D18A8(v6, *v320, *&v320[8], *(v63 - 12), *(v63 - 11)))
            {
              continue;
            }

            v84 = v63;
            *v63 = v318;
            v85 = *(v63 + 1);
            if (!v85)
            {
LABEL_145:
              *v83 = *v320;
              *(v84 + 1) = *&v320[8];
              if (v84[55] < 0)
              {
                operator delete(*(v63 + 4));
              }

              *(v63 + 6) = v332;
              *(v63 + 2) = v326;
              *(v63 + 56) = v338;
              *(v63 + 9) = v344;
              v88 = *v82;
              if (!*v82)
              {
                goto LABEL_100;
              }

              v89 = *(v84 + 11);
              v60 = *v82;
              if (v89 == v88)
              {
LABEL_99:
                *(v84 + 11) = v88;
                operator delete(v60);
                *v82 = 0;
                v82[1] = 0;
                v82[2] = 0;
LABEL_100:
                *v82 = *v350;
                *(v84 + 88) = *&v350[8];
                v61 = v294;
                goto LABEL_101;
              }

              while (2)
              {
                v90 = *(v89 - 3);
                if (v90)
                {
                  v91 = *(v89 - 2);
                  v92 = *(v89 - 3);
                  if (v91 != v90)
                  {
                    v93 = *(v89 - 2);
                    do
                    {
                      v96 = *(v93 - 3);
                      v93 -= 3;
                      v95 = v96;
                      if (v96)
                      {
                        v97 = *(v91 - 2);
                        v94 = v95;
                        if (v97 != v95)
                        {
                          do
                          {
                            v98 = *(v97 - 3);
                            if (v98)
                            {
                              *(v97 - 2) = v98;
                              operator delete(v98);
                            }

                            v97 -= 32;
                          }

                          while (v97 != v95);
                          v94 = *v93;
                        }

                        *(v91 - 2) = v95;
                        operator delete(v94);
                      }

                      v91 = v93;
                    }

                    while (v93 != v90);
                    v92 = *(v89 - 3);
                  }

                  *(v89 - 2) = v90;
                  operator delete(v92);
                }

                if (*(v89 - 25) < 0)
                {
                  operator delete(*(v89 - 6));
                  v99 = v89 - 9;
                  v6 = a3;
                  if (*(v89 - 49) < 0)
                  {
                    goto LABEL_169;
                  }
                }

                else
                {
                  v99 = v89 - 9;
                  v6 = a3;
                  if (*(v89 - 49) < 0)
                  {
LABEL_169:
                    operator delete(*v99);
                  }
                }

                v89 = v99;
                if (v99 == v88)
                {
                  v60 = *v82;
                  goto LABEL_99;
                }

                continue;
              }
            }
          }

          break;
        }

        v86 = *(v84 + 2);
        v87 = v85;
        if (v86 != v85)
        {
          do
          {
            v86 = sub_9750F8(v86 - 5704);
          }

          while (v86 != v85);
          v87 = *v83;
        }

        *(v84 + 2) = v85;
        operator delete(v87);
        *v83 = 0;
        v83[1] = 0;
        v83[2] = 0;
        goto LABEL_145;
      }

      if (a1 == a2)
      {
        return;
      }

      v233 = a1 + 104;
      if (a1 + 104 == a2)
      {
        return;
      }

      while (2)
      {
        v236 = v233;
        v237 = a1;
        if (!sub_9D18A8(v6, *(a1 + 14), *(a1 + 15), *(a1 + 1), *(a1 + 2)))
        {
LABEL_390:
          v233 = v236 + 104;
          a1 = v236;
          if (v236 + 104 == a2)
          {
            return;
          }

          continue;
        }

        break;
      }

      v319 = *v236;
      v321 = *(a1 + 7);
      v323 = *(a1 + 16);
      *(a1 + 14) = 0;
      *(a1 + 15) = 0;
      *(a1 + 16) = 0;
      v329 = *(a1 + 136);
      v335 = *(a1 + 19);
      *(a1 + 17) = 0;
      *(a1 + 18) = 0;
      *(a1 + 19) = 0;
      v341 = *(a1 + 10);
      v347 = *(a1 + 22);
      v352 = *(a1 + 184);
      v356 = *(a1 + 25);
      *(a1 + 23) = 0;
      *(a1 + 24) = 0;
      v298 = v236;
      v238 = v236;
      *(a1 + 25) = 0;
      while (2)
      {
        v304 = (v237 + 8);
        v310 = v237;
        *v238 = *v237;
        v239 = (v238 + 8);
        v240 = *(v238 + 1);
        if (v240)
        {
          v241 = *(v238 + 2);
          v242 = *(v238 + 1);
          if (v241 != v240)
          {
            do
            {
              v241 = sub_9750F8(v241 - 5704);
            }

            while (v241 != v240);
            v242 = *v239;
          }

          *(v238 + 2) = v240;
          operator delete(v242);
          *v239 = 0;
          *(v238 + 2) = 0;
          *(v238 + 3) = 0;
        }

        *(v238 + 8) = *(v237 + 8);
        *(v238 + 3) = *(v237 + 3);
        *v304 = 0;
        *(v237 + 2) = 0;
        *(v237 + 3) = 0;
        if (v238[55] < 0)
        {
          operator delete(*(v238 + 4));
        }

        *(v238 + 2) = *(v237 + 2);
        *(v238 + 6) = *(v237 + 6);
        v237[55] = 0;
        v237[32] = 0;
        v243 = (v238 + 80);
        v244 = *(v238 + 10);
        *(v238 + 56) = *(v237 + 56);
        *(v238 + 9) = *(v237 + 9);
        if (v244)
        {
          v245 = *(v238 + 11);
          v246 = v244;
          if (v245 == v244)
          {
LABEL_424:
            *(v238 + 11) = v244;
            operator delete(v246);
            *v243 = 0;
            *(v238 + 11) = 0;
            *(v238 + 12) = 0;
            v237 = v310;
            v6 = a3;
            goto LABEL_425;
          }

          while (2)
          {
            v247 = *(v245 - 3);
            if (v247)
            {
              v248 = *(v245 - 2);
              v249 = *(v245 - 3);
              if (v248 != v247)
              {
                v250 = *(v245 - 2);
                do
                {
                  v253 = *(v250 - 3);
                  v250 -= 3;
                  v252 = v253;
                  if (v253)
                  {
                    v254 = *(v248 - 2);
                    v251 = v252;
                    if (v254 != v252)
                    {
                      do
                      {
                        v255 = *(v254 - 3);
                        if (v255)
                        {
                          *(v254 - 2) = v255;
                          operator delete(v255);
                        }

                        v254 -= 32;
                      }

                      while (v254 != v252);
                      v251 = *v250;
                    }

                    *(v248 - 2) = v252;
                    operator delete(v251);
                  }

                  v248 = v250;
                }

                while (v250 != v247);
                v249 = *(v245 - 3);
              }

              *(v245 - 2) = v247;
              operator delete(v249);
            }

            if (*(v245 - 25) < 0)
            {
              operator delete(*(v245 - 6));
              v256 = v245 - 9;
              if (*(v245 - 49) < 0)
              {
                goto LABEL_422;
              }
            }

            else
            {
              v256 = v245 - 9;
              if (*(v245 - 49) < 0)
              {
LABEL_422:
                operator delete(*v256);
              }
            }

            v245 = v256;
            if (v256 == v244)
            {
              v246 = *v243;
              goto LABEL_424;
            }

            continue;
          }
        }

LABEL_425:
        v257 = (v237 + 80);
        *(v238 + 5) = *(v237 + 5);
        *(v238 + 12) = *(v237 + 12);
        *(v237 + 10) = 0;
        *(v237 + 11) = 0;
        *(v237 + 12) = 0;
        v258 = *(&v321 + 1);
        v259 = v237;
        v260 = sub_9D18A8(v6, v321, *(&v321 + 1), *(v237 - 12), *(v237 - 11));
        v237 -= 104;
        v238 = v259;
        if (v260)
        {
          continue;
        }

        break;
      }

      v235 = v259;
      *v259 = v319;
      v261 = *(v259 + 1);
      if (v261)
      {
        v262 = *(v259 + 2);
        v263 = *(v259 + 1);
        if (v262 != v261)
        {
          do
          {
            v262 = sub_9750F8(v262 - 5704);
          }

          while (v262 != v261);
          v235 = v310;
          v263 = *v304;
        }

        *(v235 + 2) = v261;
        operator delete(v263);
        v235 = v310;
        *v304 = 0;
        v304[1] = 0;
        v304[2] = 0;
        v258 = *(&v321 + 1);
      }

      *(v235 + 1) = v321;
      *(v235 + 2) = v258;
      *(v235 + 3) = v323;
      v6 = a3;
      if (v235[55] < 0)
      {
        operator delete(*(v235 + 4));
        v235 = v310;
      }

      *(v235 + 6) = v335;
      *(v235 + 2) = v329;
      *(v235 + 56) = v341;
      *(v235 + 9) = v347;
      v264 = *v257;
      if (!*v257)
      {
LABEL_389:
        *(v235 + 5) = v352;
        *(v235 + 12) = v356;
        v236 = v298;
        goto LABEL_390;
      }

      v265 = *(v235 + 11);
      v234 = *v257;
      if (v265 == v264)
      {
LABEL_388:
        *(v235 + 11) = v264;
        operator delete(v234);
        v235 = v310;
        *v257 = 0;
        v257[1] = 0;
        v257[2] = 0;
        goto LABEL_389;
      }

      while (2)
      {
        v266 = *(v265 - 3);
        if (v266)
        {
          v267 = *(v265 - 2);
          v268 = *(v265 - 3);
          if (v267 != v266)
          {
            v269 = *(v265 - 2);
            do
            {
              v272 = *(v269 - 3);
              v269 -= 3;
              v271 = v272;
              if (v272)
              {
                v273 = *(v267 - 2);
                v270 = v271;
                if (v273 != v271)
                {
                  do
                  {
                    v274 = *(v273 - 3);
                    if (v274)
                    {
                      *(v273 - 2) = v274;
                      operator delete(v274);
                    }

                    v273 -= 32;
                  }

                  while (v273 != v271);
                  v270 = *v269;
                }

                *(v267 - 2) = v271;
                operator delete(v270);
              }

              v267 = v269;
            }

            while (v269 != v266);
            v268 = *(v265 - 3);
          }

          *(v265 - 2) = v266;
          operator delete(v268);
          v235 = v310;
        }

        if (*(v265 - 25) < 0)
        {
          operator delete(*(v265 - 6));
          v235 = v310;
          v275 = v265 - 9;
          if (*(v265 - 49) < 0)
          {
            goto LABEL_455;
          }
        }

        else
        {
          v275 = v265 - 9;
          if (*(v265 - 49) < 0)
          {
LABEL_455:
            operator delete(*v275);
            v235 = v310;
          }
        }

        v265 = v275;
        if (v275 == v264)
        {
          v234 = *v257;
          v6 = a3;
          goto LABEL_388;
        }

        continue;
      }
    }

    if (!a4)
    {
      if (a1 == a2)
      {
        return;
      }

      v100 = (v9 - 2) >> 1;
      v307 = v100;
      do
      {
        v101 = v100;
        if (v307 >= v100)
        {
          v102 = (2 * v100) | 1;
          v103 = &a1[104 * v102];
          if (2 * v100 + 2 >= v9)
          {
            v104 = a3;
          }

          else
          {
            v104 = a3;
            v105 = sub_9D18A8(a3, v103[1], v103[2], v103[14], v103[15]);
            if (v105)
            {
              v106 = 104;
            }

            else
            {
              v106 = 0;
            }

            v103 = (v103 + v106);
            if (v105)
            {
              v102 = 2 * v101 + 2;
            }
          }

          v107 = &a1[104 * v101];
          if (!sub_9D18A8(v104, v103[1], v103[2], *(v107 + 1), *(v107 + 2)))
          {
            v108 = &a1[104 * v101];
            v290 = *v107;
            v109 = *(v107 + 1);
            v110 = *(v107 + 2);
            v295 = *(v107 + 3);
            v301 = v101;
            *(v107 + 1) = 0;
            *(v107 + 2) = 0;
            *(v107 + 3) = 0;
            v333 = *(v107 + 6);
            v327 = *(v107 + 2);
            *(v107 + 5) = 0;
            *(v107 + 6) = 0;
            *(v107 + 4) = 0;
            v345 = *(v107 + 9);
            v339 = *(v107 + 56);
            v351 = *(v107 + 5);
            v355 = *(v107 + 12);
            *(v107 + 10) = 0;
            *(v107 + 11) = 0;
            *(v107 + 12) = 0;
            do
            {
              v111 = v103;
              sub_9D2240(v108, v103);
              if (v307 < v102)
              {
                break;
              }

              v103 = &a1[104 * ((2 * v102) | 1)];
              if (2 * v102 + 2 >= v9)
              {
                v102 = (2 * v102) | 1;
              }

              else
              {
                v112 = sub_9D18A8(a3, v103[1], v103[2], v103[14], v103[15]);
                v113 = v112 ? 104 : 0;
                v103 = (v103 + v113);
                v102 = v112 ? 2 * v102 + 2 : (2 * v102) | 1;
              }

              v114 = sub_9D18A8(a3, v103[1], v103[2], v109, v110);
              v108 = v111;
            }

            while (!v114);
            *v111 = v290;
            v115 = (v111 + 1);
            v116 = v111[1];
            if (v116)
            {
              v117 = v111[2];
              v118 = v111[1];
              if (v117 != v116)
              {
                do
                {
                  v117 = sub_9750F8(v117 - 5704);
                }

                while (v117 != v116);
                v118 = *v115;
              }

              v111[2] = v116;
              operator delete(v118);
              *v115 = 0;
              v111[2] = 0;
              v111[3] = 0;
            }

            v111[1] = v109;
            v111[2] = v110;
            v111[3] = v295;
            if (*(v111 + 55) < 0)
            {
              operator delete(v111[4]);
            }

            v111[6] = v333;
            *(v111 + 2) = v327;
            v119 = (v111 + 10);
            v120 = v111[10];
            v111[9] = v345;
            *(v111 + 7) = v339;
            if (v120)
            {
              v121 = v111[11];
              v122 = v120;
              if (v121 != v120)
              {
                do
                {
                  v121 -= 72;
                  sub_9D2428(v121);
                }

                while (v121 != v120);
                v122 = *v119;
              }

              v111[11] = v120;
              operator delete(v122);
              *v119 = 0;
              v111[11] = 0;
              v111[12] = 0;
            }

            *(v111 + 5) = v351;
            v111[12] = v355;
            v101 = v301;
          }
        }

        v100 = v101 - 1;
      }

      while (v101);
      v123 = 0x4EC4EC4EC4EC4EC5 * (v8 >> 3);
      v124 = a3;
      while (2)
      {
        v126 = 0;
        v280 = *a1;
        v285 = *(a1 + 1);
        v287 = a2;
        v312 = *(a1 + 2);
        v283 = *(a1 + 3);
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *(a1 + 3) = 0;
        v313 = *(a1 + 2);
        v314 = *(a1 + 6);
        *(a1 + 5) = 0;
        *(a1 + 6) = 0;
        *(a1 + 4) = 0;
        v316 = *(a1 + 9);
        v315 = *(a1 + 56);
        v277 = *(a1 + 11);
        v278 = *(a1 + 10);
        *&v317 = v278;
        *(&v317 + 1) = v277;
        v276 = *(a1 + 12);
        *(a1 + 10) = 0;
        *(a1 + 11) = 0;
        v308 = (v123 - 2) >> 1;
        v127 = a1;
        *(a1 + 12) = 0;
        v291 = v123;
        while (2)
        {
          v131 = &v127[104 * v126];
          v129 = (v131 + 13);
          if (2 * v126 + 2 >= v123)
          {
            v126 = (2 * v126) | 1;
          }

          else if (sub_9D18A8(v124, v131[14], v131[15], v131[27], v131[28]))
          {
            v129 = (v131 + 26);
            v126 = 2 * v126 + 2;
          }

          else
          {
            v126 = (2 * v126) | 1;
          }

          *v127 = *v129;
          v132 = (v127 + 8);
          v133 = *(v127 + 1);
          if (v133)
          {
            v134 = *(v127 + 2);
            v135 = *(v127 + 1);
            if (v134 != v133)
            {
              do
              {
                v134 = sub_9750F8(v134 - 5704);
              }

              while (v134 != v133);
              v135 = *v132;
            }

            *(v127 + 2) = v133;
            operator delete(v135);
            *v132 = 0;
            *(v127 + 2) = 0;
            *(v127 + 3) = 0;
          }

          *(v127 + 8) = *(v129 + 8);
          *(v127 + 3) = *(v129 + 24);
          *(v129 + 8) = 0;
          *(v129 + 16) = 0;
          v302 = (v129 + 8);
          *(v129 + 24) = 0;
          if (v127[55] < 0)
          {
            operator delete(*(v127 + 4));
          }

          v136 = *(v129 + 32);
          *(v127 + 6) = *(v129 + 48);
          *(v127 + 2) = v136;
          *(v129 + 55) = 0;
          *(v129 + 32) = 0;
          v137 = *(v129 + 72);
          v139 = (v127 + 80);
          v138 = *(v127 + 10);
          *(v127 + 56) = *(v129 + 56);
          *(v127 + 9) = v137;
          if (v138)
          {
            v140 = *(v127 + 11);
            v128 = v138;
            if (v140 != v138)
            {
              v296 = v129;
              while (1)
              {
                v141 = *(v140 - 3);
                if (v141)
                {
                  v142 = *(v140 - 2);
                  v143 = *(v140 - 3);
                  if (v142 != v141)
                  {
                    v144 = *(v140 - 2);
                    do
                    {
                      v147 = *(v144 - 3);
                      v144 -= 3;
                      v146 = v147;
                      if (v147)
                      {
                        v148 = *(v142 - 2);
                        v145 = v146;
                        if (v148 != v146)
                        {
                          do
                          {
                            v149 = *(v148 - 3);
                            if (v149)
                            {
                              *(v148 - 2) = v149;
                              operator delete(v149);
                            }

                            v148 -= 32;
                          }

                          while (v148 != v146);
                          v145 = *v144;
                        }

                        *(v142 - 2) = v146;
                        operator delete(v145);
                      }

                      v142 = v144;
                    }

                    while (v144 != v141);
                    v143 = *(v140 - 3);
                  }

                  *(v140 - 2) = v141;
                  operator delete(v143);
                }

                if (*(v140 - 25) < 0)
                {
                  operator delete(*(v140 - 6));
                  v150 = v140 - 9;
                  if (*(v140 - 49) < 0)
                  {
LABEL_250:
                    operator delete(*v150);
                  }
                }

                else
                {
                  v150 = v140 - 9;
                  if (*(v140 - 49) < 0)
                  {
                    goto LABEL_250;
                  }
                }

                v140 = v150;
                if (v150 == v138)
                {
                  v128 = *v139;
                  v129 = v296;
                  break;
                }
              }
            }

            *(v127 + 11) = v138;
            operator delete(v128);
            *v139 = 0;
            *(v127 + 11) = 0;
            *(v127 + 12) = 0;
            v123 = v291;
          }

          v130 = (v129 + 80);
          *(v127 + 5) = *(v129 + 80);
          *(v127 + 12) = *(v129 + 96);
          *(v129 + 80) = 0;
          *(v129 + 88) = 0;
          *(v129 + 96) = 0;
          v127 = v129;
          v124 = a3;
          if (v126 <= v308)
          {
            continue;
          }

          break;
        }

        v151 = a2 - 104;
        a2 -= 104;
        if (v129 != v287 - 104)
        {
          sub_9D2240(v129, v151);
          v152 = (v287 - 96);
          v153 = *(v287 - 12);
          *(v287 - 26) = v280;
          v154 = a1;
          if (v153)
          {
            v155 = *(v287 - 11);
            v156 = v153;
            if (v155 != v153)
            {
              do
              {
                v155 = sub_9750F8(v155 - 5704);
              }

              while (v155 != v153);
              v156 = *v152;
            }

            *(v287 - 11) = v153;
            operator delete(v156);
            *v152 = 0;
            *(v287 - 11) = 0;
            *(v287 - 10) = 0;
          }

          *(v287 - 12) = v285;
          *(v287 - 11) = v312;
          *(v287 - 10) = v283;
          v157 = (v287 - 72);
          if (*(v287 - 49) < 0)
          {
            operator delete(*v157);
          }

          *(v287 - 7) = v314;
          *v157 = v313;
          v158 = v287;
          v160 = (v287 - 24);
          v159 = *(v287 - 3);
          *(v287 - 3) = v315;
          *(v287 - 4) = v316;
          if (v159)
          {
            v161 = *(v287 - 2);
            v162 = v159;
            if (v161 == v159)
            {
LABEL_313:
              v158 = v287;
              *(v287 - 2) = v159;
              operator delete(v162);
              *v160 = 0;
              *(v287 - 2) = 0;
              *(v287 - 1) = 0;
              goto LABEL_314;
            }

            while (2)
            {
              v163 = *(v161 - 3);
              if (v163)
              {
                v164 = *(v161 - 2);
                v165 = *(v161 - 3);
                if (v164 != v163)
                {
                  v166 = v129;
                  v167 = *(v161 - 2);
                  do
                  {
                    v170 = *(v167 - 3);
                    v167 -= 3;
                    v169 = v170;
                    if (v170)
                    {
                      v171 = *(v164 - 2);
                      v168 = v169;
                      if (v171 != v169)
                      {
                        do
                        {
                          v172 = *(v171 - 3);
                          if (v172)
                          {
                            *(v171 - 2) = v172;
                            operator delete(v172);
                          }

                          v171 -= 32;
                        }

                        while (v171 != v169);
                        v168 = *v167;
                      }

                      *(v164 - 2) = v169;
                      operator delete(v168);
                    }

                    v164 = v167;
                  }

                  while (v167 != v163);
                  v165 = *(v161 - 3);
                  v129 = v166;
                }

                *(v161 - 2) = v163;
                operator delete(v165);
              }

              if (*(v161 - 25) < 0)
              {
                operator delete(*(v161 - 6));
                v173 = v161 - 9;
                if (*(v161 - 49) < 0)
                {
                  goto LABEL_281;
                }
              }

              else
              {
                v173 = v161 - 9;
                if (*(v161 - 49) < 0)
                {
LABEL_281:
                  operator delete(*v173);
                }
              }

              v161 = v173;
              if (v173 == v159)
              {
                v162 = *v160;
                v154 = a1;
                goto LABEL_313;
              }

              continue;
            }
          }

LABEL_314:
          *(v158 - 3) = v278;
          *(v158 - 2) = v277;
          *(v158 - 1) = v276;
          v190 = v129 + 104 - v154;
          if (v190 < 105 || (v191 = (0x4EC4EC4EC4EC4EC5 * (v190 >> 3) - 2) >> 1, v192 = &v154[104 * v191], !sub_9D18A8(a3, *(v192 + 1), *(v192 + 2), *(v129 + 8), *(v129 + 16))))
          {
LABEL_211:
            v123 = v291 - 1;
            v124 = a3;
            if (v291 <= 2)
            {
              return;
            }

            continue;
          }

          v279 = *v129;
          v286 = *(v129 + 16);
          v288 = *(v129 + 8);
          v281 = *(v129 + 24);
          *v302 = 0;
          v302[1] = 0;
          v302[2] = 0;
          v334 = *(v129 + 48);
          v328 = *(v129 + 32);
          *(v129 + 40) = 0;
          *(v129 + 48) = 0;
          *(v129 + 32) = 0;
          v346 = *(v129 + 72);
          v340 = *(v129 + 56);
          v303 = *(v129 + 80);
          v282 = *(v129 + 96);
          v284 = *(v129 + 88);
          *v130 = 0;
          v130[1] = 0;
          v130[2] = 0;
          while (2)
          {
            v193 = v192;
            v194 = (v192 + 8);
            *v129 = *v192;
            v195 = (v129 + 8);
            v196 = *(v129 + 8);
            if (v196)
            {
              v197 = *(v129 + 16);
              v198 = *(v129 + 8);
              if (v197 != v196)
              {
                do
                {
                  v197 = sub_9750F8(v197 - 5704);
                }

                while (v197 != v196);
                v198 = *v195;
              }

              *(v129 + 16) = v196;
              operator delete(v198);
              *v195 = 0;
              *(v129 + 16) = 0;
              *(v129 + 24) = 0;
            }

            v309 = v191;
            *(v129 + 8) = *(v193 + 8);
            *(v129 + 24) = *(v193 + 3);
            *v194 = 0;
            v194[1] = 0;
            v194[2] = 0;
            if (*(v129 + 55) < 0)
            {
              operator delete(*(v129 + 32));
            }

            v199 = *(v193 + 2);
            *(v129 + 48) = *(v193 + 6);
            *(v129 + 32) = v199;
            v193[55] = 0;
            v193[32] = 0;
            v200 = *(v193 + 9);
            v201 = v129;
            v202 = (v129 + 80);
            v203 = *(v129 + 80);
            *(v202 - 3) = *(v193 + 56);
            *(v202 - 1) = v200;
            if (v203)
            {
              v297 = v201;
              v204 = *(v201 + 88);
              v205 = v203;
              if (v204 == v203)
              {
LABEL_348:
                v201 = v297;
                *(v297 + 88) = v203;
                operator delete(v205);
                *v202 = 0;
                v202[1] = 0;
                v202[2] = 0;
                goto LABEL_349;
              }

              while (2)
              {
                v206 = *(v204 - 3);
                if (v206)
                {
                  v207 = *(v204 - 2);
                  v208 = *(v204 - 3);
                  if (v207 != v206)
                  {
                    v209 = *(v204 - 2);
                    do
                    {
                      v212 = *(v209 - 3);
                      v209 -= 3;
                      v211 = v212;
                      if (v212)
                      {
                        v213 = *(v207 - 2);
                        v210 = v211;
                        if (v213 != v211)
                        {
                          do
                          {
                            v214 = *(v213 - 3);
                            if (v214)
                            {
                              *(v213 - 2) = v214;
                              operator delete(v214);
                            }

                            v213 -= 32;
                          }

                          while (v213 != v211);
                          v210 = *v209;
                        }

                        *(v207 - 2) = v211;
                        operator delete(v210);
                      }

                      v207 = v209;
                    }

                    while (v209 != v206);
                    v208 = *(v204 - 3);
                  }

                  *(v204 - 2) = v206;
                  operator delete(v208);
                }

                if (*(v204 - 25) < 0)
                {
                  operator delete(*(v204 - 6));
                  v215 = v204 - 9;
                  if (*(v204 - 49) < 0)
                  {
                    goto LABEL_346;
                  }
                }

                else
                {
                  v215 = v204 - 9;
                  if (*(v204 - 49) < 0)
                  {
LABEL_346:
                    operator delete(*v215);
                  }
                }

                v204 = v215;
                if (v215 == v203)
                {
                  v205 = *v202;
                  goto LABEL_348;
                }

                continue;
              }
            }

LABEL_349:
            v216 = (v193 + 80);
            *(v201 + 80) = *(v193 + 5);
            *(v201 + 96) = *(v193 + 12);
            *(v193 + 10) = 0;
            *(v193 + 11) = 0;
            *(v193 + 12) = 0;
            if (v309)
            {
              v191 = (v309 - 1) >> 1;
              v192 = &a1[104 * v191];
              v129 = v193;
              if (sub_9D18A8(a3, *(v192 + 1), *(v192 + 2), v288, v286))
              {
                continue;
              }
            }

            break;
          }

          *v193 = v279;
          v217 = *(v193 + 1);
          if (v217)
          {
            v218 = *(v193 + 2);
            v219 = *(v193 + 1);
            if (v218 != v217)
            {
              do
              {
                v218 = sub_9750F8(v218 - 5704);
              }

              while (v218 != v217);
              v219 = *v194;
            }

            *(v193 + 2) = v217;
            operator delete(v219);
            *v194 = 0;
            v194[1] = 0;
            v194[2] = 0;
          }

          *(v193 + 1) = v288;
          *(v193 + 2) = v286;
          *(v193 + 3) = v281;
          if (v193[55] < 0)
          {
            operator delete(*(v193 + 4));
          }

          *(v193 + 6) = v334;
          *(v193 + 2) = v328;
          *(v193 + 9) = v346;
          *(v193 + 56) = v340;
          v220 = *v216;
          if (!*v216)
          {
LABEL_383:
            *(v193 + 10) = v303;
            *(v193 + 11) = v284;
            *(v193 + 12) = v282;
            goto LABEL_211;
          }

          v221 = *(v193 + 11);
          v222 = *v216;
          if (v221 == v220)
          {
LABEL_382:
            *(v193 + 11) = v220;
            operator delete(v222);
            *v216 = 0;
            *(v193 + 11) = 0;
            *(v193 + 12) = 0;
            goto LABEL_383;
          }

          while (2)
          {
            v223 = *(v221 - 3);
            if (v223)
            {
              v224 = *(v221 - 2);
              v225 = *(v221 - 3);
              if (v224 != v223)
              {
                v226 = *(v221 - 2);
                do
                {
                  v229 = *(v226 - 3);
                  v226 -= 3;
                  v228 = v229;
                  if (v229)
                  {
                    v230 = *(v224 - 2);
                    v227 = v228;
                    if (v230 != v228)
                    {
                      do
                      {
                        v231 = *(v230 - 3);
                        if (v231)
                        {
                          *(v230 - 2) = v231;
                          operator delete(v231);
                        }

                        v230 -= 32;
                      }

                      while (v230 != v228);
                      v227 = *v226;
                    }

                    *(v224 - 2) = v228;
                    operator delete(v227);
                  }

                  v224 = v226;
                }

                while (v226 != v223);
                v225 = *(v221 - 3);
              }

              *(v221 - 2) = v223;
              operator delete(v225);
            }

            if (*(v221 - 25) < 0)
            {
              operator delete(*(v221 - 6));
              v232 = v221 - 9;
              if (*(v221 - 49) < 0)
              {
                goto LABEL_380;
              }
            }

            else
            {
              v232 = v221 - 9;
              if (*(v221 - 49) < 0)
              {
LABEL_380:
                operator delete(*v232);
              }
            }

            v221 = v232;
            if (v232 == v220)
            {
              v222 = *v216;
              goto LABEL_382;
            }

            continue;
          }
        }

        break;
      }

      *v129 = v280;
      v174 = *(v129 + 8);
      v175 = v312;
      if (v174)
      {
        v176 = *(v129 + 16);
        v177 = *(v129 + 8);
        if (v176 != v174)
        {
          do
          {
            v176 = sub_9750F8(v176 - 5704);
          }

          while (v176 != v174);
          v177 = *v302;
        }

        *(v129 + 16) = v174;
        operator delete(v177);
        *v302 = 0;
        v302[1] = 0;
        v302[2] = 0;
        v175 = v312;
      }

      *(v129 + 8) = v285;
      *(v129 + 16) = v175;
      *(v129 + 24) = v283;
      if (*(v129 + 55) < 0)
      {
        operator delete(*(v129 + 32));
      }

      *(v129 + 48) = v314;
      *(v129 + 32) = v313;
      *(v129 + 72) = v316;
      *(v129 + 56) = v315;
      v178 = *v130;
      if (!*v130)
      {
LABEL_210:
        *(v129 + 80) = v317;
        *(v129 + 96) = v276;
        goto LABEL_211;
      }

      v179 = *(v129 + 88);
      v125 = *v130;
      if (v179 == v178)
      {
LABEL_209:
        *(v129 + 88) = v178;
        operator delete(v125);
        *v130 = 0;
        *(v129 + 88) = 0;
        *(v129 + 96) = 0;
        goto LABEL_210;
      }

      while (2)
      {
        v180 = *(v179 - 3);
        if (v180)
        {
          v181 = *(v179 - 2);
          v182 = *(v179 - 3);
          if (v181 != v180)
          {
            v183 = *(v179 - 2);
            do
            {
              v186 = *(v183 - 3);
              v183 -= 3;
              v185 = v186;
              if (v186)
              {
                v187 = *(v181 - 2);
                v184 = v185;
                if (v187 != v185)
                {
                  do
                  {
                    v188 = *(v187 - 3);
                    if (v188)
                    {
                      *(v187 - 2) = v188;
                      operator delete(v188);
                    }

                    v187 -= 32;
                  }

                  while (v187 != v185);
                  v184 = *v183;
                }

                *(v181 - 2) = v185;
                operator delete(v184);
              }

              v181 = v183;
            }

            while (v183 != v180);
            v182 = *(v179 - 3);
          }

          *(v179 - 2) = v180;
          operator delete(v182);
        }

        if (*(v179 - 25) < 0)
        {
          operator delete(*(v179 - 6));
          v189 = v179 - 9;
          if (*(v179 - 49) < 0)
          {
            goto LABEL_311;
          }
        }

        else
        {
          v189 = v179 - 9;
          if (*(v179 - 49) < 0)
          {
LABEL_311:
            operator delete(*v189);
          }
        }

        v179 = v189;
        if (v189 == v178)
        {
          v125 = *v130;
          goto LABEL_209;
        }

        continue;
      }
    }

    v10 = a1;
    v11 = &a1[104 * (v9 >> 1)];
    if (v8 < 0x3401)
    {
      sub_9D1AF0(&a1[104 * (v9 >> 1)], a1, v293, v6);
      v305 = a4 - 1;
      if ((a5 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_17:
      v13 = 0;
      v14 = *v10;
      v16 = *(v10 + 1);
      v15 = *(v10 + 2);
      v17 = *(v10 + 3);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      v324 = *(v10 + 2);
      v330 = *(v10 + 6);
      *(v10 + 5) = 0;
      *(v10 + 6) = 0;
      *(v10 + 4) = 0;
      v342 = *(v10 + 9);
      v336 = *(v10 + 56);
      v353 = *(v10 + 12);
      v348 = *(v10 + 5);
      *(v10 + 10) = 0;
      *(v10 + 11) = 0;
      *(v10 + 12) = 0;
      do
      {
        v18 = sub_9D18A8(v6, *&v10[v13 + 112], *&v10[v13 + 120], v16, v15);
        v13 += 104;
      }

      while (v18);
      v19 = &v10[v13];
      v20 = a2;
      if (v13 == 104)
      {
        v20 = a2;
        do
        {
          if (v19 >= v20)
          {
            break;
          }

          v22 = sub_9D18A8(v6, *(v20 - 12), *(v20 - 11), v16, v15);
          v20 -= 104;
        }

        while (!v22);
      }

      else
      {
        do
        {
          v21 = sub_9D18A8(v6, *(v20 - 12), *(v20 - 11), v16, v15);
          v20 -= 104;
        }

        while (!v21);
      }

      v23 = v14;
      v7 = v19;
      if (v19 < v20)
      {
        v24 = v20;
        do
        {
          sub_9D2128(v7, v24);
          do
          {
            v25 = sub_9D18A8(v6, *(v7 + 112), *(v7 + 120), v16, v15);
            v7 += 104;
          }

          while (v25);
          do
          {
            v26 = sub_9D18A8(v6, *(v24 - 96), *(v24 - 88), v16, v15);
            v24 -= 104;
          }

          while (!v26);
        }

        while (v7 < v24);
      }

      if ((v7 - 104) != a1)
      {
        sub_9D2240(a1, v7 - 104);
      }

      v28 = (v7 - 96);
      v27 = *(v7 - 96);
      *(v7 - 104) = v23;
      if (v27)
      {
        v29 = *(v7 - 88);
        v30 = v27;
        if (v29 != v27)
        {
          do
          {
            v29 = sub_9750F8(v29 - 5704);
          }

          while (v29 != v27);
          v30 = *v28;
        }

        *(v7 - 88) = v27;
        operator delete(v30);
        *v28 = 0;
        *(v7 - 88) = 0;
        *(v7 - 80) = 0;
      }

      *(v7 - 96) = v16;
      *(v7 - 88) = v15;
      *(v7 - 80) = v17;
      v31 = (v7 - 72);
      if (*(v7 - 49) < 0)
      {
        operator delete(*v31);
      }

      *(v7 - 56) = v330;
      *v31 = v324;
      v32 = (v7 - 24);
      v33 = *(v7 - 24);
      *(v7 - 48) = v336;
      *(v7 - 32) = v342;
      if (v33)
      {
        v34 = *(v7 - 16);
        v35 = v33;
        if (v34 != v33)
        {
          do
          {
            v34 -= 72;
            sub_9D2428(v34);
          }

          while (v34 != v33);
          v35 = *v32;
        }

        *(v7 - 16) = v33;
        operator delete(v35);
        *v32 = 0;
        *(v7 - 16) = 0;
        *(v7 - 8) = 0;
      }

      *(v7 - 24) = v348;
      *(v7 - 8) = v353;
      a4 = v305;
      v6 = a3;
      if (v19 < v20)
      {
LABEL_48:
        sub_9CF7F4(a1, (v7 - 104), a3, v305, a5 & 1);
        a5 = 0;
      }

      else
      {
        v36 = sub_9D1DB4(a1, v7 - 104, a3);
        if (sub_9D1DB4(v7, a2, a3))
        {
          a2 = (v7 - 104);
          if (v36)
          {
            return;
          }

          goto LABEL_2;
        }

        if (!v36)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      sub_9D1AF0(a1, &a1[104 * (v9 >> 1)], v293, v6);
      v12 = 104 * (v9 >> 1);
      sub_9D1AF0((a1 + 104), &a1[v12 - 104], (a2 - 208), v6);
      sub_9D1AF0((a1 + 208), &a1[v12 + 104], (a2 - 312), v6);
      v10 = a1;
      sub_9D1AF0(&a1[v12 - 104], v11, &a1[v12 + 104], v6);
      sub_9D2128(a1, v11);
      v305 = a4 - 1;
      if (a5)
      {
        goto LABEL_17;
      }

LABEL_16:
      if (sub_9D18A8(v6, *(v10 - 12), *(v10 - 11), *(v10 + 1), *(v10 + 2)))
      {
        goto LABEL_17;
      }

      v37 = *v10;
      v38 = *(v10 + 1);
      v39 = *(v10 + 3);
      v322 = *(v10 + 2);
      v40 = v322;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      v331 = *(v10 + 6);
      v325 = *(v10 + 2);
      *(v10 + 5) = 0;
      *(v10 + 6) = 0;
      *(v10 + 4) = 0;
      v343 = *(v10 + 9);
      v337 = *(v10 + 56);
      v349 = *(v10 + 5);
      v354 = *(v10 + 12);
      *(v10 + 10) = 0;
      *(v10 + 11) = 0;
      *(v10 + 12) = 0;
      if (sub_9D18A8(v6, v38, v322, *(a2 - 12), *(a2 - 11)))
      {
        v7 = v10;
        do
        {
          v41 = sub_9D18A8(v6, v38, v322, *(v7 + 112), *(v7 + 120));
          v7 += 104;
        }

        while (!v41);
      }

      else
      {
        v42 = (v10 + 104);
        do
        {
          v7 = v42;
          if (v42 >= a2)
          {
            break;
          }

          v43 = sub_9D18A8(v6, v38, v322, *(v42 + 8), *(v42 + 16));
          v42 = v7 + 104;
        }

        while (!v43);
      }

      v44 = a2;
      if (v7 < a2)
      {
        v44 = a2;
        do
        {
          v45 = sub_9D18A8(v6, v38, v322, *(v44 - 12), *(v44 - 11));
          v44 -= 104;
        }

        while (v45);
      }

      while (v7 < v44)
      {
        sub_9D2128(v7, v44);
        do
        {
          v46 = sub_9D18A8(v6, v38, v322, *(v7 + 112), *(v7 + 120));
          v7 += 104;
        }

        while (!v46);
        do
        {
          v47 = sub_9D18A8(v6, v38, v322, *(v44 - 12), *(v44 - 11));
          v44 -= 104;
        }

        while (v47);
      }

      if ((v7 - 104) != a1)
      {
        sub_9D2240(a1, v7 - 104);
      }

      v48 = (v7 - 96);
      v49 = *(v7 - 96);
      *(v7 - 104) = v37;
      if (v49)
      {
        v50 = *(v7 - 88);
        v51 = v49;
        if (v50 != v49)
        {
          do
          {
            v50 = sub_9750F8(v50 - 5704);
          }

          while (v50 != v49);
          v51 = *v48;
        }

        *(v7 - 88) = v49;
        operator delete(v51);
        *v48 = 0;
        *(v7 - 88) = 0;
        *(v7 - 80) = 0;
        v40 = v322;
      }

      *(v7 - 96) = v38;
      *(v7 - 88) = v40;
      *(v7 - 80) = v39;
      v52 = (v7 - 72);
      if (*(v7 - 49) < 0)
      {
        operator delete(*v52);
      }

      *(v7 - 56) = v331;
      *v52 = v325;
      v53 = (v7 - 24);
      v54 = *(v7 - 24);
      *(v7 - 48) = v337;
      *(v7 - 32) = v343;
      if (v54)
      {
        v55 = *(v7 - 16);
        v56 = v54;
        if (v55 != v54)
        {
          do
          {
            v55 -= 72;
            sub_9D2428(v55);
          }

          while (v55 != v54);
          v56 = *v53;
        }

        *(v7 - 16) = v54;
        operator delete(v56);
        *v53 = 0;
        *(v7 - 16) = 0;
        *(v7 - 8) = 0;
      }

      *(v7 - 24) = v349;
      *(v7 - 8) = v354;
      a4 = v305;
      v6 = a3;
      a5 = 0;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {

      sub_9D1C00(a1, (a1 + 104), (a1 + 208), v293, v6);
      return;
    }

    if (v9 == 5)
    {

      sub_9D1CC8(a1, (a1 + 104), (a1 + 208), (a1 + 312), v293, v6);
      return;
    }

    goto LABEL_10;
  }

  sub_9D1AF0(a1, (a1 + 104), v293, v6);
}

void sub_9D1784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_9D2378(va);
  _Unwind_Resume(a1);
}

BOOL sub_9D18A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a3)
  {
    while (*a2 != 2)
    {
      a2 += 5704;
      if (a2 == a3)
      {
        a2 = a3;
        break;
      }
    }
  }

  v5 = *(a2 + 752);
  if (a4 != a5)
  {
    while (*a4 != 2)
    {
      a4 += 5704;
      if (a4 == a5)
      {
        a4 = a5;
        break;
      }
    }
  }

  v6 = *(*(a1 + 8) + 72);
  v7 = 0x66FD0EB66FD0EB67 * ((*(*(a1 + 8) + 80) - v6) >> 3);
  if (v7 <= v5 || (v8 = *(a4 + 752), v7 <= v8))
  {
    sub_6FAB4();
  }

  v9 = (v6 + 696 * v5);
  v10 = (v6 + 696 * v8);
  if (**(a1 + 16) == -1)
  {
    v18 = v9[1];
    if (*v9 == v18)
    {
      return v9[6] < v10[6];
    }

    v19 = v10[1];
    if (*v10 == v19)
    {
      return v9[6] < v10[6];
    }

    else
    {
      v22 = *(v18 - 56);
      v20 = v18 - 56;
      v21 = v22;
      v23 = *(v20 + 23);
      if (v23 >= 0)
      {
        v24 = v20;
      }

      else
      {
        v24 = v21;
      }

      if (v23 >= 0)
      {
        v25 = *(v20 + 23);
      }

      else
      {
        v25 = *(v20 + 8);
      }

      v26 = CFStringCreateWithBytesNoCopy(kCFAllocatorDefault, v24, v25, 0x8000100u, 0, kCFAllocatorNull);
      v29 = *(v19 - 56);
      v28 = v19 - 56;
      v27 = v29;
      v30 = *(v28 + 23);
      if (v30 >= 0)
      {
        v31 = v28;
      }

      else
      {
        v31 = v27;
      }

      if (v30 >= 0)
      {
        v32 = *(v28 + 23);
      }

      else
      {
        v32 = *(v28 + 8);
      }

      v33 = CFStringCreateWithBytesNoCopy(kCFAllocatorDefault, v31, v32, 0x8000100u, 0, kCFAllocatorNull);
      v34 = CFStringCompare(v26, v33, 0x40uLL);
      CFRelease(v26);
      CFRelease(v33);
      return v34 == kCFCompareLessThan;
    }
  }

  else
  {
    v11 = v9[84];
    v12 = v9[85];
    v13 = **(a1 + 24);
    if (v11 != v12)
    {
      while (*v11 != *v13)
      {
        v11 += 2;
        if (v11 == v12)
        {
          v11 = v12;
          break;
        }
      }
    }

    v14 = v10[84];
    v15 = v10[85];
    if (v14 != v15)
    {
      v16 = *v13;
      while (*v14 != v16)
      {
        v14 += 2;
        if (v14 == v15)
        {
          v14 = v15;
          return v11[1] < v14[1];
        }
      }
    }

    return v11[1] < v14[1];
  }
}

void sub_9D1AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_9D18A8(a4, *(a2 + 8), *(a2 + 16), *(a1 + 8), *(a1 + 16));
  v9 = sub_9D18A8(a4, *(a3 + 8), *(a3 + 16), *(a2 + 8), *(a2 + 16));
  if (v8)
  {
    if (v9)
    {
      v10 = a1;
      goto LABEL_11;
    }

    sub_9D2128(a1, a2);
    if (sub_9D18A8(a4, *(a3 + 8), *(a3 + 16), *(a2 + 8), *(a2 + 16)))
    {
      v10 = a2;
LABEL_11:
      v11 = a3;

LABEL_8:
      sub_9D2128(v10, v11);
    }
  }

  else if (v9)
  {
    sub_9D2128(a2, a3);
    if (sub_9D18A8(a4, *(a2 + 8), *(a2 + 16), *(a1 + 8), *(a1 + 16)))
    {
      v10 = a1;
      v11 = a2;

      goto LABEL_8;
    }
  }
}

void sub_9D1C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_9D1AF0(a1, a2, a3, a5);
  if (sub_9D18A8(a5, *(a4 + 8), *(a4 + 16), *(a3 + 8), *(a3 + 16)))
  {
    sub_9D2128(a3, a4);
    if (sub_9D18A8(a5, *(a3 + 8), *(a3 + 16), *(a2 + 8), *(a2 + 16)))
    {
      sub_9D2128(a2, a3);
      if (sub_9D18A8(a5, *(a2 + 8), *(a2 + 16), *(a1 + 8), *(a1 + 16)))
      {

        sub_9D2128(a1, a2);
      }
    }
  }
}

void sub_9D1CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_9D1C00(a1, a2, a3, a4, a6);
  if (sub_9D18A8(a6, *(a5 + 8), *(a5 + 16), *(a4 + 8), *(a4 + 16)))
  {
    sub_9D2128(a4, a5);
    if (sub_9D18A8(a6, *(a4 + 8), *(a4 + 16), *(a3 + 8), *(a3 + 16)))
    {
      sub_9D2128(a3, a4);
      if (sub_9D18A8(a6, *(a3 + 8), *(a3 + 16), *(a2 + 8), *(a2 + 16)))
      {
        sub_9D2128(a2, a3);
        if (sub_9D18A8(a6, *(a2 + 8), *(a2 + 16), *(a1 + 8), *(a1 + 16)))
        {

          sub_9D2128(a1, a2);
        }
      }
    }
  }
}

BOOL sub_9D1DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_9D1AF0(a1, a1 + 104, a2 - 104, a3);
        return 1;
      case 4:
        sub_9D1C00(a1, a1 + 104, a1 + 208, a2 - 104, a3);
        return 1;
      case 5:
        sub_9D1CC8(a1, a1 + 104, a1 + 208, a1 + 312, a2 - 104, a3);
        return 1;
    }

    goto LABEL_12;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
LABEL_12:
    v8 = (a1 + 208);
    sub_9D1AF0(a1, a1 + 104, a1 + 208, a3);
    v9 = (a1 + 312);
    if (a1 + 312 == v4)
    {
      return 1;
    }

    v10 = 0;
    v11 = 0;
    v26 = v4;
    while (1)
    {
      if (sub_9D18A8(a3, *(v9 + 1), *(v9 + 2), *(v8 + 1), *(v8 + 2)))
      {
        v12 = *v9;
        v13 = *(v9 + 1);
        v14 = *(v9 + 2);
        v27 = *(v9 + 3);
        *(v9 + 2) = 0;
        *(v9 + 3) = 0;
        *(v9 + 1) = 0;
        v28 = *(v9 + 2);
        v29 = *(v9 + 6);
        *(v9 + 4) = 0;
        *(v9 + 5) = 0;
        *(v9 + 6) = 0;
        v31 = *(v9 + 9);
        v30 = *(v9 + 14);
        v32 = *(v9 + 5);
        v33 = *(v9 + 12);
        *(v9 + 10) = 0;
        *(v9 + 11) = 0;
        v15 = v10;
        *(v9 + 12) = 0;
        while (1)
        {
          v16 = a1 + v15;
          sub_9D2240(a1 + v15 + 312, a1 + v15 + 208);
          if (v15 == -208)
          {
            break;
          }

          v15 -= 104;
          if (!sub_9D18A8(a3, v13, v14, *(v16 + 112), *(v16 + 120)))
          {
            v17 = a1 + v15 + 312;
            *v17 = v12;
            v18 = v17 + 8;
            v19 = *(v17 + 8);
            if (!v19)
            {
              goto LABEL_28;
            }

            goto LABEL_24;
          }
        }

        v17 = a1;
        *a1 = v12;
        v18 = a1 + 8;
        v19 = *(a1 + 8);
        if (!v19)
        {
          goto LABEL_28;
        }

LABEL_24:
        v20 = *(v17 + 16);
        v21 = v19;
        if (v20 != v19)
        {
          do
          {
            v20 = sub_9750F8(v20 - 5704);
          }

          while (v20 != v19);
          v21 = *v18;
        }

        *(v17 + 16) = v19;
        operator delete(v21);
        *v18 = 0;
        *(v18 + 8) = 0;
        *(v18 + 16) = 0;
LABEL_28:
        *(v17 + 8) = v13;
        *(v17 + 16) = v14;
        *(v17 + 24) = v27;
        if (*(v17 + 55) < 0)
        {
          operator delete(*(v17 + 32));
        }

        *(v17 + 32) = v28;
        *(v17 + 48) = v29;
        v22 = (v17 + 80);
        v23 = *(v17 + 80);
        *(v17 + 56) = v30;
        *(v17 + 72) = v31;
        if (v23)
        {
          v24 = *(v17 + 88);
          v25 = v23;
          if (v24 != v23)
          {
            do
            {
              v24 -= 72;
              sub_9D2428(v24);
            }

            while (v24 != v23);
            v25 = *v22;
          }

          *(v17 + 88) = v23;
          operator delete(v25);
          *v22 = 0;
          *(v17 + 88) = 0;
          *(v17 + 96) = 0;
        }

        *(v17 + 80) = v32;
        *(v17 + 96) = v33;
        ++v11;
        v4 = v26;
        if (v11 == 8)
        {
          return v9 + 26 == v26;
        }
      }

      v8 = v9;
      v10 += 104;
      v9 += 26;
      if (v9 == v4)
      {
        return 1;
      }
    }
  }

  if (!sub_9D18A8(a3, *(a2 - 96), *(a2 - 88), *(a1 + 8), *(a1 + 16)))
  {
    return 1;
  }

  sub_9D2128(a1, v4 - 104);
  return 1;
}

void sub_9D2114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_9D2378(va);
  _Unwind_Resume(a1);
}

void sub_9D2128(int *a1, uint64_t a2)
{
  v10 = *a1;
  *v11 = *(a1 + 2);
  v12 = *(a1 + 3);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v3 = *(a1 + 2);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *v13 = v3;
  v14 = *(a1 + 6);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  v15 = *(a1 + 14);
  v16 = *(a1 + 9);
  *__p = *(a1 + 5);
  v18 = *(a1 + 12);
  *(a1 + 10) = 0;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  sub_9D2240(a1, a2);
  sub_9D2240(a2, &v10);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v5 -= 72;
        sub_9D2428(v5);
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  v7 = v11[0];
  if (v11[0])
  {
    v8 = v11[1];
    v9 = v11[0];
    if (v11[1] != v11[0])
    {
      do
      {
        v8 = sub_9750F8(v8 - 5704);
      }

      while (v8 != v7);
      v9 = v11[0];
    }

    v11[1] = v7;
    operator delete(v9);
  }
}

uint64_t sub_9D2240(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  v5 = a1 + 8;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(a1 + 16);
    v8 = v6;
    if (v7 != v6)
    {
      do
      {
        v7 = sub_9750F8(v7 - 5704);
      }

      while (v7 != v6);
      v8 = *v5;
    }

    *(a1 + 16) = v6;
    operator delete(v8);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v9 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v9;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  v10 = *(a2 + 72);
  v11 = (a1 + 80);
  v12 = *(a1 + 80);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v10;
  if (v12)
  {
    v13 = *(a1 + 88);
    v14 = v12;
    if (v13 != v12)
    {
      do
      {
        v13 -= 72;
        sub_9D2428(v13);
      }

      while (v13 != v12);
      v14 = *v11;
    }

    *(a1 + 88) = v12;
    operator delete(v14);
    *v11 = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return a1;
}

uint64_t sub_9D2378(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 != v2)
    {
      do
      {
        v3 -= 72;
        sub_9D2428(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v2;
    operator delete(v4);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    if (v6 != v5)
    {
      do
      {
        v6 = sub_9750F8(v6 - 5704);
      }

      while (v6 != v5);
      v7 = *(a1 + 8);
    }

    *(a1 + 16) = v5;
    operator delete(v7);
  }

  return a1;
}

void sub_9D2428(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      v5 = *(a1 + 56);
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            do
            {
              v10 = *(v9 - 3);
              if (v10)
              {
                *(v9 - 2) = v10;
                operator delete(v10);
              }

              v9 -= 32;
            }

            while (v9 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return;
  }

  v11 = *a1;

  operator delete(v11);
}

void sub_9D2520(unint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 16;
  v136 = a2 - 48;
  v137 = a2 - 32;
  v10 = result;
  v140 = a2;
  while (1)
  {
    result = v10;
    v11 = &a2[-v10] >> 4;
    v12 = v11 - 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return;
    }

    if (v11 == 2)
    {
      v79 = *(a2 - 2);
      v78 = a2 - 16;
      if (!sub_9D347C(a3, v79, *result))
      {
        return;
      }

LABEL_111:
      v168 = *result;
      v85 = *v78;
      *(result + 8) = v78[8];
      *result = v85;
      goto LABEL_112;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v86 = (result + 16);
      v88 = result == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = result;
          do
          {
            v92 = v86;
            if (sub_9D347C(a3, *(v90 + 16), *v90))
            {
              v93 = *v92;
              v94 = *(v90 + 24);
              v95 = v89;
              do
              {
                v96 = result + v95;
                *(v96 + 16) = *(result + v95);
                *(v96 + 24) = *(result + v95 + 8);
                if (!v95)
                {
                  v91 = result;
                  goto LABEL_126;
                }

                v95 -= 16;
              }

              while (sub_9D347C(a3, v93, *(v96 - 16)));
              v91 = result + v95 + 16;
LABEL_126:
              *v91 = v93;
              *(v91 + 8) = v94;
            }

            v86 = v92 + 16;
            v89 += 16;
            v90 = v92;
          }

          while (v92 + 16 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v129 = v86;
          if (sub_9D347C(a3, *(result + 16), *result))
          {
            v130 = *v129;
            v131 = *(result + 24);
            v132 = v129;
            do
            {
              v133 = v132;
              v134 = *(v132 - 16);
              v132 -= 16;
              *v133 = v134;
              *(v133 + 8) = *(v133 - 8);
            }

            while (sub_9D347C(a3, v130, *(v133 - 32)));
            *v132 = v130;
            *(v132 + 8) = v131;
          }

          v86 = (v129 + 16);
          result = v129;
        }

        while ((v129 + 16) != a2);
      }

      return;
    }

    if (!a4)
    {
      if (result != a2)
      {
        v97 = v12 >> 1;
        v98 = v12 >> 1;
        do
        {
          v99 = v98;
          if (v97 >= v98)
          {
            v100 = (2 * v98) | 1;
            v101 = result + 16 * v100;
            if (2 * v98 + 2 < v11 && sub_9D347C(a3, *v101, *(v101 + 16)))
            {
              v101 += 16;
              v100 = 2 * v99 + 2;
            }

            v102 = result + 16 * v99;
            if (!sub_9D347C(a3, *v101, *v102))
            {
              v103 = *v102;
              v138 = *(v102 + 8);
              do
              {
                v104 = v102;
                v102 = v101;
                v105 = *v101;
                *(v104 + 8) = *(v101 + 8);
                *v104 = v105;
                if (v97 < v100)
                {
                  break;
                }

                v106 = (2 * v100) | 1;
                v101 = result + 16 * v106;
                v107 = 2 * v100 + 2;
                if (v107 < v11 && sub_9D347C(a3, *v101, *(v101 + 16)))
                {
                  v101 += 16;
                  v106 = v107;
                }

                v100 = v106;
              }

              while (!sub_9D347C(a3, *v101, v103));
              *v102 = v103;
              *(v102 + 8) = v138;
            }
          }

          v98 = v99 - 1;
        }

        while (v99);
        v108 = v140;
        do
        {
          v110 = 0;
          v169 = *result;
          v111 = result;
          do
          {
            v116 = v111 + 16 * v110;
            v114 = v116 + 16;
            v117 = (2 * v110) | 1;
            v118 = 2 * v110 + 2;
            if (v118 < v11)
            {
              v113 = *(v116 + 32);
              v112 = v116 + 32;
              if (sub_9D347C(a3, *(v112 - 16), v113))
              {
                v114 = v112;
                v110 = v118;
              }

              else
              {
                v110 = v117;
              }
            }

            else
            {
              v110 = (2 * v110) | 1;
            }

            v115 = *v114;
            *(v111 + 8) = *(v114 + 8);
            *v111 = v115;
            v111 = v114;
          }

          while (v110 <= ((v11 - 2) >> 1));
          v108 -= 16;
          if (v114 == v108)
          {
            *(v114 + 8) = BYTE8(v169);
            *v114 = v169;
          }

          else
          {
            v119 = *v108;
            *(v114 + 8) = v108[8];
            *v114 = v119;
            v108[8] = BYTE8(v169);
            *v108 = v169;
            v120 = (v114 - result + 16) >> 4;
            v109 = v120 < 2;
            v121 = v120 - 2;
            if (!v109)
            {
              v122 = v121 >> 1;
              v123 = result + 16 * (v121 >> 1);
              if (sub_9D347C(a3, *v123, *v114))
              {
                v124 = *v114;
                v125 = *(v114 + 8);
                do
                {
                  v126 = v114;
                  v114 = v123;
                  v127 = *v123;
                  *(v126 + 8) = *(v123 + 8);
                  *v126 = v127;
                  if (!v122)
                  {
                    break;
                  }

                  v122 = (v122 - 1) >> 1;
                  v123 = result + 16 * v122;
                }

                while (sub_9D347C(a3, *v123, v124));
                *v114 = v124;
                *(v114 + 8) = v125;
              }
            }
          }

          v109 = v11-- <= 2;
        }

        while (!v109);
      }

      return;
    }

    v13 = result + 16 * (v11 >> 1);
    if (v11 < 0x81)
    {
      v17 = sub_9D347C(a3, *result, *v13);
      v18 = sub_9D347C(a3, *v9, *result);
      if (v17)
      {
        if (v18)
        {
          v142 = *v13;
          v19 = *v9;
          *(v13 + 8) = v9[8];
          *v13 = v19;
          goto LABEL_36;
        }

        v151 = *v13;
        v34 = *result;
        *(v13 + 8) = *(result + 8);
        *v13 = v34;
        *(result + 8) = BYTE8(v151);
        *result = v151;
        if (sub_9D347C(a3, *v9, v151))
        {
          v142 = *result;
          v35 = *v9;
          *(result + 8) = v9[8];
          *result = v35;
LABEL_36:
          v9[8] = BYTE8(v142);
          *v9 = v142;
        }

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

      v145 = *result;
      v22 = *v9;
      *(result + 8) = v9[8];
      *result = v22;
      v9[8] = BYTE8(v145);
      *v9 = v145;
      if (!sub_9D347C(a3, *result, *v13))
      {
        goto LABEL_37;
      }

      v146 = *v13;
      v23 = *result;
      *(v13 + 8) = *(result + 8);
      *v13 = v23;
      *(result + 8) = BYTE8(v146);
      *result = v146;
      --a4;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (sub_9D347C(a3, *(result - 16), *result))
      {
        goto LABEL_62;
      }

      v65 = *result;
      v66 = *(result + 8);
      if (sub_9D347C(a3, *result, *v9))
      {
        v10 = result;
        a2 = v140;
        do
        {
          v67 = *(v10 + 16);
          v10 += 16;
        }

        while (!sub_9D347C(a3, v65, v67));
      }

      else
      {
        v68 = result + 16;
        a2 = v140;
        do
        {
          v10 = v68;
          if (v68 >= v140)
          {
            break;
          }

          v68 += 16;
        }

        while (!sub_9D347C(a3, v65, *v10));
      }

      v69 = a2;
      if (v10 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *(v69 - 2);
          v69 -= 16;
        }

        while (sub_9D347C(a3, v65, v70));
      }

      while (v10 < v69)
      {
        v163 = *v10;
        v71 = *v69;
        *(v10 + 8) = v69[8];
        *v10 = v71;
        v69[8] = BYTE8(v163);
        *v69 = v163;
        do
        {
          v72 = *(v10 + 16);
          v10 += 16;
        }

        while (!sub_9D347C(a3, v65, v72));
        do
        {
          v73 = *(v69 - 2);
          v69 -= 16;
        }

        while (sub_9D347C(a3, v65, v73));
      }

      if (v10 - 16 != result)
      {
        v74 = *(v10 - 16);
        *(result + 8) = *(v10 - 8);
        *result = v74;
      }

      a5 = 0;
      *(v10 - 16) = v65;
      *(v10 - 8) = v66;
    }

    else
    {
      v14 = sub_9D347C(a3, *v13, *result);
      v15 = sub_9D347C(a3, *v9, *v13);
      if (v14)
      {
        if (v15)
        {
          v141 = *result;
          v16 = *v9;
          *(result + 8) = v9[8];
          *result = v16;
        }

        else
        {
          v147 = *result;
          v24 = *v13;
          *(result + 8) = *(v13 + 8);
          *result = v24;
          *(v13 + 8) = BYTE8(v147);
          *v13 = v147;
          if (!sub_9D347C(a3, *v9, v147))
          {
            goto LABEL_28;
          }

          v141 = *v13;
          v25 = *v9;
          *(v13 + 8) = v9[8];
          *v13 = v25;
        }

        v9[8] = BYTE8(v141);
        *v9 = v141;
      }

      else if (v15)
      {
        v143 = *v13;
        v20 = *v9;
        *(v13 + 8) = v9[8];
        *v13 = v20;
        v9[8] = BYTE8(v143);
        *v9 = v143;
        if (sub_9D347C(a3, *v13, *result))
        {
          v144 = *result;
          v21 = *v13;
          *(result + 8) = *(v13 + 8);
          *result = v21;
          *(v13 + 8) = BYTE8(v144);
          *v13 = v144;
        }
      }

LABEL_28:
      v26 = (result + 16);
      v27 = (v13 - 16);
      v28 = sub_9D347C(a3, *(v13 - 16), *(result + 16));
      v29 = sub_9D347C(a3, *v137, *(v13 - 16));
      if (v28)
      {
        if (v29)
        {
          v148 = *v26;
          v30 = v137;
          v31 = *v137;
          *(result + 24) = v137[8];
          *v26 = v31;
        }

        else
        {
          v152 = *v26;
          v36 = *v27;
          *(result + 24) = *(v13 - 8);
          *v26 = v36;
          *(v13 - 8) = BYTE8(v152);
          *v27 = v152;
          if (!sub_9D347C(a3, *v137, *v27))
          {
            goto LABEL_42;
          }

          v148 = *v27;
          v30 = v137;
          v37 = *v137;
          *(v13 - 8) = v137[8];
          *v27 = v37;
        }

        v30[8] = BYTE8(v148);
        *v30 = v148;
      }

      else if (v29)
      {
        v149 = *v27;
        v32 = *v137;
        *(v13 - 8) = v137[8];
        *v27 = v32;
        v137[8] = BYTE8(v149);
        *v137 = v149;
        if (sub_9D347C(a3, *v27, *v26))
        {
          v150 = *v26;
          v33 = *v27;
          *(result + 24) = *(v13 - 8);
          *v26 = v33;
          *(v13 - 8) = BYTE8(v150);
          *v27 = v150;
        }
      }

LABEL_42:
      v38 = (result + 32);
      v39 = (v13 + 16);
      v40 = sub_9D347C(a3, *(v13 + 16), *(result + 32));
      v41 = sub_9D347C(a3, *v136, *(v13 + 16));
      if (v40)
      {
        if (v41)
        {
          v153 = *v38;
          v42 = v136;
          v43 = *v136;
          *(result + 40) = v136[8];
          *v38 = v43;
        }

        else
        {
          v156 = *v38;
          v46 = *v39;
          *(result + 40) = *(v13 + 24);
          *v38 = v46;
          *(v13 + 24) = BYTE8(v156);
          *v39 = v156;
          if (!sub_9D347C(a3, *v136, *v39))
          {
            goto LABEL_51;
          }

          v153 = *v39;
          v42 = v136;
          v47 = *v136;
          *(v13 + 24) = v136[8];
          *v39 = v47;
        }

        v42[8] = BYTE8(v153);
        *v42 = v153;
      }

      else if (v41)
      {
        v154 = *v39;
        v44 = *v136;
        *(v13 + 24) = v136[8];
        *v39 = v44;
        v136[8] = BYTE8(v154);
        *v136 = v154;
        if (sub_9D347C(a3, *v39, *v38))
        {
          v155 = *v38;
          v45 = *v39;
          *(result + 40) = *(v13 + 24);
          *v38 = v45;
          *(v13 + 24) = BYTE8(v155);
          *v39 = v155;
        }
      }

LABEL_51:
      v48 = sub_9D347C(a3, *v13, *v27);
      v49 = sub_9D347C(a3, *v39, *v13);
      if (v48)
      {
        if (v49)
        {
          v157 = *v27;
          *v27 = *v39;
          *(v13 - 8) = *(v13 + 24);
        }

        else
        {
          v160 = *v27;
          *v27 = *v13;
          *(v13 - 8) = *(v13 + 8);
          *v13 = v160;
          *(v13 + 8) = BYTE8(v160);
          if (!sub_9D347C(a3, *v39, v160))
          {
            goto LABEL_60;
          }

          v157 = *v13;
          *v13 = *v39;
          *(v13 + 8) = *(v13 + 24);
        }

        *v39 = v157;
        *(v13 + 24) = BYTE8(v157);
      }

      else if (v49)
      {
        v158 = *v13;
        *v13 = *v39;
        *(v13 + 8) = *(v13 + 24);
        *v39 = v158;
        *(v13 + 24) = BYTE8(v158);
        if (sub_9D347C(a3, *v13, *v27))
        {
          v159 = *v27;
          *v27 = *v13;
          *(v13 - 8) = *(v13 + 8);
          *v13 = v159;
          *(v13 + 8) = BYTE8(v159);
        }
      }

LABEL_60:
      v161 = *result;
      v50 = *v13;
      *(result + 8) = *(v13 + 8);
      *result = v50;
      *(v13 + 8) = BYTE8(v161);
      *v13 = v161;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v51 = 0;
      v52 = *result;
      v53 = *(result + 8);
      do
      {
        v54 = sub_9D347C(a3, *(result + v51 + 16), v52);
        v51 += 16;
      }

      while (v54);
      v55 = result + v51;
      v56 = v140;
      if (v51 == 16)
      {
        v56 = v140;
        do
        {
          if (v55 >= v56)
          {
            break;
          }

          v58 = *(v56 - 2);
          v56 -= 16;
        }

        while (!sub_9D347C(a3, v58, v52));
      }

      else
      {
        do
        {
          v57 = *(v56 - 2);
          v56 -= 16;
        }

        while (!sub_9D347C(a3, v57, v52));
      }

      v10 = result + v51;
      if (v55 < v56)
      {
        v59 = v56;
        do
        {
          v162 = *v10;
          v60 = *v59;
          *(v10 + 8) = *(v59 + 8);
          *v10 = v60;
          *(v59 + 8) = BYTE8(v162);
          *v59 = v162;
          do
          {
            v61 = *(v10 + 16);
            v10 += 16;
          }

          while (sub_9D347C(a3, v61, v52));
          do
          {
            v62 = *(v59 - 16);
            v59 -= 16;
          }

          while (!sub_9D347C(a3, v62, v52));
        }

        while (v10 < v59);
      }

      if (v10 - 16 != result)
      {
        v63 = *(v10 - 16);
        *(result + 8) = *(v10 - 8);
        *result = v63;
      }

      *(v10 - 16) = v52;
      *(v10 - 8) = v53;
      a2 = v140;
      if (v55 < v56)
      {
        goto LABEL_81;
      }

      v64 = sub_9D3880(result, (v10 - 16), a3);
      if (sub_9D3880(v10, v140, a3))
      {
        a2 = (v10 - 16);
        if (!v64)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v64)
      {
LABEL_81:
        sub_9D2520(result, (v10 - 16), a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      sub_9D366C(result, (result + 16), (result + 32), v9, a3);
      return;
    }

    if (v11 == 5)
    {
      sub_9D366C(result, (result + 16), (result + 32), result + 48, a3);
      v76 = *(a2 - 2);
      v75 = a2 - 16;
      if (sub_9D347C(a3, v76, *(result + 48)))
      {
        v164 = *(result + 48);
        v77 = *v75;
        *(result + 56) = v75[8];
        *(result + 48) = v77;
        v75[8] = BYTE8(v164);
        *v75 = v164;
        if (sub_9D347C(a3, *(result + 48), *(result + 32)))
        {
          v165 = *(result + 32);
          *(result + 32) = *(result + 48);
          *(result + 40) = *(result + 56);
          *(result + 48) = v165;
          *(result + 56) = BYTE8(v165);
          if (sub_9D347C(a3, *(result + 32), *(result + 16)))
          {
            v166 = *(result + 16);
            *(result + 16) = *(result + 32);
            *(result + 24) = *(result + 40);
            *(result + 32) = v166;
            *(result + 40) = BYTE8(v166);
            if (sub_9D347C(a3, *(result + 16), *result))
            {
              v167 = *result;
              *result = *(result + 16);
              *(result + 8) = *(result + 24);
              *(result + 16) = v167;
              *(result + 24) = BYTE8(v167);
            }
          }
        }
      }

      return;
    }

    goto LABEL_9;
  }

  v81 = (result + 16);
  v82 = sub_9D347C(a3, *(result + 16), *result);
  v83 = *(a2 - 2);
  v78 = a2 - 16;
  v84 = sub_9D347C(a3, v83, *(result + 16));
  if (v82)
  {
    if (v84)
    {
      goto LABEL_111;
    }

    v172 = *result;
    *result = *v81;
    *(result + 8) = *(result + 24);
    *v81 = v172;
    *(result + 24) = BYTE8(v172);
    if (!sub_9D347C(a3, *v78, *(result + 16)))
    {
      return;
    }

    v168 = *v81;
    v135 = *v78;
    *(result + 24) = v78[8];
    *v81 = v135;
LABEL_112:
    v78[8] = BYTE8(v168);
    *v78 = v168;
    return;
  }

  if (v84)
  {
    v170 = *v81;
    v128 = *v78;
    *(result + 24) = v78[8];
    *v81 = v128;
    v78[8] = BYTE8(v170);
    *v78 = v170;
    if (sub_9D347C(a3, *(result + 16), *result))
    {
      v171 = *result;
      *result = *v81;
      *(result + 8) = *(result + 24);
      *v81 = v171;
      *(result + 24) = BYTE8(v171);
    }
  }
}

BOOL sub_9D347C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(*(a1 + 8) + 72);
  v4 = 0x66FD0EB66FD0EB67 * ((*(*(a1 + 8) + 80) - v3) >> 3);
  if (v4 <= a2 || v4 <= a3)
  {
    sub_6FAB4();
  }

  v5 = (v3 + 696 * a2);
  v6 = (v3 + 696 * a3);
  if (**(a1 + 16) == -1)
  {
    v14 = v5[1];
    if (*v5 == v14)
    {
      return v5[6] < v6[6];
    }

    v15 = v6[1];
    if (*v6 == v15)
    {
      return v5[6] < v6[6];
    }

    else
    {
      v18 = *(v14 - 56);
      v16 = v14 - 56;
      v17 = v18;
      v19 = *(v16 + 23);
      if (v19 >= 0)
      {
        v20 = v16;
      }

      else
      {
        v20 = v17;
      }

      if (v19 >= 0)
      {
        v21 = *(v16 + 23);
      }

      else
      {
        v21 = *(v16 + 8);
      }

      v22 = CFStringCreateWithBytesNoCopy(kCFAllocatorDefault, v20, v21, 0x8000100u, 0, kCFAllocatorNull);
      v25 = *(v15 - 56);
      v24 = v15 - 56;
      v23 = v25;
      v26 = *(v24 + 23);
      if (v26 >= 0)
      {
        v27 = v24;
      }

      else
      {
        v27 = v23;
      }

      if (v26 >= 0)
      {
        v28 = *(v24 + 23);
      }

      else
      {
        v28 = *(v24 + 8);
      }

      v29 = CFStringCreateWithBytesNoCopy(kCFAllocatorDefault, v27, v28, 0x8000100u, 0, kCFAllocatorNull);
      v30 = CFStringCompare(v22, v29, 0x40uLL);
      CFRelease(v22);
      CFRelease(v29);
      return v30 == kCFCompareLessThan;
    }
  }

  else
  {
    v7 = v5[84];
    v8 = v5[85];
    v9 = **(a1 + 24);
    if (v7 != v8)
    {
      while (*v7 != *v9)
      {
        v7 += 2;
        if (v7 == v8)
        {
          v7 = v8;
          break;
        }
      }
    }

    v10 = v6[84];
    v11 = v6[85];
    if (v10 != v11)
    {
      v12 = *v9;
      while (*v10 != v12)
      {
        v10 += 2;
        if (v10 == v11)
        {
          v10 = v11;
          return v7[1] < v10[1];
        }
      }
    }

    return v7[1] < v10[1];
  }
}

__n128 sub_9D366C(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_9D347C(a5, *a2, *a1);
  v11 = sub_9D347C(a5, *a3, *a2);
  if (v10)
  {
    if (v11)
    {
      v21 = *a1;
      v12 = *(a3 + 8);
      *a1 = *a3;
      *(a1 + 8) = v12;
LABEL_9:
      *a3 = v21;
      *(a3 + 8) = BYTE8(v21);
      goto LABEL_10;
    }

    v24 = *a1;
    v15 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v15;
    *a2 = v24;
    *(a2 + 8) = BYTE8(v24);
    if (sub_9D347C(a5, *a3, *a2))
    {
      v21 = *a2;
      v16 = *(a3 + 8);
      *a2 = *a3;
      *(a2 + 8) = v16;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v22 = *a2;
    v13 = *(a3 + 8);
    *a2 = *a3;
    *(a2 + 8) = v13;
    *a3 = v22;
    *(a3 + 8) = BYTE8(v22);
    if (sub_9D347C(a5, *a2, *a1))
    {
      v23 = *a1;
      v14 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v14;
      *a2 = v23;
      *(a2 + 8) = BYTE8(v23);
    }
  }

LABEL_10:
  if (sub_9D347C(a5, *a4, *a3))
  {
    v25 = *a3;
    v18 = *(a4 + 8);
    *a3 = *a4;
    *(a3 + 8) = v18;
    *a4 = v25;
    *(a4 + 8) = BYTE8(v25);
    if (sub_9D347C(a5, *a3, *a2))
    {
      v26 = *a2;
      v19 = *(a3 + 8);
      *a2 = *a3;
      *(a2 + 8) = v19;
      *a3 = v26;
      *(a3 + 8) = BYTE8(v26);
      if (sub_9D347C(a5, *a2, *a1))
      {
        result = *a1;
        v27 = *a1;
        v20 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v20;
        *a2 = v27;
        *(a2 + 8) = BYTE8(v27);
      }
    }
  }

  return result;
}

BOOL sub_9D3880(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v11 = (a1 + 1);
        v12 = sub_9D347C(a3, *(a1 + 2), *a1);
        v13 = *(a2 - 2);
        v7 = a2 - 1;
        v14 = sub_9D347C(a3, v13, *v11);
        if (!v12)
        {
          if (v14)
          {
            v36 = *v11;
            v20 = *(v7 + 8);
            *v11 = *v7;
            *(a1 + 24) = v20;
            *v7 = v36;
            *(v7 + 8) = BYTE8(v36);
            if (sub_9D347C(a3, *(a1 + 2), *a1))
            {
              v37 = *a1;
              *a1 = *v11;
              *(a1 + 8) = *(a1 + 24);
              *v11 = v37;
              *(a1 + 24) = BYTE8(v37);
            }
          }

          return 1;
        }

        if (!v14)
        {
          v40 = *a1;
          *a1 = *v11;
          *(a1 + 8) = *(a1 + 24);
          *v11 = v40;
          *(a1 + 24) = BYTE8(v40);
          if (!sub_9D347C(a3, *v7, *(a1 + 2)))
          {
            return 1;
          }

          v34 = *v11;
          v21 = *(v7 + 8);
          *v11 = *v7;
          *(a1 + 24) = v21;
          goto LABEL_17;
        }

LABEL_16:
        v34 = *a1;
        v15 = *(v7 + 8);
        *a1 = *v7;
        *(a1 + 8) = v15;
LABEL_17:
        *v7 = v34;
        *(v7 + 8) = BYTE8(v34);
        return 1;
      case 4:
        sub_9D366C(a1, a1 + 1, a1 + 2, (a2 - 1), a3);
        return 1;
      case 5:
        sub_9D366C(a1, a1 + 1, a1 + 2, (a1 + 3), a3);
        v9 = *(a2 - 2);
        v8 = a2 - 1;
        if (sub_9D347C(a3, v9, *(a1 + 6)))
        {
          v30 = a1[3];
          v10 = *(v8 + 8);
          *(a1 + 6) = *v8;
          *(a1 + 56) = v10;
          *v8 = v30;
          *(v8 + 8) = BYTE8(v30);
          if (sub_9D347C(a3, *(a1 + 6), *(a1 + 4)))
          {
            v31 = a1[2];
            *(a1 + 4) = *(a1 + 6);
            *(a1 + 40) = *(a1 + 56);
            *(a1 + 6) = v31;
            *(a1 + 56) = BYTE8(v31);
            if (sub_9D347C(a3, *(a1 + 4), *(a1 + 2)))
            {
              v32 = a1[1];
              *(a1 + 2) = *(a1 + 4);
              *(a1 + 24) = *(a1 + 40);
              *(a1 + 4) = v32;
              *(a1 + 40) = BYTE8(v32);
              if (sub_9D347C(a3, *(a1 + 2), *a1))
              {
                v33 = *a1;
                *a1 = *(a1 + 2);
                *(a1 + 8) = *(a1 + 24);
                *(a1 + 2) = v33;
                *(a1 + 24) = BYTE8(v33);
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = a2 - 1;
      if (!sub_9D347C(a3, *(a2 - 2), *a1))
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v16 = (a1 + 1);
  v17 = sub_9D347C(a3, *(a1 + 2), *a1);
  v18 = (a1 + 2);
  v19 = sub_9D347C(a3, *(a1 + 4), *v16);
  if (v17)
  {
    if (v19)
    {
      v35 = *a1;
      *a1 = *v18;
      *(a1 + 8) = *(a1 + 40);
    }

    else
    {
      v41 = *a1;
      *a1 = *v16;
      *(a1 + 8) = *(a1 + 24);
      *v16 = v41;
      *(a1 + 24) = BYTE8(v41);
      if (!sub_9D347C(a3, *(a1 + 4), *(a1 + 2)))
      {
        goto LABEL_33;
      }

      v35 = *v16;
      *v16 = *v18;
      *(a1 + 24) = *(a1 + 40);
    }

    *v18 = v35;
    *(a1 + 40) = BYTE8(v35);
  }

  else if (v19)
  {
    v38 = *v16;
    *v16 = *v18;
    *(a1 + 24) = *(a1 + 40);
    *v18 = v38;
    *(a1 + 40) = BYTE8(v38);
    if (sub_9D347C(a3, *(a1 + 2), *a1))
    {
      v39 = *a1;
      *a1 = *v16;
      *(a1 + 8) = *(a1 + 24);
      *v16 = v39;
      *(a1 + 24) = BYTE8(v39);
    }
  }

LABEL_33:
  v22 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  while (!sub_9D347C(a3, *v22, *v18))
  {
LABEL_42:
    v18 = v22;
    v23 += 16;
    if (++v22 == a2)
    {
      return 1;
    }
  }

  v25 = *v22;
  v26 = *(v22 + 8);
  v27 = v23;
  do
  {
    v28 = a1 + v27;
    *(v28 + 6) = *(a1 + v27 + 32);
    v28[56] = *(a1 + v27 + 40);
    if (v27 == -32)
    {
      *a1 = v25;
      *(a1 + 8) = v26;
      if (++v24 != 8)
      {
        goto LABEL_42;
      }

      return v22 + 1 == a2;
    }

    v27 -= 16;
  }

  while (sub_9D347C(a3, v25, *(v28 + 2)));
  *(a1 + v27 + 48) = v25;
  *(a1 + v27 + 56) = v26;
  if (++v24 != 8)
  {
    goto LABEL_42;
  }

  return v22 + 1 == a2;
}

void sub_9D3D4C()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B3548 = 0u;
  unk_27B3558 = 0u;
  dword_27B3568 = 1065353216;
  sub_3A9A34(&xmmword_27B3548, v0, v0);
  sub_3A9A34(&xmmword_27B3548, v3, v3);
  sub_3A9A34(&xmmword_27B3548, __p, __p);
  sub_3A9A34(&xmmword_27B3548, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B3520 = 0;
    qword_27B3528 = 0;
    qword_27B3518 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_9D3F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3530)
  {
    qword_27B3538 = qword_27B3530;
    operator delete(qword_27B3530);
  }

  _Unwind_Resume(exception_object);
}

void sub_9D4040(void *a1@<X0>, void *a2@<X8>)
{
  sub_9D4074(a2, *a1);
  a2[1] = -1;
  a2[2] = -1;
}

double sub_9D4074(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  if (*a2 == a2[1])
  {
    v7 = v2;
    v8 = v3;
    sub_9D4074(v6, a2);
    v6[1] = NAN;
    a1[2] = -1;
    result = v6[0];
    *a1 = *v6;
  }

  return result;
}

uint64_t sub_9D40D8(uint64_t a1)
{
  sub_9D4074(&v18, *a1);
  v2 = *a1;
  if (*a1 == __PAIR128__(-1, v18))
  {
    v3 = *(a1 + 16);
    if (v3 == -1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v17 = sub_2D390(exception, "Iterated past end", 0x11uLL);
    }
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3 >= (v2[1] - *v2) >> 5)
  {
    sub_6FAB4();
  }

  v4 = (*v2 + 32 * v3);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 == v6)
  {
    goto LABEL_21;
  }

  v7 = v6 - v5;
  if (v6 - v5 == 104)
  {
    v8 = 0;
  }

  else
  {
    v9 = 0;
    v10 = v5;
    while (*v10)
    {
      v10 += 104;
      v9 -= 104;
      if (v10 == v6)
      {
        v11 = v6 - v5;
        goto LABEL_12;
      }
    }

    v11 = -v9;
LABEL_12:
    v8 = 0x4EC4EC4EC4EC4EC5 * (v11 >> 3);
  }

  if (0x4EC4EC4EC4EC4EC5 * (v7 >> 3) <= v8)
  {
LABEL_21:
    sub_6FAB4();
  }

  v12 = &v5[104 * v8];
  v13 = *(a1 + 8) + 1;
  *(a1 + 8) = v13;
  if (v13 < 0xBC7FD20AC579B779 * ((*(v12 + 2) - *(v12 + 1)) >> 3))
  {
    return a1;
  }

  v14 = *(v12 + 7);
  if (v14 != -1)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = v14;
    return a1;
  }

  sub_9D4074(&v18, v2);
  *(&v18 + 1) = -1;
  *(a1 + 16) = -1;
  *a1 = v18;
  return a1;
}

uint64_t sub_9D42B8(uint64_t **a1)
{
  v1 = a1[2];
  v2 = **a1;
  if (v1 >= ((*a1)[1] - v2) >> 5)
  {
    sub_6FAB4();
  }

  v3 = (v2 + 32 * v1);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    goto LABEL_14;
  }

  v6 = v5 - v4;
  if (v5 - v4 == 104)
  {
    v7 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v4;
    while (*v9)
    {
      v9 += 104;
      v8 -= 104;
      if (v9 == v5)
      {
        v10 = v5 - v4;
        goto LABEL_10;
      }
    }

    v10 = -v8;
LABEL_10:
    v7 = 0x4EC4EC4EC4EC4EC5 * (v10 >> 3);
  }

  if (0x4EC4EC4EC4EC4EC5 * (v6 >> 3) <= v7)
  {
LABEL_14:
    sub_6FAB4();
  }

  v11 = &v4[104 * v7];
  v12 = a1[1];
  v14 = v11 + 8;
  v13 = *(v11 + 1);
  if (0xBC7FD20AC579B779 * ((*(v14 + 1) - v13) >> 3) <= v12)
  {
    sub_6FAB4();
  }

  return v13 + 5704 * v12;
}

void sub_9D43A4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_9D442C(v3, qword_27B3570, qword_27B3578, *a1, a1[1]);
  *a2 = *v3;
  *(a2 + 16) = v4;
  v3[1] = 0;
  v4 = 0;
  v3[0] = 0;
  if (v6 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }
  }
}

__n128 sub_9D442C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3 || a4 == a5)
  {
LABEL_3:
    result.n128_u64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 24) = 2;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    return result;
  }

LABEL_6:
  v6 = *a2;
  v7 = a4;
  while (*(v7 + 24) != v6)
  {
    v7 += 56;
    if (v7 == a5)
    {
LABEL_5:
      if (++a2 == a3)
      {
        goto LABEL_3;
      }

      goto LABEL_6;
    }
  }

  if (v7 == a5)
  {
    goto LABEL_5;
  }

  if (*(v7 + 23) < 0)
  {
    v8 = a1;
    sub_325C(a1, *v7, *(v7 + 8));
    a1 = v8;
    *(v8 + 24) = *(v7 + 24);
    if ((*(v7 + 55) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a1 = *v7;
    *(a1 + 16) = *(v7 + 16);
    *(a1 + 24) = v6;
    if ((*(v7 + 55) & 0x80000000) == 0)
    {
LABEL_12:
      result = *(v7 + 32);
      *(a1 + 32) = result;
      *(a1 + 48) = *(v7 + 48);
      return result;
    }
  }

  sub_325C((a1 + 32), *(v7 + 32), *(v7 + 40));
  return result;
}

void sub_9D451C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_9D4538(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_9D442C(v3, qword_27B3588, qword_27B3590, *a1, a1[1]);
  *a2 = *v3;
  *(a2 + 16) = v4;
  v3[1] = 0;
  v4 = 0;
  v3[0] = 0;
  if (v6 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }
  }
}

void sub_9D4650(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  v5 = *a2;
  if (*a2 != v4)
  {
    v5 = *a2;
    while (*(v5 + 24) != a1)
    {
      v5 += 56;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_10:
    sub_9D442C(v9, qword_27B3570, qword_27B3578, *a2, v4);
    *a3 = *v9;
    *(a3 + 16) = v10;
    v9[1] = 0;
    v10 = 0;
    v9[0] = 0;
    if (v12 < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(v9[0]);
      }
    }
  }

  else if (*(v5 + 23) < 0)
  {
    v7 = *v5;
    v8 = *(v5 + 8);

    sub_325C(a3, v7, v8);
  }

  else
  {
    v6 = *v5;
    *(a3 + 16) = *(v5 + 16);
    *a3 = v6;
  }
}

void sub_9D4754()
{
  qword_27B3570 = 0;
  qword_27B3578 = 0;
  qword_27B3580 = 0;
  operator new();
}

void sub_9D4924(_Unwind_Exception *exception_object)
{
  if (qword_27B3600)
  {
    qword_27B3608 = qword_27B3600;
    operator delete(qword_27B3600);
  }

  _Unwind_Resume(exception_object);
}

void sub_9D49F0(void *a1@<X1>, uint64_t *a2@<X2>, int a3@<W3>, int a4@<W4>, void *a5@<X8>)
{
  v5 = a5;
  if (*a1 == a1[1])
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  v65 = 0u;
  v66 = 0u;
  v67 = 1065353216;
  prime = std::__next_prime(0x90uLL);
  if (prime)
  {
    sub_B07C(&v65, prime);
  }

  v11 = *a1;
  v49 = a1[1];
  if (*a1 == v49)
  {
LABEL_58:
    if (!sub_7E7E4(3u))
    {
      goto LABEL_87;
    }

    sub_19594F8(&v54);
    sub_4A5C(&v54, "Couldn't find any valid text references in the input vector", 59);
    if ((v64 & 0x10) != 0)
    {
      v40 = v63;
      if (v63 < v60)
      {
        v63 = v60;
        v40 = v60;
      }

      v41 = v59;
      v37 = v40 - v59;
      if (v40 - v59 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if ((v64 & 8) == 0)
      {
        v37 = 0;
        v70 = 0;
LABEL_82:
        *(__dst + v37) = 0;
        sub_7E854(__dst, 3u);
        if (v70 < 0)
        {
          operator delete(__dst[0]);
        }

        if (v62 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v56);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_87:
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
        v42 = v66;
        if (!v66)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      v41 = v57;
      v37 = v58 - v57;
      if ((v58 - v57) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_95:
        sub_3244();
      }
    }

    if (v37 >= 0x17)
    {
      operator new();
    }

    v70 = v37;
    if (v37)
    {
      memmove(__dst, v41, v37);
    }

    goto LABEL_82;
  }

  v46 = a3;
  v45 = a4;
  v47 = v5;
  v12 = 0;
  v48 = -1;
  while (2)
  {
    if (sub_9D9D0C(&v65, (v11 + 4)))
    {
      v14 = v11[5];
      v13 = v11[6];
      if (v14 == v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_9D9E48(&v65, (v11 + 4), v11 + 4);
      v15 = v12;
      v16 = v12 >> 3;
      if (((v12 >> 3) + 1) >> 61)
      {
        sub_1794();
      }

      if (v12 >> 3 != -1)
      {
        if (!(((v12 >> 3) + 1) >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v16) = v11[4];
      v12 = 8 * v16 + 8;
      memcpy(0, 0, v15);
      v17 = v48;
      if (v48 == -1)
      {
        v17 = (v12 >> 3) - 1;
      }

      v48 = v17;
      v14 = v11[5];
      v13 = v11[6];
      if (v14 == v13)
      {
        goto LABEL_7;
      }
    }

    while (2)
    {
      while (2)
      {
        v18 = sub_1232EA0(v14);
        v19 = *(&v65 + 1);
        if (!*(&v65 + 1))
        {
          goto LABEL_41;
        }

        v20 = v18;
        v21 = vcnt_s8(*(&v65 + 8));
        v21.i16[0] = vaddlv_u8(v21);
        if (v21.u32[0] > 1uLL)
        {
          v22 = v18;
          if (v18 >= *(&v65 + 1))
          {
            v22 = v18 % *(&v65 + 1);
          }
        }

        else
        {
          v22 = (*(&v65 + 1) - 1) & v18;
        }

        v23 = *(v65 + 8 * v22);
        if (!v23 || (v24 = *v23) == 0)
        {
LABEL_41:
          sub_9D9E48(&v65, v14, v14);
          v28 = v12;
          v29 = v12 >> 3;
          if (((v12 >> 3) + 1) >> 61)
          {
            sub_1794();
          }

          if (v12 >> 3 != -1)
          {
            if (!(((v12 >> 3) + 1) >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          *(8 * v29) = *v14;
          v12 = 8 * v29 + 8;
          memcpy(0, 0, v28);
          v14 += 4;
          if (v14 != v13)
          {
            continue;
          }

          goto LABEL_7;
        }

        break;
      }

      if (v21.u32[0] < 2uLL)
      {
        v25 = *(&v65 + 1) - 1;
        while (1)
        {
          v27 = v24[1];
          if (v27 == v20)
          {
            if (sub_1232EBC((v24 + 2), v14))
            {
              goto LABEL_19;
            }
          }

          else if ((v27 & v25) != v22)
          {
            goto LABEL_41;
          }

          v24 = *v24;
          if (!v24)
          {
            goto LABEL_41;
          }
        }
      }

      while (1)
      {
        v26 = v24[1];
        if (v26 == v20)
        {
          break;
        }

        if (v26 >= v19)
        {
          v26 %= v19;
        }

        if (v26 != v22)
        {
          goto LABEL_41;
        }

LABEL_30:
        v24 = *v24;
        if (!v24)
        {
          goto LABEL_41;
        }
      }

      if (!sub_1232EBC((v24 + 2), v14))
      {
        goto LABEL_30;
      }

LABEL_19:
      v14 += 4;
      if (v14 != v13)
      {
        continue;
      }

      break;
    }

LABEL_7:
    v11 += 8;
    if (v11 != v49)
    {
      continue;
    }

    break;
  }

  if (!v12)
  {
    v5 = v47;
    goto LABEL_58;
  }

  v50 = 50331648;
  v51 = 0;
  if (v46)
  {
    v30 = v48;
  }

  else
  {
    v30 = -1;
  }

  v52 = 14;
  v53 = v30;
  v31 = sub_6E9A8();
  v32 = a2[1];
  v33 = (v32 - *a2) >> 2;
  *&v54 = *a2;
  v55 = v32;
  LODWORD(v56.__locale_) = 4;
  v57 = v33;
  __dst[0] = 0;
  __dst[1] = v12;
  v69 = 2;
  v71 = v12 >> 3;
  v34 = (*(*v31 + 48))(v31, &v54, __dst, &v50);
  v35 = v47;
  *&v54 = sub_12331FC();
  if (!HIDWORD(v34))
  {
    if ((atomic_load_explicit(&qword_2732FA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2732FA0))
    {
      qword_2732F98 = sub_12331FC();
      __cxa_guard_release(&qword_2732FA0);
      v35 = v47;
    }

    v36 = &qword_2732F98;
    if ((v34 & 0x80000000) == 0 && v34 < (v12 >> 3))
    {
      v36 = (8 * v34);
    }

    goto LABEL_66;
  }

  if (!v45 || (v48 & 0x80000000) != 0)
  {
    *v47 = 0;
    v47[1] = 0;
    v47[2] = 0;
    v42 = v66;
    if (!v66)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  if (v12 >> 3 <= v48)
  {
    sub_6FAB4();
  }

  v36 = (8 * v48);
LABEL_66:
  v54 = *v36;
  v38 = sub_1232E84(&v54);
  v39 = *(v38 + 8);
  if (v39 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v39 >= 0x17)
  {
    operator new();
  }

  v35[23] = v39;
  if (v39)
  {
    memcpy(v35, (v38 + 16 * (v39 > 7)), v39);
  }

  v35[v39] = 0;
  v42 = v66;
  if (v66)
  {
    do
    {
LABEL_88:
      v43 = *v42;
      operator delete(v42);
      v42 = v43;
    }

    while (v43);
  }

LABEL_89:
  v44 = v65;
  *&v65 = 0;
  if (v44)
  {
    operator delete(v44);
  }
}

void sub_9D5284(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2732FA0);
  sub_11BD8(v2 - 160);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_9D5328(void *a1@<X1>, uint64_t *a2@<X2>, int a3@<W3>, int a4@<W4>, void *a5@<X8>)
{
  v5 = a5;
  if (*a1 == a1[1])
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  v65 = 0u;
  v66 = 0u;
  v67 = 1065353216;
  prime = std::__next_prime(0x90uLL);
  if (prime)
  {
    sub_B07C(&v65, prime);
  }

  v11 = *a1;
  v49 = a1[1];
  if (*a1 == v49)
  {
LABEL_58:
    if (!sub_7E7E4(3u))
    {
      goto LABEL_87;
    }

    sub_19594F8(&v54);
    sub_4A5C(&v54, "Couldn't find any valid text references in the input vector", 59);
    if ((v64 & 0x10) != 0)
    {
      v40 = v63;
      if (v63 < v60)
      {
        v63 = v60;
        v40 = v60;
      }

      v41 = v59;
      v37 = v40 - v59;
      if (v40 - v59 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if ((v64 & 8) == 0)
      {
        v37 = 0;
        v70 = 0;
LABEL_82:
        *(__dst + v37) = 0;
        sub_7E854(__dst, 3u);
        if (v70 < 0)
        {
          operator delete(__dst[0]);
        }

        if (v62 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v56);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_87:
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
        v42 = v66;
        if (!v66)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      v41 = v57;
      v37 = v58 - v57;
      if ((v58 - v57) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_95:
        sub_3244();
      }
    }

    if (v37 >= 0x17)
    {
      operator new();
    }

    v70 = v37;
    if (v37)
    {
      memmove(__dst, v41, v37);
    }

    goto LABEL_82;
  }

  v46 = a3;
  v45 = a4;
  v47 = v5;
  v12 = 0;
  v48 = -1;
  while (2)
  {
    if (sub_9D9D0C(&v65, (v11 + 4)))
    {
      v14 = v11[5];
      v13 = v11[6];
      if (v14 == v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_9D9E48(&v65, (v11 + 4), v11 + 4);
      v15 = v12;
      v16 = v12 >> 3;
      if (((v12 >> 3) + 1) >> 61)
      {
        sub_1794();
      }

      if (v12 >> 3 != -1)
      {
        if (!(((v12 >> 3) + 1) >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v16) = v11[4];
      v12 = 8 * v16 + 8;
      memcpy(0, 0, v15);
      v17 = v48;
      if (v48 == -1)
      {
        v17 = (v12 >> 3) - 1;
      }

      v48 = v17;
      v14 = v11[5];
      v13 = v11[6];
      if (v14 == v13)
      {
        goto LABEL_7;
      }
    }

    while (2)
    {
      while (2)
      {
        v18 = sub_1232EA0(v14);
        v19 = *(&v65 + 1);
        if (!*(&v65 + 1))
        {
          goto LABEL_41;
        }

        v20 = v18;
        v21 = vcnt_s8(*(&v65 + 8));
        v21.i16[0] = vaddlv_u8(v21);
        if (v21.u32[0] > 1uLL)
        {
          v22 = v18;
          if (v18 >= *(&v65 + 1))
          {
            v22 = v18 % *(&v65 + 1);
          }
        }

        else
        {
          v22 = (*(&v65 + 1) - 1) & v18;
        }

        v23 = *(v65 + 8 * v22);
        if (!v23 || (v24 = *v23) == 0)
        {
LABEL_41:
          sub_9D9E48(&v65, v14, v14);
          v28 = v12;
          v29 = v12 >> 3;
          if (((v12 >> 3) + 1) >> 61)
          {
            sub_1794();
          }

          if (v12 >> 3 != -1)
          {
            if (!(((v12 >> 3) + 1) >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          *(8 * v29) = *v14;
          v12 = 8 * v29 + 8;
          memcpy(0, 0, v28);
          v14 += 4;
          if (v14 != v13)
          {
            continue;
          }

          goto LABEL_7;
        }

        break;
      }

      if (v21.u32[0] < 2uLL)
      {
        v25 = *(&v65 + 1) - 1;
        while (1)
        {
          v27 = v24[1];
          if (v27 == v20)
          {
            if (sub_1232EBC((v24 + 2), v14))
            {
              goto LABEL_19;
            }
          }

          else if ((v27 & v25) != v22)
          {
            goto LABEL_41;
          }

          v24 = *v24;
          if (!v24)
          {
            goto LABEL_41;
          }
        }
      }

      while (1)
      {
        v26 = v24[1];
        if (v26 == v20)
        {
          break;
        }

        if (v26 >= v19)
        {
          v26 %= v19;
        }

        if (v26 != v22)
        {
          goto LABEL_41;
        }

LABEL_30:
        v24 = *v24;
        if (!v24)
        {
          goto LABEL_41;
        }
      }

      if (!sub_1232EBC((v24 + 2), v14))
      {
        goto LABEL_30;
      }

LABEL_19:
      v14 += 4;
      if (v14 != v13)
      {
        continue;
      }

      break;
    }

LABEL_7:
    v11 += 8;
    if (v11 != v49)
    {
      continue;
    }

    break;
  }

  if (!v12)
  {
    v5 = v47;
    goto LABEL_58;
  }

  v50 = 50331648;
  v51 = 0;
  if (v46)
  {
    v30 = v48;
  }

  else
  {
    v30 = -1;
  }

  v52 = 14;
  v53 = v30;
  v31 = sub_6E9A8();
  v32 = a2[1];
  v33 = (v32 - *a2) >> 3;
  *&v54 = *a2;
  v55 = v32;
  LODWORD(v56.__locale_) = 2;
  v57 = v33;
  __dst[0] = 0;
  __dst[1] = v12;
  v69 = 2;
  v71 = v12 >> 3;
  v34 = (*(*v31 + 48))(v31, &v54, __dst, &v50);
  v35 = v47;
  *&v54 = sub_12331FC();
  if (!HIDWORD(v34))
  {
    if ((atomic_load_explicit(&qword_2732FA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2732FA0))
    {
      qword_2732F98 = sub_12331FC();
      __cxa_guard_release(&qword_2732FA0);
      v35 = v47;
    }

    v36 = &qword_2732F98;
    if ((v34 & 0x80000000) == 0 && v34 < (v12 >> 3))
    {
      v36 = (8 * v34);
    }

    goto LABEL_66;
  }

  if (!v45 || (v48 & 0x80000000) != 0)
  {
    *v47 = 0;
    v47[1] = 0;
    v47[2] = 0;
    v42 = v66;
    if (!v66)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  if (v12 >> 3 <= v48)
  {
    sub_6FAB4();
  }

  v36 = (8 * v48);
LABEL_66:
  v54 = *v36;
  v38 = sub_1232E84(&v54);
  v39 = *(v38 + 8);
  if (v39 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v39 >= 0x17)
  {
    operator new();
  }

  v35[23] = v39;
  if (v39)
  {
    memcpy(v35, (v38 + 16 * (v39 > 7)), v39);
  }

  v35[v39] = 0;
  v42 = v66;
  if (v66)
  {
    do
    {
LABEL_88:
      v43 = *v42;
      operator delete(v42);
      v42 = v43;
    }

    while (v43);
  }

LABEL_89:
  v44 = v65;
  *&v65 = 0;
  if (v44)
  {
    operator delete(v44);
  }
}

void sub_9D5BB8(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2732FA0);
  sub_11BD8(v2 - 160);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_9D5C5C(void *a1@<X1>, uint64_t *a2@<X2>, int a3@<W3>, int a4@<W4>, void *a5@<X8>)
{
  v5 = a5;
  if (*a1 == a1[1])
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  v65 = 0u;
  v66 = 0u;
  v67 = 1065353216;
  prime = std::__next_prime(0x90uLL);
  if (prime)
  {
    sub_B07C(&v65, prime);
  }

  v11 = *a1;
  v49 = a1[1];
  if (*a1 == v49)
  {
LABEL_58:
    if (!sub_7E7E4(3u))
    {
      goto LABEL_87;
    }

    sub_19594F8(&v54);
    sub_4A5C(&v54, "Couldn't find any valid text references in the input vector", 59);
    if ((v64 & 0x10) != 0)
    {
      v40 = v63;
      if (v63 < v60)
      {
        v63 = v60;
        v40 = v60;
      }

      v41 = v59;
      v37 = v40 - v59;
      if (v40 - v59 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if ((v64 & 8) == 0)
      {
        v37 = 0;
        v70 = 0;
LABEL_82:
        *(__dst + v37) = 0;
        sub_7E854(__dst, 3u);
        if (v70 < 0)
        {
          operator delete(__dst[0]);
        }

        if (v62 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v56);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_87:
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
        v42 = v66;
        if (!v66)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      v41 = v57;
      v37 = v58 - v57;
      if ((v58 - v57) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_95:
        sub_3244();
      }
    }

    if (v37 >= 0x17)
    {
      operator new();
    }

    v70 = v37;
    if (v37)
    {
      memmove(__dst, v41, v37);
    }

    goto LABEL_82;
  }

  v46 = a3;
  v45 = a4;
  v47 = v5;
  v12 = 0;
  v48 = -1;
  while (2)
  {
    if (sub_9D9D0C(&v65, (v11 + 6)))
    {
      v14 = v11[7];
      v13 = v11[8];
      if (v14 == v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_9D9E48(&v65, (v11 + 6), v11 + 6);
      v15 = v12;
      v16 = v12 >> 3;
      if (((v12 >> 3) + 1) >> 61)
      {
        sub_1794();
      }

      if (v12 >> 3 != -1)
      {
        if (!(((v12 >> 3) + 1) >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v16) = v11[6];
      v12 = 8 * v16 + 8;
      memcpy(0, 0, v15);
      v17 = v48;
      if (v48 == -1)
      {
        v17 = (v12 >> 3) - 1;
      }

      v48 = v17;
      v14 = v11[7];
      v13 = v11[8];
      if (v14 == v13)
      {
        goto LABEL_7;
      }
    }

    while (2)
    {
      while (2)
      {
        v18 = sub_1232EA0(v14);
        v19 = *(&v65 + 1);
        if (!*(&v65 + 1))
        {
          goto LABEL_41;
        }

        v20 = v18;
        v21 = vcnt_s8(*(&v65 + 8));
        v21.i16[0] = vaddlv_u8(v21);
        if (v21.u32[0] > 1uLL)
        {
          v22 = v18;
          if (v18 >= *(&v65 + 1))
          {
            v22 = v18 % *(&v65 + 1);
          }
        }

        else
        {
          v22 = (*(&v65 + 1) - 1) & v18;
        }

        v23 = *(v65 + 8 * v22);
        if (!v23 || (v24 = *v23) == 0)
        {
LABEL_41:
          sub_9D9E48(&v65, v14, v14);
          v28 = v12;
          v29 = v12 >> 3;
          if (((v12 >> 3) + 1) >> 61)
          {
            sub_1794();
          }

          if (v12 >> 3 != -1)
          {
            if (!(((v12 >> 3) + 1) >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          *(8 * v29) = *v14;
          v12 = 8 * v29 + 8;
          memcpy(0, 0, v28);
          v14 += 7;
          if (v14 != v13)
          {
            continue;
          }

          goto LABEL_7;
        }

        break;
      }

      if (v21.u32[0] < 2uLL)
      {
        v25 = *(&v65 + 1) - 1;
        while (1)
        {
          v27 = v24[1];
          if (v27 == v20)
          {
            if (sub_1232EBC((v24 + 2), v14))
            {
              goto LABEL_19;
            }
          }

          else if ((v27 & v25) != v22)
          {
            goto LABEL_41;
          }

          v24 = *v24;
          if (!v24)
          {
            goto LABEL_41;
          }
        }
      }

      while (1)
      {
        v26 = v24[1];
        if (v26 == v20)
        {
          break;
        }

        if (v26 >= v19)
        {
          v26 %= v19;
        }

        if (v26 != v22)
        {
          goto LABEL_41;
        }

LABEL_30:
        v24 = *v24;
        if (!v24)
        {
          goto LABEL_41;
        }
      }

      if (!sub_1232EBC((v24 + 2), v14))
      {
        goto LABEL_30;
      }

LABEL_19:
      v14 += 7;
      if (v14 != v13)
      {
        continue;
      }

      break;
    }

LABEL_7:
    v11 += 10;
    if (v11 != v49)
    {
      continue;
    }

    break;
  }

  if (!v12)
  {
    v5 = v47;
    goto LABEL_58;
  }

  v50 = 50331648;
  v51 = 0;
  if (v46)
  {
    v30 = v48;
  }

  else
  {
    v30 = -1;
  }

  v52 = 14;
  v53 = v30;
  v31 = sub_6E9A8();
  v32 = a2[1];
  v33 = (v32 - *a2) >> 3;
  *&v54 = *a2;
  v55 = v32;
  LODWORD(v56.__locale_) = 2;
  v57 = v33;
  __dst[0] = 0;
  __dst[1] = v12;
  v69 = 2;
  v71 = v12 >> 3;
  v34 = (*(*v31 + 48))(v31, &v54, __dst, &v50);
  v35 = v47;
  *&v54 = sub_12331FC();
  if (!HIDWORD(v34))
  {
    if ((atomic_load_explicit(&qword_2732FA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2732FA0))
    {
      qword_2732F98 = sub_12331FC();
      __cxa_guard_release(&qword_2732FA0);
      v35 = v47;
    }

    v36 = &qword_2732F98;
    if ((v34 & 0x80000000) == 0 && v34 < (v12 >> 3))
    {
      v36 = (8 * v34);
    }

    goto LABEL_66;
  }

  if (!v45 || (v48 & 0x80000000) != 0)
  {
    *v47 = 0;
    v47[1] = 0;
    v47[2] = 0;
    v42 = v66;
    if (!v66)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  if (v12 >> 3 <= v48)
  {
    sub_6FAB4();
  }

  v36 = (8 * v48);
LABEL_66:
  v54 = *v36;
  v38 = sub_1232E84(&v54);
  v39 = *(v38 + 8);
  if (v39 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v39 >= 0x17)
  {
    operator new();
  }

  v35[23] = v39;
  if (v39)
  {
    memcpy(v35, (v38 + 16 * (v39 > 7)), v39);
  }

  v35[v39] = 0;
  v42 = v66;
  if (v66)
  {
    do
    {
LABEL_88:
      v43 = *v42;
      operator delete(v42);
      v42 = v43;
    }

    while (v43);
  }

LABEL_89:
  v44 = v65;
  *&v65 = 0;
  if (v44)
  {
    operator delete(v44);
  }
}

void sub_9D64EC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2732FA0);
  sub_11BD8(v2 - 160);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_9D6590(uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 **a4@<X8>)
{
  if (*a2 == a2[1])
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  v6 = (a3 + 8);
  if (*(a3 + 16) - *(a3 + 8) >= 9uLL && sub_6DEAC(*a3))
  {
    v14 = 0uLL;
    v15 = 0;
    v8 = *(a3 + 8);
    for (i = *(a3 + 16); v8 != i; ++v8)
    {
      *&v12 = sub_1232F20(v8);
      if (*sub_1232E78(&v12) == 0x30000006E74614CLL)
      {
        operator new();
      }
    }

    sub_9D5328(a2, &v14, 1, 0, &v12);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v12;
    v17 = v13;
    if (v14)
    {
      *(&v14 + 1) = v14;
      operator delete(v14);
    }

    v10 = HIBYTE(v17);
    v11 = __p[1];
    if (v17 >= 0)
    {
      v11 = HIBYTE(v17);
    }

    if (v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v10 = 0;
  }

  sub_9D5328(a2, v6, 1, 1, &v14);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  *__p = v14;
  v17 = v15;
LABEL_21:
  sub_9D688C(a2, __p, a4);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_9D682C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14)
  {
    operator delete(a14);
    if (a22 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a22 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void sub_9D688C(uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    while (1)
    {
      sub_9D80E4(v4, a3, v16);
      v8 = v16[1];
      if (v17 >= 0)
      {
        v8 = HIBYTE(v17);
      }

      v9 = HIBYTE(v20);
      v10 = HIBYTE(v20);
      if (!v8)
      {
        goto LABEL_12;
      }

      if (v20 < 0)
      {
        v9 = *(&__p + 1);
      }

      if (!v9)
      {
        goto LABEL_12;
      }

      v11 = a4[1];
      if (v11 < a4[2])
      {
        break;
      }

      v14 = sub_9D98F8(a4, v16);
      v15 = HIBYTE(v20);
      a4[1] = v14;
      if ((v15 & 0x80) == 0)
      {
LABEL_13:
        if (SHIBYTE(v17) < 0)
        {
          goto LABEL_17;
        }

        goto LABEL_3;
      }

LABEL_16:
      operator delete(__p);
      if (SHIBYTE(v17) < 0)
      {
LABEL_17:
        operator delete(v16[0]);
      }

LABEL_3:
      v4 += 64;
      if (v4 == v5)
      {
        return;
      }
    }

    v10 = 0;
    v12 = *v16;
    *(v11 + 2) = v17;
    *v11 = v12;
    *(v11 + 24) = v18;
    v13 = __p;
    *(v11 + 6) = v20;
    v16[1] = 0;
    v17 = 0;
    v16[0] = 0;
    v11[2] = v13;
    v20 = 0;
    __p = 0uLL;
    a4[1] = (v11 + 56);
LABEL_12:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }
}

void sub_9D69C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_509680(va);
  sub_9354C4(v3);
  _Unwind_Resume(a1);
}

void sub_9D69F4(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v9[0] = sub_12331FC();
    if (sub_1232EE0(a2 + 32, v9))
    {
      if (*(a2 + 23) < 0)
      {
        sub_325C(v9, *a2, *(a2 + 8));
      }

      else
      {
        *v9 = *a2;
        v10 = *(a2 + 16);
      }

      v11 = *(a2 + 24);
      sub_39A3D8(&v12, (a2 + 40));
      memset(__p, 0, 24);
      __p[6] = __p;
      v8 = 0;
      operator new();
    }
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 24) = 2;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 32) = 0;
}

void sub_9D6D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
    sub_9354C4(va);
    _Unwind_Resume(a1);
  }

  sub_9354C4(va);
  _Unwind_Resume(a1);
}

void sub_9D6DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void ***);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  sub_9D8728(va1);
  sub_9D87E4(va);
  sub_395478(va2);
  _Unwind_Resume(a1);
}

void sub_9D6E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void ***);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  sub_9D87E4(va);
  sub_395478(va1);
  _Unwind_Resume(a1);
}

void sub_9D6E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x9D6E60);
}

void sub_9D6E68(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v9[0] = sub_12331FC();
    if (sub_1232EE0(a2 + 32, v9))
    {
      if (*(a2 + 23) < 0)
      {
        sub_325C(v9, *a2, *(a2 + 8));
      }

      else
      {
        *v9 = *a2;
        v10 = *(a2 + 16);
      }

      v11 = *(a2 + 24);
      sub_39A3D8(&v12, (a2 + 40));
      memset(v7, 0, 24);
      v7[6] = v7;
      v8 = 0;
      operator new();
    }
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 24) = 2;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 32) = 0;
}

void sub_9D722C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
    sub_9354C4(va);
    _Unwind_Resume(a1);
  }

  sub_9354C4(va);
  _Unwind_Resume(a1);
}

void sub_9D7264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_9D8728(&__p);
  sub_9D87E4(&a15);
  sub_395478(&a26);
  _Unwind_Resume(a1);
}

void sub_9D72DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void ***);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  sub_9D87E4(va);
  sub_395478(va1);
  _Unwind_Resume(a1);
}

void sub_9D72F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x9D7318);
}

void sub_9D7320(uint64_t a2@<X1>, _OWORD *a4@<X8>)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    __dst = sub_12331FC();
    if (sub_1232EE0(a2 + 48, &__dst))
    {
      sub_9D88D0(&__dst, a2);
      memset(v7, 0, 24);
      v7[6] = v7;
      v8 = 0;
      operator new();
    }
  }

  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
}

void sub_9D78A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (v32 < 0)
  {
    operator delete(v31);
    if ((a31 & 0x80) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a31 & 0x80) == 0)
  {
LABEL_3:
    if ((a17 & 0x80000000) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }

LABEL_7:
    operator delete(a12);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_9D79D4(void x0_0, char **a1)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_943AEC(&v12, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4));
  v5 = *a1;
  v6 = a1[1];
  while (1)
  {
    if (v5 == v6)
    {
      __p[0] = 0;
      __p[1] = 0;
      v11 = 0;
      operator new();
    }

    if ((v5[39] & 0x8000000000000000) != 0)
    {
      if (!*(v5 + 3))
      {
        goto LABEL_4;
      }
    }

    else if (!v5[39])
    {
      goto LABEL_4;
    }

    __p[0] = sub_12331FC();
    if (sub_1232EE0((v5 + 48), __p))
    {
      v8 = v13;
      if (v13 >= v14)
      {
        v7 = sub_9D9224(&v12, (v5 + 16));
      }

      else
      {
        if (v5[39] < 0)
        {
          sub_325C(v13, *(v5 + 2), *(v5 + 3));
        }

        else
        {
          v9 = *(v5 + 1);
          *(v13 + 2) = *(v5 + 4);
          *v8 = v9;
        }

        *(v8 + 24) = *(v5 + 40);
        sub_39A3D8(v8 + 5, v5 + 7);
        v7 = v8 + 64;
      }

      v13 = v7;
    }

LABEL_4:
    v5 += 80;
  }
}

void sub_9D7E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void **a23, uint64_t a24)
{
  if (*(v26 + 31) < 0)
  {
    operator delete(*v25);
  }

  *(v24 + 8) = v26;
  sub_509680(&a10);
  sub_9D84E8(v24);
  if (a22 < 0)
  {
    operator delete(__p);
    sub_941AEC(&a23);
    _Unwind_Resume(a1);
  }

  sub_941AEC(&a23);
  _Unwind_Resume(a1);
}

void sub_9D7F88(uint64_t *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 6)
  {
    if (!(a2 >> 58))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_9D80E4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = sub_1232E84((a1 + 32));
  v6 = *(v5 + 8);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  v33 = *(v5 + 8);
  if (v6)
  {
    memcpy(__dst, (v5 + 16 * (v6 > 7)), v6);
  }

  *(__dst + v6) = 0;
  if ((v33 & 0x80u) == 0)
  {
    v7 = v33;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = *(a2 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v7 == v8)
  {
    v10 = (v33 & 0x80u) == 0 ? __dst : __dst[0];
    v11 = v9 >= 0 ? a2 : *a2;
    if (!memcmp(v10, v11, v7))
    {
      v24 = *(a1 + 24);
      if (*(a1 + 23) < 0)
      {
        sub_325C(a3, *a1, *(a1 + 8));
        v27 = *(a2 + 23);
        *(a3 + 24) = v24;
        if ((v27 & 0x80) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        *a3 = *a1;
        *(a3 + 16) = *(a1 + 16);
        *(a3 + 24) = v24;
        if ((v9 & 0x80) == 0)
        {
LABEL_52:
          *(a3 + 32) = *a2;
          *(a3 + 48) = *(a2 + 16);
          goto LABEL_46;
        }
      }

      sub_325C((a3 + 32), *a2, *(a2 + 8));
      goto LABEL_46;
    }
  }

  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  while (1)
  {
    if (v13 == v12)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 24) = 2;
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      *(a3 + 32) = 0;
      goto LABEL_46;
    }

    v14 = sub_1232E84(v13);
    v15 = *(v14 + 8);
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v31 = *(v14 + 8);
    if (v15)
    {
      memcpy(__p, (v14 + 16 * (v15 > 7)), v15);
    }

    *(__p + v15) = 0;
    v16 = v31;
    if ((v31 & 0x80u) == 0)
    {
      v17 = v31;
    }

    else
    {
      v17 = __p[1];
    }

    v18 = *(a2 + 23);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a2 + 8);
    }

    if (v17 == v18)
    {
      v20 = __p[0];
      v21 = (v31 & 0x80u) == 0 ? __p : __p[0];
      v22 = v19 >= 0 ? a2 : *a2;
      if (!memcmp(v21, v22, v17))
      {
        break;
      }
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v13 += 32;
  }

  v25 = *(a1 + 24);
  if (*(v13 + 31) < 0)
  {
    sub_325C(a3, *(v13 + 8), *(v13 + 16));
    v28 = *(a2 + 23);
    *(a3 + 24) = v25;
    if ((v28 & 0x80) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v26 = *(v13 + 8);
    *(a3 + 16) = *(v13 + 24);
    *a3 = v26;
    *(a3 + 24) = v25;
    if ((v19 & 0x80) == 0)
    {
LABEL_55:
      *(a3 + 32) = *a2;
      *(a3 + 48) = *(a2 + 16);
      goto LABEL_60;
    }
  }

  sub_325C((a3 + 32), *a2, *(a2 + 8));
LABEL_60:
  if (v16 < 0)
  {
    operator delete(v20);
  }

LABEL_46:
  if (v33 < 0)
  {
    v23 = __dst[0];

    operator delete(v23);
  }
}