void sub_10001707C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t sub_10001714C(void *a1, xpc_object_t xdict, char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  *a1 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a1 = result;
  return result;
}

void sub_10001719C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void sub_1000171F0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

uint64_t sub_100017240(uint64_t a1, NSObject **a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  if (IsInternalBuild)
  {
    v7 = 1;
  }

  else
  {
    IsInternalBuild = TelephonyUtilIsCarrierBuild();
    v7 = IsInternalBuild;
  }

  v60 = defaults::compression::mode(IsInternalBuild);
  sub_100014268(*(v5 + 208), *(v5 + 216), &v60, v7);
  v59 = defaults::compression::splitArchive(v8);
  sub_100014738(*(v5 + 208), *(v5 + 216), &v59, v7);
  v58 = 0;
  v56[0] = 0;
  v56[1] = 0;
  v57 = 0;
  v53 = &v53;
  v54 = &v53;
  v55 = 0;
  v9 = *(a3 + 8);
  if (v9 != a3)
  {
    v10 = 0;
    v11 = &v53;
    do
    {
      v13 = operator new(0x28uLL);
      *v13 = 0;
      v13[1] = 0;
      if (*(v9 + 39) < 0)
      {
        v14 = v13;
        sub_1000010F4(v13 + 16, *(v9 + 16), *(v9 + 24));
        v11 = v53;
        v10 = v55;
        v13 = v14;
      }

      else
      {
        v12 = *(v9 + 16);
        v13[4] = *(v9 + 32);
        *(v13 + 1) = v12;
      }

      *v13 = v11;
      v13[1] = &v53;
      v11[1] = v13;
      ++v10;
      v53 = v13;
      v55 = v10;
      v9 = *(v9 + 8);
      v11 = v13;
    }

    while (v9 != a3);
  }

  sub_100015944(&v53, &v60, &v59, &v58 + 1, &v58, v56);
  if (v55)
  {
    v15 = v54;
    v16 = v53[1];
    v17 = *v54;
    *(v17 + 8) = v16;
    *v16 = v17;
    v55 = 0;
    if (v15 != &v53)
    {
      do
      {
        v21 = v15[1];
        if (*(v15 + 39) < 0)
        {
          operator delete(v15[2]);
        }

        operator delete(v15);
        v15 = v21;
      }

      while (v21 != &v53);
    }
  }

  v18 = v60;
  if (!v60)
  {
    v59 = 0;
  }

  v19 = xpc_dictionary_create(0, 0, 0);
  if (v19 || (v19 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v19) == &_xpc_type_dictionary)
    {
      xpc_retain(v19);
      v20 = v19;
    }

    else
    {
      v20 = xpc_null_create();
    }
  }

  else
  {
    v20 = xpc_null_create();
    v19 = 0;
  }

  xpc_release(v19);
  v22 = xpc_string_create(abm::kBasebandResetTypeHard);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v20, abm::kKeyBasebandResetType, v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  v24 = xpc_string_create(abm::kBasebandResetSubTypeOtherErrors);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(v20, abm::kKeyBasebandResetSubType, v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  v26 = xpc_string_create(abm::kCollectTelephonyLogsWithCoredump);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  xpc_dictionary_set_value(v20, abm::kKeyTraceAction, v26);
  v27 = xpc_null_create();
  xpc_release(v26);
  xpc_release(v27);
  if (v57 >= 0)
  {
    v28 = v56;
  }

  else
  {
    v28 = v56[0];
  }

  v29 = xpc_string_create(v28);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  xpc_dictionary_set_value(v20, abm::kKeyBasebandResetReason, v29);
  v30 = xpc_null_create();
  xpc_release(v29);
  xpc_release(v30);
  if (v57 >= 0)
  {
    v31 = v56;
  }

  else
  {
    v31 = v56[0];
  }

  v32 = xpc_string_create(v31);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  xpc_dictionary_set_value(v20, abm::kKeyTraceDumpStateReason, v32);
  v33 = xpc_null_create();
  xpc_release(v32);
  xpc_release(v33);
  v34 = xpc_int64_create(v18);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  xpc_dictionary_set_value(v20, abm::kKeyTraceDumpStatePerformCompression, v34);
  v35 = xpc_null_create();
  xpc_release(v34);
  xpc_release(v35);
  v36 = xpc_BOOL_create(v59);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  xpc_dictionary_set_value(v20, abm::kKeyTraceDumpStateSplitArchive, v36);
  v37 = xpc_null_create();
  xpc_release(v36);
  xpc_release(v37);
  if (HIBYTE(v58) == 1)
  {
    v38 = xpc_BOOL_create(0);
    if (!v38)
    {
      v38 = xpc_null_create();
    }

    xpc_dictionary_set_value(v20, abm::kKeyTraceUserConfirmation, v38);
    v39 = xpc_null_create();
    xpc_release(v38);
    xpc_release(v39);
  }

  v40 = *a2;
  if (v40)
  {
    dispatch_retain(v40);
    dispatch_group_enter(v40);
  }

  v41 = *(v5 + 216);
  v51 = *(v5 + 208);
  v52 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v42 = abm::kCommandTraceDumpState;
  v43 = strlen(abm::kCommandTraceDumpState);
  if (v43 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001038();
  }

  v44 = v43;
  if (v43 >= 0x17)
  {
    if ((v43 | 7) == 0x17)
    {
      v46 = 25;
    }

    else
    {
      v46 = (v43 | 7) + 1;
    }

    v45 = operator new(v46);
    __dst[1] = v44;
    v50 = v46 | 0x8000000000000000;
    __dst[0] = v45;
    goto LABEL_59;
  }

  HIBYTE(v50) = v43;
  v45 = __dst;
  if (v43)
  {
LABEL_59:
    memmove(v45, v42, v44);
  }

  *(v44 + v45) = 0;
  if (v40)
  {
    dispatch_retain(v40);
    dispatch_group_enter(v40);
  }

  abm::client::PerformCommand();
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__dst[0]);
  }

  v47 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  if (v40)
  {
    dispatch_group_leave(v40);
    dispatch_release(v40);
    dispatch_group_leave(v40);
    dispatch_release(v40);
  }

  xpc_release(v20);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
  }

  return 1;
}

