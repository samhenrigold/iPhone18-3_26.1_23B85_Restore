_OWORD *sub_100526D20(_OWORD *a1, NSObject **a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_100526D78(a1, a2);
  return a1;
}

void sub_100526D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_100352130((v10 + 24));
  a10 = v10;
  sub_1001018AC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100526D78(uint64_t a1, NSObject **a2)
{
  sub_100526E54(v4, a2);
  sub_100526DD0((a1 + 24), v4);
  return sub_100527918(v4);
}

void (***sub_100526DD0(void (***a1)(void, void, uint64_t), NSObject **a2))(void, void, uint64_t)
{
  sub_100526E54(v4, a2);
  sub_100526EA0(v5, v4);
  sub_1003519D0(v5, a1);
  sub_100352130(v5);
  sub_100527918(v4);
  return a1;
}

void sub_100526E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void, void, uint64_t))
{
  sub_100352130(&a11);
  sub_100527918(&a9);
  _Unwind_Resume(a1);
}

NSObject **sub_100526E54(NSObject **a1, NSObject **a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  if (v4)
  {
    v4 = _Block_copy(v4);
    v3 = *a1;
  }

  a1[1] = v4;
  dispatch_retain(v3);
  return a1;
}

NSObject **sub_100526EA0(NSObject **a1, NSObject **a2)
{
  sub_100526E54(v4, a2);
  sub_100526F00(a1, v4);
  sub_100527918(v4);
  return a1;
}

NSObject **sub_100526F00(NSObject **a1, NSObject **a2)
{
  *a1 = 0;
  sub_100526E54(v4, a2);
  sub_100526F60(a1, v4);
  sub_100527918(v4);
  return a1;
}

uint64_t sub_100526F60(NSObject **a1, NSObject **a2)
{
  sub_100526E54(v6, a2);
  v3 = sub_100527140(off_101E54B60, v6, a1 + 1);
  result = sub_100527918(v6);
  if (v3)
  {
    v5 = off_101E54B60;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_100526FDC(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v5 = result;
  if (a3 <= 1)
  {
    result = sub_100526E54(a2, result);
    if (a3 != 1)
    {
      return result;
    }

    v6 = v5;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 8) = 0;
      return result;
    }

    v6 = a2;
LABEL_10:

    return sub_100527918(v6);
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result == ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvRK13PersonalityIDEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvRK13PersonalityIDEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
  {
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_1005270B4(uint64_t a1, uint64_t a2)
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

  sub_1005271A8(a1, __p);
}

void sub_100527124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100527140(uint64_t a1, NSObject **a2, NSObject **a3)
{
  sub_100526E54(v7, a2);
  v5 = sub_1005275C0(a1, v7, a3);
  sub_100527918(v7);
  return v5;
}

void sub_1005271A8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  sub_100527248(v6, &aBlock);
  sub_100351C78(v4, v6, a2);
}

void sub_10052721C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, void (**a11)(void, void, uint64_t))
{
  sub_100352130(&a11);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(a1);
}

uint64_t (***sub_100527248(uint64_t (***a1)(), void **a2))()
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  sub_1005272C4(a1, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void sub_1005272A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***sub_1005272C4(uint64_t (***a1)(), void **a2))()
{
  *a1 = 0;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  sub_100527340(a1, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void sub_100527324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void sub_100527340(uint64_t (***a1)(), void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  v4 = sub_100527408(off_101E54B80, &aBlock, a1 + 1);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    v5 = off_101E54B80;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void sub_1005273BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005273D8(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    a2[4] = 0;
  }

  else
  {
    sub_10052748C(a1, a2, a3);
  }
}

uint64_t sub_100527408(uint64_t a1, void **a2, void **a3)
{
  v5 = *a2;
  if (*a2)
  {
    v5 = _Block_copy(v5);
  }

  aBlock = v5;
  v6 = sub_100527560(a1, &aBlock, a3);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return v6;
}

void sub_100527470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052748C(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == ("N8dispatch5blockIU13block_pointerFvRK13PersonalityIDEEE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, ("N8dispatch5blockIU13block_pointerFvRK13PersonalityIDEEE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else if (a3 == 2)
    {
      v7 = *a2;
      if (*a2)
      {
LABEL_6:
        _Block_release(v7);
      }
    }

    else
    {
      a2[4] = 0;
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t sub_100527560(uint64_t a1, const void **a2, void **a3)
{
  if (*a2 && (v4 = _Block_copy(*a2), (v5 = v4) != 0))
  {
    *a3 = _Block_copy(v4);
    _Block_release(v5);
  }

  else
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t sub_1005275C0(uint64_t a1, NSObject **a2, NSObject **a3)
{
  sub_100526E54(v5, a2);
  sub_100526E54(a3, v5);
  sub_100527918(v5);
  return 1;
}

void *sub_100527608(void *a1)
{
  *a1 = off_101E54BB0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100527654(void *a1)
{
  *a1 = off_101E54BB0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1005276C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::lock(v2);
  }

  operator new();
}

void sub_100527770(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005277F4(void *a1)
{
  *a1 = off_101E54C00;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100527840(void *a1)
{
  *a1 = off_101E54C00;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_100527918(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t sub_1005279C0(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E42B80;
  sub_10004ECBC((a1 + 24), a2);
  return a1;
}

void *sub_100527A1C(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100005C2C(a1, &v6, a2);
  if (!result)
  {
    sub_100527AC0();
  }

  return result;
}

void sub_100527B5C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100527B88(uint64_t result, uint64_t a2)
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

void sub_100527BA4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_100527C3C(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "CellularPlanRemoteProvisioning", "", v5, 2u);
    }
  }
}

uint64_t sub_100527CB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100527D00(uint64_t a1)
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

uint64_t *sub_100527D80(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7[0] = v1;
  v2 = *v1;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v9 = *(v1 + 24);
    *__p = v3;
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v10[0] = off_101E54CF8;
  v10[1] = v4;
  v7[1] = 0;
  v10[3] = v10;
  cellplan::CellularPlanControllerPhone::handleTransferRemotePlan_sync(v2, 1, __p, v10);
  sub_100527D00(v10);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100527EC8(v7);
  return sub_1000049E0(&v6);
}

void sub_100527E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  sub_100527EC8(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100527EC8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      _Block_release(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

const void **sub_100527F30(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void *sub_100527F64(void *a1)
{
  *a1 = off_101E54CF8;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_100527FB4(void *a1)
{
  *a1 = off_101E54CF8;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_100528094(uint64_t a1, void *a2)
{
  *a2 = off_101E54CF8;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_1005280EC(const void **a1)
{
  sub_100528200(a1 + 1);

  operator delete(a1);
}

const void **sub_100528128(uint64_t a1, const void **a2, const void **a3, _WORD *a4)
{
  v4 = *a2;
  *a2 = 0;
  v6 = *a3;
  v7 = v4;
  *a3 = 0;
  (*(*(a1 + 8) + 16))(*(a1 + 8), (*a4 & 0x100) == 0);
  sub_10001021C(&v6);
  return sub_100005978(&v7);
}

void sub_100528198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10001021C(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1005281B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100528200(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t sub_100528224(uint64_t a1, uint64_t a2)
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

uint64_t sub_1005282BC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_10052833C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v8 = *(v1 + 24);
    *__p = v3;
  }

  sub_100528224(v9, v1 + 32);
  cellplan::CellularPlanControllerPhone::handleTransferRemotePlan_sync(v2, 0, __p, v9);
  sub_100527D00(v9);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10052844C(&v6);
  return sub_1000049E0(&v5);
}

void sub_100528408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_10052844C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10052844C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100527D00(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1005284AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100528544(uint64_t a1)
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

uint64_t sub_1005285C4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_100528644(char **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *(*v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v1 + 40;
    if (v1[63] < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I user wants to manage remote plan (%s)", buf, 0xCu);
  }

  operator new();
}

void sub_1005288E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23)
{
  sub_1005289E0(&a19);
  if (v22)
  {
    dispatch_group_leave(v22);
    dispatch_release(v22);
    dispatch_release(v22);
  }

  sub_100004A34(v21);
  sub_100528980(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100528980(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    sub_100528544(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_1005289E0(uint64_t a1)
{
  sub_100528544(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100528A44(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E54D88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100528A98(uint64_t a1)
{
  sub_1005230E0(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

uint64_t *sub_100528AFC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100528544(v1 + 40);
    v2 = *(v1 + 32);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_100528B64(void *a1)
{
  v17 = a1;
  v2 = *a1;
  v3 = a1[2];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[1] == 0;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 1;
LABEL_6:
  if (a1[8])
  {
    if (v5)
    {
LABEL_16:
      *buf = 0;
      __p[0] = 0;
      sub_10052911C((a1 + 5), buf, __p, 1);
      goto LABEL_17;
    }

    v6 = a1[3];
    if (!v6)
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101773ADC();
      }

      goto LABEL_16;
    }

    v7 = *(v6 + 784);
    if (v7)
    {
      *buf = 0;
      __p[0] = 0;
      sub_10052911C((a1 + 5), buf, __p, v7);
LABEL_17:
      sub_10001021C(__p);
      sub_1002030AC(buf);
      goto LABEL_18;
    }

    URLString = 0;
    v9 = (v6 + 32);
    if (*(v6 + 55) < 0)
    {
      sub_100005F2C(__dst, *(v6 + 32), *(v6 + 40));
    }

    else
    {
      *__dst = *v9;
      v19 = *(v6 + 48);
    }

    if (SHIBYTE(v19) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v23 = v19;
    }

    v21 = 0;
    if (SHIBYTE(v23) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      v27 = v23;
    }

    v24 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = v21;
      v21 = v24;
      cf = v10;
      sub_100005978(&cf);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(*buf);
    }

    URLString = v21;
    v21 = 0;
    sub_100005978(&v21);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__dst[0]);
    }

    __p[0] = 0;
    __p[0] = CFURLCreateWithString(kCFAllocatorDefault, URLString, 0);
    cf = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v12 = cf;
      cf = Mutable;
      *buf = v12;
      sub_1000296E0(buf);
    }

    if (*(v6 + 392) == 1)
    {
      v24 = cf;
      if (cf)
      {
        CFRetain(cf);
        if ((*(v6 + 392) & 1) == 0)
        {
          sub_1000D1644();
        }
      }

      v13 = (v6 + 56);
      sub_100984AE4(&v24, (v6 + 56));
      sub_1000296E0(&v24);
      v14 = *(v2 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v6 + 79) < 0)
        {
          v13 = *v13;
        }

        *buf = 136315138;
        *&buf[4] = v13;
LABEL_54:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Manage Plan PostData: %s", buf, 0xCu);
      }
    }

    else if (*(v6 + 776) == 1)
    {
      sub_100029714(&v24, &cf);
      if ((*(v6 + 776) & 1) == 0)
      {
        sub_1000D1644();
      }

      v15 = (v6 + 752);
      sub_100986AFC(&v24, v6 + 752);
      sub_1000296E0(&v24);
      v14 = *(v2 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(v6 + 776) & 1) == 0)
        {
          sub_1000D1644();
        }

        if (*(v6 + 775) < 0)
        {
          v15 = *v15;
        }

        *buf = 136315138;
        *&buf[4] = v15;
        goto LABEL_54;
      }
    }

    v16 = *(v2 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v6 + 55) < 0)
      {
        v9 = *v9;
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Manage Plan Url: %s", buf, 0xCu);
    }

    *buf = __p[0];
    if (__p[0])
    {
      CFRetain(__p[0]);
    }

    sub_100010180(&v21, &cf);
    sub_10052911C((a1 + 5), buf, &v21, *(v6 + 784));
    sub_10001021C(&v21);
    sub_1002030AC(buf);
    sub_1000296E0(&cf);
    sub_1002030AC(__p);
    sub_100005978(&URLString);
    if (v4)
    {
      goto LABEL_19;
    }

    return sub_100528AFC(&v17);
  }

  if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773DE8();
  }

LABEL_18:
  if (v4)
  {
LABEL_19:
    sub_100004A34(v4);
  }

  return sub_100528AFC(&v17);
}

void sub_100529010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, const void *a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, int a30, const void *a31)
{
  sub_1000296E0(&a31);
  sub_1002030AC(&__p);
  sub_100005978(&a18);
  if (v31)
  {
    sub_100004A34(v31);
  }

  sub_100528AFC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10052911C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, a2, a3, &v6);
}

uint64_t *sub_100529170(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  (***(*v1 + 128))(&v8);
  v9 = v8;
  v8 = 0uLL;
  isValidSimSlot = subscriber::isValidSimSlot();
  if (*(&v9 + 1))
  {
    sub_100004A34(*(&v9 + 1));
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  if (isValidSimSlot)
  {
    v4 = *(v1 + 8);
    *&v9 = _NSConcreteStackBlock;
    *(&v9 + 1) = 1174405120;
    v10 = sub_1005293C0;
    v11 = &unk_101E54DC8;
    v12 = v2;
    sub_1005284AC(v13, v1 + 16);
    v14 = *(v1 + 12);
    v13[8] = *(v1 + 8);
    cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(v2, v4, &v9);
    sub_100528544(v13);
  }

  else
  {
    *&v9 = 0;
    *&v8 = 0;
    sub_10052911C(v1 + 16, &v9, &v8, 6);
    sub_10001021C(&v8);
    sub_1002030AC(&v9);
  }

  sub_100529370(&v7);
  return sub_1000049E0(&v6);
}

void sub_10052930C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100528544(v9 + 40);
  sub_100529370(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100529370(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100528544(v1 + 16);
    operator delete();
  }

  return a1;
}

void sub_1005293C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v30 = a2;
  *(&v30 + 1) = a3;
  if (a4)
  {
    v25[0] = 0;
    v24 = 0;
    sub_10052911C(a1 + 40, v25, &v24, a4);
    sub_10001021C(&v24);
    v5 = v25;
  }

  else
  {
    v6 = *(a1 + 32);
    if (cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(v6, *(a1 + 76), &v30))
    {
      *(v6 + 1040) = *(a1 + 72);
      (*(**(v6 + 256) + 8))(*(v6 + 256), &v30);
      *(v21 + 3) = 0;
      v21[0] = 0;
      v20 = 0;
      (*(**(v6 + 128) + 120))(&v20);
      if (v20)
      {
        *buf = 0;
        v17 = 0;
        v18 = 0;
        ctu::cf::assign();
        v21[0] = 0;
        *(v21 + 3) = 0;
      }

      sub_100005978(&v20);
      rest::PairedDeviceInfoList::getActiveDevice(buf, (v6 + 896));
      if (buf[0] == 2)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      sub_100DB14E0(buf);
      (*(**(v6 + 128) + 680))(buf);
      v15 = 0;
      v8 = (*(**buf + 152))(*buf, &v15, *(v6 + 1040), v7);
      sub_10001021C(&v15);
      if (v17)
      {
        sub_100004A34(v17);
      }

      rest::PairedDeviceInfoList::getActiveDevice(buf, (v6 + 896));
      v9 = v19;
      sub_100DB14E0(buf);
      v10 = *(v6 + 208);
      __p[0] = 0;
      __p[1] = 0;
      *v13 = v21[0];
      *&v13[3] = *(v21 + 3);
      v14 = 0;
      (*(*v10 + 88))(v10, __p, 0, v7, v9 != 1, v8);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      v11 = *(*(**(v6 + 48) + 16))(*(v6 + 48), *(a1 + 72));
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I get signup info via carrier entitlement", buf, 2u);
      }

      v29[0] = 0;
      v25[1] = v6;
      v26 = *(a1 + 72);
      v27 = v30;
      sub_1005284AC(v28, a1 + 40);
      v28[7] = 0;
      operator new();
    }

    v22 = 0;
    v23 = 0;
    sub_10052911C(a1 + 40, &v23, &v22, 3);
    sub_10001021C(&v22);
    v5 = &v23;
  }

  sub_1002030AC(v5);
}

void *sub_100529900(void *a1)
{
  *a1 = off_101E54E08;
  sub_100528544((a1 + 5));
  return a1;
}

void sub_100529944(void *a1)
{
  *a1 = off_101E54E08;
  sub_100528544((a1 + 5));

  operator delete();
}

uint64_t sub_100529A34(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E54E08;
  v2 = *(a1 + 8);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 8) = v2;
  return sub_1005284AC(a2 + 40, a1 + 40);
}

void sub_100529A78(void *a1)
{
  sub_100528544(a1 + 40);

  operator delete(a1);
}

const void **sub_100529AB4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = (*(**(v6 + 48) + 16))(*(v6 + 48), *(a1 + 16));
  if (v5 == 1 && (*(a3 + 392) & 1) != 0)
  {
    v8 = v7;
    v22 = 0;
    if (*(a3 + 55) < 0)
    {
      sub_100005F2C(&__dst, *(a3 + 32), *(a3 + 40));
    }

    else
    {
      __dst = *(a3 + 32);
      v21 = *(a3 + 48);
    }

    if (SHIBYTE(v21) < 0)
    {
      sub_100005F2C(&v24, __dst, *(&__dst + 1));
    }

    else
    {
      v24 = __dst;
      v25 = v21;
    }

    v23 = 0;
    if (SHIBYTE(v25) < 0)
    {
      sub_100005F2C(__p, v24, *(&v24 + 1));
    }

    else
    {
      *__p = v24;
      v19 = v25;
    }

    v26 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = v23;
      v23 = v26;
      v27 = v10;
      sub_100005978(&v27);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    v22 = v23;
    v23 = 0;
    sub_100005978(&v23);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__dst);
    }

    v27 = 0;
    v11 = CFURLCreateWithString(kCFAllocatorDefault, v22, 0);
    v26 = 0;
    v27 = v11;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = v26;
      v26 = Mutable;
      __p[0] = v13;
      sub_1000296E0(__p);
    }

    v23 = v26;
    if (v26)
    {
      CFRetain(v26);
    }

    if ((*(a3 + 392) & 1) == 0)
    {
      sub_1000D1644();
    }

    sub_100984AE4(&v23, (a3 + 56));
    sub_1000296E0(&v23);
    (*(**(v6 + 128) + 688))(&v24);
    if ((**v24)(v24, *(a1 + 16)))
    {
      rest::PairedDeviceInfoList::getActiveDevice(__p, (v6 + 896));
      v14 = LOBYTE(__p[0]) == 1;
      sub_100DB14E0(__p);
    }

    else
    {
      v14 = 0;
    }

    if (*(&v24 + 1))
    {
      sub_100004A34(*(&v24 + 1));
    }

    if (v14)
    {
      v15 = *v8;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I carrier needs VoLTE setting to default", __p, 2u);
      }

      (*(**(v6 + 128) + 688))(__p);
      (*(*__p[0] + 16))(__p[0]);
      if (__p[1])
      {
        sub_100004A34(__p[1]);
      }

      (*(**(v6 + 128) + 688))(__p);
      (*(*__p[0] + 8))(__p[0]);
      if (__p[1])
      {
        sub_100004A34(__p[1]);
      }
    }

    v16 = *(v6 + 256);
    if (v16)
    {
      __p[0] = 0;
      (*(*v16 + 168))(v16, __p);
      if (__p[0])
      {
        _Block_release(__p[0]);
      }
    }

    *&v24 = v27;
    if (v27)
    {
      CFRetain(v27);
    }

    sub_100010180(&v17, &v26);
    sub_10052911C(a1 + 40, &v24, &v17, 0);
    sub_10001021C(&v17);
    sub_1002030AC(&v24);
    sub_1000296E0(&v26);
    sub_1002030AC(&v27);
    return sub_100005978(&v22);
  }

  else
  {
    __p[0] = 0;
    *&v24 = 0;
    sub_10052911C(a1 + 40, __p, &v24, 5);
    sub_10001021C(&v24);
    sub_1002030AC(__p);
    result = *(v6 + 256);
    if (result)
    {
      return (*(*result + 18))(result, a1 + 20);
    }
  }

  return result;
}

void sub_100529F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *aBlock, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_100005978((v16 - 104));
  if (*(v16 - 73) < 0)
  {
    operator delete(*(v16 - 96));
  }

  if (*(v16 - 121) < 0)
  {
    operator delete(*(v16 - 144));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052A080(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E54E68))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10052A0CC(uint64_t **a1)
{
  v4 = a1;
  v1 = **a1;
  v2 = *(v1 + 1216);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
    v3 = *(v1 + 1216);
    *(v1 + 1216) = 0;
    if (v3)
    {
      _Block_release(v3);
    }
  }

  operator delete();
}

uint64_t *sub_10052A174(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18[0] = v1;
  v2 = *v1;
  v23 = 0uLL;
  v3 = 328;
  if (*(v2 + 1224))
  {
    v3 = 1368;
  }

  v4 = v2 + v3;
  v5 = *(v2 + v3 + 32);
  if (*(v4 + 40) == v5 || (*(v4 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101773EB8();
    }

    (*(*(v1 + 32) + 16))();
  }

  else
  {
    v23 = *(v5 + 16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    (*(**(v2 + 160) + 272))(&v19);
    v6 = v19;
    v7 = v20;
    if (v19 == v20)
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101773E84();
      }
    }

    else if (*(v2 + 256))
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101773E1C();
      }
    }

    else
    {
      v8 = (v1 + 8);
      v9 = *(v1 + 31);
      if (v9 >= 0)
      {
        v10 = *(v1 + 31);
      }

      else
      {
        v10 = *(v1 + 16);
      }

      while (1)
      {
        v11 = *(v6 + 95);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(v6 + 80);
        }

        if (v11 == v10)
        {
          v13 = v12 >= 0 ? (v6 + 72) : *(v6 + 72);
          v14 = (v9 >= 0 ? v1 + 8 : *v8);
          if (!memcmp(v13, v14, v10))
          {
            break;
          }
        }

        v6 += 312;
        if (v6 == v7)
        {
          goto LABEL_30;
        }
      }

      if (v6 == v7)
      {
LABEL_30:
        v15 = *(v2 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          if (v9 < 0)
          {
            v8 = *v8;
          }

          *buf = 136315138;
          *&buf[4] = v8;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Plan matching ICCID hash (%s) not found", buf, 0xCu);
        }

        goto LABEL_31;
      }

      if (cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(v2, 0, &v23))
      {
        v18[9] = 0;
        v18[10] = 0;
        sub_10032E870();
      }

      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101773E50();
      }
    }

