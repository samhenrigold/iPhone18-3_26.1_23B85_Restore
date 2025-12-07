uint64_t sub_1002CCAA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v25 = *a2;
  v26 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = *(*a3 + 52);
  if (v12 == 2)
  {
    v21 = "DATA.Connection.iw5???.2";
    if (a6 == 17)
    {
      v21 = "DATA.Connection.iw5.2";
    }

    v22 = "iw5???.2";
    if (a6 == 17)
    {
      v22 = "iw5.2";
    }

    if (a6 == 26)
    {
      v19 = "DATA.Connection.iw5t.2";
    }

    else
    {
      v19 = v21;
    }

    if (a6 == 26)
    {
      v20 = "iw5t.2";
    }

    else
    {
      v20 = v22;
    }
  }

  else
  {
    v13 = "DATA.Connection.iw5???.?";
    if (a6 == 17)
    {
      v13 = "DATA.Connection.iw5.?";
    }

    v14 = "iw5.?";
    if (a6 != 17)
    {
      v14 = "iw5???.?";
    }

    if (a6 == 26)
    {
      v13 = "DATA.Connection.iw5t.?";
    }

    v15 = "DATA.Connection.iw5???.1";
    if (a6 == 26)
    {
      v14 = "iw5t.?";
    }

    v16 = "DATA.Connection.iw5t.1";
    if (a6 == 17)
    {
      v15 = "DATA.Connection.iw5.1";
    }

    v17 = "iw5.1";
    if (a6 != 17)
    {
      v17 = "iw5???.1";
    }

    if (a6 != 26)
    {
      v16 = v15;
    }

    v18 = "iw5t.1";
    if (a6 != 26)
    {
      v18 = v17;
    }

    if (v12 == 1)
    {
      v19 = v16;
    }

    else
    {
      v19 = v13;
    }

    if (v12 == 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v14;
    }
  }

  sub_1009679C4(a1, &off_101E3AC18, &v25, a3, a4, &object, v19, v20, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v26)
  {
    sub_100004A34(v26);
  }

  *a1 = off_101E3A1B8;
  *(a1 + 64) = off_101E3A718;
  *(a1 + 72) = off_101E3A9B8;
  *(a1 + 80) = off_101E3ABA0;
  *(a1 + 456) = 0;
  *(a1 + 458) = 0;
  *(a1 + 488) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  return a1;
}

void sub_1002CCCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_1002CCD1C(uint64_t a1)
{
  sub_10096807C(a1, &off_101E3AC18);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1002CCD4C(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E3AC18);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1002CCD80(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E3AC18);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1002CCDB4(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E3AC18);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1002CCDE8(uint64_t a1)
{
  sub_10096807C(a1, &off_101E3AC18);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

uint64_t sub_1002CCE44(void *a1, int a2)
{
  result = (*(*a1 + 1056))(a1);
  if (result)
  {
    if (a2 == 4)
    {
      v5 = a1[7];
      result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v6 = 136315394;
        v7 = "deactivateWithReasonAllowed";
        v8 = 2080;
        v9 = asString();
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: Do not deactivate for %s", &v6, 0x16u);
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_1002CCF4C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[7];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "pcoTrigger";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: passing to SystemDetermination", buf, 0xCu);
  }

  v7 = a1[27];
  (*(*a1 + 528))(__p, a1);
  (*(*v7 + 240))(v7, __p, a2, a3);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1002CD07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002CD0B0(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 456);
  v3 = 2000;
  if (!result)
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1002CD0C8(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 384);
  v3 = 2000;
  if (!result)
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1002CD12C(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  if (validContextType())
  {
    v12 = a3[1];
    v43[0] = *a3;
    v43[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = sub_1000AC55C(a1, a2, v43);
    if (v12)
    {
      sub_100004A34(v12);
    }

    if (v13 && (*a4 == 70 || *a4 == 65))
    {
      if (a5 && *a3 && (*(**a3 + 1128))(*a3, a5, a6))
      {
        v14 = *(a1 + 56);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = asString();
          *buf = 136315650;
          v45 = "activateFailedTrigger";
          v46 = 2080;
          v47 = v15;
          v48 = 2048;
          v49 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: ActivationBlocker: type=%s, imsPref=%llu: flexible blocker settings exist, ignoring hardcoded 'FatalActivationBlocker' logic", buf, 0x20u);
        }
      }

      else
      {
        v21 = *(a1 + 56);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = asString();
          v23 = asString();
          *buf = 136315906;
          v45 = "activateFailedTrigger";
          v46 = 2080;
          v47 = v22;
          v48 = 2048;
          v49 = v13;
          v50 = 2080;
          v51 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: ActivationBlocker: type=%s, imsPref=%llu, cause %s", buf, 0x2Au);
        }

        if (*a3)
        {
          (*(**a3 + 1192))(*a3, a2, *a4, 1);
        }
      }

      v24 = *(a4 + 28);
      v25 = *(a1 + 56);
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (v24 == 1)
      {
        if (!v26)
        {
          return 0;
        }

        v27 = *(a1 + 136);
        if (*a4)
        {
          v28 = "f";
        }

        else
        {
          v28 = "t";
        }

        if (*a4)
        {
          v29 = asString();
        }

        else
        {
          v29 = "OK";
        }

        v34 = *(a4 + 1);
        v33 = *(a4 + 2);
        v35 = asStringBool(*(a4 + 24));
        v36 = asStringBool(*(a4 + 25));
        v37 = asStringBool(*(a4 + 26));
        v38 = asStringBool(*(a4 + 27));
        *buf = 136317698;
        v45 = v27;
        v46 = 2080;
        v47 = "activateFailedTrigger";
        v48 = 2080;
        v49 = "ActivationBlocker: error code";
        v50 = 2080;
        v51 = v28;
        v52 = 2080;
        v53 = v29;
        v54 = 2080;
        v55 = v34;
        v56 = 2080;
        v57 = v33;
        v58 = 2080;
        v59 = v35;
        v60 = 2080;
        v61 = v36;
        v62 = 2080;
        v63 = v37;
        v64 = 2080;
        v65 = v38;
        v17 = "#I DATA.%s: %s: %s: %s(%s{%s %s [ allowed=%s blocked=%s netAvailable=%s home=%s ]})";
        v18 = v25;
        v19 = 112;
        goto LABEL_16;
      }

      if (!v26)
      {
        return 0;
      }

      v30 = *(a1 + 136);
      if (*a4)
      {
        v31 = "f";
      }

      else
      {
        v31 = "t";
      }

      if (*a4)
      {
        v32 = asString();
      }

      else
      {
        v32 = "OK";
      }

      v39 = *(a4 + 1);
      if (v39)
      {
        v40 = *(a4 + 2);
        if (*v39)
        {
          v41 = "}";
          v42 = "{";
LABEL_43:
          *buf = 136317186;
          v45 = v30;
          v46 = 2080;
          v47 = "activateFailedTrigger";
          v48 = 2080;
          v49 = "ActivationBlocker: error code";
          v50 = 2080;
          v51 = v31;
          v52 = 2080;
          v53 = v32;
          v54 = 2080;
          v55 = v42;
          v56 = 2080;
          v57 = v39;
          v58 = 2080;
          v59 = v40;
          v60 = 2080;
          v61 = v41;
          v17 = "#I DATA.%s: %s: %s: %s(%s%s%s %s%s)";
          v18 = v25;
          v19 = 92;
          goto LABEL_16;
        }
      }

      else
      {
        v40 = *(a4 + 2);
      }

      v42 = "";
      v41 = "";
      goto LABEL_43;
    }
  }

  else
  {
    v16 = *(a1 + 56);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v45 = "activateFailedTrigger";
      v46 = 2080;
      v47 = asString();
      v17 = "#E %s: wrong context type: %s";
      v18 = v16;
      v19 = 22;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    }
  }

  return 0;
}

uint64_t sub_1002CD62C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  if (!a2)
  {
    sub_10096CA18(a1, a2, buf);
    v9 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v10 = a3[1];
    *a3 = v9;
    if (v10)
    {
      sub_100004A34(v10);
      if (v5)
      {
        v11 = *a3 == 0;
      }

      else
      {
        v11 = 1;
      }

      v12 = !v11;
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
        if ((v12 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (!v12)
      {
        goto LABEL_35;
      }
    }

    else if (!v5 || !v9)
    {
      goto LABEL_35;
    }

    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = &v32;
    v29 = 0;
    v13 = *(a1 + 216);
    v14 = PersonalitySpecificImpl::simSlot(a1);
    (*(*v13 + 424))(&v29, v13, v14);
    if (v29)
    {
      (*(*v29 + 80))(buf);
      sub_10006DCAC(&v31, v32);
      v15 = *&buf[8];
      v31 = *buf;
      v32 = *&buf[8];
      v33 = *&buf[16];
      if (*&buf[16])
      {
        *(*&buf[8] + 16) = &v32;
        *buf = &buf[8];
        *&buf[8] = 0;
        *&buf[16] = 0;
        v15 = 0;
      }

      else
      {
        v31 = &v32;
      }

      sub_10006DCAC(buf, v15);
    }

    if (v30)
    {
      sub_100004A34(v30);
    }

    v16 = v32;
    if (v32)
    {
      v17 = v32;
      do
      {
        v18 = *(v17 + 7);
        if (v18 <= v5)
        {
          if (v18 >= v5)
          {
            v19 = *(a1 + 56);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v21 = asString();
              *buf = 136315650;
              *&buf[4] = "handoverFailedCallback";
              *&buf[12] = 2080;
              *&buf[14] = v21;
              *&buf[22] = 1024;
              v35 = v5;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s: error = %s(%d), set handover blocked flag to true", buf, 0x1Cu);
              v16 = v32;
            }

            *(a1 + 457) = 1;
            break;
          }

          ++v17;
        }

        v17 = *v17;
      }

      while (v17);
    }

    sub_10006DCAC(&v31, v16);
  }

LABEL_35:
  *buf = 0;
  *&buf[8] = 0;
  (*(**(a1 + 216) + 24))(buf);
  v22 = *buf;
  if (*buf)
  {
    v23 = PersonalitySpecificImpl::simSlot(a1);
    v24 = (*(*a1 + 768))(a1);
    (*(*v22 + 64))(v22, v23, v24, a2);
  }

  v25 = a3[1];
  v28 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  v26 = sub_1009737E8(a1, a2);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  return v26;
}

void sub_1002CD9F8(void *a1, int a2)
{
  (*(*a1 + 1008))(a1);
  v4 = a1[7];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "failed";
    if (a2)
    {
      v5 = "succeeded";
    }

    v6 = 136315394;
    v7 = "mOBIKEDoneTrigger";
    v8 = 2080;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: MOBIKE handover %s.", &v6, 0x16u);
  }
}

void sub_1002CDAF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "deactivatedTrigger";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: ", buf, 0xCu);
  }

  *(a1 + 457) = 0;
  v16 = 2;
  v14 = 0;
  v15 = 0;
  sub_100098064(a1, &v16, &v14);
  if (!validContextType() || v16 == v4 && v14 == *a3)
  {
    v7 = *(a1 + 56);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = asString();
      v9 = asString();
      *buf = 136315650;
      *&buf[4] = "deactivatedTrigger";
      *&buf[12] = 2080;
      *&buf[14] = v8;
      v18 = 2080;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: connection deactivated for %s (current %s)", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = 0;
    (*(**(a1 + 216) + 24))(buf);
    v10 = *buf;
    if (*buf)
    {
      v11 = PersonalitySpecificImpl::simSlot(a1);
      v12 = (*(*a1 + 768))(a1);
      (*(*v10 + 56))(v10, v11, v12, 2, 2, "");
    }

    v13[0] = 0;
    v13[1] = 0;
    sub_1002CDD84(a1, 2, v13);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_1002CDD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CDD84(uint64_t a1, uint64_t a2, void *a3)
{
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  (*(*a1 + 528))(v32);
  v6 = HIBYTE(v33);
  if (v33 < 0)
  {
    v6 = v32[1];
  }

  if (v6)
  {
    sub_10096CA18(a1, 0, buf);
    v7 = *&buf[8];
    v31[0] = *buf;
    v31[1] = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    v8 = sub_1000AC180(a1, 0, v31);
    if (v7)
    {
      sub_100004A34(v7);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    sub_10096CA18(a1, 1, buf);
    v9 = *&buf[8];
    v30[0] = *buf;
    v30[1] = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    v10 = sub_1000AC180(a1, 1, v30);
    if (v9)
    {
      sub_100004A34(v9);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (*a3 && (sub_10008F5EC(a1), validContextType()))
    {
      sub_10096CA18(a1, a2, buf);
      v11 = *buf;
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      v12 = *(a1 + 56);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (!v11)
      {
        if (v13)
        {
          v20 = asString();
          *buf = 136315906;
          *&buf[4] = "evaluateImsPref";
          *&buf[12] = 2080;
          *&buf[14] = v20;
          v35 = 2048;
          v36 = v8;
          v37 = 2048;
          v38 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: from disabled settings (%s), ignoring bb mask %llu and tech mask %llu", buf, 0x2Au);
        }

        goto LABEL_34;
      }

      if (v13)
      {
        v14 = asString();
        sub_10008F5EC(a1);
        v15 = asString();
        *buf = 136316162;
        *&buf[4] = "evaluateImsPref";
        *&buf[12] = 2080;
        *&buf[14] = v14;
        v35 = 2080;
        v36 = v15;
        v37 = 2048;
        v38 = v8;
        v39 = 2048;
        v40 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: from active settings (%s), firing event ct=%s bb mask %llu and tech mask %llu", buf, 0x34u);
      }

      v16 = *(a1 + 216);
      if (SHIBYTE(v33) < 0)
      {
        sub_100005F2C(__p, v32[0], v32[1]);
      }

      else
      {
        *__p = *v32;
        v29 = v33;
      }

      v21 = sub_10008F5EC(a1);
      (*(*v16 + 232))(v16, __p, v21, v8, v10);
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
LABEL_34:
        v22 = *(a1 + 216);
        v23 = PersonalitySpecificImpl::simSlot(a1);
        sub_10000501C(v24, "IM IMS preferences changed");
        (*(*v22 + 192))(v22, v23, v24, 0);
        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        goto LABEL_36;
      }

      v19 = __p[0];
    }

    else
    {
      v17 = *(a1 + 56);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "evaluateImsPref";
        *&buf[12] = 2048;
        *&buf[14] = v8;
        v35 = 2048;
        v36 = v10;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: firing event with bb mask %llu and tech mask %llu", buf, 0x20u);
      }

      v18 = *(a1 + 216);
      if (SHIBYTE(v33) < 0)
      {
        sub_100005F2C(&__dst, v32[0], v32[1]);
      }

      else
      {
        __dst = *v32;
        v27 = v33;
      }

      (*(*v18 + 232))(v18, &__dst, 2, v8, v10);
      if ((SHIBYTE(v27) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      v19 = __dst;
    }

    operator delete(v19);
    goto LABEL_34;
  }

LABEL_36:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }
}

void sub_1002CE1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CE280(void *a1, uint64_t a2)
{
  v2 = a1[27];
  if (v2)
  {
    (*(*a1 + 528))(__p);
    (*(*v2 + 248))(v2, __p, a2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1002CE320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CE33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = capabilities::ct::supportsSMSIMSStack(a1);
  if (!v6)
  {
    if (capabilities::ct::supportsThumperService(v6))
    {
      goto LABEL_9;
    }

LABEL_6:
    if ((*(*a1 + 768))(a1) == 26)
    {
      return;
    }

    goto LABEL_9;
  }

  if (a2 == 1)
  {
    if ((*(*a1 + 768))(a1) == 17)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_9:
  v20 = 0;
  v21 = 0;
  sub_1000A8D40(a1, a2, 0, &v20);
  if (v20)
  {
    if ((validContextType() & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_101769C00();
      }

      if ((validContextType() & 1) == 0)
      {
        __TUAssertTrigger("validContextType(ct)");
      }
    }

    v7 = a1 + 464;
    v8 = *(a1 + 464 + 8 * a2);
    if (v8 != a3)
    {
      v10 = *(a1 + 56);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = asString();
        v12 = *(v7 + 8 * a2);
        *buf = 136315906;
        *&buf[4] = "updateCurrentImsPref";
        *&buf[12] = 2080;
        *&buf[14] = v11;
        v23 = 2048;
        v24 = v12;
        v25 = 2048;
        v26 = a3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: IMS pref for %s changes from %llu -> %llu", buf, 0x2Au);
        v8 = *(v7 + 8 * a2);
      }

      *(v7 + 8 * a2) = a3;
      if ((a3 & 1) != 0 && (v8 & 1) == 0 && sub_10008F5EC(a1) != a2)
      {
        *buf = 0;
        *&buf[8] = 0;
        (*(**(a1 + 216) + 24))(buf);
        v13 = *buf;
        if (*buf)
        {
          v14 = PersonalitySpecificImpl::simSlot(a1);
          if ((*(*v13 + 88))(v13, v14, 1) == a2)
          {
            v15 = *(a1 + 56);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *v19 = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I triggeriRatChangeEvent because of IMS PREF", v19, 2u);
            }

            v16 = *buf;
            v17 = PersonalitySpecificImpl::simSlot(a1);
            (*(*v16 + 112))(v16, v17, 1);
          }
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }
    }
  }

  v9 = v21;
  v18[0] = v20;
  v18[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1002CDD84(a1, a2, v18);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }
}

void sub_1002CE684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002CE6DC(Registry **a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 67))(a1) == 4)
  {
    v6 = a1[7];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v76 = "handoverPossible";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: we are already deactivating, shouldn't do handover as the old connection is already destroyed most probably", buf, 0xCu);
    }

    return a2;
  }

  v73 = 0;
  v74 = 0;
  (*(*a1 + 18))(&v73, a1, a3);
  if (!v73)
  {
    if (a2 != 1 || (v11 = a1[27], v12 = PersonalitySpecificImpl::simSlot(a1), ((*(*v11 + 408))(v11, v12) & 1) != 0))
    {
      a2 = sub_100971AD4(a1, a2, a3);
      goto LABEL_62;
    }

    v40 = a1[7];
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_61;
    }

    v41 = asString();
    v42 = asString();
    *buf = 136315650;
    v76 = "handoverPossible";
    v77 = 2080;
    v78 = v41;
    v79 = 2080;
    v80 = v42;
    v43 = "#I %s: No context %s to switch over to, we should deactivate context %s";
    v44 = v40;
    goto LABEL_55;
  }

  if (*(a1 + 457) == 1)
  {
    v7 = a1[7];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    *buf = 136315138;
    v76 = "handoverPossible";
    v8 = "#I %s: handover is blocked, shouldn't do handover";
    goto LABEL_8;
  }

  v13 = a1[27];
  v14 = PersonalitySpecificImpl::simSlot(a1);
  v15 = (*(*v13 + 264))(v13, v14);
  v16 = (*(*v73 + 1104))(v73, a2, a3);
  v17 = a1[27];
  v18 = PersonalitySpecificImpl::simSlot(a1);
  if (!(*(*v17 + 408))(v17, v18))
  {
    if (v16)
    {
      v29 = v74;
      v68[0] = v73;
      v68[1] = v74;
      if (v74)
      {
        atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = sub_1000AC55C(a1, a3, v68);
      if (v29)
      {
        sub_100004A34(v29);
      }

      if (v30)
      {
        v69 = 0;
        v70 = 0;
        v31 = a1[27];
        v32 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v31 + 424))(&v69, v31, v32);
        v34 = v69;
        v36 = a3 != 1 || v69 == 0;
        if (((v36 | v15) & 1) == 0)
        {
          if (!(*(*v69 + 184))(v69, v33))
          {
            v57 = a1[7];
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_89;
            }

            sub_10008F5EC(a1);
            v58 = asString();
            *buf = 136315394;
            v76 = "handoverPossible";
            v77 = 2080;
            v78 = v58;
            v59 = "#I %s: WiFi calling is not allowed in roaming, we stay on current context %s";
            v60 = v57;
            goto LABEL_87;
          }

          v34 = v69;
        }

        if (v34 && (((*(*v34 + 168))(v34) | v15) & 1) == 0)
        {
          v61 = a1[7];
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            sub_10008F5EC(a1);
            v62 = asString();
            *buf = 136315394;
            v76 = "handoverPossible";
            v77 = 2080;
            v78 = v62;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s: Handover is not allowed in roaming, we should deactivate current context %s", buf, 0x16u);
          }

          a2 = 2;
          goto LABEL_89;
        }

        v37 = a1[7];
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_52;
        }

        *buf = 136315138;
        v76 = "handoverPossible";
        v38 = "#I %s: have settings to handover to, good to go (2)";
        v39 = v37;
        goto LABEL_51;
      }

      v48 = a1[7];
      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
      if (a3)
      {
        if (v49)
        {
          v50 = asString();
          v51 = asString();
          *buf = 136315650;
          v76 = "handoverPossible";
          v77 = 2080;
          v78 = v50;
          v79 = 2080;
          v80 = v51;
          v8 = "#I %s: No IMS Pref in context %s at all, we should stay in context %s";
          v9 = v48;
          v10 = 32;
          goto LABEL_9;
        }

        goto LABEL_62;
      }

      if (v49)
      {
        v63 = asString();
        v64 = asString();
        *buf = 136315650;
        v76 = "handoverPossible";
        v77 = 2080;
        v78 = v63;
        v79 = 2080;
        v80 = v64;
        v43 = "#I %s: No IMS Pref in context %s at all, we should deactivate context %s";
        v44 = v48;
LABEL_55:
        v45 = 32;
LABEL_60:
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v43, buf, v45);
      }
    }

    else
    {
      v46 = a1[7];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v76 = "handoverPossible";
        v43 = "#I %s: handover is not supported for this data mode, shouldn't do handover, deactivate current context type when not in a call";
        v44 = v46;
        v45 = 12;
        goto LABEL_60;
      }
    }

