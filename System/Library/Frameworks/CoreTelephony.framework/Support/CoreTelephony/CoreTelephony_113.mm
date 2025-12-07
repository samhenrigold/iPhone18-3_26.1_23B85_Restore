void iWLanNotifyCodeAsString(void *__return_ptr a1@<X8>, int a2@<W0>)
{
  if (a2 > 80000)
  {
    if (a2 <= 80005)
    {
      if (a2 <= 80002)
      {
        if (a2 == 80001)
        {
          v3 = "kNEIPSecNotifyCodeAppStatusWifiUnavailable";
        }

        else
        {
          v3 = "kNEIPSecNotifyCodeAppStatusNotReceiveIPAddress";
        }
      }

      else if (a2 == 80003)
      {
        v3 = "kNEIPSecNotifyCodeAppStatusFailToConfigInterface";
      }

      else if (a2 == 80004)
      {
        v3 = "kNEIPSecNotifyCodeAppStatusSetupFailure";
      }

      else
      {
        v3 = "kNEIPSecNotifyCodeAppStatusNameResolveFailure";
      }
    }

    else
    {
      if (a2 > 80008)
      {
        switch(a2)
        {
          case 80009:
            v3 = "kNEIPSecNotifyCodeAppStatusPolicyNotAllowed";
            goto LABEL_74;
          case 80010:
            v3 = "kNEIPSecNotifyCodeAppStatusLoginSessionInactive";
            goto LABEL_74;
          case 80012:
            v3 = "kNEIPSecNotifyCodeAppStatusAttachAPNConflict";
            goto LABEL_74;
        }

        goto LABEL_34;
      }

      if (a2 == 80006)
      {
        v3 = "kNEIPSecNotifyCodeAppStatusHandoverAddressConflict";
      }

      else if (a2 == 80007)
      {
        v3 = "kNEIPSecNotifyCodeAppStatusFailedToSetting";
      }

      else
      {
        v3 = "kNEIPSecNotifyCodeAppStatusSleepWithNoWoW";
      }
    }

LABEL_74:

    sub_10000501C(a1, v3);
    return;
  }

  if (a2 > 39)
  {
    switch(a2)
    {
      case 70000:
        v3 = "kNEIPSecNotifyCodeUnknown";
        goto LABEL_74;
      case 70001:
        v3 = "kNEIPSecNotifyCodeInternalError";
        goto LABEL_74;
      case 70002:
        v3 = "kNEIPSecNotifyCodeCouldNotSend";
        goto LABEL_74;
      case 70003:
        v3 = "kNEIPSecNotifyCodeInvalidArgs";
        goto LABEL_74;
      case 70004:
        v3 = "kNEIPSecNotifyCodeUserRequested";
        goto LABEL_74;
      case 70005:
        v3 = "kNEIPSecNotifyCodePeerRequested";
        goto LABEL_74;
      case 70006:
        v3 = "kNEIPSecNotifyCodeServerDidNotRespond";
        goto LABEL_74;
      case 70007:
        v3 = "kNEIPSecNotifyCodeServerStoppedResponding";
        goto LABEL_74;
      case 70008:
        v3 = "kNEIPSecNotifyCodeReceivedInvalidSyntax";
        goto LABEL_74;
      case 70009:
        v3 = "kNEIPSecNotifyCodeReceivedInvalidProposal";
        goto LABEL_74;
      case 70010:
        v3 = "kNEIPSecNotifyCodeReceivedInvalidSPI";
        goto LABEL_74;
      case 70011:
        v3 = "kNEIPSecNotifyCodeReceivedInvalidTS";
        goto LABEL_74;
      case 70012:
        v3 = "kNEIPSecNotifyCodeIKESocketFailure";
        goto LABEL_74;
      case 70013:
        v3 = "kNEIPSecNotifyCodeIKELocalAddressMissing";
        goto LABEL_74;
      case 70014:
        v3 = "kNEIPSecNotifyCodeIKERemoteAddressMissing";
        goto LABEL_74;
      case 70015:
        v3 = "kNEIPSecNotifyCodeIKERemotePortMissing";
        goto LABEL_74;
      case 70016:
        v3 = "kNEIPSecNotifyCodePacketCreateFailed";
        goto LABEL_74;
      case 70017:
        v3 = "kNEIPSecNotifyCodePacketProcessingFailed";
        goto LABEL_74;
      case 70018:
        v3 = "kNEIPSecNotifyCodeSAMigrationFailed";
        goto LABEL_74;
      case 70019:
        v3 = "kNEIPSecNotifyCodeInvalidConfiguration";
        goto LABEL_74;
      case 70020:
        v3 = "kNEIPSecNotifyCodeFailedToGenerateSPI";
        goto LABEL_74;
      case 70021:
        v3 = "kNEIPSecNotifyCodeCryptoFailed";
        goto LABEL_74;
      case 70022:
        v3 = "kNEIPSecNotifyCodeConfigurationEstablishmentFailed";
        goto LABEL_74;
      case 70023:
        v3 = "kNEIPSecNotifyCodeChildInstallSAFailed";
        goto LABEL_74;
      case 70024:
        v3 = "kNEIPSecNotifyCodeNoIKESA";
        goto LABEL_74;
      case 70025:
        v3 = "kNEIPSecNotifyCodeNoChildSA";
        goto LABEL_74;
      case 70026:
        v3 = "kNEIPSecNotifyCodeChildUninstallSAFailed";
        goto LABEL_74;
      case 70027:
        v3 = "kNEIPSecNotifyCodeAuthFailed";
        goto LABEL_74;
      default:
        if (a2 == 40)
        {
          v3 = "kNEIPSecNotifyCodeServerRejectedAddress";
        }

        else
        {
          if (a2 != 16407)
          {
            goto LABEL_34;
          }

          v3 = "kNEIPSecNotifyIKEStatusServerRedirect";
        }

        break;
    }

    goto LABEL_74;
  }

  if (a2 <= 13)
  {
    if (a2 == 4)
    {
      v3 = "kNEIPSecNotifyCodeServerRejectedSPI";
      goto LABEL_74;
    }

    if (a2 == 7)
    {
      v3 = "kNEIPSecNotifyCodeServerRejectedSyntax";
      goto LABEL_74;
    }
  }

  else
  {
    switch(a2)
    {
      case 14:
        v3 = "kNEIPSecNotifyCodeServerRejectedProposal";
        goto LABEL_74;
      case 24:
        v3 = "kNEIPSecNotifyCodeServerRejectedAuth";
        goto LABEL_74;
      case 38:
        v3 = "kNEIPSecNotifyCodeServerRejectedTS";
        goto LABEL_74;
    }
  }

LABEL_34:
  std::to_string(&v8, a2);
  v4 = std::string::insert(&v8, 0, "Unknown iWLanStatus(", 0x14uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v9, ")", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  a1[2] = *(&v6->__r_.__value_.__l + 2);
  *a1 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_10076987C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007698B0(const __CFArray *a1, CSIPacketAddress *this)
{
  result = CSIPacketAddress::isZeroIP(this);
  if ((result & 1) == 0)
  {
    v5 = CSIPacketAddress::isIPv4(this) ? @"AssignedIPv4Address" : @"AssignedIPv6Address";
    result = CFArrayGetCount(a1);
    if (result >= 1)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        value = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
        v9 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 == CFDictionaryGetTypeID())
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v9);
            v12 = value;
            value = MutableCopy;
            *&__dst = v12;
            sub_1000296E0(&__dst);
            CFArraySetValueAtIndex(a1, v7, value);
            v13 = CFDictionaryGetValue(value, @"Name");
            v14 = v13;
            if (v13)
            {
              v15 = CFGetTypeID(v13);
              v16 = v15 == CFStringGetTypeID() ? v14 : 0;
            }

            else
            {
              v16 = 0;
            }

            if (CFStringCompare(v16, v5, 0) == kCFCompareEqualTo)
            {
              break;
            }
          }
        }

        result = sub_1000296E0(&value);
        if (v6 == ++v7)
        {
          return result;
        }
      }

      v27 = 0;
      CSIPacketAddress::operator std::string();
      if (SHIBYTE(v26) < 0)
      {
        sub_100005F2C(__p, v25[0], v25[1]);
      }

      else
      {
        *__p = *v25;
        v31 = v26;
      }

      v34 = 0;
      if (SHIBYTE(v31) < 0)
      {
        sub_100005F2C(&__dst, __p[0], __p[1]);
      }

      else
      {
        __dst = *__p;
        v33 = v31;
      }

      v35 = 0;
      if (ctu::cf::convert_copy())
      {
        v17 = v34;
        v34 = v35;
        v24[0] = v17;
        sub_100005978(v24);
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
      }

      v27 = v34;
      v34 = 0;
      sub_100005978(&v34);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      CFDictionarySetValue(value, @"Address", v27);
      if (CSIPacketAddress::isIPv6(this))
      {
        memset(v24, 0, sizeof(v24));
        sub_10000501C(&__dst, "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff");
        CSIPacketAddress::CSIPacketAddress();
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__dst);
        }

        PrefixLen = CSIPacketAddress::getPrefixLen(this);
        CSIPacketAddress::applyMaskPrefix(v24, PrefixLen);
        CSIPacketAddress::operator std::string();
        if (SHIBYTE(v22) < 0)
        {
          sub_100005F2C(__p, v21[0], v21[1]);
        }

        else
        {
          *__p = *v21;
          v31 = v22;
        }

        v29 = 0;
        if (SHIBYTE(v31) < 0)
        {
          sub_100005F2C(&__dst, __p[0], __p[1]);
        }

        else
        {
          __dst = *__p;
          v33 = v31;
        }

        v34 = 0;
        if (ctu::cf::convert_copy())
        {
          v19 = v29;
          v29 = v34;
          v35 = v19;
          sub_100005978(&v35);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(__dst);
        }

        v20 = v29;
        v23 = v29;
        v29 = 0;
        sub_100005978(&v29);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v22) < 0)
        {
          operator delete(v21[0]);
        }

        CFDictionarySetValue(value, @"Netmask", v20);
        sub_100005978(&v23);
      }

      sub_100005978(&v27);
      return sub_1000296E0(&value);
    }
  }

  return result;
}

void sub_100769C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26, const void *a27, const void *a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100005978(&a28);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_100005978(&a26);
  sub_1000296E0(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_100769D60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject **a5, uint64_t *a6, uint64_t *a7)
{
  *(a1 + 24) = off_101E7BB90;
  *a1 = off_101E7BE58;
  PersonalitySpecificImpl::PersonalitySpecificImpl();
  *(a1 + 24) = off_101E7AA90;
  *a1 = off_101E7ADB8;
  v14 = *a5;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = a6[1];
  v21 = *a6;
  v22 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003561E4(a1 + 32, off_101E7A420, a2, a3, a4, &object, &v21, "Tech");
  if (v22)
  {
    sub_100004A34(v22);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E79608;
  *(a1 + 24) = off_101E79B60;
  *(a1 + 32) = off_101E7A108;
  *(a1 + 144) = off_101E7A3D8;
  v16 = *a7;
  *(a1 + 152) = *a7;
  v17 = a7[1];
  *(a1 + 160) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
    v16 = *a7;
  }

  (*(*v16 + 328))(v16);
  *(a1 + 232) = 0;
  *(a1 + 184) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  CSIPacketAddress::CSIPacketAddress((a1 + 256));
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  CSIPacketAddress::CSIPacketAddress((a1 + 304));
  CSIPacketAddress::CSIPacketAddress((a1 + 328));
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  CSIPacketAddress::CSIPacketAddress((a1 + 376));
  CSIPacketAddress::CSIPacketAddress((a1 + 400));
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 1;
  *(a1 + 696) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 688) = a1 + 696;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 781) = 0u;
  *(a1 + 797) = 1;
  *(a1 + 856) = 0;
  *(a1 + 798) = 0u;
  *(a1 + 814) = 0u;
  *(a1 + 830) = 0;
  sub_1000224C8(a1 + 864, a1 + 832);
  Registry::getTimerService(&v19, *(a1 + 80));
  *(a1 + 824) = (**v19)(v19);
  if (v20)
  {
    sub_100004A34(v20);
  }

  return a1;
}

void sub_10076A0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, dispatch_object_t object)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_10000FF50(v16 + 864);
  sub_10000FF50(v16 + 832);
  v24 = *(v16 + 784);
  *(v16 + 784) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(v16 + 776);
  *(v16 + 776) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(v16 + 768);
  *(v16 + 768) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(v16 + 760);
  *(v16 + 760) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *v21;
  *v21 = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  a12 = v16 + 720;
  sub_1000087B4(&a12);
  sub_100009970(v16 + 688, *(v16 + 696));
  a12 = v16 + 664;
  sub_1000087B4(&a12);
  if (*(v16 + 663) < 0)
  {
    operator delete(*(v16 + 640));
  }

  PDPMetricInfo::~PDPMetricInfo(v23);
  sub_10001021C((v16 + 432));
  v29 = *(v16 + 352);
  if (v29)
  {
    *(v16 + 360) = v29;
    operator delete(v29);
  }

  v30 = *(v16 + 280);
  if (v30)
  {
    *(v16 + 288) = v30;
    operator delete(v30);
  }

  sub_10001021C(v22);
  sub_1000296E0(v20);
  sub_1000296E0(v19);
  v31 = *(v16 + 216);
  *(v16 + 216) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(v16 + 208);
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = *(v16 + 184);
  *(v16 + 184) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(v16 + 176);
  if (v34)
  {
    sub_100004A34(v34);
  }

  v35 = *(v16 + 160);
  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  TMKXPCServer.shutdown()();
  sub_100356498(v18, off_101E7A420);
  TechDataContextInterface::~TechDataContextInterface(v17);
  PersonalitySpecificImpl::~PersonalitySpecificImpl(v16);
  DataContextInterface::~DataContextInterface(v17);
  PersonalitySpecific::~PersonalitySpecific(v16);
  _Unwind_Resume(a1);
}

void sub_10076A390(uint64_t a1)
{
  *(a1 + 192) = 0;
  sub_10076A498(a1, 0);
  sub_100356BE0(a1 + 32, &v8);
  v2 = v8;
  sub_100004AA0(&v4, (a1 + 40));
  v3 = v4;
  if (v4)
  {
    v3 = &v4[*(*v4 - 688)];
  }

  v6 = v3;
  v7 = v5;
  v4 = 0;
  v5 = 0;
  (*(*v2 + 192))(v2, &v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_10076A460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

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

void sub_10076A498(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_100772ED4(*(a1 + 224));
    v7 = 136315650;
    v8 = "setStatus";
    v9 = 2080;
    v10 = v5;
    v11 = 2080;
    v12 = sub_100772ED4(v2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: Changing state (change states) %s->%s", &v7, 0x20u);
  }

  v6 = *(a1 + 224);
  *(a1 + 224) = v2;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (v6 != 3)
      {
        (*(*(a1 + 32) + 680))(a1 + 32);
        *(a1 + 800) = sub_100086B10(a1);
      }

      return;
    }

    if (v2 != 4)
    {
      return;
    }

LABEL_9:
    if (v6 != v2)
    {
      (*(*(a1 + 32) + 696))(a1 + 32);
    }

    return;
  }

  if (!v2)
  {
    sub_10076AD50(a1);
    return;
  }

  if (v2 == 1)
  {
    goto LABEL_9;
  }
}

void sub_10076A65C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v15) = 136315138;
    *(&v15 + 4) = "startUsing";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: ", &v15, 0xCu);
  }

  if ((*(a1 + 798) & 1) == 0)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
    *&v15 = v5;
    v9 = sub_100009510(&v4[1].__m_.__sig, &v15);
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
        if (!v11)
        {
LABEL_18:
          sub_100004A34(v10);
          goto LABEL_19;
        }

LABEL_13:
        v15 = 0uLL;
        (*(*v11 + 1128))(&v15, v11);
        v12 = v15;
        if (v15)
        {
          v13 = PersonalitySpecificImpl::simSlot(a1);
          v14 = (*(*(a1 + 32) + 40))();
          (**v12)(v12, v13, v14);
        }

        if (*(&v15 + 1))
        {
          sub_100004A34(*(&v15 + 1));
        }

        if (!v10)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      std::mutex::unlock(v4);
      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      std::mutex::unlock(v4);
    }

LABEL_19:
    *(a1 + 798) = 1;
  }
}

void sub_10076A878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076A8D8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 56)) = a2[9];
  *(a1 + 24) = a2[10];
  *(a1 + *(*a1 - 64)) = a2[11];
  *(a1 + 32) = a2[12];
  *(a1 + 144) = off_101E7A3D8;
  v5 = *(a1 + 752);
  *(a1 + 752) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 760);
  *(a1 + 760) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 784);
  *(a1 + 784) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(a1 + 794) = 0;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  sub_10076AD50(a1);
  sub_10000FF50(a1 + 864);
  sub_10000FF50(a1 + 832);
  v8 = *(a1 + 784);
  *(a1 + 784) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 776);
  *(a1 + 776) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 768);
  *(a1 + 768) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 760);
  *(a1 + 760) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 752);
  *(a1 + 752) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v20 = (a1 + 720);
  sub_1000087B4(&v20);
  sub_100009970(a1 + 688, *(a1 + 696));
  v20 = (a1 + 664);
  sub_1000087B4(&v20);
  if (*(a1 + 663) < 0)
  {
    operator delete(*(a1 + 640));
  }

  PDPMetricInfo::~PDPMetricInfo((a1 + 440));
  sub_10001021C((a1 + 432));
  v13 = *(a1 + 352);
  if (v13)
  {
    *(a1 + 360) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 280);
  if (v14)
  {
    *(a1 + 288) = v14;
    operator delete(v14);
  }

  sub_10001021C((a1 + 248));
  sub_1000296E0((a1 + 240));
  sub_1000296E0((a1 + 232));
  v15 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a1 + 208);
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(a1 + 176);
  if (v18)
  {
    sub_100004A34(v18);
  }

  v19 = *(a1 + 160);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  TMKXPCServer.shutdown()();
  sub_100356498((a1 + 32), a2 + 6);
  TechDataContextInterface::~TechDataContextInterface((a1 + 24));
  PersonalitySpecificImpl::~PersonalitySpecificImpl(a1);
}

void sub_10076AD50(void *a1)
{
  v1 = a1[25];
  if (v1)
  {
    v3 = a1[9];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v1 + 88))(__p, v1);
      if (v7 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136315394;
      v9 = "releaseIPSecInterface";
      v10 = 2080;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: IPSec virtual interface %s released", buf, 0x16u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v5 = a1[26];
    a1[25] = 0;
    a1[26] = 0;
    if (v5)
    {
      sub_100004A34(v5);
    }
  }
}

void sub_10076AE70(PersonalitySpecific *a1)
{
  sub_10076A8D8(a1, &off_101E7A3F0);
  DataContextInterface::~DataContextInterface((v2 + 24));

  PersonalitySpecific::~PersonalitySpecific(a1);
}

void sub_10076AED8(PersonalitySpecific *a1)
{
  sub_10076AE70(a1);

  operator delete();
}

void sub_10076AF10(uint64_t a1)
{
  sub_10076AE70((a1 - 24));

  operator delete();
}

void sub_10076AF4C(uint64_t a1)
{
  sub_10076AE70((a1 - 32));

  operator delete();
}

void sub_10076AF88(uint64_t a1)
{
  sub_10076AE70((a1 - 144));

  operator delete();
}

void sub_10076AFC8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v15) = 136315138;
    *(&v15 + 4) = "stopUsing";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: tech", &v15, 0xCu);
  }

  *(a1 + 798) = 0;
  if (!*(a1 + 224))
  {
    sub_10076AD50(a1);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  *&v15 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v15);
  if (!v9)
  {
    std::mutex::unlock(v4);
    return;
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
LABEL_19:
      sub_100004A34(v10);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v4);
    if (!v11)
    {
      return;
    }
  }

  v15 = 0uLL;
  (*(*v11 + 1128))(&v15, v11);
  v12 = v15;
  if (v15)
  {
    v13 = PersonalitySpecificImpl::simSlot(a1);
    v14 = (*(*(a1 + 32) + 40))();
    (*(*v12 + 8))(v12, v13, v14);
  }

  if (*(&v15 + 1))
  {
    sub_100004A34(*(&v15 + 1));
  }

  if (v10)
  {
    goto LABEL_19;
  }
}

