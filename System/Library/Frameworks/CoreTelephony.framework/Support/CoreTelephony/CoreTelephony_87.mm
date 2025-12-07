void sub_10059C80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  sub_100005978((v60 + 32));
  sub_100305E28((v61 - 160));
  sub_100005978((v61 - 192));
  sub_1000296E0((v61 - 184));
  sub_1000296E0((v61 - 176));
  _Unwind_Resume(a1);
}

const void **sub_10059CAFC@<X0>(uint64_t a1@<X0>, ctu *a3@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + 48);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 80));
    ctu::cf_to_xpc(a3, v9);
    xpc::object::to_string(__p, object);
    if (v37 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v40 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sipTel orig cfg: %s", buf, 0x20u);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(object[0]);
  }

  theDict = 0;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a3);
  v34 = MutableCopy;
  theDict = MutableCopy;
  if (MutableCopy)
  {
    CFRetain(MutableCopy);
  }

  sub_10000501C(buf, "ipTel");
  sub_10059DC6C(a1, &v34, buf, object);
  v12 = theDict;
  theDict = object[0];
  __p[0] = v12;
  object[0] = 0;
  sub_1000296E0(__p);
  sub_1000296E0(object);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_1000296E0(&v34);
  CFDictionaryGetValue(theDict, @"Signaling");
  v13 = *(a1 + 232);
  if (v13)
  {
    if (*(v13 + 256))
    {
      if (*(v13 + 248) == 1)
      {
        v14 = CFDictionaryGetValue(theDict, @"IPTelephony");
        v33 = 0;
        if (v14)
        {
          Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v14);
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v20 = Mutable;
        v33 = Mutable;
        v21 = *(a1 + 232);
        if (*(v21 + 247) < 0)
        {
          sub_100005F2C(__dst, *(v21 + 224), *(v21 + 232));
        }

        else
        {
          *__dst = *(v21 + 224);
          v31 = *(v21 + 240);
        }

        if (SHIBYTE(v31) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v37 = v31;
        }

        v38[0] = 0;
        if (SHIBYTE(v37) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v37;
        }

        if (ctu::cf::convert_copy())
        {
          v22 = v38[0];
          v38[0] = 0;
          object[0] = v22;
          sub_100005978(object);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        value = v38[0];
        v38[0] = 0;
        sub_100005978(v38);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }

        CFDictionarySetValue(v20, @"pcscf", value);
        sub_100005978(&value);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__dst[0]);
        }

        CFDictionarySetValue(theDict, @"IPTelephony", v33);
        v23 = *(a1 + 48);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = PersonalityInfo::logPrefix(**(a1 + 80));
          v25 = *(a1 + 232);
          v26 = (v25 + 224);
          if (*(v25 + 247) < 0)
          {
            v26 = *v26;
          }

          *buf = 136315650;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v40 = v26;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sPCSCF address [%s] override from getProvisioning applied", buf, 0x20u);
        }

        sub_1000296E0(&v33);
      }

      __p[0] = 0;
      __p[1] = 0;
      v37 = 0;
      object[0] = 0;
      object[1] = 0;
      v29 = 0;
      std::mutex::lock((a1 + 432));
      operator new();
    }

    v16 = *(a1 + 48);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v18 = "#I %s%sims credentials are not present";
      goto LABEL_21;
    }
  }

  else
  {
    v16 = *(a1 + 48);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v18 = "#I %s%sfIndividualCredentials is invalid";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0x16u);
    }
  }

  sub_100010180(a4, &theDict);
  return sub_1000296E0(&theDict);
}

void sub_10059D854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, xpc_object_t object, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, int a35, const void *a36, __int16 a37, char a38, char a39, int a40, const void *a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_100005978((v47 - 160));
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_1000296E0(&a36);
  sub_1000296E0(&a41);
  _Unwind_Resume(a1);
}

void sub_10059DA0C(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, CFPropertyListRef *a4@<X8>)
{
  std::mutex::lock((a1 + 432));
  v19 = 0;
  v8 = *(a1 + 512);
  if (v8)
  {
    v9 = *a2;
    v10 = (*(a2 + 8) - *a2) >> 3;
    if (v10)
    {
      if (v10 == 1)
      {
        Value = CFDictionaryGetValue(v8, *v9);
        sub_1000673E0(&v19, &Value);
      }

      else
      {
        theDict = 0;
        Value = CFDictionaryGetValue(v8, *v9);
        sub_100010180(&theDict, &Value);
        v11 = theDict;
        if (theDict)
        {
          v12 = (*(a2 + 8) - *a2) >> 3;
          if (v12 >= 2)
          {
            v13 = v12 - 1;
            v14 = 1;
            while (2 - v12 + v14 != 1)
            {
              if (v14 >= (*(a2 + 8) - *a2) >> 3)
              {
                sub_1002030E0();
              }

              v17 = CFDictionaryGetValue(v11, *(*a2 + 8 * v14));
              Value = 0;
              sub_100010180(&Value, &v17);
              v15 = theDict;
              theDict = Value;
              Value = v15;
              sub_10001021C(&Value);
              v11 = theDict;
              if (theDict)
              {
                if (++v14 < v12)
                {
                  continue;
                }
              }

              goto LABEL_15;
            }

            if (v13 >= (*(a2 + 8) - *a2) >> 3)
            {
              sub_1002030E0();
            }

            Value = CFDictionaryGetValue(v11, *(*a2 + 8 * v13));
            sub_1000673E0(&v19, &Value);
          }
        }

LABEL_15:
        sub_10001021C(&theDict);
      }
    }
  }

  *a4 = 0;
  if (v19)
  {
    v16 = v19;
  }

  else
  {
    v16 = a3;
  }

  *a4 = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v16, 1uLL);
  sub_10000A1EC(&v19);
  std::mutex::unlock((a1 + 432));
}

void sub_10059DBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_10000A1EC(va1);
  std::mutex::unlock((v3 + 432));
  _Unwind_Resume(a1);
}

const void **sub_10059DC04@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  v3 = *(a1 + 32);
  return sub_10021D11C(a2, &v3);
}

const __CFDictionary *sub_10059DC6C@<X0>(uint64_t a1@<X0>, CFMutableDictionaryRef *a2@<X1>, char *a3@<X2>, CFMutableDictionaryRef *a4@<X8>)
{
  result = *a2;
  if (*a2)
  {
    Value = CFDictionaryGetValue(result, @"DeviceOverrides");
    if (Value && (v10 = Value, v11 = CFGetTypeID(Value), v11 == CFDictionaryGetTypeID()))
    {
      theDict = v10;
      CFRetain(v10);
      CFDictionaryRemoveValue(*a2, @"DeviceOverrides");
      Count = CFDictionaryGetCount(v10);
      if (Count > 0)
      {
        keys = 0;
        v52 = 0;
        v53 = 0;
        sub_10007D780(&keys, Count);
        CFDictionaryGetKeysAndValues(theDict, keys, 0);
        v48 = 0;
        v49 = 0;
        v50 = 0;
        capabilities::ct::compatibleHardwareConfigurationString(v13);
        v14 = keys;
        v15 = v52;
        while (1)
        {
          if (v14 == v15)
          {
            v31 = *(a1 + 48);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v33 = PersonalityInfo::logPrefix(**(a1 + 80));
              if (a3[23] < 0)
              {
                a3 = *a3;
              }

              ctu::cf_to_xpc(*a2, v32);
              xpc::object::to_string(__p, &object);
              if (v47 >= 0)
              {
                v34 = __p;
              }

              else
              {
                v34 = __p[0];
              }

              *buf = 136315906;
              *&buf[4] = v33;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              *&buf[22] = 2080;
              v56 = a3;
              v57 = 2080;
              v58 = v34;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s%s cfg unchanged:\n%s", buf, 0x2Au);
              if (SHIBYTE(v47) < 0)
              {
                operator delete(__p[0]);
              }

              xpc_release(object);
            }

            *a4 = *a2;
            *a2 = 0;
            goto LABEL_61;
          }

          __p[0] = 0;
          __p[1] = 0;
          v47 = 0;
          if (*v14)
          {
            CFGetTypeID(*v14);
            CFStringGetTypeID();
          }

          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          *__p = *buf;
          v47 = *&buf[16];
          object = 0;
          v44 = 0;
          v45 = 0;
          ctu::tokenize();
          v16 = object;
          v17 = v44;
          if (object != v44)
          {
            break;
          }

LABEL_24:
          *buf = &object;
          sub_1000087B4(buf);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__p[0]);
          }

          ++v14;
        }

        if (v50 >= 0)
        {
          v18 = HIBYTE(v50);
        }

        else
        {
          v18 = v49;
        }

        if (v50 >= 0)
        {
          v19 = &v48;
        }

        else
        {
          v19 = v48;
        }

        while (1)
        {
          v20 = *(v16 + 23);
          v21 = v20;
          if ((v20 & 0x80u) != 0)
          {
            v20 = v16[1];
          }

          if (v20 == v18)
          {
            v22 = v21 >= 0 ? v16 : *v16;
            if (!memcmp(v22, v19, v18))
            {
              break;
            }
          }

          v16 += 3;
          if (v16 == v17)
          {
            goto LABEL_24;
          }
        }

        v23 = *(a1 + 48);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = PersonalityInfo::logPrefix(**(a1 + 80));
          v25 = &v48;
          if (v50 < 0)
          {
            v25 = v48;
          }

          *buf = 136315650;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v56 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sProcessing device-specific overrides for %s", buf, 0x20u);
        }

        v42 = 0;
        v26 = *a2;
        v27 = CFDictionaryGetValue(theDict, *v14);
        v28 = v27;
        if (v27)
        {
          v29 = CFGetTypeID(v27);
          if (v29 == CFDictionaryGetTypeID())
          {
            v30 = v28;
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
        }

        sub_10080F7B4(&v42, v26, v30, a1);
        v35 = *(a1 + 48);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v37 = PersonalityInfo::logPrefix(**(a1 + 80));
          if (a3[23] < 0)
          {
            a3 = *a3;
          }

          ctu::cf_to_xpc(v42, v36);
          xpc::object::to_string(v40, &v39);
          if (v41 >= 0)
          {
            v38 = v40;
          }

          else
          {
            v38 = v40[0];
          }

          *buf = 136315906;
          *&buf[4] = v37;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v56 = a3;
          v57 = 2080;
          v58 = v38;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%sMerged %s cfg:\n%s", buf, 0x2Au);
          if (v41 < 0)
          {
            operator delete(v40[0]);
          }

          xpc_release(v39);
        }

        *a4 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v42);
        sub_10001021C(&v42);
        *buf = &object;
        sub_1000087B4(buf);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_61:
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v48);
        }

        if (keys)
        {
          v52 = keys;
          operator delete(keys);
        }

        return sub_10001021C(&theDict);
      }
    }

    else
    {
      theDict = 0;
    }

    *a4 = *a2;
    *a2 = 0;
    return sub_10001021C(&theDict);
  }

  *a4 = 0;
  return result;
}

void sub_10059E1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, xpc_object_t object, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10059E29C(uint64_t a1, int a2, int a3, CFDictionaryRef theDict, const __CFDictionary *a5)
{
  if (!a2)
  {
    return 0;
  }

  if (theDict && a5)
  {
    theDicta = CFDictionaryCreateMutableCopy(0, 0, theDict);
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a5);
    CFDictionaryRemoveValue(theDicta, @"cfgSlots");
    CFDictionaryRemoveValue(MutableCopy, @"cfgSlots");
    CFDictionaryRemoveValue(theDicta, @"ts");
    CFDictionaryRemoveValue(MutableCopy, @"ts");
    if (CFEqual(theDicta, MutableCopy))
    {
      sub_1008100FC(a1);
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      *__p = 0u;
      v40 = 0;
      v8 = sub_100598EC4(a1, (a1 + 120), __p);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }

      if (v8 != -1)
      {
        Value = CFDictionaryGetValue(theDict, @"cfgSlots");
        v10 = Value;
        if (Value)
        {
          v11 = CFGetTypeID(Value);
          if (v11 != CFArrayGetTypeID())
          {
            v10 = 0;
          }
        }

        v12 = CFDictionaryGetValue(a5, @"cfgSlots");
        v13 = v12;
        if (v12)
        {
          v14 = CFGetTypeID(v12);
          if (v14 == CFArrayGetTypeID() && v10 && sub_10059A484(a1))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v8);
            v16 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v17 = CFGetTypeID(ValueAtIndex);
              if (v17 != CFDataGetTypeID())
              {
                v16 = 0;
              }
            }

            v18 = CFArrayGetValueAtIndex(v13, v8);
            v19 = v18;
            if (v18)
            {
              v20 = CFGetTypeID(v18);
              if (v20 == CFDataGetTypeID())
              {
                if (v16)
                {
                  cf1 = 0;
                  v21 = *(a1 + 560);
                  v35 = 0;
                  v36 = 0;
                  v34 = 0;
                  sub_100034C50(&v34, *v21, *(v21 + 8), *(v21 + 8) - *v21);
                  sub_1009F8218(v16, &v34, &v37);
                  sub_100060E84(__p, &v37);
                  v43 = 0;
                  *buf = 0;
                  sub_100010180(buf, __p);
                  if (*buf)
                  {
                    sub_1000676D4(&v43, buf);
                  }

                  sub_10001021C(buf);
                  cf1 = v43;
                  v43 = 0;
                  sub_10001021C(&v43);
                  sub_10000A1EC(__p);
                  sub_10000A1EC(&v37);
                  if (v34)
                  {
                    v35 = v34;
                    operator delete(v34);
                  }

                  v22 = *(a1 + 560);
                  v30 = 0;
                  v31 = 0;
                  v29 = 0;
                  sub_100034C50(&v29, *v22, *(v22 + 8), *(v22 + 8) - *v22);
                  sub_1009F8218(v19, &v29, &v32);
                  sub_100060E84(__p, &v32);
                  v43 = 0;
                  *buf = 0;
                  sub_100010180(buf, __p);
                  if (*buf)
                  {
                    sub_1000676D4(&v43, buf);
                  }

                  sub_10001021C(buf);
                  v23 = v43;
                  v33 = v43;
                  v43 = 0;
                  sub_10001021C(&v43);
                  sub_10000A1EC(__p);
                  sub_10000A1EC(&v32);
                  if (v29)
                  {
                    v30 = v29;
                    operator delete(v29);
                  }

                  if (cf1 && v23)
                  {
                    v24 = CFEqual(cf1, v23);
                    sub_10001021C(&v33);
                    sub_10001021C(&cf1);
                    sub_1000296E0(&MutableCopy);
                    sub_1000296E0(&theDicta);
                    if (v24)
                    {
                      return 0;
                    }

                    goto LABEL_35;
                  }

                  sub_10001021C(&v33);
                  sub_10001021C(&cf1);
                }
              }
            }
          }
        }
      }
    }

    sub_1000296E0(&MutableCopy);
    sub_1000296E0(&theDicta);
  }