LABEL_61:
    a2 = 2;
    goto LABEL_62;
  }

  if ((v16 & 1) == 0)
  {
    v7 = a1[7];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    *buf = 136315138;
    v76 = "handoverPossible";
    v8 = "#I %s: handover is not supported for this data mode, shouldn't do handover, stay with the current context type when in a call";
    goto LABEL_8;
  }

  if ((*(*a1[27] + 416))(a1[27]))
  {
    v19 = PersonalitySpecificImpl::simSlot(a1);
    if ((sub_1002CF1D8(a1, v19) & 1) == 0)
    {
      v7 = a1[7];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_62;
      }

      *buf = 136315138;
      v76 = "handoverPossible";
      v8 = "#I %s: handover in emergency mode is not supported, shouldn't do handover";
LABEL_8:
      v9 = v7;
      v10 = 12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_62;
    }
  }

  v20 = PersonalitySpecificImpl::simSlot(a1);
  if (!isCallHandoverSupported(a1 + 11, v20))
  {
    v7 = a1[7];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    *buf = 136315138;
    v76 = "handoverPossible";
    v8 = "#I %s: call handover is not supported, shouldn't do handover";
    goto LABEL_8;
  }

  v21 = v74;
  v72[0] = v73;
  v72[1] = v74;
  if (v74)
  {
    atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = sub_1000AC55C(a1, a3, v72);
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (!a3)
  {
    v23 = a1[27];
    v24 = PersonalitySpecificImpl::simSlot(a1);
    if ((*(*v23 + 456))(v23, v24))
    {
      v25 = PersonalitySpecificImpl::simSlot(a1);
      if (isCallHandoverWithoutIMSVoiceServiceSupported(a1 + 11, v25))
      {
        v26 = v74;
        v71[0] = v73;
        v71[1] = v74;
        if (v74)
        {
          atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = sub_1000AC180(a1, 0, v71);
        if (v26)
        {
          sub_100004A34(v26);
        }
      }
    }
  }

  if (v22)
  {
    v69 = 0;
    v70 = 0;
    v52 = a1[27];
    v53 = PersonalitySpecificImpl::simSlot(a1);
    (*(*v52 + 424))(&v69, v52, v53);
    if (!v69)
    {
      v65 = a1[7];
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_89;
      }

      *buf = 136315138;
      v76 = "handoverPossible";
      v59 = "#I %s: Tech config is not found - handover is not supported";
      v60 = v65;
      v66 = 12;
      goto LABEL_88;
    }

    v54 = (*(*v69 + 168))(v69) | v15;
    v55 = a1[7];
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
    if (v54)
    {
      if (!v56)
      {
        goto LABEL_52;
      }

      *buf = 136315138;
      v76 = "handoverPossible";
      v38 = "#I %s: have settings to handover to, good to go (1)";
      v39 = v55;
LABEL_51:
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v38, buf, 0xCu);
LABEL_52:
      a2 = a3;
      goto LABEL_89;
    }

    if (!v56)
    {
LABEL_89:
      if (v70)
      {
        sub_100004A34(v70);
      }

      goto LABEL_62;
    }

    sub_10008F5EC(a1);
    v67 = asString();
    *buf = 136315394;
    v76 = "handoverPossible";
    v77 = 2080;
    v78 = v67;
    v59 = "#I %s: Handover is not allowed in roaming, stay in current context %s as in call";
    v60 = v55;
LABEL_87:
    v66 = 22;
LABEL_88:
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, v59, buf, v66);
    goto LABEL_89;
  }

  v27 = a1[7];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = asString();
    *buf = 136315394;
    v76 = "handoverPossible";
    v77 = 2080;
    v78 = v28;
    v8 = "#I %s: We shouldn't handover if call cannot be maintained in context %s";
    v9 = v27;
    v10 = 22;
    goto LABEL_9;
  }

LABEL_62:
  if (v74)
  {
    sub_100004A34(v74);
  }

  return a2;
}

void sub_1002CF14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002CF1D8(uint64_t a1, uint64_t a2)
{
  *buf = @"EmergencyCalling";
  *&buf[8] = @"WaitForWiFiRegistration";
  v26 = 0;
  v27 = 0;
  v25 = 0;
  sub_10005B328(&v25, buf, &buf[16], 2uLL);
  v24 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 88));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  (*(*v12 + 104))(__p, v12, a2, 1, &v25, 0, 1);
  sub_10002FE1C(&v24, __p);
  sub_10000A1EC(__p);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  buf[0] = 0;
  ctu::cf::assign(buf, v24, v14);
  v15 = buf[0];
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = *buf;
  v23 = *&buf[16];
  v16 = *(a1 + 56);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = SHIBYTE(v23);
    v18 = __p[0];
    v19 = asStringBool(v15);
    v20 = __p;
    *buf = 136315650;
    *&buf[4] = "carrierPrefersToWaitForWiFi";
    if (v17 < 0)
    {
      v20 = v18;
    }

    *&buf[12] = 2082;
    *&buf[14] = v20;
    *&buf[22] = 2082;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: %{public}s = %{public}s", buf, 0x20u);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100045C8C(&v24);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  return v15;
}

void sub_1002CF460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  sub_100045C8C(&a13);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002CF4F8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "handOverNotPossibleTrigger";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: ", buf, 0xCu);
  }

  *buf = 0uLL;
  sub_10000501C(&__p, *(a1 + 136));
  v3 = *(a1 + 40);
  v12 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = *(a1 + 48);
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  Registry::createRestModuleOneTimeUseConnection(&v9, *(a1 + 88));
  ctu::RestModule::connect();
  v5 = v10;
  if (v10)
  {
    sub_100004A34(v10);
  }

  v6 = capabilities::ct::supports5G(v5);
  v8[0] = PersonalitySpecificImpl::simSlot(a1);
  v8[1] = v6;
  sub_1002CF6CC(buf, v8);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  return 0;
}

void sub_1002CF65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, dispatch_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  v21 = *(v19 - 40);
  if (v21)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CF6CC(uint64_t a1, unsigned int *a2)
{
  v5 = 0;
  sub_1002D03E0(a2, &v5);
  sub_10000501C(&__p, "/cc/events/bring_down_ims");
  object = v5;
  v5 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1002CF760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1002CF7C4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 216);
  v5 = PersonalitySpecificImpl::simSlot(a1);
  if (!(*(*v4 + 408))(v4, v5) || (v6 = PersonalitySpecificImpl::simSlot(a1), result = isCallHandoverSupported((a1 + 88), v6), result))
  {

    return sub_100971C2C(a1, v2);
  }

  return result;
}

BOOL sub_1002CF878(uint64_t a1, int a2)
{
  v3 = *(a1 + 458);
  if (v3 != a2)
  {
    *(a1 + 458) = a2;
    v4 = *(a1 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (a2)
      {
        v5 = "enabled";
      }

      v7 = 136315394;
      v8 = "enableSMSOverIMSOnly";
      v9 = 2080;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: SMS over IMS context is %s", &v7, 0x16u);
    }
  }

  return v3 != a2;
}

uint64_t sub_1002CF968(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(a1 + 458));
    v5 = 136315394;
    v6 = "isSMSOverIMSOnly";
    v7 = 2080;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: fIsSMSOverIMSnoVoLTEEnabled=%s", &v5, 0x16u);
  }

  return *(a1 + 458);
}

uint64_t sub_1002CFA2C(PersonalitySpecificImpl *a1, uint64_t a2)
{
  v3 = *(a1 + 27);
  v4 = PersonalitySpecificImpl::simSlot(a1);
  if ((*(*v3 + 408))(v3, v4))
  {
    v5 = *(a1 + 7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "shouldActOnTransportTypeChangeTo";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: In a call, don't do anything.", &v7, 0xCu);
    }

    return 0;
  }

  else
  {

    return sub_100971C44();
  }
}

void sub_1002CFB6C(uint64_t a1, BOOL *a2, BOOL *a3)
{
  v6 = *(a1 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1002CFEC8(a3, &v24);
    v7 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
    v8 = v24.__r_.__value_.__r.__words[0];
    sub_1002CFEC8(a2, &__p);
    v9 = &v24;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "handleCallStateChange";
    *&buf[12] = 2080;
    *&buf[14] = v9;
    v26 = 2080;
    v27 = p_p;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: Call State changed from (%s) to (%s)", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  if (a2[1] != a3[1])
  {
    if (a2[1])
    {
      v11 = PersonalitySpecificImpl::simSlot(a1);
      if (!isCallHandoverWithoutIMSVoiceServiceSupported((a1 + 88), v11))
      {
        return;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 0;
      *&v24.__r_.__value_.__l.__data_ = 0uLL;
      sub_100098064(a1, &__p, &v24);
      data_low = LODWORD(__p.__r_.__value_.__l.__data_);
      size = v24.__r_.__value_.__l.__size_;
      v22 = *&v24.__r_.__value_.__l.__data_;
      if (v24.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v24.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v14 = sub_1000AC55C(a1, data_low, &v22);
      if (size)
      {
        sub_100004A34(size);
      }

      if (v14)
      {
        *(a1 + 480) = v14;
        *(a1 + 488) = 1;
        v15 = *(a1 + 56);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "handleCallStateChange";
          *&buf[12] = 2048;
          *&buf[14] = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: Saved in call IMS pref value as %llu", buf, 0x16u);
        }
      }

      v16 = v24.__r_.__value_.__l.__size_;
      if (!v24.__r_.__value_.__l.__size_)
      {
        return;
      }

LABEL_32:
      sub_100004A34(v16);
      return;
    }

    if (*(a1 + 488) == 1)
    {
      v17 = *(a1 + 56);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT) || (v18 = *(a1 + 480), *buf = 136315394, *&buf[4] = "handleCallStateChange", *&buf[12] = 2048, *&buf[14] = v18, _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: Clear in call IMS pref(%llu)", buf, 0x16u), (*(a1 + 488) & 1) != 0))
      {
        *(a1 + 488) = 0;
      }

      LODWORD(v24.__r_.__value_.__l.__data_) = 0;
      *buf = 0;
      *&buf[8] = 0;
      sub_100098064(a1, &v24, buf);
      v19 = LODWORD(v24.__r_.__value_.__l.__data_);
      v20 = *&buf[8];
      v21[0] = *buf;
      v21[1] = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
      }

      sub_1002CDD84(a1, v19, v21);
      if (v20)
      {
        sub_100004A34(v20);
      }

      v16 = *&buf[8];
      if (*&buf[8])
      {
        goto LABEL_32;
      }
    }
  }
}

void sub_1002CFE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, std::__shared_weak_count *a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CFEC8(BOOL *a1@<X0>, std::string *a2@<X8>)
{
  *(&v15.__r_.__value_.__s + 23) = 8;
  strcpy(&v15, "Active: ");
  v4 = asStringBool(*a1);
  v5 = strlen(v4);
  v6 = std::string::append(&v15, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 8;
  strcpy(__p, ", VoIP: ");
  v8 = std::string::append(&v16, __p, 8uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = asStringBool(a1[1]);
  v11 = strlen(v10);
  v12 = std::string::append(&v17, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1002D0014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002D0078(PersonalitySpecificImpl *a1, uint64_t a2)
{
  v3 = *(a1 + 27);
  v4 = PersonalitySpecificImpl::simSlot(a1);
  v5 = *(*v3 + 360);

  return v5(v3, v4, a2);
}

uint64_t sub_1002D00E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v4 = PersonalitySpecificImpl::simSlot((a1 - 72));
  v5 = *(*v3 + 360);

  return v5(v3, v4, a2);
}

uint64_t sub_1002D0158(PersonalitySpecificImpl *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 27);
  v6 = PersonalitySpecificImpl::simSlot(a1);
  v7 = *(*v5 + 368);

  return v7(v5, v6, a2, a3);
}

uint64_t sub_1002D01D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 144);
  v6 = PersonalitySpecificImpl::simSlot((a1 - 72));
  v7 = *(*v5 + 368);

  return v7(v5, v6, a2, a3);
}

void sub_1002D0258(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 464);
    v3 = *(a1 + 472);
    if (*(a1 + 488) == 1)
    {
      v5 = *(a1 + 480);
    }

    else
    {
      v5 = -1;
    }

    v6 = asStringBool(*(a1 + 434));
    v7 = 134218754;
    v8 = v4;
    v9 = 2048;
    v10 = v3;
    v11 = 2048;
    v12 = v5;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fImsPrefs[kDataContextBB] = %lu fImsPrefs[kDataContextIWLAN] = %lu fInCallImsPref = %lu fIsSatelliteSystem = %s", &v7, 0x2Au);
  }
}

void sub_1002D036C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D03A4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1002D03E0(unsigned int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v15 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v15 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a1;
  v8 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(v7, v8, v9);
  __p = &v15;
  v17 = "first";
  sub_10000F688(&__p, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v19 = a1[1];
  sub_100C1CC08(&v19, &__p);
  ctu::rest::detail::write_enum_string_value();
  if (v18 < 0)
  {
    operator delete(__p);
  }

  __p = &v15;
  v17 = "second";
  sub_10000F688(&__p, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v10 = v15;
  *a2 = v15;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v15);
}

void sub_1002D057C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_1002D0660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  ctu::OsLogContext::~OsLogContext(&a12);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void sub_1002D07C4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setConn:?];
  (*(*(a1 + 40) + 16))();
}

void sub_1002D0924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D0970(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002D098C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1002D0A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void sub_1002D0B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

void sub_1002D0CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100004A34(v16);

  _Unwind_Resume(a1);
}

uint64_t sub_1002D0D1C(uint64_t result, uint64_t a2)
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

