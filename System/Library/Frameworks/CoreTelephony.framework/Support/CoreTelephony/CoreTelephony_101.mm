void sub_100688030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, xpc_object_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, xpc_object_t object, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a28)
  {
    sub_100004A34(a28);
  }

  if (a36)
  {
    sub_100004A34(a36);
  }

  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a62 < 0)
  {
    operator delete(object);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  sub_100686358(&a67);
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1006882D4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 191);
  if (v3 >= 0)
  {
    v4 = *(*a2 + 191);
  }

  else
  {
    v4 = *(*a2 + 176);
  }

  v5 = *(a1 + 55);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 40);
  }

  if (v4 != v5)
  {
    return 0;
  }

  v9 = *(v2 + 168);
  v7 = (v2 + 168);
  v8 = v9;
  if (v3 < 0)
  {
    v7 = v8;
  }

  v12 = *(a1 + 32);
  v10 = (a1 + 32);
  v11 = v12;
  if (v6 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  return memcmp(v7, v13, v4) == 0;
}

void sub_100688350(uint64_t a1@<X0>, char *a2@<X1>, os_log_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_100007A6C(a1, a2);
  if (a1 + 8 == v7)
  {
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
    {
      sub_10177868C();
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v8 = v7;
    v9 = *(v7 + 56);
    {
      v11 = *(v8 + 64);
      *a4 = v10;
      a4[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
      {
        sub_101778614();
      }
    }
  }
}

void sub_100688458(uint64_t a1, uint64_t *a2, void **a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Incoming group chat update", buf, 2u);
  }

  *buf = 0;
  v31 = 0;
  v32 = 0;
  *&v33 = a3;
  *(&v33 + 1) = ims::lazuli::kConferenceFocus;
  sub_100006354(&v33, &object);
  __p[0] = 0;
  __p[1] = 0;
  v29 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  v7 = HIBYTE(v32);
  if (v32 < 0)
  {
    v7 = v31;
  }

  if (v7)
  {
    __p[0] = 0;
    __p[1] = 0;
    v29 = 0;
    v8 = sub_100C17FB8(&v33, buf);
    sub_100C16CE4(__p, v8);
    if (v34 < 0)
    {
      operator delete(v33);
    }

    object = 0;
    v27 = 0;
    v9 = *(a1 + 280);
    v10 = *(a1 + 288);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1174405120;
    v22 = sub_1006889C0;
    v23 = &unk_101E6FD80;
    if (SHIBYTE(v29) < 0)
    {
      sub_100005F2C(&v24, __p[0], __p[1]);
    }

    else
    {
      v24 = *__p;
      v25 = v29;
    }

    if (v9 != v10)
    {
      while (((v22)(v21, v9) & 1) == 0)
      {
        v9 += 16;
        if (v9 == v10)
        {
          v9 = v10;
          break;
        }
      }
    }

    if (v9 == *(a1 + 288))
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = __p;
        if (v29 < 0)
        {
          v13 = __p[0];
        }

        LODWORD(v33) = 136380675;
        *(&v33 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Group model active for: [%{private}s]", &v33, 0xCu);
      }

      v15 = *v9;
      v14 = *(v9 + 8);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      object = v15;
      v27 = v14;
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
      if (v15)
      {
LABEL_30:
        sub_1009CE7A0(v15, a2);
        v16 = *a3;
        v20 = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          v20 = xpc_null_create();
        }

        v18 = sub_100915154(v15, &v20);
        xpc_release(v20);
        v20 = 0;
        if (v18)
        {
          sub_10000501C(&v33, "After handling chat update");
          sub_100916028(v15, &v33);
          if (v34 < 0)
          {
            operator delete(v33);
          }

          sub_100688A74(a1, &object);
        }

        else
        {
          v19 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
          {
            sub_101778704();
          }
        }

LABEL_42:
        if (v14)
        {
          sub_100004A34(v14);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_46;
      }
    }

    else if (v15)
    {
      goto LABEL_30;
    }

    v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      sub_101778738();
    }

    goto LABEL_42;
  }

  v11 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    sub_10177876C();
  }

LABEL_46:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1006888C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  if (v34)
  {
    sub_100004A34(v34);
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1006889C0(uint64_t a1, void *a2)
{
  sub_1009CC9A8((*a2 + 48), __p);
  v3 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = *(a1 + 55);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 40);
  }

  if (v4 == v5)
  {
    if ((v15 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    v8 = v10;
    if (v6 >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = memcmp(v7, v11, v4) == 0;
    if (v3 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
    if (v15 < 0)
    {
LABEL_16:
      operator delete(__p[0]);
    }
  }

  return v12;
}

void sub_100688A74(uint64_t a1, uint64_t *a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v5 = ServiceMap;
  v6 = "17TMRouterInterface";
  if (("17TMRouterInterface" & 0x8000000000000000) != 0)
  {
    v7 = ("17TMRouterInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v11 = v10[3];
    v12 = v10[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v13 = 0;
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v13 = 1;
  if (!v11)
  {
LABEL_7:
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to find TMRouter", buf, 2u);
    }

    goto LABEL_92;
  }

LABEL_11:
  v101 = 0;
  memset(v100, 0, sizeof(v100));
  memset(v99, 0, sizeof(v99));
  memset(v98, 0, sizeof(v98));
  v96 = 0u;
  *__src = 0u;
  *buf = 0u;
  v95 = 0u;
  sub_10091601C(*a2, buf);
  v93 = 0;
  *v91 = 0u;
  v92 = 0u;
  *v90 = 0u;
  memset(v89, 0, sizeof(v89));
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  sub_1009166C8(*a2, &v86);
  if (v93)
  {
    memset(v85, 0, sizeof(v85));
    v83 = 0u;
    *v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    sub_1006AD1E4(&v78, &v86);
    v77[1] = 0;
    v77[0] = 0;
    v76 = v77;
    *v74 = 0u;
    v75 = 0u;
    sub_1000D43F8(v74, v100);
    v47 = a2;
    if (v79)
    {
      v15 = v78;
      if (v78 != (&v78 + 8))
      {
        v49 = 0u;
        v50 = 0u;
        *v48 = 0u;
        v16 = *(v78 + 56);
        v17 = *(v78 + 64);
        while (v16 != v17)
        {
          sub_100685200(a1, v16, __p);
          v18 = v50;
          if (v50 >= *(&v50 + 1))
          {
            *&v50 = sub_1006AD550(&v49 + 8, __p);
            if (SHIBYTE(v70) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v19 = *__p;
            *(v50 + 16) = v70;
            *v18 = v19;
            __p[1] = 0;
            v70 = 0;
            __p[0] = 0;
            v20 = v72;
            *(v18 + 24) = v71;
            *(v18 + 28) = v20;
            *&v50 = v18 + 32;
          }

          sub_100005BA0(&v76, v16, v16);
          v16 += 3;
        }

        sub_100C17E6C(__dst, v15 + 32);
        sub_100C171EC();
      }
    }

    else if (*(&v80 + 1))
    {
      v22 = *(&v79 + 1);
      if (*(&v79 + 1) != &v80)
      {
        v49 = 0u;
        v50 = 0u;
        *v48 = 0u;
        v23 = *(*(&v79 + 1) + 56);
        v24 = *(*(&v79 + 1) + 64);
        while (v23 != v24)
        {
          sub_100685200(a1, v23, __p);
          v25 = v50;
          if (v50 >= *(&v50 + 1))
          {
            *&v50 = sub_1006AD550(&v49 + 8, __p);
            if (SHIBYTE(v70) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v26 = *__p;
            *(v50 + 16) = v70;
            *v25 = v26;
            __p[1] = 0;
            v70 = 0;
            __p[0] = 0;
            v27 = v72;
            *(v25 + 24) = v71;
            *(v25 + 28) = v27;
            *&v50 = v25 + 32;
          }

          v23 += 24;
        }

        sub_100C17E6C(__dst, v22 + 32);
        sub_100C171EC();
      }
    }

    else if (v82)
    {
      v49 = 0u;
      v50 = 0u;
      *v48 = 0u;
      v28 = v81;
      if (v81 != (&v81 + 8))
      {
        do
        {
          sub_100685200(a1, (v28 + 2), __p);
          v29 = v50;
          if (v50 >= *(&v50 + 1))
          {
            *&v50 = sub_1006AD550(&v49 + 8, __p);
            if (SHIBYTE(v70) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v30 = *__p;
            *(v50 + 16) = v70;
            *v29 = v30;
            __p[1] = 0;
            v70 = 0;
            __p[0] = 0;
            v31 = v72;
            *(v29 + 24) = v71;
            *(v29 + 28) = v31;
            *&v50 = v29 + 32;
          }

          v32 = *(v28 + 1);
          if (v32)
          {
            do
            {
              v33 = v32;
              v32 = *v32;
            }

            while (v32);
          }

          else
          {
            do
            {
              v33 = *(v28 + 2);
              v34 = *v33 == v28;
              v28 = v33;
            }

            while (!v34);
          }

          v28 = v33;
        }

        while (v33 != (&v81 + 8));
      }

      v35 = *(a1 + 96);
      LOBYTE(__p[0]) = 0;
      v73 = 0;
      (*(*v11 + 408))(v11, v35, buf, v48, __p);
      if (v73 == 1 && SHIBYTE(v70) < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = &v49 + 8;
      sub_1000D48DC(__p);
      __p[0] = v48;
      sub_1000087B4(__p);
    }

    else
    {
      v45 = HIBYTE(v85[0]);
      v46 = HIBYTE(v85[0]);
      if (SHIBYTE(v85[0]) < 0)
      {
        v45 = v84[1];
      }

      if (v45)
      {
        __dst[0] = 0;
        __dst[1] = 0;
        v68 = 0;
        if (SHIBYTE(v85[3]) < 0)
        {
          sub_100005F2C(__dst, v85[1], v85[2]);
          v46 = HIBYTE(v85[0]);
        }

        else
        {
          *__dst = *&v85[1];
          v68 = v85[3];
        }

        v65[0] = 0;
        v65[1] = 0;
        v66 = 0;
        if (v46 < 0)
        {
          sub_100005F2C(v65, v84[0], v84[1]);
        }

        else
        {
          *v65 = *v84;
          v66 = v85[0];
        }

        if (SHIBYTE(v66) < 0)
        {
          sub_100005F2C(v48, v65[0], v65[1]);
        }

        else
        {
          *v48 = *v65;
          *&v49 = v66;
        }

        if (BYTE8(v75) == 1)
        {
          if (SBYTE7(v75) < 0)
          {
            operator delete(v74[0]);
          }

          *v74 = *v48;
          *&v75 = v49;
        }

        else
        {
          *v74 = *v48;
          *&v75 = v49;
          BYTE8(v75) = 1;
        }

        sub_100C17E6C(__p, __dst);
        sub_100C171EC();
      }
    }

    if (*(a1 + 240))
    {
      v36 = v76;
      if (v76 != v77)
      {
        do
        {
          v37 = *(a1 + 240);
          LOBYTE(v62) = 0;
          v64 = 0;
          sub_100B9C9F8(v37, v36 + 4, 0, &v62);
          if (v64 == 1 && v63 < 0)
          {
            operator delete(v62);
          }

          v38 = *(v36 + 1);
          if (v38)
          {
            do
            {
              v39 = v38;
              v38 = *v38;
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = *(v36 + 2);
              v34 = *v39 == v36;
              v36 = v39;
            }

            while (!v34);
          }

          v36 = v39;
        }

        while (v39 != v77);
      }
    }

    sub_1009166D4(*v47);
    if ((sub_100915E20(*v47) & 1) == 0)
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v68 = 0;
      sub_10004EFD0(__dst, *(&v82 + 1), v83, 0xAAAAAAAAAAAAAAABLL * ((v83 - *(&v82 + 1)) >> 3));
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      memset(v53, 0, sizeof(v53));
      memset(v52, 0, sizeof(v52));
      v50 = 0u;
      memset(v51, 0, sizeof(v51));
      *v48 = 0u;
      v49 = 0u;
      if (SHIBYTE(v98[0]) < 0)
      {
        sub_100005F2C(v51, __src[0], __src[1]);
      }

      else
      {
        v51[0] = *__src;
        *&v51[1] = v98[0];
      }

      if (SHIBYTE(v98[3]) < 0)
      {
        sub_100005F2C(&v51[1] + 8, v98[1], v98[2]);
      }

      else
      {
        *(&v51[1] + 8) = *&v98[1];
        *(&v51[2] + 1) = v98[3];
      }

      sub_1000D42EC(v52, v99);
      sub_1000D43F8(v53, v74);
      LOBYTE(v54) = 0;
      BYTE8(v58) = 0;
      *&v60 = 0;
      v59 = 0uLL;
      DWORD2(v60) = -1;
      BYTE12(v60) = 0;
      LOBYTE(v61) = 0;
      v41 = __dst[0];
      for (i = __dst[1]; v41 != i; v41 += 24)
      {
        sub_100685200(a1, v41, __p);
        v42 = v50;
        if (v50 >= *(&v50 + 1))
        {
          *&v50 = sub_1006AD550(&v49 + 8, __p);
          if (SHIBYTE(v70) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v43 = *__p;
          *(v50 + 16) = v70;
          *v42 = v43;
          __p[1] = 0;
          v70 = 0;
          __p[0] = 0;
          v44 = v72;
          *(v42 + 24) = v71;
          *(v42 + 28) = v44;
          *&v50 = v42 + 32;
        }
      }

      (*(*v11 + 432))(v11, *(a1 + 96), v48);
      sub_100915E18(*v47, 1);
      sub_1000D45B0(v48);
      *v48 = __dst;
      sub_1000087B4(v48);
    }

    if (BYTE8(v75) == 1 && SBYTE7(v75) < 0)
    {
      operator delete(v74[0]);
    }

    sub_100009970(&v76, v77[0]);
    if (SHIBYTE(v85[3]) < 0)
    {
      operator delete(v85[1]);
    }

    if (SHIBYTE(v85[0]) < 0)
    {
      operator delete(v84[0]);
    }

    *v48 = &v82 + 8;
    sub_1000087B4(v48);
    sub_100009970(&v81, *(&v81 + 1));
    sub_100580908(&v79 + 8, v80);
    sub_100580908(&v78, *(&v78 + 1));
  }

  else
  {
    v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Nothing to update. Missing yielder", v48, 2u);
    }

    if ((sub_100915E20(*a2) & 1) == 0)
    {
      (*(*v11 + 432))(v11, *(a1 + 96), buf);
      sub_100915E18(*a2, 1);
    }
  }

  if (v93 == 1)
  {
    if (SHIBYTE(v92) < 0)
    {
      operator delete(v91[1]);
    }

    if (SHIBYTE(v91[0]) < 0)
    {
      operator delete(v90[0]);
    }

    *v48 = &v89[1] + 8;
    sub_1000087B4(v48);
    sub_100009970(v89, *(&v89[0] + 1));
    sub_100580908(&v87 + 8, v88);
    sub_100580908(&v86, *(&v86 + 1));
  }

  sub_1000D45B0(buf);
LABEL_92:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_100689974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (LOBYTE(STACK[0x218]) == 1 && SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  sub_100009970(&STACK[0x228], STACK[0x230]);
  sub_10057F588(&STACK[0x240]);
  sub_1006AD678(&STACK[0x2D0]);
  sub_1000D45B0(&STACK[0x370]);
  if ((a12 & 1) == 0)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(a1);
}

void sub_100689C34(uint64_t a1, uint64_t a2, void **a3)
{
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v24[0] = a3;
  v24[1] = ims::lazuli::kTransactionId;
  sub_100006354(v24, __dst);
  __p[0] = 0;
  __p[1] = 0;
  *&v28 = 0;
  xpc::dyn_cast_or_default();
  if (SBYTE7(v28) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(*__dst);
  v5 = HIBYTE(v34);
  if (v34 < 0)
  {
    v5 = v33[1];
  }

  if (v5)
  {
    v31 = 0;
    v32 = 0;
    v6 = *(a1 + 376);
    v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    sub_10068A2EC(v6, v33, v7, &v31);
    if (!v31)
    {
      v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        sub_101778808();
      }

      goto LABEL_48;
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    *__p = 0u;
    v8 = *a3;
    object = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      object = xpc_null_create();
    }

    sub_100685DF8(&object, __p);
    xpc_release(object);
    object = 0;
    if (LOBYTE(__p[0]) == 1)
    {
      sub_1000D2278(v31 + 16, v33);
    }

    else
    {
      sub_1000D231C(v31 + 16, v33);
    }

    v11 = sub_1000D23C0(v31 + 16);
    v12 = *(**(a1 + 48) + 16);
    if (v11)
    {
      v13 = *v12();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I All responses recieved", v24, 2u);
      }

      *v24 = 0u;
      v25 = 0u;
      v14 = sub_1000D37F8(*(a1 + 376), v33, v24);
      v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96), v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000D23F0(v31 + 16, __dst);
        v16 = v36 >= 0 ? __dst : *__dst;
        *buf = 136315138;
        v38 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %{publics}s", buf, 0xCu);
        if (SHIBYTE(v36) < 0)
        {
          operator delete(*__dst);
        }
      }

      if (BYTE8(v25))
      {
        v17 = sub_100685698(a1, v24, __p);
        v18 = *(a1 + 376);
        if (v17)
        {
          v19 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          sub_1000D3C90(v18, v33, 0, v19);
        }

        else
        {
          if (SHIBYTE(v34) < 0)
          {
            sub_100005F2C(__dst, v33[0], v33[1]);
          }

          else
          {
            *__dst = *v33;
            v36 = v34;
          }

          v23 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          sub_1000D379C(v18, __dst, v23);
          if (SHIBYTE(v36) < 0)
          {
            operator delete(*__dst);
          }
        }
      }

      else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017787A0();
      }

      if (BYTE8(v25) != 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v20 = *v12();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24[0]) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I More responses pending", v24, 2u);
      }

      v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      sub_1000D23F0(v31 + 16, v24);
      if ((SBYTE7(v25) & 0x80u) == 0)
      {
        v22 = v24;
      }

      else
      {
        v22 = v24[0];
      }

      *__dst = 136315138;
      *&__dst[4] = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %{publics}s", __dst, 0xCu);
    }

    if (SBYTE7(v25) < 0)
    {
      operator delete(v24[0]);
    }

LABEL_46:
    v24[0] = &v29;
    sub_1000087B4(v24);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[1]);
    }

LABEL_48:
    if (v32)
    {
      sub_100004A34(v32);
    }

    goto LABEL_50;
  }

  v9 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    sub_101778870();
  }

LABEL_50:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }
}

