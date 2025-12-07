void sub_1004DE868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, const void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  sub_1000212F4(&a23);
  sub_100010250(&a20);
  ctu::ns::AutoPool::~AutoPool(&a35);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004DE990(Registry *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 49) != 1)
  {
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    sub_100A34BC8(v24);
    v18[0] = v22;
    v18[1] = &v19;
    sub_1004EE0B4(v18, v24);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*(&v25 + 1));
    }

    if (SBYTE7(v25) < 0)
    {
      operator delete(v24[0]);
    }

    sub_100168A48(v22, &v19, v24);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = *v24;
    *(a4 + 16) = v25;
    if (SHIBYTE(v21) < 0)
    {
      operator delete(v19);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    return 1;
  }

  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(a1);
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v24[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v24);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_20:
  (**v14)(&v19, v14, a2 + 24);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = v19;
  if (v19)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *v24 = 0u;
    v35 = 1;
    memset(v36, 0, sizeof(v36));
    v37 = 0u;
    v38 = 0;
    (*(*v19 + 104))(v19, v24);
    sub_100168A48(v36, &v37, v22);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = *v22;
    *(a4 + 16) = v23;
    sub_1000FF134(v24);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v16)
  {
    return 1;
  }

  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  result = 0;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void sub_1004DEC40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  sub_1000FF134(&a23);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1004DECA8(const void *a1, Registry **a2, uint64_t a3, uint64_t a4, void ***a5, int64_t a6, uint64_t a7, uint64_t a8, int64_t a9, uint64_t a10, int64_t a11)
{
  value = a6;
  v135 = a7;
  ServiceMap = Registry::getServiceMap(*a2);
  v15 = ServiceMap;
  if (v16 < 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, __p);
  v91 = a8;
  if (!v20)
  {
    v21 = 0;
LABEL_9:
    std::mutex::unlock(v15);
    v23 = 0;
    v24 = 1;
    if (!v21)
    {
      goto LABEL_331;
    }

    goto LABEL_10;
  }

  v21 = v20[3];
  v22 = v20[4];
  if (!v22)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  v23 = v22;
  sub_100004A34(v22);
  v24 = 0;
  if (!v21)
  {
    goto LABEL_331;
  }

LABEL_10:
  v89 = v24;
  v90 = v23;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a4, *(a4 + 8));
  }

  else
  {
    __dst = *a4;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(v163, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v163[0] = __dst;
  }

  v111[0] = 0;
  if (SHIBYTE(v163[0].__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(__p, v163[0].__r_.__value_.__l.__data_, v163[0].__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&v163[0].__r_.__value_.__l.__data_;
    *&v124 = *(&v163[0].__r_.__value_.__l + 2);
  }

  __src.__r_.__value_.__r.__words[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v25 = v111[0];
    v111[0] = __src.__r_.__value_.__l.__data_;
    v159.__r_.__value_.__r.__words[0] = v25;
    sub_100005978(&v159.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v124) < 0)
  {
    operator delete(__p[0]);
  }

  v143[0] = v111[0];
  v111[0] = 0;
  sub_100005978(v111);
  if (SHIBYTE(v163[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v163[0].__r_.__value_.__l.__data_);
  }

  v26 = [[NSURLComponents componentsWithString:?]];
  sub_100005978(v143);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  memset(&__src, 0, sizeof(__src));
  sub_10000C320(__p);
  memset(v163, 0, 24);
  ctu::cf::assign();
  v159 = v163[0];
  if ((v163[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v159;
  }

  else
  {
    v27 = v159.__r_.__value_.__r.__words[0];
  }

  if ((v163[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v159.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v159.__r_.__value_.__l.__size_;
  }

  sub_10000C030(&v124, v27, size);
  sub_10000C030(&v124, ",", 1);
  *(&v124 + *(v124 - 24) + 8) = *(&v124 + *(v124 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::ostream::operator<<();
  sub_1004F0B4C(&v124 + 8, &__src);
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  *&v124 = v29;
  if (SHIBYTE(v129) < 0)
  {
    operator delete(*(&v128 + 1));
  }

  std::locale::~locale(&v125);
  std::iostream::~basic_iostream();
  std::ios::~ios();

  v163[0].__r_.__value_.__r.__words[0] = 0;
  v30 = xpc_dictionary_create(0, 0, 0);
  v31 = v30;
  if (v30)
  {
    v163[0].__r_.__value_.__r.__words[0] = v30;
  }

  else
  {
    v31 = xpc_null_create();
    v163[0].__r_.__value_.__r.__words[0] = v31;
    if (!v31)
    {
      v32 = xpc_null_create();
      v31 = 0;
      goto LABEL_44;
    }
  }

  if (xpc_get_type(v31) != &_xpc_type_dictionary)
  {
    v32 = xpc_null_create();
LABEL_44:
    v163[0].__r_.__value_.__r.__words[0] = v32;
    goto LABEL_45;
  }

  xpc_retain(v31);
LABEL_45:
  xpc_release(v31);
  if (BYTE4(v135) == 1)
  {
    if ((v135 - 1) >= 3)
    {
      v33 = 3;
    }

    else
    {
      v33 = qword_101812098[(v135 - 1)];
    }

    v121 = xpc_int64_create(v33);
    if (!v121)
    {
      v121 = xpc_null_create();
    }

    __p[0] = v163;
    __p[1] = "error_cause_code";
    sub_10000F688(__p, &v121, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v121);
    v121 = 0;
  }

  if (BYTE4(value) == 1)
  {
    v119 = xpc_int64_create(value);
    if (!v119)
    {
      v119 = xpc_null_create();
    }

    __p[0] = v163;
    __p[1] = "http_response_code";
    sub_10000F688(__p, &v119, &v120);
    xpc_release(v120);
    v120 = 0;
    xpc_release(v119);
    v119 = 0;
  }

  if (a10)
  {
    v117 = xpc_int64_create(a9);
    if (!v117)
    {
      v117 = xpc_null_create();
    }

    __p[0] = v163;
    __p[1] = "network_error_code";
    sub_10000F688(__p, &v117, &v118);
    xpc_release(v118);
    v118 = 0;
    xpc_release(v117);
    v117 = 0;
  }

  if ((a11 & 0x100000000) != 0)
  {
    v115 = xpc_int64_create(a11);
    if (!v115)
    {
      v115 = xpc_null_create();
    }

    __p[0] = v163;
    __p[1] = "response_time";
    sub_10000F688(__p, &v115, &v116);
    xpc_release(v116);
    v116 = 0;
    xpc_release(v115);
    v115 = 0;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_src = &__src;
  }

  else
  {
    p_src = __src.__r_.__value_.__r.__words[0];
  }

  v113 = xpc_string_create(p_src);
  if (!v113)
  {
    v113 = xpc_null_create();
  }

  __p[0] = v163;
  __p[1] = "source";
  sub_10000F688(__p, &v113, &v114);
  xpc_release(v114);
  v114 = 0;
  xpc_release(v113);
  v112 = v163[0].__r_.__value_.__r.__words[0];
  v113 = 0;
  if (v163[0].__r_.__value_.__r.__words[0])
  {
    xpc_retain(v163[0].__r_.__value_.__l.__data_);
  }

  else
  {
    v112 = xpc_null_create();
  }

  (*(*v21 + 16))(v21, "commCenterEntitlementResponse", &v112);
  xpc_release(v112);
  v112 = 0;
  xpc_release(v163[0].__r_.__value_.__l.__data_);
  v35 = 0;
  v111[0] = a1;
  v111[1] = &value;
  v111[2] = &v135;
  do
  {
    if (v35 <= 0x1D && ((1 << v35) & 0x30000001) != 0)
    {
      goto LABEL_75;
    }

    v36 = *&(*a5)[2 * v35];
    v93 = v36;
    v37 = (*a5)[2 * v35 + 1];
    if (*(&v36 + 1))
    {
      atomic_fetch_add_explicit((*(&v36 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (v36)
    {
      v163[0].__r_.__value_.__r.__words[0] = 0;
      v38 = xpc_dictionary_create(0, 0, 0);
      v39 = v38;
      if (v38)
      {
        v163[0].__r_.__value_.__r.__words[0] = v38;
      }

      else
      {
        v39 = xpc_null_create();
        v163[0].__r_.__value_.__r.__words[0] = v39;
        if (!v39)
        {
          v40 = xpc_null_create();
          v39 = 0;
          goto LABEL_87;
        }
      }

      if (xpc_get_type(v39) == &_xpc_type_dictionary)
      {
        xpc_retain(v39);
LABEL_88:
        xpc_release(v39);
        *__p = v93;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1004EE13C(v111, v35, __p, v163);
        if (v37)
        {
          sub_100004A34(v37);
        }

        if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = &__src;
        }

        else
        {
          v41 = __src.__r_.__value_.__r.__words[0];
        }

        v109 = xpc_string_create(v41);
        if (!v109)
        {
          v109 = xpc_null_create();
        }

        __p[0] = v163;
        __p[1] = "source";
        sub_10000F688(__p, &v109, &v110);
        xpc_release(v110);
        v110 = 0;
        xpc_release(v109);
        v108 = v163[0].__r_.__value_.__r.__words[0];
        v109 = 0;
        if (v163[0].__r_.__value_.__r.__words[0])
        {
          xpc_retain(v163[0].__r_.__value_.__l.__data_);
        }

        else
        {
          v108 = xpc_null_create();
        }

        (*(*v21 + 16))(v21, "commCenterEntitlementActionResponse", &v108);
        xpc_release(v108);
        v108 = 0;
        xpc_release(v163[0].__r_.__value_.__l.__data_);
        goto LABEL_101;
      }

      v40 = xpc_null_create();
LABEL_87:
      v163[0].__r_.__value_.__r.__words[0] = v40;
      goto LABEL_88;
    }

LABEL_101:
    if (v37)
    {
      sub_100004A34(v37);
    }

LABEL_75:
    ++v35;
  }

  while (v35 != 30);
  v42 = (*a5)[56];
  v43 = (*a5)[57];
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v42)
  {
    v163[0].__r_.__value_.__r.__words[0] = 0;
    v44 = xpc_dictionary_create(0, 0, 0);
    v45 = v44;
    if (v44)
    {
      v163[0].__r_.__value_.__r.__words[0] = v44;
      goto LABEL_109;
    }

    v45 = xpc_null_create();
    v163[0].__r_.__value_.__r.__words[0] = v45;
    if (v45)
    {
LABEL_109:
      if (xpc_get_type(v45) != &_xpc_type_dictionary)
      {
        v46 = xpc_null_create();
        goto LABEL_113;
      }

      xpc_retain(v45);
    }

    else
    {
      v46 = xpc_null_create();
      v45 = 0;
LABEL_113:
      v163[0].__r_.__value_.__r.__words[0] = v46;
    }

    xpc_release(v45);
    __p[0] = v42;
    __p[1] = v43;
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1004EE13C(v111, 28, __p, v163);
    if (v43)
    {
      sub_100004A34(v43);
    }

    if (*v42 == 6000)
    {
      v47 = v42[3];
      if (v47)
      {
        if (*(v47 + 32) == 1)
        {
          v106 = xpc_BOOL_create(1);
          if (!v106)
          {
            v106 = xpc_null_create();
          }

          __p[0] = v163;
          __p[1] = "has_app_token";
          sub_10000F688(__p, &v106, &v107);
          xpc_release(v107);
          v107 = 0;
          xpc_release(v106);
          v106 = 0;
        }
      }
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &__src;
    }

    else
    {
      v48 = __src.__r_.__value_.__r.__words[0];
    }

    v104 = xpc_string_create(v48);
    if (!v104)
    {
      v104 = xpc_null_create();
    }

    __p[0] = v163;
    __p[1] = "source";
    sub_10000F688(__p, &v104, &v105);
    xpc_release(v105);
    v105 = 0;
    xpc_release(v104);
    v103 = v163[0].__r_.__value_.__r.__words[0];
    v104 = 0;
    if (v163[0].__r_.__value_.__r.__words[0])
    {
      xpc_retain(v163[0].__r_.__value_.__l.__data_);
    }

    else
    {
      v103 = xpc_null_create();
    }

    (*(*v21 + 16))(v21, "commCenterEntitlementActionResponse", &v103);
    xpc_release(v103);
    v103 = 0;
    xpc_release(v163[0].__r_.__value_.__l.__data_);
  }

  if (v43)
  {
    sub_100004A34(v43);
  }

  v49 = (*a5)[58];
  v50 = (*a5)[59];
  if (v50)
  {
    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v49)
  {
    v163[0].__r_.__value_.__r.__words[0] = 0;
    v51 = xpc_dictionary_create(0, 0, 0);
    v52 = v51;
    if (v51)
    {
      v163[0].__r_.__value_.__r.__words[0] = v51;
      goto LABEL_141;
    }

    v52 = xpc_null_create();
    v163[0].__r_.__value_.__r.__words[0] = v52;
    if (v52)
    {
LABEL_141:
      if (xpc_get_type(v52) != &_xpc_type_dictionary)
      {
        v53 = xpc_null_create();
        goto LABEL_145;
      }

      xpc_retain(v52);
    }

    else
    {
      v53 = xpc_null_create();
      v52 = 0;
LABEL_145:
      v163[0].__r_.__value_.__r.__words[0] = v53;
    }

    xpc_release(v52);
    __p[0] = v49;
    __p[1] = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1004EE13C(v111, 29, __p, v163);
    if (v50)
    {
      sub_100004A34(v50);
    }

    if (*v49 == 6000)
    {
      v54 = v49[3];
      if (v54)
      {
        if (*(v54 + 32) == 1)
        {
          v101 = xpc_BOOL_create(1);
          if (!v101)
          {
            v101 = xpc_null_create();
          }

          __p[0] = v163;
          __p[1] = "has_app_token";
          sub_10000F688(__p, &v101, &v102);
          xpc_release(v102);
          v102 = 0;
          xpc_release(v101);
          v101 = 0;
        }
      }
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &__src;
    }

    else
    {
      v55 = __src.__r_.__value_.__r.__words[0];
    }

    v99 = xpc_string_create(v55);
    if (!v99)
    {
      v99 = xpc_null_create();
    }

    __p[0] = v163;
    __p[1] = "source";
    sub_10000F688(__p, &v99, &v100);
    xpc_release(v100);
    v100 = 0;
    xpc_release(v99);
    v98 = v163[0].__r_.__value_.__r.__words[0];
    v99 = 0;
    if (v163[0].__r_.__value_.__r.__words[0])
    {
      xpc_retain(v163[0].__r_.__value_.__l.__data_);
    }

    else
    {
      v98 = xpc_null_create();
    }

    (*(*v21 + 16))(v21, "commCenterEntitlementActionResponse", &v98);
    xpc_release(v98);
    v98 = 0;
    xpc_release(v163[0].__r_.__value_.__l.__data_);
  }

  if (v50)
  {
    sub_100004A34(v50);
  }

  v56 = **a5;
  v57 = (*a5)[1];
  if (v57)
  {
    atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v56)
  {
    v58 = v56[3];
    if (v58)
    {
      if (*v58 == 1)
      {
        v163[0].__r_.__value_.__r.__words[0] = 0;
        v59 = xpc_dictionary_create(0, 0, 0);
        v60 = v59;
        if (v59)
        {
          v163[0].__r_.__value_.__r.__words[0] = v59;
          goto LABEL_175;
        }

        v60 = xpc_null_create();
        v163[0].__r_.__value_.__r.__words[0] = v60;
        if (v60)
        {
LABEL_175:
          if (xpc_get_type(v60) != &_xpc_type_dictionary)
          {
            v61 = xpc_null_create();
            goto LABEL_179;
          }

          xpc_retain(v60);
        }

        else
        {
          v61 = xpc_null_create();
          v60 = 0;
LABEL_179:
          v163[0].__r_.__value_.__r.__words[0] = v61;
        }

        xpc_release(v60);
        __p[0] = v56;
        __p[1] = v57;
        if (v57)
        {
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1004EE13C(v111, 0, __p, v163);
        if (v57)
        {
          sub_100004A34(v57);
        }

        if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &__src;
        }

        else
        {
          v62 = __src.__r_.__value_.__r.__words[0];
        }

        v96 = xpc_string_create(v62);
        if (!v96)
        {
          v96 = xpc_null_create();
        }

        __p[0] = v163;
        __p[1] = "source";
        sub_10000F688(__p, &v96, &v97);
        xpc_release(v97);
        v97 = 0;
        xpc_release(v96);
        v95 = v163[0].__r_.__value_.__r.__words[0];
        v96 = 0;
        if (v163[0].__r_.__value_.__r.__words[0])
        {
          xpc_retain(v163[0].__r_.__value_.__l.__data_);
        }

        else
        {
          v95 = xpc_null_create();
        }

        (*(*v21 + 16))(v21, "commCenterEntitlementActionResponse", &v95);
        xpc_release(v95);
        v95 = 0;
        xpc_release(v163[0].__r_.__value_.__l.__data_);
        v58 = v56[3];
      }

      v132 = 0u;
      v130 = 0u;
      memset(v131, 0, sizeof(v131));
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      *__p = 0u;
      LOBYTE(__p[0]) = *v58;
      sub_100172EF0(&__p[1], (v58 + 8));
      sub_1003ED180(&v125, (v58 + 32));
      sub_1003ED1D8(&v126 + 1, (v58 + 56));
      sub_1003ED230(&v128, (v58 + 80));
      *(&v129 + 1) = v56;
      *&v130 = v57;
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      DWORD2(v130) = value;
      BYTE12(v130) = BYTE4(value);
      LODWORD(v131[0]) = v135;
      BYTE4(v131[0]) = BYTE4(v135);
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v131[1], __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
      }

      else
      {
        *&v131[1] = __src;
      }

      *&v132 = v21;
      *(&v132 + 1) = v23;
      if ((v89 & 1) == 0)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v63 = 0;
      while (2)
      {
        if ((sub_100071FDC(__p, v63) & 0x100000000) != 0)
        {
          v64 = sub_100A392D0(__p, v63);
          v65 = v64;
          if ((v64 & 0x100000000) != 0)
          {
            v162 = 0;
            v66 = xpc_dictionary_create(0, 0, 0);
            v67 = v66;
            if (v66)
            {
              v162 = v66;
              goto LABEL_206;
            }

            v67 = xpc_null_create();
            v162 = v67;
            if (v67)
            {
LABEL_206:
              if (xpc_get_type(v67) != &_xpc_type_dictionary)
              {
                v68 = xpc_null_create();
                goto LABEL_210;
              }

              xpc_retain(v67);
            }

            else
            {
              v68 = xpc_null_create();
              v67 = 0;
LABEL_210:
              v162 = v68;
            }

            xpc_release(v67);
            sub_100531844(v63);
            memset(v163, 0, 24);
            ctu::cf::assign();
            v159 = v163[0];
            if ((v163[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v69 = &v159;
            }

            else
            {
              v69 = v159.__r_.__value_.__r.__words[0];
            }

            v160 = xpc_string_create(v69);
            if (!v160)
            {
              v160 = xpc_null_create();
            }

            v163[0].__r_.__value_.__r.__words[0] = &v162;
            v163[0].__r_.__value_.__l.__size_ = "entitlement_type";
            sub_10000F688(v163, &v160, &v161);
            xpc_release(v161);
            v161 = 0;
            xpc_release(v160);
            v160 = 0;
            if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v159.__r_.__value_.__l.__data_);
            }

            v157 = xpc_int64_create(v65);
            if (!v157)
            {
              v157 = xpc_null_create();
            }

            v163[0].__r_.__value_.__r.__words[0] = &v162;
            v163[0].__r_.__value_.__l.__size_ = "entitlement_status";
            sub_10000F688(v163, &v157, &v158);
            xpc_release(v158);
            v158 = 0;
            xpc_release(v157);
            v157 = 0;
            if (**(&v129 + 1) != 6000)
            {
              goto LABEL_230;
            }

            v70 = 0;
            if (BYTE12(v130) != 1 || DWORD2(v130) != 200)
            {
              goto LABEL_231;
            }

            if (BYTE4(v131[0]) != 1)
            {
LABEL_230:
              v70 = 0;
              goto LABEL_231;
            }

            v70 = v65 == 6100 && LODWORD(v131[0]) == 0;
LABEL_231:
            v155 = xpc_BOOL_create(v70);
            if (!v155)
            {
              v155 = xpc_null_create();
            }

            v163[0].__r_.__value_.__r.__words[0] = &v162;
            v163[0].__r_.__value_.__l.__size_ = "is_entitlement_success";
            sub_10000F688(v163, &v155, &v156);
            xpc_release(v156);
            v156 = 0;
            xpc_release(v155);
            v155 = 0;
            if (v63 == 15)
            {
              memset(v163, 0, 24);
              sub_1003ED1D8(v163, &v126 + 8);
              v72 = v163[0].__r_.__value_.__l.__size_;
              if (v163[0].__r_.__value_.__l.__size_)
              {
                p_size = &v163[0].__r_.__value_.__l.__size_;
                do
                {
                  if (*(v72 + 32) >= 15)
                  {
                    p_size = v72;
                  }

                  v72 = *(v72 + 8 * (*(v72 + 32) < 15));
                }

                while (v72);
                if (p_size != &v163[0].__r_.__value_.__r.__words[1] && *(p_size + 8) <= 15)
                {
                  v74 = p_size[5];
                  if (v74)
                  {
                    if (*(v74 + 24) == 1)
                    {
                      v75 = *v74;
                      v88 = *(v74 + 8);
                      if (*v74 != v88)
                      {
                        while (1)
                        {
                          v154 = 0;
                          v76 = xpc_dictionary_create(0, 0, 0);
                          v77 = v76;
                          if (v76)
                          {
                            v154 = v76;
                          }

                          else
                          {
                            v77 = xpc_null_create();
                            v154 = v77;
                            if (!v77)
                            {
                              v78 = xpc_null_create();
                              v77 = 0;
                              goto LABEL_251;
                            }
                          }

                          if (xpc_get_type(v77) != &_xpc_type_dictionary)
                          {
                            v78 = xpc_null_create();
LABEL_251:
                            v154 = v78;
                            goto LABEL_252;
                          }

                          xpc_retain(v77);
LABEL_252:
                          xpc_release(v77);
                          if (*(v75 + 4) == 1)
                          {
                            if (*v75 == 1)
                            {
                              v150 = xpc_string_create("unmetered");
                              if (!v150)
                              {
                                v150 = xpc_null_create();
                              }

                              v159.__r_.__value_.__r.__words[0] = &v154;
                              v159.__r_.__value_.__l.__size_ = "plan_type";
                              sub_10000F688(&v159, &v150, &v151);
                              xpc_release(v151);
                              v151 = 0;
                              xpc_release(v150);
                              v150 = 0;
                            }

                            else if (!*v75)
                            {
                              v152 = xpc_string_create("metered");
                              if (!v152)
                              {
                                v152 = xpc_null_create();
                              }

                              v159.__r_.__value_.__r.__words[0] = &v154;
                              v159.__r_.__value_.__l.__size_ = "plan_type";
                              sub_10000F688(&v159, &v152, &v153);
                              xpc_release(v153);
                              v153 = 0;
                              xpc_release(v152);
                              v152 = 0;
                            }
                          }

                          if (*(v75 + 9) == 1)
                          {
                            v148 = xpc_BOOL_create(*(v75 + 8));
                            if (!v148)
                            {
                              v148 = xpc_null_create();
                            }

                            v159.__r_.__value_.__r.__words[0] = &v154;
                            v159.__r_.__value_.__l.__size_ = "5g_experience";
                            sub_10000F688(&v159, &v148, &v149);
                            xpc_release(v149);
                            v149 = 0;
                            xpc_release(v148);
                            v148 = 0;
                          }

                          if (*(v75 + 16) == 1)
                          {
                            v146 = xpc_int64_create(*(v75 + 12));
                            if (!v146)
                            {
                              v146 = xpc_null_create();
                            }

                            v159.__r_.__value_.__r.__words[0] = &v154;
                            v159.__r_.__value_.__l.__size_ = "volume_cap_gb";
                            sub_10000F688(&v159, &v146, &v147);
                            xpc_release(v147);
                            v147 = 0;
                            xpc_release(v146);
                            v146 = 0;
                          }

                          if (*(v75 + 48) != 1)
                          {
                            goto LABEL_291;
                          }

                          memset(&v159, 0, sizeof(v159));
                          v79 = *(v75 + 24);
                          v80 = *(v75 + 32);
                          if (v79 == v80)
                          {
                            v82 = &v159;
                            goto LABEL_287;
                          }

                          v81 = 0;
                          do
                          {
                            if (*v79 == 1)
                            {
                              if (v81)
                              {
                                std::string::push_back(&v159, 43);
                              }

                              std::string::append(&v159, "sub6", 4uLL);
                            }

                            else
                            {
                              if (*v79)
                              {
                                goto LABEL_281;
                              }

                              if (v81)
                              {
                                std::string::push_back(&v159, 43);
                              }

                              std::string::append(&v159, "mmw", 3uLL);
                            }

                            ++v81;
LABEL_281:
                            ++v79;
                          }

                          while (v79 != v80);
                          if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v82 = &v159;
                          }

                          else
                          {
                            v82 = v159.__r_.__value_.__r.__words[0];
                          }

                          v23 = v90;
LABEL_287:
                          v144 = xpc_string_create(v82);
                          if (!v144)
                          {
                            v144 = xpc_null_create();
                          }

                          v143[0] = &v154;
                          v143[1] = "plan_supported_rat";
                          sub_10000F688(v143, &v144, &v145);
                          xpc_release(v145);
                          v145 = 0;
                          xpc_release(v144);
                          v144 = 0;
                          if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v159.__r_.__value_.__l.__data_);
                          }

LABEL_291:
                          if (*(v75 + 57) == 1)
                          {
                            v141 = xpc_BOOL_create(*(v75 + 56));
                            if (!v141)
                            {
                              v141 = xpc_null_create();
                            }

                            v159.__r_.__value_.__r.__words[0] = &v154;
                            v159.__r_.__value_.__l.__size_ = "sa_provisioned";
                            sub_10000F688(&v159, &v141, &v142);
                            xpc_release(v142);
                            v142 = 0;
                            xpc_release(v141);
                            v141 = 0;
                          }

                          if (v131[3] >= 0)
                          {
                            v83 = &v131[1];
                          }

                          else
                          {
                            v83 = v131[1];
                          }

                          v139 = xpc_string_create(v83);
                          if (!v139)
                          {
                            v139 = xpc_null_create();
                          }

                          v159.__r_.__value_.__r.__words[0] = &v154;
                          v159.__r_.__value_.__l.__size_ = "source";
                          sub_10000F688(&v159, &v139, &v140);
                          xpc_release(v140);
                          v140 = 0;
                          xpc_release(v139);
                          v139 = 0;
                          v84 = v132;
                          v138 = v154;
                          if (v154)
                          {
                            xpc_retain(v154);
                          }

                          else
                          {
                            v138 = xpc_null_create();
                          }

                          (*(*v84 + 16))(v84, "commCenterEntitlement5GServicePlan", &v138);
                          xpc_release(v138);
                          v138 = 0;
                          xpc_release(v154);
                          v75 += 64;
                          if (v75 == v88)
                          {
                            v85 = *(p_size[5] + 8) - *p_size[5];
                            if (v85)
                            {
                              v154 = xpc_int64_create(v85 >> 6);
                              if (!v154)
                              {
                                v154 = xpc_null_create();
                              }

                              v159.__r_.__value_.__r.__words[0] = &v162;
                              v159.__r_.__value_.__l.__size_ = "plan_count";
                              sub_10000F688(&v159, &v154, v143);
                              xpc_release(v143[0]);
                              v143[0] = 0;
                              xpc_release(v154);
                              v154 = 0;
                            }

                            break;
                          }
                        }
                      }
                    }
                  }
                }
              }

              sub_10006EC28(v163, v163[0].__r_.__value_.__l.__size_);
            }

            if (v131[3] >= 0)
            {
              v86 = &v131[1];
            }

            else
            {
              v86 = v131[1];
            }

            v137 = xpc_string_create(v86);
            if (!v137)
            {
              v137 = xpc_null_create();
            }

            v163[0].__r_.__value_.__r.__words[0] = &v162;
            v163[0].__r_.__value_.__l.__size_ = "source";
            sub_10000F688(v163, &v137, &v159.__r_.__value_.__l.__data_);
            xpc_release(v159.__r_.__value_.__l.__data_);
            v159.__r_.__value_.__r.__words[0] = 0;
            xpc_release(v137);
            v137 = 0;
            v87 = v132;
            v163[0].__r_.__value_.__r.__words[0] = v162;
            if (v162)
            {
              xpc_retain(v162);
            }

            else
            {
              v163[0].__r_.__value_.__r.__words[0] = xpc_null_create();
            }

            (*(*v87 + 16))(v87, "commCenterEntitlementTypeResponse", v163);
            xpc_release(v163[0].__r_.__value_.__l.__data_);
            v163[0].__r_.__value_.__r.__words[0] = 0;
            xpc_release(v162);
          }
        }

        if (++v63 != 23)
        {
          continue;
        }

        break;
      }

      if (*(&v132 + 1))
      {
        sub_100004A34(*(&v132 + 1));
      }

      if (SHIBYTE(v131[3]) < 0)
      {
        operator delete(v131[1]);
      }

      if (v130)
      {
        sub_100004A34(v130);
      }

      sub_10006DCAC(&v128, *(&v128 + 1));
      sub_10006EC28(&v126 + 8, v127);
      sub_10006DCAC(&v125, *(&v125 + 1));
      sub_10006DCAC(&__p[1], v124);
    }
  }

  if (v57)
  {
    sub_100004A34(v57);
  }

  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_1004EE560;
  v94[3] = &unk_101E51F90;
  v94[8] = v135;
  v94[9] = value;
  v94[4] = v91;
  v94[5] = a9;
  v94[10] = a11;
  v94[6] = a10;
  v94[7] = a5;
  sub_1004EE3B4(0x800E3, v94);
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  v24 = v89;
LABEL_331:
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v23);
  }
}

void sub_1004E05B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, xpc_object_t object, uint64_t a33, uint64_t a34, xpc_object_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, xpc_object_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, xpc_object_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, xpc_object_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  if (STACK[0x210])
  {
    sub_100004A34(STACK[0x210]);
  }

  sub_1003C30B4(&a62);
  if (v62)
  {
    sub_100004A34(v62);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if ((a14 & 1) == 0)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::handleHttpResponse_sync(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 128));
    v6 = *(a1 + 160);
    *buf = 136315906;
    *&buf[4] = v5;
    v64 = 2080;
    v65 = " ";
    v66 = 2080;
    v67 = v6;
    v68 = 2080;
    v69 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________<   Received the HTTP response, processing it", buf, 0x2Au);
  }

  memset(v62, 0, sizeof(v62));
  sub_1004F0D24(v62, 0x1EuLL);
  v7 = a2[1];
  v60[0] = *a2;
  v60[1] = v7;
  v61 = 0;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = entitlements::CEHTTPDriver::validateAndParseHttpResponse_sync(a1, v60, v62);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v9 = (a1 + 568);
  if (v8)
  {
    v58 = 0;
    v59[0] = 0;
    v59[1] = 0;
    (*(**a2 + 56))(&v58);
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 128));
      v12 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v11;
      v64 = 2080;
      v65 = " ";
      v66 = 2080;
      v67 = v12;
      v68 = 2080;
      v69 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sreceived header:", buf, 0x2Au);
    }

    v53 = (a1 + 568);
    v13 = v58;
    if (v58 != v59)
    {
      do
      {
        v14 = *(a1 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = PersonalityInfo::logPrefix(***(a1 + 128));
          v16 = v13 + 4;
          if (*(v13 + 55) < 0)
          {
            v16 = *v16;
          }

          v17 = v13 + 7;
          if (*(v13 + 79) < 0)
          {
            v17 = *v17;
          }

          v18 = *(a1 + 160);
          *buf = 136316418;
          *&buf[4] = v15;
          v64 = 2080;
          v65 = " ";
          v66 = 2080;
          v67 = v18;
          v68 = 2080;
          v69 = "";
          v70 = 2080;
          v71 = v16;
          v72 = 2080;
          v73 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s  %s: %s", buf, 0x3Eu);
        }

        v19 = v13[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v13[2];
            v21 = *v20 == v13;
            v13 = v20;
          }

          while (!v21);
        }

        v13 = v20;
      }

      while (v20 != v59);
    }

    if (HIDWORD(v8) == 200)
    {
      v27 = entitlements::CEHTTPDriver::postprocessAuthResponse(a1, v62);
      v9 = (a1 + 568);
      if (v27)
      {
        LODWORD(v61) = HIDWORD(v27);
        BYTE4(v61) = 1;
        if ((v27 & 0x100) != 0)
        {
          entitlements::CEHTTPDriver::prepareActionResults(v27, v28, *(a1 + 608), v62);
          Results = entitlements::CEHTTPDriver::analyzeQueryResults(a1, *(a1 + 608), v62);
          entitlements::CEHTTPDriver::postActionResults(a1, 3, *(a1 + 608), v62);
          v26 = 0;
          LOBYTE(v8) = 1;
        }

        else
        {
          v29 = *(a1 + 40);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = PersonalityInfo::logPrefix(***(a1 + 128));
            v31 = *(a1 + 160);
            *buf = 136315906;
            *&buf[4] = v30;
            v64 = 2080;
            v65 = " ";
            v66 = 2080;
            v67 = v31;
            v68 = 2080;
            v69 = "";
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sAuthentication Failure", buf, 0x2Au);
          }

          LOBYTE(v8) = 0;
          Results = 0;
          *(a1 + 176) = 0;
          v26 = 1;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v9 = (a1 + 568);
      if (HIDWORD(v8) != 401)
      {
        LOBYTE(v8) = 0;
        Results = 0;
        v26 = 0;
LABEL_52:
        sub_1000DD0AC(&v58, v59[0]);
        goto LABEL_53;
      }

      if (*(a1 + 172) != 2)
      {
LABEL_51:
        LOBYTE(v8) = 0;
        Results = 0;
        v26 = 0;
        goto LABEL_52;
      }

      *(a1 + 176) = 0;
      if (*(a1 + 352) == 1)
      {
        if (*(a1 + 351) < 0)
        {
          operator delete(*(a1 + 328));
        }

        *(a1 + 352) = 0;
      }

      if (*(a1 + 584))
      {
        v22 = *(a1 + 40);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = PersonalityInfo::logPrefix(***(a1 + 128));
          v24 = *(a1 + 160);
          *buf = 136315906;
          *&buf[4] = v23;
          v64 = 2080;
          v65 = " ";
          v66 = 2080;
          v67 = v24;
          v68 = 2080;
          v69 = "";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sRe-Authentication failed", buf, 0x2Au);
        }

        goto LABEL_51;
      }

      v32 = *v53;
      *v53 = 0;
      *(a1 + 576) = 0;
      v33 = *(a1 + 592);
      *(a1 + 584) = v32;
      if (v33)
      {
        sub_100004A34(v33);
      }

      v55 = 0;
      v56 = 0;
      v57 = 0;
      (*(**a2 + 56))(&v55);
      v34 = (*(**a2 + 80))();
      v35 = *(a1 + 40);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = PersonalityInfo::logPrefix(***(a1 + 128));
        v37 = *(a1 + 160);
        *buf = 136316162;
        *&buf[4] = v36;
        v64 = 2080;
        v65 = " ";
        v66 = 2080;
        v67 = v37;
        v68 = 2080;
        v69 = "";
        v70 = 1024;
        LODWORD(v71) = v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%scipher suite: 0x%X", buf, 0x30u);
      }

      if ((entitlements::CEHTTPDriver::performGBAAuthentication(a1, &v55, v34) & 1) == 0)
      {
        v38 = *(a1 + 40);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = PersonalityInfo::logPrefix(***(a1 + 128));
          v40 = *(a1 + 160);
          *buf = 136315906;
          *&buf[4] = v39;
          v64 = 2080;
          v65 = " ";
          v66 = 2080;
          v67 = v40;
          v68 = 2080;
          v69 = "";
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sAuthentication Failure. Cannot initiate GBA authentication", buf, 0x2Au);
        }

        sub_1000DD0AC(&v55, v56);
        goto LABEL_51;
      }

      sub_1000DD0AC(&v55, v56);
    }

    sub_1000DD0AC(&v58, v59[0]);
    goto LABEL_76;
  }

  Results = 0;
  v26 = 0;