void sub_1002D0D38(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1002D0E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void sub_1002D0F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void sub_1002D103C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void *sub_1002D10A8(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002D10E8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1002D11C0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002D120C(dispatch_object_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, dispatch_object_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a5;
  switch(a5)
  {
    case 0:
      v46 = a1[1];
      v172 = *a1;
      v173 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a4)
      {
        dispatch_retain(*a4);
      }

      sub_1002D28B0(&v174);
    case 1:
      v47 = a1[1];
      v170 = *a1;
      v171 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a4)
      {
        dispatch_retain(*a4);
      }

      sub_1002D29EC(&v174);
    case 2:
      v42 = a1[1];
      v168 = *a1;
      v169 = v42;
      if (v42)
      {
        atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a4)
      {
        dispatch_retain(*a4);
      }

      sub_1002D2B28(&v174);
    case 3:
      v43 = a1[1];
      v166 = *a1;
      v167 = v43;
      if (v43)
      {
        atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
      }

      v165 = *a4;
      if (v165)
      {
        dispatch_retain(v165);
      }

      sub_1002D2C64(&v174);
    case 4:
      v39 = a1[1];
      v163 = *a1;
      v164 = v39;
      if (v39)
      {
        atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a4)
      {
        dispatch_retain(*a4);
      }

      sub_1002D2DB8(&v174);
    case 5:
      v51 = a1[1];
      v161 = *a1;
      v162 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a4)
      {
        dispatch_retain(*a4);
      }

      sub_1002D2EF4(&v174);
    case 6:
      v52 = a1[1];
      v159 = *a1;
      v160 = v52;
      if (v52)
      {
        atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a4)
      {
        dispatch_retain(*a4);
      }

      sub_1002D3030(&v174);
    case 7:
      v44 = a1[1];
      v155 = *a1;
      v156 = v44;
      if (v44)
      {
        atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
      }

      v45 = *a4;
      v154 = v45;
      if (v45)
      {
        dispatch_retain(v45);
      }

      sub_1002D2C64(&v174);
    case 8:
      v57 = a1[1];
      v152 = *a1;
      v153 = v57;
      if (v57)
      {
        atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
      }

      v58 = *a4;
      v151 = v58;
      if (v58)
      {
        dispatch_retain(v58);
      }

      sub_1002D2C64(&v174);
    case 9:
      v40 = a1[1];
      v149 = *a1;
      v150 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
      }

      v41 = *a4;
      v148 = v41;
      if (v41)
      {
        dispatch_retain(v41);
      }

      sub_1002D316C(&v174);
    case 10:
      v55 = a1[1];
      v146 = *a1;
      v147 = v55;
      if (v55)
      {
        atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
      }

      v56 = *a4;
      v145 = v56;
      if (v56)
      {
        dispatch_retain(v56);
      }

      sub_1002D2C64(&v174);
    case 11:
      v37 = a1[1];
      v143 = *a1;
      v144 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
      }

      v38 = *a4;
      v142 = v38;
      if (v38)
      {
        dispatch_retain(v38);
      }

      sub_1002D2C64(&v174);
    case 12:
    case 13:
      v10 = a1[1];
      v140 = *a1;
      v141 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *a4;
      object = v11;
      if (v11)
      {
        dispatch_retain(v11);
      }

      sub_1002D2C64(&v174);
    case 14:
      v35 = a1[1];
      v137 = *a1;
      v138 = v35;
      if (v35)
      {
        atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
      }

      v36 = *a4;
      v136 = v36;
      if (v36)
      {
        dispatch_retain(v36);
      }

      sub_1002D2C64(&v174);
    case 15:
      v53 = a1[1];
      v134 = *a1;
      v135 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
      }

      v54 = *a4;
      v133 = v54;
      if (v54)
      {
        dispatch_retain(v54);
      }

      sub_1002D2C64(&v174);
    case 16:
      v29 = a1[1];
      v131 = *a1;
      v132 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      v30 = *a4;
      v130 = v30;
      if (v30)
      {
        dispatch_retain(v30);
      }

      sub_1002D32A8(&v174);
    case 17:
    case 26:
      v12 = a1[1];
      v128 = *a1;
      v129 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *a4;
      v127 = v13;
      if (v13)
      {
        dispatch_retain(v13);
      }

      sub_1002D33E4(&v174);
    case 18:
      v27 = a1[1];
      v125 = *a1;
      v126 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = *a4;
      v124 = v28;
      if (v28)
      {
        dispatch_retain(v28);
      }

      sub_1002D3520(&v174);
    case 19:
      v63 = a1[1];
      v119 = *a1;
      v120 = v63;
      if (v63)
      {
        atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
      }

      v64 = *a4;
      v118 = v64;
      if (v64)
      {
        dispatch_retain(v64);
      }

      sub_1002D3798(&v174);
    case 20:
      v65 = a1[1];
      v116 = *a1;
      v117 = v65;
      if (v65)
      {
        atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
      }

      v66 = *a4;
      v115 = v66;
      if (v66)
      {
        dispatch_retain(v66);
      }

      sub_1002D38D4(&v174);
    case 21:
      v75 = a1[1];
      v113 = *a1;
      v114 = v75;
      if (v75)
      {
        atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
      }

      v76 = *a4;
      v112 = v76;
      if (v76)
      {
        dispatch_retain(v76);
      }

      sub_1002D3A10(&v174);
    case 22:
      v85 = a1[1];
      v122 = *a1;
      v123 = v85;
      if (v85)
      {
        atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
      }

      v86 = *a4;
      v121 = v86;
      if (v86)
      {
        dispatch_retain(v86);
      }

      sub_1002D365C(&v174);
    case 23:
      v50 = a1[1];
      v157 = *a1;
      v158 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
      }

      if (*a4)
      {
        dispatch_retain(*a4);
      }

      sub_1002D3030(&v174);
    case 24:
      v48 = a1[1];
      v110 = *a1;
      v111 = v48;
      if (v48)
      {
        atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
      }

      v49 = *a4;
      v109 = v49;
      if (v49)
      {
        dispatch_retain(v49);
      }

      sub_10057B7D8(&v174);
    case 25:
      v19 = a1[1];
      v107 = *a1;
      v108 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      v20 = *a4;
      v106 = v20;
      if (v20)
      {
        dispatch_retain(v20);
      }

      sub_1002D3B4C(&v174);
    case 27:
      v21 = a1[1];
      v104 = *a1;
      v105 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      v22 = *a4;
      v103 = v22;
      if (v22)
      {
        dispatch_retain(v22);
      }

      sub_1002D3C88(&v174);
    case 28:
      v77 = a1[1];
      v101[1] = *a1;
      v102 = v77;
      if (v77)
      {
        atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
      }

      v78 = *a4;
      v101[0] = v78;
      if (v78)
      {
        dispatch_retain(v78);
      }

      sub_100115D60(a2, a3, v101, 28, &v174);
      v79 = v175;
      if (v174)
      {
        v80 = v174 + 64;
      }

      else
      {
        v80 = 0;
      }

      *a6 = v80;
      a6[1] = v79;
      v174 = 0;
      v175 = 0;
      if (v101[0])
      {
        dispatch_release(v101[0]);
      }

      v18 = v102;
      if (!v102)
      {
        return;
      }

      goto LABEL_36;
    case 29:
      v81 = a1[1];
      v99[1] = *a1;
      v100 = v81;
      if (v81)
      {
        atomic_fetch_add_explicit((v81 + 8), 1uLL, memory_order_relaxed);
      }

      v82 = *a4;
      v99[0] = v82;
      if (v82)
      {
        dispatch_retain(v82);
      }

      sub_100115D60(a2, a3, v99, 29, &v174);
      v83 = v175;
      if (v174)
      {
        v84 = v174 + 64;
      }

      else
      {
        v84 = 0;
      }

      *a6 = v84;
      a6[1] = v83;
      v174 = 0;
      v175 = 0;
      if (v99[0])
      {
        dispatch_release(v99[0]);
      }

      v18 = v100;
      if (!v100)
      {
        return;
      }

      goto LABEL_36;
    case 30:
      v67 = a1[1];
      v97[1] = *a1;
      v98 = v67;
      if (v67)
      {
        atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
      }

      v68 = *a4;
      v97[0] = v68;
      if (v68)
      {
        dispatch_retain(v68);
      }

      sub_100115D60(a2, a3, v97, 30, &v174);
      v69 = v175;
      if (v174)
      {
        v70 = v174 + 64;
      }

      else
      {
        v70 = 0;
      }

      *a6 = v70;
      a6[1] = v69;
      v174 = 0;
      v175 = 0;
      if (v97[0])
      {
        dispatch_release(v97[0]);
      }

      v18 = v98;
      if (!v98)
      {
        return;
      }

      goto LABEL_36;
    case 31:
      v59 = a1[1];
      v95[1] = *a1;
      v96 = v59;
      if (v59)
      {
        atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
      }

      v60 = *a4;
      v95[0] = v60;
      if (v60)
      {
        dispatch_retain(v60);
      }

      sub_100115D60(a2, a3, v95, 31, &v174);
      v61 = v175;
      if (v174)
      {
        v62 = v174 + 64;
      }

      else
      {
        v62 = 0;
      }

      *a6 = v62;
      a6[1] = v61;
      v174 = 0;
      v175 = 0;
      if (v95[0])
      {
        dispatch_release(v95[0]);
      }

      v18 = v96;
      if (!v96)
      {
        return;
      }

      goto LABEL_36;
    case 32:
      v71 = a1[1];
      v93[1] = *a1;
      v94 = v71;
      if (v71)
      {
        atomic_fetch_add_explicit((v71 + 8), 1uLL, memory_order_relaxed);
      }

      v72 = *a4;
      v93[0] = v72;
      if (v72)
      {
        dispatch_retain(v72);
      }

      sub_100115D60(a2, a3, v93, 32, &v174);
      v73 = v175;
      if (v174)
      {
        v74 = v174 + 64;
      }

      else
      {
        v74 = 0;
      }

      *a6 = v74;
      a6[1] = v73;
      v174 = 0;
      v175 = 0;
      if (v93[0])
      {
        dispatch_release(v93[0]);
      }

      v18 = v94;
      if (!v94)
      {
        return;
      }

      goto LABEL_36;
    case 33:
      v31 = a1[1];
      v91[1] = *a1;
      v92 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
      }

      v32 = *a4;
      v91[0] = v32;
      if (v32)
      {
        dispatch_retain(v32);
      }

      sub_100115D60(a2, a3, v91, 33, &v174);
      v33 = v175;
      if (v174)
      {
        v34 = v174 + 64;
      }

      else
      {
        v34 = 0;
      }

      *a6 = v34;
      a6[1] = v33;
      v174 = 0;
      v175 = 0;
      if (v91[0])
      {
        dispatch_release(v91[0]);
      }

      v18 = v92;
      if (!v92)
      {
        return;
      }

      goto LABEL_36;
    case 34:
      v23 = a1[1];
      v89[1] = *a1;
      v90 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      v24 = *a4;
      v89[0] = v24;
      if (v24)
      {
        dispatch_retain(v24);
      }

      sub_100115D60(a2, a3, v89, 34, &v174);
      v25 = v175;
      if (v174)
      {
        v26 = v174 + 64;
      }

      else
      {
        v26 = 0;
      }

      *a6 = v26;
      a6[1] = v25;
      v174 = 0;
      v175 = 0;
      if (v89[0])
      {
        dispatch_release(v89[0]);
      }

      v18 = v90;
      if (!v90)
      {
        return;
      }

      goto LABEL_36;
    case 35:
      v14 = a1[1];
      v87[1] = *a1;
      v88 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *a4;
      v87[0] = v15;
      if (v15)
      {
        dispatch_retain(v15);
      }

      sub_100115D60(a2, a3, v87, 35, &v174);
      v16 = v175;
      if (v174)
      {
        v17 = v174 + 64;
      }

      else
      {
        v17 = 0;
      }

      *a6 = v17;
      a6[1] = v16;
      v174 = 0;
      v175 = 0;
      if (v87[0])
      {
        dispatch_release(v87[0]);
      }

      v18 = v88;
      if (!v88)
      {
        return;
      }

LABEL_36:
      sub_100004A34(v18);
      return;
    case 36:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_101769CA0();
      }

      __TUAssertTrigger("false");
      goto LABEL_26;
    default:
LABEL_26:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_101769D40(v6);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_101769DC0();
      }

      __TUAssertTrigger("false");
      *a6 = 0;
      a6[1] = 0;
      return;
  }
}

void sub_1002D24F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, dispatch_object_t a9, uint64_t a10, uint64_t a11, dispatch_object_t a12, uint64_t a13, uint64_t a14, dispatch_object_t a15, uint64_t a16, uint64_t a17, dispatch_object_t a18, uint64_t a19, uint64_t a20, dispatch_object_t a21, uint64_t a22, uint64_t a23, dispatch_object_t a24, uint64_t a25, uint64_t a26, dispatch_object_t a27, uint64_t a28, uint64_t a29, dispatch_object_t a30, uint64_t a31, uint64_t a32, dispatch_object_t a33, uint64_t a34, uint64_t a35, dispatch_object_t a36, uint64_t a37, uint64_t a38, dispatch_object_t a39, uint64_t a40, uint64_t a41, dispatch_object_t a42, uint64_t a43, uint64_t a44, dispatch_object_t a45, uint64_t a46, uint64_t a47, dispatch_object_t a48, uint64_t a49, uint64_t a50, NSObject *object, uint64_t a52, std::__shared_weak_count *a53)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a53)
  {
    sub_100004A34(a53);
  }

  _Unwind_Resume(a1);
}

void sub_1002D2894(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, dispatch_object_t object, uint64_t a58, uint64_t a59)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (!a59)
  {
    JUMPOUT(0x1002D288CLL);
  }

  JUMPOUT(0x1002D2888);
}