void sub_10068A1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, xpc_object_t object, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_100686358(&a18);
  if (a29)
  {
    sub_100004A34(a29);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void sub_10068A2EC(void *a1@<X0>, uint64_t a2@<X1>, os_log_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1 + 1;
  v8 = *a1;
  if (*a1 == a1 + 1)
  {
LABEL_10:
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
    {
      sub_101778950();
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    while (1)
    {
      v9 = v8[7];
      if (v9)
      {
        if ((*(*v9 + 24))(v9, a2))
        {
          break;
        }
      }

      v10 = v8[1];
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
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
      if (v11 == v7)
      {
        goto LABEL_10;
      }
    }

    *a4 = 0;
    a4[1] = 0;
    v13 = v8[7];
    {
      v15 = v8[8];
      *a4 = v14;
      a4[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
      {
        sub_1017788E0();
      }
    }
  }
}

void sub_10068A45C(uint64_t a1, uint64_t a2, void **a3)
{
  v32 = 0uLL;
  v33 = 0;
  v23[0] = a3;
  v23[1] = ims::lazuli::kTransactionId;
  sub_100006354(v23, buf);
  __p[0] = 0;
  __p[1] = 0;
  *&v27 = 0;
  xpc::dyn_cast_or_default();
  if (SBYTE7(v27) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(*buf);
  v5 = HIBYTE(v33);
  if (v33 < 0)
  {
    v5 = *(&v32 + 1);
  }

  if (v5)
  {
    v30 = 0;
    v31 = 0;
    v6 = *(a1 + 376);
    v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    sub_10068AB14(v6, &v32, v7, &v30);
    if (!v30)
    {
      v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        sub_1017789C0();
      }

      goto LABEL_48;
    }

    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    *__p = 0u;
    v8 = *a3;
    object = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      object = xpc_null_create();
    }

    sub_100685DF8(&object, __p);
    xpc_release(object);
    object = 0;
    if (LOBYTE(__p[0]) == 1)
    {
      sub_1000D2278(v30 + 16, &v32);
    }

    else
    {
      sub_1000D231C(v30 + 16, &v32);
    }

    v11 = sub_1000D23C0(v30 + 16);
    v12 = *(**(a1 + 48) + 16);
    if (v11)
    {
      v13 = *v12();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I All responses recieved", v23, 2u);
      }

      v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000D23F0(v30 + 16, v23);
        v15 = (SBYTE7(v24) & 0x80u) == 0 ? v23 : v23[0];
        *buf = 136315138;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %{publics}s", buf, 0xCu);
        if (SBYTE7(v24) < 0)
        {
          operator delete(v23[0]);
        }
      }

      *v23 = 0u;
      v24 = 0u;
      sub_1000D37F8(*(a1 + 376), &v32, v23);
      if (BYTE8(v24))
      {
        v16 = sub_100685698(a1, v23, __p);
        v17 = *(a1 + 376);
        if (v16)
        {
          v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          sub_1000D3C90(v17, &v32, 0, v18);
        }

        else
        {
          if (SHIBYTE(v33) < 0)
          {
            sub_100005F2C(buf, v32, *(&v32 + 1));
          }

          else
          {
            *buf = v32;
            v35 = v33;
          }

          v22 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          sub_1000D379C(v17, buf, v22);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017787A0();
      }

      if (BYTE8(v24) != 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = *v12();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23[0]) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I More responses pending", v23, 2u);
      }

      v20 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      sub_1000D23F0(v30 + 16, v23);
      if ((SBYTE7(v24) & 0x80u) == 0)
      {
        v21 = v23;
      }

      else
      {
        v21 = v23[0];
      }

      *buf = 136315138;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %{publics}s", buf, 0xCu);
    }

    if (SBYTE7(v24) < 0)
    {
      operator delete(v23[0]);
    }

LABEL_46:
    v23[0] = &v28;
    sub_1000087B4(v23);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[1]);
    }

LABEL_48:
    if (v31)
    {
      sub_100004A34(v31);
    }

    goto LABEL_50;
  }

  v9 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    sub_101778A28();
  }

LABEL_50:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }
}

void sub_10068AA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, xpc_object_t object, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_100686358(&a18);
  if (a29)
  {
    sub_100004A34(a29);
  }

  if (*(v29 - 81) < 0)
  {
    operator delete(*(v29 - 104));
  }

  _Unwind_Resume(a1);
}

void sub_10068AB14(void *a1@<X0>, uint64_t a2@<X1>, os_log_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1 + 1;
  v8 = *a1;
  if (*a1 == a1 + 1)
  {
LABEL_10:
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
    {
      sub_101778950();
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    while (1)
    {
      v9 = v8[7];
      if (v9)
      {
        if ((*(*v9 + 24))(v9, a2))
        {
          break;
        }
      }

      v10 = v8[1];
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
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
      if (v11 == v7)
      {
        goto LABEL_10;
      }
    }

    *a4 = 0;
    a4[1] = 0;
    v13 = v8[7];
    {
      v15 = v8[8];
      *a4 = v14;
      a4[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
      {
        sub_1017788E0();
      }
    }
  }
}

void sub_10068AC84(uint64_t a1, uint64_t a2, void **a3)
{
  v33 = 0uLL;
  v34 = 0;
  v31 = a3;
  v32 = ims::lazuli::kTransactionId;
  sub_100006354(&v31, buf);
  __p[0] = 0;
  __p[1] = 0;
  *&v28 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(*buf);
  v5 = HIBYTE(v34);
  if (v34 < 0)
  {
    v5 = *(&v33 + 1);
  }

  if (v5)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    *__p = 0u;
    v6 = *a3;
    object = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object = xpc_null_create();
    }

    sub_100685DF8(&object, __p);
    xpc_release(object);
    object = 0;
    if (!sub_100685698(a1, &v33, __p))
    {
LABEL_39:
      v31 = &v29;
      sub_1000087B4(&v31);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[1]);
      }

      goto LABEL_41;
    }

    v31 = 0;
    v32 = 0;
    v8 = *(a1 + 376);
    if (SHIBYTE(v34) < 0)
    {
      sub_100005F2C(__dst, v33, *(&v33 + 1));
    }

    else
    {
      *__dst = v33;
      v25 = v34;
    }

    v9 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    sub_10068B1C8(v8, __dst, v9, &v31);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__dst[0]);
    }

    if (!v31)
    {
      v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = &v33;
        if (v34 < 0)
        {
          v11 = v33;
        }

        *buf = 136446210;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Failed to retrieve leave group chat request from operation store for transactionID: %{public}s", buf, 0xCu);
      }

      v12 = *(a1 + 376);
      if (SHIBYTE(v34) < 0)
      {
        sub_100005F2C(v22, v33, *(&v33 + 1));
      }

      else
      {
        *v22 = v33;
        v23 = v34;
      }

      v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      sub_1000D38F0(v12, v22, 0x100000005, v13);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }
    }

    v14 = *(a1 + 376);
    if (__p[0])
    {
      if (SHIBYTE(v34) < 0)
      {
        sub_100005F2C(&v18, v33, *(&v33 + 1));
      }

      else
      {
        v18 = v33;
        v19 = v34;
      }

      v15 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      sub_1000D38F0(v14, &v18, 0, v15);
      if (SHIBYTE(v19) < 0)
      {
        v16 = &v18;
LABEL_36:
        operator delete(*v16);
      }
    }

    else
    {
      if (SHIBYTE(v34) < 0)
      {
        sub_100005F2C(&v20, v33, *(&v33 + 1));
      }

      else
      {
        v20 = v33;
        v21 = v34;
      }

      v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      sub_1000D38F0(v14, &v20, 0x100000005, v17);
      if (SHIBYTE(v21) < 0)
      {
        v16 = &v20;
        goto LABEL_36;
      }
    }

    if (v32)
    {
      sub_100004A34(v32);
    }

    goto LABEL_39;
  }

  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_101778A98();
  }

LABEL_41:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }
}

void sub_10068B0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, xpc_object_t object, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  v44 = *(v42 - 96);
  if (v44)
  {
    sub_100004A34(v44);
  }

  sub_100686358(&a37);
  if (*(v42 - 65) < 0)
  {
    operator delete(*(v42 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_10068B1C8(uint64_t a1@<X0>, char *a2@<X1>, os_log_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_100007A6C(a1, a2);
  if (a1 + 8 == v7)
  {
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
    {
      sub_10177868C();
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v8 = v7;
    v9 = *(v7 + 56);
    {
      v11 = *(v8 + 64);
      *a4 = v10;
      a4[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
      {
        sub_101778614();
      }
    }
  }
}

void sub_10068B2D0(uint64_t a1, void **a2)
{
  v3 = *(a1 + 400);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 392);
      if (v6)
      {
        v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Forwarding capability response", buf, 2u);
        }

        v8 = *(a1 + 96);
        v9 = *a2;
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v6 + 80))(v6, v8, &object);
        xpc_release(object);
        object = 0;
        goto LABEL_14;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    sub_101778B08();
    if (!v5)
    {
      return;
    }

LABEL_14:
    sub_100004A34(v5);
    return;
  }

  if (v5)
  {
    goto LABEL_14;
  }
}

void sub_10068B454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10068B490(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = *(a1 + 400);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7 && *(a1 + 392))
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      sub_1006827C4(a3);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_101777D94();
  }

  v9 = *(a1 + 432);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    v13 = *(a2 + 2);
  }

  LODWORD(v11) = 2;
  sub_1006A6C00(v15, v10);
  v15[10] = 1;
  (*(*v9 + 40))(v9, __p, v14);
  sub_1006A6C9C(v15);
  sub_100584588(v10);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10068B828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v53 < 0)
  {
    operator delete(a36);
  }

  sub_100004A34(v52);
  _Unwind_Resume(a1);
}

void sub_10068B904(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (sub_10068BFF8(a3, "tel:"))
  {
    sub_100C161EC(v28, a3);
    sub_100679DF8(a1, v28, buf);
    v7 = *buf;
    v6 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    if (SBYTE7(v29) < 0)
    {
      operator delete(v28[0]);
      if (!v7)
      {
LABEL_74:
        v22 = *(a1 + 432);
        if (v22)
        {
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(&__dst, *a2, *(a2 + 1));
          }

          else
          {
            __dst = *a2;
            v47 = *(a2 + 2);
          }

          DWORD2(v29) = 2;
          sub_1006A6DB8(v51, v28);
          v51[10] = 0;
          (*(*v22 + 40))(v22, &__dst, v50);
          sub_1006A6C9C(v51);
          sub_100584468(v28);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__dst);
          }
        }

        goto LABEL_71;
      }
    }

    else if (!v7)
    {
      goto LABEL_74;
    }
  }

  else
  {
    sub_1006790C4(a1, a3, v28);
    v7 = v28[0];
    v6 = v28[1];
    if (!v28[0])
    {
      *__p = 0u;
      *v32 = 0u;
      v29 = 0u;
      *v30 = 0u;
      *v28 = 0u;
      sub_100679330(a1, a3, v28);
      if (LOBYTE(v32[1]) != 1)
      {
        goto LABEL_74;
      }

      sub_100C17FB8(buf, &v29 + 8);
      sub_100679904(a1, buf, &v48);
      v7 = v48;
      v8 = v49;
      v48 = 0;
      v49 = 0;
      if (v6)
      {
        sub_100004A34(v6);
        if (v49)
        {
          sub_100004A34(v49);
        }
      }

      if (v53 < 0)
      {
        operator delete(*buf);
      }

      if (v32[1])
      {
        if (SHIBYTE(v32[0]) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v30[1]) < 0)
        {
          operator delete(*(&v29 + 1));
        }

        if (SBYTE7(v29) < 0)
        {
          operator delete(v28[0]);
        }
      }

      v6 = v8;
      if (!v7)
      {
        goto LABEL_74;
      }
    }
  }

  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  v37 = 0;
  LOBYTE(v38) = 0;
  v40 = 0;
  LOBYTE(v41) = 0;
  v43 = 0;
  *v28 = 0u;
  v29 = 0u;
  *v30 = 0u;
  *__p = 0u;
  *v32 = 0u;
  *v33 = 0u;
  v34 = 0u;
  LOBYTE(v35) = 0;
  sub_1009CE42C(v7, v44, v28);
  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 == 1 && v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v37 == 1 && v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v33[1])
  {
    *&v34 = v33[1];
    operator delete(v33[1]);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  if (v30[1])
  {
    __p[0] = v30[1];
    operator delete(v30[1]);
  }

  if (SBYTE7(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  v48 = 0;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    v48 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v48 = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_48;
    }
  }

  if (xpc_get_type(v10) != &_xpc_type_dictionary)
  {
    v11 = xpc_null_create();
LABEL_48:
    v48 = v11;
    goto LABEL_49;
  }

  xpc_retain(v10);
LABEL_49:
  xpc_release(v10);
  if (*(a2 + 23) >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  v26 = xpc_string_create(v12);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v28[0] = &v48;
  v28[1] = ims::lazuli::kTransactionId;
  sub_10000F688(v28, &v26, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v26);
  v26 = 0;
  v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  v25 = v48;
  if (v48)
  {
    xpc_retain(v48);
  }

  else
  {
    v25 = xpc_null_create();
  }

  sub_100914268(&v7[6].__r_.__value_.__l.__size_, v13, &v25);
  xpc_release(v25);
  v25 = 0;
  v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOBYTE(v23) = 0;
    v24 = 0;
    sub_1009131E4(&v23, v28);
    v15 = v28[0];
    if ((SBYTE7(v29) & 0x80u) == 0)
    {
      v15 = v28;
    }

    v16 = &v7[7];
    if (SHIBYTE(v7[7].__r_.__value_.__r.__words[2]) < 0)
    {
      v16 = v16->__words[0];
    }

    *buf = 134218242;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Caching chat wrapper (%p)[%s] with ongoing INFO request", buf, 0x16u);
    if (SBYTE7(v29) < 0)
    {
      operator delete(v28[0]);
    }

    if (v24 == 1)
    {
      xpc_release(v23);
      v23 = 0;
    }
  }

  v28[0] = a2;
  v17 = sub_1006B63BC((a1 + 352), a2, &unk_101802C98, v28, buf);
  v18 = v17;
  size = v7[6].__r_.__value_.__l.__size_;
  v19 = v7[6].__r_.__value_.__r.__words[2];
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = v17[2].__r_.__value_.__r.__words[2];
  v18[2].__r_.__value_.__l.__size_ = size;
  v18[2].__r_.__value_.__r.__words[2] = v19;
  if (v21)
  {
    sub_100004A34(v21);
  }

  std::string::operator=(v18 + 3, v7 + 7);
  xpc_release(v48);
LABEL_71:
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10068BECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v20)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10068BFF8(uint64_t **a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = a1;
    a1 = *a1;
    v5 = v6[1];
  }

  v8[0] = a1;
  v8[1] = v5;
  return sub_1006A6D04(v8, __s, v4);
}

