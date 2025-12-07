void sub_10049252C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if ((a11 & 1) == 0)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100492598(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = otherContextType();
        sub_10048AFE8(v3, v6);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10049262C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100492648(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100492658(uint64_t a1, uint64_t a2)
{
  if (sub_100094EA8(*(a1 + 136), a2))
  {
    v4 = sub_100094F40(*(a1 + 136), a2);
    v5 = v4 + 1;
    v6 = *v4;
    if (*v4 != v4 + 1)
    {
      do
      {
        v7 = v6[4];
        v8 = v6[5];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v7 + 504))(v7);
        if (v8)
        {
          sub_100004A34(v8);
        }

        v9 = v6[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v6[2];
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v5);
    }
  }
}

void sub_100492730(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100492748(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2;
      if (*v2 != v2 + 1)
      {
        do
        {
          v6 = v5[4];
          v7 = v5[5];
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v8 = (*(*v6 + 480))(v6);
          if (v7)
          {
            sub_100004A34(v7);
          }

          v9 = v5[1];
          if (v9)
          {
            do
            {
              v10 = v9;
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            do
            {
              v10 = v5[2];
              v11 = *v10 == v5;
              v5 = v10;
            }

            while (!v11);
          }

          v4 |= v8;
          v5 = v10;
        }

        while (v10 != v2 + 1);
      }

      v2 += 9;
    }

    while (v2 != v3);
  }

  return v4 & 1;
}

void sub_100492844(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100492914(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_100004A34(v5);
  }

  return a1;
}

uint64_t sub_10049295C(uint64_t a1)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *(v3 + 40);
      v6 = *(v3 + 48);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v5)
      {
        break;
      }

      v8 = 3;
      if (v6)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (v8 != 3 && v8)
      {
        return v1 & 1;
      }

      v3 += 72;
      if (v3 == v4)
      {
        goto LABEL_18;
      }
    }

    if (v7)
    {
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v1 = (*(*v7 + 432))(v7);
      if (!v6)
      {
        return v1 & 1;
      }

      sub_100004A34(v6);
      v8 = 1;
    }

    else
    {
      v8 = 0;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

LABEL_11:
    sub_100004A34(v6);
    goto LABEL_12;
  }

LABEL_18:
  v1 = 0;
  return v1 & 1;
}

void sub_100492A94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100492ABC(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, unsigned int a5)
{
  v7 = a3[1];
  v8 = *a3;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  v11 = 0;
  sub_10009D4CC(a1, a2, &v8, &v10);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v10)
  {
    (*(*v10 + 496))(v10, a4, a5);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_100492B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100492B98(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 8);
  for (i = *(v2 + 16); v3 != i; v3 += 9)
  {
    v6 = *v3;
    if (*v3 != v3 + 1)
    {
      do
      {
        v8 = v6[4];
        v7 = v6[5];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v8 + 56))(v8) == a2)
        {
          (*(*v8 + 512))(v8);
          v9 = *(a1 + 72);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I reset state due to resetDataContext", buf, 2u);
          }

          sub_100492120(a1, a2, 0, 1);
        }

        if (v7)
        {
          sub_100004A34(v7);
        }

        v10 = v6[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v6[2];
            v12 = *v11 == v6;
            v6 = v11;
          }

          while (!v12);
        }

        v6 = v11;
      }

      while (v11 != v3 + 1);
    }
  }
}

void sub_100492D28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100492D5C(uint64_t a1)
{
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_100004AA0(&v17, (a1 + 40));
  v4 = v17;
  v3 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
  }

  Registry::getTimerService(&v17, *(a1 + 80));
  v5 = v17;
  sub_10000501C(__p, "BB context handover back off(resume)");
  v6 = *(a1 + 56);
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_100492FC8;
  aBlock[3] = &unk_101E4FC40;
  aBlock[4] = a1;
  aBlock[5] = v4;
  v11 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = _Block_copy(aBlock);
  sub_100D23364(v5, __p, 0, 10000000, &object, &v12);
  v7 = v16;
  v16 = 0;
  v8 = *(a1 + 176);
  *(a1 + 176) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v16;
    v16 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_100492F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 40);
  if (v27)
  {
    sub_100004A34(v27);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_100492FC8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I BB context handover back off timer(resume) fired", v8, 2u);
        }

        v7 = *(v3 + 176);
        *(v3 + 176) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10049309C(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a3)
  {
    if (!sub_100094EA8(*(a1 + 136), a3) || (v8 = sub_100094F40(*(a1 + 136), a3), v9 = v8 + 1, v10 = *v8, *v8 == v8 + 1))
    {
LABEL_15:
      *a4 = 0;
      a4[1] = 0;
    }

    else
    {
      while (1)
      {
        v12 = v10[4];
        v11 = v10[5];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v12 + 56))(v12) == a2)
        {
          break;
        }

        if (v11)
        {
          sub_100004A34(v11);
        }

        v13 = v10[1];
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
            v14 = v10[2];
            v15 = *v14 == v10;
            v10 = v14;
          }

          while (!v15);
        }

        v10 = v14;
        if (v14 == v9)
        {
          goto LABEL_15;
        }
      }

      *a4 = v12;
      a4[1] = v11;
    }

    return;
  }

  v37 = 0;
  v38 = 0;
  (*(*a1 + 584))(&v37, a1);
  if (!v37 || (v16 = *(v37 + 52)) == 0)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v18 = ServiceMap;
    if ((v19 & 0x8000000000000000) != 0)
    {
      v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
      v21 = 5381;
      do
      {
        v19 = v21;
        v22 = *v20++;
        v21 = (33 * v21) ^ v22;
      }

      while (v22);
    }

    std::mutex::lock(ServiceMap);
    v39 = v19;
    v23 = sub_100009510(&v18[1].__m_.__sig, &v39);
    if (v23)
    {
      v25 = v23[3];
      v24 = v23[4];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v18);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
        v26 = 0;
        if (!v25)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    if (!v25)
    {
LABEL_24:
      v16 = 0;
      if (v26)
      {
        goto LABEL_31;
      }

LABEL_30:
      sub_100004A34(v24);
      goto LABEL_31;
    }

LABEL_29:
    v16 = (*(*v25 + 808))(v25);
    if (v26)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_31:
  if (v16 <= 1)
  {
    v16 = 1;
  }

  v27 = *(a1 + 136);
  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
  while (1)
  {
    if (v28 == v29)
    {
      goto LABEL_49;
    }

    if (sub_100117EDC(v28) == v16)
    {
      break;
    }

    v28 += 72;
  }

  v30 = sub_100493428(*(a1 + 136), v16);
  v31 = v30 + 1;
  v32 = *v30;
  if (*v30 == v30 + 1)
  {
LABEL_49:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_50;
  }

  while (1)
  {
    v34 = v32[4];
    v33 = v32[5];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v34 + 56))(v34) == a2)
    {
      break;
    }

    if (v33)
    {
      sub_100004A34(v33);
    }

    v35 = v32[1];
    if (v35)
    {
      do
      {
        v36 = v35;
        v35 = *v35;
      }

      while (v35);
    }

    else
    {
      do
      {
        v36 = v32[2];
        v15 = *v36 == v32;
        v32 = v36;
      }

      while (!v15);
    }

    v32 = v36;
    if (v36 == v31)
    {
      goto LABEL_49;
    }
  }

  *a4 = v34;
  a4[1] = v33;
LABEL_50:
  if (v38)
  {
    sub_100004A34(v38);
  }
}

void sub_1004933D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100493428(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
LABEL_4:
    sub_10176193C();
  }

  while (sub_100117EDC(v2) != a2)
  {
    v2 += 72;
    if (v2 == v3)
    {
      goto LABEL_4;
    }
  }

  return v2;
}

void sub_100493490(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[18];
  v4 = a1[19];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a1[21];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v3)
  {
    (*(*v3 + 256))(v3);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v4)
  {

    sub_100004A34(v4);
  }
}

uint64_t sub_10049357C(uint64_t a1)
{
  if (*(a1 + 144))
  {
    v2 = 0;
    for (i = 0; i != 2; ++i)
    {
      v2 |= (*(**(a1 + 144) + 504))(*(a1 + 144), dword_1018083B0[i]);
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t sub_100493614(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    v4 = 0;
    if (!v3)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = (*(*v2 + 72))(v2);
  if (v3)
  {
LABEL_5:
    sub_100004A34(v3);
  }

  return v4;
}

void sub_100493694(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004936C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 392) = a2;
  *(result + 400) = a3;
  return result;
}

uint64_t sub_1004936CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 360) = a2;
  *(result + 368) = a3;
  return result;
}

uint64_t sub_1004936D4(uint64_t a1, uint64_t a2, _BOOL4 a3, uint64_t a4, BOOL *a5)
{
  v6 = a2;
  v103 = a4;
  if (!capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
LABEL_18:
    v20 = 1;
    return v20 & 1;
  }

  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "ipcInterfaceConfig";
    v105 = 2080;
    v106 = subscriber::asString();
    v107 = 2080;
    v108 = asStringBool(a3);
    v109 = 2048;
    v110 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: slot=%s, enable = %s, mask = 0x%llx", buf, 0x2Au);
  }

  v101 = a1;
  v99 = (a1 + 80);
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v10 = ServiceMap;
  v96 = v11;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (!v15)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v16 = v15[3];
  v17 = v15[4];
  if (!v17)
  {
LABEL_11:
    std::mutex::unlock(v10);
    v17 = 0;
    v18 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v18 = 0;
LABEL_12:
  if (v16 && (*(*v16 + 16))(v16))
  {
    v19 = *(v101 + 72);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I DataShutdown: do not do ipcInterfaceConfig during a shutdown", buf, 2u);
    }

    if ((v18 & 1) == 0)
    {
      sub_100004A34(v17);
    }

    goto LABEL_18;
  }

  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    v21 = *(v101 + 136);
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
    if (v23 != v22)
    {
      while (1)
      {
        v24 = *v23;
        if (*v23 != v23 + 1)
        {
          break;
        }

LABEL_43:
        isValidSimSlot = subscriber::isValidSimSlot();
        v23 += 9;
        if (v23 == v22)
        {
          v34 = 1;
        }

        else
        {
          v34 = isValidSimSlot;
        }

        if (v34 == 1)
        {
          goto LABEL_47;
        }
      }

      while (1)
      {
        v25 = v24[4];
        v26 = v24[5];
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v25 && (*(*v25 + 56))(v25) == 1 && ((*(*v25 + 216))(v25) & 1) == 0)
        {
          v6 = sub_100117EDC(v23);
          v30 = *(v101 + 72);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = subscriber::asString();
            v32 = asStringBool(a3);
            *buf = 136315906;
            *&buf[4] = "ipcInterfaceConfig";
            v105 = 2080;
            v106 = v31;
            v107 = 2080;
            v108 = v32;
            v109 = 2048;
            v110 = v103;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: slot=%s, enable = %s, mask = 0x%llx (0)", buf, 0x2Au);
          }

          v27 = 0;
          if (!v26)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v27 = 1;
          if (!v26)
          {
            goto LABEL_31;
          }
        }

        sub_100004A34(v26);
LABEL_31:
        if (v27)
        {
          v28 = v24[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v24[2];
              v81 = *v29 == v24;
              v24 = v29;
            }

            while (!v81);
          }

          v24 = v29;
          if (v29 != v23 + 1)
          {
            continue;
          }
        }

        goto LABEL_43;
      }
    }
  }

LABEL_47:
  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    v6 = *(v101 + 392);
    v35 = *(v101 + 72);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = subscriber::asString();
      v37 = asStringBool(a3);
      *buf = 136315906;
      *&buf[4] = "ipcInterfaceConfig";
      v105 = 2080;
      v106 = v36;
      v107 = 2080;
      v108 = v37;
      v109 = 2048;
      v110 = v103;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s: slot=%s, enable = %s, mask = 0x%llx (1)", buf, 0x2Au);
    }
  }

  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    v38 = *(v101 + 72);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = subscriber::asString();
      v40 = asStringBool(a3);
      *buf = 136315906;
      *&buf[4] = "ipcInterfaceConfig";
      v105 = 2080;
      v106 = v39;
      v107 = 2080;
      v108 = v40;
      v109 = 2048;
      v110 = v103;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: slot=%s, enable = %s, mask = 0x%llx (2)", buf, 0x2Au);
    }

    v6 = 1;
  }

  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    v41 = DataUtils::otherSimSlot();
    *(v101 + 392) = v41;
    v42 = *(v101 + 136);
    v44 = *(v42 + 8);
    v43 = *(v42 + 16);
    while (v44 != v43)
    {
      if (sub_100117EDC(v44) == v41)
      {
        if (subscriber::isValidSimSlot())
        {
          goto LABEL_62;
        }

        break;
      }

      v44 += 72;
    }

    *(v101 + 392) = 0;
    *(v101 + 396) = 0;
    *(v101 + 400) = 0;
  }

LABEL_62:
  if (!a3 || *(v101 + 397) == 1 && *(v101 + 396) != 1)
  {
    goto LABEL_72;
  }

  v45 = *(v101 + 136);
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  if (v46 == v47)
  {
LABEL_69:
    v49 = *(v101 + 72);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
LABEL_72:
      v54 = 0;
      goto LABEL_73;
    }

    v50 = subscriber::asString();
    *buf = 136315394;
    *&buf[4] = "ipcInterfaceConfig";
    v105 = 2080;
    v106 = v50;
    v51 = "#E %s: Wrong context slot: %s";
    v52 = v49;
    v53 = 22;
LABEL_71:
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, v51, buf, v53);
    goto LABEL_72;
  }

  v48 = *(v101 + 392);
  while (sub_100117EDC(v46) != v48)
  {
    v46 += 72;
    if (v46 == v47)
    {
      goto LABEL_69;
    }
  }

  v80 = *(v101 + 392);
  v81 = v103 == *(v101 + 400) && v80 == v6;
  if (v81)
  {
    v95 = *(v101 + 72);
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    *buf = 136315138;
    *&buf[4] = "ipcInterfaceConfig";
    v51 = "#I %s: same slot, same config set activation";
    v52 = v95;
    v53 = 12;
    goto LABEL_71;
  }

  v82 = sub_100493428(*(v101 + 136), v80);
  v83 = v82 + 1;
  v84 = *v82;
  if (*v82 == v82 + 1)
  {
    goto LABEL_72;
  }

  v54 = 0;
  do
  {
    v86 = v84[4];
    v85 = v84[5];
    if (v85)
    {
      atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!(*(*v86 + 56))(v86))
    {
      if ((*(*v86 + 88))(v86) && (*(*v86 + 88))(v86) != 2)
      {
        v93 = *(v101 + 72);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v86 + 88))(v86);
          v94 = asString();
          *buf = 136315138;
          *&buf[4] = v94;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "#N cannot restart context in state: %s", buf, 0xCu);
        }
      }

      else
      {
        v102 = 0;
        v87 = (*(*v86 + 528))(v86, 0, v101 + 400, &v102);
        v88 = *(v101 + 72);
        v89 = os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT);
        if (v87)
        {
          if (v89)
          {
            v90 = asStringBool(v102);
            *buf = 136315394;
            *&buf[4] = "ipcInterfaceConfig";
            v105 = 2080;
            v106 = v90;
            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#I %s: success (deactivation): updated=%s", buf, 0x16u);
          }

          *(v101 + 396) = 256;
        }

        else if (v89)
        {
          *buf = 136315138;
          *&buf[4] = "ipcInterfaceConfig";
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#E %s: failure (0)", buf, 0xCu);
        }

        v54 = 1;
      }
    }

    if (v85)
    {
      sub_100004A34(v85);
    }

    v91 = v84[1];
    if (v91)
    {
      do
      {
        v92 = v91;
        v91 = *v91;
      }

      while (v91);
    }

    else
    {
      do
      {
        v92 = v84[2];
        v81 = *v92 == v84;
        v84 = v92;
      }

      while (!v81);
    }

    v84 = v92;
  }

  while (v92 != v83);