LABEL_31:
    (*(*(v1 + 32) + 16))();
    *buf = &v19;
    sub_1000DC8D4(buf);
  }

  sub_10052A810(v18);
  return sub_1000049E0(&v17);
}

void sub_10052A730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, std::__shared_weak_count *a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, char *a61)
{
  if (a29)
  {
    sub_100004A34(a29);
  }

  a61 = &a30;
  sub_1000DC8D4(&a61);
  sub_10052A810(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10052A810(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      _Block_release(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

void *sub_10052A878(void *a1)
{
  *a1 = off_101E54E88;
  v2 = a1[4];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10052A8D4(void *a1)
{
  *a1 = off_101E54E88;
  v2 = a1[4];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_10052A9E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E54E88;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a2 + 32) = result;
  return result;
}

void sub_10052AA50(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10052AAA4(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(__p);
}

void sub_10052AAF4(void *a1)
{
  v2 = a1[3];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_30;
  }

  v3 = a1[1];
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4 || !a1[2])
  {
LABEL_30:
    *v18 = 0;
    v28.i8[0] = 4;
    sub_10051AF70(a1 + 4, v18);
    sub_100010250(v18);
    if (!v4)
    {
      return;
    }

    goto LABEL_31;
  }

  v34 = 0;
  v35 = 0uLL;
  v17 = v4;
  (***(v3 + 128))(&v28);
  *v18 = v28;
  v28 = 0uLL;
  subscriber::makeSimSlotRange();
  if (*&v18[8])
  {
    sub_100004A34(*&v18[8]);
  }

  if (v28.i64[1])
  {
    sub_100004A34(v28.i64[1]);
  }

  __p = 0;
  v32 = 0;
  v33 = 0;
  v5 = v34;
  v6 = v35;
  *v18 = v34;
  *&v18[8] = vextq_s8(v6, v6, 8uLL);
  v7 = v35.i64[0];
  if (v34 != v35.i64[0])
  {
    v8 = v35.i64[1];
    do
    {
      if (v8(*v5))
      {
        break;
      }

      ++v5;
    }

    while (v5 != v7);
    *v18 = v5;
    v6 = v35;
  }

  v28 = v6;
  v29 = v6.i64[0];
  sub_10052B060(&__p, v18, &v28);
  v28.i64[0] = 0;
  v28.i64[1] = &v28;
  v29 = 0x2000000000;
  v30 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2000000000;
  v27 = 0;
  v9 = v34;
  v10 = v35.i64[0];
  if (v34 != v35.i64[0])
  {
    v11 = v32 - __p;
    v12 = v35.i64[1];
    do
    {
      if (v12(*v9))
      {
        break;
      }

      ++v9;
    }

    while (v9 != v10);
    v13 = v35.i64[0];
    if (v9 != v35.i64[0])
    {
      v14 = v11 >> 2;
      do
      {
        v15 = *v9;
        *v18 = _NSConcreteStackBlock;
        *&v18[8] = 1174405120;
        *&v18[16] = sub_10052AEC8;
        v19 = &unk_101E54F00;
        v24 = v15;
        v20 = v26;
        v21 = &v28;
        v22 = v3;
        v25 = v14;
        v16 = a1[4];
        if (v16)
        {
          v16 = _Block_copy(v16);
        }

        aBlock = v16;
        cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(v3, v15, v18);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        do
        {
          ++v9;
        }

        while (v9 != v10 && (v12(*v9) & 1) == 0);
      }

      while (v9 != v13);
    }
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  v4 = v17;
LABEL_31:
  sub_100004A34(v4);
}

void sub_10052ADD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *aBlock, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052AE7C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E54F30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10052AEC8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v5 = *(a1 + 48);
  if (!a4 && cellplan::CellularPlanControllerPhone::shouldRunGetPlansFetch_sync(*(a1 + 48), *(a1 + 64), &v11))
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 24))
    {
      v7 = 3;
    }

    else
    {
      v7 = *(a1 + 64);
    }

    *(v6 + 24) = v7;
  }

  if (++*(*(*(a1 + 40) + 8) + 24) == *(a1 + 68))
  {
    v8 = *(*(*(a1 + 32) + 8) + 24);
    v9 = *(a1 + 56);
    if (v9)
    {
      v9 = _Block_copy(v9);
    }

    aBlock = v9;
    cellplan::CellularPlanControllerPhone::handleGetPlanItemsCallback_sync(v5, v8, &v11, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }
}

void sub_10052AFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void *sub_10052B008(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 56) = result;
  return result;
}

void sub_10052B03C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t *sub_10052B060(uint64_t *a1, unsigned int **a2, unsigned int **a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = *a2;
  v7 = *a3;
  if (*a2 == *a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = a2[1];
    v10 = a2[2];
    do
    {
      do
      {
        ++v6;
      }

      while (v6 != v10 && ((v9)(*v6) & 1) == 0);
      ++v8;
    }

    while (v6 != v7);
  }

  v14 = *a2;
  v15 = a2[2];
  v12 = *a3;
  v13 = a3[2];
  sub_10052B12C(a1, &v14, &v12, v8);
  return a1;
}

uint64_t *sub_10052B12C(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_10052B1A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052B1C4(uint64_t result, unsigned int **a2, unsigned int **a3)
{
  v3 = result;
  v4 = *a2;
  v5 = *a3;
  if (*a2 == *a3)
  {
    v8 = *(result + 8);
  }

  else
  {
    v6 = a2[1];
    v7 = a2[2];
    v8 = *(result + 8);
    do
    {
      v9 = *v4++;
      *v8 = v9;
      while (v4 != v7)
      {
        result = (v6)(*v4);
        if (result)
        {
          break;
        }

        ++v4;
      }

      ++v8;
    }

    while (v4 != v5);
  }

  *(v3 + 8) = v8;
  return result;
}

uint64_t sub_10052B25C(uint64_t a1)
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

uint64_t *sub_10052B2DC(cellplan::CellularPlanControllerPhone ***a1)
{
  v10 = a1;
  v11 = *a1;
  v1 = *v11;
  v19 = 0;
  v20 = 0;
  sub_10052B560(v11 + 1, &v19);
  v2 = v19;
  v3 = *(v19 + 8);
  *v19 = 0;
  *(v2 + 8) = 0;
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (cellplan::CellularPlanControllerPhone::isPasscodeEnabled_sync(v1))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v4 = *(v1 + 20);
    sub_10000501C(&__p, "");
    (*(*v4 + 264))(&v16, v4, &__p);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p);
    }

    v5 = v16;
    v6 = v17;
    if (v16 == v17)
    {
      *(v19 + 16) = 1;
    }

    else
    {
      do
      {
        cellplan::CellularPlanControllerPhone::removeNonSelectedPlanFromMultiplePlansList_sync(v1, v5);
        v5 += 72;
      }

      while (v5 != v6);
      __p = 0;
      v14 = 0;
      v15 = 0;
      cellplan::CellularPlanControllerPhone::getPlanTransferCapabilityForPrimaryIccids_sync(v1, &__p);
      sub_100927EE4(&v16, &v12);
      v7 = v12;
      v12 = 0uLL;
      v8 = *(v19 + 8);
      *v19 = v7;
      if (v8)
      {
        sub_100004A34(v8);
      }

      if (*(&v12 + 1))
      {
        sub_100004A34(*(&v12 + 1));
      }

      *(v19 + 16) = 0;
      sub_100009970(&__p, v14);
    }

    __p = &v16;
    sub_10052B744(&__p);
  }

  else
  {
    *(v19 + 16) = 5;
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  sub_10052B4F4(&v11);
  return sub_1000049E0(&v10);
}

void sub_10052B478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, char *a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_100009970(&__p, a14);
  __p = &a19;
  sub_10052B744(&__p);
  v21 = *(v19 - 40);
  if (v21)
  {
    sub_100004A34(v21);
  }

  sub_10052B4F4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10052B4F4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v2)
    {
      sub_100521B2C(v2);
      operator delete();
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_10052B560@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && *(result + 24) && *(result + 56))
  {
    sub_10052B584();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_10052B650(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_101E54F50;
  *(a1 + 24) = *a2;
  *a2 = 0u;
  *(a1 + 40) = *(a2 + 16);
  *(a1 + 48) = *(a2 + 24);
  *(a2 + 24) = 0;
  sub_100521D6C(a1 + 56, a2 + 32);
  return a1;
}

void sub_10052B6E4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E54F50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10052B744(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10052B798(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10052B798(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v5 = v3 - 3;
      sub_10052B818(&v5);
      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
      }

      v4 = v3 - 9;
      if (*(v3 - 49) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 9;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void sub_10052B818(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100520EA4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t *sub_10052B86C(cellplan::CellularPlanControllerPhone ***a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v13 = 0;
  v14 = 0;
  sub_10052BB38((v1 + 8), &v13);
  v3 = v13;
  v4 = *(v13 + 8);
  *v13 = 0;
  *(v3 + 8) = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (cellplan::CellularPlanControllerPhone::isPasscodeEnabled_sync(v2))
  {
    v15 = 0uLL;
    v16 = 0;
    ctu::cf::assign();
    *__p = v15;
    v12 = v16;
    v5 = *(v2 + 20);
    v15 = 0uLL;
    v16 = 0;
    (*(*v5 + 264))(&v15);
    if (v15 != *(&v15 + 1))
    {
      cellplan::CellularPlanControllerPhone::removeNonSelectedPlanFromMultiplePlansList_sync(v2, v15);
      memset(v10, 0, sizeof(v10));
      cellplan::CellularPlanControllerPhone::getPlanTransferCapabilityForPrimaryIccids_sync(v2, v10);
      sub_100927B5C();
    }

    v6 = *(v2 + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_101773EEC(__p, v6);
    }

    *(v13 + 16) = 16;
    v10[0] = &v15;
    sub_10052B744(v10);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(v13 + 16) = 5;
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_10052BAC4(&v9);
  return sub_1000049E0(&v8);
}

void sub_10052BA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, char *a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_100009970(&a14, a15);
  a14 = (v22 - 40);
  sub_10052B744(&a14);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  v24 = *(v22 - 48);
  if (v24)
  {
    sub_100004A34(v24);
  }

  sub_10052BAC4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10052BAC4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100005978((v1 + 16));
    v2 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v2)
    {
      sub_100521E6C(v2);
      operator delete();
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_10052BB38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && *(result + 24) && *(result + 56))
  {
    sub_10052BB5C();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_10052BC28(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_101E54FA0;
  *(a1 + 24) = *a2;
  *a2 = 0u;
  *(a1 + 40) = *(a2 + 16);
  *(a1 + 48) = *(a2 + 24);
  *(a2 + 24) = 0;
  sub_1005220AC(a1 + 56, a2 + 32);
  return a1;
}

void sub_10052BCBC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E54FA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10052BD1C(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 256))
  {
    rest::PairedDeviceInfoList::getActiveDevice(buf, (v1 + 896));
    sub_100DB14E0(buf);
    (*(**(v1 + 128) + 680))(buf);
    v9 = 0;
    v2 = (*(**buf + 152))(*buf, &v9);
    sub_10001021C(&v9);
    if (v11)
    {
      sub_100004A34(v11);
    }

    v3 = *(v1 + 40);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I websheet dismiss", buf, 2u);
      }

      v6 = *(v1 + 256);
      v7 = (*v6 + 160);
    }

    else
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I websheet quit", buf, 2u);
      }

      v6 = *(v1 + 256);
      v7 = (*v6 + 176);
    }

    (*v7)(v6, v5);
  }

  else
  {
    v8 = *(v1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I no provisioning operation", buf, 2u);
    }
  }

  operator delete();
}

void sub_10052BF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

void sub_10052BF90(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10052BF90(a1, *a2);
    sub_10052BF90(a1, *(a2 + 1));
    v4 = (a2 + 136);
    sub_100522C04(&v4);
    v4 = (a2 + 112);
    sub_100522C58(&v4);
    if (a2[80] == 1)
    {
      if (a2[111] < 0)
      {
        operator delete(*(a2 + 11));
      }

      a2[80] = 0;
    }

    if (a2[48] == 1 && a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    operator delete(a2);
  }
}