uint64_t sub_10068C04C(uint64_t a1)
{
  if (*(a1 + 200) == 1 && *(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 168) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      *(a1 + 152) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 112);
    if (v3)
    {
      *(a1 + 120) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    *(a1 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10068C104(uint64_t a1, __int128 *a2, __int128 *a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v80 = 0uLL;
  v81 = 0;
  sub_100A972E8(&v80);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  memset(v66, 0, sizeof(v66));
  v64 = 0u;
  sub_100B27D98(&v64);
  sub_100B27E08(&v64, "imdn <urn:ietf:params:imdn>");
  if (v81 >= 0)
  {
    v6 = &v80;
  }

  else
  {
    v6 = v80;
  }

  sub_100B27E1C(&v64, "imdn.Message-ID", v6);
  sub_100B27E08(&v64, "mls <http://www.gsma.com/rcs/mls>");
  ctu::base64::encode();
  if ((SBYTE7(v49) & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  sub_100B27E1C(&v64, "mls.Epoch-Authenticator", v7);
  if (SBYTE7(v49) < 0)
  {
    operator delete(__p[0]);
  }

  std::to_string(__p, *(a3 + 3));
  if ((SBYTE7(v49) & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  sub_100B27E1C(&v64, "mls.Era-Id", v8);
  if (SBYTE7(v49) < 0)
  {
    operator delete(__p[0]);
  }

  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  *__p = 0u;
  sub_100BE2724(__p, "message/mls-rcs-client");
  if (!sub_10068BFF8(a3, "tel:"))
  {
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a3, *(a3 + 1));
    }

    else
    {
      __dst = *a3;
      v30 = *(a3 + 2);
    }

    if (SHIBYTE(v81) < 0)
    {
      sub_100005F2C(&v27, v80, *(&v80 + 1));
    }

    else
    {
      v27 = v80;
      v28 = v81;
    }

    sub_10067A1B4(a1, &__dst, &v27, &v31);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(__dst);
    }

    if (v47 != 1)
    {
      v9 = 0;
      goto LABEL_35;
    }

    sub_100679904(a1, &v46[8], v19);
    v10 = v19[0];
    v9 = v19[1];
    if (v47)
    {
      sub_100C18C58(&v31);
    }

    goto LABEL_31;
  }

  sub_100C161EC(&v31, a3);
  sub_100679DF8(a1, &v31, v19);
  v10 = v19[0];
  v9 = v19[1];
  v19[0] = 0;
  v19[1] = 0;
  if ((SBYTE7(v32) & 0x80000000) == 0)
  {
LABEL_31:
    if (!v10)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  operator delete(v31);
  if (!v10)
  {
LABEL_35:
    v11 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      sub_101778B70();
    }

    v12 = *(a1 + 432);
    if (v12)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v25, *a2, *(a2 + 1));
      }

      else
      {
        v25 = *a2;
        v26 = *(a2 + 2);
      }

      v24 = 5;
      (*(*v12 + 24))(v12, &v25, v23);
      sub_1006A6204(v23);
      if (SHIBYTE(v26) < 0)
      {
        v13 = &v25;
        goto LABEL_67;
      }
    }

    goto LABEL_68;
  }

LABEL_32:
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  sub_100581E40(&v31, a3);
  sub_100BE2728(__p, a3 + 18, v18);
  sub_100B27EC8(&v64, v18, v19);
  v40 = *v19;
  *&v41 = v20;
  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  BYTE8(v41) = 1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v42, *a2, *(a2 + 1));
  }

  else
  {
    v42 = *a2;
    *&v43 = *(a2 + 2);
  }

  BYTE8(v43) = 1;
  sub_1009CE42C(v10, v21, &v31);
  if (BYTE8(v43) == 1 && SBYTE7(v43) < 0)
  {
    operator delete(v42);
  }

  if (BYTE8(v41) == 1 && v40)
  {
    *(&v40 + 1) = v40;
    operator delete(v40);
  }

  if (BYTE8(v39) == 1 && v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (*(&v36 + 1))
  {
    *&v37 = *(&v36 + 1);
    operator delete(*(&v36 + 1));
  }

  if (v35)
  {
    *(&v35 + 1) = v35;
    operator delete(v35);
  }

  if (*(&v33 + 1))
  {
    *&v34 = *(&v33 + 1);
    operator delete(*(&v33 + 1));
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(v31);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    v13 = v21;
LABEL_67:
    operator delete(*v13);
  }

LABEL_68:
  if (v9)
  {
    sub_100004A34(v9);
  }

  v17 = v15;
  *&v49 = v15;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(*(&v51 + 1));
  }

  std::locale::~locale(v50);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  *&v64 = v14;
  *(&v64 + *(v14 - 3)) = v16;
  *&v65 = v17;
  if (SHIBYTE(v68) < 0)
  {
    operator delete(*(&v67 + 1));
  }

  std::locale::~locale(v66);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80);
  }
}

void sub_10068C834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v65)
  {
    sub_100004A34(v65);
  }

  sub_10068C9D8(&a65);
  sub_10068C9D8(&STACK[0x310]);
  if (*(v66 - 65) < 0)
  {
    operator delete(*(v66 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10068C9D8(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void sub_10068CB2C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v113 = 0uLL;
  v114 = 0;
  sub_100A972E8(&v113);
  v112 = 0;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  memset(v99, 0, sizeof(v99));
  v98 = 0u;
  v97 = 0u;
  sub_100B27D98(&v97);
  sub_100B27E08(&v97, "imdn <urn:ietf:params:imdn>");
  if (v114 >= 0)
  {
    v6 = &v113;
  }

  else
  {
    v6 = v113;
  }

  sub_100B27E1C(&v97, "imdn.Message-ID", v6);
  sub_100B27E08(&v97, "mls <http://www.gsma.com/rcs/mls>");
  ctu::base64::encode();
  if ((SBYTE7(v82) & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  sub_100B27E1C(&v97, "mls.Epoch-Authenticator", v7);
  if (SBYTE7(v82) < 0)
  {
    operator delete(__p[0]);
  }

  std::to_string(__p, *(a3 + 3));
  if ((SBYTE7(v82) & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  sub_100B27E1C(&v97, "mls.Era-Id", v8);
  if (SBYTE7(v82) < 0)
  {
    operator delete(__p[0]);
  }

  v96 = 0;
  v95 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  memset(v83, 0, sizeof(v83));
  *__p = 0u;
  v82 = 0u;
  sub_100BE2724(__p, "message/mls-rcs-client");
  v79 = 0;
  v78 = 0;
  v80 = 0;
  sub_100BE2728(__p, a3 + 18, &v60);
  sub_100B27EC8(&v97, &v60, &v78);
  if (v60)
  {
    *(&v60 + 1) = v60;
    operator delete(v60);
  }

  if (sub_10068BFF8(a3, "tel:"))
  {
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a3, *(a3 + 1));
    }

    else
    {
      __dst = *a3;
      v59 = *(a3 + 2);
    }

    if (SHIBYTE(v114) < 0)
    {
      sub_100005F2C(&v56, v113, *(&v113 + 1));
    }

    else
    {
      v56 = v113;
      v57 = v114;
    }

    sub_10067A6E0(a1, &__dst, &v56, &v60);
    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56);
    }

    if (SHIBYTE(v59) < 0)
    {
      operator delete(__dst);
    }

    if (v77)
    {
      v51 = 0uLL;
      sub_100C161EC(&v31, a3);
      sub_100679DF8(a1, &v31, &v51);
      if (SBYTE7(v32) < 0)
      {
        operator delete(v31);
      }

      v9 = v51;
      v49[1] = 0;
      v50 = 0;
      v49[0] = 0;
      sub_100581E40(&v31, a3);
      LOBYTE(v40) = 0;
      BYTE8(v41) = 0;
      LOBYTE(v42) = 0;
      BYTE8(v43) = 0;
      sub_1009CE42C(v9, v49, &v31);
      if (BYTE8(v43) == 1 && SBYTE7(v43) < 0)
      {
        operator delete(v42);
      }

      if (BYTE8(v41) == 1 && v40)
      {
        *(&v40 + 1) = v40;
        operator delete(v40);
      }

      if (BYTE8(v39) == 1 && v38)
      {
        *(&v38 + 1) = v38;
        operator delete(v38);
      }

      if (*(&v36 + 1))
      {
        *&v37 = *(&v36 + 1);
        operator delete(*(&v36 + 1));
      }

      if (v35)
      {
        *(&v35 + 1) = v35;
        operator delete(v35);
      }

      if (*(&v33 + 1))
      {
        *&v34 = *(&v33 + 1);
        operator delete(*(&v33 + 1));
      }

      if (SBYTE7(v32) < 0)
      {
        operator delete(v31);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49[0]);
      }

      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v29, *a2, *(a2 + 1));
      }

      else
      {
        v29 = *a2;
        v30 = *(a2 + 2);
      }

      sub_100BA2C04();
    }

    v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      sub_101778BD8();
    }

    v11 = *(a1 + 432);
    if (v11)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v54, *a2, *(a2 + 1));
      }

      else
      {
        v54 = *a2;
        v55 = *(a2 + 2);
      }

      v53 = 5;
      (*(*v11 + 24))(v11, &v54, v52);
      sub_1006A6204(v52);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(v54);
      }
    }

    if (v77 == 1)
    {
      sub_100C189A8(&v60);
    }
  }

  else
  {
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v27, *a3, *(a3 + 1));
    }

    else
    {
      *v27 = *a3;
      v28 = *(a3 + 2);
    }

    if (SHIBYTE(v114) < 0)
    {
      sub_100005F2C(v25, v113, *(&v113 + 1));
    }

    else
    {
      *v25 = v113;
      v26 = v114;
    }

    sub_10067A1B4(a1, v27, v25, &v60);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }

    if (v77)
    {
      v51 = 0uLL;
      sub_100679904(a1, &v75 + 8, &v51);
      v12 = v51;
      sub_100C18C94(&v60, v19);
      sub_100581E40(&v31, a3);
      LOBYTE(v40) = 0;
      BYTE8(v41) = 0;
      LOBYTE(v42) = 0;
      BYTE8(v43) = 0;
      sub_1009CE42C(v12, v19, &v31);
      if (BYTE8(v43) == 1 && SBYTE7(v43) < 0)
      {
        operator delete(v42);
      }

      if (BYTE8(v41) == 1 && v40)
      {
        *(&v40 + 1) = v40;
        operator delete(v40);
      }

      if (BYTE8(v39) == 1 && v38)
      {
        *(&v38 + 1) = v38;
        operator delete(v38);
      }

      if (*(&v36 + 1))
      {
        *&v37 = *(&v36 + 1);
        operator delete(*(&v36 + 1));
      }

      if (v35)
      {
        *(&v35 + 1) = v35;
        operator delete(v35);
      }

      if (*(&v33 + 1))
      {
        *&v34 = *(&v33 + 1);
        operator delete(*(&v33 + 1));
      }

      if (SBYTE7(v32) < 0)
      {
        operator delete(v31);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v29, *a2, *(a2 + 1));
      }

      else
      {
        v29 = *a2;
        v30 = *(a2 + 2);
      }

      sub_100BA5EB4();
    }

    v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      sub_101778BA4();
    }

    v14 = *(a1 + 432);
    if (v14)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v23, *a2, *(a2 + 1));
      }

      else
      {
        *v23 = *a2;
        v24 = *(a2 + 2);
      }

      v22 = 5;
      (*(*v14 + 24))(v14, v23, v21);
      sub_1006A6204(v21);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (v77 == 1)
    {
      sub_100C18C58(&v60);
    }
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  v18 = v16;
  *&v82 = v16;
  if (SHIBYTE(v85) < 0)
  {
    operator delete(*(&v84 + 1));
  }

  std::locale::~locale(v83);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  *&v97 = v15;
  *(&v97 + *(v15 - 3)) = v17;
  *&v98 = v18;
  if (SHIBYTE(v101) < 0)
  {
    operator delete(*(&v100 + 1));
  }

  std::locale::~locale(v99);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (SHIBYTE(v114) < 0)
  {
    operator delete(v113);
  }
}

void sub_10068D5F8(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x390]) == 1)
  {
    sub_100C18C58(&STACK[0x280]);
  }

  v3 = STACK[0x398];
  if (STACK[0x398])
  {
    STACK[0x3A0] = v3;
    operator delete(v3);
  }

  sub_10068C9D8(&STACK[0x3B0]);
  sub_10068C9D8(&STACK[0x4D0]);
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_10068D848(uint64_t a1, __int128 *a2, __int128 *a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v113 = 0uLL;
  v114 = 0;
  sub_100A972E8(&v113);
  v112 = 0;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  memset(v99, 0, sizeof(v99));
  v98 = 0u;
  v97 = 0u;
  sub_100B27D98(&v97);
  sub_100B27E08(&v97, "imdn <urn:ietf:params:imdn>");
  if (v114 >= 0)
  {
    v6 = &v113;
  }

  else
  {
    v6 = v113;
  }

  sub_100B27E1C(&v97, "imdn.Message-ID", v6);
  sub_100B27E08(&v97, "mls <http://www.gsma.com/rcs/mls>");
  ctu::base64::encode();
  if ((SBYTE7(v82) & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  sub_100B27E1C(&v97, "mls.Epoch-Authenticator", v7);
  if (SBYTE7(v82) < 0)
  {
    operator delete(__p[0]);
  }

  std::to_string(__p, *(a3 + 3));
  if ((SBYTE7(v82) & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  sub_100B27E1C(&v97, "mls.Era-Id", v8);
  if (SBYTE7(v82) < 0)
  {
    operator delete(__p[0]);
  }

  v96 = 0;
  v95 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  memset(v83, 0, sizeof(v83));
  *__p = 0u;
  v82 = 0u;
  sub_100BE2724(__p, "message/mls-rcs-client");
  v79 = 0;
  v78 = 0;
  v80 = 0;
  sub_100BE2728(__p, a3 + 18, &v60);
  sub_100B27EC8(&v97, &v60, &v78);
  if (v60)
  {
    *(&v60 + 1) = v60;
    operator delete(v60);
  }

  if (sub_10068BFF8(a3, "tel:"))
  {
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a3, *(a3 + 1));
    }

    else
    {
      __dst = *a3;
      v59 = *(a3 + 2);
    }

    if (SHIBYTE(v114) < 0)
    {
      sub_100005F2C(&v56, v113, *(&v113 + 1));
    }

    else
    {
      v56 = v113;
      v57 = v114;
    }

    sub_10067A6E0(a1, &__dst, &v56, &v60);
    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56);
    }

    if (SHIBYTE(v59) < 0)
    {
      operator delete(__dst);
    }

    if (v77)
    {
      v51 = 0uLL;
      sub_100C161EC(&v31, a3);
      sub_100679DF8(a1, &v31, &v51);
      if (SBYTE7(v32) < 0)
      {
        operator delete(v31);
      }

      v9 = v51;
      v49[1] = 0;
      v50 = 0;
      v49[0] = 0;
      sub_100581E40(&v31, a3);
      LOBYTE(v40) = 0;
      BYTE8(v41) = 0;
      LOBYTE(v42) = 0;
      BYTE8(v43) = 0;
      sub_1009CE42C(v9, v49, &v31);
      if (BYTE8(v43) == 1 && SBYTE7(v43) < 0)
      {
        operator delete(v42);
      }

      if (BYTE8(v41) == 1 && v40)
      {
        *(&v40 + 1) = v40;
        operator delete(v40);
      }

      if (BYTE8(v39) == 1 && v38)
      {
        *(&v38 + 1) = v38;
        operator delete(v38);
      }

      if (*(&v36 + 1))
      {
        *&v37 = *(&v36 + 1);
        operator delete(*(&v36 + 1));
      }

      if (v35)
      {
        *(&v35 + 1) = v35;
        operator delete(v35);
      }

      if (*(&v33 + 1))
      {
        *&v34 = *(&v33 + 1);
        operator delete(*(&v33 + 1));
      }

      if (SBYTE7(v32) < 0)
      {
        operator delete(v31);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49[0]);
      }

      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v29, *a2, *(a2 + 1));
      }

      else
      {
        v29 = *a2;
        v30 = *(a2 + 2);
      }

      sub_100BA2C04();
    }

    v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      sub_101778C40();
    }

    v11 = *(a1 + 432);
    if (v11)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v54, *a2, *(a2 + 1));
      }

      else
      {
        v54 = *a2;
        v55 = *(a2 + 2);
      }

      v53 = 5;
      (*(*v11 + 24))(v11, &v54, v52);
      sub_1006A6204(v52);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(v54);
      }
    }

    if (v77 == 1)
    {
      sub_100C189A8(&v60);
    }
  }

  else
  {
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v27, *a3, *(a3 + 1));
    }

    else
    {
      *v27 = *a3;
      v28 = *(a3 + 2);
    }

    if (SHIBYTE(v114) < 0)
    {
      sub_100005F2C(v25, v113, *(&v113 + 1));
    }

    else
    {
      *v25 = v113;
      v26 = v114;
    }

    sub_10067A1B4(a1, v27, v25, &v60);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }

    if (v77)
    {
      v51 = 0uLL;
      sub_100679904(a1, &v75 + 8, &v51);
      v12 = v51;
      sub_100C18C94(&v60, v19);
      sub_100581E40(&v31, a3);
      LOBYTE(v40) = 0;
      BYTE8(v41) = 0;
      LOBYTE(v42) = 0;
      BYTE8(v43) = 0;
      sub_1009CE42C(v12, v19, &v31);
      if (BYTE8(v43) == 1 && SBYTE7(v43) < 0)
      {
        operator delete(v42);
      }

      if (BYTE8(v41) == 1 && v40)
      {
        *(&v40 + 1) = v40;
        operator delete(v40);
      }

      if (BYTE8(v39) == 1 && v38)
      {
        *(&v38 + 1) = v38;
        operator delete(v38);
      }

      if (*(&v36 + 1))
      {
        *&v37 = *(&v36 + 1);
        operator delete(*(&v36 + 1));
      }

      if (v35)
      {
        *(&v35 + 1) = v35;
        operator delete(v35);
      }

      if (*(&v33 + 1))
      {
        *&v34 = *(&v33 + 1);
        operator delete(*(&v33 + 1));
      }

      if (SBYTE7(v32) < 0)
      {
        operator delete(v31);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v29, *a2, *(a2 + 1));
      }

      else
      {
        v29 = *a2;
        v30 = *(a2 + 2);
      }

      sub_100BA5EB4();
    }

    v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      sub_101778C0C();
    }

    v14 = *(a1 + 432);
    if (v14)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v23, *a2, *(a2 + 1));
      }

      else
      {
        *v23 = *a2;
        v24 = *(a2 + 2);
      }

      v22 = 5;
      (*(*v14 + 24))(v14, v23, v21);
      sub_1006A6204(v21);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (v77 == 1)
    {
      sub_100C18C58(&v60);
    }
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  v18 = v16;
  *&v82 = v16;
  if (SHIBYTE(v85) < 0)
  {
    operator delete(*(&v84 + 1));
  }

  std::locale::~locale(v83);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  *&v97 = v15;
  *(&v97 + *(v15 - 3)) = v17;
  *&v98 = v18;
  if (SHIBYTE(v101) < 0)
  {
    operator delete(*(&v100 + 1));
  }

  std::locale::~locale(v99);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (SHIBYTE(v114) < 0)
  {
    operator delete(v113);
  }
}