LABEL_73:
  v55 = sub_100493428(*(v101 + 136), v6);
  v57 = v55 + 1;
  v56 = *v55;
  if (*v55 != v55 + 1)
  {
    v58 = a3 | 0x100;
    v20 = 1;
    v97 = v54;
    do
    {
      v60 = v56[4];
      v59 = v56[5];
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v61 = (*(*v60 + 56))(v60);
      if (!v61)
      {
        v62 = (*(*v60 + 528))(v60, a3, &v103, a5);
        v63 = *(v101 + 72);
        v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
        if (v62)
        {
          if (v64)
          {
            v65 = asStringBool(*a5);
            *buf = 136315394;
            *&buf[4] = "ipcInterfaceConfig";
            v105 = 2080;
            v106 = v65;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s: success: updated=%s", buf, 0x16u);
          }

          *(v101 + 392) = v6;
          *(v101 + 396) = v58;
          *(v101 + 400) = v103;
          if ((v54 & 1) == 0 && (!a3 || !*a5))
          {
            v20 = 1;
            goto LABEL_102;
          }

          v66 = Registry::getServiceMap(*v99);
          v67 = v66;
          v68 = v96;
          if (v96 < 0)
          {
            v69 = 5381;
            v70 = (v96 & 0x7FFFFFFFFFFFFFFFLL);
            do
            {
              v68 = v69;
              v71 = *v70++;
              v69 = (33 * v69) ^ v71;
            }

            while (v71);
          }

          std::mutex::lock(v66);
          *buf = v68;
          v72 = sub_100009510(&v67[1].__m_.__sig, buf);
          if (v72)
          {
            v73 = v72[3];
            v74 = v72[4];
            if (v74)
            {
              atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v67);
              atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v74);
              v75 = 0;
              if (!v73)
              {
                goto LABEL_99;
              }

              goto LABEL_97;
            }
          }

          else
          {
            v73 = 0;
          }

          std::mutex::unlock(v67);
          v74 = 0;
          v75 = 1;
          if (!v73)
          {
LABEL_99:
            if ((v75 & 1) == 0)
            {
              sub_100004A34(v74);
            }

            v20 = 1;
            v54 = v97;
            v58 = a3 | 0x100;
            goto LABEL_102;
          }

LABEL_97:
          (*(*v60 + 344))(buf, v60, 0);
          (*(*v73 + 1208))(v73, buf);
          if (SHIBYTE(v107) < 0)
          {
            operator delete(*buf);
          }

          goto LABEL_99;
        }

        if (v64)
        {
          *buf = 136315138;
          *&buf[4] = "ipcInterfaceConfig";
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#E %s: failure", buf, 0xCu);
        }

        v20 = 0;
      }

LABEL_102:
      if (v59)
      {
        sub_100004A34(v59);
      }

      if (!v61)
      {
        return v20 & 1;
      }

      v76 = v56[1];
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        do
        {
          v77 = v56[2];
          v81 = *v77 == v56;
          v56 = v77;
        }

        while (!v81);
      }

      v56 = v77;
    }

    while (v77 != v57);
  }

  v78 = *(v101 + 72);
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "ipcInterfaceConfig";
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#E %s: failure: did not find context", buf, 0xCu);
  }

  v20 = 0;
  *a5 = 0;
  return v20 & 1;
}

void sub_100494404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v32)
  {
    sub_100004A34(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004944A4(capabilities::ct *a1, uint64_t a2)
{
  if (capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    v25 = 0;
    sub_1004936D4(a1, a2, 0, 0, &v25);
    v4 = (*(*a1 + 576))(a1, 0, 1, 1);
    sub_1004936D4(a1, a2, 1, v4, &v25);
    v5 = sub_100493428(*(a1 + 17), a2);
    v6 = v5 + 1;
    v7 = *v5;
    if (*v5 != v5 + 1)
    {
      do
      {
        v9 = v7[4];
        v8 = v7[5];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v9 + 56))(v9))
        {
          goto LABEL_18;
        }

        ServiceMap = Registry::getServiceMap(*(a1 + 10));
        v11 = ServiceMap;
        if (v12 < 0)
        {
          v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
          v14 = 5381;
          do
          {
            v12 = v14;
            v15 = *v13++;
            v14 = (33 * v14) ^ v15;
          }

          while (v15);
        }

        std::mutex::lock(ServiceMap);
        __p[0] = v12;
        v16 = sub_100009510(&v11[1].__m_.__sig, __p);
        if (v16)
        {
          v18 = v16[3];
          v17 = v16[4];
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v11);
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v17);
            v19 = 0;
            if (!v18)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v18 = 0;
        }

        std::mutex::unlock(v11);
        v17 = 0;
        v19 = 1;
        if (!v18)
        {
          goto LABEL_16;
        }

LABEL_15:
        (*(*v9 + 344))(__p, v9, 0);
        (*(*v18 + 1208))(v18, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
          if (v19)
          {
            goto LABEL_18;
          }

LABEL_17:
          sub_100004A34(v17);
          goto LABEL_18;
        }

LABEL_16:
        if ((v19 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v8)
        {
          sub_100004A34(v8);
        }

        v20 = v7[1];
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
            v21 = v7[2];
            v22 = *v21 == v7;
            v7 = v21;
          }

          while (!v22);
        }

        v7 = v21;
      }

      while (v21 != v6);
    }
  }
}

void sub_100494758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_3:
      if (!v14)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (v16)
  {
    goto LABEL_3;
  }

  sub_100004A34(v15);
  if (!v14)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  sub_100004A34(v14);
  goto LABEL_5;
}

void sub_1004947A8()
{
  if (!v0)
  {
    JUMPOUT(0x100494774);
  }

  JUMPOUT(0x10049476CLL);
}

uint64_t sub_1004947B8(void *a1, uint64_t a2)
{
  v3 = a1[14];
  v4 = (*(*a1 + 72))(a1);
  v5 = *(*v3 + 200);

  return v5(v3, v4, a2);
}

uint64_t sub_10049483C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  v4 = (*(*(a1 - 8) + 72))();
  v5 = *(*v3 + 200);

  return v5(v3, v4, a2);
}

uint64_t sub_1004948C0(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_21;
  }

  (*(*a1 + 584))(&v20, a1);
  matched = DataUtils::matchPersonality();
  if (*&v21[4])
  {
    sub_100004A34(*&v21[4]);
  }

  if ((matched & 1) == 0)
  {
LABEL_21:
    v18 = a1[9];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      *v21 = "handOverToOtherOnlineStart";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", &v20, 0xCu);
    }

    goto LABEL_23;
  }

  if (!sub_100094EA8(a1[17], a4) || (v9 = sub_100094F40(a1[17], a4), v10 = v9 + 1, v11 = *v9, *v9 == v9 + 1))
  {
LABEL_23:
    LOBYTE(v12) = 0;
    return v12 & 1;
  }

  v12 = 0;
  do
  {
    v14 = v11[4];
    v13 = v11[5];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v14 + 56))(v14) != a3)
    {
      v12 |= (*(*v14 + 608))(v14, a2);
    }

    if (v13)
    {
      sub_100004A34(v13);
    }

    v15 = v11[1];
    if (v15)
    {
      do
      {
        v16 = v15;
        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      do
      {
        v16 = v11[2];
        v17 = *v16 == v11;
        v11 = v16;
      }

      while (!v17);
    }

    v11 = v16;
  }

  while (v16 != v10);
  return v12 & 1;
}

void sub_100494B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100494B50(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_5;
  }

  (*(*a1 + 584))(&v21, a1);
  matched = DataUtils::matchPersonality();
  if (*&v22[4])
  {
    sub_100004A34(*&v22[4]);
  }

  if ((matched & 1) == 0)
  {
LABEL_5:
    v11 = *(a1 + 72);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (a5)
    {
      if (v12)
      {
        v21 = 136315138;
        *v22 = "setActivated";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings (activate)", &v21, 0xCu);
      }

      return;
    }

    if (v12)
    {
      v21 = 136315138;
      *v22 = "setActivated";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N %s: method called with inactive settings (deactivate)", &v21, 0xCu);
    }
  }

  if (sub_100094EA8(*(a1 + 136), a3))
  {
    v13 = sub_100094F40(*(a1 + 136), a3);
    v14 = v13 + 1;
    v15 = *v13;
    if (*v13 != v13 + 1)
    {
      do
      {
        v17 = v15[4];
        v16 = v15[5];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v17 + 56))(v17) == a2)
        {
          (*(*v17 + 648))(v17, a4, a5);
        }

        if (v16)
        {
          sub_100004A34(v16);
        }

        v18 = v15[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v15[2];
            v20 = *v19 == v15;
            v15 = v19;
          }

          while (!v20);
        }

        v15 = v19;
      }

      while (v19 != v14);
    }
  }
}

void sub_100494DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100494E0C(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if ((*(*a1 + 592))(a1))
  {
    v4 = a1[17];
    (*(*a1 + 584))(&buf, a1);
    v5 = sub_100094EA8(v4, &buf);
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if (v5)
    {
      *&buf = a1;
      *(&buf + 1) = v2;
      (*(*a1 + 584))(&v13, a1);
      v6 = sub_1000A8F0C(a1, &v13);
      if (v14)
      {
        sub_100004A34(v14);
      }

      if (!v6)
      {
        goto LABEL_19;
      }

      v7 = *(a1 + 46);
      if (!validContextType())
      {
        goto LABEL_19;
      }

      v9 = a1[18];
      v8 = a1[19];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!v9)
        {
          sub_100004A34(v8);
LABEL_19:
          sub_1004950D8(&buf);
          return;
        }
      }

      else if (!v9)
      {
        goto LABEL_19;
      }

      v11 = a1[9];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = asString();
        *v15 = 136315138;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I active settings activate error due to %s", v15, 0xCu);
      }

      sub_1004950D8(&buf);
      (*(*v9 + 368))(v9, v7, 1, 0, 0, 0);
      if (v8)
      {
        sub_100004A34(v8);
      }
    }
  }

  else
  {
    v10 = a1[9];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "deactivateAllDataContexts";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", &buf, 0xCu);
    }
  }
}

void sub_100495098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004950D8(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 136);
  (*(**a1 + 584))(&v16, *a1);
  v4 = sub_100094F40(v3, &v16);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v7 = *v4;
  v5 = v4 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = v6[4];
      v9 = v6[5];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = (*(*v8 + 56))(v8);
      (*(*v2 + 584))(&v14, v2);
      sub_10048F648(v2, v10, &v14, a1[2], "CommCenter");
      if (v15)
      {
        sub_100004A34(v15);
      }

      if (v9)
      {
        sub_100004A34(v9);
      }

      v11 = v6[1];
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
          v12 = v6[2];
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v6 = v12;
    }

    while (v12 != v5);
  }
}

void sub_10049525C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004952A8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[9];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "handleDataContextActivated";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: %s activated, reason: probation is over", buf, 0x16u);
  }

  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_31;
  }

  (*(*a1 + 584))(buf, a1);
  matched = DataUtils::matchPersonality();
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (matched)
  {
    v33 = sub_100490EEC(a1, a2, buf);
    v8 = a1[18];
    if (v8)
    {
      (*(*v8 + 360))(v8, a2);
    }

    if (v33)
    {
      sub_10048C10C(a1, 4, 0, 0, 0);
    }

    if (sub_100094EA8(a1[17], a3))
    {
      v9 = sub_100094F40(a1[17], a3);
      v11 = v9 + 1;
      v10 = *v9;
      if (*v9 == v9 + 1)
      {
        v12 = 0;
        v32 = 0;
      }

      else
      {
        v32 = 0;
        v12 = 0;
        do
        {
          v14 = v10[4];
          v13 = v10[5];
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*v14 + 56))(v14) == a2)
          {
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v12)
            {
              sub_100004A34(v12);
            }

            v12 = v13;
            v32 = v14;
          }

          if (v13)
          {
            sub_100004A34(v13);
          }

          v15 = v10[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v10[2];
              v17 = *v16 == v10;
              v10 = v16;
            }

            while (!v17);
          }

          v10 = v16;
        }

        while (v16 != v11);
      }

      v19 = sub_100094F40(a1[17], a3);
      v21 = v19 + 1;
      v20 = *v19;
      if (*v19 != v19 + 1)
      {
        do
        {
          v23 = v20[4];
          v22 = v20[5];
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*v23 + 56))(v23) != a2)
          {
            if ((v33 & 1) != 0 || (*(*v23 + 136))(v23, 3))
            {
              v24 = a1[9];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = asString();
                v26 = asString();
                *buf = 136315650;
                *&buf[4] = "handleDataContextActivated";
                *&buf[12] = 2080;
                *&buf[14] = v25;
                v37 = 2080;
                v38 = v26;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s: Handover succeeded from %s to %s", buf, 0x20u);
              }

              (*(*v23 + 616))(v23, 3);
            }

            else
            {
              v29 = a1[9];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = asString();
                v31 = asString();
                *buf = 136315650;
                *&buf[4] = "handleDataContextActivated";
                *&buf[12] = 2080;
                *&buf[14] = v30;
                v37 = 2080;
                v38 = v31;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s: Activation succeeded on %s. Notifying other context %s", buf, 0x20u);
              }

              (*(*v32 + 600))(buf);
              (*(*v23 + 640))(v23, buf);
              if (SHIBYTE(v37) < 0)
              {
                operator delete(*buf);
              }

              if (sub_10048AE40(a1))
              {
                sub_10048C10C(a1, 0, 0, 0, 0);
              }
            }
          }

          if (v22)
          {
            sub_100004A34(v22);
          }

          v27 = v20[1];
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = v20[2];
              v17 = *v28 == v20;
              v20 = v28;
            }

            while (!v17);
          }

          v20 = v28;
        }

        while (v28 != v21);
      }

      if (v33)
      {
        (*(*a1 + 584))(&v34, a1);
        sub_10048C8BC(a1, &v34);
        if (v35)
        {
          sub_100004A34(v35);
        }
      }

      if (v12)
      {
        sub_100004A34(v12);
      }
    }
  }

  else
  {
LABEL_31:
    v18 = a1[9];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "handleDataContextActivated";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", buf, 0xCu);
    }
  }
}

void sub_1004958C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_100495954(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[9];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "notifyDataContextOtherActive";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: %s is already active", buf, 0x16u);
  }

  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_27;
  }

  (*(*a1 + 584))(buf, a1);
  matched = DataUtils::matchPersonality();
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (matched)
  {
    if (sub_100094EA8(a1[17], a3))
    {
      v8 = sub_100094F40(a1[17], a3);
      v9 = v8 + 1;
      v10 = *v8;
      if (*v8 == v8 + 1)
      {
        v12 = 0;
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v14 = v10[4];
          v13 = v10[5];
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*v14 + 56))(v14) == v4)
          {
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v12)
            {
              sub_100004A34(v12);
            }

            v12 = v13;
            v11 = v14;
          }

          if (v13)
          {
            sub_100004A34(v13);
          }

          v15 = v10[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v10[2];
              v17 = *v16 == v10;
              v10 = v16;
            }

            while (!v17);
          }

          v10 = v16;
        }

        while (v16 != v9);
      }

      v19 = sub_100094F40(a1[17], a3);
      v20 = v19 + 1;
      v21 = *v19;
      if (*v19 != v19 + 1)
      {
        do
        {
          v23 = v21[4];
          v22 = v21[5];
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*v23 + 56))(v23) != v4)
          {
            v24 = a1[9];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = asString();
              v26 = asString();
              *buf = 136315650;
              *&buf[4] = "notifyDataContextOtherActive";
              *&buf[12] = 2080;
              *&buf[14] = v25;
              v30 = 2080;
              v31 = v26;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s: Notifying other context %s: %s is already active", buf, 0x20u);
            }

            (*(*v11 + 600))(buf, v11);
            (*(*v23 + 640))(v23, buf);
            if (SHIBYTE(v30) < 0)
            {
              operator delete(*buf);
            }
          }

          if (v22)
          {
            sub_100004A34(v22);
          }

          v27 = v21[1];
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = v21[2];
              v17 = *v28 == v21;
              v21 = v28;
            }

            while (!v17);
          }

          v21 = v28;
        }

        while (v28 != v20);
      }

      if (v12)
      {
        sub_100004A34(v12);
      }
    }
  }

  else
  {
LABEL_27:
    v18 = a1[9];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "notifyDataContextOtherActive";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", buf, 0xCu);
    }
  }
}

