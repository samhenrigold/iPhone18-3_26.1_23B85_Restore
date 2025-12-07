void sub_1007797E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007798F8(const void *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = CFGetTypeID(a1);
  v4 = v3 == CFDictionaryGetTypeID() ? a1 : 0;
  Value = CFDictionaryGetValue(v4, @"NotifyCode");
  if (!Value)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  v9 = CFNumberGetTypeID();
  result = 0xFFFFFFFFLL;
  if (v7 == v9)
  {
    v11 = -1;
    ctu::cf::assign(&v11, v6, v8);
    return v11;
  }

  return result;
}

void sub_1007799A0(uint64_t a1, int a2)
{
  v4 = sub_1007775E4(a1, a2);
  v5 = *(a1 + 72);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *&buf[4] = a2;
    *&buf[8] = 2080;
    *&buf[10] = asString();
    *&buf[18] = 1024;
    *&buf[20] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I NetworkDisconnected: iWLanErrorCode=%d, errorCode=%s (%d)", buf, 0x18u);
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  memset(buf, 0, sizeof(buf));
  *buf = 1;
  sub_1003567A4((a1 + 32), &buf[8]);
  LOBYTE(v24) = 0;
  *(&v24 + 1) = (*(*(a1 + 32) + 192))(a1 + 32, 0);
  LODWORD(v25) = v4;
  *(&v25 + 1) = a2;
  LODWORD(v26) = (*(*(a1 + 32) + 40))(a1 + 32);
  HIDWORD(v26) = PersonalitySpecificImpl::simSlot(a1);
  v6 = *(a1 + 160);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(a1 + 152);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  (*(*&v8[*(*v8 - 336)] + 296))(&v8[*(*v8 - 336)], buf);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (buf[31] < 0)
  {
    operator delete(*&buf[8]);
  }

  if (v4 == 100)
  {
    sub_100356BE0(a1 + 32, buf);
    v9 = *buf;
    (*(*a1 + 16))(&v21, a1);
    (*(*v9 + 136))(v9, 1, &v21);
    if (v22)
    {
      sub_100004A34(v22);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    sub_10076B24C(a1, "disconnect on network reset");
    sub_100777D40(a1);
  }

  else
  {
    if (*(a1 + 746) != 1 || *(a1 + 747) != 1)
    {
      goto LABEL_25;
    }

    sub_100356BE0(a1 + 32, buf);
    v10 = *buf;
    v11 = otherContextType();
    v12 = (*(*v10 + 496))(v10, v11);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v12)
    {
      v13 = *(a1 + 72);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "handleDataContextIpNetworkDisconnected";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: we are already in handover to other context", buf, 0xCu);
      }
    }

    else
    {
LABEL_25:
      *(a1 + 746) = 1;
      sub_100356BE0(a1 + 32, buf);
      v14 = *buf;
      v15 = *(a1 + 620);
      v16 = *(a1 + 616);
      (*(*a1 + 16))(&v19, a1);
      v17 = (*(*v14 + 128))(v14, v16 & v15, 1, &v19, 4, 17);
      if (v20)
      {
        sub_100004A34(v20);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if ((v17 & 1) == 0)
      {
        if (*(a1 + 747) != 1 || (~*(a1 + 712) & 0xFLL) != 0 || *(a1 + 752))
        {
          sub_10076B24C(a1, "disconnect on handover");
          sub_100777D40(a1);
        }

        else
        {
          v18 = *(a1 + 72);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "handleDataContextIpNetworkDisconnected";
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: Not possible to handover, tell SD to de-register", buf, 0xCu);
          }

          sub_100083E9C(&event::data::controlServiceOnLowPowerModeTransition, 1);
        }
      }
    }
  }
}

void sub_100779E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    sub_100004A34(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100779EDC(uint64_t a1, const __CFArray *a2)
{
  if (a2)
  {
    CSIPacketAddress::CSIPacketAddress(buf);
    CSIPacketAddress::operator=();
    CSIPacketAddress::operator=();
    *(a1 + 288) = *(a1 + 280);
    CSIPacketAddress::CSIPacketAddress(buf);
    CSIPacketAddress::operator=();
    CSIPacketAddress::operator=();
    *(a1 + 360) = *(a1 + 352);
    *(a1 + 620) = 0;
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v61 = 0;
      v60 = 0;
      for (i = 0; Count != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v7 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v8 = CFGetTypeID(ValueAtIndex);
          if (v8 == CFDictionaryGetTypeID())
          {
            v9 = v7;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }

        Value = CFDictionaryGetValue(v9, @"Name");
        v11 = Value;
        if (!Value || (v12 = CFGetTypeID(Value), v12 != CFStringGetTypeID()))
        {
          v16 = *(a1 + 72);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "onlineWithConfigInfo";
            *&buf[12] = 2048;
            *&buf[14] = i;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: No Name in item %ld", buf, 0x16u);
          }

          continue;
        }

        if (CFStringCompare(v11, @"AssignedIPv4Address", 0) == kCFCompareEqualTo || CFStringCompare(v11, @"AssignedIPv4NetMask", 0) == kCFCompareEqualTo)
        {
          CFDictionaryGetValue(v9, @"Address");
          memset(buf, 0, 24);
          ctu::cf::assign();
          *__p = *buf;
          __p[2] = *&buf[16];
          CSIPacketAddress::CSIPacketAddress();
          CSIPacketAddress::operator=();
          goto LABEL_87;
        }

        if (CFStringCompare(v11, @"AssignedIPv4DNS", 0) == kCFCompareEqualTo)
        {
          memset(v68, 0, sizeof(v68));
          CFDictionaryGetValue(v9, @"Address");
          memset(buf, 0, 24);
          ctu::cf::assign();
          *__p = *buf;
          __p[2] = *&buf[16];
          CSIPacketAddress::CSIPacketAddress();
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          if ((CSIPacketAddress::isZeroIP(v68) & 1) == 0)
          {
            v17 = *(a1 + 72);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              CSIPacketAddress::operator std::string();
              v18 = __p;
              if (SHIBYTE(__p[2]) < 0)
              {
                v18 = __p[0];
              }

              *buf = 136315650;
              *&buf[4] = "onlineWithConfigInfo";
              *&buf[12] = 1024;
              *&buf[14] = v61;
              *&buf[18] = 2082;
              *&buf[20] = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: fIPV4Dns[%d] = %{public}s", buf, 0x1Cu);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }
            }

            v19 = *(a1 + 288);
            if (v19 >= *(a1 + 296))
            {
              v20 = sub_1001BD180((a1 + 280), v68);
            }

            else
            {
              CSIPacketAddress::CSIPacketAddress(*(a1 + 288), v68);
              v20 = (v19 + 24);
              *(a1 + 288) = v19 + 24;
            }

            ++v61;
            *(a1 + 288) = v20;
          }

          continue;
        }

        if (CFStringCompare(v11, @"AssignedIPv6Address", 0))
        {
          if (CFStringCompare(v11, @"AssignedIPv6DNS", 0) == kCFCompareEqualTo)
          {
            memset(v68, 0, sizeof(v68));
            CFDictionaryGetValue(v9, @"Address");
            memset(buf, 0, 24);
            ctu::cf::assign();
            *__p = *buf;
            __p[2] = *&buf[16];
            CSIPacketAddress::CSIPacketAddress();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            if ((CSIPacketAddress::isZeroIP(v68) & 1) == 0)
            {
              v26 = *(a1 + 72);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                CSIPacketAddress::operator std::string();
                v27 = __p;
                if (SHIBYTE(__p[2]) < 0)
                {
                  v27 = __p[0];
                }

                *buf = 136315650;
                *&buf[4] = "onlineWithConfigInfo";
                *&buf[12] = 1024;
                *&buf[14] = v60;
                *&buf[18] = 2082;
                *&buf[20] = v27;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: fIPV6Dns[%d] = %{public}s", buf, 0x1Cu);
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              v28 = *(a1 + 360);
              if (v28 >= *(a1 + 368))
              {
                v29 = sub_1001BD180((a1 + 352), v68);
              }

              else
              {
                CSIPacketAddress::CSIPacketAddress(*(a1 + 360), v68);
                v29 = (v28 + 24);
                *(a1 + 360) = v28 + 24;
              }

              ++v60;
              *(a1 + 360) = v29;
            }

            continue;
          }

          if (CFStringCompare(v11, @"AssignedPCSCFIPv4", 0) && CFStringCompare(v11, @"AssignedIPv4PCSCF_STD", 0))
          {
            if (CFStringCompare(v11, @"AssignedPCSCFIPv6", 0) && CFStringCompare(v11, @"AssignedIPv6PCSCF_STD", 0))
            {
              v13 = *(a1 + 72);
              if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                continue;
              }

              memset(buf, 0, 24);
              ctu::cf::assign();
              *v68 = *buf;
              *&v68[16] = *&buf[16];
              v14 = *buf;
              if (buf[23] >= 0)
              {
                v14 = v68;
              }

              *buf = 136315650;
              *&buf[4] = "onlineWithConfigInfo";
              *&buf[12] = 2080;
              *&buf[14] = v14;
              *&buf[22] = 2048;
              *&buf[24] = i;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: got unrecognized name %s in item %ld in config Array", buf, 0x20u);
              if ((v68[23] & 0x80000000) == 0)
              {
                continue;
              }

              v15 = *v68;
              goto LABEL_89;
            }

            memset(__p, 0, 24);
            CFDictionaryGetValue(v9, @"Address");
            memset(buf, 0, 24);
            ctu::cf::assign();
            *__p = *buf;
            __p[2] = *&buf[16];
            v30 = *&buf[8];
            if (buf[23] >= 0)
            {
              v30 = buf[23];
            }

            if (v30)
            {
              sub_100005308((a1 + 720), __p);
              v31 = *(a1 + 72);
              if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_87;
              }

              v32 = __p;
              if (SHIBYTE(__p[2]) < 0)
              {
                v32 = __p[0];
              }

              *buf = 136315394;
              *&buf[4] = "onlineWithConfigInfo";
              *&buf[12] = 2080;
              *&buf[14] = v32;
              v24 = v31;
              v25 = "#I %s: IPv6Service: added IPv6 pcscf %s";
              goto LABEL_68;
            }

            v40 = *(a1 + 72);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              memset(v68, 0, sizeof(v68));
              ctu::cf::assign();
              *v64 = *v68;
              v65 = *&v68[16];
              v41 = *v68;
              v42 = v68[23];
              memset(v68, 0, sizeof(v68));
              ctu::cf::assign();
              v43 = v64;
              if (v42 < 0)
              {
                v43 = v41;
              }

              *v62 = *v68;
              v63 = *&v68[16];
              v44 = *v68;
              if ((v68[23] & 0x80u) == 0)
              {
                v44 = v62;
              }

              *buf = 136315650;
              *&buf[4] = "onlineWithConfigInfo";
              *&buf[12] = 2080;
              *&buf[14] = v43;
              *&buf[22] = 2080;
              *&buf[24] = v44;
              v38 = v40;
              v39 = "#I %s: IPv6Service: %s is present but %s empty, ignoring";
LABEL_83:
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 0x20u);
              if (SHIBYTE(v63) < 0)
              {
                operator delete(v62[0]);
              }

              if (SHIBYTE(v65) < 0)
              {
                operator delete(v64[0]);
              }
            }
          }

          else
          {
            memset(__p, 0, 24);
            CFDictionaryGetValue(v9, @"Address");
            memset(buf, 0, 24);
            ctu::cf::assign();
            *__p = *buf;
            __p[2] = *&buf[16];
            v21 = *&buf[8];
            if (buf[23] >= 0)
            {
              v21 = buf[23];
            }

            if (v21)
            {
              sub_100005308((a1 + 720), __p);
              v22 = *(a1 + 72);
              if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_87;
              }

              v23 = __p;
              if (SHIBYTE(__p[2]) < 0)
              {
                v23 = __p[0];
              }

              *buf = 136315394;
              *&buf[4] = "onlineWithConfigInfo";
              *&buf[12] = 2080;
              *&buf[14] = v23;
              v24 = v22;
              v25 = "#I %s: added IPv4 pcscf %s";
LABEL_68:
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
              goto LABEL_87;
            }

            v33 = *(a1 + 72);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              memset(v68, 0, sizeof(v68));
              ctu::cf::assign();
              *v64 = *v68;
              v65 = *&v68[16];
              v34 = *v68;
              v35 = v68[23];
              memset(v68, 0, sizeof(v68));
              ctu::cf::assign();
              v36 = v64;
              if (v35 < 0)
              {
                v36 = v34;
              }

              *v62 = *v68;
              v63 = *&v68[16];
              v37 = *v68;
              if ((v68[23] & 0x80u) == 0)
              {
                v37 = v62;
              }

              *buf = 136315650;
              *&buf[4] = "onlineWithConfigInfo";
              *&buf[12] = 2080;
              *&buf[14] = v36;
              *&buf[22] = 2080;
              *&buf[24] = v37;
              v38 = v33;
              v39 = "#I %s: %s is present but %s empty, ignoring";
              goto LABEL_83;
            }
          }
        }

        else
        {
          CFDictionaryGetValue(v9, @"Address");
          memset(buf, 0, 24);
          ctu::cf::assign();
          *__p = *buf;
          __p[2] = *&buf[16];
          CSIPacketAddress::CSIPacketAddress();
          CSIPacketAddress::operator=();
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          CFDictionaryGetValue(v9, @"Netmask");
          memset(buf, 0, 24);
          ctu::cf::assign();
          *__p = *buf;
          __p[2] = *&buf[16];
          CSIPacketAddress::CSIPacketAddress();
          CSIPacketAddress::operator=();
        }

LABEL_87:
        if (SHIBYTE(__p[2]) < 0)
        {
          v15 = __p[0];
LABEL_89:
          operator delete(v15);
        }
      }
    }

    if ((CSIPacketAddress::isZeroIP((a1 + 256)) & 1) == 0 || (CSIPacketAddress::isZeroIP((a1 + 328)) & 1) == 0)
    {
      isZeroIP = CSIPacketAddress::isZeroIP((a1 + 256));
      v46 = *(a1 + 72);
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
      if (isZeroIP)
      {
        if (v47)
        {
          *buf = 136315138;
          *&buf[4] = "onlineWithConfigInfo";
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s: IPv4Service: IPv4 address is empty", buf, 0xCu);
        }
      }

      else
      {
        if (v47)
        {
          CSIPacketAddress::operator std::string();
          v48 = buf[23] >= 0 ? buf : *buf;
          *v68 = 136315394;
          *&v68[4] = "onlineWithConfigInfo";
          *&v68[12] = 2080;
          *&v68[14] = v48;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s: IPv4Service: IPv4 address is %s", v68, 0x16u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        *(a1 + 620) |= 1u;
      }

      if (CSIPacketAddress::isZeroIP((a1 + 328)))
      {
        v49 = *(a1 + 72);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "onlineWithConfigInfo";
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I %s: IPv6Service: IPv6 address is empty", buf, 0xCu);
        }
      }

      else
      {
        v50 = CSIPacketAddress::maskToPrefix((a1 + 376));
        CSIPacketAddress::setPrefixLen((a1 + 328), v50);
        v51 = *(a1 + 72);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          CSIPacketAddress::operator std::string();
          v52 = buf[23] >= 0 ? buf : *buf;
          *v68 = 136315394;
          *&v68[4] = "onlineWithConfigInfo";
          *&v68[12] = 2080;
          *&v68[14] = v52;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I %s: IPv6Service: Original IPv6 address is %s", v68, 0x16u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        memset(buf, 0, 24);
        sub_10077AE30(buf);
        CSIPacketAddress::setIPv6InterfaceID((a1 + 328), buf);
        v53 = *(a1 + 72);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          CSIPacketAddress::operator std::string();
          v54 = (v68[23] & 0x80u) == 0 ? v68 : *v68;
          LODWORD(__p[0]) = 136315394;
          *(__p + 4) = "onlineWithConfigInfo";
          WORD2(__p[1]) = 2080;
          *(&__p[1] + 6) = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I %s: IPv6Service: Auto generated IPv6 address is %s", __p, 0x16u);
          if (v68[23] < 0)
          {
            operator delete(*v68);
          }
        }

        *(a1 + 620) |= 2u;
      }

      v55 = *(a1 + 616) & *(a1 + 620);
      *(a1 + 616) = v55;
      v56 = *(a1 + 72);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = asString();
        v58 = asString();
        *buf = 136315650;
        *&buf[4] = "onlineWithConfigInfo";
        *&buf[12] = 2080;
        *&buf[14] = v57;
        *&buf[22] = 2080;
        *&buf[24] = v58;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I %s: fIPFamilyRequested changed to %s; fIPFamilyConnected is %s", buf, 0x20u);
        v55 = *(a1 + 616);
      }

      if (v55)
      {
        v59 = *(a1 + 712);
        if ((v59 & 1) == 0)
        {
          *(a1 + 712) = v59 | 1;
          sub_100778F7C(a1);
        }
      }

      else
      {
        sub_10076B24C(a1, "empty fIPFamilyRequested when online");
      }
    }
  }
}

void sub_10077ACA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10077AD7C(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = *(a1 + 752);
  v3 = (*(*(a1 + 32) + 664))(a1 + 32);
  if (v2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2 != 0;
  }

  if ((*(*v1 + 672))(v1))
  {
    return v5 | 4u;
  }

  else
  {
    return v5;
  }
}