LABEL_35:
  v26 = *(a1 + 48);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = PersonalityInfo::logPrefix(**(a1 + 80));
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v40 = *&buf[16];
    v28 = __p;
    if ((buf[23] & 0x80u) != 0)
    {
      v28 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v27;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v45 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%schanged %s trigger service evaluation", buf, 0x20u);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = 1;
  *(a1 + 168) = 1;
  return result;
}

void sub_10059E724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, int a13, const void *a14, void *a15, uint64_t a16, uint64_t a17, char a18, int a19, const void *a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, const void *a27, const void *a28, __int16 a29, char a30, char a31)
{
  sub_10001021C(&a14);
  sub_10001021C(&a20);
  sub_1000296E0(&a27);
  sub_1000296E0(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_10059E838(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFDictionary *a4)
{
  if (a2)
  {
    theDict[0] = 0;
    theDict[1] = 0;
    v8 = *(a1 + 104);
    v9 = sub_1008100FC(a1);
    sub_1005D72A4(theDict, a3, v8, 2u, a1 + 120, v9, a4);
    if (theDict[1])
    {
      Value = CFDictionaryGetValue(theDict[1], @"enable");
      if (Value)
      {
        if (CFBooleanGetValue(Value))
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        v11 = 0;
      }

      sub_100591CF8(a1, v11);
    }

    sub_10001021C(&theDict[1]);
    v12 = *(a1 + 48);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 80));
      memset(theDict, 0, 24);
      ctu::cf::assign();
      *__p = *theDict;
      v17 = theDict[2];
      v14 = __p;
      if (SHIBYTE(theDict[2]) < 0)
      {
        v14 = theDict[0];
      }

      LODWORD(theDict[0]) = 136315650;
      *(theDict + 4) = v13;
      WORD2(theDict[1]) = 2080;
      *(&theDict[1] + 6) = " ";
      HIWORD(theDict[2]) = 2080;
      theDict[3] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%schanged %s trigger service evaluation", theDict, 0x20u);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a1 + 168) = 1;
  }

  return a2;
}

void sub_10059E9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10059EA20(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, const __CFDictionary *a5)
{
  result = sub_1008100FC(a1);
  if (result)
  {
    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"assignments");
      if (Value && (v10 = Value, v11 = CFGetTypeID(Value), v11 == CFDictionaryGetTypeID()))
      {
        Count = CFDictionaryGetCount(v10);
        memset(keys, 0, 24);
        sub_100222418(keys, Count);
        values[0] = 0;
        values[1] = 0;
        v26 = 0;
        sub_10007D780(values, Count);
        CFDictionaryGetKeysAndValues(v10, keys[0], values[0]);
        if (Count < 1)
        {
LABEL_9:
          a5 = 0;
        }

        else
        {
          v13 = 0;
          while (1)
          {
            v14 = sub_1008100FC(a1);
            if (CFEqual(v14, values[0][v13]))
            {
              break;
            }

            if (Count == ++v13)
            {
              goto LABEL_9;
            }
          }

          a5 = keys[0][v13];
        }

        if (values[0])
        {
          values[1] = values[0];
          operator delete(values[0]);
        }

        if (keys[0])
        {
          keys[1] = keys[0];
          operator delete(keys[0]);
        }
      }

      else
      {
        a5 = 0;
      }
    }

    if (a4 && (v15 = CFDictionaryGetValue(a4, @"assignments"), (v16 = v15) != 0) && (v17 = CFGetTypeID(v15), v17 == CFDictionaryGetTypeID()))
    {
      v18 = CFDictionaryGetCount(v16);
      memset(keys, 0, 24);
      sub_100222418(keys, v18);
      values[0] = 0;
      values[1] = 0;
      v26 = 0;
      sub_10007D780(values, v18);
      CFDictionaryGetKeysAndValues(v16, keys[0], values[0]);
      if (v18 < 1)
      {
LABEL_23:
        v21 = 0;
      }

      else
      {
        v19 = 0;
        while (1)
        {
          v20 = sub_1008100FC(a1);
          if (CFEqual(v20, values[0][v19]))
          {
            break;
          }

          if (v18 == ++v19)
          {
            goto LABEL_23;
          }
        }

        v21 = keys[0][v19];
      }

      if (values[0])
      {
        values[1] = values[0];
        operator delete(values[0]);
      }

      if (keys[0])
      {
        keys[1] = keys[0];
        operator delete(keys[0]);
      }

      if ((a5 != 0) == (v21 != 0))
      {
        result = 0;
        if (!a5 || !v21)
        {
          return result;
        }

        if (CFEqual(a5, v21))
        {
          return 0;
        }
      }
    }

    else if (!a5)
    {
      return 0;
    }

    v22 = *(a1 + 48);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = PersonalityInfo::logPrefix(**(a1 + 80));
      memset(keys, 0, 24);
      ctu::cf::assign();
      *values = *keys;
      v26 = keys[2];
      v24 = values;
      if (SHIBYTE(keys[2]) < 0)
      {
        v24 = keys[0];
      }

      LODWORD(keys[0]) = 136315650;
      *(keys + 4) = v23;
      WORD2(keys[1]) = 2080;
      *(&keys[1] + 6) = " ";
      HIWORD(keys[2]) = 2080;
      keys[3] = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%schanged %s trigger service evaluation", keys, 0x20u);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(values[0]);
      }
    }

    result = 1;
    *(a1 + 168) = 1;
  }

  return result;
}

void sub_10059ED50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10059EDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 224))(a1);
  v5 = *(a1 + 192);
  if (v5)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = sub_10058D044(a1);
  }

  if (v4 == 1)
  {
    v7 = 0;
    v8 = 1;
    v9 = 1;
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 528);
    v9 = v8;
    if (v6 && (*(a1 + 528) & 1) == 0)
    {
      v7 = sub_10034B35C(*(a1 + 96), *(a1 + 196));
      v9 = 0;
    }
  }

  v10 = *(a1 + 48);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v8;
    v11 = PersonalityInfo::logPrefix(**(a1 + 80));
    v12 = sub_10060FFC0(*(a1 + 192));
    if (v6)
    {
      v13 = "on";
    }

    else
    {
      v13 = "off";
    }

    v14 = asStringBool(v7);
    v15 = sub_10060FF94(v4);
    v16 = asStringBool(*(a1 + 528));
    *buf = 136316930;
    *&buf[4] = v11;
    v8 = v18;
    v20 = 2080;
    v21 = " ";
    v22 = 2080;
    v23 = v12;
    v24 = 2080;
    v25 = v13;
    v26 = 2080;
    v27 = v14;
    v28 = 2080;
    v29 = v15;
    v30 = 2080;
    v31 = v16;
    v32 = 2080;
    v33 = asStringBool(v9);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper user switch state is %s ('%s'), activating: %s; service status: %s; reprovisioining: %s; isEnabled return '%s'", buf, 0x52u);
  }

  *a2 = v8;
  *(a2 + 8) = 0;
  *buf = 0;
  return sub_10001021C(buf);
}

const void **sub_10059EFD4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100591B44(a1);
  if ((v4 & 1) == 0)
  {
    theDict = 0;
    goto LABEL_7;
  }

  theDict = 0;
  if (!capabilities::ct::supportsThumperService(v4))
  {
LABEL_7:
    v8 = 0;
    v6 = 0;
    v11 = 0;
    LOWORD(v20) = 0;
    BYTE2(v20) = 0;
    v21 = 0;
    goto LABEL_8;
  }

  v5 = sub_100347D60(*(a1 + 196));
  v6 = v5 == 1;
  v7 = sub_100347D84(*(a1 + 196));
  v8 = v7 == 1;
  if (v7 == 1)
  {
    sub_10034DA68(*(a1 + 96), &v22);
    v9 = v22;
    v20 = theDict;
    v22 = 0;
    theDict = v9;
    sub_1000296E0(&v20);
    v10 = &v22;
LABEL_11:
    sub_1000296E0(v10);
    goto LABEL_12;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v14 = theDict;
    theDict = Mutable;
    v20 = v14;
    v10 = &v20;
    goto LABEL_11;
  }

LABEL_12:
  v15 = *(a1 + 192);
  if (v15)
  {
    v16 = v15 == 2;
  }

  else
  {
    v16 = sub_10058D044(a1);
  }

  if (*(a1 + 520) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    if (v16 && (*(a1 + 528) & 1) == 0)
    {
      if (sub_10034B35C(*(a1 + 96), *(a1 + 196)) || (sub_10034B81C(*(a1 + 96)) & 1) != 0 || (*(a1 + 524) & 1) != 0 || (*(a1 + 525) & 1) != 0 || (*(a1 + 526) & 1) != 0)
      {
        v17 = 1;
      }

      else
      {
        v17 = *(a1 + 527);
      }
    }
  }

  v18 = sub_10034B404(*(a1 + 96));
  if (v5 == 1)
  {
    if (v17)
    {
      v19 = &kCTProvisioningStatusInProcess;
    }

    else if (v18 == 1)
    {
      v19 = &kCTProvisioningStatusSubscribed;
    }

    else
    {
      v19 = &kCTProvisioningStatusNotSubscribed;
    }
  }

  else if (v7 == 1)
  {
    v19 = &kCTProvisioningStatusInProcess;
    if ((v17 & 1) == 0)
    {
      v19 = &kCTProvisioningStatusNotSubscribed;
    }
  }

  else
  {
    v19 = &kCTProvisioningStatusNotAllowed;
  }

  CFDictionarySetValue(theDict, kCTProvisioningStatus, *v19);
  v11 = 1;
  LOBYTE(v20) = 1;
  BYTE1(v20) = v7 == 1;
  BYTE2(v20) = v5 == 1;
  v21 = theDict;
  if (theDict)
  {
    CFRetain(theDict);
    v11 = 1;
  }

LABEL_8:
  *a2 = v11;
  a2[1] = v8;
  a2[2] = v6;
  sub_100010180(a2 + 1, &v21);
  sub_1000296E0(&v21);
  return sub_1000296E0(&theDict);
}

void sub_10059F248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10059F28C(uint64_t a1, uint64_t a2, CFDictionaryRef *a3)
{
  if (!*a3)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(*a3, kPSUserPreference);
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    v7 = v6 == CFBooleanGetTypeID();
  }

  else
  {
    v7 = 0;
  }

  v8 = CFDictionaryGetValue(*a3, kPSAssociatedAccountID);
  result = 1;
  if (v8 && !v7)
  {
    v10 = CFGetTypeID(v8);
    TypeID = CFStringGetTypeID();
    v12 = *(a1 + 200);
    if ((v10 == TypeID) == (v12 == 0) || v10 == TypeID && CFStringCompare(v8, v12, 0))
    {
      return 1;
    }

    v13 = *(a1 + 48);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v14)
    {
      v15 = PersonalityInfo::logPrefix(**(a1 + 80));
      v16 = 136315394;
      v17 = v15;
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sduplicated switch account request - ignoring", &v16, 0x16u);
      return 0;
    }
  }

  return result;
}

void sub_10059F414(uint64_t a1, int a2, CFDictionaryRef *a3)
{
  v6 = a2;
  if (*a3)
  {
    Value = CFDictionaryGetValue(*a3, kPSUserPreference);
    if (!Value)
    {
      goto LABEL_7;
    }

    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 != CFBooleanGetTypeID())
    {
      goto LABEL_7;
    }

    v6 = CFBooleanGetValue(v8) != 0;
  }

  if (sub_10080FFF8(a1))
  {
    sub_10058D2AC(a1, v6);
  }

LABEL_7:
  v10 = *(a1 + 48);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315650;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v52 = 2080;
    v53 = asStringBool(a2);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEnabled, val: %s", buf, 0x20u);
  }

  *buf = off_101E62000;
  *&buf[8] = a1;
  v53 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  if (*a3)
  {
    v12 = CFDictionaryGetValue(*a3, kPSUserPreference);
    v13 = CFDictionaryGetValue(*a3, kPSAssociatedAccountID);
    v14 = v13;
    if (v13)
    {
      v15 = CFGetTypeID(v13);
      if (v15 == CFStringGetTypeID())
      {
        *&v49 = v14;
        *buf = 0;
        sub_100060DE8(buf, &v49);
        v16 = *(a1 + 200);
        *(a1 + 200) = *buf;
      }

      else
      {
        v16 = *(a1 + 200);
        *(a1 + 200) = 0;
      }

      *buf = v16;
      sub_100005978(buf);
      setAssociatedID(*(a1 + 200));
      sub_1005D0430(*(a1 + 104));
      LODWORD(v14) = 1;
    }
  }

  else
  {
    LODWORD(v14) = 0;
    v12 = 0;
  }

  if (!sub_1008100FC(a1))
  {
    goto LABEL_34;
  }

  if ((*(a1 + 143) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 143))
    {
      goto LABEL_19;
    }

LABEL_34:
    v30 = *(a1 + 48);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v31;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEnabled, no device ID or account ID yet", buf, 0x16u);
    }

    goto LABEL_36;
  }

  if (!*(a1 + 128))
  {
    goto LABEL_34;
  }

LABEL_19:
  if (v12)
  {
    v17 = 1;
  }

  else
  {
    v17 = v14;
  }

  v18 = kCFBooleanFalse;
  if (a2)
  {
    v18 = kCFBooleanTrue;
  }

  if (v17)
  {
    v19 = v12;
  }

  else
  {
    v19 = v18;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v21 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  *buf = v22;
  v26 = sub_100009510(&v21[1].__m_.__sig, buf);
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
      goto LABEL_39;
    }
  }

  else
  {
    v28 = 0;
  }

  std::mutex::unlock(v21);
  v27 = 0;
  v29 = 1;
LABEL_39:
  isWatch = GestaltUtilityInterface::isWatch(v28);
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  if (isWatch)
  {
    v33 = 0;
  }

  else
  {
    v33 = v19;
  }

  if (sub_100347D60(*(a1 + 196)) != 1 && (a2 & 1) != 0)
  {
    v34 = *(a1 + 48);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v35;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper cannot be turned ON since feature is not allowed", buf, 0x16u);
    }