void sub_10068E314(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x390]) == 1)
  {
    sub_100C18C58(&STACK[0x280]);
  }

  v3 = STACK[0x398];
  if (STACK[0x398])
  {
    STACK[0x3A0] = v3;
    operator delete(v3);
  }

  sub_10068C9D8(&STACK[0x3B0]);
  sub_10068C9D8(&STACK[0x4D0]);
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  _Unwind_Resume(a1);
}

unint64_t sub_10068E564(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  __src = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  sub_1000D4128(&v94, a2);
  v5 = *(&v95 + 1);
  v6 = v96;
  while (v5 != v6)
  {
    if (sub_10083AF94(v5, a1 + 104))
    {
      *(v5 + 28) = 1;
      break;
    }

    v5 += 32;
  }

  if (*(&v95 + 1) == v96)
  {
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "#I Creating empty group chats is not supported";
      goto LABEL_18;
    }

LABEL_19:
    v10 = &_mh_execute_header;
    v11 = 4;
    goto LABEL_20;
  }

  if (v96 - *(&v95 + 1) <= 0x20uLL)
  {
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "#I Creating group chats < 2 is not supported";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (BYTE8(v104) == 1)
  {
    v9 = BYTE7(v101);
    if (SBYTE7(v101) < 0)
    {
      v9 = *(&v100 + 1);
    }

    if (v9)
    {
      v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "#I Cannot create group chat with focus";
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  if (!*(a1 + 176))
  {
    v16 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      sub_101778D10();
    }

    goto LABEL_19;
  }

  if (!*(a1 + 192))
  {
    v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      sub_101778CDC();
    }

    goto LABEL_19;
  }

  v13 = *(a1 + 151);
  if (v13 < 0)
  {
    v13 = *(a1 + 136);
  }

  if (!v13)
  {
    v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      sub_101778CA8();
    }

    goto LABEL_19;
  }

  v93 = 0;
  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = v14;
  if (v14)
  {
    v93 = v14;
  }

  else
  {
    v15 = xpc_null_create();
    v93 = v15;
    if (!v15)
    {
      v19 = xpc_null_create();
      v15 = 0;
      goto LABEL_39;
    }
  }

  if (xpc_get_type(v15) == &_xpc_type_dictionary)
  {
    xpc_retain(v15);
    goto LABEL_40;
  }

  v19 = xpc_null_create();
LABEL_39:
  v93 = v19;
LABEL_40:
  xpc_release(v15);
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  memset(v89, 0, sizeof(v89));
  sub_100C180E4(&v90);
  v20 = *(&v95 + 1);
  for (i = v96; v20 != i; v20 += 2)
  {
    sub_100005308(&v89[1] + 1, v20);
  }

  __dst = 0uLL;
  v88 = 0;
  if (BYTE8(v104) == 1)
  {
    if (SBYTE7(v104) < 0)
    {
      if (*(&__src + 1))
      {
        sub_100005F2C(&__dst, __src, *(&__src + 1));
        goto LABEL_49;
      }
    }

    else if (BYTE7(v104))
    {
      __dst = __src;
      v88 = v104;
      goto LABEL_49;
    }
  }

  sub_100A972E8(&__dst);
LABEL_49:
  v85 = 0uLL;
  v86 = 0;
  if (SHIBYTE(v88) < 0)
  {
    sub_100005F2C(&v85, __dst, *(&__dst + 1));
  }

  else
  {
    v85 = __dst;
    v86 = v88;
  }

  if (v86 >= 0)
  {
    v22 = &v85;
  }

  else
  {
    v22 = v85;
  }

  v83 = xpc_string_create(v22);
  if (!v83)
  {
    v83 = xpc_null_create();
  }

  *buf = &v93;
  *&buf[8] = ims::lazuli::kContributionId;
  sub_10000F688(buf, &v83, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v83);
  v83 = 0;
  if (v88 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v81 = xpc_string_create(p_dst);
  if (!v81)
  {
    v81 = xpc_null_create();
  }

  *buf = &v93;
  *&buf[8] = ims::lazuli::kConversationId;
  sub_10000F688(buf, &v81, &v82);
  xpc_release(v82);
  v82 = 0;
  xpc_release(v81);
  v81 = 0;
  if (BYTE8(v106) == 1)
  {
    if (SBYTE7(v106) < 0)
    {
      sub_100005F2C(buf, v105, *(&v105 + 1));
    }

    else
    {
      *buf = v105;
      *&buf[16] = v106;
    }
  }

  else
  {
    sub_10000501C(buf, "");
  }

  if (buf[23] >= 0)
  {
    v24 = buf;
  }

  else
  {
    v24 = *buf;
  }

  v79 = xpc_string_create(v24);
  if (!v79)
  {
    v79 = xpc_null_create();
  }

  *&v51 = &v93;
  *(&v51 + 1) = ims::lazuli::kSubject;
  sub_10000F688(&v51, &v79, &v80);
  xpc_release(v80);
  v80 = 0;
  xpc_release(v79);
  v79 = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_10057FEDC(v89, buf);
  if (buf[23] >= 0)
  {
    v25 = buf;
  }

  else
  {
    v25 = *buf;
  }

  v77 = xpc_string_create(v25);
  if (!v77)
  {
    v77 = xpc_null_create();
  }

  *&v51 = &v93;
  *(&v51 + 1) = ims::lazuli::kResourceXml;
  sub_10000F688(&v51, &v77, &v78);
  xpc_release(v78);
  v78 = 0;
  xpc_release(v77);
  v77 = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (*(a3 + 23) >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  v75 = xpc_string_create(v26);
  if (!v75)
  {
    v75 = xpc_null_create();
  }

  *buf = &v93;
  *&buf[8] = ims::lazuli::kTransactionId;
  sub_10000F688(buf, &v75, &v76);
  xpc_release(v76);
  v76 = 0;
  xpc_release(v75);
  v27 = (a1 + 128);
  v75 = 0;
  if (*(a1 + 151) < 0)
  {
    v27 = *v27;
  }

  v73 = xpc_string_create(v27);
  if (!v73)
  {
    v73 = xpc_null_create();
  }

  *buf = &v93;
  *&buf[8] = ims::lazuli::kRemoteUri;
  sub_10000F688(buf, &v73, &v74);
  xpc_release(v74);
  v74 = 0;
  xpc_release(v73);
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  *&buf[8] = 0u;
  *buf = a1;
  sub_100004AA0(&v51, (a1 + 8));
  v28 = *(&v51 + 1);
  *&buf[8] = v51;
  if (*(&v51 + 1))
  {
    atomic_fetch_add_explicit((*(&v51 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v28);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v72, *a3, *(a3 + 1));
  }

  else
  {
    v72[0] = *a3;
    *&v72[1] = *(a3 + 2);
  }

  sub_1000D4128(&v72[1] + 8, &v94);
  v29 = *(a1 + 432);
  if ((v114 & 1) == 0)
  {
    if (v29)
    {
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(&v69, *a3, *(a3 + 1));
      }

      else
      {
        v69 = *a3;
        v70 = *(a3 + 2);
      }

      if (SHIBYTE(v88) < 0)
      {
        sub_100005F2C(&__p, __dst, *(&__dst + 1));
      }

      else
      {
        __p = __dst;
        v68 = v88;
      }

      v59 = a1;
      sub_1002306AC((a1 + 8), &v60);
      if (SHIBYTE(v88) < 0)
      {
        sub_100005F2C(&v61, __dst, *(&__dst + 1));
      }

      else
      {
        v61 = __dst;
        v62 = v88;
      }

      sub_10068FBA4(&v63, buf);
      sub_100D8FA00(&v64, &v93);
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(&v65, *a3, *(a3 + 1));
      }

      else
      {
        v65 = *a3;
        v66 = *(a3 + 2);
      }

      sub_10068FC98(v116, &v59);
    }

    sub_10068F794(buf, &v93);
    v10 = 0;
    v11 = 0;
    goto LABEL_146;
  }

  if (!v29)
  {
    v32 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      sub_101777DC8();
    }

    v10 = &_mh_execute_header;
    v11 = 10;
    goto LABEL_146;
  }

  v30 = *(a1 + 400);
  if (!v30)
  {
    v31 = 0;
    goto LABEL_111;
  }

  v31 = std::__shared_weak_count::lock(v30);
  if (!v31 || !*(a1 + 392))
  {
LABEL_111:
    v33 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      sub_101777D94();
    }

    v10 = &_mh_execute_header;
    v11 = 5;
    if (!v31)
    {
      goto LABEL_146;
    }

    goto LABEL_145;
  }

  v57 = 0u;
  v58 = 0u;
  sub_100686E2C(&v95 + 1, &v57);
  if (BYTE8(v58))
  {
    v55 = 0uLL;
    v56 = 0;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&v55, *a3, *(a3 + 1));
    }

    else
    {
      v55 = *a3;
      v56 = *(a3 + 2);
    }

    v53 = 0u;
    v54 = 0u;
    memset(v52, 0, sizeof(v52));
    v51 = 0u;
    if (SHIBYTE(v88) < 0)
    {
      sub_100005F2C(&v51, __dst, *(&__dst + 1));
    }

    else
    {
      v51 = __dst;
      v52[0] = v88;
    }

    if (BYTE8(v58))
    {
      memset(&v52[1], 0, 24);
      sub_100581F6C(&v52[1], v57, SDWORD2(v57), (*(&v57 + 1) - v57) >> 5);
      LOBYTE(v53) = 0;
      BYTE8(v54) = 0;
      if (SHIBYTE(v56) < 0)
      {
        sub_100005F2C(&v49, v55, *(&v55 + 1));
        v35 = BYTE8(v54);
      }

      else
      {
        v35 = 0;
        v49 = v55;
        v50 = v56;
      }

      *&v42[376] = v51;
      v36 = v52[0];
      memset(v52, 0, sizeof(v52));
      v51 = 0uLL;
      v44 = *&v52[1];
      v43 = v36;
      v45 = v52[3];
      LOBYTE(v46) = 0;
      v48 = 0;
      if (v35)
      {
        v46 = v53;
        v47 = v54;
        *&v54 = 0;
        v53 = 0uLL;
        v48 = 1;
      }

      v37 = a1;
      sub_1002306AC((a1 + 8), &v38);
      if (SHIBYTE(v56) < 0)
      {
        sub_100005F2C(&v39, v55, *(&v55 + 1));
      }

      else
      {
        v39 = v55;
        v40 = v56;
      }

      sub_100D8FA00(&v41, &v93);
      sub_10068FF70(v42, buf);
      sub_100690198(v115, &v37);
    }

    sub_1000D1644();
  }

  v34 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
  {
    sub_101778C74();
  }

  v10 = &_mh_execute_header;
  v11 = 5;
  if (BYTE8(v58) == 1)
  {
    *&v51 = &v57;
    sub_10003CA58(&v51);
  }

LABEL_145:
  sub_100004A34(v31);
LABEL_146:
  sub_1000D45B0(&v72[1] + 8);
  if (SBYTE7(v72[1]) < 0)
  {
    operator delete(*&v72[0]);
  }

  if (*&buf[16])
  {
    std::__shared_weak_count::__release_weak(*&buf[16]);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }

  if (SHIBYTE(v88) < 0)
  {
    operator delete(__dst);
  }

  if (SBYTE7(v91) < 0)
  {
    operator delete(v90);
  }

  *buf = &v89[1] + 8;
  sub_1000087B4(buf);
  if (SBYTE7(v89[1]) < 0)
  {
    operator delete(*&v89[0]);
  }

  xpc_release(v93);
LABEL_20:
  sub_1000D45B0(&v94);
  return v11 | v10;
}

void sub_10068F404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, __int128 a57)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  sub_1006B7F1C(v58 - 168);
  sub_100690508(&a57);
  sub_10069057C(&STACK[0x330]);
  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  sub_10069057C(&STACK[0x3A0]);
  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (LOBYTE(STACK[0x428]) == 1)
  {
    STACK[0x3A0] = &STACK[0x410];
    sub_10003CA58(&STACK[0x3A0]);
  }

  sub_100004A34(v57);
  sub_10068FC50(&STACK[0x7D0]);
  if (SLOBYTE(STACK[0x9C7]) < 0)
  {
    operator delete(STACK[0x9B0]);
  }

  if (SLOBYTE(STACK[0x9E7]) < 0)
  {
    operator delete(STACK[0x9D0]);
  }

  sub_1006A730C(&STACK[0x9F0]);
  xpc_release(STACK[0xA48]);
  sub_1000D45B0(&STACK[0xA50]);
  _Unwind_Resume(a1);
}

void sub_10068F794(uint64_t *a1, xpc::object *a2)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[1])
      {
        dispatch_assert_queue_V2(*(v5 + 24));
        v7 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          xpc::object::to_string(&__p, a2);
          v8 = v16 >= 0 ? &__p : __p;
          *buf = 136380675;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Sending request for group chat creation: [%{private}s]", buf, 0xCu);
          if (v16 < 0)
          {
            operator delete(__p);
          }
        }

        *buf = 0uLL;
        v9 = *(v5 + 176);
        v10 = *(v5 + 200);
        v13 = *(v5 + 192);
        v14 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = *a2;
        object = v11;
        if (v11)
        {
          xpc_retain(v11);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v9 + 144))(buf, v9, &v13, &object);
        xpc_release(object);
        object = 0;
        if (v14)
        {
          sub_100004A34(v14);
        }

        sub_1006A6F18();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_10068FAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_100004A34(a24);
  }

  v27 = *(v25 - 88);
  if (v27)
  {
    sub_100004A34(v27);
  }

  sub_100004A34(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_10068FBA4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  sub_1000D4128(a1 + 48, a2 + 48);
  return a1;
}

void sub_10068FC20(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10068FC50(uint64_t a1)
{
  sub_1000D45B0(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10068FD78(_Unwind_Exception *a1)
{
  sub_100DC3ED0((v1 + 432));
  sub_10068FC50(v1 + 56);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_10068FE68(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10068FE88(uint64_t a1)
{
  xpc_release(*(a1 + 400));
  *(a1 + 400) = 0;
  sub_1000D45B0(a1 + 72);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_10068FEEC(uint64_t a1)
{
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  xpc_release(*(a1 + 424));
  *(a1 + 424) = 0;
  sub_1000D45B0(a1 + 96);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_10068FF70(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v5 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v5;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v6 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v6;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    v7 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v7;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 144) = 0;
    v8 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v8;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 168) = 0;
    v9 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v9;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 192) = 0;
    *(a1 + 216) = 1;
  }

  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  if (*(a2 + 248) == 1)
  {
    v10 = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 224) = v10;
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 224) = 0;
    *(a1 + 248) = 1;
  }

  *(a1 + 256) = 0;
  *(a1 + 328) = 0;
  if (*(a2 + 328) == 1)
  {
    v11 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 256) = v11;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 256) = 0;
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
    *(a2 + 280) = 0;
    *(a2 + 288) = 0;
    *(a2 + 296) = 0;
    v12 = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 304) = v12;
    *(a2 + 312) = 0;
    *(a2 + 320) = 0;
    *(a2 + 304) = 0;
    *(a1 + 328) = 1;
  }

  v13 = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 336) = v13;
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(a2 + 336) = 0;
  v14 = *(a2 + 364);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 364) = v14;
  *(a1 + 368) = *(a2 + 368);
  return a1;
}

