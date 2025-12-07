void sub_DA3104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  *(v24 + 32) = v25;
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      sub_9DA0(v24);
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  sub_9DA0(v24);
  _Unwind_Resume(a1);
}

void sub_DA3A6C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  a2[5] = 0;
  *(a2 + 3) = 0u;
  v4 = (a2 + 3);
  *(a2 + 23) = 13;
  qmemcpy(a2, "EVPathFinding", 13);
  __p.__r_.__value_.__s.__data_[0] = 1;
  v5 = sub_D0ACE4(a2 + 3, "Runtime", &__p, (a1 + 8));
  v6 = v5;
  v7 = a2[5];
  a2[4] = v5;
  __p.__r_.__value_.__s.__data_[0] = 1;
  if (v5 >= v7)
  {
    v8 = sub_D0C200(v4, "ChargingStationSearch.Runtime", &__p, (a1 + 16));
    a2[4] = v8;
    v9 = (a1 + 24);
    if (*(a1 + 24))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_D0C3B4(v5, "ChargingStationSearch.Runtime", &__p, (a1 + 16));
    v8 = v6 + 48;
    a2[4] = v8;
    v9 = (a1 + 24);
    if (*(a1 + 24))
    {
LABEL_3:
      __p.__r_.__value_.__s.__data_[0] = 4;
      if (v8 < a2[5])
      {
        sub_DA9B94(v8, "FoundChargingStations", &__p, v9);
        goto LABEL_8;
      }

      v12 = sub_DA99E0(v4, "FoundChargingStations", &__p, v9);
LABEL_14:
      v10 = v12;
      a2[4] = v12;
      v11 = (a1 + 40);
      if (*(a1 + 40))
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  v36[0] = 4;
  LODWORD(__p.__r_.__value_.__l.__data_) = 1;
  if (v8 >= a2[5])
  {
    v12 = sub_DA9CE4(v4, "NoFoundChargingStations", v36, &__p);
    goto LABEL_14;
  }

  sub_DA9E98(v8, "NoFoundChargingStations", v36, &__p);
LABEL_8:
  v10 = v8 + 48;
  a2[4] = v10;
  v11 = (a1 + 40);
  if (*(a1 + 40))
  {
LABEL_9:
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v10 < a2[5])
    {
      sub_DAA19C(v10, "PathGraphChargingStations", &__p, v11);
      goto LABEL_17;
    }

    v13 = sub_DA9FE8(v4, "PathGraphChargingStations", &__p, v11);
    goto LABEL_26;
  }

LABEL_15:
  v36[0] = 4;
  LODWORD(__p.__r_.__value_.__l.__data_) = 1;
  if (v10 < a2[5])
  {
    sub_DAA4A0(v10, "NoPathGraphChargingStations", v36, &__p);
LABEL_17:
    v14 = v10 + 48;
    a2[4] = v14;
    __p.__r_.__value_.__s.__data_[0] = 1;
    if (v14 >= a2[5])
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  v13 = sub_DAA2EC(v4, "NoPathGraphChargingStations", v36, &__p);
LABEL_26:
  v14 = v13;
  a2[4] = v13;
  __p.__r_.__value_.__s.__data_[0] = 1;
  if (v13 >= a2[5])
  {
LABEL_18:
    v15 = sub_D0C200(v4, "PathGraphAugmentation.Runtime", &__p, (a1 + 32));
    a2[4] = v15;
    __p.__r_.__value_.__s.__data_[0] = 1;
    if (v15 >= a2[5])
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_D0C3B4(v14, "PathGraphAugmentation.Runtime", &__p, (a1 + 32));
  v15 = v14 + 48;
  a2[4] = v15;
  __p.__r_.__value_.__s.__data_[0] = 1;
  if (v15 >= a2[5])
  {
LABEL_19:
    v16 = sub_D0BEFC(v4, "BuildShortcutGraph.Runtime", &__p, (a1 + 48));
    a2[4] = v16;
    __p.__r_.__value_.__s.__data_[0] = 1;
    if (v16 >= a2[5])
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_D0C0B0(v15, "BuildShortcutGraph.Runtime", &__p, (a1 + 48));
  v16 = v15 + 48;
  a2[4] = v16;
  __p.__r_.__value_.__s.__data_[0] = 1;
  if (v16 >= a2[5])
  {
LABEL_20:
    v17 = sub_389CC8(v4, "SearchInitialization.Runtime", &__p, (a1 + 56));
    a2[4] = v17;
    __p.__r_.__value_.__s.__data_[0] = 1;
    if (v17 >= a2[5])
    {
      goto LABEL_21;
    }

LABEL_30:
    sub_389570(v17, "ChargingFunctionPropagation.Runtime", &__p, (a1 + 64));
    v18 = v17 + 48;
    a2[4] = v18;
    v19 = (a1 + 104);
    if (*(a1 + 104))
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

LABEL_29:
  sub_389E7C(v16, "SearchInitialization.Runtime", &__p, (a1 + 56));
  v17 = v16 + 48;
  a2[4] = v17;
  __p.__r_.__value_.__s.__data_[0] = 1;
  if (v17 < a2[5])
  {
    goto LABEL_30;
  }

LABEL_21:
  v18 = sub_3893BC(v4, "ChargingFunctionPropagation.Runtime", &__p, (a1 + 64));
  a2[4] = v18;
  v19 = (a1 + 104);
  if (*(a1 + 104))
  {
LABEL_22:
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v18 < a2[5])
    {
      sub_DA5030(v18, "PathCandidates", &__p, v19);
      goto LABEL_43;
    }

    v20 = sub_DA4E7C(v4, "PathCandidates", &__p, v19);
    goto LABEL_46;
  }

LABEL_31:
  v36[0] = 4;
  LODWORD(__p.__r_.__value_.__l.__data_) = 1;
  if (v18 >= a2[5])
  {
    v18 = sub_DAA5F0(v4, "NoPath", v36, &__p);
    a2[4] = v18;
    if (*a1 < 0x33u)
    {
LABEL_33:
      __p.__r_.__value_.__s.__data_[0] = 4;
      if (v18 >= a2[5])
      {
        goto LABEL_47;
      }

      goto LABEL_34;
    }
  }

  else
  {
    sub_DAA7A4(v18, "NoPath", v36, &__p);
    v18 += 48;
    a2[4] = v18;
    if (*a1 < 0x33u)
    {
      goto LABEL_33;
    }
  }

  v36[0] = 4;
  LODWORD(__p.__r_.__value_.__l.__data_) = 1;
  if (v18 >= a2[5])
  {
    v20 = sub_D799AC(v4, "NoPath.HighInitialSoC", v36, &__p);
LABEL_46:
    v18 = v20;
    a2[4] = v20;
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v20 >= a2[5])
    {
      goto LABEL_47;
    }

LABEL_34:
    sub_DAAAA8(v18, "PathGraph.AddedNodes", &__p, (a1 + 80));
    v21 = v18 + 48;
    a2[4] = v21;
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v21 < a2[5])
    {
      goto LABEL_48;
    }

LABEL_35:
    v22 = sub_DAA8F4(v4, "PathGraph.AddedEdges", &__p, (a1 + 84));
    a2[4] = v22;
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v22 < a2[5])
    {
      goto LABEL_49;
    }

LABEL_36:
    v23 = sub_D0AFE8(v4, "ShortcutGraph.Nodes", &__p, (a1 + 88));
    a2[4] = v23;
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v23 < a2[5])
    {
      goto LABEL_50;
    }

LABEL_37:
    v24 = sub_D0AFE8(v4, "ShortcutGraph.Edges", &__p, (a1 + 96));
    a2[4] = v24;
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v24 < a2[5])
    {
      goto LABEL_51;
    }

    goto LABEL_38;
  }

  sub_D79B60(v18, "NoPath.HighInitialSoC", v36, &__p);
LABEL_43:
  v18 += 48;
  a2[4] = v18;
  __p.__r_.__value_.__s.__data_[0] = 4;
  if (v18 < a2[5])
  {
    goto LABEL_34;
  }

LABEL_47:
  v21 = sub_DAA8F4(v4, "PathGraph.AddedNodes", &__p, (a1 + 80));
  a2[4] = v21;
  __p.__r_.__value_.__s.__data_[0] = 4;
  if (v21 >= a2[5])
  {
    goto LABEL_35;
  }