void sub_1000178E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_group_t group, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_100000F08(&a23);
  if (v25)
  {
    dispatch_group_leave(v25);
    dispatch_release(v25);
  }

  xpc_release(v26);
  if (*(v27 - 73) < 0)
  {
    operator delete(*(v27 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_100017A24(uint64_t a1, _DWORD *a2, xpc_object_t a3)
{
  v6 = sub_1000011A0(&std::cout, "Telephony log collection with Coredump: ", 40);
  if (*a2)
  {
    v7 = "Failed";
  }

  else
  {
    v7 = "Success";
  }

  if (*a2)
  {
    v8 = 6;
  }

  else
  {
    v8 = 7;
  }

  v9 = sub_1000011A0(v6, v7, v8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v51, &std::ctype<char>::id);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  if (!*a2)
  {
    if (a3)
    {
      xpc_retain(a3);
    }

    else
    {
      a3 = xpc_null_create();
      if (!a3)
      {
        v11 = xpc_null_create();
        a3 = 0;
        goto LABEL_15;
      }
    }

    if (xpc_get_type(a3) == &_xpc_type_dictionary)
    {
      xpc_retain(a3);
      v11 = a3;
    }

    else
    {
      v11 = xpc_null_create();
    }

LABEL_15:
    xpc_release(a3);
    if (xpc_get_type(v11) != &_xpc_type_dictionary)
    {
LABEL_67:
      xpc_release(v11);
      return;
    }

    if (*(a1 + 52) == 1)
    {
      v12 = sub_1000011A0(&std::cout, "Main archive path = ", 20);
      v13 = abm::kKeyTimestampString;
      value = xpc_dictionary_get_value(v11, abm::kKeyTimestampString);
      object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object = xpc_null_create();
      }

      v51.__locale_ = 0;
      v52 = 0;
      v53 = 0;
      v17 = xpc::dyn_cast_or_default();
      if (SHIBYTE(v53) < 0)
      {
        operator delete(v51.__locale_);
      }

      v18 = *(a1 + 48);
      abm::trace::getCoreDumpDirSuffix(v17);
      sub_100016BB4(&v50, &v48, v18, 0, &__p);
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v50;
      }

      else
      {
        LODWORD(v19) = v50.__r_.__value_.__l.__data_;
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v50.__r_.__value_.__r.__words[1];
      }

      v21 = sub_1000011A0(v12, v19, v20);
      std::ios_base::getloc((v21 + *(*v21 - 24)));
      v22 = std::locale::use_facet(&v51, &std::ctype<char>::id);
      (v22->__vftable[2].~facet_0)(v22, 10);
      std::locale::~locale(&v51);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
        if ((v46 & 0x80000000) == 0)
        {
LABEL_32:
          if ((v49 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

LABEL_50:
          operator delete(v48);
LABEL_33:
          xpc_release(object);
          v23 = sub_1000011A0(&std::cout, "Lite archive path = ", 20);
          v24 = xpc_dictionary_get_value(v11, v13);
          object = v24;
          if (v24)
          {
            xpc_retain(v24);
          }

          else
          {
            object = xpc_null_create();
          }

          v51.__locale_ = 0;
          v52 = 0;
          v53 = 0;
          v31 = xpc::dyn_cast_or_default();
          if (SHIBYTE(v53) < 0)
          {
            operator delete(v51.__locale_);
          }

          v32 = *(a1 + 48);
          abm::trace::getCoreDumpDirSuffix(v31);
          sub_100016BB4(&v50, &v43, v32, 1, &v41);
          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = &v50;
          }

          else
          {
            LODWORD(v33) = v50.__r_.__value_.__l.__data_;
          }

          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v34 = v50.__r_.__value_.__r.__words[1];
          }

          v35 = sub_1000011A0(v23, v33, v34);
          std::ios_base::getloc((v35 + *(*v35 - 24)));
          v36 = std::locale::use_facet(&v51, &std::ctype<char>::id);
          (v36->__vftable[2].~facet_0)(v36, 10);
          std::locale::~locale(&v51);
          std::ostream::put();
          std::ostream::flush();
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
            if ((v42 & 0x80000000) == 0)
            {
LABEL_65:
              if ((v44 & 0x80000000) == 0)
              {
LABEL_66:
                xpc_release(object);
                goto LABEL_67;
              }

LABEL_71:
              operator delete(v43);
              goto LABEL_66;
            }
          }

          else if ((v42 & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          operator delete(v41);
          if ((v44 & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_71;
        }
      }

      else if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      operator delete(__p);
      if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_50;
    }

    v15 = sub_1000011A0(&std::cout, "Path = ", 7);
    v16 = xpc_dictionary_get_value(v11, abm::kKeyTimestampString);
    object = v16;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      object = xpc_null_create();
    }

    v51.__locale_ = 0;
    v52 = 0;
    v53 = 0;
    v25 = xpc::dyn_cast_or_default();
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v51.__locale_);
    }

    v26 = *(a1 + 48);
    abm::trace::getCoreDumpDirSuffix(v25);
    sub_100016BB4(&v50, &v39, v26, 0, &v37);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v50;
    }

    else
    {
      LODWORD(v27) = v50.__r_.__value_.__l.__data_;
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = v50.__r_.__value_.__r.__words[1];
    }

    v29 = sub_1000011A0(v15, v27, v28);
    std::ios_base::getloc((v29 + *(*v29 - 24)));
    v30 = std::locale::use_facet(&v51, &std::ctype<char>::id);
    (v30->__vftable[2].~facet_0)(v30, 10);
    std::locale::~locale(&v51);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
      if ((v38 & 0x80000000) == 0)
      {
LABEL_46:
        if ((v40 & 0x80000000) == 0)
        {
LABEL_47:
          xpc_release(object);
          goto LABEL_67;
        }

LABEL_53:
        operator delete(v39);
        goto LABEL_47;
      }
    }

    else if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    operator delete(v37);
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_53;
  }
}