void sub_100690180(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100690264(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1006904E8(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100690508(uint64_t a1)
{
  sub_1000D45B0(a1 + 104);
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_10069057C(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      *(a1 + 56) = v2;
      operator delete(v2);
    }
  }

  v4 = (a1 + 24);
  sub_10003CA58(&v4);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_1006905E4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, _BYTE *a5)
{
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  sub_10004EFD0(&v49, *a3, *(a3 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3));
  *(&v50 + 1) = 0;
  v51 = 0uLL;
  sub_1000D4704(&v50 + 1, *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 5);
  v10 = *(&v50 + 1);
  v11 = v51;
  while (v10 != v11)
  {
    if (sub_10083AF94(v10, a1 + 104))
    {
      *(v10 + 28) = 1;
      break;
    }

    v10 += 32;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v43, 0, sizeof(v43));
  v42 = 0u;
  v48 = 0;
  v41 = a1;
  sub_100004AA0(v31, (a1 + 8));
  v12 = v31[1];
  v42 = *v31;
  if (v31[1])
  {
    atomic_fetch_add_explicit(v31[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
  }

  sub_1006A0A6C(v43, a2);
  v43[0] = off_101EC8DD8;
  if (*(a2 + 271) < 0)
  {
    sub_100005F2C(&v43[31], *(a2 + 248), *(a2 + 256));
  }

  else
  {
    *&v43[31] = *(a2 + 248);
    v43[33] = *(a2 + 264);
  }

  v44 = 0uLL;
  *&v45 = 0;
  sub_10004EFD0(&v44, v49, *(&v49 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v49 + 1) - v49) >> 3));
  v46 = 0uLL;
  *(&v45 + 1) = 0;
  sub_1000D4704(&v45 + 1, SDWORD2(v50), v51, (v51 - *(&v50 + 1)) >> 5);
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(&v47, *a4, *(a4 + 1));
  }

  else
  {
    v47 = *a4;
    v48 = *(a4 + 2);
  }

  if (*a5)
  {
    if (*(a1 + 432))
    {
      v13 = *(a1 + 400);
      if (v13)
      {
        v14 = std::__shared_weak_count::lock(v13);
        if (v14 && *(a1 + 392))
        {
          if (*(a2 + 208))
          {
            v35 = 0u;
            v36 = 0u;
            sub_100686E2C(&v50 + 1, &v35);
            __dst[1] = 0;
            __dst[0] = 0;
            v34 = 0;
            if (*(a4 + 23) < 0)
            {
              sub_100005F2C(__dst, *a4, *(a4 + 1));
            }

            else
            {
              *__dst = *a4;
              v34 = *(a4 + 2);
            }

            memset(v32, 0, sizeof(v32));
            *v31 = 0u;
            if (*(a2 + 208))
            {
              if (*(a2 + 207) < 0)
              {
                sub_100005F2C(v31, *(a2 + 184), *(a2 + 192));
              }

              else
              {
                *v31 = *(a2 + 184);
                *&v32[0] = *(a2 + 200);
              }

              if (BYTE8(v36))
              {
                memset(v32 + 8, 0, 24);
                sub_100581F6C(v32 + 1, v35, SDWORD2(v35), (*(&v35 + 1) - v35) >> 5);
                if (SHIBYTE(v34) < 0)
                {
                  sub_100005F2C(v29, __dst[0], __dst[1]);
                }

                else
                {
                  *v29 = *__dst;
                  v30 = v34;
                }

                *v25 = *v31;
                v27 = *(v32 + 8);
                v20 = *&v32[0];
                memset(v32, 0, sizeof(v32));
                v31[0] = 0;
                v31[1] = 0;
                v26 = v20;
                v28 = *(&v32[1] + 1);
                sub_100004AA0(&v52, (a1 + 8));
                v21 = v53;
                if (v53)
                {
                  atomic_fetch_add_explicit(&v53->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  sub_100004A34(v21);
                }

                if (SHIBYTE(v34) < 0)
                {
                  sub_100005F2C(v23, __dst[0], __dst[1]);
                }

                else
                {
                  *v23 = *__dst;
                  v23[2] = v34;
                }

                sub_100692210(&v24, &v41);
                v54 = 0;
                operator new();
              }

              sub_1000D1644();
            }

            sub_1000D1644();
          }

          v19 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
          {
            sub_101778D44();
          }

          v15 = &_mh_execute_header;
          v16 = 5;
LABEL_55:
          sub_100004A34(v14);
          goto LABEL_56;
        }
      }

      else
      {
        v14 = 0;
      }

      v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        sub_101777D94();
      }

      v15 = &_mh_execute_header;
      v16 = 5;
      if (v14)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        sub_101777DC8();
      }

      v15 = &_mh_execute_header;
      v16 = 10;
    }
  }

  else
  {
    LOBYTE(v39[0]) = 0;
    v40 = 0;
    LOBYTE(__p[0]) = 0;
    v38 = 0;
    LOBYTE(v31[0]) = 0;
    LOBYTE(v32[0]) = 0;
    sub_1006911D4(&v41, v39, 1, __p, v31);
    if (v38 == 1 && __p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v40 == 1 && v39[0])
    {
      v39[1] = v39[0];
      operator delete(v39[0]);
    }

    v15 = 0;
    v16 = 0;
  }

LABEL_56:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  v31[0] = &v45 + 8;
  sub_1000D48DC(v31);
  v31[0] = &v44;
  sub_1000087B4(v31);
  sub_100C18C58(v43);
  if (*(&v42 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v42 + 1));
  }

  v41 = &v50 + 1;
  sub_1000D48DC(&v41);
  v41 = &v49;
  sub_1000087B4(&v41);
  return v16 | v15;
}

void sub_100690F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, std::__shared_weak_count *);
  v14 = va_arg(va1, void *);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v9 = v6[3];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(v6);
  sub_100692354(va);
  sub_1006B7F1C(v7 - 136);
  sub_1006923BC(va1);
  sub_100692448(&STACK[0x210]);
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  sub_100692448(&STACK[0x260]);
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (LOBYTE(STACK[0x2C8]) == 1)
  {
    STACK[0x260] = &STACK[0x2B0];
    sub_10003CA58(&STACK[0x260]);
  }

  sub_100004A34(v5);
  sub_100692494(&STACK[0x310]);
  sub_1000D2230((v7 - 240));
  _Unwind_Resume(a1);
}