LABEL_53:
  v41 = Results | v26;
  if ((Results | v26) == 1)
  {
    entitlements::CEHTTPDriver::serverIssueNeedToBackoff(a1, v26);
  }

  v42 = *(a1 + 40);
  v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v43)
    {
      v44 = PersonalityInfo::logPrefix(***(a1 + 128));
      v45 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v44;
      v64 = 2080;
      v65 = " ";
      v66 = 2080;
      v67 = v45;
      v68 = 2080;
      v69 = "";
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sHTTP response processing complete with success", buf, 0x2Au);
    }

    sub_1009C18B8(a1, "HTTP response processing complete with success", v41 ^ 1);
  }

  else
  {
    if (v43)
    {
      v46 = PersonalityInfo::logPrefix(***(a1 + 128));
      v47 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v46;
      v64 = 2080;
      v65 = " ";
      v66 = 2080;
      v67 = v47;
      v68 = 2080;
      v69 = "";
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sHTTP response invalid or authentication failed, invalidate request and try again", buf, 0x2Au);
    }

    v48 = a2[1];
    v54[0] = *a2;
    v54[1] = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    entitlements::CEHTTPDriver::handleRequestFailureAndMergeWithPending_sync(a1, v26, &v61, v54);
    if (v48)
    {
      sub_100004A34(v48);
    }
  }

  if (*(a1 + 737) == 1)
  {
    sub_1009C18B8(a1, "user initiated (forced) action in the queue", 1);
  }

  v49 = *(a1 + 616);
  *(a1 + 608) = 0u;
  if (v49)
  {
    sub_100004A34(v49);
  }

  v50 = *(a1 + 576);
  *v9 = 0;
  v9[1] = 0;
  if (v50)
  {
    sub_100004A34(v50);
  }

  v51 = *(a1 + 592);
  v9[2] = 0;
  v9[3] = 0;
  if (v51)
  {
    sub_100004A34(v51);
  }

  v52 = *(a1 + 768);
  v9[24] = 0;
  v9[25] = 0;
  if (v52)
  {
    sub_100004A34(v52);
  }

  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
LABEL_76:
  *buf = v62;
  sub_1000212F4(buf);
}

void sub_1004E13C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void **a27)
{
  sub_1000DD0AC(&a15, a16);
  sub_1000DD0AC(&a18, a19);
  a27 = &a24;
  sub_1000212F4(&a27);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::performGBAAuthentication(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = *(a1 + 128);
  if (*(v3 + 344) == 1)
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    __p = 0u;
    v48 = 0u;
    memset(v46, 0, sizeof(v46));
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    HIDWORD(v48) = 3;
    BYTE4(v49) = 0;
    memset(v52, 0, sizeof(v52));
    v6 = *v3;
    v8 = *v6;
    v7 = v6[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      v9 = *(&v42 + 1);
      *&v42 = v8;
      *(&v42 + 1) = v7;
      if (v9)
      {
        sub_100004A34(v9);
      }
    }

    else
    {
      v42 = v8;
    }

    std::string::operator=(&v43, (*(a1 + 128) + 216));
    v10 = *(a1 + 128);
    if ((&v44 + 8) != (v10 + 264))
    {
      sub_100008234(&v44 + 1, *(v10 + 264), *(v10 + 272), 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 272) - *(v10 + 264)) >> 3));
      v10 = *(a1 + 128);
    }

    sub_10012BF3C(v46, (v10 + 352));
    BYTE8(v48) = *(*(a1 + 128) + 336) == 2;
    entitlements::CEHTTPDriver::gba_personalizedURL(a1, a1 + 432, &buf);
    if (SBYTE7(v48) < 0)
    {
      operator delete(__p);
    }

    __p = *&buf.__r_.__value_.__l.__data_;
    *&v48 = *(&buf.__r_.__value_.__l + 2);
    *&v52[32] = a3;
    theDict = 0;
    sub_100A81F08(*(a1 + 144), &theDict);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"BsfPort");
      v12 = Value;
      LODWORD(buf.__r_.__value_.__l.__data_) = 0;
      if (Value)
      {
        v13 = CFGetTypeID(Value);
        if (v13 == CFNumberGetTypeID())
        {
          ctu::cf::assign(&buf, v12, v14);
        }
      }

      LODWORD(v49) = buf.__r_.__value_.__l.__data_;
      v15 = CFDictionaryGetValue(theDict, @"BsfUseSecureTransport");
      v16 = v15;
      buf.__r_.__value_.__s.__data_[0] = 0;
      if (v15)
      {
        v17 = CFGetTypeID(v15);
        if (v17 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&buf, v16, v18);
        }
      }

      BYTE4(v49) = buf.__r_.__value_.__s.__data_[0];
      v19 = CFDictionaryGetValue(theDict, @"BsfHost");
      if (v19)
      {
        v20 = CFGetTypeID(v19);
        if (v20 == CFStringGetTypeID())
        {
          memset(&buf, 0, sizeof(buf));
          ctu::cf::assign();
          *v53 = buf.__r_.__value_.__l.__size_;
          v21 = buf.__r_.__value_.__r.__words[0];
          *&v53[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
          v22 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          if (v51)
          {
            if (SHIBYTE(v50) < 0)
            {
              operator delete(*(&v49 + 1));
            }

            *(&v49 + 1) = v21;
            *&v50 = *v53;
            *(&v50 + 7) = *&v53[7];
            HIBYTE(v50) = v22;
          }

          else
          {
            *(&v49 + 1) = buf.__r_.__value_.__r.__words[0];
            *&v50 = *v53;
            *(&v50 + 7) = *&v53[7];
            HIBYTE(v50) = *(&buf.__r_.__value_.__s + 23);
            LOBYTE(v51) = 1;
          }
        }
      }
    }

    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = PersonalityInfo::logPrefix(***(a1 + 128));
      v25 = *(a1 + 160);
      if ((SBYTE7(v44) & 0x80u) == 0)
      {
        v26 = &v43;
      }

      else
      {
        v26 = v43;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
      *(buf.__r_.__value_.__r.__words + 4) = v24;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v55 = v25;
      v56 = 2080;
      v57 = "";
      v58 = 2080;
      v59 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s  IMPI: %s", &buf, 0x34u);
      v23 = *(a1 + 40);
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = PersonalityInfo::logPrefix(***(a1 + 128));
      v28 = *(a1 + 160);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
      *(buf.__r_.__value_.__r.__words + 4) = v27;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v55 = v28;
      v56 = 2080;
      v57 = "";
      v58 = 2048;
      v59 = 0xAAAAAAAAAAAAAAABLL * ((v45 - *(&v44 + 1)) >> 3);
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s  IMPU: %lu items", &buf, 0x34u);
    }

    v29 = *(&v44 + 1);
    for (i = v45; v29 != i; v29 += 24)
    {
      v31 = *(a1 + 40);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = PersonalityInfo::logPrefix(***(a1 + 128));
        v33 = v29;
        if (*(v29 + 23) < 0)
        {
          v33 = *v29;
        }

        v34 = *(a1 + 160);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = v32;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v55 = v34;
        v56 = 2080;
        v57 = "";
        v58 = 2080;
        v59 = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s  IMPU: %s", &buf, 0x34u);
      }
    }

    if ((entitlements::CEHTTPDriver::isEntitlementReachableOnInternet_sync(a1) & 1) == 0 && (sub_100A81C8C(*(a1 + 144)) & 1) != 0 && *(a1 + 777) == 1)
    {
      v35 = *(a1 + 40);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = PersonalityInfo::logPrefix(***(a1 + 128));
        v37 = *(a1 + 160);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = v36;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v55 = v37;
        v56 = 2080;
        v57 = "";
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sGBA authentication will go over Entitlement service", &buf, 0x2Au);
      }

      buf.__r_.__value_.__r.__words[0] = kCTDataConnectionServiceTypeEntitlementTraffic;
      sub_10021D11C(v52, &buf.__r_.__value_.__l.__data_);
      std::string::operator=(&v52[8], ***(a1 + 128));
    }

    v38 = *(a1 + 24);
    if (v38)
    {
      dispatch_retain(v38);
    }

    sub_100004AA0(&buf, (a1 + 8));
    size = buf.__r_.__value_.__l.__size_;
    if (buf.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((buf.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(size);
      atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10085AF64(v53);
  }

  return *(v3 + 344);
}

void sub_1004E1B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, dispatch_object_t object, const void *a22, __int16 a23, char a24, char a25)
{
  sub_10001021C(&a22);
  sub_1004F389C(&a23);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::analyzeQueryResults(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = 0;
  v6 = 0;
  v30 = 0;
  do
  {
    v7 = *a3 + 16 * v6;
    v9 = *v7;
    v8 = *(v7 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 128));
      v12 = *(a1 + 160);
      sub_10053DF18(a2, v30, &v31);
      v13 = (*(*v31 + 40))(v31);
      if (*(&v31 + 1))
      {
        sub_100004A34(*(&v31 + 1));
      }

      v14 = sub_100531604(*v9);
      *buf = 136316418;
      *&buf[4] = v11;
      v33 = 2080;
      v34 = " ";
      v35 = 2080;
      v36 = v12;
      v37 = 2080;
      v38 = "";
      v39 = 2080;
      v40 = v13;
      v41 = 2080;
      v42 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%saction %s = %s", buf, 0x3Eu);
    }

    v15 = *v9;
    if (*v9 <= 6003)
    {
      if ((v15 - 6001) >= 3)
      {
        if (v15 == 6000)
        {
          sub_10012B6B8(a1 + 712, &v30);
        }

        goto LABEL_20;
      }

LABEL_16:
      *buf = &v30;
      *(sub_10030C46C(a1 + 712, &v30, &unk_101802C98, buf) + 8) = v15;
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = PersonalityInfo::logPrefix(***(a1 + 128));
        v18 = *(a1 + 160);
        sub_10053DF18(a2, v30, &v31);
        v19 = (*(*v31 + 40))(v31);
        if (*(&v31 + 1))
        {
          sub_100004A34(*(&v31 + 1));
        }

        v20 = sub_100531604(*v9);
        *buf = 136316418;
        *&buf[4] = v17;
        v33 = 2080;
        v34 = " ";
        v35 = 2080;
        v36 = v18;
        v37 = 2080;
        v38 = "";
        v39 = 2080;
        v40 = v19;
        v41 = 2080;
        v42 = v20;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smarked action %s failed with vital %s", buf, 0x3Eu);
      }

LABEL_20:
      if (!v8)
      {
        goto LABEL_22;
      }

LABEL_21:
      sub_100004A34(v8);
      goto LABEL_22;
    }

    switch(v15)
    {
      case 6004:
        v22 = *(a1 + 40);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = PersonalityInfo::logPrefix(***(a1 + 128));
          v24 = *(a1 + 160);
          sub_10053DF18(a2, v30, &v31);
          v25 = (*(*v31 + 40))(v31);
          if (*(&v31 + 1))
          {
            sub_100004A34(*(&v31 + 1));
          }

          v26 = sub_100531604(*v9);
          v27 = sub_100531604(6005);
          *buf = 136316674;
          *&buf[4] = v23;
          v33 = 2080;
          v34 = " ";
          v35 = 2080;
          v36 = v24;
          v37 = 2080;
          v38 = "";
          v39 = 2080;
          v40 = v25;
          v41 = 2080;
          v42 = v26;
          v43 = 2080;
          v44 = v27;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%saction %s replied with incorrect code %s -> treating as %s", buf, 0x48u);
        }

        break;
      case 6005:
        break;
      case 6010:
        goto LABEL_16;
      default:
        goto LABEL_20;
    }

    v29 = 1;
    if (v8)
    {
      goto LABEL_21;
    }

LABEL_22:
    v21 = v30;
    v6 = ++v30;
  }

  while (v21 < 27);
  return v29 & 1;
}

void sub_1004E2034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::serverIssueNeedToBackoff(entitlements::CEHTTPDriver *this, int a2)
{
  v4 = *(this + 96) + 1;
  *(this + 96) = v4;
  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(***(this + 16));
    v7 = *(this + 20);
    v8 = "TEMP";
    v9 = *(this + 96);
    *buf = 136316418;
    if (a2)
    {
      v8 = "AUTH";
    }

    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v29 = 2080;
    v30 = v7;
    v31 = 2080;
    v32 = "";
    v33 = 2080;
    v34 = v8;
    v35 = 1024;
    v36 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sServer reported %s failure on one of actions, fServerBackoffCnt = %d", buf, 0x3Au);
    v4 = *(this + 96);
  }

  v10 = sub_100A83620(*(this + 18)) * v4;
  v11 = *(this + 5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(***(this + 16));
    v13 = *(this + 20);
    *buf = 136316162;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v29 = 2080;
    v30 = v13;
    v31 = 2080;
    v32 = "";
    v33 = 1024;
    LODWORD(v34) = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sengaging %u seconds block on communication", buf, 0x30u);
  }

  sub_100004AA0(buf, this + 1);
  v15 = *buf;
  v14 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
  }

  Registry::getTimerService(buf, *(this + 6));
  v16 = *buf;
  sub_10000501C(__p, "server initiated backoff");
  v17 = *(this + 3);
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3321888768;
  aBlock[2] = sub_1004E3840;
  aBlock[3] = &unk_101E518E8;
  aBlock[4] = this;
  aBlock[5] = v15;
  v22 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = _Block_copy(aBlock);
  sub_100D23364(v16, __p, 1, 1000000 * v10, &object, &v23);
  v18 = v27;
  v27 = 0;
  v19 = *(this + 49);
  *(this + 49) = v18;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    v20 = v27;
    v27 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  if (v23)
  {
    _Block_release(v23);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

void sub_1004E23E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::handleRequestFailureAndMergeWithPending_sync(uint64_t a1, BOOL a2, unsigned int *a3, uint64_t *a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(a1 + 128));
    v10 = *(a1 + 160);
    v11 = asStringBool(a2);
    v12 = asStringBool(*(a1 + 608) != 0);
    v13 = *(a1 + 608);
    if (v13 && (v14 = *(v13 + 120), (v14 & 0x100000000) != 0))
    {
      v15 = sub_10006EE44(v14);
    }

    else
    {
      v15 = "-";
    }

    if (*(a3 + 4) == 1)
    {
      v16 = sub_100531604(*a3);
    }

    else
    {
      v16 = "-";
    }

    *buf = 136316930;
    v22 = v9;
    v23 = 2080;
    v24 = " ";
    v25 = 2080;
    v26 = v10;
    v27 = 2080;
    v28 = "";
    v29 = 2080;
    v30 = v11;
    v31 = 2080;
    v32 = v12;
    v33 = 2080;
    v34 = v15;
    v35 = 2080;
    v36 = v16;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%shandleRequestFailureAndMergeWithPending_sync (%s), fRequestedQuery:%s, dedicated:%s, status_override:%s", buf, 0x52u);
  }

  v17 = *(a1 + 608);
  if (v17)
  {
    v18 = *a4;
    v19 = a4[1];
    v20[0] = v18;
    v20[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    entitlements::CEHTTPDriver::handleTransactionFailure_sync(a1, v17, a3, v20);
    if (v19)
    {
      sub_100004A34(v19);
    }

    entitlements::CEHTTPDriver::mergeRequestedQuery_sync(a1, 0);
    entitlements::CEHTTPDriver::checkPendingQueriesCancelation(a1);
  }
}