void sub_10077AE30(CSIPacketAddress *a1@<X8>)
{
  *v8 = 0;
  v9 = 0;
  v7.__padding_ = 0;
  sub_100344DA8(&v7);
  v2 = std::random_device::operator()(&v7);
  v3 = v2 + ((v2 / 0x7FFFFFFF) | ((v2 / 0x7FFFFFFF) << 31));
  if (v3 <= 1)
  {
    v3 = 1;
  }

  v6 = v3;
  v5 = -256;
  for (i = 8; i != 16; ++i)
  {
    v8[i] = sub_1007832D8(&v5, &v6, &v5);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  CSIPacketAddress::CSIPacketAddress(a1);
  CSIPacketAddress::setIPv6Address(a1, v8, 0x10uLL);
  std::random_device::~random_device(&v7);
}

uint64_t sub_10077AF4C(_DWORD *a1)
{
  v1 = a1[56];
  if (v1 == 5 || v1 == 3)
  {
    return (a1[154] & a1[155]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10077AF74(void *a1)
{
  v1 = (a1 + *(*a1 - 224));
  v2 = v1[56];
  if (v2 == 5 || v2 == 3)
  {
    return (v1[154] & v1[155]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10077B03C(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 792) = 1;
  *(v2 + 616) = *(a1 + 48);
  sub_10076A498(v2, 2);
  v3 = *(a1 + 40);

  return sub_100775FF4(v2, v3);
}

void sub_10077B094(PersonalitySpecificImpl *this, int a2)
{
  if ((*(this + 797) & 1) != 0 || a2 != 14 && a2 != 80005 && a2 != 24)
  {
    return;
  }

  __p = 0;
  v38 = 0;
  v39 = 0;
  PersonalitySpecificImpl::simSlot(this);
  PersonalityIdFromSlotIdEx(&__p);
  v3 = HIBYTE(v39);
  if (v39 < 0)
  {
    v3 = v38;
  }

  if (v3)
  {
    v40[0] = 0;
    v40[1] = 0;
    ServiceMap = Registry::getServiceMap(*(this + 10));
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
LABEL_16:
        (**v12)(v40, v12, &__p);
        if ((v13 & 1) == 0)
        {
          sub_100004A34(v11);
        }

        v14 = v40[0];
        if (v40[0])
        {
          v15 = *(this + 9);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "handleFatalErrorForUncertifiedCarriers";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: Uncertified carriers: disable wifiCalling from UI upon fatal errors", buf, 0xCu);
            v14 = v40[0];
          }

          v36 = 0;
          (*(*v14 + 32))(v14, 0, 0, &v36);
          sub_10001021C(&v36);
        }

        if (v40[1])
        {
          sub_100004A34(v40[1]);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_16;
  }

LABEL_24:
  v35 = 0;
  v16 = xpc_dictionary_create(0, 0, 0);
  v17 = v16;
  if (v16)
  {
    v35 = v16;
  }

  else
  {
    v17 = xpc_null_create();
    v35 = v17;
    if (!v17)
    {
      v18 = xpc_null_create();
      v17 = 0;
      goto LABEL_31;
    }
  }

  if (xpc_get_type(v17) == &_xpc_type_dictionary)
  {
    xpc_retain(v17);
    goto LABEL_32;
  }

  v18 = xpc_null_create();
LABEL_31:
  v35 = v18;
LABEL_32:
  xpc_release(v17);
  v33 = xpc_int64_create(106);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  ctu::cf::assign();
  *buf = *v40;
  v43 = v41;
  v19 = v40[0];
  if (v41 >= 0)
  {
    v19 = buf;
  }

  v32[0] = &v35;
  v32[1] = v19;
  sub_10000F688(v32, &v33, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v33);
  v33 = 0;
  *buf = 0;
  v20 = xpc_dictionary_create(0, 0, 0);
  if (v20 || (v20 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v20) == &_xpc_type_dictionary)
    {
      xpc_retain(v20);
      v21 = v20;
    }

    else
    {
      v21 = xpc_null_create();
    }
  }

  else
  {
    v21 = xpc_null_create();
    v20 = 0;
  }

  xpc_release(v20);
  *buf = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    *buf = xpc_null_create();
  }

  xpc_release(v21);
  v22 = Registry::getServiceMap(*(this + 10));
  v23 = v22;
  if (v24 < 0)
  {
    v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
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
  v40[0] = v24;
  v28 = sub_100009510(&v23[1].__m_.__sig, v40);
  if (!v28)
  {
    v29 = 0;
LABEL_55:
    std::mutex::unlock(v23);
    v30 = 0;
    v31 = 1;
    if (!v29)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  v29 = v28[3];
  v30 = v28[4];
  if (!v30)
  {
    goto LABEL_55;
  }

  atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v23);
  atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v30);
  v31 = 0;
  if (!v29)
  {
    goto LABEL_60;
  }

LABEL_56:
  v40[0] = v35;
  if (v35)
  {
    xpc_retain(v35);
  }

  else
  {
    v40[0] = xpc_null_create();
  }

  (*(*v29 + 40))(v29, 45, v40, buf);
  xpc_release(v40[0]);
LABEL_60:
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  xpc_release(*buf);
  xpc_release(v35);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }
}

void sub_10077B594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t object, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10077B6AC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "handleDataContextIPActivated";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v3 = sub_10077BFD8(a1);
  v4 = *(a1 + 72);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    *&buf[4] = "handleDataContextIPActivated";
    v6 = "#I %s: installIPSecConnection successful";
  }

  else
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    *&buf[4] = "handleDataContextIPActivated";
    v6 = "#I %s: installIPSecConnection failed";
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
LABEL_9:
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  v14 = a1 + 32;
  if (!v13)
  {
    std::mutex::unlock(v8);
    goto LABEL_24;
  }

  v16 = v13[3];
  v15 = v13[4];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v8);
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v15);
    if (!v16)
    {
LABEL_23:
      sub_100004A34(v15);
      goto LABEL_24;
    }
  }

  else
  {
    std::mutex::unlock(v8);
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  (*(*v16 + 1128))(buf, v16);
  v17 = *buf;
  if (*buf)
  {
    v18 = PersonalitySpecificImpl::simSlot(a1);
    v19 = (*(*v14 + 40))(a1 + 32);
    (*(*v17 + 16))(v17, v18, v19);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v15)
  {
    goto LABEL_23;
  }

LABEL_24:
  (*(*v14 + 440))(buf, a1 + 32);
  if (*buf)
  {
    (*(*v14 + 440))(&v54, a1 + 32);
    v20 = (v54->__vftable[1].__on_zero_shared)(v54, 1);
    if (v55)
    {
      sub_100004A34(v55);
    }
  }

  else
  {
    v20 = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v20)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    sub_10004EFD0(&v54, *(a1 + 720), *(a1 + 728), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 728) - *(a1 + 720)) >> 3));
    __p = 0;
    v52 = 0;
    v53 = 0;
    PersonalitySpecificImpl::simSlot(a1);
    PersonalityIdFromSlotIdEx(&__p);
    v21 = HIBYTE(v53);
    if (v53 < 0)
    {
      v21 = v52;
    }

    if (!v21)
    {
      v32 = *(a1 + 72);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "handleDataContextIPActivated";
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#N %s: No viable personality is found in PersonalityShop", buf, 0xCu);
      }

      goto LABEL_66;
    }

    memset(buf, 0, sizeof(buf));
    v49 = 0;
    v50 = 0;
    v22 = Registry::getServiceMap(*(a1 + 80));
    v23 = v22;
    if (v24 < 0)
    {
      v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
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
    *v59 = v24;
    v28 = sub_100009510(&v23[1].__m_.__sig, v59);
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
LABEL_44:
        (*(*v30 + 40))(&v49, v30, &__p);
        if ((v31 & 1) == 0)
        {
          sub_100004A34(v29);
        }

        if (v49)
        {
          (*(*v49 + 112))(v59);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          *buf = *v59;
          *&buf[16] = *&v59[16];
        }

        if (v50)
        {
          sub_100004A34(v50);
        }

        v33 = buf[23];
        v34 = buf[23];
        if ((buf[23] & 0x80u) != 0)
        {
          v33 = *&buf[8];
        }

        if (v33)
        {
          v35 = *(a1 + 72);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = *buf;
            if (v34 >= 0)
            {
              v36 = buf;
            }

            *v59 = 136315394;
            *&v59[4] = "handleDataContextIPActivated";
            *&v59[12] = 2080;
            *&v59[14] = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s: We have override pcscf address in carrier bundle '%s', using it", v59, 0x16u);
          }

          v37 = v54;
          v38 = v55;
          while (v38 != v37)
          {
            shared_weak_owners_high = SHIBYTE(v38[-1].__shared_weak_owners_);
            --v38;
            if (shared_weak_owners_high < 0)
            {
              operator delete(v38->__vftable);
            }
          }

          v55 = v37;
          sub_100005308(&v54, buf);
          LOBYTE(v34) = buf[23];
        }

        if ((v34 & 0x80) != 0)
        {
          operator delete(*buf);
        }

LABEL_66:
        v40 = v54;
        v41 = v55;
        v42 = *(a1 + 72);
        v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
        if (v40 == v41)
        {
          if (v43)
          {
            *buf = 136315138;
            *&buf[4] = "handleDataContextIPActivated";
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s: No proxy address found", buf, 0xCu);
          }
        }

        else
        {
          if (v43)
          {
            v44 = *(a1 + 796);
            *&buf[4] = "handleDataContextIPActivated";
            *buf = 136315650;
            if (v44)
            {
              v45 = " in handover";
            }

            else
            {
              v45 = "";
            }

            *&buf[12] = 2048;
            *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3);
            *&buf[22] = 2080;
            v58 = v45;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s: %lu Proxies%s. Posting event", buf, 0x20u);
          }

          sub_100356BE0(v14, buf);
          (*(**buf + 352))(*buf, 1, &v54, *(a1 + 796));
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }
        }

        if (SHIBYTE(v53) < 0)
        {
          operator delete(__p);
        }

        *buf = &v54;
        sub_1000087B4(buf);
        goto LABEL_79;
      }
    }

    else
    {
      v30 = 0;
    }

    std::mutex::unlock(v23);
    v29 = 0;
    v31 = 1;
    goto LABEL_44;
  }

LABEL_79:
  sub_100009970(a1 + 688, *(a1 + 696));
  *(a1 + 688) = a1 + 696;
  *(a1 + 696) = 0u;
  sub_100356BE0(v14, buf);
  v46 = *buf;
  (*(*a1 + 16))(&v47, a1);
  (*(*v46 + 144))(v46, 1, &v47);
  if (v48)
  {
    sub_100004A34(v48);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_10077BED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, char *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  __p = &a19;
  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_10077BFD8(uint64_t a1)
{
  v2 = (a1 + 200);
  if (!*(a1 + 200) && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_10177D2C4()))
  {
    __TUAssertTrigger("fIPSecInterface");
  }

  if (!*(a1 + 184))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 240), @"OutgoingInterface");
  v4 = Value;
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID() && ((*(**v2 + 56))(*v2, v4) & 1) == 0)
    {
      v15 = *(a1 + 72);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "installIPSecConnection";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: VirtualInterface setDelegateInterface failed", buf, 0xCu);
      }

      return 0;
    }
  }

  if (CSIPacketAddress::isZeroIP((a1 + 256)))
  {
    goto LABEL_40;
  }

  v45 = 0;
  CSIPacketAddress::operator std::string();
  if (SHIBYTE(v44) < 0)
  {
    sub_100005F2C(__p, v43[0], v43[1]);
  }

  else
  {
    *__p = *v43;
    v48 = v44;
  }

  v46 = 0;
  if (SHIBYTE(v48) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v48;
  }

  v49 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v46;
    v46 = v49;
    v38[0] = v6;
    sub_100005978(v38);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v45 = v46;
  v46 = 0;
  sub_100005978(&v46);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  v42 = 0;
  CSIPacketAddress::operator std::string();
  if (SHIBYTE(v41) < 0)
  {
    sub_100005F2C(__p, v40[0], v40[1]);
  }

  else
  {
    *__p = *v40;
    v48 = v41;
  }

  v46 = 0;
  if (SHIBYTE(v48) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v48;
  }

  v49 = 0;
  if (ctu::cf::convert_copy())
  {
    v7 = v46;
    v46 = v49;
    v38[0] = v7;
    sub_100005978(v38);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v42 = v46;
  v46 = 0;
  sub_100005978(&v46);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if ((*(**v2 + 64))(*v2, v45, v42))
  {
    sub_100005978(&v42);
    sub_100005978(&v45);
LABEL_40:
    if (CSIPacketAddress::isZeroIP((a1 + 328)))
    {
      v8 = kCFAllocatorDefault;
      goto LABEL_81;
    }

    v45 = 0;
    CSIPacketAddress::operator std::string();
    if (SHIBYTE(v37) < 0)
    {
      sub_100005F2C(__p, v36[0], v36[1]);
    }

    else
    {
      *__p = *v36;
      v48 = v37;
    }

    v46 = 0;
    if (SHIBYTE(v48) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v48;
    }

    v49 = 0;
    v8 = kCFAllocatorDefault;
    if (ctu::cf::convert_copy())
    {
      v16 = v46;
      v46 = v49;
      v38[0] = v16;
      sub_100005978(v38);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v45 = v46;
    v46 = 0;
    sub_100005978(&v46);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36[0]);
    }

    v42 = 0;
    CSIPacketAddress::operator std::string();
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(__p, v34[0], v34[1]);
    }

    else
    {
      *__p = *v34;
      v48 = v35;
    }

    v46 = 0;
    if (SHIBYTE(v48) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v48;
    }

    v49 = 0;
    if (ctu::cf::convert_copy())
    {
      v17 = v46;
      v46 = v49;
      v38[0] = v17;
      sub_100005978(v38);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v42 = v46;
    v46 = 0;
    sub_100005978(&v46);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    if ((*(**v2 + 64))(*v2, v45, v42))
    {
      sub_100005978(&v42);
      sub_100005978(&v45);
LABEL_81:
      __p[0] = 0;
      Mutable = CFArrayCreateMutable(v8, 0, &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        v19 = __p[0];
        __p[0] = Mutable;
        *buf = v19;
        sub_1000279DC(buf);
        v20 = *(a1 + 280);
        v21 = *(a1 + 288);
        while (v20 != v21)
        {
          sub_10077E9C4(__p[0], v20);
          v20 = (v20 + 24);
        }

        v22 = *(a1 + 352);
        v23 = *(a1 + 360);
        while (v22 != v23)
        {
          sub_10077E9C4(__p[0], v22);
          v22 = (v22 + 24);
        }

        if (CFArrayGetCount(__p[0]) >= 1)
        {
          v24 = *(a1 + 72);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "installIPSecConnection";
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s: VirtualInterface setDNSServers with dnses", buf, 0xCu);
          }

          v38[0] = "installIPSecConnection";
          *buf = off_101E7C308;
          *&buf[8] = a1;
          *&buf[16] = v38;
          v51 = buf;
          logger::CFTypeRefLogger();
          sub_100007E44(buf);
          if (((*(**v2 + 72))(*v2, __p[0]) & 1) == 0)
          {
            v32 = *(a1 + 72);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "installIPSecConnection";
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s: VirtualInterface setDNSServers failed with dnses", buf, 0xCu);
            }

            v38[0] = "installIPSecConnection";
            *buf = off_101E7C388;
            *&buf[8] = a1;
            *&buf[16] = v38;
            v51 = buf;
            logger::CFTypeRefLogger();
            sub_100007E44(buf);
            goto LABEL_116;
          }
        }
      }

      if ((*(**v2 + 80))(*v2, 1))
      {
        if ((*(**v2 + 40))())
        {
          v25 = 1;
LABEL_117:
          sub_1000279DC(__p);
          return v25;
        }

        v26 = *(a1 + 72);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "installIPSecConnection";
          v27 = "#I %s: VirtualInterface updateAdHocService failed";
          goto LABEL_112;
        }
      }

      else
      {
        v26 = *(a1 + 72);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "installIPSecConnection";
          v27 = "#I %s: VirtualInterface setRankNever failed";
LABEL_112:
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
        }
      }

LABEL_116:
      v25 = 0;
      goto LABEL_117;
    }

    v9 = *(a1 + 72);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_108;
    }

    CSIPacketAddress::operator std::string();
    v28 = SHIBYTE(v48);
    v29 = __p[0];
    CSIPacketAddress::operator std::string();
    v30 = __p;
    if (v28 < 0)
    {
      v30 = v29;
    }

    if (v39 >= 0)
    {
      v31 = v38;
    }

    else
    {
      v31 = v38[0];
    }

    *buf = 136315650;
    *&buf[4] = "installIPSecConnection";
    *&buf[12] = 2080;
    *&buf[14] = v30;
    *&buf[22] = 2080;
    v51 = v31;
    v14 = "#I %s: VirtualInterface addAddress for v6 with (%s, %s) failed";
    goto LABEL_104;
  }

  v9 = *(a1 + 72);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    v10 = SHIBYTE(v48);
    v11 = __p[0];
    CSIPacketAddress::operator std::string();
    v12 = __p;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if (v39 >= 0)
    {
      v13 = v38;
    }

    else
    {
      v13 = v38[0];
    }

    *buf = 136315650;
    *&buf[4] = "installIPSecConnection";
    *&buf[12] = 2080;
    *&buf[14] = v12;
    *&buf[22] = 2080;
    v51 = v13;
    v14 = "#I %s: VirtualInterface addAddress for v4 with (%s, %s) failed";
LABEL_104:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v14, buf, 0x20u);
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_108:
  sub_100005978(&v42);
  sub_100005978(&v45);
  return 0;
}

void sub_10077C9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, const void *a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, const void *a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a30);
  sub_100005978(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_10077CB80(uint64_t a1, int a2)
{
  v3 = 400;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v4 = (*(a1 + 620) & 2) == 0;
      v3 = 328;
LABEL_11:
      if (v4)
      {
        v3 = 400;
      }

      return a1 + v3;
    }

    if (a2 != 3)
    {
      return a1 + v3;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return a1 + v3;
    }

    v4 = (*(a1 + 620) & 1) == 0;
    v3 = 256;
    goto LABEL_11;
  }

  v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    sub_10177D36C(v5, v6, v7);
  }

  v3 = 400;
  return a1 + v3;
}

uint64_t sub_10077CC80(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (*(a1 + 620))
        {
          return a1 + 280;
        }

        goto LABEL_12;
      }

      return sGetEmptyAddrs();
    }

LABEL_8:
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_10177D36C(v3, v4, v5);
    }

    return sGetEmptyAddrs();
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      return sGetEmptyAddrs();
    }

    goto LABEL_8;
  }

  if ((*(a1 + 620) & 2) == 0)
  {
LABEL_12:

    return sGetEmptyAddrs();
  }

  return a1 + 352;
}

void sub_10077CD2C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = "";
  *(a1 + 16) = "";
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = 0;
  *(a1 + 32) = 1;
}

void sub_10077CDFC(uint64_t a1, int a2, int a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  v20 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v20);
  if (!v12)
  {
    std::mutex::unlock(v7);
    return;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v7);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    if (!v14)
    {
LABEL_21:
      sub_100004A34(v13);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v7);
    if (!v14)
    {
      return;
    }
  }

  v20 = 0;
  v21 = 0;
  (*(*v14 + 1128))(&v20, v14);
  v15 = v20;
  if (v20)
  {
    v16 = a1 + 32;
    if (a2 && a3)
    {
      v17 = PersonalitySpecificImpl::simSlot(a1);
      v18 = (*(*v16 + 40))(a1 + 32);
      v19 = (*v15 + 32);
    }

    else
    {
      if (a2 || *(a1 + 745) != 1)
      {
        goto LABEL_18;
      }

      v17 = PersonalitySpecificImpl::simSlot(a1);
      v18 = (*(*v16 + 40))(a1 + 32);
      v19 = (*v15 + 40);
    }

    (*v19)(v15, v17, v18);
  }

LABEL_18:
  *(a1 + 745) = 0;
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v13)
  {
    goto LABEL_21;
  }
}

void sub_10077D040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077D0C0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 628);
    v4 = *(a1 + 624);
    *buf = 136315650;
    *&buf[4] = "checkIPConfigTimer";
    *&buf[12] = 1024;
    *&buf[14] = v3;
    *&buf[18] = 1024;
    *&buf[20] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: succeededFamily = %d, requestedFamily = %d", buf, 0x18u);
  }

  v5 = *(a1 + 628);
  v6 = *(a1 + 624);
  v7 = *(a1 + 72);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5 == v6)
  {
    if (v8)
    {
      *buf = 136315138;
      *&buf[4] = "checkIPConfigTimer";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: All requested ipFamilies are configed", buf, 0xCu);
    }

    v9 = *(a1 + 752);
    *(a1 + 752) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    sub_10077B6AC(a1);
    sub_100004AA0(buf, (a1 + 40));
    v11 = *buf;
    v10 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1174405120;
    v13[2] = sub_10077D3A4;
    v13[3] = &unk_101E7A658;
    v13[4] = a1;
    v13[5] = v11;
    v14 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = 0;
    v16 = 0;
    sub_100004AA0(&v15, (a1 + 40));
    v12 = *(a1 + 56);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_100782608;
    v18 = &unk_101E7C248;
    v20 = v15;
    v21 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v13;
    dispatch_async(v12, buf);
    if (v21)
    {
      sub_100004A34(v21);
    }

    if (v16)
    {
      sub_100004A34(v16);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  else if (v8)
  {
    *buf = 136315138;
    *&buf[4] = "checkIPConfigTimer";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: still waiting for another IPFamily's config", buf, 0xCu);
  }
}

void sub_10077D398(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10077D3A4(void *a1)
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
        sub_100356BE0(v3 + 32, &v8);
        v6 = v8;
        v7 = otherContextType();
        (*(*v6 + 344))(v6, v7);
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10077D47C(uint64_t a1, CSIPacketAddress *a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315138;
    *&__p[4] = "ipv6ServiceUp";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: start", __p, 0xCu);
  }

  if ((~*(a1 + 712) & 0xFLL) == 0)
  {
    if (*(a1 + 752))
    {
      if ((CSIPacketAddress::isZeroIP(a2) & 1) == 0)
      {
        CSIPacketAddress::operator=();
      }

      v5 = *(a1 + 72);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        CSIPacketAddress::operator std::string();
        if (v9 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = *__p;
        }

        *buf = 136315394;
        v11 = "ipv6ServiceUp";
        v12 = 2080;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: IPv6 Interface is up with address %s", buf, 0x16u);
        if (v9 < 0)
        {
          operator delete(*__p);
        }
      }

      *(a1 + 628) |= 2u;
      sub_10077D0C0(a1);
    }

    else
    {
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315138;
        *&__p[4] = "ipv6ServiceUp";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: IPv6 has configured or fIPConfigTimer has been triggered already", __p, 0xCu);
      }
    }
  }
}