void sub_100495DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100495E20(void *a1, uint64_t *a2)
{
  v4 = *(a1 + 46);
  v5 = a1[9];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v40 = "cleanProbationIfReady";
    *&v40[8] = 2080;
    *&v40[10] = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: trying to clean probation for %s", buf, 0x16u);
  }

  if ((validContextType() & 1) == 0)
  {
    v29 = a1[9];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *v40 = "cleanProbationIfReady";
    v30 = "#E %s: !!! clear probation on inactive activator ?";
LABEL_50:
    v31 = v29;
    v32 = 12;
    goto LABEL_51;
  }

  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_48;
  }

  (*(*a1 + 584))(buf, a1);
  matched = DataUtils::matchPersonality();
  if (*&v40[4])
  {
    sub_100004A34(*&v40[4]);
  }

  if ((matched & 1) == 0)
  {
LABEL_48:
    v29 = a1[9];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *v40 = "cleanProbationIfReady";
    v30 = "#E %s: method called with inactive settings";
    goto LABEL_50;
  }

  if ((sub_100094EA8(a1[17], a2) & 1) == 0)
  {
    v33 = a1[9];
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v34 = subscriber::asString();
    *buf = 136315394;
    *v40 = "cleanProbationIfReady";
    *&v40[8] = 2080;
    *&v40[10] = v34;
    v30 = "#E %s: Cannot find personality: %s";
    v31 = v33;
    v32 = 22;
LABEL_51:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    return;
  }

  v7 = sub_100094F40(a1[17], a2);
  v8 = v7 + 1;
  v9 = *v7;
  if (*v7 == v7 + 1)
  {
LABEL_23:
    v16 = sub_100094F40(a1[17], a2);
    v17 = v16 + 1;
    v18 = *v16;
    if (*v16 != v16 + 1)
    {
      do
      {
        v19 = v18[4];
        v20 = v18[5];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v4 == (*(*v19 + 56))(v19))
        {
          if (v4 <= 1 && LOBYTE(a1[10 * v4 + 29]) == 1)
          {
            v21 = a1[9];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = asString();
              *buf = 136315394;
              *v40 = "cleanProbationIfReady";
              *&v40[8] = 2080;
              *&v40[10] = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N %s: probation: %s", buf, 0x16u);
            }

            sub_100496434(a1, v4);
          }

          else
          {
            v23 = a1[9];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = asString();
              *buf = 136315394;
              *v40 = "cleanProbationIfReady";
              *&v40[8] = 2080;
              *&v40[10] = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#N %s: Not on probation: %s", buf, 0x16u);
            }
          }
        }

        if (v20)
        {
          sub_100004A34(v20);
        }

        v25 = v18[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v18[2];
            v15 = *v26 == v18;
            v18 = v26;
          }

          while (!v15);
        }

        v18 = v26;
      }

      while (v26 != v17);
    }

    v27 = a2[1];
    v37 = *a2;
    v38 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10049652C(a1, &v37);
    v28 = v38;
    if (v38)
    {
      goto LABEL_45;
    }
  }

  else
  {
    while (1)
    {
      v10 = v9[4];
      v11 = v9[5];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v4 == (*(*v10 + 56))(v10))
      {
        v12 = a1[18];
        if (v12)
        {
          if (((*(*v12 + 512))(v12, v4) & 1) == 0)
          {
            break;
          }
        }
      }

      if (v11)
      {
        sub_100004A34(v11);
      }

      v13 = v9[1];
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
          v14 = v9[2];
          v15 = *v14 == v9;
          v9 = v14;
        }

        while (!v15);
      }

      v9 = v14;
      if (v14 == v8)
      {
        goto LABEL_23;
      }
    }

    v35 = a1[9];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = asString();
      *buf = 136315394;
      *v40 = "cleanProbationIfReady";
      *&v40[8] = 2080;
      *&v40[10] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#N %s: Connection not ready for: %s", buf, 0x16u);
    }

    if (v11)
    {
      v28 = v11;
LABEL_45:
      sub_100004A34(v28);
    }
  }
}

void sub_1004963B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100496410(uint64_t a1, int a2)
{
  if (a2 > 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 80 * a2 + 232);
  }

  return v2 & 1;
}

uint64_t sub_100496434(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1 && *(a1 + 80 * a2 + 232) == 1)
  {
    v4 = *(a1 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "unsetProbation";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: ", &v6, 0xCu);
    }
  }

  sub_10049D8EC(a1, a2, 0, 1);
  return sub_10048C10C(a1, 13, 0, 0, 0);
}

void sub_10049652C(void *a1, uint64_t *a2)
{
  v4 = *(a1 + 46);
  v5 = a1[9];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v44 = "handleActivatedIfReady";
    *&v44[8] = 2080;
    *&v44[10] = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }

  if ((validContextType() & 1) == 0)
  {
    v31 = a1[9];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *v44 = "handleActivatedIfReady";
    v32 = "#E %s: !!! postActivated on inactive activator ?";
    goto LABEL_56;
  }

  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_54;
  }

  (*(*a1 + 584))(buf, a1);
  matched = DataUtils::matchPersonality();
  if (*&v44[4])
  {
    sub_100004A34(*&v44[4]);
  }

  if ((matched & 1) == 0)
  {
LABEL_54:
    v31 = a1[9];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *v44 = "handleActivatedIfReady";
    v32 = "#E %s: method called with inactive settings";
    goto LABEL_56;
  }

  if ((sub_100094EA8(a1[17], a2) & 1) == 0)
  {
    v31 = a1[9];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *v44 = "handleActivatedIfReady";
    v32 = "#I %s: unknown personality";
LABEL_56:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0xCu);
    return;
  }

  v7 = sub_100094F40(a1[17], a2);
  v8 = v7 + 1;
  v9 = *v7;
  if (*v7 != v7 + 1)
  {
    do
    {
      v11 = v9[4];
      v10 = v9[5];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v4 == (*(*v11 + 56))(v11))
      {
        if ((*(*v11 + 536))(v11))
        {
          v33 = a1[9];
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_70;
          }

          v34 = asString();
          *buf = 136315394;
          *v44 = "handleActivatedIfReady";
          *&v44[8] = 2080;
          *&v44[10] = v34;
          v35 = "#I %s: context still activating: %s";
          v36 = v33;
          v37 = 22;
LABEL_69:
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
LABEL_70:
          if (v10)
          {
            sub_100004A34(v10);
          }

          return;
        }

        v12 = a1[18];
        if (v12 && ((*(*v12 + 512))(v12, v4) & 1) == 0)
        {
          v38 = a1[9];
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_70;
          }

          *buf = 136315138;
          *v44 = "handleActivatedIfReady";
          v35 = "#I %s: connection not ready";
LABEL_68:
          v36 = v38;
          v37 = 12;
          goto LABEL_69;
        }

        if (v4 <= 1 && LOBYTE(a1[10 * v4 + 29]) == 1)
        {
          v38 = a1[9];
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_70;
          }

          *buf = 136315138;
          *v44 = "handleActivatedIfReady";
          v35 = "#I %s: on probation";
          goto LABEL_68;
        }

        v13 = a1[12];
        if (v13 && (*(*v13 + 224))(v13, v4))
        {
          v38 = a1[9];
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_70;
          }

          *buf = 136315138;
          *v44 = "handleActivatedIfReady";
          v35 = "#I %s: on DNS probation";
          goto LABEL_68;
        }
      }

      if (v10)
      {
        sub_100004A34(v10);
      }

      v14 = v9[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v9[2];
          v16 = *v15 == v9;
          v9 = v15;
        }

        while (!v16);
      }

      v9 = v15;
    }

    while (v15 != v8);
  }

  v17 = sub_100094F40(a1[17], a2);
  v18 = v17 + 1;
  v19 = *v17;
  if (*v17 != v17 + 1)
  {
    v20 = &a1[10 * v4];
    while (1)
    {
      v21 = v19[4];
      v10 = v19[5];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v4 == (*(*v21 + 56))(v21) && *(v20 + 192) == 1)
      {
        v22 = v20 + 233;
        if (v4 < 2 || (v22 = a1 + 313, (*(a1 + 233) & 1) == 0))
        {
          if ((*v22 & 1) == 0)
          {
            break;
          }
        }
      }

      v23 = a1[9];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        (*(*v21 + 56))(v21);
        v24 = asString();
        v25 = asStringBool(*(v20 + 192));
        v26 = v20 + 233;
        if (v4 >= 2 && (v26 = a1 + 313, (*(a1 + 233) & 1) != 0))
        {
          v27 = 1;
        }

        else
        {
          v27 = *v26;
        }

        v28 = asStringBool(v27 & 1);
        *buf = 136315906;
        *v44 = "handleActivatedIfReady";
        *&v44[8] = 2080;
        *&v44[10] = v24;
        v45 = 2080;
        v46 = v25;
        v47 = 2080;
        v48 = v28;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: context does not fit the condition: contextType=%s, isActive=%s, isDeactivating=%s", buf, 0x2Au);
      }

      if (v10)
      {
        sub_100004A34(v10);
      }

      v29 = v19[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v19[2];
          v16 = *v30 == v19;
          v19 = v30;
        }

        while (!v16);
      }

      v19 = v30;
      if (v30 == v18)
      {
        return;
      }
    }

    v39 = a1[9];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v44 = "handleActivatedIfReady";
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s: activated", buf, 0xCu);
    }

    v40 = a2[1];
    v41 = *a2;
    v42 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1004952A8(a1, v4, &v41);
    if (v42)
    {
      sub_100004A34(v42);
    }

    goto LABEL_70;
  }
}

void sub_100496C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100496CC8(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "setProbationDNS";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I %s: ", &v2, 0xCu);
  }
}

void sub_100496D70(void *a1)
{
  v2 = a1[9];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22[0] = "unsetProbationDNS";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: ", buf, 0xCu);
  }

  v3 = *(a1 + 46);
  if ((validContextType() & 1) == 0)
  {
    v17 = a1[9];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v22[0] = "unsetProbationDNS";
    v18 = "#E %s: !!! unsetProbationDNS on inactive activator ?";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
    return;
  }

  if (((*(*a1 + 592))(a1) & 1) == 0)
  {
    v17 = a1[9];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v22[0] = "unsetProbationDNS";
    v18 = "#E %s: method called with inactive settings";
    goto LABEL_30;
  }

  v4 = a1[17];
  (*(*a1 + 584))(buf, a1);
  v5 = sub_100094EA8(v4, buf);
  if (*(v22 + 4))
  {
    sub_100004A34(*(v22 + 4));
  }

  if (v5)
  {
    v6 = a1[17];
    (*(*a1 + 584))(buf, a1);
    v7 = sub_100094F40(v6, buf);
    if (*(v22 + 4))
    {
      sub_100004A34(*(v22 + 4));
    }

    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        v11 = v9[4];
        v12 = v9[5];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v3 == (*(*v11 + 56))(v11))
        {
          v13 = a1[18];
          if (v13)
          {
            (*(*v13 + 544))(v13, v3);
          }
        }

        if (v12)
        {
          sub_100004A34(v12);
        }

        v14 = v9[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v9[2];
            v16 = *v15 == v9;
            v9 = v15;
          }

          while (!v16);
        }

        v9 = v15;
      }

      while (v15 != v8);
    }

    (*(*a1 + 584))(&v19, a1);
    sub_10049652C(a1, &v19);
    if (v20)
    {
      sub_100004A34(v20);
    }
  }
}

void sub_1004970BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100497108(void *a1, uint64_t a2)
{
  if ((validContextType() & 1) == 0)
  {
    v17 = a1[9];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v19 = 136315138;
    *v20 = "reportDNSEmptyProblem";
    v18 = "#E %s: !!! reportDNSEmptyProblem on inactive activator ?";
LABEL_27:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, &v19, 0xCu);
    return;
  }

  if (((*(*a1 + 592))(a1) & 1) == 0)
  {
    v17 = a1[9];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v19 = 136315138;
    *v20 = "reportDNSEmptyProblem";
    v18 = "#E %s: method called with inactive settings";
    goto LABEL_27;
  }

  v4 = a1[17];
  (*(*a1 + 584))(&v19, a1);
  v5 = sub_100094EA8(v4, &v19);
  if (*&v20[4])
  {
    sub_100004A34(*&v20[4]);
  }

  if (v5)
  {
    v6 = a1[17];
    (*(*a1 + 584))(&v19, a1);
    v7 = sub_100094F40(v6, &v19);
    if (*&v20[4])
    {
      sub_100004A34(*&v20[4]);
    }

    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        v11 = v9[4];
        v12 = v9[5];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v11 + 56))(v11) == a2)
        {
          v13 = a1[18];
          if (v13)
          {
            (*(*v13 + 552))(v13, a2);
          }
        }

        if (v12)
        {
          sub_100004A34(v12);
        }

        v14 = v9[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v9[2];
            v16 = *v15 == v9;
            v9 = v15;
          }

          while (!v16);
        }

        v9 = v15;
      }

      while (v15 != v8);
    }
  }
}