void sub_10076B1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076B24C(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "invalidateSession";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }

  sub_10022CF24(a1, 0);
  sub_10022D3B4(a1, 0);
  v5 = *(a1 + 752);
  *(a1 + 752) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 760);
  *(a1 + 760) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 784);
  *(a1 + 784) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 768);
  *(a1 + 768) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 776);
  *(a1 + 776) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 794) = 0;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  *(a1 + 424) = 0;
  v10 = *(a1 + 200);
  if (v10)
  {
    if (((*(*v10 + 32))(v10) & 1) == 0)
    {
      v11 = *(a1 + 72);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "invalidateSession";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: VirtualInterface removeAllAddresses failed", buf, 0xCu);
      }
    }

    if (((*(**(a1 + 200) + 40))(*(a1 + 200)) & 1) == 0)
    {
      v12 = *(a1 + 72);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "invalidateSession";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: VirtualInterface updateAdHocService failed", buf, 0xCu);
      }
    }
  }

  v13 = *(a1 + 184);
  if (v13)
  {
    v14 = *(a1 + 72);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "invalidateSession";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: IKESession reset start", buf, 0xCu);
      v13 = *(a1 + 184);
      *(a1 + 184) = 0;
      if (!v13)
      {
LABEL_26:
        v15 = *(a1 + 72);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "invalidateSession";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: IKESession reset done", buf, 0xCu);
        }

        goto LABEL_28;
      }
    }

    else
    {
      *(a1 + 184) = 0;
    }

    (*(*v13 + 8))(v13);
    goto LABEL_26;
  }

LABEL_28:
  if (*(a1 + 616))
  {
    *(a1 + 616) = 0;
    v16 = *(a1 + 72);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "invalidateSession";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: fIPFamilyRequested reset", buf, 0xCu);
    }
  }

  v17 = *(a1 + 160);
  if (v17)
  {
    v18 = std::__shared_weak_count::lock(v17);
    if (v18)
    {
      v19 = *(a1 + 152);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v20 = a1 + 32;
  v21 = (*(*(a1 + 32) + 40))(a1 + 32);
  (*(*v19 + 352))(v19, v21);
  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_100008764((a1 + 720));
  v22 = *(a1 + 432);
  *(a1 + 432) = 0;
  *buf = v22;
  sub_10001021C(buf);
  *buf = a1 + 712;
  *&buf[8] = 0;
  sub_1001E9F04(buf, 4uLL);
  v23 = *(a1 + 216);
  if (v23)
  {
    *(a1 + 216) = 0;
    (*(*v23 + 8))(v23);
  }

  *(a1 + 192) = 0;
  *(a1 + 745) = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
      if (!v32)
      {
LABEL_54:
        sub_100004A34(v31);
        goto LABEL_55;
      }
    }

    else
    {
      std::mutex::unlock(v25);
      if (!v32)
      {
        goto LABEL_55;
      }
    }

    *buf = 0;
    *&buf[8] = 0;
    (*(*v32 + 1128))(buf, v32);
    v33 = *buf;
    if (*buf)
    {
      v34 = PersonalitySpecificImpl::simSlot(a1);
      v35 = (*(*v20 + 40))(a1 + 32);
      (*(*v33 + 24))(v33, v34, v35);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v31)
    {
      goto LABEL_54;
    }
  }

  else
  {
    std::mutex::unlock(v25);
  }

LABEL_55:
  sub_10076A498(a1, 0);
  if (capabilities::ct::supports5G(v36))
  {
    (*(*v20 + 440))(buf, a1 + 32);
    if (*buf)
    {
      (*(*v20 + 440))(&v42, a1 + 32);
      v37 = (*(*v42 + 208))(v42);
      if (v43)
      {
        sub_100004A34(v43);
      }
    }

    else
    {
      v37 = 0;
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v37)
    {
      if (!strcmp(a2, "Handover is done") || !strcmp(a2, "kDataContextDeactivateHandover"))
      {
        v39 = *(a1 + 72);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        *buf = 0;
        v40 = "#I invalidateSession: WiFi->Cell HO successful, do not free pduSessionId";
      }

      else
      {
        if (strcmp(a2, "Internet activated") && strcmp(a2, "Wan IP Acquired") && strcmp(a2, "ePDG resolved") && strcmp(a2, "terminate while connecting") && strcmp(a2, "disconnected") && strcmp(a2, "IP online"))
        {
          v38 = *(a1 + 72);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I invalidateSession: TechContext Done, or cell->WiFi HO failure: Free pduSessionId", buf, 2u);
          }

          sub_100356BE0(a1 + 32, buf);
          (*(**buf + 368))(*buf);
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          goto LABEL_80;
        }

        v39 = *(a1 + 72);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        *buf = 0;
        v40 = "#I invalidateSession: May retry next ePDG. Do not free pduSessionId until retry fails";
      }

      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v40, buf, 2u);
    }
  }

LABEL_80:
  v41 = *(a1 + 72);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "invalidateSession";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s: done: %s", buf, 0x16u);
  }
}

void sub_10076BB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076BC00(capabilities::ct *a1)
{
  if (capabilities::ct::supports5G(a1))
  {
    v3 = *(a1 + 4);
    v2 = a1 + 32;
    (*(v3 + 440))(&v7, v2);
    if (v7)
    {
      (*(*v2 + 440))(&v5, v2);
      v4 = (*(*v5 + 208))(v5);
      if (v6)
      {
        sub_100004A34(v6);
      }
    }

    else
    {
      v4 = 0;
    }

    if (v8)
    {
      sub_100004A34(v8);
    }

    if (v4)
    {
      sub_100356BE0(v2, &v7);
      (*(*v7 + 368))(v7);
      if (v8)
      {
        sub_100004A34(v8);
      }
    }
  }
}

void sub_10076BD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10076BD68@<X0>(uint64_t *__return_ptr a1@<X8>, CFStringRef theString@<X1>, uint64_t a3@<X0>, uint64_t a4@<X2>, int a5@<W3>)
{
  MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, theString);
  if (capabilities::ct::supportsCellRadio(MutableCopy))
  {
    v48 = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    v47[1] = _NSConcreteStackBlock;
    v47[2] = 0x40000000;
    v47[3] = sub_10076C594;
    v47[4] = &unk_101E7A478;
    v47[5] = a3;
    v9 = DataUtils::replaceStringHolder();
    sub_100305E28(&v48);
    v47[0] = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    v42 = _NSConcreteStackBlock;
    v43 = 0x40000000;
    v44 = sub_10076C74C;
    v45 = &unk_101E7A498;
    v46 = a3;
    v10 = DataUtils::replaceStringHolder();
    sub_100305E28(v47);
    __p[0] = 0;
    __p[1] = 0;
    v41 = 0;
    v11 = std::__shared_weak_count::lock(*(a3 + 160));
    v12 = **(a3 + 152);
    if (a5)
    {
      (*(v12 + 424))(__p);
      sub_100004A34(v11);
      v38[0] = 0;
      v38[1] = 0;
      v39 = 0;
      v13 = std::__shared_weak_count::lock(*(a3 + 160));
      (*(**(a3 + 152) + 416))(v38);
    }

    else
    {
      (*(v12 + 408))(__p);
      sub_100004A34(v11);
      v38[0] = 0;
      v38[1] = 0;
      v39 = 0;
      v13 = std::__shared_weak_count::lock(*(a3 + 160));
      (*(**(a3 + 152) + 400))(v38);
    }

    sub_100004A34(v13);
    v16 = HIBYTE(v41);
    if (v41 < 0)
    {
      v16 = __p[1];
    }

    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = HIBYTE(v39);
    if (v39 < 0)
    {
      v17 = v38[1];
    }

    if (!v17)
    {
LABEL_19:
      v18 = std::__shared_weak_count::lock(*(a3 + 160));
      (*(**(a3 + 152) + 408))(buf);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *buf;
      v41 = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
      sub_100004A34(v18);
      v19 = std::__shared_weak_count::lock(*(a3 + 160));
      (*(**(a3 + 152) + 400))(buf);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }

      *v38 = *buf;
      v39 = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
      sub_100004A34(v19);
    }

    v37 = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    v34[1] = _NSConcreteStackBlock;
    v34[2] = 1174405120;
    v34[3] = sub_10076C904;
    v34[4] = &unk_101E7A4B8;
    if (SHIBYTE(v41) < 0)
    {
      sub_100005F2C(&v35, __p[0], __p[1]);
    }

    else
    {
      v35 = *__p;
      v36 = v41;
    }

    v20 = DataUtils::replaceStringHolder();
    sub_100305E28(&v37);
    v34[0] = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    v28 = _NSConcreteStackBlock;
    v29 = 1174405120;
    v30 = sub_10076CB08;
    v31 = &unk_101E7A4E8;
    if (SHIBYTE(v39) < 0)
    {
      sub_100005F2C(&v32, v38[0], v38[1]);
    }

    else
    {
      v32 = *v38;
      v33 = v39;
    }

    v21 = DataUtils::replaceStringHolder();
    sub_100305E28(v34);
    v22 = *(a3 + 72);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v50 = 0uLL;
      v51 = 0;
      ctu::cf::assign();
      *v26 = v50;
      v27 = v51;
      if (((v9 | v10) | (v20 | v21)))
      {
        v23 = "";
      }

      else
      {
        v23 = "not ";
      }

      v24 = v26;
      if (v27 < 0)
      {
        v24 = v26[0];
      }

      *buf = 136315906;
      *&buf[4] = "fillInPersonalization";
      *&buf[12] = 2080;
      *&buf[14] = a4;
      *&buf[22] = 2080;
      v53 = v23;
      v54 = 2080;
      v55 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: %s personalization (%schanged): %s", buf, 0x2Au);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26[0]);
      }
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38[0]);
    }
  }

  else
  {
    v14 = *(a3 + 72);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    v50 = 0uLL;
    v51 = 0;
    ctu::cf::assign();
    *__p = v50;
    v41 = v51;
    v15 = __p;
    if (v51 < 0)
    {
      v15 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = "fillInPersonalization";
    *&buf[12] = 2080;
    *&buf[14] = a4;
    *&buf[22] = 2080;
    v53 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: No cellular support. Personalization failed. %s unchanged: %s", buf, 0x20u);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_50:
  sub_100060DE8(a1, &MutableCopy);
  return sub_100305E28(&MutableCopy);
}

void sub_10076C450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_100305E28(&a23);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  sub_100305E28((v47 - 192));
  _Unwind_Resume(a1);
}

void sub_10076C594(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(*(v3 + 160));
  (*(**(v3 + 152) + 392))(v6);
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__dst, v6[0], v6[1]);
  }

  else
  {
    *__dst = *v6;
    v10 = v7;
  }

  v8 = 0;
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v12 = v10;
  }

  v13 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = v8;
    v8 = v13;
    v14 = v5;
    sub_100005978(&v14);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  *a2 = v8;
  v8 = 0;
  sub_100005978(&v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  sub_100004A34(v4);
}

void sub_10076C6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100004A34(v28);
  _Unwind_Resume(a1);
}

void sub_10076C74C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(*(v3 + 160));
  (*(**(v3 + 152) + 384))(v6);
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__dst, v6[0], v6[1]);
  }

  else
  {
    *__dst = *v6;
    v10 = v7;
  }

  v8 = 0;
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v12 = v10;
  }

  v13 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = v8;
    v8 = v13;
    v14 = v5;
    sub_100005978(&v14);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  *a2 = v8;
  v8 = 0;
  sub_100005978(&v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  sub_100004A34(v4);
}

void sub_10076C8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100004A34(v28);
  _Unwind_Resume(a1);
}

void sub_10076C904(uint64_t a1@<X0>, void *a2@<X8>)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v9 = 0;
  v3 = *(a1 + 55);
  if ((v3 & 0x80000000) == 0)
  {
    if (v3 != 2)
    {
      *__dst = *(a1 + 32);
      v9 = *(a1 + 48);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v4 = *(a1 + 40);
  if (v4 == 2)
  {
LABEL_5:
    std::operator+<char>();
    goto LABEL_7;
  }

  sub_100005F2C(__dst, *(a1 + 32), v4);
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    sub_100005F2C(v6, __dst[0], __dst[1]);
  }

  else
  {
    *v6 = *__dst;
    v7 = v9;
  }

  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, v6[0], v6[1]);
  }

  else
  {
    *__p = *v6;
    v12 = v7;
  }

  v10 = 0;
  if (SHIBYTE(v12) < 0)
  {
    sub_100005F2C(&v13, __p[0], __p[1]);
  }

  else
  {
    v13 = *__p;
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
    operator delete(v13);
  }

  *a2 = v10;
  v10 = 0;
  sub_100005978(&v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10076CA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10076CB08(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 55) < 0)
  {
    sub_100005F2C(v4, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *v4 = *(a1 + 32);
    v5 = *(a1 + 48);
  }

  if (SHIBYTE(v5) < 0)
  {
    sub_100005F2C(__dst, v4[0], v4[1]);
  }

  else
  {
    *__dst = *v4;
    v8 = v5;
  }

  v6 = 0;
  if (SHIBYTE(v8) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v10 = v8;
  }

  v11 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v6;
    v6 = v11;
    v12 = v3;
    sub_100005978(&v12);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  *a2 = v6;
  v6 = 0;
  sub_100005978(&v6);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_10076CC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10076CC84(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Proposals");
  if (Value && (v2 = Value, v3 = CFGetTypeID(Value), v3 == CFArrayGetTypeID()) && (Count = CFArrayGetCount(v2), Count >= 1))
  {
    v5 = Count;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        v11 = CFGetTypeID(ValueAtIndex);
        if (v11 == CFDictionaryGetTypeID())
        {
          ValueAtIndex = v10;
        }

        else
        {
          ValueAtIndex = 0;
        }
      }

      v12 = CFDictionaryGetValue(ValueAtIndex, @"EAPMethod");
      if (v12)
      {
        v13 = v12;
        v14 = CFGetTypeID(v12);
        if (v14 == CFStringGetTypeID())
        {
          if (CFStringCompare(v13, @"EAP-AKA", 0))
          {
            if (CFStringCompare(v13, @"EAP-SIM", 0) == kCFCompareEqualTo)
            {
              v7 = 1;
            }
          }

          else
          {
            v8 = 1;
          }
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  return v8 | (v7 << 8);
}

BOOL sub_10076CDC0(Registry **a1)
{
  (*(*a1 + 2))(&v16);
  v2 = *(v16 + 49);
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v2)
  {
    return 0;
  }

  ServiceMap = Registry::getServiceMap(a1[10]);
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
  v16 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
  if (!v10)
  {
    v12 = 0;
LABEL_13:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_14:
    v14 = (*(*v12 + 792))(v12);
    (*(*a1 + 2))(&v16, a1);
    v3 = v14 == *(v16 + 52);
    if (v17)
    {
      sub_100004A34(v17);
    }

    goto LABEL_16;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_11:
  v3 = 1;
LABEL_16:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return v3;
}

void sub_10076CF68(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10076CF88(uint64_t a1)
{
  if (*(a1 + 632))
  {
    return 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v3 = std::__shared_weak_count::lock(*(a1 + 160));
  (*(**(a1 + 152) + 552))(__p);
  sub_100004A34(v3);
  if (v7 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v1 = isXLAT464Interface(v4);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v1;
}

void sub_10076D04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10076D078(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v4 = a2;
  v7 = (a1 + 232);
  v6 = *(a1 + 232);
  *(a1 + 232) = 0;
  *buf = v6;
  sub_1000296E0(buf);
  v181 = 0;
  (*(**(v7 - 8) + 48))(&v181);
  if (v181)
  {
    v180 = 0;
    (*(**(a1 + 168) + 40))(&v180);
    if (v180)
    {
      *(a1 + 797) = 1;
    }

    else
    {
      *(a1 + 797) = 0;
      v10 = *(a1 + 72);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "getSettings";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: fIsWiFiCallingCertified is false", buf, 0xCu);
      }
    }

    if (a3)
    {
      v11 = *(a1 + 616);
      v12 = (v11 >> 1) & 1;
      v13 = v11 == 0;
      if (!v11)
      {
        LOBYTE(v11) = 1;
      }

      v155 = v11;
      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = v12;
      }
    }

    else
    {
      v14 = 1;
      v155 = 1;
    }

    v154 = v14;
    v15 = *(a1 + 72);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = asString();
      v17 = asStringBool(v155 & 1);
      v18 = asStringBool(v154);
      v19 = asString();
      *buf = 136316162;
      *&buf[4] = "getSettings";
      *&buf[12] = 2080;
      *&buf[14] = v16;
      *&buf[22] = 2080;
      v188 = v17;
      v189 = 2080;
      v190 = v18;
      v191 = 2080;
      v192 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: ipFamily = %s canUseIPv4 = %s, canUseIPv6 = %s fIPFamilyRequested = %s", buf, 0x34u);
    }

    v20 = CFDictionaryGetValue(v181, @"EPDGResolutionFallbackEnabled");
    v21 = v20;
    if (v20)
    {
      v22 = CFGetTypeID(v20);
      if (v22 == CFBooleanGetTypeID())
      {
        buf[0] = 0;
        ctu::cf::assign(buf, v21, v23);
        v24 = buf[0];
        *(a1 + 795) = buf[0];
        v25 = *(a1 + 72);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = asStringBool(v24);
          *buf = 136315394;
          *&buf[4] = "getSettings";
          *&buf[12] = 2080;
          *&buf[14] = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s: IWLANePDGResolutionFallbackEnabled is set to %s", buf, 0x16u);
        }
      }
    }

    v179 = 0;
    sub_10076F41C(&v179, @"IKE", v181);
    v27 = v179;
    if (v179)
    {
      v28 = CFDictionaryGetValue(v179, @"LocalIdentifier");
      v29 = v28;
      if (v28)
      {
        v30 = CFGetTypeID(v28);
        if (v30 == CFStringGetTypeID())
        {
          v31 = v29;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
      }

      if (sub_10022E09C(a1, v27, v31))
      {
        v34 = CFDictionaryGetValue(v179, @"Username");
        v35 = v34;
        if (v34)
        {
          v36 = CFGetTypeID(v34);
          if (v36 == CFStringGetTypeID())
          {
            *buf = 0;
            sub_10076BD68(buf, v35, a1, "Username", 0);
            CFDictionarySetValue(v179, @"Username", *buf);
            sub_100005978(buf);
          }
        }

        v37 = a1 + 32;
        sub_100356BE0(a1 + 32, buf);
        if ((*(**buf + 72))(*buf, 1, 18))
        {
          v38 = (*(**(a1 + 168) + 208))(*(a1 + 168));
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          if (v38)
          {
            CFDictionarySetValue(v179, @"RemoteIdentifier", @"EMERGENCY");
            goto LABEL_51;
          }
        }

        else if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        v39 = CFDictionaryGetValue(v179, @"RemoteIdentifier");
        v40 = v39;
        if (v39)
        {
          v41 = CFGetTypeID(v39);
          if (v41 == CFStringGetTypeID())
          {
            *buf = 0;
            MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v40);
            *buf = MutableCopy;
            v178 = MutableCopy;
            if (MutableCopy)
            {
              CFRetain(MutableCopy);
            }

            v177[1] = _NSConcreteStackBlock;
            v177[2] = 0x40000000;
            v177[3] = sub_10076F4E4;
            v177[4] = &unk_101E7A518;
            v177[5] = a1;
            v43 = DataUtils::replaceStringHolder();
            sub_100305E28(&v178);
            if (v43)
            {
              CFDictionarySetValue(v179, @"RemoteIdentifier", *buf);
            }

            sub_100305E28(buf);
          }
        }

LABEL_51:
        v44 = CFDictionaryGetValue(v179, @"RemoteAddress");
        v45 = v44;
        if (v44)
        {
          v46 = CFGetTypeID(v44);
          if (v46 == CFStringGetTypeID())
          {
            *&value = 0;
            v47 = (*(**(a1 + 168) + 200))(*(a1 + 168));
            sub_10076BD68(&value, v45, a1, "RemoteAddress", v47);
            CFDictionarySetValue(v179, @"RemoteAddress", value);
            valuePtr = 0uLL;
            v184 = 0;
            memset(buf, 0, sizeof(buf));
            ctu::cf::assign();
            valuePtr = *buf;
            v184 = *&buf[16];
            v48 = *(a1 + 72);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              p_valuePtr = &valuePtr;
              if (v184 < 0)
              {
                p_valuePtr = valuePtr;
              }

              *buf = 136315394;
              *&buf[4] = "getSettings";
              *&buf[12] = 2080;
              *&buf[14] = p_valuePtr;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I %s: ePDG: %s", buf, 0x16u);
            }

            if (SHIBYTE(v184) < 0)
            {
              operator delete(valuePtr);
            }

            sub_100005978(&value);
          }
        }

        v50 = CFDictionaryGetValue(v179, @"InternalInterface");
        v51 = v50;
        if (v50)
        {
          v52 = CFGetTypeID(v50);
          if (v52 == CFStringGetTypeID())
          {
            *buf = 0;
            v53 = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v51);
            *buf = v53;
            v177[0] = v53;
            if (v53)
            {
              CFRetain(v53);
            }

            v172 = _NSConcreteStackBlock;
            v173 = 0x40000000;
            v174 = sub_10076F648;
            v175 = &unk_101E7A538;
            v176 = a1;
            v54 = DataUtils::replaceStringHolder();
            sub_100305E28(v177);
            if (v54)
            {
              CFDictionarySetValue(v179, @"InternalInterface", *buf);
            }

            sub_100305E28(buf);
          }
        }

        *(a1 + 632) = 1;
        v55 = (*(**(a1 + 168) + 56))(*(a1 + 168));
        sub_100356BE0(a1 + 32, &valuePtr);
        (*(*valuePtr + 264))(buf);
        v56 = *buf;
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (*(&valuePtr + 1))
        {
          sub_100004A34(*(&valuePtr + 1));
        }

        if (!v56)
        {
          goto LABEL_107;
        }

        sub_100356BE0(a1 + 32, &valuePtr);
        (*(*valuePtr + 264))(buf);
        v57 = (*(**buf + 176))(*buf);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (*(&valuePtr + 1))
        {
          sub_100004A34(*(&valuePtr + 1));
        }

        sub_100356BE0(a1 + 32, &valuePtr);
        (*(*valuePtr + 264))(buf);
        v58 = (*(**buf + 216))(*buf) == 0;
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        v59 = v58 & v55;
        if (*(&valuePtr + 1))
        {
          sub_100004A34(*(&valuePtr + 1));
        }

        if (v59)
        {
          v60 = *(a1 + 72);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "getSettings";
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s: going over Cell Internet!", buf, 0xCu);
          }

          *(a1 + 632) = 0;
        }

        if (!v57 || !(*(**(a1 + 168) + 192))(*(a1 + 168)))
        {
          goto LABEL_107;
        }

        ServiceMap = Registry::getServiceMap(*(a1 + 80));
        v62 = ServiceMap;
        if (v63 < 0)
        {
          v64 = (v63 & 0x7FFFFFFFFFFFFFFFLL);
          v65 = 5381;
          do
          {
            v63 = v65;
            v66 = *v64++;
            v65 = (33 * v65) ^ v66;
          }

          while (v66);
        }

        std::mutex::lock(ServiceMap);
        *buf = v63;
        v67 = sub_100009510(&v62[1].__m_.__sig, buf);
        if (v67)
        {
          v69 = v67[3];
          v68 = v67[4];
          if (v68)
          {
            atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v62);
            atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v68);
            v71 = 0;
LABEL_94:
            if (v69 && capabilities::ct::supportsGemini(v70))
            {
              (*(*a1 + 16))(buf, a1);
              v72 = *(*buf + 49);
              if (*&buf[8])
              {
                sub_100004A34(*&buf[8]);
              }

              if (!v72)
              {
                v37 = a1 + 32;
                if ((**v69)(v69))
                {
                  if ((v71 & 1) == 0)
                  {
                    sub_100004A34(v68);
                  }

LABEL_106:
                  CFDictionarySetValue(v179, @"MOBIKESupported", kCFBooleanTrue);
                  goto LABEL_107;
                }

                LOBYTE(v55) = !sub_10076CDC0(a1);
              }
            }

            if ((v71 & 1) == 0)
            {
              sub_100004A34(v68);
            }

            v37 = a1 + 32;
            if (v55)
            {
              goto LABEL_106;
            }

LABEL_107:
            value = 0uLL;
            v171 = 0;
            sub_10076F7F8(a1, *(a1 + 632), &value);
            if (SHIBYTE(v171) < 0)
            {
              if (*(&value + 1))
              {
                v73 = v179;
                sub_100005F2C(__p, value, *(&value + 1));
                goto LABEL_112;
              }
            }

            else if (HIBYTE(v171))
            {
              v73 = v179;
              *__p = value;
              v169 = v171;
LABEL_112:
              if (SHIBYTE(v169) < 0)
              {
                sub_100005F2C(&valuePtr, __p[0], __p[1]);
              }

              else
              {
                valuePtr = *__p;
                v184 = v169;
              }

              v185 = 0;
              if (SHIBYTE(v184) < 0)
              {
                sub_100005F2C(buf, valuePtr, *(&valuePtr + 1));
              }

              else
              {
                *buf = valuePtr;
                *&buf[16] = v184;
              }

              v186 = 0;
              if (ctu::cf::convert_copy())
              {
                v76 = v185;
                v185 = v186;
                theDict[0] = v76;
                sub_100005978(theDict);
              }

              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              v182 = v185;
              v185 = 0;
              sub_100005978(&v185);
              if (SHIBYTE(v184) < 0)
              {
                operator delete(valuePtr);
              }

              CFDictionarySetValue(v73, @"OutgoingInterface", v182);
              sub_100005978(&v182);
              if (SHIBYTE(v169) < 0)
              {
                operator delete(__p[0]);
              }

              v77 = (*(*a1 + 664))(a1, v179);
              *(a1 + 808) = v77;
              *(a1 + 816) = v78;
              if (!v77 || !HIDWORD(v77) || !v78)
              {
                v79 = *(a1 + 72);
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  *&buf[4] = "getSettings";
                  _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I %s: Short DPD reporting is not configured", buf, 0xCu);
                }
              }

              v80 = sub_10076CC84(v179);
              v81 = v80;
              if ((v80 & 1) == 0 && (v80 & 0x100) == 0)
              {
LABEL_144:
                *v167 = 0;
                sub_10076F41C(v167, @"ChildSAs", v181);
                if (!*v167)
                {
                  v85 = *(a1 + 72);
                  v9 = 0;
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "#I %s: Failed retrieving ChildSAs key from carrier bundle", buf, 0xCu);
                    v9 = 0;
                  }

                  goto LABEL_277;
                }

                *v166 = 0;
                sub_10076F41C(v166, @"FirstChild", *v167);
                if (!*v166)
                {
                  v86 = *(a1 + 72);
                  v9 = 0;
                  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I %s: Failed retrieving ChildSAs->FirstChild key from carrier bundle", buf, 0xCu);
                    v9 = 0;
                  }

                  goto LABEL_276;
                }

                v165 = 0;
                sub_10076FBA0(&v165, @"ConfigurationAttributeRequest", v179);
                if (!v165)
                {
                  v87 = *(a1 + 72);
                  v9 = 0;
                  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to retrive ConfigurationAttributeRequest key", buf, 0xCu);
                    v9 = 0;
                  }

                  goto LABEL_275;
                }

                theArray = 0;
                sub_10076FBA0(&theArray, @"TrafficSelectorsLocal", *v166);
                if (!theArray)
                {
                  v88 = *(a1 + 72);
                  v9 = 0;
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to retrive TrafficSelectorsLocal key", buf, 0xCu);
                    v9 = 0;
                  }

                  goto LABEL_274;
                }

                v163 = 0;
                sub_10076FBA0(&v163, @"TrafficSelectorsRemote", *v166);
                if (!v163)
                {
                  v89 = *(a1 + 72);
                  v9 = 0;
                  if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_273:
                    sub_1000279DC(&v163);
LABEL_274:
                    sub_1000279DC(&theArray);
LABEL_275:
                    sub_1000279DC(&v165);
LABEL_276:
                    sub_1000296E0(v166);
LABEL_277:
                    sub_1000296E0(v167);
LABEL_278:
                    if (SHIBYTE(v171) < 0)
                    {
                      operator delete(value);
                    }

                    goto LABEL_280;
                  }

                  *buf = 136315138;
                  *&buf[4] = "getSettings";
                  _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to retrive TrafficSelectorsRemote key", buf, 0xCu);