void sub_10077D670(uint64_t a1, CSIPacketAddress *a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315138;
    *&__p[4] = "ipv4ServiceUp";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: start", __p, 0xCu);
  }

  if ((~*(a1 + 712) & 0xFLL) == 0)
  {
    if (*(a1 + 752))
    {
      if ((CSIPacketAddress::isZeroIP(a2) & 1) == 0)
      {
        CSIPacketAddress::operator=();
      }

      v5 = *(a1 + 72);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        CSIPacketAddress::operator std::string();
        if (v9 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = *__p;
        }

        *buf = 136315394;
        v11 = "ipv4ServiceUp";
        v12 = 2080;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: IPv4 Interface is up with address %s", buf, 0x16u);
        if (v9 < 0)
        {
          operator delete(*__p);
        }
      }

      *(a1 + 628) |= 1u;
      sub_10077D0C0(a1);
    }

    else
    {
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315138;
        *&__p[4] = "ipv4ServiceUp";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: IPv4 has configured or fIPv4ConfigTimer has been triggered already", __p, 0xCu);
      }
    }
  }
}

uint64_t sub_10077D918(uint64_t a1)
{
  v2 = a1 + 200;
  if (!*(a1 + 200) && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_10177D3F0()))
  {
    __TUAssertTrigger("fIPSecInterface");
  }

  if (*(a1 + 184) && *(a1 + 192))
  {
    v3 = *(a1 + 432);
    if (v3)
    {
      theArray = 0;
      *buf = CFDictionaryGetValue(v3, @"TrafficSelectorsLocal");
      sub_1001FA5E0(&theArray, buf);
      v70 = 0;
      *buf = CFDictionaryGetValue(*(a1 + 432), @"TrafficSelectorsRemote");
      sub_1001FA5E0(&v70, buf);
      if (theArray && v70)
      {
        Count = CFArrayGetCount(theArray);
        v5 = CFArrayGetCount(v70);
        if (Count)
        {
          v6 = v5;
          if (v5)
          {
            v7 = *(a1 + 216);
            if (!v7)
            {
              sub_1006FB7A0();
            }

            (*(*v7 + 16))(v7);
            v8 = CFDictionaryGetValue(*(a1 + 240), @"RemoteAddress");
            v9 = v8;
            if (v8)
            {
              v10 = CFGetTypeID(v8);
              if (v10 == CFStringGetTypeID())
              {
                v11 = v9;
              }

              else
              {
                v11 = 0;
              }
            }

            else
            {
              v11 = 0;
            }

            Mutable = 0;
            Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            v75 = 0;
            v75 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            theDict = 0;
            v16 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            theDict = v16;
            if (v11 && Mutable && v75 && v16)
            {
              CFDictionarySetValue(v16, @"ConditionType", @"RemoteAddressSubnet");
              CFDictionarySetValue(theDict, @"Address", v11);
              CFArrayAppendValue(Mutable, theDict);
              CFDictionarySetValue(v75, @"Result", @"Skip");
              v17 = v75;
              __p[0] = 0;
              *buf = 0;
              v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
              if (v18)
              {
                v19 = __p[0];
                __p[0] = v18;
                *buf = v19;
                sub_100029A48(buf);
              }

              value = __p[0];
              __p[0] = 0;
              sub_100029A48(__p);
              CFDictionarySetValue(v17, @"SkipOrder", value);
              sub_100029A48(&value);
              v20 = *(a1 + 72);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "installFirstChildSAPolicies";
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s: NEPolicy to add:", buf, 0xCu);
                v20 = *(a1 + 72);
              }

              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "installFirstChildSAPolicies";
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s: conditionsArray:", buf, 0xCu);
              }

              __p[0] = "installFirstChildSAPolicies";
              *buf = off_101E7C408;
              *&buf[8] = a1;
              v78 = __p;
              v79 = buf;
              logger::CFTypeRefLogger();
              sub_100007E44(buf);
              v21 = *(a1 + 72);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "installFirstChildSAPolicies";
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: resultDictionary:", buf, 0xCu);
              }

              __p[0] = "installFirstChildSAPolicies";
              *buf = off_101E7C488;
              *&buf[8] = a1;
              v78 = __p;
              v79 = buf;
              logger::CFTypeRefLogger();
              sub_100007E44(buf);
              (*(**(a1 + 216) + 32))(*(a1 + 216), 10, Mutable, v75, 0);
              sub_1000296E0(&theDict);
              sub_1000296E0(&v75);
              v22 = sub_1000279DC(&Mutable);
              if (capabilities::ct::getRadioModuleType(v22) == 2 && Count >= 1)
              {
                for (i = 0; i != Count; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
                  v25 = ValueAtIndex;
                  if (ValueAtIndex)
                  {
                    v26 = CFGetTypeID(ValueAtIndex);
                    if (v26 == CFDictionaryGetTypeID())
                    {
                      v27 = CFDictionaryGetValue(v25, @"TSProtocol");
                      v28 = v27;
                      if (v27 && (v29 = CFGetTypeID(v27), v29 == CFNumberGetTypeID()))
                      {
                        *buf = 0;
                        ctu::cf::assign(buf, v28, v30);
                        v62 = *buf;
                      }

                      else
                      {
                        v62 = 0;
                      }

                      v31 = CFDictionaryGetValue(v25, @"TSType");
                      v32 = v31;
                      if (v31)
                      {
                        v33 = CFGetTypeID(v31);
                        v34 = v33 == CFStringGetTypeID() ? v32 : 0;
                        cf1 = v34;
                      }

                      else
                      {
                        cf1 = 0;
                      }

                      v35 = CFDictionaryGetValue(v25, @"TSStartAddress");
                      v36 = v35;
                      if (v35)
                      {
                        v37 = CFGetTypeID(v35);
                        if (v37 == CFStringGetTypeID() && cf1 && v6 >= 1)
                        {
                          for (j = 0; j != v6; ++j)
                          {
                            v39 = CFArrayGetValueAtIndex(v70, j);
                            v40 = v39;
                            if (v39)
                            {
                              v41 = CFGetTypeID(v39);
                              if (v41 == CFDictionaryGetTypeID())
                              {
                                v42 = CFDictionaryGetValue(v40, @"TSProtocol");
                                v43 = v42;
                                if (v42 && (v44 = CFGetTypeID(v42), v44 == CFNumberGetTypeID()))
                                {
                                  *buf = 0;
                                  ctu::cf::assign(buf, v43, v45);
                                  v46 = *buf;
                                }

                                else
                                {
                                  v46 = 0;
                                }

                                v47 = CFDictionaryGetValue(v40, @"TSType");
                                v48 = v47;
                                if (v47)
                                {
                                  v49 = CFGetTypeID(v47);
                                  if (v49 == CFStringGetTypeID() && v62 == v46 && CFEqual(cf1, v48))
                                  {
                                    value = 0;
                                    v50 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                                    v68 = 0;
                                    value = v50;
                                    v51 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                                    v67 = 0;
                                    v68 = v51;
                                    v52 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                                    v66 = 0;
                                    v67 = v52;
                                    (*(**v2 + 88))(v64);
                                    if (SHIBYTE(v65) < 0)
                                    {
                                      sub_100005F2C(__p, v64[0], v64[1]);
                                    }

                                    else
                                    {
                                      *__p = *v64;
                                      v74 = v65;
                                    }

                                    theDict = 0;
                                    if (SHIBYTE(v74) < 0)
                                    {
                                      sub_100005F2C(buf, __p[0], __p[1]);
                                    }

                                    else
                                    {
                                      *buf = *__p;
                                      v78 = v74;
                                    }

                                    v75 = 0;
                                    if (ctu::cf::convert_copy())
                                    {
                                      v53 = theDict;
                                      theDict = v75;
                                      Mutable = v53;
                                      sub_100005978(&Mutable);
                                    }

                                    if (SHIBYTE(v78) < 0)
                                    {
                                      operator delete(*buf);
                                    }

                                    v66 = theDict;
                                    theDict = 0;
                                    sub_100005978(&theDict);
                                    if (SHIBYTE(v74) < 0)
                                    {
                                      operator delete(__p[0]);
                                    }

                                    if (SHIBYTE(v65) < 0)
                                    {
                                      operator delete(v64[0]);
                                    }

                                    if (value && v68 && v67 && v66)
                                    {
                                      v54 = CFDictionaryGetValue(*(a1 + 240), @"InternalInterface");
                                      v55 = v54;
                                      if (v54 && (v56 = CFGetTypeID(v54), v56 == CFStringGetTypeID()))
                                      {
                                        CFDictionarySetValue(v67, @"ConditionType", @"BoundInterface");
                                        v57 = @"InterfaceName";
                                      }

                                      else
                                      {
                                        CFDictionarySetValue(v67, @"ConditionType", @"LocalAddressSubnet");
                                        v57 = @"Address";
                                        v55 = v36;
                                      }

                                      CFDictionarySetValue(v67, v57, v55);
                                      CFArrayAppendValue(value, v67);
                                      CFDictionarySetValue(v68, @"Result", @"IPTunnel");
                                      CFDictionarySetValue(v68, @"TunnelInterface", v66);
                                      v58 = *(a1 + 72);
                                      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 136315138;
                                        *&buf[4] = "installFirstChildSAPolicies";
                                        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I %s: NEPolicy to add:", buf, 0xCu);
                                        v58 = *(a1 + 72);
                                      }

                                      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 136315138;
                                        *&buf[4] = "installFirstChildSAPolicies";
                                        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I %s: conditionsArray:", buf, 0xCu);
                                      }

                                      __p[0] = "installFirstChildSAPolicies";
                                      *buf = off_101E7C508;
                                      *&buf[8] = a1;
                                      v78 = __p;
                                      v79 = buf;
                                      logger::CFTypeRefLogger();
                                      sub_100007E44(buf);
                                      v59 = *(a1 + 72);
                                      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 136315138;
                                        *&buf[4] = "installFirstChildSAPolicies";
                                        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I %s: resultDictionary:", buf, 0xCu);
                                      }

                                      __p[0] = "installFirstChildSAPolicies";
                                      *buf = off_101E7C588;
                                      *&buf[8] = a1;
                                      v78 = __p;
                                      v79 = buf;
                                      logger::CFTypeRefLogger();
                                      sub_100007E44(buf);
                                      (*(**(a1 + 216) + 32))(*(a1 + 216), 100, value, v68, 0);
                                    }

                                    sub_100005978(&v66);
                                    sub_1000296E0(&v67);
                                    sub_1000296E0(&v68);
                                    sub_1000279DC(&value);
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

              (*(**(a1 + 216) + 24))(*(a1 + 216));
              v13 = 1;
              goto LABEL_106;
            }

            v60 = *(a1 + 72);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "installFirstChildSAPolicies";
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to create conditions and result", buf, 0xCu);
            }

            sub_1000296E0(&theDict);
            sub_1000296E0(&v75);
            sub_1000279DC(&Mutable);
LABEL_105:
            v13 = 0;
LABEL_106:
            sub_100010250(&v70);
            sub_100010250(&theArray);
            return v13;
          }
        }

        v14 = *(a1 + 72);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_105;
        }

        *buf = 136315138;
        *&buf[4] = "installFirstChildSAPolicies";
        v15 = "#I %s: Empty Local or Remote Traffic Selectors dictionary";
      }

      else
      {
        v14 = *(a1 + 72);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_105;
        }

        *buf = 136315138;
        *&buf[4] = "installFirstChildSAPolicies";
        v15 = "#I %s: No Local or Remote Traffic Selectors";
      }

      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      goto LABEL_105;
    }

    v12 = *(a1 + 72);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "installFirstChildSAPolicies";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: No Traffic Selectors dictionary", buf, 0xCu);
    }
  }

  return 0;
}

void sub_10077E628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, int a34, const void *a35, const void *a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  sub_100010250(&a35);
  sub_100010250(&a36);
  _Unwind_Resume(a1);
}

void sub_10077E784(void *a1)
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
          v8 = 136315138;
          v9 = "checkConnectedConditions_block_invoke";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: IPv4 fIPConfigTimer expired", &v8, 0xCu);
        }

        v7 = *(v3 + 752);
        *(v3 + 752) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        sub_10077B6AC(v3);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10077E8A4(void *a1)
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
          v8 = 136315138;
          v9 = "checkConnectedConditions_block_invoke";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: IPv4 or IPv6 fIPConfigTimer expired", &v8, 0xCu);
        }

        v7 = *(v3 + 752);
        *(v3 + 752) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        sub_10077B6AC(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10077E9C4(__CFArray *a1, CSIPacketAddress *this)
{
  result = CSIPacketAddress::isZeroIP(this);
  if ((result & 1) == 0)
  {
    CSIPacketAddress::operator std::string();
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
      v4 = v9;
      v9 = v14;
      v15 = v4;
      sub_100005978(&v15);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__dst);
    }

    v5 = v9;
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

    CFArrayAppendValue(a1, v5);
    return sub_100005978(&v8);
  }

  return result;
}

void sub_10077EAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10077EB54(void *a1, int a2)
{
  v4 = a1 + 4;
  if ((*(a1[4] + 136))(a1 + 4, 3))
  {
    v5 = a1[9];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "handOverToOtherOnline";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: Handover to other context, uninstall policies", &v8, 0xCu);
    }

    v6 = a1[27];
    if (v6)
    {
      a1[27] = 0;
      (*(*v6 + 8))(v6);
    }
  }

  return sub_100356AD4(v4, a2);
}

uint64_t sub_10077EC9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "handOverToOtherDone";
    v11 = 2080;
    v12 = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: Handover is done on %s", &v9, 0x16u);
  }

  v5 = *(a1 + 32);
  *(a1 + 792) = 0;
  if (!(*(v5 + 136))(a1 + 32, a2) || *(a1 + 746) != 1)
  {
    return sub_100356C44((a1 + 32), a2);
  }

  sub_10076B24C(a1, "Handover is done");
  (*(*(a1 + 32) + 648))(a1 + 32, *(a1 + 620), 0);
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString();
    v9 = 136315394;
    v10 = "handOverToOtherDone";
    v11 = 2080;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: Finish the deactivation on %s", &v9, 0x16u);
  }

  sub_100777D40(a1);
  sub_1000869A8(a1);
  return 1;
}

uint64_t sub_10077EE9C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "handOverToOtherFailed";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: Handover to BB Context failed", &v6, 0xCu);
  }

  if ((*(*(a1 + 32) + 136))(a1 + 32, 3) && *(a1 + 746) == 1)
  {
    if (*(a1 + 747) == 1)
    {
      v3 = *(a1 + 72);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "handOverToOtherFailed";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: Handover failed, tell SD to de-register", &v6, 0xCu);
      }

      sub_100083E9C(&event::data::controlServiceOnLowPowerModeTransition, 1);
    }

    else
    {
      sub_10076B24C(a1, "handover to cellular failed");
      v4 = *(a1 + 72);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "handOverToOtherFailed";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: Finish the deactivation", &v6, 0xCu);
      }

      sub_100777D40(a1);
    }
  }

  return 1;
}

uint64_t sub_10077F0B0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v6 = 136315394;
    v7 = "activationOfOtherDone";
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: Activation of other context is done for %s", &v6, 0x16u);
  }

  return 1;
}