void sub_1002D28B0(void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D29A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D29EC(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D2AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D2B28(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D2C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D2C64(void *a8@<X8>)
{
  *a8 = 0;
  a8[1] = 0;
  operator new();
}

void sub_1002D2D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D2DB8(void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D2EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D2EF4(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D2FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3030(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D3124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D316C(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D3260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D32A8(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D339C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D33E4(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D34D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3520(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D3614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D365C(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D3750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3798(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D388C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D38D4(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D39C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3A10(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D3B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3B4C(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D3C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3C88(void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002D3D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D3E54(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D3F28);
  __cxa_rethrow();
}

void sub_1002D3E94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D3EE8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D3F28(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D3FD4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D40A8);
  __cxa_rethrow();
}

void sub_1002D4014(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D4068(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D40A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D4154(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D4228);
  __cxa_rethrow();
}

void sub_1002D4194(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D41E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D4228(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D42D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D43A8);
  __cxa_rethrow();
}

void sub_1002D4314(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D4368(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D43A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D4454(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D4528);
  __cxa_rethrow();
}

void sub_1002D4494(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D44E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D4528(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D45D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D46A8);
  __cxa_rethrow();
}

void sub_1002D4614(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D4668(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D46A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D4754(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D4828);
  __cxa_rethrow();
}

void sub_1002D4794(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D47E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D4828(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D48D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D49A8);
  __cxa_rethrow();
}

void sub_1002D4914(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D4968(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D49A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D4A54(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D4B28);
  __cxa_rethrow();
}

void sub_1002D4A94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D4AE8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D4B28(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D4BD4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D4CA8);
  __cxa_rethrow();
}

void sub_1002D4C14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D4C68(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D4CA8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D4D54(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D4E28);
  __cxa_rethrow();
}

void sub_1002D4D94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D4DE8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D4E28(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D4ED4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D4FA8);
  __cxa_rethrow();
}

void sub_1002D4F14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D4F68(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D4FA8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D5054(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D5128);
  __cxa_rethrow();
}

void sub_1002D5094(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D50E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D5128(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D51D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D52A8);
  __cxa_rethrow();
}

void sub_1002D5214(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D5268(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D52A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D5354(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D5428);
  __cxa_rethrow();
}

void sub_1002D5394(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D53E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D5428(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D54D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D55A8);
  __cxa_rethrow();
}

void sub_1002D5514(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D5568(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D55A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002D5654(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_1002D5728);
  __cxa_rethrow();
}

void sub_1002D5694(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D56E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D5728(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

BOOL sub_1002D57B4(uint64_t a1, uint64_t a2, std::string *a3)
{
  v4 = sub_10005D028();
  std::operator+<char>();
  v5 = sub_1002D5BC4(v4, &__p, a3);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  return v5;
}

void sub_1002D582C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D5848(uint64_t a1, std::string::size_type a2, uint64_t a3)
{
  sub_1002D5C7C();
  v5 = qword_101FBA1C0;
  if (os_log_type_enabled(qword_101FBA1C0, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v6;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting property %s to %s", &__p, 0x16u);
  }

  v8 = sub_10005D028();
  std::operator+<char>();
  sub_1002D5CC0(v8, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1002D5960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002D5984(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = sub_10005D028();
  std::operator+<char>();
  v5 = sub_1002D5DB8(v4, &__p, a3);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  return v5;
}

void sub_1002D59FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D5A18(uint64_t a1, uint64_t *a2, int *a3)
{
  sub_1002D5C7C();
  v5 = qword_101FBA1C0;
  if (os_log_type_enabled(qword_101FBA1C0, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = *a3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v6;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting property %s to %d", &__p, 0x12u);
  }

  v8 = sub_10005D028();
  std::operator+<char>();
  sub_1002D5E88(v8, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1002D5B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D5B48(uint64_t a1, uint64_t a2)
{
  v2 = sub_10005D028();
  std::operator+<char>();
  sub_10033220C(v2, &__p);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1002D5BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002D5BC4(uint64_t a1, char *a2, std::string *a3)
{
  std::mutex::lock(&stru_101FB1BC0);
  memset(&__str, 0, sizeof(__str));
  v6 = sub_10005D1B0(a1, a2, &__str);
  if (v6)
  {
    std::string::operator=(a3, &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(&stru_101FB1BC0);
  return v6;
}

void sub_1002D5C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(&stru_101FB1BC0);
  _Unwind_Resume(a1);
}

void sub_1002D5C7C()
{
  if ((atomic_load_explicit(byte_101FBA1B0, memory_order_acquire) & 1) == 0)
  {
    sub_101769E60();
  }

  if (qword_101FBA1A8 != -1)
  {
    sub_101769EB4();
  }
}

uint64_t sub_1002D5CC0(uint64_t **a1, std::string *this, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v5 = sub_10033238C(a1, this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1002D5D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D5D58(id a1)
{
  v1 = kCtLoggingSystemName;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(v3, v1, LogGroupName);
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v3);
}

BOOL sub_1002D5DB8(uint64_t a1, char *a2, _DWORD *a3)
{
  std::mutex::lock(&stru_101FB1BC0);
  memset(&__p, 0, sizeof(__p));
  v6 = sub_10005D1B0(a1, a2, &__p);
  if (v6)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *a3 = strtoll(p_p, 0, 16);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(&stru_101FB1BC0);
  return v6;
}

void sub_1002D5E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(&stru_101FB1BC0);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D5E88(uint64_t **a1, std::string *a2, _DWORD *a3)
{
  *__str = 0u;
  v11 = 0u;
  snprintf(__str, 0x20uLL, "0x%x", *a3);
  v5 = strlen(__str);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memcpy(&__dst, __str, v5);
  }

  __dst.__r_.__value_.__s.__data_[v6] = 0;
  v7 = sub_10033238C(a1, a2, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1002D5FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002D5FD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.Bootstrap.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.Bootstrap.2";
  }

  v14 = "Bootstrap.X";
  if (v13 == 2)
  {
    v14 = "Bootstrap.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.Bootstrap.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "Bootstrap.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E3CD08, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E3C2A8;
  *(a1 + 64) = off_101E3C808;
  *(a1 + 72) = off_101E3CAA8;
  *(a1 + 80) = off_101E3CC90;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  return a1;
}

void sub_1002D616C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_1002D6198(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 56)) = a2[11];
  a1[8] = a2[12];
  a1[9] = off_101E3CAA8;
  a1[10] = a2[13];
  v5 = a1[57];
  a1[57] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v6 = a1[57];
    a1[57] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  sub_10096807C(a1, a2 + 1);
}

void sub_1002D6340(uint64_t *a1)
{
  sub_1002D6198(a1, off_101E3CD00);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1002D6370(uint64_t a1)
{
  sub_1002D6198((a1 - 64), off_101E3CD00);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1002D63A4(uint64_t a1)
{
  sub_1002D6198((a1 - 72), off_101E3CD00);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1002D63D8(uint64_t a1)
{
  sub_1002D6198((a1 - 80), off_101E3CD00);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1002D640C(uint64_t *a1)
{
  sub_1002D6198(a1, off_101E3CD00);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

uint64_t sub_1002D6490(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "activateWithNoSettingsTrigger";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: start", &v5, 0xCu);
  }

  v3 = (*(**(a1 + 216) + 496))(*(a1 + 216));
  if (v3)
  {
    sub_1002D6580(a1, "Bootstrap delay for no settings");
  }

  return v3;
}

void sub_1002D6580(uint64_t a1, const char *a2)
{
  if (!*(a1 + 456))
  {
    v4 = *(a1 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "createPdpActivationTimer";
      *&buf[12] = 2080;
      *&buf[14] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: defer bootstrap activation for - %s", buf, 0x16u);
    }

    sub_100004AA0(buf, (a1 + 24));
    v6 = *buf;
    v5 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v5);
    }

    Registry::getTimerService(buf, *(a1 + 88));
    v7 = *buf;
    v8 = strlen(a2);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    v19 = v8;
    if (v8)
    {
      memcpy(&__dst, a2, v8);
    }

    *(&__dst + v9) = 0;
    v10 = *(a1 + 40);
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_1002D6EF0;
    aBlock[3] = &unk_101E3CD70;
    aBlock[4] = a1;
    aBlock[5] = v6;
    v15 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = _Block_copy(aBlock);
    sub_100D23364(v7, &__dst, 0, 120000000, &object, &v16);
    v11 = v20;
    v20 = 0;
    v12 = *(a1 + 456);
    *(a1 + 456) = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
      v13 = v20;
      v20 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    if (v16)
    {
      _Block_release(v16);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v19 < 0)
    {
      operator delete(__dst);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_1002D6860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002D68E8(uint64_t a1, _DWORD *a2)
{
  if ((*(**(a1 + 216) + 496))(*(a1 + 216)))
  {
    *a2 = 0;
  }

  return 1;
}

uint64_t sub_1002D6944(uint64_t a1, _DWORD *a2)
{
  if ((*(**(a1 + 152) + 496))(*(a1 + 152)))
  {
    *a2 = 0;
  }

  return 1;
}

void sub_1002D69A0(uint64_t a1, _BOOL8 a2, _BOOL8 a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *(a1 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asStringBool(v4);
    v8 = asStringBool(v3);
    v9 = asString();
    v10 = *(a1 + 226);
    *v13 = 136316162;
    *&v13[4] = "checkActivateConnection";
    *&v13[12] = 2080;
    *&v13[14] = v7;
    v14 = 2080;
    v15 = v8;
    v16 = 2080;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: change = %s activate = %s state = %s fIsActivatingAccrossSimSwap = %d", v13, 0x30u);
  }

  if (*(a1 + 168) != 2)
  {
    goto LABEL_7;
  }

  sub_10096CA18(a1, 0, v13);
  v11 = *v13;
  if (*&v13[8])
  {
    sub_100004A34(*&v13[8]);
  }

  if (!v11)
  {
    v12 = *(a1 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 136315138;
      *&v13[4] = "checkActivateConnection";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: No Settings, cancelling activation", v13, 0xCu);
    }

    (*(*a1 + 1280))(a1, 1, 0, 0);
    (*(*a1 + 1272))(a1, 0);
  }

  else
  {
LABEL_7:
    sub_1009706D4(a1, v4, v3);
  }
}

BOOL sub_1002D6BEC(uint64_t a1)
{
  if (*(a1 + 464) == 1)
  {
    result = 0;
    *(a1 + 464) = 0;
  }

  else
  {
    result = sub_1002D6C44(a1);
    if (result)
    {
      sub_1002D6580(a1, "Bootstrap delay for failure");
      return 1;
    }
  }

  return result;
}

BOOL sub_1002D6C44(NSObject **a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_10008F1B0(a1, 0, v3);
  v1 = v3[0];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return v1 != 0;
}

uint64_t sub_1002D6C9C(PersonalitySpecificImpl *a1)
{
  if (!*(a1 + 57) || sub_1002D6C44(a1))
  {
    return 0;
  }

  v3 = *(a1 + 7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "shouldActivateOnObtainingDataSettingsTrigger";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: has deferred activate on settings trigger", &v5, 0xCu);
  }

  v4 = *(a1 + 57);
  *(a1 + 57) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return 1;
}

uint64_t sub_1002D6D8C(uint64_t result)
{
  if (*(result + 456))
  {
    v1 = result;
    result = sub_1002D6C44(result);
    if ((result & 1) == 0)
    {

      return sub_1002D6DDC(v1);
    }
  }

  return result;
}

uint64_t sub_1002D6DDC(void *a1)
{
  v2 = a1[7];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "activateDeferredActivate";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: activating deferred activate", &v5, 0xCu);
  }

  v3 = a1[57];
  a1[57] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return (*(*a1 + 168))(a1, "activating deferred activate as conditions have been met.", "CommCenter", 0, 0);
}

void sub_1002D6EF0(void *a1)
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
        v6 = *(v3 + 56);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315138;
          v9 = "createPdpActivationTimer_block_invoke";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: deferred bootstrap activation timer expiry, activate to fail", &v8, 0xCu);
        }

        *(v3 + 464) = 1;
        v7 = *(v3 + 456);
        *(v3 + 456) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        (*(*v3 + 168))(v3, "deferred bootstrap activation", "CommCenter", 0, 0);
      }

      sub_100004A34(v5);
    }
  }
}

void *sub_1002D7050(void *a1, uint64_t *a2, NSObject **a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = off_101E3DB18;
  a1[1] = v5;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *a3;
  a1[3] = *a3;
  if (v6)
  {
    dispatch_retain(v6);
  }

  a1[6] = 0;
  a1[5] = 0;
  a1[4] = a1 + 5;
  return a1;
}

uint64_t sub_1002D70CC(uint64_t result, int a2)
{
  v5 = a2;
  v2 = result + 40;
  v3 = *(result + 40);
  if (v3)
  {
    result += 32;
    v4 = v2;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v4 != v2 && *(v4 + 32) <= a2)
    {
      return sub_1002D749C(result, &v5);
    }
  }

  return result;
}

void sub_1002D7134(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v5 = *(a1 + 24);
  if (v5)
  {
    dispatch_retain(v5);
  }

  sub_10085B114(&v6);
}

void sub_1002D72A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1002D72D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = (a1 + 48);
  result = sub_1002D750C(v2 + 32, (a1 + 48), &unk_101802C98, &v4);
  if (result[5])
  {
    return (*(*(a1 + 32) + 16))();
  }

  return result;
}

BOOL sub_1002D7358(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  v2 = a1 + 40;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 == v2 || *(v5 + 32) > a2)
  {
LABEL_8:
    v5 = v2;
  }

  return v5 != v2;
}

void sub_1002D73A0(uint64_t a1)
{
  *a1 = off_101E3DB18;
  sub_10006EC28(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  TMKXPCServer.shutdown()();
}

void sub_1002D7414(uint64_t a1)
{
  *a1 = off_101E3DB18;
  sub_10006EC28(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  TMKXPCServer.shutdown()();

  operator delete();
}

uint64_t sub_1002D749C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1001FE8C8(a1, v4);
  return 1;
}

uint64_t *sub_1002D750C(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

id sub_1002D75E0(uint64_t a1)
{
  v1 = [NSURL URLWithString:a1];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [v2 openSensitiveURL:v1 withOptions:0];

  return v3;
}

uint64_t sub_1002D7740(uint64_t a1, void *a2)
{
  *a1 = &off_101E3DB90;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, "cdp.alert");
  sub_1002D7924(v4, "Cellular Data Plan Alert", QOS_CLASS_USER_INITIATED, &v11);
  ctu::OsLogContext::~OsLogContext(&v11);
  *a1 = off_101E3DC90;
  *(a1 + 48) = objc_alloc_init(CellularPlanUserNotificationDelegate);
  *(a1 + 56) = 0;
  *(a1 + 61) = 0;
  v5 = a2[1];
  *(a1 + 72) = *a2;
  *(a1 + 80) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "Cellular Data Plan Alert");
  v6 = *(a1 + 24);
  v8 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::RestModule::RestModule();
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_1002D789C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
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

  v21 = *(v18 + 80);
  if (v21)
  {
    sub_100004A34(v21);
  }

  ctu::OsLogLogger::~OsLogLogger((v18 + 40));
  sub_1000C0544(v19);
  _Unwind_Resume(a1);
}

void *sub_1002D7924(void *a1, const char *a2, dispatch_qos_class_t qos_class, const OsLogContext *a4)
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

void sub_1002D79C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D79E8(uint64_t a1)
{
  *a1 = off_101E3DC90;
  sub_1000D6F38(a1 + 104);
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1002D7A68(uint64_t a1)
{
  sub_1002D79E8(a1);

  operator delete();
}

void sub_1002D7AA0(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v4, *(a1 + 72));
  ctu::RestModule::connect();
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1002D7B30(a1 + 104, a1 + 88);
  v2 = [[DataActivationLaunchHelper alloc] initWithLogger:a1 + 40];
  v3 = *(a1 + 56);
  *(a1 + 56) = v2;
}

void sub_1002D7B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D7B30(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/frontmostapp");
  v5[0] = off_101E3DFD8;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1002D7BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1002D7C10(uint64_t a1)
{
  if ((*(a1 + 127) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 112))
    {
      return *(a1 + 160) != 0;
    }
  }

  else if (*(a1 + 127))
  {
    return *(a1 + 160) != 0;
  }

  return 0;
}

void sub_1002D7C3C(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1002D7CAC;
  v1[3] = &unk_101E26008;
  v1[4] = a1;
  sub_100076974((a1 + 8), v1);
}

const void **sub_1002D7CAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Show profile download failure alert", buf, 2u);
  }

  v37 = 0;
  ServiceMap = Registry::getServiceMap(*(v1 + 72));
  v4 = ServiceMap;
  v6 = v5;
  if (v5 < 0)
  {
    v7 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
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
  v10 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v4);
  v11 = 0;
  v13 = 1;
LABEL_11:
  v14 = kAlertDialogLocalizationTable;
  (*(*v12 + 16))(&v37, v12, kAlertDialogLocalizationTable, @"Data Plan Activation Failure", 1);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v36 = 0;
  v15 = Registry::getServiceMap(*(v1 + 72));
  v16 = v15;
  v17 = v5;
  if (v5 < 0)
  {
    v18 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v15);
  *buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, buf);
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
      goto LABEL_21;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_21:
  (*(*v23 + 16))(&v36, v23, v14, @"Your cellular data plan did not successfully activate.", 1);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  defaultButtonTitle = 0;
  v25 = Registry::getServiceMap(*(v1 + 72));
  v26 = v25;
  if (v5 < 0)
  {
    v27 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v5 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(v25);
  *buf = v5;
  v30 = sub_100009510(&v26[1].__m_.__sig, buf);
  if (v30)
  {
    v32 = v30[3];
    v31 = v30[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v26);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v31);
      v33 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v26);
  v31 = 0;
  v33 = 1;
LABEL_31:
  (*(*v32 + 16))(&defaultButtonTitle, v32, v14, @"OK", 1);
  if ((v33 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  *buf = 0;
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v37, v36, defaultButtonTitle, 0, 0, buf);
  sub_100005978(&defaultButtonTitle);
  sub_100005978(&v36);
  return sub_100005978(&v37);
}

void sub_1002D8018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_100005978(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

void sub_1002D8094(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1002D8104;
  v1[3] = &unk_101E26008;
  v1[4] = a1;
  sub_100076974((a1 + 8), v1);
}

const void **sub_1002D8104(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Show Cellular Plan New Plan Available Alert", buf, 2u);
  }

  v37 = 0;
  ServiceMap = Registry::getServiceMap(*(v1 + 72));
  v4 = ServiceMap;
  v6 = v5;
  if (v5 < 0)
  {
    v7 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
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
  v10 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v4);
  v11 = 0;
  v13 = 1;
LABEL_11:
  v14 = kAlertDialogLocalizationTable;
  (*(*v12 + 16))(&v37, v12, kAlertDialogLocalizationTable, @"Data Plan Updated", 1);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v36 = 0;
  v15 = Registry::getServiceMap(*(v1 + 72));
  v16 = v15;
  v17 = v5;
  if (v5 < 0)
  {
    v18 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v15);
  *buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, buf);
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
      goto LABEL_21;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_21:
  (*(*v23 + 16))(&v36, v23, v14, @"Your Cellular data plan has been successfully updated.", 1);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  defaultButtonTitle = 0;
  v25 = Registry::getServiceMap(*(v1 + 72));
  v26 = v25;
  if (v5 < 0)
  {
    v27 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v5 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(v25);
  *buf = v5;
  v30 = sub_100009510(&v26[1].__m_.__sig, buf);
  if (v30)
  {
    v32 = v30[3];
    v31 = v30[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v26);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v31);
      v33 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v26);
  v31 = 0;
  v33 = 1;
LABEL_31:
  (*(*v32 + 16))(&defaultButtonTitle, v32, v14, @"OK", 1);
  if ((v33 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  *buf = 0;
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v37, v36, defaultButtonTitle, 0, 0, buf);
  sub_100005978(&defaultButtonTitle);
  sub_100005978(&v36);
  return sub_100005978(&v37);
}

void sub_1002D8470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_100005978(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

void sub_1002D84EC(uint64_t a1, char a2, char a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1002D8564;
  v3[3] = &unk_101E3DD80;
  v3[4] = a1;
  v4 = a3;
  v5 = a2;
  sub_100076974((a1 + 8), v3);
}

const void **sub_1002D8564(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Showing Selection Changed Alert", buf, 2u);
  }

  v54 = 0;
  v55 = 0;
  ServiceMap = Registry::getServiceMap(*(v2 + 72));
  v5 = ServiceMap;
  v7 = v6;
  if (v6 < 0)
  {
    v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
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
  v11 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v14 = 1;
LABEL_11:
  v15 = kAlertDialogLocalizationTable;
  (*(*v13 + 16))(&v54, v13, kAlertDialogLocalizationTable, @"DEFAULT_SETTING_CHANGED_TITLE", 1);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (*(a1 + 40) != 1)
  {
    if (!*(a1 + 41))
    {
      goto LABEL_45;
    }

    v26 = Registry::getServiceMap(*(v2 + 72));
    v27 = v26;
    v28 = v6;
    if (v6 < 0)
    {
      v29 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v30 = 5381;
      do
      {
        v28 = v30;
        v31 = *v29++;
        v30 = (33 * v30) ^ v31;
      }

      while (v31);
    }

    std::mutex::lock(v26);
    *buf = v28;
    v32 = sub_100009510(&v27[1].__m_.__sig, buf);
    if (v32)
    {
      v33 = v32[3];
      v23 = v32[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v27);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
LABEL_39:
        (*(*v33 + 16))(&defaultButtonTitle, v33, v15, @"DATA_CHANGED", 1);
        goto LABEL_43;
      }
    }

    else
    {
      v33 = 0;
    }

    std::mutex::unlock(v27);
    v23 = 0;
    v25 = 1;
    goto LABEL_39;
  }

  if (*(a1 + 41))
  {
    v16 = Registry::getServiceMap(*(v2 + 72));
    v17 = v16;
    v18 = v6;
    if (v6 < 0)
    {
      v19 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    std::mutex::lock(v16);
    *buf = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, buf);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
LABEL_36:
        (*(*v24 + 16))(&defaultButtonTitle, v24, v15, @"VOICE_AND_DATA_CHANGED", 1);
        goto LABEL_43;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
    goto LABEL_36;
  }

  v34 = Registry::getServiceMap(*(v2 + 72));
  v35 = v34;
  v36 = v6;
  if (v6 < 0)
  {
    v37 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v38 = 5381;
    do
    {
      v36 = v38;
      v39 = *v37++;
      v38 = (33 * v38) ^ v39;
    }

    while (v39);
  }

  std::mutex::lock(v34);
  *buf = v36;
  v40 = sub_100009510(&v35[1].__m_.__sig, buf);
  if (!v40)
  {
    v41 = 0;
    goto LABEL_41;
  }

  v41 = v40[3];
  v23 = v40[4];
  if (!v23)
  {
LABEL_41:
    std::mutex::unlock(v35);
    v23 = 0;
    v25 = 1;
    goto LABEL_42;
  }

  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v35);
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v23);
  v25 = 0;
LABEL_42:
  (*(*v41 + 16))(&defaultButtonTitle, v41, v15, @"VOICE_CHANGED", 1);
LABEL_43:
  v42 = v55;
  v55 = defaultButtonTitle;
  *buf = v42;
  defaultButtonTitle = 0;
  sub_100005978(buf);
  sub_100005978(&defaultButtonTitle);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

LABEL_45:
  if (v55 && v54)
  {
    defaultButtonTitle = 0;
    v43 = Registry::getServiceMap(*(v2 + 72));
    v44 = v43;
    if (v6 < 0)
    {
      v45 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v46 = 5381;
      do
      {
        v6 = v46;
        v47 = *v45++;
        v46 = (33 * v46) ^ v47;
      }

      while (v47);
    }

    std::mutex::lock(v43);
    *buf = v6;
    v48 = sub_100009510(&v44[1].__m_.__sig, buf);
    if (v48)
    {
      v50 = v48[3];
      v49 = v48[4];
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v44);
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v49);
        v51 = 0;
LABEL_57:
        (*(*v50 + 16))(&defaultButtonTitle, v50, v15, @"OK", 1);
        if ((v51 & 1) == 0)
        {
          sub_100004A34(v49);
        }

        *buf = 0;
        CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v54, v55, defaultButtonTitle, 0, 0, buf);
        sub_100005978(&defaultButtonTitle);
        goto LABEL_60;
      }
    }

    else
    {
      v50 = 0;
    }

    std::mutex::unlock(v44);
    v49 = 0;
    v51 = 1;
    goto LABEL_57;
  }

  if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101769EC8();
  }

LABEL_60:
  sub_100005978(&v54);
  return sub_100005978(&v55);
}

void sub_1002D8AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, const void *);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  sub_100005978(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

void sub_1002D8B6C(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1002D8BE0;
  v2[3] = &unk_101E26058;
  v2[4] = a1;
  v3 = a2;
  sub_100076974((a1 + 8), v2);
}

const void **sub_1002D8BE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Install Failed Alert: %s", buf, 0xCu);
  }

  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(*(v2 + 72));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_11:
  if (*(a1 + 40) - 1 < 0x4B)
  {
    v14 = kAlertDialogLocalizationTable;
    (*(*v12 + 16))(&v18, v12, kAlertDialogLocalizationTable, @"CELLULARPLANERROR_FAILED_ACTION_TITLE", 1);
    v15 = v20;
    v20 = v18;
    *buf = v15;
    v18 = 0;
    sub_100005978(buf);
    sub_100005978(&v18);
    (*(*v12 + 16))(&v18, v12, v14, @"CELLULARPLANERROR_FAILED_ACTION_MESSAGE", 1);
    v16 = v18;
    *buf = v19;
    v18 = 0;
    v19 = v16;
    sub_100005978(buf);
    sub_100005978(&v18);
LABEL_13:
    *buf = 0;
    (*(*v12 + 16))(buf, v12, v14, @"OK", 1);
    v18 = 0;
    CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v20, v19, *buf, 0, 0, &v18);
    sub_100005978(buf);
    goto LABEL_14;
  }

  if (*(a1 + 40))
  {
    v14 = kAlertDialogLocalizationTable;
    goto LABEL_13;
  }

LABEL_14:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  sub_100005978(&v19);
  return sub_100005978(&v20);
}

void sub_1002D8EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, const void *);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  sub_100005978(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

const void **sub_1002D8F0C(uint64_t a1, char a2, const void **a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_1002D8FA0;
  v5[3] = &unk_101E3DDA0;
  v5[4] = a1;
  v7 = a2;
  sub_10005C7A4(&v6, a3);
  sub_100076974((a1 + 8), v5);
  return sub_100005978(&v6);
}

const void **sub_1002D8FA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Install Failed Alert: %s", buf, 0xCu);
  }

  v56 = 0;
  v57 = 0;
  ServiceMap = Registry::getServiceMap(*(v2 + 72));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_10:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_11:
  switch(*(a1 + 48))
  {
    case 0:
      goto LABEL_22;
    case 1:
    case 3:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xE:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x2F:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x38:
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0x3F:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4A:
      v14 = kAlertDialogLocalizationTable;
      (*(*v12 + 16))(&format, v12, kAlertDialogLocalizationTable, @"CELLULARPLANERROR_FAILED_ACTION_TITLE", 1);
      v15 = v57;
      v57 = format;
      *buf = v15;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      (*(*v12 + 16))(&format, v12, v14, @"CELLULARPLANERROR_FAILED_ACTION_MESSAGE", 1);
      goto LABEL_13;
    case 2:
      v36 = kAlertDialogLocalizationTable;
      (*(*v12 + 16))(&format, v12, kAlertDialogLocalizationTable, @"CELLULARPLANERROR_PARSE_TITLE", 1);
      v37 = v57;
      v57 = format;
      *buf = v37;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      (*(*v12 + 16))(&format, v12, v36, @"CELLULARPLANERROR_PARSE_MESSAGE", 1);
      goto LABEL_13;
    case 6:
      (*(*v12 + 16))(&format, v12, kAlertDialogLocalizationTable, @"CELLULARPLANERROR_INVALID_ARGUMENT_TITLE", 1);
      v42 = v57;
      v57 = format;
      *buf = v42;
      goto LABEL_14;
    case 0xD:
      v45 = kAlertDialogLocalizationTable;
      (*(*v12 + 16))(&format, v12, kAlertDialogLocalizationTable, @"CELLULARPLANERROR_BUSY_TITLE", 1);
      v46 = v57;
      v57 = format;
      *buf = v46;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      (*(*v12 + 16))(&format, v12, v45, @"CELLULARPLANERROR_BUSY_MESSAGE", 1);
      goto LABEL_13;
    case 0xF:
      v40 = kAlertDialogLocalizationTable;
      (*(*v12 + 16))(&format, v12, kAlertDialogLocalizationTable, @"CELLULARPLANERROR_DUPLICATE_FAUX_CARD_TITLE", 1);
      v41 = v57;
      v57 = format;
      *buf = v41;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      (*(*v12 + 16))(&format, v12, v40, @"CELLULARPLANERROR_DUPLICATE_FAUX_CARD_MESSAGE", 1);
      goto LABEL_13;
    case 0x19:
      v38 = kAlertDialogLocalizationTable;
      (*(*v12 + 16))(&format, v12, kAlertDialogLocalizationTable, @"CELLULARPLANERROR_INVALID_PPR_TITLE", 1);
      v39 = v57;
      v57 = format;
      *buf = v39;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      if (CFStringGetLength(*(a1 + 40)) >= 1)
      {
        format = 0;
        (*(*v12 + 16))(&format, v12, v38, @"CELLULARPLANERROR_INVALID_PPR_MESSAGE", 1);
        StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@%@", format, 0, *(a1 + 40), *(a1 + 40));
        goto LABEL_50;
      }

      (*(*v12 + 16))(&format, v12, v38, @"CELLULARPLANERROR_INVALID_PPR_MESSAGE_NO_CARRIER", 1);
      goto LABEL_13;
    case 0x1A:
      v43 = kAlertDialogLocalizationTable;
      (*(*v12 + 16))(&format, v12, kAlertDialogLocalizationTable, @"CELLULARPLANERROR_INVALID_FAUX_CARD_TITLE", 1);
      v44 = v57;
      v57 = format;
      *buf = v44;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      if (CFStringGetLength(*(a1 + 40)) >= 1)
      {
        format = 0;
        (*(*v12 + 16))(&format, v12, v43, @"CELLULARPLANERROR_INVALID_FAUX_CARD_MESSAGE", 1);
        StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, 0, *(a1 + 40));
        goto LABEL_50;
      }

      (*(*v12 + 16))(&format, v12, v43, @"CELLULARPLANERROR_INVALID_FAUX_CARD_MESSAGE_NO_CARRIER", 1);
      goto LABEL_13;
    case 0x22:
      if (CFStringGetLength(*(a1 + 40)) < 1)
      {
        v27 = kAlertDialogLocalizationTable;
        (*(*v12 + 16))(&format, v12, kAlertDialogLocalizationTable, @"CELLULARPLANERROR_ELIGIBILITY_CHECK_FAILED_TITLE_NO_CARRIER", 1);
        v53 = v57;
        v57 = format;
        *buf = v53;
        format = 0;
      }

      else
      {
        format = 0;
        v27 = kAlertDialogLocalizationTable;
        (*(*v12 + 16))(&format, v12, kAlertDialogLocalizationTable, @"CELLULARPLANERROR_ELIGIBILITY_CHECK_FAILED_TITLE", 1);
        v28 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, 0, *(a1 + 40));
        v29 = v57;
        v57 = v28;
        *buf = v29;
      }

      sub_100005978(buf);
      sub_100005978(&format);
      (*(*v12 + 16))(&format, v12, v27, @"CELLULARPLANERROR_ELIGIBILITY_CHECK_FAILED_MESSAGE", 1);
      goto LABEL_13;
    case 0x23:
      v34 = kAlertDialogLocalizationTable;
      (*(*v12 + 16))(&format, v12, kAlertDialogLocalizationTable, @"CELLULARPLANERROR_NO_ELIGIBLE_PROFILES_TITLE", 1);
      v35 = v57;
      v57 = format;
      *buf = v35;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      (*(*v12 + 16))(&format, v12, v34, @"CELLULARPLANERROR_NO_ELIGIBLE_PROFILES_MESSAGE", 1);
      goto LABEL_13;
    case 0x24:
      v20 = kAlertDialogLocalizationTable;
      (*(*v12 + 16))(&format, v12, kAlertDialogLocalizationTable, @"CELLULARPLANERROR_INVALID_SMDP_TITLE", 1);
      v21 = v57;
      v57 = format;
      *buf = v21;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      (*(*v12 + 16))(&format, v12, v20, @"CELLULARPLANERROR_INVALID_SMDP_MESSAGE", 1);
      goto LABEL_13;
    case 0x25:
      v32 = kCBMessageLocalizationTable;
      (*(*v12 + 40))(&format, v12, kCBMessageLocalizationTable, @"FAILED_TRANSFER_TITLE", @"FAILED_TRANSFER_TITLE");
      v33 = v57;
      v57 = format;
      *buf = v33;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      if (CFStringGetLength(*(a1 + 40)) >= 1)
      {
        format = 0;
        (*(*v12 + 40))(&format, v12, v32, @"FAILED_TRANSFER_INELIGIBLE_ACCOUNT_%@", @"FAILED_TRANSFER_INELIGIBLE_ACCOUNT_%@");
        StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, 0, *(a1 + 40));
        goto LABEL_50;
      }

      (*(*v12 + 40))(&format, v12, v32, @"FAILED_TRANSFER_INELIGIBLE_ACCOUNT_NO_CARRIER", @"FAILED_TRANSFER_INELIGIBLE_ACCOUNT_NO_CARRIER");
      goto LABEL_13;
    case 0x2A:
      v22 = kAlertDialogLocalizationTable;
      (*(*v12 + 16))(&format, v12, kAlertDialogLocalizationTable, @"CELLULARPLANERROR_PROFILE_UNAVAILABLE_ON_ALS_TITLE", 1);
      v23 = v57;
      v57 = format;
      *buf = v23;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      if (CFStringGetLength(*(a1 + 40)) >= 1)
      {
        format = 0;
        (*(*v12 + 16))(&format, v12, v22, @"CELLULARPLANERROR_PROFILE_UNAVAILABLE_ON_ALS_MESSAGE", 1);
        StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, 0, *(a1 + 40));
        goto LABEL_50;
      }

      (*(*v12 + 16))(&format, v12, v22, @"CELLULARPLANERROR_PROFILE_UNAVAILABLE_ON_ALS_MESSAGE_NO_CARRIER", 1);
      goto LABEL_13;
    case 0x34:
      v25 = kCBMessageLocalizationTable;
      (*(*v12 + 40))(&format, v12, kCBMessageLocalizationTable, @"FAILED_TRANSFER_TITLE", @"FAILED_TRANSFER_TITLE");
      v26 = v57;
      v57 = format;
      *buf = v26;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      if (CFStringGetLength(*(a1 + 40)) >= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_54;
    case 0x35:
      v25 = kCBMessageLocalizationTable;
      (*(*v12 + 40))(&format, v12, kCBMessageLocalizationTable, @"FAILED_TRANSFER_TITLE", @"FAILED_TRANSFER_TITLE");
      v47 = v57;
      v57 = format;
      *buf = v47;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      if (CFStringGetLength(*(a1 + 40)) >= 1)
      {
LABEL_29:
        format = 0;
        (*(*v12 + 40))(&format, v12, v25, @"FAILED_TRANSFER_TEMPORARY_FAILURE_%@", @"FAILED_TRANSFER_TEMPORARY_FAILURE_%@");
        StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, 0, *(a1 + 40));
        goto LABEL_50;
      }

LABEL_54:
      (*(*v12 + 40))(&format, v12, v25, @"FAILED_TRANSFER_TEMPORARY_FAILURE_NO_CARRIER", @"FAILED_TRANSFER_TEMPORARY_FAILURE_NO_CARRIER");
      goto LABEL_13;
    case 0x36:
      v48 = kCBMessageLocalizationTable;
      (*(*v12 + 40))(&format, v12, kCBMessageLocalizationTable, @"FAILED_TRANSFER_TITLE", @"FAILED_TRANSFER_TITLE");
      v49 = v57;
      v57 = format;
      *buf = v49;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      if (CFStringGetLength(*(a1 + 40)) >= 1)
      {
        format = 0;
        (*(*v12 + 40))(&format, v12, v48, @"FAILED_TRANSFER_PERMANENT_FAILURE_%@", @"FAILED_TRANSFER_PERMANENT_FAILURE_%@");
        StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, 0, *(a1 + 40));
        goto LABEL_50;
      }

      (*(*v12 + 40))(&format, v12, v48, @"FAILED_TRANSFER_PERMANENT_FAILURE_NO_CARRIER", @"FAILED_TRANSFER_PERMANENT_FAILURE_NO_CARRIER");
      goto LABEL_13;
    case 0x37:
      v50 = kCBMessageLocalizationTable;
      (*(*v12 + 40))(&format, v12, kCBMessageLocalizationTable, @"FAILED_TRANSFER_TITLE", @"FAILED_TRANSFER_TITLE");
      v51 = v57;
      v57 = format;
      *buf = v51;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      if (CFStringGetLength(*(a1 + 40)) < 1)
      {
        (*(*v12 + 40))(&format, v12, v50, @"FAILED_TRANSFER_BLOCKED_ACCOUNT_NO_CARRIER", @"FAILED_TRANSFER_BLOCKED_ACCOUNT_NO_CARRIER");
LABEL_13:
        *buf = v56;
        v56 = format;
LABEL_14:
        format = 0;
      }

      else
      {
        format = 0;
        (*(*v12 + 40))(&format, v12, v50, @"FAILED_TRANSFER_BLOCKED_ACCOUNT_%@", @"FAILED_TRANSFER_BLOCKED_ACCOUNT_%@");
        StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, 0, *(a1 + 40));
LABEL_50:
        v52 = v56;
        v56 = StringWithValidatedFormat;
        *buf = v52;
      }

      sub_100005978(buf);
      sub_100005978(&format);
LABEL_16:
      format = 0;
      (*(*v12 + 16))(&format, v12, kAlertDialogLocalizationTable, @"OK", 1);
      dictionary = 0;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        dictionary = Mutable;
        *buf = 0;
        sub_1000296E0(buf);
        Mutable = dictionary;
      }

      sub_1001768B8(Mutable, kCFUserNotificationAlertHeaderKey, v57);
      sub_1001768B8(dictionary, kCFUserNotificationAlertMessageKey, v56);
      sub_1001768B8(dictionary, kCFUserNotificationDefaultButtonTitleKey, format);
      sub_1002E0298(dictionary, SBUserNotificationPendInSetupIfNotAllowedKey, kCFBooleanTrue);
      *buf = 0;
      CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, buf, dictionary);
      v17 = *buf;
      if (*buf)
      {
        v18 = *(v2 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_101769EFC(v17, v18);
        }
      }

      sub_1000296E0(&dictionary);
      sub_100005978(&format);
LABEL_22:
      if ((v13 & 1) == 0)
      {
        sub_100004A34(v11);
      }

      sub_100005978(&v56);
      return sub_100005978(&v57);
    case 0x4B:
      v30 = kCBMessageLocalizationTable;
      (*(*v12 + 16))(&format, v12, kCBMessageLocalizationTable, @"FAILED_TRANSFER_NO_MORE_ESIMS_REGULATORY_TITLE", 1);
      v31 = v57;
      v57 = format;
      *buf = v31;
      format = 0;
      sub_100005978(buf);
      sub_100005978(&format);
      (*(*v12 + 16))(&format, v12, v30, @"FAILED_TRANSFER_NO_MORE_ESIMS_REGULATORY_MESSAGE", 1);
      goto LABEL_13;
    default:
      goto LABEL_16;
  }
}

void sub_1002DA278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, const void *);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  sub_100005978(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

void sub_1002DA3D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I reset alerts to false", v3, 2u);
  }

  *(a1 + 68) = 0;
  *(a1 + 64) = 0;
}