void sub_1004E264C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::mergeRequestedQuery_sync(entitlements::CEHTTPDriver *this, int a2)
{
  v3 = *(this + 76);
  if (!v3)
  {
    return;
  }

  if (sub_1005358AC(v3))
  {
    v5 = (this + 608);
    v6 = *(this + 79);
    v7 = *(this + 76);
    v8 = *(v7 + 120);
    v9 = *(v6 + 16);
    v10 = *(v9 + 120);
    if (BYTE4(v8) == BYTE4(v10) && (v8 & 0x100000000) != 0)
    {
      if (v8 != v10)
      {
LABEL_6:
        v11 = this + 624;
        if (a2)
        {
          sub_1004E2A38(this + 624, this + 76);
        }

        v24 = *v11;
        v25 = *(*v11 + 16);
        v26 = *(v25 + 120);
        if (BYTE4(v8) == BYTE4(v26) && (v8 & 0x100000000) != 0)
        {
          if (v8 != v26)
          {
LABEL_24:
            if (sub_1005358AC(*(this + 81)))
            {
              sub_1004E2AA0(this + 78, this + 76);
            }

            sub_100492914((*v11 + 16), this + 76);
            v14 = *(this + 5);
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            v32 = PersonalityInfo::logPrefix(***(this + 16));
            v33 = *(this + 20);
            v34 = *(this + 80);
            v35 = 136316162;
            v36 = v32;
            v37 = 2080;
            v38 = " ";
            v39 = 2080;
            v40 = v33;
            v41 = 2080;
            v42 = "";
            v43 = 2048;
            v44 = v34;
            v18 = "#I %s%s%s%sAdding failed query back as a last element of pending queue (%zu elems)";
            goto LABEL_13;
          }
        }

        else if (BYTE4(v8) != BYTE4(v26))
        {
          goto LABEL_24;
        }

        sub_1005358F0(v7, v25);
        v27 = *v5;
        *v5 = 0;
        *(this + 77) = 0;
        v28 = *(v24 + 24);
        *(v24 + 16) = v27;
        if (v28)
        {
          sub_100004A34(v28);
        }

        v14 = *(this + 5);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v29 = PersonalityInfo::logPrefix(***(this + 16));
        v30 = *(this + 20);
        v31 = *(this + 80);
        v35 = 136316162;
        v36 = v29;
        v37 = 2080;
        v38 = " ";
        v39 = 2080;
        v40 = v30;
        v41 = 2080;
        v42 = "";
        v43 = 2048;
        v44 = v31;
        v18 = "#I %s%s%s%sMerge failed query into last element of pending queue (%zu elems)";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v18, &v35, 0x34u);
        goto LABEL_14;
      }
    }

    else if (BYTE4(v8) != BYTE4(v10))
    {
      goto LABEL_6;
    }

    sub_1005358F0(v7, v9);
    v12 = *v5;
    *v5 = 0;
    *(this + 77) = 0;
    v13 = *(v6 + 24);
    *(v6 + 16) = v12;
    if (v13)
    {
      sub_100004A34(v13);
    }

    v14 = *(this + 5);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = PersonalityInfo::logPrefix(***(this + 16));
    v16 = *(this + 20);
    v17 = *(this + 80);
    v35 = 136316162;
    v36 = v15;
    v37 = 2080;
    v38 = " ";
    v39 = 2080;
    v40 = v16;
    v41 = 2080;
    v42 = "";
    v43 = 2048;
    v44 = v17;
    v18 = "#I %s%s%s%sMerge failed query into first element of pending queue (%zu elems)";
    goto LABEL_13;
  }

LABEL_14:
  v19 = *(this + 77);
  *(this + 38) = 0u;
  if (v19)
  {
    sub_100004A34(v19);
  }

  v20 = *(this + 78);
  v22 = *(v20 + 16);
  v21 = *(v20 + 24);
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 81) = v22;
  v23 = *(this + 82);
  *(this + 82) = v21;
  if (v23)
  {
    sub_100004A34(v23);
  }
}

void entitlements::CEHTTPDriver::handleTransactionFailure_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(a1 + 176) = 0;
  ++*(a1 + 364);
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_101772B34(a1, (a1 + 364), v8);
  }

  if (sub_1009C2E28(a1))
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(***(a1 + 128));
      v11 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v38 = 2080;
      v39 = v11;
      v40 = 2080;
      v41 = "";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sExceeded Max Failures, clearing pending transactions", buf, 0x2Au);
    }

    entitlements::CEHTTPDriver::terminateAllQueries(a1, 1, a3);
  }

  if (sub_1009C2E38(a1))
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(***(a1 + 128));
      v14 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v38 = 2080;
      v39 = v14;
      v40 = 2080;
      v41 = "";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sSubscriber blocked, clearing pending transactions", buf, 0x2Au);
    }

    entitlements::CEHTTPDriver::terminateAllQueries(a1, 1, a3);
  }

  if (!entitlements::CEHTTPDriver::isInterimFailure(a1))
  {
    sub_10053578C(a2);
    v15 = 0;
    do
    {
      cf = 0;
      v35 = 0;
      v36 = 0;
      sub_1005354F0(a2, &cf, v15);
      if (cf)
      {
        v16 = v35;
        if (([v35 hasLeftAttempts] & 1) == 0)
        {
          v17 = *(a1 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = PersonalityInfo::logPrefix(***(a1 + 128));
            v19 = *(a1 + 160);
            *buf = 136316162;
            *&buf[4] = v18;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v38 = 2080;
            v39 = v19;
            v40 = 2080;
            v41 = "";
            v42 = 2112;
            v43 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sFailing because 'No more attempts' request:%@", buf, 0x34u);
          }

          *buf = 0;
          *&buf[8] = 0;
          v32 = 0;
          v33 = 0;
          v31 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          v30 = v36;
          if (v36)
          {
            CFRetain(v36);
          }

          v20 = a4[1];
          v29[0] = *a4;
          v29[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          entitlements::CEHTTPDriver::prepareAnActionResult(a2, v15, &v32, a3, &v31, buf, v29);
          if (v20)
          {
            sub_100004A34(v20);
          }

          sub_10000A1EC(&v30);
          sub_10001021C(&v31);
          if (v33)
          {
            sub_100004A34(v33);
          }

          v21 = *&buf[8];
          v27 = *buf;
          v28 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
          }

          v26 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          v25 = v36;
          if (v36)
          {
            CFRetain(v36);
          }

          entitlements::CEHTTPDriver::postAnActionResult(a1, a2, v15, 1, &v27, &v26, &v25);
          sub_10000A1EC(&v25);
          sub_10001021C(&v26);
          if (v28)
          {
            sub_100004A34(v28);
          }

          sub_1005353B8(a2, v16);
          if (v21)
          {
            sub_100004A34(v21);
          }
        }
      }

      sub_10000A1EC(&v36);
      sub_10000A1EC(&v35);
      sub_10001021C(&cf);
      v15 = (v15 + 1);
    }

    while (v15 != 28);
    entitlements::CEHTTPDriver::postQueryEvent(a1, 2, a2, a3);
    if (sub_1005358D8(a2) == 1)
    {
      sub_10053722C(a2);
      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = PersonalityInfo::logPrefix(***(a1 + 128));
        v24 = *(a1 + 160);
        *buf = 136315906;
        *&buf[4] = v23;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v38 = 2080;
        v39 = v24;
        v40 = 2080;
        v41 = "";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sno elements in the query except Authentication - dropping query", buf, 0x2Au);
      }

      sub_1005348F0(a2);
    }
  }

  entitlements::CEHTTPDriver::engageAutomaticRetryTimeout(a1);
}

void sub_1004E3008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_1004DD610(va);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::checkPendingQueriesCancelation(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 16));
    v4 = *(this + 20);
    *buf = 136315906;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v54 = 2080;
    v55 = v4;
    v56 = 2080;
    v57 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%schecking possibly expired queued actions", buf, 0x2Au);
  }

  v5 = *(this + 85);
  if (v5)
  {
    (*(*v5 + 16))(v5);
    v6 = *(this + 85);
    *(this + 85) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  v7 = *(this + 79);
  v33 = (this + 624);
  if (v7 != (this + 624))
  {
    v8 = 0;
    do
    {
      v9 = 0;
      do
      {
        v51 = 0;
        v52 = 0;
        v50 = 0;
        sub_1005354F0(v7[2], &v50, v9);
        v10 = v51;
        if (v51)
        {
          v11 = v50 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          if ([v51 expired])
          {
            v12 = *(this + 5);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = PersonalityInfo::logPrefix(***(this + 16));
              v14 = *(this + 20);
              *buf = 136316162;
              *&buf[4] = v13;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v54 = 2080;
              v55 = v14;
              v56 = 2080;
              v57 = "";
              v58 = 2112;
              v59 = v10;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sCancelling expired request:{%@}", buf, 0x34u);
            }

            *buf = 0;
            *&buf[8] = 0;
            v15 = v7[2];
            v48 = 0;
            v49 = 0;
            v47[0] = 0;
            v47[4] = 0;
            v46 = v50;
            if (v50)
            {
              CFRetain(v50);
            }

            v45 = v52;
            if (v52)
            {
              CFRetain(v52);
            }

            v44[0] = 0;
            v44[1] = 0;
            entitlements::CEHTTPDriver::prepareAnActionResult(v15, v9, &v48, v47, &v46, buf, v44);
            sub_10000A1EC(&v45);
            sub_10001021C(&v46);
            if (v49)
            {
              sub_100004A34(v49);
            }

            v16 = v7[2];
            v17 = *&buf[8];
            v42 = *buf;
            v43 = *&buf[8];
            if (*&buf[8])
            {
              atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
            }

            v41 = v50;
            if (v50)
            {
              CFRetain(v50);
            }

            v40 = v52;
            if (v52)
            {
              CFRetain(v52);
            }

            entitlements::CEHTTPDriver::postAnActionResult(this, v16, v9, 0, &v42, &v41, &v40);
            sub_10000A1EC(&v40);
            sub_10001021C(&v41);
            if (v43)
            {
              sub_100004A34(v43);
            }

            sub_1005353B8(v7[2], v10);
            if (v17)
            {
              sub_100004A34(v17);
            }
          }

          else if ([v10 cancelationSupported])
          {
            v18 = [v10 secondsTillCancelation];
            if (v18 >= v8)
            {
              v19 = v8;
            }

            else
            {
              v19 = v18;
            }

            if (v8)
            {
              v8 = v19;
            }

            else
            {
              v8 = v18;
            }
          }
        }

        sub_10000A1EC(&v52);
        sub_10000A1EC(&v51);
        sub_10001021C(&v50);
        v9 = (v9 + 1);
      }

      while (v9 != 28);
      if (sub_1005358D8(v7[2]) || v7[2] == *(this + 81))
      {
        v7 = v7[1];
      }

      else
      {
        v20 = *(this + 5);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = PersonalityInfo::logPrefix(***(this + 16));
          v22 = *(this + 20);
          *buf = 136315906;
          *&buf[4] = v21;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v54 = 2080;
          v55 = v22;
          v56 = 2080;
          v57 = "";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sremoving empty query from the queue", buf, 0x2Au);
        }

        v7 = sub_1004E5C3C(v33, v7);
      }
    }

    while (v7 != v33);
    if (v8)
    {
      v23 = *(this + 5);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = PersonalityInfo::logPrefix(***(this + 16));
        v25 = *(this + 20);
        *buf = 136316162;
        *&buf[4] = v24;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v54 = 2080;
        v55 = v25;
        v56 = 2080;
        v57 = "";
        v58 = 1024;
        LODWORD(v59) = v8;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sschedule cancelation recheck in %u seconds", buf, 0x30u);
      }

      sub_100004AA0(buf, this + 1);
      v27 = *buf;
      v26 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
      }

      Registry::getTimerService(buf, *(this + 6));
      v28 = *buf;
      sub_10000501C(__p, "entitlement cancelation check");
      v29 = *(this + 3);
      object = v29;
      if (v29)
      {
        dispatch_retain(v29);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 3321888768;
      aBlock[2] = sub_1004E5C8C;
      aBlock[3] = &unk_101E518E8;
      aBlock[4] = this;
      aBlock[5] = v27;
      v35 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = _Block_copy(aBlock);
      sub_100D23364(v28, __p, 1, 1000000 * v8, &object, &v36);
      v30 = v50;
      v50 = 0;
      v31 = *(this + 85);
      *(this + 85) = v30;
      if (v31)
      {
        (*(*v31 + 8))(v31);
        v32 = v50;
        v50 = 0;
        if (v32)
        {
          (*(*v32 + 8))(v32);
        }
      }

      if (v36)
      {
        _Block_release(v36);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v39 < 0)
      {
        operator delete(__p[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v35)
      {
        std::__shared_weak_count::__release_weak(v35);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_weak(v26);
      }
    }
  }
}

void sub_1004E373C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *aBlock, dispatch_object_t object, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004E3840(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = PersonalityInfo::logPrefix(***(v3 + 128));
          v8 = *(v3 + 160);
          v10 = 136315906;
          v11 = v7;
          v12 = 2080;
          v13 = " ";
          v14 = 2080;
          v15 = v8;
          v16 = 2080;
          v17 = "";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sblock on communication expired - issuing request if needed", &v10, 0x2Au);
        }

        v9 = *(v3 + 392);
        *(v3 + 392) = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        entitlements::CEHTTPDriver::sendRequestIfPending_sync(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1004E399C(uint64_t result, uint64_t a2)
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

void sub_1004E39B8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004E39C8(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = PersonalityInfo::logPrefix(***(v3 + 128));
          v8 = *(v3 + 160);
          v10 = 136315906;
          v11 = v7;
          v12 = 2080;
          v13 = " ";
          v14 = 2080;
          v15 = v8;
          v16 = 2080;
          v17 = "";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sblock on communication expired - issuing request if needed (ce)", &v10, 0x2Au);
        }

        v9 = *(v3 + 408);
        *(v3 + 408) = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        entitlements::CEHTTPDriver::sendRequestIfPending_sync(v3);
      }

      sub_100004A34(v5);
    }
  }
}

const void **entitlements::CEHTTPDriver::postQueryEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  do
  {
    cf = 0;
    v23 = 0;
    v24 = 0;
    sub_1005354F0(a3, &cf, v8);
    if (cf)
    {
      v20 = 0;
      v21 = 0;
      v18 = 0;
      v19 = 0;
      v17 = cf;
      CFRetain(cf);
      v16 = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      v15[0] = 0;
      v15[1] = 0;
      entitlements::CEHTTPDriver::prepareAnActionResult(a3, v8, &v18, a4, &v17, &v20, v15);
      sub_10000A1EC(&v16);
      sub_10001021C(&v17);
      if (v19)
      {
        sub_100004A34(v19);
      }

      v9 = v21;
      v13 = v20;
      v14 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v11 = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      entitlements::CEHTTPDriver::postAnActionResult(a1, a3, v8, a2, &v13, &v12, &v11);
      sub_10000A1EC(&v11);
      sub_10001021C(&v12);
      if (v14)
      {
        sub_100004A34(v14);
      }

      if (v9)
      {
        sub_100004A34(v9);
      }
    }

    sub_10000A1EC(&v24);
    sub_10000A1EC(&v23);
    result = sub_10001021C(&cf);
    v8 = (v8 + 1);
  }

  while (v8 != 28);
  return result;
}

void sub_1004E3CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, std::__shared_weak_count *);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  sub_10000A1EC(va);
  sub_10001021C(va1);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1004DD610(va2);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::isInterimFailure(entitlements::CEHTTPDriver *this)
{
  if (*(this + 92) > 2)
  {
    return 0;
  }

  v1 = *(this + 93);
  if (!v1 || (*(v1 + 24) & 1) != 0)
  {
    return 1;
  }

  v3 = *(v1 + 16);
  return ((v3 + 1006) < 4 || v3 == -1009) && (*(v1 + 8) - *v1) / 1000000.0 < 5.0;
}

BOOL entitlements::CEHTTPDriver::engageAutomaticRetryTimeout(entitlements::CEHTTPDriver *this)
{
  v2 = this + 364;
  v3 = *(this + 91);
  if (v3)
  {
    v4 = sub_100A835AC(*(this + 18));
    if (entitlements::CEHTTPDriver::isInterimFailure(this))
    {
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = PersonalityInfo::logPrefix(***(this + 16));
        v7 = *(this + 20);
        *buf = 136315906;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v30 = 2080;
        v31 = v7;
        v32 = 2080;
        v33 = "";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sprevious interim failure detected", buf, 0x2Au);
      }

      *v2 = vadd_s32(*v2, 0x1FFFFFFFFLL);
      v3 = 3;
    }

    else
    {
      v3 *= v4;
      *(this + 92) = 0;
    }
  }

  v8 = *(this + 94);
  *(v2 + 388) = 0;
  *(v2 + 380) = 0;
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v3)
  {
    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(***(this + 16));
      v11 = *(this + 20);
      v12 = *(this + 91);
      v13 = *(this + 92);
      *buf = 136316674;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v30 = 2080;
      v31 = v11;
      v32 = 2080;
      v33 = "";
      v34 = 1024;
      v35 = v3;
      v36 = 1024;
      v37 = v12;
      v38 = 1024;
      v39 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________   Adding retry backoff timer in ___ %d ___ seconds, fFailures: ___ %d ___, fInterimFailures: ___ %d ___", buf, 0x3Cu);
    }

    sub_100004AA0(buf, this + 1);
    v15 = *buf;
    v14 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
    }

    Registry::getTimerService(buf, *(this + 6));
    v16 = *buf;
    sub_10000501C(__p, "automatic retry timeout");
    v17 = *(this + 3);
    object = v17;
    if (v17)
    {
      dispatch_retain(v17);
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3321888768;
    v22[2] = sub_1004E5DB8;
    v22[3] = &unk_101E51918;
    v22[4] = v15;
    v23 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock = _Block_copy(v22);
    sub_100D23364(v16, __p, 1, 1000000 * v3, &object, &aBlock);
    v18 = v28;
    v28 = 0;
    v19 = *(this + 47);
    *(this + 47) = v18;
    if (v19)
    {
      (*(*v19 + 8))(v19);
      v20 = v28;
      v28 = 0;
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  return *(this + 47) != 0;
}

void sub_1004E4124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::CEHTTPDriver::setAltServers(uint64_t result, void *a2)
{
  v3 = result;
  if (*(result + 704) == a2[2])
  {
    v4 = *(result + 688);
    v5 = (result + 696);
    if (v4 == (result + 696))
    {
      return result;
    }

    v6 = *a2;
    while (*(v4 + 8) == *(v6 + 8))
    {
      result = sub_100A39D20(v4 + 5, v6 + 5);
      if (!result)
      {
        break;
      }

      v7 = v4[1];
      v8 = v4;
      if (v7)
      {
        do
        {
          v4 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v4 = v8[2];
          v9 = *v4 == v8;
          v8 = v4;
        }

        while (!v9);
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
          v9 = *v11 == v6;
          v6 = v11;
        }

        while (!v9);
      }

      v6 = v11;
      if (v4 == v5)
      {
        return result;
      }
    }
  }

  v12 = *(v3 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(***(v3 + 128));
    v14 = *(v3 + 160);
    *buf = 136315906;
    v28 = v13;
    v29 = 2080;
    v30 = " ";
    v31 = 2080;
    v32 = v14;
    v33 = 2080;
    v34 = "";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%supdating alt-servers:", buf, 0x2Au);
  }

  v24 = (v3 + 688);
  v16 = a2 + 1;
  v15 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v17 = *(v3 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = PersonalityInfo::logPrefix(***(v3 + 128));
        v19 = *(v3 + 160);
        v20 = sub_10006EE44(*(v15 + 8));
        sub_100A39DB8((v15 + 5), __p);
        v21 = __p;
        if (v26 < 0)
        {
          v21 = __p[0];
        }

        *buf = 136316418;
        v28 = v18;
        v29 = 2080;
        v30 = " ";
        v31 = 2080;
        v32 = v19;
        v33 = 2080;
        v34 = "";
        v35 = 2080;
        v36 = v20;
        v37 = 2080;
        v38 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s\t%s: %s", buf, 0x3Eu);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v22 = v15[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v15[2];
          v9 = *v23 == v15;
          v15 = v23;
        }

        while (!v9);
      }

      v15 = v23;
    }

    while (v23 != v16);
  }

  result = v3 + 688;
  if (v24 != a2)
  {
    return sub_1004FC0E8(v24, *a2, v16);
  }

  return result;
}

BOOL entitlements::CEHTTPDriver::isConnectionActiveOnAnySlot_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  subscriber::makeSimSlotRange();
  v4 = v8;
  if (v8 == v9)
  {
    return 0;
  }

  do
  {
    if (v10(*v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 != v9);
  if (v4 == v9)
  {
    return 0;
  }

  while (1)
  {
    isConnectionActive_sync = entitlements::CEHTTPDriver::isConnectionActive_sync(a1, v2, *v4);
    if (isConnectionActive_sync)
    {
      break;
    }

    v6 = isConnectionActive_sync;
    do
    {
      ++v4;
    }

    while (v4 != v9 && (v10(*v4) & 1) == 0);
    if (v4 == v9)
    {
      return v6;
    }
  }

  return 1;
}

BOOL entitlements::CEHTTPDriver::isConnectionActive_sync(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 792);
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 792;
  do
  {
    if (*(v3 + 32) >= a3)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a3));
  }

  while (v3);
  if (v4 == a1 + 792)
  {
    return 0;
  }

  if (*(v4 + 32) > a3)
  {
    return 0;
  }

  v7 = *(v4 + 48);
  v5 = v4 + 48;
  v6 = v7;
  if (!v7)
  {
    return 0;
  }

  v8 = v5;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  return v8 != v5 && *(v8 + 32) <= a2 && *(v8 + 44) == 2;
}

uint64_t entitlements::CEHTTPDriver::isConnectionAvailableOnAnySlot_sync(uint64_t a1, uint64_t a2)
{
  subscriber::makeSimSlotRange();
  v3 = v9;
  if (v9 == v10)
  {
    return 0;
  }

  do
  {
    if (v11(*v3))
    {
      break;
    }

    ++v3;
  }

  while (v3 != v10);
  if (v3 == v10)
  {
    return 0;
  }

  v4 = (a1 + 840);
  while (1)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = *v3;
      v7 = v4;
      do
      {
        if (*(v5 + 28) >= v6)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 28) < v6));
      }

      while (v5);
      if (v7 != v4 && v6 >= *(v7 + 7) && (ConnectionAvailabilityContainer::available() & 1) != 0)
      {
        break;
      }
    }

    do
    {
      ++v3;
    }

    while (v3 != v10 && (v11(*v3) & 1) == 0);
    if (v3 == v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t entitlements::CEHTTPDriver::canPerformRequest_sync(entitlements::CEHTTPDriver *this)
{
  if (*(this + 76))
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = PersonalityInfo::logPrefix(***(this + 16));
      v4 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v3;
      v47 = 2080;
      v48 = " ";
      v49 = 2080;
      v50 = v4;
      v51 = 2080;
      v52 = "";
      v5 = "#I %s%s%s%sThere is already a requested query";
LABEL_4:
      v6 = v2;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, __p, 0x2Au);
    }

    return 1;
  }

  v7 = *(this + 16);
  v8 = **v7;
  if ((*(v8 + 48) & 1) == 0)
  {
    v11 = *(this + 5);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v14 = PersonalityInfo::logPrefix(v8);
    v15 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v14;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v15;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%sPersonality is inactive";
    goto LABEL_18;
  }

  v9 = *(v8 + 49);
  v10 = v9 == 3 || v9 == 0;
  if (v10 && (*(v8 + 60) & 1) == 0)
  {
    v11 = *(this + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = PersonalityInfo::logPrefix(v8);
      v18 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v17;
      v47 = 2080;
      v48 = " ";
      v49 = 2080;
      v50 = v18;
      v51 = 2080;
      v52 = "";
      v19 = "#I %s%s%s%sSIM is not EAP-AKA capable";
LABEL_27:
      v24 = v11;
LABEL_28:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v19, __p, 0x2Au);
    }

    return 2;
  }

  if ((*(this + 168) & 1) == 0)
  {
    v20 = *(v7 + 136);
    v11 = *(this + 5);
    v21 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v20 != 1)
    {
      if (!v21)
      {
        return 1;
      }

      v27 = PersonalityInfo::logPrefix(v8);
      v28 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v27;
      v47 = 2080;
      v48 = " ";
      v49 = 2080;
      v50 = v28;
      v51 = 2080;
      v52 = "";
      v5 = "#I %s%s%s%swaiting for authentication settings";
      goto LABEL_18;
    }

    if (v21)
    {
      v22 = PersonalityInfo::logPrefix(v8);
      v23 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v22;
      v47 = 2080;
      v48 = " ";
      v49 = 2080;
      v50 = v23;
      v51 = 2080;
      v52 = "";
      v19 = "#I %s%s%s%sobtained IMSI is not allowed for entitlement communication";
      goto LABEL_27;
    }

    return 2;
  }

  if (*(this + 360) == 1)
  {
    v11 = *(this + 5);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v12 = PersonalityInfo::logPrefix(v8);
    v13 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v12;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v13;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%swaiting for auth token";
LABEL_18:
    v6 = v11;
    goto LABEL_19;
  }

  if (*(this + 361) == 1)
  {
    v11 = *(this + 5);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v25 = PersonalityInfo::logPrefix(v8);
    v26 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v25;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v26;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%swaiting for service token";
    goto LABEL_18;
  }

  v29 = *(v7 + 455);
  if (v29 < 0)
  {
    v29 = *(v7 + 440);
  }

  if (!v29)
  {
    sub_100A83334(*(this + 18), __p);
    v30 = sub_100318068(__p, "1");
    if (SHIBYTE(v49) < 0)
    {
      operator delete(*__p);
    }

    if (!v30)
    {
      v2 = *(this + 5);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v36 = PersonalityInfo::logPrefix(***(this + 16));
      v37 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v36;
      v47 = 2080;
      v48 = " ";
      v49 = 2080;
      v50 = v37;
      v51 = 2080;
      v52 = "";
      v5 = "#I %s%s%s%swaiting for unique id";
      goto LABEL_4;
    }
  }

  if (*(this + 71))
  {
    v2 = *(this + 5);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v31 = PersonalityInfo::logPrefix(***(this + 16));
    v32 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v31;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v32;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%sExisting Request in place, delaying subsequent transactions";
    goto LABEL_4;
  }

  if (sub_1009C2E28(this))
  {
    v33 = *(this + 5);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      return 2;
    }

    v34 = PersonalityInfo::logPrefix(***(this + 16));
    v35 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v34;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v35;
    v51 = 2080;
    v52 = "";
    v19 = "#W %s%s%s%sToo many entitlement failures";
    goto LABEL_52;
  }

  if (sub_1009C2E38(this))
  {
    v33 = *(this + 5);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      return 2;
    }

    v38 = PersonalityInfo::logPrefix(***(this + 16));
    v39 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v38;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v39;
    v51 = 2080;
    v52 = "";
    v19 = "#W %s%s%s%sSubscriber blocked";