LABEL_246:
                  v9 = 0;
                  goto LABEL_273;
                }

                sub_100356BE0(v37, buf);
                v82 = *buf;
                (*(*a1 + 16))(&v161, a1);
                v83 = (*(*v82 + 256))(v82, &v161);
                if (v162)
                {
                  sub_100004A34(v162);
                }

                if (*&buf[8])
                {
                  sub_100004A34(*&buf[8]);
                }

                if (a3)
                {
                  v153 = (*(*a1 + 536))(a1, v83);
                }

                else
                {
                  v153 = 0;
                }

                v90 = *(a1 + 72);
                if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                {
                  v91 = asStringBool(a3);
                  v92 = asString();
                  v93 = asStringBool(v153);
                  *buf = 136315906;
                  *&buf[4] = "getSettings";
                  *&buf[12] = 2080;
                  *&buf[14] = v91;
                  *&buf[22] = 2080;
                  v188 = v92;
                  v189 = 2080;
                  v190 = v93;
                  _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "#I %s: handOver:%s, BB dataMode:%s, HandOverRequestAllowed:%s", buf, 0x2Au);
                }

                if ((v4 & 1) == 0 || (v155 & 1) == 0)
                {
LABEL_202:
                  v112 = !v154;
                  if ((v4 & 2) == 0)
                  {
                    v112 = 1;
                  }

                  if (v112)
                  {
                    goto LABEL_236;
                  }

                  theDict[0] = 0;
                  sub_10076FBA0(theDict, @"ConfigurationAttributeRequestv6", v181);
                  v113 = theDict[0];
                  if (theDict[0])
                  {
                    if ((a3 & v153) == 1)
                    {
                      sub_100356BE0(v37, &valuePtr);
                      (*(*valuePtr + 160))(buf);
                      sub_1007698B0(v113, buf);
                      if (*(&valuePtr + 1))
                      {
                        sub_100004A34(*(&valuePtr + 1));
                      }

                      goto LABEL_230;
                    }

                    v114 = *(a1 + 160);
                    if (v114)
                    {
                      v115 = std::__shared_weak_count::lock(v114);
                      if (v115)
                      {
                        v116 = *(a1 + 152);
                      }

                      else
                      {
                        v116 = 0;
                      }
                    }

                    else
                    {
                      v116 = 0;
                      v115 = 0;
                    }

                    if (((*(*&v116[*(*v116 - 336)] + 152))(&v116[*(*v116 - 336)]) & 1) != 0 || (*(**(a1 + 168) + 168))(*(a1 + 168)))
                    {
                      v117 = sub_10022E67C(a1, theDict[0], 2);
                      if (v115)
                      {
                        sub_100004A34(v115);
                      }

                      if (v117)
                      {
                        v118 = *(a1 + 72);
                        if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_230;
                        }

                        *buf = 136315138;
                        *&buf[4] = "getSettings";
                        v119 = "#I %s: Implicit handover from AttachAPN for IPv6";
                        goto LABEL_229;
                      }
                    }

                    else if (v115)
                    {
                      sub_100004A34(v115);
                    }

                    v118 = *(a1 + 72);
                    if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_230;
                    }

                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    v119 = "#I %s: Initial bringUp for IPv6";
LABEL_229:
                    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, v119, buf, 0xCu);
LABEL_230:
                    v120 = v165;
                    v121 = theDict[0];
                    v195.length = CFArrayGetCount(theDict[0]);
                    v195.location = 0;
                    CFArrayAppendArray(v120, v121, v195);
                    v122 = CFDictionaryGetValue(v181, @"ExtraConfigurationAttributeRequestv6");
                    v123 = v122;
                    if (v122)
                    {
                      v124 = CFGetTypeID(v122);
                      if (v124 == CFArrayGetTypeID())
                      {
                        v125 = v165;
                        v196.length = CFArrayGetCount(v123);
                        v196.location = 0;
                        CFArrayAppendArray(v125, v123, v196);
                      }
                    }

                    v126 = CFDictionaryGetValue(v181, @"TrafficSelectorsv6");
                    v127 = v126;
                    if (v126)
                    {
                      v128 = CFGetTypeID(v126);
                      if (v128 == CFDictionaryGetTypeID())
                      {
                        CFArrayAppendValue(theArray, v127);
                        CFArrayAppendValue(v163, v127);
                        sub_1000279DC(theDict);
LABEL_236:
                        v129 = CFDictionaryContainsKey(v179, @"DisableSwitchToNATTPort");
                        if (!v129)
                        {
                          CFDictionarySetValue(v179, @"DisableSwitchToNATTPort", kCFBooleanTrue);
                        }

                        if (!capabilities::ct::supports5G(v129))
                        {
                          goto LABEL_257;
                        }

                        (*(*v37 + 440))(buf, v37);
                        if (*buf)
                        {
                          (*(*v37 + 440))(&valuePtr, v37);
                          v130 = (*(*valuePtr + 208))(valuePtr);
                          if (*(&valuePtr + 1))
                          {
                            sub_100004A34(*(&valuePtr + 1));
                          }
                        }

                        else
                        {
                          v130 = 0;
                        }

                        if (*&buf[8])
                        {
                          sub_100004A34(*&buf[8]);
                        }

                        if (v130)
                        {
                          sub_100356BE0(v37, buf);
                          v131 = (*(**buf + 168))(*buf);
                          v132 = *&buf[8];
                          if (*&buf[8])
                          {
                            sub_100004A34(*&buf[8]);
                          }

                          LODWORD(valuePtr) = v131;
                          if ((v131 & 0x80000000) == 0)
                          {
                            *buf = 0;
                            v133 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
                            *buf = v133;
                            v134 = *(a1 + 72);
                            if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                            {
                              LOWORD(theDict[0]) = 0;
                              _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "#I add PDUSessionID to ikeData", theDict, 2u);
                              v133 = *buf;
                            }

                            CFDictionarySetValue(v179, @"PDUSessionID", v133);
                            v132 = sub_100029A48(buf);
                          }
                        }

                        else
                        {
LABEL_257:
                          v135 = *(a1 + 72);
                          v132 = os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT);
                          if (v132)
                          {
                            *buf = 0;
                            _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "#I Do no fill PDUSessionID for non-IMS", buf, 2u);
                          }
                        }

                        if (capabilities::ct::supportsCellRadio(v132))
                        {
                          v136 = CFDictionaryGetValue(v181, @"SupportIMEIRequest");
                          v137 = v136;
                          if (v136 && (v138 = CFGetTypeID(v136), v138 == CFBooleanGetTypeID()) && (buf[0] = 0, ctu::cf::assign(buf, v137, v139), buf[0] == 1))
                          {
                            v140 = *(a1 + 72);
                            if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "#I SupportIMEIRequest is true", buf, 2u);
                            }

                            theDict[0] = 0;
                            theDict[1] = 0;
                            v160 = 0;
                            v141 = *(a1 + 160);
                            if (v141)
                            {
                              v141 = std::__shared_weak_count::lock(v141);
                              v142 = v141;
                              if (v141)
                              {
                                v141 = *(a1 + 152);
                              }
                            }

                            else
                            {
                              v142 = 0;
                            }

                            (v141->__vftable[9].__on_zero_shared)(theDict);
                            if (v142)
                            {
                              sub_100004A34(v142);
                            }

                            v146 = SHIBYTE(v160);
                            if (v160 >= 0)
                            {
                              v147 = HIBYTE(v160);
                            }

                            else
                            {
                              v147 = theDict[1];
                            }

                            v148 = *(a1 + 72);
                            v149 = os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT);
                            if (v147)
                            {
                              if (v149)
                              {
                                v150 = theDict[0];
                                if (v146 >= 0)
                                {
                                  v150 = theDict;
                                }

                                *buf = 136315138;
                                *&buf[4] = v150;
                                _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "#I IMEI: %s", buf, 0xCu);
                                LOBYTE(v146) = HIBYTE(v160);
                              }

                              v158 = 0;
                              if ((v146 & 0x80) != 0)
                              {
                                sub_100005F2C(__dst, theDict[0], theDict[1]);
                              }

                              else
                              {
                                *__dst = *theDict;
                                v157 = v160;
                              }

                              if (SHIBYTE(v157) < 0)
                              {
                                sub_100005F2C(&valuePtr, __dst[0], __dst[1]);
                              }

                              else
                              {
                                valuePtr = *__dst;
                                v184 = v157;
                              }

                              v182 = 0;
                              if (SHIBYTE(v184) < 0)
                              {
                                sub_100005F2C(buf, valuePtr, *(&valuePtr + 1));
                              }

                              else
                              {
                                *buf = valuePtr;
                                *&buf[16] = v184;
                              }

                              v185 = 0;
                              if (ctu::cf::convert_copy())
                              {
                                v151 = v182;
                                v182 = v185;
                                v186 = v151;
                                sub_100005978(&v186);
                              }

                              if (buf[23] < 0)
                              {
                                operator delete(*buf);
                              }

                              v158 = v182;
                              v182 = 0;
                              sub_100005978(&v182);
                              if (SHIBYTE(v184) < 0)
                              {
                                operator delete(valuePtr);
                              }

                              if (SHIBYTE(v157) < 0)
                              {
                                operator delete(__dst[0]);
                              }

                              if (v158)
                              {
                                CFDictionarySetValue(v179, @"IMEI", v158);
                              }

                              else
                              {
                                v152 = *(a1 + 72);
                                if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 0;
                                  _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#E CFIMEI is empty", buf, 2u);
                                }
                              }

                              sub_100005978(&v158);
                            }

                            else if (v149)
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "#E IMEI is empty", buf, 2u);
                            }

                            if (SHIBYTE(v160) < 0)
                            {
                              operator delete(theDict[0]);
                            }
                          }

                          else
                          {
                            v143 = *(a1 + 72);
                            if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "#I SupportIMEIRequest is false", buf, 2u);
                            }
                          }
                        }

                        sub_1007812D8((a1 + 240), &v179);
                        sub_100010180(&valuePtr, v166);
                        v144 = (a1 + 248);
                        if ((a1 + 248) != &valuePtr)
                        {
                          *buf = *v144;
                          *v144 = valuePtr;
                          *&valuePtr = 0;
                          sub_10001021C(buf);
                        }

                        sub_10001021C(&valuePtr);
                        sub_1007812D8(v7, &v181);
                        v9 = 1;
                        goto LABEL_273;
                      }
                    }

                    v95 = *(a1 + 72);
                    if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_245;
                    }

                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    v96 = "#I %s: Failed to retrive TrafficSelectorsv6 key";
                    goto LABEL_244;
                  }

                  v95 = *(a1 + 72);
                  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    v96 = "#I %s: Failed to retrive ConfigurationAttributeRequestv6 key";
                    goto LABEL_244;
                  }

LABEL_245:
                  sub_1000279DC(theDict);
                  goto LABEL_246;
                }

                theDict[0] = 0;
                sub_10076FBA0(theDict, @"ConfigurationAttributeRequestv4", v181);
                v94 = theDict[0];
                if (!theDict[0])
                {
                  v95 = *(a1 + 72);
                  if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_245;
                  }

                  *buf = 136315138;
                  *&buf[4] = "getSettings";
                  v96 = "#I %s: Failed to retrive ConfigurationAttributeRequestv4 key";
                  goto LABEL_244;
                }

                if ((a3 & v153) == 1)
                {
                  sub_100356BE0(v37, &valuePtr);
                  (*(*valuePtr + 160))(buf);
                  sub_1007698B0(v94, buf);
                  if (*(&valuePtr + 1))
                  {
                    sub_100004A34(*(&valuePtr + 1));
                  }

                  goto LABEL_196;
                }

                v97 = *(a1 + 160);
                if (v97)
                {
                  v98 = std::__shared_weak_count::lock(v97);
                  if (v98)
                  {
                    v99 = *(a1 + 152);
                  }

                  else
                  {
                    v99 = 0;
                  }
                }

                else
                {
                  v99 = 0;
                  v98 = 0;
                }

                if (((*(*&v99[*(*v99 - 336)] + 152))(&v99[*(*v99 - 336)]) & 1) != 0 || (*(**(a1 + 168) + 168))(*(a1 + 168)))
                {
                  v100 = sub_10022E67C(a1, theDict[0], 1);
                  if (v98)
                  {
                    sub_100004A34(v98);
                  }

                  if (v100)
                  {
                    v101 = *(a1 + 72);
                    if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_196;
                    }

                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    v102 = "#I %s: Implicit handover from AttachAPN for IPv4";
                    goto LABEL_195;
                  }
                }

                else if (v98)
                {
                  sub_100004A34(v98);
                }

                v101 = *(a1 + 72);
                if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_196;
                }

                *buf = 136315138;
                *&buf[4] = "getSettings";
                v102 = "#I %s: Initial bringUp for IPv4";
LABEL_195:
                _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, v102, buf, 0xCu);