void sub_1004973B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004973F4(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

uint64_t sub_100497424(uint64_t a1, unsigned int a2)
{
  if (a2 <= 1)
  {
    v2 = (a1 + 80 * a2 + 233);
LABEL_6:
    v3 = *v2;
    return v3 & 1;
  }

  if ((*(a1 + 233) & 1) == 0)
  {
    v2 = (a1 + 313);
    goto LABEL_6;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_100497464(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1)
  {
    return (*(*v1 + 560))();
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1004974A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = 0xFFFFFFF700000000;
  v9 = *a3;
  if (!*a3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) && !sub_1017721B8(a3, buf))
    {
      v9 = *buf;
    }

    else
    {
      __TUAssertTrigger("dataSettings");
      v9 = *a3;
      if (!*a3)
      {
        goto LABEL_24;
      }
    }
  }

  v10 = *(a1 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = (*(*v9 + 40))(v9);
    *buf = 136315394;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: by %s", buf, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v13 = ServiceMap;
  if (v14 < 0)
  {
    v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v16 = 5381;
    do
    {
      v14 = v16;
      v17 = *v15++;
      v16 = (33 * v16) ^ v17;
    }

    while (v17);
  }

  std::mutex::lock(ServiceMap);
  *buf = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, buf);
  if (!v18)
  {
    v20 = 0;
LABEL_17:
    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v13);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v21 = 0;
  if (!v20)
  {
LABEL_21:
    if (v21)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_18:
  if ((*(*a1 + 72))(a1) || (v22 = *a3 + *(**a3 - 56), v23 = (*(*v22 + 24))(v22), v23 == (*(*v20 + 792))(v20)))
  {
    LOBYTE(v20) = 0;
    goto LABEL_21;
  }

  v45 = *(a1 + 72);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = (*(**a3 + 40))();
    *buf = 136315394;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v46;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#E %s: %s does not belong to the Preferred Data SIM but it is trying to grab PDP0, this is a serious algorithm problem to be investigated", buf, 0x16u);
    if ((v21 & 1) == 0)
    {
      sub_100004A34(v19);
    }

    goto LABEL_24;
  }

  LOBYTE(v20) = 1;
  if ((v21 & 1) == 0)
  {
LABEL_22:
    sub_100004A34(v19);
  }

LABEL_23:
  if (v20)
  {
LABEL_24:
    v24 = 0xFFFFFFFFLL;
    return v24 | v8;
  }

  v203 = 0;
  v204 = 0;
  (*(*(*a3 + *(**a3 - 56)) + 16))(&v201);
  sub_10009D4CC(a1, a2, &v201, &v203);
  if (v202)
  {
    sub_100004A34(v202);
  }

  v25 = (*(**a3 + 520))(*a3, a4);
  if (!v203)
  {
    goto LABEL_178;
  }

  v26 = v25;
  v27 = a1 + 192;
  if ((*(a1 + 192) & 1) == 0 && (*(a1 + 272) & 1) == 0)
  {
    v59 = *(a1 + 160);
    if (v59)
    {
      v60 = *(a1 + 72);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "grabDataContext";
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s: We stepped over somebody's else 'checkPendingGrabs' method to be called soon", buf, 0xCu);
        v59 = *(a1 + 160);
      }

      if (v59 != *a3)
      {
        v61 = (*(*v59 + 520))(v59, 999);
        v62 = *(a1 + 72);
        v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
        if (v26 >= v61)
        {
          if (v63)
          {
            v129 = a3[1];
            v195 = *a3;
            v196 = v129;
            if (v129)
            {
              atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v130 = asString(&v195);
            v131 = *a3;
            v132 = *(a1 + 168);
            v193 = *(a1 + 160);
            v194 = v132;
            if (v132)
            {
              atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v133 = asString(&v193);
            v134 = *(a1 + 160);
            *buf = 136316162;
            *&buf[4] = "grabDataContext";
            *&buf[12] = 2080;
            *&buf[14] = v130;
            v206 = 2048;
            v207 = v131;
            v208 = 2080;
            v209 = v133;
            v210 = 2048;
            v211 = v134;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and higher or equal priority %s (0x%lx) is already pending, rejecting first", buf, 0x34u);
            if (v194)
            {
              sub_100004A34(v194);
            }

            if (v196)
            {
              sub_100004A34(v196);
            }
          }

          sub_100491B40(a1, a2);
          goto LABEL_178;
        }

        if (v63)
        {
          v64 = a3[1];
          v199 = *a3;
          v200 = v64;
          if (v64)
          {
            atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v65 = asString(&v199);
          v66 = *a3;
          v67 = *(a1 + 168);
          v197 = *(a1 + 160);
          v198 = v67;
          if (v67)
          {
            atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v68 = asString(&v197);
          v69 = *(a1 + 160);
          *buf = 136316162;
          *&buf[4] = "grabDataContext";
          *&buf[12] = 2080;
          *&buf[14] = v65;
          v206 = 2048;
          v207 = v66;
          v208 = 2080;
          v209 = v68;
          v210 = 2048;
          v211 = v69;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and lower-priority %s (0x%lx) is already pending, rejecting second", buf, 0x34u);
          if (v198)
          {
            sub_100004A34(v198);
          }

          if (v200)
          {
            sub_100004A34(v200);
          }
        }

        (*(**(a1 + 160) + 352))(*(a1 + 160), a2, a1 + 24);
      }

      v70 = *(a1 + 168);
      *(a1 + 160) = 0;
      *(a1 + 168) = 0;
      if (v70)
      {
        sub_100004A34(v70);
      }
    }

    v71 = *(a1 + 144);
    if (v71 == *a3)
    {
      v8 = 0;
      v24 = 1;
      goto LABEL_179;
    }

    if (v71 && (*(*v71 + 648))(v71) && (*(**(a1 + 144) + 520))(*(a1 + 144), 999) < v26)
    {
      v72 = *(a1 + 72);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = a3[1];
        v191 = *a3;
        v192 = v73;
        if (v73)
        {
          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v74 = asString(&v191);
        v75 = *a3;
        v76 = *(a1 + 152);
        v189 = *(a1 + 144);
        v190 = v76;
        if (v76)
        {
          atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v77 = asString(&v189);
        v78 = *(a1 + 144);
        *buf = 136316162;
        *&buf[4] = "grabDataContext";
        *&buf[12] = 2080;
        *&buf[14] = v74;
        v206 = 2048;
        v207 = v75;
        v208 = 2080;
        v209 = v77;
        v210 = 2048;
        v211 = v78;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and higher priority %s (0x%lx) has pending connections, rejecting first", buf, 0x34u);
        if (v190)
        {
          sub_100004A34(v190);
        }

        if (v192)
        {
          sub_100004A34(v192);
        }
      }

      sub_10048AFE8(a1, a2);
      goto LABEL_178;
    }

    v97 = *a3;
    v96 = a3[1];
    if (v96)
    {
      atomic_fetch_add_explicit((v96 + 8), 1uLL, memory_order_relaxed);
    }

    v98 = *(a1 + 152);
    *(a1 + 144) = v97;
    *(a1 + 152) = v96;
    if (v98)
    {
      sub_100004A34(v98);
    }

    v99 = *(a1 + 72);
    if (!os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_133;
    }

    v100 = *(a1 + 152);
    v187 = *(a1 + 144);
    v188 = v100;
    if (v100)
    {
      atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v101 = asString(&v187);
    v102 = *(a1 + 144);
    *buf = 136315650;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v101;
    v206 = 2048;
    v207 = v102;
    _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) new active settings %s (0x%lx) (1)", buf, 0x20u);
    v95 = v188;
    if (!v188)
    {
      goto LABEL_133;
    }

LABEL_132:
    sub_100004A34(v95);
LABEL_133:
    v8 = 0;
    goto LABEL_134;
  }

  v28 = (a1 + 144);
  v29 = *(a1 + 144);
  if (!v29)
  {
    v47 = *(a1 + 72);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = a3[1];
      v149 = *a3;
      v150 = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v49 = asString(&v149);
      v50 = *a3;
      *buf = 136315650;
      *&buf[4] = "grabDataContext";
      *&buf[12] = 2080;
      *&buf[14] = v49;
      v206 = 2048;
      v207 = v50;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and we have empty settings, assign it to the requesting settings", buf, 0x20u);
      if (v150)
      {
        sub_100004A34(v150);
      }
    }

    v52 = *a3;
    v51 = a3[1];
    if (v51)
    {
      atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
    }

    v53 = *(a1 + 152);
    *(a1 + 144) = v52;
    *(a1 + 152) = v51;
    if (v53)
    {
      sub_100004A34(v53);
    }

    v54 = *(a1 + 72);
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_134;
    }

    v55 = *(a1 + 152);
    v147 = *(a1 + 144);
    v148 = v55;
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56 = asString(&v147);
    v57 = *v28;
    *buf = 136315650;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v56;
    v206 = 2048;
    v207 = v57;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) new active settings %s (0x%lx) (3)", buf, 0x20u);
    v58 = v148;
    if (!v148)
    {
      goto LABEL_134;
    }

LABEL_103:
    sub_100004A34(v58);
LABEL_134:
    v24 = 0;
    goto LABEL_179;
  }

  if (v29 == *a3)
  {
    v79 = *(a1 + 72);
    if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_134;
    }

    v80 = *(a1 + 152);
    v145 = v29;
    v146 = v80;
    if (v80)
    {
      atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v81 = asString(&v145);
    v82 = *v28;
    *buf = 136315650;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v81;
    v206 = 2048;
    v207 = v82;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and we are already in use by it, letting it go", buf, 0x20u);
    v58 = v146;
    if (!v146)
    {
      goto LABEL_134;
    }

    goto LABEL_103;
  }

  v30 = (*(*v29 + 520))(*(a1 + 144), 999);
  v31 = *(a1 + 160);
  v144 = (a1 + 160);
  if (v31)
  {
    v32 = *a3;
    if (v31 != *a3)
    {
      v33 = (*(*v31 + 520))(v31, 999);
      v34 = *(a1 + 72);
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      if (v26 < v33)
      {
        if (v35)
        {
          v36 = a3[1];
          v185 = *a3;
          v186 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v37 = asString(&v185);
          v38 = *a3;
          v39 = *(a1 + 152);
          v183 = *(a1 + 144);
          v184 = v39;
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v40 = asString(&v183);
          v41 = *(a1 + 144);
          v42 = *(a1 + 168);
          v181 = *(a1 + 160);
          v182 = v42;
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v43 = asString(&v181);
          v44 = *v144;
          *buf = 136316674;
          *&buf[4] = "grabDataContext";
          *&buf[12] = 2080;
          *&buf[14] = v37;
          v206 = 2048;
          v207 = v38;
          v208 = 2080;
          v209 = v40;
          v210 = 2048;
          v211 = v41;
          v212 = 2080;
          v213 = v43;
          v214 = 2048;
          v215 = v44;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and we are already in use by %s (0x%lx) and lower-priority %s (0x%lx) is pending, rejecting third and pending first", buf, 0x48u);
          if (v182)
          {
            sub_100004A34(v182);
          }

          if (v184)
          {
            sub_100004A34(v184);
          }

          if (v186)
          {
            sub_100004A34(v186);
          }
        }

        (*(**(a1 + 160) + 352))(*(a1 + 160), a2, a1 + 24);
        sub_100492914(v144, a3);
        goto LABEL_197;
      }

      if (!v35)
      {
        goto LABEL_178;
      }

      v120 = a3[1];
      v179 = *a3;
      v180 = v120;
      if (v120)
      {
        atomic_fetch_add_explicit((v120 + 8), 1uLL, memory_order_relaxed);
      }

      v121 = asString(&v179);
      v122 = *a3;
      v123 = *(a1 + 152);
      v177 = *(a1 + 144);
      v178 = v123;
      if (v123)
      {
        atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v124 = asString(&v177);
      v125 = *(a1 + 144);
      v126 = *(a1 + 168);
      v175 = *(a1 + 160);
      v176 = v126;
      if (v126)
      {
        atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v127 = asString(&v175);
      v128 = *v144;
      *buf = 136316674;
      *&buf[4] = "grabDataContext";
      *&buf[12] = 2080;
      *&buf[14] = v121;
      v206 = 2048;
      v207 = v122;
      v208 = 2080;
      v209 = v124;
      v210 = 2048;
      v211 = v125;
      v212 = 2080;
      v213 = v127;
      v214 = 2048;
      v215 = v128;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and we are already in use by %s (0x%lx) and higher or equal priority %s (0x%lx) is pending, rejecting first", buf, 0x48u);
      if (v176)
      {
        sub_100004A34(v176);
      }

      if (v178)
      {
        sub_100004A34(v178);
      }

      v111 = v180;
      if (!v180)
      {
LABEL_178:
        v24 = 0xFFFFFFFFLL;
        goto LABEL_179;
      }

LABEL_167:
      sub_100004A34(v111);
      goto LABEL_178;
    }

    v112 = *(a1 + 72);
    if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_197;
    }

    v113 = a3[1];
    v173 = v32;
    v174 = v113;
    if (v113)
    {
      atomic_fetch_add_explicit((v113 + 8), 1uLL, memory_order_relaxed);
    }

    v114 = asString(&v173);
    v115 = *a3;
    v116 = *(a1 + 152);
    v171 = *(a1 + 144);
    v172 = v116;
    if (v116)
    {
      atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v117 = asString(&v171);
    v118 = *v28;
    *buf = 136316162;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v114;
    v206 = 2048;
    v207 = v115;
    v208 = 2080;
    v209 = v117;
    v210 = 2048;
    v211 = v118;
    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is already pending and we are in use by %s (0x%lx), keep pending", buf, 0x34u);
    if (v172)
    {
      sub_100004A34(v172);
    }

    v119 = v174;
    if (!v174)
    {
      goto LABEL_197;
    }

    goto LABEL_196;
  }

  if (v26 == v30)
  {
    (*(*(*a3 + *(**a3 - 56)) + 16))(buf);
    (*(*(*v28 + *(**v28 - 56)) + 16))(&v169);
    matched = DataUtils::matchPersonality();
    if (v170)
    {
      sub_100004A34(v170);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (matched)
    {
      v84 = *(a1 + 72);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = *(a1 + 152);
        v167 = *(a1 + 144);
        v168 = v85;
        if (v85)
        {
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v86 = asString(&v167);
        v87 = *v28;
        v88 = a3[1];
        v165 = *a3;
        v166 = v88;
        if (v88)
        {
          atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v89 = asString(&v165);
        v90 = *a3;
        *buf = 136316162;
        *&buf[4] = "grabDataContext";
        *&buf[12] = 2080;
        *&buf[14] = v86;
        v206 = 2048;
        v207 = v87;
        v208 = 2080;
        v209 = v89;
        v210 = 2048;
        v211 = v90;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#I %s: replacing %s (0x%lx) with equal-priority %s (0x%lx)", buf, 0x34u);
        if (v166)
        {
          sub_100004A34(v166);
        }

        if (v168)
        {
          sub_100004A34(v168);
        }
      }

      (*(**(a1 + 144) + 352))(*(a1 + 144), a2, a1 + 24);
      sub_100492914((a1 + 144), a3);
      v91 = *(a1 + 72);
      if (!os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_133;
      }

      v92 = *(a1 + 152);
      v163 = *(a1 + 144);
      v164 = v92;
      if (v92)
      {
        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v93 = asString(&v163);
      v94 = *v28;
      *buf = 136315650;
      *&buf[4] = "grabDataContext";
      *&buf[12] = 2080;
      *&buf[14] = v93;
      v206 = 2048;
      v207 = v94;
      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) new active settings %s (0x%lx) (2)", buf, 0x20u);
      v95 = v164;
      if (!v164)
      {
        goto LABEL_133;
      }

      goto LABEL_132;
    }
  }

  v103 = *(a1 + 72);
  v104 = os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT);
  if (v26 > v30)
  {
    if (!v104)
    {
      goto LABEL_178;
    }

    v105 = a3[1];
    v153 = *a3;
    v154 = v105;
    if (v105)
    {
      atomic_fetch_add_explicit((v105 + 8), 1uLL, memory_order_relaxed);
    }

    v106 = asString(&v153);
    v107 = *a3;
    v108 = *(a1 + 152);
    v151 = *(a1 + 144);
    v152 = v108;
    if (v108)
    {
      atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v109 = asString(&v151);
    v110 = *v28;
    *buf = 136316162;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v106;
    v206 = 2048;
    v207 = v107;
    v208 = 2080;
    v209 = v109;
    v210 = 2048;
    v211 = v110;
    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us while we are in use by higher-priority %s (0x%lx), rejecting first", buf, 0x34u);
    if (v152)
    {
      sub_100004A34(v152);
    }

    v111 = v154;
    if (!v154)
    {
      goto LABEL_178;
    }

    goto LABEL_167;
  }

  if (v104)
  {
    v136 = a3[1];
    v161 = *a3;
    v162 = v136;
    if (v136)
    {
      atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v137 = v103;
    v138 = asString(&v161);
    v139 = *a3;
    v140 = *(a1 + 152);
    v159 = *(a1 + 144);
    v160 = v140;
    if (v140)
    {
      atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v141 = asString(&v159);
    v142 = *v28;
    *buf = 136316162;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v138;
    v206 = 2048;
    v207 = v139;
    v208 = 2080;
    v209 = v141;
    v210 = 2048;
    v211 = v142;
    _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us while we are in use by lower-priority %s (0x%lx), pending first and disconnecting second", buf, 0x34u);
    if (v160)
    {
      sub_100004A34(v160);
    }

    if (v162)
    {
      sub_100004A34(v162);
    }
  }

  sub_100492914(v144, a3);
  if (*(v27 + 80 * a2) == 1)
  {
    (*(*a1 + 584))(&v157, a1);
    sub_10048F648(a1, a2, &v157, 25, "CommCenter");
    if (v158)
    {
      sub_100004A34(v158);
    }
  }

  if (*(v27 + 80 * otherContextType()) != 1)
  {
    goto LABEL_197;
  }

  v143 = otherContextType();
  (*(*a1 + 584))(&v155, a1);
  sub_10048F648(a1, v143, &v155, 25, "CommCenter");
  v119 = v156;
  if (!v156)
  {
    goto LABEL_197;
  }

LABEL_196:
  sub_100004A34(v119);
LABEL_197:
  v8 = 0;
  v24 = 2;
LABEL_179:
  if (v204)
  {
    sub_100004A34(v204);
  }

  return v24 | v8;
}

void sub_100498948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56, uint64_t a57, std::__shared_weak_count *a58, uint64_t a59, uint64_t a60)
{
  if (a56)
  {
    sub_100004A34(a56);
  }

  if (a58)
  {
    sub_100004A34(a58);
  }

  v62 = *(v60 - 184);
  if (v62)
  {
    sub_100004A34(v62);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100498BC8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    v4 = a2[1];
    v8 = *a2;
    v9 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = (*(*v3 + 168))(v3, &v8);
    if (v9)
    {
      sub_100004A34(v9);
    }
  }

  else
  {
    v6 = *(a1 + 72);
    v5 = 0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "configureHOVirtualInterface";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E %s: Empty pdp manager", buf, 0xCu);
      return 0;
    }
  }

  return v5;
}

void sub_100498CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100498CF4(capabilities::ct *a1, uint64_t *a2)
{
  v4 = *(a1 + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v30 = "detachDataSettings";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: ", buf, 0xCu);
  }

  sub_10049108C(a1, 0);
  v5 = a2[1];
  v28[0] = *a2;
  v28[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004991FC(a1, v28);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 20);
  if (v6)
  {
    v7 = *(a1 + 9);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v30 = "detachDataSettings";
      v8 = "#I %s: we have pending settings, we can not detach this settings, to allow normal control flow in checkPendingGrabs";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
    }
  }

  else
  {
    v10 = *a2;
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *(a1 + 18);
      sub_100004A34(v9);
      if (v11 != v10)
      {
        return v6 == 0;
      }
    }

    else if (*(a1 + 18) != v10)
    {
      return v6 == 0;
    }

    for (i = 0; i != 2; ++i)
    {
      v13 = dword_1018083B0[i];
      sub_100492120(a1, dword_1018083B0[i], 0, 0);
      sub_100491C50(a1, v13);
      if (*a2)
      {
        (*(*(*a2 + *(**a2 - 56)) + 16))(&v26);
        sub_10048F648(a1, v13, &v26, 27, "CommCenter");
        if (v27)
        {
          sub_100004A34(v27);
        }
      }
    }

    if (*a2)
    {
      v14 = (*(*(*a2 + *(**a2 - 56)) + 24))(*a2 + *(**a2 - 56));
      sub_1004944A4(a1, v14);
      if (*a2)
      {
        for (j = 0; j != 2; ++j)
        {
          v16 = dword_1018083B0[j];
          (*(*(*a2 + *(**a2 - 56)) + 16))(buf);
          v17 = sub_100499374(a1, v16, buf);
          if (*&v30[4])
          {
            sub_100004A34(*&v30[4]);
          }

          v18 = *(a1 + 9);
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v17)
          {
            if (v19)
            {
              v20 = asString();
              *buf = 136315394;
              *v30 = "detachDataSettings";
              *&v30[8] = 2080;
              *&v30[10] = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: context %s is idle, cleaning the IP families", buf, 0x16u);
            }

            (*(*(*a2 + *(**a2 - 56)) + 16))(&v24);
            (*(*a1 + 712))(a1, 3, v16, &v24);
            if (v25)
            {
              sub_100004A34(v25);
            }
          }

          else if (v19)
          {
            v21 = asString();
            *buf = 136315394;
            *v30 = "detachDataSettings";
            *&v30[8] = 2080;
            *&v30[10] = v21;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: context %s is not idle, not cleaning the IP families", buf, 0x16u);
          }
        }
      }
    }

    v22 = *(a1 + 19);
    *(a1 + 18) = 0;
    *(a1 + 19) = 0;
    if (v22)
    {
      sub_100004A34(v22);
    }

    v7 = *(a1 + 9);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v30 = "detachDataSettings";
      v8 = "#I %s: (change states) empty active settings";
      goto LABEL_10;
    }
  }

  return v6 == 0;
}

void sub_1004991AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004991FC(void *a1, uint64_t *a2)
{
  if (!*a2 && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_101772264(a2)))
  {
    __TUAssertTrigger("dataSettings");
  }

  v4 = a1[20];
  if (v4 && v4 == *a2)
  {
    v5 = a1[9];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[21];
      v9 = v4;
      v10 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = asString(&v9);
      *buf = 136315394;
      v12 = "cancelGrabDataContext";
      v13 = 2080;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: canceling pending %s", buf, 0x16u);
      if (v10)
      {
        sub_100004A34(v10);
      }
    }

    v8 = a1[21];
    a1[20] = 0;
    a1[21] = 0;
    if (v8)
    {
      sub_100004A34(v8);
    }
  }
}