void sub_1006911D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v13 = a3;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      if (*(a1 + 8))
      {
        dispatch_assert_queue_V2(*(v7 + 24));
        v12[1] = 0;
        v12[0] = 0;
        sub_100679904(v7, a1 + 272, v12);
        v9 = v12[0];
        sub_100C18C94((a1 + 24), v10);
        v23 = 0;
        LOBYTE(v24) = 0;
        v26 = 0;
        LOBYTE(__p) = 0;
        v29 = 0;
        buf = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        LOBYTE(v21) = 0;
        sub_1009CE42C(v9, v10, &buf);
        if (v29 == 1 && v28 < 0)
        {
          operator delete(__p);
        }

        if (v26 == 1 && v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        if (v23 == 1 && v21)
        {
          v22 = v21;
          operator delete(v21);
        }

        if (*(&v19 + 1))
        {
          *&v20 = *(&v19 + 1);
          operator delete(*(&v19 + 1));
        }

        if (v18)
        {
          *(&v18 + 1) = v18;
          operator delete(v18);
        }

        if (*(&v16 + 1))
        {
          *&v17 = *(&v16 + 1);
          operator delete(*(&v16 + 1));
        }

        if (SBYTE7(v15) < 0)
        {
          operator delete(buf);
        }

        if (v11 < 0)
        {
          operator delete(v10[0]);
        }

        sub_1006A7368();
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100691F9C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_100692210(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1006A0A6C(a1 + 24, a2 + 24);
  *(a1 + 24) = off_101EC8DD8;
  if (*(a2 + 295) < 0)
  {
    sub_100005F2C((a1 + 272), *(a2 + 272), *(a2 + 280));
  }

  else
  {
    v4 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 272) = v4;
  }

  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  v5 = (a1 + 344);
  if (*(a2 + 367) < 0)
  {
    sub_100005F2C(v5, *(a2 + 344), *(a2 + 352));
  }

  else
  {
    v6 = *(a2 + 344);
    *(a1 + 360) = *(a2 + 360);
    *v5 = v6;
  }

  return a1;
}

void sub_100692314(_Unwind_Exception *a1)
{
  sub_1000D2230((v1 + 296));
  sub_100C18C58(v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100692354(uint64_t a1)
{
  v2 = (a1 + 48);
  v5 = (a1 + 72);
  sub_1000D48DC(&v5);
  v5 = v2;
  sub_1000087B4(&v5);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_1006923BC(uint64_t a1)
{
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  v5 = (a1 + 368);
  sub_1000D48DC(&v5);
  v5 = (a1 + 344);
  sub_1000087B4(&v5);
  sub_100C18C58(a1 + 72);
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_100692448(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_10003CA58(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100692494(uint64_t a1)
{
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  v4 = (a1 + 320);
  sub_1000D48DC(&v4);
  v4 = (a1 + 296);
  sub_1000087B4(&v4);
  sub_100C18C58(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

unint64_t sub_100692504(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, _BYTE *a5)
{
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  sub_10004EFD0(&v46, *a3, *(a3 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3));
  *(&v47 + 1) = 0;
  v48 = 0uLL;
  sub_1000D4704(&v47 + 1, *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 5);
  v10 = *(&v47 + 1);
  v11 = v48;
  while (v10 != v11)
  {
    if (sub_10083AF94(v10, a1 + 104))
    {
      *(v10 + 28) = 1;
      break;
    }

    v10 += 32;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  memset(v40, 0, sizeof(v40));
  v39 = 0u;
  v45 = 0;
  v38 = a1;
  sub_100004AA0(v31, (a1 + 8));
  v12 = v31[1];
  v39 = *v31;
  if (v31[1])
  {
    atomic_fetch_add_explicit(v31[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
  }

  sub_1006A0A6C(v40, a2);
  v40[0] = off_101EC8DD8;
  if (*(a2 + 271) < 0)
  {
    sub_100005F2C(&v40[31], *(a2 + 248), *(a2 + 256));
  }

  else
  {
    *&v40[31] = *(a2 + 248);
    v40[33] = *(a2 + 264);
  }

  v41 = 0uLL;
  *&v42 = 0;
  sub_10004EFD0(&v41, v46, *(&v46 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v46 + 1) - v46) >> 3));
  v43 = 0uLL;
  *(&v42 + 1) = 0;
  sub_1000D4704(&v42 + 1, SDWORD2(v47), v48, (v48 - *(&v47 + 1)) >> 5);
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(&v44, *a4, *(a4 + 1));
  }

  else
  {
    v44 = *a4;
    v45 = *(a4 + 2);
  }

  if ((*a5 & 1) == 0)
  {
    v37[0] = 0;
    v37[24] = 0;
    sub_100693070(&v38, v37, 1);
    v15 = 0;
    v16 = 0;
    goto LABEL_50;
  }

  if (*(a1 + 432))
  {
    v13 = *(a1 + 400);
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14 && *(a1 + 392))
      {
        if (*(a2 + 208))
        {
          v35 = 0u;
          v36 = 0u;
          sub_100686E2C(&v47 + 1, &v35);
          __dst[1] = 0;
          __dst[0] = 0;
          v34 = 0;
          if (*(a4 + 23) < 0)
          {
            sub_100005F2C(__dst, *a4, *(a4 + 1));
          }

          else
          {
            *__dst = *a4;
            v34 = *(a4 + 2);
          }

          memset(v32, 0, sizeof(v32));
          *v31 = 0u;
          if (*(a2 + 208))
          {
            if (*(a2 + 207) < 0)
            {
              sub_100005F2C(v31, *(a2 + 184), *(a2 + 192));
            }

            else
            {
              *v31 = *(a2 + 184);
              *&v32[0] = *(a2 + 200);
            }

            if (BYTE8(v36))
            {
              memset(v32 + 8, 0, 24);
              sub_100581F6C(v32 + 1, v35, SDWORD2(v35), (*(&v35 + 1) - v35) >> 5);
              if (SHIBYTE(v34) < 0)
              {
                sub_100005F2C(v29, __dst[0], __dst[1]);
              }

              else
              {
                *v29 = *__dst;
                v30 = v34;
              }

              *v25 = *v31;
              v27 = *(v32 + 8);
              v20 = *&v32[0];
              memset(v32, 0, sizeof(v32));
              v31[0] = 0;
              v31[1] = 0;
              v26 = v20;
              v28 = *(&v32[1] + 1);
              sub_100004AA0(&v49, (a1 + 8));
              v21 = v50;
              if (v50)
              {
                atomic_fetch_add_explicit(&v50->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v21);
              }

              if (SHIBYTE(v34) < 0)
              {
                sub_100005F2C(v23, __dst[0], __dst[1]);
              }

              else
              {
                *v23 = *__dst;
                v23[2] = v34;
              }

              sub_100693C10(&v24, &v38);
              v51 = 0;
              operator new();
            }

            sub_1000D1644();
          }

          sub_1000D1644();
        }

        v19 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          sub_101778D44();
        }

        v15 = &_mh_execute_header;
        v16 = 5;
LABEL_49:
        sub_100004A34(v14);
        goto LABEL_50;
      }
    }

    else
    {
      v14 = 0;
    }

    v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      sub_101777D94();
    }

    v15 = &_mh_execute_header;
    v16 = 5;
    if (v14)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      sub_101777DC8();
    }

    v15 = &_mh_execute_header;
    v16 = 10;
  }

LABEL_50:
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  v31[0] = &v42 + 8;
  sub_1000D48DC(v31);
  v31[0] = &v41;
  sub_1000087B4(v31);
  sub_100C18C58(v40);
  if (*(&v39 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v39 + 1));
  }

  v38 = &v47 + 1;
  sub_1000D48DC(&v38);
  v38 = &v46;
  sub_1000087B4(&v38);
  return v16 | v15;
}

void sub_100692E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, std::__shared_weak_count *);
  v14 = va_arg(va1, void *);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v9 = v6[3];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(v6);
  sub_100692354(va);
  sub_1006B7F1C(v7 - 136);
  sub_1006923BC(va1);
  sub_100692448(&STACK[0x210]);
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  sub_100692448(&STACK[0x260]);
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (LOBYTE(STACK[0x2C8]) == 1)
  {
    STACK[0x260] = &STACK[0x2B0];
    sub_10003CA58(&STACK[0x260]);
  }

  sub_100004A34(v5);
  sub_100692494(&STACK[0x2F0]);
  sub_1000D2230((v7 - 240));
  _Unwind_Resume(a1);
}

void sub_100693070(uint64_t a1, uint64_t a2, int a3)
{
  v27 = a3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      if (*(a1 + 8))
      {
        dispatch_assert_queue_V2(*(v5 + 24));
        v26[0] = 0;
        v26[1] = 0;
        sub_100679904(v5, a1 + 272, v26);
        v7 = v26[0];
        sub_100C18C94((a1 + 24), v24);
        v17 = 0;
        LOBYTE(v18) = 0;
        v20 = 0;
        LOBYTE(__p) = 0;
        v23 = 0;
        v8 = 0u;
        v9 = 0u;
        v10 = 0u;
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        LOBYTE(v15) = 0;
        sub_1009CE42C(v7, v24, &v8);
        if (v23 == 1 && v22 < 0)
        {
          operator delete(__p);
        }

        if (v20 == 1 && v18)
        {
          v19 = v18;
          operator delete(v18);
        }

        if (v17 == 1 && v15)
        {
          v16 = v15;
          operator delete(v15);
        }

        if (*(&v13 + 1))
        {
          *&v14 = *(&v13 + 1);
          operator delete(*(&v13 + 1));
        }

        if (v12)
        {
          *(&v12 + 1) = v12;
          operator delete(v12);
        }

        if (*(&v10 + 1))
        {
          *&v11 = *(&v10 + 1);
          operator delete(*(&v10 + 1));
        }

        if (SBYTE7(v9) < 0)
        {
          operator delete(v8);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        sub_1006A77B0();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_100693A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t a21, xpc_object_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100693C10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1006A0A6C(a1 + 24, a2 + 24);
  *(a1 + 24) = off_101EC8DD8;
  if (*(a2 + 295) < 0)
  {
    sub_100005F2C((a1 + 272), *(a2 + 272), *(a2 + 280));
  }

  else
  {
    v4 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 272) = v4;
  }

  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  v5 = (a1 + 344);
  if (*(a2 + 367) < 0)
  {
    sub_100005F2C(v5, *(a2 + 344), *(a2 + 352));
  }

  else
  {
    v6 = *(a2 + 344);
    *(a1 + 360) = *(a2 + 360);
    *v5 = v6;
  }

  return a1;
}

void sub_100693D14(_Unwind_Exception *a1)
{
  sub_1000D2230((v1 + 296));
  sub_100C18C58(v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_100693D54(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100679904(a1, (a2 + 248), v24);
  v5 = v24[0];
  sub_100C18C94(a2, v22);
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(__p) = 0;
  v21 = 0;
  *v6 = 0u;
  v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  LOBYTE(v13) = 0;
  sub_1009CE42C(v5, v22, v6);
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 == 1 && v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  sub_1006BADF4();
}

void sub_10069418C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29)
  {
    sub_100004A34(a29);
  }

  v37 = *(v35 - 56);
  if (v37)
  {
    sub_100004A34(v37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100694284(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  v41 = 0;
  v37 = a1;
  sub_100004AA0(v29, (a1 + 8));
  v6 = *&v29[8];
  v38 = *v29;
  if (*&v29[8])
  {
    atomic_fetch_add_explicit((*&v29[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  sub_1006A0A6C(v39, a2);
  v39[0] = off_101EC8DD8;
  if (*(a2 + 271) < 0)
  {
    sub_100005F2C(&v39[31], *(a2 + 248), *(a2 + 256));
  }

  else
  {
    *&v39[31] = *(a2 + 248);
    v39[33] = *(a2 + 264);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v40, *a3, *(a3 + 1));
  }

  else
  {
    v40 = *a3;
    v41 = *(a3 + 2);
  }

  v36 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    v36 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v36 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_dictionary)
  {
    xpc_retain(v8);
    goto LABEL_17;
  }

  v9 = xpc_null_create();
LABEL_16:
  v36 = v9;
LABEL_17:
  xpc_release(v8);
  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  v34 = xpc_string_create(v10);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  *v29 = &v36;
  *&v29[8] = ims::lazuli::kTransactionId;
  sub_10000F688(v29, &v34, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v34);
  v34 = 0;
  if (*(a1 + 432))
  {
    sub_100C18C94(a2, __src);
    memset(v30, 0, 48);
    *&v29[8] = 0u;
    *v29 = a1;
    sub_100004AA0(&v42, (a1 + 8));
    v11 = v43;
    *&v29[8] = v42;
    *&v29[16] = v43;
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v30, *a3, *(a3 + 1));
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(&v30[3], *a3, *(a3 + 1));
LABEL_31:
        if (SHIBYTE(v32) < 0)
        {
          sub_100005F2C(__p, __src[0], __src[1]);
        }

        else
        {
          *__p = *__src;
          v28 = v32;
        }

        sub_100004AA0(&v42, (a1 + 8));
        v13 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v13);
        }

        sub_100694E90(&v15, &v37);
        v16 = v36;
        if (v36)
        {
          xpc_retain(v36);
        }

        else
        {
          v16 = xpc_null_create();
        }

        v17 = *v29;
        v18 = *&v29[16];
        if (*&v29[16])
        {
          atomic_fetch_add_explicit((*&v29[16] + 16), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v30[2]) < 0)
        {
          sub_100005F2C(&v19, v30[0], v30[1]);
        }

        else
        {
          v19 = *v30;
          v20 = v30[2];
        }

        if (SHIBYTE(v30[5]) < 0)
        {
          sub_100005F2C(&v21, v30[3], v30[4]);
        }

        else
        {
          v22 = v30[5];
          v21 = *&v30[3];
        }

        if (*(a3 + 23) < 0)
        {
          sub_100005F2C(&v23, *a3, *(a3 + 1));
        }

        else
        {
          v23 = *a3;
          v24 = *(a3 + 2);
        }

        if (SHIBYTE(v32) < 0)
        {
          sub_100005F2C(&v25, __src[0], __src[1]);
        }

        else
        {
          v25 = *__src;
          v26 = v32;
        }

        v44 = 0;
        operator new();
      }
    }

    else
    {
      *v30 = *a3;
      v30[2] = *(a3 + 2);
    }

    *&v30[3] = *a3;
    v30[5] = *(a3 + 2);
    goto LABEL_31;
  }

  v12 = v36;
  v33 = v36;
  if (v36)
  {
    xpc_retain(v36);
  }

  else
  {
    v12 = xpc_null_create();
    v33 = v12;
  }

  sub_100694B78(&v37, &v33);
  xpc_release(v12);
  v33 = 0;
  xpc_release(v36);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  sub_100C18C58(v39);
  if (*(&v38 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v38 + 1));
  }

  return 0;
}

void sub_100694934(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (STACK[0x210])
  {
    std::__shared_weak_count::__release_weak(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  xpc_release(STACK[0x280]);
  sub_100694FE8(&STACK[0x288]);
  _Unwind_Resume(a1);
}

void sub_100694B78(uint64_t a1, void **a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (*(a1 + 8))
      {
        dispatch_assert_queue_V2(*(v5 + 24));
        v32[0] = 0;
        v32[1] = 0;
        sub_100679904(v5, a1 + 272, v32);
        v7 = v32[0];
        sub_100C18C94((a1 + 24), v30);
        v23 = 0;
        LOBYTE(v24) = 0;
        v26 = 0;
        LOBYTE(__p) = 0;
        v29 = 0;
        *v14 = 0u;
        v15 = 0u;
        *v16 = 0u;
        v17 = 0u;
        *v18 = 0u;
        *v19 = 0u;
        v20 = 0u;
        LOBYTE(v21) = 0;
        sub_1009CE42C(v7, v30, v14);
        if (v29 == 1 && v28 < 0)
        {
          operator delete(__p);
        }

        if (v26 == 1 && v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        if (v23 == 1 && v21)
        {
          v22 = v21;
          operator delete(v21);
        }

        if (v19[1])
        {
          *&v20 = v19[1];
          operator delete(v19[1]);
        }

        if (v18[0])
        {
          v18[1] = v18[0];
          operator delete(v18[0]);
        }

        if (v16[1])
        {
          *&v17 = v16[1];
          operator delete(v16[1]);
        }

        if (SBYTE7(v15) < 0)
        {
          operator delete(v14[0]);
        }

        if (v31 < 0)
        {
          operator delete(v30[0]);
        }

        v8 = v32[0];
        v9 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
        v10 = *a2;
        object = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_100914090((v8 + 152), v9, &object);
        xpc_release(object);
        object = 0;
        if (*(a1 + 319) < 0)
        {
          sub_100005F2C(__dst, *(a1 + 296), *(a1 + 304));
        }

        else
        {
          *__dst = *(a1 + 296);
          v12 = *(a1 + 312);
        }

        sub_1006A7A18();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_100694DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t object, char a18, std::__shared_weak_count *a19)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 80);
  if (v22)
  {
    sub_100004A34(v22);
  }

  sub_100004A34(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_100694E90(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1006A0A6C(a1 + 24, a2 + 24);
  *(a1 + 24) = off_101EC8DD8;
  if (*(a2 + 295) < 0)
  {
    sub_100005F2C((a1 + 272), *(a2 + 272), *(a2 + 280));
  }

  else
  {
    v5 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 272) = v5;
  }

  v6 = (a1 + 296);
  if (*(a2 + 319) < 0)
  {
    sub_100005F2C(v6, *(a2 + 296), *(a2 + 304));
  }

  else
  {
    v7 = *(a2 + 296);
    *(a1 + 312) = *(a2 + 312);
    *v6 = v7;
  }

  return a1;
}

void sub_100694F60(_Unwind_Exception *a1)
{
  sub_100C18C58(v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100694F98(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100694FE8(uint64_t a1)
{
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  sub_100C18C58(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100695030(uint64_t a1)
{
  if (*(a1 + 471) < 0)
  {
    operator delete(*(a1 + 448));
  }

  if (*(a1 + 447) < 0)
  {
    operator delete(*(a1 + 424));
  }

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  v2 = *(a1 + 368);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(*(a1 + 344));
  *(a1 + 344) = 0;
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  sub_100C18C58(a1 + 48);
  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1006950E0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  sub_10071DA44(*(a3 + 120));
  if (*(a3 + 112) != 1)
  {
    sub_100C161F0();
  }

  v5 = *(a1 + 400);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6 && *(a1 + 392))
    {
      sub_100C161F0();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_101777D94();
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100695A9C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  sub_100004A34(v1);
  if (*(v2 - 216) == 1)
  {
    v4 = *(v2 - 240);
    if (v4)
    {
      *(v2 - 232) = v4;
      operator delete(v4);
    }
  }

  if (*(v2 - 160) == 1 && *(v2 - 185) < 0)
  {
    operator delete(*(v2 - 208));
  }

  _Unwind_Resume(a1);
}

void sub_100695C84()
{
  sub_1006A7CC4(v0 + 48);
  sub_100682E18(&STACK[0x2E0]);
  v1 = STACK[0x348];
  if (STACK[0x348])
  {
    STACK[0x350] = v1;
    operator delete(v1);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  JUMPOUT(0x100695C04);
}

uint64_t sub_100695CEC(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 112) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100695D58(uint64_t a1)
{
  if (*(a1 + 352) == 1)
  {
    v2 = *(a1 + 328);
    if (v2)
    {
      *(a1 + 336) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  sub_1006A6E54(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_100695DBC(uint64_t a1)
{
  if (*(a1 + 176) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 112) == 1)
    {
      v2 = *(a1 + 88);
      if (v2)
      {
        *(a1 + 96) = v2;
        operator delete(v2);
      }
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      *(a1 + 56) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_100695E54(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a1 + 432))
  {
    sub_100C161F0();
  }

  v3 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96), a3);
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    sub_101777DC8();
  }

  return &dword_100000008 + 2;
}

void sub_100696254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v65 + 55) < 0)
  {
    operator delete(*(v65 + 32));
  }

  v68 = *(v65 + 24);
  if (v68)
  {
    std::__shared_weak_count::__release_weak(v68);
  }

  operator delete(v65);
  sub_1006964A4(&a9);
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  sub_100695CEC(&STACK[0x210]);
  if (*(v66 - 121) < 0)
  {
    operator delete(*(v66 - 144));
  }

  _Unwind_Resume(a1);
}

void sub_100696378()
{
  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (STACK[0x220])
  {
    std::__shared_weak_count::__release_weak(STACK[0x220]);
  }

  JUMPOUT(0x100696360);
}

uint64_t sub_1006963B0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  sub_1006A7ED8((a1 + 72), (a2 + 72));
  if (*(a2 + 143) < 0)
  {
    sub_100005F2C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
  }

  return a1;
}

void sub_100696464(_Unwind_Exception *a1)
{
  sub_10067A5EC(v1 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006964A4(uint64_t a1)
{
  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  if (*(a1 + 464) == 1 && *(a1 + 447) < 0)
  {
    operator delete(*(a1 + 424));
  }

  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  v2 = *(a1 + 368);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1006A6E54(a1 + 72);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100696544(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  *v42 = 0u;
  *v39 = 0u;
  memset(v40, 0, sizeof(v40));
  memset(v38, 0, sizeof(v38));
  *__dst = 0u;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 1));
  }

  else
  {
    *__dst = *a3;
    v38[0] = *(a3 + 2);
  }

  memset(&v38[1], 0, 24);
  sub_100034C50(&v38[1], *(a4 + 160), *(a4 + 168), *(a4 + 168) - *(a4 + 160));
  LazuliMLSMessageId::LazuliMLSMessageId(&v32, (a4 + 24));
  LOBYTE(v34) = 0;
  BYTE8(v34) = 0;
  v35 = 0;
  v36 = 0;
  *v39 = v32;
  *&v40[0] = v33;
  v32 = 0uLL;
  v33 = 0;
  *(v40 + 8) = v34;
  BYTE8(v40[1]) = 0;
  LOBYTE(v41) = 0;
  BYTE8(v41) = 1;
  LOBYTE(v42[0]) = 0;
  LOBYTE(v45) = 0;
  v8 = sub_10071DA44(*(a4 + 120));
  if (*(v8 + 23) < 0)
  {
    sub_100005F2C(v30, *v8, *(v8 + 8));
  }

  else
  {
    v9 = *v8;
    v31 = *(v8 + 16);
    *v30 = v9;
  }

  *v15 = *__dst;
  v10 = v38[0];
  memset(v38, 0, sizeof(v38));
  __dst[0] = 0;
  __dst[1] = 0;
  v17 = *&v38[1];
  v16 = v10;
  v18 = v38[3];
  LOBYTE(v19[0]) = 0;
  v25 = 0;
  if (BYTE8(v41) == 1)
  {
    *v19 = *v39;
    v20 = *&v40[0];
    v39[1] = 0;
    *&v40[0] = 0;
    v39[0] = 0;
    v21 = *(v40 + 8);
    LOBYTE(v22) = 0;
    v24 = 0;
    if (v41 == 1)
    {
      v22 = *(&v40[1] + 8);
      v23 = *(&v40[2] + 1);
      memset(&v40[1] + 8, 0, 24);
      v24 = 1;
    }

    v25 = 1;
  }

  LOBYTE(v26) = 0;
  v29 = 0;
  if (v45 == 1)
  {
    v26 = *v42;
    v27 = v43;
    v42[1] = 0;
    *&v43 = 0;
    v42[0] = 0;
    v28 = v44;
    v29 = 1;
  }

  sub_100004AA0(&v32, (a1 + 8));
  v11 = *(&v32 + 1);
  if (*(&v32 + 1))
  {
    atomic_fetch_add_explicit((*(&v32 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
  }

  sub_1006A7D20(v12, a4);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v13, *a2, *(a2 + 1));
  }

  else
  {
    *v13 = *a2;
    v13[2] = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v14, *a3, *(a3 + 1));
  }

  else
  {
    *v14 = *a3;
    v14[2] = *(a3 + 2);
  }

  v46 = 0;
  operator new();
}

void sub_100696C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = v65[3];
  if (v68)
  {
    std::__shared_weak_count::__release_weak(v68);
  }

  operator delete(v65);
  sub_100695CEC(&a9);
  sub_1006BD9F0(v66 - 120);
  sub_100696DC4(&a27);
  sub_100695DBC(&a65);
  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  sub_100695DBC(&STACK[0x320]);
  _Unwind_Resume(a1);
}

uint64_t sub_100696DC4(uint64_t a1)
{
  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  sub_1006A6E54(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

unint64_t sub_100696E1C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (*(a1 + 432))
  {
    v8 = sub_10071DA44(*(a4 + 120));
    v25 = 0u;
    memset(v24, 0, sizeof(v24));
    memset(v23, 0, sizeof(v23));
    v26 = 0;
    v22[0] = a1;
    sub_100004AA0(&v27, (a1 + 8));
    v9 = v28;
    v22[1] = v27;
    v22[2] = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
    }

    if (*(a4 + 47) < 0)
    {
      sub_100005F2C(v23, *(a4 + 24), *(a4 + 32));
    }

    else
    {
      v23[0] = *(a4 + 24);
      *&v23[1] = *(a4 + 40);
    }

    *(&v23[1] + 8) = *(a4 + 48);
    *(&v23[2] + 1) = *(a4 + 64);
    sub_1006A7ED8(v24, (a4 + 72));
    if (*(v8 + 23) < 0)
    {
      sub_100005F2C(&v25, *v8, *(v8 + 8));
    }

    else
    {
      v11 = *v8;
      v26 = *(v8 + 16);
      v25 = v11;
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(__p, *a3, *(a3 + 1));
    }

    else
    {
      *__p = *a3;
      v21 = *(a3 + 2);
    }

    sub_100004AA0(&v27, (a1 + 8));
    v12 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&v14, *a3, *(a3 + 1));
    }

    else
    {
      v14 = *a3;
      v15 = *(a3 + 2);
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&v16, *a2, *(a2 + 1));
    }

    else
    {
      v16 = *a2;
      v17 = *(a2 + 2);
    }

    sub_1006A7D20(v18, a4);
    sub_100697340(&v19, v22);
    v29 = 0;
    operator new();
  }

  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96), a3, a4);
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    sub_101777DC8();
  }

  return &dword_100000008 + 2;
}

void sub_100697200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v65 + 55) < 0)
  {
    operator delete(*(v65 + 32));
  }

  v67 = *(v65 + 24);
  if (v67)
  {
    std::__shared_weak_count::__release_weak(v67);
  }

  operator delete(v65);
  sub_1006964A4(&a9);
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  sub_100695CEC(&STACK[0x208]);
  _Unwind_Resume(a1);
}

void sub_100697314()
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (STACK[0x218])
  {
    std::__shared_weak_count::__release_weak(STACK[0x218]);
  }

  JUMPOUT(0x10069730CLL);
}

uint64_t sub_100697340(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  sub_1006A7ED8((a1 + 72), (a2 + 72));
  if (*(a2 + 143) < 0)
  {
    sub_100005F2C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
  }

  return a1;
}