LABEL_196:
                v103 = v165;
                v104 = theDict[0];
                v193.length = CFArrayGetCount(theDict[0]);
                v193.location = 0;
                CFArrayAppendArray(v103, v104, v193);
                v105 = CFDictionaryGetValue(v181, @"ExtraConfigurationAttributeRequestv4");
                v106 = v105;
                if (v105)
                {
                  v107 = CFGetTypeID(v105);
                  if (v107 == CFArrayGetTypeID())
                  {
                    v108 = v165;
                    v194.length = CFArrayGetCount(v106);
                    v194.location = 0;
                    CFArrayAppendArray(v108, v106, v194);
                  }
                }

                v109 = CFDictionaryGetValue(v181, @"TrafficSelectorsv4");
                v110 = v109;
                if (v109)
                {
                  v111 = CFGetTypeID(v109);
                  if (v111 == CFDictionaryGetTypeID())
                  {
                    CFArrayAppendValue(theArray, v110);
                    CFArrayAppendValue(v163, v110);
                    sub_1000279DC(theDict);
                    goto LABEL_202;
                  }
                }

                v95 = *(a1 + 72);
                if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_245;
                }

                *buf = 136315138;
                *&buf[4] = "getSettings";
                v96 = "#I %s: Failed to retrive TrafficSelectorsv4 key";
LABEL_244:
                _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, v96, buf, 0xCu);
                goto LABEL_245;
              }

              *&valuePtr = 0;
              *&valuePtr = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              theDict[0] = 0;
              theDict[0] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              if (theDict[0] && valuePtr)
              {
                *buf = 0;
                PersonalitySpecificImpl::simSlot(a1);
                subscriber::generateUuidStrFromSlotId();
                if (*buf)
                {
                  CFDictionarySetValue(valuePtr, kCTSimSupportUICCAuthenticationSlotUUIDKey, *buf);
                }

                if (v81)
                {
                  CFDictionarySetValue(theDict[0], @"EAPAKAProperties", valuePtr);
                }

                if ((v81 & 0x100) != 0)
                {
                  CFDictionarySetValue(theDict[0], @"EAPSIMProperties", valuePtr);
                }

                CFDictionarySetValue(v179, @"EAPProperties", theDict[0]);
                sub_100005978(buf);
                sub_1000296E0(theDict);
                sub_1000296E0(&valuePtr);
                goto LABEL_144;
              }

              v84 = *(a1 + 72);
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "getSettings";
                _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#I %s: Failed create EAP properties", buf, 0xCu);
              }

              sub_1000296E0(theDict);
              sub_1000296E0(&valuePtr);
LABEL_158:
              v9 = 0;
              goto LABEL_278;
            }

            v74 = *(a1 + 72);
            v9 = 0;
            if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_278;
            }

            v75 = asString();
            *buf = 136315394;
            *&buf[4] = "getSettings";
            *&buf[12] = 2080;
            *&buf[14] = v75;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#I %s: Cannot find outgoing interface for %s", buf, 0x16u);
            goto LABEL_158;
          }
        }

        else
        {
          v69 = 0;
        }

        std::mutex::unlock(v62);
        v68 = 0;
        v71 = 1;
        goto LABEL_94;
      }

      v32 = *(a1 + 72);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "getSettings";
        v33 = "#I %s: Failed building LocalIdentifier";
        goto LABEL_40;
      }
    }

    else
    {
      v32 = *(a1 + 72);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "getSettings";
        v33 = "#I %s: Failed retrieving IKE key from carrier bundle";
LABEL_40:
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
      }
    }

    v9 = 0;
LABEL_280:
    sub_1000296E0(&v179);
    sub_10001021C(&v180);
    goto LABEL_281;
  }

  v8 = *(a1 + 72);
  v9 = 0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "getSettings";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: copyTechSettings failed", buf, 0xCu);
    v9 = 0;
  }

LABEL_281:
  sub_1000296E0(&v181);
  return v9;
}

void sub_10076F05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, const void *a26, const void *a27, const void *a28, const void *a29, const void *a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  sub_100005978((v48 - 216));
  if (*(v48 - 185) < 0)
  {
    operator delete(*(v48 - 208));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_1000279DC(&a26);
  sub_1000279DC(&a27);
  sub_1000279DC(&a28);
  sub_1000296E0(&a29);
  sub_1000296E0(&a30);
  if (a42 < 0)
  {
    operator delete(a37);
  }

  sub_1000296E0((v48 - 240));
  sub_10001021C((v48 - 232));
  sub_1000296E0((v48 - 224));
  _Unwind_Resume(a1);
}

void sub_10076F41C(CFMutableDictionaryRef *__return_ptr a1@<X8>, void *key@<X1>, const __CFDictionary *a3@<X0>)
{
  *a1 = 0;
  if (a3)
  {
    if (key)
    {
      Value = CFDictionaryGetValue(a3, key);
      v7 = Value;
      if (Value)
      {
        v8 = CFGetTypeID(Value);
        if (v8 == CFDictionaryGetTypeID())
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
          *a1 = MutableCopy;
          v10 = 0;
          sub_1000296E0(&v10);
          CFDictionarySetValue(a3, key, MutableCopy);
        }
      }
    }
  }
}

void sub_10076F4E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1003567A4((*(a1 + 32) + 32), v4);
  if (SHIBYTE(v5) < 0)
  {
    sub_100005F2C(__dst, v4[0], v4[1]);
  }

  else
  {
    *__dst = *v4;
    v8 = v5;
  }

  v6 = 0;
  if (SHIBYTE(v8) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v10 = v8;
  }

  v11 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v6;
    v6 = v11;
    v12 = v3;
    sub_100005978(&v12);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  *a2 = v6;
  v6 = 0;
  sub_100005978(&v6);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_10076F5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_10076F648(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100356BE0(*(a1 + 32) + 32, &v4);
  (*(*v4 + 240))(v6);
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, v6[0], v6[1]);
  }

  else
  {
    *__p = *v6;
    v10 = v7;
  }

  v8 = 0;
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v12 = v10;
  }

  v13 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v8;
    v8 = v13;
    v14 = v3;
    sub_100005978(&v14);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__dst);
  }

  *a2 = v8;
  v8 = 0;
  sub_100005978(&v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10076F790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_100005978(&a17);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_10076F7F8(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    memset(&v19, 0, sizeof(v19));
    v5 = (a1 + 640);
    if (*(a1 + 663) < 0)
    {
      sub_100005F2C(&v19, *(a1 + 640), *(a1 + 648));
    }

    else
    {
      *&v19.__r_.__value_.__l.__data_ = *v5;
      v19.__r_.__value_.__r.__words[2] = *(a1 + 656);
    }

    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v9 = *(a1 + 664);
      v10 = *(a1 + 672);
      if (v9 != v10)
      {
        while (1)
        {
          memset(&__p, 0, sizeof(__p));
          if (*(v9 + 23) < 0)
          {
            sub_100005F2C(&__p, *v9, *(v9 + 1));
          }

          else
          {
            v11 = *v9;
            __p.__r_.__value_.__r.__words[2] = *(v9 + 2);
            *&__p.__r_.__value_.__l.__data_ = v11;
          }

          if (a1 + 696 == sub_100007A6C(a1 + 688, &__p))
          {
            break;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v9 = (v9 + 24);
          if (v9 == v10)
          {
            goto LABEL_31;
          }
        }

        std::string::operator=(&v19, &__p);
        v12 = *(a1 + 72);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = a1 + 640;
          if (*(a1 + 663) < 0)
          {
            v13 = *v5;
          }

          *buf = 136315394;
          v21 = "getOutgoingInterface";
          v22 = 2080;
          v23 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: Interface is set to %s (2)", buf, 0x16u);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

LABEL_31:
      v14 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v19.__r_.__value_.__l.__size_;
      }

      if (!v14)
      {
        sub_10022ED7C(a1, &__p);
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        v19 = __p;
      }

      std::string::operator=((a1 + 640), &v19);
    }

    v15 = *(a1 + 72);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    v17 = *(a1 + 663);
    if (v16)
    {
      v18 = a1 + 640;
      if (v17 < 0)
      {
        v18 = *v5;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = "getOutgoingInterface";
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: Wi-Fi interface: %s", &__p, 0x16u);
      LOBYTE(v17) = *(a1 + 663);
    }

    if ((v17 & 0x80) != 0)
    {
      sub_100005F2C(a3, *(a1 + 640), *(a1 + 648));
    }

    else
    {
      *a3 = *v5;
      *(a3 + 16) = *(a1 + 656);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = *(a1 + 160);
    if (v6)
    {
      v6 = std::__shared_weak_count::lock(v6);
      v7 = v6;
      if (v6)
      {
        v6 = *(a1 + 152);
      }
    }

    else
    {
      v7 = 0;
    }

    (v6->__vftable[13].__on_zero_shared_weak)(v6);
    if (v7)
    {

      sub_100004A34(v7);
    }
  }
}

void sub_10076FB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076FBA0(CFMutableArrayRef *__return_ptr a1@<X8>, void *key@<X1>, const __CFDictionary *a3@<X0>)
{
  *a1 = 0;
  if (a3)
  {
    if (key)
    {
      Value = CFDictionaryGetValue(a3, key);
      v7 = Value;
      if (Value)
      {
        v8 = CFGetTypeID(Value);
        if (v8 == CFArrayGetTypeID())
        {
          MutableCopy = CFArrayCreateMutableCopy(0, 0, v7);
          *a1 = MutableCopy;
          v10 = 0;
          sub_1000279DC(&v10);
          CFDictionarySetValue(a3, key, MutableCopy);
        }
      }
    }
  }
}

CFIndex sub_10076FC60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 232);
  if (!v3)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(v3, @"AllowHandOverFromDataModeList");
  if (!Value)
  {
    return 1;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != CFArrayGetTypeID())
  {
    return 1;
  }

  v8 = sub_10076FDB8(a2, v6);
  v9 = v8;
  v10 = v8;
  if ((a2 & 0xFFFFFFFE) == 0x10)
  {
    v10 = v8;
    if ((v8 & 1) == 0)
    {
      v10 = sub_10076FDB8(14, v6);
    }
  }

  v11 = *(a1 + 72);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = asString();
    v15 = 2080;
    v16 = asStringBool(v9);
    v17 = 2080;
    v18 = asStringBool(v10);
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Current effective data mode : %s; allowed for handover : %s; adjusted: %s", &v13, 0x20u);
  }

  return v10;
}

CFIndex sub_10076FDB8(uint64_t a1, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result)
  {
    v4 = result;
    v5 = asString();
    v13 = 0;
    v14 = 0;
    if (ctu::cf::convert_copy(&v14, (v5 + 1), 0x8000100, kCFAllocatorDefault, v6))
    {
      v13 = v14;
      v15 = 0;
      sub_100005978(&v15);
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

    theString2 = v7;
    v13 = 0;
    sub_100005978(&v13);
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      v10 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v11 = CFGetTypeID(ValueAtIndex);
        if (v11 == CFStringGetTypeID() && CFStringCompare(v10, theString2, 0) == kCFCompareEqualTo)
        {
          break;
        }
      }

      if (v4 == ++v8)
      {
        sub_100005978(&theString2);
        return 0;
      }
    }

    sub_100005978(&theString2);
    return 1;
  }

  return result;
}

void sub_10076FED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10076FF10(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
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

    v2 = (v4->__vftable[13].__get_deleter)(v4);
    *(a1 + 794) = v2;
    if (v5)
    {
      sub_100004A34(v5);
      v2 = *(a1 + 794);
    }
  }

  return v2 & 1;
}

void sub_10076FFA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076FFB8(uint64_t result)
{
  if (*(result + 794) == 1)
  {
    *(result + 794) = 0;
    v2 = *(result + 224);
    if (v2 == 5)
    {

      sub_100771D48(result, 0, (result + 448), 0);
    }

    else if (v2 == 2 && (sub_10077009C(result, "Internet activated") & 1) == 0)
    {
      *(result + 592) = 80004;
      v3 = *(result + 616);
      sub_10076B24C(result, "Internet activated");
      v4 = *(result + 592);

      sub_100771370(result, "Internet activated", v3, v4);
    }
  }
}

uint64_t sub_10077009C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "startIPSecConnection";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }

  if (*(a1 + 200))
  {
    goto LABEL_56;
  }

  Copy = 0;
  v68 = 0;
  (*(*(a1 + 32) + 440))(&Copy);
  if (!Copy)
  {
    v21 = *(a1 + 72);
    v20 = 0;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "startIPSecConnection";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#E %s: No Settings, failed", buf, 0xCu);
      v20 = 0;
    }

    goto LABEL_53;
  }

  memset(buf, 0, sizeof(buf));
  (*(*Copy + 320))(buf);
  if (!*&buf[16])
  {
    v22 = *(a1 + 72);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    *v87 = 136315138;
    *&v87[4] = "startIPSecConnection";
    v23 = "#E %s: No Resources, failed";
    goto LABEL_41;
  }

  v5 = *buf;
  if (*buf == &buf[8])
  {
LABEL_30:
    v16 = *(a1 + 200);
    if (v16)
    {
      v17 = (*(**(a1 + 168) + 96))(*(a1 + 168));
      if (((*(*v16 + 16))(v16, v17) & 1) == 0)
      {
        v18 = *(a1 + 72);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = (*(**(a1 + 168) + 96))(*(a1 + 168));
          *v87 = 136315394;
          *&v87[4] = "startIPSecConnection";
          *&v87[12] = 1024;
          *&v87[14] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E %s: VirtualInterface setMTU failed: %d", v87, 0x12u);
        }
      }

      sub_10077652C(a1);
      v20 = 1;
      goto LABEL_52;
    }

    v22 = *(a1 + 72);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    *v87 = 136315138;
    *&v87[4] = "startIPSecConnection";
    v23 = "#E %s: No IPSec Interface found, failed";
LABEL_41:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, v87, 0xCu);
    goto LABEL_51;
  }

  v6 = kIPsecInterfaceSettingsResource;
  while (1)
  {
    v8 = *(v5 + 4);
    v7 = *(v5 + 5);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v8 + 16))(v8) != v6)
    {
      if (!v7)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (!v9)
    {
      v24 = *(a1 + 72);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v87 = 136315138;
        *&v87[4] = "startIPSecConnection";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E %s: kIPsecInterfaceSettingsResource object contains wrong data type, failed", v87, 0xCu);
      }

      if (v7)
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v9[1];
    v11 = v9[2];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 208);
    *(a1 + 200) = v10;
    *(a1 + 208) = v11;
    if (v12)
    {
      sub_100004A34(v12);
      v10 = *(a1 + 200);
    }

    if (!v10)
    {
      break;
    }

    if (v7)
    {
      sub_100004A34(v7);
LABEL_23:
      sub_100004A34(v7);
    }

LABEL_24:
    v13 = *(v5 + 1);
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
        v14 = *(v5 + 2);
        v15 = *v14 == v5;
        v5 = v14;
      }

      while (!v15);
    }

    v5 = v14;
    if (v14 == &buf[8])
    {
      goto LABEL_30;
    }
  }

  v25 = *(a1 + 72);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v87 = 136315138;
    *&v87[4] = "startIPSecConnection";
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E %s: kIPsecInterfaceSettingsResource object contains empty interface, failed", v87, 0xCu);
  }

  if (v7)
  {
    sub_100004A34(v7);
LABEL_50:
    sub_100004A34(v7);
  }

LABEL_51:
  v20 = 0;
LABEL_52:
  sub_1001178E4(buf, *&buf[8]);
LABEL_53:
  if (v68)
  {
    sub_100004A34(v68);
  }

  if ((v20 & 1) == 0)
  {
LABEL_59:
    v27 = 0;
    return v27 & 1;
  }

LABEL_56:
  if (*(a1 + 184))
  {
    v26 = *(a1 + 72);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "startIPSecConnection";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: Seems IPSec is under connection, failed", buf, 0xCu);
    }

    goto LABEL_59;
  }

  v89 = 0;
  v88 = 0u;
  memset(v87, 0, sizeof(v87));
  v28 = *(a1 + 160);
  if (v28)
  {
    v29 = std::__shared_weak_count::lock(v28);
    if (v29)
    {
      v30 = *(a1 + 152);
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
    v29 = 0;
  }

  v31 = *(*v30 - 336);
  v32 = a1 + 32;
  (*(*(a1 + 32) + 440))(&v65, a1 + 32);
  (*(*(a1 + 32) + 40))(a1 + 32);
  (*(*(v30 + v31) + 264))(v87);
  if (v66)
  {
    sub_100004A34(v66);
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  if (!*v87)
  {
    sub_10076A498(a1, 2);
    if (sub_1007754C4(a1, *(a1 + 632)) & 1) != 0 || (sub_10076FF10(a1, *(a1 + 632)))
    {
      v27 = 1;
    }

    else
    {
      if (!sub_10077590C(a1))
      {
        v55 = *(a1 + 160);
        if (v55)
        {
          v56 = std::__shared_weak_count::lock(v55);
          if (v56)
          {
            v57 = *(a1 + 152);
          }

          else
          {
            v57 = 0;
          }
        }

        else
        {
          v57 = 0;
          v56 = 0;
        }

        v58 = (*(*v32 + 40))(a1 + 32);
        v59 = (*(*v57 + 344))(v57, v58, *(a1 + 632));
        if (v56)
        {
          sub_100004A34(v56);
        }

        if (v59)
        {
          v60 = kCFBooleanTrue;
        }

        else
        {
          v60 = kCFBooleanFalse;
        }

        CFDictionarySetValue(*(a1 + 240), @"InitialContact", v60);
        v61 = *(a1 + 72);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "startIPSecConnection";
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s: fIkeData value is:", buf, 0xCu);
        }

        Copy = "startIPSecConnection";
        *buf = off_101E7C0D0;
        *&buf[8] = a1;
        *&buf[16] = &Copy;
        v70 = buf;
        logger::CFTypeRefLogger();
        sub_100007E44(buf);
        v62 = *(a1 + 72);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "startIPSecConnection";
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I %s: fFirstChildData value is:", buf, 0xCu);
        }

        Copy = "startIPSecConnection";
        *buf = off_101E7C150;
        *&buf[8] = a1;
        *&buf[16] = &Copy;
        v70 = buf;
        logger::CFTypeRefLogger();
        sub_100007E44(buf);
        sub_100356BE0(a1 + 32, buf);
        v63 = (*(**buf + 64))(*buf, 1);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v63 == 1)
        {
          v64 = *(a1 + 72);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "startIPSecConnection";
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I %s: Set traffic class to voice", buf, 0xCu);
          }

          (*(**(a1 + 200) + 48))(*(a1 + 200), 800);
        }

        Copy = 0;
        Copy = CFDictionaryCreateCopy(0, *(a1 + 240));
        sub_1000F0314();
      }

      v27 = *(a1 + 792);
    }

    goto LABEL_99;
  }

  v33 = v87[28];
  v34 = *(a1 + 72);
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
  if (v33 != 1)
  {
    if (!v35)
    {
      goto LABEL_98;
    }

    v39 = (*(*v32 + 48))(v32);
    if (*v87)
    {
      v40 = "f";
    }

    else
    {
      v40 = "t";
    }

    if (*v87)
    {
      v41 = asString();
    }

    else
    {
      v41 = "OK";
    }

    if (*&v87[8])
    {
      v51 = *&v87[16];
      if (**&v87[8])
      {
        v52 = "}";
        v53 = "{";
LABEL_96:
        *buf = 136317186;
        *&buf[4] = v39;
        *&buf[12] = 2080;
        *&buf[14] = "startIPSecConnection";
        *&buf[22] = 2080;
        v70 = "canActivate check failed";
        v71 = 2080;
        v72 = v40;
        v73 = 2080;
        v74 = v41;
        v75 = 2080;
        v76 = v53;
        v77 = 2080;
        v78 = *&v87[8];
        v79 = 2080;
        v80 = v51;
        v81 = 2080;
        v82 = v52;
        v48 = "#I DATA.%s: %s: %s: %s(%s%s%s %s%s)";
        v49 = v34;
        v50 = 92;
        goto LABEL_97;
      }
    }

    else
    {
      v51 = *&v87[16];
    }

    v53 = "";
    v52 = "";
    goto LABEL_96;
  }

  if (v35)
  {
    v36 = (*(*v32 + 48))(v32);
    if (*v87)
    {
      v37 = "f";
    }

    else
    {
      v37 = "t";
    }

    if (*v87)
    {
      v38 = asString();
    }

    else
    {
      v38 = "OK";
    }

    v43 = *&v87[8];
    v42 = *&v87[16];
    v44 = asStringBool(v87[24]);
    v45 = asStringBool(v87[25]);
    v46 = asStringBool(v87[26]);
    v47 = asStringBool(v87[27]);
    *buf = 136317698;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = "startIPSecConnection";
    *&buf[22] = 2080;
    v70 = "canActivate check failed";
    v71 = 2080;
    v72 = v37;
    v73 = 2080;
    v74 = v38;
    v75 = 2080;
    v76 = v43;
    v77 = 2080;
    v78 = v42;
    v79 = 2080;
    v80 = v44;
    v81 = 2080;
    v82 = v45;
    v83 = 2080;
    v84 = v46;
    v85 = 2080;
    v86 = v47;
    v48 = "#I DATA.%s: %s: %s: %s(%s{%s %s [ allowed=%s blocked=%s netAvailable=%s home=%s ]})";
    v49 = v34;
    v50 = 112;
LABEL_97:
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
  }