uint64_t *sub_10052C03C(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_10052C130(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a2 + 136);
    sub_100522C04(&v3);
    v3 = (a2 + 112);
    sub_100522C58(&v3);
    if (*(a2 + 80) == 1)
    {
      if (*(a2 + 111) < 0)
      {
        operator delete(*(a2 + 88));
      }

      *(a2 + 80) = 0;
    }

    if (*(a2 + 48) == 1 && *(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_10052C1D0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10052C228(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10052C228(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10052C2B0(v5, (v5 + 8), v4 + 8, (v4 + 8));
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_10052C2B0(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_10002E2F4(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_10052C340();
  }

  return result;
}

void sub_10052C3C8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10052C130(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10052C3E4(void *a1, uint64_t *a2)
{
  v4 = sub_10016E9C0(a1, a2);
  sub_10016E9C0(v4 + 32, (a2 + 4));
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  sub_10052C4EC(a1 + 8, a2[8], a2[9], 0x8E38E38E38E38E39 * ((a2[9] - a2[8]) >> 4));
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  sub_10052C574(a1 + 11, a2[11], a2[12], 0xCF3CF3CF3CF3CF3DLL * ((a2[12] - a2[11]) >> 3));
  return a1;
}

void sub_10052C490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100522C58(va);
  if (*(v3 + 32) == 1)
  {
    if (*(v3 + 63) < 0)
    {
      operator delete(*(v3 + 40));
    }

    *(v3 + 32) = 0;
  }

  if (*v3 == 1)
  {
    sub_101772D60();
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10052C4EC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100522348(result, a4);
  }

  return result;
}

void sub_10052C554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100522C58(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10052C574(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100522878(result, a4);
  }

  return result;
}

void sub_10052C5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100522C04(&a9);
  _Unwind_Resume(a1);
}

std::string *sub_10052C5FC(std::string *__dst, std::string *__str)
{
  v3 = __dst;
  if (__dst->__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(&__dst->__r_.__value_.__r.__words[1], __str);
    v4 = *(__str[1].__r_.__value_.__r.__words + 5);
    v3[1].__r_.__value_.__l.__size_ = __str[1].__r_.__value_.__r.__words[0];
    *(&v3[1].__r_.__value_.__r.__words[1] + 5) = v4;

    return std::string::operator=(v3 + 2, (__str + 40));
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      __dst = sub_100005F2C(&__dst->__r_.__value_.__s.__data_[8], __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&__str->__r_.__value_.__l.__data_;
      __dst[1].__r_.__value_.__r.__words[0] = __str->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__r.__words[1] = v5;
    }

    data = __str[1].__r_.__value_.__l.__data_;
    *(&v3[1].__r_.__value_.__r.__words[1] + 5) = *(__str[1].__r_.__value_.__r.__words + 5);
    v3[1].__r_.__value_.__l.__size_ = data;
    if (__str[2].__r_.__value_.__s.__data_[15] < 0)
    {
      __dst = sub_100005F2C(&v3[2], __str[1].__r_.__value_.__r.__words[2], __str[2].__r_.__value_.__r.__words[0]);
    }

    else
    {
      v7 = *&__str[1].__r_.__value_.__r.__words[2];
      v3[2].__r_.__value_.__r.__words[2] = __str[2].__r_.__value_.__l.__size_;
      *&v3[2].__r_.__value_.__l.__data_ = v7;
    }

    v3->__r_.__value_.__s.__data_[0] = 1;
  }

  return __dst;
}

void sub_10052C6E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052C700(uint64_t a1, char **a2)
{
  if (*a1 == 1)
  {

    sub_10052C760(a1, a2);
  }

  else
  {
    sub_10000501C((a1 + 8), *a2);
    *a1 = 1;
  }
}

double sub_10052C760(uint64_t a1, char **a2)
{
  sub_10000501C(&v4, *a2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  result = *&v4;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10052C7B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10052C8B8(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E54FF0;
  sub_10016F74C((a1 + 24), a2);
  return a1;
}

void sub_10052C934(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E54FF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10052C988(uint64_t a1)
{
  sub_1005230E0(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void *sub_10052C9EC(void *a1)
{
  *a1 = off_101E55040;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003B592C((a1 + 4));
  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10052CA4C(void *a1)
{
  *a1 = off_101E55040;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003B592C((a1 + 4));
  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_10052CB6C(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10052CB8C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E55040;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = sub_10052C7B4(a2 + 32, a1 + 32);
  v6 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10052CC10(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052CC28(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003B592C(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10052CC80(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003B592C((a1 + 4));
  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_10052CCD4(void *a1, unsigned __int8 *a2)
{
  v33 = 0;
  *v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  *v30 = 0u;
  *v27 = 0u;
  *v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  *v22 = 0u;
  sub_10052D458(&v21, a2);
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5 && a1[2])
    {
      v6 = a1[8];
      if (!v6)
      {
        if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101773B44();
        }

        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v34[0] = 0;
        v34[1] = 0;
        *&v35 = 0;
        *(&v35 + 7) = 0;
        __p[0] = 0;
        __p[1] = 0;
        *&v37[0] = 0;
        BYTE8(v37[0]) = 0;
        sub_1005167B8((a1 + 4), 0);
        sub_1005230E0(v37 + 8);
        if (SBYTE7(v37[0]) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v35) < 0)
        {
          operator delete(v34[0]);
        }

        goto LABEL_47;
      }

      if (v21 == 1)
      {
        if (v24 >= 0)
        {
          v8 = HIBYTE(v24);
        }

        else
        {
          v8 = v24;
        }

        v9 = *(v6 + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v6 + 8);
        }

        if (v8 != v9 || (v24 >= 0 ? (v11 = &v23[1]) : (v11 = v23[1]), v10 >= 0 ? (v12 = a1[8]) : (v12 = *v6), memcmp(v11, v12, v8)))
        {
          if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
          {
            if (v10 < 0)
            {
              v6 = *v6;
            }

            v13 = sub_10052D3B8(&v21);
            sub_101773F74(v6, v13, v34);
          }

          goto LABEL_46;
        }

        std::string::operator=((v6 + 32), v30);
        if (v21 == 1)
        {
          if (v33 == 1)
          {
            sub_1001696A4((a1[8] + 752), &v31[1]);
          }

          else
          {
            v14 = a1[8];
            if ((*(v14 + 392) & 1) == 0)
            {
              v38 = 0;
              v40 = 0u;
              memset(v37, 0, sizeof(v37));
              v35 = 0u;
              *__p = 0u;
              *v34 = 0u;
              v39 = &v40;
              v41 = 1;
              sub_10016DFC8(v14 + 56, v34);
              sub_10016E64C(v34);
              if (v21 != 1)
              {
                if (v21 == 2)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  v19 = &ctu::ResultIsError::~ResultIsError;
                  ctu::ResultIsError::ResultIsError(exception);
                }

                else
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  v19 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                  ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
                }

                __cxa_throw(exception, v20, v19);
              }
            }

            std::string::operator=((v14 + 56), &v31[1]);
          }

          *(a1[8] + 24) = 0;
          goto LABEL_46;
        }

        if (v21 == 2)
        {
          v15 = __cxa_allocate_exception(0x10uLL);
          v16 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(v15);
LABEL_65:
          __cxa_throw(v15, v17, v16);
        }
      }

      else if (v21 == 2)
      {
        if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10052D318(&v21);
          v7 = asString();
          sub_101773FC0(v7, v34);
        }

LABEL_46:
        sub_1005167B8((a1 + 4), 1);
LABEL_47:
        sub_100004A34(v5);
        goto LABEL_48;
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      v16 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(v15);
      goto LABEL_65;
    }
  }

  else
  {
    v5 = 0;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v34[0] = 0;
  v34[1] = 0;
  *&v35 = 0;
  *(&v35 + 7) = 0;
  __p[0] = 0;
  __p[1] = 0;
  *&v37[0] = 0;
  BYTE8(v37[0]) = 0;
  sub_1005167B8((a1 + 4), 0);
  sub_1005230E0(v37 + 8);
  if (SBYTE7(v37[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (v5)
  {
    goto LABEL_47;
  }

LABEL_48:
  if (v21 == 1)
  {
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[1]);
    }

    if (SHIBYTE(v31[0]) < 0)
    {
      operator delete(v30[0]);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[1]);
    }

    if (SHIBYTE(v28[0]) < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[1]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[1]);
    }

    if (SHIBYTE(v23[0]) < 0)
    {
      operator delete(v22[0]);
    }
  }
}

void sub_10052D1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  __cxa_free_exception(v36);
  sub_100004A34(v35);
  if (a9 == 1)
  {
    sub_10011289C(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052D24C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10052D298(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

unsigned __int8 *sub_10052D318(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 2)
  {
    if (v1 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(exception);
      v5 = &ctu::ResultIsNotError::~ResultIsNotError;
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      v5 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
    }

    __cxa_throw(exception, v4, v5);
  }

  return a1 + 8;
}

unsigned __int8 *sub_10052D3B8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsError::ResultIsError(exception);
      v5 = &ctu::ResultIsError::~ResultIsError;
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      v5 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
    }

    __cxa_throw(exception, v4, v5);
  }

  return a1 + 8;
}

unsigned __int8 *sub_10052D458(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 2)
  {
    sub_10052D590(a1, a2 + 8);
  }

  else if (v3 == 1)
  {
    sub_10052D4B0(a1, (a2 + 8));
  }

  return a1;
}

__n128 sub_10052D4B0(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_10052D5E4(a1 + 8, a2);
  }

  else
  {
    *a1 = 1;
    *(a1 + 8) = *a2;
    v3 = *(a2 + 8);
    *(a1 + 32) = *(a2 + 24);
    *(a1 + 16) = v3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v4 = *(a2 + 32);
    *(a1 + 56) = *(a2 + 48);
    *(a1 + 40) = v4;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 64) = *(a2 + 56);
    v5 = *(a2 + 64);
    *(a1 + 88) = *(a2 + 80);
    *(a1 + 72) = v5;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    v6 = *(a2 + 88);
    *(a1 + 112) = *(a2 + 104);
    *(a1 + 96) = v6;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 88) = 0;
    v7 = *(a2 + 112);
    *(a1 + 136) = *(a2 + 128);
    *(a1 + 120) = v7;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v8 = *(a2 + 136);
    *(a1 + 160) = *(a2 + 152);
    *(a1 + 144) = v8;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    result = *(a2 + 160);
    *(a1 + 184) = *(a2 + 176);
    *(a1 + 168) = result;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a1 + 192) = *(a2 + 184);
  }

  return result;
}

unsigned __int8 *sub_10052D590(unsigned __int8 *result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = *result;
  if (v4 == 1)
  {
    result = sub_10011289C((result + 8));
LABEL_5:
    *v3 = 2;
    goto LABEL_6;
  }

  if (v4 != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  v3[8] = *a2;
  return result;
}

uint64_t sub_10052D5E4(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  *(a1 + 56) = *(a2 + 56);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v7 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v7;
  *(a2 + 87) = 0;
  *(a2 + 64) = 0;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a2 + 111) = 0;
  *(a2 + 88) = 0;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v9 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v9;
  *(a2 + 135) = 0;
  *(a2 + 112) = 0;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v10 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v10;
  *(a2 + 159) = 0;
  *(a2 + 136) = 0;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v11 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v11;
  *(a2 + 183) = 0;
  *(a2 + 160) = 0;
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

void sub_10052D768(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E550D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10052D7C8(void *a1)
{
  *a1 = off_101E55120;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[4];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_10052D838(void *a1)
{
  *a1 = off_101E55120;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[4];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete();
}

void sub_10052D978(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E55120;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  *(a2 + 32) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = *(a2 + 32);
    if (v6)
    {
      dispatch_group_enter(v6);
    }
  }

  v7 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_10052DA0C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[4];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[3];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_10052DA74(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = __p[4];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = __p[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(__p);
}

void sub_10052DAD8(void *a1, unsigned __int8 *a2)
{
  v33 = 0;
  *__p = 0u;
  v32 = 0u;
  v29 = 0u;
  *v30 = 0u;
  *v27 = 0u;
  *v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  *v22 = 0u;
  sub_10052D458(&v21, a2);
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (!a1[2])
      {
LABEL_35:
        sub_100004A34(v6);
        goto LABEL_36;
      }

      v7 = a1[5];
      if (!v7)
      {
        if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101773ADC();
        }

        goto LABEL_35;
      }

      if (v21 == 1)
      {
        if (v24 >= 0)
        {
          v9 = HIBYTE(v24);
        }

        else
        {
          v9 = v24;
        }

        v10 = *(v7 + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v7 + 8);
        }

        if (v9 != v10 || (v24 >= 0 ? (v12 = &v23[1]) : (v12 = v23[1]), v11 >= 0 ? (v13 = v7) : (v13 = *v7), memcmp(v12, v13, v9)))
        {
          if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
          {
            if (v11 < 0)
            {
              v7 = *v7;
            }

            v14 = sub_10052D3B8(&v21);
            sub_101773F74(v7, v14, v34);
          }

          goto LABEL_35;
        }

        std::string::operator=((v7 + 32), v30);
        if (v21 == 1)
        {
          if (v33 == 1)
          {
            sub_1001696A4((v7 + 752), &__p[1]);
          }

          else
          {
            if ((*(v7 + 392) & 1) == 0)
            {
              v35 = 0;
              v37 = 0u;
              memset(v34, 0, sizeof(v34));
              v36 = &v37;
              v38 = 1;
              sub_10016DFC8(v7 + 56, v34);
              sub_10016E64C(v34);
              if (v21 != 1)
              {
                if (v21 == 2)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  v19 = &ctu::ResultIsError::~ResultIsError;
                  ctu::ResultIsError::ResultIsError(exception);
                }

                else
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  v19 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                  ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
                }

                __cxa_throw(exception, v20, v19);
              }
            }

            std::string::operator=((v7 + 56), &__p[1]);
          }

          *(v7 + 24) = 0;
          goto LABEL_35;
        }

        if (v21 == 2)
        {
          v15 = __cxa_allocate_exception(0x10uLL);
          v16 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(v15);
LABEL_53:
          __cxa_throw(v15, v17, v16);
        }
      }

      else if (v21 == 2)
      {
        if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10052D318(&v21);
          v8 = asString();
          sub_101773FF8(v8, v34);
        }

        goto LABEL_35;
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      v16 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(v15);
      goto LABEL_53;
    }
  }

LABEL_36:
  if (v21 == 1)
  {
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v30[0]);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[1]);
    }

    if (SHIBYTE(v28[0]) < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[1]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[1]);
    }

    if (SHIBYTE(v23[0]) < 0)
    {
      operator delete(v22[0]);
    }
  }
}

void sub_10052DEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10)
{
  __cxa_free_exception(v11);
  sub_100004A34(v10);
  if (a9 == 1)
  {
    sub_10011289C(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052DF28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10052DF74(uint64_t **a1)
{
  v1 = **a1;
  __p = 0;
  v10 = 0uLL;
  if (*(v1 + 920))
  {
    (*(**(v1 + 128) + 120))(v8);
    v11 = 0;
    v12 = 0uLL;
    ctu::cf::assign();
    __p = v11;
    *&v10 = v12;
    *(&v10 + 7) = *(&v12 + 7);
    HIBYTE(v10) = HIBYTE(v12);
    sub_100005978(v8);
  }

  v11 = 0;
  v12 = 0uLL;
  (*(**(v1 + 160) + 192))(&v11);
  memset(v8, 0, sizeof(v8));
  v7[0] = v8;
  v7[1] = &v11;
  v7[2] = v1;
  v6[0] = v1;
  v6[1] = &v11;
  v6[2] = v7;
  v2 = *(v1 + 360);
  if (v2 != *(v1 + 368))
  {
    sub_10052E1CC(v6, v2, 1uLL);
  }

  v3 = *(v1 + 544);
  v4 = *(v1 + 552);
  while (v3 != v4)
  {
    v5 = *(v3 + 176);
    if (v5 != *(v3 + 184))
    {
      sub_10052E1CC(v6, v5, 2uLL);
    }

    v3 += 216;
  }

  (*(**(v1 + 208) + 112))(*(v1 + 208), v8, &__p);
  v7[0] = v8;
  sub_10052EF38(v7);
  sub_10052EFDC(&v11, v12);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_10052E140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 33) < 0)
  {
    operator delete(*(v24 - 56));
  }

  sub_100005978(&a16);
  operator delete();
}

void sub_10052E1CC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 12) == 3)
  {
    v3 = a3;
    v5 = *a1;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    sub_100922314((a2 + 16), a2, a3);
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v6 = *(v5 + 304);
    v7 = *(v5 + 312);
    if (v6 == v7)
    {
      goto LABEL_50;
    }

    do
    {
      if (subscriber::isSimReady())
      {
        v8 = a1[1];
        v11 = *v8;
        v10 = (v8 + 1);
        v9 = v11;
        if (v11 != v10)
        {
          if (v100 >= 0)
          {
            v12 = HIBYTE(v100);
          }

          else
          {
            v12 = v99;
          }

          if (v100 >= 0)
          {
            v13 = &v98;
          }

          else
          {
            v13 = v98;
          }

          while (1)
          {
            v14 = *(v9 + 87);
            v15 = v14;
            if ((v14 & 0x80u) != 0)
            {
              v14 = *(v9 + 9);
            }

            if (v14 == v12)
            {
              v16 = v15 >= 0 ? v9 + 4 : *(v9 + 8);
              if (!memcmp(v16, v13, v12))
              {
                v17 = *(v9 + 143);
                if (v17 >= 0)
                {
                  v18 = *(v9 + 143);
                }

                else
                {
                  v18 = *(v9 + 16);
                }

                v19 = *(v6 + 95);
                v20 = v19;
                if ((v19 & 0x80u) != 0)
                {
                  v19 = *(v6 + 80);
                }

                if (v18 == v19)
                {
                  v21 = v17 >= 0 ? (v9 + 120) : *(v9 + 15);
                  v22 = v20 >= 0 ? (v6 + 72) : *(v6 + 72);
                  if (!memcmp(v21, v22, v18) && *(v9 + 113) == v3 && (v9[7] & 0xFE) == 2)
                  {
                    break;
                  }
                }
              }
            }

            v23 = *(v9 + 1);
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
                v24 = *(v9 + 2);
                v25 = *v24 == v9;
                v9 = v24;
              }

              while (!v25);
            }

            v9 = v24;
            if (v24 == v10)
            {
              goto LABEL_48;
            }
          }
        }

        if (v9 != v10)
        {
          v26 = v96;
          if (v96 >= v97)
          {
            v28 = sub_1000053A0(&v95, v9 + 2);
          }

          else
          {
            if (*(v9 + 55) < 0)
            {
              sub_100005F2C(v96, *(v9 + 4), *(v9 + 5));
            }

            else
            {
              v27 = v9[2];
              v96[2] = *(v9 + 6);
              *v26 = v27;
            }

            v28 = v26 + 3;
          }

          v96 = v28;
        }
      }