void sub_10001803C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, xpc_object_t object, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    xpc_release(object);
    xpc_release(v46);
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  goto LABEL_6;
}

BOOL sub_100018268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v176 = 0;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5 || (v5 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v5) == &_xpc_type_dictionary)
    {
      xpc_retain(v5);
      v6 = v5;
    }

    else
    {
      v6 = xpc_null_create();
    }
  }

  else
  {
    v6 = xpc_null_create();
    v5 = 0;
  }

  xpc_release(v5);
  v7 = xpc_string_create(abm::kTraceBaseband);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, abm::kKeyTraceName, v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = xpc_string_create(abm::kKeyTraceEnabled);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v10 = abm::kKeyTracePropertyName;
  xpc_dictionary_set_value(v6, abm::kKeyTracePropertyName, v9);
  v11 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v11);
  v175 = xpc_null_create();
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v173 = v12;
  v174 = v12;
  v13 = *(v4 + 216);
  v171 = *(v4 + 208);
  v172 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = abm::kCommandGetTraceProperty;
  v15 = strlen(abm::kCommandGetTraceProperty);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001038();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    v17 = operator new(v18);
    *&__dst[8] = v16;
    *&__dst[16] = v18 | 0x8000000000000000;
    *__dst = v17;
    goto LABEL_21;
  }

  __dst[23] = v15;
  v17 = __dst;
  if (v15)
  {
LABEL_21:
    memmove(v17, v14, v16);
  }

  v17[v16] = 0;
  abm::client::PerformCommand();
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    v19 = v172;
    if (!v172)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v19 = v172;
    if (!v172)
    {
      goto LABEL_27;
    }
  }

  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = v175;
    if (v175)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_27:
  v20 = v175;
  if (v175)
  {
    goto LABEL_31;
  }

LABEL_28:
  v20 = xpc_null_create();
  if (!v20)
  {
    v21 = xpc_null_create();
    v20 = 0;
    goto LABEL_34;
  }

LABEL_31:
  if (xpc_get_type(v20) == &_xpc_type_dictionary)
  {
    xpc_retain(v20);
    v21 = v20;
  }

  else
  {
    v21 = xpc_null_create();
  }

LABEL_34:
  xpc_release(v20);
  if (v173 || xpc_get_type(v21) != &_xpc_type_dictionary)
  {
    v22 = sub_1000011A0(&std::cout, "Baseband log collection: Failed", 31);
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v23 = std::locale::use_facet(__dst, &std::ctype<char>::id);
    (v23->__vftable[2].~facet_0)(v23, 10);
    std::locale::~locale(__dst);
    std::ostream::put();
    std::ostream::flush();
    v24 = v21;
    goto LABEL_37;
  }

  memset(&v170, 170, sizeof(v170));
  v27 = abm::kKeyTracePropertyValue;
  v28 = xpc_dictionary_get_value(v21, abm::kKeyTracePropertyValue);
  *__dst = v28;
  if (v28)
  {
    xpc_retain(v28);
  }

  else
  {
    *__dst = xpc_null_create();
  }

  v30 = abm::kUnknown;
  xpc::dyn_cast_or_default(&v170, __dst, abm::kUnknown, v29);
  xpc_release(*__dst);
  v31 = sub_100014ABC(&v170, &v176);
  if (v176)
  {
    v169 = 0;
    if (!capabilities::diag::supportsQDSS(v31))
    {
      v24 = v21;
      goto LABEL_78;
    }

    v32 = xpc_string_create(abm::kKeyTraceHighTput);
    if (!v32)
    {
      v32 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, v10, v32);
    v33 = xpc_null_create();
    xpc_release(v32);
    xpc_release(v33);
    v175 = xpc_null_create();
    *&v34 = 0xAAAAAAAAAAAAAAAALL;
    *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__dst = v34;
    *&__dst[16] = v34;
    v35 = *(v4 + 216);
    v167 = *(v4 + 208);
    v168 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = strlen(v14);
    if (v36 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100001038();
    }

    v37 = v36;
    if (v36 >= 0x17)
    {
      if ((v36 | 7) == 0x17)
      {
        v41 = 25;
      }

      else
      {
        v41 = (v36 | 7) + 1;
      }

      v38 = operator new(v41);
      __p[1] = v37;
      *&v156 = v41 | 0x8000000000000000;
      __p[0] = v38;
    }

    else
    {
      BYTE7(v156) = v36;
      v38 = __p;
      if (!v36)
      {
        goto LABEL_60;
      }
    }

    memmove(v38, v14, v37);
LABEL_60:
    *(v37 + v38) = 0;
    abm::client::PerformCommand();
    if (SBYTE7(v156) < 0)
    {
      operator delete(__p[0]);
    }

    v42 = v168;
    if (v168 && !atomic_fetch_add(&v168->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v42->__on_zero_shared)(v42);
      std::__shared_weak_count::__release_weak(v42);
    }

    v43 = v175;
    if (v175 || (v43 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v43) == &_xpc_type_dictionary)
      {
        xpc_retain(v43);
        v24 = v43;
      }

      else
      {
        v24 = xpc_null_create();
      }
    }

    else
    {
      v24 = xpc_null_create();
      v43 = 0;
    }

    v44 = xpc_null_create();
    xpc_release(v21);
    xpc_release(v44);
    xpc_release(v43);
    if (!*__dst && xpc_get_type(v24) == &_xpc_type_dictionary)
    {
      sub_10001714C(&v178, v24, v27);
      xpc::dyn_cast_or_default(__p, &v178, v30, v45);
      if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v170.__r_.__value_.__l.__data_);
      }

      *&v170.__r_.__value_.__l.__data_ = *__p;
      v170.__r_.__value_.__r.__words[2] = v156;
      BYTE7(v156) = 0;
      LOBYTE(__p[0]) = 0;
      xpc_release(v178.__r_.__value_.__l.__data_);
      sub_100014ABC(&v170, &v169);
    }

    if ((__dst[31] & 0x80000000) != 0)
    {
      operator delete(*&__dst[8]);
    }

