uint64_t sub_101480EC0(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = *v4;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v6);
    *v4 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[3];
  v10 = a1[4];
  v11 = (a1[2] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11);
}

uint64_t sub_101480FB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10148106C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3F520;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_101481098(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_101481134(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014811F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3F5A0;
  a2[1] = v2;
  return result;
}

void sub_10148121C(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v29 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v29 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v29 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(v11, v12, v13);
      __p = &v29;
      v23 = "first";
      sub_10000F688(&__p, &v27, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v27);
      v27 = 0;
      v14 = *(v6 + 8);
      v15 = sub_100072578(v14);
      ctu::rest::detail::write_enum_string_value(v14, v15, v16);
      __p = &v29;
      v23 = "second";
      sub_10000F688(&__p, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v17 = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v17 = xpc_null_create();
      }

      xpc_release(v29);
      xpc_array_append_value(v4, v17);
      xpc_release(v17);
      v18 = v6[1];
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
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
    }

    while (v19 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v21 = v4;
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/device_types");
  v29 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v29 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v29);
  v29 = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
}

void sub_1014814F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1014815AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1014815F8(void *a1)
{
  *a1 = off_101F3F630;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101481644(void *a1)
{
  *a1 = off_101F3F630;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101481724(uint64_t result, uint64_t a2)
{
  *a2 = off_101F3F630;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101481764(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101481774(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014817B4(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v39 = *v3;
  v40 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v40;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v39 = &v40;
  }

  sub_100363170(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v38 = v8;
      if (a1[3])
      {
        v9 = *(v7 + 424);
        if (v9 != (v7 + 432))
        {
          while (1)
          {
            v10 = sub_100007A6C(v7 + 72, v9 + 32);
            if (v7 + 80 != v10)
            {
              break;
            }

LABEL_36:
            v35 = *(v9 + 1);
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
                v36 = *(v9 + 2);
                v37 = *v36 == v9;
                v9 = v36;
              }

              while (!v37);
            }

            v9 = v36;
            if (v36 == (v7 + 432))
            {
              goto LABEL_42;
            }
          }

          v12 = *(v10 + 56);
          v11 = *(v10 + 64);
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!v12)
          {
            goto LABEL_34;
          }

          v13 = sub_100007A6C(&v39, v9 + 32);
          if (&v40 != v13 && *(v9 + 14) == *(v13 + 56))
          {
            goto LABEL_34;
          }

          v14 = *(v7 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = PersonalityInfo::logPrefix(*v12);
            v16 = asString();
            v17 = asString();
            *buf = 136315906;
            *&buf[4] = v15;
            v43 = 2080;
            v44 = " ";
            v45 = 2080;
            v46 = v16;
            v47 = 2080;
            v48 = v17;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sIms Voice Support on LTE changed from %s to %s", buf, 0x2Au);
          }

          v18 = *(v9 + 14);
          if (!v18 || (v19 = sub_10147C0D0(*(v7 + 56), v12), (v18 == 1) == v19))
          {
LABEL_34:
            if (v11)
            {
              sub_100004A34(v11);
            }

            goto LABEL_36;
          }

          v20 = *(v7 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = PersonalityInfo::logPrefix(*v12);
            v22 = CSIBOOLAsString(v19);
            v23 = CSIBOOLAsString(v18 == 1);
            *buf = 136315906;
            *&buf[4] = v21;
            v43 = 2080;
            v44 = " ";
            v45 = 2080;
            v46 = v22;
            v47 = 2080;
            v48 = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork VoPS support has changed from %s to %s", buf, 0x2Au);
          }

          ServiceMap = Registry::getServiceMap(*(v7 + 56));
          v25 = ServiceMap;
          if (v26 < 0)
          {
            v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
            v28 = 5381;
            do
            {
              v26 = v28;
              v29 = *v27++;
              v28 = (33 * v28) ^ v29;
            }

            while (v29);
          }

          std::mutex::lock(ServiceMap);
          *buf = v26;
          v30 = sub_100009510(&v25[1].__m_.__sig, buf);
          if (v30)
          {
            v32 = v30[3];
            v31 = v30[4];
            if (v31)
            {
              atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v25);
              atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v31);
              v33 = 0;
LABEL_28:
              if (v18 == 1)
              {
                v34 = kCFBooleanTrue;
              }

              else
              {
                v34 = kCFBooleanFalse;
              }

              (*(*v32 + 16))(v32, *v12 + 24, @"NetworkSupportsVoPS", v34, @"Capabilities", 0, 1, 0);
              if ((v33 & 1) == 0)
              {
                sub_100004A34(v31);
              }

              sub_10147942C(v7, v12);
              goto LABEL_34;
            }
          }

          else
          {
            v32 = 0;
          }

          std::mutex::unlock(v25);
          v31 = 0;
          v33 = 1;
          goto LABEL_28;
        }
      }

LABEL_42:
      sub_100004A34(v38);
    }
  }

  sub_100009970(&v39, v40);
}

void sub_101481BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17)
{
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_100004A34(a12);
  sub_100009970(&a16, a17);
  _Unwind_Resume(a1);
}

uint64_t sub_101481C34(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101481C80(void *a1)
{
  *a1 = off_101F3F6B0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101481CCC(void *a1)
{
  *a1 = off_101F3F6B0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101481DAC(uint64_t result, uint64_t a2)
{
  *a2 = off_101F3F6B0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101481DEC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101481DFC(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101481E3C(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v55 = v4;
      if (a1[2])
      {
        v5 = *(v3 + 72);
        if (v5 != (v3 + 80))
        {
          v6 = (v3 + 360);
          v56 = (v3 + 536);
          v57 = (v3 + 408);
          do
          {
            v7 = v5[7];
            v8 = *(v3 + 40);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = PersonalityInfo::logPrefix(*v7);
              v10 = (*v7 + 24);
              v11 = *(*v7 + 47);
              v12 = v11;
              if ((v11 & 0x80u) != 0)
              {
                v11 = *(*v7 + 32);
              }

              if (v12 < 0)
              {
                v10 = *(*v7 + 24);
              }

              if (!v11)
              {
                v10 = "<invalid>";
              }

              *buf = 136315650;
              v61 = v9;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v10;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s----- Capabilities dump for personality '%s'", buf, 0x20u);
              v8 = *(v3 + 40);
            }

            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v13 = PersonalityInfo::logPrefix(*v7);
              WirelessTechnologyList::asString(__p, (v7 + 16));
              v14 = __p;
              if (v59 < 0)
              {
                v14 = __p[0];
              }

              *buf = 136315650;
              v61 = v13;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v14;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sTech: %s", buf, 0x20u);
              if (v59 < 0)
              {
                operator delete(__p[0]);
              }
            }

              ;
            }

            v16 = *(v3 + 40);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = PersonalityInfo::logPrefix(*v7);
              v18 = asString();
              *buf = 136315650;
              v61 = v17;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v18;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sAdjusted data mode: %s", buf, 0x20u);
              v16 = *(v3 + 40);
            }

            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v19 = PersonalityInfo::logPrefix(*v7);
              v20 = CSIBOOLAsString(*(v7 + 22));
              *buf = 136315650;
              v61 = v19;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v20;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLte registered: %s", buf, 0x20u);
            }

              ;
            }

            v22 = *(v3 + 40);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = PersonalityInfo::logPrefix(*v7);
              v24 = asString();
              *buf = 136315650;
              v61 = v23;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v24;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sBundle Technology Type: %s", buf, 0x20u);
              v22 = *(v3 + 40);
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v25 = PersonalityInfo::logPrefix(*v7);
              v26 = subscriber::asString();
              *buf = 136315650;
              v61 = v25;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v26;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%s1x sim type: %s", buf, 0x20u);
              v22 = *(v3 + 40);
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v27 = PersonalityInfo::logPrefix(*v7);
              v28 = subscriber::asString();
              *buf = 136315650;
              v61 = v27;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v28;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sGw sim type: %s", buf, 0x20u);
              v22 = *(v3 + 40);
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v29 = PersonalityInfo::logPrefix(*v7);
              WirelessTechnologyList::asString(__p, (v7 + 36));
              v30 = __p;
              if (v59 < 0)
              {
                v30 = __p[0];
              }

              *buf = 136315650;
              v61 = v29;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v30;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sCall handling tech: %s", buf, 0x20u);
              if (v59 < 0)
              {
                operator delete(__p[0]);
              }

              v22 = *(v3 + 40);
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v31 = PersonalityInfo::logPrefix(*v7);
              v32 = CSIBOOLAsString(*(v7 + 40));
              *buf = 136315650;
              v61 = v31;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v32;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sSim call and data support: %s", buf, 0x20u);
              v22 = *(v3 + 40);
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v33 = PersonalityInfo::logPrefix(*v7);
              v34 = CSIBOOLAsString(*(v7 + 41));
              *buf = 136315650;
              v61 = v33;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v34;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sSim call and data current support: %s", buf, 0x20u);
              v22 = *(v3 + 40);
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v35 = PersonalityInfo::logPrefix(*v7);
              v36 = CSIBOOLAsString(*(v7 + 43));
              *buf = 136315650;
              v61 = v35;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v36;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sCall forwarding support: %s", buf, 0x20u);
              v22 = *(v3 + 40);
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v37 = PersonalityInfo::logPrefix(*v7);
              v38 = CSIBOOLAsString(*(v7 + 44));
              *buf = 136315650;
              v61 = v37;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v38;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sCall waiting support: %s", buf, 0x20u);
              v22 = *(v3 + 40);
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v39 = PersonalityInfo::logPrefix(*v7);
              v40 = CSIBOOLAsString(*(v7 + 45));
              *buf = 136315650;
              v61 = v39;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v40;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sCaller id support: %s", buf, 0x20u);
              v22 = *(v3 + 40);
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v41 = PersonalityInfo::logPrefix(*v7);
              v42 = *v56;
              if (!*v56)
              {
                goto LABEL_57;
              }

              v43 = *(*v7 + 52);
              v44 = v3 + 536;
              do
              {
                if (*(v42 + 28) >= v43)
                {
                  v44 = v42;
                }

                v42 = *(v42 + 8 * (*(v42 + 28) < v43));
              }

              while (v42);
              if (v44 != v56 && *(v44 + 28) <= v43)
              {
                v45 = *(v44 + 32);
              }

              else
              {
LABEL_57:
                v45 = 0;
              }

              v46 = sub_100072578(v45);
              *buf = 136315650;
              v61 = v41;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v46;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sDevice Type: %s", buf, 0x20u);
              v22 = *(v3 + 40);
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v47 = PersonalityInfo::logPrefix(*v7);
              v48 = sub_100B47BD0(*(v7 + 48));
              *buf = 136315650;
              v61 = v47;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v48;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sSupp services support: %s", buf, 0x20u);
              v22 = *(v3 + 40);
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v49 = PersonalityInfo::logPrefix(*v7);
              v50 = sub_10147C0D0(*(v3 + 56), v7);
              v51 = CSIBOOLAsString(v50);
              *buf = 136315650;
              v61 = v49;
              v62 = 2080;
              v63 = " ";
              v64 = 2080;
              v65 = v51;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sVoPS capable network: %s", buf, 0x20u);
            }

            v52 = v5[1];
            if (v52)
            {
              do
              {
                v53 = v52;
                v52 = *v52;
              }

              while (v52);
            }

            else
            {
              do
              {
                v53 = v5[2];
                v54 = *v53 == v5;
                v5 = v53;
              }

              while (!v54);
            }

            v5 = v53;
          }

          while (v53 != (v3 + 80));
        }
      }

      sub_100004A34(v55);
    }
  }
}

uint64_t sub_101482760(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014827B8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (!sub_1014785DC(*v1))
  {
    goto LABEL_10;
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
  cf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &cf);
  if (!v9)
  {
    std::mutex::unlock(v4);
    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v4);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
    if (!v11)
    {
      v12 = 0;
LABEL_16:
      sub_100004A34(v10);
      return v12 & 1;
    }

    goto LABEL_12;
  }

  std::mutex::unlock(v4);
  if (!v11)
  {
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

LABEL_12:
  v13 = *(v1 + 8);
  v12 = 1;
  (*(*v11 + 96))(&cf, v11, v13, 1, @"Show5GSwitch", 0, 0);
  v14 = cf;
  v18 = 1;
  if (cf)
  {
    v15 = CFGetTypeID(cf);
    if (v15 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v18, v14, v16);
      v12 = v18;
    }
  }

  sub_10000A1EC(&cf);
  if (v10)
  {
    goto LABEL_16;
  }

  return v12 & 1;
}

void sub_101482938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101482964(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1014829A0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = 0;
  v5 = 0;
  sub_1000A0918(&v4, *v1, **(v1 + 8));
  if (v4)
  {
    v2 = *(v4 + 48);
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  return v2;
}

uint64_t sub_101482A00(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_101482A3C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_101482A98(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3F870;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101482AEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_101482B00(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_101482B68(uint64_t a1)
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

uint64_t *sub_101482BE8(uint64_t **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 48))
      {
        (*(*v3 + 64))(&v9, v3, *(v1 + 8));
        sub_1012C155C(v1 + 16, v9);
        sub_10001021C(&v9);
      }

      sub_100004A34(v5);
    }
  }

  sub_101482CCC(&v8);
  return sub_1000049E0(&v7);
}