LABEL_52:
    v24 = v33;
    goto LABEL_28;
  }

  if (*(this + 49))
  {
    v2 = *(this + 5);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v40 = PersonalityInfo::logPrefix(***(this + 16));
    v41 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v40;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v41;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%sCommunication is temporary blocked because of server issues";
    goto LABEL_4;
  }

  if (*(this + 51))
  {
    v2 = *(this + 5);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v42 = PersonalityInfo::logPrefix(***(this + 16));
    v43 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v42;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v43;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%sCommunication is temporary blocked because of connection issues";
    goto LABEL_4;
  }

  if (*(this + 857) != 1)
  {
    v2 = *(this + 5);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v44 = PersonalityInfo::logPrefix(***(this + 16));
    v45 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v44;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v45;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%swaiting for 'location service' state";
    goto LABEL_4;
  }

  if (!*(this + 80))
  {
    return 1;
  }

  result = entitlements::CEHTTPDriver::checkConnectivityForQuery(this, (*(this + 79) + 16), 0);
  if (result)
  {
    sub_1004E2AA0(this + 78, (*(this + 79) + 16));
  }

  return result;
}

BOOL entitlements::CEHTTPDriver::checkConnectivityForQuery(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(a1 + 128));
    v8 = *(a1 + 160);
    sub_100535024(*a2, __p);
    v9 = v40 >= 0 ? __p : __p[0];
    *buf = 136316418;
    v42 = v7;
    v43 = 2080;
    v44 = " ";
    v45 = 2080;
    v46 = v8;
    v47 = 2080;
    v48 = "";
    v49 = 2048;
    v50 = a3;
    v51 = 2080;
    v52 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sQ:%zu, analysing: %s", buf, 0x3Eu);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = *(*a2 + 120);
  if ((v10 & 0x100000000) == 0)
  {
    goto LABEL_42;
  }

  v11 = *(a1 + 696);
  if (!v11)
  {
    goto LABEL_42;
  }

  v12 = a1 + 696;
  do
  {
    if (*(v11 + 32) >= v10)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * (*(v11 + 32) < v10));
  }

  while (v11);
  if (v12 == a1 + 696 || *(v12 + 32) > v10)
  {
    goto LABEL_42;
  }

  v13 = *(v12 + 63);
  if (v13 < 0)
  {
    v13 = *(v12 + 48);
  }

  if (!v13)
  {
    v35 = *(a1 + 40);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v36 = PersonalityInfo::logPrefix(***(a1 + 128));
    v37 = *(a1 + 160);
    v38 = sub_10006EE44(v10);
    *buf = 136316418;
    v42 = v36;
    v43 = 2080;
    v44 = " ";
    v45 = 2080;
    v46 = v37;
    v47 = 2080;
    v48 = "";
    v49 = 2048;
    v50 = a3;
    v51 = 2080;
    v52 = v38;
    v29 = "#I %s%s%s%sQ:%zu, alt server url for %s is not received/processed yet, waiting - bail-out";
    v30 = v35;
    v31 = 62;
    goto LABEL_33;
  }

  if ((*(v12 + 64) & 1) == 0)
  {
LABEL_42:
    if (entitlements::CEHTTPDriver::isEntitlementReachableOnInternet_sync(a1))
    {
      v14 = *(a1 + 40);
      result = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v16 = PersonalityInfo::logPrefix(***(a1 + 128));
      v17 = *(a1 + 160);
      v18 = *(a1 + 858);
      *buf = 136316418;
      if (v18)
      {
        v19 = "companion device";
      }

      else
      {
        v19 = "Internet";
      }

      v42 = v16;
      v43 = 2080;
      v44 = " ";
      v45 = 2080;
      v46 = v17;
      v47 = 2080;
      v48 = "";
      v49 = 2048;
      v50 = a3;
      v51 = 2080;
      v52 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sQ:%zu, Entitlements can go over %s - go ahead", buf, 0x3Eu);
      return 0;
    }
  }

  if ((sub_100A81C8C(*(a1 + 144)) & 1) == 0 || *(a1 + 777) != 1)
  {
    v26 = *(a1 + 40);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v27 = PersonalityInfo::logPrefix(***(a1 + 128));
    v28 = *(a1 + 160);
    *buf = 136316162;
    v42 = v27;
    v43 = 2080;
    v44 = " ";
    v45 = 2080;
    v46 = v28;
    v47 = 2080;
    v48 = "";
    v49 = 2048;
    v50 = a3;
    v29 = "#I %s%s%s%sQ:%zu, No transport to reach Entitlement server - bail-out";
    v30 = v26;
    v31 = 52;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
    return 1;
  }

  v20 = *(a1 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = PersonalityInfo::logPrefix(***(a1 + 128));
    v22 = *(a1 + 160);
    *buf = 136316162;
    v42 = v21;
    v43 = 2080;
    v44 = " ";
    v45 = 2080;
    v46 = v22;
    v47 = 2080;
    v48 = "";
    v49 = 2048;
    v50 = a3;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sQ:%zu, Entitlements can go over dedicated APN - go ahead", buf, 0x34u);
  }

  v23 = **(a1 + 128);
  v24 = *v23;
  v25 = *(*v23 + 13);
  if (entitlements::CEHTTPDriver::isConnectionActive_sync(a1, 15, *(*v23 + 13)))
  {
    return 0;
  }

  v32 = *(a1 + 40);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = PersonalityInfo::logPrefix(v24);
    v34 = *(a1 + 160);
    *buf = 136316162;
    v42 = v33;
    v43 = 2080;
    v44 = " ";
    v45 = 2080;
    v46 = v34;
    v47 = 2080;
    v48 = "";
    v49 = 2048;
    v50 = a3;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sQ:%zu, Need to activate entitlement service type.", buf, 0x34u);
    v25 = *(***(a1 + 128) + 52);
  }

  sub_100975A40(v25);
  return 1;
}

void sub_1004E5450(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  v5 = v2[3];
  if (v5)
  {
    sub_100004A34(v5);
  }

  operator delete(v2);
}

uint64_t entitlements::CEHTTPDriver::isEntitlementReachableOnInternet_sync(entitlements::CEHTTPDriver *this)
{
  if ((sub_100A81C8C(*(this + 18)) & 2) == 0)
  {
    goto LABEL_2;
  }

  if ((*(this + 736) & 1) != 0 || (*(this + 858) & 1) != 0 || entitlements::CEHTTPDriver::isConnectionActiveOnAnySlot_sync(this, 0))
  {
LABEL_9:
    v2 = 1;
    return v2 & 1;
  }

  if ((sub_100A81C8C(*(this + 18)) & 1) == 0 || (*(this + 777) & 1) == 0)
  {
    if ((entitlements::CEHTTPDriver::isConnectionAvailableOnAnySlot_sync(this, 19) & 1) == 0)
    {
      v2 = *(this + 776);
      return v2 & 1;
    }

    goto LABEL_9;
  }

LABEL_2:
  v2 = 0;
  return v2 & 1;
}

void entitlements::CEHTTPDriver::initiateRequestQuery_sync(entitlements::CEHTTPDriver *this, char a2)
{
  v44 = 0;
  ctu::ns::AutoPool::AutoPool(&v44);
  canPerformRequest_sync = entitlements::CEHTTPDriver::canPerformRequest_sync(this);
  if (canPerformRequest_sync)
  {
    if (canPerformRequest_sync == 2)
    {
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = PersonalityInfo::logPrefix(***(this + 16));
        v7 = *(this + 20);
        *buf = 136315906;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v46 = 2080;
        v47 = v7;
        v48 = 2080;
        v49 = "";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sRequest cannot be executed - report failure for all requests", buf, 0x2Au);
      }

      buf[0] = 0;
      buf[4] = 0;
      entitlements::CEHTTPDriver::terminateAllQueries(this, 1, buf);
    }

    v14 = *(this + 5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PersonalityInfo::logPrefix(***(this + 16));
      v16 = *(this + 20);
      *buf = 136315906;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v46 = 2080;
      v47 = v16;
      v48 = 2080;
      v49 = "";
      v17 = "#I %s%s%s%sUnable to perform request";
      v18 = v14;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, 0x2Au);
      goto LABEL_51;
    }

    goto LABEL_51;
  }

  v8 = *(this + 47);
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = *(this + 737);
  v10 = *(this + 5);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = PersonalityInfo::logPrefix(***(this + 16));
      v13 = *(this + 20);
      *buf = 136315906;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v46 = 2080;
      v47 = v13;
      v48 = 2080;
      v49 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sForced to make a request - removing 'forced' flag, canceling automatic retry timeout", buf, 0x2Au);
      v8 = *(this + 47);
      *(this + 47) = 0;
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(this + 47) = 0;
    }

    (*(*v8 + 8))(v8);
LABEL_18:
    *(this + 737) = 0;
    v21 = *(*(this + 79) + 16);
    if (!v21)
    {
      __assert_rtn("initiateRequestQuery_sync", "CarrierEntitlementsHTTPCommandDriver.mm", 2952, "fPendingQueryQueue.front()");
    }

    v22 = sub_1005358E8(v21);
    if ((a2 & 1) != 0 || (v26 = v22, *(this + 676) == 1) && *(this + 168) == v22)
    {
      if (!*(this + 83))
      {
        v23 = *(this + 5);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = PersonalityInfo::logPrefix(***(this + 16));
          v25 = *(this + 20);
          *buf = 136315906;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v46 = 2080;
          v47 = v25;
          v48 = 2080;
          v49 = "";
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%ssending out the request", buf, 0x2Au);
        }

        if (*(this + 676) == 1)
        {
          *(this + 676) = 0;
        }

        entitlements::CEHTTPDriver::initiateAndSendHttpRequest_sync(this);
      }
    }

    else
    {
      *(this + 168) = v22;
      *(this + 676) = 1;
      v27 = *(this + 5);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = PersonalityInfo::logPrefix(***(this + 16));
        v29 = *(this + 20);
        *buf = 136316162;
        *&buf[4] = v28;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v46 = 2080;
        v47 = v29;
        v48 = 2080;
        v49 = "";
        v50 = 2048;
        v51 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sscheduling the request of generation:%lu", buf, 0x34u);
      }

      sub_100004AA0(buf, this + 1);
      v31 = *buf;
      v30 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v30);
      }

      Registry::getTimerService(buf, *(this + 6));
      v32 = *buf;
      sub_10000501C(__p, "hold outgoing");
      v33 = *(this + 3);
      object = v33;
      if (v33)
      {
        dispatch_retain(v33);
      }

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3321888768;
      v37[2] = sub_1004E5F88;
      v37[3] = &unk_101E518E8;
      v37[4] = this;
      v37[5] = v31;
      v38 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      aBlock = _Block_copy(v37);
      sub_100D23364(v32, __p, 1, 100000, &object, &aBlock);
      v34 = v43;
      v43 = 0;
      v35 = *(this + 83);
      *(this + 83) = v34;
      if (v35)
      {
        (*(*v35 + 8))(v35);
        v36 = v43;
        v43 = 0;
        if (v36)
        {
          (*(*v36 + 8))(v36);
        }
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v42 < 0)
      {
        operator delete(__p[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v38)
      {
        std::__shared_weak_count::__release_weak(v38);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_weak(v30);
      }
    }

    goto LABEL_51;
  }

  if (v11)
  {
    v19 = PersonalityInfo::logPrefix(***(this + 16));
    v20 = *(this + 20);
    *buf = 136315906;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v46 = 2080;
    v47 = v20;
    v48 = 2080;
    v49 = "";
    v17 = "#I %s%s%s%sautomatic retry timer in place";
    v18 = v10;
    goto LABEL_15;
  }

LABEL_51:
  ctu::ns::AutoPool::~AutoPool(&v44);
}

void *sub_1004E5C3C(uint64_t a1, uint64_t *__p)
{
  v3 = *__p;
  v4 = __p[1];
  *(v3 + 8) = v4;
  *v4 = v3;
  --*(a1 + 16);
  v5 = __p[3];
  if (v5)
  {
    sub_100004A34(v5);
  }

  operator delete(__p);
  return v4;
}

void sub_1004E5C8C(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = PersonalityInfo::logPrefix(***(v3 + 128));
          v8 = *(v3 + 160);
          v9 = 136315906;
          v10 = v7;
          v11 = 2080;
          v12 = " ";
          v13 = 2080;
          v14 = v8;
          v15 = 2080;
          v16 = "";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%scancelation re-check timer expired", &v9, 0x2Au);
        }

        entitlements::CEHTTPDriver::checkPendingQueriesCancelation(v3);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004E5DB8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        entitlements::CEHTTPDriver::onAutomaticRetryTimeoutExpiration(v5);
        sub_100004A34(v4);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1004E5E2C(_Unwind_Exception *a1)
{
  sub_100004A34(v1);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::onAutomaticRetryTimeoutExpiration(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 16));
    v4 = *(this + 20);
    v7 = 136315906;
    v8 = v3;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v4;
    v13 = 2080;
    v14 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________   retry backoff timer expired", &v7, 0x2Au);
  }

  v5 = *(this + 47);
  *(this + 47) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
}

uint64_t sub_1004E5F5C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004E5F78(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004E5F88(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(***(v2 + 128));
    v5 = *(v2 + 160);
    v11 = 136315906;
    v12 = v4;
    v13 = 2080;
    v14 = " ";
    v15 = 2080;
    v16 = v5;
    v17 = 2080;
    v18 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sfHoldOutgoingTimer fired", &v11, 0x2Au);
  }

  v6 = a1[6];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[5];
      if (v9)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *(v9 + 83);
        *(v9 + 83) = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        sub_100004A34(v8);
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        entitlements::CEHTTPDriver::initiateRequestQuery_sync(v9, 0);
        sub_100004A34(v8);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_1004E60F4(_Unwind_Exception *a1)
{
  sub_100004A34(v1);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::initiateAndSendHttpRequest_sync(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 79);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 76) = v4;
  v5 = *(this + 77);
  *(this + 77) = v3;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(this + 16));
    v8 = *(this + 20);
    v9 = *(this + 80);
    *buf = 136316162;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v15 = 2080;
    v16 = v8;
    v17 = 2080;
    v18 = "";
    v19 = 2048;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sTaking first pending query out of %zu, and Sending out!", buf, 0x34u);
  }

  sub_1004E5450(this + 624);
  if (!*(this + 80))
  {
    entitlements::CEHTTPDriver::addNewPendingQuery();
  }

  if (!entitlements::CEHTTPDriver::addAuthDataIfNeeded_sync(this, *(this + 76)))
  {
    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(this + 16));
      v12 = *(this + 20);
      *buf = 136315906;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v15 = 2080;
      v16 = v12;
      v17 = 2080;
      v18 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sfailed to add Authentication - cannot issue request, failing attempt immediately", buf, 0x2Au);
    }

    buf[0] = 0;
    buf[4] = 0;
    v13[0] = 0;
    v13[1] = 0;
    entitlements::CEHTTPDriver::handleRequestFailureAndMergeWithPending_sync(this, 0, buf, v13);
    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, this + 1);
    operator new();
  }

  entitlements::CEHTTPDriver::sendHttpRequest_sync(this);
}

void sub_1004E63C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::resetFailuresAndBackoffTimer(uint64_t a1, signed int a2)
{
  sub_1009C43B8(a1, a2);
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

      goto LABEL_7;
    }

    v19 = *(a1 + 712);
    if (v19 == (a1 + 720))
    {
      return;
    }

    while (1)
    {
      v20 = *(v19 + 8);
      if ((v20 - 6001) > 9)
      {
        break;
      }

      v21 = 1 << (v20 - 113);
      if ((v21 & 0x209) != 0)
      {
        v22 = v19[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v19[2];
            v14 = *v23 == v19;
            v19 = v23;
          }

          while (!v14);
        }
      }

      else
      {
        if ((v21 & 6) == 0)
        {
          break;
        }

        v24 = *(a1 + 40);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = PersonalityInfo::logPrefix(***(a1 + 128));
          v26 = *(a1 + 160);
          v27 = sub_1000710D4(*(v19 + 7));
          v28 = sub_100531604(*(v19 + 8));
          v29 = sub_1000710B0(0);
          *buf = 136316674;
          v35 = v25;
          v36 = 2080;
          v37 = " ";
          v38 = 2080;
          v39 = v26;
          v40 = 2080;
          v41 = "";
          v42 = 2080;
          v43 = v27;
          v44 = 2080;
          v45 = v28;
          v46 = 2080;
          v47 = v29;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sremoved vital block for action %s [%s] because of %s", buf, 0x48u);
        }

        v23 = sub_1000194D8((a1 + 712), v19);
        operator delete(v19);
      }

LABEL_50:
      v19 = v23;
      if (v23 == (a1 + 720))
      {
        return;
      }
    }

    v30 = *(a1 + 40);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      v32 = sub_100531604(v20);
      v33 = sub_1000710D4(*(v19 + 7));
      *buf = 136315394;
      v35 = v32;
      v36 = 2080;
      v37 = v33;
      _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "invalid vital code %s for action %s", buf, 0x16u);
    }

    v31 = v19[1];
    if (v31)
    {
      do
      {
        v23 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      do
      {
        v23 = v19[2];
        v14 = *v23 == v19;
        v19 = v23;
      }

      while (!v14);
    }

    goto LABEL_50;
  }

  if (a2 == 7 || a2 == 3)
  {
LABEL_7:
    v4 = *(a1 + 712);
    if (v4 == (a1 + 720))
    {
      return;
    }

    while (1)
    {
      v5 = *(v4 + 8);
      if ((v5 - 6001) < 3)
      {
        goto LABEL_11;
      }

      if (v5 != 6004)
      {
        break;
      }

      v13 = v4[1];
      if (v13)
      {
        do
        {
          v12 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v14 = *v12 == v4;
          v4 = v12;
        }

        while (!v14);
      }

LABEL_14:
      v4 = v12;
      if (v12 == (a1 + 720))
      {
        return;
      }
    }

    if (v5 != 6010)
    {
      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v17 = sub_100531604(v5);
        v18 = sub_1000710D4(*(v4 + 7));
        *buf = 136315394;
        v35 = v17;
        v36 = 2080;
        v37 = v18;
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "invalid vital code %s for action %s", buf, 0x16u);
      }

      v16 = v4[1];
      if (v16)
      {
        do
        {
          v12 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v14 = *v12 == v4;
          v4 = v12;
        }

        while (!v14);
      }

      goto LABEL_14;
    }

LABEL_11:
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(a1 + 128));
      v8 = *(a1 + 160);
      v9 = sub_1000710D4(*(v4 + 7));
      v10 = sub_100531604(*(v4 + 8));
      v11 = sub_1000710B0(a2);
      *buf = 136316674;
      v35 = v7;
      v36 = 2080;
      v37 = " ";
      v38 = 2080;
      v39 = v8;
      v40 = 2080;
      v41 = "";
      v42 = 2080;
      v43 = v9;
      v44 = 2080;
      v45 = v10;
      v46 = 2080;
      v47 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sremoved vital block for action %s [%s] because of %s", buf, 0x48u);
    }

    v12 = sub_1000194D8((a1 + 712), v4);
    operator delete(v4);
    goto LABEL_14;
  }
}

BOOL entitlements::CEHTTPDriver::hasVitalBlockFor(uint64_t a1, int a2, int a3)
{
  if (!sub_1009C2E38(a1))
  {
    v10 = *(a1 + 720);
    if (!v10)
    {
      return 0;
    }

    v11 = a1 + 720;
    do
    {
      if (*(v10 + 28) >= a2)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * (*(v10 + 28) < a2));
    }

    while (v10);
    if (v11 == a1 + 720 || *(v11 + 28) > a2)
    {
      return 0;
    }

    if (a3)
    {
      if (*(v11 + 32) >> 1 == 3001)
      {
        return 0;
      }

      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = PersonalityInfo::logPrefix(***(a1 + 128));
        v14 = *(a1 + 160);
        v15 = sub_1000710D4(a2);
        v16 = sub_100531604(*(v11 + 32));
        v22 = 136316418;
        v23 = v13;
        v24 = 2080;
        v25 = " ";
        v26 = 2080;
        v27 = v14;
        v28 = 2080;
        v29 = "";
        v30 = 2080;
        v31 = v15;
        v32 = 2080;
        v33 = v16;
        v17 = "#I %s%s%s%sAction %s is not allowed since it had vital failure %s, and failure is unforgivable even being user-initiated";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v17, &v22, 0x3Eu);
      }
    }

    else
    {
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = PersonalityInfo::logPrefix(***(a1 + 128));
        v19 = *(a1 + 160);
        v20 = sub_1000710D4(a2);
        v21 = sub_100531604(*(v11 + 32));
        v22 = 136316418;
        v23 = v18;
        v24 = 2080;
        v25 = " ";
        v26 = 2080;
        v27 = v19;
        v28 = 2080;
        v29 = "";
        v30 = 2080;
        v31 = v20;
        v32 = 2080;
        v33 = v21;
        v17 = "#I %s%s%s%sAction %s is not allowed since it had vital failure %s and action is not user-initiated";
        goto LABEL_19;
      }
    }

    return 1;
  }

  v6 = *(a1 + 40);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!result)
  {
    return result;
  }

  v8 = PersonalityInfo::logPrefix(***(a1 + 128));
  v9 = *(a1 + 160);
  v22 = 136316162;
  v23 = v8;
  v24 = 2080;
  v25 = " ";
  v26 = 2080;
  v27 = v9;
  v28 = 2080;
  v29 = "";
  v30 = 2080;
  v31 = sub_1000710D4(a2);
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAction %s is not allowed since subscriber blocked", &v22, 0x34u);
  return 0;
}