LABEL_78:
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    if (IsInternalBuild)
    {
      v47 = 1;
    }

    else
    {
      IsInternalBuild = TelephonyUtilIsCarrierBuild();
      v47 = IsInternalBuild;
    }

    v166 = defaults::compression::mode(IsInternalBuild);
    sub_100014268(*(v4 + 208), *(v4 + 216), &v166, v47);
    value = defaults::compression::splitArchive(v48);
    sub_100014738(*(v4 + 208), *(v4 + 216), &value, v47);
    v164 = 0;
    v163 = 0;
    v161[0] = 0;
    v161[1] = 0;
    v162 = 0;
    v158 = &v158;
    v159 = &v158;
    v160 = 0;
    v49 = *(a3 + 8);
    if (v49 != a3)
    {
      v50 = 0;
      v51 = &v158;
      do
      {
        v53 = operator new(0x28uLL);
        *v53 = 0;
        v53[1] = 0;
        if (*(v49 + 39) < 0)
        {
          v54 = v53;
          sub_1000010F4(v53 + 16, *(v49 + 16), *(v49 + 24));
          v51 = v158;
          v50 = v160;
          v53 = v54;
        }

        else
        {
          v52 = *(v49 + 16);
          v53[4] = *(v49 + 32);
          *(v53 + 1) = v52;
        }

        *v53 = v51;
        v53[1] = &v158;
        v51[1] = v53;
        ++v50;
        v158 = v53;
        v160 = v50;
        v49 = *(v49 + 8);
        v51 = v53;
      }

      while (v49 != a3);
    }

    sub_100015944(&v158, &v166, &value, &v164, &v163, v161);
    if (v160)
    {
      v55 = v159;
      v56 = v158[1];
      v57 = *v159;
      *(v57 + 8) = v56;
      *v56 = v57;
      v160 = 0;
      if (v55 != &v158)
      {
        do
        {
          v60 = v55[1];
          if (*(v55 + 39) < 0)
          {
            operator delete(v55[2]);
          }

          operator delete(v55);
          v55 = v60;
        }

        while (v60 != &v158);
      }
    }

    v58 = sub_100015E88(v4);
    if (v58 || (defaults::compression::supported(v58) & 1) == 0)
    {
      v166 = 0;
    }

    else
    {
      v59 = v166;
      if (v166)
      {
LABEL_98:
        v61 = xpc_dictionary_create(0, 0, 0);
        if (v61 || (v61 = xpc_null_create()) != 0)
        {
          if (xpc_get_type(v61) == &_xpc_type_dictionary)
          {
            xpc_retain(v61);
            v62 = v61;
          }

          else
          {
            v62 = xpc_null_create();
          }
        }

        else
        {
          v62 = xpc_null_create();
          v61 = 0;
        }

        xpc_release(v61);
        if (v162 >= 0)
        {
          v63 = v161;
        }

        else
        {
          v63 = v161[0];
        }

        v64 = xpc_string_create(v63);
        if (!v64)
        {
          v64 = xpc_null_create();
        }

        xpc_dictionary_set_value(v62, abm::kKeyTraceDumpStateReason, v64);
        v65 = xpc_null_create();
        xpc_release(v64);
        xpc_release(v65);
        v66 = xpc_string_create(abm::kCollectBasebandLogs);
        if (!v66)
        {
          v66 = xpc_null_create();
        }

        xpc_dictionary_set_value(v62, abm::kKeyTraceAction, v66);
        v67 = xpc_null_create();
        xpc_release(v66);
        xpc_release(v67);
        v68 = xpc_int64_create(v59);
        if (!v68)
        {
          v68 = xpc_null_create();
        }

        xpc_dictionary_set_value(v62, abm::kKeyTraceDumpStatePerformCompression, v68);
        v69 = xpc_null_create();
        xpc_release(v68);
        xpc_release(v69);
        v70 = xpc_BOOL_create(value);
        if (!v70)
        {
          v70 = xpc_null_create();
        }

        xpc_dictionary_set_value(v62, abm::kKeyTraceDumpStateSplitArchive, v70);
        v71 = xpc_null_create();
        xpc_release(v70);
        xpc_release(v71);
        object = xpc_null_create();
        *&v72 = 0xAAAAAAAAAAAAAAAALL;
        *(&v72 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *__p = v72;
        v156 = v72;
        v73 = *(v4 + 216);
        v153 = *(v4 + 208);
        v154 = v73;
        if (v73)
        {
          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v74 = abm::kCommandTraceDumpState;
        v75 = strlen(abm::kCommandTraceDumpState);
        if (v75 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_100001038();
        }

        v76 = v75;
        if (v75 >= 0x17)
        {
          if ((v75 | 7) == 0x17)
          {
            v78 = 25;
          }

          else
          {
            v78 = (v75 | 7) + 1;
          }

          v77 = operator new(v78);
          *&__dst[8] = v76;
          *&__dst[16] = v78 | 0x8000000000000000;
          *__dst = v77;
        }

        else
        {
          __dst[23] = v75;
          v77 = __dst;
          if (!v75)
          {
LABEL_126:
            v77[v76] = 0;
            abm::client::PerformCommand();
            if ((__dst[23] & 0x80000000) != 0)
            {
              operator delete(*__dst);
            }

            if (v154 && !atomic_fetch_add(&v154->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v154->__on_zero_shared)(v154);
              std::__shared_weak_count::__release_weak(v154);
            }

            if (LODWORD(__p[0]) != -534716415)
            {
              if (LODWORD(__p[0]))
              {
                v86 = sub_1000011A0(&std::cout, "Baseband log collection: Failed", 31);
                std::ios_base::getloc((v86 + *(*v86 - 24)));
                v87 = std::locale::use_facet(__dst, &std::ctype<char>::id);
                (v87->__vftable[2].~facet_0)(v87, 10);
                std::locale::~locale(__dst);
                std::ostream::put();
                std::ostream::flush();
LABEL_259:
                if (SHIBYTE(v156) < 0)
                {
                  operator delete(__p[1]);
                }

                xpc_release(v62);
                if (SHIBYTE(v162) < 0)
                {
                  operator delete(v161[0]);
                }

                goto LABEL_263;
              }

              v79 = sub_1000011A0(&std::cout, "Baseband log collection: Success (ABM running)", 46);
              std::ios_base::getloc((v79 + *(*v79 - 24)));
              v80 = std::locale::use_facet(__dst, &std::ctype<char>::id);
              (v80->__vftable[2].~facet_0)(v80, 10);
              std::locale::~locale(__dst);
              std::ostream::put();
              std::ostream::flush();
              v81 = object;
              if (object || (v81 = xpc_null_create()) != 0)
              {
                if (xpc_get_type(v81) == &_xpc_type_dictionary)
                {
                  xpc_retain(v81);
                  v82 = v81;
                }

                else
                {
                  v82 = xpc_null_create();
                }
              }

              else
              {
                v82 = xpc_null_create();
                v81 = 0;
              }

              xpc_release(v81);
              if (value)
              {
                v89 = sub_1000011A0(&std::cout, "Main archive path = ", 20);
                v90 = abm::kKeyTimestampString;
                v91 = xpc_dictionary_get_value(v82, abm::kKeyTimestampString);
                v140.__r_.__value_.__r.__words[0] = v91;
                if (v91)
                {
                  xpc_retain(v91);
                }

                else
                {
                  v140.__r_.__value_.__r.__words[0] = xpc_null_create();
                }

                memset(__dst, 0, 24);
                xpc::dyn_cast_or_default();
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                v95 = v166;
                abm::trace::getBasebandTraceDirSuffix(v169, v94);
                sub_100016BB4(&v178, &v151, v95, 0, &v149);
                if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v96 = &v178;
                }

                else
                {
                  LODWORD(v96) = v178.__r_.__value_.__l.__data_;
                }

                if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v97 = HIBYTE(v178.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v97 = v178.__r_.__value_.__r.__words[1];
                }

                v98 = sub_1000011A0(v89, v96, v97);
                sub_100000F80(v98);
                if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v178.__r_.__value_.__l.__data_);
                  if ((v150 & 0x80000000) == 0)
                  {
LABEL_164:
                    if ((v152 & 0x80000000) == 0)
                    {
                      goto LABEL_165;
                    }

LABEL_182:
                    operator delete(v151);
LABEL_165:
                    xpc_release(v140.__r_.__value_.__l.__data_);
                    v99 = sub_1000011A0(&std::cout, "Lite archive path = ", 20);
                    v100 = xpc_dictionary_get_value(v82, v90);
                    v140.__r_.__value_.__r.__words[0] = v100;
                    if (v100)
                    {
                      xpc_retain(v100);
                    }

                    else
                    {
                      v140.__r_.__value_.__r.__words[0] = xpc_null_create();
                    }

                    memset(__dst, 0, 24);
                    xpc::dyn_cast_or_default();
                    if ((__dst[23] & 0x80000000) != 0)
                    {
                      operator delete(*__dst);
                    }

                    abm::trace::getBasebandTraceDirSuffix(v169, v106);
                    sub_100016BB4(&v178, &v147, v95, 1, &v145);
                    if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v107 = &v178;
                    }

                    else
                    {
                      LODWORD(v107) = v178.__r_.__value_.__l.__data_;
                    }

                    if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v108 = HIBYTE(v178.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v108 = v178.__r_.__value_.__r.__words[1];
                    }

                    v109 = sub_1000011A0(v99, v107, v108);
                    sub_100000F80(v109);
                    if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v178.__r_.__value_.__l.__data_);
                      if ((v146 & 0x80000000) == 0)
                      {
LABEL_197:
                        if ((v148 & 0x80000000) == 0)
                        {
LABEL_198:
                          xpc_release(v140.__r_.__value_.__l.__data_);
                          goto LABEL_199;
                        }

LABEL_202:
                        operator delete(v147);
                        goto LABEL_198;
                      }
                    }

                    else if ((v146 & 0x80000000) == 0)
                    {
                      goto LABEL_197;
                    }

                    operator delete(v145);
                    if ((v148 & 0x80000000) == 0)
                    {
                      goto LABEL_198;
                    }

                    goto LABEL_202;
                  }
                }

                else if ((v150 & 0x80000000) == 0)
                {
                  goto LABEL_164;
                }

                operator delete(v149);
                if ((v152 & 0x80000000) == 0)
                {
                  goto LABEL_165;
                }

                goto LABEL_182;
              }

              v92 = sub_1000011A0(&std::cout, "Path = ", 7);
              v93 = xpc_dictionary_get_value(v82, abm::kKeyTimestampString);
              v140.__r_.__value_.__r.__words[0] = v93;
              if (v93)
              {
                xpc_retain(v93);
              }

              else
              {
                v140.__r_.__value_.__r.__words[0] = xpc_null_create();
              }

              memset(__dst, 0, 24);
              xpc::dyn_cast_or_default();
              if ((__dst[23] & 0x80000000) != 0)
              {
                operator delete(*__dst);
              }

              v102 = v166;
              abm::trace::getBasebandTraceDirSuffix(v169, v101);
              sub_100016BB4(&v178, &v143, v102, 0, &v141);
              if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v103 = &v178;
              }

              else
              {
                LODWORD(v103) = v178.__r_.__value_.__l.__data_;
              }

              if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v104 = HIBYTE(v178.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v104 = v178.__r_.__value_.__r.__words[1];
              }

              v105 = sub_1000011A0(v92, v103, v104);
              sub_100000F80(v105);
              if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v178.__r_.__value_.__l.__data_);
                if ((v142 & 0x80000000) == 0)
                {
LABEL_178:
                  if ((v144 & 0x80000000) == 0)
                  {
LABEL_179:
                    xpc_release(v140.__r_.__value_.__l.__data_);
LABEL_199:
                    xpc_release(v82);
                    goto LABEL_259;
                  }

LABEL_185:
                  operator delete(v143);
                  goto LABEL_179;
                }
              }

              else if ((v142 & 0x80000000) == 0)
              {
                goto LABEL_178;
              }

              operator delete(v141);
              if ((v144 & 0x80000000) == 0)
              {
                goto LABEL_179;
              }

              goto LABEL_185;
            }

            v140.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
            v140.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
            v140.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
            if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild())
            {
LABEL_229:
              size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
              if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v140.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                v119 = sub_1000011A0(&std::cout, "Baseband log collection: Success (ABM not running)", 50);
                sub_100000F80(v119);
                v120 = sub_1000011A0(&std::cout, "Path = ", 7);
                v121 = strlen(abm::trace::kSnapshotFolder);
                v122 = sub_1000011A0(v120, abm::trace::kSnapshotFolder, v121);
                v123 = strlen(abm::trace::kLogDirPrefix);
                v124 = sub_1000011A0(v122, abm::trace::kLogDirPrefix, v123);
                if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v125 = &v140;
                }

                else
                {
                  LODWORD(v125) = v140.__r_.__value_.__l.__data_;
                }

                if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v126 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v126 = v140.__r_.__value_.__r.__words[1];
                }

                v127 = sub_1000011A0(v124, v125, v126);
                abm::trace::getBasebandTraceDirSuffix(v169, v128);
                if (__dst[23] >= 0)
                {
                  v129 = __dst;
                }

                else
                {
                  LODWORD(v129) = *__dst;
                }

                if (__dst[23] >= 0)
                {
                  v130 = __dst[23];
                }

                else
                {
                  v130 = *&__dst[8];
                }

                v131 = sub_1000011A0(v127, v129, v130);
                sub_100000F80(v131);
              }

              else
              {
                memset(__dst, 170, 24);
                if (v169)
                {
                  v132 = "QDSS.scratch";
                }

                else
                {
                  v132 = "DIAG.scratch";
                }

                sub_10001A584(__dst, v132);
                v133 = sub_1000011A0(&std::cout, "Baseband log collection: Success (ABM not running)", 50);
                sub_100000F80(v133);
                v134 = sub_1000011A0(&std::cout, "Path = ", 7);
                v135 = strlen(abm::trace::kScratchFolder);
                v136 = sub_1000011A0(v134, abm::trace::kScratchFolder, v135);
                if (__dst[23] >= 0)
                {
                  v137 = __dst;
                }

                else
                {
                  LODWORD(v137) = *__dst;
                }

                if (__dst[23] >= 0)
                {
                  v138 = __dst[23];
                }

                else
                {
                  v138 = *&__dst[8];
                }

                v139 = sub_1000011A0(v136, v137, v138);
                sub_100000F80(v139);
              }

              if ((__dst[23] & 0x80000000) != 0)
              {
                operator delete(*__dst);
              }

              if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v140.__r_.__value_.__l.__data_);
              }

              goto LABEL_259;
            }

            v182 = 0xAAAAAAAAAAAAAAAALL;
            v183 = 0xAAAAAAAAAAAAAAAALL;
            abm::HelperClient::create("logdump.helper", v83);
            v181 = 0xAAAAAAAAAAAAAAAALL;
            v84 = xpc_dictionary_create(0, 0, 0);
            v85 = v84;
            if (v84)
            {
              v181 = v84;
            }

            else
            {
              v85 = xpc_null_create();
              v181 = v85;
              if (!v85)
              {
                v88 = xpc_null_create();
                v85 = 0;
                goto LABEL_204;
              }
            }

            if (xpc_get_type(v85) == &_xpc_type_dictionary)
            {
              xpc_retain(v85);
              goto LABEL_205;
            }

            v88 = xpc_null_create();