void sub_100499340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100499374(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (a2 > 1)
  {
    goto LABEL_11;
  }

  v9 = 0;
  v10 = 0;
  v4 = a3[1];
  v7 = *a3;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000948C4(a1, a2, &v7, &v9);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v5 = v9;
  if (v9)
  {
    v3 = (*(*v9 + 216))(v9);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (!v5)
  {
LABEL_11:
    v3 = 1;
  }

  return v3 & 1;
}

void sub_100499424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049945C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 160) && !*(v2 + 144) && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_101772308((v2 + 144))))
  {
    __TUAssertTrigger("fSettings.fActiveDataSettings");
  }

  if ((*(*v2 + 592))(v2))
  {
    v24 = 0;
    v25 = 0;
    v3 = *(a1 + 40);
    (*(*v2 + 584))(&v22, v2);
    sub_10009D4CC(v2, v3, &v22, &v24);
    if (v23)
    {
      sub_100004A34(v23);
    }

    if (v24 && (*(v2 + 192) & 1) == 0 && (*(v2 + 272) & 1) == 0 && *(v2 + 160))
    {
      v4 = *(v2 + 72);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v2 + 152);
        v20 = *(v2 + 144);
        v21 = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v6 = asString(&v20);
        v7 = *(v2 + 168);
        v18 = *(v2 + 160);
        v19 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = asString(&v18);
        *buf = 136315650;
        v27 = "checkPendingGrabs_block_invoke";
        v28 = 2080;
        v29 = v6;
        v30 = 2080;
        v31 = v8;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s:  done with %s and have pending %s", buf, 0x20u);
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (v21)
        {
          sub_100004A34(v21);
        }
      }

      (*(**(v2 + 144) + 656))(*(v2 + 144));
      v10 = *(v2 + 160);
      v9 = *(v2 + 168);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *(v2 + 152);
      *(v2 + 144) = v10;
      *(v2 + 152) = v9;
      if (v11)
      {
        sub_100004A34(v11);
      }

      v12 = *(v2 + 72);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(v2 + 152);
        v16 = *(v2 + 144);
        v17 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = asString(&v16);
        *buf = 136315394;
        v27 = "checkPendingGrabs_block_invoke";
        v28 = 2080;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) new active settings %s (4)", buf, 0x16u);
        if (v17)
        {
          sub_100004A34(v17);
        }
      }

      v15 = *(v2 + 168);
      *(v2 + 160) = 0;
      *(v2 + 168) = 0;
      if (v15)
      {
        sub_100004A34(v15);
      }

      (*(**(v2 + 144) + 344))(*(v2 + 144), *(a1 + 40), v2 + 24);
    }

    if (v25)
    {
      sub_100004A34(v25);
    }
  }
}

void sub_1004997A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049980C(uint64_t a1, int a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I reservePduSessionIdForWlan: %d", v5, 8u);
  }

  *(a1 + 412) = a2;
  *(a1 + 416) = 1;
}

uint64_t sub_1004998C0(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, uint64_t a7)
{
  v11 = a3[1];
  v16 = *a3;
  v17 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = 0;
  v19 = 0;
  sub_10009D4CC(a1, a2, &v16, &v18);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v12 = v18;
  if (v18)
  {
    sub_100010024(&v15, a6);
    v13 = (*(*v12 + 304))(v12, a4, a5, &v15, a7);
    sub_10001021C(&v15);
  }

  else
  {
    v13 = 0;
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  return v13;
}

void sub_1004999B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_10001021C(&a10);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1004999E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, const void **a5)
{
  v9 = a3[1];
  v15 = *a3;
  v16 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = 0;
  v18 = 0;
  sub_10009D4CC(a1, a2, &v15, &v17);
  if (v16)
  {
    sub_100004A34(v16);
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    sub_100010024(&v13, a5);
    (*(*v10 + 232))(&v14, v10, a2, &v13);
    if (&v14 != a5)
    {
      v19 = *a5;
      *a5 = v14;
      v14 = 0;
      sub_10001021C(&v19);
    }

    sub_10001021C(&v14);
    sub_10001021C(&v13);
  }

  v11 = v17;
  if (v17)
  {
    sub_100010024(&v12, a5);
    (*(*v11 + 312))(v11, a4, &v12);
    sub_10001021C(&v12);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }
}

void sub_100499B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_10001021C(&a9);
  if (a15)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(a1);
}

void sub_100499B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (!a13)
  {
    JUMPOUT(0x100499B6CLL);
  }

  JUMPOUT(0x100499B68);
}

void sub_100499B8C(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3[1];
  v8 = *a3;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  v11 = 0;
  sub_10009D4CC(a1, a2, &v8, &v10);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v10)
  {
    (*(*v10 + 336))(v10, a4, a5);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_100499C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100499C64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_100094EA8(*(a1 + 136), a2))
  {
    v10 = sub_100094F40(*(a1 + 136), a2);
    v11 = *(v10 + 24);
    v12 = *(v10 + 32);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      (*(*v11 + 216))(v11, a3, a4);
    }

    if (a4 == 5)
    {
      v16 = 0;
      v17 = 0;
      v13 = a2[1];
      v14 = *a2;
      v15 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1000948C4(a1, 0, &v14, &v16);
      if (v15)
      {
        sub_100004A34(v15);
      }

      if (v16)
      {
        (*(*v16 + 296))(v16, a5);
      }

      if (v17)
      {
        sub_100004A34(v17);
      }
    }

    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  else if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
  {
    sub_1017723AC();
  }
}

void sub_100499DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100499E14(uint64_t a1, int a2, void *a3)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    if (v3 == *a3 && (v4 = a1 + 80 * a2, v5 = *(v4 + 192), v3 = v4 + 192, v5 == 1))
    {
      if (*(v3 + 32))
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        LOBYTE(v3) = *(v3 + 40);
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

void sub_100499E74(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = a3[1];
  v6 = *a3;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = 0;
  v9 = 0;
  sub_1000948C4(a1, a2, &v6, &v8);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v8)
  {
    (*(*v8 + 352))(v8);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_100499F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100499F50(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a1 + 144);
    sub_100004A34(v3);
    if (v5 != v4)
    {
      return;
    }
  }

  else if (*(a1 + 144) != v4)
  {
    return;
  }

  v6 = *(**(a1 + 112) + 168);

  v6();
}

void sub_10049A000(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v10 = 0;
  sub_10009D4CC(a1, 1, &v7, &lpsrc);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (lpsrc)
  {
    if (v5)
    {
      v6 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 672))(v5, a3);
      if (v6)
      {
        sub_100004A34(v6);
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_10049A108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A138(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v10 = 0;
  sub_10009D4CC(a1, 1, &v7, &lpsrc);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (lpsrc)
  {
    if (v5)
    {
      v6 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 680))(v5, a3);
      if (v6)
      {
        sub_100004A34(v6);
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_10049A240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A270(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(v1 + 8);
  for (i = *(v1 + 16); v2 != i; v2 += 9)
  {
    v4 = *v2;
    if (*v2 != v2 + 1)
    {
      do
      {
        v5 = v4[4];
        v6 = v4[5];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 560))(v5);
        if (v6)
        {
          sub_100004A34(v6);
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
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v8 != v2 + 1);
    }
  }
}

void sub_10049A34C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A364(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v8 = 0;
  sub_10009D4CC(a1, 1, &v5, &lpsrc);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (lpsrc)
  {
    if (v3)
    {
      v4 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v3 + 728))(v3);
      if (v4)
      {
        sub_100004A34(v4);
      }
    }
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_10049A464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A494(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v8 = 0;
  sub_10009D4CC(a1, 1, &v5, &lpsrc);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (lpsrc)
  {
    if (v3)
    {
      v4 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v3 + 736))(v3);
      if (v4)
      {
        sub_100004A34(v4);
      }
    }
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_10049A594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A5C4(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v8 = 0;
  sub_10009D4CC(a1, 1, &v5, &lpsrc);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (lpsrc)
  {
    if (v3)
    {
      v4 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v3 + 744))(v3);
      if (v4)
      {
        sub_100004A34(v4);
      }
    }
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_10049A6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A6F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[1];
  v9 = *a2;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v12 = 0;
  sub_10009D4CC(a1, 1, &v9, &lpsrc);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (lpsrc)
  {
    if (v7)
    {
      v8 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v7 + 720))(v7, a3, a4);
      if (v8)
      {
        sub_100004A34(v8);
      }
    }
  }

  if (v12)
  {
    sub_100004A34(v12);
  }
}

void sub_10049A80C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A83C(uint64_t a1, int a2, uint64_t *a3)
{
  if (a2 != 1)
  {
    goto LABEL_16;
  }

  lpsrc = 0;
  v10 = 0;
  v4 = a3[1];
  v7 = *a3;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000948C4(a1, 1, &v7, &lpsrc);
  if (v8)
  {
    sub_100004A34(v8);
  }

  {
    v6 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 712))(v5);
    if (v6)
    {
      sub_100004A34(v6);
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v6)
  {
LABEL_16:
    (*(*a1 + 848))(a1);
  }
}

void sub_10049A9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A9D0(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v8 = 0;
  sub_10009D4CC(a1, 1, &v5, &lpsrc);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (lpsrc)
  {
    if (v3)
    {
      v4 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v3 + 664))(v3);
      if (v4)
      {
        sub_100004A34(v4);
      }
    }
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_10049AAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049AB00(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(v1 + 8);
  for (i = *(v1 + 16); v2 != i; v2 += 9)
  {
    v4 = *v2;
    if (*v2 != v2 + 1)
    {
      do
      {
        v6 = v4[4];
        v5 = v4[5];
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!(*(*v6 + 56))(v6))
        {
          (*(*v6 + 248))(v6);
        }

        if (v5)
        {
          sub_100004A34(v5);
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
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v8 != v2 + 1);
    }
  }
}

void sub_10049AC0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049AC24(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = 0;
  v8 = 0;
  sub_10009D4CC(a1, 1, &v5, &v7);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v7)
  {
    v3 = (*(*v7 + 248))(v7);
  }

  else
  {
    v3 = 0;
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  return v3;
}