void sub_101482C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  sub_10001021C(va2);
  sub_100004A34(v3);
  sub_101482CCC(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_101482CCC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 56);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    sub_101482B68(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_101482D28(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = 0;
  v5 = 0;
  sub_1000A0918(&v4, *v1, **(v1 + 8));
  if (v4)
  {
    v2 = *(v4 + 44);
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  return v2 & 1;
}

void sub_101482D88(uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

uint64_t sub_1014833F8(uint64_t a1)
{
  *a1 = off_101F3F8E0;
  xpc_release(*(a1 + 216));
  *(a1 + 216) = 0;
  xpc_release(*(a1 + 208));
  *(a1 + 208) = 0;
  sub_10148489C(a1 + 176);
  sub_1000D6F38(a1 + 120);
  v2 = *(a1 + 112);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100034450(*(a1 + 72));
  v4 = *(a1 + 56);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1014834D8(uint64_t a1)
{
  sub_1014833F8(a1);

  operator delete();
}

void sub_101483510(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101483610(void *a1, xpc_object_t *a2, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      xpc_null_create();
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101483740(uint64_t a1)
{
  v2 = *(a1 + 143);
  if (v2 < 0)
  {
    if (!*(a1 + 128))
    {
      return;
    }
  }

  else if (!*(a1 + 143))
  {
    return;
  }

  v3 = (a1 + 120);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 120);
    if ((v2 & 0x80000000) != 0)
    {
      v5 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Wifi now is available with BSSID %s", buf, 0xCu);
  }

  v6 = *(a1 + 64);
  if (v6 == a1 + 72)
  {
    return;
  }

  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(v6 + 28));
  v8 = v7;
  if (*(v6 + 36) != 1)
  {
    v49 = 0;
    *v47 = 0u;
    v48 = 0u;
    *v45 = 0u;
    v46 = 0u;
    *v44 = 0u;
    v9 = *(v6 + 28);
    v10 = *(a1 + 216);
    v68[0] = v10;
    if (v10)
    {
      xpc_retain(v10);
      v11 = v68[0];
    }

    else
    {
      v11 = xpc_null_create();
      v68[0] = v11;
    }

    if (xpc_get_type(v11) != &_xpc_type_dictionary)
    {
LABEL_72:
      xpc_release(v68[0]);
      if (LOBYTE(v44[1]) == 1)
      {
        v33 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Searching", buf, 2u);
        }

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        *v61 = 0u;
        *v59 = 0u;
        memset(buf, 0, sizeof(buf));
        if (*(a1 + 143) < 0)
        {
          sub_100005F2C(buf, *(a1 + 120), *(a1 + 128));
        }

        else
        {
          *buf = *v3;
          *&buf[16] = *(a1 + 136);
        }

        if (v44[1])
        {
          *&buf[24] = HIDWORD(v44[0]);
          sub_10002D960(v59, v45);
          DWORD2(v63) = *(v6 + 28);
          v34 = *(a1 + 16);
          if (v34)
          {
            v35 = *(a1 + 8);
            v36 = std::__shared_weak_count::lock(v34);
            if (v36)
            {
              *v55 = v35;
              *&v55[8] = v36;
              atomic_fetch_add_explicit(&v36->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v36);
              *&v55[16] = v44[0];
              v56 = v44[1];
              sub_10002D960(v57, v45);
              xdict = 0;
              write_rest_value();
              sub_10000501C(object, "/cc/requests/csg_search");
              v53 = xdict;
              v37 = xpc_null_create();
              *v64 = *v55;
              xdict = v37;
              *v55 = 0;
              *&v55[8] = 0;
              v65 = *&v55[16];
              v66 = v56;
              sub_10002D960(v67, v57);
              v68[3] = 0;
              operator new();
            }
          }

          sub_100013CC4();
        }

        sub_1000D1644();
      }

      if (v49 == 1)
      {
        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47[1]);
        }

        if (SHIBYTE(v46) < 0)
        {
          v41 = v45[1];
          goto LABEL_93;
        }
      }

      return;
    }

    object[0] = 0;
    *buf = v68;
    *&buf[8] = "kSlots";
    sub_100048A24(buf, object);
    if (xpc_get_type(object[0]) != &_xpc_type_dictionary)
    {
LABEL_71:
      xpc_release(object[0]);
      goto LABEL_72;
    }

    xdict = 0;
    v12 = subscriber::asString();
    *buf = object;
    *&buf[8] = v12;
    sub_100048A24(buf, &xdict);
    if (xpc_get_type(xdict) != &_xpc_type_dictionary)
    {
LABEL_70:
      xpc_release(xdict);
      goto LABEL_71;
    }

    v13 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v13 = *v3;
    }

    if (!xpc_dictionary_get_value(xdict, v13))
    {
      v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v9);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = (a1 + 120);
        if (*(a1 + 143) < 0)
        {
          v18 = *v3;
        }

        *buf = 136315138;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I No Closed Subscriber Group is associated with WiFi %s", buf, 0xCu);
      }

      goto LABEL_70;
    }

    v53 = 0;
    v14 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v14 = *v3;
    }

    *buf = &xdict;
    *&buf[8] = v14;
    sub_100048A24(buf, &v53);
    if (xpc_get_type(v53) != &_xpc_type_dictionary)
    {
      v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v9);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = (a1 + 120);
        if (*(a1 + 143) < 0)
        {
          v16 = *v3;
        }

        *buf = 136315138;
        *&buf[4] = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#N No CSG dictionary found associated with WiFi %s", buf, 0xCu);
      }

      goto LABEL_69;
    }

    v52 = 0;
    *buf = &v53;
    *&buf[8] = "kCsgiId";
    sub_100006354(buf, &v52);
    if (xpc_get_type(v52) == &_xpc_type_null)
    {
      v26 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v9);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = (a1 + 120);
        if (*(a1 + 143) < 0)
        {
          v27 = *v3;
        }

        *buf = 136315138;
        *&buf[4] = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#N No CSG ID found associated with WiFi %s", buf, 0xCu);
      }

      goto LABEL_68;
    }

    HIDWORD(v44[0]) = xpc::dyn_cast_or_default(&v52, 0, v19);
    LOBYTE(v44[1]) = 1;
    v51 = 0;
    *buf = &v53;
    *&buf[8] = "kPlmn";
    sub_100006354(buf, &v51);
    if (xpc_get_type(v51) == &_xpc_type_null)
    {
      v28 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v9);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = (a1 + 120);
        if (*(a1 + 143) < 0)
        {
          v29 = *v3;
        }

        *buf = 136315138;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#N No PLMN found associated with WiFi %s", buf, 0xCu);
      }

      goto LABEL_67;
    }

    memset(v64, 0, sizeof(v64));
    v65 = 0;
    memset(buf, 0, 24);
    xpc::dyn_cast_or_default();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v20 = HIBYTE(v65);
    if (v65 < 0)
    {
      v20 = *&v64[8];
    }

    if (v20)
    {
      MCCAndMNC::MCCAndMNC();
      sub_1014845D0(v45, buf);
      sub_1002FECBC(buf);
      log = *(*(**(a1 + 48) + 16))(*(a1 + 48), v9);
      if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      ctu::hex(HIDWORD(v44[0]), v21);
      if (v55[23] >= 0)
      {
        v22 = v55;
      }

      else
      {
        v22 = *v55;
      }

      if (v65 >= 0)
      {
        v23 = v64;
      }

      else
      {
        v23 = *v64;
      }

      v24 = (a1 + 120);
      if (*(a1 + 143) < 0)
      {
        v24 = *v3;
      }

      *buf = 136315650;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = v23;
      *&buf[22] = 2080;
      *&buf[24] = v24;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I Found previously associated CSG ID 0x%s from PLMN %s for WiFi %s", buf, 0x20u);
      if ((v55[23] & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v25 = *v55;
    }

    else
    {
      loga = *(*(**(a1 + 48) + 16))(*(a1 + 48), v9);
      if (!os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      ctu::hex(HIDWORD(v44[0]), v30);
      v31 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v31 = *buf;
      }

      v32 = (a1 + 120);
      if (*(a1 + 143) < 0)
      {
        v32 = *v3;
      }

      *v55 = 136315394;
      *&v55[4] = v31;
      *&v55[12] = 2080;
      *&v55[14] = v32;
      _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "#I Found previously associated CSG ID 0x%s for WiFi %s", v55, 0x16u);
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v25 = *buf;
    }

    operator delete(v25);
LABEL_65:
    LODWORD(v44[0]) = v9;
    if (SHIBYTE(v65) < 0)
    {
      operator delete(*v64);
    }

LABEL_67:
    xpc_release(v51);
LABEL_68:
    xpc_release(v52);
LABEL_69:
    xpc_release(v53);
    goto LABEL_70;
  }

  v38 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    ctu::hex(*(v6 + 32), v39);
    v40 = (buf[23] & 0x80u) == 0 ? buf : *buf;
    *v64 = 136315138;
    *&v64[4] = v40;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Currently associated with CSG ID 0x%s, not forcing a search", v64, 0xCu);
    if (buf[23] < 0)
    {
      v41 = *buf;
LABEL_93:
      operator delete(v41);
    }
  }
}