LABEL_98:
  v27 = 0;
LABEL_99:
  if (v89)
  {
    sub_100004A34(v89);
  }

  return v27 & 1;
}

void sub_1007711EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, dispatch_object_t object, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, char a38, uint64_t a39)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100771370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1007775E4(a1, a4);
  v9 = *(a1 + 72);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *&buf[4] = a4;
    *&buf[8] = 2080;
    *&buf[10] = asString();
    *&buf[18] = 1024;
    *&buf[20] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I IPActivateFailed: iWLanErrorCode=%d, errorCode=%s (%d)", buf, 0x18u);
  }

  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  memset(buf, 0, sizeof(buf));
  *buf = 1;
  sub_1003567A4((a1 + 32), &buf[8]);
  LOBYTE(v58) = 1;
  *(&v58 + 1) = (*(*(a1 + 32) + 192))(a1 + 32, 0);
  LODWORD(v59) = v8;
  *(&v59 + 1) = a4;
  LODWORD(v60) = (*(*(a1 + 32) + 40))(a1 + 32);
  HIDWORD(v60) = PersonalitySpecificImpl::simSlot(a1);
  v10 = *(a1 + 160);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = *(a1 + 152);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  (*(*&v12[*(*v12 - 336)] + 296))(&v12[*(*v12 - 336)], buf);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (buf[31] < 0)
  {
    operator delete(*&buf[8]);
  }

  v13 = *(a1 + 72);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = asString();
    *buf = 136315906;
    *&buf[4] = "handleDataContextIPActivateFailed";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    *&buf[22] = 2080;
    *&buf[24] = v14;
    LOWORD(v58) = 1024;
    *(&v58 + 2) = a4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: %s: for %s with %d", buf, 0x26u);
  }

  sub_10022DE64(a1, a4);
  if ((a4 - 80001) <= 0xB && ((1 << (a4 + 127)) & 0xDA5) != 0)
  {
    v15 = *(a1 + 72);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = asString();
      *buf = 136315394;
      *&buf[4] = "handleDataContextIPActivateFailed";
      *&buf[12] = 2080;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: DataContextIPActivate failed for %s, do not trying another ePDG", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (*(a1 + 795) != 1)
  {
LABEL_18:
    sub_10076BC00(a1);
    if ((*(*(a1 + 32) + 136))(a1 + 32, a3))
    {
      sub_100356BE0(a1 + 32, buf);
      v17 = *buf;
      (*(*a1 + 16))(&v49, a1);
      (*(*v17 + 56))(v17, a3, 1, &v49);
      if (v50)
      {
        sub_100004A34(v50);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    sub_10022D73C(a1);
    v18 = *(a1 + 72);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "handleDataContextIPActivateFailed";
      *&buf[12] = 1024;
      *&buf[14] = a4;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: Reporting error since we are done with this context: %d", buf, 0x12u);
    }

    sub_100356BE0(a1 + 32, buf);
    (*(**buf + 104))(*buf, 1, 3, a4);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v8 == 100)
    {
      sub_100356BE0(a1 + 32, buf);
      v19 = *buf;
      (*(*a1 + 16))(&v47, a1);
      (*(*v19 + 136))(v19, 1, &v47);
      if (v48)
      {
        sub_100004A34(v48);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    sub_100356BE0(a1 + 32, buf);
    v20 = *buf;
    v39 = v8;
    v40 = "tech activate fail";
    v41 = "";
    v42 = 0;
    v43 = 0;
    v44 = 1;
    memset(v46, 0, sizeof(v46));
    v45 = 0;
    sub_10000501C(__p, "tech activate fail");
    (*(*a1 + 16))(&v35, a1);
    BYTE4(v34) = 0;
    HIDWORD(v33) = a4;
    LODWORD(v34) = 0;
    LODWORD(v33) = 2;
    v21 = (*(*v20 + 152))(v20, a3, &v39, __p, 0, 1, &v35, *(a1 + 592), v33, v34);
    if (v36)
    {
      sub_100004A34(v36);
    }

    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&v46[4])
    {
      sub_100004A34(*&v46[4]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if ((v21 & 1) == 0)
    {
      v22 = *(a1 + 160);
      if (v22)
      {
        v23 = std::__shared_weak_count::lock(v22);
        if (v23)
        {
          v24 = *(a1 + 152);
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
        v23 = 0;
      }

      v27 = *(*v24 - 336);
      v28 = (*(*(a1 + 32) + 472))(a1 + 32);
      (*(*&v24[v27] + 184))(&v24[v27], v28);
      if (v23)
      {
        sub_100004A34(v23);
      }
    }

    sub_10077B094(a1, a4);
    return;
  }

  v54 = 0;
  v25 = *(a1 + 160);
  if (v25)
  {
    v25 = std::__shared_weak_count::lock(v25);
    v26 = v25;
    if (v25)
    {
      v25 = *(a1 + 152);
    }
  }

  else
  {
    v26 = 0;
  }

  (v25->__vftable[11].__on_zero_shared_weak)(&v54);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v29 = v54;
  if (!v54)
  {
    sub_100005978(&v54);
    goto LABEL_18;
  }

  v30 = *(a1 + 72);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = asString();
    *buf = 136315394;
    *&buf[4] = "handleDataContextIPActivateFailed";
    *&buf[12] = 2080;
    *&buf[14] = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: DataContextIPActivate failed for %s, trying another ePDG...", buf, 0x16u);
    v29 = v54;
  }

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 1174405120;
  v51[2] = sub_10077B03C;
  v51[3] = &unk_101E7A608;
  v53 = a3;
  v51[4] = a1;
  v52 = v29;
  if (v29)
  {
    CFRetain(v29);
  }

  v55 = 0;
  v56 = 0;
  sub_100004AA0(&v55, (a1 + 40));
  v32 = *(a1 + 56);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 1174405120;
  *&buf[16] = sub_100782608;
  *&buf[24] = &unk_101E7C248;
  *(&v58 + 1) = v55;
  *&v59 = v56;
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v58 = v51;
  dispatch_async(v32, buf);
  if (v59)
  {
    sub_100004A34(v59);
  }

  if (v56)
  {
    sub_100004A34(v56);
  }

  sub_100005978(&v52);
  sub_100005978(&v54);
}

BOOL sub_100771D48(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  if (*(a1 + 184))
  {
    v72 = 0uLL;
    v73 = 0;
    sub_10076F7F8(a1, a2, &v72);
    v8 = HIBYTE(v73);
    if (v73 < 0)
    {
      v8 = *(&v72 + 1);
    }

    if (!v8)
    {
      v22 = *(a1 + 72);
      v19 = 0;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = asString();
        *buf = 136315394;
        *&buf[4] = "startMOBIKEHandoverTo";
        *&buf[12] = 2080;
        *&buf[14] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: Cannot find outgoing interface for %s", buf, 0x16u);
        v19 = 0;
      }

      goto LABEL_77;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
        v49 = 0;
        if (!v17)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v49 = 1;
    if (!v17)
    {
LABEL_11:
      v18 = *(a1 + 72);
      v19 = 0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = asString();
        *buf = 136315394;
        *&buf[4] = "startMOBIKEHandoverTo";
        *&buf[12] = 2080;
        *&buf[14] = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: No active data service to do MOBIKE handover to %s", buf, 0x16u);
        v19 = 0;
      }

LABEL_75:
      if ((v49 & 1) == 0)
      {
        sub_100004A34(v16);
      }

LABEL_77:
      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72);
      }

      return v19;
    }

LABEL_19:
    v70 = 0;
    v71 = 0;
    sub_100DF07C8(*(a1 + 80), &v70);
    __dst = 0uLL;
    v69 = 0;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a3, *(a3 + 1));
    }

    else
    {
      __dst = *a3;
      v69 = *(a3 + 2);
    }

    v48 = *(a1 + 632);
    v47 = sub_100086B10(a1);
    v46 = (*(*v17 + 1048))(v17);
    if (v70)
    {
      v45 = CallController::isAnyCallBeingSetup(v70);
    }

    else
    {
      v45 = 0;
    }

    v24 = PersonalitySpecificImpl::simSlot(a1);
    v25 = (*(*v17 + 1040))(v17, v24);
    v26 = *(a1 + 72);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = asString();
      *buf = 136315394;
      *&buf[4] = "startMOBIKEHandoverTo";
      *&buf[12] = 2080;
      *&buf[14] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: Starting MOBIKE handover to %s", buf, 0x16u);
    }

    v67 = 0;
    if (SHIBYTE(v73) < 0)
    {
      sub_100005F2C(__p, v72, *(&v72 + 1));
    }

    else
    {
      *__p = v72;
      v66 = v73;
    }

    if (SHIBYTE(v66) < 0)
    {
      sub_100005F2C(&v75, __p[0], __p[1]);
    }

    else
    {
      v75 = *__p;
      v76 = v66;
    }

    v74 = 0;
    if (SHIBYTE(v76) < 0)
    {
      sub_100005F2C(buf, v75, *(&v75 + 1));
    }

    else
    {
      *buf = v75;
      *&buf[16] = v76;
    }

    v77 = 0;
    if (ctu::cf::convert_copy())
    {
      v28 = v74;
      v74 = v77;
      v63 = v28;
      sub_100005978(&v63);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v67 = v74;
    v74 = 0;
    sub_100005978(&v74);
    if (SHIBYTE(v76) < 0)
    {
      operator delete(v75);
    }

    if (SHIBYTE(v66) < 0)
    {
      operator delete(__p[0]);
    }

    v29 = sub_100774AE0(a1);
    v75 = 0uLL;
    v76 = 0;
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    v75 = *buf;
    v76 = *&buf[16];
    v30 = *(a1 + 72);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = &v75;
      if (v76 < 0)
      {
        v31 = v75;
      }

      *buf = 136315394;
      *&buf[4] = "startMOBIKEHandoverTo";
      *&buf[12] = 2080;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: (ePDG) remoteAddress = %s", buf, 0x16u);
    }

    v63 = 0;
    v64 = 0;
    (*(**(a1 + 184) + 56))(&v63);
    v32 = v63;
    if (v63)
    {
      v33 = *v63;
      v34 = *(a1 + 184);
      v35 = v67;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 1174405120;
      v50[2] = sub_100774C3C;
      v50[3] = &unk_101E7A558;
      v50[4] = a1;
      v56 = a2;
      v59 = a4;
      if (SHIBYTE(v69) < 0)
      {
        sub_100005F2C(&v51, __dst, *(&__dst + 1));
        v32 = v63;
      }

      else
      {
        v51 = __dst;
        v52 = v69;
      }

      v60 = v46;
      v61 = v45;
      v57 = v48;
      v58 = v25;
      v62 = v33;
      v53 = v47;
      v54 = v32;
      v55 = v64;
      if (v64)
      {
        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = (*(*v34 + 48))(v34, v35, v29, 4, 2500, v50);
      v19 = v37 == 1000;
      if (v37 != 1000)
      {
        v38 = *(a1 + 72);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = asString();
          *buf = 136315650;
          *&buf[4] = "startMOBIKEHandoverTo";
          *&buf[12] = 2080;
          *&buf[14] = v39;
          *&buf[22] = 1024;
          v79 = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: initiateMOBIKE to %s failed with result %u, session got disconnected.", buf, 0x1Cu);
        }

        if ((a4 & 1) == 0)
        {
          v40 = sub_100086B10(a1);
          v41 = (*(*(a1 + 32) + 40))();
          iWLanNotifyCodeAsString(buf, v37);
          HIBYTE(v44) = *v63;
          LOBYTE(v44) = v33;
          HIBYTE(v43) = v45;
          LOBYTE(v43) = v46;
          sub_100774E9C(a1, v41, &__dst, v48, a2, 0, buf, v40 - v47, v43, v25, v44);
        }

        sub_1007731C8(a1, *(a1 + 224), v37);
      }

      if (v55)
      {
        sub_100004A34(v55);
      }

      if (SHIBYTE(v52) < 0)
      {
        operator delete(v51);
      }
    }

    else
    {
      v36 = *(a1 + 72);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_10177D280(v36);
      }

      v19 = 0;
    }

    if (v64)
    {
      sub_100004A34(v64);
    }

    if (SHIBYTE(v76) < 0)
    {
      operator delete(v75);
    }

    sub_100005978(&v67);
    if (SHIBYTE(v69) < 0)
    {
      operator delete(__dst);
    }

    if (v71)
    {
      sub_100004A34(v71);
    }

    goto LABEL_75;
  }

  v21 = *(a1 + 72);
  v19 = 0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "startMOBIKEHandoverTo";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: No active iWLan session to do MOBIKE handover to %s", buf, 0x16u);
    return 0;
  }

  return v19;
}

void sub_1007725EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, const void *a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48)
{
  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  if (a28)
  {
    sub_100004A34(a28);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32)
  {
    sub_100004A34(a32);
  }

  if (*(v49 - 153) < 0)
  {
    operator delete(*(v49 - 176));
  }

  sub_100005978(&a39);
  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a48)
  {
    sub_100004A34(a48);
  }

  if ((a14 & 1) == 0)
  {
    sub_100004A34(v48);
  }

  if (*(v49 - 185) < 0)
  {
    operator delete(*(v49 - 208));
  }

  _Unwind_Resume(a1);
}

void sub_100772778(uint64_t a1)
{
  if (*(a1 + 794) == 1)
  {
    *(a1 + 794) = 0;
  }

  if (*(a1 + 632))
  {
    v2 = *(a1 + 72);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = 136315138;
    v9 = "handleInternetDeactivated";
    v3 = "#I %s: Not over Cellular, ignore Internet deactivated event.";
    goto LABEL_6;
  }

  v4 = *(a1 + 224);
  if ((v4 - 2) >= 2)
  {
    if (v4 == 5)
    {
      v2 = *(a1 + 72);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "handleInternetDeactivated";
        v3 = "#I %s: in process of MOBIKE handover, ignore Internet deactivated event.";
LABEL_6:
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, &v8, 0xCu);
      }
    }
  }

  else
  {
    v5 = *(a1 + 72);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    v7 = 0;
    if (v6)
    {
      v8 = 136315138;
      v9 = "handleInternetDeactivated";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: Internet Context down", &v8, 0xCu);
      v7 = *(a1 + 632);
    }

    sub_1007728F4(a1, v7);
  }
}

void sub_1007728F4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "handleTransportationLost";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: Lost data transport on %s", buf, 0x16u);
  }

  v23 = 0;
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
  if (!v11)
  {
    v13 = 0;
LABEL_11:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (!v13)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_14;
  }

LABEL_12:
  (*(*a1 + 16))(buf, a1);
  v15 = (*(*v13 + 16))(v13, *buf + 24);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

LABEL_14:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (*(a1 + 224) != 3)
  {
    goto LABEL_22;
  }

  if ((v15 & 1) == 0)
  {
    sub_100356BE0(a1 + 32, &v21);
    if ((*(*v21 + 120))(v21, 0))
    {
      v16 = 0;
      goto LABEL_25;
    }
  }

  v17 = sub_1007741EC(a1, v2 != 1, &v23);
  v16 = v17;
  if ((v15 & 1) == 0)
  {
LABEL_25:
    if (v22)
    {
      sub_100004A34(v22);
    }

    if (v16)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (v17)
  {
LABEL_28:
    if (v23 == 1)
    {
      sub_10000501C(buf, "Lost data transport");
      (*(*a1 + 256))(a1, v2 != 1, buf);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v18 = *(a1 + 72);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = asString();
        v20 = asString();
        *buf = 136315650;
        *&buf[4] = "handleTransportationLost";
        *&buf[12] = 2080;
        *&buf[14] = v19;
        v25 = 2080;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: Lost data transport on %s, but already on transport type %s.", buf, 0x20u);
      }
    }

    return;
  }

LABEL_22:
  if (v2)
  {
    if (v2 == 1)
    {
      sub_1007731C8(a1, *(a1 + 224), 80001);
    }
  }

  else
  {
    sub_1007731C8(a1, *(a1 + 224), 80011);
  }
}

void sub_100772C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100772D14(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(a1 + 794));
    v4 = asString();
    v5 = sub_100772ED4(*(a1 + 224));
    v10 = 136315906;
    v11 = "handleDataSIMSwitched";
    v12 = 2080;
    v13 = v3;
    v14 = 2080;
    v15 = v4;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: fInActivatingInternet = %s, fTransportType=%s, fStatus=%s", &v10, 0x2Au);
  }

  if (*(a1 + 794) == 1)
  {
    *(a1 + 794) = 0;
  }

  if (*(a1 + 632))
  {
    v6 = *(a1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "handleDataSIMSwitched";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: Not over Cellular, ignore Internet activated event.", &v10, 0xCu);
    }
  }

  else if (*(a1 + 224) == 2)
  {
    v7 = *(a1 + 72);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    v9 = 0;
    if (v8)
    {
      v10 = 136315138;
      v11 = "handleDataSIMSwitched";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: not expecting other SIM Internet", &v10, 0xCu);
      v9 = *(a1 + 632);
    }

    sub_1007728F4(a1, v9);
  }
}

const char *sub_100772ED4(unsigned int a1)
{
  if (a1 > 5)
  {
    return "(unknown)";
  }

  else
  {
    return off_101E7C5F8[a1];
  }
}

void sub_100772F00(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (*(a1 + 632))
    {
      v3 = *(a1 + 72);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = "handleUserAllowsIWLanOverCellularChanged";
      v4 = "#I %s: Not over cellular, ignore iWLan disallowed over cellular data event";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, &buf, 0xCu);
      return;
    }

    v5 = a1 + 32;
    (*(*(a1 + 32) + 440))(&buf, a1 + 32);
    if (buf)
    {
      (*(*v5 + 440))(&v9, a1 + 32);
      v6 = (*(*v9 + 56))(v9, 1) ^ 1;
      if (v10)
      {
        sub_100004A34(v10);
      }
    }

    else
    {
      v6 = 0;
    }

    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if (v6)
    {
      v3 = *(a1 + 72);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = "handleUserAllowsIWLanOverCellularChanged";
      v4 = "#I %s: Not for IMS, ignore iWLan disallowed over cellular data event";
      goto LABEL_22;
    }

    if (!*(a1 + 184))
    {
      v3 = *(a1 + 72);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = "handleUserAllowsIWLanOverCellularChanged";
      v4 = "#I %s: No active iWLan session, ignore iWLan disallowed over cellular data event";
      goto LABEL_22;
    }

    v7 = *(a1 + 224);
    if (v7 <= 5 && ((1 << v7) & 0x2C) != 0)
    {
      v8 = *(a1 + 72);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "handleUserAllowsIWLanOverCellularChanged";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: User disallows iWLan over cellular data", &buf, 0xCu);
        v7 = *(a1 + 224);
      }

      sub_1007731C8(a1, v7, 80011);
    }
  }
}

void sub_100773194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1007731C8(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v44 = 136315394;
    *&v44[4] = "handleDisconnected";
    *&v44[12] = 1024;
    *&v44[14] = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: %d", v44, 0x12u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  *v44 = v10;
  v14 = sub_100009510(&v8[1].__m_.__sig, v44);
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
      if (!v16)
      {
LABEL_26:
        sub_100004A34(v15);
        goto LABEL_27;
      }
    }

    else
    {
      std::mutex::unlock(v8);
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    *v44 = 0;
    *&v44[8] = 0;
    (*(*v16 + 456))(v44, v16);
    v17 = *v44;
    if (*v44)
    {
      v18 = PersonalitySpecificImpl::simSlot(a1);
      if (*(a1 + 224) == 3 && v3 == 70006 || v3 == 70007)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      (*(*v17 + 72))(v17, v18, v21);
    }

    if (*&v44[8])
    {
      sub_100004A34(*&v44[8]);
    }

    if (v15)
    {
      goto LABEL_26;
    }
  }

  else
  {
    std::mutex::unlock(v8);
  }

LABEL_27:
  if (v3 == 70007 && *(a1 + 745) == 1)
  {
    v22 = Registry::getServiceMap(*(a1 + 80));
    v23 = v22;
    if (v9 < 0)
    {
      v24 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v25 = 5381;
      do
      {
        v9 = v25;
        v26 = *v24++;
        v25 = (33 * v25) ^ v26;
      }

      while (v26);
    }

    std::mutex::lock(v22);
    *v44 = v9;
    v27 = sub_100009510(&v23[1].__m_.__sig, v44);
    if (v27)
    {
      v29 = v27[3];
      v28 = v27[4];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v23);
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v28);
        if (!v29)
        {
LABEL_43:
          sub_100004A34(v28);
          goto LABEL_44;
        }