LABEL_48:
      v6 += 168;
    }

    while (v6 != v7);
    v29 = v95;
    v30 = v96;
    if (v95 == v96)
    {
LABEL_50:
      memset(v107, 0, 24);
      v31 = a1[1];
      v34 = *v31;
      v32 = v31 + 1;
      v33 = v34;
      if (v34 != v32)
      {
        v35 = 0.0;
        while (1)
        {
          v36 = *(v33 + 87);
          if (v36 >= 0)
          {
            v37 = *(v33 + 87);
          }

          else
          {
            v37 = v33[9];
          }

          v38 = HIBYTE(v100);
          if (v100 < 0)
          {
            v38 = v99;
          }

          if (v37 != v38)
          {
            goto LABEL_73;
          }

          v39 = v36 >= 0 ? v33 + 8 : v33[8];
          v40 = v100 >= 0 ? &v98 : v98;
          if (memcmp(v39, v40, v37) || *(v33 + 113) != v3)
          {
            goto LABEL_73;
          }

          if ((*(v33 + 143) & 0x8000000000000000) != 0)
          {
            if (!v33[16])
            {
LABEL_70:
              if ((v33[14] & 0xFE) == 2)
              {
                v41 = *(v33 + 7);
                if (v41 > v35)
                {
                  std::string::operator=(v107, (v33 + 4));
                  v35 = v41;
                }
              }
            }
          }

          else if (!*(v33 + 143))
          {
            goto LABEL_70;
          }

LABEL_73:
          v42 = v33[1];
          if (v42)
          {
            do
            {
              v43 = v42;
              v42 = *v42;
            }

            while (v42);
          }

          else
          {
            do
            {
              v43 = v33[2];
              v25 = *v43 == v33;
              v33 = v43;
            }

            while (!v25);
          }

          v33 = v43;
          if (v43 == v32)
          {
            v44 = v107[23];
            v45 = *&v107[8];
            goto LABEL_81;
          }
        }
      }

      v45 = 0;
      v44 = 0;
LABEL_81:
      if ((v44 & 0x80u) == 0)
      {
        v46 = v44;
      }

      else
      {
        v46 = v45;
      }

      if (v46)
      {
        v47 = v96;
        if (v96 >= v97)
        {
          v49 = sub_10016B30C(&v95, v107);
        }

        else
        {
          if ((v44 & 0x80) != 0)
          {
            sub_100005F2C(v96, *v107, v45);
          }

          else
          {
            v48 = *v107;
            v96[2] = *&v107[16];
            *v47 = v48;
          }

          v49 = v47 + 3;
          v96 = v47 + 3;
        }

        v96 = v49;
      }

      if ((v107[23] & 0x80000000) != 0)
      {
        operator delete(*v107);
      }

      v29 = v95;
      v30 = v96;
    }

    if (v29 == v30)
    {
      memset(v107, 0, 24);
      v50 = a1[1];
      v53 = *v50;
      v51 = v50 + 1;
      v52 = v53;
      if (v53 == v51)
      {
        v64 = 0;
        v63 = 0;
      }

      else
      {
        v54 = 0.0;
        do
        {
          v55 = *(v52 + 87);
          if (v55 >= 0)
          {
            v56 = *(v52 + 87);
          }

          else
          {
            v56 = v52[9];
          }

          v57 = HIBYTE(v100);
          if (v100 < 0)
          {
            v57 = v99;
          }

          if (v56 == v57)
          {
            v58 = v55 >= 0 ? v52 + 8 : v52[8];
            v59 = v100 >= 0 ? &v98 : v98;
            if (!memcmp(v58, v59, v56) && *(v52 + 113) == v3)
            {
              v60 = *(v52 + 7);
              if (v60 > v54)
              {
                std::string::operator=(v107, (v52 + 4));
                v54 = v60;
              }
            }
          }

          v61 = v52[1];
          if (v61)
          {
            do
            {
              v62 = v61;
              v61 = *v61;
            }

            while (v61);
          }

          else
          {
            do
            {
              v62 = v52[2];
              v25 = *v62 == v52;
              v52 = v62;
            }

            while (!v25);
          }

          v52 = v62;
        }

        while (v62 != v51);
        v63 = v107[23];
        v64 = *&v107[8];
      }

      if ((v63 & 0x80u) == 0)
      {
        v65 = v63;
      }

      else
      {
        v65 = v64;
      }

      if (v65)
      {
        v66 = v96;
        if (v96 >= v97)
        {
          v68 = sub_10016B30C(&v95, v107);
        }

        else
        {
          if ((v63 & 0x80) != 0)
          {
            sub_100005F2C(v96, *v107, v64);
          }

          else
          {
            v67 = *v107;
            v96[2] = *&v107[16];
            *v66 = v67;
          }

          v68 = v66 + 3;
          v96 = v66 + 3;
        }

        v96 = v68;
      }

      if ((v107[23] & 0x80000000) != 0)
      {
        operator delete(*v107);
      }

      v29 = v95;
      v30 = v96;
    }

    v69 = a1[2];
    v70 = v69[2];
    if (v29 == v30)
    {
      *&v108 = 0;
      memset(v107, 0, sizeof(v107));
      v107[0] = v3;
      v71 = *v69;
      v72 = (*v69)[1];
      if (v72 >= (*v69)[2])
      {
        v75 = sub_10052EB7C(*v69, v107);
      }

      else
      {
        *v72 = *v107;
        v73 = (v72 + 8);
        if ((v107[31] & 0x80000000) != 0)
        {
          sub_100005F2C(v73, *&v107[8], *&v107[16]);
        }

        else
        {
          v74 = *&v107[8];
          *(v72 + 24) = *&v107[24];
          *v73 = v74;
        }

        *(v72 + 32) = v108;
        v75 = v72 + 40;
        v71[1] = v72 + 40;
      }

      v71[1] = v75;
      if ((v107[31] & 0x80000000) != 0)
      {
        operator delete(*&v107[8]);
      }

      v29 = v95;
      v30 = v96;
    }

    if (v29 != v30)
    {
      while (1)
      {
        v76 = sub_1000E20F0(v69[1], v29);
        v102 = 0;
        memset(v101, 0, sizeof(v101));
        LOBYTE(v101[0]) = *(v76 + 57);
        BYTE1(v101[0]) = *(v76 + 56);
        if (*(v76 + 87) < 0)
        {
          v79 = *(v76 + 72);
          if (!v79)
          {
LABEL_174:
            LOWORD(v102) = 257;
            v111 = 0uLL;
            memset(v110, 0, sizeof(v110));
            v108 = 0uLL;
            v109 = 0uLL;
            memset(v107, 0, sizeof(v107));
            VinylInfo::findProfile();
            if (BYTE8(v111) == 1)
            {
              std::string::operator=(&v101[1], v110);
              if (BYTE8(v111))
              {
                sub_100E3A5D4(v107);
              }
            }

            goto LABEL_182;
          }

          LOWORD(v102) = 256;
          v78 = v70[38];
          v77 = v70[39];
          sub_100005F2C(__p, *(v76 + 64), v79);
        }

        else
        {
          if (!*(v76 + 87))
          {
            goto LABEL_174;
          }

          LOWORD(v102) = 256;
          v78 = v70[38];
          v77 = v70[39];
          *__p = *(v76 + 64);
          v105 = *(v76 + 80);
        }

        v80 = HIBYTE(v105);
        if (v78 == v77)
        {
          break;
        }

        if (v105 >= 0)
        {
          v81 = HIBYTE(v105);
        }

        else
        {
          v81 = __p[1];
        }

        if (v105 >= 0)
        {
          v82 = __p;
        }

        else
        {
          v82 = __p[0];
        }

        v83 = v78 + 72;
        while (1)
        {
          v84 = *(v83 + 23);
          v85 = v84;
          if ((v84 & 0x80u) != 0)
          {
            v84 = *(v83 + 8);
          }

          if (v84 == v81)
          {
            v86 = v85 >= 0 ? v83 : *v83;
            if (!memcmp(v86, v82, v81))
            {
              break;
            }
          }

          v87 = v83 + 96;
          v83 += 168;
          if (v87 == v77)
          {
            v78 = v77;
            goto LABEL_169;
          }
        }

        v78 = v83 - 72;
        if (v80 < 0)
        {
          goto LABEL_170;
        }

LABEL_171:
        if (v78 == v70[39])
        {
          goto LABEL_178;
        }

        v103 = 0;
        (*(*v70[16] + 120))(&v103);
        if (!v103)
        {
          sub_100005978(&v103);
LABEL_178:
          v88 = 0;
          v89 = 0;
          *(v106 + 7) = 0;
          v106[0] = 0;
          goto LABEL_179;
        }

        memset(v107, 0, 24);
        ctu::cf::assign();
        v88 = *v107;
        v106[0] = *&v107[8];
        *(v106 + 7) = *&v107[15];
        v89 = v107[23];
        sub_100005978(&v103);
LABEL_179:
        if (SHIBYTE(v101[3]) < 0)
        {
          operator delete(v101[1]);
        }

        v101[1] = v88;
        v101[2] = v106[0];
        *(&v101[2] + 7) = *(v106 + 7);
        HIBYTE(v101[3]) = v89;
LABEL_182:
        v90 = *v69;
        v91 = (*v69)[1];
        if (v91 >= (*v69)[2])
        {
          v94 = sub_10052EB7C(*v69, v101);
        }

        else
        {
          *v91 = v101[0];
          v92 = (v91 + 8);
          if (SHIBYTE(v101[3]) < 0)
          {
            sub_100005F2C(v92, v101[1], v101[2]);
          }

          else
          {
            v93 = *&v101[1];
            *(v91 + 24) = v101[3];
            *v92 = v93;
          }

          *(v91 + 32) = v102;
          v94 = v91 + 40;
          v90[1] = v91 + 40;
        }

        v90[1] = v94;
        if (SHIBYTE(v101[3]) < 0)
        {
          operator delete(v101[1]);
        }

        v29 += 3;
        if (v29 == v30)
        {
          goto LABEL_194;
        }
      }

LABEL_169:
      if ((v80 & 0x80) == 0)
      {
        goto LABEL_171;
      }

LABEL_170:
      operator delete(__p[0]);
      goto LABEL_171;
    }

LABEL_194:
    *v107 = &v95;
    sub_1000087B4(v107);
    if (SHIBYTE(v100) < 0)
    {
      operator delete(v98);
    }
  }
}

void sub_10052EA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  a20 = &a11;
  sub_1000087B4(&a20);
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052EB7C(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10052ED08(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  sub_10052ECAC((40 * v2), a2);
  v15 = 40 * v2 + 40;
  v7 = a1[1];
  v8 = 40 * v2 + *a1 - v7;
  sub_10052ED60(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10052EEA4(&v13);
  return v12;
}

void sub_10052EC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10052EEA4(va);
  _Unwind_Resume(a1);
}

_WORD *sub_10052ECAC(_WORD *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 4;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 2) = *(a2 + 24);
    *v4 = v5;
  }

  a1[16] = *(a2 + 32);
  return a1;
}

void sub_10052ED08(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10052ED60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }
  }

  return sub_10052EE24(v9);
}

uint64_t sub_10052EE24(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10052EE5C(a1);
  }

  return a1;
}

void sub_10052EE5C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 9) < 0)
    {
      operator delete(*(v1 - 32));
    }

    v1 -= 40;
  }
}

uint64_t sub_10052EEA4(uint64_t a1)
{
  sub_10052EEDC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10052EEDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_10052EF38(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10052EF8C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10052EF8C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

void sub_10052EFDC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10052EFDC(a1, *a2);
    sub_10052EFDC(a1, a2[1]);
    sub_10052F038((a2 + 4));

    operator delete(a2);
  }
}

void sub_10052F038(uint64_t a1)
{
  sub_10011289C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *sub_10052F088(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_10052F110(result, a4);
  }

  return result;
}

void sub_10052F0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1005235F4(&a9);
  _Unwind_Resume(a1);
}

void sub_10052F110(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_10046A3A4(a1, a2);
  }

  sub_1000CE3D4();
}

char *sub_10052F160(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10046A2C0(v4, v6);
      v6 = (v6 + 88);
      v4 = v11 + 88;
      v11 += 88;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_10046A574(v8);
  return v4;
}

void *sub_10052F200(void *a1)
{
  *a1 = off_101E551A0;
  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_10052F244(void *a1)
{
  *a1 = off_101E551A0;
  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_10052F324(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E551A0;
  a2[1] = v2;
  return sub_1000224C8((a2 + 2), a1 + 16);
}

void sub_10052F35C(void *a1)
{
  sub_10000FF50(a1 + 16);

  operator delete(a1);
}

uint64_t sub_10052F398(uint64_t a1, _WORD *a2)
{
  v2 = *(a1 + 8);
  sub_10000FFD0(a1 + 16, (*a2 & 0x100) == 0);
  v3 = *(**(v2 + 96) + 16);

  return v3();
}

uint64_t sub_10052F400(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10052F4BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55220;
  a2[1] = v2;
  return result;
}

void sub_10052F4E8(uint64_t a1, void ***a2, unsigned __int8 *a3)
{
  v4 = *a2;
  v5 = a2[1];
  memset(v11, 0, sizeof(v11));
  sub_10052F724(v11, a3);
  v13[0] = v4;
  v13[1] = v5;
  if (LOBYTE(v11[0]) == 1)
  {
    v6 = *(a1 + 8);
    v7 = *(v6 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I active remote plan - received pending profiles", buf, 2u);
      if (LOBYTE(v11[0]) != 1)
      {
        if (LOBYTE(v11[0]) == 2)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v9 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(exception);
        }

        else
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v9 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
          ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        }

        __cxa_throw(exception, v10, v9);
      }
    }

    (*(**(v6 + 160) + 40))(*(v6 + 160), v13, v11 + 8);
    (*(**(v6 + 96) + 16))(*(v6 + 96));
    if (LOBYTE(v11[0]) == 1)
    {
      v13[0] = v11 + 1;
      sub_1000DC8D4(v13);
    }
  }
}

void sub_10052F698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  __cxa_free_exception(v13);
  if (a9 == 1)
  {
    a13 = &a10;
    sub_1000DC8D4(&a13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052F6D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *sub_10052F724(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 2)
  {
    sub_10052F7E0(a1, a2 + 8);
  }

  else if (v3 == 1)
  {
    sub_10052F77C(a1, (a2 + 8));
  }

  return a1;
}

__n128 sub_10052F77C(uint64_t a1, __n128 *a2)
{
  if (*a1 == 1)
  {
    sub_1000DDEF8((a1 + 8));
  }

  else
  {
    *a1 = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
  }

  result = *a2;
  *(a1 + 8) = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_10052F7E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = (a1 + 8);
    sub_1000DC8D4(&v5);
LABEL_5:
    *a1 = 2;
    goto LABEL_6;
  }

  if (v4 != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  a1[8] = *a2;
}

uint64_t sub_10052F844(uint64_t a1)
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

uint64_t sub_10052F8C4(uint64_t a1, uint64_t a2)
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

void *sub_10052F95C(void *a1)
{
  *a1 = off_101E552B0;
  sub_10052B25C((a1 + 2));
  return a1;
}

void sub_10052F9A0(void *a1)
{
  *a1 = off_101E552B0;
  sub_10052B25C((a1 + 2));

  operator delete();
}

uint64_t sub_10052FA80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E552B0;
  a2[1] = v2;
  return sub_10052F8C4((a2 + 2), a1 + 16);
}

void sub_10052FAB8(void *a1)
{
  sub_10052B25C(a1 + 16);

  operator delete(a1);
}