uint64_t sub_10077F230(uint64_t a1)
{
  if (*(a1 + 224) == 2)
  {
    if (*(a1 + 792) & 1) != 0 || (*(a1 + 793))
    {
      v1 = 1;
    }

    else
    {
      v1 = *(a1 + 794);
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_10077F268(void *a1)
{
  v1 = a1 + *(*a1 - 512);
  if (*(v1 + 56) == 2)
  {
    if (v1[792] & 1) != 0 || (v1[793])
    {
      v2 = 1;
    }

    else
    {
      v2 = v1[794];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_10077F2BC(uint64_t a1)
{
  if (*(a1 + 192) == 2)
  {
    if (*(a1 + 760) & 1) != 0 || (*(a1 + 761))
    {
      v1 = 1;
    }

    else
    {
      v1 = *(a1 + 762);
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_10077F2F4(uint64_t a1, int a2, std::string **a3)
{
  v4 = a2;
  *(a1 + 744) = a2;
  v6 = (a1 + 664);
  if (v6 == a3)
  {
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_100008234(v6, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    if ((*(a1 + 744) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v7 = *(a1 + 768);
  *(a1 + 768) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

LABEL_7:
  if (*(a1 + 632) != 1)
  {
    v9 = *(a1 + 72);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v12 = asStringBool(*(a1 + 744));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
    v11 = "#I %s: Not over wifi, ignore wifi changed to %s.";
    goto LABEL_13;
  }

  v8 = *(a1 + 224);
  if (v8 == 5)
  {
    v9 = *(a1 + 72);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v10 = asStringBool(*(a1 + 744));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
    v11 = "#I %s: in process of MOBIKE handover, ignore wifi changed to %s.";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, &buf, 0x16u);
    return;
  }

  if (v8 & 0xFFFFFFFE) != 2 || (v4)
  {
    v19 = *(a1 + 663);
    if (v19 < 0)
    {
      if (!*(a1 + 648))
      {
        goto LABEL_90;
      }
    }

    else if (!*(a1 + 663))
    {
      goto LABEL_90;
    }

    v20 = (a1 + 640);
    v21 = *a3;
    v22 = a3[1];
    if (*a3 != v22)
    {
      if (v19 >= 0)
      {
        v23 = *(a1 + 663);
      }

      else
      {
        v23 = *(a1 + 648);
      }

      if (v19 >= 0)
      {
        v24 = (a1 + 640);
      }

      else
      {
        v24 = *(a1 + 640);
      }

      while (1)
      {
        size = HIBYTE(v21->__r_.__value_.__r.__words[2]);
        v26 = size;
        if ((size & 0x80u) != 0)
        {
          size = v21->__r_.__value_.__l.__size_;
        }

        if (size == v23)
        {
          v27 = v26 >= 0 ? v21 : v21->__r_.__value_.__r.__words[0];
          if (!memcmp(v27, v24, v23))
          {
            break;
          }
        }

        if (++v21 == v22)
        {
          v21 = v22;
          break;
        }
      }
    }

    v28 = *(a1 + 72);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = a1 + 640;
      if ((v19 & 0x80000000) != 0)
      {
        v29 = *v20;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: Looking for %s in updated interface list", &buf, 0x16u);
      v22 = a3[1];
    }

    if (v21 != v22)
    {
      v30 = *(a1 + 72);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_90;
      }

      if (*(a1 + 663) < 0)
      {
        v20 = *v20;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v20;
      v16 = "#I %s: Interface %s is still present in updated interface list";
      v17 = v30;
      v18 = 22;
      goto LABEL_52;
    }

    if (*(a1 + 184) && (*(a1 + 224) & 0xFFFFFFFE) == 2)
    {
      v31 = *(a1 + 72);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = a1 + 640;
        if (*(a1 + 663) < 0)
        {
          v32 = *v20;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s: interface %s is gone, treat it as network down", &buf, 0x16u);
      }

      sub_1007728F4(a1, *(a1 + 632));
    }

    v33 = *(a1 + 72);
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    v35 = *(a1 + 663);
    if (v34)
    {
      if (v35 < 0)
      {
        v20 = *v20;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v20;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s: Interface %s is gone, clear fActiveInterfaceName", &buf, 0x16u);
      LOBYTE(v35) = *(a1 + 663);
    }

    if ((v35 & 0x80) != 0)
    {
      **(a1 + 640) = 0;
      *(a1 + 648) = 0;
    }

    else
    {
      *(a1 + 640) = 0;
      *(a1 + 663) = 0;
    }
  }

  else
  {
    v13 = *(a1 + 72);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: wifi is gone", &buf, 0xCu);
    }

    v56[0] = _NSConcreteStackBlock;
    v56[1] = 0x40000000;
    v57 = sub_10077FC34;
    v58 = &unk_101E7A6E8;
    v59 = a1;
    if (capabilities::ct::getBasebandBootStrategy(v14) != 2)
    {
      goto LABEL_25;
    }

    if (*(a1 + 768))
    {
      v15 = *(a1 + 72);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_90;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
      v16 = "#I %s: the situation is already being handled in the timer";
      v17 = v15;
      v18 = 12;
LABEL_52:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &buf, v18);
      goto LABEL_90;
    }

    if (*(a1 + 224) != 3)
    {
LABEL_25:
      v57(v56);
      goto LABEL_90;
    }

    v36 = *(a1 + 72);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s: WiFi disconnected but iRat and IPsec session has not figured out that yet. Let them some time to take control.", &buf, 0xCu);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    sub_1005A61F8(&buf, ServiceMap);
    isWatch = GestaltUtilityInterface::isWatch(buf.__r_.__value_.__l.__data_);
    if (buf.__r_.__value_.__l.__size_)
    {
      sub_100004A34(buf.__r_.__value_.__l.__size_);
    }

    if (isWatch)
    {
      v39 = 2500000;
      v40 = *(a1 + 72);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = "handleWifiAvailable";
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s: Wifi down timer change to 2500ms", &buf, 0xCu);
      }
    }

    else
    {
      v39 = 500000;
    }

    Registry::getTimerService(&buf, *(a1 + 80));
    v41 = buf.__r_.__value_.__r.__words[0];
    sub_10000501C(__p, "WiFi down timer");
    v42 = *(a1 + 56);
    object = v42;
    if (v42)
    {
      dispatch_retain(v42);
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 0x40000000;
    v51[2] = sub_10077FC80;
    v51[3] = &unk_101E7A710;
    v51[4] = v56;
    v51[5] = a1;
    aBlock = _Block_copy(v51);
    sub_100D23364(v41, __p, 1, v39, &object, &aBlock);
    v43 = *v60;
    *v60 = 0;
    v44 = *(a1 + 768);
    *(a1 + 768) = v43;
    if (v44)
    {
      (*(*v44 + 8))(v44);
      v45 = *v60;
      *v60 = 0;
      if (v45)
      {
        (*(*v45 + 8))(v45);
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

    if (v55 < 0)
    {
      operator delete(__p[0]);
    }

    if (buf.__r_.__value_.__l.__size_)
    {
      sub_100004A34(buf.__r_.__value_.__l.__size_);
    }
  }

LABEL_90:
  if ((*(a1 + 663) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 648))
    {
      return;
    }
  }

  else if (*(a1 + 663))
  {
    return;
  }

  v46 = *(a1 + 664);
  v47 = *(a1 + 672);
  if (v46 != v47)
  {
    v48 = (a1 + 640);
    while (1)
    {
      memset(&buf, 0, sizeof(buf));
      if (*(v46 + 23) < 0)
      {
        sub_100005F2C(&buf, *v46, *(v46 + 1));
      }

      else
      {
        v49 = *v46;
        buf.__r_.__value_.__r.__words[2] = *(v46 + 2);
        *&buf.__r_.__value_.__l.__data_ = v49;
      }

      if (a1 + 696 == sub_100007A6C(a1 + 688, &buf))
      {
        break;
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v46 = (v46 + 24);
      if (v46 == v47)
      {
        return;
      }
    }

    std::string::operator=((a1 + 640), &buf);
    v50 = *(a1 + 72);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 663) < 0)
      {
        v48 = *v48;
      }

      *v60 = 136315394;
      *&v60[4] = "handleWifiAvailable";
      v61 = 2080;
      v62 = v48;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s: Interface is set to %s (1)", v60, 0x16u);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10077FBAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077FC34(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1007728F4(v1, *(v1 + 632));
  if (*(v1 + 663) < 0)
  {
    **(v1 + 640) = 0;
    *(v1 + 648) = 0;
  }

  else
  {
    *(v1 + 640) = 0;
    *(v1 + 663) = 0;
  }
}

uint64_t sub_10077FC80(uint64_t result)
{
  if (*(*(result + 40) + 224) == 3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_10077FCAC(uint64_t a1)
{
  v2 = a1 + 32;
  (*(*(a1 + 32) + 440))(&buf, a1 + 32);
  if (buf)
  {
    (*(*v2 + 440))(&v14, v2);
    v3 = (*(*v14 + 56))(v14, 1);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (v3 && *(a1 + 632) == 1)
  {
    v4 = *(a1 + 160);
    if (v4)
    {
      v4 = std::__shared_weak_count::lock(v4);
      v5 = v4;
      if (v4)
      {
        v4 = *(a1 + 152);
      }
    }

    else
    {
      v5 = 0;
    }

    if (((v4->__vftable[10].__on_zero_shared_weak)(v4) & 1) != 0 || !*(a1 + 184))
    {
      v9 = 0;
      if (!v5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v6 = *(a1 + 224);
      v7 = v6 > 5;
      v8 = 0x2Cu >> v6;
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      if (!v5)
      {
LABEL_22:
        if (v9)
        {
          v10 = *(a1 + 72);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = "handleEnterLowPower";
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: WoW is not supported, treat low power mode as network disconnected", &buf, 0xCu);
          }

          *(a1 + 747) = 1;
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 0x40000000;
          v13[2] = sub_10077FFF4;
          v13[3] = &unk_101E7A730;
          v13[4] = a1;
          v14 = 0;
          v15 = 0;
          sub_100004AA0(&v14, (a1 + 40));
          v11 = *(a1 + 56);
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 1174405120;
          v17 = sub_100782608;
          v18 = &unk_101E7C248;
          v20 = v14;
          v21 = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v19 = v13;
          dispatch_async(v11, &buf);
          if (v21)
          {
            sub_100004A34(v21);
          }

          if (v15)
          {
            sub_100004A34(v15);
          }
        }

        return *(a1 + 747);
      }
    }

    sub_100004A34(v5);
    goto LABEL_22;
  }

  return *(a1 + 747);
}

void sub_10077FFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100780028(void *a1)
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
        v6 = *(v3 + 784);
        *(v3 + 784) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v7 = *(v3 + 72);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315138;
          v9 = "handleExitLowPower_block_invoke";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: KeepaliveOnWakePostponeTimer expired", &v8, 0xCu);
        }

        sub_10008725C(v3, 0);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10078014C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (*(*(a1 + 32) + 48))(a1 + 32);
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ------- %s (iWLAN) -------", buf, 0xCu);
    v2 = *(a1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_100772ED4(*(a1 + 224));
    v5 = asStringBool(*(a1 + 795));
    v6 = asStringBool(*(a1 + 792));
    v7 = asStringBool(*(a1 + 793));
    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = v5;
    *&buf[22] = 2080;
    v39 = v6;
    v40 = 2080;
    v41 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fStatus = %s fIsEPDGResolutionFallbackEnabled = %s fInDNSResolving = %s fInWanIpAcqusition = %s", buf, 0x2Au);
    v2 = *(a1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = asStringBool(*(a1 + 744));
    v9 = asStringBool(*(a1 + 745));
    v10 = asStringBool(*(a1 + 746));
    v11 = asStringBool(*(a1 + 747));
    *buf = 136315906;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    *&buf[22] = 2080;
    v39 = v10;
    v40 = 2080;
    v41 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fWiFiAvailable = %s fWaitingForKeepAliveReponse = %s fInDisconnectingHandover = %s fInHandlingLowPowerForNoWow = %s", buf, 0x2Au);
    v2 = *(a1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    if ((buf[23] & 0x80u) == 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    *v36 = 136315138;
    v37 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPV4Address = %s", v36, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v2 = *(a1 + 72);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    v13 = (buf[23] & 0x80u) == 0 ? buf : *buf;
    *v36 = 136315138;
    v37 = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPV4NetMask = %s", v36, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v14 = *(a1 + 280);
  for (i = *(a1 + 288); v14 != i; v14 += 24)
  {
    v16 = *(a1 + 72);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      CSIPacketAddress::operator std::string();
      v17 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      *v36 = 136315138;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPV4Dns = %s", v36, 0xCu);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v18 = *(a1 + 72);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    if ((buf[23] & 0x80u) == 0)
    {
      v19 = buf;
    }

    else
    {
      v19 = *buf;
    }

    *v36 = 136315138;
    v37 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPV6Address = %s", v36, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v18 = *(a1 + 72);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    v20 = (buf[23] & 0x80u) == 0 ? buf : *buf;
    *v36 = 136315138;
    v37 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPV6NetMask = %s", v36, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v21 = *(a1 + 352);
  for (j = *(a1 + 360); v21 != j; v21 += 24)
  {
    v23 = *(a1 + 72);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      CSIPacketAddress::operator std::string();
      v24 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      *v36 = 136315138;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPV6Dns = %s", v36, 0xCu);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v25 = *(a1 + 72);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = asStringBool(*(a1 + 424));
    *buf = 136315138;
    *&buf[4] = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fWanIPAddrAcquired = %s", buf, 0xCu);
    v25 = *(a1 + 72);
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v27 = (a1 + 640);
    if (*(a1 + 663) < 0)
    {
      v27 = *v27;
    }

    *buf = 136315138;
    *&buf[4] = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fActiveInterfaceName = %s fActiveInterfaces = {", buf, 0xCu);
  }

  v28 = *(a1 + 664);
  for (k = *(a1 + 672); v28 != k; v28 = (v28 + 24))
  {
    memset(buf, 0, sizeof(buf));
    if (*(v28 + 23) < 0)
    {
      sub_100005F2C(buf, *v28, *(v28 + 1));
    }

    else
    {
      v30 = *v28;
      *&buf[16] = *(v28 + 2);
      *buf = v30;
    }

    v31 = *(a1 + 72);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      if ((buf[23] & 0x80u) == 0)
      {
        v32 = buf;
      }

      else
      {
        v32 = *buf;
      }

      *v36 = 136315138;
      v37 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t %s", v36, 0xCu);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v33 = *(a1 + 72);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = sub_10076CF88(a1);
    v35 = asStringBool(v34);
    *buf = 136315138;
    *&buf[4] = v35;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t isOverCellularXlat = %s", buf, 0xCu);
    v33 = *(a1 + 72);
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
  }

  sub_100357590(a1 + 32);
}

void sub_1007808A0(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if ((a2 & 1) != 0 || (v5 = std::__shared_weak_count::lock(*(a1 + 160)), v6 = (*(**(a1 + 152) + 520))(*(a1 + 152)), sub_100004A34(v5), v6))
  {
    v8 = *(a1 + 72);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "getNetworkInterface";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: Using iCloud/IPsec configuration", &v11, 0xCu);
    }

    v9 = *(a1 + 200);
    if (v9)
    {
      (*(*v9 + 88))(v9);
      return;
    }

    goto LABEL_11;
  }

  if (!capabilities::ct::supportsVoiceCall(v7))
  {
LABEL_11:
    v10 = *(a1 + 72);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "getNetworkInterface";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: No configuration found", &v11, 0xCu);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  sub_100357038(a3, a1 + 32);
}

void *sub_100780AC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    return (*(*v2 + 88))();
  }

  else
  {
    return sub_10000501C(a2, "");
  }
}

char *sub_100780B24@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[663] < 0)
  {
    return sub_100005F2C(a2, *(result + 80), *(result + 81));
  }

  *a2 = *(result + 40);
  *(a2 + 16) = *(result + 82);
  return result;
}

char *sub_100780B54@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[639] < 0)
  {
    return sub_100005F2C(a2, *(result + 77), *(result + 78));
  }

  *a2 = *(result + 616);
  *(a2 + 16) = *(result + 79);
  return result;
}

uint64_t sub_100780B84(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "suspendDataContext";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: start", &buf, 0xCu);
  }

  v3 = *(a1 + 224);
  if (v3 != 5 && v3 != 3)
  {
    return 0;
  }

  sub_100356BE0(a1 + 32, &buf);
  v5 = buf;
  v6 = *(a1 + 620);
  (*(*a1 + 16))(&v8, a1);
  (*(*v5 + 56))(v5, v6, 1, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  return 1;
}

void sub_100780CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100780D2C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "resumeDataContext";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v3 = *(a1 + 616);
  v4 = *(a1 + 620);
  if (v3 & v4)
  {
    sub_100356BE0(a1 + 32, buf);
    v5 = *buf;
    (*(*a1 + 16))(&v13, a1);
    v6 = (*(*v5 + 40))(v5, 1, 1, &v13, 0, 1);
    if (v14)
    {
      sub_100004A34(v14);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v6)
    {
      goto LABEL_16;
    }

    v3 = *(a1 + 616);
    v4 = *(a1 + 620);
  }

  if ((v3 & v4 & 2) != 0)
  {
    sub_100356BE0(a1 + 32, buf);
    v7 = *buf;
    (*(*a1 + 16))(&v11, a1);
    v6 = (*(*v7 + 40))(v7, 2, 1, &v11, 0, 1);
    if (v12)
    {
      sub_100004A34(v12);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v6)
    {
LABEL_16:
      v8 = *(a1 + 72);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = asString();
        v10 = asString();
        *buf = 136315906;
        *&buf[4] = "resumeDataContext";
        *&buf[12] = 2080;
        *&buf[14] = v9;
        v16 = 2080;
        v17 = v10;
        v18 = 1024;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: Error bringing interface online for %s err %s(%d)", buf, 0x26u);
      }

      (*(*a1 + 120))(a1, 25, "CommCenter");
    }
  }
}

void sub_100780FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100781068(void *a1, int a2)
{
  v2 = 0;
  v3 = a1 + *(*a1 - 160);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      goto LABEL_9;
    }

    if (a2 != 3)
    {
      return v2 & 1;
    }

LABEL_7:
    if (v3[72])
    {
      v2 = 1;
      return v2 & 1;
    }

LABEL_9:
    v2 = v3[73];
    return v2 & 1;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v2 = v3[72];
  }

  return v2 & 1;
}

void sub_10078116C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v4, 0, sizeof(v4));
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, v4);
  v5 = v4;
  sub_100128BB0(&v5);
}

void sub_1007811E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100128BB0(&a12);
  _Unwind_Resume(a1);
}

const void **sub_1007812D8(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_100029714(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_1000296E0(&v5);
  }

  return a1;
}

__n128 sub_1007813A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C050;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1007813D4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "startMOBIKEHandoverTo_block_invoke";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_1007814B0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E7C0B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

awd::metrics::CommCenterShortDeadPeerDetectionReport **sub_1007814FC(awd::metrics::CommCenterShortDeadPeerDetectionReport **a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 2) = a2;
  if (sub_10079D818(a2))
  {
    operator new();
  }

  return a1;
}

unsigned int *sub_1007815E4(unsigned int *a1)
{
  sub_100781640(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

unsigned int *sub_100781640(unsigned int *result)
{
  if (*result)
  {
    v1 = result;
    sub_1007816B8(result, result[2]);
    result = *v1;
    *v1 = 0;
    if (result)
    {
      v2 = *(*result + 8);

      return v2();
    }
  }

  return result;
}

void sub_1007816B8(uint64_t *a1, unsigned int a2)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10001C610(&v10);
  if (v10)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v6 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v7 = v6;
    if (v6)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (*(v8 + 32))
        {
          WISTimestamp = *(v8 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v6);
          *(v8 + 32) |= 1u;
          *(v8 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v7, WISTimestamp, *v7, v8);
        (*(*v8 + 8))(v8);
      }

      wis::WISServerConnection::SubmitMetric(v10, v7);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_100781798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100781854(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C0D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100781884(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "startIPSecConnection";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_100781960(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100781A20(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C150;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100781A50(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "startIPSecConnection";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_100781B2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100781B78(void *a1)
{
  *a1 = off_101E7C1D0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100781BC4(void *a1)
{
  *a1 = off_101E7C1D0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

__n128 sub_100781CAC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C1D0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

void sub_100781CF4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100781D04(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100781D44(void *a1, char *a2)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5 && a1[2])
    {
      v9[0] = 0;
      v9[1] = 0;
      sub_100004AA0(v9, (v3 + 40));
      operator new();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10177D498(v6, v7, v8);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

uint64_t sub_100781E94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100781EE0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = v2 + 32;
  (*(*(v2 + 32) + 440))(buf, v2 + 32);
  v4 = *buf;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v4)
  {
    (*(*v3 + 440))(buf, v3);
    v5 = (*(**buf + 280))(*buf, 1, 1, 0);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  else
  {
    v5 = 3;
  }

  if (v1[3])
  {
    v6 = *(v2 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "operator()";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: PduSessionId allocated. Resume TechDataContext activate", buf, 0xCu);
    }

    if (sub_10076D078(v2, v5, *(v1 + 8)))
    {
      *(v2 + 796) = *(v1 + 8);
      sub_10022D3B4(v2, 1);
      if (sub_10077009C(v2, v1[2]))
      {
        goto LABEL_29;
      }

      *(v2 + 592) = 80004;
      v7 = sub_1007775E4(v2, 80004);
      v8 = *(v2 + 72);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v2 + 592);
        v10 = asString();
        *buf = 67109634;
        *&buf[4] = v9;
        *&buf[8] = 2080;
        *&buf[10] = v10;
        *&buf[18] = 1024;
        *&buf[20] = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I TechDataContext::startIPSecConnection failed: fPDPMetricInfo.iWLanError=%d, errorCode=%s (%d)", buf, 0x18u);
      }

      sub_10076B24C(v2, v1[2]);
      sub_100356BE0(v3, &v28);
      v11 = v28;
      *buf = v7;
      *&buf[8] = "tech startIPSecConnection fail";
      *&buf[16] = "";
      v31 = 0;
      v32 = 0;
      v33 = 1;
      memset(v35, 0, sizeof(v35));
      v34 = 0;
      sub_10000501C(__p, "tech startIPSecConnection fail");
      (*(*v2 + 16))(&v24, v2);
      BYTE4(v22) = 0;
      LODWORD(v22) = 0;
      (*(*v11 + 152))(v11, v5, buf, __p, 0, 1, &v24, *(v2 + 592), 0x1388400000002, v22, a1);
    }

    else
    {
      *(v2 + 592) = 80007;
      v17 = sub_1007775E4(v2, 80007);
      v18 = *(v2 + 72);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(v2 + 592);
        v20 = asString();
        *buf = 67109634;
        *&buf[4] = v19;
        *&buf[8] = 2080;
        *&buf[10] = v20;
        *&buf[18] = 1024;
        *&buf[20] = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I TechDataContext::getSettings failed (1): fPDPMetricInfo.iWLanError=%d, errorCode=%s (%d)", buf, 0x18u);
      }

      sub_10076B24C(v2, "TechDataContext::getSettings failed");
      sub_100356BE0(v3, &v28);
      v21 = v28;
      *buf = v17;
      *&buf[8] = "tech activate getSettings fail";
      *&buf[16] = "";
      v31 = 0;
      v32 = 0;
      v33 = 1;
      memset(v35, 0, sizeof(v35));
      v34 = 0;
      sub_10000501C(__p, "tech activate getSettings fail");
      (*(*v2 + 16))(&v24, v2);
      BYTE4(v22) = 0;
      LODWORD(v22) = 0;
      (*(*v21 + 152))(v21, v5, buf, __p, 0, 1, &v24, *(v2 + 592), 0x1388700000002, v22, a1);
    }
  }

  else
  {
    *(v2 + 592) = 80004;
    v12 = sub_1007775E4(v2, 80004);
    v13 = *(v2 + 72);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v2 + 592);
      v15 = asString();
      *buf = 67109634;
      *&buf[4] = v14;
      *&buf[8] = 2080;
      *&buf[10] = v15;
      *&buf[18] = 1024;
      *&buf[20] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I TechDataContext::allocatePduSessionId failed: fPDPMetricInfo.iWLanError=%d, errorCode=%s (%d)", buf, 0x18u);
    }

    sub_10076B24C(v2, v1[2]);
    sub_100356BE0(v3, &v28);
    v16 = v28;
    *buf = v12;
    *&buf[8] = "tech allocatePduSessionId fail";
    *&buf[16] = "";
    v31 = 0;
    v32 = 0;
    v33 = 1;
    memset(v35, 0, sizeof(v35));
    v34 = 0;
    sub_10000501C(__p, "tech allocatePduSessionId fail");
    (*(*v2 + 16))(&v24, v2);
    BYTE4(v22) = 0;
    LODWORD(v22) = 0;
    (*(*v16 + 152))(v16, v5, buf, __p, 0, 1, &v24, *(v2 + 592), 0x1388400000002, v22, a1);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&v35[4])
  {
    sub_100004A34(*&v35[4]);
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

LABEL_29:
  operator delete();
}

void sub_100782568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    sub_100004A34(a28);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  operator delete();
}

uint64_t sub_100782618(uint64_t result, uint64_t a2)
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

void sub_100782634(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

__n128 sub_1007826B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C288;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1007826E8(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "ikeCallBackHandler";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_1007827C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100782884(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C308;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1007828B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "installIPSecConnection";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_100782990(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100782A50(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C388;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100782A80(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "installIPSecConnection";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_100782B5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100782C1C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C408;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100782C4C(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "installFirstChildSAPolicies";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_100782D28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100782DE8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C488;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100782E18(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "installFirstChildSAPolicies";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_100782EF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100782FB4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C508;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100782FE4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "installFirstChildSAPolicies";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_1007830C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100783180(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7C588;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1007831B0(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "installFirstChildSAPolicies";
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: %s", &v5, 0x2Au);
  }
}

uint64_t sub_10078328C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007832D8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  LODWORD(result) = a3[1];
  v6 = result - *a3;
  if (v6)
  {
    v13 = v3;
    v14 = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      sub_100783380(v11, a2, 0x20uLL);
      LOBYTE(result) = sub_100783474(v11);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 31;
      v12 = 0;
      memset(&v11[1], 0, 32);
      if (((v7 << v9) & 0x7FFFFFFF) != 0)
      {
        v10 = 32;
      }

      v11[0] = 0uLL;
      sub_100783380(v11, a2, v10 - v9);
      do
      {
        LODWORD(result) = sub_100783474(v11);
      }

      while (result >= v7);
      LOBYTE(result) = *a3 + result;
    }
  }

  return result;
}

uint64_t sub_100783380(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  LODWORD(v5) = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x20)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
  }

  *(result + 40) = v5;
  if (v5 / v3 < (v5 ^ 0x7FFFFFFE))
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x1F)
    {
      *(result + 40) = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      goto LABEL_15;
    }

    *(result + 40) = (-1 << v4) & 0x7FFFFFFE;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x1E)
  {
LABEL_15:
    v8 = -v4;
    v7 = -1;
    *(result + 44) = 0;
    *(result + 48) = 0xFFFFFFFF >> v8;
    goto LABEL_16;
  }

  v6 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v6 = 0;
  }

  *(result + 44) = 0x3FFFFFFFu >> v4 << (v4 + 1);
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> ~v4;
LABEL_16:
  *(result + 52) = v7;
  return result;
}

uint64_t sub_100783474(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0;
    LODWORD(result) = 0;
    v5 = *(a1 + 16);
    v6 = **a1;
    do
    {
      do
      {
        v7 = v6 / 0xADC8;
        v8 = 48271 * (v6 % 0xADC8);
        v7 *= 3399;
        v9 = v8 >= v7;
        v10 = v8 - v7;
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0x7FFFFFFF;
        }

        v6 = v11 + v10;
      }

      while (v6 - 1 >= *(a1 + 40));
      v12 = result << v5;
      if (v5 >= 0x20)
      {
        v12 = 0;
      }

      result = v12 + (*(a1 + 48) & (v6 - 1));
      ++v3;
    }

    while (v3 != v2);
    **a1 = v6;
  }

  else
  {
    result = 0;
  }

  v13 = *(a1 + 24);
  if (v2 < v13)
  {
    v14 = *a1;
    v15 = *(a1 + 44);
    v16 = *(a1 + 16);
    v17 = *(a1 + 52);
    v18 = *v14;
    while (1)
    {
      v19 = v18 / 0xADC8;
      v20 = 48271 * (v18 % 0xADC8);
      v19 *= 3399;
      v9 = v20 >= v19;
      v21 = v20 - v19;
      if (v9)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0x7FFFFFFF;
      }

      v18 = v22 + v21;
      if (v18 - 1 < v15)
      {
        v23 = result << (v16 + 1);
        if (v16 >= 0x1F)
        {
          v23 = 0;
        }

        result = v23 + (v17 & (v18 - 1));
        if (++v2 == v13)
        {
          break;
        }
      }
    }

    *v14 = v18;
  }

  return result;
}

uint64_t sub_10078359C(uint64_t a1, void *a2, uint64_t a3, __int128 *a4, uint64_t a5, const std::string *a6, __int128 *a7, __int128 *a8, uint64_t a9, uint64_t a10)
{
  *a1 = *a2;
  v16 = a2[1];
  *(a1 + 8) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10078B54C((a1 + 16), a3);
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 72), *a4, *(a4 + 1));
  }

  else
  {
    v17 = *a4;
    *(a1 + 88) = *(a4 + 2);
    *(a1 + 72) = v17;
  }

  if (*(a4 + 47) < 0)
  {
    sub_100005F2C((a1 + 96), *(a4 + 3), *(a4 + 4));
  }

  else
  {
    v18 = *(a4 + 24);
    *(a1 + 112) = *(a4 + 5);
    *(a1 + 96) = v18;
  }

  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 120) = a5;
  *(a1 + 144) = 0;
  if (*(a7 + 23) < 0)
  {
    sub_100005F2C((a1 + 152), *a7, *(a7 + 1));
  }

  else
  {
    v19 = *a7;
    *(a1 + 168) = *(a7 + 2);
    *(a1 + 152) = v19;
  }

  if (*(a8 + 23) < 0)
  {
    sub_100005F2C((a1 + 176), *a8, *(a8 + 1));
  }

  else
  {
    v20 = *a8;
    *(a1 + 192) = *(a8 + 2);
    *(a1 + 176) = v20;
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_100034C50((a1 + 200), *a9, *(a9 + 8), *(a9 + 8) - *a9);
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_100034C50((a1 + 224), *a10, *(a10 + 8), *(a10 + 8) - *a10);
  sub_10000501C(__p, "Content-Type");
  v26 = __p;
  v21 = sub_100416DA4((a1 + 128), __p, &unk_101802C98, &v26);
  sub_100016890((v21 + 56), "multipart/form-data;boundary=boundary");
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "Cookie");
  v26 = __p;
  v22 = sub_100416DA4((a1 + 128), __p, &unk_101802C98, &v26);
  std::string::operator=((v22 + 56), a6);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1007837C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 175) < 0)
  {
    operator delete(*(v16 + 24));
  }

  sub_1000DD0AC(v16, *v17);
  sub_1000D6F38(v15 + 72);
  sub_10038E598(v15 + 16);
  v19 = *(v15 + 8);
  if (v19)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007838A0(uint64_t a1, void *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v9 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = a3;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 176), *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(a1 + 192) = *(a4 + 2);
    *(a1 + 176) = v10;
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_100034C50((a1 + 200), *a5, *(a5 + 8), *(a5 + 8) - *a5);
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_100034C50((a1 + 224), *a6, *(a6 + 8), *(a6 + 8) - *a6);
  sub_10000501C(__p, "Content-Type");
  v15 = __p;
  v11 = sub_100416DA4((a1 + 128), __p, &unk_101802C98, &v15);
  sub_100016890((v11 + 56), "multipart/form-data;boundary=boundary");
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_100783A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 175) < 0)
  {
    operator delete(*v19);
  }

  sub_1000DD0AC(v18, *(v15 + 136));
  sub_1000D6F38(v17);
  sub_10038E598(v16);
  v21 = *(v15 + 8);
  if (v21)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void sub_100783AD0(LazuliProvisioningWebHelper *this)
{
  *this = &off_101E7C638;
  v2 = *(this + 99);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(this + 776) == 1)
  {
    sub_10078BD7C(this + 528);
  }

  if (*(this + 520) == 1)
  {
    v3 = *(this + 62);
    if (v3)
    {
      *(this + 63) = v3;
      operator delete(v3);
    }

    if (*(this + 495) < 0)
    {
      operator delete(*(this + 59));
    }

    v4 = *(this + 56);
    if (v4)
    {
      *(this + 57) = v4;
      operator delete(v4);
    }
  }

  LazuliProvisioningWebHelper::~LazuliProvisioningWebHelper(this);
}