LABEL_204:
            v181 = v88;
LABEL_205:
            xpc_release(v85);
            v110 = xpc_dictionary_create(0, 0, 0);
            if (v110 || (v110 = xpc_null_create()) != 0)
            {
              if (xpc_get_type(v110) == &_xpc_type_dictionary)
              {
                xpc_retain(v110);
                v111 = v110;
              }

              else
              {
                v111 = xpc_null_create();
              }
            }

            else
            {
              v111 = xpc_null_create();
              v110 = 0;
            }

            xpc_release(v110);
            v112 = xpc_int64_create(1500);
            if (!v112)
            {
              v112 = xpc_null_create();
            }

            xpc_dictionary_set_value(v111, abm::helper::kKeyTimeout, v112);
            v113 = xpc_null_create();
            xpc_release(v112);
            xpc_release(v113);
            *&v114 = 0xAAAAAAAAAAAAAAAALL;
            *(&v114 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *__dst = v114;
            *&__dst[16] = v114;
            v179 = v111;
            if (v111)
            {
              xpc_retain(v111);
            }

            else
            {
              v179 = xpc_null_create();
            }

            abm::HelperClient::perform();
            xpc_release(v179);
            v179 = 0;
            if (!*__dst && xpc_get_type(v181) == &_xpc_type_dictionary)
            {
              v115 = xpc_dictionary_get_value(v181, abm::helper::kKeyTimestampString);
              v177 = v115;
              if (v115)
              {
                xpc_retain(v115);
              }

              else
              {
                v177 = xpc_null_create();
              }

              xpc::dyn_cast_or_default(&v178, &v177, &unk_10001D64F, v116);
              if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v140.__r_.__value_.__l.__data_);
              }

              v140 = v178;
              *(&v178.__r_.__value_.__s + 23) = 0;
              v178.__r_.__value_.__s.__data_[0] = 0;
              xpc_release(v177);
            }

            if ((__dst[31] & 0x80000000) != 0)
            {
              operator delete(*&__dst[8]);
            }

            xpc_release(v111);
            xpc_release(v181);
            v117 = v183;
            if (v183 && !atomic_fetch_add((v183 + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v117->__on_zero_shared)(v117);
              std::__shared_weak_count::__release_weak(v117);
            }

            goto LABEL_229;
          }
        }

        memmove(v77, v74, v76);
        goto LABEL_126;
      }
    }

    v59 = 0;
    value = 0;
    goto LABEL_98;
  }

  v39 = sub_1000011A0(&std::cout, "Baseband logs are not enabled", 29);
  std::ios_base::getloc((v39 + *(*v39 - 24)));
  v40 = std::locale::use_facet(__dst, &std::ctype<char>::id);
  (v40->__vftable[2].~facet_0)(v40, 10);
  std::locale::~locale(__dst);
  std::ostream::put();
  std::ostream::flush();
  v24 = v21;