LABEL_36:
    sub_10034CD9C(*(a1 + 96), 1, 1);
    return;
  }

  if (sub_100591B44(a1))
  {
    if (!v33 || !sub_10059424C(a1))
    {
LABEL_80:
      sub_1005903E0(a1, v33 != 0, 0);
      return;
    }

    v36 = *(a1 + 192);
    if (CFEqual(v33, kCFBooleanTrue))
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    v38 = sub_100591CF8(a1, v37);
    if (v36)
    {
      v39 = v36 == 2;
    }

    else
    {
      v39 = sub_10058D044(a1);
    }

    v45 = *(a1 + 192);
    if (v45)
    {
      if (v45 == 2)
      {
        if (v39)
        {
LABEL_78:
          if (v38)
          {
            sub_100596308(a1, 0);
          }

          goto LABEL_80;
        }

        goto LABEL_74;
      }

      if ((v39 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (v39 == sub_10058D044(a1))
      {
        goto LABEL_78;
      }

      v45 = *(a1 + 192);
    }

    if (!v45)
    {
      v46 = sub_10058D044(a1);
      goto LABEL_77;
    }

    if (v45 != 2)
    {
      v46 = 0;
      goto LABEL_77;
    }

LABEL_74:
    v46 = 1;
LABEL_77:
    buf[0] = v46;
    sub_100597B4C(a1, 0, 0, 0, buf, 0);
    goto LABEL_78;
  }

  v40 = *(a1 + 48);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = PersonalityInfo::logPrefix(**(a1 + 80));
    v42 = sub_100591B44(a1);
    v43 = sub_10060FFC0(HIDWORD(v42));
    if (sub_1008100FC(a1))
    {
      sub_1008100FC(a1);
      v49 = 0uLL;
      v50 = 0;
      ctu::cf::assign();
      *__p = v49;
      v48 = v50;
      v44 = __p;
      if (v50 < 0)
      {
        v44 = v49;
      }

      *buf = 136315906;
      *&buf[4] = v41;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v52 = 2080;
      v53 = v43;
      v54 = 2080;
      v55 = v44;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s%sDevice not associated. switch status: %s, deviceId: '%s'", buf, 0x2Au);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136315906;
      *&buf[4] = v41;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v52 = 2080;
      v53 = v43;
      v54 = 2080;
      v55 = "";
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s%sDevice not associated. switch status: %s, deviceId: '%s'", buf, 0x2Au);
    }
  }
}

void sub_10059FAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10059FB14(uint64_t a1, int a2)
{
  std::mutex::lock((a1 + 432));
  v4 = *(a1 + 520);
  *(a1 + 520) = a2;
  v5 = *(a1 + 48);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 80));
    if (*(a1 + 520))
    {
      v7 = "on";
    }

    else
    {
      v7 = "off";
    }

    v8 = sub_10060FF94(v4);
    v9 = sub_10060FF94(*(a1 + 520));
    v10 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v10 = *v10;
    }

    v11 = 136316418;
    v12 = v6;
    v13 = 2080;
    v14 = " ";
    v15 = 2080;
    v16 = v7;
    v17 = 2080;
    v18 = v8;
    v19 = 2080;
    v20 = v9;
    v21 = 2080;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sservice:%s, status:%s->%s, account id:%s", &v11, 0x3Eu);
  }

  std::mutex::unlock((a1 + 432));
}

uint64_t sub_10059FC84(uint64_t a1)
{
  sub_10081043C(a1);
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    v4 = sub_10060FFC0(*(a1 + 192));
    v5 = (*(*a1 + 224))(a1);
    v6 = sub_10060FF94(v5);
    v7 = sub_100A38E08(*(a1 + 196));
    v8 = asStringBool(*(a1 + 392));
    *buf = 136316418;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v4;
    LOWORD(v55[0].__locale_) = 2080;
    *(&v55[0].__locale_ + 2) = v6;
    WORD1(v55[1].__locale_) = 2080;
    *(&v55[1].__locale_ + 4) = v7;
    WORD2(v55[2].__locale_) = 2080;
    *(&v55[2].__locale_ + 6) = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fSwitchState: %s, fServiceStatus: %s, fEntitlementResultForThumper: %s, fProvisioningApplied: %s", buf, 0x3Eu);
    v2 = *(a1 + 48);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 80));
    memset(buf, 0, 24);
    ctu::cf::assign();
    *__p = *buf;
    __p[2] = *&buf[16];
    v10 = *buf;
    if ((buf[23] & 0x80u) == 0)
    {
      v10 = __p;
    }

    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fAssociatedAccountID: %s", buf, 0x20u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  __src = 0u;
  memset(v55, 0, sizeof(v55));
  memset(buf, 0, sizeof(buf));
  sub_10000C320(buf);
  v11 = sub_10000C030(&buf[16], "fSetProvisioningResultData: ", 28);
  sub_100A41410(v11, a1 + 248);
  v12 = *(a1 + 48);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 80));
    if ((BYTE8(v59) & 0x10) != 0)
    {
      v15 = v59;
      if (v59 < *(&__src + 1))
      {
        *&v59 = *(&__src + 1);
        v15 = *(&__src + 1);
      }

      locale = __src;
    }

    else
    {
      if ((BYTE8(v59) & 8) == 0)
      {
        v14 = 0;
        HIBYTE(v45) = 0;
LABEL_22:
        *(&__dst + v14) = 0;
        p_dst = &__dst;
        if (SHIBYTE(v45) < 0)
        {
          p_dst = __dst;
        }

        LODWORD(__p[0]) = 136315650;
        *(__p + 4) = v13;
        WORD2(__p[1]) = 2080;
        *(&__p[1] + 6) = " ";
        HIWORD(__p[2]) = 2080;
        *v47 = p_dst;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s| %s", __p, 0x20u);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_26;
      }

      locale = v55[1].__locale_;
      v15 = v55[3].__locale_;
    }

    v14 = v15 - locale;
    if ((v15 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v45) = v15 - locale;
    if (v14)
    {
      memmove(&__dst, locale, v14);
    }

    goto LABEL_22;
  }

LABEL_26:
  v43 = 0;
  if ((*(a1 + 143) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 128))
    {
LABEL_35:
      v19 = 0;
      LOBYTE(v20) = 0;
      goto LABEL_38;
    }
  }

  else if (!*(a1 + 143))
  {
    goto LABEL_35;
  }

  if (!sub_1008100FC(a1))
  {
    goto LABEL_35;
  }

  sub_1008100FC(a1);
  memset(__p, 0, sizeof(__p));
  ctu::cf::assign();
  __dst = *__p;
  v45 = __p[2];
  v18 = sub_100598EC4(a1, (a1 + 120), &__dst);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  if (v18 == -1)
  {
    v19 = 0;
  }

  else
  {
    v21 = *(a1 + 104);
    v22 = sub_1008100FC(a1);
    sub_1005D67F8(v21, 0, (a1 + 120), v22, __p);
    v19 = __p[0];
    v23 = v43;
    v43 = __p[1];
    *&__dst = v23;
    __p[1] = 0;
    sub_10001021C(&__dst);
    sub_10001021C(&__p[1]);
  }

  v20 = HIDWORD(v18) & 1;
LABEL_38:
  v24 = *(a1 + 48);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = PersonalityInfo::logPrefix(**(a1 + 80));
    v26 = asStringBool(v20);
    LODWORD(__p[0]) = 136315906;
    *(__p + 4) = v25;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = " ";
    HIWORD(__p[2]) = 1024;
    *v47 = v19;
    *&v47[4] = 2080;
    *&v47[6] = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%s| Account CFG of ver %ul, trusted:%s", __p, 0x26u);
  }

  __p[0] = off_101E62080;
  __p[1] = a1;
  *v47 = __p;
  logger::CFTypeRefLogger();
  sub_100007E44(__p);
  v27 = sub_10080FFF8(a1);
  v28 = *(a1 + 48);
  if (v27 && os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_DEFAULT))
  {
    v29 = PersonalityInfo::logPrefix(**(a1 + 80));
    v30 = asStringBool(*(a1 + 536) != 0);
    LODWORD(__p[0]) = 136315650;
    *(__p + 4) = v29;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = " ";
    HIWORD(__p[2]) = 2080;
    *v47 = v30;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s| fThumperKeepAliveAssertion: %s", __p, 0x20u);
    v28 = *(a1 + 48);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v31 = PersonalityInfo::logPrefix(**(a1 + 80));
    Registry::getXpcJetsamAssertionManager(&v41, *(a1 + 56));
    ctu::XpcJetsamAssertion::dumpState(&__dst, v41);
    if (SHIBYTE(v45) >= 0)
    {
      v32 = &__dst;
    }

    else
    {
      v32 = __dst;
    }

    LODWORD(__p[0]) = 136315650;
    *(__p + 4) = v31;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = " ";
    HIWORD(__p[2]) = 2080;
    *v47 = v32;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s| %s", __p, 0x20u);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__dst);
    }

    if (v42)
    {
      sub_100004A34(v42);
    }

    v28 = *(a1 + 48);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v33 = PersonalityInfo::logPrefix(**(a1 + 80));
    v34 = asStringBool(*(a1 + 524));
    v35 = asStringBool(*(a1 + 525));
    v36 = asStringBool(*(a1 + 526));
    v37 = asStringBool(*(a1 + 552));
    v38 = asStringBool(*(a1 + 640));
    LODWORD(__p[0]) = 136316674;
    *(__p + 4) = v33;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = " ";
    HIWORD(__p[2]) = 2080;
    *v47 = v34;
    *&v47[8] = 2080;
    *&v47[10] = v35;
    v48 = 2080;
    v49 = v36;
    v50 = 2080;
    v51 = v37;
    v52 = 2080;
    v53 = v38;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s| fAwaitingGetProvisioning: %s, fAwaitingSetProvisioning: %s, fGeneratingKeyAndCsr: %s, ProvisioningFailedAlertShown: %s, fLocationRequired: %s", __p, 0x48u);
  }

  sub_10001021C(&v43);
  *&buf[16] = v39;
  if (SHIBYTE(v58) < 0)
  {
    operator delete(*(&v57 + 1));
  }

  std::locale::~locale(v55);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1005A0534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_10001021C(&a12);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1005A0608(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 432));
  if (*(a1 + 520) == 1 && (v4 = *(a1 + 496)) != 0)
  {
    sub_1005A067C(a2, v4);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  std::mutex::unlock((a1 + 432));
  return v5;
}

uint64_t sub_1005A067C(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  if (a1 != a2)
  {
    sub_100008234((a1 + 48), *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  }

  std::string::operator=((a1 + 72), (a2 + 72));
  std::string::operator=((a1 + 96), (a2 + 96));
  std::string::operator=((a1 + 120), (a2 + 120));
  *(a1 + 144) = *(a2 + 144);
  std::string::operator=((a1 + 152), (a2 + 152));
  *(a1 + 176) = *(a2 + 176);
  std::string::operator=((a1 + 184), (a2 + 184));
  std::string::operator=((a1 + 208), (a2 + 208));
  std::string::operator=((a1 + 232), (a2 + 232));
  return a1;
}

CFDictionaryRef sub_1005A0740(uint64_t a1, const void *a2)
{
  std::mutex::lock((a1 + 432));
  v4 = *(a1 + 512);
  if (v4 && (Value = CFDictionaryGetValue(v4, a2)) != 0)
  {
    Copy = CFDictionaryCreateCopy(0, Value);
  }

  else
  {
    Copy = 0;
  }

  std::mutex::unlock((a1 + 432));
  return Copy;
}

void sub_1005A07D8(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  std::mutex::lock((a1 + 432));
  if ((a2 & 0x4020000) != 0 && *(a1 + 520) == 1 && *(a1 + 496))
  {
    v7 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    sub_100424E40(&v7, &Mutable);
    sub_1002A938C(&Mutable);
  }

  *a3 = 0;
  a3[1] = 0;
  std::mutex::unlock((a1 + 432));
}

void sub_1005A0974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10001021C(va);
  if (v8)
  {
    sub_100004A34(v8);
  }

  std::mutex::unlock((v7 + 432));
  _Unwind_Resume(a1);
}

const void **sub_1005A09B4(uint64_t a1)
{
  result = sub_1008100FC(a1);
  if (result)
  {

    return sub_100810310(a1, 2, 0, 1, 1);
  }

  return result;
}

const void **sub_1005A0A0C(const void **result)
{
  if ((*(result + 529) & 1) == 0)
  {
    v1 = result;
    result = sub_100591240(result);
    if (result)
    {

      return sub_1005903E0(v1, 0, 1);
    }
  }

  return result;
}

void sub_1005A0A64(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v2 = ServiceMap;
  v3 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v4 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  valuePtr = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &valuePtr);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  v14 = 0;
  valuePtr = dword_101FCB960;
  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v11)
  {
    v14 = v11;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v12 = v14;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = 0;
  sub_100029A48(&v14);
  sub_10071B8E0(v9, @"last.dev.icloud.ver", v12, kPhoneServicesWalletDomain, 0, 1, 0, 0);
  sub_100029A48(&v13);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_1005A0BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

unsigned int *sub_1005A0C0C(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_1005A6F08(v18, 524531);
  if (v18[0])
  {
    memset(&v17, 0, sizeof(v17));
    memset(&v16, 0, sizeof(v16));
    std::mutex::lock((a1 + 432));
    if (*(a1 + 520) == 1)
    {
      v2 = *(a1 + 496);
      if (v2)
      {
        std::string::operator=(&v17, (v2 + 184));
        std::string::operator=(&v16, (*(a1 + 496) + 232));
      }
    }

    std::mutex::unlock((a1 + 432));
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v4 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v4 = v16.__r_.__value_.__l.__size_;
      }

      if (v4)
      {
        memset(&v14, 0, sizeof(v14));
        v5 = &v14;
        sub_1000677C4(&v14, size + 1);
        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v5 = v14.__r_.__value_.__r.__words[0];
        }

        if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v17;
        }

        else
        {
          v6 = v17.__r_.__value_.__r.__words[0];
        }

        memmove(v5, v6, size);
        *(&v5->__r_.__value_.__l.__data_ + size) = 45;
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v16;
        }

        else
        {
          v7 = v16.__r_.__value_.__r.__words[0];
        }

        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v8 = v16.__r_.__value_.__l.__size_;
        }

        v9 = std::string::append(&v14, v7, v8);
        v10 = *&v9->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v14.__r_.__value_.__l.__data_);
        }

        v11 = v18[0];
        *(v18[0] + 7) |= 2u;
        v12 = *(v11 + 2);
        if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v12, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  return sub_100342734(v18);
}

void sub_1005A0DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  sub_100342734((v27 - 40));
  _Unwind_Resume(a1);
}

void sub_1005A0E70(uint64_t a1, uint64_t a2)
{
  *(a1 + 527) = 0;
  v3 = sub_10059A9F0(a1, a2);
  v4 = *(a1 + 48);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v5)
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 80));
      v8 = 136315394;
      v9 = v7;
      v10 = 2080;
      v11 = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived new individual encryption key", &v8, 0x16u);
    }

    operator new();
  }

  if (v5)
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 80));
    v8 = 136315394;
    v9 = v6;
    v10 = 2080;
    v11 = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived duplicated individual encryption key", &v8, 0x16u);
  }
}

void sub_1005A1010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete();
}

