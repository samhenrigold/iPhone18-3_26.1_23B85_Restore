uint64_t sub_1003AE040(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003AE07C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 7;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

void sub_1003AE0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003AE1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AE230(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 80))(v5, *(a1 + 4));
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003AE2C8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 6;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003AE320(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 5)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 5;
  sub_1003AE3A8(a1 + 94, a4, a1);
  *(v6 + 24) = 5;
  sub_1003AE4C0(a1);
  *(a1 + 4) = 3;
  *(v6 + 24) = 5;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v6 + 24) = 8;
  return 1;
}

void sub_1003AE3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003AE42C(a3);
  sub_10000501C(__p, "Post installing");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 1);
}

void sub_1003AE410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AE42C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 112))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003AE4C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 64))(v5, 2);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003AE558(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 4;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003AE5B0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 3;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003AE608(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 2)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 2;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003AE660(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 1;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003AE6B8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 0;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003AE708(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003AE78C(a1))
  {
    return 1;
  }

  v5 = sub_1003AE83C(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003AE78C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003AE83C(uint64_t a1)
{
  v1 = (*(&unk_101FB1E10 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003AE904(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_19DidConsentToInstallEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_19DidConsentToInstallEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003AE9FC(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003AEA38(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 5)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 5;
  sub_1003AEAB8(a1 + 94, a4, a1);
  *(v6 + 24) = 5;
  sub_1003AEB3C(a1);
  *(v6 + 24) = 5;
  sub_1003AEBD4(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003AEAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003AE42C(a3);
  sub_10000501C(__p, "Post installing");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 1);
}

void sub_1003AEB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AEB3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 64))(v5, 1);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003AEBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003AEC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AEC44(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003AECC8(a1))
  {
    return 1;
  }

  v5 = sub_1003AED78(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003AECC8(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003AED78(uint64_t a1)
{
  v1 = (*(&unk_101FB1E68 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003AEE40(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_22DidNotConsentToInstallEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_22DidNotConsentToInstallEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003AEF38(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003AEF74(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 5)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 5;
  sub_1003AEFF8(a1 + 94, a4, a1);
  *(v6 + 24) = 5;
  sub_1003AF07C(a1);
  *(a1 + 4) = 0;
  *(v6 + 24) = 5;
  sub_1003AF114(a1 + 91, a4, a1);
  *(v6 + 24) = 8;
  return 1;
}

void sub_1003AEFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003AE42C(a3);
  sub_10000501C(__p, "Post installing");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 1);
}

void sub_1003AF060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AF07C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 64))(v5, 0);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003AF114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003AF238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AF270(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003AF2F4(a1))
  {
    return 1;
  }

  v5 = sub_1003AF3A4(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003AF2F4(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003AF3A4(uint64_t a1)
{
  v1 = (*(&unk_101FB1EC0 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003AF46C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_17DidGetMonitorModeEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_17DidGetMonitorModeEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003AF564(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003AF5A0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E950();
  }

  if (!sub_1003AF63C(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 7;
  sub_1003AC70C(a1);
  *(v7 + 24) = 7;
  sub_1003AF854(a1 + 96, a4, a1);
  *(v7 + 24) = 3;
  return 1;
}

uint64_t sub_1003AF63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1003AF698(a3) && (sub_1003AF72C(a3) & 1) != 0)
  {
    return 1;
  }

  return sub_1003AF7C0(a3);
}

uint64_t sub_1003AF698(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 120))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

uint64_t sub_1003AF72C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 136))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

uint64_t sub_1003AF7C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 128))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003AF854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForSubscription");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003AF8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AF8C4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E950();
  }

  if (!sub_1003AF698(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  v8 = 1;
  *(a1 + 4) = 1;
  *(v7 + 24) = 7;
  sub_1003AF940(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

void sub_1003AF940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003AFA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AFAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003AF5A0(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003AFB48(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003AFB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_1003AF8C4(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003AFBE0(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003AFBE0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 7;
  sub_1003AD278(a1);
  *(v6 + 24) = 7;
  sub_1003AFC48(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003AFC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003AFC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AFCB8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 3;
  sub_1003AD278(a1);
  *(v6 + 24) = 3;
  sub_1003AFC48(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

uint64_t sub_1003AFD20(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003AFDA4(a1))
  {
    return 1;
  }

  v5 = sub_1003AFE54(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003AFDA4(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003AFE54(uint64_t a1)
{
  v1 = (*(&unk_101FB1F18 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003AFF1C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_17DidPendingReleaseEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_17DidPendingReleaseEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B0014(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B0050(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 7;
  sub_1003AC70C(a1);
  *(v6 + 24) = 7;
  sub_1003B00B8(a1 + 96, a4, a1);
  *(v6 + 24) = 3;
  return 1;
}

void sub_1003B00B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForSubscription");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B010C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B0128(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B01AC(a1))
  {
    return 1;
  }

  v5 = sub_1003B025C(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B01AC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B025C(uint64_t a1)
{
  v1 = (*(&unk_101FB1F70 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B0324(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_21DidGetAvailableOptionEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_21DidGetAvailableOptionEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B041C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B0458(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 4;
  *(a1 + 4) = 1;
  sub_1003B04C4(a1);
  *(v6 + 24) = 4;
  sub_1003B055C(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003B04C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 96))(v5, *(a1 + 4));
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003B055C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B05B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B05CC(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B0650(a1))
  {
    return 1;
  }

  v5 = sub_1003B0700(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B0650(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B0700(uint64_t a1)
{
  v1 = (*(&unk_101FB1FC8 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B07C8(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_20DidLeaveCellularPaneEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_20DidLeaveCellularPaneEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B08C0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B08FC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 7;
  sub_1003B0954(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

void sub_1003B0954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B0A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B0AB0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 6;
  sub_1003B0954(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003B0B08(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 5)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 5;
  sub_1003B0B90(a1 + 94, a4, a1);
  *(v6 + 24) = 5;
  sub_1003AE4C0(a1);
  *(a1 + 4) = 3;
  *(v6 + 24) = 5;
  sub_1003B0954(a1 + 91, a4, a1);
  *(v6 + 24) = 8;
  return 1;
}

void sub_1003B0B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003AE42C(a3);
  sub_10000501C(__p, "Post installing");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 1);
}

void sub_1003B0BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B0C14(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 2)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 2;
  sub_1003B0954(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003B0C6C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E950();
  }

  if (!sub_1003ACEA8(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  v8 = 1;
  *(v7 + 24) = 1;
  sub_1003B0954(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

uint64_t sub_1003B0CE4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E950();
  }

  if (!sub_1003ACA9C(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  v8 = 1;
  *(v7 + 24) = 1;
  sub_1003B0954(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

uint64_t sub_1003B0D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003B0C6C(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B0E08(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B0E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_1003B0CE4(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B0EA0(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B0EA0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E9D4();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_1003B0EF0(a1 + 98, a4, a1);
  *(v4 + 24) = 1;
  return 1;
}

void sub_1003B0EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForDeleteAllPlans");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B0F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B0F60(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B0FE4(a1))
  {
    return 1;
  }

  v5 = sub_1003B1094(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B0FE4(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B1094(uint64_t a1)
{
  v1 = (*(&unk_101FB2020 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B115C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_18DidDismissWebsheetEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_18DidDismissWebsheetEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B1254(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B1290(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 7;
  sub_1003AC70C(a1);
  *(v6 + 24) = 7;
  sub_1003B12F8(a1 + 96, a4, a1);
  *(v6 + 24) = 3;
  return 1;
}

void sub_1003B12F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForSubscription");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B134C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B1368(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B13EC(a1))
  {
    return 1;
  }

  v5 = sub_1003B149C(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B13EC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B149C(uint64_t a1)
{
  v1 = (*(&unk_101FB2078 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B1564(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_17DidLaunchWebsheetEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_17DidLaunchWebsheetEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B165C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B1698(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 2)
  {
    sub_10176E97C();
  }

  v7 = sub_1003ACEA8(a1);
  result = 2;
  if (v7)
  {
    v9 = a1 + 4 * a2;
    *(v9 + 24) = 2;
    sub_1003B1708(a1 + 92, a4, a1);
    *(v9 + 24) = 7;
    return 1;
  }

  return result;
}

void sub_1003B1708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "UserInWebsheet");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B175C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B1778(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 2)
  {
    sub_10176E950();
  }

  v7 = 2;
  if (sub_1003B17F4(a1))
  {
    v8 = a1 + 4 * a2;
    *(v8 + 24) = 2;
    sub_1003B1888(a1);
    *(v8 + 24) = 2;
    sub_1003B1708(a1 + 92, a4, a1);
    *(v8 + 24) = 7;
    return 1;
  }

  return v7;
}

uint64_t sub_1003B17F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 168))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003B1888(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 56))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003B191C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 2)
  {
    sub_10176E950();
  }

  v7 = 2;
  if (sub_1003ACCA8(a1))
  {
    v8 = a1 + 4 * a2;
    *(v8 + 24) = 2;
    sub_1003ACD3C(a1);
    *(v8 + 24) = 2;
    sub_1003B1994(a1 + 98, a4, a1);
    v7 = 1;
    *(v8 + 24) = 1;
  }

  return v7;
}

void sub_1003B1994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForDeleteAllPlans");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B19E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B1A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003B1698(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B1AB0(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B1AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003B1778(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B1B38(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B1B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_1003B191C(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B1BD0(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B1BD0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 2)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 2;
  sub_1003B1C38(a1);
  *(v6 + 24) = 2;
  sub_1003B1CCC(a1 + 93, a4, a1);
  *(v6 + 24) = 6;
  return 1;
}

void sub_1003B1C38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003B1CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForWebsheetInfo");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B1D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B1D3C(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B1DC0(a1))
  {
    return 1;
  }

  v5 = sub_1003B1E70(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B1DC0(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B1E70(uint64_t a1)
{
  v1 = (*(&unk_101FB20D0 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B1F38(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_18DidConsentTimedOutEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_18DidConsentTimedOutEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B2030(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B206C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 5)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 5;
  sub_1003B20F0(a1 + 94, a4, a1);
  *(v6 + 24) = 5;
  sub_1003B2174(a1);
  *(a1 + 4) = 0;
  *(v6 + 24) = 5;
  sub_1003B220C(a1 + 91, a4, a1);
  *(v6 + 24) = 8;
  return 1;
}

void sub_1003B20F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003AE42C(a3);
  sub_10000501C(__p, "Post installing");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 1);
}

void sub_1003B2158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003B2174(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 64))(v5, 3);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003B220C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B2330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B2368(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B23EC(a1))
  {
    return 1;
  }

  v5 = sub_1003B249C(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B23EC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B249C(uint64_t a1)
{
  v1 = (*(&unk_101FB2128 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B2564(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_9DidDeleteEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_9DidDeleteEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B265C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B2698(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E97C();
  }

  v7 = 2;
  if (sub_1003ACEA8(a1))
  {
    v8 = a1 + 4 * a2;
    *(v8 + 24) = 1;
    sub_1003B2708(a1 + 97, a4, a1);
    *(v8 + 24) = 2;
    return 1;
  }

  return v7;
}

void sub_1003B2708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForWebsheet");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B275C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B2778(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E950();
  }

  if (!sub_1003ACA9C(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  v8 = 1;
  *(v7 + 24) = 1;
  sub_1003B1C38(a1);
  *(v7 + 24) = 1;
  sub_1003B27F8(a1 + 93, a4, a1);
  *(v7 + 24) = 6;
  return v8;
}

void sub_1003B27F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForWebsheetInfo");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B284C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003B2698(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B2914(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B2914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_1003B2778(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B29AC(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B29AC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 1;
  sub_1003AD278(a1);
  *(v6 + 24) = 1;
  sub_1003B2A14(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003B2A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B2A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B2A84(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B2B08(a1))
  {
    return 1;
  }

  v5 = sub_1003B2BB8(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B2B08(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B2BB8(uint64_t a1)
{
  v1 = (*(&unk_101FB2180 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B2C80(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_22DidGetSubscriptionInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_22DidGetSubscriptionInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B2D78(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B2DB4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E950();
  }

  if (!sub_1003B2E30(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  v8 = 1;
  *(a1 + 4) = 1;
  *(v7 + 24) = 3;
  sub_1003B2EC4(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

uint64_t sub_1003B2E30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 216))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003B2EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B2FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B3020(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E950();
  }

  if (!sub_1003AF63C(&v10, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 3;
  v8 = 1;
  *(a1 + 4) = 1;
  sub_1003B30CC(a1);
  *(v7 + 24) = 3;
  sub_1003B2EC4(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

void sub_1003B30CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 88))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003B3160(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E950();
  }

  if (!sub_1003B31DC(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  v8 = 1;
  *(a1 + 4) = 1;
  *(v7 + 24) = 3;
  sub_1003B2EC4(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

uint64_t sub_1003B31DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 200))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

uint64_t sub_1003B3294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003B2DB4(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B331C(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B331C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003B3020(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B33A4(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B33A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_1003B3160(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B343C(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B343C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 3;
  sub_1003AD278(a1);
  *(v6 + 24) = 3;
  sub_1003B34A4(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003B34A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B34F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B3514(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B3598(a1))
  {
    return 1;
  }

  v5 = sub_1003B3648(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B3598(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B3648(uint64_t a1)
{
  v1 = (*(&unk_101FB21D8 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B3710(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_28DidFailToGetSubscriptionInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_28DidFailToGetSubscriptionInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B3808(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B3844(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E950();
  }

  if (!sub_1003AF63C(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 3;
  *(a1 + 4) = 0;
  sub_1003B30CC(a1);
  *(v7 + 24) = 3;
  sub_1003B38E4(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return 1;
}

void sub_1003B38E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B3A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B3A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_1003B3844(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B3AFC(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B3AFC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 3;
  sub_1003B38E4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003B3B54(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B3BD8(a1))
  {
    return 1;
  }

  v5 = sub_1003B3C88(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B3BD8(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B3C88(uint64_t a1)
{
  v1 = (*(&unk_101FB2230 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B3D50(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_12DidFailFetchEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_12DidFailFetchEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B3E48(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B3E84(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E950();
  }

  if (!sub_1003B3F04(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 4;
  *(a1 + 4) = 0;
  sub_1003B04C4(a1);
  *(v7 + 24) = 4;
  sub_1003B3F98(a1 + 95, a4, a1);
  *(v7 + 24) = 4;
  return 1;
}

uint64_t sub_1003B3F04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 224))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003B3F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B3FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_1003B3E84(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B40C4(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B40C4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 4;
  sub_1003B411C(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

void sub_1003B411C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B4240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B4278(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B42FC(a1))
  {
    return 1;
  }

  v5 = sub_1003B43AC(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B42FC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B43AC(uint64_t a1)
{
  v1 = (*(&unk_101FB2288 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B4474(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_16DidFetchProfilesEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_16DidFetchProfilesEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B456C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B45A8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E950();
  }

  if (!sub_1003B3F04(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 4;
  v8 = 1;
  *(a1 + 4) = 1;
  sub_1003B04C4(a1);
  *(v7 + 24) = 4;
  sub_1003B4634(a1 + 95, a4, a1);
  *(v7 + 24) = 4;
  return v8;
}

void sub_1003B4634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B4688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B46A4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E950();
  }

  if (!sub_1003AC678(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  v8 = 1;
  *(a1 + 4) = 1;
  *(v7 + 24) = 4;
  sub_1003B4720(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

void sub_1003B4720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B4844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B487C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E950();
  }

  if (!sub_1003AF63C(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 4;
  sub_1003AC70C(a1);
  *(v7 + 24) = 4;
  sub_1003B4918(a1 + 96, a4, a1);
  *(v7 + 24) = 3;
  return 1;
}

void sub_1003B4918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForSubscription");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B496C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B4988(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E950();
  }

  if (!sub_1003AF698(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  v8 = 1;
  *(a1 + 4) = 1;
  *(v7 + 24) = 4;
  sub_1003B4720(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

uint64_t sub_1003B4A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003B45A8(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B4AB0(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B4AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003B46A4(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B4B38(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B4B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003B487C(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B4BC0(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B4BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_1003B4988(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B4C58(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B4C58(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 4;
  sub_1003B4720(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003B4CB8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 6;
  sub_1003B1888(a1);
  *(v6 + 24) = 6;
  sub_1003B4D20(a1 + 92, a4, a1);
  *(v6 + 24) = 7;
  return 1;
}

void sub_1003B4D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "UserInWebsheet");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B4D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B4D98(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 6;
  sub_1003B4DF0(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

void sub_1003B4DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B4F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003B4F4C(void *a1)
{
  *a1 = off_101E48120;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003B4F98(void *a1)
{
  *a1 = off_101E48120;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003B5078(uint64_t result, uint64_t a2)
{
  *a2 = off_101E48120;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003B50B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003B50C8(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003B5108(void *a1, unsigned __int8 *a2, __int128 *a3)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = *a2;
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        v10 = *(v7 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11[0] = 67109120;
          v11[1] = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I websheet info result : %d", v11, 8u);
        }

        if (v6)
        {
          sub_1003B5280((v7 + 408), a3);
          sub_1003B52DC(*(v7 + 88), v11, 1);
        }

        else
        {
          sub_1003B5604(*(v7 + 88), v11, 1);
        }
      }

      sub_100004A34(v9);
    }
  }
}

uint64_t sub_1003B5234(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003B5280(_BYTE *a1, __int128 *a2)
{
  if (*a1 == 1)
  {

    sub_1003AB0A0(a1, a2);
  }

  else
  {
    sub_10016F74C(a1 + 8, a2);
    *a1 = 1;
  }
}

uint64_t sub_1003B52DC(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B5360(a1))
  {
    return 1;
  }

  v5 = sub_1003B5410(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B5360(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B5410(uint64_t a1)
{
  v1 = (*(&unk_101FB22E0 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B54D8(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_18DidGetWebsheetInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_18DidGetWebsheetInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B55D0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B5604(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B5688(a1))
  {
    return 1;
  }

  v5 = sub_1003B5738(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B5688(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B5738(uint64_t a1)
{
  v1 = (*(&unk_101FB2338 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B5800(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_24DidFailToGetWebsheetInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_24DidFailToGetWebsheetInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B58F8(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B592C(uint64_t a1)
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

_BYTE *sub_1003B59AC(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 22 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_1003B5A64(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0x16)) + 184 * (v7 % 0x16));
  }

  result = sub_1003AB564(v8, a2);
  ++a1[5];
  return result;
}

void sub_1003B5A64(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x16;
  v3 = v1 - 22;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_1000FB8B8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_100129284(a1, &v9);
}

void sub_1003B5BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003B5C38(unint64_t *result, __int128 *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    sub_1003B5CD8(result);
    v5 = result[1];
    v7 = result[5];
    v8 = v7 + result[4];
  }

  v9 = *a2;
  *(*(v5 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    v7 = result[5];
  }

  result[5] = v7 + 1;
}

void sub_1003B5CD8(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_1000FB8B8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_100129284(a1, &v9);
}

void sub_1003B5E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003B5EAC(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2 + 8);
  if (v3)
  {
    sub_100004A34(v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_1003B5F1C(a1, 1);
}

uint64_t sub_1003B5F1C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t sub_1003B5F7C(int64x2_t *a1)
{
  v2 = *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x16uLL)) + 184 * (a1[2].i64[0] % 0x16uLL);
  if (*(v2 + 176) == 1)
  {
    if (*(v2 + 167) < 0)
    {
      operator delete(*(v2 + 144));
    }

    if (*(v2 + 135) < 0)
    {
      operator delete(*(v2 + 112));
    }

    if (*(v2 + 111) < 0)
    {
      operator delete(*(v2 + 88));
    }

    if (*(v2 + 87) < 0)
    {
      operator delete(*(v2 + 64));
    }

    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }
  }

  a1[2] = vaddq_s64(a1[2], xmmword_1017CD970);

  return sub_1003B6068(a1, 1);
}

uint64_t sub_1003B6068(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x16)
  {
    a2 = 1;
  }

  if (v2 < 0x2C)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 22;
  }

  return v4 ^ 1u;
}

unint64_t *sub_1003B60C8(unint64_t *a1, void *a2)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 8));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 8));
  }

  else
  {
    v8 = (*v7 + 16 * v4);
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 8));
    v11 = (*v10 + 16 * v9);
  }

  sub_1003B616C(a1, v7, v8, v10, v11);
  return a1;
}

void sub_1003B616C(unint64_t *a1, char *a2, void *a3, char *a4, void *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((a5 - *a4) >> 4) + 32 * (a4 - a2) - ((a3 - *a2) >> 4);
  }

  sub_1003B61A0(a1, a2, a3, v5);
}

void sub_1003B61A0(unint64_t *result, void *a2, void *a3, unint64_t a4)
{
  v8 = result[1];
  v9 = result[2];
  v10 = 32 * (v9 - v8) - 1;
  if (v9 == v8)
  {
    v10 = 0;
  }

  v11 = result[5];
  v12 = v11 + result[4];
  v13 = v10 - v12;
  if (a4 > v13)
  {
    sub_1003B631C(result, a4 - v13);
    v11 = result[5];
    v8 = result[1];
    v9 = result[2];
    v12 = result[4] + v11;
  }

  v14 = (v8 + 8 * (v12 >> 8));
  if (v9 != v8)
  {
    v15 = *v14 + 16 * v12;
    v16 = v15;
    if (a4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v18 = v14;
    goto LABEL_12;
  }

  v15 = 0;
  v16 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = a4 + ((v16 - *v14) >> 4);
  if (v17 < 1)
  {
    v19 = 255 - v17;
    v18 = &v14[-(v19 >> 8)];
    v16 = *v18 + 16 * ~v19;
  }

  else
  {
    v18 = &v14[v17 >> 8];
    v16 = *v18 + 16 * v17;
  }

LABEL_12:
  if (v15 != v16)
  {
    do
    {
      v20 = v16;
      if (v14 != v18)
      {
        v20 = *v14 + 4096;
      }

      if (v15 == v20)
      {
        v20 = v15;
      }

      else
      {
        v21 = v15;
        do
        {
          v22 = a3[1];
          *v21 = *a3;
          v21[1] = v22;
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          a3 += 2;
          if ((a3 - *a2) == 4096)
          {
            v23 = a2[1];
            ++a2;
            a3 = v23;
          }

          v21 += 2;
        }

        while (v21 != v20);
        v11 = result[5];
      }

      v11 += (v20 - v15) >> 4;
      result[5] = v11;
      if (v14 == v18)
      {
        break;
      }

      v24 = v14[1];
      ++v14;
      v15 = v24;
    }

    while (v24 != v16);
  }
}

void sub_1003B631C(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4)
  {
    v5 = (v4 >> 8) + 1;
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 8)
  {
    v7 = v6 >> 8;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 8)
  {
    for (a1[4] = v6 - (v7 << 8); v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_100129284(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        sub_1000FB8B8(a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= v7 << 8; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_100129284(a1, v16);
    }
  }
}

void sub_1003B65C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003B6634()
{
  if ((byte_101FB1D00 & 1) == 0)
  {
    byte_101FB1D00 = 1;
    qword_101FB1CF0 = sub_1003AC5F8;
    unk_101FB1CF8 = sub_1003AC5F8;
    qword_101FB1CE0 = sub_1003AC5F8;
    unk_101FB1CE8 = sub_1003AC5F8;
    qword_101FB1CD0 = sub_1003AC5F8;
    unk_101FB1CD8 = sub_1003AC5F8;
    qword_101FB1CC0 = sub_1003AC5F8;
    unk_101FB1CC8 = sub_1003AC5F8;
    qword_101FB1CB8 = sub_1003ACF3C;
  }
}

void sub_1003B6680()
{
  if ((byte_101FB1D58 & 1) == 0)
  {
    byte_101FB1D58 = 1;
    qword_101FB1D48 = sub_1003AD6A4;
    unk_101FB1D50 = sub_1003AD6A4;
    qword_101FB1D38 = sub_1003AD6A4;
    unk_101FB1D40 = sub_1003AD6A4;
    qword_101FB1D20 = sub_1003AD6A4;
    unk_101FB1D28 = sub_1003AD6A4;
    qword_101FB1D10 = sub_1003AD6A4;
    *algn_101FB1D18 = sub_1003AD6A4;
    qword_101FB1D30 = sub_1003AD6AC;
  }
}

void sub_1003B66CC()
{
  if ((byte_101FB1DB0 & 1) == 0)
  {
    byte_101FB1DB0 = 1;
    qword_101FB1DA0 = sub_1003ADBE8;
    unk_101FB1DA8 = sub_1003ADBE8;
    qword_101FB1D90 = sub_1003ADBE8;
    unk_101FB1D98 = sub_1003ADBE8;
    qword_101FB1D78 = sub_1003ADBE8;
    unk_101FB1D80 = sub_1003ADBE8;
    qword_101FB1D68 = sub_1003ADBE8;
    unk_101FB1D70 = sub_1003ADBE8;
    qword_101FB1D88 = sub_1003ADBF0;
  }
}

void sub_1003B6718()
{
  if ((byte_101FB1E08 & 1) == 0)
  {
    byte_101FB1E08 = 1;
    qword_101FB1E00 = sub_1003AE074;
    qword_101FB1DF8 = sub_1003AE07C;
    qword_101FB1DF0 = sub_1003AE2C8;
    qword_101FB1DE8 = sub_1003AE320;
    qword_101FB1DE0 = sub_1003AE558;
    qword_101FB1DD8 = sub_1003AE5B0;
    qword_101FB1DD0 = sub_1003AE608;
    qword_101FB1DC8 = sub_1003AE660;
    qword_101FB1DC0 = sub_1003AE6B8;
  }
}

void sub_1003B67C8()
{
  if ((byte_101FB1E60 & 1) == 0)
  {
    byte_101FB1E60 = 1;
    qword_101FB1E50 = sub_1003AEA30;
    unk_101FB1E58 = sub_1003AEA30;
    qword_101FB1E48 = sub_1003AEA30;
    qword_101FB1E30 = sub_1003AEA30;
    unk_101FB1E38 = sub_1003AEA30;
    qword_101FB1E20 = sub_1003AEA30;
    unk_101FB1E28 = sub_1003AEA30;
    qword_101FB1E18 = sub_1003AEA30;
    qword_101FB1E40 = sub_1003AEA38;
  }
}

void sub_1003B6818()
{
  if ((byte_101FB1EB8 & 1) == 0)
  {
    byte_101FB1EB8 = 1;
    qword_101FB1EA8 = sub_1003AEF6C;
    unk_101FB1EB0 = sub_1003AEF6C;
    qword_101FB1EA0 = sub_1003AEF6C;
    qword_101FB1E88 = sub_1003AEF6C;
    unk_101FB1E90 = sub_1003AEF6C;
    qword_101FB1E78 = sub_1003AEF6C;
    unk_101FB1E80 = sub_1003AEF6C;
    qword_101FB1E70 = sub_1003AEF6C;
    qword_101FB1E98 = sub_1003AEF74;
  }
}

void sub_1003B6868()
{
  if ((byte_101FB1F10 & 1) == 0)
  {
    byte_101FB1F10 = 1;
    qword_101FB1F08 = sub_1003AF598;
    qword_101FB1EF0 = sub_1003AF598;
    unk_101FB1EF8 = sub_1003AF598;
    qword_101FB1EE8 = sub_1003AF598;
    qword_101FB1ED0 = sub_1003AF598;
    unk_101FB1ED8 = sub_1003AF598;
    qword_101FB1EC8 = sub_1003AF598;
    qword_101FB1F00 = sub_1003AFA9C;
    qword_101FB1EE0 = sub_1003AFCB8;
  }
}

void sub_1003B68C8()
{
  if ((byte_101FB1F68 & 1) == 0)
  {
    byte_101FB1F68 = 1;
    qword_101FB1F60 = sub_1003B0048;
    qword_101FB1F48 = sub_1003B0048;
    unk_101FB1F50 = sub_1003B0048;
    qword_101FB1F38 = sub_1003B0048;
    unk_101FB1F40 = sub_1003B0048;
    qword_101FB1F28 = sub_1003B0048;
    unk_101FB1F30 = sub_1003B0048;
    qword_101FB1F20 = sub_1003B0048;
    qword_101FB1F58 = sub_1003B0050;
  }
}

void sub_1003B6918()
{
  if ((byte_101FB1FC0 & 1) == 0)
  {
    byte_101FB1FC0 = 1;
    qword_101FB1FB0 = sub_1003B0450;
    unk_101FB1FB8 = sub_1003B0450;
    qword_101FB1FA0 = sub_1003B0450;
    unk_101FB1FA8 = sub_1003B0450;
    qword_101FB1F88 = sub_1003B0450;
    unk_101FB1F90 = sub_1003B0450;
    qword_101FB1F78 = sub_1003B0450;
    unk_101FB1F80 = sub_1003B0450;
    qword_101FB1F98 = sub_1003B0458;
  }
}

void sub_1003B6964()
{
  if ((byte_101FB2018 & 1) == 0)
  {
    byte_101FB2018 = 1;
    qword_101FB2010 = sub_1003B08F4;
    qword_101FB1FE8 = sub_1003B08F4;
    unk_101FB1FF0 = sub_1003B08F4;
    qword_101FB1FD0 = sub_1003B08F4;
    qword_101FB2008 = sub_1003B08FC;
    qword_101FB2000 = sub_1003B0AB0;
    qword_101FB1FF8 = sub_1003B0B08;
    qword_101FB1FE0 = sub_1003B0C14;
    qword_101FB1FD8 = sub_1003B0D5C;
  }
}

void sub_1003B69EC()
{
  if ((byte_101FB2070 & 1) == 0)
  {
    byte_101FB2070 = 1;
    qword_101FB2068 = sub_1003B1288;
    qword_101FB2050 = sub_1003B1288;
    unk_101FB2058 = sub_1003B1288;
    qword_101FB2040 = sub_1003B1288;
    unk_101FB2048 = sub_1003B1288;
    qword_101FB2030 = sub_1003B1288;
    unk_101FB2038 = sub_1003B1288;
    qword_101FB2028 = sub_1003B1288;
    qword_101FB2060 = sub_1003B1290;
  }
}

void sub_1003B6A3C()
{
  if ((byte_101FB20C8 & 1) == 0)
  {
    byte_101FB20C8 = 1;
    qword_101FB20B8 = sub_1003B1690;
    unk_101FB20C0 = sub_1003B1690;
    qword_101FB20A8 = sub_1003B1690;
    unk_101FB20B0 = sub_1003B1690;
    qword_101FB2098 = sub_1003B1690;
    unk_101FB20A0 = sub_1003B1690;
    qword_101FB2080 = sub_1003B1690;
    *algn_101FB2088 = sub_1003B1690;
    qword_101FB2090 = sub_1003B1A04;
  }
}

void sub_1003B6A88()
{
  if ((byte_101FB2120 & 1) == 0)
  {
    byte_101FB2120 = 1;
    qword_101FB2110 = sub_1003B2064;
    unk_101FB2118 = sub_1003B2064;
    qword_101FB2108 = sub_1003B2064;
    qword_101FB20F0 = sub_1003B2064;
    unk_101FB20F8 = sub_1003B2064;
    qword_101FB20E0 = sub_1003B2064;
    unk_101FB20E8 = sub_1003B2064;
    qword_101FB20D8 = sub_1003B2064;
    qword_101FB2100 = sub_1003B206C;
  }
}

void sub_1003B6AD8()
{
  if ((byte_101FB2178 & 1) == 0)
  {
    byte_101FB2178 = 1;
    qword_101FB2168 = sub_1003B2690;
    unk_101FB2170 = sub_1003B2690;
    qword_101FB2158 = sub_1003B2690;
    unk_101FB2160 = sub_1003B2690;
    qword_101FB2148 = sub_1003B2690;
    unk_101FB2150 = sub_1003B2690;
    qword_101FB2140 = sub_1003B2690;
    qword_101FB2130 = sub_1003B2690;
    qword_101FB2138 = sub_1003B2868;
  }
}

void sub_1003B6B28()
{
  if ((byte_101FB21D0 & 1) == 0)
  {
    byte_101FB21D0 = 1;
    qword_101FB21C0 = sub_1003B2DAC;
    unk_101FB21C8 = sub_1003B2DAC;
    qword_101FB21B0 = sub_1003B2DAC;
    unk_101FB21B8 = sub_1003B2DAC;
    qword_101FB21A8 = sub_1003B2DAC;
    qword_101FB2190 = sub_1003B2DAC;
    unk_101FB2198 = sub_1003B2DAC;
    qword_101FB2188 = sub_1003B2DAC;
    qword_101FB21A0 = sub_1003B3270;
  }
}

void sub_1003B6B78()
{
  if ((byte_101FB2228 & 1) == 0)
  {
    byte_101FB2228 = 1;
    qword_101FB2218 = sub_1003B383C;
    unk_101FB2220 = sub_1003B383C;
    qword_101FB2208 = sub_1003B383C;
    unk_101FB2210 = sub_1003B383C;
    qword_101FB2200 = sub_1003B383C;
    qword_101FB21E8 = sub_1003B383C;
    unk_101FB21F0 = sub_1003B383C;
    qword_101FB21E0 = sub_1003B383C;
    qword_101FB21F8 = sub_1003B3A40;
  }
}

void sub_1003B6BC8()
{
  if ((byte_101FB2280 & 1) == 0)
  {
    byte_101FB2280 = 1;
    qword_101FB2270 = sub_1003B3E7C;
    unk_101FB2278 = sub_1003B3E7C;
    qword_101FB2260 = sub_1003B3E7C;
    unk_101FB2268 = sub_1003B3E7C;
    qword_101FB2248 = sub_1003B3E7C;
    unk_101FB2250 = sub_1003B3E7C;
    qword_101FB2238 = sub_1003B3E7C;
    unk_101FB2240 = sub_1003B3E7C;
    qword_101FB2258 = sub_1003B4008;
  }
}

void sub_1003B6C14()
{
  if ((byte_101FB22D8 & 1) == 0)
  {
    byte_101FB22D8 = 1;
    qword_101FB22C8 = sub_1003B45A0;
    unk_101FB22D0 = sub_1003B45A0;
    qword_101FB22B8 = sub_1003B45A0;
    unk_101FB22C0 = sub_1003B45A0;
    qword_101FB22A0 = sub_1003B45A0;
    unk_101FB22A8 = sub_1003B45A0;
    qword_101FB2290 = sub_1003B45A0;
    *algn_101FB2298 = sub_1003B45A0;
    qword_101FB22B0 = sub_1003B4A04;
  }
}

void sub_1003B6C60()
{
  if ((byte_101FB2330 & 1) == 0)
  {
    byte_101FB2330 = 1;
    qword_101FB2320 = sub_1003B4CB0;
    unk_101FB2328 = sub_1003B4CB0;
    qword_101FB2308 = sub_1003B4CB0;
    unk_101FB2310 = sub_1003B4CB0;
    qword_101FB22F8 = sub_1003B4CB0;
    unk_101FB2300 = sub_1003B4CB0;
    qword_101FB22E8 = sub_1003B4CB0;
    unk_101FB22F0 = sub_1003B4CB0;
    qword_101FB2318 = sub_1003B4CB8;
  }
}

void sub_1003B6CAC()
{
  if ((byte_101FB2388 & 1) == 0)
  {
    byte_101FB2388 = 1;
    qword_101FB2378 = sub_1003B4D90;
    unk_101FB2380 = sub_1003B4D90;
    qword_101FB2360 = sub_1003B4D90;
    unk_101FB2368 = sub_1003B4D90;
    qword_101FB2350 = sub_1003B4D90;
    unk_101FB2358 = sub_1003B4D90;
    qword_101FB2340 = sub_1003B4D90;
    *algn_101FB2348 = sub_1003B4D90;
    qword_101FB2370 = sub_1003B4D98;
  }
}

uint64_t sub_1003B6CF8(uint64_t result)
{
  *result = off_101E48238;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_1003B6D1C(void ***a1)
{
  *a1 = off_101E48238;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1003B6D74(void ***a1)
{
  *a1 = off_101E48238;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_1003B6DE0(uint64_t a1, uint64_t a2)
{
  *a1 = off_101E48238;
  *(a1 + 8) = 0;
  *(a1 + 20) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 16);
    *(a1 + 20) |= 1u;
    *(a1 + 16) = v2;
  }

  return a1;
}

uint64_t sub_1003B6EAC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 20))
  {
    PB::TextFormatter::format(this, "reason", *(a1 + 16));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1003B6F24(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_50;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v34 = v23 - v24;
          if (!v17)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_45;
            }

            v37 = *v35;
            *(this + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            --v34;
            ++v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_41:
              LODWORD(v28) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(a1 + 16) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_50:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_1003B71E0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(this, v5, 2u);
  }

  return result;
}

uint64_t DataServiceController::load_APNFallbackKernelEventMonitor(DataServiceController *this)
{
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "load_APNFallbackKernelEventMonitor";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I %s: APN Fallback is not supported", &v3, 0xCu);
  }

  return 0;
}

uint64_t DataServiceController::setApnFallback(DataServiceController *this, int a2)
{
  if (a2)
  {
    DataServiceController::load_APNFallbackKernelEventMonitor(this);
  }

  return 0;
}

uint64_t sub_1003B7318(uint64_t a1)
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

void sub_1003B75F8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = [(NSError *)v2 localizedDescription];
    sub_10176EA00(v3, v4);
  }
}

uint64_t sub_1003B76A4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_101FBA2E0, memory_order_acquire) & 1) == 0)
  {
    sub_10176EA5C();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003B8018;
  block[3] = &unk_101E26008;
  block[4] = a1;
  if (qword_101FBA2D0 != -1)
  {
    dispatch_once(&qword_101FBA2D0, block);
  }

  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
  }

  v6 = 0;
  v7 = 0;
  sub_1006FF688(a1, @"NETWORK_SLICING_DISCOVERED_MSG");
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 64));
    sub_10176EB54(v4, buf);
  }

  sub_100005978(&v6);

  sub_100005978(&v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1003B7EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100005978(&a17);
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003B7FE8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1003B8074(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I sending slicing notification: %@ %@ %@", &v11, 0x20u);
  }

  [*(a1 + 8) sendNotification:v7 body:v8 identifier:v9];
}

void sub_1003B8194(unint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = [NSMutableData dataWithLength:32];
  *(&v16.__r_.__value_.__s + 23) = 9;
  strcpy(&v16, "Category:");
  std::to_string(&__p, a1);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = std::string::append(&v16, p_p, size);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v18 = v7->__r_.__value_.__r.__words[2];
  *v17 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v9 = HIBYTE(v18);
  v11 = v17[0];
  v10 = v17[1];
  v12 = [v4 bytes];
  if ((v9 & 0x80u) == 0)
  {
    v13 = v17;
  }

  else
  {
    v13 = v11;
  }

  if ((v9 & 0x80u) == 0)
  {
    v14 = v9;
  }

  else
  {
    v14 = v10;
  }

  CC_SHA256(v13, v14, v12);
  *a2 = [v4 base64EncodedStringWithOptions:0];
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_1003B82C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1003B8384(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E482B8;
  sub_1003B8494((a1 + 3), a2);
  return a1;
}

void sub_1003B8400(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E482B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003B8454(uint64_t a1)
{

  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
}

ctu::OsLogLogger *sub_1003B8494(ctu::OsLogLogger *a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "ps.slc.ntfy");
  ctu::OsLogLogger::OsLogLogger(v8, &v7);
  ctu::OsLogLogger::OsLogLogger(a1, v8);
  ctu::OsLogLogger::~OsLogLogger(v8);
  ctu::OsLogContext::~OsLogContext(&v7);
  *(a1 + 1) = 0;
  v4 = [[NRSlicingNotificationManagerImpl alloc] initWithQueue:*a2];
  v5 = *(a1 + 1);
  *(a1 + 1) = v4;

  return a1;
}

void sub_1003B852C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003B85FC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 3)
  {
    v6 = "DATA.iRatClient.1";
  }

  else
  {
    v6 = off_101E48558[a2];
  }

  ctu::OsLogContext::OsLogContext(&v10, kCtLoggingSystemName, v6);
  ctu::OsLogLogger::OsLogLogger(v11, &v10);
  ctu::OsLogLogger::OsLogLogger((a1 + 72), v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  ctu::OsLogContext::~OsLogContext(&v10);
  sub_10000501C(&__p, "com.apple.irat.client");
  ctu::XpcClient::XpcClient();
  if (v9 < 0)
  {
    operator delete(__p);
  }

  *a1 = off_101E48308;
  *(a1 + 80) = a3;
  *(a1 + 88) = a2;
  return a1;
}

void sub_1003B86E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 72));
  _Unwind_Resume(a1);
}

void sub_1003B8730(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1003B883C;
  v3[3] = &unk_101E48328;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1003BA968;
  block[3] = &unk_101E484B8;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003B8844(dispatch_queue_t *a1)
{
  v2 = a1[9];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting iRat Client", buf, 2u);
  }

  mach_service = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", a1[3], 0);
  if (mach_service)
  {
    v4 = mach_service;
    object = mach_service;
LABEL_6:
    xpc_retain(v4);
    goto LABEL_7;
  }

  v4 = xpc_null_create();
  object = v4;
  if (v4)
  {
    goto LABEL_6;
  }

  v4 = 0;
  object = xpc_null_create();
LABEL_7:
  v5.var0.fObj = &object;
  ctu::XpcClient::setServer_sync(a1, v5);
  xpc_release(object);
  object = 0;
  if (xpc_get_type(v4) == &_xpc_type_connection)
  {
    sub_1003B9A28(a1);
  }

  xpc_release(v4);
}

void sub_1003B8940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void sub_1003B8974(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1003B8A38;
  v3[3] = &unk_101E48348;
  v3[4] = a1;
  v4 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1003BA9A4;
  block[3] = &unk_101E484E8;
  block[4] = a1 + 8;
  block[5] = &v4;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void sub_1003B8A40(ctu::XpcClient *a1)
{
  v2 = *(a1 + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Shutting down iRat Client", buf, 2u);
  }

  object = xpc_null_create();
  v3.var0.fObj = &object;
  ctu::XpcClient::setServer_sync(a1, v3);
  xpc_release(object);
}

void sub_1003B8AE0(uint64_t a1, uint64_t *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_1003B8C10;
  v6[3] = &unk_101E48368;
  v4 = *a2;
  v3 = a2[1];
  v6[4] = a1;
  v6[5] = v4;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1003BA968;
  block[3] = &unk_101E484B8;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003B8C10(uint64_t ***a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4[0] = a1[5];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  sub_1003B8CA0(v2, 0x190uLL, v4);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_1003B8C88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003B8CA0(uint64_t a1, uint64_t a2, uint64_t ***a3)
{
  if (xpc_get_type(*(a1 + 40)) != &_xpc_type_connection)
  {
    v6 = *(a1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Invalid XPC connection. Failed to send msg %llu to server", &buf, 0xCu);
    }

    return;
  }

  v7 = xpc_array_create(0, 0);
  v8 = v7;
  if (v7)
  {
    object = v7;
  }

  else
  {
    v8 = xpc_null_create();
    object = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_11;
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_array)
  {
    xpc_retain(v8);
    goto LABEL_12;
  }

  v9 = xpc_null_create();
LABEL_11:
  object = v9;
LABEL_12:
  xpc_release(v8);
  v10 = **a3;
  for (i = (*a3)[1]; v10 != i; v10 += 16)
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = v12;
      v22 = v13;
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v21 = *v10;
      v22 = 0;
    }

    sub_1003B9394(&v21, *(a1 + 88), &object);
    if (v13)
    {
      sub_100004A34(v13);
      sub_100004A34(v13);
    }
  }

  v14 = object;
  if (object)
  {
    xpc_retain(object);
    sub_10107F3AC(&buf);
    *v26 = v14;
  }

  else
  {
    v14 = xpc_null_create();
    sub_10107F3AC(&buf);
    *v26 = v14;
    if (!v14)
    {
      v14 = 0;
      *v26 = xpc_null_create();
      goto LABEL_23;
    }
  }

  xpc_retain(v14);
LABEL_23:
  sub_1003BAD8C(&buf, "kWRMApplicationTypeList", v26, &message);
  xpc_release(*v26);
  *v26 = 0;
  xpc_release(buf);
  v15 = message;
  message = xpc_null_create();
  xpc_release(message);
  message = 0;
  xpc_release(v14);
  message = 0;
  sub_10107F3AC(&buf);
  sub_1003BA9B8(v26, a2, &buf, "kMessageId");
  xpc_release(buf);
  message = *v26;
  *v26 = xpc_null_create();
  xpc_release(*v26);
  v18 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v18 = xpc_null_create();
  }

  *&buf = &message;
  *(&buf + 1) = "kMessageArgs";
  sub_100DAE90C(&buf, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  xpc_connection_send_message(*(a1 + 40), message);
  v16 = *(a1 + 72);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(&buf, &message);
    if (v25 >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf;
    }

    *v26 = 134218242;
    *&v26[4] = a2;
    v27 = 2080;
    v28 = p_buf;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Send msg %llu to server: %s", v26, 0x16u);
    if (v25 < 0)
    {
      operator delete(buf);
    }
  }

  xpc_release(message);
  xpc_release(v15);
  xpc_release(object);
}

void sub_1003B9014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, xpc_object_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1003B90C4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003B90E0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1003B90F0(uint64_t a1, uint64_t *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_1003B9220;
  v6[3] = &unk_101E48398;
  v4 = *a2;
  v3 = a2[1];
  v6[4] = a1;
  v6[5] = v4;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1003BA968;
  block[3] = &unk_101E484B8;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003B9220(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003B8CA0(v2, 0x191uLL, v4);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_1003B9298(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003B92B0(uint64_t a1, char a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void sub_1003B9394(int **a1, uint64_t a2, xpc_object_t *a3)
{
  if ((**a1 & 0x80000000) == 0)
  {
    v43 = 0;
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    if (v6)
    {
      v43 = v6;
    }

    else
    {
      v7 = xpc_null_create();
      v43 = v7;
      if (!v7)
      {
        v8 = xpc_null_create();
        v7 = 0;
        goto LABEL_9;
      }
    }

    if (xpc_get_type(v7) == &_xpc_type_dictionary)
    {
      xpc_retain(v7);
      goto LABEL_10;
    }

    v8 = xpc_null_create();
LABEL_9:
    v43 = v8;
LABEL_10:
    xpc_release(v7);
    v41 = xpc_uint64_create(**a1);
    if (!v41)
    {
      v41 = xpc_null_create();
    }

    v39 = &v43;
    v40 = "kWRMApplicationType";
    sub_10000F688(&v39, &v41, &v42);
    xpc_release(v42);
    v42 = 0;
    xpc_release(v41);
    v41 = 0;
    sub_100A29D24(&v43, a2);
    v9 = *a1;
    v10 = (*a1)[1];
    if ((v10 & 0x80000000) == 0)
    {
      v37 = xpc_uint64_create(v10);
      if (!v37)
      {
        v37 = xpc_null_create();
      }

      v39 = &v43;
      v40 = "kWRMLinkType";
      sub_10000F688(&v39, &v37, &v38);
      xpc_release(v38);
      v38 = 0;
      xpc_release(v37);
      v37 = 0;
      v9 = *a1;
    }

    v11 = (v9 + 8);
    if (*(v9 + 31) < 0)
    {
      if (!*(v9 + 16))
      {
        goto LABEL_24;
      }

      v11 = *v11;
    }

    else if (!*(v9 + 31))
    {
      goto LABEL_24;
    }

    v35 = xpc_string_create(v11);
    if (!v35)
    {
      v35 = xpc_null_create();
    }

    v39 = &v43;
    v40 = "kWRMConnIdentifier";
    sub_10000F688(&v39, &v35, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v35);
    v35 = 0;
    v9 = *a1;
LABEL_24:
    v12 = *(v9 + 32);
    if ((v12 & 0x80000000) == 0)
    {
      v33 = xpc_uint64_create(v12);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      v39 = &v43;
      v40 = "kWRMDesiredLinkQoS";
      sub_10000F688(&v39, &v33, &v34);
      xpc_release(v34);
      v34 = 0;
      xpc_release(v33);
      v33 = 0;
      v9 = *a1;
    }

    v13 = *(v9 + 36);
    if ((v13 & 0x80000000) == 0)
    {
      v31 = xpc_uint64_create(v13);
      if (!v31)
      {
        v31 = xpc_null_create();
      }

      v39 = &v43;
      v40 = "kWRMDesiredBandwidth";
      sub_10000F688(&v39, &v31, &v32);
      xpc_release(v32);
      v32 = 0;
      xpc_release(v31);
      v31 = 0;
      v9 = *a1;
    }

    v14 = *(v9 + 40);
    if ((v14 & 0x80000000) == 0)
    {
      v29 = xpc_uint64_create(v14);
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      v39 = &v43;
      v40 = "kWRMServiceStatus";
      sub_10000F688(&v39, &v29, &v30);
      xpc_release(v30);
      v30 = 0;
      xpc_release(v29);
      v29 = 0;
      v9 = *a1;
    }

    if ((*(v9 + 44) & 0x80000000) != 0 && (*(v9 + 48) & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    v28 = 0;
    v15 = xpc_dictionary_create(0, 0, 0);
    v16 = v15;
    if (v15)
    {
      v28 = v15;
    }

    else
    {
      v16 = xpc_null_create();
      v28 = v16;
      if (!v16)
      {
        v17 = xpc_null_create();
        v16 = 0;
        goto LABEL_45;
      }
    }

    if (xpc_get_type(v16) == &_xpc_type_dictionary)
    {
      xpc_retain(v16);
LABEL_46:
      xpc_release(v16);
      v26 = v28;
      if (v28)
      {
        xpc_retain(v28);
      }

      else
      {
        v26 = xpc_null_create();
      }

      v39 = &v43;
      v40 = "kWRMPolicyInfo";
      sub_100DAE90C(&v39, &v26, &v27);
      xpc_release(v27);
      v27 = 0;
      xpc_release(v26);
      v26 = 0;
      v18 = *a1;
      v19 = (*a1)[11];
      if ((v19 & 0x80000000) == 0)
      {
        if (v19 <= 2)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v24 = xpc_int64_create(v20);
        if (!v24)
        {
          v24 = xpc_null_create();
        }

        v39 = &v28;
        v40 = "kWRMPolicyInfoHoAlgorithmType";
        sub_10000F688(&v39, &v24, &v25);
        xpc_release(v25);
        v25 = 0;
        xpc_release(v24);
        v24 = 0;
        v18 = *a1;
      }

      v21 = *(v18 + 48);
      if ((v21 & 0x80000000) == 0)
      {
        v22 = xpc_uint64_create(v21);
        if (!v22)
        {
          v22 = xpc_null_create();
        }

        v39 = &v28;
        v40 = "kWRMPolicyInfoServiceType";
        sub_10000F688(&v39, &v22, &v23);
        xpc_release(v23);
        v23 = 0;
        xpc_release(v22);
        v22 = 0;
      }

      xpc_release(v28);
LABEL_61:
      xpc_array_append_value(*a3, v43);
      xpc_release(v43);
      return;
    }

    v17 = xpc_null_create();
LABEL_45:
    v28 = v17;
    goto LABEL_46;
  }
}

void sub_1003B98F8(uint64_t a1, xpc::object *a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, a2);
    v5 = v8 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received error from server: %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*a2 == &_xpc_error_connection_interrupted)
  {
    v6 = *(a1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Connection interrupted", __p, 2u);
    }

    sub_1003B9A28(a1);
  }
}

void sub_1003B9A28(uint64_t a1)
{
  if (xpc_get_type(*(a1 + 40)) == &_xpc_type_connection)
  {
    message = 0;
    sub_10107F3AC(object);
    sub_1003BA9B8(buf, 1uLL, object, "kMessageId");
    xpc_release(object[0]);
    message = *buf;
    *buf = xpc_null_create();
    xpc_release(*buf);
    v3 = sub_100A29D10(*(a1 + 88));
    sub_10107F3AC(object);
    sub_1003BA9B8(buf, v3, object, "kWCMRegisterProcess_ProcessId");
    xpc_release(object[0]);
    v4 = *buf;
    *buf = xpc_null_create();
    xpc_release(*buf);
    v9 = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      v9 = xpc_null_create();
    }

    object[0] = &message;
    object[1] = "kMessageArgs";
    sub_100DAE90C(object, &v9, &v10);
    xpc_release(v10);
    v10 = 0;
    xpc_release(v9);
    v9 = 0;
    xpc_connection_send_message(*(a1 + 40), message);
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(object, &message);
      if (v8 >= 0)
      {
        v6 = object;
      }

      else
      {
        v6 = object[0];
      }

      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I register with server: %s", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(object[0]);
      }
    }

    (*(**(a1 + 80) + 16))(*(a1 + 80), *(a1 + 88));
    xpc_release(v4);
    xpc_release(message);
  }

  else
  {
    v2 = *(a1 + 72);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(object[0]) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Invalid XPC connection. Failed to register with server", object, 2u);
    }
  }
}

void sub_1003B9C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(v14);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_1003B9E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003B9E90(uint64_t a1, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1003B9FA0;
  v4[3] = &unk_101E483C8;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1003BA968;
  block[3] = &unk_101E484B8;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1003B9FB0(uint64_t a1, int64_t a2)
{
  if (xpc_get_type(*(a1 + 40)) == &_xpc_type_connection)
  {
    v17 = 0;
    sub_10107F3AC(buf);
    sub_1003BA9B8(v18, 0x1A0uLL, buf, "kMessageId");
    xpc_release(*buf);
    v17 = *v18;
    *v18 = xpc_null_create();
    xpc_release(*v18);
    v16 = 0;
    sub_10107F3AC(buf);
    sub_1003BAEEC(v18, a2, buf, "kTunnelDisconnected");
    xpc_release(*buf);
    v16 = *v18;
    *v18 = xpc_null_create();
    xpc_release(*v18);
    v5 = subscriber::simSlotAsInstance();
    object = xpc_uint64_create(v5);
    if (!object)
    {
      object = xpc_null_create();
    }

    *buf = &v16;
    v10 = "kSlotID";
    sub_10000F688(buf, &object, &v15);
    xpc_release(v15);
    v15 = 0;
    xpc_release(object);
    object = 0;
    v12 = v16;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      v12 = xpc_null_create();
    }

    *buf = &v17;
    v10 = "kMessageArgs";
    sub_100DAE90C(buf, &v12, &v13);
    xpc_release(v13);
    v13 = 0;
    xpc_release(v12);
    v12 = 0;
    xpc_connection_send_message(*(a1 + 40), v17);
    v6 = *(a1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_100D96E64(&v17, &__p);
      sub_1003BA6A0(buf, &__p);
      if (v11 >= 0)
      {
        v7 = buf;
      }

      else
      {
        v7 = *buf;
      }

      *v18 = 136315138;
      *&v18[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I send NWD notification to iRat: <%s>", v18, 0xCu);
      if (v11 < 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    xpc_release(v16);
    xpc_release(v17);
  }

  else
  {
    v4 = *(a1 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Invalid XPC connection. Failed to send NWD notification", buf, 2u);
    }
  }
}

void sub_1003BA23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1003BA2C8(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1003BA3D4;
  v3[3] = &unk_101E483E8;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1003BA968;
  block[3] = &unk_101E484B8;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003BA3DC(uint64_t a1)
{
  if (xpc_get_type(*(a1 + 40)) == &_xpc_type_connection)
  {
    message = 0;
    sub_10107F3AC(buf);
    sub_1003BA9B8(v14, 0x1A4uLL, buf, "kMessageId");
    xpc_release(*buf);
    message = *v14;
    *v14 = xpc_null_create();
    xpc_release(*v14);
    v3 = subscriber::simSlotAsInstance();
    sub_10107F3AC(buf);
    sub_1003BA9B8(v14, v3, buf, "kSlotID");
    xpc_release(*buf);
    v4 = *v14;
    *v14 = xpc_null_create();
    xpc_release(*v14);
    v11 = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      v11 = xpc_null_create();
    }

    *buf = &message;
    v9 = "kMessageArgs";
    sub_100DAE90C(buf, &v11, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v11);
    v11 = 0;
    xpc_connection_send_message(*(a1 + 40), message);
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_100D96E64(&message, &__p);
      sub_1003BA6A0(buf, &__p);
      if (v10 >= 0)
      {
        v6 = buf;
      }

      else
      {
        v6 = *buf;
      }

      *v14 = 136315138;
      *&v14[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I send TUNSTL notification to iRat: <%s>", v14, 0xCu);
      if (v10 < 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    xpc_release(v4);
    xpc_release(message);
  }

  else
  {
    v2 = *(a1 + 72);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Invalid XPC connection. Failed to send TUNSTL notification", buf, 2u);
    }
  }
}

void sub_1003BA618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t object)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
  xpc_release(object);
  _Unwind_Resume(a1);
}

__n128 sub_1003BA6A0@<Q0>(uint64_t *__return_ptr a1@<X8>, std::string *this@<X0>)
{
  v4 = 0;
  v9 = 2573;
  do
  {
    v5 = *(&v9 + v4);
    v6 = std::string::find(this, v5, 0);
    if (v6 != -1)
    {
      for (i = v6; i != -1; i = std::string::find(this, v5, 0))
      {
        std::string::replace(this, i, 1uLL, " ", 1uLL);
      }
    }

    ++v4;
  }

  while (v4 != 2);
  result = *&this->__r_.__value_.__l.__data_;
  *a1 = *&this->__r_.__value_.__l.__data_;
  a1[2] = this->__r_.__value_.__r.__words[2];
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

ctu::XpcClient *sub_1003BA768(ctu::XpcClient *a1)
{
  ctu::XpcClient::~XpcClient(a1);
  ctu::OsLogLogger::~OsLogLogger((v2 + 72));
  return a1;
}

void sub_1003BA798(ctu::XpcClient *a1)
{
  ctu::XpcClient::~XpcClient(a1);
  ctu::OsLogLogger::~OsLogLogger((v1 + 72));

  operator delete();
}

void sub_1003BA868(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1003BA93C);
  __cxa_rethrow();
}

void sub_1003BA8A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003BA8FC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003BA93C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1003BA978(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003BA994(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1003BA9B8(xpc_object_t *__return_ptr a1@<X8>, uint64_t value@<X2>, void **a3@<X0>, uint64_t a4@<X1>)
{
  v7 = xpc_uint64_create(value);
  v8 = v7;
  if (v7)
  {
    v11 = v7;
LABEL_4:
    xpc_retain(v8);
    goto LABEL_5;
  }

  v8 = xpc_null_create();
  v11 = v8;
  if (v8)
  {
    goto LABEL_4;
  }

  v8 = 0;
  v11 = xpc_null_create();
LABEL_5:
  v10[0] = a3;
  v10[1] = a4;
  sub_10000F688(v10, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = *a3;
  *a1 = *a3;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  xpc_release(v8);
}

void sub_1003BAA9C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (v3)
  {
    xpc_retain(*(v2 + 40));
  }

  else
  {
    v3 = xpc_null_create();
  }

  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    v12 = 0;
    v6 = subscriber::simSlotAsInstance();
    sub_10107F3AC(&object);
    sub_1003BA9B8(&v11, v6, &object, "kPlanSlotID");
    xpc_release(object);
    v12 = v11;
    v11 = xpc_null_create();
    xpc_release(v11);
    v10 = xpc_uint64_create(*(v1 + 8));
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    object = &v12;
    v14 = "kisExpensive";
    sub_10000F688(&object, &v10, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(v10);
    message = 0;
    v10 = 0;
    sub_10107F3AC(&object);
    sub_1003BA9B8(&v8, 0x1A3uLL, &object, "kMessageId");
    xpc_release(object);
    message = v8;
    v8 = xpc_null_create();
    xpc_release(v8);
    v7 = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      v7 = xpc_null_create();
    }

    object = &message;
    v14 = "kMessageArgs";
    sub_100DAE90C(&object, &v7, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(v7);
    v7 = 0;
    xpc_connection_send_message(v3, message);
    xpc_release(message);
    xpc_release(v12);
  }

  else
  {
    v4 = *(v2 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = CSIBOOLAsString(*(v1 + 8));
      sub_10176EB98(v5, &object, v4);
    }
  }

  xpc_release(v3);
  operator delete();
}

void sub_1003BACD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, xpc_object_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1003BAD8C(void **a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X2>, void **a4@<X8>)
{
  v7 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
    v10 = v7;
LABEL_4:
    xpc_retain(v7);
    goto LABEL_5;
  }

  v7 = xpc_null_create();
  v10 = v7;
  if (v7)
  {
    goto LABEL_4;
  }

  v7 = 0;
  v10 = xpc_null_create();
LABEL_5:
  v9[0] = a1;
  v9[1] = a2;
  sub_10000F688(v9, &v10, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = *a1;
  *a4 = *a1;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v7);
}

void sub_1003BAE8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E48518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003BAEEC(xpc_object_t *__return_ptr a1@<X8>, int64_t value@<X2>, void **a3@<X0>, uint64_t a4@<X1>)
{
  v7 = xpc_int64_create(value);
  v8 = v7;
  if (v7)
  {
    v11 = v7;
LABEL_4:
    xpc_retain(v8);
    goto LABEL_5;
  }

  v8 = xpc_null_create();
  v11 = v8;
  if (v8)
  {
    goto LABEL_4;
  }

  v8 = 0;
  v11 = xpc_null_create();
LABEL_5:
  v10[0] = a3;
  v10[1] = a4;
  sub_10000F688(v10, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = *a3;
  *a1 = *a3;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  xpc_release(v8);
}

uint64_t sub_1003BAFD0(const char *a1)
{
  memset(v22, 0, sizeof(v22));
  v15 = 1;
  v1 = if_nametoindex(a1);
  v2 = socket(17, 3, 17);
  v3 = v2;
  if (v2 < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176EEBC();
    }

    goto LABEL_21;
  }

  if (ioctl(v2, 0x8004667EuLL, &v15) < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176EE38();
    }

    goto LABEL_26;
  }

  memset(&v22[1] + 6, 0, 176);
  *(v22 + 6) = 0u;
  memset(&v22[12] + 6, 0, 26);
  WORD1(v22[0]) = 4357;
  DWORD1(v22[1]) = ++dword_101FB23F0;
  *(&v22[0] + 1) = 0x101000000;
  WORD2(v22[0]) = v1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10176EBE0();
  }

  WORD6(v22[5]) = 7808;
  memset(&v22[5] + 14, 0, 128);
  LOWORD(v22[0]) = 220;
  if (send(v3, v22, 0xDCuLL, 0) < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176EDB4();
    }

LABEL_26:
    v10 = 0;
LABEL_27:
    close(v3);
    return v10;
  }

  while (1)
  {
    v4 = read(v3, v22, 0xE0uLL);
    if (v4 < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176EC6C(v14, &v14[1]);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      v17 = v4;
      v18 = 1024;
      v19 = DWORD1(v22[1]);
      v20 = 1024;
      v21 = v22[1];
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "getDefaultRouteMtuForIPv6V1: read_len=%u, rtm_seq=%u, rtm_pid=%u", buf, 0x14u);
    }

    if (v4 < 1)
    {
      v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        sub_10176ECB0(v6, v7, v8);
      }

      goto LABEL_21;
    }

    if (DWORD1(v22[1]) == dword_101FB23F0)
    {
      v5 = v22[1];
      if (v5 == getpid())
      {
        break;
      }
    }
  }

  v10 = DWORD2(v22[2]);
  v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    if (v11)
    {
      sub_10176ECF4(v10, v12, v13);
    }

    goto LABEL_22;
  }

  if (v11)
  {
    sub_10176ED70(v11, v12, v13);
  }

LABEL_21:
  v10 = 0;
LABEL_22:
  if (v3 != -1)
  {
    goto LABEL_27;
  }

  return v10;
}

uint64_t sub_1003BB32C(uint64_t a1)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  v1 = socket(30, 2, 0);
  if (v1 < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176F048();
    }

    if (v1 == -1)
    {
      return 0;
    }
  }

  else if (__strlcpy_chk() < 0x10)
  {
    if (ioctl(v1, 0xC030694CuLL, &v3) < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176EF40();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10176EFC4();
  }

  close(v1);
  return v4;
}

void *sub_1003BB458(void *a1, NSObject **a2, uint64_t *a3)
{
  ctu::OsLogContext::OsLogContext(&v9, kCtLoggingSystemName, "gf.loc.ctrl");
  sub_1003BB584(a1 + 2, a2, &v9);
  ctu::OsLogContext::~OsLogContext(&v9);
  *a1 = off_101E48588;
  a1[1] = off_101E48648;
  v7 = *a3;
  v6 = a3[1];
  a1[7] = 0;
  a1[8] = v7;
  a1[9] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1003BB558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  CTLocationControllerDelegateInterface::~CTLocationControllerDelegateInterface(v10);
  GeofenceControllerInterface::~GeofenceControllerInterface(v9);
  _Unwind_Resume(a1);
}

void *sub_1003BB584(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_1003BB5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_1003BB614(uint64_t a1)
{
  *a1 = off_101E48588;
  v2 = (a1 + 8);
  *(a1 + 8) = off_101E48648;
  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));
  CTLocationControllerDelegateInterface::~CTLocationControllerDelegateInterface(v2);

  GeofenceControllerInterface::~GeofenceControllerInterface(a1);
}

void sub_1003BB6BC(uint64_t a1)
{
  sub_1003BB614(a1);

  operator delete();
}

void sub_1003BB6F4(uint64_t a1)
{
  sub_1003BB614(a1 - 8);

  operator delete();
}

id sub_1003BB730(uint64_t a1)
{
  v3 = *(a1 + 56);
  if (v3)
  {

    return [v3 isLocationServiceEnabled_sync];
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_10176F0CC();
    }

    return 0;
  }
}

id sub_1003BB78C(uint64_t a1)
{
  v3 = *(a1 + 56);
  if (v3)
  {

    return [v3 isCircularGeofenceSupported_sync];
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_10176F0CC();
    }

    return 0;
  }
}

id sub_1003BB7E8(uint64_t a1)
{
  v3 = *(a1 + 56);
  if (v3)
  {

    return [v3 isPolygonalGeofenceSupported_sync];
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_10176F0CC();
    }

    return 0;
  }
}

void sub_1003BB844(uint64_t a1, double *a2, uint64_t *a3)
{
  if (*(a1 + 56))
  {
    v6 = [NSString alloc];
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    v8 = [v6 initWithUTF8String:v7];
    [*(a1 + 56) setupCircularGeoFence:*a2 withName:{a2[1], a2[2]}];
  }

  else if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_10176F0CC();
  }
}

void sub_1003BB918(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>, __int128 **a4@<X1>)
{
  if (*(a1 + 56))
  {
    v8 = [NSString alloc];
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    v10 = [v8 initWithUTF8String:v9];
    v11 = *(a1 + 56);
    memset(__p, 0, 24);
    sub_1003BCA04(__p, *a4, a4[1], a4[1] - *a4);
    __p[3] = [v11 setupPolygonalGeoFence:__p withName:v10];
    sub_1003BCAFC();
  }

  if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_10176F0CC();
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_1003BBA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003BBA44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v4)
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Attempting to stop geofencing for[%s]", &v10, 0xCu);
      v4 = *(a1 + 56);
    }

    v9 = sub_100115D58(*a2);
    [v4 stopGeofence:v9];
  }

  else if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_10176F0CC();
  }
}

void sub_1003BBB64(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v2)
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Attempting to reset monitored regions", v4, 2u);
      v2 = *(a1 + 56);
    }

    [v2 resetMonitoredRegions];
  }

  else if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_10176F0CC();
  }
}

void sub_1003BBC00(uint64_t a1, uint64_t a2, uint64_t **a3, unsigned int *a4, unsigned int *a5)
{
  v10 = *(a1 + 48);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Starting CTLocationController..", v16, 2u);
  }

  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v11 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", a3, +[NSString defaultCStringEncoding]);
  v12 = [CTLocationController alloc];
  v13 = *(a1 + 56);
  *(a1 + 56) = v12;

  v14 = [*(a1 + 56) initWithBundleIdentifier:v11 withDistanceFilter:*a4 withDesiredAccuracy:*a5 withQueue:a2 withDelegate:a1 + 8];
  v15 = *(a1 + 56);
  *(a1 + 56) = v14;
}

void sub_1003BBD14(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Ending..", v2, 2u);
  }
}

id sub_1003BBD74(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Requesting for location", v4, 2u);
  }

  return [*(a1 + 56) requestLocation];
}

void sub_1003BBDE0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_1003BBF34(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_1003BC088(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_1003BC1DC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_1003BC330(uint64_t a1, __int128 *a2, int *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  v6 = *a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 16));
  operator new();
}

void sub_1003BC494(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 16));
  operator new();
}

void sub_1003BC578(uint64_t a1, char a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 16));
  operator new();
}

void sub_1003BC664(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_1003BC7B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_1003BC90C(uint64_t a1, double a2, double a3)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 16));
  operator new();
}

uint64_t *sub_1003BCA04(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003BCA78(result, a4);
  }

  return result;
}

void sub_1003BCA5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003BCA78(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1003BCAB4(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1003BCAB4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100013D10();
}

void *sub_1003BCB68(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E48770;
  sub_100115CFC((a1 + 3), *a2);
  return a1;
}

void sub_1003BCBE8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E48770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1003BCC48(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10176F100(v1, v3);
  }

  v4 = *(v2 + 72);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + 64);
      if (v7)
      {
        (*(*v7 + 16))(v7, v1 + 8);
      }

      sub_100004A34(v6);
    }
  }

  sub_1000CFEE0(&v10);
  return sub_1000049E0(&v9);
}

void sub_1003BCD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BCD24(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Geofence setup success%{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (*(*v8 + 24))(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_1003BCE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BCE60(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Monitoring started for %{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (*(*v8 + 24))(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_1003BCF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BCF9C(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Monitoring failed for %{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (*(*v8 + 32))(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_1003BD0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BD0D8(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1 + 8);
    if (*(v1 + 31) < 0)
    {
      v4 = *v4;
    }

    v5 = *(v1 + 32);
    *buf = 136446466;
    v14 = v4;
    v15 = 1024;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Geofence didDetermineState for %{public}s as state %d", buf, 0x12u);
  }

  v6 = *(v2 + 72);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(v2 + 64);
      if (v9)
      {
        (*(*v9 + 40))(v9, v1 + 8, v1 + 32);
      }

      sub_100004A34(v8);
    }
  }

  sub_1003BD228(&v12);
  return sub_1000049E0(&v11);
}

void sub_1003BD204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v9);
  sub_1003BD228(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BD228(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

void sub_1003BD280(void **a1)
{
  v1 = **a1;
  v2 = v1[6];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Monitoring failed with error...", buf, 2u);
  }

  v3 = v1[9];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = v1[8];
      if (v6)
      {
        (*(*v6 + 48))(v6);
      }

      sub_100004A34(v5);
    }
  }

  operator delete();
}

void sub_1003BD388(void **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = v2[6];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 8);
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Location services status changed to %d", buf, 8u);
  }

  v5 = v2[9];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = v2[8];
      if (v8)
      {
        (*(*v8 + 56))(v8, *(v1 + 8));
      }

      sub_100004A34(v7);
    }
  }

  operator delete();
}

uint64_t *sub_1003BD4D0(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Geofence Entry %{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (**v8)(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_1003BD5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003BD60C(char **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (v1[31] < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Geofence Exit %{public}s", buf, 0xCu);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v2 + 64);
      if (v8)
      {
        (*(*v8 + 8))(v8, v1 + 8);
      }

      sub_100004A34(v7);
    }
  }

  sub_1000CFEE0(&v11);
  return sub_1000049E0(&v10);
}

void sub_1003BD724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000CFEE0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1003BD748(double **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 64);
      if (v6)
      {
        (*(*v6 + 64))(v6, v1[1], v1[2]);
      }

      sub_100004A34(v5);
    }
  }

  operator delete();
}

void sub_1003BD820(Registry **a1@<X0>, uint64_t *a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  v15 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v15);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_8:
    std::mutex::unlock(v5);
    v11 = 0;
    v14 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v14 = 0;
LABEL_9:
  if ((capabilities::ct::supportsSequoia(v13) & 1) != 0 || GestaltUtilityInterface::isIPhone(v12))
  {
    *a3 = 0;
    a3[1] = 0;
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1003BDA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    sub_101760EE4(a14);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  v18 = *(v15 + 8);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003BDADC(void *a1, uint64_t *a2, void *a3)
{
  *a1 = off_101E48838;
  v6 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, "recon.mgr");
  sub_1003BDBFC(v6, "ReconnectionManager", QOS_CLASS_UTILITY, &v11);
  ctu::OsLogContext::~OsLogContext(&v11);
  *a1 = off_101E487C0;
  v8 = *a2;
  v7 = a2[1];
  a1[6] = off_101E48810;
  a1[7] = v8;
  a1[8] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a3[1];
  a1[9] = *a3;
  a1[10] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  return a1;
}

void *sub_1003BDBFC(void *a1, const char *a2, dispatch_qos_class_t qos_class, const OsLogContext *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger(v11, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  return a1;
}

void sub_1003BDC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void *sub_1003BDCC0(void *a1)
{
  *a1 = off_101E487C0;
  v2 = (a1 + 6);
  a1[6] = off_101E48810;
  v3 = a1[13];
  a1[13] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    sub_100004A34(v6);
  }

  CoreUtilsMessageSessionDelegateInterface::~CoreUtilsMessageSessionDelegateInterface(v2);
  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_1003BDD98(void *a1)
{
  sub_1003BDCC0(a1);

  operator delete();
}

void sub_1003BDDD0(uint64_t a1)
{
  sub_1003BDCC0((a1 - 48));

  operator delete();
}

void sub_1003BDE0C(void *a1)
{
  v14 = 0;
  *__p = 0u;
  v13 = 0u;
  *v11 = 0u;
  sub_1003BE434(a1, v11);
  v2 = HIBYTE(__p[0]);
  if (SHIBYTE(__p[0]) < 0)
  {
    v2 = v11[1];
  }

  if (v2)
  {
    v3 = HIBYTE(v13);
    if (v13 < 0)
    {
      v3 = v13;
    }

    if (v3)
    {
      v4 = v14;
      v5 = [[NSDate alloc] initWithTimeInterval:v4 sinceDate:86400.0];
      v6 = +[NSDate date];
      v7 = [v5 compare:v6] == -1;

      if (v7)
      {
        v9 = a1[5];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Reconnection credentials expired", v10, 2u);
        }

        v15[0] = off_101E48C58;
        v15[3] = v15;
        sub_1003BE924(a1, v15);
        sub_10028ED7C(v15);
      }

      else
      {
        [v5 timeIntervalSinceNow];
        sub_1004627DC(a1, v8);
      }
    }
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_1003BDFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_10028ED7C(va1);

  sub_1003BEDBC(va);
  _Unwind_Resume(a1);
}

void sub_1003BE020(void *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  *__src = 0u;
  sub_1003BE434(a1, __src);
  v6 = HIBYTE(v24[0]);
  if (SHIBYTE(v24[0]) < 0)
  {
    v6 = __src[1];
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = HIBYTE(v24[3]);
  v8 = HIBYTE(v24[3]);
  if (SHIBYTE(v24[3]) < 0)
  {
    v7 = v24[2];
  }

  if (!v7)
  {
LABEL_9:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    goto LABEL_41;
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v22 = 0;
  if (SHIBYTE(v24[0]) < 0)
  {
    sub_100005F2C(__dst, __src[0], __src[1]);
    v8 = HIBYTE(v24[3]);
  }

  else
  {
    *__dst = *__src;
    v22 = v24[0];
  }

  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  if (v8 < 0)
  {
    sub_100005F2C(v19, v24[1], v24[2]);
  }

  else
  {
    *v19 = *&v24[1];
    v20 = v24[3];
  }

  v9 = v25;
  v10 = [[NSDate alloc] initWithTimeInterval:v9 sinceDate:86400.0];
  v11 = +[NSDate date];
  v12 = [v10 compare:v11] == -1;

  if (v12)
  {
    v13 = a1[5];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Reconnection credentials expired", buf, 2u);
    }

    v26[0] = off_101E48A58;
    v26[3] = v26;
    sub_1003BE924(a1, v26);
    sub_10028ED7C(v26);
LABEL_29:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    goto LABEL_37;
  }

  if (*a2)
  {
    sub_100010024(&v17, a2);
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v16 = v22;
    }

    v14 = sub_1003BEAC0(a1, &v17, __p);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10001021C(&v17);
    if (v14)
    {
      if (SHIBYTE(v20) < 0)
      {
        sub_100005F2C(a3, v19[0], v19[1]);
      }

      else
      {
        *a3 = *v19;
        *(a3 + 16) = v20;
      }

      if (SHIBYTE(v22) < 0)
      {
        sub_100005F2C((a3 + 24), __dst[0], __dst[1]);
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    goto LABEL_29;
  }

  if (SHIBYTE(v20) < 0)
  {
    sub_100005F2C(a3, v19[0], v19[1]);
  }

  else
  {
    *a3 = *v19;
    *(a3 + 16) = v20;
  }

  if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
LABEL_35:
    *(a3 + 24) = *__dst;
    *(a3 + 40) = v22;
    goto LABEL_37;
  }

  sub_100005F2C((a3 + 24), __dst[0], __dst[1]);
LABEL_37:

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_41:

  if (SHIBYTE(v24[3]) < 0)
  {
    operator delete(v24[1]);
  }

  if (SHIBYTE(v24[0]) < 0)
  {
    operator delete(__src[0]);
  }
}

void sub_1003BE378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_1003BEDBC(&a32);
  _Unwind_Resume(a1);
}

void sub_1003BE434(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    (*(*v4 + 48))(v4, @"com.apple.commcenter.device_specific_nobackup", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v28 = 0;
    (*(**(a1 + 72) + 40))(buf);
    sub_100010180(&v28, buf);
    sub_10000A1EC(buf);
    if (v28)
    {
      v5 = v28;
      v6 = [NSString stringWithUTF8String:"kDeviceIdentifier"];
      v7 = [v5 objectForKey:v6];

      v8 = [NSString stringWithUTF8String:"kPreSharedKey"];
      v9 = [v5 objectForKey:v8];

      v10 = [NSString stringWithUTF8String:"kTimestamp"];
      v11 = [v5 objectForKey:v10];

      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & (v9 != 0)) == 1) && (objc_opt_class(), (objc_opt_isKindOfClass() & (v11 != 0)) == 1) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v26 = 0uLL;
        v27 = 0;
        v12 = v7;
        sub_10000501C(&v26, [v7 UTF8String]);
        __p = 0uLL;
        v25 = 0;
        v13 = v9;
        sub_10000501C(&__p, [v9 UTF8String]);
        v14 = v11;
        v23 = v14;
        v15 = HIBYTE(v27);
        v16 = SHIBYTE(v27);
        if (v27 < 0)
        {
          v15 = *(&v26 + 1);
        }

        if (!v15)
        {
          goto LABEL_28;
        }

        v17 = HIBYTE(v25);
        v18 = SHIBYTE(v25);
        if (v25 < 0)
        {
          v17 = *(&__p + 1);
        }

        if (v17)
        {
          v19 = *(a1 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v26;
            if (v16 >= 0)
            {
              v20 = &v26;
            }

            p_p = __p;
            if (v18 >= 0)
            {
              p_p = &__p;
            }

            *buf = 136315650;
            v30 = v20;
            v31 = 2080;
            v32 = p_p;
            v33 = 2112;
            v34 = v14;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Cached reconnection credentials: deviceIdentifier: %s psk:%s timestamp:%@", buf, 0x20u);
          }

          sub_1003C0258(a2, &v26, &__p, &v23);
          v14 = v23;
        }

        else
        {
LABEL_28:
          v22 = *(a1 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Reconnection credentials not present", buf, 2u);
          }

          *(a2 + 6) = 0;
          *(a2 + 1) = 0u;
          *(a2 + 2) = 0u;
          *a2 = 0u;
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }
      }

      else
      {
        *(a2 + 6) = 0;
        *(a2 + 1) = 0u;
        *(a2 + 2) = 0u;
        *a2 = 0u;
      }
    }

    else
    {
      *(a2 + 6) = 0;
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
      *a2 = 0u;
    }

    sub_10001021C(&v28);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176F188();
    }

    *(a2 + 6) = 0;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
  }
}

void sub_1003BE870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_10001021C(&a22);
  _Unwind_Resume(a1);
}

void sub_1003BE924(void *a1, uint64_t a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Clearing reconnection credentials", v8, 2u);
  }

  v5 = a1[9];
  if (v5)
  {
    (*(*v5 + 16))(v5, @"AutoReconnectionCredentials", 0, @"com.apple.commcenter.device_specific_nobackup", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(*a1[9] + 48))(a1[9], @"com.apple.commcenter.device_specific_nobackup", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v6 = a1[13];
    if (v6)
    {
      (*(*v6 + 16))(v6);
      v7 = a1[13];
      a1[13] = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }

    sub_100186828(a2, 0);
  }

  else if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_10176F1BC();
  }
}

id sub_1003BEAC0(uint64_t a1, id *a2, uint64_t **a3)
{
  v5 = *a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v6 = qword_101FBA300;
  v22 = qword_101FBA300;
  if (!qword_101FBA300)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1003BFFB4;
    v24 = &unk_101E2DBB0;
    v25 = &v19;
    sub_1003BFFB4(buf);
    v6 = v20[3];
  }

  v7 = v6;
  _Block_object_dispose(&v19, 8);
  v18 = 0;
  v8 = [[v6 alloc] initWithDictionary:v5 error:&v18];
  v9 = v18;
  if (v8)
  {
    v10 = [v8 nearbyActionExtraData];
    if (v10)
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v11 = [NSString stringWithUTF8String:a3];
      v12 = [[NSData alloc] initWithBase64EncodedString:v11 options:1];
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v10;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Incoming identifier: %@, cached identifier: %@", buf, 0x16u);
      }

      v14 = [v10 isEqualToData:v12];
      if ((v14 & 1) == 0)
      {
        v15 = *(a1 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Device identifier mismatched", buf, 2u);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176F1F0();
      }

      v14 = 0;
    }
  }

  else
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10176F224(v9, v16);
    }

    v14 = 0;
  }

  return v14;
}