void *sub_1004E6BDC(void *a1, uint64_t *a2)
{
  sub_1004FC3DC(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t *sub_1004E6C28(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1005348EC(v2);
    operator delete();
  }

  return a1;
}

void entitlements::CEHTTPDriver::sendHttpRequest_sync(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 16));
    v4 = *(this + 20);
    *buf = 136315906;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v95 = v4;
    *v96 = 2080;
    *&v96[2] = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________>  Sending HTTP Request, trying", buf, 0x2Au);
  }

  v5 = *(this + 76);
  if (v5)
  {
    memset(&__dst, 0, sizeof(__dst));
    if (*(this + 455) < 0)
    {
      sub_100005F2C(&__dst, *(this + 54), *(this + 55));
      v5 = *(this + 76);
    }

    else
    {
      __dst = *(this + 18);
    }

    v9 = *(v5 + 120);
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_17;
    }

    v10 = *(this + 87);
    if (!v10)
    {
      goto LABEL_17;
    }

    v11 = this + 696;
    do
    {
      if (*(v10 + 8) >= v9)
      {
        v11 = v10;
      }

      v10 = *&v10[8 * (*(v10 + 8) < v9)];
    }

    while (v10);
    if (v11 != this + 696 && *(v11 + 8) <= v9)
    {
      v12 = v11[64];
      std::string::operator=(&__dst, (v11 + 40));
    }

    else
    {
LABEL_17:
      v12 = 0;
    }

    v13 = *(this + 5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = PersonalityInfo::logPrefix(***(this + 16));
      v15 = *(this + 20);
      p_dst = &__dst;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      *buf = 136316162;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v95 = v15;
      *v96 = 2080;
      *&v96[2] = "";
      *&v96[10] = 2082;
      *&v96[12] = p_dst;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sSending to Server Address: %{public}s", buf, 0x34u);
    }

    memset(&v92, 0, sizeof(v92));
    if (*(this + 43) == 2)
    {
      entitlements::CEHTTPDriver::gba_personalizedURL(this, &__dst, &v92);
    }

    else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v92, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v92 = __dst;
    }

    v89 = 0;
    v90 = 0;
    v91 = 0;
    if (*(this + 43) == 2)
    {
      entitlements::CEHTTPDriver::gba_createAuthHeader(buf, this);
    }

    else
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
    }

    entitlements::CEHTTPDriver::createHeaders(this, buf, &v89);
    sub_1000DD0AC(buf, *&buf[8]);
    v17 = *(this + 5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(***(this + 16));
      v19 = *(this + 20);
      v20 = &v92;
      if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v92.__r_.__value_.__r.__words[0];
      }

      *buf = 136316162;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v95 = v19;
      *v96 = 2080;
      *&v96[2] = "";
      *&v96[10] = 2080;
      *&v96[12] = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%surl: %s", buf, 0x34u);
      v17 = *(this + 5);
    }

    v21 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      v22 = PersonalityInfo::logPrefix(***(this + 16));
      v23 = *(this + 20);
      *buf = 136315906;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v95 = v23;
      *v96 = 2080;
      *&v96[2] = "";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%ssend header:", buf, 0x2Au);
    }

    v72 = v12;
    v24 = v89;
    if (v89 != &v90)
    {
      do
      {
        v25 = *(this + 5);
        v21 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          v26 = PersonalityInfo::logPrefix(***(this + 16));
          v27 = v24 + 4;
          if (*(v24 + 55) < 0)
          {
            v27 = *v27;
          }

          v28 = v24 + 7;
          if (*(v24 + 79) < 0)
          {
            v28 = *v28;
          }

          v29 = *(this + 20);
          *buf = 136316418;
          *&buf[4] = v26;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v95 = v29;
          *v96 = 2080;
          *&v96[2] = "";
          *&v96[10] = 2080;
          *&v96[12] = v27;
          v97 = 2080;
          v98 = v28;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s  %s: %s", buf, 0x3Eu);
        }

        v30 = v24[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v24[2];
            v32 = *v31 == v24;
            v24 = v31;
          }

          while (!v32);
        }

        v24 = v31;
      }

      while (v31 != &v90);
    }

    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      v21 = sub_100005F2C(&__p, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v92;
    }

    v86 = v89;
    v87[0] = v90;
    v87[1] = v91;
    if (v91)
    {
      v90[2] = v87;
      v89 = &v90;
      v90 = 0;
      v91 = 0;
    }

    else
    {
      v86 = v87;
    }

    v33 = *(this + 74);
    *&v85 = *(this + 73);
    *(&v85 + 1) = v33;
    if (v33)
    {
      atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
    }

    entitlements::sCreateHttpRequest(v21, 3, &__p, &v86, &v85);
    v34 = (this + 568);
    v35 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v36 = *(this + 72);
    *(this + 568) = v35;
    if (v36)
    {
      sub_100004A34(v36);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    if (*(&v85 + 1))
    {
      sub_100004A34(*(&v85 + 1));
    }

    sub_1000DD0AC(&v86, v87[0]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v37 = *v34;
    if (*v34)
    {
      if (*(this + 57))
      {
        (*(*v37 + 72))(*v34);
        v37 = *v34;
      }

      sub_10053BF9C(*(this + 76), buf);
      (*(*v37 + 56))(v37, buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      (*(**(this + 71) + 8))(*(this + 71), *(this + 3));
      v38 = *(this + 71);
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3321888768;
      v81[2] = sub_1004EA23C;
      v81[3] = &unk_101E51948;
      sub_100004AA0(buf, this + 1);
      v40 = *buf;
      v39 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v39);
        v82 = this;
        v83 = v40;
        v84 = v39;
        atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v82 = this;
        v83 = *buf;
        v84 = 0;
      }

      (*(*v38 + 16))(v38, v81);
      if (v39)
      {
        std::__shared_weak_count::__release_weak(v39);
      }

      v79[0] = 0;
      v79[1] = 0;
      v80 = 0;
      if (*(this + 567) < 0)
      {
        sub_100005F2C(v79, *(this + 68), *(this + 69));
      }

      else
      {
        *v79 = *(this + 34);
        v80 = *(this + 70);
      }

      v44 = HIBYTE(v80);
      if (v80 < 0)
      {
        v44 = v79[1];
      }

      if (v44)
      {
        v45 = *(this + 5);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = PersonalityInfo::logPrefix(***(this + 16));
          v47 = *(this + 20);
          v48 = v79;
          if (v80 < 0)
          {
            v48 = v79[0];
          }

          *buf = 136316162;
          *&buf[4] = v46;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v95 = v47;
          *v96 = 2080;
          *&v96[2] = "";
          *&v96[10] = 2080;
          *&v96[12] = v48;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sIssuing Request (bound to interface '%s')", buf, 0x34u);
        }
      }

      v49 = (this + 608);
      if ((v72 & 1) == 0 && entitlements::CEHTTPDriver::isEntitlementReachableOnInternet_sync(this))
      {
        v50 = *(this + 5);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = PersonalityInfo::logPrefix(***(this + 16));
          v52 = *(this + 20);
          v53 = "Internet";
          if (*(this + 858))
          {
            v53 = "iPhone";
          }

          *buf = 136316162;
          *&buf[4] = v51;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v95 = v52;
          *v96 = 2080;
          *&v96[2] = "";
          *&v96[10] = 2080;
          *&v96[12] = v53;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sIssuing Request without interface or service type restrictions (over %s)", buf, 0x34u);
        }

        if ((*(this + 858) & 1) == 0)
        {
          if (sub_1005525EC(*v49))
          {
            v54 = *v34;
            sub_10000501C(buf, "com.apple.CommCenter.CellularPlanProvisioning");
            (*(*v54 + 160))(v54, buf);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }
        }

LABEL_101:
        v58 = sub_100A83540(*(this + 18));
        if (v58)
        {
          v59 = *(this + 5);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v60 = PersonalityInfo::logPrefix(***(this + 16));
            v61 = *(this + 20);
            *buf = 136316162;
            *&buf[4] = v60;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v95 = v61;
            *v96 = 2080;
            *&v96[2] = "";
            *&v96[10] = 1024;
            *&v96[12] = v58;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sRequest timeout set to %d seconds", buf, 0x30u);
          }

          (*(**v34 + 96))(v58);
        }

        (*(**v34 + 232))(*v34, 1);
        (*(**v34 + 200))(*v34, 75);
        v77[0] = 0;
        v77[1] = 0;
        v78 = 0;
        if (sub_1004DE990(*(this + 6), ***(this + 16), *(this + 16) + 64, v77))
        {
          if (!*(this + 30) && *v49)
          {
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_1004F1130;
            v95 = &unk_101E51FB0;
            *v96 = v77;
            *&v96[8] = this + 608;
            sub_1004F0F84(0x800E2, buf);
          }
        }

        else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
        {
          v69 = PersonalityInfo::logPrefix(***(this + 16));
          sub_101772A64(v69, this, buf);
        }

        if (!*(this + 93))
        {
          operator new();
        }

        v70 = *(this + 77);
        v76[0] = *(this + 76);
        v76[1] = v70;
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        entitlements::CEHTTPDriver::trackGetEntitlementRequests(this, v76);
        if (v70)
        {
          sub_100004A34(v70);
        }

        sub_100552708(*v49);
        v71 = *v34;
        if (SHIBYTE(v80) < 0)
        {
          sub_100005F2C(v74, v79[0], v79[1]);
        }

        else
        {
          *v74 = *v79;
          v75 = v80;
        }

        (*(*v71 + 40))(v71, v74);
        if (SHIBYTE(v75) < 0)
        {
          operator delete(v74[0]);
        }

        if (SHIBYTE(v78) < 0)
        {
          operator delete(v77[0]);
        }

        if (SHIBYTE(v80) < 0)
        {
          operator delete(v79[0]);
        }

        if (v84)
        {
          std::__shared_weak_count::__release_weak(v84);
        }

        sub_1000DD0AC(&v89, v90);
        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        return;
      }

      if ((sub_100A81C8C(*(this + 18)) & 1) != 0 && *(this + 777) == 1)
      {
        v55 = *(this + 5);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = PersonalityInfo::logPrefix(***(this + 16));
          v57 = *(this + 20);
          *buf = 136315906;
          *&buf[4] = v56;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v95 = v57;
          *v96 = 2080;
          *&v96[2] = "";
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sIssuing Request (over Entitlement service)", buf, 0x2Au);
        }

        (*(**v34 + 152))(*v34, kCTDataConnectionServiceTypeEntitlementTraffic);
        (*(**(this + 71) + 160))(*(this + 71), ***(this + 16));
        goto LABEL_101;
      }

      v62 = *(this + 5);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = PersonalityInfo::logPrefix(***(this + 16));
        v64 = *(this + 20);
        *buf = 136315906;
        *&buf[4] = v63;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v95 = v64;
        *v96 = 2080;
        *&v96[2] = "";
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sno-go. Device cannot use BB and do not have WiFi available", buf, 0x2Au);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(v79[0]);
      }

      if (v84)
      {
        std::__shared_weak_count::__release_weak(v84);
      }
    }

    else
    {
      v41 = *(this + 5);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = PersonalityInfo::logPrefix(***(this + 16));
        v43 = *(this + 20);
        *buf = 136315906;
        *&buf[4] = v42;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v95 = v43;
        *v96 = 2080;
        *&v96[2] = "";
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate request", buf, 0x2Au);
      }
    }

    sub_1000DD0AC(&v89, v90);
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = *(this + 5);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_123;
    }

    v7 = PersonalityInfo::logPrefix(***(this + 16));
    v8 = *(this + 20);
    *buf = 136315906;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v95 = v8;
    *v96 = 2080;
    *&v96[2] = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sNo Requested Query Object", buf, 0x2Au);
  }

  v6 = *(this + 5);
  if (*(this + 76))
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      v65 = PersonalityInfo::logPrefix(***(this + 16));
      v66 = *(this + 20);
      *buf = 136315906;
      *&buf[4] = v65;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v95 = v66;
      *v96 = 2080;
      *&v96[2] = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to send http request", buf, 0x2Au);
    }

    buf[0] = 0;
    buf[4] = 0;
    v73[0] = 0;
    v73[1] = 0;
    entitlements::CEHTTPDriver::handleRequestFailureAndMergeWithPending_sync(this, 0, buf, v73);
    return;
  }

LABEL_123:
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v67 = PersonalityInfo::logPrefix(***(this + 16));
    v68 = *(this + 20);
    *buf = 136315906;
    *&buf[4] = v67;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v95 = v68;
    *v96 = 2080;
    *&v96[2] = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sRequest is no longer valid", buf, 0x2Au);
  }
}

void sub_1004E7D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55)
{
  if (*(v55 - 153) < 0)
  {
    operator delete(*(v55 - 176));
  }

  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a42)
  {
    std::__shared_weak_count::__release_weak(a42);
  }

  sub_1000DD0AC(&a54, a55);
  if (*(v55 - 217) < 0)
  {
    operator delete(*(v55 - 240));
  }

  if (*(v55 - 185) < 0)
  {
    operator delete(*(v55 - 208));
  }

  _Unwind_Resume(a1);
}

void *entitlements::CEHTTPDriver::gba_getSipUri@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[16];
  if (*(v2 + 376) == 1)
  {
    if ((*(v2 + 375) & 0x80000000) == 0)
    {
      v3 = *(v2 + 352);
      v4 = *(v2 + 368);
LABEL_8:
      a2[2] = v4;
      *a2 = v3;
      return this;
    }

    v7 = *(v2 + 352);
    v8 = *(v2 + 360);
  }

  else
  {
    if (*(v2 + 344) != 1)
    {
      return sub_10000501C(a2, "");
    }

    v6 = v2 + 264;
    v5 = *(v2 + 264);
    if (*(v6 + 8) == v5)
    {
      return sub_10000501C(a2, "");
    }

    if ((*(v5 + 23) & 0x80000000) == 0)
    {
      v3 = *v5;
      v4 = *(v5 + 2);
      goto LABEL_8;
    }

    v7 = *v5;
    v8 = *(v5 + 1);
  }

  return sub_100005F2C(a2, v7, v8);
}

void entitlements::CEHTTPDriver::gba_personalizedURL(void *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(a3, *a2, *(a2 + 8));
  }

  else
  {
    *a3 = *a2;
  }

  size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (size >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = a3->__r_.__value_.__r.__words[0];
  }

  if (size < 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (size >= 8)
  {
    v7 = v6 + size;
    v8 = v6;
    do
    {
      v9 = memchr(v8, 36, size - 7);
      if (!v9)
      {
        break;
      }

      if (*v9 == 0x6972752D70697324)
      {
        if (v9 != v7)
        {
          v10 = v9 - v6;
          if (v10 != -1)
          {
            entitlements::CEHTTPDriver::gba_getSipUri(a1, __p);
            if ((v14 & 0x80u) == 0)
            {
              v11 = __p;
            }

            else
            {
              v11 = __p[0];
            }

            if ((v14 & 0x80u) == 0)
            {
              v12 = v14;
            }

            else
            {
              v12 = __p[1];
            }

            std::string::replace(a3, v10, 8uLL, v11, v12);
            if (v14 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        return;
      }

      v8 = (v9 + 1);
      size = v7 - v8;
    }

    while (v7 - v8 >= 8);
  }
}

void sub_1004E809C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::gba_createAuthHeader(uint64_t **__return_ptr a1@<X8>, entitlements::CEHTTPDriver *this@<X0>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_10000501C(&v19, "");
  entitlements::CEHTTPDriver::gba_getSipUri(this, v17);
  if ((v18 & 0x80u) == 0)
  {
    v4 = v17;
  }

  else
  {
    v4 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v5 = v18;
  }

  else
  {
    v5 = v17[1];
  }

  v6 = std::string::append(&v19, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v20, "", 1uLL);
  v9 = v8->__r_.__value_.__r.__words[0];
  v22[0] = v8->__r_.__value_.__l.__size_;
  *(v22 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
  v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_10000501C(__p, "X-3GPP-Intended-Identity");
  v21 = __p;
  v11 = sub_100416DA4(a1, __p, &unk_101802C98, &v21);
  v12 = v11;
  if (*(v11 + 79) < 0)
  {
    operator delete(*(v11 + 56));
  }

  v13 = v22[0];
  *(v12 + 56) = v9;
  *(v12 + 64) = v13;
  *(v12 + 71) = *(v22 + 7);
  *(v12 + 79) = v10;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (*(this + 352) == 1)
  {
    sub_10000501C(&v20, "Authorization");
    v19.__r_.__value_.__r.__words[0] = &v20;
    v14 = sub_100416DA4(a1, &v20, &unk_101802C98, &v19);
    std::string::operator=((v14 + 56), (this + 328));
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t entitlements::CEHTTPDriver::shouldSendSelfRegistrationUpdateInHeader_sync(entitlements::CEHTTPDriver *this)
{
  if (*(this + 30) || *(***(this + 16) + 49) - 1 < 2 || !sub_100A81E98(*(this + 18)))
  {
    return 0;
  }

  v2 = *(this + 14);
  if (!v2)
  {
    return 1;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = *(this + 13);
  if (v5)
  {
    v31 = 0;
    sub_100004AA0(&v32, this + 1);
    *v28 = v32;
    (*(*v5 + 40))(__p, v5, v28, @"kEntitlementsSelfRegistrationUpdateImsi", 1);
    sub_100060DE8(&v31, __p);
    sub_10000A1EC(__p);
    if (v28[1])
    {
      sub_100004A34(v28[1]);
    }

    v30 = 0;
    sub_100004AA0(&v32, this + 1);
    *v28 = v32;
    (*(*v5 + 40))(__p, v5, v28, @"kEntitlementsSelfRegistrationUpdateImei", 1);
    sub_100060DE8(&v30, __p);
    sub_10000A1EC(__p);
    if (v28[1])
    {
      sub_100004A34(v28[1]);
    }

    v32 = 0uLL;
    v33 = 0;
    ctu::cf::assign();
    *v28 = v32;
    v29 = v33;
    v32 = 0uLL;
    v33 = 0;
    ctu::cf::assign();
    v27 = v33;
    *__p = v32;
    v6 = *(this + 16);
    v7 = *(v6 + 24);
    v8 = *(v6 + 39);
    v9 = SHIBYTE(v33);
    if (v33 >= 0)
    {
      v10 = HIBYTE(v33);
    }

    else
    {
      v10 = *(&v32 + 1);
    }

    if (v8 >= 0)
    {
      v7 = *(v6 + 39);
    }

    if (v10 == v7)
    {
      v11 = __p[0];
      v12 = v33 >= 0 ? __p : __p[0];
      v13 = v8 >= 0 ? (v6 + 16) : *(v6 + 16);
      if (!memcmp(v12, v13, v10))
      {
        v14 = SHIBYTE(v29);
        if (v29 >= 0)
        {
          v15 = HIBYTE(v29);
        }

        else
        {
          v15 = v28[1];
        }

        v16 = *(v6 + 87);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(v6 + 72);
        }

        if (v15 == v16)
        {
          v18 = v28[0];
          v19 = v29 >= 0 ? v28 : v28[0];
          v22 = *(v6 + 64);
          v21 = v6 + 64;
          v20 = v22;
          v23 = (v17 >= 0 ? v21 : v20);
          if (!memcmp(v19, v23, v15))
          {
            if (v9 < 0)
            {
              operator delete(v11);
            }

            if (v14 < 0)
            {
              operator delete(v18);
            }

            sub_100005978(&v30);
            sub_100005978(&v31);
            v24 = 0;
            goto LABEL_43;
          }
        }
      }
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }

    sub_100005978(&v30);
    sub_100005978(&v31);
  }

  v24 = 1;
LABEL_43:
  sub_100004A34(v4);
  return v24;
}

void sub_1004E864C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, const void *a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  sub_100005978(&a20);
  sub_100005978(&a21);
  sub_100004A34(v27);
  _Unwind_Resume(a1);
}

void sub_1004E86D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_10000A1EC(&a9);
  if (a14)
  {
    sub_100004A34(a14);
  }

  JUMPOUT(0x1004E86C4);
}

void entitlements::CEHTTPDriver::createHeaders(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t ***a3@<X8>)
{
  v67 = 0uLL;
  v68 = 0;
  sub_100A83334(*(a1 + 144), &v67);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_1004F0DA4(buf, "Accept", "application/json");
  sub_1004F0DF8((&v76 + 4), "Accept-Encoding", "gzip");
  sub_1000DCEE0(v77, "Content-Type", "application/json");
  sub_1004F0E4C(v78, "Content-Encoding", "gzip");
  sub_1004F0EA0(v79, "x-protocol-version", &v67);
  sub_1000DF684(a3, buf, 5);
  for (i = 0; i != -240; i -= 48)
  {
    v7 = &buf[i];
    if (v79[i + 47] < 0)
    {
      operator delete(*(v7 + 27));
    }

    if (v7[215] < 0)
    {
      operator delete(*(v7 + 24));
    }
  }

  if (*(a1 + 172) != 5)
  {
    if (*(a2 + 16))
    {
      sub_100416AAC(a3, *a2, (a2 + 8));
    }

    if (entitlements::CEHTTPDriver::shouldSendSelfRegistrationUpdateInHeader_sync(a1))
    {
      v8 = objc_alloc_init(NSISO8601DateFormatter);
      v9 = [v8 stringFromDate:{+[NSDate date](NSDate, "date")}];

      sub_10000501C(buf, [v9 UTF8String]);
      sub_10000501C(&__p, "x-self-registration-update");
      __str.__r_.__value_.__r.__words[0] = &__p;
      v10 = sub_100416DA4(a3, &__p, &unk_101802C98, &__str);
      v11 = v10;
      if (*(v10 + 79) < 0)
      {
        operator delete(*(v10 + 56));
      }

      *(v11 + 56) = *buf;
      *(v11 + 72) = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }
    }

    memset(&__p, 0, sizeof(__p));
    v12 = *(a1 + 144);
    PersonalityInfo::iccid(***(a1 + 128));
    sub_100A8228C(v12, &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      sub_10000501C(buf, "User-Agent");
      __str.__r_.__value_.__r.__words[0] = buf;
      v14 = sub_100416DA4(a3, buf, &unk_101802C98, &__str);
      std::string::operator=((v14 + 56), &__p);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
    *buf = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, buf);
    if (!v21)
    {
      std::mutex::unlock(v16);
      goto LABEL_41;
    }

    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      if (!v23)
      {
        goto LABEL_40;
      }
    }

    else
    {
      std::mutex::unlock(v16);
      if (!v23)
      {
        goto LABEL_41;
      }
    }

    memset(&__str, 0, sizeof(__str));
    (*(*v23 + 64))(&__str, v23);
    v24 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = __str.__r_.__value_.__l.__size_;
    }

    if (v24)
    {
      sub_10000501C(buf, "Accept-Language");
      v63.__r_.__value_.__r.__words[0] = buf;
      v25 = sub_100416DA4(a3, buf, &unk_101802C98, &v63);
      std::string::operator=((v25 + 56), &__str);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v26 = *(a1 + 40);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = PersonalityInfo::logPrefix(***(a1 + 128));
        v28 = *(a1 + 160);
        *buf = 136315906;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v72 = v28;
        v73 = 2080;
        v74 = "";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sno language preferences", buf, 0x2Au);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (!v22)
    {
LABEL_41:
      if ((*(a1 + 857) & 1) == 0)
      {
        __assert_rtn("createHeaders", "CarrierEntitlementsHTTPCommandDriver.mm", 3291, "fLocationServiceEnabled->has_value()");
      }

      if (*(***(a1 + 128) + 49) || !sub_100A8345C(*(a1 + 144), *(a1 + 856)))
      {
        v39 = *(a1 + 40);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = PersonalityInfo::logPrefix(***(a1 + 128));
          v41 = *(a1 + 160);
          *buf = 136315906;
          *&buf[4] = v40;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v72 = v41;
          v73 = 2080;
          v74 = "";
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%scurrent location sharing not allowed", buf, 0x2Au);
        }

        goto LABEL_83;
      }

      memset(&__str, 0, sizeof(__str));
      dsema = 0;
      dsema = dispatch_semaphore_create(0);
      v29 = Registry::getServiceMap(*(a1 + 48));
      v30 = v29;
      if (v31 < 0)
      {
        v32 = (v31 & 0x7FFFFFFFFFFFFFFFLL);
        v33 = 5381;
        do
        {
          v31 = v33;
          v34 = *v32++;
          v33 = (33 * v33) ^ v34;
        }

        while (v34);
      }

      std::mutex::lock(v29);
      *buf = v31;
      v35 = sub_100009510(&v30[1].__m_.__sig, buf);
      if (v35)
      {
        v37 = v35[3];
        v36 = v35[4];
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v30);
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v36);
          v38 = 0;
          goto LABEL_54;
        }
      }

      else
      {
        v37 = 0;
      }

      std::mutex::unlock(v30);
      v36 = 0;
      v38 = 1;
LABEL_54:
      v42 = *(***(a1 + 128) + 52);
      v70[0] = off_101E53200;
      v70[1] = &__str;
      v70[2] = &dsema;
      v70[3] = v70;
      (*(*v37 + 208))(v37, v42, v70);
      sub_10002C178(v70);
      if ((v38 & 1) == 0)
      {
        sub_100004A34(v36);
      }

      v43 = dispatch_time(0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_semaphore_wait(dsema, v43);
      v44 = *(a1 + 40);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = PersonalityInfo::logPrefix(***(a1 + 128));
        v46 = *(a1 + 160);
        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        *buf = 136316162;
        *&buf[4] = v45;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v72 = v46;
        v73 = 2080;
        v74 = "";
        v75 = 2080;
        v76 = p_str;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sobtained network MCC %s", buf, 0x34u);
      }

      memset(&v63, 0, sizeof(v63));
      v48 = Registry::getServiceMap(*(a1 + 48));
      v49 = v48;
      if (v50 < 0)
      {
        v51 = (v50 & 0x7FFFFFFFFFFFFFFFLL);
        v52 = 5381;
        do
        {
          v50 = v52;
          v53 = *v51++;
          v52 = (33 * v52) ^ v53;
        }

        while (v53);
      }

      std::mutex::lock(v48);
      *buf = v50;
      v54 = sub_100009510(&v49[1].__m_.__sig, buf);
      if (v54)
      {
        v56 = v54[3];
        v55 = v54[4];
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v49);
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v55);
          v57 = 0;
LABEL_68:
          (*(*v56 + 24))(&v63, v56, &__str);
          if ((v57 & 1) == 0)
          {
            sub_100004A34(v55);
          }

          v58 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
          if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v58 = v63.__r_.__value_.__l.__size_;
          }

          if (v58)
          {
            sub_10000501C(buf, "x-country-iso-code");
            v69 = buf;
            v59 = sub_100416DA4(a3, buf, &unk_101802C98, &v69);
            std::string::operator=((v59 + 56), &v63);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            v60 = *(a1 + 40);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = PersonalityInfo::logPrefix(***(a1 + 128));
              v62 = *(a1 + 160);
              *buf = 136315906;
              *&buf[4] = v61;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              *&buf[22] = 2080;
              v72 = v62;
              v73 = 2080;
              v74 = "";
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%scurrent location is unknown", buf, 0x2Au);
            }
          }

          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          if (dsema)
          {
            dispatch_release(dsema);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

LABEL_83:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_85;
        }
      }

      else
      {
        v56 = 0;
      }

      std::mutex::unlock(v49);
      v55 = 0;
      v57 = 1;
      goto LABEL_68;
    }

LABEL_40:
    sub_100004A34(v22);
    goto LABEL_41;
  }

LABEL_85:
  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }
}

void sub_1004E90CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, dispatch_object_t object, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_1000DD0AC(v46, *(v46 + 8));
  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

const void **entitlements::CEHTTPDriver::trackGetEntitlementRequests(uint64_t a1, uint64_t *a2)
{
  result = sub_10053588C(*a2, 29);
  if (result)
  {
    return result;
  }

  result = sub_1005376EC(*a2);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v103 = 0;
  std::to_string(&v102, *(*(a1 + 144) + 56));
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(buf, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
  }

  else
  {
    buf[0] = v102;
  }

  v96.__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(__p, buf[0].__r_.__value_.__l.__data_, buf[0].__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&buf[0].__r_.__value_.__l.__data_;
    *&v112 = *(&buf[0].__r_.__value_.__l + 2);
  }

  v97.__r_.__value_.__r.__words[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v96.__r_.__value_.__r.__words[0];
    v96.__r_.__value_.__r.__words[0] = v97.__r_.__value_.__r.__words[0];
    v99 = v6;
    sub_100005978(&v99);
  }

  if (SBYTE7(v112) < 0)
  {
    operator delete(__p[0]);
  }

  v103 = v96.__r_.__value_.__r.__words[0];
  v96.__r_.__value_.__r.__words[0] = 0;
  sub_100005978(&v96.__r_.__value_.__l.__data_);
  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  __p[0] = v103;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  sub_10005B328(&v99, __p, &__p[1], 1uLL);
  v98 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v8 = ServiceMap;
  v10 = v9;
  if (v9 < 0)
  {
    v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v10;
  v14 = sub_100009510(&v8[1].__m_.__sig, __p);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v8);
  v15 = 0;
  v17 = 1;
LABEL_25:
  v18 = kCarrierEntitlementsWalletDomain;
  (*(*v16 + 24))(buf, v16, ***(a1 + 128) + 24, @"DaysSinceEpoch", kCarrierEntitlementsWalletDomain, &v99, 3);
  sub_10010B240(&v98, &buf[0].__r_.__value_.__l.__data_);
  sub_10000A1EC(&buf[0].__r_.__value_.__l.__data_);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  v19 = [v98 unsignedLongLongValue];
  v20 = CFAbsoluteTimeGetCurrent() / 0x15180;
  v21 = &kLocationPopupShown_ptr;
  if (v20 == v19)
  {
    buf[0].__r_.__value_.__r.__words[0] = 0;
    v22 = Registry::getServiceMap(*(a1 + 48));
    v23 = v22;
    v24 = v9;
    if (v9 < 0)
    {
      v25 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v26 = 5381;
      do
      {
        v24 = v26;
        v27 = *v25++;
        v26 = (33 * v26) ^ v27;
      }

      while (v27);
    }

    std::mutex::lock(v22);
    __p[0] = v24;
    v28 = sub_100009510(&v23[1].__m_.__sig, __p);
    if (v28)
    {
      v30 = v28[3];
      v29 = v28[4];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v23);
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v29);
        v31 = 0;
LABEL_42:
        (*(*v30 + 24))(&v97, v30, ***(a1 + 128) + 24, @"ActionGetEntitlementToday", v18, &v99, 3);
        sub_10010B240(buf, &v97.__r_.__value_.__l.__data_);
        sub_10000A1EC(&v97.__r_.__value_.__l.__data_);
        if ((v31 & 1) == 0)
        {
          sub_100004A34(v29);
        }

        __p[0] = 0;
        ctu::cf::assign(__p, buf[0].__r_.__value_.__l.__data_, v42);
        v43 = __p[0];
        sub_100029A48(&buf[0].__r_.__value_.__l.__data_);
        v44 = v43 + 1;
        goto LABEL_50;
      }
    }

    else
    {
      v30 = 0;
    }

    std::mutex::unlock(v23);
    v29 = 0;
    v31 = 1;
    goto LABEL_42;
  }

  v32 = Registry::getServiceMap(*(a1 + 48));
  v33 = v32;
  v34 = v9;
  if (v9 < 0)
  {
    v35 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v36 = 5381;
    do
    {
      v34 = v36;
      v37 = *v35++;
      v36 = (33 * v36) ^ v37;
    }

    while (v37);
  }

  std::mutex::lock(v32);
  __p[0] = v34;
  v38 = sub_100009510(&v33[1].__m_.__sig, __p);
  if (!v38)
  {
    v40 = 0;
    goto LABEL_46;
  }

  v40 = v38[3];
  v39 = v38[4];
  if (!v39)
  {
LABEL_46:
    std::mutex::unlock(v33);
    v39 = 0;
    v41 = 1;
    goto LABEL_47;
  }

  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v33);
  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = &kLocationPopupShown_ptr;
  sub_100004A34(v39);
  v41 = 0;