void sub_100783B80(LazuliProvisioningWebHelper *a1)
{
  sub_100783AD0(a1);

  operator delete();
}

void sub_100783BB8(LazuliProvisioningWebHelper *this)
{
  if (*(this + 776))
  {
    memset(&v14, 0, sizeof(v14));
    memset(buf, 0, sizeof(buf));
    CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(this);
    sub_10038E288(buf, CurrentConfig);
    std::string::operator=((this + 680), &v14);
    if ((*(this + 703) & 0x8000000000000000) != 0)
    {
      if (*(this + 86))
      {
LABEL_4:
        v11 = 0uLL;
        v12 = 0;
        __str.__r_.__value_.__r.__words[0] = sub_100784030(this, 1);
        LazuliProvisioningWebHelper::getHeaders(&v11, this, &__str);
        LazuliProvisioningWebHelper::set503Retry(this, 1);
        v8 = 7;
        sub_100A9C1EC(this + 136, &v11, &__str);
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 0x40000000;
        aBlock[2] = sub_100784380;
        aBlock[3] = &unk_101E7C690;
        aBlock[4] = this;
        v10 = 0;
        v9[0] = off_101E4BC98;
        v9[1] = _Block_copy(aBlock);
        v10 = v9;
        sub_1003A4BE4(this + 528, this + 544, this + 600, this + 81, this + 680);
      }
    }

    else if (*(this + 703))
    {
      goto LABEL_4;
    }

    v4 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11) = 136315138;
      *(&v11 + 4) = "NC";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [%s] Empty token or NO token received, restarting provisioning", &v11, 0xCu);
    }

    if (*(this + 776) == 1)
    {
      sub_10078BD7C(this + 528);
      *(this + 776) = 0;
    }

    v5 = *(this + 25);
    sub_10000501C(&v11, "Empty first time token");
    sub_100A9B39C(this + 104, v5, &v11);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11);
    }

    LazuliProvisioningWebHelper::restartProvisioning(this, 0);
    sub_10038E4E4(buf);
  }

  else
  {
    v3 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = "NC";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [%s] No pending POST response", buf, 0xCu);
    }
  }
}

void sub_100783F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  sub_10038E4E4(&a47);
  _Unwind_Resume(a1);
}

uint64_t sub_100784030(uint64_t a1, int a2)
{
  v45 = 0;
  v46 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
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
  *&v40[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v40);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  std::mutex::unlock(v5);
  v45 = v12;
  v46 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
    v12 = v45;
  }

  if (v12)
  {
    v44 = 0;
    sub_100A996E8(&v45, &v44);
    v13 = 1002271;
    if (v44)
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      memset(v40, 0, sizeof(v40));
      CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
      sub_10038E288(v40, CurrentConfig);
      v15 = HIDWORD(v41) != 1;
      isPushEnabled = LazuliProvisioningWebHelper::isPushEnabled(a1);
      Value = CFDictionaryGetValue(v44, @"ProvisioningData");
      v18 = Value;
      if (!Value)
      {
        goto LABEL_29;
      }

      v19 = CFGetTypeID(Value);
      if (v19 != CFDictionaryGetTypeID())
      {
        goto LABEL_29;
      }

      if (CFDictionaryContainsKey(v18, @"UseIMSIDuringProvisioning"))
      {
        v20 = CFDictionaryGetValue(v18, @"UseIMSIDuringProvisioning");
        v21 = v20;
        v47 = 0;
        if (v20 && (v22 = CFGetTypeID(v20), v22 == CFBooleanGetTypeID()))
        {
          ctu::cf::assign(&v47, v21, v23);
          v15 = v47;
        }

        else
        {
          v15 = 0;
        }
      }

      if (CFDictionaryContainsKey(v18, @"UseIMEIDuringProvisioning") && (v32 = CFDictionaryGetValue(v18, @"UseIMEIDuringProvisioning"), v33 = v32, v47 = 0, v32) && (v34 = CFGetTypeID(v32), v34 == CFBooleanGetTypeID()))
      {
        ctu::cf::assign(&v47, v33, v35);
        v36 = 1002335;
        if (!v15)
        {
          v36 = 1002271;
        }

        if (v47)
        {
          v37 = v36 | 0x20;
        }

        else
        {
          v37 = v36;
        }
      }

      else
      {
LABEL_29:
        v37 = 1002335;
        if (!v15)
        {
          v37 = 1002271;
        }
      }

      if (isPushEnabled)
      {
        v37 |= 0x200000uLL;
      }

      v38 = v37 | 0xC0;
      if (a2)
      {
        v37 |= 0x200uLL;
      }

      if (HIDWORD(v41) == 1)
      {
        v13 = v37;
      }

      else
      {
        v13 = v38;
      }

      sub_10038E4E4(v40);
    }

    sub_10001021C(&v44);
  }

  else
  {
    v13 = 1002271;
    v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10177D4D8(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  if (v46)
  {
    sub_100004A34(v46);
  }

  return v13;
}

void sub_10078433C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 80);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10078438C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v93 = a3;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  (*(**a2 + 56))(&v90);
  v5 = (*(**a2 + 24))();
  v87 = 0;
  v88 = 0;
  v89 = 0;
  (*(**a2 + 48))(&v87);
  v6 = *(a1 + 344);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 336);
      if (v9)
      {
        *buf = 10;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v9, &v93, v5 | &_mh_execute_header, buf, 0, 0);
        LazuliProvisioningServerWrapper::eraseProvisioningToken(v9, *(a1 + 100));
      }

      sub_100004A34(v8);
    }
  }

  memset(&__str, 0, sizeof(__str));
  sub_100416A54(v85, &v90);
  LazuliProvisioningWebHelper::getCookie(v85, &__str);
  sub_1000DD0AC(v85, v85[1]);
  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_100701D5C(&v93);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v13 = size != 0;
    v14 = HIBYTE(v89);
    if (v89 < 0)
    {
      v14 = v88;
    }

    *buf = 136316162;
    *&buf[4] = "NC";
    *&buf[12] = 2080;
    *&buf[14] = v11;
    *&buf[22] = 1024;
    *&buf[24] = v5;
    *&buf[28] = 1024;
    *&buf[30] = v13;
    *&buf[34] = 2048;
    *&buf[36] = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [%s] Received app attestation response [%s], [%d] [cookie: %{BOOL}d] [body-size: %ld]", buf, 0x2Cu);
  }

  if (v5 > 402)
  {
    if (v5 == 403)
    {
      v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = __str.__r_.__value_.__l.__size_;
        }

        if (v28)
        {
          v29 = "YES";
        }

        else
        {
          v29 = "NO";
        }

        *buf = 136315394;
        *&buf[4] = "NC";
        *&buf[12] = 2080;
        *&buf[14] = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 response during POST [cookie: %s]", buf, 0x16u);
      }

      v30 = *(a1 + 344);
      if (!v30)
      {
        goto LABEL_85;
      }

      v31 = std::__shared_weak_count::lock(v30);
      if (!v31)
      {
        goto LABEL_85;
      }

      v25 = v31;
      v32 = *(a1 + 336);
      if (v32)
      {
        v109 = 0;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        memset(buf, 0, sizeof(buf));
        CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
        sub_10038E288(buf, CurrentConfig);
        v68 = 10;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v32, &v93, 0x100000193, &v68, 0, 0);
        v68 = 2;
        LazuliProvisioningServerWrapper::failedFatally(v32, &v68);
      }

LABEL_53:
      v34 = v25;
LABEL_54:
      sub_100004A34(v34);
      goto LABEL_85;
    }

    if (v5 != 511)
    {
LABEL_55:
      v35 = *(a1 + 344);
      if (v35)
      {
        v36 = std::__shared_weak_count::lock(v35);
        if (v36)
        {
          v37 = v36;
          v38 = *(a1 + 336);
          if (v38)
          {
            *buf = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v38, &v93, v5 | &_mh_execute_header, buf, 0, 0);
          }

          sub_100004A34(v37);
        }
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 0x40000000;
      aBlock[2] = sub_10078856C;
      aBlock[3] = &unk_101E7C6F0;
      aBlock[4] = a1;
      v67 = v93;
      v95 = 0;
      v94[0] = off_101E4BC98;
      v94[1] = _Block_copy(aBlock);
      v95 = v94;
      LazuliProvisioningWebHelper::responseUnknown(a1, a2, v94);
      sub_100416C34(v94);
      goto LABEL_85;
    }

LABEL_31:
    v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NC";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I [%s] Restarting provisioning from scratch", buf, 0xCu);
    }

    v23 = *(a1 + 344);
    if (!v23)
    {
      goto LABEL_85;
    }

    v24 = std::__shared_weak_count::lock(v23);
    if (!v24)
    {
      goto LABEL_85;
    }

    v25 = v24;
    v26 = *(a1 + 336);
    if (v26)
    {
      *buf = 10;
      LazuliProvisioningServerWrapper::submitMetricForPhase(v26, &v93, v5 | &_mh_execute_header, buf, 0, 0);
      memset(buf, 0, 32);
      sub_100416A54(v71, &v90);
      LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v71, buf);
      sub_1000DD0AC(v71, v71[1]);
      sub_100416748(__p, buf);
      LazuliProvisioningWebHelper::showAlertIfNeeded(a1, __p);
      if (v70 == 1 && __p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      LazuliProvisioningWebHelper::restartProvisioning(a1, 0);
      if (buf[24] == 1 && *buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    goto LABEL_53;
  }

  if (v5 - 400 < 2)
  {
    goto LABEL_31;
  }

  if (v5 != 200)
  {
    goto LABEL_55;
  }

  v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = __str.__r_.__value_.__l.__size_;
  }

  if (v15)
  {
    std::string::operator=((a1 + 256), &__str);
  }

  else
  {
    v39 = *(a1 + 344);
    if (v39)
    {
      v40 = std::__shared_weak_count::lock(v39);
      if (v40)
      {
        v20 = v40;
        v41 = *(a1 + 336);
        if (v41)
        {
          v42 = HIBYTE(v89);
          if (v89 < 0)
          {
            v42 = v88;
          }

          if (v42)
          {
            v83[0] = 0;
            v83[1] = 0;
            v84 = 0;
            sub_10006F264(v80, (a1 + 392));
            sub_100787BF0(a2, &v78);
            LazuliProvisioningServerWrapper::handleXml(v41, &v87, v83, &v90, &v93, v80, &v78);
            if (v79 == 1 && SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v78.__r_.__value_.__l.__data_);
            }

            if (v82 == 1 && v81 < 0)
            {
              operator delete(v80[0]);
            }

            if ((SHIBYTE(v84) & 0x80000000) == 0)
            {
              goto LABEL_100;
            }

            v43 = v83[0];
            goto LABEL_99;
          }

          *buf = 12;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v41, &v93, 0x1000000C8, buf, 0, 0);
        }

        sub_100004A34(v20);
      }
    }

    v48 = *(a1 + 279);
    if (v48 < 0)
    {
      v48 = *(a1 + 264);
    }

    v49 = *(**(a1 + 48) + 16);
    if (!v48)
    {
      v58 = *v49();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_10177D5C8(v58, v59, v60, v61, v62, v63, v64, v65);
      }

      goto LABEL_85;
    }

    v50 = *v49();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_10177D550(v50, v51, v52, v53, v54, v55, v56, v57);
    }
  }

  v16 = HIBYTE(v89);
  if (v89 < 0)
  {
    v16 = v88;
  }

  if (v16)
  {
    v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NC";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK with XML", buf, 0xCu);
    }

    v18 = *(a1 + 344);
    if (v18)
    {
      v19 = std::__shared_weak_count::lock(v18);
      if (v19)
      {
        v20 = v19;
        v21 = *(a1 + 336);
        if (v21)
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = __str;
          }

          sub_10006F264(v74, (a1 + 392));
          sub_100787BF0(a2, &v72);
          LazuliProvisioningServerWrapper::handleXml(v21, &v87, &__dst, &v90, &v93, v74, &v72);
          if (v73 == 1 && SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v72.__r_.__value_.__l.__data_);
          }

          if (v76 == 1 && v75 < 0)
          {
            operator delete(v74[0]);
          }

          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_100;
          }

          v43 = __dst.__r_.__value_.__r.__words[0];
LABEL_99:
          operator delete(v43);
LABEL_100:
          v34 = v20;
          goto LABEL_54;
        }

        sub_100004A34(v19);
      }
    }
  }

  v44 = *(a1 + 303);
  if (v44 < 0)
  {
    v44 = *(a1 + 288);
  }

  v45 = *(**(a1 + 48) + 16);
  if (v44)
  {
    v46 = *v45();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NC";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I [%s] Attestation complete, OTP recieved. Continuing...", buf, 0xCu);
    }

    LazuliProvisioningWebHelper::scheduleOtpResponse(a1);
  }

  v47 = *v45();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "NC";
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I [%s] Awaiting OTP", buf, 0xCu);
  }

  LazuliProvisioningWebHelper::startOtpReceptionTimer(a1);