void sub_10049ACC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049ACF0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v10 = 0;
  sub_10009D4CC(a1, 1, &v7, &lpsrc);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (lpsrc)
  {
    if (v5)
    {
      v6 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 704))(v5, a3);
      if (v6)
      {
        sub_100004A34(v6);
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_10049ADF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049AE28(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v8 = 0;
  sub_10009D4CC(a1, 1, &v5, &lpsrc);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (lpsrc)
  {
    if (v3)
    {
      v4 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v3 + 688))(v3);
      if (v4)
      {
        sub_100004A34(v4);
      }
    }
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_10049AF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049AF58(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  lpsrc = 0;
  v10 = 0;
  sub_10009D4CC(a1, 1, &v7, &lpsrc);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (lpsrc)
  {
    if (v5)
    {
      v6 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 696))(v5, a3);
      if (v6)
      {
        sub_100004A34(v6);
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_10049B060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049B090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_100094EA8(*(a1 + 136), a4))
  {
    v8 = sub_100094F40(*(a1 + 136), a4);
    v9 = v8 + 1;
    v10 = *v8;
    if (*v8 != v8 + 1)
    {
      do
      {
        v11 = v10[4];
        v12 = v10[5];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v11 + 544))(v11, a2, a3);
        if (v12)
        {
          sub_100004A34(v12);
        }

        v13 = v10[1];
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
            v14 = v10[2];
            v15 = *v14 == v10;
            v10 = v14;
          }

          while (!v15);
        }

        v10 = v14;
      }

      while (v14 != v9);
    }
  }
}

void sub_10049B184(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049B19C(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3[1];
  v12 = *a3;
  v13 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = 0;
  v15 = 0;
  sub_10009D4CC(a1, a2, &v12, &v14);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v14)
  {
    (*(*v14 + 416))(v14, a4, a5, a6, a7);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_10049B25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049B284(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 168);
  if (a2 <= 1)
  {
    v3 = &v2[80 * a2];
LABEL_6:
    v4 = *v3 ^ 1;
    return v4 & 1;
  }

  if ((*v2 & 1) == 0)
  {
    v3 = (a1 + 248);
    goto LABEL_6;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_10049B2D0(uint64_t a1, unsigned int a2)
{
  if (a2 <= 1)
  {
    v2 = (a1 + 80 * a2 + 209);
LABEL_6:
    v3 = *v2;
    return v3 & 1;
  }

  if ((*(a1 + 209) & 1) == 0)
  {
    v2 = (a1 + 289);
    goto LABEL_6;
  }

  v3 = 1;
  return v3 & 1;
}

void sub_10049B308(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v7 = a3[1];
  v12 = *a3;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = 0;
  v15 = 0;
  sub_10009D4CC(a1, a2, &v12, &v14);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v8 = *(a1 + 96);
  if (v8)
  {
    v9 = (*(*v8 + 240))(v8, a2);
  }

  else
  {
    v9 = 0;
  }

  v10 = v14;
  if (v14)
  {
    sub_10006F22C(&v11, a4);
    (*(*v10 + 320))(v10, &v11, v9);
    sub_100010250(&v11);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_10049B418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_100010250(&a10);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_10049B440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0x10049B438);
  }

  JUMPOUT(0x10049B434);
}

uint64_t sub_10049B458(uint64_t a1, void *a2)
{
  if (!*a2 || *a2 == *(a1 + 144))
  {
    return *(a1 + 184);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10049B47C(uint64_t a1, void *a2)
{
  if (!*a2 || *a2 == *(a1 + 120))
  {
    return *(a1 + 160);
  }

  else
  {
    return 2;
  }
}

void sub_10049B4B8(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  v7 = 0;
  sub_1000948C4(a1, a2, &v4, &v6);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v6)
  {
    (*(*v6 + 328))(v6);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10049B550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049B580(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = a4[1];
  v10 = *a4;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = 0;
  v13 = 0;
  sub_10009D4CC(a1, a2, &v10, &v12);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v12)
  {
    v8 = (*(*v12 + 368))(v12, a3, a5);
  }

  else
  {
    v8 = 0;
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  return v8;
}

void sub_10049B638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049B668(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = a4[1];
  v10 = *a4;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = 0;
  v13 = 0;
  sub_1000948C4(a1, a2, &v10, &v12);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v12)
  {
    v8 = (*(*v12 + 376))(v12, a3, a5);
  }

  else
  {
    v8 = 0;
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  return v8;
}

void sub_10049B720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049B750(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  v9 = a1;
  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_12;
  }

  (*(*v9 + 584))(&v31, v9);
  matched = DataUtils::matchPersonality();
  if (*(&v31 + 1))
  {
    sub_100004A34(*(&v31 + 1));
  }

  if ((matched & 1) == 0)
  {
LABEL_12:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  v36 = 0;
  v37 = 0;
  v11 = a3[1];
  v34 = *a3;
  v35 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10009D4CC(v9, a2, &v34, &v36);
  if (v35)
  {
    sub_100004A34(v35);
  }

  v12 = v36;
  if (v36)
  {
    v13 = v9 + 80 * a2;
    memset(v33, 0, sizeof(v33));
    v14 = *(v13 + 208);
    v31 = *(v13 + 192);
    *v32 = v14;
    *&v32[10] = *(v13 + 218);
    if (*(v13 + 263) < 0)
    {
      sub_100005F2C(&v33[3], *(v13 + 240), *(v13 + 248));
    }

    else
    {
      *&v33[3] = *(v13 + 240);
      *&v33[11] = *(v13 + 256);
    }

    LOBYTE(v33[15]) = *(v13 + 264);
    if (v32[25] == 1)
    {
      v16 = *(v9 + 72);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = asString();
        *buf = 136315394;
        v39 = "suspendDataContext";
        v40 = 2080;
        v41 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: Cannot suspend deactivating data context %s", buf, 0x16u);
      }

      goto LABEL_52;
    }

    v19 = *(v9 + 144);
    v18 = *(v9 + 152);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v19)
    {
      if ((*(*v19 + 88))(v19, 0))
      {
        v20 = *(v9 + 72);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v39 = "suspendDataContext";
          v21 = "#I %s: Emergency PDN should not be suspended";
LABEL_27:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
          goto LABEL_28;
        }

        goto LABEL_28;
      }

      if ((*(*v19 + 144))(v19))
      {
        v20 = *(v9 + 72);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v39 = "suspendDataContext";
          v21 = "#I %s: PDN is configured to ignore suspension";
          goto LABEL_27;
        }

LABEL_28:
        LOBYTE(a5) = 0;
        LOBYTE(v9) = 0;
        goto LABEL_49;
      }

      if ((dataContextSuspendMask() & a4) != 0 && ((*(*v19 + 152))(v19) & 1) == 0)
      {
        a4 &= ~dataContextSuspendMask();
        if (!a4)
        {
          v20 = *(v9 + 72);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          *buf = 136315138;
          v39 = "suspendDataContext";
          v21 = "#I %s: PDN is not configured to utilize BBCall suspension";
          goto LABEL_27;
        }
      }
    }

    if (!*&v32[20] && v31 == 1)
    {
      v22 = *(v9 + 72);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v39 = "suspendDataContext";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: looks like we are really suspending the context", buf, 0xCu);
      }
    }

    if (!(*(*v12 + 400))(v12))
    {
      LOBYTE(a5) = 1;
      goto LABEL_49;
    }

    v23 = *(v13 + 208);
    v31 = *(v13 + 192);
    *v32 = v23;
    *&v32[10] = *(v13 + 218);
    std::string::operator=(&v33[3], (v13 + 240));
    v24 = *(v13 + 264);
    LOBYTE(v33[15]) = v24;
    if (*&v32[20] != (*&v32[20] | a4))
    {
      *&v32[20] |= a4;
      if (v31 == 1)
      {
        v26 = v31;
        v27[0] = *v32;
        *(v27 + 10) = *&v32[10];
        if (SHIBYTE(v33[14]) < 0)
        {
          sub_100005F2C(__p, *&v33[3], *&v33[7]);
          v24 = v33[15];
        }

        else
        {
          *__p = *&v33[3];
          v29 = *&v33[11];
        }

        v30 = v24;
        sub_1004914F0(v9, a2, &v26, 0);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (!a5)
        {
          goto LABEL_48;
        }

        sub_10048C10C(v9, 6, 0, 0, 0);
      }
    }

    LOBYTE(a5) = 0;
LABEL_48:
    LOBYTE(v9) = 1;
LABEL_49:
    if (v18)
    {
      sub_100004A34(v18);
    }

    if ((a5 & 1) == 0)
    {
      v25 = 0;
LABEL_54:
      if (SHIBYTE(v33[14]) < 0)
      {
        operator delete(*&v33[3]);
      }

      if ((v25 & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

LABEL_52:
    v25 = 1;
    goto LABEL_54;
  }

LABEL_57:
  LOBYTE(v9) = 0;
LABEL_58:
  if (v37)
  {
    sub_100004A34(v37);
  }

  return v9 & 1;
}

void sub_10049BCC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (v36)
  {
    sub_100004A34(v36);
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  v39 = *(v37 - 136);
  if (v39)
  {
    sub_100004A34(v39);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049BD58(void *a1, uint64_t a2, uint64_t *a3, int a4)
{
  if ((*(*a1 + 592))(a1))
  {
    (*(*a1 + 584))(&v32, a1);
    matched = DataUtils::matchPersonality();
    if (*(&v32 + 1))
    {
      sub_100004A34(*(&v32 + 1));
    }

    if (matched)
    {
      v37 = 0;
      v38 = 0;
      v9 = a3[1];
      v35 = *a3;
      v36 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10009D4CC(a1, a2, &v35, &v37);
      if (v36)
      {
        sub_100004A34(v36);
      }

      v10 = v37;
      if (!v37)
      {
        goto LABEL_38;
      }

      v11 = &a1[10 * a2];
      memset(v34, 0, sizeof(v34));
      v12 = *(v11 + 13);
      v32 = *(v11 + 12);
      *v33 = v12;
      *&v33[10] = *(v11 + 218);
      if (*(v11 + 263) < 0)
      {
        sub_100005F2C(&v34[3], v11[30], v11[31]);
      }

      else
      {
        *&v34[3] = *(v11 + 15);
        *&v34[11] = v11[32];
      }

      LOBYTE(v34[15]) = *(v11 + 264);
      if (v33[25] == 1)
      {
        v13 = a1[9];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = asString();
          *buf = 136315394;
          v40 = "resumeDataContext";
          v41 = 2080;
          *v42 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#N %s: Cannot resume deactivating data context %s", buf, 0x16u);
        }
      }

      else
      {
        v15 = *&v33[20];
        v16 = *&v33[20] & a4;
        if ((*&v33[20] & a4) != 0)
        {
          v17 = a1[9];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v40 = "resumeDataContext";
            v41 = 1024;
            *v42 = v15;
            *&v42[4] = 1024;
            *&v42[6] = a4;
            v43 = 1024;
            v44 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: Cannot resume data context: current mask %d, requested mask %d, newMask %d", buf, 0x1Eu);
          }

          *&v33[20] = v16;
          if (v32 != 1)
          {
            goto LABEL_36;
          }

          v22 = v32;
          v23[0] = *v33;
          *(v23 + 10) = *&v33[10];
          if (SHIBYTE(v34[14]) < 0)
          {
            sub_100005F2C(&v24, *&v34[3], *&v34[7]);
          }

          else
          {
            v24 = *&v34[3];
            v25 = *&v34[11];
          }

          v26 = v34[15];
          sub_1004914F0(a1, a2, &v22, 0);
          if ((SHIBYTE(v25) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

          v21 = v24;
        }

        else
        {
          if (*&v33[20])
          {
            v18 = a1[9];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v40 = "resumeDataContext";
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: looks like we are really resuming the context", buf, 0xCu);
            }
          }

          (*(*v10 + 408))(v10);
          v19 = *(v11 + 13);
          v32 = *(v11 + 12);
          *v33 = v19;
          *&v33[10] = *(v11 + 218);
          std::string::operator=(&v34[3], v11 + 10);
          v20 = *(v11 + 264);
          LOBYTE(v34[15]) = v20;
          if (!*&v33[20])
          {
            goto LABEL_36;
          }

          *&v33[20] = 0;
          if (v32 != 1)
          {
            goto LABEL_36;
          }

          v27 = v32;
          v28[0] = *v33;
          *(v28 + 10) = *&v33[10];
          if (SHIBYTE(v34[14]) < 0)
          {
            sub_100005F2C(&__p, *&v34[3], *&v34[7]);
            v20 = v34[15];
          }

          else
          {
            __p = *&v34[3];
            v30 = *&v34[11];
          }

          v31 = v20;
          sub_1004914F0(a1, a2, &v27, 0);
          if ((SHIBYTE(v30) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

          v21 = __p;
        }

        operator delete(v21);
      }

LABEL_36:
      if (SHIBYTE(v34[14]) < 0)
      {
        operator delete(*&v34[3]);
      }

LABEL_38:
      if (v38)
      {
        sub_100004A34(v38);
      }
    }
  }
}

void sub_10049C1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  v48 = *(v46 - 136);
  if (v48)
  {
    sub_100004A34(v48);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049C238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 136);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 != v7)
  {
    while (1)
    {
      v10 = *v6;
      if (*v6 != v6 + 1)
      {
        break;
      }

LABEL_20:
      v6 += 9;
      if (v6 == v7)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v12 = v10[4];
      v11 = v10[5];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12 && !(*(*v12 + 56))(v12) && ((*(*v12 + 216))(v12) & 1) == 0)
      {
        break;
      }

      v13 = 1;
      if (v11)
      {
        goto LABEL_9;
      }

LABEL_10:
      if ((v13 & 1) == 0)
      {
        return;
      }

      v14 = v10[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v10[2];
          v16 = *v15 == v10;
          v10 = v15;
        }

        while (!v16);
      }

      v10 = v15;
      if (v15 == v6 + 1)
      {
        goto LABEL_20;
      }
    }

    sub_1000224C8(v17, a4);
    (*(*v12 + 576))(v12, a2, a3, v17);
    sub_10000FF50(v17);
    v13 = 0;
    if (!v11)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_100004A34(v11);
    goto LABEL_10;
  }

LABEL_21:
  sub_10000FFD0(a4, 0);
}

void sub_10049C438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 136);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 != v7)
  {
    while (1)
    {
      v10 = *v6;
      if (*v6 != v6 + 1)
      {
        break;
      }

LABEL_20:
      v6 += 9;
      if (v6 == v7)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v12 = v10[4];
      v11 = v10[5];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12 && !(*(*v12 + 56))(v12) && ((*(*v12 + 216))(v12) & 1) == 0)
      {
        break;
      }

      v13 = 1;
      if (v11)
      {
        goto LABEL_9;
      }

LABEL_10:
      if ((v13 & 1) == 0)
      {
        return;
      }

      v14 = v10[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v10[2];
          v16 = *v15 == v10;
          v10 = v15;
        }

        while (!v16);
      }

      v10 = v15;
      if (v15 == v6 + 1)
      {
        goto LABEL_20;
      }
    }

    sub_1000224C8(v17, a4);
    (*(*v12 + 584))(v12, a2, a3, v17);
    sub_10000FF50(v17);
    v13 = 0;
    if (!v11)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_100004A34(v11);
    goto LABEL_10;
  }

LABEL_21:
  sub_10000FFD0(a4, 0);
}

void sub_10049C638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 136);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v5 != v6)
  {
    while (1)
    {
      v8 = *v5;
      if (*v5 != v5 + 1)
      {
        break;
      }

LABEL_20:
      v5 += 9;
      if (v5 == v6)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v10 = v8[4];
      v9 = v8[5];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10 && !(*(*v10 + 56))(v10) && ((*(*v10 + 216))(v10) & 1) == 0)
      {
        break;
      }

      v11 = 1;
      if (v9)
      {
        goto LABEL_9;
      }

LABEL_10:
      if ((v11 & 1) == 0)
      {
        return;
      }

      v12 = v8[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      v8 = v13;
      if (v13 == v5 + 1)
      {
        goto LABEL_20;
      }
    }

    sub_10049F8A0(v18, a3);
    (*(*v10 + 592))(v10, a2, v18);
    sub_10049F938(v18);
    v11 = 0;
    if (!v9)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_100004A34(v9);
    goto LABEL_10;
  }