void sub_10052FAF4(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = *a2;
  v5 = a2[1];
  memset(v11, 0, sizeof(v11));
  sub_10052F724(v11, a3);
  v16[0] = v4;
  v16[1] = v5;
  if (LOBYTE(v11[0]) == 1)
  {
    v6 = *(a1 + 8);
    v7 = *(v6 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT) && (*buf = 0, _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I received pending profiles", buf, 2u), LOBYTE(v11[0]) != 1))
    {
      if (LOBYTE(v11[0]) == 2)
      {
LABEL_13:
        exception = __cxa_allocate_exception(0x10uLL);
        v9 = &ctu::ResultIsError::~ResultIsError;
        ctu::ResultIsError::ResultIsError(exception);
        goto LABEL_15;
      }
    }

    else
    {
      (*(**(v6 + 160) + 40))(*(v6 + 160), v16, v11 + 8);
      if (LOBYTE(v11[0]) == 1)
      {
        sub_100520028(a1 + 16, 1);
        goto LABEL_7;
      }

      if (LOBYTE(v11[0]) == 2)
      {
        goto LABEL_13;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v9 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_15:
    __cxa_throw(exception, v10, v9);
  }

  *buf = 0;
  v13 = 0;
  v14 = 0;
  sub_100520028(a1 + 16, 0);
  v15 = buf;
  sub_1000DC8D4(&v15);
LABEL_7:
  if (LOBYTE(v11[0]) == 1)
  {
    *buf = v11 + 8;
    sub_1000DC8D4(buf);
  }
}

void sub_10052FD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  __cxa_free_exception(v17);
  if (a9 == 1)
  {
    a13 = &a10;
    sub_1000DC8D4(&a13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052FD70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10052FDBC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_10052FE3C(uint64_t **a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v61 = 0uLL;
  v3 = *(v2 + 1224);
  v4 = 328;
  if (*(v2 + 1224))
  {
    v4 = 1368;
  }

  v5 = v2 + v4;
  v6 = *(v2 + v4 + 32);
  if (*(v5 + 40) == v6 || (*(v5 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }
  }

  else
  {
    v61 = *(v6 + 16);
    if (!v3)
    {
      *v31 = 0u;
      *v32 = 0u;
      *v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      *v28 = 0u;
      v25 = 0u;
      *v26 = 0u;
      *v23 = 0u;
      *v24 = 0u;
      *v21 = 0u;
      v22 = 0u;
      *v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      *v18 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_100F11798(__p);
      memset(__dst, 0, 24);
      ctu::cf::assign();
      v8 = __dst[0];
      *&v59 = __dst[1];
      *(&v59 + 7) = *(&__dst[1] + 7);
      v9 = HIBYTE(__dst[2]);
      v10 = SHIBYTE(__dst[2]);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      *(&__p[1] + 7) = *(&v59 + 7);
      v11 = v59;
      __p[0] = v8;
      __p[1] = v59;
      HIBYTE(__p[2]) = v10;
      if (v10 >= 0)
      {
        v11 = v9;
      }

      if (!v11)
      {
        (*(**(v2 + 128) + 680))(__dst);
        v13 = __dst[0];
        if (__dst[1])
        {
          sub_100004A34(__dst[1]);
        }

        if (v13)
        {
          (*(**(v2 + 128) + 680))(&v59);
          (*(*v59 + 64))(__dst);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = *__dst;
          __p[2] = __dst[2];
          HIBYTE(__dst[2]) = 0;
          LOBYTE(__dst[0]) = 0;
          if (*(&v59 + 1))
          {
            sub_100004A34(*(&v59 + 1));
          }
        }
      }

      sub_10004ECBC(__dst, __p);
      *&v59 = _Block_copy(&stru_101E55340);
      cellplan::CellularPlanControllerPhone::fetchProfile_sync(v2, &v61, __dst, &v59);
    }

    v34 = 0;
    *v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    *v31 = 0u;
    *v28 = 0u;
    *v29 = 0u;
    *v26 = 0u;
    v27 = 0u;
    *v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    *v23 = 0u;
    v20 = 0u;
    *v21 = 0u;
    *v18 = 0u;
    *v19 = 0u;
    v17 = 0u;
    memset(__p, 0, sizeof(__p));
    v7 = v1[1];
    if (v7 && CFStringGetLength(v7))
    {
      memset(__dst, 0, 24);
      ctu::cf::assign();
      *&v59 = 0;
      *(&v59 + 7) = 0;
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = 0;
      __p[1] = v59;
      *(&__p[1] + 7) = *(&v59 + 7);
      HIBYTE(__p[2]) = 0;
    }

    else
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101774030();
      }

      (*(**(v2 + 128) + 680))(&v59);
      (*(*v59 + 64))(__dst);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *__dst;
      __p[2] = __dst[2];
      HIBYTE(__dst[2]) = 0;
      LOBYTE(__dst[0]) = 0;
      if (*(&v59 + 1))
      {
        sub_100004A34(*(&v59 + 1));
      }
    }

    sub_100FB5378(__dst, __p);
    v59 = 0uLL;
    v60 = 0;
    sub_100530564(&v59, __dst, &v59, 1uLL);
    cellplan::CellularPlanControllerPhone::updateRemotePendingPlans_sync(v2, &v61, &v59);
    v35 = &v59;
    sub_1000DC8D4(&v35);
    if (v58 == 1)
    {
      if (v57 < 0)
      {
        operator delete(v56);
      }

      if (v55 < 0)
      {
        operator delete(v54);
      }

      if (v53 < 0)
      {
        operator delete(v52);
      }

      if (v51 < 0)
      {
        operator delete(v50);
      }

      if (v49 < 0)
      {
        operator delete(v48);
      }

      if (v47 < 0)
      {
        operator delete(v46);
      }

      if (v45 < 0)
      {
        operator delete(v44);
      }
    }

    if (v43 < 0)
    {
      operator delete(v42);
    }

    if (v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 < 0)
    {
      operator delete(__dst[3]);
    }

    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v34 == 1)
    {
      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32[1]);
      }

      if (SHIBYTE(v32[0]) < 0)
      {
        operator delete(v31[0]);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29[1]);
      }

      if (SHIBYTE(v29[0]) < 0)
      {
        operator delete(v28[0]);
      }

      if (SBYTE7(v27) < 0)
      {
        operator delete(v26[0]);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24[1]);
      }

      if (SHIBYTE(v24[0]) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[1]);
    }

    if (SHIBYTE(v19[0]) < 0)
    {
      operator delete(v18[0]);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[3]);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100530510(&v15);
  return sub_1000049E0(&v14);
}

void sub_10053040C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  v60 = *(v58 - 96);
  if (v60)
  {
    sub_100004A34(v60);
  }

  sub_100F118F0(&a12);
  sub_100530510(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100530510(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100005978((v1 + 8));
    operator delete();
  }

  return a1;
}

uint64_t *sub_100530564(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000DDF38(result, a4);
  }

  return result;
}

void sub_1005305CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000DC8D4(&a9);
  _Unwind_Resume(a1);
}

char *sub_1005305EC(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100FB5378(v4, v6);
      v6 = (v6 + 312);
      v4 = v11 + 312;
      v11 += 312;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1000DE090(v8);
  return v4;
}

uint64_t sub_10053068C(uint64_t a1, uint64_t a2)
{
  sub_1005306FC(a1 + 32, a2);
  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

void sub_1005306FC(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      std::string::operator=((a1 + 8), (a2 + 8));
      *(a1 + 32) = *(a2 + 32);
      sub_10016E810(a1 + 40, a2 + 40);
      sub_10016E810(a1 + 72, a2 + 72);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {

      sub_100220B4C(a1);
    }
  }

  else if (*a2)
  {
    v4 = (a2 + 8);

    sub_100523744(a1, v4);
  }
}

uint64_t sub_100530DA0(uint64_t a1, void *a2, char a3)
{
  sub_10000501C(__p, "jetsam");
  sub_10072A6B4(a1, a2, __p, "xpc", 0);
  *a1 = off_101E553E0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_101E55370;
  *(a1 + 168) = a3;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return a1;
}

void sub_100530E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100530F0C(uint64_t a1, xpc_connection_t *a2, uint64_t ***a3)
{
  if (*(a1 + 168) == 1)
  {
    if (!*(a1 + 176))
    {
      sub_10000501C(&__p, "JetsamXpc");
      Registry::createXpcJetsamAssertion();
      v6 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v7 = *(a1 + 184);
      *(a1 + 176) = v6;
      if (v7)
      {
        sub_100004A34(v7);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }

      if (v12 < 0)
      {
        operator delete(__p);
      }
    }

    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      pid = xpc_connection_get_pid(*a2);
      *buf = 136315394;
      *&buf[4] = a3;
      *&buf[12] = 1024;
      *&buf[14] = pid;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s(%d) requested Jetsam XPC assertion", buf, 0x12u);
    }
  }

  return 1;
}

void sub_100531050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100531074(uint64_t a1, xpc_connection_t *a2, uint64_t **a3)
{
  if (*(a1 + 168) == 1)
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      pid = xpc_connection_get_pid(*a2);
      v7 = 136315394;
      v8 = a3;
      v9 = 1024;
      v10 = pid;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s(%d) released its Jetsam XPC assertion", &v7, 0x12u);
    }
  }
}

void sub_10053114C(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v7 = v1;
    v8 = v2;
    v4 = *(a1 + 184);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    if (v4)
    {
      sub_100004A34(v4);
    }

    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I All Jetsam XPC assertions released", v6, 2u);
    }
  }
}

uint64_t sub_1005311D0(void *a1)
{
  *a1 = off_101E55370;
  v2 = a1[23];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return sub_10072A870(a1);
}

void sub_10053122C(void *a1)
{
  *a1 = off_101E55370;
  v2 = a1[23];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10072A870(a1);

  operator delete();
}

void sub_1005312A0(uint64_t a1)
{
  sub_10072A870(a1);

  operator delete();
}

void sub_100531358(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101774064(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100531374(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005313AC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1005313DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

const void **sub_10053141C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = 0;
  memset(&__p, 0, sizeof(__p));
  v7 = 0;
  v3 = [NSJSONSerialization JSONObjectWithData:[NSData dataWithBytesNoCopy:*a1 length:a1[1] - *a1 freeWhenDone:0] options:0 error:&v7];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v3;
      sub_1002A2218(&v9, &v10);
    }

    else
    {
      sub_1000167D4(&__p, "Unexpected JSON format, should be Dictionary", 0x2CuLL);
    }
  }

  else
  {
    [NSString stringWithFormat:@"Invalid JSON data input, error: %@", v7];
    v10 = 0;
    v11 = 0uLL;
    ctu::cf::assign();
    v4 = v10;
    v12[0] = v11;
    *(v12 + 7) = *(&v11 + 7);
    v5 = HIBYTE(v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v4;
    __p.__r_.__value_.__l.__size_ = v12[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v12 + 7);
    *(&__p.__r_.__value_.__s + 23) = v5;
  }

  sub_100553C14(a2, &v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return sub_10001021C(&v9);
}

void sub_10053159C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a17);
  _Unwind_Resume(a1);
}

const __CFString *sub_1005315E0(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"???";
  }

  else
  {
    return off_101E589D0[a1];
  }
}

const char *sub_100531604(int a1)
{
  if (a1 > 6200)
  {
    if (a1 > 6300)
    {
      if (a1 == 6301)
      {
        return "STATUS_AUTH_ID_REQUEST";
      }

      if (a1 == 6302)
      {
        return "STATUS_AUTH_CHALLENGE";
      }
    }

    else
    {
      if (a1 == 6201)
      {
        return "STATUS_BEARER_FAILURE";
      }

      if (a1 == 6300)
      {
        return "STATUS_AUTH_FAILED";
      }
    }

    return "????";
  }

  else
  {
    v1 = a1 - 6000;
    result = "STATUS_SUCCESS";
    switch(v1)
    {
      case 0:
        return result;
      case 1:
        result = "STATUS_UNSUPPORTED_ACTION";
        break;
      case 2:
        result = "STATUS_DISALLOWED_ACTION";
        break;
      case 3:
        result = "STATUS_UNKNOWN_DEVICE";
        break;
      case 4:
        result = "STATUS_UNKNOWN_SUBSCRIBER";
        break;
      case 5:
        result = "STATUS_TEMPORARY_FAILURE";
        break;
      case 6:
        result = "STATUS_SRVCTOKEN_EXPIRED";
        break;
      case 8:
        result = "STATUS_MAX_DEVICES_REACHED";
        break;
      case 9:
        result = "STATUS_MAX_ICCIDS_REACHED";
        break;
      case 10:
        result = "STATUS_PERMANENT_FAILURE";
        break;
      case 11:
        result = "STATUS_ACCESS_TOKEN_INVALID";
        break;
      case 12:
        result = "STATUS_OPTIN_REQUIRED";
        break;
      case 13:
        result = "STATUS_TRANSFERSIMSERVICE_REDIRECT";
        break;
      case 20:
        result = "STATUS_PNR_NOT_AVAILABLE";
        break;
      default:
        return "????";
    }
  }

  return result;
}

const char *sub_10053175C(int a1)
{
  if (a1 > 6102)
  {
    if (a1 > 6104)
    {
      if (a1 == 6105)
      {
        return "STATUS_PPACCT_ENTITLEMENT";
      }

      if (a1 == 6106)
      {
        return "STATUS_INCOMPATIBLE_ENTITLEMENT";
      }

      return "????";
    }

    if (a1 == 6103)
    {
      return "STATUS_PROVISIONING_ENTITLEMENT";
    }

    else
    {
      return "STATUS_BIZACCT_ENTITLEMENT";
    }
  }

  else
  {
    if (a1 <= 6100)
    {
      if (a1 == -1)
      {
        return "STATUS_UNKNOWN_ENTITLEMENT";
      }

      if (a1 == 6100)
      {
        return "STATUS_ENABLED_ENTITLEMENT";
      }

      return "????";
    }

    if (a1 == 6101)
    {
      return "STATUS_DISABLED_ENTITLEMENT";
    }

    else
    {
      return "STATUS_INVALID_ENTITLEMENT";
    }
  }
}

__CFString *sub_100531844(int a1)
{
  if ((a1 - 2) > 0x14)
  {
    return 0;
  }

  else
  {
    return off_101E58A00[a1 - 2];
  }
}

uint64_t sub_100531868(void *a1)
{
  if ([a1 isEqualToString:@"facetime"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"tethering"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"VoLTE"])
  {
    return 6;
  }

  if ([a1 isEqualToString:@"VoWiFi"])
  {
    return 7;
  }

  if ([a1 isEqualToString:@"iCloudVoWiFi"])
  {
    return 8;
  }

  if ([a1 isEqualToString:@"Multi-SIM"])
  {
    return 10;
  }

  if ([a1 isEqualToString:@"sa-watch"])
  {
    return 11;
  }

  if ([a1 isEqualToString:@"sa-watch-transfer"])
  {
    return 14;
  }

  if ([a1 isEqualToString:@"MultiSIM-transfer"])
  {
    return 12;
  }

  if ([a1 isEqualToString:@"iphone-plan-transfer"])
  {
    return 13;
  }

  if ([a1 isEqualToString:@"5g-service"])
  {
    return 15;
  }

  if ([a1 isEqualToString:@"ipad-signup"])
  {
    return 16;
  }

  if ([a1 isEqualToString:@"custom-qos"])
  {
    return 17;
  }

  if ([a1 isEqualToString:@"private-net-provisioning"])
  {
    return 18;
  }

  if ([a1 isEqualToString:@"nt-carrier-service"])
  {
    return 19;
  }

  if ([a1 isEqualToString:@"hera-service"])
  {
    return 20;
  }

  if ([a1 isEqualToString:@"enhanced-throughput"])
  {
    return 21;
  }

  if ([a1 isEqualToString:@"rcs"])
  {
    return 22;
  }

  return 0xFFFFFFFFLL;
}

id sub_100531A7C(void *a1)
{
  v2 = +[NSMutableArray array];
  v3 = sub_10006ED58();
  v4 = v3 + 1;
  v5 = *v3;
  if (*v3 != v3 + 1)
  {
    do
    {
      v6 = *(v5 + 7);
      if ((*a1 >> v6))
      {
        v7 = sub_100531844(v6);
        if (v7)
        {
          [v2 addObject:v7];
        }
      }

      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
  }

  return v2;
}

id sub_100531B28(void *a1)
{
  v2 = +[NSMutableArray array];
  v3 = sub_10006ED58();
  v4 = v3 + 1;
  v5 = *v3;
  if (*v3 != v3 + 1)
  {
    do
    {
      v6 = *(v5 + 7);
      if (v6 >= 0x17)
      {
        sub_1000A58E4("bitset test argument out of range");
      }

      if ((*a1 >> v6))
      {
        v7 = sub_100531844(v6);
        if (v7)
        {
          [v2 addObject:v7];
        }
      }

      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
  }

  return v2;
}

id sub_100531BE8(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = sub_10006ED58();
  v4 = v3 + 1;
  v5 = *v3;
  if (*v3 != v3 + 1)
  {
    v6 = (a1 + 8);
    do
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v5 + 7);
        v9 = v6;
        do
        {
          if (*(v7 + 32) >= v8)
          {
            v9 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 32) < v8));
        }

        while (v7);
        if (v9 != v6 && *(v9 + 8) <= v8)
        {
          v10 = sub_100531844(*(v5 + 7));
          if (v10)
          {
            v11 = v10;
            v12 = +[NSMutableDictionary dictionary];
            [v12 setObject:v11 forKey:@"name"];
            [v12 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", *(v9[5] + 8)), @"state"}];
            if (v8 == 8)
            {
              v14 = v9[5];
              v13 = v9[6];
              if (v13)
              {
                atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v15 = +[NSMutableDictionary dictionary];
              v21 = &v22;
              v22 = v15;
              sub_100531E68(&v21, @"CSR", v14 + 16);
              sub_100531E68(&v21, @"sip-reg-uri", v14 + 48);
              sub_100531E68(&v21, @"apn", v14 + 80);
              sub_100531E68(&v21, @"sip-username", v14 + 112);
              sub_100531E68(&v21, @"sip-password", v14 + 144);
              sub_100531E68(&v21, @"imsi", v14 + 176);
              sub_100531E68(&v21, @"public-id", v14 + 208);
              sub_100531E68(&v21, @"pcscf-address", v14 + 240);
              if ([v22 count])
              {
                v16 = +[NSMutableArray array];
                [v16 addObject:v22];
                [v12 setObject:v16 forKey:@"data"];
              }

              if (v13)
              {
                sub_100004A34(v13);
              }
            }

            [v2 addObject:v12];
          }
        }
      }

      v17 = v5[1];
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
          v18 = v5[2];
          v19 = *v18 == v5;
          v5 = v18;
        }

        while (!v19);
      }

      v5 = v18;
    }

    while (v18 != v4);
  }

  return v2;
}