const void **sub_1005A1040@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = theDict;
    theDict = Mutable;
    __p[0] = v5;
    sub_1000296E0(__p);
  }

  theString2 = 0;
  if (*(a1 + 143) < 0)
  {
    sub_100005F2C(v40, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *v40 = *(a1 + 120);
    v41 = *(a1 + 136);
  }

  if (SHIBYTE(v41) < 0)
  {
    sub_100005F2C(__dst, v40[0], v40[1]);
  }

  else
  {
    *__dst = *v40;
    v46 = v41;
  }

  v44 = 0;
  if (SHIBYTE(v46) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v48 = v46;
  }

  v49 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v44;
    v44 = v49;
    v50 = v6;
    sub_100005978(&v50);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  theString2 = v44;
  v44 = 0;
  sub_100005978(&v44);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  v7 = kPSAccountId;
  CFDictionarySetValue(theDict, kPSAccountId, theString2);
  v8 = theDict;
  v10 = capabilities::ct::supportsThumperService(v9);
  v11 = &kCFBooleanFalse;
  if (v10)
  {
    v11 = &kCFBooleanTrue;
  }

  CFDictionaryAddValue(v8, kPSThumperCalling, *v11);
  v12 = *(a1 + 200);
  if (v12)
  {
    CFDictionaryAddValue(theDict, kPSAssociatedAccountID, v12);
  }

  __dst[0] = 0;
  sub_1005D7AF0(*(a1 + 104), __dst);
  if (__dst[0])
  {
    v13 = kPSDeviceId;
    Value = CFDictionaryGetValue(__dst[0], kPSDeviceId);
    if (Value)
    {
      CFDictionarySetValue(theDict, v13, Value);
    }

    v50 = 0;
    v15 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v15)
    {
      v16 = v50;
      v50 = v15;
      __p[0] = v16;
      sub_1000279DC(__p);
    }

    v17 = kPSAccountList;
    v18 = CFDictionaryGetValue(__dst[0], kPSAccountList);
    v19 = v18;
    if (v18)
    {
      v20 = CFGetTypeID(v18);
      if (v20 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(v19);
        if (Count)
        {
          v22 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v19, v22);
            v24 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v25 = CFGetTypeID(ValueAtIndex);
              if (v25 == CFDictionaryGetTypeID())
              {
                v26 = CFDictionaryGetValue(v24, v7);
                v27 = v26;
                if (v26)
                {
                  v28 = CFGetTypeID(v26);
                  if (v28 == CFStringGetTypeID() && CFStringCompare(v27, theString2, 0) == kCFCompareEqualTo)
                  {
                    break;
                  }
                }
              }
            }

            if (Count == ++v22)
            {
              goto LABEL_39;
            }
          }

          CFArrayAppendValue(v50, v24);
          v30 = kPSPrimaryDeviceId;
          v31 = CFDictionaryGetValue(v24, kPSPrimaryDeviceId);
          if (v31)
          {
            CFDictionarySetValue(theDict, v30, v31);
          }

          v32 = kPSAccountFreeSlots;
          v33 = CFDictionaryGetValue(v24, kPSAccountFreeSlots);
          if (v33)
          {
            CFDictionarySetValue(theDict, v32, v33);
          }

          v34 = kPSMdn;
          v35 = CFDictionaryGetValue(v24, kPSMdn);
          if (v35)
          {
            CFDictionarySetValue(theDict, v34, v35);
          }

          v36 = kPSMcc;
          v37 = CFDictionaryGetValue(v24, kPSMcc);
          if (v37)
          {
            CFDictionarySetValue(theDict, v36, v37);
          }

          v38 = kPSIsoMcc;
          v39 = CFDictionaryGetValue(v24, kPSIsoMcc);
          if (v39)
          {
            CFDictionarySetValue(theDict, v38, v39);
          }
        }
      }
    }

LABEL_39:
    CFDictionarySetValue(theDict, v17, v50);
    sub_1000279DC(&v50);
  }

  sub_100010180(a2, &theDict);
  sub_10001021C(__dst);
  sub_100005978(&theString2);
  return sub_1000296E0(&theDict);
}

void sub_1005A1494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, const void *a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_1000279DC((v32 - 88));
  sub_10001021C(&__p);
  sub_100005978(&a15);
  sub_1000296E0(&a16);
  _Unwind_Resume(a1);
}

const void **sub_1005A1560(uint64_t a1)
{
  sub_10007B7D8(a1 + 648);
  v2 = v4;
  result = sub_10000A1EC(&v4);
  if (v2)
  {
    return sub_10079CC68(a1 + 648);
  }

  return result;
}

uint64_t sub_1005A1630(uint64_t a1)
{
  *(a1 + 24) = 0;
  ThumperCapability::ThumperCapability((a1 + 32));
  return a1;
}

uint64_t sub_1005A1674(uint64_t a1)
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

const void **sub_1005A16F4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1005A1728(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    *a1 = off_101EA6578;
    if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    TMKXPCServer.shutdown()();
  }

  return a1;
}

const void **sub_1005A17EC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1005A1820(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 48) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  IMSInfo::deserialize(a1, a2);
  return a1;
}