LABEL_85:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89) < 0)
  {
    operator delete(v87);
  }

  sub_1000DD0AC(&v90, v91);
}

void sub_100784DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, void *a62)
{
  sub_100004A34(v62);
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  sub_1000DD0AC(&a61, a62);
  _Unwind_Resume(a1);
}

void sub_10078503C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a3 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a3 + 8);
    }

    *buf = 136315650;
    v33 = "NC";
    v34 = 1024;
    v35 = a2;
    v36 = 2048;
    v37 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Signing status: %{BOOL}d, response size = %zu", buf, 0x1Cu);
  }

  if (*(a1 + 520))
  {
    if (a2)
    {
      std::string::operator=((a1 + 56), a3);
      if ((*(a1 + 520) & 1) == 0)
      {
        sub_1000D1644();
      }

      v25 = *(a1 + 440);
      *v26 = *(a1 + 448);
      v27 = *(a1 + 464);
      *(a1 + 448) = 0;
      *(a1 + 456) = 0;
      v8 = *(a1 + 472);
      *(a1 + 464) = 0;
      *(a1 + 472) = 0;
      v29 = *(a1 + 488);
      *v28 = v8;
      *(a1 + 480) = 0;
      *(a1 + 488) = 0;
      *__p = *(a1 + 496);
      v31 = *(a1 + 512);
      *(a1 + 496) = 0;
      *(a1 + 504) = 0;
      *(a1 + 512) = 0;
      sub_1007852B8(a1, &v25);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28[0]);
      }

      if (v26[0])
      {
        v26[1] = v26[0];
        operator delete(v26[0]);
      }
    }

    else
    {
      v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10177D6B8(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    sub_10078B614(a1 + 440);
  }

  else
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10177D640(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

void sub_1007852B8(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v19 = *(a2 + 1);
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  isPushEnabled = LazuliProvisioningWebHelper::isPushEnabled(a1);
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    *buf = 136316162;
    *&buf[4] = "NC";
    *&buf[12] = 1024;
    *&buf[14] = isPushEnabled;
    *&buf[18] = 2048;
    *&buf[20] = v7;
    *&buf[28] = 1042;
    *&buf[30] = 32;
    *&buf[34] = 2098;
    *&buf[36] = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting attestation [push enabled: %{BOOL}d], [id: %zu], [challenge hash:\n%{public,network:data}.32P]", buf, 0x2Cu);
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (isPushEnabled)
  {
    if (&v38 != (a2 + 7))
    {
      sub_1001122C4(&v38, a2[7], a2[8], a2[8] - a2[7]);
    }
  }

  else if (a2[7] != a2[8])
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10177D730(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  sub_100004AA0(buf, (a1 + 8));
  v17 = *buf;
  v16 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v16);
    v43 = 0;
    memset(&buf[16], 0, 32);
    *buf = v17;
    *&buf[8] = v16;
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *&buf[8] = 0;
  }

  v18 = *a2;
  *&buf[16] = a1;
  *&buf[24] = v18;
  *&buf[40] = 0;
  v43 = 0;
  *&buf[32] = 0;
  sub_100034C50(&buf[32], v38, v39, v39 - v38);
  if (v4 != v19)
  {
    __p[4] = v4;
    v37 = v19;
    v33 = *buf;
    v34 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    }

    v35 = *&buf[16];
    memset(__p, 0, 24);
    sub_100034C50(__p, *&buf[32], *&buf[40], *&buf[40] - *&buf[32]);
    v41 = 0;
    operator new();
  }

  if (v38 != v39)
  {
    memset(v32, 0, sizeof(v32));
    sub_10000501C(&v30, "");
    sub_10000501C(&v28, "");
    v32[0] = v30;
    *(&v32[1] + 8) = v28;
    *&v32[1] = v31;
    *(&v32[2] + 1) = v29;
    sub_100041088(__dst, v32);
    v27 = 1;
    LOBYTE(v20) = 0;
    v22 = 0;
    sub_1007858C0(buf, __dst, &v20);
    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    if (v27 == 1)
    {
      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 < 0)
      {
        operator delete(__dst[0]);
      }
    }

    if (SHIBYTE(v32[2]) < 0)
    {
      operator delete(*(&v32[1] + 1));
    }

    if (SBYTE7(v32[1]) < 0)
    {
      operator delete(*&v32[0]);
    }
  }

  if (*&buf[32])
  {
    *&buf[40] = *&buf[32];
    operator delete(*&buf[32]);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_weak(*&buf[8]);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v4)
  {
    operator delete(v4);
  }
}

void *sub_100785880(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1007858C0(void *a1, uint64_t *a2, __int128 *a3)
{
  v4 = a1[1];
  if (v4)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (*a1)
      {
        if (a1[4] != a1[5])
        {
          v10 = *(v7 + 344);
          if (v10)
          {
            v11 = std::__shared_weak_count::lock(v10);
            if (v11)
            {
              if (*(v7 + 336))
              {
                LazuliProvisioningServerWrapper::handleVapidReceived(*(v7 + 336), a1 + 4);
                v12 = a1[1];
                v18[0] = *a1;
                v18[1] = v12;
                if (v12)
                {
                  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                v13 = a1[3];
                v19 = v7;
                v20 = v13;
                sub_10078B54C(v21, a2);
                sub_10006F264(&__p, a3);
                v23 = 0;
                operator new();
              }

              sub_100004A34(v11);
            }
          }
        }

        sub_10000501C(v16, "");
        sub_100787D30(v7, a2, v14, a1 + 3, v16);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }

        v15 = *(v7 + 792);
        *(v7 + 784) = 0u;
        if (v15)
        {
          sub_100004A34(v15);
        }
      }

      sub_100004A34(v9);
    }
  }
}

void sub_100785B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  sub_100007E44(v19 - 128);
  sub_10078B678(&a16);
  sub_100004A34(v18);
  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_100785BFC(uint64_t a1, uint64_t *a2)
{
  v49 = 5;
  v4 = *(a1 + 344);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v2 = *(a1 + 336);
      v8 = v2 != 0;
      if (!v2)
      {
        goto LABEL_22;
      }

      if (a2[2] == a2[1])
      {
        v18 = *(a2 + 55);
        if ((v18 & 0x80u) != 0)
        {
          v18 = a2[5];
        }

        if (v18)
        {
          v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10177D820(v19, v20, v21, v22, v23, v24, v25, v26);
          }

          v48 = 9;
          LOBYTE(buf) = 0;
          buf_4[0] = 0;
          LOBYTE(__p) = 0;
          v44 = 0;
          LazuliProvisioningServerWrapper::submitMetricForReceivedXml(v2, &v49, &v48, &buf, &__p);
          if (v44 != 1 || (v43 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          v17 = __p;
        }

        else
        {
          v28 = *(**(a1 + 48) + 16);
          if (a2[7] != a2[8])
          {
            v29 = *v28();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315138;
              *buf_4 = "NC";
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [%s] Subscribing to push - Vapid received", &buf, 0xCu);
            }

            LazuliProvisioningServerWrapper::handleVapidReceived(v2, a2 + 7);
            sub_100004AA0(&buf, (a1 + 8));
            v30 = *&buf_4[4];
            if (*&buf_4[4])
            {
              atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
              sub_100004A34(v30);
              atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v50 = 0;
            operator new();
          }

          v31 = *v28();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10177D898(v31, v32, v33, v34, v35, v36, v37, v38);
          }

          v48 = 9;
          LOBYTE(buf) = 0;
          buf_4[0] = 0;
          LOBYTE(v39) = 0;
          v41 = 0;
          LazuliProvisioningServerWrapper::submitMetricForReceivedXml(v2, &v49, &v48, &buf, &v39);
          if (v41 != 1 || (v40 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          v17 = v39;
        }
      }

      else
      {
        v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10177D7A8(v9, v10, v11, v12, v13, v14, v15, v16);
        }

        v48 = 9;
        LOBYTE(buf) = 0;
        buf_4[0] = 0;
        LOBYTE(v45) = 0;
        v47 = 0;
        LazuliProvisioningServerWrapper::submitMetricForReceivedXml(v2, &v49, &v48, &buf, &v45);
        if (v47 != 1 || (v46 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        v17 = v45;
      }

      operator delete(v17);
LABEL_21:
      LODWORD(v2) = 0;
LABEL_22:
      sub_100004A34(v7);
      return v2 & v8;
    }
  }

  v8 = 0;
  return v2 & v8;
}

void sub_100785FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v32);
  _Unwind_Resume(a1);
}

void sub_10078608C(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  *__p = 0u;
  v20 = 0u;
  *v18 = 0u;
  sub_1007862D0(a1, a3, v18);
  if (LazuliProvisioningWebHelper::isPushEnabled(a1) && (v18[0] == v18[1] || __p[1] == v20))
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10177D910(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    v17 = 8;
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100701D5C(&v17);
      v8 = *a2;
      *buf = 136315650;
      v22 = "NC";
      v23 = 2080;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Responding with POST during phase: %s, id = [%lu]", buf, 0x20u);
    }

    sub_1007838A0(buf, (a1 + 104), *a2, a3, v18, &__p[1]);
    sub_1007867F8(a1 + 528, buf);
    sub_10078BD7C(buf);
    *buf = 8;
    sub_100786978(a1, buf);
  }

  if (__p[1])
  {
    *&v20 = __p[1];
    operator delete(__p[1]);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }
}

void sub_100786290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100786E08(va);
  _Unwind_Resume(a1);
}

void sub_1007862D0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  if ((LazuliProvisioningWebHelper::isPushEnabled(a1) & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (!v6)
  {
LABEL_14:
    sub_10078BFCC(a3, &v44, &v41);
    goto LABEL_39;
  }

  v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 136315395;
    *&buf[4] = "NC";
    *&buf[12] = 2081;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%s] TokenURL: %{private}s", buf, 0x16u);
  }

  __p[0] = 0;
  __p[1] = 0;
  v40 = 0;
  PersonalityIdFromSlotId();
  v37 = 0;
  v38 = 0;
  (*(**(a1 + 424) + 80))(&v37);
  if (v37)
  {
    (*(*v37 + 48))(v37, __p);
    (*(*v37 + 72))(v37, __p);
    v35 = 0;
    v36 = 0;
    (*(*v37 + 32))(&v35);
    v9 = v35;
    if (v35)
    {
      (*(*v35 + 40))(buf, v35);
      sub_1001122C4(&v44, *buf, *&buf[8], *&buf[8] - *buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    else
    {
      v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10177D988(v18, v19, v20, v21, v22, v23, v24, v25);
      }

      sub_10078BFCC(a3, &v44, &v41);
    }

    if (v36)
    {
      sub_100004A34(v36);
    }

    if (!v9)
    {
      goto LABEL_35;
    }

    memset(buf, 0, 32);
    (*(*v37 + 56))(buf);
    v26 = buf[24];
    if (buf[24] == 1)
    {
      sub_1001122C4(&v41, *buf, *&buf[8], *&buf[8] - *buf);
    }

    else
    {
      v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10177DA00(v27, v28, v29, v30, v31, v32, v33, v34);
      }

      sub_10078BFCC(a3, &v44, &v41);
    }

    if (buf[24] == 1 && *buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if ((v26 & 1) == 0)
    {
LABEL_35:
      if (v38)
      {
        sub_100004A34(v38);
      }

      goto LABEL_37;
    }
  }

  else
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10177DA78(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  if (v38)
  {
    sub_100004A34(v38);
  }

  sub_10078BFCC(a3, &v44, &v41);
LABEL_37:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }
}

void sub_100786724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (*(v24 - 56) == 1)
  {
    v26 = *(v24 - 80);
    if (v26)
    {
      *(v24 - 72) = v26;
      operator delete(v26);
    }
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007867F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 248) == 1)
  {
    sub_10078BBA8(a1, a2);
  }

  else
  {
    *a1 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 64) = 0;
    if (*(a2 + 64) == 1)
    {
      v3 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v3;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      v4 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v4;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(a2 + 40) = 0;
      *(a1 + 64) = 1;
    }

    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v5;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v6;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    *(a1 + 128) = *(a2 + 128);
    v7 = (a2 + 136);
    v8 = *(a2 + 136);
    v9 = *(a2 + 120);
    *(a1 + 136) = v8;
    v10 = a1 + 136;
    *(a1 + 120) = v9;
    v11 = *(a2 + 144);
    *(a1 + 144) = v11;
    if (v11)
    {
      *(v8 + 16) = v10;
      *(a2 + 128) = v7;
      *v7 = 0;
      *(a2 + 144) = 0;
    }

    else
    {
      *(a1 + 128) = v10;
    }

    v12 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v12;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 152) = 0;
    v13 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v13;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a2 + 176) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a1 + 248) = 1;
  }

  return a1;
}

void sub_100786978(uint64_t a1, unsigned int *a2)
{
  v4 = sub_100784030(a1, 1);
  v25 = v4;
  v5 = *(a1 + 79);
  if (v5 < 0)
  {
    v5 = *(a1 + 64);
  }

  if (v5)
  {
    v25 = v4 | 0x100000;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  LazuliProvisioningWebHelper::getHeaders(&v22, a1, &v25);
  if (*(a1 + 279) < 0)
  {
    **(a1 + 256) = 0;
    *(a1 + 264) = 0;
  }

  else
  {
    *(a1 + 256) = 0;
    *(a1 + 279) = 0;
  }

  LazuliProvisioningWebHelper::set503Retry(a1, 1);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  memset(__dst, 0, sizeof(__dst));
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  sub_10038E288(__dst, CurrentConfig);
  v7 = *(a1 + 344);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 336);
      if (v10)
      {
        if (HIDWORD(v19) != 1)
        {
          goto LABEL_15;
        }

        v11 = HIBYTE(v21);
        if (v21 < 0)
        {
          v11 = *(&v20 + 1);
        }

        if (v11)
        {
LABEL_15:
          v17 = *a2;
          v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = sub_100701D5C(&v17);
            *buf = 136315394;
            *&buf[4] = "NC";
            v29 = 2080;
            v30 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [%s] Sending POST on phase: %s", buf, 0x16u);
          }

          sub_100A9C1EC(a1 + 136, &v22, buf);
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 0x40000000;
          aBlock[2] = sub_10078855C;
          aBlock[3] = &unk_101E7C6D0;
          aBlock[4] = a1;
          v16 = v17;
          v27 = 0;
          v26[0] = off_101E4BC98;
          v26[1] = _Block_copy(aBlock);
          v27 = v26;
          sub_1003A4BE4(a1 + 528, a1 + 544, a1 + 600, (a1 + 648), a1 + 680);
        }

        v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "NC";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [%s] Token required for provisioning. Requesting now", buf, 0xCu);
        }

        LazuliProvisioningServerWrapper::requestProvisioningToken(v10, *(a1 + 100));
      }

      sub_100004A34(v9);
    }
  }

  sub_10038E4E4(__dst);
  sub_1000DD0AC(&v22, v23);
}

void sub_100786D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_100004A34(v29);
  sub_10038E4E4(&a29);
  sub_1000DD0AC(v30 - 144, *(v30 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_100786E08(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_100786E4C(uint64_t a1, uint64_t a2, int a3)
{
  v67 = a3;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v5 = (a1 + 48);
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  sub_1003A4640(v5 + 7, v6, a2, &v61);
  v7 = *(**v5 + 16);
  if (v66)
  {
    v8 = *v7();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if ((v66 & 1) == 0)
      {
        sub_1000D1644();
      }

      v9 = *(a2 + 23);
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a2 + 8);
      }

      *buf = 136315650;
      *&buf[4] = "NC";
      *&buf[12] = 2048;
      *&buf[14] = v9;
      v69 = 2048;
      v70 = v61;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [%s] Client auth data received [size: %zu], [id= %lu]", buf, 0x20u);
    }

    v10 = *(a1 + 344);
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 336);
        if (v13)
        {
          v60 = 6;
          buf[0] = 0;
          buf[4] = 0;
          LOBYTE(__p) = 0;
          v56 = 0;
          LazuliProvisioningServerWrapper::submitMetricForReceivedXml(v13, &v67, &v60, buf, &__p);
          if (v56 == 1 && v55 < 0)
          {
            operator delete(__p);
          }
        }

        sub_100004A34(v12);
      }
    }

    if (v67 == 5)
    {
      if ((v66 & 1) == 0)
      {
        sub_1000D1644();
      }

      v14 = sub_100785BFC(a1, &v61);
      goto LABEL_66;
    }

    if (!*(a1 + 784) && v62 != *(&v61 + 1))
    {
      (*(**(a1 + 424) + 72))(buf);
      v34 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v35 = *(a1 + 792);
      *(a1 + 784) = v34;
      if (v35)
      {
        sub_100004A34(v35);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }
    }

    if (*(LazuliProvisioningWebHelper::getCurrentConfig(a1) + 196) == 1)
    {
      if (v66 != 1)
      {
        goto LABEL_74;
      }

      v27 = BYTE7(v64);
      if (SBYTE7(v64) < 0)
      {
        v27 = *(&v63 + 1);
      }

      if (v27)
      {
        v28 = *(a1 + 344);
        if (v28)
        {
          v29 = std::__shared_weak_count::lock(v28);
          if (v29)
          {
            v30 = *(a1 + 336);
            if (v30)
            {
              v31 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                if ((v66 & 1) == 0)
                {
                  sub_1000D1644();
                }

                if ((SBYTE7(v64) & 0x80u) == 0)
                {
                  v32 = &v63;
                }

                else
                {
                  v32 = v63;
                }

                *buf = 136315651;
                *&buf[4] = "NC";
                *&buf[12] = 2160;
                *&buf[14] = 1752392040;
                v69 = 2081;
                v70 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting signing nonce: %{private, mask.hash}s", buf, 0x20u);
              }

              sub_10078BE44(a1 + 440, &v61);
              if ((v66 & 1) == 0)
              {
                sub_1000D1644();
              }

              LazuliProvisioningServerWrapper::requestSigning(v30, &v63);
LABEL_64:
              sub_100004A34(v29);
LABEL_65:
              v14 = 1;
              goto LABEL_66;
            }
          }
        }

        else
        {
          v29 = 0;
        }

        v36 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_10177DB68(v36, v37, v38, v39, v40, v41, v42, v43);
        }

        if (!v29)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }
    }

    v33 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NC";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting Attestation flow", buf, 0xCu);
    }

    if (v66)
    {
      v45 = v61;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      sub_100034C50(&v46, *(&v61 + 1), v62, v62 - *(&v61 + 1));
      if (SBYTE7(v64) < 0)
      {
        sub_100005F2C(&v49, v63, *(&v63 + 1));
      }

      else
      {
        v49 = v63;
        v50 = v64;
      }

      v51 = 0;
      v52 = 0;
      v53 = 0;
      sub_100034C50(&v51, *(&v64 + 1), v65, v65 - *(&v64 + 1));
      sub_1007852B8(a1, &v45);
      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49);
      }

      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }

      goto LABEL_65;
    }

LABEL_74:
    sub_1000D1644();
  }

  v15 = *v7();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10177DAF0(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  v23 = *(a1 + 344);
  if (v23)
  {
    v24 = std::__shared_weak_count::lock(v23);
    if (v24)
    {
      v25 = v24;
      v26 = *(a1 + 336);
      if (v26)
      {
        v60 = 9;
        buf[0] = 0;
        buf[4] = 0;
        LOBYTE(v57) = 0;
        v59 = 0;
        LazuliProvisioningServerWrapper::submitMetricForReceivedXml(v26, &v67, &v60, buf, &v57);
        if (v59 == 1 && v58 < 0)
        {
          operator delete(v57);
        }
      }

      sub_100004A34(v25);
    }
  }

  v14 = 0;
LABEL_66:
  if (v66 == 1)
  {
    if (*(&v64 + 1))
    {
      *&v65 = *(&v64 + 1);
      operator delete(*(&v64 + 1));
    }

    if (SBYTE7(v64) < 0)
    {
      operator delete(v63);
    }

    if (*(&v61 + 1))
    {
      *&v62 = *(&v61 + 1);
      operator delete(*(&v61 + 1));
    }
  }

  return v14;
}