LABEL_47:
  (*(*v40 + 16))(v40, ***(a1 + 128) + 24, @"DaysSinceEpoch", [v21[239] numberWithUnsignedLongLong:v20], v18, &v99, 3, 0);
  if ((v41 & 1) == 0)
  {
    sub_100004A34(v39);
  }

  v44 = 1;
LABEL_50:
  v45 = Registry::getServiceMap(*(a1 + 48));
  v46 = v45;
  if (v9 < 0)
  {
    v47 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v48 = 5381;
    do
    {
      v9 = v48;
      v49 = *v47++;
      v48 = (33 * v48) ^ v49;
    }

    while (v49);
  }

  std::mutex::lock(v45);
  __p[0] = v9;
  v50 = sub_100009510(&v46[1].__m_.__sig, __p);
  if (v50)
  {
    v52 = v50[3];
    v51 = v50[4];
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v46);
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v51);
      v53 = 0;
      goto LABEL_58;
    }
  }

  else
  {
    v52 = 0;
  }

  std::mutex::unlock(v46);
  v51 = 0;
  v53 = 1;
LABEL_58:
  (*(*v52 + 16))(v52, ***(a1 + 128) + 24, @"ActionGetEntitlementToday", [v21[239] numberWithUnsignedLong:v44], v18, &v99, 3, 0);
  if ((v53 & 1) == 0)
  {
    sub_100004A34(v51);
  }

  if ((atomic_load_explicit(&qword_101FBA7E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA7E8))
  {
    *__p = *"\n";
    *&v112 = 100;
    qword_101FBA7D8 = 0;
    unk_101FBA7E0 = 0;
    qword_101FBA7D0 = 0;
    sub_1004F0F10(&qword_101FBA7D0, __p, &v112 + 1, 3uLL);
    __cxa_atexit(sub_1004EA208, &qword_101FBA7D0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA7E8);
  }

  v54 = qword_101FBA7D0;
  if (qword_101FBA7D0 != qword_101FBA7D8)
  {
    while (*v54 != v44)
    {
      if (++v54 == qword_101FBA7D8)
      {
        goto LABEL_64;
      }
    }

LABEL_66:
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    memset(v113, 0, sizeof(v113));
    *__p = 0u;
    sub_10000C320(__p);
    Count = CFArrayGetCount(v5);
    if (Count)
    {
      v57 = 0;
      v58 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v57);
        if (ValueAtIndex)
        {
          v60 = CFGetTypeID(ValueAtIndex);
          if (v60 == CFStringGetTypeID())
          {
            if ((v58 & 1) == 0)
            {
              sub_10000C030(&v112, ", ", 2);
            }

            memset(buf, 0, 24);
            ctu::cf::assign();
            v97 = buf[0];
            if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v61 = &v97;
            }

            else
            {
              v61 = buf[0].__r_.__value_.__r.__words[0];
            }

            if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = buf[0].__r_.__value_.__l.__size_;
            }

            sub_10000C030(&v112, v61, size);
            if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v97.__r_.__value_.__l.__data_);
            }

            v58 = 0;
          }
        }

        ++v57;
      }

      while (Count != v57);
    }

    v63 = *(a1 + 40);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v82 = PersonalityInfo::logPrefix(***(a1 + 128));
      v83 = *(a1 + 160);
      sub_10006EE70(&v112 + 8, &v97);
      v84 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v97 : v97.__r_.__value_.__r.__words[0];
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136316418;
      *(buf[0].__r_.__value_.__r.__words + 4) = v82;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(buf[0].__r_.__value_.__r.__words[2]) = 2080;
      buf[1].__r_.__value_.__r.__words[0] = v83;
      LOWORD(buf[1].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[1].__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(buf[1].__r_.__value_.__r.__words[2]) = 2048;
      *(&buf[1].__r_.__value_.__r.__words[2] + 4) = v44;
      WORD2(buf[2].__r_.__value_.__r.__words[0]) = 2082;
      *(buf[2].__r_.__value_.__r.__words + 6) = v84;
      _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "#E %s%s%s%s***** getEntitlement abuse, issued today %zu times, current contain:[%{public}s]", buf, 0x3Eu);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }
    }

    v64 = Registry::getServiceMap(*(a1 + 48));
    v65 = v64;
    if ((v66 & 0x8000000000000000) != 0)
    {
      v67 = (v66 & 0x7FFFFFFFFFFFFFFFLL);
      v68 = 5381;
      do
      {
        v66 = v68;
        v69 = *v67++;
        v68 = (33 * v68) ^ v69;
      }

      while (v69);
    }

    std::mutex::lock(v64);
    buf[0].__r_.__value_.__r.__words[0] = v66;
    v70 = sub_100009510(&v65[1].__m_.__sig, buf);
    if (v70)
    {
      v72 = v70[3];
      v71 = v70[4];
      if (v71)
      {
        atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v65);
        atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v71);
        v73 = 0;
LABEL_91:
        if (v72)
        {
          *&buf[0].__r_.__value_.__r.__words[1] = 0u;
          memset(&buf[1].__r_.__value_.__r.__words[2], 0, 32);
          v110 = 0u;
          v109 = 0u;
          memset(&buf[3], 0, sizeof(std::string));
          v108 = 23;
          qmemcpy(&buf[0].__r_.__value_.__r.__words[2] + 7, "\tCarrierEntitlements", 20);
          qmemcpy(buf, "Telephony", 9);
          *(&buf[1].__r_.__value_.__s + 23) = 19;
          sub_1000167D4(&buf[2], "too many getEntitlement requests", 0x20uLL);
          sub_10000501C(&v96, "action requested ");
          std::to_string(&v95, v44);
          if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v74 = &v95;
          }

          else
          {
            v74 = v95.__r_.__value_.__r.__words[0];
          }

          if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v75 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v75 = v95.__r_.__value_.__l.__size_;
          }

          v76 = std::string::append(&v96, v74, v75);
          v77 = *&v76->__r_.__value_.__l.__data_;
          v97.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
          *&v97.__r_.__value_.__l.__data_ = v77;
          v76->__r_.__value_.__l.__size_ = 0;
          v76->__r_.__value_.__r.__words[2] = 0;
          v76->__r_.__value_.__r.__words[0] = 0;
          v78 = std::string::append(&v97, " times within a day", 0x13uLL);
          v79 = v78->__r_.__value_.__r.__words[0];
          v106[0] = v78->__r_.__value_.__l.__size_;
          *(v106 + 7) = *(&v78->__r_.__value_.__r.__words[1] + 7);
          v80 = HIBYTE(v78->__r_.__value_.__r.__words[2]);
          v78->__r_.__value_.__l.__size_ = 0;
          v78->__r_.__value_.__r.__words[2] = 0;
          v78->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(buf[3].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[3].__r_.__value_.__l.__data_);
          }

          buf[3].__r_.__value_.__r.__words[0] = v79;
          buf[3].__r_.__value_.__l.__size_ = v106[0];
          *(&buf[3].__r_.__value_.__r.__words[1] + 7) = *(v106 + 7);
          *(&buf[3].__r_.__value_.__s + 23) = v80;
          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v95.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          v108 |= 7uLL;
          sub_100D9EC48(__dst, buf);
          v105 = 0;
          (*(*v72 + 16))(v72, __dst, v104);
          sub_10010DF14(v104);
          if (v94 < 0)
          {
            operator delete(v93);
          }

          if (v92 < 0)
          {
            operator delete(v91);
          }

          if (v90 < 0)
          {
            operator delete(v89);
          }

          if (v88 < 0)
          {
            operator delete(v87);
          }

          if (v86 < 0)
          {
            operator delete(__dst[0]);
          }

          if (SBYTE7(v110) < 0)
          {
            operator delete(v109);
          }

          if (SHIBYTE(buf[3].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[3].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(buf[2].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[2].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[1].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[0].__r_.__value_.__l.__data_);
          }
        }

        if ((v73 & 1) == 0)
        {
          sub_100004A34(v71);
        }

        *&v112 = v81;
        if (SHIBYTE(v115) < 0)
        {
          operator delete(*(&v114 + 1));
        }

        std::locale::~locale(v113);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        goto LABEL_131;
      }
    }

    else
    {
      v72 = 0;
    }

    std::mutex::unlock(v65);
    v71 = 0;
    v73 = 1;
    goto LABEL_91;
  }

LABEL_64:
  v55 = *(qword_101FBA7D8 - 8);
  if (v44 > v55 && !(v44 % v55))
  {
    goto LABEL_66;
  }

LABEL_131:
  sub_100029A48(&v98);
  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  return sub_100005978(&v103);
}

void sub_1004E9FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, const void *a37, void *__p, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, const void *a44)
{
  __cxa_guard_abort(&qword_101FBA7E8);
  sub_100029A48(&a37);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  sub_100005978(&a44);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EA208(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1004EA23C(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *(v5 + 608);
        if (v8 && sub_1005358AC(v8))
        {
          sub_100552730(*(v5 + 608));
        }

        v9 = *a2;
        v10 = a2[1];
        v11[0] = v9;
        v11[1] = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        entitlements::CEHTTPDriver::handleHttpResponse_sync(v5, v11);
        if (v10)
        {
          sub_100004A34(v10);
        }
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1004EA328(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 48);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004EA34C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004EA3A4(uint64_t *a1)
{
  v3 = a1 + 1;
  v2 = *a1;
  v30 = 0;
  v32 = 0u;
  v31 = &v32;
  LODWORD(v30) = *(***(v2 + 128) + 52);
  HIDWORD(v30) = 2;
  v29 = 1;
  v4 = sub_1004F190C((a1 + 1), &v29);
  v28 = 0;
  *buf = &v28;
  v5 = sub_1004FCB34(&v31, &v28, &unk_101802C98, buf) + 5;
  if (v5 != v4)
  {
    sub_1001122C4(v5, *v4, v4[1], v4[1] - *v4);
  }

  v29 = 2;
  v6 = sub_1004F190C(v3, &v29);
  v28 = 1;
  *buf = &v28;
  v7 = sub_1004FCB34(&v31, &v28, &unk_101802C98, buf) + 5;
  if (v7 != v6)
  {
    sub_1001122C4(v7, *v6, v6[1], v6[1] - *v6);
  }

  v8 = ***(v2 + 128);
  if (*(v8 + 49) == 3)
  {
    v23 = *(a1 + 32);
    if (*(v8 + 61) == 1)
    {
      sub_1004F1964(v2, v23, &v30);
    }

    else
    {
      sub_1004F1C64(v2, v23, &v30);
    }

    goto LABEL_26;
  }

  if (*(v8 + 49))
  {
    goto LABEL_26;
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 48));
  v10 = ServiceMap;
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
    v17 = 0;
LABEL_20:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_21:
    sub_1004F1F78(v25, &v31);
    sub_100004AA0(buf, (v2 + 8));
    v24 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v24);
    }

    v33 = 0;
    operator new();
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (v17)
  {
    goto LABEL_21;
  }

LABEL_13:
  v19 = *(v2 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = PersonalityInfo::logPrefix(***(v2 + 128));
    v21 = *(v2 + 160);
    *buf = 136315906;
    *&buf[4] = v20;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v35 = 2080;
    v36 = v21;
    v37 = 2080;
    v38 = "";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing subscriber controller", buf, 0x2Au);
  }

  v22 = *(a1 + 32);
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(v2, v22, &v26);
  sub_10004EC58(&v26, v27[0]);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

LABEL_26:
  sub_10004EC58(&v31, v32);
}

void sub_1004EA7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  sub_10004EC58(v20 | 8, a19);
  _Unwind_Resume(a1);
}

void sub_1004EA844(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v14 = 0;
  rest::write_rest_value();
  sub_10000501C(&v13, "/cc/requests/transfer_secure_intent");
  object = v14;
  v14 = xpc_null_create();
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  if (*(a3 + 55) < 0)
  {
    sub_100005F2C(__p, *(a3 + 4), *(a3 + 5));
  }

  else
  {
    *__p = a3[2];
    v8 = *(a3 + 6);
  }

  v4 = a3 + 9;
  v5 = *(a3 + 9);
  v9 = *(a3 + 56);
  v6 = *(a3 + 10);
  v10[0] = v5;
  v10[1] = v6;
  if (v6)
  {
    *(v5 + 16) = v10;
    *(a3 + 8) = v4;
    *v4 = 0;
    *(a3 + 10) = 0;
  }

  else
  {
    *(&v9 + 1) = v10;
  }

  v11 = *(a3 + 88);
  v15 = 0;
  operator new();
}

void sub_1004EAA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t object, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  v30 = v27[3];
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  operator delete(v27);
  sub_1004EAB3C(&a9);
  xpc_release(object);
  object = 0;
  if (a27 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v28 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_1004EAB3C(uint64_t a1)
{
  sub_10004EC58(a1 + 64, *(a1 + 72));
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_1004EAB88(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
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

void entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v77 = 0;
  ctu::ns::AutoPool::AutoPool(&v77);
  if (*(a1 + 172) != 1)
  {
    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = PersonalityInfo::logPrefix(***(a1 + 128));
      v22 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v21;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v22;
      LOWORD(v84) = 2080;
      *(&v84 + 2) = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnsupported Authentication Response", buf, 0x2Au);
    }

    goto LABEL_93;
  }

  v76[0] = 0;
  v76[1] = 0;
  v75 = v76;
  v7 = (a3 + 8);
  v6 = *(a3 + 8);
  if (!v6)
  {
    goto LABEL_56;
  }

  v8 = a3 + 8;
  v9 = *(a3 + 8);
  do
  {
    if (*(v9 + 32) >= 5)
    {
      v8 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < 5));
  }

  while (v9);
  if (v8 == v7)
  {
    v11 = a3 + 8;
  }

  else
  {
    v10 = *(v8 + 32);
    v11 = a3 + 8;
    if (v10 < 6)
    {
      LODWORD(v78.__r_.__value_.__l.__data_) = 5;
      *buf = &v78;
      v12 = sub_1004FCB34(a3, &v78, &unk_101802C98, buf);
      LOBYTE(v74[0]) = 3;
      *buf = v74;
      v13 = sub_1004FCC0C(&v75, v74, &unk_101802C98, buf);
      if (v13 != v12)
      {
        sub_1001122C4(v13 + 5, v12[5], v12[6], v12[6] - v12[5]);
      }

      sub_1000CFAD0(buf, 16);
      LOBYTE(v74[0]) = 11;
      v78.__r_.__value_.__r.__words[0] = v74;
      v14 = sub_1004FCC0C(&v75, v74, &unk_101802C98, &v78.__r_.__value_.__l.__data_);
      v15 = v14[5];
      if (v15)
      {
        v14[6] = v15;
        operator delete(v15);
        v14[5] = 0;
        v14[6] = 0;
        v14[7] = 0;
      }

      *(v14 + 5) = *buf;
      v14[7] = *&buf[16];
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = PersonalityInfo::logPrefix(***(a1 + 128));
        v18 = *(a1 + 160);
        *buf = 136315906;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        *&buf[24] = v18;
        LOWORD(v84) = 2080;
        *(&v84 + 2) = "";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sEAP-AKA success", buf, 0x2Au);
      }

      v19 = 1;
      goto LABEL_29;
    }
  }

  do
  {
    if (*(v6 + 32) >= 9)
    {
      v11 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < 9));
  }

  while (v6);
  if (v11 == v7 || *(v11 + 32) > 9)
  {
LABEL_56:
    v44 = *(a1 + 40);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = PersonalityInfo::logPrefix(***(a1 + 128));
      v46 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v45;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v46;
      LOWORD(v84) = 2080;
      *(&v84 + 2) = "";
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sEAP-AKA failed", buf, 0x2Au);
    }

    entitlements::CEHTTPDriver::invalidateConnection_sync(a1);
    *(a1 + 176) = 0;
    goto LABEL_92;
  }

  LODWORD(v78.__r_.__value_.__l.__data_) = 9;
  *buf = &v78;
  v23 = sub_1004FCB34(a3, &v78, &unk_101802C98, buf);
  LOBYTE(v74[0]) = 4;
  *buf = v74;
  v24 = sub_1004FCC0C(&v75, v74, &unk_101802C98, buf);
  if (v24 != v23)
  {
    sub_1001122C4(v24 + 5, v23[5], v23[6], v23[6] - v23[5]);
  }

  *(*(a1 + 744) + 24) = 1;
  v25 = *(a1 + 40);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = PersonalityInfo::logPrefix(***(a1 + 128));
    v27 = *(a1 + 160);
    *buf = 136315906;
    *&buf[4] = v26;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v27;
    LOWORD(v84) = 2080;
    *(&v84 + 2) = "";
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sEAP-AKA sync fail", buf, 0x2Au);
  }

  v19 = 4;
LABEL_29:
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_1009F667C(buf, 0, 23, v4, v19, &v75);
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
  {
    PersonalityInfo::logPrefix(***(a1 + 128));
    sub_1009F70CC(buf, v74);
    sub_101772C1C();
  }

  sub_1009F5428(buf, &v78);
  __p = v78;
  v28 = v76[0];
  if (v76[0])
  {
    v29 = v76;
    do
    {
      v30 = *(v28 + 32);
      v31 = v30 >= 0xB;
      v32 = v30 < 0xB;
      if (v31)
      {
        v29 = v28;
      }

      v28 = v28[v32];
    }

    while (v28);
    if (v29 != v76 && *(v29 + 32) <= 0xBu)
    {
      v33 = *(a1 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = PersonalityInfo::logPrefix(***(a1 + 128));
        v35 = *(a1 + 160);
        LODWORD(v78.__r_.__value_.__l.__data_) = 136315906;
        *(v78.__r_.__value_.__r.__words + 4) = v34;
        WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
        *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
        HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
        v79 = v35;
        v80 = 2080;
        v81 = "";
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPerforming MAC calculation", &v78, 0x2Au);
      }

      v36 = *v7;
      if (!*v7)
      {
        goto LABEL_54;
      }

      v37 = a3 + 8;
      v38 = *v7;
      do
      {
        if (*(v38 + 32) >= 6)
        {
          v37 = v38;
        }

        v38 = *(v38 + 8 * (*(v38 + 32) < 6));
      }

      while (v38);
      if (v37 == v7 || *(v37 + 32) > 6)
      {
        goto LABEL_54;
      }

      v39 = a3 + 8;
      do
      {
        if (*(v36 + 32) >= 7)
        {
          v39 = v36;
        }

        v36 = *(v36 + 8 * (*(v36 + 32) < 7));
      }

      while (v36);
      if (v39 == v7 || *(v39 + 32) >= 8)
      {
LABEL_54:
        v40 = *(a1 + 40);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = PersonalityInfo::logPrefix(***(a1 + 128));
          v42 = *(a1 + 160);
          LODWORD(v78.__r_.__value_.__l.__data_) = 136315906;
          *(v78.__r_.__value_.__r.__words + 4) = v41;
          WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
          *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
          HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
          v79 = v42;
          v80 = 2080;
          v81 = "";
          v43 = "#W %s%s%s%sMAC encoding required without necessary values";
LABEL_88:
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v43, &v78, 0x2Au);
          goto LABEL_89;
        }

        goto LABEL_89;
      }

      memset(&__str, 0, sizeof(__str));
      v71 = 6;
      v78.__r_.__value_.__r.__words[0] = &v71;
      v47 = sub_1004FCB34(a3, &v71, &unk_101802C98, &v78);
      v70 = 7;
      v78.__r_.__value_.__r.__words[0] = &v70;
      v48 = sub_1004FCB34(a3, &v70, &unk_101802C98, &v78);
      sub_1006C6F80((a1 + 184), &__p, v47 + 5, v48 + 5, &__str);
      v49 = *&__str.__r_.__value_.__l.__data_;
      v50 = *(a1 + 40);
      if (__str.__r_.__value_.__r.__words[0] == __str.__r_.__value_.__l.__size_)
      {
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v52 = PersonalityInfo::logPrefix(***(a1 + 128));
          v53 = *(a1 + 160);
          LODWORD(v78.__r_.__value_.__l.__data_) = 136315906;
          *(v78.__r_.__value_.__r.__words + 4) = v52;
          WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
          *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
          HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
          v79 = v53;
          v80 = 2080;
          v81 = "";
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sEmpty Mac Data", &v78, 0x2Au);
        }
      }

      else
      {
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v68 = PersonalityInfo::logPrefix(***(a1 + 128));
          LODWORD(v78.__r_.__value_.__l.__data_) = 136315650;
          *(v78.__r_.__value_.__r.__words + 4) = v68;
          WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
          *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
          HIWORD(v78.__r_.__value_.__r.__words[2]) = 2048;
          v79 = __str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0];
          _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "#D %s%sMac Data Size %zu", &v78, 0x20u);
        }

        LOBYTE(v70) = 11;
        v78.__r_.__value_.__r.__words[0] = &v70;
        v51 = (sub_1004FCC0C(&v75, &v70, &unk_101802C98, &v78.__r_.__value_.__l.__data_) + 5);
        if (v51 != &__str)
        {
          sub_1001122C4(v51, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, __str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]);
        }

        sub_1009F667C(&v78, 0, 23, v4, v19, &v75);
        sub_1004EBC3C(buf, &v78);
        v78.__r_.__value_.__r.__words[0] = off_101EA3468;
        sub_10004EC58(v82, v82[1]);
        sub_100285458(&v78);
        sub_1009F5428(buf, &v78);
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v78;
      }

      if (__str.__r_.__value_.__r.__words[0])
      {
        __str.__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v49 == *(&v49 + 1))
      {
        goto LABEL_89;
      }
    }
  }

  if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
  {
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v62 = PersonalityInfo::logPrefix(***(a1 + 128));
      v63 = *(a1 + 160);
      LODWORD(v78.__r_.__value_.__l.__data_) = 136315906;
      *(v78.__r_.__value_.__r.__words + 4) = v62;
      WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
      *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
      v79 = v63;
      v80 = 2080;
      v81 = "";
      v43 = "#W %s%s%s%sNo Auth Payload to send";
      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v54 = [NSData alloc];
  v55 = [v54 initWithBytes:__p.__r_.__value_.__r.__words[0] length:__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]];
  v56 = v55;
  if (!v55 || ![v55 base64EncodedStringWithOptions:0])
  {
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v60 = PersonalityInfo::logPrefix(***(a1 + 128));
      v61 = *(a1 + 160);
      LODWORD(v78.__r_.__value_.__l.__data_) = 136315906;
      *(v78.__r_.__value_.__r.__words + 4) = v60;
      WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
      *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
      v79 = v61;
      v80 = 2080;
      v81 = "";
      v43 = "#W %s%s%s%sInvalid result data";
      goto LABEL_88;
    }

LABEL_89:
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *buf = off_101EA3468;
    sub_10004EC58(&v87 + 8, v88);
    sub_100285458(buf);
LABEL_92:
    sub_10004EC58(&v75, v76[0]);
LABEL_93:
    buf[0] = 0;
    buf[4] = 0;
    v69[0] = 0;
    v69[1] = 0;
    entitlements::CEHTTPDriver::handleRequestFailureAndMergeWithPending_sync(a1, 0, buf, v69);
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
    goto LABEL_94;
  }

  [v56 base64EncodedStringWithOptions:0];
  memset(&v78, 0, sizeof(v78));
  ctu::cf::assign();
  __str = v78;
  size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  v58 = SHIBYTE(v78.__r_.__value_.__r.__words[2]);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v59 = *(a1 + 40);
  if (!size)
  {
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v64 = PersonalityInfo::logPrefix(***(a1 + 128));
      v65 = *(a1 + 160);
      LODWORD(v78.__r_.__value_.__l.__data_) = 136315906;
      *(v78.__r_.__value_.__r.__words + 4) = v64;
      WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
      *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
      v79 = v65;
      v80 = 2080;
      v81 = "";
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sError encoding result to base64", &v78, 0x2Au);
    }

    if (v58 < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_89;
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    v66 = PersonalityInfo::logPrefix(***(a1 + 128));
    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    LODWORD(v78.__r_.__value_.__l.__data_) = 136315650;
    *(v78.__r_.__value_.__r.__words + 4) = v66;
    WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
    *(&v78.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(v78.__r_.__value_.__r.__words[2]) = 2080;
    v79 = p_str;
    _os_log_debug_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "#D %s%sBase64 postAuth payload: %s", &v78, 0x20u);
  }

  std::string::operator=((a1 + 464), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *buf = off_101EA3468;
  sub_10004EC58(&v87 + 8, v88);
  sub_100285458(buf);
  sub_10004EC58(&v75, v76[0]);
  entitlements::CEHTTPDriver::mergeRequestedQuery_sync(a1, 1);
  entitlements::CEHTTPDriver::initiateRequestQuery_sync(a1, 1);
LABEL_94:
  ctu::ns::AutoPool::~AutoPool(&v77);
}