void sub_1006973F4(_Unwind_Exception *a1)
{
  sub_10067A5EC(v1 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_100697434(uint64_t a1, uint64_t a2, __int128 *a3)
{
  memset(v27, 0, sizeof(v27));
  v25[0] = a1;
  sub_100004AA0(__src, (a1 + 8));
  v6 = __src[1];
  v25[1] = __src[0];
  v26 = __src[1];
  if (__src[1])
  {
    atomic_fetch_add_explicit(__src[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v27, *a2, *(a2 + 8));
  }

  else
  {
    *v27 = *a2;
    v27[2] = *(a2 + 16);
  }

  sub_1006A7D20(&v27[3], a3);
  if (*(a1 + 432))
  {
    __src[1] = 0;
    __src[0] = 0;
    *&v10 = 0;
    sub_100A972E8(__src);
    if (SBYTE7(v10) < 0)
    {
      sub_100005F2C(__dst, __src[0], __src[1]);
    }

    else
    {
      *__dst = *__src;
      v8 = v10;
    }

    sub_100C161F0();
  }

  v18 = 0;
  LOBYTE(v19) = 0;
  v21 = 0;
  LOBYTE(__p) = 0;
  v24 = 0;
  *__src = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v13 = 0u;
  *v14 = 0u;
  v15 = 0u;
  LOBYTE(v16) = 0;
  sub_100697C44(v25, __src);
  if (v24 == 1 && v23 < 0)
  {
    operator delete(__p);
  }

  if (v21 == 1 && v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v18 == 1 && v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14[1])
  {
    *&v15 = v14[1];
    operator delete(v14[1]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (*(&v11 + 1))
  {
    *&v12 = *(&v11 + 1);
    operator delete(*(&v11 + 1));
  }

  if (SBYTE7(v10) < 0)
  {
    operator delete(__src[0]);
  }

  sub_1006A6E54(&v27[3]);
  if (SHIBYTE(v27[2]) < 0)
  {
    operator delete(v27[0]);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }
}

void sub_100697A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, __int128 a53)
{
  v56 = v53[6];
  if (v56)
  {
    std::__shared_weak_count::__release_weak(v56);
  }

  v57 = v53[3];
  if (v57)
  {
    std::__shared_weak_count::__release_weak(v57);
  }

  operator delete(v53);
  sub_100697DEC(&a9);
  sub_1006B6D90(v54 - 120);
  sub_100697E40(&a53);
  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(STACK[0x2D8]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  sub_100697DA4(&STACK[0x3E0]);
  _Unwind_Resume(a1);
}

void sub_100697BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, std::__shared_weak_count *a55, uint64_t a56, uint64_t a57, std::__shared_weak_count *a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
  }

  if (a58)
  {
    std::__shared_weak_count::__release_weak(a58);
  }

  if (a55)
  {
    std::__shared_weak_count::__release_weak(a55);
  }

  JUMPOUT(0x100697B90);
}

void sub_100697C18()
{
  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(STACK[0x3F8]);
  }

  if (STACK[0x3F0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x3F0]);
  }

  JUMPOUT(0x100697BC8);
}

void sub_100697C44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 8))
      {
        dispatch_assert_queue_V2(*(v5 + 24));
        v16 = 0uLL;
        sub_100679DF8(v5, a1 + 24, &v16);
        __p[1] = 0;
        v15 = 0;
        __p[0] = 0;
        sub_1009CE42C(v16, __p, a2);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }

        v8 = *(v5 + 240);
        v9 = v16;
        v10 = *(a1 + 207);
        if (v10 >= 0)
        {
          v11 = (a1 + 184);
        }

        else
        {
          v11 = *(a1 + 184);
        }

        if (v10 >= 0)
        {
          v12 = *(a1 + 207);
        }

        else
        {
          v12 = *(a1 + 192);
        }

        memset(v13, 0, sizeof(v13));
        sub_1001E0D88(v13, v11, &v11[v12], v12);
        sub_100B97900(v8, (v9 + 152), a1 + 48, v13, a2);
        sub_101778E14(v13, &v16);
      }

      sub_100004A34(v7);
    }
  }
}

void sub_100697D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_100004A34(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_100697DA4(uint64_t a1)
{
  sub_1006A6E54(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100697DEC(uint64_t a1)
{
  sub_1006A6E54(a1 + 72);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_100697E40(uint64_t a1)
{
  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  sub_1006A6E54(a1 + 72);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100697EA4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  sub_100BA2D28(*(a1 + 240), a2, a3, a4);
}

void sub_100697FE4(uint64_t a1, uint64_t a2, unsigned int *a3, _BYTE *a4)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__src = 0u;
  v7 = 0u;
  v5 = 0u;
  v4 = *(a1 + 240);
  LOBYTE(__p[0]) = 0;
  LOBYTE(__p[1]) = 0;
  v24 = 0;
  sub_100BA3504(v4, a2, a3, __p);
}

void sub_1006988B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10067A5EC((v65 + 4));
  v67 = v65[3];
  if (v67)
  {
    std::__shared_weak_count::__release_weak(v67);
  }

  operator delete(v65);
  sub_100695CEC(&a9);
  sub_1006BD9F0(&STACK[0x430]);
  sub_100695D58(&a27);
  sub_100698B1C(&a65);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  sub_100682E68(&STACK[0x450]);
  if (LOBYTE(STACK[0x2A8]) == 1)
  {
    v68 = STACK[0x290];
    if (STACK[0x290])
    {
      STACK[0x298] = v68;
      operator delete(v68);
    }
  }

  sub_1006A6E54(&STACK[0x2B0]);
  _Unwind_Resume(a1);
}

void sub_100698AFC()
{
  if (LOBYTE(STACK[0x578]) == 1)
  {
    sub_1002AF7A0(&STACK[0x460]);
  }

  JUMPOUT(0x100698AF4);
}

uint64_t sub_100698B1C(uint64_t a1)
{
  sub_1006A2AF0(a1 + 48);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100698B68(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, char *a5)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  sub_100BA3C8C(*(a1 + 240), a2, a3, a4, a5);
}

void sub_100698C40(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  __p = 0u;
  memset(v4, 0, sizeof(v4));
  sub_100BA4418(*(a1 + 240), a2, a3, a4);
}

void sub_100699040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_10068C9D8(&a17);
  sub_10068C9D8(&a53);
  if (STACK[0x298])
  {
    v54 = STACK[0x280];
    if (STACK[0x280])
    {
      STACK[0x288] = v54;
      operator delete(v54);
    }
  }

  sub_1006A6E54(&STACK[0x2A0]);
  _Unwind_Resume(a1);
}

void sub_1006990B4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((*(a2 + 480) & 1) == 0)
  {
    v5 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_101778E8C();
    }

    goto LABEL_19;
  }

  if (*(a2 + 216) == 1 && (*(a2 + 208) & 1) == 0)
  {
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_101778EC0();
    }

LABEL_19:
    *a3 = 0;
    a3[24] = 0;
    return;
  }

  if (*(a2 + 255) < 0)
  {
    sub_100005F2C(&v7, *(a2 + 232), *(a2 + 240));
  }

  else
  {
    v7 = *(a2 + 232);
    v8 = *(a2 + 248);
  }

  if (*(a2 + 279) < 0)
  {
    sub_100005F2C(&v9, *(a2 + 256), *(a2 + 264));
  }

  else
  {
    v9 = *(a2 + 256);
    v10 = *(a2 + 272);
  }

  if ((*(a2 + 480) & 1) == 0)
  {
    sub_1000D1644();
  }

  sub_1006AD7DC(a2 + 352, v11);
  if (*(a2 + 216))
  {
    sub_10000501C(&v23, "");
    if (*(a2 + 31) < 0)
    {
      sub_100005F2C(&v25, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v25 = *(a2 + 8);
      v26 = *(a2 + 24);
    }

    if ((*(a2 + 208) & 1) == 0)
    {
      sub_1000D1644();
    }

    sub_1006AD7DC(a2 + 80, v27);
    v13 = v24;
    v12 = v23;
    v14 = v25;
    v15 = v26;
    v16 = v27[0];
    v17 = v27[1];
    v18 = v27[2];
    v19 = v27[3];
    v20 = v28;
    v21 = v29;
    v22 = 1;
  }

  else
  {
    LOBYTE(v12) = 0;
    v22 = 0;
  }

  sub_1006A1138(v31, &v7);
  v31[68] = 0;
  sub_1002AF554(v30, a3);
  sub_1002AF7A0(v31);
  sub_1002AF808(&v7);
}

void sub_100699334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a55 < 0)
  {
    operator delete(__p);
  }

  sub_1006A0334(&a9);
  _Unwind_Resume(a1);
}

void sub_1006993D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0uLL;
  sub_100679DF8(a1, a2 + 248, &v24);
  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(__p) = 0;
  v21 = 0;
  *v6 = 0u;
  v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  LOBYTE(v13) = 0;
  sub_1009CE42C(v24, v22, v6);
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 == 1 && v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  sub_100BA4948(*(a1 + 240), (v24 + 152), a2, a3);
}

void sub_100699534(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069956C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0uLL;
  sub_100679DF8(a1, a2 + 248, &v24);
  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(__p) = 0;
  v21 = 0;
  *v6 = 0u;
  v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  LOBYTE(v13) = 0;
  sub_1009CE42C(v24, v22, v6);
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 == 1 && v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  sub_100BA54BC(*(a1 + 240), (v24 + 152), a2, a3);
}

void sub_1006996C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100699700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0uLL;
  sub_100679DF8(a1, a2 + 248, &v24);
  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(__p) = 0;
  v21 = 0;
  *v6 = 0u;
  v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  LOBYTE(v13) = 0;
  sub_1009CE42C(v24, v22, v6);
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 == 1 && v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  sub_100BA59B8(*(a1 + 240), (v24 + 152), a2, a3);
}