void sub_10078749C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, char a38)
{
  sub_100004A34(v38);
  sub_10078B5B4(&a38);
  _Unwind_Resume(a1);
}

void sub_100787578(uint64_t a1, uint64_t a2)
{
  v4 = (*(**a2 + 24))();
  v35 = 0;
  v36 = 0;
  v37 = 0;
  (*(**a2 + 48))(&v35);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  (*(**a2 + 56))(&v32);
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HIBYTE(v37);
    if (v37 < 0)
    {
      v6 = v36;
    }

    *buf = 136315650;
    *&buf[4] = "NC";
    *&buf[12] = 1024;
    *&buf[14] = v4;
    *&buf[18] = 2048;
    *&buf[20] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%s] Response [%d] for OTP, body-size: %ld", buf, 0x1Cu);
  }

  v7 = *(a1 + 344);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *(a1 + 336);
      if (v9)
      {
        if (v4 - 400 < 2 || v4 == 511)
        {
          v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "NC";
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I [%s] Restarting provisioning from scratch after invalid OTP response", buf, 0xCu);
          }

          *buf = 4;
          v24 = 10;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v9, buf, v4 | &_mh_execute_header, &v24, 0, 0);
          memset(buf, 0, 32);
          sub_100416A54(v23, &v32);
          LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v23, buf);
          sub_1000DD0AC(v23, v23[1]);
          sub_100416748(v21, buf);
          LazuliProvisioningWebHelper::showAlertIfNeeded(a1, v21);
          if (v22 == 1 && v21[0])
          {
            v21[1] = v21[0];
            operator delete(v21[0]);
          }

          LazuliProvisioningWebHelper::restartProvisioning(a1, 0);
          if (buf[24] == 1 && *buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }
        }

        else
        {
          if (v4 != 200)
          {
            goto LABEL_40;
          }

          v10 = HIBYTE(v37);
          if (v37 < 0)
          {
            v10 = v36;
          }

          if (v10)
          {
            v30[0] = 0;
            v30[1] = 0;
            v31 = 0;
            *buf = 4;
            sub_10006F264(v27, (a1 + 392));
            sub_100787BF0(a2, &__p);
            LazuliProvisioningServerWrapper::handleXml(v9, &v35, v30, &v32, buf, v27, &__p);
            if (v26 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v29 == 1 && v28 < 0)
            {
              operator delete(v27[0]);
            }

            if (SHIBYTE(v31) < 0)
            {
              operator delete(v30[0]);
            }

            if (*(a1 + 303) < 0)
            {
              **(a1 + 280) = 0;
              *(a1 + 288) = 0;
            }

            else
            {
              *(a1 + 280) = 0;
              *(a1 + 303) = 0;
            }

            if (*(a1 + 279) < 0)
            {
              **(a1 + 256) = 0;
              *(a1 + 264) = 0;
            }

            else
            {
              *(a1 + 256) = 0;
              *(a1 + 279) = 0;
            }
          }

          else
          {
LABEL_40:
            *buf = 4;
            v24 = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v9, buf, v4 | &_mh_execute_header, &v24, 0, 0);
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 0x40000000;
            v20[2] = sub_100787D08;
            v20[3] = &unk_101E7C6B0;
            v20[4] = a1;
            v39 = 0;
            v38[0] = off_101E4BC98;
            v38[1] = _Block_copy(v20);
            v39 = v38;
            LazuliProvisioningWebHelper::responseUnknown(a1, a2, v38);
            sub_100416C34(v38);
          }
        }

LABEL_28:
        sub_100004A34(v8);
        goto LABEL_29;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10177DBE0(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  if (v8)
  {
    goto LABEL_28;
  }

LABEL_29:
  sub_1000DD0AC(&v32, v33);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }
}

void sub_100787AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46)
{
  if (a31 == 1 && a30 < 0)
  {
    operator delete(__p);
  }

  if (a38 == 1 && a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  sub_100004A34(v46);
  sub_1000DD0AC(&a45, a46);
  if (*(v47 - 145) < 0)
  {
    operator delete(*(v47 - 168));
  }

  _Unwind_Resume(a1);
}

void sub_100787BF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 0;
  v9[0] = 0;
  v9[1] = 0;
  (*(**a1 + 56))(&v8);
  sub_10000501C(__p, "X-Acs-Debug-Message");
  v3 = sub_10038F068(&v8, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 == v3)
  {
    v5 = 0;
    *a2 = 0;
  }

  else
  {
    if (*(v3 + 79) < 0)
    {
      sub_100005F2C(a2, *(v3 + 56), *(v3 + 64));
    }

    else
    {
      v4 = *(v3 + 56);
      *(a2 + 16) = *(v3 + 72);
      *a2 = v4;
    }

    v5 = 1;
  }

  *(a2 + 24) = v5;
  sub_1000DD0AC(&v8, v9[0]);
}

void sub_100787D30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100), a3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "NC";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%s] Attestation response received", buf, 0xCu);
  }

  if ((a2[6] & 1) == 0)
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NC";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [%s] Attestation output: (nil)", buf, 0xCu);
    }

    v11 = *(a1 + 344);
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        v14 = *(a1 + 336);
        if (v14)
        {
          *buf = 3;
          *v58 = 11;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v14, buf, 0, v58, 0, 0);
          LazuliProvisioningWebHelper::restartProvisioning(a1, 0);
          sub_100004A34(v13);
          return;
        }

        sub_100004A34(v13);
      }
    }
  }

  memset(v57, 0, sizeof(v57));
  *v56 = 0u;
  memset(&__dst, 0, sizeof(__dst));
  if (*(a1 + 376) == 1)
  {
    if (*(a1 + 375) < 0)
    {
      sub_100005F2C(&__dst, *(a1 + 352), *(a1 + 360));
    }

    else
    {
      __dst = *(a1 + 352);
    }
  }

  else
  {
    sub_10000501C(&__dst, "");
  }

  v74 = 0u;
  memset(&v75, 0, sizeof(v75));
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  *buf = 0u;
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  sub_10038E288(buf, CurrentConfig);
  v16 = *(a2 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = a2[1];
  }

  if (v16)
  {
    v17 = *(a2 + 47);
    if ((v17 & 0x80u) != 0)
    {
      v17 = a2[4];
    }

    if (v17)
    {
      v18 = *(a1 + 784);
      if (v18 && (*(*v18 + 24))(v18))
      {
        (*(**(a1 + 784) + 8))(v58);
        *v56 = *v58;
        v57[0] = *&v58[16];
        *&v57[1] = v59;
        v57[3] = v60;
      }

      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        std::string::operator=(&__dst, &v75);
      }
    }
  }

  *v53 = 0u;
  v54 = 0u;
  *v52 = 0u;
  sub_1007862D0(a1, a5, v52);
  if (*(a1 + 520) == 1 && *(a1 + 504) != *(a1 + 496) && LazuliProvisioningWebHelper::isPushEnabled(a1) && (v52[0] == v52[1] || v53[1] == v54))
  {
    v41 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *v58 = 136315138;
      *&v58[4] = "NC";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I [%s] Vapid was requested, but invalid push keys generated - Bailing out", v58, 0xCu);
    }
  }

  else
  {
    v20 = *(a1 + 279);
    if (v20 < 0)
    {
      v20 = *(a1 + 264);
    }

    v21 = *(**(a1 + 48) + 16);
    if (v20)
    {
      v22 = *v21();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        if (*(a2 + 47) >= 0)
        {
          v24 = a2 + 3;
        }

        else
        {
          v24 = a2[3];
        }

        *v58 = 136315650;
        *&v58[4] = "NC";
        *&v58[12] = 2082;
        *&v58[14] = v23;
        *&v58[22] = 2082;
        *&v59 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I [%s] Sending attestation output to server: [%{public}s], [%{public}s]", v58, 0x20u);
      }

      sub_10078B54C(v46, a2);
      if (SHIBYTE(v57[0]) < 0)
      {
        sub_100005F2C(v42, v56[0], v56[1]);
      }

      else
      {
        *v42 = *v56;
        v43 = v57[0];
      }

      if (SHIBYTE(v57[3]) < 0)
      {
        sub_100005F2C(&__p, v57[1], v57[2]);
      }

      else
      {
        __p = *&v57[1];
        v45 = v57[3];
      }

      sub_10078359C(v58, (a1 + 104), v46, v42, *a4, (a1 + 256), &__dst, a5, v52, &v53[1]);
      sub_1007867F8(a1 + 528, v58);
      sub_10078BD7C(v58);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42[0]);
      }

      if (v50 == 1)
      {
        if (v49 < 0)
        {
          operator delete(v48);
        }

        if (v47 < 0)
        {
          operator delete(v46[0]);
        }
      }

      v37 = *(a1 + 344);
      if (v37)
      {
        v38 = std::__shared_weak_count::lock(v37);
        if (v38)
        {
          v39 = v38;
          v40 = *(a1 + 336);
          if (v40)
          {
            *v58 = 3;
            v51 = 16;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v40, v58, 0, &v51, 0, 0);
            LazuliProvisioningServerWrapper::attestationComplete(v40, (a2 + 3));
          }

          sub_100004A34(v39);
        }
      }

      *v58 = 7;
      sub_100786978(a1, v58);
    }

    else
    {
      v25 = *v21();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10177DC58(v25, v26, v27, v28, v29, v30, v31, v32);
      }

      v33 = *(a1 + 344);
      if (v33)
      {
        v34 = std::__shared_weak_count::lock(v33);
        if (v34)
        {
          v35 = v34;
          v36 = *(a1 + 336);
          if (v36)
          {
            *v58 = 3;
            v51 = 12;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v36, v58, 0, &v51, 0, 0);
            LazuliProvisioningWebHelper::restartProvisioning(a1, 0);
          }

          sub_100004A34(v35);
        }
      }
    }
  }

  if (v53[1])
  {
    *&v54 = v53[1];
    operator delete(v53[1]);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  sub_10038E4E4(buf);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57[3]) < 0)
  {
    operator delete(v57[1]);
  }

  if (SHIBYTE(v57[0]) < 0)
  {
    operator delete(v56[0]);
  }
}

void sub_10078846C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  sub_100004A34(v38);
  sub_100786E08(&a25);
  sub_10038E4E4(&STACK[0x200]);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  sub_1000D6F38(&a38);
  _Unwind_Resume(a1);
}

void sub_10078857C(uint64_t a1, uint64_t a2, int a3)
{
  v64 = a3;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  (*(**a2 + 56))(&v61);
  v5 = (*(**a2 + 24))();
  v58 = 0;
  v59 = 0;
  v60 = 0;
  (*(**a2 + 48))(&v58);
  memset(&__str, 0, sizeof(__str));
  sub_100416A54(v56, &v61);
  LazuliProvisioningWebHelper::getCookie(v56, &__str);
  sub_1000DD0AC(v56, v56[1]);
  LazuliProvisioningWebHelper::set503Retry(a1, 1);
  if (v5 > 402)
  {
    if (v5 == 403)
    {
      v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v21 = "YES";
        }

        else
        {
          v21 = "NO";
        }

        *buf = 136315394;
        *&buf[4] = "NC";
        *&buf[12] = 2080;
        *&buf[14] = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 forbidden response [cookie: %s]", buf, 0x16u);
      }

      v22 = *(a1 + 344);
      if (v22)
      {
        v23 = std::__shared_weak_count::lock(v22);
        if (v23)
        {
          v17 = v23;
          v24 = *(a1 + 336);
          if (v24)
          {
            *buf = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v24, &v64, 0x100000193, buf, 0, 0);
            LazuliProvisioningServerWrapper::handleForbiddenResponse(v24);
          }

          goto LABEL_45;
        }
      }

      goto LABEL_63;
    }

    if (v5 != 511)
    {
      goto LABEL_57;
    }
  }

  else if ((v5 - 400) >= 2)
  {
    if (v5 == 200)
    {
      v6 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v6 = __str.__r_.__value_.__l.__size_;
      }

      if (v6)
      {
        std::string::operator=((a1 + 256), &__str);
        v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v8 = __str.__r_.__value_.__l.__size_;
          }

          if (v8)
          {
            v9 = "YES";
          }

          else
          {
            v9 = "NO\x10";
          }

          *buf = 136315394;
          *&buf[4] = "NC";
          *&buf[12] = 2080;
          *&buf[14] = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK [cookie: %s]", buf, 0x16u);
        }

        v10 = HIBYTE(v60);
        if (v60 < 0)
        {
          v10 = v59;
        }

        if (!v10)
        {
          v36 = *(a1 + 344);
          if (v36)
          {
            v37 = std::__shared_weak_count::lock(v36);
            if (v37)
            {
              v38 = v37;
              v39 = *(a1 + 336);
              if (v39)
              {
                *buf = 10;
                LazuliProvisioningServerWrapper::submitMetricForPhase(v39, &v64, 0x1000000C8, buf, 0, 0);
              }

              sub_100004A34(v38);
            }
          }

          v40 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "NC";
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I [%s] Awaiting OTP.", buf, 0xCu);
          }

          LazuliProvisioningWebHelper::startOtpReceptionTimer(a1);
          goto LABEL_63;
        }

        if (sub_100789704(&v58, &v61))
        {
          v11 = sub_100786E4C(a1, &v58, v64);
          v12 = *(**(a1 + 48) + 16);
          if (v11)
          {
            v13 = *v12();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "NC";
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [%s] Attestation flow triggered", buf, 0xCu);
            }

            goto LABEL_63;
          }

          v41 = *v12();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "NC";
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I [%s] Failed to decode secure response body", buf, 0xCu);
          }

          v42 = *(a1 + 344);
          if (v42)
          {
            v43 = std::__shared_weak_count::lock(v42);
            if (v43)
            {
              v17 = v43;
              v44 = *(a1 + 336);
              if (v44)
              {
                *buf = 4;
                LazuliProvisioningServerWrapper::failedFatally(v44, buf);
              }

LABEL_45:
              v25 = v17;
LABEL_46:
              sub_100004A34(v25);
              goto LABEL_63;
            }
          }

          goto LABEL_63;
        }
      }

      v26 = HIBYTE(v60);
      if (v60 < 0)
      {
        v26 = v59;
      }

      if (v26)
      {
        v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "NC";
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK with XML", buf, 0xCu);
        }

        v28 = *(a1 + 344);
        if (v28)
        {
          v29 = std::__shared_weak_count::lock(v28);
          if (v29)
          {
            v30 = v29;
            v31 = *(a1 + 336);
            if (v31)
            {
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                __dst = __str;
              }

              sub_10006F264(v52, (a1 + 392));
              sub_100787BF0(a2, &v50);
              LazuliProvisioningServerWrapper::handleXml(v31, &v58, &__dst, &v61, &v64, v52, &v50);
              if (v51 == 1 && SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v50.__r_.__value_.__l.__data_);
              }

              if (v54 == 1 && v53 < 0)
              {
                operator delete(v52[0]);
              }

              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }
            }

            v25 = v30;
            goto LABEL_46;
          }
        }

        goto LABEL_63;
      }
    }

LABEL_57:
    v32 = *(a1 + 344);
    if (v32)
    {
      v33 = std::__shared_weak_count::lock(v32);
      if (v33)
      {
        v34 = v33;
        v35 = *(a1 + 336);
        if (v35)
        {
          *buf = 10;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v35, &v64, v5 | &_mh_execute_header, buf, 0, 0);
        }

        sub_100004A34(v34);
      }
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_100789944;
    aBlock[3] = &unk_101E7C730;
    aBlock[4] = a1;
    v46 = v64;
    v66 = 0;
    v65[0] = off_101E4BC98;
    v65[1] = _Block_copy(aBlock);
    v66 = v65;
    LazuliProvisioningWebHelper::responseUnknown(a1, a2, v65);
    sub_100416C34(v65);
    goto LABEL_63;
  }

  v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "NC";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [%s] Restarting provisioning from scratch", buf, 0xCu);
  }

  v15 = *(a1 + 344);
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    if (v16)
    {
      v17 = v16;
      v18 = *(a1 + 336);
      if (v18)
      {
        *buf = 10;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v18, &v64, v5 | &_mh_execute_header, buf, 0, 0);
        memset(buf, 0, 32);
        sub_100416A54(v49, &v61);
        LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v49, buf);
        sub_1000DD0AC(v49, v49[1]);
        sub_100416748(__p, buf);
        LazuliProvisioningWebHelper::showAlertIfNeeded(a1, __p);
        if (v48 == 1 && __p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        LazuliProvisioningWebHelper::restartProvisioning(a1, 0);
        if (buf[24] == 1 && *buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      goto LABEL_45;
    }
  }

LABEL_63:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v58);
  }

  sub_1000DD0AC(&v61, v62);
}

void sub_100788EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47)
{
  sub_100004A34(v47);
  if (*(v48 - 185) < 0)
  {
    operator delete(*(v48 - 208));
  }

  if (*(v48 - 161) < 0)
  {
    operator delete(*(v48 - 184));
  }

  sub_1000DD0AC(v48 - 160, *(v48 - 152));
  _Unwind_Resume(a1);
}

void sub_100789038(uint64_t a1, uint64_t a2)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  (*(**a2 + 56))(&v41);
  v4 = (*(**a2 + 24))();
  v38 = 0;
  v39 = 0;
  v40 = 0;
  (*(**a2 + 48))(&v38);
  v37 = 5;
  v5 = *(a1 + 344);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 336);
      if (v7)
      {
        v8 = HIBYTE(v40);
        if (v40 < 0)
        {
          v8 = v39;
        }

        if (v8 && v4 == 200)
        {
          if (sub_100789704(&v38, &v41))
          {
            v9 = sub_100786E4C(a1, &v38, 5);
            v10 = *(**(a1 + 48) + 16);
            if (v9)
            {
              v11 = *v10();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 136315138;
                *(&buf + 4) = "NC";
                v12 = "#I [%s] Vapid flow triggered";
LABEL_44:
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &buf, 0xCu);
              }
            }

            else
            {
              v11 = *v10();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 136315138;
                *(&buf + 4) = "NC";
                v12 = "#I [%s] Failed to handle client-auth-data body";
                goto LABEL_44;
              }
            }

LABEL_16:
            sub_100004A34(v6);
            goto LABEL_17;
          }

          v23 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = "NC";
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I [%s] Handling as regular refresh XML..", &buf, 0xCu);
          }

          v35[0] = 0;
          v35[1] = 0;
          v36 = 0;
          sub_10006F264(v32, (a1 + 392));
          v30.__r_.__value_.__s.__data_[0] = 0;
          v31 = 0;
          LazuliProvisioningServerWrapper::handleXml(v7, &v38, v35, &v41, &v37, v32, &v30);
          if (v31 == 1 && SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }

          if (v34 == 1 && v33 < 0)
          {
            operator delete(v32[0]);
          }

          if ((SHIBYTE(v36) & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          v22 = v35[0];
        }

        else
        {
          if (v4 != 511 && v4 != 400)
          {
            v24 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
            if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
            {
              sub_10177DCD0();
            }

            LODWORD(buf) = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v37, v4 | &_mh_execute_header, &buf, 0, 0);
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 0x40000000;
            aBlock[2] = sub_10078993C;
            aBlock[3] = &unk_101E7C710;
            aBlock[4] = a1;
            v45 = 0;
            v44[0] = off_101E4BC98;
            v44[1] = _Block_copy(aBlock);
            v45 = v44;
            LazuliProvisioningWebHelper::responseUnknown(a1, a2, v44);
            sub_100416C34(v44);
            goto LABEL_16;
          }

          LazuliProvisioningServerWrapper::eraseFullAndRefreshXmlForServer(*(a1 + 336));
          buf = 0u;
          v47 = 0u;
          sub_100416A54(v29, &v41);
          LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v29, &buf);
          sub_1000DD0AC(v29, v29[1]);
          sub_100416748(__p, &buf);
          LazuliProvisioningWebHelper::showAlertIfNeeded(a1, __p);
          if (v28 == 1 && __p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          isFirstRetryAttempt = LazuliProvisioningServerWrapper::isFirstRetryAttempt(v7);
          LazuliProvisioningWebHelper::restartProvisioning(a1, isFirstRetryAttempt);
          LazuliProvisioningServerWrapper::resetPendingRefresh(v7);
          v26 = 10;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v7, &v37, v4 | &_mh_execute_header, &v26, 0, 0);
          if (BYTE8(v47) != 1)
          {
            goto LABEL_16;
          }

          v22 = buf;
          if (!buf)
          {
            goto LABEL_16;
          }

          *(&buf + 1) = buf;
        }

        operator delete(v22);
        goto LABEL_16;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10177DBE0(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v38);
  }

  sub_1000DD0AC(&v41, v42);
}