void sub_10148426C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, xpc_object_t __p, uint64_t a29, int a30, __int16 a31, char a32, char a33, xpc_object_t object, xpc_object_t a35, xpc_object_t a36, xpc_object_t a37, char a38, std::__shared_weak_count *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (*(v57 - 217) < 0)
  {
    operator delete(*(v57 - 240));
  }

  xpc_release(object);
  xpc_release(a35);
  xpc_release(a36);
  xpc_release(a37);
  xpc_release(__p);
  xpc_release(*(v57 - 136));
  sub_100F4EDCC(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10148448C(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_1014844E8(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    v3 = object;
    xpc_retain(object);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = v3;
  xpc_release(v4);
  result = *(a1 + 24);
  if (result)
  {
    v6 = *(*result + 48);

    return v6();
  }

  return result;
}

void **sub_101484580(void **a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = *a1;
  *a1 = v3;
  xpc_release(v4);
  return a1;
}

_BYTE *sub_1014845D0(_BYTE *a1, uint64_t a2)
{
  if (a1[64] == 1)
  {
    MCC::operator=();
    MCC::operator=();
  }

  else
  {
    MCC::MCC(a1, a2);
    MCC::MCC((a1 + 32), (a2 + 32));
    a1[64] = 1;
  }

  return a1;
}

void sub_101484630(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_10148464C(uint64_t a1)
{
  v2 = *(a1 + 143);
  if (v2 < 0)
  {
    v3 = *(a1 + 128);
  }

  else
  {
    v3 = *(a1 + 143);
  }

  v4 = *(a1 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = (a1 + 120);
    if ((v2 & 0x80000000) != 0)
    {
      v6 = *v6;
    }

    *buf = 136315138;
    *&buf[4] = v6;
    v7 = "#I Currently associated WiFi MAC: %s";
    v8 = v4;
    v9 = 12;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    *buf = 0;
    v7 = "#I Not currently associated a WiFi BSSID";
    v8 = v4;
    v9 = 2;
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
LABEL_12:
  v10 = *(a1 + 64);
  if (v10 != (a1 + 72))
  {
    do
    {
      v11 = *(v10 + 36);
      v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v10 + 7));
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11 == 1)
      {
        if (v13)
        {
          if ((*(v10 + 36) & 1) == 0)
          {
            sub_1000D1644();
          }

          ctu::hex(*(v10 + 8), v14);
          if (v20 >= 0)
          {
            v15 = buf;
          }

          else
          {
            v15 = *buf;
          }

          *v21 = 136315138;
          v22 = v15;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Currently associated CSG ID: 0x%s", v21, 0xCu);
          if (v20 < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Not currently associated with a CSG cell", buf, 2u);
      }

      v16 = v10[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v10[2];
          v18 = *v17 == v10;
          v10 = v17;
        }

        while (!v18);
      }

      v10 = v17;
    }

    while (v17 != (a1 + 72));
  }
}

uint64_t sub_10148489C(uint64_t a1)
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

void sub_101484920(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101484974(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014849B4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1014849E0(ServiceManager::Service *this)
{
  *this = off_101F3FAD0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101484A3C(ServiceManager::Service *this)
{
  *this = off_101F3FAD0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_101484ABC@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_101484B00(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_101483510(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_101483510(v4, 0);
}

void sub_101484B9C(uint64_t a1, xpc_object_t *a2, NSObject **a3)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v7 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v6 = *a3;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v6);
    sub_101483610(v4, &v7, v6);
  }

  sub_101483610(v4, &v7, 0);
}

void sub_101484C54(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101484D68(ServiceManager::Service *this)
{
  *this = off_101F3FAD0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101484DC4(ServiceManager::Service *this)
{
  *this = off_101F3FAD0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_101484E6C(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  ctu::RestModule::disconnect((*v1 + 88));
  sub_1000FF844(&v4);
  return sub_1000049E0(&v3);
}

void sub_101484EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101484ED0(uint64_t **a1)
{
  v1 = **a1;
  subscriber::makeSimSlotRange();
  v2 = v10;
  if (v10 != v11)
  {
    do
    {
      if (v12(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v11);
    if (v2 != v11)
    {
      v3 = (v1 + 72);
      do
      {
        v4 = *v2;
        v5 = *v3;
        if (!*v3)
        {
LABEL_12:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v6 = v5;
            v7 = *(v5 + 28);
            if (v7 <= v4)
            {
              break;
            }

            v5 = *v6;
            if (!*v6)
            {
              goto LABEL_12;
            }
          }

          if (v7 >= v4)
          {
            break;
          }

          v5 = v6[1];
          if (!v5)
          {
            goto LABEL_12;
          }
        }

        do
        {
          ++v2;
        }

        while (v2 != v11 && (v12(*v2) & 1) == 0);
      }

      while (v2 != v11);
    }
  }

  Registry::createRestModuleOneTimeUseConnection(&v8, *(v1 + 104));
  ctu::RestModule::connect();
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_10000501C(&__p, "/cc/props/wifi_settings");
  operator new();
}

void sub_1014853F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1014854FC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3FB78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101485534(void *a1, void **a2)
{
  object = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    object = xpc_null_create();
  }

  read_rest_value();
  xpc_release(object);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_1014855FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014856C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3FBF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014856FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014857C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3FC78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014857FC(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_101485844(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101485900(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3FCF8;
  a2[1] = v2;
  return result;
}

void sub_10148592C(uint64_t a1, xpc_object_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/prefs-nb/kClosedSubscriberGroupIdKey");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_1014859DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_101485A24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101485AE0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3FD88;
  a2[1] = v2;
  return result;
}

uint64_t sub_101485B14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101485B60(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      sub_100004A34(v2);
    }

    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_101485BDC(void *a1)
{
  v23 = a1;
  v1 = *a1;
  *buf = a1 + 2;
  v26 = "kIsEraseInstall";
  sub_100006354(buf, &v33);
  v3 = xpc::dyn_cast_or_default(&v33, 0, v2);
  xpc_release(v33);
  if (!v3)
  {
    v5 = v1[27];
    v32 = v5;
    if (v5)
    {
      xpc_retain(v5);
      v6 = v32;
    }

    else
    {
      v6 = xpc_null_create();
      v32 = v6;
    }

    if (xpc_get_type(v6) != &_xpc_type_dictionary)
    {
      goto LABEL_30;
    }

    object = 0;
    *buf = &v32;
    v26 = "kSlots";
    sub_100048A24(buf, &object);
    if (xpc_get_type(object) == &_xpc_type_dictionary)
    {
LABEL_29:
      xpc_release(object);
LABEL_30:
      xpc_release(v32);
      return sub_101485B60(&v23);
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    if (v7 || (v7 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v7) == &_xpc_type_dictionary)
      {
        xpc_retain(v7);
        v8 = v7;
      }

      else
      {
        v8 = xpc_null_create();
      }
    }

    else
    {
      v8 = xpc_null_create();
      v7 = 0;
    }

    xpc_release(v7);
    v9 = v32;
    *buf = _NSConcreteStackBlock;
    v26 = 1174405120;
    v27 = sub_10148608C;
    v28 = &unk_101F3FDF8;
    v29 = v1;
    v30 = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      v30 = xpc_null_create();
    }

    xpc_dictionary_apply(v9, buf);
    v10 = subscriber::asString();
    if (v8)
    {
      xpc_retain(v8);
      sub_10107F3AC(&v33);
      v11 = v8;
    }

    else
    {
      v11 = xpc_null_create();
      sub_10107F3AC(&v33);
      if (!v11)
      {
        v11 = xpc_null_create();
        v12 = 0;
LABEL_22:
        sub_1014864AC(&v24, &v33, v10, v11);
        xpc_release(v11);
        xpc_release(v33);
        v13 = v24;
        v14 = xpc_null_create();
        v24 = v14;
        v15 = object;
        object = v13;
        xpc_release(v15);
        xpc_release(v14);
        v24 = 0;
        xpc_release(v12);
        v16 = object;
        if (object)
        {
          xpc_retain(object);
          sub_10107F3AC(&v33);
        }

        else
        {
          v16 = xpc_null_create();
          sub_10107F3AC(&v33);
          if (!v16)
          {
            v16 = xpc_null_create();
            v17 = 0;
            goto LABEL_26;
          }
        }

        xpc_retain(v16);
        v17 = v16;
LABEL_26:
        sub_1014864AC(&v24, &v33, "kSlots", v16);
        xpc_release(v16);
        xpc_release(v33);
        v18 = v24;
        v19 = xpc_null_create();
        v24 = v19;
        v20 = v1[26];
        v1[26] = v18;
        xpc_release(v20);
        v21 = v1[25];
        if (v21)
        {
          (*(*v21 + 48))(v21, v1 + 26);
        }

        xpc_release(v19);
        v24 = 0;
        xpc_release(v17);
        xpc_release(v30);
        v30 = 0;
        xpc_release(v8);
        goto LABEL_29;
      }
    }

    xpc_retain(v11);
    v12 = v11;
    goto LABEL_22;
  }

  v4 = v1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Erase-install, skipping carrier bundle migration", buf, 2u);
  }

  return sub_101485B60(&v23);
}

void sub_101485F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object, uint64_t a17, xpc_object_t a18)
{
  xpc_release(v20);
  a10 = 0;
  xpc_release(v19);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  xpc_release(a18);
  xpc_release(*(v21 - 64));
  sub_101485B60(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10148608C(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  v6 = *(a1 + 32);
  if (xpc_get_type(object) == &_xpc_type_int64)
  {
    v8 = *(v6 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (v6 + 120);
      if (*(v6 + 143) < 0)
      {
        v9 = *v9;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Found legacy association for WiFi %s", &buf, 0xCu);
    }

    v10 = xpc_copy(object);
    if (v10)
    {
      sub_10107F3AC(&v19);
    }

    else
    {
      v10 = xpc_null_create();
      sub_10107F3AC(&v19);
      if (!v10)
      {
        v11 = xpc_null_create();
        if (!v11)
        {
          v12 = xpc_null_create();
          v20 = v12;
          if (!v12)
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v20 = xpc_null_create();
            goto LABEL_18;
          }

          v10 = 0;
          v11 = 0;
LABEL_17:
          xpc_retain(v12);
LABEL_18:
          *&buf = &v19;
          *(&buf + 1) = "kCsgiId";
          sub_10000F688(&buf, &v20, &v21);
          xpc_release(v21);
          v21 = 0;
          xpc_release(v20);
          v20 = 0;
          v16 = v19;
          if (v19)
          {
            xpc_retain(v19);
          }

          else
          {
            v16 = xpc_null_create();
          }

          xpc_release(v12);
          xpc_release(v11);
          xpc_release(v19);
          sub_10107F2C8(&v21, "", &v16, "kPlmn");
          v17 = v21;
          v21 = xpc_null_create();
          *&buf = a1 + 40;
          *(&buf + 1) = a2;
          sub_100DAE90C(&buf, &v17, &v18);
          xpc_release(v18);
          v18 = 0;
          xpc_release(v17);
          v17 = 0;
          xpc_release(v21);
          v21 = 0;
          xpc_release(v16);
          v16 = 0;
          xpc_release(v10);
          return 1;
        }

        v10 = 0;
LABEL_16:
        xpc_retain(v11);
        v20 = v11;
        v12 = v11;
        goto LABEL_17;
      }
    }

    xpc_retain(v10);
    v11 = v10;
    goto LABEL_16;
  }

  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v14 = xpc_copy(object);
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    *&buf = a1 + 40;
    *(&buf + 1) = a2;
    sub_10000F688(&buf, &v14, &objecta);
    xpc_release(objecta);
    objecta = 0;
    xpc_release(v14);
  }

  else
  {
    v7 = *(v6 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Unknown object type for BSSID %s", &buf, 0xCu);
    }
  }

  return 1;
}

void sub_1014863A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

xpc_object_t sub_10148643C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void sub_1014864AC(void **a1, void **a2, uint64_t a3, xpc_object_t object)
{
  if (object)
  {
    v7 = object;
    xpc_retain(object);
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
  v9[0] = a2;
  v9[1] = a3;
  sub_10000F688(v9, &v10, &objecta);
  xpc_release(objecta);
  objecta = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = *a2;
  *a1 = *a2;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  xpc_release(v7);
}

uint64_t sub_10148658C(uint64_t a1)
{
  *a1 = off_101F3FE38;
  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101486604(uint64_t a1)
{
  *a1 = off_101F3FE38;
  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10148672C(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

MCC *sub_10148674C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101F3FE38;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 24) = v4;
  return sub_10002D960((a2 + 40), (a1 + 40));
}

void sub_1014867C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014867D8(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }
  }

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_101486848(void **__p)
{
  if (*(__p + 104) == 1)
  {
    if (*(__p + 103) < 0)
    {
      operator delete(__p[10]);
    }

    if (*(__p + 71) < 0)
    {
      operator delete(__p[6]);
    }
  }

  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014868B4(uint64_t a1, xpc_object_t *a2)
{
  v11 = *a2;
  *a2 = xpc_null_create();
  read_rest_value();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = *(a1 + 24);
        __p = 0;
        v13 = 0;
        memset(v14, 0, sizeof(v14));
        v15 = 0;
        v8 = *(*(**(v6 + 48) + 16))(*(v6 + 48), v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          ctu::hex(0, v9);
          v10 = v17 >= 0 ? buf : *buf;
          *v18 = 136315138;
          *&v18[4] = v10;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot remove CSG association for ID 0x%s without WiFi MAC address", v18, 0xCu);
          if (v17 < 0)
          {
            operator delete(*buf);
          }
        }

        if (v15 < 0)
        {
          operator delete(__p);
        }
      }

      sub_100004A34(v5);
    }
  }

  if (((0 >> 120) & 0x80000000) != 0)
  {
    operator delete(0);
  }

  xpc_release(v11);
}

void sub_101486CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, xpc_object_t object, xpc_object_t a26)
{
  xpc_release(object);
  xpc_release(a26);
  xpc_release(*(v29 - 96));
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v27);
  if (v28 < 0)
  {
    operator delete(v26);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  xpc_release(a9);
  _Unwind_Resume(a1);
}

uint64_t sub_101486DC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101486E10()
{
  v0 = 0;
  v1 = 0;
  sub_10001C610(&v0);
  if (v0)
  {
    wis::WISServerConnection::RegisterQueriableMetricCallbackForLogging();
  }

  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_101486E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_101486E78(id a1, __CFDictionary *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Toggling CommCenter logging because of AWD callback", buf, 2u);
  }

  v3 = sub_1014877D0(a2, @"enableCSI");
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  sub_10000501C(v29, "128");
  sub_1014878B8(a2, @"csiSize", v29);
  v4 = sub_1014877D0(a2, @"dump");
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  sub_10000501C(v27, "Dumping CommCenter logging because of AWD Logging callback");
  sub_1014878B8(a2, @"reason", v27);
  v5 = sub_1014877D0(a2, @"terminate");
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v29;
    if (v30 < 0)
    {
      v6 = v29[0];
    }

    v7 = v27;
    if (v28 < 0)
    {
      v7 = v27[0];
    }

    *buf = 67110146;
    *&buf[4] = v3;
    *&buf[8] = 2080;
    *&buf[10] = v6;
    v38 = 1024;
    *v39 = v4;
    *&v39[4] = 2080;
    *&v39[6] = v7;
    v40 = 1024;
    v41 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AWD Log Dict - CSI - (%d, %s, %d, %s, %d)", buf, 0x28u);
  }

  v24 = 0;
  v25 = 0;
  sub_10005B8C8(&v24);
  v8 = sub_1005C6790(2u);
  v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Requested to DUMP logs", buf, 2u);
    }

    v10 = v24;
    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(__dst, v27[0], v27[1]);
    }

    else
    {
      *__dst = *v27;
      v34 = v28;
    }

    RequestDumpStatePayload::RequestDumpStatePayload();
    (*(*v10 + 200))(v10, buf);
    if ((v39[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v34) < 0)
    {
      v15 = __dst[0];
LABEL_42:
      operator delete(v15);
    }
  }

  else
  {
    if (v9)
    {
      v11 = "dis";
      if (v3)
      {
        v11 = "en";
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Requested to %sable CSI logs", buf, 0xCu);
    }

    v12 = v24;
    sub_10000501C(buf, v8);
    (*(*v12 + 232))(v12, buf, v3);
    if ((v39[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v13 = v24;
    sub_10000501C(buf, v8);
    sub_10000501C(__dst, "enableGlobalLogging");
    sub_10000501C(__p, "false");
    (*(*v13 + 240))(v13, buf, __dst, __p);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(__dst[0]);
    }

    if ((v39[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v14 = v24;
    sub_10000501C(buf, v8);
    sub_10000501C(__dst, "history");
    if (v3)
    {
      if (SHIBYTE(v30) < 0)
      {
        sub_100005F2C(__p, v29[0], v29[1]);
      }

      else
      {
        *__p = *v29;
        v32 = v30;
      }
    }

    else
    {
      sub_10000501C(__p, "-1");
    }

    (*(*v14 + 240))(v14, buf, __dst, __p);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(__dst[0]);
    }

    if ((v39[3] & 0x80000000) != 0)
    {
      v15 = *buf;
      goto LABEL_42;
    }
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  v16 = sub_1014877D0(a2, @"enableDIAG");
  __p[0] = 0;
  __p[1] = 0;
  v32 = 0;
  sub_10000501C(__p, "256");
  sub_1014878B8(a2, @"diagSize", __p);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_10000501C(&v24, "false");
  sub_1014878B8(a2, @"enabledDuringSleep", &v24);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v17 = __p;
    if (v32 < 0)
    {
      v17 = __p[0];
    }

    v18 = &v24;
    if (v26 < 0)
    {
      v18 = v24;
    }

    *buf = 67109634;
    *&buf[4] = v16;
    *&buf[8] = 2080;
    *&buf[10] = v17;
    v38 = 2080;
    *v39 = v18;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AWD Log Dict - BasebandTrace - (%d, %s, %s)", buf, 0x1Cu);
  }

  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "disable";
      if (v16)
      {
        v19 = "enable";
      }

      *buf = 136315138;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AWD Log Callback: Requested to %s Baseband logging", buf, 0xCu);
    }

    v35 = 0;
    v36 = 0;
    sub_10005B8C8(&v35);
    v20 = sub_1005C6790(0);
    v21 = v35;
    sub_10000501C(buf, v20);
    sub_10000501C(__dst, "enabled_during_sleep");
    (*(*v21 + 240))(v21, buf, __dst, &v24);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__dst[0]);
    }

    if ((v39[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v22 = v35;
    sub_10000501C(buf, v20);
    sub_10000501C(__dst, "history");
    (*(*v22 + 240))(v22, buf, __dst, __p);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__dst[0]);
    }

    if ((v39[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v23 = v35;
    sub_10000501C(buf, v20);
    (*(*v23 + 232))(v23, buf, v16);
    if ((v39[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v36)
    {
      sub_100004A34(v36);
    }
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v24);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }
}

void sub_10148764C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (*(v43 - 105) < 0)
  {
    operator delete(*(v43 - 128));
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1014877D0(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    CFGetTypeID(Value);
    CFStringGetTypeID();
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_10000501C(&v5, "false");
  ctu::cf::assign();
  if (SHIBYTE(v7) < 0)
  {
    v3 = v6 == 4 && *v5 == 1702195828;
    operator delete(v5);
  }

  else
  {
    return SHIBYTE(v7) == 4 && v5 == 1702195828;
  }

  return v3;
}

void sub_10148789C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014878B8(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    CFGetTypeID(Value);
    CFStringGetTypeID();
  }

  return ctu::cf::assign();
}

void sub_10148791C(uint64_t a1)
{
  v1 = a1;
  memset(v2, 0, sizeof(v2));
  sub_100A5C398(v2, &v1, "kSettingsModelGetProperty", sub_101487C98, 3);
}

void sub_101487C98(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, CFIndex *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
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
  *&buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  v18 = Registry::getServiceMap(*a1);
  v19 = v18;
  if (v20 < 0)
  {
    v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v20 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(v18);
  *&buf = v20;
  v24 = sub_100009510(&v19[1].__m_.__sig, &buf);
  if (!v24)
  {
    v26 = 0;
    goto LABEL_16;
  }

  v26 = v24[3];
  v25 = v24[4];
  if (!v25)
  {
LABEL_16:
    std::mutex::unlock(v19);
    v25 = 0;
    v42 = 1;
    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v19);
  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v25);
  v42 = 0;
LABEL_17:
  if (xpc_dictionary_get_value(*a4, "kSettingsModelCopySystemCapabilities") && v26)
  {
    v70 = 0;
    (*(*v26 + 64))(&v70, v26, 1);
    if (v70)
    {
      v81 = _CFXPCCreateXPCObjectFromCFObject();
      if (!v81)
      {
        v81 = xpc_null_create();
      }

      *&buf = *a5;
      *(&buf + 1) = "kSettingsModelSystemCapabilitiesDict";
      sub_10000F688(&buf, &v81, &v82);
      xpc_release(v82);
      v82 = 0;
      xpc_release(v81);
      v81 = 0;
    }

    sub_10001021C(&v70);
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelCopyBasebandSettings"))
  {
    sub_100020AB8();
    v27 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I ## server_CTSettingsCopyBasebandSettings", &buf, 2u);
    }

    if (v16)
    {
      v70 = 0;
      LODWORD(length) = 0;
      (*(*v16 + 384))(v16, &v70, &length);
      if (v70)
      {
        v28 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v70, length, kCFAllocatorNull);
        if (v28)
        {
          v29 = CFPropertyListCreateWithData(kCFAllocatorDefault, v28, 0, 0, 0);
          if (v29)
          {
            v79 = _CFXPCCreateXPCObjectFromCFObject();
            if (!v79)
            {
              v79 = xpc_null_create();
            }

            *&buf = *a5;
            *(&buf + 1) = "kSettingsModelBasebandSettingsDict";
            sub_10000F688(&buf, &v79, &v80);
            xpc_release(v80);
            v80 = 0;
            xpc_release(v79);
            v79 = 0;
            CFRelease(v29);
          }

          CFRelease(v28);
        }

        vm_deallocate(mach_task_self_, v70, length);
      }

      else
      {
        *&buf = *a5;
        *(&buf + 1) = "kSettingsModelBasebandSettingsDict";
        sub_100E3F0C8(&buf, &v78);
        xpc_release(v78);
        v78 = 0;
      }
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelIsUnconditionalCallForwardingActive"))
  {
    sub_100020AB8();
    v30 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I ## server_CTIsUnconditionalCallForwardingActive", &buf, 2u);
    }

    if (v16)
    {
      v31 = (*(*v16 + 104))(v16, 1);
      if ((v31 & 0x100) != 0)
      {
        v76 = xpc_BOOL_create(v31 & 1);
        if (!v76)
        {
          v76 = xpc_null_create();
        }

        *&buf = *a5;
        *(&buf + 1) = "kSettingsModelActive";
        sub_10000F688(&buf, &v76, &v77);
        xpc_release(v77);
        v77 = 0;
        xpc_release(v76);
        v76 = 0;
      }

      else
      {
        v74 = xpc_int64_create(35);
        if (!v74)
        {
          v74 = xpc_null_create();
        }

        *&buf = *a5;
        *(&buf + 1) = "kPosixError";
        sub_10000F688(&buf, &v74, &v75);
        xpc_release(v75);
        v75 = 0;
        xpc_release(v74);
        v74 = 0;
      }
    }

    else
    {
      v72 = xpc_BOOL_create(0);
      if (!v72)
      {
        v72 = xpc_null_create();
      }

      *&buf = *a5;
      *(&buf + 1) = "kSettingsModelActive";
      sub_10000F688(&buf, &v72, &v73);
      xpc_release(v73);
      v73 = 0;
      xpc_release(v72);
      v72 = 0;
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelGetVoiceMailInfo"))
  {
    sub_100020AB8();
    v32 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I ## server_SettingsModelGetVoiceMailInfo", &buf, 2u);
    }

    *&buf = 4096;
    if (IsTelephonyRunningExtended(&buf))
    {
      v70 = 0;
      v71 = 0;
      sub_100DF07C8(*a1, &v70);
      if (v70)
      {
        buf = 0u;
        v69 = 0u;
        (*(*v70 + 72))(v70, 1);
        if ((SBYTE7(v69) & 0x80u) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf;
        }

        v66 = xpc_string_create(p_buf);
        if (!v66)
        {
          v66 = xpc_null_create();
        }

        length = *a5;
        v65 = "kSettingsModelNumber";
        sub_10000F688(&length, &v66, &v67);
        xpc_release(v67);
        v67 = 0;
        xpc_release(v66);
        v66 = 0;
        v62 = xpc_int64_create(SDWORD2(v69));
        if (!v62)
        {
          v62 = xpc_null_create();
        }

        length = *a5;
        v65 = "kSettingsModelType";
        sub_10000F688(&length, &v62, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v62);
        v62 = 0;
        if (SBYTE7(v69) < 0)
        {
          operator delete(buf);
        }
      }

      if (v71)
      {
        sub_100004A34(v71);
      }
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelGetEffectiveSimInfo"))
  {
    sub_100020AB8();
    v34 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I ## server_CTGetEffectiveSimInfo", &buf, 2u);
    }

    v60 = xpc_BOOL_create(0);
    if (!v60)
    {
      v60 = xpc_null_create();
    }

    *&buf = *a5;
    *(&buf + 1) = "kSettingsModelValid";
    sub_10000F688(&buf, &v60, &v61);
    xpc_release(v61);
    v61 = 0;
    xpc_release(v60);
    v60 = 0;
    buf = 0uLL;
    sub_10006C5D0(&buf);
    v35 = buf;
    if (buf)
    {
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3321888768;
      v54[2] = sub_10148D7A4;
      v54[3] = &unk_101F3FF30;
      v37 = *a5;
      v36 = a5[1];
      v55 = &stru_101F3FF08;
      v56 = v37;
      v57 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = v16;
      v59 = v15;
      if ((v17 & 1) == 0)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v35 + 24))(v35, v54);
      if (v59)
      {
        sub_100004A34(v59);
      }

      if (v57)
      {
        sub_100004A34(v57);
      }
    }

    else
    {
      v38 = a5[1];
      v53[0] = *a5;
      v53[1] = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52[0] = v16;
      v52[1] = v15;
      if ((v17 & 1) == 0)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      CSIPhoneNumber::CSIPhoneNumber(&v43);
      v83.var0.var0 = v53;
      v83.var0.var1 = v52;
      v84.var1 = &v43;
      v84.var0 = 0;
      sub_10148D580(v39, v83, v84, v40, v41);
      if (v51 < 0)
      {
        operator delete(__p);
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

      if (*(&v43.var2.__rep_.__l + 23) < 0)
      {
        operator delete(v43.var2.__rep_.__l.__data_);
      }

      if (v15)
      {
        sub_100004A34(v15);
      }

      if (v38)
      {
        sub_100004A34(v38);
      }
    }

    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }
  }

  if ((v42 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_1014885F4(_Unwind_Exception *a1, int a2, char a3, int a4, char a5, ...)
{
  va_start(va, a5);
  sub_10034F8E8(va);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }

  v11 = *(v9 - 232);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if ((a5 & 1) == 0)
  {
    sub_100004A34(v6);
  }

  if ((v8 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void sub_10148872C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v21 = xpc_BOOL_create(0);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v20[0] = *a5;
  v20[1] = "kSettingsModelValid";
  sub_10000F688(v20, &v21, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v21);
  v21 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  v20[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, v20);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v15)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_12:
  v17 = a5[1];
  v18 = *a5;
  v19 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v15 + 320))(v15, &v18);
  if (v19)
  {
    sub_100004A34(v19);
  }

LABEL_16:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_1014888C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014888F4(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
    v12 = v11[3];
    v13 = v11[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v57 = v13;
      sub_100004A34(v13);
      v58 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v6);
  v57 = 0;
  v58 = 1;
LABEL_9:
  if (xpc_dictionary_get_value(*a4, "kSettingsModelSetBasebandSettings"))
  {
    sub_100020AB8();
    v14 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I ## server_CTSettingsSetBasebandSettings", buf, 2u);
    }

    if (v12)
    {
      *buf = 0;
      xpc_dictionary_get_value(*a4, "kSettingsModelBasebandSettingsDict");
      error[0] = _CFXPCCreateCFObjectFromXPCObject();
      sub_100138C38(buf, error);
      error[0] = 0;
      Data = CFPropertyListCreateData(kCFAllocatorDefault, *buf, kCFPropertyListBinaryFormat_v1_0, 0, error);
      v16 = Data;
      if (Data)
      {
        BytePtr = CFDataGetBytePtr(Data);
        Length = CFDataGetLength(v16);
        (*(*v12 + 392))(v12, BytePtr, Length);
        CFRelease(v16);
      }

      if (error[0])
      {
        CFRelease(error[0]);
      }

      sub_10001021C(buf);
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelSaveCallForwardingValue"))
  {
    sub_100020AB8();
    v19 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I ## server_CTSaveCallForwardingValue", buf, 2u);
    }

    if (v12)
    {
      *buf = a4;
      *&buf[8] = "kSettingsModelReason";
      sub_100006354(buf, error);
      v21 = xpc::dyn_cast_or_default(error, 0, v20);
      xpc_release(error[0]);
      *buf = a4;
      *&buf[8] = "kSettingsModelClss";
      sub_100006354(buf, error);
      v23 = xpc::dyn_cast_or_default(error, 0, v22);
      xpc_release(error[0]);
      *buf = a4;
      *&buf[8] = "kSettingsModelEnabled";
      sub_100006354(buf, error);
      v25 = xpc::dyn_cast_or_default(error, 0, v24);
      xpc_release(error[0]);
      LOBYTE(v65) = v25;
      *buf = a4;
      *&buf[8] = "kSettingsModelSaveNumber";
      sub_100006354(buf, error);
      v27 = xpc::dyn_cast_or_default(error, 0, v26);
      xpc_release(error[0]);
      error[0] = 0;
      error[1] = 0;
      v80 = 0;
      v76 = a4;
      v77 = "kSettingsModelNumber";
      sub_100006354(&v76, &v78);
      memset(buf, 0, sizeof(buf));
      *&v67 = 0;
      xpc::dyn_cast_or_default();
      if (SBYTE7(v67) < 0)
      {
        operator delete(*buf);
      }

      xpc_release(v78);
      *buf = a4;
      *&buf[8] = "kSettingsModelCallFwdSaveTime";
      sub_100006354(buf, &v76);
      v29 = xpc::dyn_cast_or_default(&v76, 0, v28);
      xpc_release(v76);
      *buf = a4;
      *&buf[8] = "kSettingsModelTime";
      sub_100006354(buf, &v76);
      v31 = xpc::dyn_cast_or_default(&v76, 0, v30);
      xpc_release(v76);
      LOBYTE(v76) = v31;
      *__p = 0u;
      v75 = 0u;
      *v72 = 0u;
      v73 = 0u;
      *v70 = 0u;
      v71 = 0u;
      *v68 = 0u;
      v69 = 0u;
      *buf = 0u;
      v67 = 0u;
      CSIPhoneNumber::CSIPhoneNumber();
      if (v27)
      {
        v32 = buf;
      }

      else
      {
        v32 = 0;
      }

      if (v29)
      {
        v33 = &v76;
      }

      else
      {
        v33 = 0;
      }

      (*(*v12 + 96))(v12, 1, &v65, v32, v33, v21, v23);
      if (SBYTE7(v75) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72[1]);
      }

      if (SBYTE7(v71) < 0)
      {
        operator delete(v70[0]);
      }

      if (SBYTE7(v69) < 0)
      {
        operator delete(v68[0]);
      }

      if (SHIBYTE(v67) < 0)
      {
        operator delete(*&buf[8]);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(error[0]);
      }
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelSaveCallBarringValue"))
  {
    sub_100020AB8();
    v34 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I ## server_SaveCallBarringValue", buf, 2u);
    }

    *buf = a4;
    *&buf[8] = "kSettingsModelEnabled";
    sub_100006354(buf, error);
    v36 = xpc::dyn_cast_or_default(error, 0, v35);
    xpc_release(error[0]);
    LOBYTE(v65) = v36;
    error[0] = 0;
    error[1] = 0;
    v80 = 0;
    v76 = a4;
    v77 = "kSettingsModelPin2";
    sub_100006354(&v76, &v78);
    memset(buf, 0, sizeof(buf));
    *&v67 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v67) < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v78);
    *buf = a4;
    *&buf[8] = "kSettingsModelClss";
    sub_100006354(buf, &v76);
    v38 = xpc::dyn_cast_or_default(&v76, 0, v37);
    xpc_release(v76);
    *buf = a4;
    *&buf[8] = "kSettingsModelFacility";
    sub_100006354(buf, &v76);
    v40 = xpc::dyn_cast_or_default(&v76, 0, v39);
    xpc_release(v76);
    if (v12)
    {
      (*(*v12 + 144))(v12, 1, &v65, error, v40, v38);
    }

    if (SHIBYTE(v80) < 0)
    {
      operator delete(error[0]);
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelSaveCallWaitingValue"))
  {
    sub_100020AB8();
    v41 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I ## server_SaveCallWaitingValue", buf, 2u);
    }

    *buf = a4;
    *&buf[8] = "kSettingsModelClss";
    sub_100006354(buf, error);
    v43 = xpc::dyn_cast_or_default(error, 0, v42);
    xpc_release(error[0]);
    *buf = a4;
    *&buf[8] = "kSettingsModelEnabled";
    sub_100006354(buf, error);
    v45 = xpc::dyn_cast_or_default(error, 0, v44);
    xpc_release(error[0]);
    if (v12)
    {
      (*(*v12 + 168))(v12, 1, v45, v43);
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelChangePinPassword"))
  {
    sub_100020AB8();
    v46 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I ## server_CTChangePinPassword", buf, 2u);
    }

    v78 = 0;
    xpc_dictionary_get_value(*a4, "kSettingsModelOldPassword");
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v78, buf);
    v65 = 0;
    xpc_dictionary_get_value(*a4, "kSettingsModelNewPassword");
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v65, buf);
    memset(buf, 0, sizeof(buf));
    *&v67 = 0;
    sub_10000501C(buf, "");
    error[0] = 0;
    error[1] = 0;
    v80 = 0;
    sub_10000501C(error, "");
    ctu::cf::assign();
    ctu::cf::assign();
    v76 = 0;
    v77 = 0;
    sGetSubscriberSimInterface();
    v47 = v76;
    if (v76)
    {
      if (SBYTE7(v67) < 0)
      {
        sub_100005F2C(__dst, *buf, *&buf[8]);
      }

      else
      {
        *__dst = *buf;
        v64 = v67;
      }

      if (SHIBYTE(v80) < 0)
      {
        sub_100005F2C(v61, error[0], error[1]);
      }

      else
      {
        *v61 = *error;
        v62 = v80;
      }

      (*(*v47 + 120))(v47, 1, __dst, v61);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(v61[0]);
      }

      if (SHIBYTE(v64) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    if (v77)
    {
      sub_100004A34(v77);
    }

    if (SHIBYTE(v80) < 0)
    {
      operator delete(error[0]);
    }

    if (SBYTE7(v67) < 0)
    {
      operator delete(*buf);
    }

    sub_100005978(&v65);
    sub_100005978(&v78);
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelChangePin2Password"))
  {
    sub_100020AB8();
    v48 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I ## server_CTChangePin2Password", buf, 2u);
    }

    v76 = 0;
    xpc_dictionary_get_value(*a4, "kSettingsModelOldPassword");
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v76, buf);
    v78 = 0;
    xpc_dictionary_get_value(*a4, "kSettingsModelNewPassword");
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v78, buf);
    memset(buf, 0, sizeof(buf));
    *&v67 = 0;
    sub_10000501C(buf, "");
    error[0] = 0;
    error[1] = 0;
    v80 = 0;
    sub_10000501C(error, "");
    ctu::cf::assign();
    ctu::cf::assign();
    if (SHIBYTE(v80) < 0)
    {
      operator delete(error[0]);
    }

    if (SBYTE7(v67) < 0)
    {
      operator delete(*buf);
    }

    sub_100005978(&v78);
    sub_100005978(&v76);
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelSaveSimLockValue"))
  {
    sub_100020AB8();
    v49 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I ## server_CTSaveSimLockValue", buf, 2u);
    }

    *buf = a4;
    *&buf[8] = "kSettingsModelEnabled";
    sub_100006354(buf, error);
    v51 = xpc::dyn_cast_or_default(error, 0, v50);
    xpc_release(error[0]);
    v76 = 0;
    xpc_dictionary_get_value(*a4, "kSettingsModelPin");
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v76, buf);
    memset(buf, 0, sizeof(buf));
    *&v67 = 0;
    sub_10000501C(buf, "");
    ctu::cf::assign();
    error[0] = 0;
    error[1] = 0;
    sGetSubscriberSimInterface();
    v52 = error[0];
    if (error[0])
    {
      if (SBYTE7(v67) < 0)
      {
        sub_100005F2C(v59, *buf, *&buf[8]);
      }

      else
      {
        *v59 = *buf;
        v60 = v67;
      }

      (*(*v52 + 96))(v52, 1, v51, v59);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(v59[0]);
      }
    }

    if (error[1])
    {
      sub_100004A34(error[1]);
    }

    if (SBYTE7(v67) < 0)
    {
      operator delete(*buf);
    }

    sub_100005978(&v76);
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelSaveCallingLineIdRestrictionValue"))
  {
    sub_100020AB8();
    v53 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I ## server_CTSaveCallingLineIdRestrictionValue", buf, 2u);
    }

    *buf = a4;
    *&buf[8] = "kSettingsModelValue";
    sub_100006354(buf, error);
    v55 = xpc::dyn_cast_or_default(error, 0, v54);
    xpc_release(error[0]);
    LODWORD(v76) = v55;
    if (v12)
    {
      (*(*v12 + 224))(v12, 1, &v76);
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSettingsModelSaveServiceCenterAddressValue"))
  {
    sub_100020AB8();
    v56 = qword_101FCAAB8;
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I ## server_CTSaveServiceCenterAddressValue", buf, 2u);
    }

    v76 = 0;
    xpc_dictionary_get_value(*a4, "kSettingsModelNumber");
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v76, buf);
    error[0] = 0;
    error[1] = 0;
    v80 = 0;
    sub_10000501C(error, "");
    ctu::cf::assign();
    *__p = 0u;
    v75 = 0u;
    *v72 = 0u;
    v73 = 0u;
    *v70 = 0u;
    v71 = 0u;
    *v68 = 0u;
    v69 = 0u;
    *buf = 0u;
    v67 = 0u;
    CSIPhoneNumber::CSIPhoneNumber();
    if (v12)
    {
      (*(*v12 + 248))(v12, 1, buf);
    }

    if (SBYTE7(v75) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(v72[1]);
    }

    if (SBYTE7(v71) < 0)
    {
      operator delete(v70[0]);
    }

    if (SBYTE7(v69) < 0)
    {
      operator delete(v68[0]);
    }

    if (SHIBYTE(v67) < 0)
    {
      operator delete(*&buf[8]);
    }

    if (SHIBYTE(v80) < 0)
    {
      operator delete(error[0]);
    }

    sub_100005978(&v76);
  }

  if ((v58 & 1) == 0)
  {
    sub_100004A34(v57);
  }
}

void sub_1014896A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, int a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  v40 = *(v38 - 104);
  if (v40)
  {
    sub_100004A34(v40);
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  sub_100005978((v38 - 136));
  if ((a11 & 1) == 0)
  {
    sub_100004A34(a9);
  }

  _Unwind_Resume(a1);
}

void sub_101489A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020AB8();
  v6 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I  ## server_SettingsModelEraseCommCentersPreferences", buf, 2u);
  }

  if ((atomic_load_explicit(&qword_101FCAAC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAAC8))
  {
    WirelessUserDirectory = _GetWirelessUserDirectory();
    sub_10000501C(buf, WirelessUserDirectory);
    v14 = std::string::append(buf, "/Library/Preferences/com.apple.commcenter.plist", 0x2FuLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    unk_101FCAAF0 = *(&v14->__r_.__value_.__l + 2);
    xmmword_101FCAAE0 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SBYTE3(v21) < 0)
    {
      operator delete(*buf);
    }

    __cxa_atexit(&std::string::~string, &xmmword_101FCAAE0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FCAAC8);
  }

  v18 = &off_101EA1020;
  if (sub_1009C7B10(&v18, &xmmword_101FCAAE0))
  {
    v7 = sub_1009C861C(&v18, &xmmword_101FCAAE0);
    if (v7)
    {
      v16 = xpc_int64_create(5);
      if (!v16)
      {
        v16 = xpc_null_create();
      }

      *buf = *a5;
      *&buf[8] = "kMachError";
      sub_10000F688(buf, &v16, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v16);
      v16 = 0;
      sub_100020AB8();
      v8 = qword_101FCAAB8;
      if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_ERROR))
      {
        v9 = byte_101FCAAF7;
        v10 = xmmword_101FCAAE0;
        v11 = strerror(v7);
        if (v9 >= 0)
        {
          v12 = &xmmword_101FCAAE0;
        }

        else
        {
          v12 = v10;
        }

        *buf = 136315650;
        *&buf[4] = v12;
        *&buf[12] = 1024;
        *&buf[14] = v7;
        v20 = 2080;
        v21 = v11;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to delete %s, returned error code %d: %s", buf, 0x1Cu);
      }
    }
  }

  FileSystemInterface::~FileSystemInterface(&v18);
}

void sub_101489CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_101FCAAC8);
  _Unwind_Resume(a1);
}

void sub_101489D60(Registry **a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
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
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_7;
      }

LABEL_13:
      v67 = 0;
      v68 = 0;
      v69 = 0;
      __p = a4;
      v63 = "kSettingsModelEraseWhat";
      sub_100006354(&__p, &object);
      *buf = 0;
      v73 = 0;
      v74 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v74) < 0)
      {
        operator delete(*buf);
      }

      xpc_release(object);
      if (v69 >= 0)
      {
        v18 = &v67;
      }

      else
      {
        v18 = v67;
      }

      v19 = CFStringCreateWithCStringNoCopy(0, v18, 0x8000100u, kCFAllocatorNull);
      v20 = v19;
      if (v19)
      {
        if (SHIBYTE(v69) < 0)
        {
          if (v68)
          {
            goto LABEL_21;
          }
        }

        else if (HIBYTE(v69))
        {
LABEL_21:
          if (CFEqual(v19, @"kCTBasebandSettingsEraseSFP"))
          {
            sub_100020AB8();
            v21 = qword_101FCAAB8;
            if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Initiating SFP erasure of baseband settings", buf, 2u);
            }

            v22 = 6;
LABEL_79:
            CFRelease(v20);
            v49 = a5[1];
            v56 = *a5;
            v57 = v49;
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v16 + 184))(v16, v22, &v56);
            if (v57)
            {
              sub_100004A34(v57);
            }

            goto LABEL_83;
          }

          if (CFEqual(v20, @"kCTBasebandSettingsEraseEFS"))
          {
            v51 = v20;
            v52 = a5;
            v54 = v17;
            v53 = v15;
            subscriber::makeSimSlotRange();
            v23 = *buf;
            v24 = v73;
            if (*buf == v73)
            {
              goto LABEL_72;
            }

            v25 = v74;
            do
            {
              if (v25(*v23))
              {
                break;
              }

              ++v23;
            }

            while (v23 != v24);
            v26 = v73;
            if (v23 == v73)
            {
LABEL_72:
              sub_100020AB8();
              v47 = qword_101FCAAB8;
              a5 = v52;
              v15 = v53;
              v17 = v54;
              v20 = v51;
              if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Initiating EFS erasure of baseband settings", buf, 2u);
              }

              v22 = 1;
              goto LABEL_79;
            }

            v55 = v73;
            while (1)
            {
              sub_10080BF40(a1, *v23);
              __p = 0;
              v63 = 0;
              v64 = 0;
              PersonalityIdFromSlotId();
              v27 = HIBYTE(v64);
              if (v64 < 0)
              {
                v27 = v63;
              }

              if (!v27)
              {
                goto LABEL_67;
              }

              v28 = Registry::getServiceMap(*a1);
              v29 = v28;
              if (v30 < 0)
              {
                v31 = (v30 & 0x7FFFFFFFFFFFFFFFLL);
                v32 = 5381;
                do
                {
                  v30 = v32;
                  v33 = *v31++;
                  v32 = (33 * v32) ^ v33;
                }

                while (v33);
              }

              std::mutex::lock(v28);
              object = v30;
              v34 = sub_100009510(&v29[1].__m_.__sig, &object);
              if (!v34)
              {
                std::mutex::unlock(v29);
                goto LABEL_55;
              }

              v36 = v34[3];
              v35 = v34[4];
              if (v35)
              {
                atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v29);
                atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
                v26 = v55;
                sub_100004A34(v35);
                if (!v36)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                std::mutex::unlock(v29);
                if (!v36)
                {
                  goto LABEL_55;
                }
              }

              object = 0;
              v61 = 0;
              (**v36)(&object, v36, &__p);
              if (object)
              {
                (*(*object + 544))(object, "CSIM reset via kSettingsModelEraseBasebandSettings");
                (*(*object + 384))(object, 1);
              }

              if (v61)
              {
                sub_100004A34(v61);
              }

              if (v35)
              {
LABEL_54:
                sub_100004A34(v35);
              }