LABEL_48:
  sub_DAAAA8(v21, "PathGraph.AddedEdges", &__p, (a1 + 84));
  v22 = v21 + 48;
  a2[4] = v22;
  __p.__r_.__value_.__s.__data_[0] = 4;
  if (v22 >= a2[5])
  {
    goto LABEL_36;
  }

LABEL_49:
  sub_D0B19C(v22, "ShortcutGraph.Nodes", &__p, (a1 + 88));
  v23 = v22 + 48;
  a2[4] = v23;
  __p.__r_.__value_.__s.__data_[0] = 4;
  if (v23 >= a2[5])
  {
    goto LABEL_37;
  }

LABEL_50:
  sub_D0B19C(v23, "ShortcutGraph.Edges", &__p, (a1 + 96));
  v24 = v23 + 48;
  a2[4] = v24;
  __p.__r_.__value_.__s.__data_[0] = 4;
  if (v24 < a2[5])
  {
LABEL_51:
    sub_DAADAC(v24, "ChargingFunctionPropagation.TargetLabels", &__p, (a1 + 72));
    v25 = v24 + 48;
    a2[4] = v24 + 48;
    v26 = a2[3];
    if (v26 == v24 + 48)
    {
      return;
    }

    goto LABEL_54;
  }

LABEL_38:
  v25 = sub_DAABF8(v4, "ChargingFunctionPropagation.TargetLabels", &__p, (a1 + 72));
  a2[4] = v25;
  v26 = a2[3];
  if (v26 == v25)
  {
    return;
  }

  do
  {
LABEL_54:
    if (*(a2 + 23) >= 0)
    {
      v27 = *(a2 + 23);
    }

    else
    {
      v27 = a2[1];
    }

    if (v27 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v27 + 1 >= 0x17)
    {
      operator new();
    }

    memset(&__p, 0, sizeof(__p));
    *(&__p.__r_.__value_.__s + 23) = v27 + 1;
    if (v27)
    {
      if (*(a2 + 23) >= 0)
      {
        v28 = a2;
      }

      else
      {
        v28 = *a2;
      }

      memmove(&__p, v28, v27);
    }

    *(&__p.__r_.__value_.__l.__data_ + v27) = 46;
    v29 = *(v26 + 23);
    if (v29 >= 0)
    {
      v30 = v26;
    }

    else
    {
      v30 = *v26;
    }

    if (v29 >= 0)
    {
      v31 = *(v26 + 23);
    }

    else
    {
      v31 = *(v26 + 8);
    }

    v32 = std::string::append(&__p, v30, v31);
    v33 = v32->__r_.__value_.__r.__words[0];
    *v36 = v32->__r_.__value_.__l.__size_;
    *&v36[7] = *(&v32->__r_.__value_.__r.__words[1] + 7);
    v34 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    if (*(v26 + 23) < 0)
    {
      operator delete(*v26);
    }

    *v26 = v33;
    *(v26 + 8) = *v36;
    *(v26 + 15) = *&v36[7];
    *(v26 + 23) = v34;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v26 += 48;
  }

  while (v26 != v25);
}