LABEL_21:
  memset(v16, 0, sizeof(v16));
  v15 = *(a3 + 24);
  if (!v15)
  {
    sub_100022DB4();
  }

  (*(*v15 + 48))(v15, v16);
  v17 = v16;
  sub_100128BB0(&v17);
}

void sub_10049C844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_100128BB0(&a13);
  _Unwind_Resume(a1);
}

void sub_10049C884(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 || *(*a3 + 49) || (*(a1 + 192) & 1) != 0)
  {
    v4 = *(a1 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I skip context release", buf, 2u);
    }

    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v6 = ServiceMap;
  if (v7 < 0)
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
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      if (!v13)
      {
        goto LABEL_13;
      }

LABEL_17:
      *buf = 0;
      v22 = 0;
      v16 = DataUtils::otherSimSlot();
      (*(*v13 + 8))(buf, v13, v16);
      if (*buf)
      {
        *v23 = 0uLL;
        v19 = *buf;
        v20 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000948C4(a1, 0, &v19, v23);
        if (v20)
        {
          sub_100004A34(v20);
        }

        if (*v23)
        {
          (*(**v23 + 424))(*v23);
        }

        if (*&v23[8])
        {
          sub_100004A34(*&v23[8]);
        }
      }

      else
      {
        v17 = *(a1 + 72);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = subscriber::asString();
          *v23 = 136315138;
          *&v23[4] = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I No other sim personality exist for %s", v23, 0xCu);
        }
      }

      if (v22)
      {
        sub_100004A34(v22);
      }

      goto LABEL_30;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_13:
  v15 = *(a1 + 72);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "No Personality Shop !", buf, 2u);
  }

LABEL_30:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10049CB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049CBF4(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100495E20(a1, &v3);
  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_10049CC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049CC64(uint64_t a1)
{
  result = *(a1 + 112);
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

uint64_t sub_10049CC94(uint64_t a1)
{
  result = *(a1 + 104);
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

void sub_10049CCC4(void *a1, int a2, uint64_t *a3, BOOL a4, BOOL a5, _BOOL8 a6, uint64_t a7)
{
  v7 = a7;
  v13 = a1[9];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v40 = "handlePacketContextCellChanged";
    v41 = 2080;
    v42 = subscriber::asString();
    v43 = 1024;
    *v44 = a2;
    *&v44[4] = 2080;
    *&v44[6] = asStringBool(a5);
    *&v44[14] = 2080;
    *&v44[16] = asStringBool(a6);
    v45 = 2080;
    v46 = asString();
    v47 = 2080;
    v48 = asStringBool(a4);
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: %s: type = %d isInHomeCountry = %s isDataRoamingAllowed = %s dataMode = %s dataAllowed = %s", buf, 0x44u);
  }

  v37 = 0;
  v38 = 0;
  v14 = a3[1];
  v35 = *a3;
  v36 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10009D4CC(a1, 0, &v35, &v37);
  if (v36)
  {
    sub_100004A34(v36);
  }

  v15 = a1[18];
  v16 = a1[19];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v37;
  if (v37)
  {
    if (a2 != 1)
    {
      if (a2 || a4)
      {
        goto LABEL_32;
      }

      v18 = (*(*v37 + 56))(v37);
      v19 = *a3;
      v20 = a3[1];
      v34[0] = v19;
      v34[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10048F648(a1, v18, v34, 4, "CommCenter");
      goto LABEL_30;
    }

    if (!v15)
    {
      goto LABEL_32;
    }

    if (!a4)
    {
      v25 = (*(*v37 + 56))(v37);
      v26 = *a3;
      v20 = a3[1];
      v33[0] = v26;
      v33[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10048F648(a1, v25, v33, 4, "CommCenter");
      goto LABEL_30;
    }

    if (a5 || !(*(*v15 + 528))(v15, 0, a6))
    {
      goto LABEL_32;
    }

    if (v7 != 10 || (*(*v17 + 656))(v17) == 10)
    {
      v21 = a1[9];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = subscriber::asString();
        *buf = 136315394;
        v40 = "handlePacketContextCellChanged";
        v41 = 2080;
        v42 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: %s: International roaming contradicts current connections", buf, 0x16u);
      }

      v23 = (*(*v17 + 56))(v17);
      v24 = *a3;
      v20 = a3[1];
      v32[0] = v24;
      v32[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10048F648(a1, v23, v32, 7, "CommCenter");
LABEL_30:
      if (v20)
      {
        sub_100004A34(v20);
      }

      goto LABEL_32;
    }

    v27 = a1[9];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = subscriber::asString();
      v29 = asString();
      (*(*v17 + 656))(v17);
      v30 = asString();
      *buf = 136315906;
      v40 = "handlePacketContextCellChanged";
      v41 = 2080;
      v42 = v28;
      v43 = 2080;
      *v44 = v29;
      *&v44[8] = 2080;
      *&v44[10] = v30;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s: %s: International roaming contradicts current connections but data mode doesn't match %s != %s", buf, 0x2Au);
    }
  }

LABEL_32:
  if (v16)
  {
    sub_100004A34(v16);
  }

  if (v38)
  {
    sub_100004A34(v38);
  }
}

void sub_10049D198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049D1F4(void *a1, const CSIPacketAddress *a2)
{
  v4 = a1[9];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    v5 = v8 >= 0 ? __p : __p[0];
    *buf = 136315394;
    *&buf[4] = "ipv6ServiceUp";
    *&buf[12] = 2080;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: addr = %s", buf, 0x16u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  memset(buf, 0, sizeof(buf));
  CSIPacketAddress::CSIPacketAddress(buf, a2);
  CSIPacketAddress::CSIPacketAddress(__p, buf);
  sub_100004AA0(&v11, a1 + 5);
  v6 = v12;
  v9 = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v11 = 0;
  v12 = 0;
  sub_100004AA0(&v11, a1 + 5);
  operator new();
}

void sub_10049D3F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10049D414(void *a1, const CSIPacketAddress *a2)
{
  v4 = a1[9];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    v5 = v8 >= 0 ? __p : __p[0];
    *buf = 136315394;
    *&buf[4] = "ipv4ServiceUp";
    *&buf[12] = 2080;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: addr = %s", buf, 0x16u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  memset(buf, 0, sizeof(buf));
  CSIPacketAddress::CSIPacketAddress(buf, a2);
  CSIPacketAddress::CSIPacketAddress(__p, buf);
  sub_100004AA0(&v11, a1 + 5);
  v6 = v12;
  v9 = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v11 = 0;
  v12 = 0;
  sub_100004AA0(&v11, a1 + 5);
  operator new();
}

void sub_10049D610(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10049D634(uint64_t a1)
{
  v1 = (*(*a1 + 576))(a1, 0, 0, 0);

  return isSliceMask(v1);
}

uint64_t sub_10049D690(uint64_t a1)
{
  v1 = (*(*(a1 - 32) + 576))();

  return isSliceMask(v1);
}

void sub_10049D6EC(uint64_t a1, int a2)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 8);
  for (i = *(v2 + 16); v3 != i; v3 += 72)
  {
    v9 = 0;
    v10 = 0;
    sub_1000948A8(v3, &v7);
    sub_1000948C4(a1, a2, &v7, &v9);
    if (v8)
    {
      sub_100004A34(v8);
    }

    if (v9)
    {
      (*(*v9 + 448))(v9);
    }

    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_10049D7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049D7D4(uint64_t a1, uint64_t a2)
{
  sub_10049D8EC(a1, a2, 1, 0);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10049DA6C;
  v4[3] = &unk_101E4FC90;
  v4[4] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 40));
  v3 = *(a1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10049F6D8;
  block[3] = &unk_101E4FEE0;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_10049D8EC(uint64_t a1, uint64_t a2, int a3, _BOOL4 a4)
{
  if (a2 <= 1)
  {
    v4 = a3;
    v7 = (a1 + 80 * a2);
    v8 = v7[232];
    if (v8 != a3)
    {
      v10 = *(a1 + 72);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = asStringBool(v8);
        v12 = asStringBool(v4);
        v13 = asString();
        v14 = asStringBool(a4);
        v15 = asStringBool(v7[216]);
        v16 = 136316418;
        v17 = "setProbation";
        v18 = 2080;
        v19 = v11;
        v20 = 2080;
        v21 = v12;
        v22 = 2080;
        v23 = v13;
        v24 = 2080;
        v25 = v14;
        v26 = 2080;
        v27 = v15;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) %s->%s (for %s, ac=%s, ho %s)", &v16, 0x3Eu);
      }

      v7[232] = v4;
      if (a4 && (v4 & 1) == 0 && v7[192] == 1 && (v7[224] & 1) == 0)
      {
        sub_100491D00(a1, a2);
      }
    }
  }
}

void sub_10049DA6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  (*(*v1 + 584))(&v2, v1);
  sub_100495E20(v1, &v2);
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10049DAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049DB00(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    v2 = a1 + 80 * a2;
    v4 = *(v2 + 233);
    v3 = (v2 + 233);
    if ((v4 & 1) == 0)
    {
      v5 = *(a1 + 72);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = "setDeactivating";
        v8 = 2080;
        v9 = asStringBool(0);
        v10 = 2080;
        v11 = asStringBool(1);
        v12 = 2080;
        v13 = asString();
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) %s->%s (for %s)", &v6, 0x2Au);
      }

      *v3 = 1;
    }
  }
}

void sub_10049DC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "resetDataActivator";
    v14 = 2080;
    v15 = asString();
    v16 = 2080;
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: resetting pdp activator on %s due to %s", &v12, 0x20u);
  }

  v7 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = 0;
  *(a1 + 352) = 0;
  do
  {
    v9 = dword_1018083B0[v8];
    if (v9 == v4 || anyContextType())
    {
      v10 = a1 + 192 + 80 * v9;
      *v10 = 0;
      *(v10 + 8) = "";
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 16) = "CommCenter";
      *(v10 + 40) = 0;
      if (*(v10 + 71) < 0)
      {
        operator delete(*(v10 + 48));
      }

      *(v10 + 72) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      if (*(a1 + 184) == v9)
      {
        *(a1 + 184) = 2;
      }

      v11 = *(a1 + 72);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I reset state due to resetDataActivator", &v12, 2u);
      }

      sub_100492120(a1, v9, 0, 1);
    }

    ++v8;
  }

  while (v8 != 2);
}

uint64_t sub_10049DE70@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 112);
  if (v2)
  {
    return (*(*(v2 + *(*v2 - 56)) + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_10049DEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_100094EA8(*(a1 + 136), a3))
  {
    v6 = sub_100094F40(*(a1 + 136), a3);
    v7 = v6 + 1;
    v8 = *v6;
    if (*v6 != v6 + 1)
    {
      do
      {
        v10 = v8[4];
        v9 = v8[5];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!(*(*v10 + 56))(v10))
        {
          v11 = *(a1 + 72);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v18 = "updateVoLTEDataCallType";
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Found BB data context! Now udpating VoLTE call type.", buf, 0xCu);
          }

          (*(*v10 + 568))(v10, a2);
        }

        if (v9)
        {
          sub_100004A34(v9);
        }

        v12 = v8[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v8[2];
            v14 = *v13 == v8;
            v8 = v13;
          }

          while (!v14);
        }

        v8 = v13;
      }

      while (v13 != v7);
    }
  }

  else
  {
    v15 = *(a1 + 72);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1017723E0(a3, v15, v16);
    }
  }
}

void sub_10049E0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = subscriber::asString();
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Update fLastActiveProfileConnectionMask = [Sim %s, 0x%llx]", &v7, 0x16u);
  }

  *(a1 + 360) = v4;
  *(a1 + 368) = a3;
}

uint64_t sub_10049E1B0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 136);
  v3 = *(v2 + 8);
  for (i = *(v2 + 16); v3 != i; v3 += 9)
  {
    v6 = *v3;
    if (*v3 != v3 + 1)
    {
      do
      {
        result = (*(*v6[4] + 216))(v6[4]);
        if ((result & 1) == 0)
        {
          result = (*(*v6[4] + 288))(v6[4], a2);
        }

        v7 = v6[1];
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
            v8 = v6[2];
            v9 = *v8 == v6;
            v6 = v8;
          }

          while (!v9);
        }

        v6 = v8;
      }

      while (v8 != v3 + 1);
    }
  }

  return result;
}

void sub_10049E2A4(void *a1, unsigned __int16 a2)
{
  v8 = 0;
  v9 = 0;
  (*(*a1 + 584))(&v8);
  if (v8)
  {
    *buf = 0uLL;
    v6 = v8;
    v7 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1000948C4(a1, 0, &v6, buf);
    if (v7)
    {
      sub_100004A34(v7);
    }

    if (*buf)
    {
      (*(**buf + 280))(*buf, a2);
    }

    else
    {
      v5 = a1[9];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 136315138;
        v11 = "setCoalescing";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: dataContext is empty", v10, 0xCu);
      }
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  else
  {
    v4 = a1[9];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "setCoalescing";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: personality is empty", buf, 0xCu);
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_10049E46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049E4B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[1];
  v12 = *a2;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = 0;
  v15 = 0;
  sub_1000948C4(a1, 0, &v12, &v14);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v10 = v14;
  if (v14)
  {
    sub_1000224C8(v18, a5);
    (*(*v10 + 264))(v10, a3, a4, v18);
    sub_10000FF50(v18);
  }

  else
  {
    v11 = *(a1 + 72);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "queryAnbrBitrate";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: dataContext is empty", buf, 0xCu);
    }

    sub_10000FFD0(a5, 0);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_10049E624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10000FF50(va);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10049E64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x10049E644);
  }

  JUMPOUT(0x10049E640);
}

void sub_10049E664(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v8 = *a2;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  v11 = 0;
  sub_1000948C4(a1, 0, &v8, &v10);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v6 = v10;
  if (v10)
  {
    sub_100457284(v14, a3);
    (*(*v6 + 272))(v6, v14);
    sub_1003F2928(v14);
  }

  else
  {
    v7 = *(a1 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "getAnbrActivationState";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: dataContext is empty", buf, 0xCu);
    }

    sub_100447630(a3, 0, 0);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_10049E7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1003F2928(va);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10049E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x10049E7E0);
  }

  JUMPOUT(0x10049E7DCLL);
}

void sub_10049E800(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[18];
  v5 = a1[19];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    v8 = a1[9];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = 0;
    v9 = "#E sendAnbrActivationState: do not have current settings";
    v10 = &v13;
    goto LABEL_13;
  }

  if (!*a2)
  {
    v8 = a1[9];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v12 = 0;
    v9 = "#E sendAnbrActivationState: empty personality";
    v10 = &v12;
    goto LABEL_13;
  }

  v7 = *(*a2 + 52);
  if (v7 == (*(*(v6 + *(*v6 - 56)) + 24))(v6 + *(*v6 - 56)))
  {
    (*(*v6 + 672))(v6, a3);
    goto LABEL_14;
  }

  v8 = a1[9];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 0;
    v9 = "#N sendAnbrActivationState: unmatching personality";
    v10 = &v11;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
  }