LABEL_55:
              v37 = Registry::getServiceMap(*a1);
              v38 = v37;
              if (v39 < 0)
              {
                v40 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
                v41 = 5381;
                do
                {
                  v39 = v41;
                  v42 = *v40++;
                  v41 = (33 * v41) ^ v42;
                }

                while (v42);
              }

              std::mutex::lock(v37);
              object = v39;
              v43 = sub_100009510(&v38[1].__m_.__sig, &object);
              if (!v43)
              {
                v45 = 0;
LABEL_63:
                std::mutex::unlock(v38);
                v44 = 0;
                v46 = 1;
                if (!v45)
                {
                  goto LABEL_65;
                }

LABEL_64:
                (*(*v45 + 32))(v45, &__p, 1);
                (*(*v45 + 40))(v45, &__p, 7, 0);
                goto LABEL_65;
              }

              v45 = v43[3];
              v44 = v43[4];
              if (!v44)
              {
                goto LABEL_63;
              }

              atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v38);
              atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
              v26 = v55;
              sub_100004A34(v44);
              v46 = 0;
              if (v45)
              {
                goto LABEL_64;
              }

LABEL_65:
              if ((v46 & 1) == 0)
              {
                sub_100004A34(v44);
              }

LABEL_67:
              if (SHIBYTE(v64) < 0)
              {
                operator delete(__p);
              }

              do
              {
                ++v23;
              }

              while (v23 != v24 && (v25(*v23) & 1) == 0);
              if (v23 == v26)
              {
                goto LABEL_72;
              }
            }
          }

          if (CFEqual(v20, @"kCTBasebandSettingsEraseEverything"))
          {
            sub_100020AB8();
            v48 = qword_101FCAAB8;
            if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Initiating erasure of all baseband settings", buf, 2u);
            }

            v22 = 7;
            goto LABEL_79;
          }

          sub_100020AB8();
          v50 = qword_101FCAAB8;
          if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Invalid erase string; canceling request", buf, 2u);
          }

          CFRelease(v20);
          v58 = xpc_int64_create(4);
          if (!v58)
          {
            v58 = xpc_null_create();
          }

          *buf = *a5;
          v73 = "kMachError";
          sub_10000F688(buf, &v58, &v59);
          xpc_release(v59);
          v59 = 0;
          xpc_release(v58);
          v58 = 0;