LABEL_263:
  if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v170.__r_.__value_.__l.__data_);
  }

LABEL_37:
  v25 = v173;
  xpc_release(v24);
  if (SHIBYTE(v174) < 0)
  {
    operator delete(*(&v173 + 1));
  }

  xpc_release(v6);
  return v25 == 0;
}

void sub_100019750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  xpc_release(*(v67 - 184));
  if (*(v67 - 113) < 0)
  {
    operator delete(*(v67 - 136));
  }

  xpc_release(v66);
  xpc_release(*(v67 - 112));
  sub_100000F08(v67 - 104);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  xpc_release(v65);
  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  xpc_release(v64);
  if (*(v67 - 209) < 0)
  {
    operator delete(*(v67 - 232));
  }

  xpc_release(v63);
  _Unwind_Resume(a1);
}

BOOL sub_100019D04(id a1, group *a2, list<std::string, std::allocator<std::string>> *a3)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
  }

  __p[0] = 0;
  __p[1] = 0;
  v48 = 0;
  var1 = a3->var1;
  if (var1 < 2)
  {
    v8 = sub_1000011A0(&std::cout, "os log collection: Failed", 25);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v49, &std::ctype<char>::id);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v49);
    std::ostream::put();
    std::ostream::flush();
    v10 = 0;
  }

  else
  {
    var0 = a3->var0.var0;
    v7 = (a3->var0.var0 + 16);
    if (__p != v7)
    {
      if (var0[39] < 0)
      {
        sub_100001DC0(__p, *(var0 + 2), *(var0 + 3));
        var0 = a3->var0.var0;
        var1 = a3->var1;
      }

      else
      {
        *__p = *v7;
        v48 = v7[2];
      }
    }

    if (SHIBYTE(v48) >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = atoi(v11);
    v14 = *var0;
    v13 = *(var0 + 1);
    v14[1] = v13;
    *v13 = v14;
    a3->var1 = var1 - 1;
    if (var0[39] < 0)
    {
      operator delete(*(var0 + 2));
    }

    operator delete(var0);
    v15 = a3->var0.var0 + 16;
    if (*(a3->var0.var0 + 39) < 0)
    {
      v15 = *v15;
    }

    v16 = [NSString stringWithUTF8String:v15];
    v17 = a3->var0.var0;
    v19 = *a3->var0.var0;
    v18 = *(a3->var0.var0 + 1);
    *(v19 + 8) = v18;
    *v18 = v19;
    --a3->var1;
    if (*(v17 + 39) < 0)
    {
      operator delete(v17[2]);
      operator delete(v17);
      if (a3->var1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      operator delete(v17);
      if (a3->var1)
      {
LABEL_18:
        v20 = objc_alloc_init(NSMutableArray);
        v21 = objc_alloc_init(NSMutableArray);
        if (!a3->var1)
        {
          goto LABEL_67;
        }

        v45 = v16;
        v46 = gr_name;
        v22 = 0;
        while (1)
        {
          v23 = a3->var0.var0;
          v24 = (a3->var0.var0 + 16);
          if (__p != v24)
          {
            v25 = v23[39];
            if (SHIBYTE(v48) < 0)
            {
              v27 = *(v23 + 2);
              v26 = *(v23 + 3);
              if (v25 >= 0)
              {
                v28 = a3->var0.var0 + 16;
              }

              else
              {
                v28 = v27;
              }

              if (v25 >= 0)
              {
                v29 = v25;
              }

              else
              {
                v29 = v26;
              }

              sub_100001E80(__p, v28, v29);
            }

            else if ((v25 & 0x80) != 0)
            {
              sub_100001DC0(__p, *(v23 + 2), *(v23 + 3));
            }

            else
            {
              *__p = *v24;
              v48 = v24[2];
            }
          }

          v30 = SHIBYTE(v48);
          v31 = __p[1];
          if (SHIBYTE(v48) >= 0)
          {
            v32 = SHIBYTE(v48) != 0;
          }

          else
          {
            v32 = __p[1] != 0;
          }

          if (SHIBYTE(v48) >= 0)
          {
            v33 = __p;
          }

          else
          {
            v33 = __p[0];
          }

          v34 = memcmp(v33, "-", v32);
          if (v32 == 1 && v34 == 0)
          {
            if (v30 >= 0)
            {
              v31 = v30;
            }

            if (v31 >= 2)
            {
              v41 = 2;
            }

            else
            {
              v41 = v31;
            }

            v42 = memcmp(v33, "-p", v41);
            if (v31 != 2 || v42)
            {
              if (!memcmp(v33, "-i", v41) && v31 == 2)
              {
                v22 = 105;
              }

              else
              {
                v22 = 0;
              }
            }

            else
            {
              v22 = 112;
            }

            goto LABEL_48;
          }

          if (v22 == 105)
          {
            break;
          }

          if (v22 == 112)
          {
            v36 = [NSString stringWithUTF8String:v33];
            v37 = v20;
LABEL_47:
            [v37 addObject:v36];
          }

LABEL_48:
          v38 = a3->var0.var0;
          v40 = *a3->var0.var0;
          v39 = *(a3->var0.var0 + 1);
          *(v40 + 8) = v39;
          *v39 = v40;
          --a3->var1;
          if (*(v38 + 39) < 0)
          {
            operator delete(v38[2]);
          }

          operator delete(v38);
          if (!a3->var1)
          {
            gr_name = v46;
            v16 = v45;
            goto LABEL_67;
          }
        }

        v36 = [NSString stringWithUTF8String:v33];
        v37 = v21;
        goto LABEL_47;
      }
    }

    v20 = [[NSMutableArray alloc] initWithObjects:{@"CommCenter", @"CommCenterMobileHelper", @"CommCenterRootHelper", @"abm-helper", @"WirelessRadioManagerd", @"com.apple.DiagnosticExtensions.Cellular", @"powerd", 0}];
    v21 = [[NSMutableArray alloc] initWithObjects:{@"AppleBaseband", 0}];
LABEL_67:
    v10 = [OsLogStream putOsLogStreamToFile:v16 process:v20 imagePath:v21 history:v12];
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (gr_name)
  {
    dispatch_group_leave(gr_name);
    dispatch_release(gr_name);
  }

  return v10;
}

void sub_10001A1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_group_t group, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if (!v24)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v24)
  {
    goto LABEL_3;
  }

  dispatch_group_leave(v24);
  dispatch_release(v24);
  _Unwind_Resume(exception_object);
}