LABEL_14:
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10049E984(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049E9A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[18];
  v7 = a1[19];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v8)
  {
    v10 = a1[9];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = 0;
    v11 = "#E sendAnbrBitrateRecommendation: do not have current settings";
    v12 = &v15;
    goto LABEL_13;
  }

  if (!*a2)
  {
    v10 = a1[9];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v14 = 0;
    v11 = "#E sendAnbrBitrateRecommendation: empty personality";
    v12 = &v14;
    goto LABEL_13;
  }

  v9 = *(*a2 + 52);
  if (v9 == (*(*(v8 + *(*v8 - 56)) + 24))(v8 + *(*v8 - 56)))
  {
    (*(*v8 + 680))(v8, a3, a4);
    goto LABEL_14;
  }

  v10 = a1[9];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 0;
    v11 = "#N sendAnbrBitrateRecommendation: unmatching personality";
    v12 = &v13;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
  }

LABEL_14:
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10049EB30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049EB50(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_100489EC0(*(v1 + 128));
    *buf = 136315138;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ------- %s (PDPActivator) -------", buf, 0xCu);
    v2 = *(v1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 144);
    if (v4)
    {
      v5 = (*(*v4 + 48))(v4, 2);
    }

    else
    {
      v5 = "NULL";
    }

    *buf = 136315138;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fSettings.fActiveDataSettings = %s", buf, 0xCu);
    v2 = *(v1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v1 + 160);
    if (v6)
    {
      v7 = (*(*v6 + 48))(v6, 2);
    }

    else
    {
      v7 = "NULL";
    }

    *buf = 136315138;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fPendingDataSettings = %s", buf, 0xCu);
    v2 = *(v1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = asStringBool(*(v1 + 176) != 0);
    *buf = 136315138;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fHandoverBackoffTimer = %s", buf, 0xCu);
    v2 = *(v1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asStringBool(*(v1 + 352));
    *buf = 136315138;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fRetryScheduled = %s", buf, 0xCu);
    v2 = *(v1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = subscriber::asString();
    v11 = *(v1 + 368);
    *buf = 136315394;
    v29 = v10;
    v30 = 2048;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fLastActiveProfileConnectionMask = [Sim %s, 0x%llx]", buf, 0x16u);
  }

  v12 = 0;
  v25 = v1 + 192;
  do
  {
    v13 = dword_1018083B0[v12];
    v14 = *(v1 + 72);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = asString();
      *buf = 136315138;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t ContextType=%s:", buf, 0xCu);
      v14 = *(v1 + 72);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v25 + 80 * v13;
      v27 = asStringBool(*v16);
      v26 = asStringBool(*(v16 + 24));
      v17 = asStringBool(*(v16 + 32));
      v18 = v1;
      v20 = *(v16 + 8);
      v19 = *(v16 + 16);
      v21 = *(v16 + 36);
      v22 = asStringBool(*(v16 + 40));
      v23 = asStringBool(*(v16 + 41));
      *buf = 136316930;
      v29 = v27;
      v30 = 2080;
      v31 = v26;
      v32 = 2080;
      v33 = v17;
      v34 = 2080;
      v35 = v20;
      v36 = 2080;
      v37 = v19;
      v1 = v18;
      v38 = 1024;
      v39 = v21;
      v40 = 2080;
      v41 = v22;
      v42 = 2080;
      v43 = v23;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t fState.fActivationParams: active = %s, handover = %s, activationCompleted = %s, reason = %s, processName = %s, suspendMask = %d, probation = %s, deactivating = %s", buf, 0x4Eu);
    }

    ++v12;
  }

  while (v12 != 2);
  return (*(**(v1 + 112) + 80))(*(v1 + 112));
}

void sub_10049EFA4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 104);
  *(a1 + 96) = v3;
  *(a1 + 104) = v2;
  if (v4)
  {
    sub_100004A34(v4);
  }
}

BOOL sub_10049EFD0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    result = sub_10049F048(&v3[20 * dword_1018083B0[v2]], &v4[20 * dword_1018083B0[v2]]);
  }

  while (result && v2++ != 1);
  return result;
}

BOOL sub_10049F048(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[24] != a2[24] || *(a1 + 7) != *(a2 + 7) || a1[32] != a2[32] || *(a1 + 9) != *(a2 + 9) || a1[40] != a2[40] || a1[41] != a2[41] || strcmp(*(a1 + 1), *(a2 + 1)) || strcmp(*(a1 + 2), *(a2 + 2)))
  {
    return 0;
  }

  result = sub_100071DF8(a1 + 6, a2 + 6);
  if (result)
  {
    return a1[72] == a2[72];
  }

  return result;
}

void sub_10049F1B0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[7], v1, sub_10049F284);
  __cxa_rethrow();
}

void sub_10049F1F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10049F244(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10049F284(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_10049F2B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = sub_10049F4D8(v4, a2);
  for (i = 0; i != 4; i += 2)
  {
    v7 = *(a2 + 24 + i * 8);
    *&v4[i + 3] = v7;
    if (*(&v7 + 1))
    {
      atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  v8 = *(a2 + 64);
  v4[7] = *(a2 + 56);
  v4[8] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 8) = v4 + 9;
  return result;
}

uint64_t sub_10049F344(unint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1000CE3D4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_10049F530(a1, v6);
  }

  v17 = 0;
  v18 = 72 * v2;
  v19 = 72 * v2;
  v7 = sub_10049F4D8((72 * v2), a2);
  for (i = 0; i != 4; i += 2)
  {
    v9 = *(a2 + 24 + i * 8);
    *&v7[i + 3] = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  v10 = *(a2 + 64);
  v7[7] = *(a2 + 56);
  v7[8] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *&v19 = v19 + 72;
  v11 = a1[1];
  v12 = (v18 + *a1 - v11);
  sub_10049F58C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_10049F688(&v17);
  return v16;
}

void sub_10049F4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10049F688(va);
  _Unwind_Resume(a1);
}

void *sub_10049F4D8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1001177B0(a1, *a2, (a2 + 8));
  return a1;
}

void sub_10049F530(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10049F58C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = a4 - 9;
    v8 = a2;
    v9 = a4;
    do
    {
      result = sub_10049F4D8(v9, v8);
      for (i = 3; i != 7; i += 2)
      {
        v12 = *(v8 + i * 8);
        *&v9[i] = v12;
        if (*(&v12 + 1))
        {
          atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
        }
      }

      v13 = *(v8 + 64);
      v9[7] = *(v8 + 56);
      v9[8] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v8 += 72;
      v9 += 9;
      v6 -= 72;
      v7 += 9;
    }

    while (v8 != a3);
    while (v5 != a3)
    {
      result = sub_100117ED8(v5);
      v5 += 72;
    }
  }

  return result;
}

uint64_t sub_10049F688(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_100117ED8(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10049F6E8(uint64_t result, uint64_t a2)
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

void sub_10049F704(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void *sub_10049F714(uint64_t a1, unint64_t *a2, void *a3)
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
      v6 = v3[4];
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

uint64_t sub_10049F7F0(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_10049F860(a1, v4);
  return 1;
}

uint64_t *sub_10049F860(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_1000194D8(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_10049F8A0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10049F938(uint64_t a1)
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

uint64_t *sub_10049F9B8(uint64_t *a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 24);
      if (v5 && ((*(*v5 + 592))(*(v1 + 24)) & 1) != 0)
      {
        v6 = v5[17];
        (*(*v5 + 584))(&v21, v5);
        v7 = sub_100094EA8(v6, &v21);
        if (v22)
        {
          sub_100004A34(v22);
        }

        if (v7)
        {
          v8 = v5[17];
          (*(*v5 + 584))(&v21, v5);
          v9 = sub_100094F40(v8, &v21);
          if (v22)
          {
            sub_100004A34(v22);
          }

          v12 = *v9;
          v10 = v9 + 1;
          v11 = v12;
          if (v12 != v10)
          {
            do
            {
              v13 = v11[4];
              v14 = v11[5];
              if (v14)
              {
                atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v13 + 456))(v13, v1);
              if (v14)
              {
                sub_100004A34(v14);
              }

              v15 = v11[1];
              if (v15)
              {
                do
                {
                  v16 = v15;
                  v15 = *v15;
                }

                while (v15);
              }

              else
              {
                do
                {
                  v16 = v11[2];
                  v17 = *v16 == v11;
                  v11 = v16;
                }

                while (!v17);
              }

              v11 = v16;
            }

            while (v16 != v10);
          }
        }
      }

      sub_100004A34(v4);
    }
  }

  sub_10049FBF0(&v20);
  return sub_1000049E0(&v19);
}

void sub_10049FB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  sub_10049FBF0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10049FBF0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10049FC44(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18 = v1;
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 24);
      if (v5 && ((*(*v5 + 592))(*(v1 + 24)) & 1) != 0)
      {
        v6 = v5[17];
        (*(*v5 + 584))(&v19, v5);
        v7 = sub_100094EA8(v6, &v19);
        if (v20)
        {
          sub_100004A34(v20);
        }

        if (v7)
        {
          v8 = v5[17];
          (*(*v5 + 584))(&v19, v5);
          v9 = sub_100094F40(v8, &v19);
          if (v20)
          {
            sub_100004A34(v20);
          }

          v12 = *v9;
          v10 = v9 + 1;
          v11 = v12;
          if (v12 != v10)
          {
            do
            {
              (*(*v11[4] + 464))(v11[4], v1);
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
                  v15 = *v14 == v11;
                  v11 = v14;
                }

                while (!v15);
              }

              v11 = v14;
            }

            while (v14 != v10);
          }
        }
      }

      sub_100004A34(v4);
    }
  }

  sub_10049FBF0(&v18);
  return sub_1000049E0(&v17);
}

void sub_10049FE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  sub_10049FBF0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1004A010C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = BootstrapNetworkMonitor;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1004A069C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v39 - 96));
  if ((v38 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_100004A34(v36);

  _Unwind_Resume(a1);
}

void sub_1004A0C58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) attributedEntity];
  [v2 logMetrics:v3 processName:*(a1 + 48) inBytes:objc_msgSend(*(a1 + 56) outBytes:{"deltaRxCellularBytes"), objc_msgSend(*(a1 + 56), "deltaTxCellularBytes")}];
}

void sub_1004A0E04(void *a1)
{
  *a1 = off_101E4FF98;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();
}

void sub_1004A0E64(void *a1)
{
  sub_1004A0E04(a1);

  operator delete();
}

void *sub_1004A0E9C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ctu::OsLogContext::OsLogContext(&v19, kCtLoggingSystemName, "cp.bootstrap.accnt");
  sub_1004A1030(a1, "BootstrapAccountingManager", QOS_CLASS_UTILITY, &v19);
  ctu::OsLogContext::~OsLogContext(&v19);
  v10 = [BootstrapNetworkMonitor alloc];
  v11 = a1[2];
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = a2[1];
  v16 = *a2;
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v15 = *(a3 + 16);
  }

  a1[5] = [(BootstrapNetworkMonitor *)v10 initWithQueue:&object registry:&v16 operatorName:__p isRoaming:a4 withUsereSIM:a5];
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1004A0FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, dispatch_object_t object, char a18)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::~OsLogLogger((v18 + 4));
  sub_1000C0544(v18);
  _Unwind_Resume(a1);
}

void *sub_1004A1030(void *a1, const char *a2, dispatch_qos_class_t a3, const OsLogContext *a4)
{
  object = 0;
  sub_1000B9CE0(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger(&object, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), &object);
  ctu::OsLogLogger::~OsLogLogger(&object);
  return a1;
}

void sub_1004A1098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  ctu::OsLogLogger::~OsLogLogger(&object);
  sub_1000C0544(v10);
  _Unwind_Resume(a1);
}

void *sub_1004A1174(void *a1, uint64_t *a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4FFD0;
  sub_1004A1250(a1 + 3, a2, a3, a4, a5);
  return a1;
}

void sub_1004A11F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4FFD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004A1250(void *a1, uint64_t *a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v11 = *(a3 + 16);
  }

  sub_1004A0E9C(a1, a2, __p, *a4, *a5);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1004A12E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004A12FC(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 32));

  return sub_1000C0544(a1);
}

void sub_1004A1340()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void *sub_1004A144C(void *a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E50030;
  sub_1004A1544(a1 + 3, a2, a3, a4, a5);
  return a1;
}

void sub_1004A14C8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E50030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004A1544(void *a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v11 = *(a3 + 16);
  }

  sub_1004A0E00(a1, a2, __p, *a4, *a5);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1004A15D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::discoveryByAccount(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_101FBA418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA418))
  {
    sub_1001C7FB0(&unk_101FBA3D8, "^(\\*|[1-8])\\.([0-9]+)(\\..*)?$", 0);
  }

  memset(v48, 0, sizeof(v48));
  *__p = 0u;
  v47 = 0u;
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (sub_100200C08(v5, &v5[v4], __p, &unk_101FBA3D8, 0))
  {
    buf = 0uLL;
    v56 = 0;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
    v7 = __p[0] + 64;
    if (v6 <= 2)
    {
      v7 = v48 + 8;
    }

    if (*v7 == 1)
    {
      v8 = v6 > 2;
      if (v6 <= 2)
      {
        v9 = &v47 + 8;
      }

      else
      {
        v9 = __p[0] + 48;
      }

      v10 = (__p[0] + 56);
      if (!v8)
      {
        v10 = v48;
      }

      sub_1001CD6B4(&buf, *v9, *v10, &(*v10)[-*v9]);
      if (v56 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }
    }

    else
    {
      p_buf = &buf;
    }

    v45 = strtoull(p_buf, 0, 10);
    if (!v45)
    {
      v26 = *(a1 + 40);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v27 = a2;
        }

        else
        {
          v27 = *a2;
        }

        LODWORD(v53) = 136315138;
        *(&v53 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#E Cannot do discovery by account, appCategory=%s (2)", &v53, 0xCu);
      }

      goto LABEL_61;
    }

    v14 = (*(*a1 + 1120))(a1);
    if (!(*(*a1 + 2272))(a1, v14, 0))
    {
LABEL_61:
      if (SHIBYTE(v56) < 0)
      {
        operator delete(buf);
      }

      goto LABEL_63;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 104));
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
    *&v53 = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, &v53);
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
          goto LABEL_33;
        }

        goto LABEL_42;
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
LABEL_33:
      v25 = *(a1 + 40);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v53) = 0;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "slice persona featureState: phone service empty", &v53, 2u);
      }

LABEL_59:
      if ((v24 & 1) == 0)
      {
        sub_100004A34(v22);
      }

      goto LABEL_61;
    }

LABEL_42:
    v43 = 0;
    v44 = 0;
    v28 = (*(*a1 + 1120))(a1);
    (*(*v23 + 8))(&v43, v23, v28);
    if (v43)
    {
      *(&v53 + 1) = 0;
      v54 = 0;
      *&v53 = &v53 + 8;
      sub_1004C12FC(&v53, &v45, &v45);
      v29 = *(a1 + 40);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v30 = a2;
        }

        else
        {
          v30 = *a2;
        }

        *v49 = 136315394;
        *&v49[4] = v30;
        v50 = 2048;
        v51 = v45;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I discovery by account, appCategory=%s, genre=%llu", v49, 0x16u);
      }

      v31 = v43;
      sub_10000501C(v49, "xr");
      v32 = *(a1 + 5088);
      v41 = *(a1 + 5080);
      v42 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v31 + 184))(v31, v49, &v53, &v41);
      if (v42)
      {
        sub_100004A34(v42);
      }

      if (v52 < 0)
      {
        operator delete(*v49);
      }

      sub_10006DCAC(&v53, *(&v53 + 1));
    }

    else
    {
      v33 = *(a1 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_101772484(v33, v34, v35, v36, v37, v38, v39, v40);
      }
    }

    if (v44)
    {
      sub_100004A34(v44);
    }

    goto LABEL_59;
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E Cannot do discovery by account, appCategory=%s (1)", &buf, 0xCu);
  }

LABEL_63:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}