void sub_1007895D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  sub_100004A34(v45);
  if (*(v46 - 169) < 0)
  {
    operator delete(*(v46 - 192));
  }

  sub_1000DD0AC(v46 - 168, *(v46 - 160));
  _Unwind_Resume(a1);
}

BOOL sub_100789704(void *a1, uint64_t a2)
{
  memset(&v26, 0, sizeof(v26));
  sub_10000501C(__p, "Content-Type");
  v4 = sub_10038F068(a2, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 + 8 == v4)
  {
    size = 0;
    v7 = 0;
    v5 = 0;
  }

  else
  {
    std::string::operator=(&v26, (v4 + 56));
    v5 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    size = v26.__r_.__value_.__l.__size_;
    v7 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = &v26;
  }

  else
  {
    v8 = v7;
  }

  if ((v5 & 0x80u) == 0)
  {
    size = v5;
  }

  if (size >= 39)
  {
    v9 = v8 + size;
    v10 = v8;
    do
    {
      v11 = memchr(v10, 97, size - 38);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      if (!memcmp(v11, "application/vnd.gsma.cfg-clientauth+xml", 0x27uLL))
      {
        if (v12 == v9 || v12 - v8 == -1)
        {
          break;
        }

        v13 = 1;
        if ((v5 & 0x80) == 0)
        {
          return v13;
        }

        goto LABEL_47;
      }

      v10 = (v12 + 1);
      size = v9 - (v12 + 1);
    }

    while (size >= 39);
  }

  v14 = *(a1 + 23);
  v15 = a1[1];
  if (v14 < 0)
  {
    a1 = *a1;
  }

  if (v14 < 0)
  {
    v14 = v15;
  }

  v16 = a1 + v14;
  if (v14 >= 27)
  {
    v17 = a1;
    do
    {
      v18 = memchr(v17, 99, v14 - 26);
      if (!v18)
      {
        break;
      }

      if (*v18 == 0x612D746E65696C63 && *(v18 + 1) == 0x6369746E65687475 && *(v18 + 2) == 0x757165722D797469 && *(v18 + 19) == 0x747365757165722DLL)
      {
        goto LABEL_40;
      }

      v17 = v18 + 1;
      v14 = v16 - v17;
    }

    while (v16 - v17 > 26);
  }

  v18 = v16;
LABEL_40:
  v13 = v18 != v16 && v18 - a1 != -1;
  if ((v5 & 0x80) != 0)
  {
LABEL_47:
    operator delete(v7);
  }

  return v13;
}

void sub_100789904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100789954(uint64_t a1, uint64_t a2)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  (*(**a2 + 56))(&v50);
  v4 = (*(**a2 + 24))();
  v47 = 0;
  v48 = 0;
  v49 = 0;
  (*(**a2 + 48))(&v47);
  v45 = 0uLL;
  v46 = 0;
  sub_100416A54(v44, &v50);
  LazuliProvisioningWebHelper::getCookie(v44, &v45);
  sub_1000DD0AC(v44, v44[1]);
  v43 = 1;
  if (v4 == 511)
  {
    goto LABEL_35;
  }

  if (v4 != 403)
  {
    if (v4 != 200)
    {
      goto LABEL_52;
    }

    v5 = HIBYTE(v49);
    if (v49 < 0)
    {
      v5 = v48;
    }

    if (v5)
    {
      v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "NC";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK with XML", buf, 0xCu);
      }

      v7 = *(a1 + 344);
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = *(a1 + 336);
          if (v10)
          {
            v41[0] = 0;
            v41[1] = 0;
            v42 = 0;
            sub_10006F264(v38, (a1 + 392));
            __p.__r_.__value_.__s.__data_[0] = 0;
            v37 = 0;
            LazuliProvisioningServerWrapper::handleXml(v10, &v47, v41, &v50, &v43, v38, &__p);
            if (v37 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v40 == 1 && v39 < 0)
            {
              operator delete(v38[0]);
            }

            if (SHIBYTE(v42) < 0)
            {
              operator delete(v41[0]);
            }
          }

LABEL_31:
          sub_100004A34(v9);
          goto LABEL_66;
        }
      }

      goto LABEL_66;
    }

    v17 = HIBYTE(v46);
    if (v46 < 0)
    {
      v17 = *(&v45 + 1);
    }

    if (!v17)
    {
LABEL_52:
      v25 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        sub_10177DD50();
      }

      v26 = *(a1 + 344);
      if (v26)
      {
        v27 = std::__shared_weak_count::lock(v26);
        if (v27)
        {
          v28 = v27;
          v29 = *(a1 + 336);
          if (v29)
          {
            *buf = 10;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v29, &v43, v4 | &_mh_execute_header, buf, 0, 0);
          }

          sub_100004A34(v28);
        }
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 0x40000000;
      aBlock[2] = sub_10078A498;
      aBlock[3] = &unk_101E7C750;
      aBlock[4] = a1;
      v54 = 0;
      v53[0] = off_101E4BC98;
      v53[1] = _Block_copy(aBlock);
      v54 = v53;
      LazuliProvisioningWebHelper::responseUnknown(a1, a2, v53);
      sub_100416C34(v53);
      goto LABEL_66;
    }

LABEL_35:
    v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HIBYTE(v46);
      if (v46 < 0)
      {
        v19 = *(&v45 + 1);
      }

      if (v19)
      {
        v20 = "YES";
      }

      else
      {
        v20 = "NO";
      }

      *buf = 136315394;
      *&buf[4] = "NC";
      *&buf[12] = 2080;
      *&buf[14] = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I [%s] Switching to secure request [cookie: %s]", buf, 0x16u);
    }

    v21 = *(a1 + 344);
    if (v21)
    {
      v22 = std::__shared_weak_count::lock(v21);
      if (v22)
      {
        v23 = v22;
        v24 = *(a1 + 336);
        if (v24)
        {
          *buf = 10;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v24, &v43, v4 | &_mh_execute_header, buf, 0, 0);
        }

        sub_100004A34(v23);
      }
    }

    memset(buf, 0, 32);
    sub_100416A54(v35, &v50);
    LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v35, buf);
    sub_1000DD0AC(v35, v35[1]);
    sub_100416748(v33, buf);
    LazuliProvisioningWebHelper::showAlertIfNeeded(a1, v33);
    if (v34 == 1 && v33[0])
    {
      v33[1] = v33[0];
      operator delete(v33[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      sub_100005F2C(__dst, v45, *(&v45 + 1));
    }

    else
    {
      *__dst = v45;
      v32 = v46;
    }

    sub_10078A190(a1, __dst);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__dst[0]);
    }

    if (buf[24] == 1 && *buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    goto LABEL_66;
  }

  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HIBYTE(v46);
    if (v46 < 0)
    {
      v12 = *(&v45 + 1);
    }

    if (v12)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    *buf = 136315394;
    *&buf[4] = "NC";
    *&buf[12] = 2080;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 403 forbidden response [cookie: %s]", buf, 0x16u);
  }

  v14 = *(a1 + 344);
  if (v14)
  {
    v15 = std::__shared_weak_count::lock(v14);
    if (v15)
    {
      v9 = v15;
      v16 = *(a1 + 336);
      if (v16)
      {
        *buf = 10;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v16, &v43, 0x100000193, buf, 0, 0);
        LazuliProvisioningServerWrapper::handleForbiddenResponse(v16);
      }

      goto LABEL_31;
    }
  }

LABEL_66:
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v47);
  }

  sub_1000DD0AC(&v50, v51);
}

void sub_10078A018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52, uint64_t a53)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  if (a44 == 1 && a43 < 0)
  {
    operator delete(a38);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  sub_100004A34(v53);
  if (*(v54 - 177) < 0)
  {
    operator delete(*(v54 - 200));
  }

  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  sub_1000DD0AC(v54 - 152, *(v54 - 144));
  _Unwind_Resume(a1);
}

void sub_10078A190(LazuliProvisioningWebHelper *a1, uint64_t a2)
{
  v4 = sub_100784030(a1, 0);
  v30[1] = 0;
  v31 = v4 | 0x8600;
  v29 = v30;
  v30[0] = 0;
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8))
    {
LABEL_3:
      sub_10000501C(__p, "Cookie");
      __str.__r_.__value_.__r.__words[0] = __p;
      v5 = sub_100416DA4(&v29, __p, &unk_101802C98, &__str);
      std::string::operator=((v5 + 56), a2);
      if (SBYTE7(v14) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_9;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_3;
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
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
  v15 = 0u;
  *__p = 0u;
  v14 = 0u;
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  sub_10038E288(__p, CurrentConfig);
  if (HIDWORD(v26) != 1)
  {
    v31 = v4 | 0x8680;
  }

  sub_10038E4E4(__p);
LABEL_9:
  __p[0] = 0;
  __p[1] = 0;
  *&v14 = 0;
  LazuliProvisioningWebHelper::getHeaders(__p, a1, &v31);
  LazuliProvisioningWebHelper::set503Retry(a1, 1);
  v12 = 2;
  sub_100A9C1EC(a1 + 136, __p, &__str);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_10078A8F4;
  aBlock[3] = &unk_101E7C770;
  aBlock[4] = a1;
  v33 = 0;
  v32[0] = off_101E4BC98;
  v32[1] = _Block_copy(aBlock);
  v33 = v32;
  LOBYTE(v7) = 0;
  v9 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(a1, &v12, &__str, &v29, v32, &v7);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(v7);
  }

  sub_100416C34(v32);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_1000DD0AC(__p, __p[1]);
  sub_1000DD0AC(&v29, v30[0]);
}

void sub_10078A4A0(uint64_t a1)
{
  sub_10078A794(a1);
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 136);
    if (*(a1 + 159) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315650;
    *&buf[4] = "NC";
    *&buf[12] = 2082;
    *&buf[14] = v4;
    *&buf[22] = 2082;
    v17 = sub_1004CDF60(CurrentConfig + 51);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting first access on: [%{public}s] with interface [%{public}s] ", buf, 0x20u);
  }

  if (CurrentConfig[51] == 3)
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    sub_10078A190(a1, v13);
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }

    v5 = v13[0];
    goto LABEL_17;
  }

  memset(&__str, 0, sizeof(__str));
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  sub_100A9BE74(a1 + 136, buf, &__str);
  sub_1000DD0AC(buf, *&buf[8]);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_100416868(buf, "User-Agent", "iPhoneOS");
  sub_1000DF684(&v9, buf, 1);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *buf = 1;
  v15[0] = off_101E7C9D8;
  v15[1] = a1;
  v15[3] = v15;
  LOBYTE(__p) = 0;
  v8 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(a1, buf, &__str, &v9, v15, &__p);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v15);
  sub_1000DD0AC(&v9, v10);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = __str.__r_.__value_.__r.__words[0];
LABEL_17:
    operator delete(v5);
  }
}

void sub_10078A708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(&a32);
  sub_1000DD0AC(&a17, a18);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_10078A794(LazuliProvisioningWebHelper *a1)
{
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  v3 = CurrentConfig;
  __dst[0] = 0;
  __dst[1] = 0;
  v8 = 0;
  if (CurrentConfig[23] < 0)
  {
    sub_100005F2C(__dst, *CurrentConfig, *(CurrentConfig + 1));
  }

  else
  {
    *__dst = *CurrentConfig;
    v8 = *(CurrentConfig + 2);
  }

  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  if (v3[95] < 0)
  {
    sub_100005F2C(__p, *(v3 + 9), *(v3 + 10));
  }

  else
  {
    *__p = *(v3 + 72);
    v6 = *(v3 + 11);
  }

  if (!sub_10068BFF8(__dst, "302"))
  {
    if (!sub_10068BFF8(__dst, "31"))
    {
      goto LABEL_16;
    }

    if (SHIBYTE(v8) < 0)
    {
      v4 = *(__dst[0] + 3);
      if (v4 <= 47)
      {
        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v4) = BYTE3(__dst[0]);
      if (SBYTE3(__dst[0]) < 48)
      {
        goto LABEL_16;
      }
    }

    if (v4 > 0x36u)
    {
      goto LABEL_16;
    }
  }

  if (!sub_10068BFF8(__p, "+1"))
  {
    sub_10078AD98(a1);
  }

LABEL_16:
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10078A8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10078A900(LazuliProvisioningWebHelper *a1, int a2)
{
  v4 = sub_100784030(a1, a2);
  v5 = v4 & 0xFFFFFFFFFFFFFF3FLL;
  if (!a2)
  {
    v5 = v4;
  }

  v18 = 0;
  v19 = v5;
  v16 = 0;
  v17 = 0;
  LazuliProvisioningWebHelper::getHeaders(&v16, a1, &v19);
  sub_10000501C(&__p, "rcs_state");
  p_p = &__p;
  v6 = sub_100416DA4(&v16, &__p, &unk_101802C98, &p_p);
  if (*(v6 + 79) < 0)
  {
    *(v6 + 64) = 2;
    v7 = *(v6 + 56);
  }

  else
  {
    v7 = (v6 + 56);
    *(v6 + 79) = 2;
  }

  strcpy(v7, "-4");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = 6;
  sub_100A9C1EC(a1 + 136, &v16, &__p);
  v13[0] = 0;
  v13[1] = 0;
  aBlock[4] = a1;
  p_p = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_10078AB80;
  aBlock[3] = &unk_101E7C790;
  v21 = 0;
  v20[0] = off_101E4BC98;
  v20[1] = _Block_copy(aBlock);
  v21 = v20;
  LOBYTE(v8) = 0;
  v10 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(a1, &v14, &__p, &p_p, v20, &v8);
  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  sub_100416C34(v20);
  sub_1000DD0AC(&p_p, v13[0]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1000DD0AC(&v16, v17);
}

void sub_10078AB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v31 - 56);
  sub_1000DD0AC(&a22, a23);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_1000DD0AC(v31 - 88, *(v31 - 80));
  _Unwind_Resume(a1);
}

void sub_10078AB88(LazuliProvisioningWebHelper *a1)
{
  v12 = 0;
  v13 = sub_100784030(a1, 0) | 0x8000;
  v10 = 0;
  v11 = 0;
  LazuliProvisioningWebHelper::getHeaders(&v10, a1, &v13);
  LazuliProvisioningWebHelper::set503Retry(a1, 1);
  v9 = 5;
  sub_100A9C1EC(a1 + 136, &v10, &__str);
  v7[0] = 0;
  v7[1] = 0;
  aBlock[4] = a1;
  v6 = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_10078AD90;
  aBlock[3] = &unk_101E7C7B0;
  v15 = 0;
  v14[0] = off_101E4BC98;
  v14[1] = _Block_copy(aBlock);
  v15 = v14;
  LOBYTE(__p) = 0;
  v4 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(a1, &v9, &__str, &v6, v14, &__p);
  if (v4 == 1 && v3 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v14);
  sub_1000DD0AC(&v6, v7[0]);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_1000DD0AC(&v10, v11);
}

void sub_10078AD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v30 - 56);
  sub_1000DD0AC(&a22, a23);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_1000DD0AC(v30 - 88, *(v30 - 80));
  _Unwind_Resume(a1);
}

void sub_10078AD98(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    PersonalityIdFromSlotId();
    v3 = __p[23];
    if (__p[23] >= 0)
    {
      v4 = __p;
    }

    else
    {
      v3 = *&__p[8];
      v4 = *__p;
    }

    v5 = v3 ? v4 : "<invalid>";
    LODWORD(buf) = 136446210;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Generating MSISDN mismatch ABC report for %{public}s", &buf, 0xCu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  LazuliProvisioningWebHelper::describe(a1);
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    std::string::basic_string(__p, CurrentConfig, 0, 6uLL, &buf);
    v8 = __p[23];
    v9 = *__p;
    std::string::basic_string(&buf, CurrentConfig + 3, 0, 6uLL, v41);
    v10 = __p;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if ((SBYTE7(v52) & 0x80u) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf;
    }

    *v53 = 136446466;
    *&v53[4] = v10;
    *&v53[12] = 2082;
    *&v53[14] = p_buf;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I IMSI prefix: %{public}s, MSISDN prefix: %{public}s, ", v53, 0x16u);
    if (SBYTE7(v52) < 0)
    {
      operator delete(buf);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 104));
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
  *__p = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, __p);
  if (!v18)
  {
    std::mutex::unlock(v13);
    goto LABEL_53;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v13);
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v19);
    if (!v20)
    {
LABEL_52:
      sub_100004A34(v19);
      goto LABEL_53;
    }
  }

  else
  {
    std::mutex::unlock(v13);
    if (!v20)
    {
      goto LABEL_53;
    }
  }

  memset(v53, 0, sizeof(v53));
  buf = 0u;
  v52 = 0u;
  v44 = 0;
  v43 = 0;
  if ((*(*v20 + 256))(v20, *(a1 + 100), v53, &buf, &v44 + 1, &v44, &v43))
  {
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v53[23];
      v23 = *v53;
      asString();
      v24 = v53;
      if (v22 < 0)
      {
        v24 = v23;
      }

      if (v42 >= 0)
      {
        v25 = v41;
      }

      else
      {
        v25 = v41[0];
      }

      if (HIBYTE(v44))
      {
        v26 = "YES";
      }

      else
      {
        v26 = "NO";
      }

      *__p = 136447234;
      if (v44)
      {
        v27 = "YES";
      }

      else
      {
        v27 = "NO";
      }

      *&__p[4] = v24;
      if (v43)
      {
        v28 = "YES";
      }

      else
      {
        v28 = "NO";
      }

      *&__p[12] = 2082;
      *&__p[14] = v25;
      *&__p[22] = 2080;
      *&__p[24] = v26;
      *&__p[32] = 2080;
      *&__p[34] = v27;
      *&__p[42] = 2080;
      *&__p[44] = v28;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Label: %{public}s, PhoneNumber: %{public}s, exists: %s, editable: %s, read: %s", __p, 0x34u);
      if (v42 < 0)
      {
        operator delete(v41[0]);
      }
    }
  }

  if (SBYTE7(v52) < 0)
  {
    operator delete(buf);
  }

  if (v53[23] < 0)
  {
    operator delete(*v53);
  }

  if (v19)
  {
    goto LABEL_52;
  }

LABEL_53:
  memset(&__p[8], 0, 32);
  *&__p[40] = 0x600000000000000;
  *&__p[56] = 0u;
  v50 = 0u;
  v49 = 0u;
  memset(&v47, 0, sizeof(v47));
  v48 = 23;
  qmemcpy(&__p[23], "\tLazuli", 7);
  qmemcpy(__p, "Telephony", 9);
  __p[71] = 20;
  qmemcpy(&__p[48], "LazuliMsisdnMismatch", 20);
  sub_1000167D4(&v47, "Trusted phone number does not match IMSI", 0x28uLL);
  v48 |= 0x11uLL;
  sub_100004AA0(&buf, (a1 + 8));
  v29 = *(&buf + 1);
  if (*(&buf + 1))
  {
    atomic_fetch_add_explicit((*(&buf + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v29);
  }

  v30 = Registry::getServiceMap(*(a1 + 104));
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
  *&buf = v32;
  v36 = sub_100009510(&v31[1].__m_.__sig, &buf);
  if (!v36)
  {
    v38 = 0;
LABEL_63:
    std::mutex::unlock(v31);
    v37 = 0;
    v39 = 1;
    if (!v38)
    {
      goto LABEL_67;
    }

LABEL_64:
    sub_100D9EC48(&__dst, __p);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = 0;
    operator new();
  }

  v38 = v36[3];
  v37 = v36[4];
  if (!v37)
  {
    goto LABEL_63;
  }

  atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v31);
  atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v37);
  v39 = 0;
  if (v38)
  {
    goto LABEL_64;
  }

LABEL_67:
  if ((v39 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  if (SBYTE7(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if ((__p[71] & 0x80000000) != 0)
  {
    operator delete(*&__p[48]);
  }

  if ((__p[47] & 0x80000000) != 0)
  {
    operator delete(*&__p[24]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }
}