void sub_1002DA43C(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1002DA4AC;
  v1[3] = &unk_101E26008;
  v1[4] = a1;
  sub_100076974((a1 + 8), v1);
}

const void **sub_1002DA4B4(uint64_t a1, char a2, const void **a3, const void **a4)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1002DA568;
  v7[3] = &unk_101E3DDD0;
  v7[4] = a1;
  v10 = a2;
  sub_10005C7A4(&v8, a3);
  sub_10005C7A4(&v9, a4);
  sub_100076974((a1 + 8), v7);
  sub_100005978(&v9);
  return sub_100005978(&v8);
}

const void **sub_1002DA568(uint64_t a1)
{
  v2 = *(a1 + 32);
  v92 = 0;
  ServiceMap = Registry::getServiceMap(*(v2 + 72));
  v4 = ServiceMap;
  v6 = v5;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v7 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
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
  v93 = v6;
  v10 = sub_100009510(&v4[1].__m_.__sig, &v93);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v4);
  v11 = 0;
  v13 = 1;
LABEL_9:
  v14 = kAlertDialogLocalizationTable;
  (*(*v12 + 16))(&v92, v12, kAlertDialogLocalizationTable, @"Data Status Changed", 1);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v91 = 0;
  v15 = Registry::getServiceMap(*(v2 + 72));
  v16 = v15;
  v17 = v5;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v18 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v15);
  v93 = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, &v93);
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
      goto LABEL_19;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_19:
  (*(*v23 + 16))(&v91, v23, v14, @"Your plan has been updated to have high speed data.", 1);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  v90 = 0;
  v25 = Registry::getServiceMap(*(v2 + 72));
  v26 = v25;
  v27 = v5;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v28 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v29 = 5381;
    do
    {
      v27 = v29;
      v30 = *v28++;
      v29 = (33 * v29) ^ v30;
    }

    while (v30);
  }

  std::mutex::lock(v25);
  v93 = v27;
  v31 = sub_100009510(&v26[1].__m_.__sig, &v93);
  if (v31)
  {
    v33 = v31[3];
    v32 = v31[4];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v26);
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v32);
      v34 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v33 = 0;
  }

  std::mutex::unlock(v26);
  v32 = 0;
  v34 = 1;
LABEL_29:
  (*(*v33 + 16))(&v90, v33, v14, @"Cellular Data Plan Usage", 1);
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  v89 = 0;
  v35 = Registry::getServiceMap(*(v2 + 72));
  v36 = v35;
  v37 = v5;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v38 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v39 = 5381;
    do
    {
      v37 = v39;
      v40 = *v38++;
      v39 = (33 * v39) ^ v40;
    }

    while (v40);
  }

  std::mutex::lock(v35);
  v93 = v37;
  v41 = sub_100009510(&v36[1].__m_.__sig, &v93);
  if (v41)
  {
    v43 = v41[3];
    v42 = v41[4];
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v36);
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v42);
      v44 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    v43 = 0;
  }

  std::mutex::unlock(v36);
  v42 = 0;
  v44 = 1;