LABEL_38:
        *v44 = 0;
        *&v44[8] = 0;
        (*(*v29 + 1128))(v44, v29);
        v30 = *v44;
        if (*v44)
        {
          v31 = PersonalitySpecificImpl::simSlot(a1);
          v32 = (*(*(a1 + 32) + 40))(a1 + 32);
          (*(*v30 + 40))(v30, v31, v32);
        }

        if (*&v44[8])
        {
          sub_100004A34(*&v44[8]);
        }

        if (!v28)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      std::mutex::unlock(v23);
      if (v29)
      {
        goto LABEL_38;
      }
    }

    else
    {
      std::mutex::unlock(v23);
    }

LABEL_44:
    *(a1 + 745) = 0;
  }

  *(a1 + 592) = v3;
  if (a2 == 5)
  {
    sub_1007799A0(a1, v3);
  }

  else if (a2 == 3)
  {
    v33 = *(a1 + 752) != 0;
    v34 = (*(*(a1 + 32) + 664))(a1 + 32);
    if (((*(*(a1 + 32) + 672))(a1 + 32) | v34 | v33))
    {
      v35 = *(a1 + 72);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a1 + 752) != 0;
        if ((*(*(a1 + 32) + 664))(a1 + 32))
        {
          v36 |= 2u;
        }

        v37 = (*(*(a1 + 32) + 672))(a1 + 32);
        v38 = v36 | 4;
        if (!v37)
        {
          v38 = v36;
        }

        *v44 = 136315394;
        *&v44[4] = "handleDisconnected";
        *&v44[12] = 1024;
        *&v44[14] = v38;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s: activate failed due to transitionalStateMask: %u", v44, 0x12u);
      }

      v39 = *(a1 + 616);
      sub_10076B24C(a1, "transitionalStateMask");
      sub_100356BE0(a1 + 32, v44);
      v40 = *v44;
      v41 = otherContextType();
      v42 = (*(*v40 + 496))(v40, v41);
      if (*&v44[8])
      {
        sub_100004A34(*&v44[8]);
      }

      if (v42)
      {
        sub_100777D40(a1);
      }

      else
      {
        sub_100771370(a1, "transitionalStateMask", v39, *(a1 + 592));
      }
    }

    else
    {
      sub_1007799A0(a1, *(a1 + 592));
    }
  }

  else
  {
    v43 = *(a1 + 616);
    sub_10076B24C(a1, "disconnected");
    if (a2 == 4)
    {
      sub_10076BC00(a1);
      sub_100777D40(a1);
    }

    else if (a2 == 2)
    {
      sub_100771370(a1, "disconnected", v43, *(a1 + 592));
    }
  }

  sub_1000869A8(a1);
}

void sub_1007737EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100773870(uint64_t a1, uint64_t a2, std::string *a3)
{
  v4 = *(a1 + 224);
  if (v4 == 3)
  {
    if (*(a1 + 632) == a2)
    {
      v6 = *(a1 + 72);
      result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v12 = 136315394;
        v13 = "mOBIKEHandoverTo";
        v14 = 2080;
        v15 = asString();
        v8 = "#I %s: iWLan tunnel is already on %s, no need to handover.";
        v9 = v6;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x16u);
        return 0;
      }
    }

    else
    {
      sub_10076A498(a1, 5);
      if (sub_10076FF10(a1, a2))
      {
        std::string::operator=((a1 + 448), a3);
        return 1;
      }

      else
      {

        return sub_100771D48(a1, a2, a3, 0);
      }
    }
  }

  else
  {
    v10 = *(a1 + 72);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v12 = 136315394;
      v13 = "mOBIKEHandoverTo";
      v14 = 2080;
      v15 = sub_100772ED4(v4);
      v8 = "#I %s: context is in %s state, cannot do MOBIKE.";
      v9 = v10;
      goto LABEL_7;
    }
  }

  return result;
}

void sub_100773A54(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 632);
  v7 = *(a1 + 72);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6 == v3)
    {
      if (v8)
      {
        *buf = 136315394;
        *&buf[4] = "handleMOBIKEDone";
        *&buf[12] = 2080;
        *&buf[14] = asString();
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Recovered from MOBIKE failure, back to %s now", buf, 0x16u);
      }

      return;
    }

    if (v8)
    {
      *buf = 136315650;
      *&buf[4] = "handleMOBIKEDone";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      *&buf[22] = 2080;
      v28 = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: MOBIKE handover from %s to %s succeeded.", buf, 0x20u);
    }

    *(a1 + 632) = v3;
    __src[0] = 0;
    __src[1] = 0;
    v21 = 0;
    sub_10076F7F8(a1, v3, __src);
    if (SHIBYTE(v21) < 0)
    {
      if (__src[1])
      {
        v19 = 0;
        sub_100005F2C(v17, __src[0], __src[1]);
        goto LABEL_22;
      }
    }

    else if (HIBYTE(v21))
    {
      *v17 = *__src;
      v18 = v21;
      v19 = 0;
LABEL_22:
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
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        *&buf[16] = v24;
      }

      v25 = 0;
      if (ctu::cf::convert_copy())
      {
        v13 = v22;
        v22 = v25;
        v26 = v13;
        sub_100005978(&v26);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v19 = v22;
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

      if (v19)
      {
        if (((*(**(a1 + 200) + 56))(*(a1 + 200)) & 1) == 0)
        {
          v14 = *(a1 + 72);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "handleMOBIKEDone";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: VirtualInterface setDelegateInterface failed", buf, 0xCu);
          }
        }
      }

      sub_100005978(&v19);
      goto LABEL_43;
    }

    v11 = *(a1 + 72);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = asString();
      *buf = 136315394;
      *&buf[4] = "handleMOBIKEDone";
      *&buf[12] = 2080;
      *&buf[14] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Cannot find outgoing interface for %s", buf, 0x16u);
    }

LABEL_43:
    sub_100356BE0(a1 + 32, buf);
    (*(**buf + 336))(*buf, 1, 1);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    sub_100356BE0(a1 + 32, buf);
    if (v3 == 1)
    {
      v15 = 9;
    }

    else
    {
      v15 = 7;
    }

    if (v3)
    {
      v16 = v15;
    }

    else
    {
      v16 = 8;
    }

    (*(**buf + 232))(*buf, v16, 0, 0, 0);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (SHIBYTE(v21) < 0)
    {
      v10 = __src[0];
      goto LABEL_55;
    }

    return;
  }

  if (v6 == v3)
  {
    if (v8)
    {
      *buf = 136315394;
      *&buf[4] = "handleMOBIKEDone";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Trying to revert back to %s from MOBIKE failure, but still failed, disconnect", buf, 0x16u);
    }

    sub_1007731C8(a1, *(a1 + 224), 80004);
  }

  else
  {
    if (v8)
    {
      *buf = 136315906;
      *&buf[4] = "handleMOBIKEDone";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      *&buf[22] = 2080;
      v28 = asString();
      v29 = 2080;
      v30 = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: MOBIKE handover from %s to %s failed, MOBIKE back to %s.", buf, 0x2Au);
    }

    sub_100356BE0(a1 + 32, buf);
    (*(**buf + 336))(*buf, 1, 0);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v9 = *(a1 + 632);
    sub_10000501C(buf, "Revert back after MOBIKE failure");
    sub_100771D48(a1, v9, buf, 1);
    if ((buf[23] & 0x80000000) != 0)
    {
      v10 = *buf;
LABEL_55:
      operator delete(v10);
    }
  }
}

void sub_100773FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007740CC(uint64_t a1)
{
  sub_100356744(a1 + 32, &v6);
  v2 = (*(*v6 + 72))(v6, 1, 0);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v2)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(*(a1 + 160));
  v3 = (*(**(a1 + 152) + 528))(*(a1 + 152));
  sub_100004A34(v4);
  return v3;
}

BOOL sub_1007741EC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  *a3 = 0;
  v6 = a1 + 32;
  sub_100356744(a1 + 32, buf);
  v7 = (*(**buf + 496))(*buf, 0);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v7)
  {
    v8 = *(a1 + 72);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "isMOBIKEPossibleTo";
    v10 = "#I %s: MOBIKE cannot be used currently because we are in handover to Cellular";
    goto LABEL_14;
  }

  if ((sub_1007740CC(a1) & 1) == 0)
  {
    v8 = *(a1 + 72);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "isMOBIKEPossibleTo";
    v10 = "#I %s: iWLan over Cell is not supported";
    goto LABEL_14;
  }

  if (*(a1 + 632) == v4)
  {
    v11 = *(a1 + 72);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:
      *a3 = 0;
      return 1;
    }

    v12 = asString();
    *buf = 136315394;
    *&buf[4] = "isMOBIKEPossibleTo";
    *&buf[12] = 2080;
    *&buf[14] = v12;
    v13 = "#I %s: iWLan tunnel is already on %s, no need to handover.";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
    goto LABEL_11;
  }

  sub_100356744(v6, &v50);
  (*(*v50 + 264))(buf);
  v16 = *buf;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(&v50 + 1))
  {
    sub_100004A34(*(&v50 + 1));
  }

  if (!v16)
  {
    v8 = *(a1 + 72);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "isMOBIKEPossibleTo";
    v10 = "#I %s: switch over is not supported on this context (active settings empty)";
    goto LABEL_14;
  }

  sub_100356744(v6, &v50);
  (*(*v50 + 264))(buf);
  v17 = (*(**buf + 176))(*buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(&v50 + 1))
  {
    sub_100004A34(*(&v50 + 1));
  }

  if ((v17 & 1) == 0)
  {
    v8 = *(a1 + 72);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "isMOBIKEPossibleTo";
    v10 = "#I %s: switch over is not supported on this context";
    goto LABEL_14;
  }

  v18 = *(a1 + 184);
  if (!v18)
  {
    v8 = *(a1 + 72);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "isMOBIKEPossibleTo";
    v10 = "#I %s: No active iWLan session to do MOBIKE handover";
    goto LABEL_14;
  }

  v19 = *(a1 + 224);
  if (v19 != 3)
  {
    if (v19 == 5)
    {
      v11 = *(a1 + 72);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v20 = sub_100772ED4(5u);
      *buf = 136315394;
      *&buf[4] = "isMOBIKEPossibleTo";
      *&buf[12] = 2080;
      *&buf[14] = v20;
      v13 = "#I %s: context is in %s state, it's already in process of MOBIKE handover.";
      goto LABEL_10;
    }

    v21 = *(a1 + 72);
    result = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v23 = sub_100772ED4(v19);
      *buf = 136315394;
      *&buf[4] = "isMOBIKEPossibleTo";
      *&buf[12] = 2080;
      *&buf[14] = v23;
      v10 = "#I %s: context is in %s state, cannot do MOBIKE.";
      goto LABEL_47;
    }

    return result;
  }

  if (((*(*v18 + 40))(v18) & 1) == 0)
  {
    v8 = *(a1 + 72);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "isMOBIKEPossibleTo";
    v10 = "#I %s: MOBIKE is not supported on this session";
LABEL_14:
    v14 = v8;
    v15 = 12;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v10, buf, v15);
    return 0;
  }

  if (!v4)
  {
    v53 = 0;
    *v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v24 = std::__shared_weak_count::lock(*(a1 + 160));
    (*(**(a1 + 152) + 536))(&v50);
    sub_100004A34(v24);
    v25 = v50;
    if (!v50)
    {
      goto LABEL_73;
    }

    v26 = v51[12];
    v27 = *(a1 + 72);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (!v28)
      {
        goto LABEL_73;
      }

      v49 = (*(*v6 + 48))(v6);
      v48 = asString();
      v29 = "f";
      if (!v50)
      {
        v29 = "t";
      }

      v47 = v29;
      if (v50)
      {
        v30 = asString();
      }

      else
      {
        v30 = "OK";
      }

      v36 = *(&v50 + 1);
      v35 = *v51;
      v37 = asStringBool(v51[8]);
      v38 = asStringBool(v51[9]);
      v39 = asStringBool(v51[10]);
      v40 = asStringBool(v51[11]);
      *buf = 136317954;
      *&buf[4] = v49;
      *&buf[12] = 2080;
      *&buf[14] = "isMOBIKEPossibleTo";
      v55 = 2080;
      v56 = "Internet Connection not available to MOBIKE handover to";
      v57 = 2080;
      v58 = v48;
      v59 = 2080;
      v60 = v47;
      v61 = 2080;
      v62 = v30;
      v63 = 2080;
      v64 = v36;
      v65 = 2080;
      v66 = v35;
      v67 = 2080;
      v68 = v37;
      v69 = 2080;
      v70 = v38;
      v71 = 2080;
      v72 = v39;
      v73 = 2080;
      v74 = v40;
      v41 = "#I DATA.%s: %s: %s: %s: %s(%s{%s %s [ allowed=%s blocked=%s netAvailable=%s home=%s ]})";
      v42 = v27;
      v43 = 122;
      goto LABEL_72;
    }

    if (!v28)
    {
      goto LABEL_73;
    }

    v31 = (*(*v6 + 48))(v6);
    v32 = asString();
    if (v50)
    {
      v33 = "f";
    }

    else
    {
      v33 = "t";
    }

    if (v50)
    {
      v34 = asString();
    }

    else
    {
      v34 = "OK";
    }

    if (*(&v50 + 1))
    {
      v44 = *v51;
      if (**(&v50 + 1))
      {
        v45 = "}";
        v46 = "{";
LABEL_71:
        *buf = 136317442;
        *&buf[4] = v31;
        *&buf[12] = 2080;
        *&buf[14] = "isMOBIKEPossibleTo";
        v55 = 2080;
        v56 = "Internet Connection not available to MOBIKE handover to";
        v57 = 2080;
        v58 = v32;
        v59 = 2080;
        v60 = v33;
        v61 = 2080;
        v62 = v34;
        v63 = 2080;
        v64 = v46;
        v65 = 2080;
        v66 = *(&v50 + 1);
        v67 = 2080;
        v68 = v44;
        v69 = 2080;
        v70 = v45;
        v41 = "#I DATA.%s: %s: %s: %s: %s(%s%s%s %s%s)";
        v42 = v27;
        v43 = 102;
LABEL_72:
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
LABEL_73:
        if (v53)
        {
          sub_100004A34(v53);
        }

        if (v25)
        {
          return 0;
        }

        goto LABEL_76;
      }
    }

    else
    {
      v44 = *v51;
    }

    v46 = "";
    v45 = "";
    goto LABEL_71;
  }

  if (v4 != 1)
  {
    return 0;
  }

  if (*(a1 + 744))
  {
LABEL_76:
    result = 1;
    *a3 = 1;
    return result;
  }

  v21 = *(a1 + 72);
  result = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v22 = asString();
    *buf = 136315394;
    *&buf[4] = "isMOBIKEPossibleTo";
    *&buf[12] = 2080;
    *&buf[14] = v22;
    v10 = "#I %s: No Wifi to MOBIKE handover to %s";
LABEL_47:
    v14 = v21;
    v15 = 22;
    goto LABEL_15;
  }

  return result;
}

void sub_100774A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_100774AE0(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (!v2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v2, @"RemoteAddress");
  v4 = Value;
  if (!Value)
  {
    return v4;
  }

  v5 = CFGetTypeID(Value);
  if (v5 != CFStringGetTypeID())
  {
    return 0;
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = 0u;
  v10 = 0;
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = __p;
    if (v10 < 0)
    {
      v7 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = "getRemoteAddr";
    *&buf[12] = 2080;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: ePDG: %s", buf, 0x16u);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_100774C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100774C3C(uint64_t a1, int a2, const __CFDictionary *a3)
{
  v6 = *(a1 + 32);
  v7 = sub_100086B10(v6);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (!a2)
  {
    v8 = *(v6 + 72);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "startMOBIKEHandoverTo_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: MOBIKE handover response data:", buf, 0xCu);
    }

    v17 = "startMOBIKEHandoverTo_block_invoke";
    *buf = off_101E7C050;
    *&buf[8] = v6;
    v21 = &v17;
    v22 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
    if (a3 && (Value = CFDictionaryGetValue(a3, @"NotifyCode"), (v10 = Value) != 0))
    {
      v11 = CFGetTypeID(Value);
      TypeID = CFNumberGetTypeID();
      v14 = -1;
      if (v11 == TypeID)
      {
        *buf = -1;
        ctu::cf::assign(buf, v10, v12);
        v14 = *buf;
      }
    }

    else
    {
      v14 = -1;
    }

    iWLanNotifyCodeAsString(buf, v14);
    *__p = *buf;
    v19 = v21;
  }

  sub_100773A54(v6, a2 != 0, *(a1 + 88));
  if ((*(a1 + 100) & 1) == 0)
  {
    v15 = (*(*(v6 + 32) + 40))();
    HIBYTE(v16) = **(a1 + 72);
    LOBYTE(v16) = *(a1 + 103);
    sub_100774E9C(v6, v15, a1 + 40, *(a1 + 92), *(a1 + 88), a2 != 0, __p, v7 - *(a1 + 64), *(a1 + 101), *(a1 + 96), v16);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100774E9C(NSObject **this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, int a10, __int16 a11)
{
  v11 = a8;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a2;
  memset(&__dst, 0, sizeof(__dst));
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a3, *(a3 + 8));
  }

  else
  {
    __dst = *a3;
  }

  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  if (*(a7 + 23) < 0)
  {
    sub_100005F2C(__p, *a7, *(a7 + 8));
  }

  else
  {
    *__p = *a7;
    v20 = *(a7 + 16);
  }

  v18 = PersonalitySpecificImpl::simSlot(this);
  sub_10079F30C(v18, v16, &__dst, v15, v14, v13, __p, v11, a9, SHIBYTE(a9), a10, a11, SHIBYTE(a11));
}

void sub_10077504C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100775088(char *result, uint64_t a2)
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

  v5 = *(a2 + 80);
  *(v3 + 9) = *(a2 + 72);
  *(v3 + 10) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1007750EC(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

uint64_t sub_100775140(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"DeadPeerDetectionReceiveMaxShortDPDBeforeReporting");
    v5 = CFDictionaryGetValue(theDict, @"DeadPeerDetectionReceiveIntervalTriggerReporting");
    if (Value)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      if (v5)
      {
        v18 = 0;
        v9 = CFGetTypeID(Value);
        v11 = 0;
        if (v9 == CFNumberGetTypeID())
        {
          ctu::cf::assign(&v18, Value, v10);
          v11 = v18;
        }

        v18 = 0;
        v12 = CFGetTypeID(v6);
        v14 = 0;
        if (v12 == CFNumberGetTypeID())
        {
          ctu::cf::assign(&v18, v6, v13);
          v14 = v18;
        }

        if (!v11)
        {
          v15 = *(a1 + 72);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136315394;
            v19 = "getShortDPDParams";
            v20 = 1024;
            v21 = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E %s: Invalid short DPD reporting packet count %du", &v18, 0x12u);
          }
        }

        if (!v14)
        {
          v16 = *(a1 + 72);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136315394;
            v19 = "getShortDPDParams";
            v20 = 1024;
            v21 = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E %s: Invalid short DPD reporting interval %du seconds", &v18, 0x12u);
          }
        }

        sub_100086B10(a1);
        v7 = v14 << 32;
        v8 = v11;
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unsigned int *sub_100775338(unsigned int *result)
{
  v1 = result[202];
  if (v1)
  {
    v2 = result;
    v3 = result[203];
    if (v3)
    {
      if (*(result + 102))
      {
        v4 = (sub_100086B10(result) - *(result + 102)) / 0x3E8uLL;

        return sub_1007753D0(v2, v1, v3, v4);
      }
    }
  }

  return result;
}

unsigned int *sub_1007753D0(uint64_t a1, int a2, int a3, int a4)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_1007814FC(v12, 524559);
  v8 = v12[0];
  if (v12[0])
  {
    v9 = *(v12[0] + 8);
    *(v12[0] + 4) = a2;
    *(v8 + 5) = a3;
    *(v8 + 8) = v9 | 0xE;
    *(v8 + 6) = a4;
    v10 = *(a1 + 72);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "submitShortDeadPeerDetectionMetric";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: Short DPD metric submitted", buf, 0xCu);
    }
  }

  return sub_1007815E4(v12);
}

uint64_t sub_1007754C4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  __p = 0;
  v30 = 0;
  v31 = 0;
  PersonalitySpecificImpl::simSlot(a1);
  PersonalityIdFromSlotIdEx(&__p);
  v4 = HIBYTE(v31);
  if (v31 < 0)
  {
    v4 = v30;
  }

  if (!v4)
  {
    v15 = 0;
    goto LABEL_23;
  }

  *buf = 0;
  *&buf[8] = 0;
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
  cf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &cf);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