uint64_t LogdumpCommand::create@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, NSObject **a4@<X3>, atomic_ullong *a5@<X8>)
{
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  a5[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0xE8uLL);
  v11 = *a2;
  v12 = a2[1];
  v19 = v11;
  v20 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a3;
  v14 = a3[1];
  v18[0] = v13;
  v18[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *a4;
  v17 = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  LogdumpCommand::LogdumpCommand(v10, a1, &v19, v18, &v17);
  sub_10001A62C(a5, v10);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  return (*(**a5 + 16))();
}

void sub_10001A3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (v12)
  {
    dispatch_release(v12);
    sub_100000F08(va);
    if (!v11)
    {
LABEL_3:
      if (v13)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    sub_100000F08(va);
    if (!v11)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v11);
  if (v13)
  {
LABEL_4:
    operator delete(v10);
    _Unwind_Resume(a1);
  }

LABEL_7:
  _Unwind_Resume(a1);
}

uint64_t sub_10001A3F4(void *a1)
{
  *a1 = off_100020738;
  v2 = a1[28];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[27];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  return sub_10000CAFC(v4);
}

void sub_10001A4B8(void *a1)
{
  *a1 = off_100020738;
  v2 = a1[28];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[27];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = sub_10000CAFC(a1);
  }

  else
  {
    v4 = sub_10000CAFC(a1);
  }

  operator delete(v4);
}

void *sub_10001A584(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001038();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

atomic_ullong *sub_10001A62C(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &off_100020AC8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_10001A74C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001A788(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_10001A7B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10001A7E0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000010001B8CALL)
  {
    if (((v2 & 0x800000010001B8CALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000010001B8CALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000010001B8CALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001A850()
{
  {
    return __cxa_atexit(sub_100013BEC, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &_mh_execute_header);
  }

  return result;
}

uint64_t abm::client::PerformCommand()
{
  return abm::client::PerformCommand();
}

{
  return abm::client::PerformCommand();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}