void sub_100531E48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100531E68(const void **result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24) == 1)
  {
    v4 = result;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v7, *a3, *(a3 + 8));
    }

    else
    {
      *v7 = *a3;
      v8 = *(a3 + 16);
    }

    if (SHIBYTE(v8) < 0)
    {
      sub_100005F2C(__dst, v7[0], v7[1]);
    }

    else
    {
      *__dst = *v7;
      v12 = v8;
    }

    v10 = 0;
    if (SHIBYTE(v12) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v14 = v12;
    }

    v15 = 0;
    if (ctu::cf::convert_copy())
    {
      v5 = v10;
      v10 = v15;
      v16 = v5;
      sub_100005978(&v16);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = v10;
    v9 = v10;
    v10 = 0;
    sub_100005978(&v10);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }

    [**v4 setObject:v6 forKey:{a2, v7[0]}];
    return sub_100005978(&v9);
  }

  return result;
}

void sub_100531FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

id sub_100532024(uint64_t a1, int a2, uint64_t a3)
{
  v6 = objc_alloc_init(NSMutableDictionary);
  if (a2)
  {
    if (*(a3 + 23) < 0)
    {
      v7 = *(a3 + 8);
      if (!v7)
      {
        goto LABEL_43;
      }

      v21 = 0;
      sub_100005F2C(__dst, *a3, v7);
    }

    else
    {
      if (!*(a3 + 23))
      {
        goto LABEL_43;
      }

      v21 = 0;
      *__dst = *a3;
      v20 = *(a3 + 16);
    }

    if (SHIBYTE(v20) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v24 = v20;
    }

    v22 = 0;
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(&v25, __p[0], __p[1]);
    }

    else
    {
      v25 = *__p;
      v26 = v24;
    }

    v27 = 0;
    if (ctu::cf::convert_copy())
    {
      v9 = v22;
      v22 = v27;
      v28 = v9;
      sub_100005978(&v28);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    v21 = v22;
    v22 = 0;
    sub_100005978(&v22);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst[0]);
    }

    [v6 setObject:v21 forKey:@"unique-id"];
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      v8 = *(a1 + 8);
      if (!v8)
      {
        goto LABEL_43;
      }

      v21 = 0;
      sub_100005F2C(v17, *a1, v8);
    }

    else
    {
      if (!*(a1 + 23))
      {
        goto LABEL_43;
      }

      v21 = 0;
      *v17 = *a1;
      v18 = *(a1 + 16);
    }

    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(__p, v17[0], v17[1]);
    }

    else
    {
      *__p = *v17;
      v24 = v18;
    }

    v22 = 0;
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(&v25, __p[0], __p[1]);
    }

    else
    {
      v25 = *__p;
      v26 = v24;
    }

    v27 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = v22;
      v22 = v27;
      v28 = v10;
      sub_100005978(&v28);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    v21 = v22;
    v22 = 0;
    sub_100005978(&v22);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    [v6 setObject:v21 forKey:@"display-name"];
  }

  sub_100005978(&v21);
LABEL_43:
  if (*(a1 + 47) < 0)
  {
    v11 = *(a1 + 32);
    if (!v11)
    {
      return v6;
    }

    sub_100005F2C(v15, *(a1 + 24), v11);
  }

  else
  {
    if (!*(a1 + 47))
    {
      return v6;
    }

    *v15 = *(a1 + 24);
    v16 = *(a1 + 40);
  }

  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C(__p, v15[0], v15[1]);
  }

  else
  {
    *__p = *v15;
    v24 = v16;
  }

  v22 = 0;
  if (SHIBYTE(v24) < 0)
  {
    sub_100005F2C(&v25, __p[0], __p[1]);
  }

  else
  {
    v25 = *__p;
    v26 = v24;
  }

  v27 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v22;
    v22 = v27;
    v28 = v12;
    sub_100005978(&v28);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

  v13 = v22;
  v21 = v22;
  v22 = 0;
  sub_100005978(&v22);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  [v6 setObject:v13 forKey:{@"sip-username", v15[0]}];
  sub_100005978(&v21);
  return v6;
}

void sub_1005323F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, int a31, const void *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a32);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

id sub_1005324F4(unsigned int **a1)
{
  v2 = +[NSMutableArray array];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = sub_1005328B0(*v3);
      if (v5)
      {
        v6 = v5;
        v7 = +[NSMutableDictionary dictionary];
        [v7 setObject:v6 forKey:@"notification-name"];
        if (*(v3 + 32) == 1)
        {
          v16 = 0;
          if (*(v3 + 31) < 0)
          {
            sub_100005F2C(__dst, *(v3 + 8), *(v3 + 16));
          }

          else
          {
            v8 = *(v3 + 8);
            v15 = *(v3 + 24);
            *__dst = v8;
          }

          if (SHIBYTE(v15) < 0)
          {
            sub_100005F2C(v18, __dst[0], __dst[1]);
          }

          else
          {
            *v18 = *__dst;
            v19 = v15;
          }

          v17 = 0;
          if (SHIBYTE(v19) < 0)
          {
            sub_100005F2C(__p, v18[0], v18[1]);
          }

          else
          {
            *__p = *v18;
            v21 = v19;
          }

          v22 = 0;
          if (ctu::cf::convert_copy())
          {
            v9 = v17;
            v17 = v22;
            v23[0] = v9;
            sub_100005978(v23);
          }

          if (SHIBYTE(v21) < 0)
          {
            operator delete(__p[0]);
          }

          v16 = v17;
          v17 = 0;
          sub_100005978(&v17);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(v18[0]);
          }

          if (SHIBYTE(v15) < 0)
          {
            operator delete(__dst[0]);
          }

          [v7 setObject:v16 forKey:{@"old-apns-token", v12[0]}];
          sub_100005978(&v16);
        }

        if (*(v3 + 64) == 1)
        {
          v16 = 0;
          if (*(v3 + 63) < 0)
          {
            sub_100005F2C(v12, *(v3 + 40), *(v3 + 48));
          }

          else
          {
            *v12 = *(v3 + 40);
            v13 = *(v3 + 56);
          }

          if (SHIBYTE(v13) < 0)
          {
            sub_100005F2C(v18, v12[0], v12[1]);
          }

          else
          {
            *v18 = *v12;
            v19 = v13;
          }

          v17 = 0;
          if (SHIBYTE(v19) < 0)
          {
            sub_100005F2C(__p, v18[0], v18[1]);
          }

          else
          {
            *__p = *v18;
            v21 = v19;
          }

          v22 = 0;
          if (ctu::cf::convert_copy())
          {
            v10 = v17;
            v17 = v22;
            v23[0] = v10;
            sub_100005978(v23);
          }

          if (SHIBYTE(v21) < 0)
          {
            operator delete(__p[0]);
          }

          v16 = v17;
          v17 = 0;
          sub_100005978(&v17);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(v18[0]);
          }

          if (SHIBYTE(v13) < 0)
          {
            operator delete(v12[0]);
          }

          [v7 setObject:v16 forKey:{@"apns-token", v12[0]}];
          sub_100005978(&v16);
        }

        [v2 addObject:v7];
      }

      v3 += 72;
    }

    while (v3 != v4);
  }

  return v2;
}

void sub_1005327FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, int a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_1005328B0(int a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_101E58AA8[a1 - 1];
  }
}

id sub_1005328D4(uint64_t *a1)
{
  v2 = +[NSMutableArray array];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = sub_1005328B0(*v3);
      if (v5)
      {
        v6 = v5;
        v7 = +[NSMutableDictionary dictionary];
        [v7 setObject:v6 forKey:@"notification-name"];
        if (*(v3 + 32) == 1)
        {
          v13 = 0;
          if (*(v3 + 31) < 0)
          {
            sub_100005F2C(v11, *(v3 + 8), *(v3 + 16));
          }

          else
          {
            v8 = *(v3 + 8);
            v12 = *(v3 + 24);
            *v11 = v8;
          }

          if (SHIBYTE(v12) < 0)
          {
            sub_100005F2C(__dst, v11[0], v11[1]);
          }

          else
          {
            *__dst = *v11;
            v16 = v12;
          }

          v14 = 0;
          if (SHIBYTE(v16) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v18 = v16;
          }

          v19 = 0;
          if (ctu::cf::convert_copy())
          {
            v9 = v14;
            v14 = v19;
            v20 = v9;
            sub_100005978(&v20);
          }

          if (SHIBYTE(v18) < 0)
          {
            operator delete(__p[0]);
          }

          v13 = v14;
          v14 = 0;
          sub_100005978(&v14);
          if (SHIBYTE(v16) < 0)
          {
            operator delete(__dst[0]);
          }

          if (SHIBYTE(v12) < 0)
          {
            operator delete(v11[0]);
          }

          [v7 setObject:v13 forKey:{@"apns-token", v11[0]}];
          sub_100005978(&v13);
        }

        [v2 addObject:v7];
      }

      v3 += 40;
    }

    while (v3 != v4);
  }

  return v2;
}

void sub_100532AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

id sub_100532B1C(uint64_t ***a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  if (*(a1 + 23) < 0)
  {
    if (!a1[1])
    {
      goto LABEL_7;
    }

    v3 = *a1;
    goto LABEL_6;
  }

  v3 = a1;
  if (*(a1 + 23))
  {
LABEL_6:
    [v2 setObject:+[NSString stringWithCString:encoding:](NSString forKey:{"stringWithCString:encoding:", v3, 1), @"client-nonce"}];
  }

LABEL_7:
  if (*(a1 + 24) - 3 <= 1)
  {
    [v2 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:"), @"signing-version"}];
  }

  return v2;
}

id sub_100532BC8(uint64_t *a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      return v2;
    }

    goto LABEL_6;
  }

  if (a1[1])
  {
    a1 = *a1;
LABEL_6:
    [v2 setObject:+[NSString stringWithCString:encoding:](NSString forKey:{"stringWithCString:encoding:", a1, 4), @"apns-token"}];
  }

  return v2;
}

id sub_100532C44(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  if (*(a1 + 23) < 0)
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      goto LABEL_21;
    }

    v23 = 0;
    sub_100005F2C(__dst, *a1, v3);
  }

  else
  {
    if (!*(a1 + 23))
    {
      goto LABEL_21;
    }

    v23 = 0;
    *__dst = *a1;
    v22 = *(a1 + 16);
  }

  if (SHIBYTE(v22) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v26 = v22;
  }

  v24 = 0;
  if (SHIBYTE(v26) < 0)
  {
    sub_100005F2C(&v27, __p[0], __p[1]);
  }

  else
  {
    v27 = *__p;
    v28 = v26;
  }

  v29 = 0;
  if (ctu::cf::convert_copy())
  {
    v4 = v24;
    v24 = v29;
    v30 = v4;
    sub_100005978(&v30);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  v23 = v24;
  v24 = 0;
  sub_100005978(&v24);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }

  [v2 setObject:v23 forKey:@"primary-iccid"];
  sub_100005978(&v23);
LABEL_21:
  if (*(a1 + 48) == 1)
  {
    v23 = 0;
    if (*(a1 + 47) < 0)
    {
      sub_100005F2C(v19, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      *v19 = *(a1 + 24);
      v20 = *(a1 + 40);
    }

    if (SHIBYTE(v20) < 0)
    {
      sub_100005F2C(__p, v19[0], v19[1]);
    }

    else
    {
      *__p = *v19;
      v26 = v20;
    }

    v24 = 0;
    if (SHIBYTE(v26) < 0)
    {
      sub_100005F2C(&v27, __p[0], __p[1]);
    }

    else
    {
      v27 = *__p;
      v28 = v26;
    }

    v29 = 0;
    if (ctu::cf::convert_copy())
    {
      v5 = v24;
      v24 = v29;
      v30 = v5;
      sub_100005978(&v30);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    v23 = v24;
    v24 = 0;
    sub_100005978(&v24);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }

    [v2 setObject:v23 forKey:@"eid"];
    sub_100005978(&v23);
  }

  if (*(a1 + 79) < 0)
  {
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_60;
    }

    sub_100005F2C(v17, *(a1 + 56), v6);
  }

  else
  {
    if (!*(a1 + 79))
    {
      goto LABEL_60;
    }

    *v17 = *(a1 + 56);
    v18 = *(a1 + 72);
  }

  if (SHIBYTE(v18) < 0)
  {
    sub_100005F2C(__p, v17[0], v17[1]);
  }

  else
  {
    *__p = *v17;
    v26 = v18;
  }

  v24 = 0;
  if (SHIBYTE(v26) < 0)
  {
    sub_100005F2C(&v27, __p[0], __p[1]);
  }

  else
  {
    v27 = *__p;
    v28 = v26;
  }

  v29 = 0;
  if (ctu::cf::convert_copy())
  {
    v7 = v24;
    v24 = v29;
    v30 = v7;
    sub_100005978(&v30);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  v8 = v24;
  v23 = v24;
  v24 = 0;
  sub_100005978(&v24);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  [v2 setObject:v8 forKey:{@"imei", v17[0]}];
  sub_100005978(&v23);
LABEL_60:
  if (*(a1 + 80) != *(a1 + 88))
  {
    v9 = objc_opt_new();
    v10 = *(a1 + 80);
    for (i = *(a1 + 88); v10 != i; v10 += 3)
    {
      v12 = v10;
      if (*(v10 + 23) < 0)
      {
        v12 = *v10;
      }

      [v9 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v12)}];
    }

    [v2 setValue:v9 forKey:@"secondary-device-iccids"];
  }

  if (*(a1 + 168) == 1)
  {
    v13 = +[NSMutableDictionary dictionary];
    if (*(a1 + 140) == 1)
    {
      [v13 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", *(a1 + 136)), @"associated-subscription"}];
    }

    if (*(a1 + 132) == 1)
    {
      [v13 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", *(a1 + 128)), @"associated-plans"}];
    }

    v14 = (a1 + 104);
    if (*(a1 + 127) < 0)
    {
      if (!*(a1 + 112))
      {
        goto LABEL_77;
      }

      v14 = *v14;
    }

    else if (!*(a1 + 127))
    {
LABEL_77:
      v15 = (a1 + 144);
      if (*(a1 + 167) < 0)
      {
        if (!*(a1 + 152))
        {
          goto LABEL_83;
        }

        v15 = *v15;
      }

      else if (!*(a1 + 167))
      {
LABEL_83:
        if ([v13 count])
        {
          [v2 setObject:v13 forKey:@"subscription-query"];
        }

        return v2;
      }

      [v13 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v15), @"device-type"}];
      goto LABEL_83;
    }

    [v13 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v14), @"iccid"}];
    goto LABEL_77;
  }

  return v2;
}

void sub_100533190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, int a31, const void *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a32);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

id sub_100533294(uint64_t a1)
{
  v18 = &v19;
  v19 = objc_alloc_init(NSMutableDictionary);
  v17 = 0;
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__dst, *a1, *(a1 + 8));
  }

  else
  {
    *__dst = *a1;
    v16 = *(a1 + 16);
  }

  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C(&v21, __dst[0], __dst[1]);
  }

  else
  {
    v21 = *__dst;
    v22 = v16;
  }

  v20 = 0;
  if (SHIBYTE(v22) < 0)
  {
    sub_100005F2C(__p, v21, *(&v21 + 1));
  }

  else
  {
    *__p = v21;
    v13 = v22;
  }

  v23 = 0;
  if (ctu::cf::convert_copy())
  {
    v2 = v20;
    v20 = v23;
    *__str = v2;
    sub_100005978(__str);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = v20;
  v20 = 0;
  sub_100005978(&v20);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }

  [v19 setObject:v17 forKey:@"primary-iccid"];
  sub_100533788(&v18, @"eid", a1 + 24);
  sub_100533788(&v18, @"secondary-device-imei", a1 + 88);
  if (*(a1 + 241) == 1)
  {
    if (*(a1 + 240))
    {
      v3 = &__kCFBooleanTrue;
    }

    else
    {
      v3 = &__kCFBooleanFalse;
    }

    [v19 setValue:v3 forKey:@"euicc-pairing"];
  }

  if (*(a1 + 243) == 1)
  {
    if (*(a1 + 242))
    {
      v4 = &__kCFBooleanTrue;
    }

    else
    {
      v4 = &__kCFBooleanFalse;
    }

    [v19 setValue:v4 forKey:@"live-id-supported"];
  }

  sub_100533788(&v18, @"secondary-device-meid", a1 + 120);
  sub_100533788(&v18, @"secondary-device-type", a1 + 152);
  sub_100533788(&v18, @"service", a1 + 192);
  if (*(a1 + 188) == 1)
  {
    v5 = [NSNumber numberWithUnsignedInt:*(a1 + 184)];
    [v19 setObject:v5 forKeyedSubscript:@"associated-subscription"];
  }

  v25 = 0;
  *__str = 0;
  if (*(a1 + 228) == 1)
  {
    snprintf(__str, 0xAuLL, "%d.%d.%d", BYTE2(*(a1 + 224)), BYTE1(*(a1 + 224)), *(a1 + 224));
    sub_10000501C(&v21, __str);
    *__p = v21;
    v13 = v22;
    v22 = 0;
    v21 = 0uLL;
    v14 = 1;
    sub_100533788(&v18, @"sim-alliance-profile-version", __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }
  }

  if (*(a1 + 236) == 1)
  {
    snprintf(__str, 0xAuLL, "%d.%d.%d", BYTE2(*(a1 + 232)), BYTE1(*(a1 + 232)), *(a1 + 232));
    sub_10000501C(&v21, __str);
    *__p = v21;
    v13 = v22;
    v22 = 0;
    v21 = 0uLL;
    v14 = 1;
    sub_100533788(&v18, @"gsma-sgp22-version", __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }
  }

  if (*(a1 + 80) == 1)
  {
    v6 = objc_opt_new();
    v8 = *(a1 + 56);
    for (i = *(a1 + 64); v8 != i; v8 += 3)
    {
      v9 = v8;
      if (*(v8 + 23) < 0)
      {
        v9 = *v8;
      }

      [v6 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v9)}];
    }

    [v19 setValue:v6 forKey:@"secondary-device-iccids"];
  }

  v10 = v19;
  sub_100005978(&v17);
  return v10;
}