void sub_1005A18B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 255) < 0)
  {
    operator delete(*(v3 + 232));
  }

  if (*(v3 + 231) < 0)
  {
    operator delete(*(v3 + 208));
  }

  if (*(v3 + 207) < 0)
  {
    operator delete(*v5);
  }

  if (*(v3 + 175) < 0)
  {
    operator delete(*v4);
  }

  if (*(v3 + 143) < 0)
  {
    operator delete(*(v3 + 120));
  }

  if (*(v3 + 119) < 0)
  {
    operator delete(*(v3 + 96));
  }

  if (*(v3 + 95) < 0)
  {
    operator delete(*(v3 + 72));
  }

  sub_1000087B4(va);
  if (*(v3 + 47) < 0)
  {
    operator delete(*(v3 + 24));
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1005A1958(_BYTE *a1, const __CFDictionary *a2)
{
  *a1 = 0;
  a1[256] = 0;
  a1[264] = 0;
  a1[288] = 0;
  a1[296] = 0;
  a1[320] = 0;
  a1[328] = 0;
  a1[352] = 0;
  a1[360] = 0;
  a1[384] = 0;
  sub_100613124(a1, a2);
  return a1;
}

void sub_1005A19A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 384) == 1 && *(v1 + 383) < 0)
  {
    operator delete(*(v1 + 360));
  }

  if (*(v1 + 352) == 1 && *(v1 + 351) < 0)
  {
    operator delete(*(v1 + 328));
  }

  if (*(v1 + 320) == 1 && *(v1 + 319) < 0)
  {
    operator delete(*(v1 + 296));
  }

  if (*(v1 + 288) == 1 && *(v1 + 287) < 0)
  {
    operator delete(*(v1 + 264));
  }

  if (*(v1 + 256) == 1)
  {
    sub_100221F4C(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1005A1A38(const void **result, uint64_t a2)
{
  v3 = result;
  if (*(result + 24) == *(a2 + 24))
  {
    if (*(result + 24))
    {
      if (result != a2)
      {
        v4 = *result;
        *result = 0;
        v6 = v4;
        *result = *a2;
        *a2 = 0;
        sub_1005A16F4(&v6);
        v5 = v3[1];
        v3[1] = 0;
        v6 = v5;
        v3[1] = *(a2 + 8);
        *(a2 + 8) = 0;
        result = sub_1005A16F4(&v6);
      }

      *(v3 + 16) = *(a2 + 16);
    }
  }

  else if (*(result + 24))
  {

    return sub_100597730(result);
  }

  else
  {
    *result = 0;
    *result = *a2;
    *a2 = 0;
    result[1] = 0;
    result[1] = *(a2 + 8);
    *(a2 + 8) = 0;
    *(result + 16) = *(a2 + 16);
    *(result + 24) = 1;
  }

  return result;
}

uint64_t sub_1005A1B24(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1005A1BB8(uint64_t a1, uint64_t a2)
{
  *a1 = off_101EA6578;
  sub_10006F264((a1 + 8), (a2 + 8));
  sub_10006F264((a1 + 40), (a2 + 40));
  sub_10006F264((a1 + 72), (a2 + 72));
  sub_10006F264((a1 + 104), (a2 + 104));
  return a1;
}

void sub_1005A1C38(_Unwind_Exception *a1)
{
  if (*(v1 + 96) == 1 && *(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 64) == 1 && *(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 32) == 1 && *(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void **sub_1005A1CB8(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10005B39C(v6, v10);
    }

    sub_1000CE3D4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15++ = v16;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_1005A1E74(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "ThumperKeepAlive", "", v5, 2u);
    }
  }
}

uint64_t sub_1005A1EEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005A1FB8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[4], v1, sub_1005A208C);
  __cxa_rethrow();
}

void sub_1005A1FF8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005A204C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005A208C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1005A20B8(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005A21FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100101814(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void **sub_1005A2258(void **a1)
{
  sub_1005A4010(a1 + 3);
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_1005A2298(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1005A22DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_1005A23D4(a1, v5);
}

void sub_1005A23A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A23D4(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_1005A24D0(a1, x1_0);
}

void sub_1005A24B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A2568(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1005A25AC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1005A25F0(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_1005A28D0(a1, a2, 1, 2);
}

void sub_1005A2714(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1005A2968(&v2, a2);
}

uint64_t sub_1005A2774(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t *sub_1005A27B8(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_1005A2568(a1);
  result = sub_1005A3780(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1005A25AC(v10 + 2);
        sub_1005A2EC4(v15, a2);
        v10 = v22;
      }

      if (*(sub_1005A25AC(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_1005A2568(a1);
        v18 = sub_1005A3780(v17);
        v19 = sub_1005A25AC(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_1005A2568(a1);
      result = sub_1005A3780(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t *sub_1005A28D0(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_1005A2568(a1);
  v10 = sub_1005A3780(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_1005A2568(a1);
    v11 = *(sub_1005A3780(v12) + 8);
  }

  v14 = v11;
  return sub_1005A27B8(a1, a2, a3, &v14, a4);
}

void sub_1005A2968(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1005A29D4(&v2, a2);
}

void sub_1005A2A44(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1005A2A84(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1005A2BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004F4674(a1, a2);
  sub_1004F46E0((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void sub_1005A2D28(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1005A2D94(&v2, a2);
}

void sub_1005A2E04(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1005A2E44(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_1005A2EC4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1005A2F30(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1005A2F30(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1005A2F74(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E61A00;
  operator new();
}

void sub_1005A3084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_1005A30EC(uint64_t a1)
{
  sub_1005A3498(a1);

  operator delete();
}

uint64_t sub_1005A3124(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1005A3510(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_1005A31D0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A3200(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_1005A322C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_1005A3258@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_1005A32B0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1005A331C(&v2, a2);
}

void sub_1005A338C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1005A33B4(v1);
  __cxa_rethrow();
}

uint64_t sub_1005A33B4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1005A4010((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1005A3428(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_1005A4010((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1005A3498(uint64_t a1)
{
  *a1 = off_101E61A00;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1005A3510(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_1005A2F30(result + 4); ; i += 6)
    {
      result = sub_1005A2F30(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_1005A35F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1005A3618(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1005A3684(&v2, a2);
}

void sub_1005A36F4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1005A3738(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1005A3780(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void (***sub_1005A37C4(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_1005A3F58(v4, result);
    sub_1005A3F58(v3, a2);
    sub_1005A3F58(a2, v4);
    return sub_1005A4010(v4);
  }

  return result;
}

uint64_t sub_1005A3840(uint64_t result, _WORD *a2, int a3)
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
      sub_100222BDC(result);
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
  if (result != ("N3ctu12DispatchSlotIZN23ThumperSecondaryControl10initializeEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN23ThumperSecondaryControl10initializeEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1005A393C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v12 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v10 = *(a3 + 16);
  }

  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v14 = v7;
    v15 = v8;
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v8);
    std::__shared_weak_count::__release_weak(v8);
    std::__shared_weak_count::__release_weak(v8);
    std::__shared_weak_count::__release_weak(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  else
  {
    v14 = *(v4 + 16);
    v15 = 0;
  }

  v13[0] = off_101E61B48;
  v13[1] = v6;
  sub_1005A3AC4(v5, v13, __dst, __p);
}

void sub_1005A3A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void (***sub_1005A3C70(void *a1))(void, void, uint64_t)
{
  sub_1005A3D38(a1[4]);
  result = a1[4];
  if (result)
  {
    sub_1005A4010(result);
    operator delete();
  }

  v3 = a1[5];
  if (v3)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v4 = a1[6];
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1005A3D38(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_1005A3DD0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN23ThumperSecondaryControl10initializeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN23ThumperSecondaryControl10initializeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1005A3EB4(uint64_t *a1, void *a2, const void **a3)
{
  v4 = a1[2];
  if (v4)
  {
    v7 = *a1;
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[1])
      {
        sub_100597774(v7, a2, a3);
      }

      sub_100004A34(v9);
    }
  }
}

uint64_t sub_1005A3F58(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_1005A3FEC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_1005A4010(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1005A4060(uint64_t result, _WORD *a2, int a3)
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
      sub_100222BDC(result);
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
  if (result != ("N3ctu12DispatchSlotIZN23ThumperSecondaryControl10initializeEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN23ThumperSecondaryControl10initializeEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1005A415C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  v8 = *a4;
  v7 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v11;
    v18 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = 0;
  }

  v16[0] = off_101E61BA8;
  v16[1] = v10;
  v15[0] = v8;
  v15[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1005A42F8(v9, v16, __p, v5, v15);
}

void sub_1005A42B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100226D24(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005A44C0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v5 = *a1[6];
  v6 = v4[1];
  *&v12 = *v4;
  *(&v12 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002269BC(v2, v3, v5, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  v7 = a1[4];
  if (v7)
  {
    sub_100226D24(v7);
    operator delete();
  }

  v8 = a1[5];
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  result = a1[6];
  if (result)
  {
    operator delete();
  }

  v10 = a1[7];
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      sub_100004A34(v11);
    }

    operator delete();
  }

  return result;
}

void sub_1005A45BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A45D4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN23ThumperSecondaryControl10initializeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN23ThumperSecondaryControl10initializeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1005A46B8(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1005986AC(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_1005A4798(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A47C8(uint64_t result, _WORD *a2, int a3)
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
      sub_100222BDC(result);
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
  if (result != ("N3ctu12DispatchSlotIZN23ThumperSecondaryControl10initializeEvE3$_2EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN23ThumperSecondaryControl10initializeEvE3$_2EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1005A48C4(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  v8 = *a4;
  v7 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v11;
    v18 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = 0;
  }

  v16[0] = off_101E61C08;
  v16[1] = v10;
  v15[0] = v8;
  v15[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1005A4A60(v9, v16, __p, v5, v15);
}

void sub_1005A4A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100228BD0(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005A4C28(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v5 = *a1[6];
  v6 = v4[1];
  *&v12 = *v4;
  *(&v12 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100228868(v2, v3, v5, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  v7 = a1[4];
  if (v7)
  {
    sub_100228BD0(v7);
    operator delete();
  }

  v8 = a1[5];
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  result = a1[6];
  if (result)
  {
    operator delete();
  }

  v10 = a1[7];
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      sub_100004A34(v11);
    }

    operator delete();
  }

  return result;
}

void sub_1005A4D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A4D3C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN23ThumperSecondaryControl10initializeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN23ThumperSecondaryControl10initializeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1005A4E20(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100598B08(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_1005A4F00(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void *sub_1005A4F30(void *a1)
{
  *a1 = off_101E61C38;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1005A4F7C(void *a1)
{
  *a1 = off_101E61C38;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1005A505C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E61C38;
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

void sub_1005A509C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1005A50AC(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1005A50EC(uint64_t *a1, xpc_object_t *a2)
{
  sub_10013E998(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        v7 = sub_100007A6C(v4 + 208, (**(v4 + 80) + 24));
        v9 = **(v4 + 80);
        if (v4 + 216 == v7)
        {
          v11[0] = 0;
          v11[1] = 0;
          v10 = v11;
          sub_100592520(v4, (v9 + 24), v8, &v10);
          sub_10006DCAC(&v10, v11[0]);
        }

        else
        {
          sub_100592520(v4, (v9 + 24), v8, v7 + 64);
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1005A51B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_10006DCAC(&a10, a11);
  sub_100004A34(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A51DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1005A5228(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E61CB8;
  v5[1] = v3;
  v5[3] = v5;
  sub_1005A5494(v5, a1);
  sub_1005A1674(v5);
  return a1;
}

uint64_t sub_1005A532C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E61CB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1005A5360(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005A53AC(uint64_t *a1, ThumperCapability *a2)
{
  v5 = 0;
  write_rest_value(&v5, a2);
  sub_10000501C(&__p, "/cc/props/thumper_capability");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1005A5450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1005A5494(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1005A56F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1005A5700(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1005A5780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1005A5794(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005A5794(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1000FF134(v2);
    operator delete();
  }

  return a1;
}

void sub_1005A57E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005A5818(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1000FF134(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1005A585C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1005A589C(uint64_t *__return_ptr a1@<X8>, std::mutex *this@<X0>)
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

void sub_1005A5960(const void ****a1)
{
  v1 = a1;
  sub_1005903E0(**a1, 0, *(*a1 + 8));
  operator delete();
}

uint64_t *sub_1005A59E8(uint64_t **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        sub_1005A0C0C(v3);
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_1005A5A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1005A5A80(uint64_t *__return_ptr a1@<X8>, std::mutex *this@<X0>)
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

void sub_1005A5B64(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E61DC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1005A5BE0(void *a1)
{
  *a1 = off_101E61E10;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  return a1;
}

void sub_1005A5C38(void *a1)
{
  *a1 = off_101E61E10;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete();
}

void sub_1005A5D34(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = off_101E61E10;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v6 = a1[4];
  a2[3] = a1[3];
  a2[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void sub_1005A5DA4(char *a1)
{
  sub_1005A5EDC((a1 + 8));

  operator delete(a1);
}

void sub_1005A5DE0(void *a1, _BYTE *a2)
{
  if (*a2 == 2)
  {
    sub_1003A5CF0();
  }

  v3 = a1[4];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t sub_1005A5E90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005A5EDC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    dispatch_release(v3);
  }
}

uint64_t *sub_1005A5F2C(void *a1)
{
  v8 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 672);
        *(v3 + 664) = 0u;
        if (v6)
        {
          sub_100004A34(v6);
        }
      }

      sub_100004A34(v5);
    }
  }

  return sub_10007060C(&v8);
}

uint64_t *sub_1005A5FA8(void *a1)
{
  v2 = a1;
  (*(**a1 + 16))(*a1);
  return sub_10024BAAC(&v2);
}

void sub_1005A6000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10024BAAC(va);
  _Unwind_Resume(a1);
}

void sub_1005A6084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1005A6128(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A60A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005A60E8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1005A6128(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 384) == 1 && *(a2 + 383) < 0)
    {
      operator delete(*(a2 + 360));
    }

    if (*(a2 + 352) == 1 && *(a2 + 351) < 0)
    {
      operator delete(*(a2 + 328));
    }

    if (*(a2 + 320) == 1 && *(a2 + 319) < 0)
    {
      operator delete(*(a2 + 296));
    }

    if (*(a2 + 288) == 1 && *(a2 + 287) < 0)
    {
      operator delete(*(a2 + 264));
    }

    if (*(a2 + 256) == 1)
    {
      sub_100221F4C(a2);
    }

    operator delete();
  }
}

void sub_1005A61F8(uint64_t *__return_ptr a1@<X8>, std::mutex *this@<X0>)
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

void sub_1005A62BC(uint64_t *__return_ptr a1@<X8>, std::mutex *this@<X0>)
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

void sub_1005A6380(uint64_t *__return_ptr a1@<X8>, std::mutex *this@<X0>)
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

void sub_1005A64B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1005A6558(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A64D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005A6518(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1005A6558(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

uint64_t sub_1005A6624(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E61F80;
  a2[1] = v2;
  return result;
}

void sub_1005A6650(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 80));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1005A6730(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005A677C(uint64_t a1, const void *a2, uint64_t ***a3)
{
  memset(v12, 0, sizeof(v12));
  *v11 = 0u;
  if (ctu::cf::assign())
  {
    if (a2)
    {
      v5 = CFGetTypeID(a2);
      if (v5 == CFArrayGetTypeID())
      {
        __p[0] = 0;
        __p[1] = 0;
        v9 = 0;
        context = __p;
        v14.length = CFArrayGetCount(a2);
        v14.location = 0;
        CFArrayApplyFunction(a2, v14, sub_10035565C, &context);
        v6 = *(v12 + 8);
        *(v12 + 8) = *__p;
        *__p = v6;
        v7 = *(&v12[1] + 1);
        *(&v12[1] + 1) = v9;
        v9 = v7;
        context = __p;
        sub_1000087B4(&context);
      }
    }

    sub_1005A695C(__p, v11);
    sub_1005A68F0(a3, __p);
    context = &v10;
    sub_1000087B4(&context);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = v12 + 8;
  sub_1000087B4(__p);
  if (SBYTE7(v12[0]) < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_1005A68B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  *(v14 - 40) = v13;
  sub_1000087B4((v14 - 40));
  sub_1003ECFDC(va);
  _Unwind_Resume(a1);
}

uint64_t ***sub_1005A68F0(uint64_t ***a1, char *a2)
{
  v3 = sub_1005A69F0(*a1, a1[1], a2, a2);
  a1[1] = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

_BYTE *sub_1005A695C(_BYTE *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  *(__dst + 5) = 0;
  sub_10004EFD0(__dst + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return __dst;
}

void sub_1005A69D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005A69F0(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v9 = 0;
  v10 = 0;
  v4 = *sub_100074A00(a1, a2, &v10, &v9, a3);
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    sub_1005A6A90();
  }

  return v4;
}

char *sub_1005A6B08(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  *(__dst + 5) = 0;
  *(__dst + 24) = *(a2 + 24);
  *(__dst + 5) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  return __dst;
}

uint64_t sub_1005A6BE8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E62000;
  a2[1] = v2;
  return result;
}

void sub_1005A6C14(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 80));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1005A6CF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005A6DB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E62080;
  a2[1] = v2;
  return result;
}

void sub_1005A6DDC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 80));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1005A6EBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

awd::metrics::CommCenterThumperHomeCarrier **sub_1005A6F08(awd::metrics::CommCenterThumperHomeCarrier **a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 2) = a2;
  if (sub_10079D818(a2))
  {
    operator new();
  }

  return a1;
}

double sub_1005A6FF0(uint64_t a1)
{
  *a1 = off_101E62100;
  *(a1 + 60) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_1005A7024(uint64_t a1)
{
  *a1 = off_101E62100;
  v2 = (a1 + 24);
  v4 = (a1 + 32);
  sub_100140868(&v4);
  sub_100140928(v2, 0);
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    sub_100140988(a1 + 16, v3);
  }

  sub_100140928((a1 + 8), 0);
  PB::Base::~Base(a1);
}

void sub_1005A70B4(uint64_t a1)
{
  sub_1005A7024(a1);

  operator delete();
}

uint64_t sub_1005A70EC(uint64_t a1, uint64_t a2)
{
  *a1 = off_101E62100;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 40) = 0u;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    operator new();
  }

  if (*(a2 + 60))
  {
    v2 = *(a2 + 56);
    *(a1 + 60) |= 1u;
    *(a1 + 56) = v2;
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  v3 = *(a2 + 32);
  if (v3 != *(a2 + 40))
  {
    sub_1005A729C((a1 + 32), *v3);
  }

  return a1;
}

uint64_t sub_1005A73F4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "profileId", v6);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, this, "selectableProfiles");
  }

  if (*(a1 + 60))
  {
    PB::TextFormatter::format(this, "status", *(a1 + 56));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1005A74F8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_57;
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
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 60) |= 1u;
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
                  goto LABEL_52;
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
LABEL_48:
                  LODWORD(v28) = 0;
                  goto LABEL_52;
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
                  goto LABEL_48;
                }
              }
            }

LABEL_52:
            *(a1 + 56) = v28;
            goto LABEL_53;
          case 4:
            operator new();
          case 5:
            sub_1005A78D4((a1 + 32));
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v39 = 0;
        return v39 & 1;
      }

LABEL_53:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_57:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_1005A7A20(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    result = PB::Writer::write(this, v5, 2u);
  }

  if (*(v3 + 60))
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 56), 3u);
  }

  if (*(v3 + 16))
  {
    result = PB::Writer::write();
  }

  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v7 != v6)
  {
    v8 = *v7++;
    result = PB::Writer::writeSubmessage(this, v8, 5u);
  }

  return result;
}

void *sub_1005A7AC0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, uint64_t a6)
{
  v6 = a6;
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

  v12 = "DATA.Connection.InternetProbe.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.InternetProbe.2";
  }

  v14 = "InternetProbe.X";
  if (v13 == 2)
  {
    v14 = "InternetProbe.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.InternetProbe.1";
  }

  else
  {
    v15 = v12;
  }

  v16 = "InternetProbe.1";
  if (v13 != 1)
  {
    v16 = v14;
  }

  sub_100AA83C8(a1, off_101E62BE8, &v19, a3, a4, &object, v6, v15, v16);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E62188;
  a1[8] = off_101E626E8;
  a1[9] = off_101E62988;
  a1[10] = off_101E62B70;
  return a1;
}

void sub_1005A7C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1005A7C7C(uint64_t *a1)
{
  sub_100AA8914(a1, off_101E62BE8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A7CAC(uint64_t a1)
{
  sub_100AA8914((a1 - 64), off_101E62BE8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A7CE0(uint64_t a1)
{
  sub_100AA8914((a1 - 72), off_101E62BE8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A7D14(uint64_t a1)
{
  sub_100AA8914((a1 - 80), off_101E62BE8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A7D48(uint64_t *a1)
{
  sub_100AA8914(a1, off_101E62BE8);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void *sub_1005A7DE8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
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

  v12 = "DATA.Connection.BootstrapRoamingInternetBypass.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.BootstrapRoamingInternetBypass.2";
  }

  v14 = "BootstrapRoamingInternetBypass.X";
  if (v13 == 2)
  {
    v14 = "BootstrapRoamingInternetBypass.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.BootstrapRoamingInternetBypass.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "BootstrapRoamingInternetBypass.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E64D40, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E642E0;
  a1[8] = off_101E64840;
  a1[9] = off_101E64AE0;
  a1[10] = off_101E64CC8;
  return a1;
}

void sub_1005A7F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1005A7FA0(uint64_t a1)
{
  sub_10096807C(a1, &off_101E64D40);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A7FD0(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E64D40);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A8004(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E64D40);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A8038(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E64D40);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005A806C(uint64_t a1)
{
  sub_10096807C(a1, &off_101E64D40);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

const void **sub_1005A8114@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  *&v4 = MGCopyAnswer();
  sub_100222990(&v3, &v4);
  v4 = 0uLL;
  v5 = 0;
  ctu::cf::assign();
  *a1 = v4;
  *(a1 + 16) = v5;
  return sub_100005978(&v3);
}

void sub_1005A818C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

const void **sub_1005A81B0@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  *&v4 = MGCopyAnswer();
  sub_100222990(&v3, &v4);
  v4 = 0uLL;
  v5 = 0;
  ctu::cf::assign();
  *a1 = v4;
  *(a1 + 16) = v5;
  return sub_100005978(&v3);
}

void sub_1005A8228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

const void **sub_1005A824C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = 0;
  v6 = MGCopyAnswer();
  sub_100222990(&v5, &v6);
  if (v5)
  {
    v6 = 0;
    v7 = 0uLL;
    ctu::cf::assign();
    v2 = v7;
    v3 = *(&v7 + 7);
    *a1 = v6;
    *(a1 + 8) = v2;
    *(a1 + 15) = v3;
    *(a1 + 23) = HIBYTE(v7);
  }

  return sub_100005978(&v5);
}

void sub_1005A82D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A82FC()
{
  v2 = 0;
  v3 = 0;
  v1 = 16;
  if (!sysctlbyname("kern.boottime", &v2, &v1, 0, 0))
  {
    return v2;
  }

  result = 0;
  LODWORD(v3) = 0;
  return result;
}

const void **sub_1005A8358@<X0>(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  theData = 0;
  v5 = MGCopyAnswer();
  sub_10002D544(&theData, &v5);
  if (theData && CFDataGetLength(theData))
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    sub_10018A52C(a1, BytePtr, &BytePtr[Length], Length);
  }

  return sub_10002D760(&theData);
}

void sub_1005A83EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002D760(va);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

const void **sub_1005A8414@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  memset(&v12, 0, sizeof(v12));
  result = stat("/System/Library/CoreServices/SystemVersion.plist", &v12);
  if (!result)
  {
    v3 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/CoreServices/SystemVersion.plist", kCFURLPOSIXPathStyle, 0);
    v11 = v3;
    if (v3)
    {
      v4 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v3);
      stream = v4;
      if (v4)
      {
        CFReadStreamOpen(v4);
        theDict = 0;
        format = 0;
        Value = CFPropertyListCreateWithStream(kCFAllocatorDefault, stream, 0, 0, &format, 0);
        sub_100138C38(&theDict, &Value);
        if (theDict)
        {
          v7 = 0;
          Value = CFDictionaryGetValue(theDict, @"ProductBuildVersion");
          sub_100060DE8(&v7, &Value);
          if (v7)
          {
            Value = 0;
            v14 = 0uLL;
            ctu::cf::assign();
            v5 = v14;
            v6 = *(&v14 + 7);
            *a1 = Value;
            *(a1 + 8) = v5;
            *(a1 + 15) = v6;
            *(a1 + 23) = HIBYTE(v14);
          }

          sub_100005978(&v7);
        }

        sub_10001021C(&theDict);
      }

      sub_1005A8614(&stream);
    }

    return sub_1002030AC(&v11);
  }

  return result;
}

void sub_1005A8568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  if (*(v3 - 33) < 0)
  {
    operator delete(*(v3 - 56));
  }

  sub_100005978(va);
  sub_10001021C(va1);
  sub_1005A8614(va2);
  sub_1002030AC(va3);
  _Unwind_Resume(a1);
}

BOOL sub_1005A85C0()
{
  v3 = 0;
  v2 = 4;
  if (sysctlbyname("kern.darkboot", &v3, &v2, 0, 0))
  {
    v0 = 1;
  }

  else
  {
    v0 = v3 == 0;
  }

  return !v0;
}

const void **sub_1005A8614(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const char *sub_1005A8648(int a1)
{
  if (a1)
  {
    return "kActive";
  }

  else
  {
    return "kIdle";
  }
}

char *sub_1005A8668@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  *a2 = (*result & 0xFFFFFFFD) == 0;
  if (result[31] < 0)
  {
    result = sub_100005F2C((a2 + 8), *(result + 1), *(result + 2));
  }

  else
  {
    *(a2 + 8) = *(result + 8);
    *(a2 + 24) = *(result + 3);
  }

  if (v2[55] < 0)
  {
    result = sub_100005F2C((a2 + 32), *(v2 + 4), *(v2 + 5));
  }

  else
  {
    *(a2 + 32) = *(v2 + 2);
    *(a2 + 48) = *(v2 + 6);
  }

  *(a2 + 56) = *(v2 + 7);
  return result;
}

void sub_1005A8700(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A871C(Registry **a1@<X0>, os_log_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  if (v9 < 0)
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
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
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
        goto LABEL_7;
      }

      goto LABEL_13;
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
LABEL_7:
    v17 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_101774ED4(v17);
    }

    *a4 = 0;
    *(a4 + 64) = 0;
    if (v16)
    {
      return;
    }

LABEL_31:
    sub_100004A34(v14);
    return;
  }

LABEL_13:
  v18 = [NSData nonOwningDataWithBytes:*a3 length:a3[1] - *a3];
  v19 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Decoding composing indication XML document using BlastDoor", buf, 2u);
  }

  v36 = 0;
  v37 = 0;
  v35 = 0;
  (*(*v15 + 16))(&v35, v15);
  v34 = 0;
  *__p = 0u;
  v33 = 0u;
  *buf = 0u;
  v31 = 0u;
  v24 = 0;
  *&v25 = &v37;
  (*(*v35 + 24))(buf);
  sub_1003A5C24(&v24);
  v20 = v37;
  if (v37)
  {
    v21 = *a2;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_101774E18(v20, v21);
    }
  }

  else
  {
    if (v34)
    {
      sub_1005A8668(buf, &v24);
      *a4 = v24;
      *(a4 + 8) = v25;
      *(a4 + 24) = v26;
      *(a4 + 32) = v27;
      v22 = v29;
      *(a4 + 48) = v28;
      *(a4 + 56) = v22;
      *(a4 + 64) = 1;
      goto LABEL_23;
    }

    v23 = *a2;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_101774E90(v23);
    }
  }

  *a4 = 0;
  *(a4 + 64) = 0;
LABEL_23:
  if (v34 == 1)
  {
    if (SBYTE7(v33) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(*&buf[8]);
    }
  }

  if (v36)
  {
    sub_100004A34(v36);
  }

  sub_1003A5A8C(&v37);

  if ((v16 & 1) == 0)
  {
    goto LABEL_31;
  }
}

void sub_1005A89FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1005A8FC4(va);
  v21 = *(v19 - 80);
  if (v21)
  {
    sub_100004A34(v21);
  }

  sub_1003A5A8C((v19 - 72));

  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(a1);
}

void sub_1005A8A4C()
{
  if (v0)
  {
    JUMPOUT(0x1005A8A44);
  }

  JUMPOUT(0x1005A8A3CLL);
}

uint64_t sub_1005A8A5C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
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
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  sub_10000C320(&v22);
  sub_10000501C(__p, "<?xml version=1.0 encoding=utf-8 ?>");
  sub_100917DBC(&v22, __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "<isComposing xmlns=urn:ietf:params:xml:ns:im-iscomposing>");
  sub_100917DBC(&v22, __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (*a1 != 1)
  {
    sub_10000501C(__p, " <state>idle</state>");
    sub_100917DBC(&v22, __p);
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v9 = __p[0];
    goto LABEL_17;
  }

  sub_10000501C(__p, " <state>active</state>");
  sub_100917DBC(&v22, __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    std::to_string(&v18, v4);
    v5 = std::string::insert(&v18, 0, " <refresh>", 0xAuLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v19, "</refresh>", 0xAuLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v21 = v7->__r_.__value_.__r.__words[2];
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_100917DBC(&v22, __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = v18.__r_.__value_.__r.__words[0];
LABEL_17:
      operator delete(v9);
    }
  }

LABEL_18:
  v10 = *(a1 + 31);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 16);
  }

  if (v10)
  {
    std::operator+<char>();
    v11 = std::string::append(&v19, "</lastactive>", 0xDuLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v21 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    sub_100917DBC(&v22, __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  v13 = *(a1 + 55);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a1 + 40);
  }

  if (v13)
  {
    std::operator+<char>();
    v14 = std::string::append(&v19, "</contenttype>", 0xEuLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v21 = v14->__r_.__value_.__r.__words[2];
    *__p = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_100917DBC(&v22, __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  sub_10000C030(&v23, "</isComposing>", 14);
  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  sub_100061574(&v22, __p);
  sub_100061574(&v22, &v19);
  sub_100C180E0(a2, &v19);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  *&v23 = v16;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(*(&v25 + 1));
  }

  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1005A8EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1005A8FC4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

void sub_1005A913C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15)
  {
    sub_100004A34(v15);
    if (!v14)
    {
      goto LABEL_3;
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  dispatch_release(v14);
LABEL_3:
  operator delete();
}

uint64_t sub_1005A91A0(uint64_t a1, NSObject **a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a2;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a4[1];
  v15 = *a4;
  v16 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v14 = *(a5 + 16);
  }

  sub_10031435C(a1, &object, a3, &v15, "cp.mm.ret.tr", __p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &off_101E65B30;
  v11 = a4[1];
  *(a1 + 160) = *a4;
  *(a1 + 168) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = 1;
  return a1;
}

void sub_1005A92B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, dispatch_object_t object)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

CellularPlanProvisioningMonitorModeInterface *sub_1005A92F0(CellularPlanProvisioningMonitorModeInterface *this)
{
  *this = &off_101E65B30;
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_10031452C(this);
}

void sub_1005A9350(CellularPlanProvisioningMonitorModeInterface *a1)
{
  sub_1005A92F0(a1);

  operator delete();
}

void sub_1005A9388(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    *(a1 + 176) = 0;

    sub_100314A14(a1, 0x100u);
    return;
  }

  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 160);
      if (v4)
      {
        (*(*v4 + 24))(v4, a1 + 64);
        sub_100314A14(a1, 0x100u);
LABEL_13:
        sub_100004A34(v3);
        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_101774F18(v5);
  }

  if (v3)
  {
    goto LABEL_13;
  }
}

void sub_1005A9478(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I handling vinyl info update in monitor mode", v8, 2u);
  }

  v4 = a1[21];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = a1[20];
      if (v6)
      {
        if ((sIsProfileInstalled() & 1) != 0 || (*(*v6 + 32))(v6, a1 + 8))
        {
          (*(*a1 + 40))(a1, 257);
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_101774F18(v7);
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

LABEL_12:
  sub_100004A34(v5);
}

void sub_1005A9648(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1005A971C);
  __cxa_rethrow();
}

void sub_1005A9688(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005A96DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005A971C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_1005A9748(void *a1, void *a2, uint64_t a3, NSObject **a4, uint64_t a5)
{
  v9 = *a4;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  sub_100337F18(a1, a2, a3, &object, a5);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &off_101E65C40;
  return a1;
}

void sub_1005A97D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A97F8(uint64_t a1)
{
  sub_1003380F4(a1);

  operator delete();
}

void sub_1005A9830(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  (*(**(a1 + 88) + 112))(&v6);
  v4 = v6;
  if (v6)
  {
    v5 = sub_1000973D0(a1);
    (*(*v4 + 104))(v4, v5, a2);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1005A98E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A98F8(uint64_t a1@<X0>, uint64_t a2@<X1>, CSIPacketAddress *a3@<X8>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  (*(**(a1 + 88) + 16))(&v10);
  v5 = v10;
  v6 = v11;
  if (v10 == v11)
  {
LABEL_8:
    CSIPacketAddress::CSIPacketAddress(a3);
  }

  else
  {
    while (1)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(*v8 + 80))(v8, a2) == 6)
      {
        break;
      }

      if (v7)
      {
        sub_100004A34(v7);
      }

      v5 += 2;
      if (v5 == v6)
      {
        goto LABEL_8;
      }
    }

    v9 = (*(*v8 + 96))(v8, a2);
    CSIPacketAddress::CSIPacketAddress(a3, v9);
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  v13 = &v10;
  sub_1000212F4(&v13);
}

void sub_1005A9A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  a12 = &a9;
  sub_1000212F4(&a12);
  _Unwind_Resume(a1);
}

void sub_1005A9A70(uint64_t a1@<X0>, uint64_t a2@<X1>, CSIPacketAddress *a3@<X8>)
{
  v5 = 0;
  v6 = 0;
  (*(**(a1 + 88) + 112))(&v5);
  if (v5)
  {
    (*(*v5 + 152))(v5, a2);
  }

  else
  {
    CSIPacketAddress::CSIPacketAddress(a3);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1005A9B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A9B30(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11) = 136315138;
    *(&v11 + 4) = "getStatistics";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: start", &v11, 0xCu);
  }

  *a5 = 0;
  *a4 = 0;
  *a3 = 0;
  *a2 = 0;
  v11 = 0uLL;
  (*(**(a1 + 88) + 112))(&v11);
  if (v11)
  {
    (*(*v11 + 24))(v11, a2, a3, a4, a5);
  }

  if (*(&v11 + 1))
  {
    sub_100004A34(*(&v11 + 1));
  }
}

void sub_1005A9C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A9C9C(uint64_t a1, char a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 136315138;
    *(&v5 + 4) = "goOffline";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: start", &v5, 0xCu);
  }

  v5 = 0uLL;
  (*(**(a1 + 88) + 112))(&v5);
  if (v5)
  {
    if (a2)
    {
      (*(*v5 + 80))();
    }

    if ((a2 & 2) != 0)
    {
      (*(*v5 + 80))(v5, 2);
    }
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1005A9DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A9E0C(CSIPacketAddress *a1, int a2)
{
  isIPv4 = CSIPacketAddress::isIPv4(a1);
  if (a2 == 2 && isIPv4 || (result = CSIPacketAddress::isIPv6(a1), a2 == 1) && result)
  {
    CSIPacketAddress::CSIPacketAddress(v6);
    return CSIPacketAddress::operator=();
  }

  return result;
}

uint64_t sub_1005A9E70(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "goOnline";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: start", &buf, 0xCu);
  }

  v32 = 0;
  v33 = 0;
  (*(**(a1 + 88) + 112))(&v32);
  if (v32)
  {
    buf = 0uLL;
    v35 = 0;
    CSIPacketAddress::CSIPacketAddress(&buf);
    memset(v31, 0, sizeof(v31));
    v12 = (*(**a2 + 96))(*a2, a3);
    CSIPacketAddress::CSIPacketAddress(v31, v12);
    memset(v30, 0, sizeof(v30));
    v13 = (*(**a2 + 104))();
    CSIPacketAddress::CSIPacketAddress(v30, v13);
    memset(v29, 0, sizeof(v29));
    v14 = (*(**a2 + 112))();
    CSIPacketAddress::CSIPacketAddress(v29, v14);
    sub_1005A9E0C(v31, a3);
    sub_1005A9E0C(v30, a3);
    sub_1005A9E0C(v29, a3);
    if (((*(**a2 + 128))() & 1) == 0)
    {
      addMask();
    }

    v15 = (*(**a2 + 56))();
    if (a3 != 2 || v15 == 1)
    {
      goto LABEL_13;
    }

    if (!matchMask() || (CSIPacketAddress::operator=(), CSIPacketAddress::isLinkLocal(v31)))
    {
      CSIPacketAddress::operator=();
    }

    if (!matchMask() || (CSIPacketAddress::isLinkLocal(v29) & 1) == 0)
    {
LABEL_13:
      CSIPacketAddress::operator=();
    }

    if (a3 == 1)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = v32;
    v18 = *(**a2 + 56);
    if (a6)
    {
      v19 = v18();
      v20 = (*(**a2 + 120))(*a2, a3);
      v21 = (*(**a2 + 120))(*a2, v16);
      v22 = (*(**a2 + 192))(*a2, 0);
      matched = matchMask();
      v24 = matchMask();
      v25 = (*v17 + 72);
    }

    else
    {
      v19 = v18();
      v20 = (*(**a2 + 120))(*a2, a3);
      v21 = (*(**a2 + 120))(*a2, v16);
      v22 = (*(**a2 + 192))(*a2, 0);
      matched = matchMask();
      v24 = matchMask();
      v25 = (*v17 + 64);
    }

    BYTE5(v28) = v24 ^ 1;
    BYTE4(v28) = matched;
    LODWORD(v28) = a4;
    v26 = (*v25)(v17, v19, v31, v29, v20, v21, v22, a3, v28);
  }

  else
  {
    v26 = 0;
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  return v26;
}

void sub_1005AA39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AA3CC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v13) = 136315138;
    *(&v13 + 4) = "refreshDNS";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: start", &v13, 0xCu);
  }

  v13 = 0uLL;
  (*(**(a1 + 88) + 112))(&v13);
  v7 = v13;
  if (v13)
  {
    v8 = (*(**a2 + 120))(*a2, a3);
    if (a3 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = (*(**a2 + 120))(*a2, v9);
    v11 = (*(*v7 + 128))(v7, a3, v8, v10);
  }

  else
  {
    v11 = 0;
  }

  if (*(&v13 + 1))
  {
    sub_100004A34(*(&v13 + 1));
  }

  return v11;
}

uint64_t sub_1005AA58C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 136315138;
    *(&v5 + 4) = "refreshIPv6";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: ipv6Service", &v5, 0xCu);
  }

  v5 = 0uLL;
  (*(**(a1 + 88) + 112))(&v5);
  if (v5)
  {
    v3 = (*(*v5 + 112))(v5);
  }

  else
  {
    v3 = 0;
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }

  return v3;
}

void sub_1005AA6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AA6C8(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  (*(**(a1 + 88) + 112))(&v3);
  if (v3)
  {
    v1 = (*(*v3 + 120))(v3);
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    sub_100004A34(v4);
  }

  return v1;
}

void sub_1005AA764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AA77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v7) = 136315138;
    *(&v7 + 4) = "updateMTU";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: start", &v7, 0xCu);
  }

  v7 = 0uLL;
  (*(**(a1 + 88) + 112))(&v7);
  if (v7)
  {
    (*(*v7 + 200))(v7, a2, a3);
  }

  if (*(&v7 + 1))
  {
    sub_100004A34(*(&v7 + 1));
  }
}

void sub_1005AA8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AA8EC(capabilities::ct *a1@<X0>, NSObject **a3@<X2>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  if (capabilities::ct::supportsCellRadio(a1))
  {
    if (*a3)
    {
      dispatch_retain(*a3);
    }

    sub_1005AA9E8(&v6);
  }

  if (*a3)
  {
    dispatch_retain(*a3);
  }

  sub_1005AAAEC(&v6);
}

void sub_1005AA9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AA9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x1005AA9D0);
  }

  JUMPOUT(0x1005AA9CCLL);
}

void sub_1005AA9E8(uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  operator new();
}

void sub_1005AAAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AAAEC(uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  operator new();
}

void sub_1005AABB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AAC70(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1005AAD44);
  __cxa_rethrow();
}

void sub_1005AACB0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005AAD04(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005AAD44(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1005AADF0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1005AAEC4);
  __cxa_rethrow();
}

void sub_1005AAE30(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005AAE84(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005AAEC4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

const char *sGetLogDomainForInstance(int a1)
{
  v1 = "msg.mms.op.ntfrsp.?";
  if (a1 == 2)
  {
    v1 = "msg.mms.op.ntfrsp.2";
  }

  if (a1 == 1)
  {
    return "msg.mms.op.ntfrsp.1";
  }

  else
  {
    return v1;
  }
}

void sub_1005AAF1C(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, char *a5, uint64_t *a6)
{
  v10 = a3[1];
  v17 = *a3;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = 0;
  v16 = 0;
  v11 = a6[1];
  v13 = *a6;
  v14 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004D102C(a1, a2, &v17, &v15, &v13);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  v19[0] = off_101E2A828;
  v19[1] = sGetLogDomainForInstance;
  v19[3] = v19;
  sub_1005AB2A4((a1 + 216), a3, v19);
  sub_1000A8744(v19);
  *a1 = &off_101E66068;
  *(a1 + 224) = 0u;
  *(a1 + 8) = off_101E661F0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  v12 = *(a1 + 192);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (v12)
  {
    sub_100004A34(v12);
  }

  sub_100016890((a1 + 224), a5);
  sub_100016890((a1 + 248), a4);
  operator new();
}

void sub_1005AB1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (*(v13 + 271) < 0)
  {
    operator delete(*(v13 + 248));
  }

  if (*(v13 + 247) < 0)
  {
    operator delete(*v14);
  }

  v16 = *(v13 + 216);
  *(v13 + 216) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_1004D1284(v13);
  _Unwind_Resume(a1);
}

capabilities::ct *sub_1005AB2A4(capabilities::ct *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_1005AB3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

void sub_1005AB46C(MMSOperationInterface *this)
{
  *this = &off_101E66068;
  *(this + 1) = off_101E661F0;
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  v2 = *(this + 27);
  *(this + 27) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1004D1284(this);
}

void sub_1005AB538(MMSOperationInterface *a1)
{
  sub_1005AB46C(a1);

  operator delete();
}

void sub_1005AB570(uint64_t a1)
{
  sub_1005AB46C((a1 - 8));

  operator delete();
}

BOOL sub_1005AB5AC(uint64_t a1)
{
  result = sub_1004D1694(a1);
  if (result)
  {
    v3 = *(a1 + 247);
    if (v3 < 0)
    {
      v3 = *(a1 + 232);
    }

    return v3 != 0;
  }

  return result;
}

void sub_1005AB5E8(uint64_t a1)
{
  v2 = sub_1004D15AC(a1);
  v3 = (*(**(a1 + 216) + 16))(*(a1 + 216), v2);
  v40 = 0;
  v41 = 0;
  v4 = sub_1004D15AC(a1);
  sub_1004D1140(a1, v4, &v40);
  if (!v40 || !*(a1 + 168) || ((v5 = (*(*v40 + 40))(), v6 = *(v5 + 23), v7 = *v5, v8 = (*(**(a1 + 168) + 40))(*(a1 + 168)), v6 >= 0) ? (v9 = v5) : (v9 = v7), *(v8 + 23) >= 0 ? (v10 = v8) : (v10 = *v8), strcasecmp(v9, v10)))
  {
    if ((*(**(a1 + 168) + 264))(*(a1 + 168)))
    {
      v11 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v12 = (*(**(a1 + 168) + 40))(*(a1 + 168));
        v13 = *(v12 + 23);
        v14 = *v12;
        v15 = sub_1004D149C(a1);
        if (v13 >= 0)
        {
          v16 = v12;
        }

        else
        {
          v16 = v14;
        }

        *buf = 136315394;
        *&buf[4] = v16;
        *&buf[12] = 1024;
        *&buf[14] = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Sending m-notifyresp-ind to MMSC that hosted the message (%s), MsgId: %u", buf, 0x12u);
      }

      v17 = *(a1 + 176);
      v38 = *(a1 + 168);
      v39 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1004D17E0(a1, &v38);
      if (v39)
      {
        sub_100004A34(v39);
      }
    }
  }

  if (*(a1 + 184))
  {
    goto LABEL_31;
  }

  v18 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v19 = (*(*v40 + 40))(v40);
    v20 = *(v19 + 23);
    v21 = *v19;
    v22 = sub_1004D149C(a1);
    if (v20 >= 0)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    *buf = 136315394;
    *&buf[4] = v23;
    *&buf[12] = 1024;
    *&buf[14] = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Sending m-notifyresp-ind to our carrier configured MMSC (%s), MsgId: %u", buf, 0x12u);
  }

  v36 = v40;
  v37 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004D17E0(a1, &v36);
  if (v37)
  {
    sub_100004A34(v37);
  }

  if (*(a1 + 184))
  {
LABEL_31:
    *buf = 0;
    *&buf[8] = 0;
    sub_1004D2664(a1, buf);
    if (*buf)
    {
      sub_1004D19AC(a1);
    }

    v24 = *(a1 + 192);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    if (v24)
    {
      sub_100004A34(v24);
    }

    v25 = *v3;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = sub_1004D149C(a1);
      sub_101774F98(v42, v26, v25);
    }

    v27 = *(a1 + 136);
    sub_100004AA0(&v32, (a1 + 16));
    (*(*v27 + 16))(v27, 1, &v32);
    if (v33)
    {
      sub_100004A34(v33);
    }

    v28 = *&buf[8];
    if (*&buf[8])
    {
LABEL_40:
      sub_100004A34(v28);
    }
  }

  else
  {
    v29 = *v3;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = sub_1004D149C(a1);
      sub_101774FD4(buf, v30, v29);
    }

    v31 = *(a1 + 136);
    sub_100004AA0(&v34, (a1 + 16));
    (*(*v31 + 16))(v31, 1, &v34);
    v28 = v35;
    if (v35)
    {
      goto LABEL_40;
    }
  }

  if (v41)
  {
    sub_100004A34(v41);
  }
}

void sub_1005ABB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005ABC18(uint64_t a1, void *a2)
{
  v4 = sub_1004D15AC(a1);
  v5 = (*(**(a1 + 216) + 16))(*(a1 + 216), v4);
  v6 = sub_100BB1A2C(*a2);
  v7 = *v5;
  if (v6)
  {
    v8 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
    v9 = 0;
    if (v8)
    {
      v10 = (a1 + 224);
      if (*(a1 + 247) < 0)
      {
        v10 = *v10;
      }

      v11 = (a1 + 248);
      if (*(a1 + 271) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315650;
      v17 = v10;
      v18 = 2080;
      v19 = v11;
      v20 = 1024;
      v21 = sub_1004D149C(a1);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I notifyresp %s %s succeeded, MsgId: %u", buf, 0x1Cu);
      v9 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_101775010(a1, v7);
    }

    v9 = 1;
  }

  v12 = *(a1 + 192);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 136);
  sub_100004AA0(&v14, (a1 + 16));
  (*(*v13 + 16))(v13, v9, &v14);
  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_1005ABDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005ABE1C(uint64_t a1, NSObject **a2, void *a3, char *a4)
{
  *a1 = off_101E2A4E8;
  *(a1 + 8) = off_101E68950;
  ctu::OsLogContext::OsLogContext(&v9, kCtLoggingSystemName, a4);
  sub_1005ABF80((a1 + 16), a2, &v9);
  ctu::OsLogContext::~OsLogContext(&v9);
  *a1 = off_101E662B0;
  *(a1 + 8) = off_101E663E0;
  v7 = a3[1];
  *(a1 + 56) = *a3;
  *(a1 + 64) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 224;
  *(a1 + 232) = a1 + 224;
  *(a1 + 240) = 0;
  return a1;
}

void sub_1005ABF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_1005ABF80(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1005ABFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_1005AC00C(uint64_t a1)
{
  *a1 = off_101E662B0;
  *(a1 + 8) = off_101E663E0;
  sub_1005C0E30((a1 + 224));
  v2 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1005C1A98(a1 + 184);
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_100045B14(a1 + 120, *(a1 + 128));
  v5 = (a1 + 96);
  sub_1005C0EBC(&v5);
  sub_10006DCAC(a1 + 72, *(a1 + 80));
  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
}

void sub_1005AC130(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 152);
  *(a1 + 144) = v3;
  *(a1 + 152) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

BOOL sub_1005AC180(uint64_t a1)
{
  (*(*a1 + 232))(v3);
  if ((v4 & 0x80000000) == 0)
  {
    return v4 != 0;
  }

  v1 = v3[1] != 0;
  operator delete(v3[0]);
  return v1;
}

void sub_1005AC1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = 2;
  LOBYTE(__p) = 11;
  v5 = *(a5 + 24);
  if (!v5)
  {
    sub_100022DB4();
  }

  (*(*v5 + 48))(v5, v6, a3, a4);
  if (v6[0] == 1)
  {
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }
}

void sub_1005AC27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p, uint64_t a11)
{
  if (a9 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AC2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = 2818;
  v6 = *(a6 + 24);
  if (!v6)
  {
    sub_100022DB4();
  }

  return (*(*v6 + 48))(v6, &v8, a3, a4, a5);
}

uint64_t sub_1005AC2FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

const void **sub_1005AC344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = 2;
  LOBYTE(v7) = 11;
  v4 = *(a4 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  result = (*(*v4 + 48))(v4, v6, a3);
  if (v6[0] == 1)
  {
    return sub_10001021C(&v7);
  }

  return result;
}

void sub_1005AC3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9)
{
  if (a9 == 1)
  {
    sub_10001021C((v9 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AC3E8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *&v58 = a2;
  *(&v58 + 1) = a3;
  v7 = a1[10];
  if (!v7)
  {
LABEL_6:
    v11 = a6;
    v12 = 267;
LABEL_7:

    sub_10010EE84(v11, v12);
    return;
  }

  while (1)
  {
    v10 = *(v7 + 7);
    if (v10 <= 0)
    {
      break;
    }

LABEL_5:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  if (v10 < 0)
  {
    ++v7;
    goto LABEL_5;
  }

  if (!a4[2])
  {
    v11 = a6;
    v12 = 257;
    goto LABEL_7;
  }

  memset(v46, 0, sizeof(v46));
  sub_1009BD270(v46);
  *cf = 0u;
  *v45 = 0u;
  *&v45[20] = 0;
  memset(v43, 0, sizeof(v43));
  v45[8] = 2;
  *&v45[12] = 0x50000003CLL;
  sub_1009BED68(v46);
  v13 = sub_1005C1B94((a1 + 15), &v58);
  if (a1 + 16 == v13)
  {
    v23 = a1[6];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v42 >= 0)
      {
        v24 = buf;
      }

      else
      {
        v24 = *buf;
      }

      *v57 = 136315138;
      *&v57[4] = v24;
      v25 = "#E %s not found";
LABEL_50:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, v57, 0xCu);
      if (v42 < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_52:
    sub_10010EE84(a6, 257);
    goto LABEL_53;
  }

  v14 = a1[12];
  v15 = a1[13];
  if (v14 != v15)
  {
    v16 = v13 + 6;
    v17 = *(v13 + 71);
    if (v17 >= 0)
    {
      v18 = *(v13 + 71);
    }

    else
    {
      v18 = v13[7];
    }

    while (1)
    {
      v19 = *(v14 + 23);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v14 + 8);
      }

      if (v18 == v19)
      {
        v21 = v17 >= 0 ? v16 : *v16;
        v22 = v20 >= 0 ? v14 : *v14;
        if (!memcmp(v21, v22, v18))
        {
          break;
        }
      }

      v14 += 96;
      if (v14 == v15)
      {
        goto LABEL_45;
      }
    }
  }

  if (v14 == v15)
  {
LABEL_45:
    v23 = a1[6];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v42 >= 0)
      {
        v33 = buf;
      }

      else
      {
        v33 = *buf;
      }

      *v57 = 136315138;
      *&v57[4] = v33;
      v25 = "#E Device not found for %s";
      goto LABEL_50;
    }

    goto LABEL_52;
  }

  sub_10039EF40(*(&v46[0] + 1));
  PB::Data::assign(*(*(&v46[0] + 1) + 8), &v58, v59);
  LOWORD(cf[0]) = (*(*a1 + 240))(a1);
  std::string::operator=(v43, v14);
  if (a4[2] > 1)
  {
    v26 = a1[6];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Multiple ICCIDs set, taking first one only", buf, 2u);
    }
  }

  v27 = *(&v46[0] + 1);
  v28 = *a4;
  sub_10027F75C(*(&v46[0] + 1));
  std::string::operator=(*(v27 + 16), (v28 + 32));
  v29 = a1[6];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [ActivateProfileReq]", buf, 2u);
  }

  sub_1005ACC40(v46, v57);
  *buf = cf[1];
  cf[1] = *v57;
  *v57 = 0;
  sub_10002D760(buf);
  sub_10002D760(v57);
  *&v45[12] = 30;
  v45[8] = (*(*a1 + 224))(a1, &v58);
  *v57 = 0uLL;
  (*(*a1 + 248))(v57, a1);
  if (*v57)
  {
    sub_100004AA0(buf, a1 + 2);
    v31 = *buf;
    v30 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v30);
    }

    v32 = *v57;
    if (SHIBYTE(v43[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v34, v43[0].__r_.__value_.__l.__data_, v43[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v34 = v43[0];
    }

    if (SHIBYTE(v43[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v43[1].__r_.__value_.__l.__data_, v43[1].__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v43[1];
    }

    v36 = cf[0];
    v37 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v38 = *v45;
    if (*v45)
    {
      CFRetain(*v45);
    }

    v39[0] = *&v45[8];
    *(v39 + 6) = *&v45[14];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 1174405120;
    v47[2] = sub_1005ACDB4;
    v47[3] = &unk_101E66440;
    v47[4] = a1;
    v47[5] = v31;
    v48 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100112F20(v49, a6);
    if (SHIBYTE(v43[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v50, v43[0].__r_.__value_.__l.__data_, v43[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v50 = v43[0];
    }

    if (SHIBYTE(v43[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v51, v43[1].__r_.__value_.__l.__data_, v43[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v51 = v43[1];
    }

    v52 = cf[0];
    v53 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v54 = *v45;
    if (*v45)
    {
      CFRetain(*v45);
    }

    v55[0] = *&v45[8];
    *(v55 + 6) = *&v45[14];
    v56 = v58;
    (*(*v32 + 48))(v32, &v34, v47);
    sub_1002030AC(&v38);
    sub_10002D760(&v37);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    sub_1002030AC(&v54);
    sub_10002D760(&v53);
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    sub_100112FB8(v49);
    if (v48)
    {
      std::__shared_weak_count::__release_weak(v48);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (*&v57[8])
  {
    sub_100004A34(*&v57[8]);
  }

LABEL_53:
  sub_1002030AC(v45);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v43[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43[0].__r_.__value_.__l.__data_);
  }

  sub_1009BD5D4(v46);
}

void sub_1005ACC40(uint64_t a1@<X0>, CFDataRef *a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  PB::Writer::Writer(&v5);
  (*(*a1 + 24))(a1, &v5);
  if (v5 == v6)
  {
    v4 = 0;
  }

  else
  {
    v4 = CFDataCreate(kCFAllocatorDefault, v6, v5 - v6);
  }

  *a2 = v4;
  PB::Writer::~Writer(&v5);
}

void sub_1005ACCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

char *sub_1005ACCF0(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  *(__dst + 24) = *(a2 + 24);
  sub_10002D728(__dst + 7, a2 + 7);
  sub_1002030F8(__dst + 8, a2 + 8);
  v6 = *(a2 + 9);
  *(__dst + 78) = *(a2 + 78);
  *(__dst + 9) = v6;
  return __dst;
}

void sub_1005ACD98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005ACDB4(uint64_t a1, unsigned __int8 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005AD07C;
  v10[3] = &unk_101E66410;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v13, a2);
  sub_100112F20(v14, a1 + 56);
  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(&v15, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
  }

  if (*(a1 + 135) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
    v18 = *(a1 + 128);
  }

  v19 = *(a1 + 136);
  sub_10002D728(&v20, (a1 + 144));
  sub_1002030F8(&v21, (a1 + 152));
  *(v22 + 6) = *(a1 + 166);
  v22[0] = *(a1 + 160);
  v23 = *(a1 + 176);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 16));
  v4 = *(v5 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005C1C24;
  block[3] = &unk_101E66980;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v21);
  sub_10002D760(&v20);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  sub_100112FB8(v14);
  sub_1005C116C(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005AD01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_100112FB8(v49 + 152);
  sub_1005C116C(v48 + 56);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1005AD07C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(a1 + 40))
      {
LABEL_49:
        sub_100004A34(v5);
        return;
      }

      v6 = *(a1 + 56);
      v7 = v3[6];
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6 == 2)
      {
        if (v8)
        {
          v9 = sub_100A43314(*(a1 + 64));
          *buf = 136315394;
          *&buf[4] = "activateProfile";
          *&buf[12] = 2080;
          *&buf[14] = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [%sReq] IDS Failure [%s]", buf, 0x16u);
          v10 = *(a1 + 56);
          if (v10 != 2)
          {
            if (v10 == 1)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v32 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(exception);
            }

            else
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v32 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
            }

            __cxa_throw(exception, v33, v32);
          }
        }

        v11 = sub_1005AD768(*(a1 + 64));
        sub_10010EE84(a1 + 152, v11 | 0x100);
        goto LABEL_49;
      }

      if (v8)
      {
        *buf = 136315138;
        *&buf[4] = "activateProfile";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%sRsp]", buf, 0xCu);
        v6 = *(a1 + 56);
      }

      *theData = 0u;
      memset(v40, 0, 24);
      memset(v38, 0, sizeof(v38));
      *__dst = 0u;
      if (v6 != 1)
      {
        v28 = __cxa_allocate_exception(0x10uLL);
        if (v6 == 2)
        {
          v29 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(v28);
        }

        else
        {
          v29 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
          ctu::ResultIsEmptyError::ResultIsEmptyError(v28);
        }

        __cxa_throw(v28, v30, v29);
      }

      if (*(a1 + 87) < 0)
      {
        sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
      }

      else
      {
        *__dst = *(a1 + 64);
        v38[0] = *(a1 + 80);
      }

      if (*(a1 + 111) < 0)
      {
        sub_100005F2C(&v38[1], *(a1 + 88), *(a1 + 96));
      }

      else
      {
        *&v38[1] = *(a1 + 88);
        v38[3] = *(a1 + 104);
      }

      LOWORD(theData[0]) = *(a1 + 112);
      sub_10002D728(&theData[1], (a1 + 120));
      sub_1002030F8(v40, (a1 + 128));
      *(&v40[0] + 1) = *(a1 + 136);
      *(v40 + 14) = *(a1 + 142);
      (*(*v3 + 248))(buf, v3, *(a1 + 256));
      v12 = *buf;
      if (SHIBYTE(v38[3]) < 0)
      {
        sub_100005F2C(__p, v38[1], v38[2]);
      }

      else
      {
        *__p = *&v38[1];
        v36 = v38[3];
      }

      (*(*v12 + 56))(v12, __p);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_100A34C5C(buf);
      if (theData[1])
      {
        memset(v34, 0, sizeof(v34));
        BytePtr = CFDataGetBytePtr(theData[1]);
        Length = CFDataGetLength(theData[1]);
        PB::Reader::Reader(v34, BytePtr, Length);
        if ((sub_100A353F0(buf, v34) & 1) == 0)
        {
          v23 = v3[6];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *v41 = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E Invalid Response", v41, 2u);
          }

          sub_10010EE84(a1 + 152, 269);
          goto LABEL_45;
        }

        v15 = *&buf[8];
        if (!*&buf[8])
        {
          v24 = v3[6];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v41 = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E Bad response", v41, 2u);
          }

          sub_10010EE84(a1 + 152, 270);
          goto LABEL_45;
        }

        v16 = *(*&buf[8] + 8);
        if (!v16 || *(v16 + 8) != 16 || ((v17 = *v16, v19 = *v17, v18 = v17[1], *(a1 + 272) == v19) ? (v20 = *(a1 + 280) == v18) : (v20 = 0), !v20))
        {
          v21 = v3[6];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *v41 = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#E Invalid CSN in response", v41, 2u);
          }

          sub_10010EE84(a1 + 152, 271);
          goto LABEL_45;
        }

        if (*(*&buf[8] + 24))
        {
          v25 = v3[6];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(v15 + 16);
            *v41 = 67109120;
            v42 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E Error: %d", v41, 8u);
            v15 = *&buf[8];
          }

          v27 = *(v15 + 16);
          if (v27 > 0x19)
          {
            sub_10010EE84(a1 + 152, 256);
          }

          else
          {
            sub_10010EE84(a1 + 152, v27 | 0x100);
          }

          goto LABEL_45;
        }

        if (*(*&buf[8] + 20) == 1)
        {
          sub_10010EE84(a1 + 152, 0);
          goto LABEL_45;
        }
      }

      else
      {
        v22 = v3[6];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v34[0]) = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E no response data", v34, 2u);
        }
      }

      sub_10010EE84(a1 + 152, 259);
LABEL_45:
      sub_100A34FF0(buf);
      sub_1002030AC(v40);
      sub_10002D760(&theData[1]);
      if (SHIBYTE(v38[3]) < 0)
      {
        operator delete(v38[1]);
      }

      if (SHIBYTE(v38[0]) < 0)
      {
        operator delete(__dst[0]);
      }

      goto LABEL_49;
    }
  }
}

void sub_1005AD6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_100A34FF0(&a37);
  sub_1005AD788(&__p);
  sub_100004A34(v38);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AD768(unsigned int a1)
{
  if (a1 > 0x24)
  {
    return 23;
  }

  else
  {
    return byte_10181C5A4[a1];
  }
}

uint64_t sub_1005AD788(uint64_t a1)
{
  sub_1002030AC((a1 + 64));
  sub_10002D760((a1 + 56));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_1005AD7DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C((a1 + 56), (a2 + 56));
  sub_100112F20(a1 + 152, a2 + 152);
  if (*(a2 + 207) < 0)
  {
    sub_100005F2C((a1 + 184), *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v5 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v5;
  }

  if (*(a2 + 231) < 0)
  {
    sub_100005F2C((a1 + 208), *(a2 + 208), *(a2 + 216));
  }

  else
  {
    v6 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 208) = v6;
  }

  *(a1 + 232) = *(a2 + 232);
  sub_10002D728((a1 + 240), (a2 + 240));
  result = sub_1002030F8((a1 + 248), (a2 + 248));
  v8 = *(a2 + 256);
  *(a1 + 262) = *(a2 + 262);
  *(a1 + 256) = v8;
  return result;
}

void sub_1005AD8B8(_Unwind_Exception *a1)
{
  if (*(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  sub_100112FB8(v1 + 152);
  sub_1005C116C(v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1005AD908(uint64_t a1)
{
  sub_1002030AC((a1 + 248));
  sub_10002D760((a1 + 240));
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  sub_100112FB8(a1 + 152);
  sub_1005C116C(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

const void **sub_1005AD98C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_100112F20(a1 + 56, a2 + 56);
  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v5 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v5;
  }

  if (*(a2 + 135) < 0)
  {
    sub_100005F2C((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v6;
  }

  *(a1 + 136) = *(a2 + 136);
  sub_10002D728((a1 + 144), (a2 + 144));
  result = sub_1002030F8((a1 + 152), (a2 + 152));
  v8 = *(a2 + 160);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 160) = v8;
  return result;
}

void sub_1005ADA54(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  sub_100112FB8(v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1005ADA94(uint64_t a1)
{
  sub_1002030AC((a1 + 152));
  sub_10002D760((a1 + 144));
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  sub_100112FB8(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1005ADB10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v59 = a2;
  *(&v59 + 1) = a3;
  v6 = a1[10];
  if (!v6)
  {
LABEL_6:
    v48 = 2818;
    v10 = *(a5 + 24);
    if (!v10)
    {
      sub_100022DB4();
    }

    (*(*v10 + 48))(v10, &v48, a3, a4);
    return;
  }

  while (1)
  {
    v9 = *(v6 + 7);
    if (v9 <= 0)
    {
      break;
    }

LABEL_5:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  if (v9 < 0)
  {
    ++v6;
    goto LABEL_5;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  sub_1009BD270(&v40);
  v37 = 0u;
  *v38 = 0u;
  v39 = 0;
  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  v38[8] = 2;
  *&v38[12] = 0x50000003CLL;
  if (*(a4 + 40) != 1 || sub_1013F7F04(a4))
  {
    v34 = 258;
    v11 = *(a5 + 24);
    if (!v11)
    {
      sub_100022DB4();
    }

    (*(*v11 + 48))(v11, &v34);
    LOBYTE(v34) = 0;
    goto LABEL_60;
  }

  sub_1009BEDF8(&v40);
  v12 = sub_1005C1B94((a1 + 15), &v59);
  if (a1 + 16 == v12)
  {
    v22 = a1[6];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (SHIBYTE(v57) >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      LODWORD(v54) = 136315138;
      *(&v54 + 4) = v23;
      v24 = "#E %s not found";
LABEL_56:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v24, &v54, 0xCu);
      if (SHIBYTE(v57) < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_58:
    v33 = 1;
    v31 = *(a5 + 24);
    if (!v31)
    {
      sub_100022DB4();
    }

    (*(*v31 + 48))(v31, &v33);
    LOBYTE(v33) = 0;
    goto LABEL_60;
  }

  v13 = a1[12];
  v14 = a1[13];
  if (v13 != v14)
  {
    v15 = v12 + 6;
    v16 = *(v12 + 71);
    if (v16 >= 0)
    {
      v17 = *(v12 + 71);
    }

    else
    {
      v17 = v12[7];
    }

    while (1)
    {
      v18 = *(v13 + 23);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(v13 + 8);
      }

      if (v17 == v18)
      {
        v20 = v16 >= 0 ? v15 : *v15;
        v21 = v19 >= 0 ? v13 : *v13;
        if (!memcmp(v20, v21, v17))
        {
          break;
        }
      }

      v13 += 96;
      if (v13 == v14)
      {
        goto LABEL_51;
      }
    }
  }

  if (v13 == v14)
  {
LABEL_51:
    v22 = a1[6];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (SHIBYTE(v57) >= 0)
      {
        v30 = buf;
      }

      else
      {
        v30 = *buf;
      }

      LODWORD(v54) = 136315138;
      *(&v54 + 4) = v30;
      v24 = "#E Device not found for %s";
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  sub_10039EF40(v41);
  PB::Data::assign(*(v41 + 8), &v59, &v60);
  LOWORD(v37) = (*(*a1 + 240))(a1);
  std::string::operator=(v35, v13);
  v25 = *(a4 + 39);
  if (v25 < 0)
  {
    v25 = *(a4 + 24);
  }

  if (v25)
  {
    sub_1013F05F4(buf);
    v26 = sub_1013F36E8(a4, buf);
    if (v58 < 0)
    {
      operator delete(v57);
    }

    if (!v26)
    {
      sub_10027F75C(v41);
      v27 = v41;
      sub_10027F75C(v41);
      std::string::operator=(*(v27 + 16), (a4 + 16));
    }
  }

  v28 = a1[6];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I [DeleteProfileReq]", buf, 2u);
  }

  sub_1005ACC40(&v40, &v54);
  *buf = *(&v37 + 1);
  *(&v37 + 1) = v54;
  *&v54 = 0;
  sub_10002D760(buf);
  sub_10002D760(&v54);
  *&v38[12] = 120;
  v38[8] = (*(*a1 + 224))(a1, &v59);
  *buf = 0;
  v56 = 0;
  (*(*a1 + 248))(buf, a1);
  if (*buf)
  {
    v54 = 0uLL;
    sub_1002306AC(a1 + 2, &v54);
    v29 = *buf;
    sub_1005ACCF0(v32, v35);
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 1174405120;
    v49[2] = sub_1005AE230;
    v49[3] = &unk_101E664A0;
    v49[4] = a1;
    v50 = v54;
    if (*(&v54 + 1))
    {
      atomic_fetch_add_explicit((*(&v54 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    sub_1001135B0(v51, a5);
    sub_1005ACCF0(v52, v35);
    v53 = v59;
    (*(*v29 + 48))(v29, v32, v49);
    sub_1005AD788(v32);
    sub_1005AD788(v52);
    sub_100113648(v51);
    if (*(&v50 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v50 + 1));
    }

    if (*(&v54 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v54 + 1));
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (v56)
  {
    sub_100004A34(v56);
  }

LABEL_60:
  sub_1002030AC(v38);
  sub_10002D760(&v37 + 1);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(*&v35[24]);
  }

  if ((v35[23] & 0x80000000) != 0)
  {
    operator delete(*v35);
  }

  sub_1009BD5D4(&v40);
}