void sub_DA4358(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4384(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA43B0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA43DC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4408(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4434(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4460(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4478(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA44A4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA44D0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA44FC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA453C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4554(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4580(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA45AC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA45D8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4618(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_9DA0(v14);
    _Unwind_Resume(a1);
  }

  sub_9DA0(v14);
  _Unwind_Resume(a1);
}

unint64_t sub_DA4690(__int128 **a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v4)
  {
    v4 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (a1[1] - *a1);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = *a1 + v10 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 3;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_DA4860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA4874(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA4A28(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA4A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA4A28(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA4B78(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA4D2C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA4D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA4D2C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA4E7C(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA5030(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA501C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA5030(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA5180(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA5334(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA5320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA5334(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA5484(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA5638(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA5624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA5638(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA5788(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA593C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA5928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA593C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA5A8C(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA5C40(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA5C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA5C40(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA5D90(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA5F44(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA5F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA5F44(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA6094(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA6248(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA6234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA6248(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA6398(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA654C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA6538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA654C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA669C(__int128 **a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA6850(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA683C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA6850(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA69A0(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA6B54(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA6B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA6B54(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA6CA4(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA6E58(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA6E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA6E58(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA6FA8(__int128 **a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA715C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA7148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA715C(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA72AC(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA7460(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA744C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA7460(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA75B0(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA7764(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA7750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA7764(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA78B4(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA7A68(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA7A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA7A68(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA7BB8(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA7D6C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA7D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA7D6C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA7EBC(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA8070(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA805C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA8070(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA81C0(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA8374(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA8360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA8374(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA84C4(__int128 **a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA8678(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA8664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA8678(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA87C8(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA897C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA8968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA897C(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA8ACC(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA8C80(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA8C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA8C80(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA8DD0(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA8F84(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA8F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA8F84(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA90D4(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA9288(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA9274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA9288(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA93D8(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA958C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA9578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA958C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA96DC(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA9890(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA987C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA9890(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA99E0(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA9B94(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA9B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA9B94(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA9CE4(__int128 **a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DA9E98(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DA9E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA9E98(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA9FE8(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DAA19C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DAA188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAA19C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAA2EC(__int128 **a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DAA4A0(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DAA48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAA4A0(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAA5F0(__int128 **a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DAA7A4(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DAA790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAA7A4(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAA8F4(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DAAAA8(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DAAA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAAAA8(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAABF8(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DAADAC(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DAAD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAADAC(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAAEFC(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 88);
    v5 = *(a1 + 80);
    if (v4 != v3)
    {
      v6 = *(a1 + 88);
      do
      {
        v8 = *(v6 - 40);
        v6 -= 40;
        v7 = v8;
        if (v8)
        {
          *(v4 - 32) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = *(a1 + 80);
    }

    *(a1 + 88) = v3;
    operator delete(v5);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 56);
    if (v10 != v9)
    {
      v12 = *(a1 + 64);
      do
      {
        v14 = *(v12 - 32);
        v12 -= 32;
        v13 = v14;
        if (v14)
        {
          *(v10 - 24) = v13;
          operator delete(v13);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = *(a1 + 56);
    }

    *(a1 + 64) = v9;
    operator delete(v11);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(a1 + 40);
    v17 = *(a1 + 32);
    if (v16 != v15)
    {
      v18 = *(a1 + 40);
      do
      {
        v20 = *(v18 - 32);
        v18 -= 32;
        v19 = v20;
        if (v20)
        {
          *(v16 - 24) = v19;
          operator delete(v19);
        }

        v16 = v18;
      }

      while (v18 != v15);
      v17 = *(a1 + 32);
    }

    *(a1 + 40) = v15;
    operator delete(v17);
  }

  v21 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v21;
    operator delete(v21);
  }

  return a1;
}

uint64_t sub_DAB02C(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = (a1 + 8);
      if (*(a1 + 8))
      {
        sub_D7260C((a1 + 8));
        operator delete(*v4);
        *v4 = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v5 = (a1 + 32);
      if (*(a1 + 32))
      {
        sub_D714EC((a1 + 32));
        operator delete(*v5);
        *v5 = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      v6 = *(a2 + 56);
      *(a1 + 68) = *(a2 + 68);
LABEL_25:
      *(a1 + 56) = v6;
      goto LABEL_26;
    }

    v10 = (a1 + 32);
    v11 = (a1 + 8);
    if (*(a1 + 32))
    {
      sub_D714EC((a1 + 32));
      operator delete(*v10);
    }

    if (*v11)
    {
      sub_D7260C((a1 + 8));
      operator delete(*v11);
    }

    *v11 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v7 = *(a1 + 24);
      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 24);
        if (v8 != v7)
        {
          do
          {
            if (*(v8 - 1) < 0)
            {
              operator delete(*(v8 - 24));
            }

            v8 -= 32;
          }

          while (v8 != v7);
          v9 = *(a1 + 24);
        }

        *(a1 + 32) = v7;
        operator delete(v9);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      v6 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_25;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_26:
  *a1 = *a2;
  return a1;
}

uint64_t sub_DAB214(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_DAB314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  strcpy(a2, "DrivingETAModule");
  *(a2 + 23) = 16;
  v14 = 1;
  v13 = 0;
  v4 = sub_D7A03C((a2 + 24), "Runtime", &v14, a1, &v13);
  v5 = v4;
  v6 = *(a2 + 40);
  *(a2 + 32) = v4;
  v12 = 4;
  if (v4 < v6)
  {
    sub_DAB708(v4, "SegmentsWithoutHSP", &v12, (a1 + 8));
    v7 = v5 + 48;
    *(a2 + 32) = v7;
    v11 = 4;
    if (v7 >= *(a2 + 40))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_DABA0C(v7, "PathsWithoutLiveSpeedsCoverage", &v11, (a1 + 16));
    v8 = v7 + 48;
    *(a2 + 32) = v8;
    v10 = 5;
    if (v8 >= *(a2 + 40))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = sub_DAB554((a2 + 24), "SegmentsWithoutHSP", &v12, (a1 + 8));
  *(a2 + 32) = v7;
  v11 = 4;
  if (v7 < *(a2 + 40))
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = sub_DAB858((a2 + 24), "PathsWithoutLiveSpeedsCoverage", &v11, (a1 + 16));
  *(a2 + 32) = v8;
  v10 = 5;
  if (v8 >= *(a2 + 40))
  {
LABEL_4:
    result = sub_DABB5C((a2 + 24), "LiveSpeedsCoverage", &v10, (a1 + 24));
    *(a2 + 32) = result;
    return result;
  }

LABEL_7:
  sub_DABD10(v8, "LiveSpeedsCoverage", &v10, (a1 + 24));
  result = v8 + 48;
  *(a2 + 32) = v8 + 48;
  return result;
}

void sub_DAB4E4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DAB554(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DAB708(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DAB6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAB708(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAB858(__int128 **a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DABA0C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DAB9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DABA0C(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DABB5C(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DABD10(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DABCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DABD10(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DABE60(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_DABF60(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_DAC060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = sub_E7A3D0(a2);
  *(a1 + 4) = sub_E89098(a2);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_3ECFD8(a1 + 8, *a7, *(a7 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a7 + 8) - *a7) >> 4));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_3ED39C(a1 + 32, *(a7 + 24), *(a7 + 32), 0xE21A291C077975B9 * ((*(a7 + 32) - *(a7 + 24)) >> 3));
  v17 = *(a7 + 48);
  v18 = *(a7 + 64);
  v19 = *(a7 + 80);
  *(a1 + 102) = *(a7 + 94);
  *(a1 + 88) = v19;
  *(a1 + 72) = v18;
  *(a1 + 56) = v17;
  if (*(a7 + 127) < 0)
  {
    sub_325C((a1 + 112), *(a7 + 104), *(a7 + 112));
  }

  else
  {
    v20 = *(a7 + 104);
    *(a1 + 128) = *(a7 + 120);
    *(a1 + 112) = v20;
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_3ECFD8(a1 + 136, *a8, *(a8 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a8 + 8) - *a8) >> 4));
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  sub_3ED39C(a1 + 160, *(a8 + 24), *(a8 + 32), 0xE21A291C077975B9 * ((*(a8 + 32) - *(a8 + 24)) >> 3));
  v21 = *(a8 + 48);
  v22 = *(a8 + 64);
  v23 = *(a8 + 80);
  *(a1 + 230) = *(a8 + 94);
  *(a1 + 216) = v23;
  *(a1 + 200) = v22;
  *(a1 + 184) = v21;
  if (*(a8 + 127) < 0)
  {
    sub_325C((a1 + 240), *(a8 + 104), *(a8 + 112));
  }

  else
  {
    v24 = *(a8 + 104);
    *(a1 + 256) = *(a8 + 120);
    *(a1 + 240) = v24;
  }

  *(a1 + 264) = a10;
  *(a1 + 272) = a11;
  *(a1 + 280) = a4;
  *(a1 + 288) = a5;
  *(a1 + 296) = a6;
  *(a1 + 304) = sub_FF3C1C(a2, a9, 1);
  sub_DAC3F0(a2, a9, a1 + 8, a8, a3, *(a1 + 272), a10, a1 + 312);
  *(a1 + 656) = sub_E7A124(a2);
  *(a1 + 664) = v25;
  *(a1 + 668) = sub_E7A738(a2);
  *(a1 + 669) = sub_44F320(*(a1 + 328));
  *(a1 + 672) = a3;
  nullsub_1();
  v27 = v26;
  if (!sub_4C49D0(a1 + 8) && *(v27 + 128) == 1 && (sub_4F96B8(v27) | 4) == 6)
  {
    sub_4C515C(a1 + 8, 2);
  }

  if ((sub_4C5074(a1 + 136, 3) & 1) != 0 || (sub_4C50D8(a1 + 136, 9) & 1) != 0 || (sub_4C5074(a1 + 136, 1) & 1) != 0 || (sub_4C50D8(a1 + 136, 12) & 1) != 0 || sub_4C50D8(a1 + 136, 8))
  {
    sub_4C515C(a1 + 136, 7);
  }

  return a1;
}

void sub_DAC338(_Unwind_Exception *a1)
{
  sub_DACA48((v2 + 312));
  sub_419F70(v3);
  sub_419F70(v1);
  _Unwind_Resume(a1);
}

void sub_DAC3F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = sub_6EECC();
  v12 = sub_E7A428(a1);
  v13 = sub_E7A58C(a1);
  v14 = sub_E7A5E0(a1);
  nullsub_1();
  if (*(v15 + 128) == 1)
  {
    nullsub_1();
    v17 = sub_4F96C8(v16);
  }

  else
  {
    v17 = 0;
  }

  v61 = sub_E7A124(a1);
  v62 = v18;
  v19 = sub_3B6890(a7);
  v20 = *(v19 + 4);
  v21 = *(v19 + 8);
  sub_E80194(a1, v57);
  v55[0] = 0;
  v55[1] = 0;
  v56 = 0;
  if (!v21)
  {
    v22 = *a5;
    v23 = a5[1];
    if (*a5 != v23)
    {
      while (*(v22 + 176) == 1)
      {
        v22 += 440;
        if (v22 == v23)
        {
          goto LABEL_11;
        }
      }
    }

    if (v22 == v23)
    {
LABEL_11:
      v46[0] = 0;
      v46[1] = 0;
      v47 = 0;
    }

    else
    {
      *v46 = *(v22 + 288);
      v47 = *(v22 + 304);
    }

    HIBYTE(v54) = 15;
    strcpy(v53, "RerouteCategory");
    memset(__p, 0, 24);
    v24 = sub_3AEC94(a7, v53, __p);
    sub_4EB344(&v48, v24);
    v25 = sub_4EB3E0(v57, &v48);
    v26 = __p[0];
    if (__p[0])
    {
      v27 = __p[1];
      v28 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v29 = *(v27 - 1);
          v27 -= 3;
          if (v29 < 0)
          {
            operator delete(*v27);
          }
        }

        while (v27 != v26);
        v28 = __p[0];
      }

      __p[1] = v26;
      operator delete(v28);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53[0]);
    }

    strcpy(__p, "FilteredRerouteHistory");
    HIBYTE(__p[2]) = 22;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v30 = sub_3AEC94(a7, __p, &v48);
    sub_4EAA24(v51, v30);
    sub_4EAA28(a6, v46, v20, v14, v25, v51, v53);
    v31 = v48;
    *v55 = *v53;
    v56 = v54;
    v53[1] = 0;
    v54 = 0;
    v53[0] = 0;
    if (v48)
    {
      v32 = v49;
      v33 = v48;
      if (v49 != v48)
      {
        do
        {
          v34 = *(v32 - 1);
          v32 -= 3;
          if (v34 < 0)
          {
            operator delete(*v32);
          }
        }

        while (v32 != v31);
        v33 = v48;
      }

      v49 = v31;
      operator delete(v33);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v53[0] = sub_4EF368(a6);
  LODWORD(v53[1]) = v35;
  sub_4ED880(a6, v46);
  v36 = sub_4EF5DC(a6);
  v37 = sub_4EF360(a6);
  sub_DAC7F8(a8, a3, a4, a2, v41, v12, v13, v14, v17, &v61, v55, v57, v53, v46, v36, v37);
  v38 = v46[1];
  if (v46[1])
  {
    v39 = v47;
    v40 = v46[1];
    if (v47 != v46[1])
    {
      do
      {
        v39 -= 72;
        sub_3E4690(v39);
      }

      while (v39 != v38);
      v40 = v46[1];
    }

    v47 = v38;
    operator delete(v40);
  }

  if (v55[0])
  {
    v55[1] = v55[0];
    operator delete(v55[0]);
  }

  if (v60)
  {
    operator delete(v60);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void sub_DAC784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_44D36C(&a48);
  _Unwind_Resume(a1);
}

uint64_t sub_DAC7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, char a7, char a8, char a9, uint64_t *a10, void *a11, __int128 *a12, uint64_t *a13, uint64_t a14, __int128 **a15, __int128 *a16)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 28) = a6;
  *(a1 + 29) = a7;
  *(a1 + 30) = a8;
  *(a1 + 31) = a9;
  v17 = *a10;
  v18 = *(a10 + 2);
  *(a1 + 48) = 0;
  *(a1 + 40) = v18;
  *(a1 + 32) = v17;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v19 = a11[1];
  if (v19 != *a11)
  {
    if (((v19 - *a11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v20 = a12[2];
  v21 = a12[3];
  v22 = *(a12 + 63);
  v24 = *a12;
  v23 = a12[1];
  *(a1 + 144) = 0;
  *(a1 + 72) = v24;
  *(a1 + 135) = v22;
  *(a1 + 120) = v21;
  *(a1 + 104) = v20;
  *(a1 + 88) = v23;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v26 = *(a12 + 9);
  v25 = *(a12 + 10);
  if (v25 != v26)
  {
    if (((v25 - v26) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v27 = a12[6];
  *(a1 + 184) = *(a12 + 112);
  *(a1 + 168) = v27;
  v28 = *(a12 + 136);
  *(a1 + 192) = *(a12 + 120);
  *(a1 + 208) = v28;
  sub_81988((a1 + 224), a12 + 152);
  v29 = *a13;
  *(a1 + 256) = *(a13 + 2);
  *(a1 + 248) = v29;
  *(a1 + 264) = *a14;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  sub_D3785C(a1 + 272, *(a14 + 8), *(a14 + 16), 0x8E38E38E38E38E39 * ((*(a14 + 16) - *(a14 + 8)) >> 3));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  sub_4F1814(a1 + 296, *a15, a15[1], 0xCCCCCCCCCCCCCCCDLL * (a15[1] - *a15));
  v30 = *a16;
  *(a1 + 336) = *(a16 + 2);
  *(a1 + 320) = v30;
  return a1;
}

void sub_DAC9F0(_Unwind_Exception *a1)
{
  sub_4F3AA4(v1 + 264);
  sub_44D36C((v3 - 72));
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void *sub_DACA48(void *a1)
{
  v2 = a1[37];
  if (v2)
  {
    v3 = a1[38];
    v4 = a1[37];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 6);
        if (v5)
        {
          *(v3 - 5) = v5;
          operator delete(v5);
        }

        v6 = v3 - 10;
        if (*(v3 - 57) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 10;
      }

      while (v6 != v2);
      v4 = a1[37];
    }

    a1[38] = v2;
    operator delete(v4);
  }

  v7 = a1[34];
  if (v7)
  {
    v8 = a1[35];
    v9 = a1[34];
    if (v8 != v7)
    {
      do
      {
        v8 -= 72;
        sub_3E4690(v8);
      }

      while (v8 != v7);
      v9 = a1[34];
    }

    a1[35] = v7;
    operator delete(v9);
  }

  v10 = a1[28];
  if (v10)
  {
    operator delete(v10);
  }

  v11 = a1[18];
  if (v11)
  {
    a1[19] = v11;
    operator delete(v11);
  }

  v12 = a1[6];
  if (v12)
  {
    a1[7] = v12;
    operator delete(v12);
  }

  return a1;
}

uint64_t sub_DACB34(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

unint64_t sub_DACC34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingRouteSelectionModule", 0x1BuLL);
  v13 = 1;
  v12 = 0;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    v5 = sub_D7A03C(a2 + 3, "Runtime", &v13, a1, &v12);
    a2[4] = v5;
    LOBYTE(v12) = 4;
    if (v5 >= a2[5])
    {
LABEL_3:
      v6 = sub_D0DD24(a2 + 3, "LiveTrafficRoute", &v12, (a1 + 8));
      a2[4] = v6;
      LOBYTE(v12) = 4;
      if (v6 >= a2[5])
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_D7A200(a2[4], "Runtime", &v13, a1, &v12);
    v5 = v4 + 48;
    a2[4] = v5;
    LOBYTE(v12) = 4;
    if (v5 >= a2[5])
    {
      goto LABEL_3;
    }
  }

  sub_D0DED8(v5, "LiveTrafficRoute", &v12, (a1 + 8));
  v6 = v5 + 48;
  a2[4] = v6;
  LOBYTE(v12) = 4;
  if (v6 >= a2[5])
  {
LABEL_4:
    result = sub_DAD1CC(a2 + 3, "Routes", &v12, (a1 + 12));
    v8 = result;
    a2[4] = result;
    v9 = (a1 + 16);
    if (!*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = sub_DAD380(v6, "Routes", &v12, (a1 + 12));
  v8 = v6 + 48;
  a2[4] = v8;
  v9 = (a1 + 16);
  if (!*(a1 + 16))
  {
LABEL_5:
    v10 = (a1 + 20);
    if (!*(a1 + 20))
    {
      goto LABEL_6;
    }

LABEL_18:
    v13 = 4;
    v12 = 0;
    if (v8 >= a2[5])
    {
      result = sub_DAD7E8(a2 + 3, "ClosuresOnUserRoute", &v13, v10, &v12);
      v8 = result;
      a2[4] = result;
      if (*(a1 + 24) == 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = sub_DAD9AC(v8, "ClosuresOnUserRoute", &v13, v10, &v12);
      v8 += 48;
      a2[4] = v8;
      if (*(a1 + 24) == 1)
      {
        goto LABEL_22;
      }
    }

LABEL_7:
    v11 = (a1 + 28);
    if (!*(a1 + 28))
    {
      goto LABEL_8;
    }

LABEL_26:
    LOBYTE(v12) = 4;
    if (v8 >= a2[5])
    {
      result = sub_DA99E0(a2 + 3, "NumSoftClosureDetours", &v12, v11);
      v8 = result;
      a2[4] = result;
      if (*(a1 + 32) == 1)
      {
        goto LABEL_30;
      }
    }

    else
    {
      result = sub_DA9B94(v8, "NumSoftClosureDetours", &v12, v11);
      v8 += 48;
      a2[4] = v8;
      if (*(a1 + 32) == 1)
      {
        goto LABEL_30;
      }
    }

LABEL_9:
    if (*(a1 + 33) != 1)
    {
      return result;
    }

    goto LABEL_34;
  }

LABEL_14:
  v13 = 4;
  v12 = 0;
  if (v8 >= a2[5])
  {
    result = sub_DAD4D0(a2 + 3, "ClosureReroutes", &v13, v9, &v12);
    v8 = result;
    a2[4] = result;
    v10 = (a1 + 20);
    if (*(a1 + 20))
    {
      goto LABEL_18;
    }
  }

  else
  {
    result = sub_DAD694(v8, "ClosureReroutes", &v13, v9, &v12);
    v8 += 48;
    a2[4] = v8;
    v10 = (a1 + 20);
    if (*(a1 + 20))
    {
      goto LABEL_18;
    }
  }

LABEL_6:
  if (*(a1 + 24) != 1)
  {
    goto LABEL_7;
  }

LABEL_22:
  LOBYTE(v12) = 4;
  v13 = 1;
  if (v8 >= a2[5])
  {
    result = sub_DADB00(a2 + 3, "AllCandidatesSoftClosed", &v12, &v13);
    v8 = result;
    a2[4] = result;
    v11 = (a1 + 28);
    if (*(a1 + 28))
    {
      goto LABEL_26;
    }
  }

  else
  {
    result = sub_DADCB4(v8, "AllCandidatesSoftClosed", &v12, &v13);
    v8 += 48;
    a2[4] = v8;
    v11 = (a1 + 28);
    if (*(a1 + 28))
    {
      goto LABEL_26;
    }
  }

LABEL_8:
  if (*(a1 + 32) != 1)
  {
    goto LABEL_9;
  }

LABEL_30:
  LOBYTE(v12) = 4;
  v13 = 1;
  if (v8 >= a2[5])
  {
    result = sub_DADE04(a2 + 3, "NoDivergenceAtSoftClosure", &v12, &v13);
    v8 = result;
    a2[4] = result;
    if (*(a1 + 33) != 1)
    {
      return result;
    }
  }

  else
  {
    result = sub_DADFB8(v8, "NoDivergenceAtSoftClosure", &v12, &v13);
    v8 += 48;
    a2[4] = v8;
    if (*(a1 + 33) != 1)
    {
      return result;
    }
  }

LABEL_34:
  LOBYTE(v12) = 4;
  v13 = 1;
  if (v8 >= a2[5])
  {
    result = sub_DAE108(a2 + 3, "WaitForClosureConfidenceGain", &v12, &v13);
    a2[4] = result;
  }

  else
  {
    sub_DAE2BC(v8, "WaitForClosureConfidenceGain", &v12, &v13);
    result = v8 + 48;
    a2[4] = v8 + 48;
  }

  return result;
}

void sub_DAD0E0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DAD1CC(__int128 **a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DAD380(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DAD36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAD380(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAD4D0(__int128 **a1, char *a2, char *a3, unsigned int *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v6)
  {
    v6 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = a1[1] - *a1;
  sub_DAD694(v18 * 16, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = &(*a1)[v18] - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = &(*a1)[v18] - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 24) = v16;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 3;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_DAD680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAD694(uint64_t a1, char *__s, char *a3, unsigned int *a4, int *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
    *(&__dst + v11) = 0;
    v12 = *a3;
    v13 = *a4;
    v14 = *a5;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    operator delete(v15);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v18;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  return a1;
}

uint64_t sub_DAD7E8(__int128 **a1, char *a2, char *a3, unsigned int *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v6)
  {
    v6 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = a1[1] - *a1;
  sub_DAD9AC(v18 * 16, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = &(*a1)[v18] - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = &(*a1)[v18] - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 24) = v16;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 3;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_DAD998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAD9AC(uint64_t a1, char *__s, char *a3, unsigned int *a4, int *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
    *(&__dst + v11) = 0;
    v12 = *a3;
    v13 = *a4;
    v14 = *a5;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    operator delete(v15);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v18;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  return a1;
}

uint64_t sub_DADB00(__int128 **a1, char *a2, char *a3, unsigned __int8 *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DADCB4(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DADCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DADCB4(uint64_t a1, char *__s, char *a3, unsigned __int8 *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DADE04(__int128 **a1, char *a2, char *a3, unsigned __int8 *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DADFB8(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DADFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DADFB8(uint64_t a1, char *__s, char *a3, unsigned __int8 *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAE108(__int128 **a1, char *a2, char *a3, unsigned __int8 *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_DAE2BC(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_DAE2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAE2BC(uint64_t a1, char *__s, char *a3, unsigned __int8 *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAE40C(uint64_t a1)
{
  sub_DACA48((a1 + 312));
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  v2 = *(a1 + 160);
  if (v2)
  {
    v3 = *(a1 + 168);
    v4 = *(a1 + 160);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_3EEA68(v3 - 1096);
      }

      while (v3 != v2);
      v4 = *(a1 + 160);
    }

    *(a1 + 168) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    v6 = *(a1 + 144);
    v7 = *(a1 + 136);
    if (v6 != v5)
    {
      do
      {
        v6 -= 80;
        sub_3ED230(v6);
      }

      while (v6 != v5);
      v7 = *(a1 + 136);
    }

    *(a1 + 144) = v5;
    operator delete(v7);
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    if (v9 != v8)
    {
      do
      {
        v9 = sub_3EEA68(v9 - 1096);
      }

      while (v9 != v8);
      v10 = *(a1 + 32);
    }

    *(a1 + 40) = v8;
    operator delete(v10);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = *(a1 + 16);
    v13 = *(a1 + 8);
    if (v12 != v11)
    {
      do
      {
        v12 -= 80;
        sub_3ED230(v12);
      }

      while (v12 != v11);
      v13 = *(a1 + 8);
    }

    *(a1 + 16) = v11;
    operator delete(v13);
  }

  return a1;
}

uint64_t sub_DAE540(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      if (*(a1 + 8))
      {
        sub_D9F6DC(v4);
        operator delete(*v4);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v6 = *(a2 + 64);
      v5 = *(a2 + 80);
      v7 = *(a2 + 48);
      *(a1 + 92) = *(a2 + 92);
LABEL_21:
      *(a1 + 64) = v6;
      *(a1 + 80) = v5;
      *(a1 + 48) = v7;
      *(a1 + 32) = *(a2 + 32);
      goto LABEL_22;
    }

    v11 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_D9F6DC(v11);
      operator delete(*v11);
    }

    *v11 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 24);
        if (v9 != v8)
        {
          do
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 24));
            }

            v9 -= 32;
          }

          while (v9 != v8);
          v10 = *(a1 + 24);
        }

        *(a1 + 32) = v8;
        operator delete(v10);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v5 = *(a2 + 80);
      v7 = *(a2 + 48);
      v6 = *(a2 + 64);
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_21;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_22:
  *a1 = *a2;
  return a1;
}

uint64_t sub_DAE6BC(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_DAE7BC(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v4 = a1 + 8;
    if (*a2)
    {
      sub_DAE8A8(v4, a2 + 8);
      goto LABEL_16;
    }

    sub_D0F4FC(v4);
LABEL_12:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_16;
  }

  if (!*a2)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24);
    if (v6 != v5)
    {
      do
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        v6 -= 32;
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;
    operator delete(v7);
  }

  sub_D7DE54(a1 + 8, a2 + 8);
LABEL_16:
  *a1 = *a2;
  return a1;
}

uint64_t sub_DAE8A8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_5C1158(v5 - 7808);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_CFD5E4((a1 + 24), a2 + 24);
  v7 = *(a1 + 1112);
  if (v7)
  {
    v8 = (a1 + 1112);
    v9 = *(a1 + 1120);
    v10 = *(a1 + 1112);
    if (v9 != v7)
    {
      do
      {
        v9 = sub_3A9518(v9 - 1120);
      }

      while (v9 != v7);
      v10 = *v8;
    }

    *(a1 + 1120) = v7;
    operator delete(v10);
    *v8 = 0;
    *(a1 + 1120) = 0;
    *(a1 + 1128) = 0;
  }

  *(a1 + 1112) = *(a2 + 1112);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1128) = 0;
  *(a2 + 1112) = 0u;
  sub_D09358(a1 + 1136, a2 + 1136);
  v11 = *(a2 + 1968);
  *(a1 + 1952) = *(a2 + 1952);
  *(a1 + 1968) = v11;
  v12 = *(a2 + 2000);
  v13 = *(a2 + 2016);
  v14 = *(a2 + 2032);
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 2032) = v14;
  *(a1 + 2016) = v13;
  *(a1 + 2000) = v12;
  v15 = *(a2 + 2064);
  v16 = *(a2 + 2080);
  v17 = *(a2 + 2096);
  *(a1 + 2048) = *(a2 + 2048);
  *(a1 + 2096) = v17;
  *(a1 + 2080) = v16;
  *(a1 + 2064) = v15;
  v18 = *(a2 + 2128);
  v19 = *(a2 + 2144);
  v20 = *(a2 + 2154);
  *(a1 + 2112) = *(a2 + 2112);
  *(a1 + 2154) = v20;
  *(a1 + 2144) = v19;
  *(a1 + 2128) = v18;
  memcpy((a1 + 2176), (a2 + 2176), 0xAF0uLL);
  v21 = *(a1 + 4976);
  if (v21)
  {
    *(a1 + 4984) = v21;
    operator delete(v21);
    *(a1 + 4976) = 0;
    *(a1 + 4984) = 0;
    *(a1 + 4992) = 0;
  }

  *(a1 + 4976) = *(a2 + 4976);
  *(a1 + 4992) = *(a2 + 4992);
  *(a2 + 4992) = 0;
  *(a2 + 4976) = 0u;
  v22 = (a1 + 5000);
  if (*(a1 + 5023) < 0)
  {
    operator delete(*v22);
  }

  v23 = *(a2 + 5000);
  *(a1 + 5016) = *(a2 + 5016);
  *v22 = v23;
  *(a2 + 5023) = 0;
  *(a2 + 5000) = 0;
  sub_6BA20(a1 + 5024, (a2 + 5024));
  *(a1 + 5064) = *(a2 + 5064);
  return a1;
}

void sub_DAEAD0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_D71E14(a1, *a3, a3[1], 0x6FB586FB586FB587 * ((a3[1] - *a3) >> 3));
  sub_E78844((a1 + 3));
}

void sub_DAED60(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 1680) = v4;
    operator delete(v4);
  }

  sub_616CD4(v1 + 1632);
  sub_528AB4(v1 + 24);
  sub_44FD90(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DAEDD4(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_DAEED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t *a11, char a12, uint64_t a13, uint64_t a14)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a2;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 72) = a10;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_D7EBF4(a1 + 80, *a11, a11[1], 0xEEEEEEEEEEEEEEEFLL * ((a11[1] - *a11) >> 4));
  *(a1 + 104) = a12;
  *(a1 + 105) = sub_44F320(a4);
  sub_4ED880(a13, a1 + 112);
  *(a1 + 144) = a13;
  *(a1 + 152) = sub_4EF390(a13);
  *(a1 + 160) = v16;
  sub_E80194(*(a1 + 16), a1 + 168);
  v17 = *a14;
  v18 = *(a14 + 8);
  if (*a14 != v18)
  {
    while (v17[44] != 2)
    {
      v17 += 110;
      if (v17 == v18)
      {
        goto LABEL_6;
      }
    }
  }

  if (v17 == v18)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v17 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 344, v17);
  return a1;
}

void sub_DAF014(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_44D36C((v1 + 168));
  sub_4F3AA4(v1 + 112);
  sub_49AE64(v2);
  _Unwind_Resume(a1);
}

void sub_DAF068(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v21 = a1[9];
  v22 = v9;
  v12 = a1[10];
  sub_DAF6F0(&__p, a1[11]);
  sub_DAF1A0(a2, v3, v4, v5, v6, v7, v8, &v22, v10, v11, &v21, v12, &__p);
  v13 = __p;
  if (__p)
  {
    v14 = v20;
    v15 = __p;
    if (v20 == __p)
    {
LABEL_13:
      v20 = v13;
      operator delete(v15);
      return;
    }

    while (1)
    {
      if (*(v14 - 1) < 0)
      {
        operator delete(*(v14 - 3));
        v16 = *(v14 - 6);
        if (!v16)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v16 = *(v14 - 6);
        if (!v16)
        {
          goto LABEL_8;
        }
      }

      do
      {
        v17 = *v16;
        operator delete(v16);
        v16 = v17;
      }

      while (v17);
LABEL_8:
      v18 = *(v14 - 8);
      *(v14 - 8) = 0;
      if (v18)
      {
        operator delete(v18);
      }

      v14 -= 9;
      if (v14 == v13)
      {
        v15 = __p;
        goto LABEL_13;
      }
    }
  }
}

void sub_DAF18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_D71160(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAF1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, _OWORD *a6, void *a7, uint64_t *a8, uint64_t a9, __int128 **a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v18 = a7[1];
  if (v18 != *a7)
  {
    if (((v18 - *a7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v80 = *a8;
  v19 = sub_3B2E6C(a5);
  sub_2C1B08(v62, v19);
  v68 = 1;
  sub_E85008(a2, v62, &v69);
  v20 = sub_3B6890(a5);
  v48 = *v20;
  v21 = *(v20 + 8);
  sub_5F4380(v59, a9);
  memset(v60, 0, sizeof(v60));
  sub_5713F4(v60, *(a9 + 1088), *(a9 + 1096), 0xAF8AF8AF8AF8AF8BLL * ((*(a9 + 1096) - *(a9 + 1088)) >> 5));
  sub_5DAD70(v61, a9 + 1112);
  v22 = sub_E7A5E0(a2);
  v23 = sub_DAFE54(a2, a4, a3, a5);
  v24 = sub_E7FD98(a2);
  v25 = a6;
  v57 = sub_E80738(a2);
  v58 = v26;
  sub_99A14(&v55, a10);
  v54 = *a11;
  v27 = sub_E7AAC4(a2);
  sub_5ADDC(v52, a12);
  *__p = *a13;
  v51 = *(a13 + 16);
  *(a13 + 8) = 0;
  *(a13 + 16) = 0;
  *a13 = 0;
  v28 = sub_E89630(a2);
  sub_DAFFC4(a1, a3, a4, a5, v25, &v81, &v80, &v69, v48, v21, v59, v22, v23, v24 & 0xFFFFFFFFFFLL, &v57, &v55, &v54, v27, v52, __p, v28);
  v29 = __p[0];
  if (__p[0])
  {
    v30 = __p[1];
    v31 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_16:
      __p[1] = v29;
      operator delete(v31);
      goto LABEL_17;
    }

    while (1)
    {
      if (*(v30 - 1) < 0)
      {
        operator delete(*(v30 - 3));
        v32 = *(v30 - 6);
        if (v32)
        {
          do
          {
LABEL_10:
            v33 = *v32;
            operator delete(v32);
            v32 = v33;
          }

          while (v33);
        }
      }

      else
      {
        v32 = *(v30 - 6);
        if (v32)
        {
          goto LABEL_10;
        }
      }

      v34 = *(v30 - 8);
      *(v30 - 8) = 0;
      if (v34)
      {
        operator delete(v34);
      }

      v30 -= 9;
      if (v30 == v29)
      {
        v31 = __p[0];
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  v35 = v53;
  if (v53)
  {
    do
    {
      v36 = *v35;
      v37 = *(v35 + 12);
      if (v37 != -1)
      {
        (off_2673DD8[v37])(&v80, v35 + 5);
      }

      *(v35 + 12) = -1;
      if (*(v35 + 39) < 0)
      {
        operator delete(v35[2]);
      }

      operator delete(v35);
      v35 = v36;
    }

    while (v36);
  }

  v38 = v52[0];
  v52[0] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  v39 = v55;
  if (v55)
  {
    v40 = v56;
    v41 = v55;
    if (v56 != v55)
    {
      do
      {
        v42 = *(v40 - 1);
        v40 -= 3;
        if (v42 < 0)
        {
          operator delete(*v40);
        }
      }

      while (v40 != v39);
      v41 = v55;
    }

    v56 = v39;
    operator delete(v41);
  }

  sub_5C0F34(v61);
  v43 = v60[0];
  if (v60[0])
  {
    v44 = v60[1];
    v45 = v60[0];
    if (v60[1] != v60[0])
    {
      do
      {
        v44 = sub_3A9518(v44 - 1120);
      }

      while (v44 != v43);
      v45 = v60[0];
    }

    v60[1] = v43;
    operator delete(v45);
  }

  sub_559E70(v59);
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v77 < 0)
  {
    operator delete(v76);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v68 == 1)
  {
    if (v67 < 0)
    {
      operator delete(v66);
      if ((v65 & 0x80000000) == 0)
      {
LABEL_52:
        if ((v63 & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

LABEL_58:
        operator delete(v62[0]);
        v46 = v81;
        if (!v81)
        {
          return a1;
        }

        goto LABEL_54;
      }
    }

    else if ((v65 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    operator delete(v64);
    if (v63 < 0)
    {
      goto LABEL_58;
    }
  }

LABEL_53:
  v46 = v81;
  if (v81)
  {
LABEL_54:
    v82 = v46;
    operator delete(v46);
  }

  return a1;
}

void sub_DAF644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void **a38)
{
  sub_5706DC((v38 + 1088));
  sub_559E70(&a38);
  sub_D71D0C(&STACK[0x8C0]);
  sub_D71D80(&STACK[0x870]);
  v41 = *(v39 - 112);
  if (v41)
  {
    *(v39 - 104) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_DAF6F0(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0x8E38E38E38E38E39 * ((v2 - *a2) >> 3) < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_DAF7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_DAFCF8(va);
  *(v10 + 8) = v11;
  sub_DAFD90(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_DAF818(uint64_t a1, char *a2)
{
  v4 = *a2;
  *(a1 + 8) = 0u;
  v5 = (a1 + 8);
  *a1 = v4;
  *(a1 + 24) = 0u;
  *(a1 + 40) = *(a2 + 10);
  prime = *(a2 + 2);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(v5, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 2));
    v7 = *(a1 + 16);
    v8 = prime >= *&v7;
    if (prime > *&v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v8)
  {
    v9 = vcvtps_u32_f32(*(a1 + 32) / *(a1 + 40));
    if (*&v7 < 3uLL || (v10 = vcnt_s8(v7), v10.i16[0] = vaddlv_u8(v10), v10.u32[0] > 1uLL))
    {
      v9 = std::__next_prime(v9);
    }

    else
    {
      v11 = 1 << -__clz(v9 - 1);
      if (v9 >= 2)
      {
        v9 = v11;
      }
    }

    if (prime <= v9)
    {
      prime = v9;
    }

    if (prime < *&v7)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 3); i; i = *i)
  {
    sub_DAF9C4(v5, i + 2, i + 2);
  }

  if (a2[71] < 0)
  {
    sub_325C((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v13 = *(a2 + 3);
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v13;
  }

  return a1;
}

void *sub_DAF9C4(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (v8[2] == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

uint64_t sub_DAFCF8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (1)
    {
      if (v3 == v4)
      {
        return a1;
      }

      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        v5 = *(v3 - 48);
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v5 = *(v3 - 48);
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
LABEL_9:
      v7 = *(v3 - 64);
      *(v3 - 64) = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v3 -= 72;
    }
  }

  return a1;
}

void ***sub_DAFD90(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 == v2)
      {
LABEL_14:
        v1[1] = v2;
        operator delete(v5);
        return v3;
      }

      while (1)
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          v6 = *(v4 - 6);
          if (!v6)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v6 = *(v4 - 6);
          if (!v6)
          {
            goto LABEL_9;
          }
        }

        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
LABEL_9:
        v8 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v8)
        {
          operator delete(v8);
        }

        v4 -= 9;
        if (v4 == v2)
        {
          v5 = **v3;
          goto LABEL_14;
        }
      }
    }
  }

  return result;
}

uint64_t sub_DAFE54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_E7A5E0(a1);
  result = sub_EA7118(v7);
  if (result)
  {
    v9 = *a2;
    if (*a2 == a2[1])
    {
      return 0;
    }

    else
    {
      v10 = *a3;
      if (*a3 == *(a3 + 8))
      {
        return 0;
      }

      else
      {
        v22 = 15;
        v20 = 0;
        strcpy(v21, "RerouteCategory");
        __p = 0;
        v19 = 0;
        v11 = sub_3AEC94(a4, v21, &__p);
        sub_4EB344(&v23, v11);
        result = sub_4EB214(v9, v10, &v23);
        v12 = __p;
        if (__p)
        {
          v13 = result;
          v14 = v19;
          v15 = __p;
          if (v19 != __p)
          {
            do
            {
              v16 = *(v14 - 1);
              v14 -= 3;
              if (v16 < 0)
              {
                operator delete(*v14);
              }
            }

            while (v14 != v12);
            v15 = __p;
          }

          v19 = v12;
          operator delete(v15);
          result = v13;
        }

        if (v22 < 0)
        {
          v17 = result;
          operator delete(v21[0]);
          return v17;
        }
      }
    }
  }

  return result;
}

void sub_DAFFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_DAFFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, void *a7, int *a8, uint64_t a9, int a10, uint64_t a11, char a12, char a13, uint64_t a14, uint64_t *a15, uint64_t a16, void *a17, char a18, uint64_t *a19, uint64_t a20, uint64_t a21)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 8) = *a6;
  *(a1 + 24) = *(a6 + 16);
  *(a6 + 16) = 0;
  *a6 = 0u;
  *(a1 + 32) = 0u;
  v27 = a1 + 32;
  *(a1 + 48) = 0;
  *(a1 + 32) = *a11;
  *(a1 + 48) = *(a11 + 16);
  *(a11 + 16) = 0;
  *a11 = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 56) = *(a11 + 24);
  *(a1 + 72) = *(a11 + 40);
  *(a11 + 40) = 0;
  *(a11 + 24) = 0u;
  sub_55A4D0(a1 + 80, a11 + 48);
  sub_55A4D0(v27 + 544, a11 + 544);
  *(v27 + 1056) = 0;
  *(v27 + 1040) = 0u;
  *(v27 + 1040) = *(a11 + 1040);
  *(v27 + 1056) = *(a11 + 1056);
  *(a11 + 1056) = 0;
  *(a11 + 1040) = 0u;
  *(v27 + 1080) = 0;
  *(v27 + 1064) = 0u;
  *(v27 + 1064) = *(a11 + 1064);
  *(v27 + 1072) = *(a11 + 1072);
  *(a11 + 1080) = 0;
  *(a11 + 1064) = 0u;
  *(v27 + 1104) = 0;
  *(v27 + 1088) = 0u;
  *(v27 + 1088) = *(a11 + 1088);
  *(v27 + 1104) = *(a11 + 1104);
  *(a11 + 1104) = 0;
  *(a11 + 1088) = 0u;
  sub_5DB550(v27 + 1112, a11 + 1112);
  v28 = *a8;
  *(v27 + 1931) = *(a8 + 3);
  *(v27 + 1928) = v28;
  *(v27 + 1936) = 0;
  *(v27 + 1952) = 0;
  *(v27 + 1944) = 0;
  *(v27 + 1936) = *(a8 + 2);
  *(v27 + 1952) = *(a8 + 3);
  *(a8 + 1) = 0;
  *(a8 + 2) = 0;
  *(a8 + 3) = 0;
  v29 = *(a8 + 3);
  *(v27 + 1960) = *(a8 + 2);
  *(v27 + 1976) = v29;
  *(v27 + 1992) = a8[16];
  *(v27 + 2016) = 0;
  *(v27 + 2008) = 0;
  *(v27 + 2000) = 0;
  *(v27 + 2000) = *(a8 + 18);
  *(v27 + 2016) = *(a8 + 11);
  *(a8 + 10) = 0;
  *(a8 + 11) = 0;
  *(a8 + 9) = 0;
  *(v27 + 2024) = a8[24];
  *(v27 + 2032) = 0;
  *(v27 + 2048) = 0;
  *(v27 + 2040) = 0;
  *(v27 + 2032) = *(a8 + 26);
  *(v27 + 2048) = *(a8 + 15);
  *(a8 + 13) = 0;
  *(a8 + 14) = 0;
  *(a8 + 15) = 0;
  v30 = *(a8 + 8);
  *(v27 + 2072) = *(a8 + 18);
  *(v27 + 2056) = v30;
  *(a8 + 17) = 0;
  *(a8 + 18) = 0;
  *(a8 + 16) = 0;
  *(v27 + 2080) = *(a8 + 152);
  v31 = *(a8 + 20);
  *(v27 + 2096) = *(a8 + 168);
  *(v27 + 2088) = v31;
  *(v27 + 2104) = 0;
  *(v27 + 2120) = 0;
  *(v27 + 2112) = 0;
  *(v27 + 2104) = *(a8 + 11);
  *(v27 + 2120) = *(a8 + 24);
  *(a8 + 22) = 0;
  *(a8 + 23) = 0;
  *(a8 + 24) = 0;
  *(v27 + 2128) = a4;
  v32 = *a3;
  v33 = *(a3 + 8);
  if (*a3 != v33)
  {
    while (v32[44] != 1)
    {
      v32 += 110;
      if (v32 == v33)
      {
        goto LABEL_6;
      }
    }
  }

  if (v32 == v33)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v32 = &unk_27337E8;
  }

  sub_4E9DA4(v27 + 2136, v32);
  v34 = *a3;
  v35 = *(a3 + 8);
  if (*a3 != v35)
  {
    while (v34[44] != 2)
    {
      v34 += 110;
      if (v34 == v35)
      {
        goto LABEL_13;
      }
    }
  }

  if (v34 == v35)
  {
LABEL_13:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v34 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 2608, v34);
  *(a1 + 3048) = *a7;
  *(a1 + 3056) = a3;
  *(a1 + 3064) = a9;
  *(a1 + 3072) = a10;
  *(a1 + 3076) = a12;
  *(a1 + 3077) = a13;
  *(a1 + 3080) = a14;
  v36 = *a15;
  *(a1 + 3096) = *(a15 + 2);
  *(a1 + 3088) = v36;
  *(a1 + 3104) = 0;
  *(a1 + 3120) = 0;
  *(a1 + 3112) = 0;
  *(a1 + 3104) = *a16;
  *(a1 + 3120) = *(a16 + 16);
  *a16 = 0;
  *(a16 + 8) = 0;
  *(a16 + 16) = 0;
  *(a1 + 3128) = *a17;
  *(a1 + 3136) = *a5;
  *(a1 + 3152) = a18;
  v37 = *a19;
  *(a1 + 3168) = a19[1];
  *a19 = 0;
  *(a1 + 3160) = v37;
  a19[1] = 0;
  v38 = a19[3];
  v39 = *(a19 + 8);
  v40 = a19[2];
  *(a1 + 3176) = v40;
  *(a1 + 3184) = v38;
  *(a1 + 3192) = v39;
  if (v38)
  {
    v41 = *(v40 + 8);
    v42 = *(a1 + 3168);
    if ((v42 & (v42 - 1)) != 0)
    {
      if (v41 >= v42)
      {
        v41 %= v42;
      }
    }

    else
    {
      v41 &= v42 - 1;
    }

    *(v37 + 8 * v41) = a1 + 3176;
    a19[2] = 0;
    a19[3] = 0;
  }

  *(a1 + 3216) = 0;
  *(a1 + 3200) = 0u;
  *(a1 + 3200) = *a20;
  *(a1 + 3216) = *(a20 + 16);
  *a20 = 0;
  *(a20 + 8) = 0;
  *(a20 + 16) = 0;
  *(a1 + 3224) = a21;
  return a1;
}

void sub_DB0428(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_44FDEC(v2 + 2136);
  sub_D71D0C(v3);
  sub_D0AA6C(v2);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_DB048C(uint64_t a1)
{
  v2 = *(a1 + 3200);
  if (v2)
  {
    v3 = *(a1 + 3208);
    v4 = *(a1 + 3200);
    if (v3 == v2)
    {
LABEL_13:
      *(a1 + 3208) = v2;
      operator delete(v4);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        v5 = *(v3 - 48);
        if (v5)
        {
          do
          {
LABEL_7:
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }
      }

      else
      {
        v5 = *(v3 - 48);
        if (v5)
        {
          goto LABEL_7;
        }
      }

      v7 = *(v3 - 64);
      *(v3 - 64) = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v3 -= 72;
      if (v3 == v2)
      {
        v4 = *(a1 + 3200);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v8 = *(a1 + 3176);
  if (v8)
  {
    do
    {
      v9 = *v8;
      v10 = *(v8 + 12);
      if (v10 != -1)
      {
        (off_2673DD8[v10])(&v25, v8 + 5);
      }

      *(v8 + 12) = -1;
      if (*(v8 + 39) < 0)
      {
        operator delete(v8[2]);
      }

      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v11 = *(a1 + 3160);
  *(a1 + 3160) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 3104);
  if (v12)
  {
    v13 = *(a1 + 3112);
    v14 = *(a1 + 3104);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(a1 + 3104);
    }

    *(a1 + 3112) = v12;
    operator delete(v14);
  }

  sub_44FDEC(a1 + 2608);
  sub_44FDEC(a1 + 2168);
  v16 = *(a1 + 2136);
  if (v16)
  {
    *(a1 + 2144) = v16;
    operator delete(v16);
  }

  if (*(a1 + 2111) < 0)
  {
    operator delete(*(a1 + 2088));
  }

  v17 = *(a1 + 2064);
  if (v17)
  {
    *(a1 + 2072) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 2032);
  if (v18)
  {
    *(a1 + 2040) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 1968);
  if (v19)
  {
    *(a1 + 1976) = v19;
    operator delete(v19);
  }

  sub_5C0F34(a1 + 1144);
  v20 = *(a1 + 1120);
  if (v20)
  {
    v21 = *(a1 + 1128);
    v22 = *(a1 + 1120);
    if (v21 != v20)
    {
      do
      {
        v21 = sub_3A9518(v21 - 1120);
      }

      while (v21 != v20);
      v22 = *(a1 + 1120);
    }

    *(a1 + 1128) = v20;
    operator delete(v22);
  }

  sub_559E70((a1 + 32));
  v23 = *(a1 + 8);
  if (v23)
  {
    *(a1 + 16) = v23;
    operator delete(v23);
  }

  return a1;
}

uint64_t sub_DB06B8@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v16);
  if (a1 != a2)
  {
    v9 = *(a1 + 23);
    if (v9 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if (v9 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = a1[1];
    }

    while (1)
    {
      sub_4A5C(&v16, v10, v11);
      a1 += 3;
      if (a1 == a2)
      {
        break;
      }

      v27 = *a3;
      sub_4A5C(&v16, &v27, 1);
      v12 = *(a1 + 23);
      if (v12 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      if (v12 >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = a1[1];
      }
    }
  }

  if ((v26 & 0x10) != 0)
  {
    v13 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v13 = v22;
    }

    v14 = __src;
    v8 = v13 - __src;
    if (v13 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v8 = 0;
      a4[23] = 0;
      goto LABEL_26;
    }

    v14 = v19;
    v8 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_30:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a4[23] = v8;
  if (v8)
  {
    memmove(a4, v14, v8);
  }

LABEL_26:
  a4[v8] = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_DB0978()
{
  byte_27B68C7 = 3;
  LODWORD(qword_27B68B0) = 5136193;
  byte_27B68DF = 3;
  LODWORD(qword_27B68C8) = 5136194;
  byte_27B68F7 = 3;
  LODWORD(qword_27B68E0) = 5136195;
  byte_27B690F = 15;
  strcpy(&qword_27B68F8, "vehicle_mass_kg");
  byte_27B6927 = 21;
  strcpy(&xmmword_27B6910, "vehicle_cargo_mass_kg");
  byte_27B693F = 19;
  strcpy(&qword_27B6928, "vehicle_aux_power_w");
  byte_27B6957 = 15;
  strcpy(&qword_27B6940, "dcdc_efficiency");
  strcpy(&qword_27B6958, "drive_train_efficiency");
  HIBYTE(word_27B696E) = 22;
  operator new();
}

void sub_DB0D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B6870)
  {
    qword_27B6878 = qword_27B6870;
    operator delete(qword_27B6870);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_DB0E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v12 = *sub_3B8500(v9);
  sub_DEB870(4, v11, v10);
  sub_7E9A4(&v76);
  v73 = v12;
  v74 = v10;
  v75 = v11;
  if (sub_E7F8D4(v11))
  {
    sub_3B6984(v10);
  }

  sub_E7C46C(v11);
  v40[176] = 0;
  v40[304] = 0;
  v40[312] = 0;
  v40[440] = 0;
  v49 = 0;
  v47 = 0;
  v48 = 0;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  v53 = 0x3FF0000000000000;
  v54 = 0u;
  v55 = 0;
  v56 = 5;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0x7FFFFFFF;
  v65 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  memset(v64, 0, sizeof(v64));
  v66 = -1;
  v67 = 0x7FFFFFFF;
  v68 = 0;
  v69 = 0;
  v70 = -1;
  v71 = -1;
  v72 = 0;
  sub_E8041C(v11, v40);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  sub_4E3D18(&v36);
  sub_4E3D18(&v35);
  memset(&v34[18], 0, 24);
  v33 = 0u;
  memset(v34, 0, 28);
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v34[8] = -1;
  LOWORD(v34[9]) = 0;
  memset(&v34[10], 0, 24);
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v25 = -1;
  v26 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v18 = 0;
  v17 = 0;
  v19 = 0;
  v15 = 0u;
  v14 = 0u;
  v16 = 1065353216;
  memset(&v13[520], 0, 24);
  sub_787F9C(v13);
}