LABEL_83:
          if (SHIBYTE(v69) < 0)
          {
            operator delete(v67);
            if (v17)
            {
              return;
            }
          }

          else if (v17)
          {
            return;
          }

LABEL_85:
          sub_100004A34(v15);
          return;
        }
      }

      v65 = xpc_int64_create(5);
      if (!v65)
      {
        v65 = xpc_null_create();
      }

      *buf = *a5;
      v73 = "kSettingsModelError";
      sub_10000F688(buf, &v65, &v66);
      xpc_release(v66);
      v66 = 0;
      xpc_release(v65);
      v65 = 0;
      if (v20)
      {
        CFRelease(v20);
      }

      goto LABEL_83;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (v16)
  {
    goto LABEL_13;
  }

LABEL_7:
  v70 = xpc_int64_create(45);
  if (!v70)
  {
    v70 = xpc_null_create();
  }

  *buf = *a5;
  v73 = "kPosixError";
  sub_10000F688(buf, &v70, &v71);
  xpc_release(v71);
  v71 = 0;
  xpc_release(v70);
  v70 = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_85;
  }
}

void sub_10148A53C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if ((v36 & 1) == 0)
  {
    sub_100004A34(v35);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148A66C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
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
  v19 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v19);
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
      if (!v14)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_10:
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3321888768;
  v17[2] = sub_10148DB68;
  v17[3] = &unk_101F3FF60;
  v16 = a5[1];
  v17[4] = *a5;
  v18 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 136))(v14, v17);
  if (v18)
  {
    sub_100004A34(v18);
  }

LABEL_14:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10148A7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148A80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = dispatch_group_create();
  sub_100020AB8();
  v8 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(group[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in PersonalityShop", group, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
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
  group[0] = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, group);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_12:
  group[0] = v7;
  if (v7)
  {
    dispatch_retain(v7);
    if (group[0])
    {
      dispatch_group_enter(group[0]);
    }
  }

  (*(*v17 + 352))(v17, group);
  if (group[0])
  {
    dispatch_group_leave(group[0]);
    if (group[0])
    {
      dispatch_release(group[0]);
    }
  }

LABEL_18:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  sub_100020AB8();
  v19 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(group[0]) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in Max Data Rate Manager", group, 2u);
  }

  v20 = Registry::getServiceMap(*a1);
  v21 = v20;
  if (v22 < 0)
  {
    v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
    v24 = 5381;
    do
    {
      v22 = v24;
      v25 = *v23++;
      v24 = (33 * v24) ^ v25;
    }

    while (v25);
  }

  std::mutex::lock(v20);
  group[0] = v22;
  v26 = sub_100009510(&v21[1].__m_.__sig, group);
  if (v26)
  {
    v28 = v26[3];
    v27 = v26[4];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v21);
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v27);
      v29 = 0;
      if (!v28)
      {
        goto LABEL_37;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v28 = 0;
  }

  std::mutex::unlock(v21);
  v27 = 0;
  v29 = 1;
  if (!v28)
  {
    goto LABEL_37;
  }

LABEL_31:
  v152 = v7;
  if (v7)
  {
    dispatch_retain(v7);
    if (v152)
    {
      dispatch_group_enter(v152);
    }
  }

  (*(*v28 + 40))(v28, &v152);
  if (v152)
  {
    dispatch_group_leave(v152);
    if (v152)
    {
      dispatch_release(v152);
    }
  }

LABEL_37:
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  sub_100020AB8();
  v30 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(group[0]) = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in CDMA Roaming Handler", group, 2u);
  }

  v31 = Registry::getServiceMap(*a1);
  v32 = v31;
  if (v33 < 0)
  {
    v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
    v35 = 5381;
    do
    {
      v33 = v35;
      v36 = *v34++;
      v35 = (33 * v35) ^ v36;
    }

    while (v36);
  }

  std::mutex::lock(v31);
  group[0] = v33;
  v37 = sub_100009510(&v32[1].__m_.__sig, group);
  if (v37)
  {
    v39 = v37[3];
    v38 = v37[4];
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v32);
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v38);
      v40 = 0;
      if (!v39)
      {
        goto LABEL_56;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v39 = 0;
  }

  std::mutex::unlock(v32);
  v38 = 0;
  v40 = 1;
  if (!v39)
  {
    goto LABEL_56;
  }

LABEL_50:
  v151 = v7;
  if (v7)
  {
    dispatch_retain(v7);
    if (v151)
    {
      dispatch_group_enter(v151);
    }
  }

  (*(*v39 + 56))(v39, &v151);
  if (v151)
  {
    dispatch_group_leave(v151);
    if (v151)
    {
      dispatch_release(v151);
    }
  }

LABEL_56:
  if ((v40 & 1) == 0)
  {
    sub_100004A34(v38);
  }

  sub_100020AB8();
  v41 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(group[0]) = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in Roaming Handler", group, 2u);
  }

  v42 = Registry::getServiceMap(*a1);
  v43 = v42;
  if (v44 < 0)
  {
    v45 = (v44 & 0x7FFFFFFFFFFFFFFFLL);
    v46 = 5381;
    do
    {
      v44 = v46;
      v47 = *v45++;
      v46 = (33 * v46) ^ v47;
    }

    while (v47);
  }

  std::mutex::lock(v42);
  group[0] = v44;
  v48 = sub_100009510(&v43[1].__m_.__sig, group);
  if (v48)
  {
    v50 = v48[3];
    v49 = v48[4];
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v43);
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v49);
      v51 = 0;
LABEL_68:
      object = v7;
      if (v7)
      {
        dispatch_retain(v7);
        if (object)
        {
          dispatch_group_enter(object);
        }
      }

      (*(*v50 + 64))(v50, &object);
      if (object)
      {
        dispatch_group_leave(object);
        if (object)
        {
          dispatch_release(object);
        }
      }

      if ((v51 & 1) == 0)
      {
        sub_100004A34(v49);
      }

      v52 = Registry::getServiceMap(*a1);
      v53 = v52;
      if (v54 < 0)
      {
        v55 = (v54 & 0x7FFFFFFFFFFFFFFFLL);
        v56 = 5381;
        do
        {
          v54 = v56;
          v57 = *v55++;
          v56 = (33 * v56) ^ v57;
        }

        while (v57);
      }

      std::mutex::lock(v52);
      group[0] = v54;
      v58 = sub_100009510(&v53[1].__m_.__sig, group);
      if (v58)
      {
        v60 = v58[3];
        v59 = v58[4];
        if (v59)
        {
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v53);
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v59);
          v61 = 0;
          if (!v60)
          {
            goto LABEL_93;
          }

          goto LABEL_85;
        }
      }

      else
      {
        v60 = 0;
      }

      std::mutex::unlock(v53);
      v59 = 0;
      v61 = 1;
      if (!v60)
      {
        goto LABEL_93;
      }

LABEL_85:
      sub_100020AB8();
      v62 = qword_101FCAAB8;
      if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(group[0]) = 0;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in Registration", group, 2u);
      }

      v149 = v7;
      if (v7)
      {
        dispatch_retain(v7);
        if (v149)
        {
          dispatch_group_enter(v149);
        }
      }

      (*(*v60 + 400))(v60, &v149);
      if (v149)
      {
        dispatch_group_leave(v149);
        if (v149)
        {
          dispatch_release(v149);
        }
      }

LABEL_93:
      if ((v61 & 1) == 0)
      {
        sub_100004A34(v59);
      }

      v63 = Registry::getServiceMap(*a1);
      v64 = v63;
      if (v65 < 0)
      {
        v66 = (v65 & 0x7FFFFFFFFFFFFFFFLL);
        v67 = 5381;
        do
        {
          v65 = v67;
          v68 = *v66++;
          v67 = (33 * v67) ^ v68;
        }

        while (v68);
      }

      std::mutex::lock(v63);
      group[0] = v65;
      v69 = sub_100009510(&v64[1].__m_.__sig, group);
      if (v69)
      {
        v71 = v69[3];
        v70 = v69[4];
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v64);
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v70);
          v72 = 0;
          if (!v71)
          {
            goto LABEL_112;
          }

          goto LABEL_104;
        }
      }

      else
      {
        v71 = 0;
      }

      std::mutex::unlock(v64);
      v70 = 0;
      v72 = 1;
      if (!v71)
      {
        goto LABEL_112;
      }

LABEL_104:
      sub_100020AB8();
      v73 = qword_101FCAAB8;
      if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(group[0]) = 0;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in Settings Controller", group, 2u);
      }

      v148 = v7;
      if (v7)
      {
        dispatch_retain(v7);
        if (v148)
        {
          dispatch_group_enter(v148);
        }
      }

      (*(*v71 + 176))(v71, &v148);
      if (v148)
      {
        dispatch_group_leave(v148);
        if (v148)
        {
          dispatch_release(v148);
        }
      }

LABEL_112:
      if ((v72 & 1) == 0)
      {
        sub_100004A34(v70);
      }

      v74 = Registry::getServiceMap(*a1);
      v75 = v74;
      if (v76 < 0)
      {
        v77 = (v76 & 0x7FFFFFFFFFFFFFFFLL);
        v78 = 5381;
        do
        {
          v76 = v78;
          v79 = *v77++;
          v78 = (33 * v78) ^ v79;
        }

        while (v79);
      }

      std::mutex::lock(v74);
      group[0] = v76;
      v80 = sub_100009510(&v75[1].__m_.__sig, group);
      if (v80)
      {
        v82 = v80[3];
        v81 = v80[4];
        if (v81)
        {
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v75);
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v81);
          v83 = 0;
          if (!v82)
          {
            goto LABEL_127;
          }

          goto LABEL_123;
        }
      }

      else
      {
        v82 = 0;
      }

      std::mutex::unlock(v75);
      v81 = 0;
      v83 = 1;
      if (!v82)
      {
        goto LABEL_127;
      }

LABEL_123:
      v147 = v7;
      if (v7)
      {
        dispatch_retain(v7);
      }

      (*(*v82 + 248))(v82, &v147);
      if (v147)
      {
        dispatch_release(v147);
      }

LABEL_127:
      if ((v83 & 1) == 0)
      {
        sub_100004A34(v81);
      }

      v84 = Registry::getServiceMap(*a1);
      v85 = v84;
      if (v86 < 0)
      {
        v87 = (v86 & 0x7FFFFFFFFFFFFFFFLL);
        v88 = 5381;
        do
        {
          v86 = v88;
          v89 = *v87++;
          v88 = (33 * v88) ^ v89;
        }

        while (v89);
      }

      std::mutex::lock(v84);
      group[0] = v86;
      v90 = sub_100009510(&v85[1].__m_.__sig, group);
      if (v90)
      {
        v92 = v90[3];
        v91 = v90[4];
        if (v91)
        {
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v85);
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v91);
          v93 = 0;
          if (!v92)
          {
            goto LABEL_146;
          }

          goto LABEL_138;
        }
      }

      else
      {
        v92 = 0;
      }

      std::mutex::unlock(v85);
      v91 = 0;
      v93 = 1;
      if (!v92)
      {
        goto LABEL_146;
      }