LABEL_39:
  (*(*v43 + 16))(&v89, v43, v14, @"No high speed data remains on your current plan. You can continue with low speed data or add more high speed data in Settings.", 1);
  if ((v44 & 1) == 0)
  {
    sub_100004A34(v42);
  }

  v88 = 0;
  v45 = Registry::getServiceMap(*(v2 + 72));
  v46 = v45;
  v47 = v5;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v48 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v49 = 5381;
    do
    {
      v47 = v49;
      v50 = *v48++;
      v49 = (33 * v49) ^ v50;
    }

    while (v50);
  }

  std::mutex::lock(v45);
  v93 = v47;
  v51 = sub_100009510(&v46[1].__m_.__sig, &v93);
  if (v51)
  {
    v53 = v51[3];
    v52 = v51[4];
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v46);
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v52);
      v54 = 0;
      goto LABEL_49;
    }
  }

  else
  {
    v53 = 0;
  }

  std::mutex::unlock(v46);
  v52 = 0;
  v54 = 1;
LABEL_49:
  (*(*v53 + 16))(&v88, v53, v14, @"Settings", 1);
  if ((v54 & 1) == 0)
  {
    sub_100004A34(v52);
  }

  v87 = 0;
  v55 = Registry::getServiceMap(*(v2 + 72));
  v56 = v55;
  v57 = v5;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v58 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v59 = 5381;
    do
    {
      v57 = v59;
      v60 = *v58++;
      v59 = (33 * v59) ^ v60;
    }

    while (v60);
  }

  std::mutex::lock(v55);
  v93 = v57;
  v61 = sub_100009510(&v56[1].__m_.__sig, &v93);
  if (v61)
  {
    v63 = v61[3];
    v62 = v61[4];
    if (v62)
    {
      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v56);
      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v62);
      v64 = 0;
      goto LABEL_59;
    }
  }

  else
  {
    v63 = 0;
  }

  std::mutex::unlock(v56);
  v62 = 0;
  v64 = 1;
LABEL_59:
  (*(*v63 + 16))(&v87, v63, v14, @"Later", 1);
  if ((v64 & 1) == 0)
  {
    sub_100004A34(v62);
  }

  v86 = 0;
  v65 = Registry::getServiceMap(*(v2 + 72));
  v66 = v65;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v67 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v68 = 5381;
    do
    {
      v5 = v68;
      v69 = *v67++;
      v68 = (33 * v68) ^ v69;
    }

    while (v69);
  }

  std::mutex::lock(v65);
  v93 = v5;
  v70 = sub_100009510(&v66[1].__m_.__sig, &v93);
  if (v70)
  {
    v72 = v70[3];
    v71 = v70[4];
    if (v71)
    {
      atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v66);
      atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v71);
      v73 = 0;
      goto LABEL_69;
    }
  }

  else
  {
    v72 = 0;
  }

  std::mutex::unlock(v66);
  v71 = 0;
  v73 = 1;
LABEL_69:
  (*(*v72 + 16))(&v86, v72, v14, @"OK", 1);
  if ((v73 & 1) == 0)
  {
    sub_100004A34(v71);
  }

  if (*(a1 + 56) == 1)
  {
    v74 = &v90;
    v75 = &v89;
    v76 = &v87;
    v77 = v88;
  }

  else
  {
    v77 = 0;
    v74 = &v92;
    v75 = &v91;
    v76 = &v86;
  }

  v78 = *v74;
  v79 = *v75;
  v80 = *v76;
  v93 = 0;
  v81 = *(v2 + 40);
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "#I showing throttle transition alert", buf, 2u);
  }

  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v78, v79, v80, v77, 0, &v93);
  if (*(a1 + 56) == 1 && v93 == 1 && *(a1 + 40))
  {
    v82 = *(a1 + 48);
    v94[0] = @"Iccid";
    v94[1] = @"FlowTypeKey";
    v95[0] = v82;
    v95[1] = &off_101F91038;
    v83 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:2];
    [*(v2 + 56) launchWithServiceName:@"com.apple.SIMSetupUIService" viewControllerClassName:@"TSSIMSetupSupportViewController" options:v83];
  }

  sub_100005978(&v86);
  sub_100005978(&v87);
  sub_100005978(&v88);
  sub_100005978(&v89);
  sub_100005978(&v90);
  sub_100005978(&v91);
  return sub_100005978(&v92);
}

void sub_1002DAD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va6, a7);
  va_start(va5, a7);
  va_start(va4, a7);
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v11 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v13 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v15 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v17 = va_arg(va5, const void *);
  va_copy(va6, va5);
  v19 = va_arg(va6, const void *);

  sub_100005978(va);
  sub_100005978(va1);
  sub_100005978(va2);
  sub_100005978(va3);
  sub_100005978(va4);
  sub_100005978(va5);
  sub_100005978(va6);
  _Unwind_Resume(a1);
}

const void **sub_1002DAEA0(uint64_t a1, uint64_t a2)
{
  sub_10005C7A4((a1 + 40), (a2 + 40));

  return sub_10005C7A4((a1 + 48), (a2 + 48));
}

const void **sub_1002DAEE8(uint64_t a1)
{
  sub_100005978((a1 + 48));

  return sub_100005978((a1 + 40));
}

const void **sub_1002DAF24(uint64_t a1, int a2, int a3, int a4, int a5, const __CFString **a6)
{
  v27 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v12 = v27;
    v27 = Mutable;
    valuePtr = v12;
    sub_1000296E0(&valuePtr);
  }

  object = 0;
  LODWORD(valuePtr) = a2;
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v13)
  {
    v14 = object;
    object = v13;
    valuePtr = v14;
    sub_100029A48(&valuePtr);
  }

  v26 = object;
  object = 0;
  sub_100029A48(&object);
  sub_100209DF4(v27, @"kCTRegistrationDataContextID", v26);
  sub_100029A48(&v26);
  object = 0;
  LODWORD(valuePtr) = a3;
  v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v15)
  {
    v16 = object;
    object = v15;
    valuePtr = v16;
    sub_100029A48(&valuePtr);
  }

  v26 = object;
  object = 0;
  sub_100029A48(&object);
  sub_100209DF4(v27, @"kCTRegistrationDataActive", v26);
  sub_100029A48(&v26);
  object = 0;
  LODWORD(valuePtr) = a4;
  v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v17)
  {
    v18 = object;
    object = v17;
    valuePtr = v18;
    sub_100029A48(&valuePtr);
  }

  v26 = object;
  object = 0;
  sub_100029A48(&object);
  sub_100209DF4(v27, @"kCTRegistrationDataAttached", v26);
  sub_100029A48(&v26);
  object = 0;
  LODWORD(valuePtr) = 65;
  v19 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v19)
  {
    v20 = object;
    object = v19;
    valuePtr = v20;
    sub_100029A48(&valuePtr);
  }

  v26 = object;
  object = 0;
  sub_100029A48(&object);
  sub_100209DF4(v27, @"kCTRegistrationDataActivateFailure", v26);
  sub_100029A48(&v26);
  sub_1001768B8(v27, @"kCTRegistrationDataActivateFailureString", @"kCTErrorGprsServiceOptionNotSubscribed");
  v21 = &kCFBooleanFalse;
  if (!a5)
  {
    v21 = &kCFBooleanTrue;
  }

  sub_1002E0298(v27, @"kCTRegistrationCellularDataPlanNewAccount", *v21);
  sub_1001768B8(v27, @"kCTRegistrationDataConnectionServices", @"kCTDataConnectionServiceTypeInternet");
  if (*a6)
  {
    v22 = *a6;
  }

  else
  {
    v22 = &stru_101F6AFB8;
  }

  sub_1001768B8(v27, @"kCTRegistrationCellularDataPlanAccountURL", v22);
  ctu::cf_to_xpc(v27, v23);
  v24 = valuePtr;
  if (valuePtr && xpc_get_type(valuePtr) == &_xpc_type_dictionary)
  {
    xpc_retain(v24);
  }

  else
  {
    v24 = xpc_null_create();
  }

  xpc_release(valuePtr);
  valuePtr = v24;
  if (v24)
  {
    xpc_retain(v24);
  }

  else
  {
    valuePtr = xpc_null_create();
  }

  object = xpc_null_create();
  sub_10002A37C(84, &valuePtr, &object);
  xpc_release(object);
  xpc_release(valuePtr);
  xpc_release(v24);
  return sub_1000296E0(&v27);
}

void sub_1002DB25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  xpc_release(v12);
  sub_1000296E0(&a10);
  _Unwind_Resume(a1);
}

void sub_1002DB2F4(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v3 = ServiceMap;
  v4 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v5 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
  v12 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v12);
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
        goto LABEL_7;
      }

LABEL_11:
      (*(*v10 + 816))(v10);
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101769F78();
  }

LABEL_12:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1002DB424(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002DB440(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1002DB4B0;
  v1[3] = &unk_101E26008;
  v1[4] = a1;
  sub_100076974((a1 + 8), v1);
}

void sub_1002DB4C8(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_1002DB5EC;
  v9[3] = &unk_101E3DE00;
  v9[4] = a1;
  v14 = a3;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(v10, *a5, *(a5 + 8));
  }

  else
  {
    *v10 = *a5;
    v11 = *(a5 + 16);
  }

  v15 = a4;
  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(__p, *a6, *(a6 + 8));
  }

  else
  {
    *__p = *a6;
    v13 = *(a6 + 16);
  }

  sub_100076974((a1 + 8), v9);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1002DB5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002DB5EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = v4;
  v6 = *(a1 + 88);
  if (v6 > 5)
  {
    if (*(a1 + 88) <= 8u)
    {
      switch(v6)
      {
        case 6u:
LABEL_30:
          [v4 setObject:&off_101F91068 forKeyedSubscript:@"FlowTypeKey"];
          if (*(a1 + 88) == 2)
          {
            v9 = &__kCFBooleanFalse;
          }

          else
          {
            v9 = &__kCFBooleanTrue;
          }

          v10 = @"RequireSetupKey-DEBUG";
LABEL_34:
          [v5 setObject:v9 forKeyedSubscript:v10];
          break;
        case 7u:
          goto LABEL_42;
        case 8u:
          goto LABEL_10;
      }

LABEL_35:
      v15 = *(v3 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315394;
        v19 = asString();
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Launch %s for SIMSetup with %@", &v18, 0x16u);
      }

      [*(v3 + 56) launchWithServiceName:@"com.apple.SIMSetupUIService" viewControllerClassName:@"TSSIMSetupSupportViewController" options:v5];
      goto LABEL_38;
    }

    if (v6 - 10 >= 2)
    {
      if (v6 != 9)
      {
        goto LABEL_35;
      }

      goto LABEL_42;
    }

    [v4 setObject:&off_101F91098 forKeyedSubscript:@"FlowTypeKey"];
    if (*(a1 + 88) == 2)
    {
      v13 = &__kCFBooleanFalse;
    }

    else
    {
      v13 = &__kCFBooleanTrue;
    }

    [v5 setObject:v13 forKeyedSubscript:@"RequireSetupKey-DEBUG"];
    v12 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v12 = *v12;
    }

LABEL_29:
    v14 = [NSString stringWithUTF8String:v12];
    [v5 setObject:v14 forKeyedSubscript:@"CarrierNameKey"];

    goto LABEL_35;
  }

  if (*(a1 + 88) > 2u)
  {
    if (v6 - 3 >= 2)
    {
      if (v6 != 5)
      {
        goto LABEL_35;
      }

      goto LABEL_42;
    }

    [v4 setObject:&off_101F91080 forKeyedSubscript:@"FlowTypeKey"];
    if (*(a1 + 88) == 2)
    {
      v11 = &__kCFBooleanFalse;
    }

    else
    {
      v11 = &__kCFBooleanTrue;
    }

    [v5 setObject:v11 forKeyedSubscript:@"RequireSetupKey-DEBUG"];
    v12 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v12 = *v12;
    }

    goto LABEL_29;
  }

  if (*(a1 + 88))
  {
    if (v6 != 1)
    {
      goto LABEL_30;
    }

LABEL_10:
    [v4 setObject:&off_101F91050 forKeyedSubscript:@"FlowTypeKey"];
    v7 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v7 = *v7;
    }

    v8 = [NSString stringWithUTF8String:v7];
    [v5 setObject:v8 forKeyedSubscript:@"SetupNewIccidKey"];

    if (*(a1 + 89))
    {
      v9 = &__kCFBooleanTrue;
    }

    else
    {
      v9 = &__kCFBooleanFalse;
    }

    v10 = @"ForceDualSIMSetup";
    goto LABEL_34;
  }

LABEL_42:
  v16 = *(v3 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    v17 = asString();
    sub_101769FAC(v17, &v18, v16);
  }

LABEL_38:
}

char *sub_1002DB974(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_100005F2C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    return sub_100005F2C(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  v5 = *(a2 + 64);
  *(v3 + 10) = *(a2 + 80);
  *(v3 + 4) = v5;
  return result;
}

void sub_1002DB9E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1002DBA04(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

const void **sub_1002DBA5C(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_1002DBB20;
  v8[3] = &unk_101E3DE30;
  v8[4] = a1;
  sub_10005C7A4(&v9, a2);
  sub_100010024(&v10, a3);
  sub_10005C7A4(&v11, a4);
  sub_100076974((a1 + 8), v8);
  sub_100005978(&v11);
  sub_10001021C(&v10);
  return sub_100005978(&v9);
}

void sub_1002DBB20(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v5 = objc_opt_new();
  [v5 setObject:&off_101F910B0 forKey:@"FlowTypeKey"];
  [v5 setObject:a1[5] forKey:@"WebsheetURLKey"];
  [v5 setObject:a1[6] forKey:@"WebsheetPostdataKey"];
  v4 = a1[7];
  if (v4)
  {
    [v5 setObject:v4 forKey:@"CarrierNameKey"];
  }

  [*(v3 + 56) launchWithServiceName:@"com.apple.SIMSetupUIService" viewControllerClassName:@"TSSIMSetupSupportViewController" options:v5];
}

const void **sub_1002DBBF4(const void **a1, const void **a2)
{
  sub_10005C7A4(a1 + 5, a2 + 5);
  sub_100010024(a1 + 6, a2 + 6);

  return sub_10005C7A4(a1 + 7, a2 + 7);
}

const void **sub_1002DBC48(const void **a1)
{
  sub_100005978(a1 + 7);
  sub_10001021C(a1 + 6);

  return sub_100005978(a1 + 5);
}

const void **sub_1002DBC8C(uint64_t a1, char a2, const void **a3, const void **a4)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_1002DBD44;
  v8[3] = &unk_101E3DDD0;
  v8[4] = a1;
  sub_10005C7A4(&v9, a3);
  sub_10005C7A4(&v10, a4);
  v11 = a2;
  sub_100076974((a1 + 8), v8);
  sub_100005978(&v10);
  return sub_100005978(&v9);
}

void sub_1002DBD44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Show Cellular Activation Success/Failure Alert", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 72));
  v5 = ServiceMap;
  v7 = v6;
  if (v6 < 0)
  {
    v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
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
  v11 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v14 = 1;
LABEL_11:
  v63 = 0;
  sub_10005C7A4(&v63, (a1 + 40));
  cf = 0;
  sub_10005C7A4(&cf, (a1 + 48));
  v60 = 0;
  v61 = 0;
  defaultButtonTitle = 0;
  if (*(a1 + 56) == 1)
  {
    v15 = Registry::getServiceMap(*(v2 + 72));
    v16 = v15;
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

    std::mutex::lock(v15);
    v64 = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, &v64);
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
        goto LABEL_26;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
LABEL_26:
    (*(*v23 + 256))(buf, v23);
    if (v58 < 0)
    {
      v35 = v57 == 4 && **buf == 1684099177;
      operator delete(*buf);
      if (v24)
      {
        goto LABEL_47;
      }
    }

    else if (v58 == 4)
    {
      v35 = *buf == 1684099177;
      if (v24)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v35 = 0;
      if (v24)
      {
LABEL_47:
        v37 = kCBMessageLocalizationTable;
        if (v35)
        {
          (*(*v13 + 40))(&v64, v13, kCBMessageLocalizationTable, @"DATA_PLAN_ACTIVATION_TITLE", @"DATA_PLAN_ACTIVATION_TITLE");
          *buf = v61;
          v61 = v64;
          v64 = 0;
          sub_100005978(buf);
          sub_100005978(&v64);
          (*(*v13 + 40))(&v64, v13, v37, @"DATA_PLAN_ACTIVATION_MESSAGE", @"DATA_PLAN_ACTIVATION_MESSAGE");
        }

        else
        {
          (*(*v13 + 40))(&v64, v13, kCBMessageLocalizationTable, @"CELLULAR_PLAN_ACTIVATION_TITLE", @"CELLULAR_PLAN_ACTIVATION_TITLE");
          *buf = v61;
          v61 = v64;
          v64 = 0;
          sub_100005978(buf);
          sub_100005978(&v64);
          (*(*v13 + 40))(&v64, v13, v37, @"CELLULAR_PLAN_ACTIVATION_MESSAGE", @"CELLULAR_PLAN_ACTIVATION_MESSAGE");
        }

        goto LABEL_66;
      }
    }

    sub_100004A34(v22);
    goto LABEL_47;
  }

  v25 = Registry::getServiceMap(*(v2 + 72));
  v26 = v25;
  if (v27 < 0)
  {
    v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
    v29 = 5381;
    do
    {
      v27 = v29;
      v30 = *v28++;
      v29 = (33 * v29) ^ v30;
    }

    while (v30);
  }

  std::mutex::lock(v25);
  v64 = v27;
  v31 = sub_100009510(&v26[1].__m_.__sig, &v64);
  if (v31)
  {
    v33 = v31[3];
    v32 = v31[4];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v26);
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v32);
      v34 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v33 = 0;
  }

  std::mutex::unlock(v26);
  v32 = 0;
  v34 = 1;