LABEL_12:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
LABEL_13:
  (*(*v13 + 40))(buf, v13, &__p);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (*buf)
  {
    cf = 0;
    (*(**buf + 40))(&cf);
    v16 = cf;
    v32 = 0;
    if (cf)
    {
      v17 = CFGetTypeID(cf);
      if (v17 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v32, v16, v18);
      }
    }

    v15 = v32;
    sub_10000A1EC(&cf);
  }

  else
  {
    v15 = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

LABEL_23:
  v19 = *(a1 + 72);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = asStringBool(v15 & 1);
    v21 = asString();
    v22 = asStringBool(*(a1 + 424));
    *buf = 136315906;
    *&buf[4] = "needToAcquireWanIp";
    *&buf[12] = 2080;
    *&buf[14] = v20;
    v35 = 2080;
    v36 = v21;
    v37 = 2080;
    v38 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s: needRoutableAddr: %s, transType=%s, WAN IP Addr acquired: %s", buf, 0x2Au);
  }

  if ((v15 & 1) == 0 || !(*(*(a1 + 32) + 472))(a1 + 32))
  {
    goto LABEL_30;
  }

  v23 = 0;
  if (v2 == 1 && (*(a1 + 796) & 1) == 0)
  {
    if (*(a1 + 424))
    {
LABEL_30:
      v23 = 0;
      goto LABEL_31;
    }

    v25 = *(a1 + 160);
    if (v25)
    {
      v26 = std::__shared_weak_count::lock(v25);
      if (v26)
      {
        v27 = *(a1 + 152);
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    v28 = (*(*(a1 + 32) + 40))(a1 + 32);
    (*(*v27 + 560))(v27, v28);
    if (v26)
    {
      sub_100004A34(v26);
    }

    v23 = 1;
    *(a1 + 793) = 1;
  }

LABEL_31:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  return v23;
}

void sub_10077588C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10077590C(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 240), @"RemoteAddress");
  v3 = Value;
  if (Value)
  {
    v4 = CFGetTypeID(Value);
    if (v4 != CFStringGetTypeID())
    {
      v3 = 0;
    }
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *v25 = 0u;
  v26 = 0;
  v5 = *(a1 + 72);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v25;
    if (v26 < 0)
    {
      v6 = v25[0];
    }

    *buf = 136315394;
    *&buf[4] = "needToResolveEPDGName";
    *&buf[12] = 2080;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: ePDG: %s", buf, 0x16u);
  }

  memset(v24, 0, sizeof(v24));
  CSIPacketAddress::CSIPacketAddress();
  if (CSIPacketAddress::isZeroIP(v24))
  {
    v23 = 0;
    v22 = 0;
    v7 = *(a1 + 160);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *(a1 + 152);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v12 = (*(*(a1 + 32) + 40))();
    v13 = *(a1 + 632);
    v14 = sub_10076CF88(a1);
    (*(*v9 + 464))(&v22, v9, v3, v12, v13, &v23, v14);
    if (v8)
    {
      sub_100004A34(v8);
    }

    v15 = v22;
    v10 = v22 == 0;
    if (v22)
    {
      v16 = *(a1 + 72);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        *__p = *buf;
        v21 = *&buf[16];
        v17 = *buf;
        if ((buf[23] & 0x80u) == 0)
        {
          v17 = __p;
        }

        *v27 = 136315394;
        *&v27[4] = "needToResolveEPDGName";
        *&v27[12] = 2080;
        *&v27[14] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: ePDG Address resolved as: %s", v27, 0x16u);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        v15 = v22;
      }

      CFDictionarySetValue(*(a1 + 240), @"RemoteAddress", v15);
      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      *v27 = *buf;
      *&v27[16] = *&buf[16];
      CSIPacketAddress::CSIPacketAddress();
      if ((v27[23] & 0x80000000) != 0)
      {
        operator delete(*v27);
      }

      if ((CSIPacketAddress::isZeroIP(__p) & 1) != 0 || (CSIPacketAddress::isIPv4(__p) & 1) == 0)
      {
        if ((CSIPacketAddress::isZeroIP(__p) & 1) != 0 || !CSIPacketAddress::isIPv6(__p))
        {
          goto LABEL_38;
        }

        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      *(a1 + 612) = v18;
    }

    else
    {
      *(a1 + 792) = v23;
    }

LABEL_38:
    sub_100005978(&v22);
    goto LABEL_39;
  }

  if (CSIPacketAddress::isIPv4(v24))
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v10 = 0;
    if (!CSIPacketAddress::isIPv6(v24))
    {
      goto LABEL_39;
    }

    v11 = 2;
  }

  *(a1 + 612) = v11;
LABEL_39:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  return v10;
}

void sub_100775CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  sub_100005978(&a12);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100775D6C(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = *(a1 + 152);
    }
  }

  else
  {
    v3 = 0;
  }

  value = 0;
  (v2->__vftable[11].__on_zero_shared_weak)(&value);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = value;
  if (value)
  {
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v9 = *&buf[16];
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = __p;
      if (v9 < 0)
      {
        v6 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = "tryNextEPDGAddress";
      *&buf[12] = 2080;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: ePDG: %s", buf, 0x16u);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionarySetValue(*(a1 + 240), @"RemoteAddress", value);
  }

  sub_100005978(&value);
  return v4 != 0;
}

void sub_100775F3C(uint64_t result)
{
  if (*(result + 224) == 2 && *(result + 793) == 1)
  {
    *(result + 793) = 0;
    *(result + 424) = 1;
    if ((sub_10077009C(result, "Wan IP Acquired") & 1) == 0)
    {
      *(result + 592) = 80004;
      v2 = *(result + 616);
      sub_10076B24C(result, "Wan IP Acquired");
      v3 = *(result + 592);

      sub_100771370(result, "Wan IP Acquired", v2, v3);
    }
  }
}

uint64_t sub_100775FF4(uint64_t result, const void *a2)
{
  if (*(result + 224) == 2)
  {
    v2 = result;
    if (*(result + 792) == 1)
    {
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      *__p = 0u;
      v15 = 0;
      v4 = *(v2 + 72);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = __p;
        if (v15 < 0)
        {
          v5 = __p[0];
        }

        *buf = 136315394;
        *&buf[4] = "handleePDGResolved";
        *&buf[12] = 2080;
        *&buf[14] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: ePDG: %s", buf, 0x16u);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
      }

      *(v2 + 792) = 0;
      if (a2)
      {
        CFDictionarySetValue(*(v2 + 240), @"RemoteAddress", a2);
        result = sub_10077009C(v2, "ePDG resolved");
        if (result)
        {
          return result;
        }

        v6 = 80004;
        goto LABEL_25;
      }

      *(v2 + 592) = 80004;
      Value = CFDictionaryGetValue(*(v2 + 240), @"RemoteAddress");
      v8 = Value;
      if (Value)
      {
        v9 = CFGetTypeID(Value);
        if (v9 == CFStringGetTypeID())
        {
          v10 = v8;
        }

        else
        {
          v10 = 0;
        }

        v11 = *(v2 + 72);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        if (v10)
        {
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          *__p = *buf;
          v15 = *&buf[16];
          v12 = __p;
          if ((buf[23] & 0x80u) != 0)
          {
            v12 = *buf;
          }

          *v16 = 136315394;
          v17 = "handleePDGResolved";
          v18 = 2080;
          v19 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to resolve DNS name for ePDG %s", v16, 0x16u);
          if (SHIBYTE(v15) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_24;
        }
      }

      else
      {
        v11 = *(v2 + 72);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
LABEL_24:
          v6 = 80005;
LABEL_25:
          *(v2 + 592) = v6;
          v13 = *(v2 + 616);
          sub_10076B24C(v2, "ePDG resolved");
          return sub_100771370(v2, "ePDG resolved", v13, *(v2 + 592));
        }
      }

      *v16 = 136315394;
      v17 = "handleePDGResolved";
      v18 = 2080;
      v19 = "???";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to resolve DNS name for ePDG %s", v16, 0x16u);
      goto LABEL_24;
    }
  }

  return result;
}

void sub_1007762C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007762FC(uint64_t a1, uint64_t a2)
{
  sub_100356BE0(a1 + 32, v12);
  v4 = (*(**v12 + 80))(*v12, 1, 1, 0);
  if (*&v12[8])
  {
    sub_100004A34(*&v12[8]);
  }

  if ((v4 & 0x40000) != 0)
  {
    if ((*(*a1 + 384))(a1, 0))
    {
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 184);
        if (v8)
        {
          v9 = *(a1 + 224);
          v10 = v9 > 5;
          LODWORD(v8) = 0x2Cu >> v9;
          if (v10)
          {
            LOBYTE(v8) = 0;
          }
        }

        v11 = asStringBool(v8 & 1);
        *v12 = 136315394;
        *&v12[4] = "handleiWLanPolicyChanged";
        *&v12[12] = 2080;
        *&v12[14] = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N %s: We do not want to disconnect the Emergency context when iWLan policy changed, tunnel active: %s", v12, 0x16u);
      }
    }
  }

  else if ((v4 & ~a2) != 0)
  {
    if (*(a1 + 184))
    {
      v5 = *(a1 + 224);
      if (v5 <= 5 && ((1 << v5) & 0x2C) != 0)
      {
        v6 = *(a1 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 136315138;
          *&v12[4] = "handleiWLanPolicyChanged";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: iWLan policy changed to not allowed, treat it as network disconnected", v12, 0xCu);
          v5 = *(a1 + 224);
        }

        sub_1007731C8(a1, v5, 80009);
      }
    }
  }
}

void sub_100776504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077652C(uint64_t a1)
{
  if ((*(**(a1 + 168) + 64))(*(a1 + 168)))
  {
    v2 = 1;
    v3 = "config";
    goto LABEL_18;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  *v19 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v19);
  if (!v10)
  {
    v2 = 0;
    goto LABEL_10;
  }

  v2 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_10:
    std::mutex::unlock(v5);
    v11 = 0;
    v12 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v12 = 0;
LABEL_11:
  v3 = "unknown";
  if (v2)
  {
    (*(*a1 + 16))(v19, a1);
    v2 = (*(*v2 + 64))(v2, v19);
    if (*&v19[8])
    {
      sub_100004A34(*&v19[8]);
    }

    if (v2)
    {
      v3 = "mobile hotspot";
    }
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

LABEL_18:
  v13 = (*(**(a1 + 200) + 24))(*(a1 + 200), v2);
  v14 = *(a1 + 72);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (!v15)
    {
      return;
    }

    v16 = asStringBool(v2);
    *v19 = 136315650;
    *&v19[4] = "setDscp";
    *&v19[12] = 2080;
    *&v19[14] = v16;
    v20 = 2080;
    v21 = v3;
    v17 = "#I %s: VirtualInterface setDscpMappingCopy succeeded for value: %s (%s)";
  }

  else
  {
    if (!v15)
    {
      return;
    }

    v18 = asStringBool(v2);
    *v19 = 136315650;
    *&v19[4] = "setDscp";
    *&v19[12] = 2080;
    *&v19[14] = v18;
    v20 = 2080;
    v21 = v3;
    v17 = "#E %s: VirtualInterface setDscpMappingCopy failed for value: %s (%s)";
  }

  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, v19, 0x20u);
}

void sub_1007767E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

void sub_100776824(void *a1)
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
        v6 = *(v3 + 776);
        *(v3 + 776) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v7 = *(v3 + 72);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = sub_100772ED4(*(v3 + 224));
          v9 = 136315138;
          v10 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fEPDGResponseTimer fired, fStatus = %s", &v9, 0xCu);
        }

        if (*(v3 + 224) == 2)
        {
          sub_1007731C8(v3, 2, 70007);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10077695C(uint64_t result, uint64_t a2)
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

void sub_100776978(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_100776988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a3 + 8);
  v7 = *(a3 + 24);
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asString();
    if (v7)
    {
      v10 = "handOver ";
    }

    else
    {
      v10 = "";
    }

    *buf = 136315906;
    *&buf[4] = "activateDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v9;
    *&buf[22] = 2080;
    *&buf[24] = v10;
    *&buf[32] = 2080;
    v65 = asString();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: family=%s %sfor %s", buf, 0x2Au);
  }

  v11 = *(a1 + 224);
  if (v11 > 3)
  {
    if (v11 == 4)
    {
      v35 = *(a1 + 72);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "activateDataContext";
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s: Still in disconnecting", buf, 0xCu);
      }

      v33 = 4294967287;
      goto LABEL_100;
    }

    if (v11 != 5)
    {
LABEL_9:
      v12 = *(a1 + 616) | v4;
      *(a1 + 616) = v12;
      *(a1 + 608) = v12;
      v13 = *(a1 + 72);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_100772ED4(v11);
        v15 = asString();
        *buf = 136315650;
        *&buf[4] = "activateDataContext";
        *&buf[12] = 2080;
        *&buf[14] = v14;
        *&buf[22] = 2080;
        *&buf[24] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: (1) in %s fIPFamilyRequested changed to %s", buf, 0x20u);
      }

      if (v7)
      {
        v16 = *(a3 + 28);
        if (v16)
        {
          v17 = *(a1 + 616);
          v18 = v17 & 0xFFFFFFFE;
          if (v16)
          {
            v18 = *(a1 + 616);
          }

          if ((v16 & 2) != 0)
          {
            v19 = v18;
          }

          else
          {
            v19 = v18 & 0xFFFFFFFD;
          }

          if (v19 && v19 != v17)
          {
            v20 = *(a1 + 72);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = asString();
              v22 = asString();
              *buf = 136315650;
              *&buf[4] = "activateDataContext";
              *&buf[12] = 2080;
              *&buf[14] = v21;
              *&buf[22] = 2080;
              *&buf[24] = v22;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s: Adjusting requested family from %s to %s", buf, 0x20u);
              v20 = *(a1 + 72);
            }

            *(a1 + 616) = v19;
            *(a1 + 608) = v19;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v23 = sub_100772ED4(*(a1 + 224));
              v24 = asString();
              *buf = 136315650;
              *&buf[4] = "activateDataContext";
              *&buf[12] = 2080;
              *&buf[14] = v23;
              *&buf[22] = 2080;
              *&buf[24] = v24;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s: (2) in %s fIPFamilyRequested changed to %s", buf, 0x20u);
            }
          }
        }
      }

      PDPMetricInfo::clear((a1 + 440));
      if (*(a3 + 71) < 0)
      {
        v38 = *(a3 + 56);
        if (v38)
        {
          sub_100005F2C(buf, *(a3 + 48), v38);
          goto LABEL_47;
        }
      }

      else if (*(a3 + 71))
      {
        *buf = *(a3 + 48);
        *&buf[16] = *(a3 + 64);
        goto LABEL_47;
      }

      sub_10000501C(buf, v6);
LABEL_47:
      if (*(a1 + 471) < 0)
      {
        operator delete(*(a1 + 448));
      }

      *(a1 + 448) = *buf;
      *(a1 + 464) = *&buf[16];
      *(a1 + 600) = sub_100086B10(a1);
      if (v7)
      {
        sub_10022CF24(a1, 1);
      }

      else
      {
        v39 = a1 + 32;
        v40 = (*(*(a1 + 32) + 40))(a1 + 32);
        memset(buf, 0, 24);
        sub_10000501C(buf, v6);
        v62[0] = 0;
        v62[1] = 0;
        v63 = 0;
        sub_10000501C(v62, *(a3 + 16));
        v60[0] = 0;
        v60[1] = 0;
        v61 = 0;
        sub_1003567A4((a1 + 32), v60);
        if ((buf[23] & 0x80000000) != 0)
        {
          sub_100005F2C(__dst, *buf, *&buf[8]);
        }

        else
        {
          *__dst = *buf;
          v59 = *&buf[16];
        }

        if (SHIBYTE(v63) < 0)
        {
          sub_100005F2C(v56, v62[0], v62[1]);
        }

        else
        {
          *v56 = *v62;
          v57 = v63;
        }

        if (SHIBYTE(v61) < 0)
        {
          sub_100005F2C(__p, v60[0], v60[1]);
        }

        else
        {
          *__p = *v60;
          v55 = v61;
        }

        sub_10079E110(v40, __dst, v56, v4, __p, 1);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v57) < 0)
        {
          operator delete(v56[0]);
        }

        if (SHIBYTE(v59) < 0)
        {
          operator delete(__dst[0]);
        }

        if (SHIBYTE(v61) < 0)
        {
          operator delete(v60[0]);
        }

        if (SHIBYTE(v63) < 0)
        {
          operator delete(v62[0]);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        sub_10022CF24(a1, 1);
        if (capabilities::ct::supports5G(v41))
        {
          (*(*v39 + 440))(buf, a1 + 32);
          if (*buf)
          {
            (*(*v39 + 440))(v62, a1 + 32);
            v42 = (*(*v62[0] + 208))(v62[0]);
            if (v62[1])
            {
              sub_100004A34(v62[1]);
            }
          }

          else
          {
            v42 = 0;
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          if (v42)
          {
            v43 = *(a1 + 72);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Non-HO, need to allocate PDU sessionId before activating iwlan context", buf, 2u);
            }

            sub_100004AA0(buf, (a1 + 40));
            v44 = *&buf[8];
            if (*&buf[8])
            {
              atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
              sub_100004A34(v44);
              atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            operator new();
          }
        }
      }

      (*(*(a1 + 32) + 440))(buf, a1 + 32);
      v45 = *buf;
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v45)
      {
        (*(*(a1 + 32) + 440))(buf, a1 + 32);
        v46 = (*(**buf + 280))(*buf, 1, 1, 0);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }

      else
      {
        v46 = 3;
      }

      if (sub_10076D078(a1, v46, v7))
      {
        *(a1 + 796) = v7;
        sub_10022D3B4(a1, 1);
        if (sub_10077009C(a1, v6))
        {
          goto LABEL_93;
        }

        *(a1 + 592) = 80004;
        v33 = sub_1007775E4(a1, 80004);
        v50 = *(a1 + 72);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = *(a1 + 592);
          v52 = asString();
          *buf = 136315906;
          *&buf[4] = v6;
          *&buf[12] = 1024;
          *&buf[14] = v51;
          *&buf[18] = 2080;
          *&buf[20] = v52;
          *&buf[28] = 1024;
          *&buf[30] = v33;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I startIPSecConnection failed (%s): fPDPMetricInfo.iWLanError=%d, errorCode=%s (%d)", buf, 0x22u);
        }

        sub_10076B24C(a1, v6);
      }

      else
      {
        *(a1 + 592) = 80007;
        v33 = sub_1007775E4(a1, 80007);
        v47 = *(a1 + 72);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = *(a1 + 592);
          v49 = asString();
          *buf = 67109634;
          *&buf[4] = v48;
          *&buf[8] = 2080;
          *&buf[10] = v49;
          *&buf[18] = 1024;
          *&buf[20] = v33;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I TechDataContext::getSettings failed (2): fPDPMetricInfo.iWLanError=%d, errorCode=%s (%d)", buf, 0x18u);
        }

        sub_10076B24C(a1, "TechDataContext::getSettings failed");
      }

LABEL_100:
      v34 = 0xFFFFFFFFLL;
      return v34 | (v33 << 32);
    }
  }

  else
  {
    if (v11 == 2)
    {
LABEL_93:
      v34 = 0;
      v33 = 0;
      return v34 | (v33 << 32);
    }

    if (v11 != 3)
    {
      goto LABEL_9;
    }
  }

  v25 = *(a1 + 620) & v4;
  v26 = *(a1 + 72);
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (!v25)
  {
    if (v27)
    {
      v36 = asString();
      v37 = asString();
      *buf = 136315650;
      *&buf[4] = "activateDataContext";
      *&buf[12] = 2080;
      *&buf[14] = v36;
      *&buf[22] = 2080;
      *&buf[24] = v37;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: None of the requested ipFamily %s is in conneted %s", buf, 0x20u);
    }

    v33 = 4294967293;
    goto LABEL_100;
  }

  if (v27)
  {
    if (v25 == v4)
    {
      v28 = "";
    }

    else
    {
      v28 = "part of ";
    }

    v29 = asString();
    v30 = asString();
    *buf = 136315906;
    *&buf[4] = "activateDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v28;
    *&buf[22] = 2080;
    *&buf[24] = v29;
    *&buf[32] = 2080;
    v65 = v30;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: %sthe requested ipFamily %s is already connected %s", buf, 0x2Au);
    v26 = *(a1 + 72);
  }

  *(a1 + 616) |= v25;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v31 = sub_100772ED4(*(a1 + 224));
    v32 = asString();
    *buf = 136315650;
    *&buf[4] = "activateDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v31;
    *&buf[22] = 2080;
    *&buf[24] = v32;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: in %s fIPFamilyRequested changed to %s", buf, 0x20u);
  }

  v33 = 0;
  v34 = 1;
  return v34 | (v33 << 32);
}