void sub_1004EB91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t buf, int a33, __int16 a34, int a35, __int16 a36, __int16 a37, uint64_t a38, __int16 a39, int a40, __int16 a41, __int16 a42, __int16 a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  sub_1004EBC88(v43 - 224);
  sub_10004EC58(&a27, a28);
  ctu::ns::AutoPool::~AutoPool(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EBC3C(uint64_t a1, uint64_t a2)
{
  sub_1004F3488(a1, a2);
  *(a1 + 80) = *(a2 + 80);
  if (a1 != a2)
  {
    sub_1004F3524((a1 + 88), *(a2 + 88), (a2 + 96));
  }

  return a1;
}

void *sub_1004EBC88(uint64_t a1)
{
  *a1 = off_101EA3468;
  sub_10004EC58(a1 + 88, *(a1 + 96));

  return sub_100285458(a1);
}

void sub_1004EBCE4(void *a1, uint64_t a2, const std::string *a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a2;
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        entitlements::CEHTTPDriver::handleGBAAuthResponse(v7, v6, a3);
      }

      sub_100004A34(v9);
    }
  }
}

uint64_t sub_1004EBD88(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 48);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004EBDAC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void entitlements::CEHTTPDriver::handleGBAAuthResponse(uint64_t a1, _BOOL4 a2, const std::string *a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(a1 + 128));
    v8 = *(a1 + 160);
    v9 = asStringBool(a2);
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = a3->__r_.__value_.__r.__words[0];
    }

    *buf = 136316418;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v8;
    v23 = 2080;
    v24 = "";
    v25 = 2080;
    v26 = v9;
    v27 = 2080;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sGBA auth complete with success:%s, response [%s]", buf, 0x3Eu);
  }

  if (*(a1 + 744))
  {
    if (a2)
    {
      sub_1001696A4((a1 + 328), a3);
      v11 = *(a1 + 112);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = *(a1 + 104);
          if (v14)
          {
            memset(buf, 0, sizeof(buf));
            size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
            if ((size & 0x80u) != 0)
            {
              size = a3->__r_.__value_.__l.__size_;
            }

            if (size)
            {
              sub_1001696A4(buf, a3);
            }

            sub_100004AA0(&v21, (a1 + 8));
            v20 = v21;
            (*(*v14 + 32))(v14, &v20, buf);
            if (*(&v20 + 1))
            {
              sub_100004A34(*(&v20 + 1));
            }

            if (buf[24] == 1 && (buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          sub_100004A34(v13);
        }
      }

      entitlements::CEHTTPDriver::mergeRequestedQuery_sync(a1, 1);
      entitlements::CEHTTPDriver::initiateRequestQuery_sync(a1, 1);
    }

    else
    {
      entitlements::CEHTTPDriver::serverIssueNeedToBackoff(a1, 1);
      buf[0] = 0;
      buf[4] = 0;
      v19[0] = 0;
      v19[1] = 0;
      entitlements::CEHTTPDriver::handleRequestFailureAndMergeWithPending_sync(a1, 1, buf, v19);
      entitlements::CEHTTPDriver::invalidateConnection_sync(a1);
      entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
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
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v18;
      v23 = 2080;
      v24 = "";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sGBA auth complete while transaction is already canceled", buf, 0x2Au);
    }
  }
}

void sub_1004EC094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v21);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::handleDumpState_sync(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 16));
    v4 = *(this + 20);
    (**this)(&__p, this);
    v5 = *(__p + 7);
    *buf = 136316162;
    v9 = v3;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v4;
    v14 = 2080;
    v15 = "";
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s=|= HttpCommand Driver Info %zu =", buf, 0x34u);
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  sub_1009C3098(this);
}

void sub_1004ECB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::handleDataSupportChanged(entitlements::CEHTTPDriver *this)
{
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
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sData Support Changed", &v5, 0x2Au);
  }

  entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
}

void entitlements::CEHTTPDriver::handleSubscriberState(entitlements::CEHTTPDriver *this, char a2)
{
  *(this + 168) = 0;
  v4 = *(this + 5);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = PersonalityInfo::logPrefix(***(this + 16));
      v7 = *(this + 20);
      v10 = 136315906;
      v11 = v6;
      v12 = 2080;
      v13 = " ";
      v14 = 2080;
      v15 = v7;
      v16 = 2080;
      v17 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sSubscriber state 'READY'", &v10, 0x2Au);
    }

    sub_1009C1ADC(this);
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
  }

  else
  {
    if (v5)
    {
      v8 = PersonalityInfo::logPrefix(***(this + 16));
      v9 = *(this + 20);
      v10 = 136315906;
      v11 = v8;
      v12 = 2080;
      v13 = " ";
      v14 = 2080;
      v15 = v9;
      v16 = 2080;
      v17 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sSubscriber state 'not ready' lead to dropping authentication settings", &v10, 0x2Au);
    }

    if (*(this + 352) == 1)
    {
      if (*(this + 351) < 0)
      {
        operator delete(*(this + 41));
      }

      *(this + 352) = 0;
    }
  }
}

void entitlements::CEHTTPDriver::handleIMSInfoReady(entitlements::CEHTTPDriver *this, char a2)
{
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(this + 16));
    v6 = *(this + 20);
    v7 = 136315906;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    v13 = 2080;
    v14 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%shandleIMSInfoReady", &v7, 0x2Au);
  }

  if ((a2 & 1) == 0)
  {
    *(this + 168) = 0;
  }

  sub_1009C1ADC(this);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
}

uint64_t entitlements::CEHTTPDriver::handlePAssociatedUri_sync(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 128));
    v6 = *(a1 + 160);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v9 = 136316162;
    v10 = v5;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = "";
    v17 = 2080;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sP-Associated-Uri: %s", &v9, 0x34u);
  }

  return sub_1009C2CA8();
}

void sub_1004ED118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::storedGBAAuthentication(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 128));
    v6 = *(a1 + 160);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136316162;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v6;
    v14 = 2080;
    v15 = "";
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sstoredGBAAuthentication: auth:[%s]", &v8, 0x34u);
  }

  sub_1009C4534(a1, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
}

uint64_t sub_1004ED28C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 152);
  *a2 = *(result + 144);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

atomic_uint **sub_1004ED2A8(atomic_uint **a1)
{
  *a1 = off_101E519D0;
  sub_10004A724(a1 + 2);
  return a1;
}