LABEL_138:
      sub_100020AB8();
      v94 = qword_101FCAAB8;
      if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(group[0]) = 0;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in Save Data Mode Controller", group, 2u);
      }

      v146 = v7;
      if (v7)
      {
        dispatch_retain(v7);
        if (v146)
        {
          dispatch_group_enter(v146);
        }
      }

      (*(*v92 + 96))(v92, &v146);
      if (v146)
      {
        dispatch_group_leave(v146);
        if (v146)
        {
          dispatch_release(v146);
        }
      }

LABEL_146:
      if ((v93 & 1) == 0)
      {
        sub_100004A34(v91);
      }

      v95 = Registry::getServiceMap(*a1);
      v96 = v95;
      if (v97 < 0)
      {
        v98 = (v97 & 0x7FFFFFFFFFFFFFFFLL);
        v99 = 5381;
        do
        {
          v97 = v99;
          v100 = *v98++;
          v99 = (33 * v99) ^ v100;
        }

        while (v100);
      }

      std::mutex::lock(v95);
      group[0] = v97;
      v101 = sub_100009510(&v96[1].__m_.__sig, group);
      if (v101)
      {
        v103 = v101[3];
        v102 = v101[4];
        if (v102)
        {
          atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v96);
          atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v102);
          v104 = 0;
          if (!v103)
          {
            goto LABEL_163;
          }

          goto LABEL_157;
        }
      }

      else
      {
        v103 = 0;
      }

      std::mutex::unlock(v96);
      v102 = 0;
      v104 = 1;
      if (!v103)
      {
        goto LABEL_163;
      }

LABEL_157:
      v145 = v7;
      if (v7)
      {
        dispatch_retain(v7);
        if (v145)
        {
          dispatch_group_enter(v145);
        }
      }

      (*(*v103 + 448))(v103, &v145);
      if (v145)
      {
        dispatch_group_leave(v145);
        if (v145)
        {
          dispatch_release(v145);
        }
      }

LABEL_163:
      if ((v104 & 1) == 0)
      {
        sub_100004A34(v102);
      }

      v105 = Registry::getServiceMap(*a1);
      v106 = v105;
      if (v107 < 0)
      {
        v108 = (v107 & 0x7FFFFFFFFFFFFFFFLL);
        v109 = 5381;
        do
        {
          v107 = v109;
          v110 = *v108++;
          v109 = (33 * v109) ^ v110;
        }

        while (v110);
      }

      std::mutex::lock(v105);
      group[0] = v107;
      v111 = sub_100009510(&v106[1].__m_.__sig, group);
      if (v111)
      {
        v113 = v111[3];
        v112 = v111[4];
        if (v112)
        {
          atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v106);
          atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v112);
          v114 = 0;
          if (!v113)
          {
            goto LABEL_180;
          }

          goto LABEL_174;
        }
      }

      else
      {
        v113 = 0;
      }

      std::mutex::unlock(v106);
      v112 = 0;
      v114 = 1;
      if (!v113)
      {
        goto LABEL_180;
      }

LABEL_174:
      v144 = v7;
      if (v7)
      {
        dispatch_retain(v7);
        if (v144)
        {
          dispatch_group_enter(v144);
        }
      }

      (*(*v113 + 48))(v113, &v144);
      if (v144)
      {
        dispatch_group_leave(v144);
        if (v144)
        {
          dispatch_release(v144);
        }
      }

LABEL_180:
      if ((v114 & 1) == 0)
      {
        sub_100004A34(v112);
      }

      v115 = Registry::getServiceMap(*a1);
      v116 = v115;
      if (v117 < 0)
      {
        v118 = (v117 & 0x7FFFFFFFFFFFFFFFLL);
        v119 = 5381;
        do
        {
          v117 = v119;
          v120 = *v118++;
          v119 = (33 * v119) ^ v120;
        }

        while (v120);
      }

      std::mutex::lock(v115);
      group[0] = v117;
      v121 = sub_100009510(&v116[1].__m_.__sig, group);
      if (v121)
      {
        v123 = v121[3];
        v122 = v121[4];
        if (v122)
        {
          atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v116);
          atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v122);
          v124 = 0;
          if (!v123)
          {
LABEL_192:
            if ((v124 & 1) == 0)
            {
              sub_100004A34(v122);
            }

            v143[0] = 0;
            v143[1] = 0;
            Registry::getMobileHelper(v143, *a1);
            if (v143[0])
            {
              sub_100020AB8();
              v125 = qword_101FCAAB8;
              if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(group[0]) = 0;
                _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "#I Resetting network settings in MobileHelper", group, 2u);
              }

              (*(*v143[0] + 88))(v143[0]);
            }

            v126 = Registry::getServiceMap(*a1);
            v127 = v126;
            if (v128 < 0)
            {
              v129 = (v128 & 0x7FFFFFFFFFFFFFFFLL);
              v130 = 5381;
              do
              {
                v128 = v130;
                v131 = *v129++;
                v130 = (33 * v130) ^ v131;
              }

              while (v131);
            }

            std::mutex::lock(v126);
            group[0] = v128;
            v132 = sub_100009510(&v127[1].__m_.__sig, group);
            if (v132)
            {
              v134 = v132[3];
              v133 = v132[4];
              if (v133)
              {
                atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v127);
                atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v133);
                v135 = 0;
                if (!v134)
                {
                  goto LABEL_213;
                }

                goto LABEL_207;
              }
            }

            else
            {
              v134 = 0;
            }

            std::mutex::unlock(v127);
            v133 = 0;
            v135 = 1;
            if (!v134)
            {
              goto LABEL_213;
            }

LABEL_207:
            v142 = v7;
            if (v7)
            {
              dispatch_retain(v7);
              if (v142)
              {
                dispatch_group_enter(v142);
              }
            }

            (*(*v134 + 72))(v134, &v142);
            if (v142)
            {
              dispatch_group_leave(v142);
              if (v142)
              {
                dispatch_release(v142);
              }
            }

LABEL_213:
            if ((v135 & 1) == 0)
            {
              sub_100004A34(v133);
            }

            global_queue = dispatch_get_global_queue(0, 0);
            if (global_queue)
            {
              dispatch_retain(global_queue);
            }

            v138 = *a5;
            v137 = *(a5 + 8);
            group[0] = v138;
            group[1] = v137;
            if (v137)
            {
              atomic_fetch_add_explicit((v137 + 8), 1uLL, memory_order_relaxed);
            }

            v140 = *a1;
            v139 = *(a1 + 8);
            group[2] = v140;
            group[3] = v139;
            if (v139)
            {
              atomic_fetch_add_explicit((v139 + 8), 1uLL, memory_order_relaxed);
            }

            operator new();
          }

LABEL_191:
          (*(*v123 + 32))(v123);
          goto LABEL_192;
        }
      }

      else
      {
        v123 = 0;
      }

      std::mutex::unlock(v116);
      v122 = 0;
      v124 = 1;
      if (!v123)
      {
        goto LABEL_192;
      }

      goto LABEL_191;
    }
  }

  else
  {
    v50 = 0;
  }

  std::mutex::unlock(v43);
  v49 = 0;
  v51 = 1;
  goto LABEL_68;
}

void sub_10148B7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group, uint64_t a15, std::__shared_weak_count *a16, dispatch_group_t object, dispatch_group_t a18, dispatch_group_t a19, uint64_t a20, dispatch_group_t a21, dispatch_group_t a22, dispatch_group_t a23)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if ((v25 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (v23)
  {
    dispatch_release(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148BA20(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100020AB8();
  v6 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchCallForwardingValue", buf, 2u);
  }

  *buf = a4;
  v24 = "kSettingsModelReason";
  sub_100006354(buf, &object);
  v8 = xpc::dyn_cast_or_default(&object, 0, v7);
  xpc_release(object);
  *buf = a4;
  v24 = "kSettingsModelClss";
  sub_100006354(buf, &object);
  v10 = xpc::dyn_cast_or_default(&object, 0, v9);
  xpc_release(object);
  sub_100020AB8();
  v11 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I _CTFetchCallForwardingValue for reason = %d", buf, 8u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
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
LABEL_13:
    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v13);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v21 = 0;
  if (v20)
  {
LABEL_14:
    (*(*v20 + 80))(v20, 1, v8, v10);
  }

LABEL_15:
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }
}

void sub_10148BC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148BCC0(Registry **a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100020AB8();
  v6 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchCallBarringValue", buf, 2u);
  }

  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
  v21[0] = a4;
  v21[1] = "kSettingsModelPin2";
  sub_100006354(v21, &object);
  *buf = 0;
  v26 = 0;
  v27 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v27) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object);
  *buf = a4;
  v26 = "kSettingsModelClss";
  sub_100006354(buf, v21);
  v8 = xpc::dyn_cast_or_default(v21, 0, v7);
  xpc_release(v21[0]);
  *buf = a4;
  v26 = "kSettingsModelFacility";
  sub_100006354(buf, v21);
  v10 = xpc::dyn_cast_or_default(v21, 0, v9);
  xpc_release(v21[0]);
  ServiceMap = Registry::getServiceMap(*a1);
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  *buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (!v17)
  {
    v19 = 0;
LABEL_13:
    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    if (!v19)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
  v20 = 0;
  if (v19)
  {
LABEL_14:
    (*(*v19 + 128))(v19, 1, __p, v10, v8);
  }

LABEL_15:
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10148BEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10148BF80(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, CFTypeRef *a5)
{
  sub_100020AB8();
  v7 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I ## server_CTPreferencesSetValue", v12, 2u);
  }

  if ((atomic_load_explicit(&qword_101FCAAD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAAD0))
  {
    qword_101FCAAF8 = @"Modem";
    unk_101FCAB00 = @"IMSIOverride";
    qword_101FCAB08 = @"FakePrimaryDns";
    unk_101FCAB10 = @"FakeSecondaryDns";
    qword_101FCAB18 = @"VerifyBundles";
    unk_101FCAB20 = @"VerifyAPN";
    qword_101FCAB28 = @"DualIPBringUp";
    unk_101FCAB30 = @"WiFiCallingInCallHandover";
    qword_101FCAB38 = kCFSettingsModelKeyEPDGAddress;
    unk_101FCAB40 = kCFSettingsModelKeyPCSCFAddress;
    qword_101FCAB48 = @"ShowVoLTEStatusIndicator";
    unk_101FCAB50 = @"ShowLazuliStatusIndicator";
    qword_101FCAB58 = @"ShowFR2StatusIndicator";
    __cxa_guard_release(&qword_101FCAAD0);
  }

  theString1 = 0;
  xpc_dictionary_get_value(*a4, "kSettingsModelKey");
  v12[0] = _CFXPCCreateCFObjectFromXPCObject();
  sub_100222990(&theString1, v12);
  xpc_dictionary_get_value(*a4, "kSettingsModelValue");
  v8 = 0;
  cf = _CFXPCCreateCFObjectFromXPCObject();
  do
  {
    if (CFStringCompare(theString1, *(&unk_101FCAAB0 + v8 + 72), 0) == kCFCompareEqualTo)
    {
      v9 = CFGetTypeID(cf);
      if (v9 == CFNullGetTypeID())
      {
        v10 = 0;
      }

      else
      {
        v10 = cf;
      }

      CFPreferencesSetValue(theString1, v10, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_1000929F0();
      goto LABEL_14;
    }

    v8 += 8;
  }

  while (v8 != 104);
  v13 = xpc_int64_create(4);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v12[0] = *a5;
  v12[1] = "kMachError";
  sub_10000F688(v12, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
LABEL_14:
  sub_10000A1EC(&cf);
  return sub_100005978(&theString1);
}

void sub_10148C1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

const void **sub_10148C208(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, CFTypeRef *a5)
{
  v12 = 0;
  xpc_dictionary_get_value(*a4, "kSettingsModelNoBackupKey");
  v8[0] = _CFXPCCreateCFObjectFromXPCObject();
  sub_100222990(&v12, v8);
  xpc_dictionary_get_value(*a4, "kSettingsModelNoBackupValue");
  v11 = _CFXPCCreateCFObjectFromXPCObject();
  v9 = xpc_int64_create(4);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v8[0] = *a5;
  v8[1] = "kMachError";
  sub_10000F688(v8, &v9, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v9);
  v9 = 0;
  sub_10000A1EC(&v11);
  return sub_100005978(&v12);
}

const void **sub_10148C2F8(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  sub_100020AB8();
  v8 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I ## server_CTPreferencesCopyValue", buf, 2u);
  }

  if ((atomic_load_explicit(&qword_101FCAAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAAD8))
  {
    qword_101FCAB60 = @"Modem";
    unk_101FCAB68 = @"IMSIOverride";
    qword_101FCAB70 = @"FakePrimaryDns";
    unk_101FCAB78 = @"FakeSecondaryDns";
    qword_101FCAB80 = @"VerifyBundles";
    unk_101FCAB88 = @"VerifyAPN";
    qword_101FCAB90 = @"DualIPBringUp";
    unk_101FCAB98 = @"WiFiCallingInCallHandover";
    qword_101FCABA0 = kCFSettingsModelKeyEPDGAddress;
    unk_101FCABA8 = kCFSettingsModelKeyPCSCFAddress;
    qword_101FCABB0 = @"ShowVoLTEStatusIndicator";
    unk_101FCABB8 = @"ShowFR2StatusIndicator";
    qword_101FCABC0 = @"ShowLazuliStatusIndicator";
    unk_101FCABC8 = @"iWlanGatewayAddress";
    __cxa_guard_release(&qword_101FCAAD8);
  }

  v45 = 0;
  xpc_dictionary_get_value(*a4, "kSettingsModelKey");
  *buf = _CFXPCCreateCFObjectFromXPCObject();
  sub_100222990(&v45, buf);
  for (i = 0; i != 112; i += 8)
  {
    if (CFStringCompare(v45, *(&unk_101FCAAB0 + i + 176), 0) == kCFCompareEqualTo)
    {
      if (CFStringCompare(v45, @"iWlanGatewayAddress", 0))
      {
        v10 = CFPreferencesCopyValue(v45, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        v40 = v10;
        if (!v10 || (v11 = CFGetTypeID(v10), v11 == CFNullGetTypeID()))
        {
          if (CFStringCompare(v45, @"VerifyBundles", 0))
          {
            if (CFStringCompare(v45, @"VerifyAPN", 0))
            {
              if (CFStringCompare(v45, @"DualIPBringUp", 0) && CFStringCompare(v45, @"ShowVoLTEStatusIndicator", 0) && CFStringCompare(v45, @"ShowLazuliStatusIndicator", 0) && CFStringCompare(v45, @"ShowFR2StatusIndicator", 0))
              {
                if (CFStringCompare(v45, @"WiFiCallingInCallHandover", 0) == kCFCompareEqualTo)
                {
                  theDict = 0;
                  *buf = 0;
                  v42 = 0;
                  ServiceMap = Registry::getServiceMap(*a1);
                  sub_10148DCA0(&v34, ServiceMap);
                  (*(*v34 + 32))(buf);
                  if (v35)
                  {
                    sub_100004A34(v35);
                  }

                  if (*buf)
                  {
                    (*(**buf + 40))(&v38);
                    v13 = v38;
                    v34 = theDict;
                    v38 = 0;
                    theDict = v13;
                    sub_10001021C(&v34);
                    sub_10001021C(&v38);
                  }

                  if (v42)
                  {
                    sub_100004A34(v42);
                  }

                  if (theDict)
                  {
                    Value = CFDictionaryGetValue(theDict, @"SupportCallHandover");
                    v15 = Value;
                    if (Value && (v16 = CFGetTypeID(Value), v16 == CFBooleanGetTypeID()))
                    {
                      *buf = v15;
                      sub_100E542E8(&v40, buf);
                    }

                    else
                    {
                      *buf = kCFBooleanTrue;
                      sub_100E542E8(&v40, buf);
                    }
                  }

                  else
                  {
                    *buf = kCFBooleanFalse;
                    sub_100E542E8(&v40, buf);
                  }

                  sub_10001021C(&theDict);
                }
              }

              else
              {
                *buf = kCFBooleanFalse;
                sub_100E542E8(&v40, buf);
              }

              goto LABEL_61;
            }

            sub_100020AB8();
            v30 = qword_101FCAAB8;
            if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I ## VerifyAPN DEFAULT", buf, 2u);
            }
          }

          else
          {
            sub_100020AB8();
            v27 = qword_101FCAAB8;
            if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I ## VerifyBundles DEFAULT", buf, 2u);
            }
          }

          *buf = kCFBooleanTrue;
          sub_100E542E8(&v40, buf);
        }

LABEL_61:
        v32 = _CFXPCCreateXPCObjectFromCFObject();
        if (!v32)
        {
          v32 = xpc_null_create();
        }

        *buf = *a5;
        v42 = "kSettingsModelValue";
        sub_10000F688(buf, &v32, &v33);
        xpc_release(v33);
        v33 = 0;
        xpc_release(v32);
        v32 = 0;
LABEL_64:
        sub_10000A1EC(&v40);
        return sub_100005978(&v45);
      }

      theDict = 0;
      v40 = 0;
      *buf = 0;
      v42 = 0;
      v17 = Registry::getServiceMap(*a1);
      v18 = v17;
      if (v19 < 0)
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

      std::mutex::lock(v17);
      v34 = v19;
      v23 = sub_100009510(&v18[1].__m_.__sig, &v34);
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
LABEL_41:
          (*(*v25 + 32))(buf, v25, 1);
          if ((v26 & 1) == 0)
          {
            sub_100004A34(v24);
          }

          if (*buf)
          {
            (*(**buf + 40))(&v38);
            v28 = v38;
            v34 = theDict;
            v38 = 0;
            theDict = v28;
            sub_10001021C(&v34);
            sub_10001021C(&v38);
          }

          if (v42)
          {
            sub_100004A34(v42);
          }

          if (theDict)
          {
            v29 = CFDictionaryGetValue(theDict, @"IKE");
            if (v29)
            {
              *buf = CFDictionaryGetValue(v29, @"RemoteAddress");
              sub_1000673E0(&v40, buf);
            }
          }

          v36 = _CFXPCCreateXPCObjectFromCFObject();
          if (!v36)
          {
            v36 = xpc_null_create();
          }

          *buf = *a5;
          v42 = "kSettingsModelValue";
          sub_10000F688(buf, &v36, &object);
          xpc_release(object);
          object = 0;
          xpc_release(v36);
          v36 = 0;
          sub_10001021C(&theDict);
          goto LABEL_64;
        }
      }

      else
      {
        v25 = 0;
      }

      std::mutex::unlock(v18);
      v24 = 0;
      v26 = 1;
      goto LABEL_41;
    }
  }

  v43 = xpc_int64_create(4);
  if (!v43)
  {
    v43 = xpc_null_create();
  }

  *buf = *a5;
  v42 = "kMachError";
  sub_10000F688(buf, &v43, &v44);
  xpc_release(v44);
  v44 = 0;
  xpc_release(v43);
  v43 = 0;
  return sub_100005978(&v45);
}