void sub_1007774D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  sub_10000FF50(&a42);
  v45 = *(v43 - 136);
  if (v45)
  {
    sub_100004A34(v45);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007775E4(uint64_t a1, int a2)
{
  (*(**(a1 + 168) + 136))(&v11);
  if (v12)
  {
    v4 = v12;
    do
    {
      v5 = *(v4 + 7);
      if (v5 <= a2)
      {
        if (v5 >= a2)
        {
          sub_10006DCAC(&v11, v12);
          return 97;
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  sub_10006DCAC(&v11, v12);
  (*(**(a1 + 168) + 128))(&v11);
  if (v12)
  {
    v6 = v12;
    do
    {
      v7 = *(v6 + 7);
      if (v7 <= a2)
      {
        if (v7 >= a2)
        {
          sub_10006DCAC(&v11, v12);
          return 98;
        }

        ++v6;
      }

      v6 = *v6;
    }

    while (v6);
  }

  sub_10006DCAC(&v11, v12);
  sub_10022DBF0(a1, &v11);
  if (v12)
  {
    v8 = v12;
    do
    {
      v9 = *(v8 + 7);
      if (v9 <= a2)
      {
        if (v9 >= a2)
        {
          sub_10006DCAC(&v11, v12);
          return 100;
        }

        ++v8;
      }

      v8 = *v8;
    }

    while (v8);
  }

  sub_10006DCAC(&v11, v12);
  return 4294967293;
}

BOOL sub_100777794(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = a2;
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "deactivateDataContext";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    *&buf[22] = 2080;
    v21 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: for %s reason %s", buf, 0x20u);
  }

  if (v4 == 18)
  {
    if (*(a1 + 632))
    {
      v7 = *(a1 + 72);
      result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136315138;
      *&buf[4] = "deactivateDataContext";
      v9 = "#I %s: we are not using cell, no need to drop due to no Data";
      goto LABEL_20;
    }
  }

  else if (v4 == 19 && !*(a1 + 632))
  {
    v7 = *(a1 + 72);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "deactivateDataContext";
    v9 = "#I %s: we are using cell, no need to drop due to no WiFI";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
    return 0;
  }

  if (!*(a1 + 616))
  {
    v7 = *(a1 + 72);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "deactivateDataContext";
    v9 = "#I %s: is already down";
    goto LABEL_20;
  }

  *(a1 + 616) = 0;
  v10 = *(a1 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "deactivateDataContext";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: fIPFamilyRequested reset", buf, 0xCu);
  }

  v11 = asString();
  sub_100016890((a1 + 472), v11);
  sub_100016890((a1 + 496), a3);
  v12 = *(a1 + 224);
  if (v12 > 5)
  {
    goto LABEL_23;
  }

  if (((1 << v12) & 0x13) == 0)
  {
    if (((1 << v12) & 0x28) != 0)
    {
      sub_10076A498(a1, 4);
      v12 = *(a1 + 224);
    }

LABEL_23:
    *(a1 + 592) = 1000;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 0x40000000;
    v15[2] = sub_100777B80;
    v15[3] = &unk_101E7A5B8;
    v15[4] = a1;
    v16 = v4;
    v17 = v12;
    v18 = 0;
    v19 = 0;
    sub_100004AA0(&v18, (a1 + 40));
    v14 = *(a1 + 56);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_100782608;
    v21 = &unk_101E7C248;
    v23 = v18;
    v24 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v15;
    dispatch_async(v14, buf);
    if (v24)
    {
      sub_100004A34(v24);
    }

    if (v19)
    {
      sub_100004A34(v19);
    }

    sub_1000869A8(a1);
    return 1;
  }

  v13 = *(a1 + 72);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "deactivateDataContext";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: IKE Connection has stopped already", buf, 0xCu);
  }

  return 1;
}

void sub_100777B74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100777B80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = asString();
  sub_10076B24C(v2, v3);
  v4 = *(a1 + 44);
  if (v4 == 4)
  {

    sub_100777D40(v2);
  }

  else if (v4 == 2)
  {

    sub_100777C0C(v2);
  }
}

double sub_100777C0C(uint64_t a1)
{
  if (!*(a1 + 224))
  {
    v2 = *(a1 + 72);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v4) = 136315138;
      *(&v4 + 4) = "handleDataContextIPAborted";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: Done with this context", &v4, 0xCu);
    }

    sub_100356BE0(a1 + 32, &v4);
    (*(*v4 + 320))(v4, 1);
    if (*(&v4 + 1))
    {
      sub_100004A34(*(&v4 + 1));
    }

    sub_100009970(a1 + 688, *(a1 + 696));
    *(a1 + 688) = a1 + 696;
    result = 0.0;
    *(a1 + 696) = 0u;
  }

  return result;
}

void sub_100777D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_100777D40(uint64_t a1)
{
  if (*(a1 + 620))
  {
    v2 = a1 + 32;
    sub_100356BE0(a1 + 32, buf);
    v3 = *buf;
    v4 = *(a1 + 620);
    (*(*a1 + 16))(&v14, a1);
    (*(*v3 + 56))(v3, v4, 1, &v14);
    if (v15)
    {
      sub_100004A34(v15);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    *(a1 + 620) = 0;
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = asString();
      *buf = 136315394;
      *&buf[4] = "handleDataContextIPDeactivated";
      *&buf[12] = 2080;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: Done with this context for %s", buf, 0x16u);
    }

    sub_100008764((a1 + 720));
    if (*(a1 + 663) < 0)
    {
      **(a1 + 640) = 0;
      *(a1 + 648) = 0;
    }

    else
    {
      *(a1 + 640) = 0;
      *(a1 + 663) = 0;
    }

    sub_100009970(a1 + 688, *(a1 + 696));
    *(a1 + 688) = a1 + 696;
    *(a1 + 696) = 0u;
    (*(*(a1 + 32) + 632))(a1 + 32);
    v9 = *(a1 + 160);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = *(a1 + 152);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v12 = *(*v11 - 336);
    v13 = (*(*v2 + 472))(a1 + 32);
    (*(*&v11[v12] + 184))(&v11[v12], v13);
    if (v10)
    {
      sub_100004A34(v10);
    }

    sub_100009970(a1 + 688, *(a1 + 696));
    *(a1 + 688) = a1 + 696;
    result = 0.0;
    *(a1 + 696) = 0u;
  }

  else
  {
    v7 = *(a1 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "handleDataContextIPDeactivated";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Context is already deactivated", buf, 0xCu);
    }
  }

  return result;
}

void sub_100778040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1007780AC(uint64_t a1, int a2, CFTypeRef cf)
{
  if (a2 != 5376)
  {
    return;
  }

  if (!cf)
  {
    v9 = *(a1 + 72);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = "checkNetworkUnreachable";
    v10 = "#E %s: notificationData is empty in kNEIPSecNotifyIKESocketError message";
LABEL_13:
    v12 = v9;
    v13 = 12;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v10, buf, v13);
    return;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFDictionaryGetTypeID())
  {
    v11 = *(a1 + 72);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315394;
    *&buf[4] = "checkNetworkUnreachable";
    *&buf[12] = 2048;
    *&buf[14] = CFGetTypeID(cf);
    v10 = "#E %s: unexpected CFTypeRef in notificationData: %lu";
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(cf, @"IKESocketError");
  if (!Value)
  {
    v9 = *(a1 + 72);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = "checkNetworkUnreachable";
    v10 = "#E %s: empty value for key kNEIPSecIKESocketError in kNEIPSecNotifyIKESocketError message";
    goto LABEL_13;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 == CFStringGetTypeID())
  {
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    v15 = 0;
    v14 = *buf;
    return;
  }

  v11 = *(a1 + 72);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "checkNetworkUnreachable";
    *&buf[12] = 2048;
    *&buf[14] = CFGetTypeID(v7);
    v10 = "#E %s: unexpected CFTypeRef in socketError: %lu";
LABEL_16:
    v12 = v11;
    v13 = 22;
    goto LABEL_17;
  }
}

void sub_100778584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100778630(void *a1)
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
          v9 = "checkNetworkUnreachable_block_invoke";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: fDPDBackoffTimer timer fired", &v8, 0xCu);
        }

        v7 = *(v3 + 760);
        *(v3 + 760) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100778734(uint64_t a1, int a2, unsigned int a3, const void *a4)
{
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "ikeCallBackHandler";
    *&buf[12] = 1024;
    *&buf[14] = a3;
    *&buf[18] = 1024;
    *&buf[20] = a2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: notification type=0x%04x ikeChildId=0x%04x", buf, 0x18u);
  }

  if (a4)
  {
    v9 = *(a1 + 72);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "ikeCallBackHandler";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: notification data is:", buf, 0xCu);
    }

    v50 = "ikeCallBackHandler";
    *buf = off_101E7C288;
    *&buf[8] = a1;
    *&buf[16] = &v50;
    v53 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
  }

  if (!*(a1 + 184))
  {
    v14 = *(a1 + 72);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = "ikeCallBackHandler";
    v15 = "#I %s: fIKESession is empty, ignoring the notification";
    v16 = v14;
    v17 = 12;
    goto LABEL_39;
  }

  sub_1007780AC(a1, a3, a4);
  if (a2)
  {
    v10 = *(a1 + 192);
    v11 = *(a1 + 72);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10 == a2)
    {
      if (v12)
      {
        *buf = 136315650;
        *&buf[4] = "ikeCallBackHandler";
        *&buf[12] = 2080;
        *&buf[14] = "FirstChild";
        *&buf[22] = 1024;
        LODWORD(v53) = a3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: TechDataContext::TechDataContextCallback: for %s, type=0x%04x", buf, 0x1Cu);
      }

      if (a3 == 4353)
      {
        v31 = sub_1007798F8(a4);
        sub_1007731C8(a1, *(a1 + 224), v31);
      }

      else if (a3 == 4355)
      {
        if (*(a1 + 224) != 4)
        {
          v13 = *(a1 + 712);
          if ((v13 & 4) == 0)
          {
            *(a1 + 712) = v13 | 4;
            sub_100778F7C(a1);
          }
        }
      }

      else if ((a3 & 0xF000) == 0x1000 && (a3 & 0xF00) == 0x200)
      {
        if (a4)
        {
          TypeID = CFDictionaryGetTypeID();
          if (CFGetTypeID(a4) == TypeID)
          {
            v33 = CFGetTypeID(a4);
            if (v33 != CFDictionaryGetTypeID())
            {
              a4 = 0;
            }

            if (CFDictionaryContainsKey(a4, @"TrafficSelectorsLocal"))
            {
              *buf = a4;
              sub_1002A2218((a1 + 432), buf);
              v34 = *(a1 + 712);
              if ((v34 & 8) == 0)
              {
                *(a1 + 712) = v34 | 8;
                sub_100778F7C(a1);
              }
            }
          }
        }
      }

      return;
    }

    if (!v12)
    {
      return;
    }

    *buf = 136315394;
    *&buf[4] = "ikeCallBackHandler";
    *&buf[12] = 1024;
    *&buf[14] = a3;
    v15 = "#I %s: TechDataContext::TechDataContextCallback: Can't find the specific ChildSA, type=0x%04x";
    v16 = v11;
    v17 = 18;
LABEL_39:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    return;
  }

  if ((a3 & 0xF000) != 0x1000)
  {
    return;
  }

  v18 = (a3 >> 8) & 0xF;
  if (v18 > 1)
  {
    switch(v18)
    {
      case 2u:
        if (a4)
        {
          v37 = CFArrayGetTypeID();
          if (CFGetTypeID(a4) == v37)
          {
            v38 = CFGetTypeID(a4);
            if (v38 == CFArrayGetTypeID())
            {
              v39 = a4;
            }

            else
            {
              v39 = 0;
            }

            sub_100779EDC(a1, v39);
          }
        }

        break;
      case 7u:
        v40 = *(a1 + 72);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "ikeCallBackHandler";
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s: Short DPDs notification received", buf, 0xCu);
        }

        (*(*a1 + 672))(a1);
        break;
      case 8u:
        if (a4)
        {
          v19 = CFDictionaryGetTypeID();
          if (CFGetTypeID(a4) == v19)
          {
            v20 = CFGetTypeID(a4);
            v21 = v20 == CFDictionaryGetTypeID() ? a4 : 0;
            Value = CFDictionaryGetValue(v21, @"N1ModeInformation");
            v23 = Value;
            if (Value)
            {
              v24 = CFGetTypeID(Value);
              if (v24 == CFDataGetTypeID())
              {
                v25 = *(a1 + 72);
                v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
                if (v26)
                {
                  Length = CFDataGetLength(v23);
                  *buf = 134217984;
                  *&buf[4] = Length;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I received snssaiInfo with size %ld", buf, 0xCu);
                }

                if (capabilities::ct::supports5G(v26))
                {
                  v29 = *(a1 + 32);
                  v28 = a1 + 32;
                  (*(v29 + 440))(buf, v28);
                  if (*buf)
                  {
                    (*(*v28 + 440))(&v50, v28);
                    if ((*(*v50 + 208))(v50))
                    {
                      v30 = CFDataGetLength(v23) < 10;
                    }

                    else
                    {
                      v30 = 0;
                    }

                    if (v51)
                    {
                      sub_100004A34(v51);
                    }
                  }

                  else
                  {
                    v30 = 0;
                  }

                  if (*&buf[8])
                  {
                    sub_100004A34(*&buf[8]);
                  }

                  if (v30)
                  {
                    sub_100356BE0(v28, buf);
                    v47 = *buf;
                    BytePtr = CFDataGetBytePtr(v23);
                    v49 = CFDataGetLength(v23);
                    (*(*v47 + 392))(v47, BytePtr, v49);
                    if (*&buf[8])
                    {
                      sub_100004A34(*&buf[8]);
                    }
                  }
                }
              }
            }
          }
        }

        break;
    }

    return;
  }

  if (v18)
  {
    if (v18 != 1)
    {
      return;
    }

    v35 = *(a1 + 224);
    if (a3 == 1)
    {
      v45 = sub_1007798F8(a4);
      sub_1007731C8(a1, v35, v45);
      return;
    }

    if (a3 != 3)
    {
LABEL_59:
      sub_10076A498(a1, a3);
      return;
    }

    if (v35 == 4)
    {
      return;
    }

    if (v35 == 5)
    {
      v36 = *(a1 + 72);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "ikeCallBackHandler";
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s: Back to connected from MOBIKE handover.", buf, 0xCu);
      }

      goto LABEL_59;
    }

    v46 = *(a1 + 712);
    if ((v46 & 2) == 0)
    {
      *(a1 + 712) = v46 | 2;
      sub_100778F7C(a1);
    }
  }

  else
  {
    v41 = *(a1 + 72);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "ikeCallBackHandler";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s: IPSec helper is gone", buf, 0xCu);
    }

    v42 = *(a1 + 224);
    v43 = sub_1007798F8(a4);
    *(a1 + 592) = v43;
    if (v42 == 5 || v42 == 3)
    {
      sub_1007799A0(a1, v43);
    }

    else if (v42 == 2)
    {
      v44 = *(a1 + 616);
      sub_10076B24C(a1, "terminate while connecting");
      sub_100771370(a1, "terminate while connecting", v44, *(a1 + 592));
    }
  }
}

void sub_100778F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100778F7C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "checkConnectedConditions";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  if ((~*(a1 + 712) & 0xFLL) != 0)
  {
    return;
  }

  v3 = *(a1 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(*(a1 + 32) + 40))();
    *buf = 136315394;
    *&buf[4] = "checkConnectedConditions";
    *&buf[12] = 1024;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: All Conditions met, install ChildSA Policies, and configure pdp_ip%d", buf, 0x12u);
  }

  v5 = sub_10077D918(a1);
  v6 = *(a1 + 72);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 192);
      *buf = 136315394;
      *&buf[4] = "checkConnectedConditions";
      *&buf[12] = 1024;
      *&buf[14] = v8;
      v9 = "#I %s: installFirstChildSAPolicies for ikeChildId=0x%04x ok";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v9, buf, 0x12u);
    }
  }

  else if (v7)
  {
    v10 = *(a1 + 192);
    *buf = 136315394;
    *&buf[4] = "checkConnectedConditions";
    *&buf[12] = 1024;
    *&buf[14] = v10;
    v9 = "#I %s: installFirstChildSAPolicies for ikeChildId=0x%04x failed";
    goto LABEL_11;
  }

  v11 = *(a1 + 776);
  *(a1 + 776) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  sub_10076A498(a1, 3);
  *(a1 + 628) = 0;
  v12 = *(a1 + 616);
  *(a1 + 624) = v12;
  v13 = *(a1 + 72);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "checkConnectedConditions";
    *&buf[12] = 1024;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: fIPConfigRequestedFamily = %d", buf, 0x12u);
    v12 = *(a1 + 616);
  }

  if (v12)
  {
    sub_100356BE0(a1 + 32, buf);
    v14 = *buf;
    (*(*a1 + 16))(&v52, a1);
    v15 = (*(*v14 + 32))(v14, 1, 1, &v52, 0, 1);
    if (v53)
    {
      sub_100004A34(v53);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v16 = *(a1 + 616);
    if (v16 != 1 || v15)
    {
      if (v15)
      {
LABEL_54:
        v27 = *(a1 + 72);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = asString();
          *buf = 136315394;
          *&buf[4] = "checkConnectedConditions";
          *&buf[12] = 2080;
          *&buf[14] = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s: Error bringing interface online for %s", buf, 0x16u);
          v16 = *(a1 + 616);
        }

        *(a1 + 592) = 80003;
        sub_10076B24C(a1, "IP online");
        sub_100771370(a1, "IP online", v16, *(a1 + 592));
        return;
      }
    }

    else
    {
      v17 = *(a1 + 72);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "checkConnectedConditions";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: create IPv4 fIPConfigTimer", buf, 0xCu);
      }

      sub_100004AA0(buf, (a1 + 40));
      v19 = *buf;
      v18 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
      }

      Registry::getTimerService(buf, *(a1 + 80));
      v20 = *buf;
      sub_10000501C(v49, "IPv4 Configuration timer");
      v21 = *(a1 + 56);
      v48 = v21;
      if (v21)
      {
        dispatch_retain(v21);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1174405120;
      aBlock[2] = sub_10077E784;
      aBlock[3] = &unk_101E7A688;
      aBlock[4] = a1;
      aBlock[5] = v19;
      v46 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = _Block_copy(aBlock);
      sub_100D23364(v20, v49, 0, 10000000, &v48, &v47);
      v22 = v51;
      v51 = 0;
      v23 = *(a1 + 752);
      *(a1 + 752) = v22;
      if (v23)
      {
        (*(*v23 + 8))(v23);
        v24 = v51;
        v51 = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }
      }

      if (v47)
      {
        _Block_release(v47);
      }

      if (v48)
      {
        dispatch_release(v48);
      }

      if (v50 < 0)
      {
        operator delete(v49[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v46)
      {
        std::__shared_weak_count::__release_weak(v46);
      }

      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }
    }
  }

  if ((*(a1 + 616) & 2) == 0)
  {
    return;
  }

  sub_100356BE0(a1 + 32, buf);
  v25 = *buf;
  (*(*a1 + 16))(&v43, a1);
  v26 = (*(*v25 + 32))(v25, 2, 1, &v43, 0, 1);
  if (v44)
  {
    sub_100004A34(v44);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v26)
  {
    v16 = *(a1 + 616);
    goto LABEL_54;
  }

  v29 = *(a1 + 72);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "checkConnectedConditions";
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s: create IPv4v6 fIPConfigTimer", buf, 0xCu);
  }

  sub_100004AA0(buf, (a1 + 40));
  v31 = *buf;
  v30 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v30);
  }

  Registry::getTimerService(buf, *(a1 + 80));
  v32 = *buf;
  sub_10000501C(__p, "IPv4v6 Configuration timer");
  v33 = *(a1 + 56);
  object = v33;
  if (v33)
  {
    dispatch_retain(v33);
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 1174405120;
  v37[2] = sub_10077E8A4;
  v37[3] = &unk_101E7A6B8;
  v37[4] = a1;
  v37[5] = v31;
  v38 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = _Block_copy(v37);
  sub_100D23364(v32, __p, 0, 10000000, &object, &v39);
  v34 = v51;
  v51 = 0;
  v35 = *(a1 + 752);
  *(a1 + 752) = v34;
  if (v35)
  {
    (*(*v35 + 8))(v35);
    v36 = v51;
    v51 = 0;
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }
  }

  if (v39)
  {
    _Block_release(v39);
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