void sub_1004ED2EC(atomic_uint **a1)
{
  *a1 = off_101E519D0;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004ED350@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_1004ED36C(atomic_uint **a1)
{
  *a1 = off_101E51A40;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004ED3D0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_1004ED3EC(atomic_uint **a1)
{
  *a1 = off_101E51AB0;
  sub_10004A724(a1 + 2);

  operator delete();
}

atomic_uint **sub_1004ED450(atomic_uint **a1)
{
  *a1 = off_101E51B20;
  sub_10004A724(a1 + 2);
  return a1;
}

void sub_1004ED494(atomic_uint **a1)
{
  *a1 = off_101E51B20;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004ED4F8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint **sub_1004ED514(atomic_uint **a1)
{
  *a1 = off_101E51B90;
  sub_10004A724(a1 + 2);
  return a1;
}

void sub_1004ED558(atomic_uint **a1)
{
  *a1 = off_101E51B90;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004ED5BC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint **sub_1004ED5D8(atomic_uint **a1)
{
  *a1 = off_101E51C00;
  sub_10004A724(a1 + 2);
  return a1;
}

void sub_1004ED61C(atomic_uint **a1)
{
  *a1 = off_101E51C00;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004ED680@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint **sub_1004ED69C(atomic_uint **a1)
{
  *a1 = off_101E51C70;
  sub_10004A724(a1 + 2);
  return a1;
}

void sub_1004ED6E0(atomic_uint **a1)
{
  *a1 = off_101E51C70;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004ED744@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint **sub_1004ED760(atomic_uint **a1)
{
  *a1 = off_101E51CE0;
  sub_10004A724(a1 + 2);
  return a1;
}

void sub_1004ED7A4(atomic_uint **a1)
{
  *a1 = off_101E51CE0;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004ED808@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint **sub_1004ED824(atomic_uint **a1)
{
  *a1 = off_101E51D50;
  sub_10004A724(a1 + 2);
  return a1;
}

void sub_1004ED868(atomic_uint **a1)
{
  *a1 = off_101E51D50;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004ED8CC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint **sub_1004ED8E8(atomic_uint **a1)
{
  *a1 = off_101E51DC0;
  sub_10004A724(a1 + 2);
  return a1;
}

void sub_1004ED92C(atomic_uint **a1)
{
  *a1 = off_101E51DC0;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004ED990@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint **sub_1004ED9AC(atomic_uint **a1)
{
  *a1 = off_101E51E30;
  sub_10004A724(a1 + 2);
  return a1;
}

void sub_1004ED9F0(atomic_uint **a1)
{
  *a1 = off_101E51E30;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004EDA54@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint **sub_1004EDA70(atomic_uint **a1)
{
  *a1 = off_101E51EA0;
  sub_10004A724(a1 + 2);
  return a1;
}

void sub_1004EDAB4(atomic_uint **a1)
{
  *a1 = off_101E51EA0;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004EDB18@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint **sub_1004EDB34(atomic_uint **a1)
{
  *a1 = off_101E51F10;
  sub_10004A724(a1 + 2);
  return a1;
}

void sub_1004EDB78(atomic_uint **a1)
{
  *a1 = off_101E51F10;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004EDBDC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_1004EDBF8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1004EDBF8(a1, *a2);
    sub_1004EDBF8(a1, a2[1]);
    sub_10006DCAC((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_1004EDC58(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          sub_100004A34(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

__n128 sub_1004EDCD0(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = sub_100015184(a1, a2).n128_u64[0];
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

uint64_t sub_1004EDD68(uint64_t a1)
{
  if (*(a1 + 232) == 1 && *(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 200) == 1 && *(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
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

void sub_1004EDE30(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 104;
  *a1 = *a2;
  v5 = (a1 + 104);
  sub_10012BF3C((a1 + 8), (a2 + 8));
  sub_10012BF3C((a1 + 40), (a2 + 40));
  sub_10012BF3C((a1 + 72), (a2 + 72));
  sub_100220EF0(v5, v4);

  sub_10012BF3C((a1 + 568), (a2 + 568));
}

BOOL sub_1004EDEB4(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v8)
  {
    v6 = 0;
    v7 = 0;
    sub_10001C610(&v6);
    v4 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_10001C0A0(&v8);
  return v4;
}

void sub_1004EDFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EE060(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = *(v2 + 8);
  }

  v4 = v3 != 0;
  v5 = *(a2 + 28);
  *(a2 + 28) = v5 | 4;
  *(a2 + 17) = v4;
  v6 = *(v2 + 47);
  if (v6 < 0)
  {
    v6 = *(v2 + 32);
  }

  *(a2 + 18) = v6 != 0;
  v7 = *(v2 + 48);
  *(a2 + 28) = v5 | 0x1C;
  *(a2 + 20) = v7;
  return result;
}

void *sub_1004EE0B4(void *a1, __int128 *a2)
{
  v4 = *a1;
  if (*(*a1 + 23) < 0)
  {
    operator delete(*v4);
  }

  v5 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v5;
  *(a2 + 23) = 0;
  *a2 = 0;
  v6 = a1[1];
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  v7 = *(a2 + 24);
  *(v6 + 16) = *(a2 + 5);
  *v6 = v7;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  return a1;
}

void sub_1004EE13C(uint64_t a1, uint64_t a2, _DWORD **a3, uint64_t a4)
{
  sub_10053DF18(**a1, a2, &v17);
  v7 = (*(*v17 + 40))(v17);
  if (*(&v17 + 1))
  {
    sub_100004A34(*(&v17 + 1));
  }

  v15 = xpc_string_create(v7);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  *&v17 = a4;
  *(&v17 + 1) = "action_type";
  sub_10000F688(&v17, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  v13 = xpc_int64_create(**a3);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  *&v17 = a4;
  *(&v17 + 1) = "action_status";
  sub_10000F688(&v17, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v10 = **a3 == 6000 && (v8 = *(a1 + 8), *(v8 + 4) == 1) && *v8 == 200 && (v9 = *(a1 + 16), *(v9 + 4) == 1) && *v9 == 0;
  v11 = xpc_BOOL_create(v10);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  *&v17 = a4;
  *(&v17 + 1) = "is_action_success";
  sub_10000F688(&v17, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
}

void sub_1004EE320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004EE338(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10006DCAC(a1 + 80, *(a1 + 88));
  sub_10006EC28(a1 + 56, *(a1 + 64));
  sub_10006DCAC(a1 + 32, *(a1 + 40));
  sub_10006DCAC(a1 + 8, *(a1 + 16));
  return a1;
}

BOOL sub_1004EE3B4(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v8)
  {
    v6 = 0;
    v7 = 0;
    sub_10001C610(&v6);
    v4 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_10001C0A0(&v8);
  return v4;
}

void sub_1004EE4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

void sub_1004EE560(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  *(a2 + 148) |= 0x80u;
  v5 = *(a2 + 64);
  if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v5, v4);
  if (*(a1 + 68) == 1)
  {
    v6 = *(a1 + 64);
    if (v6 <= 3)
    {
      v7 = dword_1018120B0[v6];
      *(a2 + 148) |= 4u;
      *(a2 + 20) = v7;
    }
  }

  if (*(a1 + 76) == 1)
  {
    v8 = *(a1 + 72);
    *(a2 + 148) |= 2u;
    *(a2 + 16) = v8;
  }

  if (*(a1 + 48) == 1)
  {
    v9 = *(a1 + 40);
    *(a2 + 148) |= 0x20u;
    *(a2 + 56) = v9;
  }

  if (*(a1 + 84) == 1)
  {
    v10 = *(a1 + 80);
    *(a2 + 148) |= 8u;
    *(a2 + 48) = v10;
  }

  v11 = **(a1 + 56);
  v13 = *v11;
  v12 = v11[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    v14 = *v13;
    if (*v13 != 6000 || (v15 = *(v13 + 3)) != 0 && *v15 == 1)
    {
      v16 = *(a2 + 36);
      v17 = *(a2 + 32);
      if (v17 >= v16)
      {
        if (v16 == *(a2 + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v16 + 1);
          v16 = *(a2 + 36);
        }

        *(a2 + 36) = v16 + 1;
        sub_1004F0BF8();
      }

      v18 = *(a2 + 24);
      *(a2 + 32) = v17 + 1;
      v19 = *(v18 + 8 * v17);
      v344 = *(v18 + 8 * v17);
      v19[15] |= 3u;
      v19[2] = 1;
      v19[3] = v14;
      v20 = *(v13 + 3);
      if (v20)
      {
        *&v340 = v20;
        *(&v340 + 1) = &v344;
        *&v341 = a2;
        if ((sub_100071FDC(v20, 5) & 0x100000000) != 0)
        {
          v21 = v344;
          v22 = v344[11];
          v23 = v344[10];
          if (v23 >= v22)
          {
            if (v22 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v22 + 1);
              v22 = v21[11];
            }

            v21[11] = v22 + 1;
            sub_1004F0CC0();
          }

          v24 = *(v344 + 4);
          v344[10] = v23 + 1;
          v25 = *(v24 + 8 * v23);
          v25[5] |= 1u;
          v25[2] = 4;
          v26 = sub_100A392D0(v20, 5);
          if ((v26 & 0x100000000) != 0)
          {
            v25[5] |= 2u;
            v25[3] = v26;
          }
        }

        if ((sub_100071FDC(v20, 2) & 0x100000000) != 0)
        {
          v27 = v344;
          v28 = v344[11];
          v29 = v344[10];
          if (v29 >= v28)
          {
            if (v28 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v28 + 1);
              v28 = v27[11];
            }

            v27[11] = v28 + 1;
            sub_1004F0CC0();
          }

          v30 = *(v344 + 4);
          v344[10] = v29 + 1;
          v31 = *(v30 + 8 * v29);
          v31[5] |= 1u;
          v31[2] = 0;
          v32 = sub_100A392D0(v20, 2);
          if ((v32 & 0x100000000) != 0)
          {
            v31[5] |= 2u;
            v31[3] = v32;
          }
        }

        if ((sub_100071FDC(v20, 3) & 0x100000000) != 0)
        {
          v33 = v344;
          v34 = v344[11];
          v35 = v344[10];
          if (v35 >= v34)
          {
            if (v34 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v34 + 1);
              v34 = v33[11];
            }

            v33[11] = v34 + 1;
            sub_1004F0CC0();
          }

          v36 = *(v344 + 4);
          v344[10] = v35 + 1;
          v37 = *(v36 + 8 * v35);
          v37[5] |= 1u;
          v37[2] = 1;
          v38 = sub_100A392D0(v20, 3);
          if ((v38 & 0x100000000) != 0)
          {
            v37[5] |= 2u;
            v37[3] = v38;
          }
        }

        if ((sub_100071FDC(v20, 6) & 0x100000000) != 0)
        {
          v39 = v344;
          v40 = v344[11];
          v41 = v344[10];
          if (v41 >= v40)
          {
            if (v40 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v40 + 1);
              v40 = v39[11];
            }

            v39[11] = v40 + 1;
            sub_1004F0CC0();
          }

          v42 = *(v344 + 4);
          v344[10] = v41 + 1;
          v43 = *(v42 + 8 * v41);
          v43[5] |= 1u;
          v43[2] = 2;
          v44 = sub_100A392D0(v20, 6);
          if ((v44 & 0x100000000) != 0)
          {
            v43[5] |= 2u;
            v43[3] = v44;
          }
        }

        if ((sub_100071FDC(v20, 7) & 0x100000000) != 0)
        {
          v45 = v344;
          v46 = v344[11];
          v47 = v344[10];
          if (v47 >= v46)
          {
            if (v46 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v46 + 1);
              v46 = v45[11];
            }

            v45[11] = v46 + 1;
            sub_1004F0CC0();
          }

          v48 = *(v344 + 4);
          v344[10] = v47 + 1;
          v49 = *(v48 + 8 * v47);
          v49[5] |= 1u;
          v49[2] = 3;
          v50 = sub_100A392D0(v20, 7);
          if ((v50 & 0x100000000) != 0)
          {
            v49[5] |= 2u;
            v49[3] = v50;
          }
        }

        if ((sub_100071FDC(v20, 8) & 0x100000000) != 0)
        {
          v51 = v344;
          v52 = v344[11];
          v53 = v344[10];
          if (v53 >= v52)
          {
            if (v52 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v52 + 1);
              v52 = v51[11];
            }

            v51[11] = v52 + 1;
            sub_1004F0CC0();
          }

          v54 = *(v344 + 4);
          v344[10] = v53 + 1;
          v55 = *(v54 + 8 * v53);
          v55[5] |= 1u;
          v55[2] = 5;
          v56 = sub_100A392D0(v20, 8);
          if ((v56 & 0x100000000) != 0)
          {
            v55[5] |= 2u;
            v55[3] = v56;
          }
        }

        if ((sub_100071FDC(v20, 10) & 0x100000000) != 0)
        {
          v57 = v344;
          v58 = v344[11];
          v59 = v344[10];
          if (v59 >= v58)
          {
            if (v58 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v58 + 1);
              v58 = v57[11];
            }

            v57[11] = v58 + 1;
            sub_1004F0CC0();
          }

          v60 = *(v344 + 4);
          v344[10] = v59 + 1;
          v61 = *(v60 + 8 * v59);
          v61[5] |= 1u;
          v61[2] = 6;
          v62 = sub_100A392D0(v20, 10);
          if ((v62 & 0x100000000) != 0)
          {
            v61[5] |= 2u;
            v61[3] = v62;
          }
        }

        if ((sub_100071FDC(v20, 11) & 0x100000000) != 0)
        {
          v63 = v344;
          v64 = v344[11];
          v65 = v344[10];
          if (v65 >= v64)
          {
            if (v64 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v64 + 1);
              v64 = v63[11];
            }

            v63[11] = v64 + 1;
            sub_1004F0CC0();
          }

          v66 = *(v344 + 4);
          v344[10] = v65 + 1;
          v67 = *(v66 + 8 * v65);
          v67[5] |= 1u;
          v67[2] = 7;
          v68 = sub_100A392D0(v20, 11);
          if ((v68 & 0x100000000) != 0)
          {
            v67[5] |= 2u;
            v67[3] = v68;
          }
        }

        if ((sub_100071FDC(v20, 12) & 0x100000000) != 0)
        {
          v69 = v344;
          v70 = v344[11];
          v71 = v344[10];
          if (v71 >= v70)
          {
            if (v70 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v70 + 1);
              v70 = v69[11];
            }

            v69[11] = v70 + 1;
            sub_1004F0CC0();
          }

          v72 = *(v344 + 4);
          v344[10] = v71 + 1;
          v73 = *(v72 + 8 * v71);
          v73[5] |= 1u;
          v73[2] = 8;
          v74 = sub_100A392D0(v20, 12);
          if ((v74 & 0x100000000) != 0)
          {
            v73[5] |= 2u;
            v73[3] = v74;
          }
        }

        if ((sub_100071FDC(v20, 13) & 0x100000000) != 0)
        {
          v75 = v344;
          v76 = v344[11];
          v77 = v344[10];
          if (v77 >= v76)
          {
            if (v76 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v76 + 1);
              v76 = v75[11];
            }

            v75[11] = v76 + 1;
            sub_1004F0CC0();
          }

          v78 = *(v344 + 4);
          v344[10] = v77 + 1;
          v79 = *(v78 + 8 * v77);
          v79[5] |= 1u;
          v79[2] = 9;
          v80 = sub_100A392D0(v20, 13);
          if ((v80 & 0x100000000) != 0)
          {
            v79[5] |= 2u;
            v79[3] = v80;
          }
        }

        if ((sub_100071FDC(v20, 14) & 0x100000000) != 0)
        {
          v81 = v344;
          v82 = v344[11];
          v83 = v344[10];
          if (v83 >= v82)
          {
            if (v82 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v82 + 1);
              v82 = v81[11];
            }

            v81[11] = v82 + 1;
            sub_1004F0CC0();
          }

          v84 = *(v344 + 4);
          v344[10] = v83 + 1;
          v85 = *(v84 + 8 * v83);
          v85[5] |= 1u;
          v85[2] = 10;
          v86 = sub_100A392D0(v20, 14);
          if ((v86 & 0x100000000) != 0)
          {
            v85[5] |= 2u;
            v85[3] = v86;
          }
        }

        sub_1004F072C(&v340, 15, 11);
        if ((sub_100071FDC(v20, 16) & 0x100000000) != 0)
        {
          v87 = v344;
          v88 = v344[11];
          v89 = v344[10];
          if (v89 >= v88)
          {
            if (v88 == v344[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v344 + 8), v88 + 1);
              v88 = v87[11];
            }

            v87[11] = v88 + 1;
            sub_1004F0CC0();
          }

          v90 = *(v344 + 4);
          v344[10] = v89 + 1;
          v91 = *(v90 + 8 * v89);
          v91[5] |= 1u;
          v91[2] = 12;
          v92 = sub_100A392D0(v20, 16);
          if ((v92 & 0x100000000) != 0)
          {
            v91[5] |= 2u;
            v91[3] = v92;
          }
        }
      }
    }
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v93 = **(a1 + 56);
  v95 = *(v93 + 16);
  v94 = *(v93 + 24);
  if (v94)
  {
    atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v95)
  {
    v96 = *(a2 + 36);
    v97 = *(a2 + 32);
    if (v97 >= v96)
    {
      if (v96 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v96 + 1);
        v96 = *(a2 + 36);
      }

      *(a2 + 36) = v96 + 1;
      sub_1004F0BF8();
    }

    v98 = *(a2 + 24);
    *(a2 + 32) = v97 + 1;
    v99 = *(v98 + 8 * v97);
    v100 = v99[15];
    v99[2] = 2;
    v101 = *v95;
    v99[15] = v100 | 3;
    v99[3] = v101;
    v102 = *(v95 + 24);
    if (v102)
    {
      v343 = 0;
      v341 = 0u;
      v342 = 0u;
      v340 = 0u;
      sub_100172EF0(&v340, v102);
      sub_1003ED180(&v341 + 1, v102 + 24);
      v343 = v99;
      v103 = *(&v340 + 1);
      if (*(&v340 + 1))
      {
        v104 = &v340 + 2;
        do
        {
          if (v103[7] >= 5)
          {
            v104 = v103;
          }

          v103 = *&v103[2 * (v103[7] < 5)];
        }

        while (v103);
        if (v104 != (&v340 + 8) && v104[7] <= 5)
        {
          v105 = v99[11];
          v106 = v99[10];
          if (v106 >= v105)
          {
            if (v105 == v99[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v99 + 8), v105 + 1);
              v105 = v99[11];
            }

            v99[11] = v105 + 1;
            sub_1004F0CC0();
          }

          v107 = *(v99 + 4);
          v99[10] = v106 + 1;
          v108 = *(v107 + 8 * v106);
          v108[5] |= 1u;
          v108[2] = 4;
          v109 = sub_1004F0AE0(&v340, 5);
          if ((v109 & 0x100000000) != 0)
          {
            v108[5] |= 2u;
            v108[3] = v109;
          }
        }

        v110 = *(&v340 + 1);
        if (*(&v340 + 1))
        {
          v111 = &v340 + 2;
          do
          {
            if (v110[7] >= 2)
            {
              v111 = v110;
            }

            v110 = *&v110[2 * (v110[7] < 2)];
          }

          while (v110);
          if (v111 != (&v340 + 8) && v111[7] <= 2)
          {
            v112 = v343;
            v113 = v343[11];
            v114 = v343[10];
            if (v114 >= v113)
            {
              if (v113 == v343[12])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v113 + 1);
                v113 = v112[11];
              }

              v112[11] = v113 + 1;
              sub_1004F0CC0();
            }

            v115 = *(v343 + 4);
            v343[10] = v114 + 1;
            v116 = *(v115 + 8 * v114);
            v116[5] |= 1u;
            v116[2] = 0;
            v117 = sub_1004F0AE0(&v340, 2);
            if ((v117 & 0x100000000) != 0)
            {
              v116[5] |= 2u;
              v116[3] = v117;
            }
          }

          v118 = *(&v340 + 1);
          if (*(&v340 + 1))
          {
            v119 = &v340 + 2;
            do
            {
              if (v118[7] >= 3)
              {
                v119 = v118;
              }

              v118 = *&v118[2 * (v118[7] < 3)];
            }

            while (v118);
            if (v119 != (&v340 + 8) && v119[7] <= 3)
            {
              v120 = v343;
              v121 = v343[11];
              v122 = v343[10];
              if (v122 >= v121)
              {
                if (v121 == v343[12])
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v121 + 1);
                  v121 = v120[11];
                }

                v120[11] = v121 + 1;
                sub_1004F0CC0();
              }

              v123 = *(v343 + 4);
              v343[10] = v122 + 1;
              v124 = *(v123 + 8 * v122);
              v124[5] |= 1u;
              v124[2] = 1;
              v125 = sub_1004F0AE0(&v340, 3);
              if ((v125 & 0x100000000) != 0)
              {
                v124[5] |= 2u;
                v124[3] = v125;
              }
            }

            v126 = *(&v340 + 1);
            if (*(&v340 + 1))
            {
              v127 = &v340 + 2;
              do
              {
                if (v126[7] >= 6)
                {
                  v127 = v126;
                }

                v126 = *&v126[2 * (v126[7] < 6)];
              }

              while (v126);
              if (v127 != (&v340 + 8) && v127[7] <= 6)
              {
                v128 = v343;
                v129 = v343[11];
                v130 = v343[10];
                if (v130 >= v129)
                {
                  if (v129 == v343[12])
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v129 + 1);
                    v129 = v128[11];
                  }

                  v128[11] = v129 + 1;
                  sub_1004F0CC0();
                }

                v131 = *(v343 + 4);
                v343[10] = v130 + 1;
                v132 = *(v131 + 8 * v130);
                v132[5] |= 1u;
                v132[2] = 2;
                v133 = sub_1004F0AE0(&v340, 6);
                if ((v133 & 0x100000000) != 0)
                {
                  v132[5] |= 2u;
                  v132[3] = v133;
                }
              }

              v134 = *(&v340 + 1);
              if (*(&v340 + 1))
              {
                v135 = &v340 + 2;
                do
                {
                  if (v134[7] >= 7)
                  {
                    v135 = v134;
                  }

                  v134 = *&v134[2 * (v134[7] < 7)];
                }

                while (v134);
                if (v135 != (&v340 + 8) && v135[7] <= 7)
                {
                  v136 = v343;
                  v137 = v343[11];
                  v138 = v343[10];
                  if (v138 >= v137)
                  {
                    if (v137 == v343[12])
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v137 + 1);
                      v137 = v136[11];
                    }

                    v136[11] = v137 + 1;
                    sub_1004F0CC0();
                  }

                  v139 = *(v343 + 4);
                  v343[10] = v138 + 1;
                  v140 = *(v139 + 8 * v138);
                  v140[5] |= 1u;
                  v140[2] = 3;
                  v141 = sub_1004F0AE0(&v340, 7);
                  if ((v141 & 0x100000000) != 0)
                  {
                    v140[5] |= 2u;
                    v140[3] = v141;
                  }
                }

                v142 = *(&v340 + 1);
                if (*(&v340 + 1))
                {
                  v143 = &v340 + 2;
                  do
                  {
                    if (v142[7] >= 8)
                    {
                      v143 = v142;
                    }

                    v142 = *&v142[2 * (v142[7] < 8)];
                  }

                  while (v142);
                  if (v143 != (&v340 + 8) && v143[7] <= 8)
                  {
                    v144 = v343;
                    v145 = v343[11];
                    v146 = v343[10];
                    if (v146 >= v145)
                    {
                      if (v145 == v343[12])
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v145 + 1);
                        v145 = v144[11];
                      }

                      v144[11] = v145 + 1;
                      sub_1004F0CC0();
                    }

                    v147 = *(v343 + 4);
                    v343[10] = v146 + 1;
                    v148 = *(v147 + 8 * v146);
                    v148[5] |= 1u;
                    v148[2] = 5;
                    v149 = sub_1004F0AE0(&v340, 8);
                    if ((v149 & 0x100000000) != 0)
                    {
                      v148[5] |= 2u;
                      v148[3] = v149;
                    }
                  }

                  v150 = *(&v340 + 1);
                  if (*(&v340 + 1))
                  {
                    v151 = &v340 + 2;
                    do
                    {
                      if (v150[7] >= 10)
                      {
                        v151 = v150;
                      }

                      v150 = *&v150[2 * (v150[7] < 10)];
                    }

                    while (v150);
                    if (v151 != (&v340 + 8) && v151[7] <= 10)
                    {
                      v152 = v343;
                      v153 = v343[11];
                      v154 = v343[10];
                      if (v154 >= v153)
                      {
                        if (v153 == v343[12])
                        {
                          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v153 + 1);
                          v153 = v152[11];
                        }

                        v152[11] = v153 + 1;
                        sub_1004F0CC0();
                      }

                      v155 = *(v343 + 4);
                      v343[10] = v154 + 1;
                      v156 = *(v155 + 8 * v154);
                      v156[5] |= 1u;
                      v156[2] = 6;
                      v157 = sub_1004F0AE0(&v340, 10);
                      if ((v157 & 0x100000000) != 0)
                      {
                        v156[5] |= 2u;
                        v156[3] = v157;
                      }
                    }

                    v158 = *(&v340 + 1);
                    if (*(&v340 + 1))
                    {
                      v159 = &v340 + 2;
                      do
                      {
                        if (v158[7] >= 11)
                        {
                          v159 = v158;
                        }

                        v158 = *&v158[2 * (v158[7] < 11)];
                      }

                      while (v158);
                      if (v159 != (&v340 + 8) && v159[7] <= 11)
                      {
                        v160 = v343;
                        v161 = v343[11];
                        v162 = v343[10];
                        if (v162 >= v161)
                        {
                          if (v161 == v343[12])
                          {
                            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v161 + 1);
                            v161 = v160[11];
                          }

                          v160[11] = v161 + 1;
                          sub_1004F0CC0();
                        }

                        v163 = *(v343 + 4);
                        v343[10] = v162 + 1;
                        v164 = *(v163 + 8 * v162);
                        v164[5] |= 1u;
                        v164[2] = 7;
                        v165 = sub_1004F0AE0(&v340, 11);
                        if ((v165 & 0x100000000) != 0)
                        {
                          v164[5] |= 2u;
                          v164[3] = v165;
                        }
                      }

                      v166 = *(&v340 + 1);
                      if (*(&v340 + 1))
                      {
                        v167 = &v340 + 2;
                        do
                        {
                          if (v166[7] >= 12)
                          {
                            v167 = v166;
                          }

                          v166 = *&v166[2 * (v166[7] < 12)];
                        }

                        while (v166);
                        if (v167 != (&v340 + 8) && v167[7] <= 12)
                        {
                          v168 = v343;
                          v169 = v343[11];
                          v170 = v343[10];
                          if (v170 >= v169)
                          {
                            if (v169 == v343[12])
                            {
                              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v169 + 1);
                              v169 = v168[11];
                            }

                            v168[11] = v169 + 1;
                            sub_1004F0CC0();
                          }

                          v171 = *(v343 + 4);
                          v343[10] = v170 + 1;
                          v172 = *(v171 + 8 * v170);
                          v172[5] |= 1u;
                          v172[2] = 8;
                          v173 = sub_1004F0AE0(&v340, 12);
                          if ((v173 & 0x100000000) != 0)
                          {
                            v172[5] |= 2u;
                            v172[3] = v173;
                          }
                        }

                        v174 = *(&v340 + 1);
                        if (*(&v340 + 1))
                        {
                          v175 = &v340 + 2;
                          do
                          {
                            if (v174[7] >= 13)
                            {
                              v175 = v174;
                            }

                            v174 = *&v174[2 * (v174[7] < 13)];
                          }

                          while (v174);
                          if (v175 != (&v340 + 8) && v175[7] <= 13)
                          {
                            v176 = v343;
                            v177 = v343[11];
                            v178 = v343[10];
                            if (v178 >= v177)
                            {
                              if (v177 == v343[12])
                              {
                                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v177 + 1);
                                v177 = v176[11];
                              }

                              v176[11] = v177 + 1;
                              sub_1004F0CC0();
                            }

                            v179 = *(v343 + 4);
                            v343[10] = v178 + 1;
                            v180 = *(v179 + 8 * v178);
                            v180[5] |= 1u;
                            v180[2] = 9;
                            v181 = sub_1004F0AE0(&v340, 13);
                            if ((v181 & 0x100000000) != 0)
                            {
                              v180[5] |= 2u;
                              v180[3] = v181;
                            }
                          }

                          v182 = *(&v340 + 1);
                          if (*(&v340 + 1))
                          {
                            v183 = &v340 + 2;
                            do
                            {
                              if (v182[7] >= 14)
                              {
                                v183 = v182;
                              }

                              v182 = *&v182[2 * (v182[7] < 14)];
                            }

                            while (v182);
                            if (v183 != (&v340 + 8) && v183[7] <= 14)
                            {
                              v184 = v343;
                              v185 = v343[11];
                              v186 = v343[10];
                              if (v186 >= v185)
                              {
                                if (v185 == v343[12])
                                {
                                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v185 + 1);
                                  v185 = v184[11];
                                }

                                v184[11] = v185 + 1;
                                sub_1004F0CC0();
                              }

                              v187 = *(v343 + 4);
                              v343[10] = v186 + 1;
                              v188 = *(v187 + 8 * v186);
                              v188[5] |= 1u;
                              v188[2] = 10;
                              v189 = sub_1004F0AE0(&v340, 14);
                              if ((v189 & 0x100000000) != 0)
                              {
                                v188[5] |= 2u;
                                v188[3] = v189;
                              }
                            }

                            v190 = *(&v340 + 1);
                            if (*(&v340 + 1))
                            {
                              v191 = &v340 + 2;
                              do
                              {
                                if (v190[7] >= 15)
                                {
                                  v191 = v190;
                                }

                                v190 = *&v190[2 * (v190[7] < 15)];
                              }

                              while (v190);
                              if (v191 != (&v340 + 8) && v191[7] <= 15)
                              {
                                v192 = v343;
                                v193 = v343[11];
                                v194 = v343[10];
                                if (v194 >= v193)
                                {
                                  if (v193 == v343[12])
                                  {
                                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v193 + 1);
                                    v193 = v192[11];
                                  }

                                  v192[11] = v193 + 1;
                                  sub_1004F0CC0();
                                }

                                v195 = *(v343 + 4);
                                v343[10] = v194 + 1;
                                v196 = *(v195 + 8 * v194);
                                v196[5] |= 1u;
                                v196[2] = 11;
                                v197 = sub_1004F0AE0(&v340, 15);
                                if ((v197 & 0x100000000) != 0)
                                {
                                  v196[5] |= 2u;
                                  v196[3] = v197;
                                }
                              }

                              v198 = *(&v340 + 1);
                              if (*(&v340 + 1))
                              {
                                v199 = &v340 + 2;
                                do
                                {
                                  if (v198[7] >= 16)
                                  {
                                    v199 = v198;
                                  }

                                  v198 = *&v198[2 * (v198[7] < 16)];
                                }

                                while (v198);
                                if (v199 != (&v340 + 8) && v199[7] <= 16)
                                {
                                  v200 = v343;
                                  v201 = v343[11];
                                  v202 = v343[10];
                                  if (v202 >= v201)
                                  {
                                    if (v201 == v343[12])
                                    {
                                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v343 + 8), v201 + 1);
                                      v201 = v200[11];
                                    }

                                    v200[11] = v201 + 1;
                                    sub_1004F0CC0();
                                  }

                                  v203 = *(v343 + 4);
                                  v343[10] = v202 + 1;
                                  v204 = *(v203 + 8 * v202);
                                  v204[5] |= 1u;
                                  v204[2] = 12;
                                  v205 = sub_1004F0AE0(&v340, 16);
                                  if ((v205 & 0x100000000) != 0)
                                  {
                                    v204[5] |= 2u;
                                    v204[3] = v205;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      sub_10006DCAC(&v341 + 8, v342);
      sub_10006DCAC(&v340, *(&v340 + 1));
    }
  }

  if (v94)
  {
    sub_100004A34(v94);
  }

  v206 = **(a1 + 56);
  v208 = *(v206 + 208);
  v207 = *(v206 + 216);
  if (v207)
  {
    atomic_fetch_add_explicit(&v207->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v208)
  {
    v209 = *(a2 + 36);
    v210 = *(a2 + 32);
    if (v210 >= v209)
    {
      if (v209 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v209 + 1);
        v209 = *(a2 + 36);
      }

      *(a2 + 36) = v209 + 1;
      sub_1004F0BF8();
    }

    v211 = *(a2 + 24);
    *(a2 + 32) = v210 + 1;
    v212 = *(v211 + 8 * v210);
    LODWORD(v211) = v212[15];
    v212[2] = 6;
    v213 = *v208;
    v212[15] = v211 | 3;
    v212[3] = v213;
  }

  if (v207)
  {
    sub_100004A34(v207);
  }

  v214 = **(a1 + 56);
  v216 = *(v214 + 176);
  v215 = *(v214 + 184);
  if (v215)
  {
    atomic_fetch_add_explicit(&v215->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v216)
  {
    v217 = *(a2 + 36);
    v218 = *(a2 + 32);
    if (v218 >= v217)
    {
      if (v217 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v217 + 1);
        v217 = *(a2 + 36);
      }

      *(a2 + 36) = v217 + 1;
      sub_1004F0BF8();
    }

    v219 = *(a2 + 24);
    *(a2 + 32) = v218 + 1;
    v220 = *(v219 + 8 * v218);
    LODWORD(v219) = v220[15];
    v220[2] = 9;
    v221 = *v216;
    v220[15] = v219 | 3;
    v220[3] = v221;
  }

  if (v215)
  {
    sub_100004A34(v215);
  }

  v222 = **(a1 + 56);
  v224 = *(v222 + 448);
  v223 = *(v222 + 456);
  if (v223)
  {
    atomic_fetch_add_explicit(&v223->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v224)
  {
    v225 = *(a2 + 36);
    v226 = *(a2 + 32);
    if (v226 >= v225)
    {
      if (v225 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v225 + 1);
        v225 = *(a2 + 36);
      }

      *(a2 + 36) = v225 + 1;
      sub_1004F0BF8();
    }

    v227 = *(a2 + 24);
    *(a2 + 32) = v226 + 1;
    v228 = *(v227 + 8 * v226);
    v229 = v228[15];
    v228[2] = 32;
    v230 = *v224;
    v228[15] = v229 | 3;
    v228[3] = v230;
    if (v230 == 6000)
    {
      v231 = *(v224 + 3);
      if (v231)
      {
        if (*(v231 + 32) == 1)
        {
          *(a2 + 148) |= 0x40u;
          *(a2 + 52) = 1;
        }
      }
    }
  }

  if (v223)
  {
    sub_100004A34(v223);
  }

  v232 = **(a1 + 56);
  v234 = *(v232 + 464);
  v233 = *(v232 + 472);
  if (v233)
  {
    atomic_fetch_add_explicit(&v233->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v234)
  {
    v235 = *(a2 + 36);
    v236 = *(a2 + 32);
    if (v236 >= v235)
    {
      if (v235 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v235 + 1);
        v235 = *(a2 + 36);
      }

      *(a2 + 36) = v235 + 1;
      sub_1004F0BF8();
    }

    v237 = *(a2 + 24);
    *(a2 + 32) = v236 + 1;
    v238 = *(v237 + 8 * v236);
    v239 = v238[15];
    v238[2] = 12;
    v240 = *v234;
    v238[15] = v239 | 3;
    v238[3] = v240;
    if (v240 == 6000)
    {
      v241 = *(v234 + 3);
      if (v241)
      {
        if (*(v241 + 32) == 1)
        {
          *(a2 + 148) |= 0x40u;
          *(a2 + 52) = 1;
        }
      }
    }
  }

  if (v233)
  {
    sub_100004A34(v233);
  }

  v242 = **(a1 + 56);
  v244 = *(v242 + 192);
  v243 = *(v242 + 200);
  if (v243)
  {
    atomic_fetch_add_explicit(&v243->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v244)
  {
    v245 = *(a2 + 36);
    v246 = *(a2 + 32);
    if (v246 >= v245)
    {
      if (v245 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v245 + 1);
        v245 = *(a2 + 36);
      }

      *(a2 + 36) = v245 + 1;
      sub_1004F0BF8();
    }

    v247 = *(a2 + 24);
    *(a2 + 32) = v246 + 1;
    v248 = *(v247 + 8 * v246);
    LODWORD(v247) = v248[15];
    v248[2] = 10;
    v249 = *v244;
    v248[15] = v247 | 3;
    v248[3] = v249;
  }

  if (v243)
  {
    sub_100004A34(v243);
  }

  v250 = **(a1 + 56);
  v252 = *(v250 + 32);
  v251 = *(v250 + 40);
  if (v251)
  {
    atomic_fetch_add_explicit(&v251->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v252)
  {
    v253 = *(a2 + 36);
    v254 = *(a2 + 32);
    if (v254 >= v253)
    {
      if (v253 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v253 + 1);
        v253 = *(a2 + 36);
      }

      *(a2 + 36) = v253 + 1;
      sub_1004F0BF8();
    }

    v255 = *(a2 + 24);
    *(a2 + 32) = v254 + 1;
    v256 = *(v255 + 8 * v254);
    v257 = v256[15];
    v256[2] = 3;
    v258 = *v252;
    v256[15] = v257 | 3;
    v256[3] = v258;
    v259 = *(v252 + 3);
    if (v259)
    {
      v260 = *(v259 + 8);
      if (v260)
      {
        v261 = v259 + 8;
        do
        {
          if (*(v260 + 32) >= 8)
          {
            v261 = v260;
          }

          v260 = *(v260 + 8 * (*(v260 + 32) < 8));
        }

        while (v260);
        if (v261 != v259 + 8 && *(v261 + 32) <= 8)
        {
          v262 = v256[11];
          v263 = v256[10];
          if (v263 >= v262)
          {
            if (v262 == v256[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v256 + 8), v262 + 1);
              v262 = v256[11];
            }

            v256[11] = v262 + 1;
            sub_1004F0CC0();
          }

          v264 = *(v256 + 4);
          v256[10] = v263 + 1;
          v265 = *(v264 + 8 * v263);
          v265[5] |= 1u;
          v265[2] = 5;
          v266 = sub_1004F0AE0(v259, 8);
          if ((v266 & 0x100000000) != 0)
          {
            v265[5] |= 2u;
            v265[3] = v266;
          }
        }
      }
    }
  }

  if (v251)
  {
    sub_100004A34(v251);
  }

  v267 = **(a1 + 56);
  v269 = *(v267 + 48);
  v268 = *(v267 + 56);
  if (v268)
  {
    atomic_fetch_add_explicit(&v268->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v269)
  {
    v270 = *(a2 + 36);
    v271 = *(a2 + 32);
    if (v271 >= v270)
    {
      if (v270 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v270 + 1);
        v270 = *(a2 + 36);
      }

      *(a2 + 36) = v270 + 1;
      sub_1004F0BF8();
    }

    v272 = *(a2 + 24);
    *(a2 + 32) = v271 + 1;
    v273 = *(v272 + 8 * v271);
    v274 = v273[15];
    v273[2] = 4;
    v275 = *v269;
    v273[15] = v274 | 3;
    v273[3] = v275;
    v276 = *(v269 + 3);
    if (v276)
    {
      v277 = *(v276 + 8);
      if (v277)
      {
        v278 = v276 + 8;
        do
        {
          if (*(v277 + 32) >= 8)
          {
            v278 = v277;
          }

          v277 = *(v277 + 8 * (*(v277 + 32) < 8));
        }

        while (v277);
        if (v278 != v276 + 8 && *(v278 + 32) <= 8)
        {
          v279 = v273[11];
          v280 = v273[10];
          if (v280 >= v279)
          {
            if (v279 == v273[12])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v273 + 8), v279 + 1);
              v279 = v273[11];
            }

            v273[11] = v279 + 1;
            sub_1004F0CC0();
          }

          v281 = *(v273 + 4);
          v273[10] = v280 + 1;
          v282 = *(v281 + 8 * v280);
          v282[5] |= 1u;
          v282[2] = 5;
          v283 = sub_1004F0AE0(v276, 8);
          if ((v283 & 0x100000000) != 0)
          {
            v282[5] |= 2u;
            v282[3] = v283;
          }
        }
      }
    }
  }

  if (v268)
  {
    sub_100004A34(v268);
  }

  v284 = **(a1 + 56);
  v286 = *(v284 + 64);
  v285 = *(v284 + 72);
  if (v285)
  {
    atomic_fetch_add_explicit(&v285->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v286)
  {
    v287 = *(a2 + 36);
    v288 = *(a2 + 32);
    if (v288 >= v287)
    {
      if (v287 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v287 + 1);
        v287 = *(a2 + 36);
      }

      *(a2 + 36) = v287 + 1;
      sub_1004F0BF8();
    }

    v289 = *(a2 + 24);
    *(a2 + 32) = v288 + 1;
    v290 = *(v289 + 8 * v288);
    LODWORD(v289) = v290[15];
    v290[2] = 5;
    v291 = *v286;
    v290[15] = v289 | 3;
    v290[3] = v291;
  }

  if (v285)
  {
    sub_100004A34(v285);
  }

  v292 = **(a1 + 56);
  v294 = *(v292 + 80);
  v293 = *(v292 + 88);
  if (v293)
  {
    atomic_fetch_add_explicit(&v293->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v294)
  {
    v295 = *(a2 + 36);
    v296 = *(a2 + 32);
    if (v296 >= v295)
    {
      if (v295 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v295 + 1);
        v295 = *(a2 + 36);
      }

      *(a2 + 36) = v295 + 1;
      sub_1004F0BF8();
    }

    v297 = *(a2 + 24);
    *(a2 + 32) = v296 + 1;
    v298 = *(v297 + 8 * v296);
    LODWORD(v297) = v298[15];
    v298[2] = 7;
    v299 = *v294;
    v298[15] = v297 | 3;
    v298[3] = v299;
  }

  if (v293)
  {
    sub_100004A34(v293);
  }

  v300 = **(a1 + 56);
  v302 = *(v300 + 96);
  v301 = *(v300 + 104);
  if (v301)
  {
    atomic_fetch_add_explicit(&v301->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v302)
  {
    v303 = *(a2 + 36);
    v304 = *(a2 + 32);
    if (v304 >= v303)
    {
      if (v303 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v303 + 1);
        v303 = *(a2 + 36);
      }

      *(a2 + 36) = v303 + 1;
      sub_1004F0BF8();
    }

    v305 = *(a2 + 24);
    *(a2 + 32) = v304 + 1;
    v306 = *(v305 + 8 * v304);
    LODWORD(v305) = v306[15];
    v306[2] = 8;
    v307 = *v302;
    v306[15] = v305 | 3;
    v306[3] = v307;
  }

  if (v301)
  {
    sub_100004A34(v301);
  }

  v308 = **(a1 + 56);
  v310 = *(v308 + 224);
  v309 = *(v308 + 232);
  if (v309)
  {
    atomic_fetch_add_explicit(&v309->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v310)
  {
    v311 = *(a2 + 36);
    v312 = *(a2 + 32);
    if (v312 >= v311)
    {
      if (v311 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v311 + 1);
        v311 = *(a2 + 36);
      }

      *(a2 + 36) = v311 + 1;
      sub_1004F0BF8();
    }

    v313 = *(a2 + 24);
    *(a2 + 32) = v312 + 1;
    v314 = *(v313 + 8 * v312);
    LODWORD(v313) = v314[15];
    v314[2] = 13;
    v315 = *v310;
    v314[15] = v313 | 3;
    v314[3] = v315;
  }

  if (v309)
  {
    sub_100004A34(v309);
  }

  v316 = **(a1 + 56);
  v318 = *(v316 + 240);
  v317 = *(v316 + 248);
  if (v317)
  {
    atomic_fetch_add_explicit(&v317->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v318)
  {
    v319 = *(a2 + 36);
    v320 = *(a2 + 32);
    if (v320 >= v319)
    {
      if (v319 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v319 + 1);
        v319 = *(a2 + 36);
      }

      *(a2 + 36) = v319 + 1;
      sub_1004F0BF8();
    }

    v321 = *(a2 + 24);
    *(a2 + 32) = v320 + 1;
    v322 = *(v321 + 8 * v320);
    LODWORD(v321) = v322[15];
    v322[2] = 14;
    v323 = *v318;
    v322[15] = v321 | 3;
    v322[3] = v323;
  }

  if (v317)
  {
    sub_100004A34(v317);
  }

  v324 = **(a1 + 56);
  v326 = *(v324 + 320);
  v325 = *(v324 + 328);
  if (v325)
  {
    atomic_fetch_add_explicit(&v325->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v326)
  {
    v327 = *(a2 + 36);
    v328 = *(a2 + 32);
    if (v328 >= v327)
    {
      if (v327 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v327 + 1);
        v327 = *(a2 + 36);
      }

      *(a2 + 36) = v327 + 1;
      sub_1004F0BF8();
    }

    v329 = *(a2 + 24);
    *(a2 + 32) = v328 + 1;
    v330 = *(v329 + 8 * v328);
    LODWORD(v329) = v330[15];
    v330[2] = 22;
    v331 = *v326;
    v330[15] = v329 | 3;
    v330[3] = v331;
  }

  if (v325)
  {
    sub_100004A34(v325);
  }

  v332 = **(a1 + 56);
  v334 = *(v332 + 288);
  v333 = *(v332 + 296);
  if (v333)
  {
    atomic_fetch_add_explicit(&v333->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v334)
  {
    v335 = *(a2 + 36);
    v336 = *(a2 + 32);
    if (v336 >= v335)
    {
      if (v335 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v335 + 1);
        v335 = *(a2 + 36);
      }

      *(a2 + 36) = v335 + 1;
      sub_1004F0BF8();
    }

    v337 = *(a2 + 24);
    *(a2 + 32) = v336 + 1;
    v338 = *(v337 + 8 * v336);
    LODWORD(v337) = v338[15];
    v338[2] = 15;
    v339 = *v334;
    v338[15] = v337 | 3;
    v338[3] = v339;
  }

  if (v333)
  {
    sub_100004A34(v333);
  }
}