void sub_10148CA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_10000A1EC(va1);
  sub_100005978((v16 - 56));
  _Unwind_Resume(a1);
}

const void **sub_10148CB7C(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, CFTypeRef *a5)
{
  v10 = 0;
  xpc_dictionary_get_value(*a4, "kSettingsModelNoBackupKey");
  v7[0] = _CFXPCCreateCFObjectFromXPCObject();
  sub_100222990(&v10, v7);
  v8 = xpc_int64_create(4);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v7[0] = *a5;
  v7[1] = "kMachError";
  sub_10000F688(v7, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
  v8 = 0;
  return sub_100005978(&v10);
}

void sub_10148CC34(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100020AB8();
  v6 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchCallWaitingValue", v19, 2u);
  }

  v19[0] = a4;
  v19[1] = "kSettingsModelClss";
  sub_100006354(v19, &object);
  v8 = xpc::dyn_cast_or_default(&object, 0, v7);
  xpc_release(object);
  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if ((v11 & 0x8000000000000000) != 0)
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
  v19[0] = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, v19);
  if (!v15)
  {
    v17 = 0;
LABEL_11:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (v17)
  {
LABEL_12:
    (*(*v17 + 152))(v17, 1, v8);
  }

LABEL_13:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10148CDC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148CDF4(Registry **a1)
{
  sub_100020AB8();
  v2 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchSimLockValue", v13, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
LABEL_11:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_12:
    (*(*v11 + 80))(v11);
  }

LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10148CF44(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148CF64(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100020AB8();
  v6 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchConnectedLinePresentationValue", v19, 2u);
  }

  v19[0] = a4;
  v19[1] = "kSettingsModelLinePresentation";
  sub_100006354(v19, &object);
  v8 = xpc::dyn_cast_or_default(&object, 0, v7);
  xpc_release(object);
  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if ((v11 & 0x8000000000000000) != 0)
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
  v19[0] = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, v19);
  if (!v15)
  {
    v17 = 0;
LABEL_11:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (v17)
  {
LABEL_12:
    (*(*v17 + 176))(v17, 1, v8);
  }

LABEL_13:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10148D0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148D124(Registry **a1)
{
  sub_100020AB8();
  v2 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchConnectedLineIdRestrictionValue", v13, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
LABEL_11:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_12:
    (*(*v11 + 192))(v11, 1);
  }

LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10148D278(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148D298(Registry **a1)
{
  sub_100020AB8();
  v2 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchCallingLineIdRestrictionValue", v13, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
LABEL_11:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_12:
    (*(*v11 + 208))(v11, 1);
  }

LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10148D3EC(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148D40C(Registry **a1)
{
  sub_100020AB8();
  v2 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ## server_CTFetchServiceCenterAddressValue", v13, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
LABEL_11:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_12:
    (*(*v11 + 240))(v11, 1);
  }

LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10148D560(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10148D580(id a1, auto_reply a2, shared_ptr<SettingsInterface> a3, BOOL a4, CSIPhoneNumber *a5)
{
  var0 = a3.var0;
  var1 = a2.var0.var1;
  v7 = a2.var0.var0;
  memset(&v21, 0, sizeof(v21));
  CSIPhoneNumber::getFullNumber(&v21, a3.var1);
  if (var0)
  {
    v8 = 1;
  }

  else
  {
    v9 = *var1;
    if (*var1)
    {
      __p = 0;
      v19 = 0;
      v20 = 0;
      v17 = 0;
      v16 = 0;
      memset(__str, 0, sizeof(__str));
      if ((*(*v9 + 256))())
      {
        std::string::operator=(&v21, __str);
      }

      v8 = HIBYTE(v17);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v13 = xpc_BOOL_create(v8);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  *__str = v7->fObj.fObj;
  *&__str[8] = "kSettingsModelValid";
  sub_10000F688(__str, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  if (v8)
  {
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v21;
    }

    else
    {
      v10 = v21.__r_.__value_.__r.__words[0];
    }

    v11 = xpc_string_create(v10);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    *__str = v7->fObj.fObj;
    *&__str[8] = "kSettingsEffectivePhoneNumber";
    sub_10000F688(__str, &v11, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(v11);
    v11 = 0;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_10148D750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 33) < 0)
  {
    operator delete(*(v27 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_10148D7A4(void *a1, unsigned __int8 *a2)
{
  v43 = 0u;
  v44 = 0u;
  memset(v42, 0, sizeof(v42));
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  memset(&v37, 0, sizeof(v37));
  CSIPhoneNumber::CSIPhoneNumber(&v37);
  v4 = *a2;
  if (v4 == 1)
  {
    CSIPhoneNumber::CSIPhoneNumber();
    *&v37.var0 = v23;
    if (*(&v37.var2.__rep_.__l + 23) < 0)
    {
      operator delete(v37.var2.__rep_.__l.__data_);
    }

    v37.var2 = v24;
    *(&v24.__rep_.__l + 23) = 0;
    v24.__rep_.__s.__data_[0] = 0;
    if (SBYTE7(v39) < 0)
    {
      operator delete(v38);
    }

    v38 = v25;
    *&v39 = v26;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    DWORD2(v39) = v27;
    BYTE12(v39) = v28;
    if (SBYTE7(v41) < 0)
    {
      operator delete(v40);
    }

    v40 = v29;
    v41 = v30;
    BYTE7(v30) = 0;
    LOBYTE(v29) = 0;
    LOWORD(v42[0]) = v31;
    if (SHIBYTE(v42[1]) < 0)
    {
      operator delete(*(&v42[0] + 1));
    }

    *(v42 + 8) = __p;
    *(&v42[1] + 1) = v33;
    HIBYTE(v33) = 0;
    LOBYTE(__p) = 0;
    if (SBYTE7(v44) < 0)
    {
      operator delete(v43);
      v43 = v34;
      *&v44 = v35;
      HIBYTE(v35) = 0;
      LOBYTE(v34) = 0;
      DWORD2(v44) = v36;
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v43 = v34;
      *&v44 = v35;
      HIBYTE(v35) = 0;
      LOBYTE(v34) = 0;
      DWORD2(v44) = v36;
    }

    if (SBYTE7(v30) < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (*(&v24.__rep_.__l + 23) < 0)
    {
      operator delete(v24.__rep_.__l.__data_);
    }
  }

  v5 = a1[4];
  v6 = a1[6];
  v21 = a1[5];
  v22 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a1[8];
  v19 = a1[7];
  v20 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000AE428(&v8, &v37);
  (*(v5 + 16))(v5, &v21, &v19, v4, &v8);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  if (SBYTE7(v44) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v42[1]) < 0)
  {
    operator delete(*(&v42[0] + 1));
  }

  if (SBYTE7(v41) < 0)
  {
    operator delete(v40);
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38);
  }

  if (*(&v37.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v37.var2.__rep_.__l.__data_);
  }
}

void *sub_10148DAE4(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10148DB18(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_10148DB68(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_100020AB8();
  v3 = qword_101FCAAB8;
  if (v2 == 1)
  {
    if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Vinyl: Deleted all user profiles", buf, 2u);
    }
  }

  else if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Vinyl: Failed to delete all user profiles", v4, 2u);
  }
}

uint64_t *sub_10148DC18(uint64_t a1)
{
  v3 = a1;
  sub_100020AB8();
  v1 = qword_101FCAAB8;
  if (os_log_type_enabled(qword_101FCAAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I All reset network setting handlers are complete", buf, 2u);
  }

  return sub_100313630(&v3);
}

void sub_10148DC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100313630(va);
  _Unwind_Resume(a1);
}

void sub_10148DCA0(void *a1, std::mutex *this)
{
  if ((v4 & 0x8000000000000000) != 0)
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

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a1 = v10;
  a1[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

void sub_10148DD64()
{
  v0 = objc_autoreleasePoolPush();
  sub_100A5C110(&unk_101FCAAB2, sub_10148791C);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10148DDB8(uint64_t a1, void *a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "carrier.space.info");
  sub_10148DEA8((a1 + 8), a3, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101F400B0;
  v6 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void sub_10148DE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  CarrierSpaceInfoModelInterface::~CarrierSpaceInfoModelInterface(v9);
  _Unwind_Resume(a1);
}

void *sub_10148DEA8(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_10148DF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_10148DF34(uint64_t a1)
{
  *a1 = off_101F400B0;

  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  CarrierSpaceInfoModelInterface::~CarrierSpaceInfoModelInterface(a1);
}

void sub_10148DFC8(uint64_t a1)
{
  sub_10148DF34(a1);

  operator delete();
}

void sub_10148E098(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *a3;
  *a3 = 0uLL;
  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_10148E0B8(void *a1)
{
  v2 = objc_alloc_init(CTCarrierSpaceCapabilities);
  v3 = a1[10];
  a1[10] = v2;

  v4 = objc_alloc_init(CTCarrierSpaceInfo);
  v5 = a1[12];
  a1[12] = v4;

  v6 = a1[11];
  a1[11] = 0;
}

void sub_10148E120(void *a1)
{
  v2 = a1[10];
  a1[10] = 0;

  v3 = a1[12];
  a1[12] = 0;

  v4 = a1[11];
  a1[11] = 0;
}

id sub_10148E170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [*(a1 + 80) setSupportsServices:a2];
  [*(a1 + 80) setSupportsUsage:a3];
  [*(a1 + 80) setSupportsPlans:a4];
  v9 = *(a1 + 80);

  return [v9 setSupportsApplications:a5];
}

void sub_10148E1E0(uint64_t a1, id **a2)
{
  if (*a2)
  {
    v3 = **a2;
  }

  else
  {
    v3 = 0;
  }

  if (([v3 isEqual:*(a1 + 88)] & 1) == 0)
  {
    objc_storeStrong((a1 + 88), v3);
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = *(a1 + 64);
        if (v6)
        {
          (*(*v6 + 80))(v6);
LABEL_13:
          sub_100004A34(v5);
          goto LABEL_14;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "somehow delegate pointer not valid", v8, 2u);
    }

    if (v5)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
}

void sub_10148E2E4(_Unwind_Exception *a1)
{
  sub_100004A34(v2);

  _Unwind_Resume(a1);
}

void sub_10148E304(uint64_t a1, void **a2)
{
  if (*a2)
  {
    [*(a1 + 96) setUsageInfo:**a2];
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(a1 + 64);
      if (v5)
      {
        (*(*v5 + 72))(v5, 1);
LABEL_11:
        sub_100004A34(v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "somehow delegate pointer not valid", v7, 2u);
  }

  if (v4)
  {
    goto LABEL_11;
  }
}

void sub_10148E3EC(uint64_t a1, void **a2)
{
  if (*a2)
  {
    [*(a1 + 96) setPlansInfo:**a2];
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(a1 + 64);
      if (v5)
      {
        (*(*v5 + 72))(v5, 2);
LABEL_11:
        sub_100004A34(v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "somehow delegate pointer not valid", v7, 2u);
  }

  if (v4)
  {
    goto LABEL_11;
  }
}

void sub_10148E4D4(uint64_t a1, void **a2)
{
  if (*a2)
  {
    [*(a1 + 96) setAppsInfo:**a2];
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(a1 + 64);
      if (v5)
      {
        (*(*v5 + 72))(v5, 4);
LABEL_11:
        sub_100004A34(v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "somehow delegate pointer not valid", v7, 2u);
  }

  if (v4)
  {
    goto LABEL_11;
  }
}

uint64_t sub_10148E5BC(uint64_t a1)
{
  for (i = 0; ; ++i)
  {
    v3 = [*(a1 + 96) usageInfo];
    v4 = [v3 accountMetrics];
    v5 = [v4 count];

    if (i >= v5)
    {
      return 0;
    }

    v6 = [*(a1 + 96) usageInfo];
    v7 = [v6 accountMetrics];
    v8 = [v7 objectAtIndex:i];

    if ([v8 localDevice])
    {
      break;
    }
  }

  v10 = [v8 billingCycleEndDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  return v12;
}

void sub_10148E6F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (*(a1 + 80) || objc_alloc_init(CTCarrierSpaceCapabilities))
  {
    operator new();
  }
}

void sub_10148E7BC(uint64_t a1@<X0>, id **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (*(a1 + 88))
  {
    operator new();
  }
}

void sub_10148E850(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  [*(a1 + 96) usageInfo];
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }
}

void sub_10148E908(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  [*(a1 + 96) plansInfo];
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }
}

void sub_10148E9C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  [*(a1 + 96) appsInfo];
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }
}

void sub_10148EA78(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = [*(a1 + 96) plansInfo];
  v6 = v5;
  if (v5 && ([v5 planGroupsList], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = [NSString stringWithUTF8String:v8];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_10148EC98;
    v20 = sub_10148ECA8;
    v21 = 0;
    v10 = [v6 planGroupsList];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10148ECB0;
    v13[3] = &unk_101F40148;
    v11 = v9;
    v14 = v11;
    v15 = &v16;
    [v10 enumerateObjectsUsingBlock:v13];

    v12 = v17[5];
    *a3 = 0;
    a3[1] = 0;
    if (v12)
    {
      operator new();
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_10148EC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10148EC98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10148ECB0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a2 groupOptionsList];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 planId];
        v12 = [v11 isEqualToString:*(a1 + 32)];

        if (v12)
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

uint64_t sub_10148EE24(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  (*(*a1 + 128))(&v15);
  if (!v15)
  {
    goto LABEL_14;
  }

  v5 = *(a3 + 24);
  if (!v5)
  {
    goto LABEL_14;
  }

  v13 = v15;
  v14 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a3 + 24);
    if (!v5)
    {
      sub_100022DB4();
    }
  }

  v6 = (*(*v5 + 48))(v5, &v13);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v6)
  {
    v7 = a1[9];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = a1[8];
        if (v10)
        {
          (*(*v10 + 72))(v10, 2);
        }

        sub_100004A34(v9);
      }
    }

    v11 = 1;
  }

  else
  {
LABEL_14:
    v11 = 0;
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  return v11;
}

void sub_10148EF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_100004A34(v12);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10148F054(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10148F128);
  __cxa_rethrow();
}

void sub_10148F094(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10148F0E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10148F128(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10148F174(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F40280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10148F1F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F402D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10148F254(NSObject **a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v7 = a5;
  v8 = a3;
  v11 = sub_100D9CBEC(a5 & ~a3, a4);
  if (v11)
  {
    object[1] = 0;
    v12 = MAEGetActivationStateWithError();
    v13 = 0;
    if ([v12 isEqualToString:kMAActivationStateActivated])
    {
      if ((atomic_load_explicit(qword_101FCABF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_101FCABF0))
      {
        sub_1014903A8();
      }

      v14 = xmmword_101FCAC00;
      if (*(&xmmword_101FCAC00 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_101FCAC00 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *a1;
      object[0] = v15;
      if (v15)
      {
        dispatch_retain(v15);
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3321888768;
      v20[2] = sub_10148F734;
      v20[3] = &unk_101F40348;
      v20[4] = a2;
      v23 = v8;
      sub_1011F2210(v21, a6);
      v24 = v7;
      v16 = *a1;
      v22 = v16;
      if (v16)
      {
        dispatch_retain(v16);
      }

      v26 = 0;
      v25[0] = off_101F40478;
      v25[1] = objc_retainBlock(v20);
      v26 = v25;
      (*(*v14 + 16))(v14, v11, object, v25);
      sub_101020704(v25);
      if (object[0])
      {
        dispatch_release(object[0]);
      }

      if (*(&v14 + 1))
      {
        sub_100004A34(*(&v14 + 1));
      }

      if (v22)
      {
        dispatch_release(v22);
      }

      sub_100ED2CDC(v21);
    }

    else
    {
      sub_10148F648();
      v18 = qword_101FCABE0;
      if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 138412546;
        *&buf[1] = v12;
        LOWORD(buf[3]) = 2112;
        *(&buf[3] + 2) = v13;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Device is not activated! activationState= %@, queryError= %@", buf, 0x16u);
      }

      sub_10148F6DC(*(a6 + 24), 0, 0x100000001);
    }
  }

  else
  {
    sub_10148F648();
    v17 = qword_101FCABE0;
    if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "creating options for BAA cert generation failed", buf, 2u);
    }

    sub_10148F6DC(*(a6 + 24), 0, &_mh_execute_header);
  }
}

void sub_10148F5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, dispatch_object_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_object_t object, uint64_t a24, char a25)
{
  __cxa_guard_abort(qword_101FCABF0);

  _Unwind_Resume(a1);
}

void sub_10148F648()
{
  if ((atomic_load_explicit(&qword_101FCABE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCABE8))
  {
    ctu::OsLogLogger::OsLogLogger(&qword_101FCABE0, kCtLoggingSystemName, qword_101FCABD8);

    __cxa_guard_release(&qword_101FCABE8);
  }
}

uint64_t sub_10148F6DC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a3;
  v4 = a2;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, &v4, &v5);
}

void sub_10148F734(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5, void *a6)
{
  v9 = a5;
  v10 = a6;
  v37[0] = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x5012000000;
  v28 = sub_10148FBB4;
  v29 = sub_10148FBD8;
  v30 = &unk_101CF8E15;
  *__p = 0u;
  v32 = 0u;
  if (v10)
  {
    sub_10148F648();
    v11 = qword_101FCABE0;
    if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v42 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Getting DeviceIdentityCertificate failed w/ %{public}@", buf, 0xCu);
    }

    v12 = [v10 localizedDescription];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      v15 = [v13 UTF8String];
    }

    else
    {
      v15 = "Getting DeviceIdentityCertificate failed w/ null error";
    }

    sub_100016890((v26 + 7), v15);
    *(v34 + 6) = 2;
    sub_10148FBEC(v26 + 48, *(a1 + 32));

    goto LABEL_17;
  }

  if (!v9 || [v9 count] != 2)
  {
LABEL_17:
    v17 = *(a1 + 64);
    if (!v17)
    {
      goto LABEL_20;
    }

    v19 = 0;
    v18 = *(v34 + 6) | &_mh_execute_header;
    goto LABEL_19;
  }

  if (*(a1 + 80) == 1)
  {
    sub_10148F648();
    v16 = qword_101FCABE0;
    if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I BAA fetch for update baseband successful", buf, 2u);
    }

    v17 = *(a1 + 64);
    if (v17)
    {
      v18 = 0;
      v19 = 1;
LABEL_19:
      sub_10148F6DC(v17, v19, v18);
    }
  }

  else
  {
    *(v26 + 48) = 1;
    v39 = kMAOptionsUseCellularOTAConnection;
    v20 = &__kCFBooleanFalse;
    if (*(a1 + 81))
    {
      v20 = &__kCFBooleanTrue;
    }

    v40 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v22 = [NSMutableDictionary dictionaryWithDictionary:v21];

    v23 = [v9 objectAtIndexedSubscript:0];
    v24 = [v9 objectAtIndexedSubscript:1];
    v37[1] = _NSConcreteStackBlock;
    v37[2] = 3321888768;
    v37[3] = sub_1014900F0;
    v37[4] = &unk_101F40318;
    v37[5] = &v25;
    v37[6] = &v33;
    v37[7] = *(a1 + 32);
    sub_1011F2210(v38, a1 + 40);
    MAEUpdateBasebandTicketWithError();

    sub_100ED2CDC(v38);
  }

LABEL_20:
  _Block_object_dispose(&v25, 8);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[1]);
  }

  _Block_object_dispose(&v33, 8);
  sub_1005A16F4(v37);
}

void sub_10148FB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26)
{
  sub_100ED2CDC(v31 + 56);

  _Block_object_dispose(&a9, 8);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a22, 8);
  sub_1005A16F4(&a26);

  _Unwind_Resume(a1);
}

__n128 sub_10148FBB4(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = result;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_10148FBD8(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }
}

void sub_10148FBEC(char *a1, Registry **a2)
{
  if (*a1 == 1 && (a1[1] & 1) != 0)
  {
    goto LABEL_32;
  }

  memset(&v26[1], 0, 32);
  v27 = 0u;
  v32 = 0u;
  v31 = 0u;
  memset(&v29, 0, sizeof(v29));
  v28 = 0u;
  v30 = 23;
  qmemcpy(&v26[2] + 7, "\tActivation Push", 16);
  LOBYTE(v26[1]) = 121;
  v26[0] = *"Telephony";
  BYTE7(v27) = 15;
  sub_1000167D4((&v27 + 8), "BB ticket update failure", 0x18uLL);
  std::string::operator=(&v29, (a1 + 8));
  v30 |= 0x11uLL;
  ServiceMap = Registry::getServiceMap(*a2);
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
  v33 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v33);
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
  sub_100D9EC48(v16, v26);
  v36[0] = off_101F403D8;
  v36[3] = v36;
  (*(*v12 + 16))(v12, v16, v36);
  sub_10010DF14(v36);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
    if (v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ((v13 & 1) == 0)
  {
LABEL_21:
    sub_100004A34(v11);
  }

LABEL_22:
  if (SBYTE7(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(*(&v27 + 1));
  }

  if (SBYTE7(v27) < 0)
  {
    operator delete(v26[3]);
  }

  if (SHIBYTE(v26[2]) < 0)
  {
    operator delete(v26[0]);
  }

LABEL_32:
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1014906D0;
  v26[3] = &unk_101F40448;
  v26[4] = a1;
  v14 = v26;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v14);
  v35 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, 0x8012Eu);
  if (v35)
  {
    v33 = 0;
    v34 = 0;
    sub_10001C610(&v33);
    if (v33)
    {
      operator new();
    }

    if (v34)
    {
      sub_100004A34(v34);
    }
  }

  sub_10001C0A0(&v35);
}

void sub_101490000(_Unwind_Exception *a1)
{
  v4 = *(v2 - 120);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10001C0A0((v2 - 112));

  _Unwind_Resume(a1);
}

void sub_1014900F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  if (v3)
  {
    *(v4 + 49) = 0;
    sub_10148F648();
    v5 = qword_101FCABE0;
    if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Getting new baseband ticket failed w/ %{public}@", &v12, 0xCu);
    }

    v6 = [v3 localizedDescription];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      v9 = [v7 UTF8String];
    }

    else
    {
      v9 = "Getting new baseband ticket failed w/ null error";
    }

    sub_100016890((*(*(a1 + 32) + 8) + 56), v9);
    *(*(*(a1 + 40) + 8) + 24) = 3;
  }

  else
  {
    *(v4 + 49) = 1;
    sub_10148F648();
    v10 = qword_101FCABE0;
    if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Received new baseband ticket successfully", &v12, 2u);
    }
  }

  sub_10148FBEC((*(*(a1 + 32) + 8) + 48), *(a1 + 48));
  v11 = *(a1 + 80);
  if (v11)
  {
    sub_10148F6DC(v11, v3 == 0, *(*(*(a1 + 40) + 8) + 24) | &_mh_execute_header);
  }
}