LABEL_32:
  (*(*v33 + 256))(buf, v33);
  if (v58 < 0)
  {
    v36 = v57 == 4 && **buf == 1684099177;
    operator delete(*buf);
    if ((v34 & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (v58 == 4)
    {
      v36 = *buf == 1684099177;
      if (v34)
      {
        goto LABEL_53;
      }

LABEL_52:
      sub_100004A34(v32);
      goto LABEL_53;
    }

    v36 = 0;
    if ((v34 & 1) == 0)
    {
      goto LABEL_52;
    }
  }

LABEL_53:
  v38 = kCBMessageLocalizationTable;
  if (v36)
  {
    (*(*v13 + 40))(&v64, v13, kCBMessageLocalizationTable, @"DATA_PLAN_ACTIVATION_FAILURE_TITLE", @"DATA_PLAN_ACTIVATION_FAILURE_TITLE");
    *buf = v61;
    v61 = v64;
    v64 = 0;
    sub_100005978(buf);
    sub_100005978(&v64);
    (*(*v13 + 40))(&v64, v13, v38, @"DATA_PLAN_ACTIVATION_FAILURE_MESSAGE", @"DATA_PLAN_ACTIVATION_FAILURE_MESSAGE");
LABEL_66:
    *buf = v60;
    v60 = v64;
    v64 = 0;
    goto LABEL_67;
  }

  (*(*v13 + 40))(&v64, v13, kCBMessageLocalizationTable, @"CELLULAR_PLAN_ACTIVATION_FAILURE_TITLE", @"CELLULAR_PLAN_ACTIVATION_FAILURE_TITLE");
  *buf = v61;
  v61 = v64;
  v64 = 0;
  sub_100005978(buf);
  sub_100005978(&v64);
  theString = cf;
  if (!cf)
  {
    sub_100005978(&theString);
LABEL_61:
    v53 = v63;
    if (v63)
    {
      CFRetain(v63);
      Length = CFStringGetLength(v53);
      sub_100005978(&v53);
      if (Length)
      {
        v64 = 0;
        (*(*v13 + 40))(&v64, v13, v38, @"CELLULAR_PLAN_ACTIVATION_FAILURE_MESSAGE_WITH_CARRIER_%@", @"CELLULAR_PLAN_ACTIVATION_FAILURE_MESSAGE_WITH_CARRIER_%@");
        StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v64, 0, v63);
        goto LABEL_82;
      }
    }

    else
    {
      sub_100005978(&v53);
    }

    (*(*v13 + 40))(&v64, v13, v38, @"CELLULAR_PLAN_ACTIVATION_FAILURE_MESSAGE", @"CELLULAR_PLAN_ACTIVATION_FAILURE_MESSAGE");
    goto LABEL_66;
  }

  CFRetain(cf);
  v39 = CFStringGetLength(theString);
  sub_100005978(&theString);
  if (!v39)
  {
    goto LABEL_61;
  }

  v54 = v63;
  if (!v63)
  {
    sub_100005978(&v54);
    goto LABEL_81;
  }

  CFRetain(v63);
  v40 = CFStringGetLength(v54);
  sub_100005978(&v54);
  if (!v40)
  {
LABEL_81:
    v64 = 0;
    (*(*v13 + 40))(&v64, v13, v38, @"CELLULAR_PLAN_ACTIVATION_FAILURE_MESSAGE_WITH_NUMBER_%@", @"CELLULAR_PLAN_ACTIVATION_FAILURE_MESSAGE_WITH_NUMBER_%@");
    StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v64, 0, cf);
    goto LABEL_82;
  }

  v64 = 0;
  (*(*v13 + 40))(&v64, v13, v38, @"CELLULAR_PLAN_ACTIVATION_FAILURE_MESSAGE_WITH_NUMBER_AND_CARRIER_%@_%@", @"CELLULAR_PLAN_ACTIVATION_FAILURE_MESSAGE_WITH_NUMBER_AND_CARRIER_%@_%@");
  StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@%@", v64, 0, cf, v63);
LABEL_82:
  v52 = v60;
  v60 = StringWithValidatedFormat;
  *buf = v52;
LABEL_67:
  sub_100005978(buf);
  sub_100005978(&v64);
  v43 = Registry::getServiceMap(*(v2 + 72));
  v44 = v43;
  if (v6 < 0)
  {
    v45 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v46 = 5381;
    do
    {
      v6 = v46;
      v47 = *v45++;
      v46 = (33 * v46) ^ v47;
    }

    while (v47);
  }

  std::mutex::lock(v43);
  *buf = v6;
  v48 = sub_100009510(&v44[1].__m_.__sig, buf);
  if (v48)
  {
    v50 = v48[3];
    v49 = v48[4];
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v44);
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v49);
      v51 = 0;
      goto LABEL_75;
    }
  }

  else
  {
    v50 = 0;
  }

  std::mutex::unlock(v44);
  v49 = 0;
  v51 = 1;
LABEL_75:
  (*(*v50 + 16))(&v64, v50, kAlertDialogLocalizationTable, @"OK", 1);
  *buf = defaultButtonTitle;
  defaultButtonTitle = v64;
  v64 = 0;
  sub_100005978(buf);
  sub_100005978(&v64);
  if ((v51 & 1) == 0)
  {
    sub_100004A34(v49);
  }

  *buf = 0;
  CFUserNotificationDisplayAlert(0.0, 3uLL, 0, 0, 0, v61, v60, defaultButtonTitle, 0, 0, buf);
  sub_100005978(&defaultButtonTitle);
  sub_100005978(&v60);
  sub_100005978(&v61);
  sub_100005978(&cf);
  sub_100005978(&v63);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1002DC72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va3, a18);
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v22 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v24 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v26 = va_arg(va3, const void *);
  sub_100005978((v20 - 88));
  sub_100005978(va);
  sub_100005978(va1);
  sub_100005978(va2);
  sub_100005978(va3);
  sub_100005978((v20 - 96));
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

void sub_1002DC820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1002DC8C0;
  v3[3] = &unk_101E26508;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  sub_100076974((a1 + 8), v3);
}

void sub_1002DC8C0(void *a1)
{
  v2 = a1[4];
  ServiceMap = Registry::getServiceMap(*(v2 + 72));
  v4 = ServiceMap;
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  *__p = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, __p);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  v24 = 0;
  v13 = kAlertDialogLocalizationTable;
  (*(*v11 + 16))(&v24, v11, kAlertDialogLocalizationTable, @"CELLULAR_PLAN_SETUP_NOTIFICATION_TITLE", 1);
  v23 = 0;
  (*(*v11 + 16))(&v23, v11, v13, @"CELLULAR_PLAN_SETUP_NOTIFICATION_MESSAGE", 1);
  v15 = a1[5];
  v16 = a1[6];
  v17 = (a1 + 5);
  if (v15 | v16)
  {
    ctu::hex(v17, 0x10, v14);
    if (v26 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = *__p;
    }

    v19 = [NSString stringWithUTF8String:v18];
    if (v26 < 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v2 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v19;
    v22 = [v19 UTF8String];
    *__p = 136315138;
    *&__p[4] = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Publish notification for csn:(%s)", __p, 0xCu);
  }

  [*(v2 + 48) publishUserNotificationWithBundleIdentifier:@"com.apple.Bridge" title:v24 body:v23 csn:v19];

  sub_100005978(&v23);
  sub_100005978(&v24);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_1002DCB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(a1);
}

void sub_1002DCBC8(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1002DCC38;
  v1[3] = &unk_101E26008;
  v1[4] = a1;
  sub_100076974((a1 + 8), v1);
}

void sub_1002DCC38(uint64_t a1)
{
  v1 = *(a1 + 32);
  ServiceMap = Registry::getServiceMap(*(v1 + 72));
  v3 = ServiceMap;
  if (v4 < 0)
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
  v19 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v19);
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
        goto LABEL_7;
      }

LABEL_11:
      v17 = 0;
      v18 = 0;
      defaultButtonTitle = 0;
      v12 = kCBMessageLocalizationTable;
      (*(*v10 + 40))(&v15, v10, kCBMessageLocalizationTable, @"OK", @"OK");
      v13 = v15;
      v19 = defaultButtonTitle;
      v15 = 0;
      defaultButtonTitle = v13;
      sub_100005978(&v19);
      sub_100005978(&v15);
      (*(*v10 + 40))(&v15, v10, v12, @"NO_INTERNET_CONNECTION_TITLE", @"NO_INTERNET_CONNECTION_TITLE");
      v14 = v18;
      v18 = v15;
      v19 = v14;
      v15 = 0;
      sub_100005978(&v19);
      sub_100005978(&v15);
      (*(*v10 + 40))(&v15, v10, v12, @"NO_INTERNET_CONNECTION_MESSAGE", @"NO_INTERNET_CONNECTION_MESSAGE");
      v19 = v17;
      v17 = v15;
      v15 = 0;
      sub_100005978(&v19);
      sub_100005978(&v15);
      v19 = 0;
      CFUserNotificationDisplayAlert(0.0, 3uLL, 0, 0, 0, v18, v17, defaultButtonTitle, 0, 0, &v19);
      sub_100005978(&defaultButtonTitle);
      sub_100005978(&v17);
      sub_100005978(&v18);
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101769FF4();
  }

LABEL_12:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1002DCEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v14 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_100005978(va1);
  sub_100005978(va2);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

const void **sub_1002DCEE8(uint64_t a1, int a2, const void **a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_1002DCF7C;
  v5[3] = &unk_101E3DE60;
  v5[4] = a1;
  v7 = a2;
  sub_10005C7A4(&v6, a3);
  sub_100076974((a1 + 8), v5);
  return sub_100005978(&v6);
}

void sub_1002DCF7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  ServiceMap = Registry::getServiceMap(*(v2 + 72));
  v4 = ServiceMap;
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v23 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v23);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      if (!v11)
      {
        goto LABEL_7;
      }

LABEL_11:
      v21 = 0;
      v22 = 0;
      defaultButtonTitle = 0;
      v13 = kCBMessageLocalizationTable;
      (*(*v11 + 40))(&format, v11, kCBMessageLocalizationTable, @"OK", @"OK");
      v14 = format;
      v23 = defaultButtonTitle;
      format = 0;
      defaultButtonTitle = v14;
      sub_100005978(&v23);
      sub_100005978(&format);
      if (*(a1 + 48) > 1u)
      {
        (*(*v11 + 40))(&format, v11, v13, @"INSTALL_REPLACE_ESIM_FAIL_TITLE", @"INSTALL_REPLACE_ESIM_FAIL_TITLE");
        v17 = v22;
        v22 = format;
        v23 = v17;
        format = 0;
        sub_100005978(&v23);
        sub_100005978(&format);
        if (*(a1 + 40))
        {
          format = 0;
          (*(*v11 + 40))(&format, v11, v13, @"INSTALL_REPLACE_ESIM_FAIL_MESSAGE_%@", @"INSTALL_REPLACE_ESIM_FAIL_MESSAGE_%@");
          StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, 0, *(a1 + 40));
          goto LABEL_16;
        }

        (*(*v11 + 40))(&format, v11, v13, @"INSTALL_REPLACE_ESIM_FAIL_MESSAGE", @"INSTALL_REPLACE_ESIM_FAIL_MESSAGE");
      }

      else
      {
        (*(*v11 + 40))(&format, v11, v13, @"INSTALL_REPLACE_ESIM_SUCCESS_TITLE", @"INSTALL_REPLACE_ESIM_SUCCESS_TITLE");
        v15 = v22;
        v22 = format;
        v23 = v15;
        format = 0;
        sub_100005978(&v23);
        sub_100005978(&format);
        if (*(a1 + 40))
        {
          format = 0;
          (*(*v11 + 40))(&format, v11, v13, @"INSTALL_REPLACE_ESIM_SUCCESS_MESSAGE_%@", @"INSTALL_REPLACE_ESIM_SUCCESS_MESSAGE_%@");
          StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, 0, *(a1 + 40));
LABEL_16:
          v18 = v21;
          v21 = StringWithValidatedFormat;
          v23 = v18;
LABEL_20:
          sub_100005978(&v23);
          sub_100005978(&format);
          v23 = 0;
          CFUserNotificationDisplayAlert(0.0, 3uLL, 0, 0, 0, v22, v21, defaultButtonTitle, 0, 0, &v23);
          sub_100005978(&defaultButtonTitle);
          sub_100005978(&v21);
          sub_100005978(&v22);
          goto LABEL_21;
        }

        (*(*v11 + 40))(&format, v11, v13, @"INSTALL_REPLACE_ESIM_SUCCESS_MESSAGE", @"INSTALL_REPLACE_ESIM_SUCCESS_MESSAGE");
      }

      v23 = v21;
      v21 = format;
      format = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101769FF4();
  }

LABEL_21:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_1002DD39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v14 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_100005978(va1);
  sub_100005978(va2);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1002DD400(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1002DD470;
  v1[3] = &unk_101E26008;
  v1[4] = a1;
  sub_100076974((a1 + 8), v1);
}

void sub_1002DD470(uint64_t a1)
{
  v1 = *(a1 + 32);
  ServiceMap = Registry::getServiceMap(*(v1 + 72));
  v3 = ServiceMap;
  if (v4 < 0)
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
  v24[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v24);
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
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  v26 = 0;
  v12 = Registry::getServiceMap(*(v1 + 72));
  v13 = v12;
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

  std::mutex::lock(v12);
  v27 = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, &v27);
  if (v18)
  {
    v20 = v18[3];
    v19 = v18[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v13);
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v19);
      v21 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v20 = 0;
  }

  std::mutex::unlock(v13);
  v19 = 0;
  v21 = 1;