void sub_1005336E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  sub_100005978((v27 - 104));
  if (*(v27 - 73) < 0)
  {
    operator delete(*(v27 - 96));
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_100533788(const void **result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24) == 1)
  {
    v4 = result;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v7, *a3, *(a3 + 8));
    }

    else
    {
      *v7 = *a3;
      v8 = *(a3 + 16);
    }

    if (SHIBYTE(v8) < 0)
    {
      sub_100005F2C(__dst, v7[0], v7[1]);
    }

    else
    {
      *__dst = *v7;
      v12 = v8;
    }

    v10 = 0;
    if (SHIBYTE(v12) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v14 = v12;
    }

    v15 = 0;
    if (ctu::cf::convert_copy())
    {
      v5 = v10;
      v10 = v15;
      v16 = v5;
      sub_100005978(&v16);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = v10;
    v9 = v10;
    v10 = 0;
    sub_100005978(&v10);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }

    [**v4 setObject:v6 forKey:{a2, v7[0]}];
    return sub_100005978(&v9);
  }

  return result;
}

void sub_1005338E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

id sub_100533944(uint64_t **a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = objc_opt_new();
  if (*(a1 + 24) == 1)
  {
    v4 = *a1;
    v5 = a1[1];
    if (*a1 != v5)
    {
      do
      {
        v6 = objc_alloc_init(NSMutableDictionary);
        v7 = v4;
        if (*(v4 + 23) < 0)
        {
          v7 = *v4;
        }

        [v6 setObject:+[NSString stringWithCString:](NSString forKey:{"stringWithCString:", v7), @"profile-name"}];
        v8 = (v4 + 24);
        if (*(v4 + 47) < 0)
        {
          v8 = *v8;
        }

        [v6 setObject:+[NSString stringWithCString:](NSString forKey:{"stringWithCString:", v8), @"version"}];
        [v3 addObject:v6];
        v4 += 72;
      }

      while (v4 != v5);
    }
  }

  [v2 setObject:v3 forKey:@"configuration-profiles"];
  return v2;
}

id sub_100533A68(uint64_t **a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = objc_opt_new();
  v5 = *a1;
  for (i = a1[1]; v5 != i; v5 += 24)
  {
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      v6 = *v5;
    }

    [v3 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v6)}];
  }

  [v2 setObject:v3 forKey:@"service-names"];
  return v2;
}

id sub_100533B18(uint64_t ***a1)
{
  v16 = objc_alloc_init(NSMutableDictionary);
  v2 = objc_opt_new();
  v4 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      v6 = objc_opt_new();
      v7 = *v4;
      v8 = *(v4 + 8);
      while (v7 != v8)
      {
        v9 = v7;
        if (*(v7 + 23) < 0)
        {
          v9 = *v7;
        }

        [v6 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v9)}];
        v7 += 3;
      }

      [v5 setObject:v6 forKey:@"blind-token"];
      v10 = objc_opt_new();
      v11 = *(v4 + 24);
      v12 = *(v4 + 32);
      while (v11 != v12)
      {
        v13 = v11;
        if (*(v11 + 23) < 0)
        {
          v13 = *v11;
        }

        [v10 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v13)}];
        v11 += 3;
      }

      [v5 setObject:v10 forKey:@"scopes"];
      v14 = (v4 + 48);
      if (*(v4 + 71) < 0)
      {
        v14 = *v14;
      }

      [v5 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v14), @"device-type"}];
      [v2 addObject:v5];
      v4 += 72;
    }

    while (v4 != v3);
  }

  [v16 setObject:v2 forKey:@"blinded-messages"];
  return v16;
}

id sub_100533CC8(uint64_t *a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = objc_opt_new();
  if (*(a1 + 47) >= 0)
  {
    v4 = a1 + 3;
  }

  else
  {
    v4 = a1[3];
  }

  [v2 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v4), @"device-type"}];
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  [v2 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v5), @"service-name"}];
  v6 = a1[6];
  for (i = a1[7]; v6 != i; v6 += 48)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = v6;
    if (*(v6 + 23) < 0)
    {
      v9 = *v6;
    }

    [v8 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v9), @"name"}];
    v10 = (v6 + 24);
    if (*(v6 + 47) < 0)
    {
      v10 = *v10;
    }

    [v8 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v10), @"metadata-value"}];
    [v3 addObject:v8];
  }

  [v2 setObject:v3 forKey:@"service-metadata"];
  return v2;
}

id sub_100533E3C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(v6, *a1, *(a1 + 8));
  }

  else
  {
    *v6 = *a1;
    v7 = *(a1 + 16);
  }

  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, v6[0], v6[1]);
  }

  else
  {
    *__p = *v6;
    v11 = v7;
  }

  v9 = 0;
  if (SHIBYTE(v11) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v13 = v11;
  }

  v14 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v9;
    v9 = v14;
    v15 = v3;
    sub_100005978(&v15);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst);
  }

  v4 = v9;
  v8 = v9;
  v9 = 0;
  sub_100005978(&v9);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  [v2 setObject:v4 forKey:{@"signature", v6[0]}];
  sub_100005978(&v8);
  return v2;
}

void sub_100533F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

id sub_100534000(id *a1)
{
  v1 = *a1;

  return v1;
}

id sub_10053402C(int **a1, uint64_t a2)
{
  v3 = objc_opt_new();
  if (*a1 != a1[1])
  {
    v4 = +[NSMutableArray array];
    v5 = *a1;
    v6 = a1[1];
    if (*a1 != v6)
    {
      do
      {
        v8 = *v5++;
        v7 = v8;
        if (v8 == 1)
        {
          v9 = @"rcs-config";
        }

        else
        {
          v9 = 0;
        }

        if (v7)
        {
          v10 = v9;
        }

        else
        {
          v10 = @"wifi-pseudonym";
        }

        [v4 addObject:v10];
      }

      while (v5 != v6);
    }

    [v3 setValue:v4 forKey:@"token-scopes"];
  }

  if (a1[3] != a1[4])
  {
    v25 = v3;
    v11 = +[NSMutableArray array];
    v12 = a1[3];
    for (i = a1[4]; v12 != i; v12 += 10)
    {
      v14 = objc_opt_new();
      v15 = v14;
      v16 = @"rcs-config";
      if (*v12 != 1)
      {
        v16 = 0;
      }

      if (*v12)
      {
        v17 = v16;
      }

      else
      {
        v17 = @"wifi-pseudonym";
      }

      [v14 setValue:v17 forKey:@"scope"];
      if (*(v12 + 1) != *(v12 + 2))
      {
        v18 = +[NSMutableArray array];
        v19 = *(v12 + 1);
        v20 = *(v12 + 2);
        while (v19 != v20)
        {
          if (*(v19 + 23) < 0)
          {
            sub_100005F2C(__dst, *v19, *(v19 + 1));
          }

          else
          {
            v21 = *v19;
            v27 = *(v19 + 2);
            *__dst = v21;
          }

          if (SHIBYTE(v27) < 0)
          {
            sub_100005F2C(v30, __dst[0], __dst[1]);
          }

          else
          {
            *v30 = *__dst;
            v31 = v27;
          }

          v29 = 0;
          if (SHIBYTE(v31) < 0)
          {
            sub_100005F2C(__p, v30[0], v30[1]);
          }

          else
          {
            *__p = *v30;
            v33 = v31;
          }

          v34 = 0;
          if (ctu::cf::convert_copy())
          {
            v22 = v29;
            v29 = v34;
            v35 = v22;
            sub_100005978(&v35);
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }

          v28 = v29;
          v29 = 0;
          sub_100005978(&v29);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[0]);
          }

          [v18 addObject:v28];
          sub_100005978(&v28);
          if (SHIBYTE(v27) < 0)
          {
            operator delete(__dst[0]);
          }

          v19 = (v19 + 24);
        }

        if ([v18 count])
        {
          [v15 setValue:v18 forKey:@"devices"];
        }
      }

      v23 = *(v12 + 4);
      if (v23)
      {
        [v15 setValue:v23 forKey:@"embedded"];
      }

      [v11 addObject:v15];
    }

    v3 = v25;
    [v25 setValue:v11 forKey:@"mp-tokens-scopes"];
  }

  return v3;
}

void sub_10053431C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

const __CFDictionary *sub_100534380@<X0>(const __CFDictionary *result@<X0>, void *a2@<X8>)
{
  if (result && (result = CFDictionaryGetValue(result, @"mp-tokens-scopes")) != 0 && (v3 = result, v4 = CFGetTypeID(result), result = CFArrayGetTypeID(), v4 == result) && (result = CFArrayGetCount(v3)) != 0)
  {
    v5 = result;
    v6 = 0;
    while (1)
    {
      result = CFArrayGetValueAtIndex(v3, v6);
      if (result)
      {
        v7 = result;
        v8 = CFGetTypeID(result);
        result = CFDictionaryGetTypeID();
        if (v8 == result)
        {
          result = CFDictionaryGetValue(v7, @"scope");
          if (result)
          {
            v9 = result;
            v10 = CFGetTypeID(result);
            result = CFStringGetTypeID();
            if (v10 == result)
            {
              result = CFStringCompare(v9, @"rcs-config", 0);
              if (!result)
              {
                break;
              }
            }
          }
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_12;
      }
    }

    return sub_1000101E4(a2, v7);
  }

  else
  {
LABEL_12:
    *a2 = 0;
  }

  return result;
}

NSArray *sub_1005344B8(capabilities::ct *a1)
{
  if (capabilities::ct::supportsVoiceCall(a1))
  {
    return [NSArray arrayWithObjects:@"voice", @"data", @"message", @"account-info", 0];
  }

  else
  {
    return [NSArray arrayWithObjects:@"data", @"account-info", 0, v2, v3];
  }
}

NSArray *sub_10053452C(capabilities::ct *a1)
{
  if (capabilities::ct::supportsVoiceCall(a1))
  {
    return [NSArray arrayWithObjects:@"voice", @"data", @"message", 0];
  }

  else
  {
    return [NSArray arrayWithObjects:@"data", 0, v2, v3];
  }
}

void sub_100534590(uint64_t a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  *a1 = *a2;
  v6 = a2[1];
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *a6;
  v7 = a6[1];
  *(a1 + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = ++dword_101FBA7F0;
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, a3);
  operator new();
}

ctu::OsLogLogger **sub_100534838(ctu::OsLogLogger **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ctu::OsLogLogger::~OsLogLogger(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_100534884(uint64_t a1)
{
  v5 = (a1 + 96);
  sub_1000212F4(&v5);
  sub_100534838((a1 + 56));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

id sub_1005348F0(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = [*(a1 + 40) removeAllObjects];
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

void sub_100534920(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3 && a2 && *(a1 + 40))
  {
    v7 = a3;
    v8 = **(a1 + 56);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(**(a1 + 16));
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      v12 = [objc_msgSend(*(a1 + 40) "description")];
      *buf = 136316162;
      v42 = v9;
      v43 = 2080;
      v44 = " ";
      v45 = 2080;
      v46 = v10;
      v47 = 2080;
      v48 = v11;
      v49 = 2080;
      v50 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sExisting Requests: %s", buf, 0x34u);
    }

    v13 = sub_100534DF0(a1, a2);
    if (v13)
    {
      v14 = v13;
      v15 = **(a1 + 56);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(**(a1 + 16));
        v17 = *(a1 + 64);
        v18 = *(a1 + 72);
        v19 = [objc_msgSend(v14 "description")];
        *buf = 136316162;
        v42 = v16;
        v43 = 2080;
        v44 = " ";
        v45 = 2080;
        v46 = v17;
        v47 = 2080;
        v48 = v18;
        v49 = 2080;
        v50 = v19;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sRemoving: %s", buf, 0x34u);
      }

      [*(a1 + 40) removeObjectForKey:{objc_msgSend(v14, "identifier")}];
    }

    ++*(a1 + 32);
    [a3 setIdentifier:?];
    *(a1 + 48) = ++dword_101FBA7F0;
    v20 = **(a1 + 56);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = PersonalityInfo::logPrefix(**(a1 + 16));
      v22 = *(a1 + 64);
      v23 = *(a1 + 72);
      v24 = [objc_msgSend(a3 "description")];
      *buf = 136316162;
      v42 = v21;
      v43 = 2080;
      v44 = " ";
      v45 = 2080;
      v46 = v22;
      v47 = 2080;
      v48 = v23;
      v49 = 2080;
      v50 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAdding: %s", buf, 0x34u);
    }

    [*(a1 + 40) setObject:a3 forKey:{objc_msgSend(a3, "identifier")}];
    v25 = **(a1 + 56);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = PersonalityInfo::logPrefix(**(a1 + 16));
      v27 = *(a1 + 64);
      v28 = *(a1 + 72);
      v29 = [objc_msgSend(*(a1 + 40) "description")];
      *buf = 136316162;
      v42 = v26;
      v43 = 2080;
      v44 = " ";
      v45 = 2080;
      v46 = v27;
      v47 = 2080;
      v48 = v28;
      v49 = 2080;
      v50 = v29;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sResulting Requests: %s", buf, 0x34u);
      v25 = **(a1 + 56);
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v30 = PersonalityInfo::logPrefix(**(a1 + 16));
      v31 = *(a1 + 64);
      v32 = *(a1 + 72);
      v33 = [objc_msgSend(a3 "action")];
      sub_100535024(a1, __p);
      if (v40 >= 0)
      {
        v34 = __p;
      }

      else
      {
        v34 = __p[0];
      }

      *buf = 136316418;
      v42 = v30;
      v43 = 2080;
      v44 = " ";
      v45 = 2080;
      v46 = v31;
      v47 = 2080;
      v48 = v32;
      v49 = 2080;
      v50 = v33;
      v51 = 2082;
      v52 = v34;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAdded %s, query become %{public}s", buf, 0x3Eu);
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v35 = **(a1 + 56);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = PersonalityInfo::logPrefix(**(a1 + 16));
      v37 = *(a1 + 64);
      v38 = *(a1 + 72);
      *buf = 136315906;
      v42 = v36;
      v43 = 2080;
      v44 = " ";
      v45 = 2080;
      v46 = v37;
      v47 = 2080;
      v48 = v38;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sInvalid Add Request", buf, 0x2Au);
    }
  }

  objc_autoreleasePoolPop(v6);
}

id sub_100534DF0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v12 = **(a1 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 16));
      v14 = *(a1 + 64);
      v15 = *(a1 + 72);
      *buf = 136315906;
      v27 = v13;
      v28 = 2080;
      v29 = " ";
      v30 = 2080;
      v31 = v14;
      v32 = 2080;
      v33 = v15;
      v16 = "#W %s%s%s%sNo type to get";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v16, buf, 0x2Au);
    }

    return 0;
  }

  if (!*(a1 + 40))
  {
    v12 = **(a1 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = PersonalityInfo::logPrefix(**(a1 + 16));
      v18 = *(a1 + 64);
      v19 = *(a1 + 72);
      *buf = 136315906;
      v27 = v17;
      v28 = 2080;
      v29 = " ";
      v30 = 2080;
      v31 = v18;
      v32 = 2080;
      v33 = v19;
      v16 = "#W %s%s%s%sgetRequest, fRequests is empty";
      goto LABEL_18;
    }

    return 0;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 40) objectEnumerator];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([objc_msgSend(v10 "action")])
        {
          v11 = v10;
          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_15:
  objc_autoreleasePoolPop(v4);
  return v11;
}

uint64_t sub_100535024@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *__p = 0u;
  v22 = 0u;
  v19 = 0u;
  *__src = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  sub_10000C320(&v16);
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 40) count];
  v5 = std::ostream::operator<<();
  sub_10000C030(v5, " elems: ", 8);
  v6 = [*(a1 + 40) objectEnumerator];
  for (i = 0; ; --i)
  {
    v8 = [v6 nextObject];
    if (!v8)
    {
      break;
    }

    if (i)
    {
      sub_10000C030(&v17, ", ", 2);
    }

    v9 = [objc_msgSend(v8 "action")];
    v10 = strlen(v9);
    sub_10000C030(&v17, v9, v10);
  }

  objc_autoreleasePoolPop(v4);
  if ((BYTE8(v23) & 0x10) != 0)
  {
    v12 = v23;
    if (v23 < __src[1])
    {
      *&v23 = __src[1];
      v12 = __src[1];
    }

    v13 = __src[0];
  }

  else
  {
    if ((BYTE8(v23) & 8) == 0)
    {
      v11 = 0;
      a2[23] = 0;
      goto LABEL_19;
    }

    v13 = *(&v18 + 1);
    v12 = *(&v19 + 1);
  }

  v11 = v12 - v13;
  if ((v12 - v13) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a2[23] = v11;
  if (v11)
  {
    memmove(a2, v13, v11);
  }

LABEL_19:
  a2[v11] = 0;
  *&v17 = v14;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100535324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100535354(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100534DF0(a1, a2);
  if (v5)
  {
    sub_1005353B8(a1, v5);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1005353B8(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a2)
  {
    v5 = **(a1 + 56);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 16));
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = " ";
      v13 = 2080;
      v14 = v7;
      v15 = 2080;
      v16 = v8;
      v17 = 2080;
      v18 = [objc_msgSend(a2 "description")];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sRemoving %s", &v9, 0x34u);
    }

    [*(a1 + 40) removeObjectForKey:{objc_msgSend(a2, "identifier")}];
  }

  objc_autoreleasePoolPop(v4);
}