void sub_1014902E0(uint64_t a1, uint64_t a2)
{
  sub_1011F2210(a1 + 40, a2 + 40);
  v4 = *(a2 + 72);
  *(a1 + 72) = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

uint64_t sub_101490338(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  return sub_100ED2CDC(a1 + 40);
}

uint64_t sub_101490378(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void *sub_101490404(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F40388;
  sub_10101FBE0(a1 + 3);
  return a1;
}

void sub_101490480(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F40388;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101490584(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a3 + 23);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_10148F648();
  v6 = qword_101FCABE0;
  if (!os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_ERROR))
  {
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_3;
  }

  v7 = "failed";
  if (v3)
  {
    v7 = "success";
  }

  v8 = 136315138;
  v9 = v7;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "ABC report %s for BB ticket update failure", &v8, 0xCu);
  if (v5 < 0)
  {
LABEL_3:
    operator delete(v4);
  }
}

void sub_10149066C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101490684(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F40438))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014906D0(uint64_t a1, uint64_t a2)
{
  sub_10148F648();
  v4 = qword_101FCABE0;
  if (os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if (*v5)
    {
      v6 = "";
    }

    else
    {
      v6 = "not ";
    }

    if (v5[1])
    {
      v7 = "";
    }

    else
    {
      v7 = "not ";
    }

    v16 = 136315394;
    v17 = v6;
    v18 = 2080;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sending update ticket AWD metric: BAA is %ssuccessful, Ticket update is %ssuccessful", &v16, 0x16u);
  }

  v8 = *(a1 + 32);
  if (*(v8 + 1) != 1 || (*v8 & 1) == 0)
  {
    v9 = *(v8 + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    if (v9)
    {
      *(a2 + 32) |= 2u;
      v10 = *(a2 + 16);
      if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v10, (v8 + 8));
      sub_10148F648();
      v11 = qword_101FCABE0;
      v12 = os_log_type_enabled(qword_101FCABE0, OS_LOG_TYPE_DEFAULT);
      v8 = *(a1 + 32);
      if (v12)
      {
        v13 = (v8 + 8);
        if (*(v8 + 31) < 0)
        {
          v13 = *v13;
        }

        v16 = 136315138;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I AWD metric has failure reason: %s", &v16, 0xCu);
        v8 = *(a1 + 32);
      }
    }
  }

  v14 = *(a2 + 32);
  *(a2 + 25) = *v8;
  v15 = *(v8 + 1);
  *(a2 + 32) = v14 | 0xC;
  *(a2 + 24) = v15;
}

void sub_1014908E0(uint64_t a1)
{

  operator delete();
}

id sub_101490934(uint64_t a1, void *a2)
{
  *a2 = off_101F40478;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10149097C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
}

const void **sub_10149098C(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = *(a1 + 8);
  v5 = *a3;
  *a3 = 0;
  (*(v3 + 16))();
  return sub_10002D760(&v5);
}

void sub_1014909E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002D760(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1014909FC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F404E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101490A48()
{
  v0 = objc_autoreleasePoolPush();
  qword_101FCABD8 = sGetLogGroupName();

  objc_autoreleasePoolPop(v0);
}

void sub_101490D78(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_101491294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, xpc_object_t a25, uint64_t a26)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101491674(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_101491940(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_101491BDC(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_101491FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_10149240C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(a1);
}

void sub_101492828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_101492C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_1014930AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(a1);
}

void sub_1014934C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_1014938F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_101493D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(a1);
}

void sub_101494170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_10149461C(_Unwind_Exception *a1)
{
  v6 = v1;

  if ((v3 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void sub_10149472C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (!a24)
  {
    JUMPOUT(0x10149471CLL);
  }

  JUMPOUT(0x101494718);
}

uint64_t sub_101494740(uint64_t a1, xpc_object_t *a2)
{
  if (xpc_dictionary_get_count(*a2))
  {
    sub_10000F6D4(a1, a2);
  }

  return xpc::auto_reply::deleter(a2, v4);
}

void sub_1014947C4(uint64_t a1)
{

  operator delete();
}

id sub_10149488C(uint64_t a1, void *a2)
{
  *a2 = off_101F40540;
  a2[1] = objc_retainBlock(*(a1 + 8));
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_1014948E4(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_101494920(id *a1)
{

  operator delete(a1);
}

void sub_101494964(uint64_t a1, id *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = v5;
  if ((v4 & 0x100000000) != 0)
  {
    v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:v4 userInfo:0];
    (*(*(a1 + 8) + 16))();
  }

  else
  {
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v8 = *(a1 + 16);
      if (v8)
      {
        objc_msgSend_getLogContext(v8);
        v9 = v11;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
      }

      ctu::OsLogContext::~OsLogContext(&v10);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Got empty data usage", &v10, 2u);
      }

      v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    }

    (*(*(a1 + 8) + 16))();
  }
}

uint64_t sub_101494AD0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F405A0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101494B50(uint64_t a1)
{

  operator delete();
}

id sub_101494C18(uint64_t a1, void *a2)
{
  *a2 = off_101F405C0;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_101494C70(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_101494CAC(id *a1)
{

  operator delete(a1);
}

void sub_101494CF0(uint64_t a1, const char *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v5 = 2;
    goto LABEL_5;
  }

  if (xpc_dictionary_get_value(*v3, "kPosixError"))
  {
    *buf = v3;
    *&buf[8] = "kPosixError";
    sub_100006354(buf, &object);
    v5 = xpc::dyn_cast_or_default(&object, 0, v4);
    xpc_release(object);
LABEL_5:
    v6 = *(a1 + 8);
    if (v6)
    {
      objc_msgSend_getLogContext(v6);
      v7 = *&buf[8];
    }

    else
    {
      v7 = 0;
      *buf = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to retrieve active paired device data usage, error: %lu", buf, 0xCu);
    }

    v8 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    (*(*(a1 + 16) + 16))();
    goto LABEL_24;
  }

  object = 0;
  data = xpc_dictionary_get_data(*v3, "kDeviceDataUsage", &object);
  if (!data)
  {
    v10 = 0;
    goto LABEL_15;
  }

  v10 = [NSData dataWithBytes:data length:object];
  if (!v10)
  {
LABEL_15:
    v8 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v15 = 0;
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v15];
  v11 = v15;
LABEL_16:
  if (!(v8 | v11))
  {
    v12 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:94 userInfo:0];
    v13 = *(a1 + 8);
    if (v13)
    {
      objc_msgSend_getLogContext(v13);
      v14 = *&buf[8];
    }

    else
    {
      v14 = 0;
      *buf = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to retrieve active paired device data usage, error: %@", buf, 0xCu);
    }

    v11 = v12;
  }

  (*(*(a1 + 16) + 16))();

LABEL_24:
}