LABEL_17:
  (*(*v20 + 256))(v24, v20);
  if (v25 < 0)
  {
    v22 = v24[1] == 4 && *v24[0] == 1684099177;
    operator delete(v24[0]);
    if ((v21 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v25 == 4)
    {
      v22 = LODWORD(v24[0]) == 1684099177;
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_27:
      sub_100004A34(v19);
      goto LABEL_28;
    }

    v22 = 0;
    if ((v21 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v23 = kCBMessageLocalizationTable;
  if (v22)
  {
    (*(*v10 + 40))(&v27, v10, kCBMessageLocalizationTable, @"TRANSFER_TITLE_PAD", @"TRANSFER_TITLE_PAD");
  }

  else
  {
    (*(*v10 + 40))(&v27, v10, kCBMessageLocalizationTable, @"TRANSFER_TITLE", @"TRANSFER_TITLE");
  }

  v24[0] = v26;
  v26 = v27;
  v27 = 0;
  sub_100005978(v24);
  sub_100005978(&v27);
  v24[0] = 0;
  (*(*v10 + 40))(v24, v10, v23, @"ESIM_TRANSFER_ALERT_MESSAGE", @"ESIM_TRANSFER_ALERT_MESSAGE");
  v27 = 0;
  [*(v1 + 48) publishUserNotificationWithBundleIdentifier:@"com.apple.Preferences" requestIdentifier:@"TRANSFER_TITLE" title:v26 body:v24[0] subtitle:0 actionUrl:@"prefs:root=MOBILE_DATA_SETTINGS_ID" destinations:6];
  sub_100005978(&v27);
  sub_100005978(v24);
  sub_100005978(&v26);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1002DD7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100005978(va);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1002DD834(uint64_t a1, char a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_1002DD9A8;
  v8[3] = &unk_101E3DE90;
  v8[4] = a1;
  v15 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v9, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    v10 = *(a3 + 2);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(&v11, *a5, *(a5 + 1));
  }

  else
  {
    v11 = *a5;
    v12 = *(a5 + 2);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(&__p, *a4, *(a4 + 1));
  }

  else
  {
    __p = *a4;
    v14 = *(a4 + 2);
  }

  sub_100076974((a1 + 8), v8);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }
}

void sub_1002DD974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002DD9A8(uint64_t a1)
{
  v89 = *(a1 + 32);
  ServiceMap = Registry::getServiceMap(*(v89 + 72));
  v3 = ServiceMap;
  if (v4 < 0)
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
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  v12 = *(v89 + 40);
  if (v10)
  {
    if (os_log_type_enabled(*(v89 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v13 = asString();
      v14 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v14 = *v14;
      }

      *buf = 136315394;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I showing Esim Setup Required alert - option (%s) url (%s)", buf, 0x16u);
    }

    v106 = 0;
    v107 = 0;
    v104 = 0;
    v105 = 0;
    v103 = 0;
    v15 = *(a1 + 112);
    if (v15 <= 1)
    {
      if (*(a1 + 112))
      {
        if (v15 != 1)
        {
          goto LABEL_184;
        }

        v16 = kCBMessageLocalizationTable;
        (*(*v10 + 40))(&v109, v10, kCBMessageLocalizationTable, @"CONTINUE_SETUP_ESIM_TITLE", @"CONTINUE_SETUP_ESIM_TITLE");
        *buf = v107;
        v107 = v109;
        *&v109 = 0;
        sub_100005978(buf);
        sub_100005978(&v109);
        (*(*v10 + 40))(&v109, v10, v16, @"SETUP_ESIM_MESSAGE", @"CONTINUE_SETUP_ESIM_TITLE");
        *buf = v106;
        v106 = v109;
        *&v109 = 0;
        sub_100005978(buf);
        sub_100005978(&v109);
        (*(*v10 + 40))(&v109, v10, v16, @"CONTINUE", @"CONTINUE_SETUP_ESIM_TITLE");
        *buf = v105;
        v105 = v109;
        *&v109 = 0;
        sub_100005978(buf);
        sub_100005978(&v109);
        (*(*v10 + 40))(&v109, v10, v16, @"CBMessageDeclineButton", @"CONTINUE_SETUP_ESIM_TITLE");
      }

      else
      {
        v28 = kCBMessageLocalizationTable;
        (*(*v10 + 40))(&v109, v10, kCBMessageLocalizationTable, @"SETUP_ESIM_TITLE", @"SETUP_ESIM_TITLE");
        *buf = v107;
        v107 = v109;
        *&v109 = 0;
        sub_100005978(buf);
        sub_100005978(&v109);
        (*(*v10 + 40))(&v109, v10, v28, @"SETUP_ESIM_MESSAGE", @"SETUP_ESIM_TITLE");
        *buf = v106;
        v106 = v109;
        *&v109 = 0;
        sub_100005978(buf);
        sub_100005978(&v109);
        (*(*v10 + 40))(&v109, v10, v28, @"SETUP", @"SETUP_ESIM_TITLE");
        *buf = v105;
        v105 = v109;
        *&v109 = 0;
        sub_100005978(buf);
        sub_100005978(&v109);
        (*(*v10 + 40))(&v109, v10, v28, @"CBMessageDeclineButton", @"SETUP_ESIM_TITLE");
      }

      goto LABEL_183;
    }

    if (v15 != 2)
    {
      if (v15 != 3)
      {
        goto LABEL_184;
      }

      v17 = Registry::getServiceMap(*(v89 + 72));
      v18 = v17;
      v20 = v19;
      if (v19 < 0)
      {
        v21 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
        v22 = 5381;
        do
        {
          v20 = v22;
          v23 = *v21++;
          v22 = (33 * v22) ^ v23;
        }

        while (v23);
      }

      std::mutex::lock(v17);
      *buf = v20;
      v24 = sub_100009510(&v18[1].__m_.__sig, buf);
      if (v24)
      {
        v26 = v24[3];
        v25 = v24[4];
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v18);
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v25);
          v27 = 0;
          goto LABEL_37;
        }
      }

      else
      {
        v26 = 0;
      }

      std::mutex::unlock(v18);
      v25 = 0;
      v27 = 1;
LABEL_37:
      v40 = (*(*v26 + 80))(v26);
      if ((v27 & 1) == 0)
      {
        sub_100004A34(v25);
      }

      v41 = kCBMessageLocalizationTable;
      if (v40)
      {
        (*(*v10 + 40))(&v109, v10, kCBMessageLocalizationTable, @"WLAN_REQUIRED_TITLE", @"WIFI_REQUIRED_TITLE");
        *buf = v107;
        v107 = v109;
        *&v109 = 0;
        sub_100005978(buf);
        sub_100005978(&v109);
        v42 = Registry::getServiceMap(*(v89 + 72));
        v43 = v42;
        if (v19 < 0)
        {
          v44 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
          v45 = 5381;
          do
          {
            v19 = v45;
            v46 = *v44++;
            v45 = (33 * v45) ^ v46;
          }

          while (v46);
        }

        std::mutex::lock(v42);
        *&v109 = v19;
        v47 = sub_100009510(&v43[1].__m_.__sig, &v109);
        if (v47)
        {
          v49 = v47[3];
          v48 = v47[4];
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v43);
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v48);
            v50 = 0;
LABEL_101:
            (*(*v49 + 256))(buf, v49);
            if ((buf[23] & 0x80000000) != 0)
            {
              v69 = *&buf[8] == 4 && **buf == 1684099177;
              operator delete(*buf);
            }

            else
            {
              v69 = buf[23] == 4 && *buf == 1684099177;
            }

            if ((v50 & 1) == 0)
            {
              sub_100004A34(v48);
            }

            if (v69)
            {
              (*(*v10 + 40))(&v109, v10, v41, @"WLAN_REQUIRED_MESSAGE", @"WIFI_REQUIRED_TITLE");
              *buf = v106;
              v106 = v109;
              *&v109 = 0;
              sub_100005978(buf);
              sub_100005978(&v109);
            }

            else
            {
              (*(*v10 + 40))(&v109, v10, v41, @"WLAN_REQUIRED_MESSAGE_%@", @"WIFI_REQUIRED_TITLE");
              *buf = v103;
              v103 = v109;
              *&v109 = 0;
              sub_100005978(buf);
              sub_100005978(&v109);
              v74 = v103;
              if (*(a1 + 111) < 0)
              {
                sub_100005F2C(v93, *(a1 + 88), *(a1 + 96));
              }

              else
              {
                *v93 = *(a1 + 88);
                v94 = *(a1 + 104);
              }

              if (SHIBYTE(v94) < 0)
              {
                sub_100005F2C(&v109, v93[0], v93[1]);
              }

              else
              {
                v109 = *v93;
                v110 = v94;
              }

              v108 = 0;
              if (SHIBYTE(v110) < 0)
              {
                sub_100005F2C(buf, v109, *(&v109 + 1));
              }

              else
              {
                *buf = v109;
                *&buf[16] = v110;
              }

              v111 = 0;
              if (ctu::cf::convert_copy())
              {
                v76 = v108;
                v108 = v111;
                v112 = v76;
                sub_100005978(&v112);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              v102 = v108;
              v108 = 0;
              sub_100005978(&v108);
              if (SHIBYTE(v110) < 0)
              {
                operator delete(v109);
              }

              StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v74, 0, v102);
              v78 = v106;
              v106 = StringWithValidatedFormat;
              *buf = v78;
              sub_100005978(buf);
              sub_100005978(&v102);
              if (SHIBYTE(v94) < 0)
              {
                operator delete(v93[0]);
              }
            }

            (*(*v10 + 40))(&v109, v10, v41, @"WLAN_REQUIRED_BUTTON", @"WIFI_REQUIRED_TITLE");
LABEL_182:
            *buf = v105;
            v105 = v109;
            *&v109 = 0;
            sub_100005978(buf);
            sub_100005978(&v109);
            (*(*v10 + 40))(&v109, v10, v41, @"CBMessageDeclineButton", @"WIFI_REQUIRED_TITLE");
            goto LABEL_183;
          }
        }

        else
        {
          v49 = 0;
        }

        std::mutex::unlock(v43);
        v48 = 0;
        v50 = 1;
        goto LABEL_101;
      }

      (*(*v10 + 40))(&v109, v10, kCBMessageLocalizationTable, @"WIFI_REQUIRED_TITLE", @"WIFI_REQUIRED_TITLE");
      *buf = v107;
      v107 = v109;
      *&v109 = 0;
      sub_100005978(buf);
      sub_100005978(&v109);
      v51 = Registry::getServiceMap(*(v89 + 72));
      v52 = v51;
      if (v19 < 0)
      {
        v53 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
        v54 = 5381;
        do
        {
          v19 = v54;
          v55 = *v53++;
          v54 = (33 * v54) ^ v55;
        }

        while (v55);
      }

      std::mutex::lock(v51);
      *&v109 = v19;
      v56 = sub_100009510(&v52[1].__m_.__sig, &v109);
      if (v56)
      {
        v58 = v56[3];
        v57 = v56[4];
        if (v57)
        {
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v52);
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v57);
          v59 = 0;
LABEL_106:
          (*(*v58 + 256))(buf, v58);
          if ((buf[23] & 0x80000000) != 0)
          {
            v70 = *&buf[8] == 4 && **buf == 1684099177;
            operator delete(*buf);
          }

          else
          {
            v70 = buf[23] == 4 && *buf == 1684099177;
          }

          if ((v59 & 1) == 0)
          {
            sub_100004A34(v57);
          }

          if (v70)
          {
            (*(*v10 + 40))(&v109, v10, v41, @"WIFI_REQUIRED_MESSAGE", @"WIFI_REQUIRED_TITLE");
            *buf = v106;
            v106 = v109;
            *&v109 = 0;
            sub_100005978(buf);
            sub_100005978(&v109);
          }

          else
          {
            (*(*v10 + 40))(&v109, v10, v41, @"WIFI_REQUIRED_MESSAGE_%@", @"WIFI_REQUIRED_TITLE");
            *buf = v103;
            v103 = v109;
            *&v109 = 0;
            sub_100005978(buf);
            sub_100005978(&v109);
            v75 = v103;
            if (*(a1 + 111) < 0)
            {
              sub_100005F2C(v91, *(a1 + 88), *(a1 + 96));
            }

            else
            {
              *v91 = *(a1 + 88);
              v92 = *(a1 + 104);
            }

            if (SHIBYTE(v92) < 0)
            {
              sub_100005F2C(&v109, v91[0], v91[1]);
            }

            else
            {
              v109 = *v91;
              v110 = v92;
            }

            v108 = 0;
            if (SHIBYTE(v110) < 0)
            {
              sub_100005F2C(buf, v109, *(&v109 + 1));
            }

            else
            {
              *buf = v109;
              *&buf[16] = v110;
            }

            v111 = 0;
            if (ctu::cf::convert_copy())
            {
              v79 = v108;
              v108 = v111;
              v112 = v79;
              sub_100005978(&v112);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v102 = v108;
            v108 = 0;
            sub_100005978(&v108);
            if (SHIBYTE(v110) < 0)
            {
              operator delete(v109);
            }

            v80 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v75, 0, v102);
            v81 = v106;
            v106 = v80;
            *buf = v81;
            sub_100005978(buf);
            sub_100005978(&v102);
            if (SHIBYTE(v92) < 0)
            {
              operator delete(v91[0]);
            }
          }

          (*(*v10 + 40))(&v109, v10, v41, @"WIFI_REQUIRED_BUTTON", @"WIFI_REQUIRED_TITLE");
          goto LABEL_182;
        }
      }

      else
      {
        v58 = 0;
      }

      std::mutex::unlock(v52);
      v57 = 0;
      v59 = 1;
      goto LABEL_106;
    }

    v29 = kCBMessageLocalizationTable;
    (*(*v10 + 40))(&v109, v10, kCBMessageLocalizationTable, @"CROSS_PLATFORM_TRANFER_TITLE", @"CROSS_PLATFORM_TRANFER_TITLE");
    *buf = v107;
    v107 = v109;
    *&v109 = 0;
    sub_100005978(buf);
    sub_100005978(&v109);
    v30 = Registry::getServiceMap(*(v89 + 72));
    v31 = v30;
    if (v32 < 0)
    {
      v33 = (v32 & 0x7FFFFFFFFFFFFFFFLL);
      v34 = 5381;
      do
      {
        v32 = v34;
        v35 = *v33++;
        v34 = (33 * v34) ^ v35;
      }

      while (v35);
    }

    std::mutex::lock(v30);
    *&v109 = v32;
    v36 = sub_100009510(&v31[1].__m_.__sig, &v109);
    if (v36)
    {
      v38 = v36[3];
      v37 = v36[4];
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v31);
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v37);
        v39 = 0;
        goto LABEL_54;
      }
    }

    else
    {
      v38 = 0;
    }

    std::mutex::unlock(v31);
    v37 = 0;
    v39 = 1;
LABEL_54:
    (*(*v38 + 256))(buf, v38);
    if ((buf[23] & 0x80000000) != 0)
    {
      v60 = *&buf[8] == 4 && **buf == 1684099177;
      operator delete(*buf);
    }

    else
    {
      v60 = buf[23] == 4 && *buf == 1684099177;
    }

    if ((v39 & 1) == 0)
    {
      sub_100004A34(v37);
    }

    if (v60)
    {
      (*(*v10 + 40))(&v109, v10, v29, @"CROSS_PLATFORM_TRANFER_MESSAGE_%@", @"CROSS_PLATFORM_TRANFER_TITLE");
      *buf = v103;
      v103 = v109;
      *&v109 = 0;
      sub_100005978(buf);
      sub_100005978(&v109);
      v61 = v103;
      if (*(a1 + 87) < 0)
      {
        sub_100005F2C(&__dst, *(a1 + 64), *(a1 + 72));
      }

      else
      {
        __dst = *(a1 + 64);
        v101 = *(a1 + 80);
      }

      if (SHIBYTE(v101) < 0)
      {
        sub_100005F2C(&v109, __dst, *(&__dst + 1));
      }

      else
      {
        v109 = __dst;
        v110 = v101;
      }

      v108 = 0;
      if (SHIBYTE(v110) < 0)
      {
        sub_100005F2C(buf, v109, *(&v109 + 1));
      }

      else
      {
        *buf = v109;
        *&buf[16] = v110;
      }

      v111 = 0;
      if (ctu::cf::convert_copy())
      {
        v63 = v108;
        v108 = v111;
        v112 = v63;
        sub_100005978(&v112);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v102 = v108;
      v108 = 0;
      sub_100005978(&v108);
      if (SHIBYTE(v110) < 0)
      {
        operator delete(v109);
      }

      v64 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v61, 0, v102);
      v65 = v106;
      v106 = v64;
      *buf = v65;
      sub_100005978(buf);
      sub_100005978(&v102);
      if ((SHIBYTE(v101) & 0x80000000) == 0)
      {
        goto LABEL_127;
      }

      v66 = __dst;
    }

    else
    {
      (*(*v10 + 40))(&v109, v10, v29, @"CROSS_PLATFORM_TRANFER_MESSAGE_%@_%@", @"CROSS_PLATFORM_TRANFER_TITLE");
      *buf = v103;
      v103 = v109;
      *&v109 = 0;
      sub_100005978(buf);
      sub_100005978(&v109);
      v62 = v103;
      if (*(a1 + 111) < 0)
      {
        sub_100005F2C(v98, *(a1 + 88), *(a1 + 96));
      }

      else
      {
        *v98 = *(a1 + 88);
        v99 = *(a1 + 104);
      }

      if (SHIBYTE(v99) < 0)
      {
        sub_100005F2C(&v109, v98[0], v98[1]);
      }

      else
      {
        v109 = *v98;
        v110 = v99;
      }

      v108 = 0;
      if (SHIBYTE(v110) < 0)
      {
        sub_100005F2C(buf, v109, *(&v109 + 1));
      }

      else
      {
        *buf = v109;
        *&buf[16] = v110;
      }

      v111 = 0;
      if (ctu::cf::convert_copy())
      {
        v67 = v108;
        v108 = v111;
        v112 = v67;
        sub_100005978(&v112);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v102 = v108;
      v108 = 0;
      sub_100005978(&v108);
      if (SHIBYTE(v110) < 0)
      {
        operator delete(v109);
      }

      v68 = v102;
      if (*(a1 + 87) < 0)
      {
        sub_100005F2C(__p, *(a1 + 64), *(a1 + 72));
      }

      else
      {
        *__p = *(a1 + 64);
        v96 = *(a1 + 80);
      }

      if (SHIBYTE(v96) < 0)
      {
        sub_100005F2C(&v109, __p[0], __p[1]);
      }

      else
      {
        v109 = *__p;
        v110 = v96;
      }

      v108 = 0;
      if (SHIBYTE(v110) < 0)
      {
        sub_100005F2C(buf, v109, *(&v109 + 1));
      }

      else
      {
        *buf = v109;
        *&buf[16] = v110;
      }

      v111 = 0;
      if (ctu::cf::convert_copy())
      {
        v71 = v108;
        v108 = v111;
        v112 = v71;
        sub_100005978(&v112);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v97 = v108;
      v108 = 0;
      sub_100005978(&v108);
      if (SHIBYTE(v110) < 0)
      {
        operator delete(v109);
      }

      v72 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@%@", v62, 0, v68, v97);
      v73 = v106;
      v106 = v72;
      *buf = v73;
      sub_100005978(buf);
      sub_100005978(&v97);
      if (SHIBYTE(v96) < 0)
      {
        operator delete(__p[0]);
      }

      sub_100005978(&v102);
      if ((SHIBYTE(v99) & 0x80000000) == 0)
      {
        goto LABEL_127;
      }

      v66 = v98[0];
    }

    operator delete(v66);
LABEL_127:
    (*(*v10 + 40))(&v109, v10, v29, @"TRANSFER_NUMBER", @"CROSS_PLATFORM_TRANFER_TITLE");
    *buf = v105;
    v105 = v109;
    *&v109 = 0;
    sub_100005978(buf);
    sub_100005978(&v109);
    (*(*v10 + 40))(&v109, v10, v29, @"CBMessageDeclineButton", @"CROSS_PLATFORM_TRANFER_TITLE");
LABEL_183:
    *buf = v104;
    v104 = v109;
    *&v109 = 0;
    sub_100005978(buf);
    sub_100005978(&v109);
LABEL_184:
    *&v109 = 0;
    CFUserNotificationDisplayAlert(0.0, 3uLL, 0, 0, 0, v107, v106, v105, v104, 0, &v109);
    if (v109)
    {
LABEL_185:
      sub_1002DB2F4(v89);
LABEL_192:
      sub_100005978(&v103);
      sub_100005978(&v104);
      sub_100005978(&v105);
      sub_100005978(&v106);
      sub_100005978(&v107);
      goto LABEL_193;
    }

    v82 = *(a1 + 112);
    if (v82 < 2)
    {
      v83 = @"prefs:root=MOBILE_DATA_SETTINGS_ID&path=CELLULAR_PLAN_DESCRIPTION";
    }

    else
    {
      if (v82 == 2)
      {
        v84 = *(a1 + 63);
        if (v84 < 0)
        {
          v84 = *(a1 + 48);
        }

        if (v84)
        {
          *buf = 0;
          *&buf[8] = 0;
          v85 = Registry::getServiceMap(*(v89 + 72));
          sub_1002E033C(buf, v85);
          v86 = *buf;
          if (*buf)
          {
            global_queue = dispatch_get_global_queue(0, 0);
            v88 = global_queue;
            v112 = 0;
            if (global_queue)
            {
              dispatch_retain(global_queue);
              v86 = *buf;
              object = v88;
              dispatch_retain(v88);
            }

            else
            {
              object = 0;
            }

            v113[0] = off_101E3E090;
            v113[1] = v89;
            v113[3] = v113;
            (*(*v86 + 24))(v86, a1 + 40, &v112, &object, v113);
            sub_10000FF50(v113);
            if (object)
            {
              dispatch_release(object);
            }

            if (v88)
            {
              dispatch_release(v88);
            }
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }
        }

        goto LABEL_185;
      }

      if (v82 != 3)
      {
        goto LABEL_192;
      }

      v83 = @"prefs:root=WIFI";
    }

    sub_1002D75E0(v83);
    goto LABEL_192;
  }

  if (os_log_type_enabled(*(v89 + 40), OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Missing LocalizationInterface!", buf, 2u);
  }

LABEL_193:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1002DF040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36, const void *a37, const void *a38, const void *a39, const void *a40)
{
  sub_100005978((v42 - 216));
  if (*(v42 - 185) < 0)
  {
    operator delete(*(v42 - 208));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a36);
  sub_100005978(&a37);
  sub_100005978(&a38);
  sub_100005978(&a39);
  sub_100005978(&a40);
  if ((v41 & 1) == 0)
  {
    sub_100004A34(v40);
  }

  _Unwind_Resume(a1);
}

char *sub_1002DF354(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_100005F2C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    result = sub_100005F2C(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(v3 + 10) = *(a2 + 80);
    *(v3 + 4) = v5;
  }

  if (*(a2 + 111) < 0)
  {
    return sub_100005F2C(v3 + 88, *(a2 + 88), *(a2 + 96));
  }

  v6 = *(a2 + 88);
  *(v3 + 13) = *(a2 + 104);
  *(v3 + 88) = v6;
  return result;
}

void sub_1002DF3F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1002DF424(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void sub_1002DF48C(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1002DF4FC;
  v1[3] = &unk_101E26008;
  v1[4] = a1;
  sub_100076974((a1 + 8), v1);
}