void sub_10069985C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100699894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0uLL;
  sub_100679DF8(a1, a2 + 248, &v23);
  v21[1] = 0;
  v22 = 0;
  v21[0] = 0;
  v14 = 0;
  LOBYTE(v15) = 0;
  v17 = 0;
  LOBYTE(__p) = 0;
  v20 = 0;
  *v5 = 0u;
  v6 = 0u;
  *v7 = 0u;
  v8 = 0u;
  *v9 = 0u;
  *v10 = 0u;
  v11 = 0u;
  LOBYTE(v12) = 0;
  sub_1009CE42C(v23, v21, v5);
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  if (v17 == 1 && v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10[1])
  {
    *&v11 = v10[1];
    operator delete(v10[1]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  if (v7[1])
  {
    *&v8 = v7[1];
    operator delete(v7[1]);
  }

  if (SBYTE7(v6) < 0)
  {
    operator delete(v5[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  sub_100BA4CF8(*(a1 + 240), (v23 + 152), a2);
}

void sub_1006999F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100699A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0uLL;
  sub_100679DF8(a1, a2 + 248, &v24);
  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(__p) = 0;
  v21 = 0;
  *v6 = 0u;
  v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  LOBYTE(v13) = 0;
  sub_1009CE42C(v24, v22, v6);
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 == 1 && v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  sub_100BA503C(*(a1 + 240), (v24 + 152), a2, a3);
}

void sub_100699B84(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100699BBC(uint64_t a1, char *a2, uint64_t a3, char *a4)
{
  if (*a4)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    *v13 = 0u;
    v10 = 0u;
    *v11 = 0u;
    *v9 = 0u;
    sub_100BA5FD8(*(a1 + 240), a2, a3, a4);
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100679904(a1, (a2 + 248), __p);
  v7 = __p[0];
  sub_100C18C94(a2, v27);
  BYTE8(v17) = 0;
  LOBYTE(v18) = 0;
  BYTE8(v19) = 0;
  LOBYTE(v20) = 0;
  BYTE8(v21) = 0;
  *v9 = 0u;
  v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  *v13 = 0u;
  *v14 = 0u;
  v15 = 0u;
  LOBYTE(v16) = 0;
  sub_1009CE42C(v7, v27, v9);
  if (BYTE8(v21) == 1 && SBYTE7(v21) < 0)
  {
    operator delete(v20);
  }

  if (BYTE8(v19) == 1 && v18)
  {
    *(&v18 + 1) = v18;
    operator delete(v18);
  }

  if (BYTE8(v17) == 1 && v16)
  {
    *(&v16 + 1) = v16;
    operator delete(v16);
  }

  if (v14[1])
  {
    *&v15 = v14[1];
    operator delete(v14[1]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (SBYTE7(v10) < 0)
  {
    operator delete(v9[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  sub_100BA6428(*(a1 + 240), __p[0] + 19, a2, a3);
}

void sub_100699DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_10068C04C(&a16);
  if (*(v16 - 49) < 0)
  {
    operator delete(*(v16 - 72));
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_100699E18(uint64_t a1, char *a2, int8x16_t *a3, uint64_t a4, char *a5)
{
  if (*a5)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    *v14 = 0u;
    v11 = 0u;
    *v12 = 0u;
    *v10 = 0u;
    sub_100BA827C(*(a1 + 240), a2, a3, a5);
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100679904(a1, (a2 + 248), __p);
  v8 = __p[0];
  sub_100C18C94(a2, v28);
  BYTE8(v18) = 0;
  LOBYTE(v19) = 0;
  BYTE8(v20) = 0;
  LOBYTE(v21) = 0;
  BYTE8(v22) = 0;
  *v10 = 0u;
  v11 = 0u;
  *v12 = 0u;
  v13 = 0u;
  *v14 = 0u;
  *v15 = 0u;
  v16 = 0u;
  LOBYTE(v17) = 0;
  sub_1009CE42C(v8, v28, v10);
  if (BYTE8(v22) == 1 && SBYTE7(v22) < 0)
  {
    operator delete(v21);
  }

  if (BYTE8(v20) == 1 && v19)
  {
    *(&v19 + 1) = v19;
    operator delete(v19);
  }

  if (BYTE8(v18) == 1 && v17)
  {
    *(&v17 + 1) = v17;
    operator delete(v17);
  }

  if (v15[1])
  {
    *&v16 = v15[1];
    operator delete(v15[1]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (v12[1])
  {
    *&v13 = v12[1];
    operator delete(v12[1]);
  }

  if (SBYTE7(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  sub_100BA871C(*(a1 + 240), __p[0] + 19, a2, a3);
}

void sub_10069A018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_10068C04C(&a16);
  if (*(v16 - 49) < 0)
  {
    operator delete(*(v16 - 72));
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_10069A078(uint64_t a1, char *a2, uint64_t *a3, unsigned int *a4, _BYTE *a5)
{
  if ((*a5 & 1) == 0)
  {
    v13 = 0uLL;
    sub_100679904(a1, (a2 + 248), &v13);
    v10 = v13;
    sub_100C18C94(a2, v31);
    v42 = 0;
    LOBYTE(v43) = 0;
    v45 = 0;
    LOBYTE(__p) = 0;
    v48 = 0;
    *__dst = 0u;
    v34 = 0u;
    *v35 = 0u;
    v36 = 0u;
    *v37 = 0u;
    *v38 = 0u;
    v39 = 0u;
    LOBYTE(v40) = 0;
    sub_1009CE42C(v10, v31, __dst);
    if (v48 == 1 && v47 < 0)
    {
      operator delete(__p);
    }

    if (v45 == 1 && v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (v42 == 1 && v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v38[1])
    {
      *&v39 = v38[1];
      operator delete(v38[1]);
    }

    if (v37[0])
    {
      v37[1] = v37[0];
      operator delete(v37[0]);
    }

    if (v35[1])
    {
      *&v36 = v35[1];
      operator delete(v35[1]);
    }

    if (SBYTE7(v34) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    sub_100BA6E28(*(a1 + 240), (v13 + 152), a2, a3, a4);
  }

  if (*(a1 + 432))
  {
    v30 = 0;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    *v14 = 0u;
    v9 = *(a1 + 240);
    LOBYTE(__dst[0]) = 0;
    LOBYTE(__dst[1]) = 0;
    v49 = 0;
    sub_100BA6894(v9, a2, a3, a4, __dst);
  }

  v11 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    sub_101777DC8();
  }

  return &_mh_execute_header & 0xFF00000000 | 0xA;
}

void sub_10069AB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27)
{
  sub_10067A5EC((v27 + 4));
  v29 = v27[3];
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  operator delete(v27);
  sub_100695CEC(&a9);
  sub_1006BD9F0(&STACK[0x540]);
  sub_10069ADB8(&a27);
  sub_100698B1C(&STACK[0x2F8]);
  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  sub_100682E68(&STACK[0x560]);
  if (LOBYTE(STACK[0x3A8]) == 1)
  {
    v30 = STACK[0x390];
    if (STACK[0x390])
    {
      STACK[0x398] = v30;
      operator delete(v30);
    }
  }

  sub_1006A6E54(&STACK[0x3B0]);
  _Unwind_Resume(a1);
}

void sub_10069AD48()
{
  if (SLOBYTE(STACK[0x577]) < 0)
  {
    JUMPOUT(0x10069AD14);
  }

  JUMPOUT(0x10069AD18);
}

void sub_10069AD5C()
{
  if (LOBYTE(STACK[0x688]) == 1)
  {
    sub_1002AF7A0(&STACK[0x570]);
  }

  JUMPOUT(0x10069AD20);
}

void sub_10069AD7C()
{
  sub_10068C04C(&STACK[0x560]);
  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  if (STACK[0x3B8])
  {
    sub_100004A34(STACK[0x3B8]);
  }

  JUMPOUT(0x10069AD20);
}

uint64_t sub_10069ADB8(uint64_t a1)
{
  if (*(a1 + 600) == 1)
  {
    v2 = *(a1 + 576);
    if (v2)
    {
      *(a1 + 584) = v2;
      operator delete(v2);
    }
  }

  sub_100C18C58(a1 + 304);
  sub_1006A6E54(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10069AE14(uint64_t a1, char *a2, uint64_t a3, unsigned __int8 *a4)
{
  if (*a4)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    __p = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    sub_100BA73EC(*(a1 + 240), a2, a3, a4);
  }

  v8[0] = 0;
  v8[1] = 0;
  sub_100679904(a1, (a2 + 248), v8);
  v7 = v8[0];
  sub_100C18C94(a2, v27);
  BYTE8(v17) = 0;
  LOBYTE(v18) = 0;
  BYTE8(__p) = 0;
  LOBYTE(v20) = 0;
  BYTE8(v21) = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  LOBYTE(v16) = 0;
  sub_1009CE42C(v7, v27, &v9);
  if (BYTE8(v21) == 1 && SBYTE7(v21) < 0)
  {
    operator delete(v20);
  }

  if (BYTE8(__p) == 1 && v18)
  {
    *(&v18 + 1) = v18;
    operator delete(v18);
  }

  if (BYTE8(v17) == 1 && v16)
  {
    *(&v16 + 1) = v16;
    operator delete(v16);
  }

  if (*(&v14 + 1))
  {
    *&v15 = *(&v14 + 1);
    operator delete(*(&v14 + 1));
  }

  if (v13)
  {
    *(&v13 + 1) = v13;
    operator delete(v13);
  }

  if (*(&v11 + 1))
  {
    *&v12 = *(&v11 + 1);
    operator delete(*(&v11 + 1));
  }

  if (SBYTE7(v10) < 0)
  {
    operator delete(v9);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  sub_100BA7AFC(*(a1 + 240), (v8[0] + 152), a2, a3);
}

void sub_10069B338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10068C9D8(&a20);
  sub_10068C9D8(&a56);
  if (STACK[0x298])
  {
    v57 = STACK[0x280];
    if (STACK[0x280])
    {
      STACK[0x288] = v57;
      operator delete(v57);
    }
  }

  sub_1006A6E54(&STACK[0x2A0]);
  _Unwind_Resume(a1);
}

uint64_t sub_10069B3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  sub_100678DCC(a1, a2 + 248, &v9);
  if (v9)
  {
    sub_100BA8C08(*(a1 + 240), (v9 + 152), a2, a3);
  }

  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Not sending group composing indicator -- session not connected", v8, 2u);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  return 0;
}

void sub_10069B4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069B508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0uLL;
  sub_100679DF8(a1, a2 + 248, &v24);
  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(__p) = 0;
  v21 = 0;
  *v6 = 0u;
  v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  LOBYTE(v13) = 0;
  sub_1009CE42C(v24, v22, v6);
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 == 1 && v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  sub_100BA901C(*(a1 + 240), (v24 + 152), a2, a3);
}

void sub_10069B664(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069B69C(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  v24 = 0uLL;
  sub_100679DF8(a1, a2 + 248, &v24);
  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(__p) = 0;
  v21 = 0;
  *v6 = 0u;
  v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  LOBYTE(v13) = 0;
  sub_1009CE42C(v24, v22, v6);
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 == 1 && v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  sub_100BA96B4(*(a1 + 240), (v24 + 152), a2, a3);
}

void sub_10069B7F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069B830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0uLL;
  sub_100679DF8(a1, a2 + 248, &v24);
  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v18 = 0;
  LOBYTE(__p) = 0;
  v21 = 0;
  *v6 = 0u;
  v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  LOBYTE(v13) = 0;
  sub_1009CE42C(v24, v22, v6);
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 == 1 && v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  sub_100BAA06C(*(a1 + 240), (v24 + 152), a2, a3);
}

void sub_10069B98C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069B9C4(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v12 = Lazuli::asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Retrieving message of type: %s", buf, 0xCu);
  }

  bzero(buf, 0x460uLL);
  *buf = -1;
  v14 = 0;
  v19[0] = 0;
  v20 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  memset(&v12[4], 0, 48);
  v13 = 0;
  v15 = 0u;
  memset(__p, 0, sizeof(__p));
  LOBYTE(v17) = 0;
  sub_10071DFC8(*a2, v5);
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  *&__p[1] = *v5;
  __p[3] = v6[0];
  HIBYTE(v6[0]) = 0;
  LOBYTE(v5[0]) = 0;
  v17 = *&v6[1];
  v18 = v6[3];
  sub_100466A9C(v19, v7);
  if (BYTE8(v9) == 1 && SBYTE7(v8) < 0)
  {
    operator delete(v7[0]);
  }

  if (SHIBYTE(v6[0]) < 0)
  {
    operator delete(v5[0]);
  }

  *buf = *(*a2 + 128);
  v9 = 0u;
  v10 = 0u;
  *v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  *v5 = 0u;
  sub_100C161F0();
}

void sub_10069C338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  sub_10067AA50(&a9);
  sub_10069C518(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10069C3D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v5 = *(a2 + 56);
  *(a1 + 64) = 0;
  *(a1 + 56) = v5;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a1 + 88) = 1;
  }

  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v6;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v7 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v7;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 120) = 0;
  v8 = *(a2 + 144);
  v9 = *(a2 + 160);
  *(a1 + 168) = 0;
  *(a1 + 160) = v9;
  *(a1 + 144) = v8;
  *(a1 + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    v10 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v10;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 168) = 0;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = 1;
  }

  *(a1 + 216) = *(a2 + 216);
  sub_1006AB798(a1 + 232, a2 + 232);
  *(a1 + 1120) = 1;
  return a1;
}

uint64_t sub_10069C518(uint64_t a1)
{
  sub_1006A9CB8(a1 + 232);
  if (*(a1 + 208) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1)
  {
    v3 = (a1 + 64);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_10069C5C4(uint64_t a1, uint64_t *a2)
{
  bzero(&v12, 0x460uLL);
  v12 = -1;
  v17 = 0;
  v22[0] = 0;
  v23 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = 0u;
  v25 = 0u;
  v29 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  LOBYTE(v20) = 0;
  v4 = sub_1000CE328(*a2);
  if (*(v4 + 23) < 0)
  {
    sub_100005F2C(__dst, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    v7[0] = *(v4 + 16);
    *__dst = v5;
  }

  LOBYTE(v7[1]) = 0;
  v8 = 0;
  LOBYTE(v9[0]) = 0;
  BYTE8(v11) = 0;
  if (SHIBYTE(v19[3]) < 0)
  {
    operator delete(v19[1]);
  }

  *&v19[1] = *__dst;
  v19[3] = v7[0];
  HIBYTE(v7[0]) = 0;
  LOBYTE(__dst[0]) = 0;
  v20 = *&v7[1];
  v21 = v8;
  sub_100466A9C(v22, v9);
  if (BYTE8(v11) == 1 && v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (SHIBYTE(v7[0]) < 0)
  {
    operator delete(__dst[0]);
  }

  v12 = *(*a2 + 128);
  sub_100C161F0();
}

void sub_10069D03C(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, void *__pa, ...)
{
  va_start(va1, __pa);
  va_start(va, __pa);
  v8 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_1000D45B0(va1);
  sub_1000CFBA0(va);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v6 < 0)
  {
    operator delete(__pa);
  }

  sub_10069C518(&STACK[0x3D8]);
  _Unwind_Resume(a1);
}

void sub_10069D1E8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *v21 = 0u;
  v22 = 0u;
  *v20 = 0u;
  sub_10071E1B0(a2, v20);
  lpsrc = 0;
  v19 = 0;
  v5 = *(a1 + 240);
  if (SHIBYTE(v21[0]) < 0)
  {
    sub_100005F2C(__dst, v20[0], v20[1]);
  }

  else
  {
    *__dst = *v20;
    v24 = v21[0];
  }

  v25 = 0;
  v26 = 0;
  LOBYTE(__p) = 0;
  v29 = 0;
  sub_100B9B634(v5, __dst, &lpsrc);
  if (v29 == 1 && v28 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
  }

  if (lpsrc)
  {
    if ((*(*lpsrc + 16))(lpsrc) == 3)
    {
      if (lpsrc)
      {
        if (v6)
        {
          v7 = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v17[0] = v6;
          v17[1] = v7;
          sub_10069B9C4(a1, v17);
        }
      }

      v11 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        sub_1017791D8();
      }
    }

    else if ((*(*lpsrc + 16))(lpsrc) == 4)
    {
      if (lpsrc)
      {
        if (v9)
        {
          v10 = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v16[0] = v9;
          v16[1] = v10;
          sub_10069C5C4(a1, v16);
        }
      }

      v15 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        sub_101779170();
      }
    }

    else
    {
      v12 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        v13 = (*(*lpsrc + 16))(lpsrc);
        v14 = sub_10071D7CC(v13);
        sub_101779138(v14, __dst);
      }
    }
  }

  else
  {
    v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      sub_101779240();
    }
  }

  *a3 = 0;
  a3[1120] = 0;
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  if (SHIBYTE(v21[0]) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_10069D600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, ...)
{
  va_start(va, a13);
  if (v13)
  {
    sub_100004A34(v13);
    sub_100004A34(v13);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_1000D6F38(va);
  _Unwind_Resume(a1);
}

void sub_10069D674(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B9B8E0(*(a1 + 240), &v3);
  *a2 = v3;
  *(a2 + 16) = v4;
  v4 = 0;
  v3 = 0uLL;
  *(a2 + 24) = 1;
  v5 = &v3;
  sub_1006ACCB8(&v5);
}

unint64_t sub_10069D6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 64) == *(a3 + 72))
  {
    v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "#I No message IDs to report";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
    }
  }

  else
  {
    v6 = *(a3 + 31);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a3 + 16);
    }

    if (v6)
    {
      if (!*(a1 + 176))
      {
        v21 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
        {
          sub_101778D10();
        }

        goto LABEL_122;
      }

      if (!*(a1 + 192))
      {
        v22 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          sub_101778CDC();
        }

        goto LABEL_122;
      }

      if (!*(a1 + 208))
      {
        v23 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
        {
          sub_1017792B0();
        }

        goto LABEL_122;
      }

      v70 = 0;
      v71 = 0;
      v72 = 0;
      if (*(a3 + 152) == 1)
      {
        v9 = *(a3 + 151);
        v10 = v9 >= 0 ? (a3 + 128) : *(a3 + 128);
        for (i = v9 >= 0 ? *(a3 + 151) : *(a3 + 136); i; --i)
        {
          buf[0] = *v10;
          sub_1001CD884(&v70, buf);
          ++v10;
        }
      }

      v67 = 0;
      v68 = 0;
      v69 = 0;
      if (*(a3 + 112) == 1)
      {
        v12 = *(a3 + 111);
        v13 = v12 >= 0 ? (a3 + 88) : *(a3 + 88);
        for (j = v12 >= 0 ? *(a3 + 111) : *(a3 + 96); j; --j)
        {
          buf[0] = *v13;
          sub_1001CD884(&v67, buf);
          ++v13;
        }
      }

      v15 = xpc_array_create(0, 0);
      if (v15 || (v15 = xpc_null_create()) != 0)
      {
        if (xpc_get_type(v15) == &_xpc_type_array)
        {
          xpc_retain(v15);
          v16 = v15;
        }

        else
        {
          v16 = xpc_null_create();
        }
      }

      else
      {
        v16 = xpc_null_create();
        v15 = 0;
      }

      xpc_release(v15);
      v24 = *(a3 + 64);
      for (k = *(a3 + 72); v24 != k; v24 += 96)
      {
        *__p = 0u;
        v66 = 0u;
        *buf = 0u;
        sub_10071E1B0(v24, buf);
        if (SHIBYTE(__p[0]) >= 0)
        {
          v26 = buf;
        }

        else
        {
          v26 = *buf;
        }

        v27 = xpc_string_create(v26);
        if (!v27)
        {
          v27 = xpc_null_create();
        }

        xpc_array_append_value(v16, v27);
        xpc_release(v27);
        if (SHIBYTE(v66) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(*buf);
        }
      }

      memset(buf, 0, sizeof(buf));
      __p[0] = 0;
      if (*(a2 + 208))
      {
        v28 = (a3 + 128);
        v29 = a4;
        if (*(a2 + 207) < 0)
        {
          sub_100005F2C(buf, *(a2 + 184), *(a2 + 192));
        }

        else
        {
          *buf = *(a2 + 184);
          __p[0] = *(a2 + 200);
        }
      }

      else
      {
        sub_100A972E8(buf);
        v28 = (a3 + 128);
        v29 = a4;
      }

      v63 = 0;
      v30 = xpc_dictionary_create(0, 0, 0);
      v31 = v30;
      if (v30)
      {
        v63 = v30;
      }

      else
      {
        v31 = xpc_null_create();
        v63 = v31;
        if (!v31)
        {
          v32 = xpc_null_create();
          v31 = 0;
          goto LABEL_67;
        }
      }

      if (xpc_get_type(v31) == &_xpc_type_dictionary)
      {
        xpc_retain(v31);
LABEL_68:
        xpc_release(v31);
        if (*(a3 + 31) >= 0)
        {
          v33 = (a3 + 8);
        }

        else
        {
          v33 = *(a3 + 8);
        }

        v61 = xpc_string_create(v33);
        if (!v61)
        {
          v61 = xpc_null_create();
        }

        *__dst = &v63;
        *&__dst[8] = ims::lazuli::kRemoteUri;
        sub_10000F688(__dst, &v61, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v61);
        v61 = 0;
        if (*(a3 + 56) == 1)
        {
          if (*(a3 + 55) < 0)
          {
            sub_100005F2C(__dst, *(a3 + 32), *(a3 + 40));
          }

          else
          {
            *__dst = *(a3 + 32);
            v74 = *(a3 + 48);
          }
        }

        else
        {
          sub_10000501C(__dst, "");
        }

        if (v74 >= 0)
        {
          v34 = __dst;
        }

        else
        {
          v34 = *__dst;
        }

        v59 = xpc_string_create(v34);
        if (!v59)
        {
          v59 = xpc_null_create();
        }

        v58[0] = &v63;
        v58[1] = ims::lazuli::kSpamReportingUri;
        sub_10000F688(v58, &v59, &v60);
        xpc_release(v60);
        v60 = 0;
        xpc_release(v59);
        v59 = 0;
        if (SHIBYTE(v74) < 0)
        {
          operator delete(*__dst);
        }

        v56 = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          v56 = xpc_null_create();
        }

        *__dst = &v63;
        *&__dst[8] = ims::lazuli::kMessageIDList;
        sub_1000609CC(__dst, &v56, &v57);
        xpc_release(v57);
        v57 = 0;
        xpc_release(v56);
        v56 = 0;
        v54 = xpc_BOOL_create(*a3);
        if (!v54)
        {
          v54 = xpc_null_create();
        }

        *__dst = &v63;
        *&__dst[8] = ims::lazuli::kIsChatbot;
        sub_10000F688(__dst, &v54, &v55);
        xpc_release(v55);
        v55 = 0;
        xpc_release(v54);
        v54 = 0;
        v52 = xpc_data_create(v67, v68 - v67);
        if (!v52)
        {
          v52 = xpc_null_create();
        }

        *__dst = &v63;
        *&__dst[8] = ims::lazuli::kSpamContent;
        sub_10000F688(__dst, &v52, &v53);
        xpc_release(v53);
        v53 = 0;
        xpc_release(v52);
        v52 = 0;
        v35 = Lazuli::asString();
        v50 = xpc_string_create(v35);
        if (!v50)
        {
          v50 = xpc_null_create();
        }

        *__dst = &v63;
        *&__dst[8] = ims::lazuli::kSpamType;
        sub_10000F688(__dst, &v50, &v51);
        xpc_release(v51);
        v51 = 0;
        xpc_release(v50);
        v50 = 0;
        v48 = xpc_data_create(v70, v71 - v70);
        if (!v48)
        {
          v48 = xpc_null_create();
        }

        *__dst = &v63;
        *&__dst[8] = ims::lazuli::kFreeText;
        sub_10000F688(__dst, &v48, &v49);
        xpc_release(v49);
        v49 = 0;
        xpc_release(v48);
        v48 = 0;
        if (SHIBYTE(__p[0]) >= 0)
        {
          v36 = buf;
        }

        else
        {
          v36 = *buf;
        }

        v46 = xpc_string_create(v36);
        if (!v46)
        {
          v46 = xpc_null_create();
        }

        *__dst = &v63;
        *&__dst[8] = ims::lazuli::kConversationId;
        sub_10000F688(__dst, &v46, &v47);
        xpc_release(v47);
        v47 = 0;
        xpc_release(v46);
        v46 = 0;
        if (*(v29 + 23) >= 0)
        {
          v37 = v29;
        }

        else
        {
          v37 = *v29;
        }

        v44 = xpc_string_create(v37);
        if (!v44)
        {
          v44 = xpc_null_create();
        }

        *__dst = &v63;
        *&__dst[8] = ims::lazuli::kTransactionId;
        sub_10000F688(__dst, &v44, &v45);
        xpc_release(v45);
        v45 = 0;
        xpc_release(v44);
        v44 = 0;
        v38 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a3 + 31) >= 0)
          {
            v39 = a3 + 8;
          }

          else
          {
            v39 = *(a3 + 8);
          }

          *__dst = 136446210;
          *&__dst[4] = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Reporting spam for destination URI: %{public}s", __dst, 0xCu);
        }

        v40 = *(a1 + 208);
        v43 = v63;
        if (v63)
        {
          xpc_retain(v63);
        }

        else
        {
          v43 = xpc_null_create();
        }

        (*(*v40 + 24))(v40, &v43);
        xpc_release(v43);
        v43 = 0;
        *__dst = v29;
        v41 = sub_1006C66EC((a1 + 448), v29, &unk_101802C98, __dst, v58);
        *(v41 + 56) = *a3;
        std::string::operator=((v41 + 8), (a3 + 8));
        sub_10012BF3C((v41 + 11), (a3 + 32));
        if (v41 + 7 != a3)
        {
          sub_1006ACD84((v41 + 15), *(a3 + 64), *(a3 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 72) - *(a3 + 64)) >> 5));
        }

        sub_10012BF3C(v41 + 6, (a3 + 88));
        *(v41 + 44) = *(a3 + 120);
        sub_10012BF3C((v41 + 23), v28);
        xpc_release(v63);
        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(*buf);
        }

        xpc_release(v16);
        if (v67)
        {
          v68 = v67;
          operator delete(v67);
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

LABEL_122:
        v19 = 0;
        v20 = 0;
        return v20 | v19;
      }

      v32 = xpc_null_create();
LABEL_67:
      v63 = v32;
      goto LABEL_68;
    }

    v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "#I No destination URI to report spam";
      goto LABEL_34;
    }
  }

  v19 = &_mh_execute_header;
  v20 = 4;
  return v20 | v19;
}