const void **sub_1005354F0@<X0>(uint64_t a1@<X0>, const void **a2@<X8>, int a3@<W1>)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_10053562C(a1, a3, &v15);
  v5 = sub_100534DF0(a1, v15);
  sub_100005978(&v15);
  if (v5)
  {
    v6 = [v5 info];
    if (v6)
    {
      v11 = v6;
      v15 = 0;
      v7 = sub_100010180(&v15, &v11);
      v8 = v14;
      v14 = v15;
      v15 = v8;
      sub_10001021C(v7);
    }

    v15 = v5;
    sub_1000673E0(&v13, &v15);
    v9 = [v5 annotation];
    if (v9)
    {
      v15 = v9;
      sub_1000673E0(&v12, &v15);
    }
  }

  sub_100010024(a2, &v14);
  sub_100060E84(a2 + 1, &v13);
  sub_100060E84(a2 + 2, &v12);
  sub_10000A1EC(&v12);
  sub_10000A1EC(&v13);
  return sub_10001021C(&v14);
}

void sub_1005355E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  sub_10000A1EC(va);
  sub_10000A1EC(va1);
  sub_10001021C(va2);
  _Unwind_Resume(a1);
}

const void **sub_10053562C@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = (*(a1 + 96) + 16 * a2);
  v5 = *v4;
  v6 = v4[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = (*(*v5 + 40))(v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v11 = 0;
  v12 = 0;
  if (ctu::cf::convert_copy(&v12, v8, 0x8000100, kCFAllocatorDefault, v7))
  {
    v11 = v12;
    v13 = 0;
    sub_100005978(&v13);
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  v11 = 0;
  return sub_100005978(&v11);
}

void sub_100535704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_10053572C(uint64_t a1, int a2)
{
  sub_10053562C(a1, a2, &v5);
  v3 = sub_100534DF0(a1, v5);
  sub_100005978(&v5);
  return v3;
}

void sub_100535778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_10053578C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v3 objectEnumerator];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) decreaseAttempts];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void *sub_1005358AC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return ([result count] != 0);
  }

  return result;
}

id sub_1005358D8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return [result count];
  }

  return result;
}

void sub_1005358F0(uint64_t a1, uint64_t a2)
{
  v71 = 0;
  ctu::ns::AutoPool::AutoPool(&v71);
  v4 = 0;
  v5 = 0;
  *&v6 = 136315138;
  v69 = v6;
  v70 = a2;
  do
  {
    if (v5 <= 4)
    {
      if (v5 <= 1)
      {
        if (v5)
        {
          if (v5 == 1)
          {
            v17 = sub_10053572C(a2, 1);
            v18 = v17;
            if (v17)
            {
              if ([v17 info])
              {
                [v18 info];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v19 = **(a1 + 56);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = PersonalityInfo::logPrefix(**(a1 + 16));
                    v21 = *(a1 + 64);
                    v22 = *(a1 + 72);
                    *buf = 136315906;
                    v73 = v20;
                    v74 = 2080;
                    v75 = " ";
                    v76 = 2080;
                    v77 = v21;
                    v78 = 2080;
                    v79 = v22;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging setEntitlements", buf, 0x2Au);
                  }

                  sub_1005363F8(a1, [objc_msgSend(v18 info]);
                }
              }
            }
          }
        }

        else
        {
          v35 = sub_10053572C(a2, 0);
          v36 = v35;
          if (v35)
          {
            if ([v35 info])
            {
              [v36 info];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v37 = **(a1 + 56);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = PersonalityInfo::logPrefix(**(a1 + 16));
                  v39 = *(a1 + 64);
                  v40 = *(a1 + 72);
                  *buf = 136315906;
                  v73 = v38;
                  v74 = 2080;
                  v75 = " ";
                  v76 = 2080;
                  v77 = v39;
                  v78 = 2080;
                  v79 = v40;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging getEntitlements", buf, 0x2Au);
                }

                sub_100536380(a1, [objc_msgSend(v36 info]);
              }
            }
          }
        }
      }

      else
      {
        switch(v5)
        {
          case 2:
            v47 = sub_10053572C(a2, 2);
            v48 = v47;
            if (v47)
            {
              if ([v47 info])
              {
                [v48 info];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v49 = **(a1 + 56);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    v50 = PersonalityInfo::logPrefix(**(a1 + 16));
                    v51 = *(a1 + 64);
                    v52 = *(a1 + 72);
                    *buf = 136315906;
                    v73 = v50;
                    v74 = 2080;
                    v75 = " ";
                    v76 = 2080;
                    v77 = v51;
                    v78 = 2080;
                    v79 = v52;
                    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging getProvisioning", buf, 0x2Au);
                  }

                  sub_100536470(a1, [objc_msgSend(v48 info]);
                }
              }
            }

            break;
          case 3:
            v41 = sub_10053572C(a2, 3);
            v42 = v41;
            if (v41)
            {
              if ([v41 info])
              {
                [v42 info];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v43 = **(a1 + 56);
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                  {
                    v44 = PersonalityInfo::logPrefix(**(a1 + 16));
                    v45 = *(a1 + 64);
                    v46 = *(a1 + 72);
                    *buf = 136315906;
                    v73 = v44;
                    v74 = 2080;
                    v75 = " ";
                    v76 = 2080;
                    v77 = v45;
                    v78 = 2080;
                    v79 = v46;
                    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging setProvisioning", buf, 0x2Au);
                  }

                  sub_1005364E8(a1, [objc_msgSend(v42 info]);
                }
              }
            }

            break;
          case 4:
LABEL_5:
            v7 = sub_10053572C(a2, v5);
            if (v7)
            {
              v8 = **(a1 + 56);
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
              {
                v9 = PersonalityInfo::logPrefix(**(a1 + 16));
                v10 = *(a1 + 64);
                v11 = *(a1 + 72);
                v12 = a1;
                v13 = (*(a1 + 96) + v4);
                v14 = *v13;
                v15 = v13[1];
                if (v15)
                {
                  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v16 = (*(*v14 + 40))(v14);
                if (v15)
                {
                  sub_100004A34(v15);
                }

                *buf = 136316162;
                v73 = v9;
                v74 = 2080;
                v75 = " ";
                v76 = 2080;
                v77 = v10;
                v78 = 2080;
                v79 = v11;
                v80 = 2080;
                v81 = v16;
                _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging %s", buf, 0x34u);
                a2 = v70;
                a1 = v12;
              }

              sub_10053866C(a1, v7);
            }

            break;
          default:
            break;
        }
      }
    }

    else
    {
      if (v5 <= 0x1B)
      {
        if (((1 << v5) & 0xFDFFF00) != 0)
        {
          goto LABEL_5;
        }

        if (v5 == 7)
        {
          v58 = sub_10053572C(a2, 7);
          v59 = v58;
          if (v58)
          {
            if ([v58 info])
            {
              [v59 info];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v60 = **(a1 + 56);
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  v61 = PersonalityInfo::logPrefix(**(a1 + 16));
                  v62 = *(a1 + 64);
                  v63 = *(a1 + 72);
                  *buf = 136315906;
                  v73 = v61;
                  v74 = 2080;
                  v75 = " ";
                  v76 = 2080;
                  v77 = v62;
                  v78 = 2080;
                  v79 = v63;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMerging getVVMAccountStatus", buf, 0x2Au);
                }

                sub_100536CE0(a1, [objc_msgSend(v59 info]);
              }
            }
          }

          goto LABEL_13;
        }

        if (v5 == 21)
        {
          v23 = sub_10053572C(a2, 21);
          if (v23)
          {
            v24 = **(a1 + 56);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = (*(a1 + 96) + v4);
              v26 = *v25;
              v27 = v25[1];
              if (v27)
              {
                atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v28 = (*(*v26 + 40))(v26);
              if (v27)
              {
                sub_100004A34(v27);
              }

              *buf = v69;
              v73 = v28;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I merging %s", buf, 0xCu);
            }

            sub_100536F38(a1, [v23 info]);
          }

          goto LABEL_13;
        }
      }

      if (v5 == 5)
      {
        v53 = sub_10053572C(a2, 5);
        v30 = v53;
        if (v53)
        {
          if ([v53 info])
          {
            [v30 info];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v54 = **(a1 + 56);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v55 = PersonalityInfo::logPrefix(**(a1 + 16));
                v56 = *(a1 + 64);
                v57 = *(a1 + 72);
                *buf = 136315906;
                v73 = v55;
                v74 = 2080;
                v75 = " ";
                v76 = 2080;
                v77 = v56;
                v78 = 2080;
                v79 = v57;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging EnablePushNotification", buf, 0x2Au);
              }

              goto LABEL_45;
            }
          }
        }
      }

      else if (v5 == 6)
      {
        v29 = sub_10053572C(a2, 6);
        v30 = v29;
        if (v29)
        {
          if ([v29 info])
          {
            [v30 info];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = **(a1 + 56);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = PersonalityInfo::logPrefix(**(a1 + 16));
                v33 = *(a1 + 64);
                v34 = *(a1 + 72);
                *buf = 136315906;
                v73 = v32;
                v74 = 2080;
                v75 = " ";
                v76 = 2080;
                v77 = v33;
                v78 = 2080;
                v79 = v34;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging DisablePushNotification", buf, 0x2Au);
              }

LABEL_45:
              sub_100536E30(a1, [objc_msgSend(v30 info]);
            }
          }
        }
      }
    }

LABEL_13:
    ++v5;
    v4 += 16;
  }

  while (v5 != 28);
  v64 = **(a1 + 56);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v66 = PersonalityInfo::logPrefix(**(a1 + 16));
    v67 = *(a1 + 64);
    v68 = *(a1 + 72);
    *buf = 136315906;
    v73 = v66;
    v74 = 2080;
    v75 = " ";
    v76 = 2080;
    v77 = v67;
    v78 = 2080;
    v79 = v68;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s=== DUMPING MERGE RESULT", buf, 0x2Au);
  }

  sub_10053722C(a1);
  ctu::ns::AutoPool::~AutoPool(&v71);
}

void sub_1005362E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

void *sub_100536380(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 0, &v6);
  v4 = sub_1005378F8(a1, a2, v6, @"entitlement-names");
  sub_100005978(&v6);
  return v4;
}

void sub_1005363E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_1005363F8(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 1, &v6);
  v4 = sub_1005378F8(a1, a2, v6, @"entitlement-names");
  sub_100005978(&v6);
  return v4;
}

void sub_10053645C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100536470(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 2, &v6);
  v4 = sub_1005378F8(a1, a2, v6, @"provisioning-names");
  sub_100005978(&v6);
  return v4;
}

void sub_1005364D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005364E8(uint64_t a1, void *a2)
{
  v3 = a1;
  v72 = 0;
  sub_10053562C(a1, 3, &v72);
  v4 = 0;
  if (a2 && *(v3 + 40))
  {
    v58 = v72;
    if ([a2 count])
    {
      v5 = sub_100534DF0(v3, v58);
      if (v5)
      {
        goto LABEL_8;
      }

      v6 = **(v3 + 56);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = PersonalityInfo::logPrefix(**(v3 + 16));
        v9 = *(v3 + 64);
        v8 = *(v3 + 72);
        v10 = [v58 cStringUsingEncoding:4];
        *buf = 136316162;
        v76 = v7;
        v77 = 2080;
        v78 = " ";
        v79 = 2080;
        v80 = v9;
        v81 = 2080;
        v82 = v8;
        v83 = 2080;
        v84 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNo existing %s action to append - adding", buf, 0x34u);
      }

      v5 = [SubscriberRequestTransactionElement requestWithAction:v58 andAnnotation:0];
      if (v5)
      {
LABEL_8:
        v55 = v5;
        v11 = [objc_msgSend(v5 "info")];
        v12 = v11;
        if (v11)
        {
          if ([v11 isEqual:a2])
          {
            v13 = **(v3 + 56);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = PersonalityInfo::logPrefix(**(v3 + 16));
              v16 = *(v3 + 64);
              v15 = *(v3 + 72);
              v17 = [v58 cStringUsingEncoding:4];
              *buf = 136316162;
              v76 = v14;
              v77 = 2080;
              v78 = " ";
              v79 = 2080;
              v80 = v16;
              v81 = 2080;
              v82 = v15;
              v83 = 2080;
              v84 = v17;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sEntitlement arrays %s are the same, nothing to be done", buf, 0x34u);
            }

            goto LABEL_54;
          }

          v63 = [v12 mutableCopy];
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v60 = [a2 countByEnumeratingWithState:&v68 objects:v74 count:16];
          if (v60)
          {
            v19 = *v69;
            v20 = @"data";
            *&v18 = 136315650;
            v54 = v18;
            v59 = *v69;
            v56 = a2;
            v57 = v3;
            do
            {
              v62 = 0;
              do
              {
                if (*v69 != v19)
                {
                  objc_enumerationMutation(a2);
                }

                v61 = *(*(&v68 + 1) + 8 * v62);
                v21 = [v61 objectForKey:{@"name", v54}];
                if (v21)
                {
                  for (i = 0; ; ++i)
                  {
                    v23 = v20;
                    if (i >= [v63 count])
                    {
                      goto LABEL_40;
                    }

                    v24 = [v63 objectAtIndex:i];
                    v25 = [v24 objectForKey:@"name"];
                    if (v25)
                    {
                      if ([v25 isEqual:v21])
                      {
                        break;
                      }
                    }
                  }

                  v26 = [v24 objectForKey:@"state"];
                  v27 = [v61 objectForKey:@"state"];
                  if (!v27 || !v26 || ![v27 isEqual:v26])
                  {
                    v37 = **(v3 + 56);
                    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_40;
                    }

                    v42 = PersonalityInfo::logPrefix(**(v3 + 16));
                    v44 = *(v3 + 64);
                    v43 = *(v3 + 72);
                    v45 = [v21 cStringUsingEncoding:4];
                    *buf = 136316162;
                    v76 = v42;
                    v77 = 2080;
                    v78 = " ";
                    v79 = 2080;
                    v80 = v44;
                    v81 = 2080;
                    v82 = v43;
                    v83 = 2080;
                    v84 = v45;
                    _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "#E %s%s%s%ssetProvisioning '%s' state is missing or mismatch", buf, 0x34u);
LABEL_50:
                    v19 = v59;
                    goto LABEL_40;
                  }

                  v28 = [v24 objectForKey:v20];
                  v29 = [v61 objectForKey:v20];
                  if (!v28)
                  {
                    v38 = **(v3 + 56);
                    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_40;
                    }

                    v39 = PersonalityInfo::logPrefix(**(v3 + 16));
                    v40 = [v21 cStringUsingEncoding:4];
                    *buf = v54;
                    v76 = v39;
                    v77 = 2080;
                    v78 = " ";
                    v79 = 2080;
                    v80 = v40;
                    _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "#D %s%sskip adding. Existing setProvisioning '%s' cover everything", buf, 0x20u);
                    goto LABEL_50;
                  }

                  v30 = v29;
                  if (v29)
                  {
                    v31 = [v28 mutableCopy];
                    v66 = 0u;
                    v67 = 0u;
                    v64 = 0u;
                    v65 = 0u;
                    v32 = [v30 countByEnumeratingWithState:&v64 objects:v73 count:16];
                    if (v32)
                    {
                      v33 = *v65;
                      do
                      {
                        for (j = 0; j != v32; j = j + 1)
                        {
                          if (*v65 != v33)
                          {
                            objc_enumerationMutation(v30);
                          }

                          v35 = *(*(&v64 + 1) + 8 * j);
                          if (([v28 containsObject:v35] & 1) == 0)
                          {
                            [v31 addObject:v35];
                          }
                        }

                        v32 = [v30 countByEnumeratingWithState:&v64 objects:v73 count:16];
                      }

                      while (v32);
                    }

                    a2 = v56;
                    v3 = v57;
                    v19 = v59;
                    v36 = [v24 mutableCopy];
                    [v36 setValue:v31 forKey:v23];
                    [v63 replaceObjectAtIndex:i withObject:v36];
                  }

                  else
                  {
                    v41 = **(v3 + 56);
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                    {
                      v46 = PersonalityInfo::logPrefix(**(v3 + 16));
                      v47 = [v21 cStringUsingEncoding:4];
                      *buf = v54;
                      v76 = v46;
                      v77 = 2080;
                      v78 = " ";
                      v79 = 2080;
                      v80 = v47;
                      _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "#D %s%sreplace existing setProvisioning '%s' with new one since it covers everything", buf, 0x20u);
                      v19 = v59;
                    }

                    [v63 replaceObjectAtIndex:i withObject:v61];
                  }

LABEL_40:
                  v20 = v23;
                  if ([v63 count] == i)
                  {
                    [v63 addObject:v61];
                  }
                }

                v62 = v62 + 1;
              }

              while (v62 != v60);
              v48 = [a2 countByEnumeratingWithState:&v68 objects:v74 count:16];
              v60 = v48;
            }

            while (v48);
          }

          [objc_msgSend(v55 "info")];
        }

        else
        {
          [objc_msgSend(v55 "info")];
        }

        sub_100534920(v3, v58, v55);
LABEL_54:
        v4 = 1;
        goto LABEL_58;
      }

      v49 = **(v3 + 56);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = PersonalityInfo::logPrefix(**(v3 + 16));
        v51 = *(v3 + 64);
        v52 = *(v3 + 72);
        *buf = 136315906;
        v76 = v50;
        v77 = 2080;
        v78 = " ";
        v79 = 2080;
        v80 = v51;
        v81 = 2080;
        v82 = v52;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate entitlement request", buf, 0x2Au);
      }
    }

    v4 = 0;
  }

LABEL_58:
  sub_100005978(&v72);
  return v4;
}