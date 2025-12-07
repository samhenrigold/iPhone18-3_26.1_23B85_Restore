IOSObjectArray *sub_1001CABDC(id a1, uint64_t a2)
{
  v2 = a1;
  if (atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire))
  {
    if (!a1)
    {
LABEL_4:

      return +[JavaNetInetAddress loopbackAddresses]_0(a1, a2);
    }
  }

  else
  {
    a1 = sub_1001CC9CC();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  a1 = [v2 isEmpty];
  if (a1)
  {
    goto LABEL_4;
  }

  v4 = sub_1001CAEB8(v2, a2);
  if (v4)
  {
    v6 = sub_1001CADEC(v2, v4);
    if (!v6)
    {
      v15 = JreStrcat("$$", v7, v8, v9, v10, v11, v12, v13, @"Deprecated IPv4 address format: ");
      v16 = new_JavaNetUnknownHostException_initWithNSString_(v15);
      objc_exception_throw(v16);
    }

    v17 = v6;
    return [IOSObjectArray arrayWithObjects:&v17 count:1 type:JavaNetInetAddress_class_(v6, v7)];
  }

  else
  {
    v14 = sub_1001CB304(v2, v5);
    if (!v14)
    {
      JreThrowNullPointerException();
    }

    return [v14 clone];
  }
}

JavaNetInet4Address *sub_1001CAD4C(_DWORD *a1, void *a2)
{
  if (atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  sub_1001CC9CC();
  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_3:
  v4 = a1[2];
  if (v4 == 16)
  {
    v5 = new_JavaNetInet6Address_initWithByteArray_withNSString_withInt_(a1, a2, 0);
  }

  else
  {
    if (v4 != 4)
    {
      sub_1001CBD5C(a1);
    }

    v5 = new_JavaNetInet4Address_initWithByteArray_withNSString_(a1, a2);
  }

  return v5;
}

id sub_1001CADEC(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a2;
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  if ([a1 indexOf:58] != -1)
  {
    return a2;
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100184238();
  }

  v5 = LibcoreIoLibcore_os_;
  if (!LibcoreIoLibcore_os_)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  return [v5 inet_ptonWithInt:2 withNSString:a1];
}

uint64_t sub_1001CAEB8(void *a1, uint64_t a2)
{
  v2 = a1;
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ([v2 hasPrefix:@"["] && objc_msgSend(v2, "hasSuffix:", @"]") && objc_msgSend(v2, "indexOf:", 58) != -1)
  {
    v2 = [v2 substring:1 endIndex:{objc_msgSend(v2, "length") - 1}];
  }

  v3 = new_LibcoreIoStructAddrinfo_init();
  v3->ai_flags_ = 4;
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  v4 = [LibcoreIoLibcore_os_ getaddrinfoWithNSString:v2 withLibcoreIoStructAddrinfo:v3];
  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = v4[2];
  if (v6 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 0);
  }

  return *(v5 + 3);
}

IOSClass *JavaNetInetAddress_getByNameWithNSString_(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  v3 = sub_1001CABDC(a1, a2);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  size = v3->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  return v4->elementType_;
}

JavaNetInet4Address *sub_1001CB184(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  ThreadPolicy = DalvikSystemBlockGuard_getThreadPolicy();
  if (!ThreadPolicy)
  {
    JreThrowNullPointerException();
  }

  [ThreadPolicy onNetwork];
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_ || (v4 = [LibcoreIoLibcore_os_ getnameinfoWithJavaNetInetAddress:a1 withInt:4], !a1) || (v5 = v4, (v6 = *(a1 + 8)) == 0))
  {
    JreThrowNullPointerException();
  }

  return sub_1001CAD4C([v6 clone], v5);
}

uint64_t sub_1001CB304(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  ThreadPolicy = DalvikSystemBlockGuard_getThreadPolicy();
  if (!ThreadPolicy || ([ThreadPolicy onNetwork], !qword_100554DE0))
  {
    JreThrowNullPointerException();
  }

  v4 = [qword_100554DE0 getWithNSString:a1];
  if (v4)
  {
    v6 = v4;
    v7 = JavaNetInetAddress_class_(v4, v5);
    if (![IOSClass_arrayType(v7 1u)])
    {
      v14 = objc_opt_class();
      v15 = sub_1000B60C8(v6, v14);
      v16 = new_JavaNetUnknownHostException_initWithNSString_(v15);
      objc_exception_throw(v16);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  else
  {
    v8 = new_LibcoreIoStructAddrinfo_init();
    v8->ai_flags_ = 1024;
    v8->ai_family_ = 0;
    v8->ai_socktype_ = 1;
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_)
    {
      JreThrowNullPointerException();
    }

    v9 = [LibcoreIoLibcore_os_ getaddrinfoWithNSString:a1 withLibcoreIoStructAddrinfo:v8];
    v6 = v9;
    if (!v9)
    {
      JreThrowNullPointerException();
    }

    v10 = (v9 + 24);
    v11 = &v9[8 * *(v9 + 2) + 24];
    while (v10 < v11)
    {
      v12 = *v10;
      if (!*v10)
      {
        JreThrowNullPointerException();
      }

      ++v10;
      JreStrongAssign((v12 + 16), a1);
    }

    [qword_100554DE0 putWithNSString:a1 withJavaNetInetAddressArray:v6];
  }

  return v6;
}

uint64_t JavaNetInetAddress_isNumericWithNSString_(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  result = sub_1001CAEB8(a1, a2);
  if (result)
  {
    return sub_1001CADEC(a1, result) != 0;
  }

  return result;
}

id JavaNetInetAddress_parseNumericAddressWithNSString_(void *a1, uint64_t a2)
{
  if (atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire))
  {
    if (!a1)
    {
LABEL_4:
      if ((atomic_load_explicit(JavaNetInet6Address__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1001CC9D8();
      }

      return JavaNetInet6Address_LOOPBACK_;
    }
  }

  else
  {
    sub_1001CC9CC();
    if (!a1)
    {
      goto LABEL_4;
    }
  }

  if ([a1 isEmpty])
  {
    goto LABEL_4;
  }

  v5 = sub_1001CAEB8(a1, v3);
  result = sub_1001CADEC(a1, v5);
  if (!result)
  {
    v13 = JreStrcat("$$", v6, v7, v8, v9, v10, v11, v12, @"Not a numeric address: ");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  return result;
}

uint64_t sub_1001CBA70(uint64_t a1, JavaNetInet6Address *a2, uint64_t a3)
{
  v3 = a3;
  v6 = LibcoreIoIoBridge_socketWithBoolean_(1);
  v7 = v6;
  if (a2)
  {
    LibcoreIoIoBridge_bindWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_(v6, a2, 0);
  }

  LibcoreIoIoBridge_connectWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_withInt_(v7, a1, 7, v3);
  LibcoreIoIoBridge_closeSocketWithJavaIoFileDescriptor_(v7);
  return 1;
}

JavaNetInet4Address *JavaNetInetAddress_getByAddressWithByteArray_(_DWORD *a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  return JavaNetInetAddress_getByAddressWithNSString_withByteArray_withInt_(0, a1, 0);
}

JavaNetInet4Address *JavaNetInetAddress_getByAddressWithNSString_withByteArray_(void *a1, _DWORD *a2)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  return JavaNetInetAddress_getByAddressWithNSString_withByteArray_withInt_(a1, a2, 0);
}

JavaNetInet4Address *JavaNetInetAddress_getByAddressWithNSString_withByteArray_withInt_(void *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a3;
  if (atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire))
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_14:
    v11 = new_JavaNetUnknownHostException_initWithNSString_(@"ipAddress == null");
    objc_exception_throw(v11);
  }

  sub_1001CC9CC();
  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_3:
  v6 = a2[2];
  if (v6 != 16)
  {
    if (v6 != 4)
    {
      sub_1001CBD5C(a2);
    }

    v7 = [a2 clone];
    goto LABEL_8;
  }

  if (sub_1001CBDC8(a2, a2))
  {
    v7 = sub_1001CBEE8(a2, v8);
LABEL_8:
    v9 = new_JavaNetInet4Address_initWithByteArray_withNSString_(v7, a1);
    goto LABEL_10;
  }

  v9 = new_JavaNetInet6Address_initWithByteArray_withNSString_withInt_([a2 clone], a1, v3);
LABEL_10:

  return v9;
}

void sub_1001CBD5C(uint64_t a1)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  JavaUtilArrays_toStringWithByteArray_(a1);
  v9 = JreStrcat("$$", v2, v3, v4, v5, v6, v7, v8, @"Address is neither 4 or 16 bytes: ");
  v10 = new_JavaNetUnknownHostException_initWithNSString_(v9);
  objc_exception_throw(v10);
}

BOOL sub_1001CBDC8(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      return 0;
    }
  }

  else
  {
    sub_1001CC9CC();
    if (!a1)
    {
      return 0;
    }
  }

  if (*(a1 + 8) == 16)
  {
    v3 = 0;
    for (i = a1; ; ++i)
    {
      v5 = *(a1 + 8);
      if (v3 >= v5)
      {
        IOSArray_throwOutOfBoundsWithMsg(v5, v3);
      }

      if (*(i + 12))
      {
        break;
      }

      if (++v3 == 10)
      {
        v6 = *(a1 + 8);
        if (v6 <= 10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v6, 10);
        }

        if (*(a1 + 22) == 255)
        {
          v8 = *(a1 + 8);
          if (v8 <= 11)
          {
            IOSArray_throwOutOfBoundsWithMsg(v8, 11);
          }

          return *(a1 + 23) == 255;
        }

        return 0;
      }
    }
  }

  return 0;
}

IOSByteArray *sub_1001CBEE8(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  v3 = [IOSByteArray arrayWithLength:4];
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  for (i = 0; i != 4; ++i)
  {
    v6 = *(a1 + 8);
    if (i + 12 >= v6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, (i + 12));
    }

    size = v4->super.size_;
    if (i >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, i);
    }

    *(&v4->super.size_ + i + 4) = *(a1 + 24 + i);
  }

  return v4;
}

JavaNetInetAddress *new_JavaNetInetAddress_initWithInt_withByteArray_withNSString_(int a1, void *a2, void *a3)
{
  v6 = [JavaNetInetAddress alloc];
  v6->family_ = a1;
  JreStrongAssign(&v6->ipaddress_, a2);
  JreStrongAssign(&v6->hostName_, a3);
  return v6;
}

uint64_t JavaNetInetAddress_getLocalHost(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100184238();
  }

  if (!LibcoreIoLibcore_os_ || (v2 = [LibcoreIoLibcore_os_ uname]) == 0)
  {
    JreThrowNullPointerException();
  }

  v4 = sub_1001CB304(v2[2], v3);
  v5 = v4;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v6 = *(v4 + 8);
  if (v6 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 0);
  }

  return *(v5 + 24);
}

void sub_1001CC4B8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v4 = sub_1001CB304(@"127.0.0.1", v3);
    if (qword_100554DE0)
    {
      [qword_100554DE0 putWithNSString:v2 withJavaNetInetAddressArray:v4];
      if (v4)
      {
        v5 = *(v4 + 8);
        if (v5 > 0)
        {
          objc_end_catch();
          JUMPOUT(0x1001CC47CLL);
        }

        IOSArray_throwOutOfBoundsWithMsg(v5, 0);
      }
    }

    JreThrowNullPointerException();
  }

  _Unwind_Resume(exception_object);
}

void sub_1001CC564()
{
  objc_end_catch();
  objc_end_catch();
  JUMPOUT(0x1001CC570);
}

id JavaNetInetAddress_clearDnsCache(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  v2 = qword_100554DE0;
  if (!qword_100554DE0)
  {
    JreThrowNullPointerException();
  }

  return [v2 clear];
}

uint64_t JavaNetInetAddress_getLoopbackAddress(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  if ((atomic_load_explicit(JavaNetInet6Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9D8();
  }

  return JavaNetInet6Address_LOOPBACK_;
}

uint64_t JavaNetInetAddress_class_(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  if (qword_100554DF8 != -1)
  {
    sub_1001CC9E4();
  }

  return qword_100554DF0;
}

id sub_1001CC790(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6, void *a7)
{
  JreStrongAssign((a1 + 104), a2);
  JreStrongAssign((a1 + 112), a3);
  JreStrongAssign((a1 + 120), a4);
  *(a1 + 128) = a5;
  JreStrongAssign((a1 + 136), a6);
  JreStrongAssign((a1 + 144), a7);

  return JavaLangThread_init(a1);
}

JavaNioChannelsCancelledKeyException *new_JavaNioChannelsCancelledKeyException_init()
{
  v0 = [JavaNioChannelsCancelledKeyException alloc];
  JavaLangIllegalStateException_init(v0, v1);
  return v0;
}

uint64_t JavaLangRefReferenceQueue_addWithJavaLangRefReference_(unint64_t *a1)
{
  if ((atomic_load_explicit(JavaLangRefReferenceQueue__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CD108();
  }

  v2 = JavaLangRefReferenceQueue_class_();
  objc_sync_enter(v2);
  if (JavaLangRefReferenceQueue_unenqueued_)
  {
    v3 = atomic_load((JavaLangRefReferenceQueue_unenqueued_ + 32));
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    v4 = JavaLangRefReferenceQueue_unenqueued_;
    v5 = atomic_load(a1 + 4);
    JreVolatileStrongAssign((v4 + 32), v5);
    JreVolatileStrongAssign(a1 + 4, v3);
  }

  else
  {
    JreStrongAssign(&JavaLangRefReferenceQueue_unenqueued_, a1);
  }

  [JavaLangRefReferenceQueue_class_() notifyAll];

  return objc_sync_exit(v2);
}

JavaLangRefReferenceQueue *new_JavaLangRefReferenceQueue_init()
{
  v0 = [JavaLangRefReferenceQueue alloc];
  v1 = new_JavaLangRefWeakReference_initWithId_withJavaLangRefReferenceQueue_(0, 0);
  JreStrongAssignAndConsume(&v0->SENTINEL_, v1);
  return v0;
}

uint64_t JavaLangRefReferenceQueue_class_()
{
  if ((atomic_load_explicit(JavaLangRefReferenceQueue__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CD108();
  }

  if (qword_100554E08 != -1)
  {
    sub_1001CD114();
  }

  return qword_100554E00;
}

JavaUtilCurrency *JavaUtilCurrency_getInstanceWithNSString_(void *a1)
{
  if ((atomic_load_explicit(&JavaUtilCurrency__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CD69C();
  }

  v2 = qword_100554E10;
  objc_sync_enter(qword_100554E10);
  if (!qword_100554E10)
  {
    JreThrowNullPointerException();
  }

  v3 = [qword_100554E10 getWithId:a1];
  if (!v3)
  {
    v4 = [JavaUtilCurrency alloc];
    JreStrongAssign(&v4->currencyCode_, a1);
    v3 = v4;
    [qword_100554E10 putWithId:a1 withId:v3];
  }

  objc_sync_exit(v2);
  return v3;
}

JavaUtilCurrency *JavaUtilCurrency_getInstanceWithJavaUtilLocale_(void *a1)
{
  if ((atomic_load_explicit(&JavaUtilCurrency__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CD69C();
  }

  v2 = qword_100554E18;
  objc_sync_enter(qword_100554E18);
  if (!qword_100554E18)
  {
    JreThrowNullPointerException();
  }

  InstanceWithNSString = [qword_100554E18 getWithId:a1];
  if (!InstanceWithNSString)
  {
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    v4 = [a1 getCountry];
    v5 = [a1 getVariant];
    v6 = v5;
    if (!v5)
    {
      JreThrowNullPointerException();
    }

    if (([v5 isEmpty] & 1) == 0 && ((objc_msgSend(v6, "isEqual:", @"EURO") & 1) != 0 || (objc_msgSend(v6, "isEqual:", @"HK") & 1) != 0 || objc_msgSend(v6, "isEqual:", @"PREEURO")))
    {
      JreStrcat("$C$", v7, v8, v9, v10, v11, v12, v13, v4);
    }

    CurrencyCodeWithNSString = LibcoreIcuICU_getCurrencyCodeWithNSString_([a1 description]);
    v22 = CurrencyCodeWithNSString;
    if (!CurrencyCodeWithNSString)
    {
      v24 = JreStrcat("$@", v15, v16, v17, v18, v19, v20, v21, @"Unsupported ISO 3166 country: ");
      v25 = new_JavaLangIllegalArgumentException_initWithNSString_(v24);
      objc_exception_throw(v25);
    }

    if ([CurrencyCodeWithNSString isEqual:@"XXX"])
    {
      InstanceWithNSString = 0;
    }

    else
    {
      InstanceWithNSString = JavaUtilCurrency_getInstanceWithNSString_(v22);
      [qword_100554E18 putWithId:a1 withId:InstanceWithNSString];
    }
  }

  objc_sync_exit(v2);
  return InstanceWithNSString;
}

JavaUtilLinkedHashSet *JavaUtilCurrency_getAvailableCurrencies()
{
  if ((atomic_load_explicit(&JavaUtilCurrency__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CD69C();
  }

  v0 = new_JavaUtilLinkedHashSet_init();
  AvailableCurrencyCodes = LibcoreIcuICU_getAvailableCurrencyCodes();
  if (!AvailableCurrencyCodes)
  {
    JreThrowNullPointerException();
  }

  p_elementType = &AvailableCurrencyCodes->elementType_;
  v3 = &(&AvailableCurrencyCodes->elementType_)[AvailableCurrencyCodes->super.size_];
  while (p_elementType < v3)
  {
    v4 = *p_elementType++;
    [(JavaUtilHashSet *)v0 addWithId:JavaUtilCurrency_getInstanceWithNSString_(v4)];
  }

  return v0;
}

void *JavaIoReader_init(uint64_t a1)
{
  v2 = [NSObject alloc];

  return JreStrongAssignAndConsume((a1 + 8), v2);
}

id JavaIoReader_initWithId_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"lock == null");
    objc_exception_throw(v5);
  }

  v3 = (a1 + 8);

  return JreStrongAssign(v3, a2);
}

uint64_t JavaLangStringIndexOutOfBoundsException_initWithNSString_withInt_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  [a2 length];
  v10 = JreStrcat("$I$I", v3, v4, v5, v6, v7, v8, v9, @"length=");

  return JavaLangIndexOutOfBoundsException_initWithNSString_(a1, v10);
}

uint64_t JavaLangStringIndexOutOfBoundsException_initWithNSString_withInt_withInt_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  [a2 length];
  v10 = JreStrcat("$I$I$I", v3, v4, v5, v6, v7, v8, v9, @"length=");

  return JavaLangIndexOutOfBoundsException_initWithNSString_(a1, v10);
}

JavaLangStringIndexOutOfBoundsException *new_JavaLangStringIndexOutOfBoundsException_initWithNSString_withInt_withInt_(void *a1)
{
  v2 = [JavaLangStringIndexOutOfBoundsException alloc];
  JavaLangStringIndexOutOfBoundsException_initWithNSString_withInt_withInt_(v2, a1);
  return v2;
}

id JavaBeansPropertyChangeSupport_initWithId_(uint64_t a1, void *a2)
{
  v4 = new_JavaUtilConcurrentCopyOnWriteArrayList_init();
  JreStrongAssignAndConsume((a1 + 16), v4);
  if (!a2)
  {
    v6 = new_JavaLangNullPointerException_initWithNSString_(@"sourceBean == null");
    objc_exception_throw(v6);
  }

  return JreStrongAssign((a1 + 8), a2);
}

uint64_t sub_1001CE0AC(id a1, id a2, id a3)
{
  while (1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    objc_opt_class();
    if (!a3)
    {
      goto LABEL_17;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    v6 = [a3 getPropertyName];
    a3 = [a3 getListener];
    if (!a1)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      objc_opt_class();
      if (!a2)
      {
LABEL_17:
        JreThrowNullPointerException();
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_16:
        JreThrowClassCastException();
      }

      a1 = [a2 getPropertyName];
      a2 = [a2 getListener];
    }

    v7 = LibcoreUtilObjects_equalWithId_withId_(a1, v6);
    a1 = 0;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1)
  {
    return 0;
  }

  return LibcoreUtilObjects_equalWithId_withId_(a2, a3);
}

JavaBeansPropertyChangeSupport *new_JavaBeansPropertyChangeSupport_initWithId_(void *a1)
{
  v2 = [JavaBeansPropertyChangeSupport alloc];
  JavaBeansPropertyChangeSupport_initWithId_(v2, a1);
  return v2;
}

uint64_t JavaUtilSet_class_(uint64_t a1, uint64_t a2)
{
  if (qword_100554E30 != -1)
  {
    sub_1001CF1DC();
  }

  return qword_100554E28;
}

URegularExpression *Java_java_util_regex_Pattern_compileImpl(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  status = U_ZERO_ERROR;
  memset(&pe, 0, sizeof(pe));
  pe.offset = -1;
  v6 = [a3 length];
  v8 = v6;
  if (v6)
  {
    __chkstk_darwin(v6, v7);
    v10 = (&v13 - ((v9 + 15) & 0x3FFFFFFF0));
    [a3 getCharacters:v10 range:{0, v8}];
    result = uregex_open(v10, v8, a4 | 0x200u, &pe, &status);
  }

  else
  {
    pattern = 0;
    result = uregex_open(&pattern, -1, a4 | 0x200u, &pe, &status);
  }

  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v12 = [[JavaUtilRegexPatternSyntaxException alloc] initWithNSString:sub_1001CF350(status) withNSString:a3 withInt:pe.offset];
    objc_exception_throw(v12);
  }

  return result;
}

NSString *sub_1001CF350(UErrorCode a1)
{
  if ((a1 - 66304) < 0x14)
  {
    return *(&off_100427520 + (a1 - 66304));
  }

  v3 = u_errorName(a1);

  return [NSString stringWithUTF8String:v3];
}

id sub_1001CF4E8(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v10 = new_JavaUtilLinkedList_init();
  JreStrongAssignAndConsume((a1 + 40), v10);
  JreStrongAssign((a1 + 48), 0);
  JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a3;
  JreStrongAssign((a1 + 32), a4);

  return JreStrongAssign((a1 + 24), a5);
}

JavaNetNetworkInterface *JavaNetNetworkInterface_getByNameWithNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v9 = new_JavaLangNullPointerException_initWithNSString_(@"interfaceName == null");
    objc_exception_throw(v9);
  }

  v3 = if_nametoindex([a1 UTF8String]);
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
  v5 = new_JavaUtilArrayList_init();
  v6 = new_JavaUtilArrayList_init();
  sub_1001D0044(a1, v4, v5, v6);
  sub_1001D0400(a1, v5, v6);
  v7 = [JavaNetNetworkInterface alloc];
  sub_1001CF4E8(v7, a1, v4, v5, v6);

  return v7;
}

void sub_1001CF6BC(uint64_t a1, uint64_t a2)
{
  v3 = new_JavaNetSocketException_init();
  [(JavaLangThrowable *)v3 initCauseWithJavaLangThrowable:a1];
  objc_exception_throw(v3);
}

uint64_t JavaNetNetworkInterface_getByInetAddressWithJavaNetInetAddress_(void *a1, const char *a2)
{
  if (!a1)
  {
    v12 = new_JavaLangNullPointerException_initWithNSString_(@"address == null");
    objc_exception_throw(v12);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = +[JavaNetNetworkInterface getNetworkInterfacesList]_0(a1, a2);
  if (!v3)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v4 = v3;
  v5 = [(JavaUtilArrayList *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (!v9)
        {
          goto LABEL_15;
        }

        v10 = *(v9 + 32);
        if (!v10)
        {
          goto LABEL_15;
        }

        if ([v10 containsWithId:{a1, v13}])
        {
          return v9;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(JavaUtilArrayList *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return 0;
}

JavaNetNetworkInterface *JavaNetNetworkInterface_getByIndexWithInt_(uint64_t a1)
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100184238();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  result = [LibcoreIoLibcore_os_ if_indextonameWithInt:a1];
  if (result)
  {

    return JavaNetNetworkInterface_getByNameWithNSString_(result, v3);
  }

  return result;
}

BOOL sub_1001CFB74(uint64_t a1, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [*(a1 + 8) UTF8String];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D0910;
  v6[3] = &unk_100427740;
  v6[4] = &v7;
  sub_1001CFE14(v3, v6);
  v4 = (v8[3] & a2) != 0;
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1001CFC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001CFD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CFD74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2[1] != 18 || v2[6] != 6)
  {
    return 1;
  }

  v4 = &v2[v2[5]];
  v5 = [IOSByteArray arrayWithLength:6];
  result = 0;
  *(*(*(a1 + 32) + 8) + 40) = v5;
  v7 = *(*(*(a1 + 32) + 8) + 40) + 12;
  v8 = *(v4 + 6);
  *v7 = *(v4 + 2);
  *(v7 + 4) = v8;
  return result;
}

void sub_1001CFE14(const char *a1, uint64_t a2)
{
  v8 = 0;
  if (getifaddrs(&v8) < 0)
  {
    v6 = __error();
    v7 = sub_1001CFFB0(@"getifaddrs", *v6);
    objc_exception_throw(v7);
  }

  v4 = v8;
  if (v8)
  {
    do
    {
      if ((!a1 || !strcmp(v4->ifa_name, a1)) && !(*(a2 + 16))(a2, v4))
      {
        break;
      }

      v4 = v4->ifa_next;
    }

    while (v4);
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  freeifaddrs(v5);
}

JavaNetSocketException *sub_1001CFFB0(void *a1, unsigned int a2)
{
  v2 = new_LibcoreIoErrnoException_initWithNSString_withInt_(a1, a2);
  v3 = new_JavaNetSocketException_initWithJavaLangThrowable_(v2);

  return v3;
}

IOSByteArray *sub_1001D0044(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  result = sub_1001D017C(a1);
  if (result)
  {
    v8 = result;
    if (result->super.size_ >= 1)
    {
      v9 = 0;
      do
      {
        v10 = [IOSByteArray arrayWithLength:16];
        v11 = [IOSByteArray arrayWithLength:16];
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v8, v9, v10, 0, 16);
        v12 = (v9 + 16);
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v8, v12, v11, 0, 16);
        v13 = new_JavaNetInet6Address_initWithByteArray_withNSString_withInt_(v10, 0, v6);
        if (!a3 || (v14 = v13, [a3 addWithId:v13], !a4))
        {
          JreThrowNullPointerException();
        }

        v15 = sub_1001D0314(v11);
        result = [a4 addWithId:{new_JavaNetInterfaceAddress_initWithJavaNetInet6Address_withShort_(v14, v15)}];
        v9 = (v12 + 16);
      }

      while (v9 < v8->super.size_);
    }
  }

  return result;
}

IOSByteArray *sub_1001D017C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 UTF8String];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D0E58;
  v7[3] = &unk_100427740;
  v7[4] = &v8;
  sub_1001CFE14(v1, v7);
  v2 = *(v9 + 6);
  if (v2)
  {
    v3 = [IOSByteArray arrayWithLength:32 * v2];
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x3010000000;
    v6[4] = v3;
    v6[5] = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001D0E88;
    v5[3] = &unk_100427740;
    v5[4] = v6;
    sub_1001CFE14(v1, v5);
    _Block_object_dispose(v6, 8);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v3;
}

void sub_1001D02DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D0314(uint64_t a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  LODWORD(v2) = 0;
  v3 = *(a1 + 8);
  LODWORD(v4) = -8;
  v5 = a1;
  v6 = v3 & ~(v3 >> 31);
  while (v6)
  {
    v7 = *(v5 + 12);
    --v6;
    ++v5;
    v2 = (v2 + 1);
    v4 = (v4 + 8);
    if (v7 != 255)
    {
      goto LABEL_7;
    }
  }

  v4 = 8 * (v3 & ~(v3 >> 31));
  v2 = v3 & ~(v3 >> 31);
LABEL_7:
  if (v2 != v3)
  {
    if (v2 >= v3)
    {
      IOSArray_throwOutOfBoundsWithMsg(v3, v2);
    }

    v8 = v4 | 7;
    v9 = 7;
    while (((*(a1 + 12 + v2) >> v9) & 1) != 0)
    {
      v4 = (v4 + 1);
      if (!--v9)
      {
        return v8;
      }
    }
  }

  return v4;
}

id sub_1001D0400(uint64_t a1, void *a2, void *a3)
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  v6 = [LibcoreIoLibcore_os_ socketWithInt:2 withInt:2 withInt:0];
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v7 = [LibcoreIoLibcore_os_ ioctlInetAddressWithJavaIoFileDescriptor:v6 withInt:3223349537 withNSString:a1];
  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v8 = [LibcoreIoLibcore_os_ ioctlInetAddressWithJavaIoFileDescriptor:v6 withInt:3223349539 withNSString:a1];
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v9 = [LibcoreIoLibcore_os_ ioctlInetAddressWithJavaIoFileDescriptor:v6 withInt:3223349541 withNSString:a1];
  if (!v8)
  {
    goto LABEL_27;
  }

  v10 = v9;
  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v11 = [v8 isEqual:JavaNetInet4Address_ANY_];
  v12 = v11;
  v13 = v11 ? 0 : v8;
  if (!a2 || ([a2 addWithId:v7], !a3))
  {
LABEL_27:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (v12 & 1) == 0) && (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), v10) && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [a3 addWithId:{new_JavaNetInterfaceAddress_initWithJavaNetInet4Address_withJavaNetInet4Address_withJavaNetInet4Address_(v7, v13, v10)}];
  return LibcoreIoIoUtils_closeQuietlyWithJavaIoFileDescriptor_(v6);
}

void sub_1001D0688(void *a1, int a2)
{
  objc_end_catch();
  if (a2 == 3)
  {
    v4 = objc_begin_catch(a1);
    if (v4)
    {
      v6 = v4[21];
      if (v6 == 49 || v6 == 102)
      {
        objc_end_catch();
        JUMPOUT(0x1001D0598);
      }

      sub_1001CF6BC(v4, v5);
    }

    JreThrowNullPointerException();
  }

  if (a2 != 2)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x1001D059CLL);
  }

  v7 = objc_begin_catch(a1);
  sub_1001CF6BC(v7, v8);
}

JavaNetNetworkInterface *JavaNetNetworkInterface_forUnboundMulticastSocket(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaNetInet6Address__initialized, memory_order_acquire) & 1) == 0)
  {
    a1 = sub_1001CC9D8();
  }

  v8 = JavaNetInet6Address_ANY_;
  v2 = [IOSObjectArray arrayWithObjects:&v8 count:1 type:JavaNetInetAddress_class_(a1, a2)];
  v3 = JavaUtilArrays_asListWithNSObjectArray_(v2);
  v5 = JavaUtilCollections_emptyList(v3, v4);
  v6 = [JavaNetNetworkInterface alloc];
  sub_1001CF4E8(v6, 0, -1, v3, v5);
  return v6;
}

uint64_t JavaNetNetworkInterface_class_(uint64_t a1, uint64_t a2)
{
  if (qword_100554E40 != -1)
  {
    sub_1001D0F14();
  }

  return qword_100554E38;
}

uint64_t sub_1001D0E58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 && *(v2 + 1) == 30)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 1;
}

uint64_t sub_1001D0E88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 && *(v2 + 1) == 30)
  {
    v3 = *(a2 + 32);
    *(*(*(*(a1 + 32) + 8) + 32) + 12 + 32 * *(*(*(a1 + 32) + 8) + 40)) = *(v2 + 8);
    if (v3)
    {
      *(*(*(*(a1 + 32) + 8) + 32) + 12 + 32 * *(*(*(a1 + 32) + 8) + 40) + 16) = *(v3 + 8);
    }

    ++*(*(*(a1 + 32) + 8) + 40);
  }

  return 1;
}

uint64_t sub_1001D147C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = [a1 length];
  if (v4 > a2)
  {
    while (1)
    {
      v5 = [a1 charAtWithInt:a2];
      if (!JavaLangCharacter_isWhitespaceWithChar_(v5, v6))
      {
        break;
      }

      a2 = (a2 + 1);
      if (v4 == a2)
      {
        return v4;
      }
    }
  }

  return a2;
}

double JavaTextChoiceFormat_nextDoubleWithDouble_(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 == INFINITY)
  {
    return INFINITY;
  }

  if (a3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = JavaLangDouble_doubleToLongBitsWithDouble_(a3);
  }

  if (a3 >= 0.0)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 - 1;
  }

  return JavaLangDouble_longBitsToDoubleWithLong_(v6, a2);
}

double JavaTextChoiceFormat_previousDoubleWithDouble_(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 == -INFINITY)
  {
    return -INFINITY;
  }

  if (a3 == 0.0)
  {
    v5 = 0x8000000000000000;
  }

  else
  {
    v5 = JavaLangDouble_doubleToLongBitsWithDouble_(a3);
  }

  if (a3 <= 0.0)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 - 1;
  }

  return JavaLangDouble_longBitsToDoubleWithLong_(v6, a2);
}

JavaTextChoiceFormat *new_JavaTextChoiceFormat_initWithNSString_(uint64_t a1)
{
  v2 = [JavaTextChoiceFormat alloc];
  JavaTextNumberFormat_init(v2, v3);
  [(JavaTextChoiceFormat *)v2 applyPatternWithNSString:a1];
  return v2;
}

id DalvikSystemCloseGuard_setReporterWithDalvikSystemCloseGuard_Reporter_(void *a1, uint64_t a2)
{
  if (atomic_load_explicit(DalvikSystemCloseGuard__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"reporter == null");
    objc_exception_throw(v4);
  }

  sub_1001D22BC();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:

  return JreVolatileStrongAssign(&qword_100554E58, a1);
}

DalvikSystemCloseGuard *DalvikSystemCloseGuard_get(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(DalvikSystemCloseGuard__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D22BC();
  }

  v2 = atomic_load(byte_100554E50);
  if ((v2 & 1) == 0)
  {
    return qword_100554E48;
  }

  v3 = [DalvikSystemCloseGuard alloc];

  return v3;
}

void *JavaNioIoVec_initWithJavaNioByteBufferArray_withInt_withInt_withJavaNioIoVec_DirectionEnum_(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  v9 = JreStrongAssign((a1 + 48), a5);
  v11 = [IOSObjectArray newArrayWithLength:a4 type:NSObject_class_(v9, v10)];
  JreStrongAssignAndConsume((a1 + 24), v11);
  JreStrongAssignAndConsume((a1 + 32), [IOSIntArray newArrayWithLength:a4]);
  v12 = [IOSIntArray newArrayWithLength:a4];

  return JreStrongAssignAndConsume((a1 + 40), v12);
}

void sub_1001D26A0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    if (v2)
    {
      objc_exception_throw([v2 rethrowAsIOException]);
    }

    JreThrowNullPointerException();
  }

  _Unwind_Resume(exception_object);
}

JavaNioIoVec *new_JavaNioIoVec_initWithJavaNioByteBufferArray_withInt_withInt_withJavaNioIoVec_DirectionEnum_(void *a1, int a2, int a3, void *a4)
{
  v8 = [JavaNioIoVec alloc];
  JavaNioIoVec_initWithJavaNioByteBufferArray_withInt_withInt_withJavaNioIoVec_DirectionEnum_(v8, a1, a2, a3, a4);
  return v8;
}

IOSObjectArray *JavaNioIoVec_DirectionEnum_values()
{
  if ((atomic_load_explicit(JavaNioIoVec_DirectionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D2BCC();
  }

  v0 = JavaNioIoVec_DirectionEnum_class_();

  return [IOSObjectArray arrayWithObjects:JavaNioIoVec_DirectionEnum_values_ count:2 type:v0];
}

void *JavaNioIoVec_DirectionEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaNioIoVec_DirectionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D2BCC();
  }

  v2 = 0;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    v5 = JavaNioIoVec_DirectionEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v5, "name")}])
    {
      break;
    }

    v2 = 1;
    if ((v4 & 1) == 0)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v5;
}

uint64_t JavaNioIoVec_DirectionEnum_class_()
{
  if ((atomic_load_explicit(JavaNioIoVec_DirectionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D2BCC();
  }

  if (qword_100554E68 != -1)
  {
    sub_1001D2BD8();
  }

  return qword_100554E60;
}

JavaNetSocketPermission *new_JavaNetSocketPermission_initWithNSString_withNSString_()
{
  v0 = [JavaNetSocketPermission alloc];
  JavaSecurityPermission_initWithNSString_();
  return v0;
}

id JavaMathPrimality_nextProbablePrimeWithJavaMathBigInteger_(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaMathPrimality__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D3DFC();
  }

  if (!qword_100554E70)
  {
    goto LABEL_76;
  }

  p_cache = &OBJC_METACLASS___IOSBooleanArray.cache;
  v3 = [IOSIntArray arrayWithLength:*(qword_100554E70 + 8)];
  v4 = [IOSBooleanArray arrayWithLength:1024];
  if (!a1)
  {
    goto LABEL_76;
  }

  v5 = v4;
  if (*(a1 + 16) == 1)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_76;
    }

    v7 = *(v6 + 8);
    if (v7 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v7, 0);
    }

    if ((*(v6 + 12) & 0x80000000) == 0)
    {
      v8 = *(a1 + 8);
      v9 = *(v8 + 8);
      if (v9 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, 0);
      }

      v10 = *(qword_100554E70 + 8);
      if (v10 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v10 - 1);
      }

      p_cache = (&OBJC_METACLASS___IOSBooleanArray + 16);
      if (*(v8 + 12) < *(qword_100554E70 + 12 + 4 * (v10 - 1)))
      {
        LODWORD(v11) = -1;
        do
        {
          v12 = *(a1 + 8);
          v13 = *(v12 + 8);
          if (v13 <= 0)
          {
            IOSArray_throwOutOfBoundsWithMsg(v13, 0);
          }

          v14 = v11 + 1;
          v15 = *(v12 + 12);
          v16 = *(qword_100554E70 + 8);
          if (v11 + 1 < 0 || v14 >= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, (v11 + 1));
          }

          v11 = (v11 + 1);
        }

        while (v15 >= *(qword_100554E70 + 12 + 4 * v14));
        if (qword_100554E78)
        {
          v46 = *(qword_100554E78 + 8);
          if (v14 < 0 || v11 >= v46)
          {
            IOSArray_throwOutOfBoundsWithMsg(v46, v11);
          }

          return *(qword_100554E78 + 24 + 8 * v14);
        }

        goto LABEL_76;
      }
    }
  }

  v17 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, *(a1 + 16), [p_cache + 33 arrayWithLength:*(a1 + 16) + 1]);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 8), 0, v17->digits_, 0, *(a1 + 16));
  if ([a1 testBitWithInt:0])
  {
    JavaMathElementary_inplaceAddWithJavaMathBigInteger_withInt_(v17, 2uLL);
    v18 = v17;
  }

  else
  {
    digits = v17->digits_;
    if (!digits)
    {
      goto LABEL_76;
    }

    v18 = v17;
    size = digits->super.size_;
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    *(&digits->super.size_ + 1) |= 1u;
  }

  v21 = [(JavaMathBigInteger *)v18 bitLength];
  v22 = qword_100554E80;
  if (!qword_100554E80)
  {
LABEL_76:
    JreThrowNullPointerException();
  }

  v23 = v21;
  v24 = 2;
  while (1)
  {
    v25 = v24;
    v26 = *(v22 + 8);
    if (v24 < 0 || v24 >= v26)
    {
      IOSArray_throwOutOfBoundsWithMsg(v26, v24);
    }

    if (v23 >= *(v22 + 12 + 4 * v24))
    {
      break;
    }

    ++v24;
    v22 = qword_100554E80;
    if (!qword_100554E80)
    {
      goto LABEL_76;
    }
  }

  v27 = qword_100554E70;
  if (*(qword_100554E70 + 8) >= 1)
  {
    v28 = 0;
    do
    {
      v29 = JavaMathDivision_remainderWithJavaMathBigInteger_withInt_(v18, *(v27 + 12 + 4 * v28));
      v30 = v3->super.size_;
      if (v28 >= v30)
      {
        IOSArray_throwOutOfBoundsWithMsg(v30, v28);
      }

      *(&v3->super.size_ + ++v28) = v29 - 1024;
      v27 = qword_100554E70;
    }

    while (v28 < *(qword_100554E70 + 8));
  }

LABEL_39:
  JavaUtilArrays_fillWithBooleanArray_withBoolean_(v5, 0);
  v31 = qword_100554E70;
  if (*(qword_100554E70 + 8) >= 1)
  {
    v32 = 0;
    do
    {
      v33 = v3->super.size_;
      if (v32 >= v33)
      {
        IOSArray_throwOutOfBoundsWithMsg(v33, v32);
      }

      v34 = *(v31 + 8);
      if (v32 >= v34)
      {
        IOSArray_throwOutOfBoundsWithMsg(v34, v32);
      }

      v35 = *(v31 + 12 + 4 * v32);
      v36 = v3->super.size_;
      if (v32 >= v36)
      {
        IOSArray_throwOutOfBoundsWithMsg(v36, v32);
      }

      *(&v3->super.size_ + v32 + 1) = (*(&v3->super.size_ + v32 + 1) + 1024) % v35;
      v37 = v3->super.size_;
      if (v32 >= v37)
      {
        IOSArray_throwOutOfBoundsWithMsg(v37, v32);
      }

      v38 = *(&v3->super.size_ + v32 + 1);
      if (!v38)
      {
        goto LABEL_84;
      }

      v39 = *(qword_100554E70 + 8);
      if (v32 >= v39)
      {
        IOSArray_throwOutOfBoundsWithMsg(v39, v32);
      }

      v40 = v3->super.size_;
      if (v32 >= v40)
      {
        IOSArray_throwOutOfBoundsWithMsg(v40, v32);
      }

      v38 = *(qword_100554E70 + 12 + 4 * v32) - *(&v3->super.size_ + v32 + 1);
      if (v38 <= 1023)
      {
LABEL_84:
        do
        {
          v41 = *(v5 + 8);
          if (v38 < 0 || v38 >= v41)
          {
            IOSArray_throwOutOfBoundsWithMsg(v41, v38);
          }

          *(v5 + 12 + v38) = 1;
          v42 = *(qword_100554E70 + 8);
          if (v32 >= v42)
          {
            IOSArray_throwOutOfBoundsWithMsg(v42, v32);
          }

          v38 += *(qword_100554E70 + 12 + 4 * v32);
        }

        while (v38 < 1024);
      }

      ++v32;
      v31 = qword_100554E70;
    }

    while (v32 < *(qword_100554E70 + 8));
  }

  v43 = 0;
  while (1)
  {
    v44 = *(v5 + 8);
    if (v43 >= v44)
    {
      IOSArray_throwOutOfBoundsWithMsg(v44, v43);
    }

    if ((*(v5 + 12 + v43) & 1) == 0)
    {
      v45 = [(JavaMathBigInteger *)v18 copy];
      JavaMathElementary_inplaceAddWithJavaMathBigInteger_withInt_(v45, v43);
      if (sub_1001D387C(v45, v25))
      {
        return v45;
      }
    }

    if (++v43 == 1024)
    {
      JavaMathElementary_inplaceAddWithJavaMathBigInteger_withInt_(v18, 0x400uLL);
      goto LABEL_39;
    }
  }
}

JavaMathBigInteger *JavaMathPrimality_consBigIntegerWithInt_withInt_withJavaUtilRandom_(uint64_t a1, int a2, void *a3)
{
  if ((atomic_load_explicit(&JavaMathPrimality__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D3DFC();
  }

  if (a1 > 10)
  {
    v29 = -a1 & 0x1F;
    v14 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, (a1 + 31) >> 5, [IOSIntArray arrayWithLength:(a1 + 31) >> 5]);
    v16 = ((a1 + 31) >> 5) - 1;
    v28 = (a1 + 31) >> 5;
    while (v14->numberLength_ < 1)
    {
LABEL_25:
      digits = v14->digits_;
      if (!digits)
      {
        goto LABEL_38;
      }

      size = digits->super.size_;
      if (v28 < 1 || v28 > size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v16);
      }

      *(&digits->super.size_ + v16 + 1) |= 0x80000000;
      v24 = v14->digits_;
      v25 = v24->super.size_;
      if (v28 > v25)
      {
        IOSArray_throwOutOfBoundsWithMsg(v25, v16);
      }

      *(&v24->super.size_ + v16 + 1) = *(&v24->super.size_ + v16 + 1) >> v29;
      v26 = v14->digits_;
      v27 = v26->super.size_;
      if (v27 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v27, 0);
      }

      *(&v26->super.size_ + 1) |= 1u;
      if (JavaMathPrimality_isProbablePrimeWithJavaMathBigInteger_withInt_(v14, a2))
      {
        return v14;
      }
    }

    if (a3)
    {
      v17 = 0;
      while (1)
      {
        v18 = [a3 nextInt];
        v19 = v14->digits_;
        if (!v19)
        {
          break;
        }

        v20 = v18;
        v21 = v19->super.size_;
        if (v17 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, v17);
        }

        *(&v19->super.size_ + ++v17) = v20;
        if (v17 >= v14->numberLength_)
        {
          goto LABEL_25;
        }
      }
    }

LABEL_38:
    JreThrowNullPointerException();
  }

  if (!qword_100554E88)
  {
    goto LABEL_38;
  }

  v5 = *(qword_100554E88 + 8);
  if ((a1 & 0x80000000) != 0 || v5 <= a1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, a1);
  }

  v6 = qword_100554E78;
  if (!qword_100554E78)
  {
    goto LABEL_38;
  }

  v7 = *(qword_100554E88 + 24 + 8 * a1);
  if (!v7)
  {
    goto LABEL_38;
  }

  v8 = v7[2];
  if (v8 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, 0);
  }

  if (!a3)
  {
    goto LABEL_38;
  }

  v9 = v7[3];
  v10 = v7[2];
  if (v10 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, 1);
  }

  v11 = [a3 nextIntWithInt:v7[4]];
  v12 = *(v6 + 8);
  v13 = v11 + v9;
  if (v13 < 0 || v13 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v13);
  }

  return *(v6 + 24 + 8 * v13);
}

unint64_t JavaMathPrimality_isProbablePrimeWithJavaMathBigInteger_withInt_(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(&JavaMathPrimality__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D3DFC();
  }

  v4 = a2 - 1;
  if (a2 < 1)
  {
    return 1;
  }

  if (!a1)
  {
    goto LABEL_35;
  }

  if (*(a1 + 16) == 1)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      goto LABEL_35;
    }

    v6 = *(v5 + 8);
    if (v6 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, 0);
    }

    if (*(v5 + 12) == 2)
    {
      return 1;
    }
  }

  result = [a1 testBitWithInt:0];
  if (!result)
  {
    return result;
  }

  if (*(a1 + 16) == 1)
  {
    v8 = *(a1 + 8);
    if (!v8)
    {
      goto LABEL_35;
    }

    v9 = *(v8 + 8);
    if (v9 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, 0);
    }

    if (*(v8 + 12) <= 0x3FFu)
    {
      v10 = *(a1 + 8);
      v11 = *(v10 + 8);
      if (v11 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, 0);
      }

      return JavaUtilArrays_binarySearchWithIntArray_withInt_(qword_100554E70, *(v10 + 12)) >= 0;
    }
  }

  v12 = qword_100554E70;
  if (!qword_100554E70)
  {
    goto LABEL_35;
  }

  v13 = 1;
  while (v13 < *(v12 + 8))
  {
    result = JavaMathDivision_remainderArrayByIntWithIntArray_withInt_withInt_(*(a1 + 8), *(a1 + 16), *(v12 + 12 + 4 * v13));
    if (!result)
    {
      return result;
    }

    ++v13;
    v12 = qword_100554E70;
    if (!qword_100554E70)
    {
      goto LABEL_35;
    }
  }

  v14 = [a1 bitLength];
  v15 = qword_100554E80;
  if (!qword_100554E80)
  {
LABEL_35:
    JreThrowNullPointerException();
  }

  v16 = v14;
  v17 = 2;
  while (1)
  {
    v18 = *(v15 + 8);
    if (v17 < 0 || v17 >= v18)
    {
      IOSArray_throwOutOfBoundsWithMsg(v18, v17);
    }

    if (v16 >= *(v15 + 12 + 4 * v17))
    {
      break;
    }

    ++v17;
    v15 = qword_100554E80;
    if (!qword_100554E80)
    {
      goto LABEL_35;
    }
  }

  v19 = JavaLangMath_minWithInt_withInt_(v17, (v4 >> 1) + 1);

  return sub_1001D387C(a1, v19);
}

BOOL sub_1001D387C(void *a1, unsigned int a2)
{
  if (atomic_load_explicit(&JavaMathPrimality__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_1001D3DFC();
    if (!a1)
    {
      goto LABEL_34;
    }
  }

  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  v4 = [a1 subtractWithJavaMathBigInteger:JavaMathBigInteger_ONE_];
  if (!v4)
  {
LABEL_34:
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = [v4 bitLength];
  v7 = [v5 getLowestSetBit];
  v22 = [v5 shiftRightWithInt:v7];
  v8 = new_JavaUtilRandom_init();
  if (a2 >= 1)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    LODWORD(v21) = v7 - 1;
    HIDWORD(v21) = v7;
    v12 = a2;
    while (qword_100554E70)
    {
      if (v10 >= *(qword_100554E70 + 8))
      {
        do
        {
          do
          {
            v14 = new_JavaMathBigInteger_initWithInt_withJavaUtilRandom_(v6, v9);
          }

          while (([(JavaMathBigInteger *)v14 compareToWithId:a1]& 0x80000000) == 0);
        }

        while (!v14->sign_ || [(JavaMathBigInteger *)v14 isOne]);
      }

      else
      {
        if (!qword_100554E78)
        {
          goto LABEL_34;
        }

        v13 = *(qword_100554E78 + 8);
        if (v10 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v10);
        }

        v14 = *(qword_100554E78 + 24 + 8 * v10);
        if (!v14)
        {
          goto LABEL_34;
        }
      }

      v15 = [(JavaMathBigInteger *)v14 modPowWithJavaMathBigInteger:v22 withJavaMathBigInteger:a1, v21];
      if (!v15)
      {
        goto LABEL_34;
      }

      v16 = v15;
      if ([v15 isOne] & 1) != 0 || (objc_msgSend(v16, "isEqual:", v5))
      {
        goto LABEL_37;
      }

      if (SHIDWORD(v21) >= 2)
      {
        v17 = v21;
        do
        {
          if (([v16 isEqual:v5] & 1) == 0)
          {
            v18 = [v16 multiplyWithJavaMathBigInteger:v16];
            if (!v18)
            {
              goto LABEL_34;
            }

            v19 = [v18 modWithJavaMathBigInteger:a1];
            if (!v19)
            {
              goto LABEL_34;
            }

            v16 = v19;
            if ([v19 isOne])
            {
              return v11;
            }
          }
        }

        while (--v17);
      }

      if ([v16 isEqual:v5])
      {
LABEL_37:
        v11 = ++v10 >= v12;
        if (v10 != v12)
        {
          continue;
        }
      }

      return v11;
    }

    goto LABEL_34;
  }

  return 1;
}

JavaNioByteBufferAsDoubleBuffer *JavaNioByteBufferAsDoubleBuffer_asDoubleBufferWithJavaNioByteBuffer_(void *a1)
{
  if (!a1 || (v2 = [a1 slice]) == 0)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  [v2 orderWithJavaNioByteOrder:{objc_msgSend(a1, "order")}];
  v4 = [JavaNioByteBufferAsDoubleBuffer alloc];
  sub_1001D3EB0(v4, v3);

  return v4;
}

id sub_1001D3EB0(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 capacity];
  JavaNioDoubleBuffer_initWithInt_withLong_(a1, (v4 / 8), a2[4], v5, v6, v7, v8, v9);
  JreStrongAssign((a1 + 40), a2);
  v10 = *(a1 + 40);

  return [v10 clear];
}

JavaNioChannelsClosedByInterruptException *new_JavaNioChannelsClosedByInterruptException_init()
{
  v0 = [JavaNioChannelsClosedByInterruptException alloc];
  JavaNioChannelsAsynchronousCloseException_init(v0, v1);
  return v0;
}

id JavaLangStackTraceElement_initWithLong_(uint64_t a1, uint64_t a2)
{
  JreStrongAssign((a1 + 8), 0);
  JreStrongAssign((a1 + 16), 0);
  result = JreStrongAssign((a1 + 24), 0);
  *(a1 + 32) = -1;
  *(a1 + 40) = a2;
  return result;
}

uint64_t JavaLangStackTraceElement_class_(uint64_t a1, uint64_t a2)
{
  if (qword_100554E98 != -1)
  {
    sub_1001D4F24();
  }

  return qword_100554E90;
}

const __CFString *sub_1001D4E78(char *a1, int a2)
{
  if (strchr(a1, a2))
  {
    v3 = strstr(a1, "With");
    if (v3)
    {
      *v3 = 0;
    }
  }

  if (!strcmp(a1, "init"))
  {
    return @"<init>";
  }

  if (!strcmp(a1, "initialize"))
  {
    return @"<clinit>";
  }

  v4 = [NSString alloc];

  return [v4 initWithCString:a1 encoding:4];
}

LibcoreReflectWildcardTypeImpl *new_LibcoreReflectWildcardTypeImpl_initWithLibcoreReflectListOfTypes_withLibcoreReflectListOfTypes_(void *a1, void *a2)
{
  v4 = [LibcoreReflectWildcardTypeImpl alloc];
  JreStrongAssign(&v4->extendsBound_, a1);
  JreStrongAssign(&v4->superBound_, a2);
  return v4;
}

id LibcoreIoIoUtils_closeWithJavaIoFileDescriptor_(id result)
{
  if (result)
  {
    v1 = result;
    result = [result valid];
    if (result)
    {
      if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
      {
        objc_opt_class();
      }

      if (!LibcoreIoLibcore_os_)
      {
        JreThrowNullPointerException();
      }

      return [LibcoreIoLibcore_os_ closeWithJavaIoFileDescriptor:v1];
    }
  }

  return result;
}

id LibcoreIoIoUtils_closeQuietlyWithJavaLangAutoCloseable_(id result)
{
  if (result)
  {
    return [result close];
  }

  return result;
}

void sub_1001D5418(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

id LibcoreIoIoUtils_closeQuietlyWithJavaNetSocket_(id result)
{
  if (result)
  {
    return [result close];
  }

  return result;
}

void sub_1001D5458(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

id LibcoreIoIoUtils_setBlockingWithJavaIoFileDescriptor_withBoolean_(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  v4 = [LibcoreIoLibcore_os_ fcntlVoidWithJavaIoFileDescriptor:a1 withInt:3];
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  return [LibcoreIoLibcore_os_ fcntlLongWithJavaIoFileDescriptor:a1 withInt:4 withLong:(v4 & 0xFFFFFFFB | v5)];
}

JavaIoByteArrayOutputStream *sub_1001D55E8(void *a1)
{
  v1 = new_JavaIoFileInputStream_initWithNSString_(a1);
  v2 = new_JavaIoByteArrayOutputStream_init();
  for (i = [IOSByteArray arrayWithLength:0x2000]; ; [(JavaIoByteArrayOutputStream *)v2 writeWithByteArray:i withInt:0 withInt:v4])
  {
    v4 = [(JavaIoInputStream *)v1 readWithByteArray:i];
    if (v4 == -1)
    {
      break;
    }
  }

  LibcoreIoIoUtils_closeQuietlyWithJavaLangAutoCloseable_(v1);
  return v2;
}

char *LibcoreIoIoUtils_deleteContentsWithJavaIoFile_(void *a1)
{
  if (!a1)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  result = [a1 listFiles];
  if (!result)
  {
    v22 = JreStrcat("$@", v2, v3, v4, v5, v6, v7, v8, @"not a directory: ");
    v21 = new_JavaLangIllegalArgumentException_initWithNSString_(v22);
LABEL_10:
    objc_exception_throw(v21);
  }

  v9 = result + 24;
  v10 = &result[8 * *(result + 2) + 24];
  while (v9 < v10)
  {
    v12 = *v9;
    v9 += 8;
    v11 = v12;
    if (!v12)
    {
      goto LABEL_12;
    }

    if ([v11 isDirectory])
    {
      LibcoreIoIoUtils_deleteContentsWithJavaIoFile_(v11);
    }

    result = [v11 delete];
    if ((result & 1) == 0)
    {
      v20 = JreStrcat("$@", v13, v14, v15, v16, v17, v18, v19, @"failed to delete file: ");
      v21 = new_JavaIoIOException_initWithNSString_(v20);
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t LibcoreIoIoUtils_canOpenReadOnlyWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  v2 = [LibcoreIoLibcore_os_ openWithNSString:a1 withInt:0 withInt:0];
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  [LibcoreIoLibcore_os_ closeWithJavaIoFileDescriptor:v2];
  return 1;
}

void LibcoreIoIoUtils_throwInterruptedIoException(uint64_t a1, uint64_t a2)
{
  v2 = JavaLangThread_currentThread(a1, a2);
  if (v2)
  {
    [(JavaLangThread *)v2 interrupt];
    v3 = new_JavaIoInterruptedIOException_init();
    objc_exception_throw(v3);
  }

  JreThrowNullPointerException();
}

id JavaUtilHashMap_init(uint64_t a1)
{
  JavaUtilAbstractMap_init();
  v2 = qword_100554EA0;
  objc_opt_class();
  if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  result = JreStrongAssign((a1 + 24), v2);
  *(a1 + 48) = -1;
  return result;
}

id JavaUtilHashMap_initWithInt_(uint64_t a1, uint64_t a2)
{
  JavaUtilAbstractMap_init();
  if ((a2 & 0x80000000) != 0)
  {
    v14 = JreStrcat("$I", v4, v5, v6, v7, v8, v9, v10, @"Capacity: ");
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  if (a2)
  {
    if (a2 >= 4)
    {
      v11 = 0x40000000;
      if (a2 <= 0x40000000)
      {
        v11 = JavaUtilCollections_roundUpToPowerOfTwoWithInt_(a2, 0x40000000);
      }
    }

    else
    {
      v11 = 4;
    }

    return sub_1001D5EDC(a1, v11);
  }

  else
  {
    v12 = qword_100554EA0;
    objc_opt_class();
    if (v12 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    result = JreStrongAssign((a1 + 24), v12);
    *(a1 + 48) = -1;
  }

  return result;
}

uint64_t JavaUtilHashMap_initWithInt_withFloat_(uint64_t a1, uint64_t a2, float a3)
{
  v4 = JavaUtilHashMap_initWithInt_(a1, a2);
  if (a3 <= 0.0 || (result = JavaLangFloat_isNaNWithFloat_(v4, v5), result))
  {
    v13 = JreStrcat("$F", v5, v6, v7, v8, v9, v10, v11, @"Load factor: ");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  return result;
}

id JavaUtilHashMap_initWithJavaUtilMap_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 size];
  if ((atomic_load_explicit(&JavaUtilHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D8864();
  }

  v5 = v4 + (v4 >> 1);
  if (v5 >= 0x40000000)
  {
    v6 = 0x40000000;
  }

  else
  {
    v6 = v5;
  }

  JavaUtilHashMap_initWithInt_(a1, v6);

  return sub_1001D5BBC(a1, a2);
}

id sub_1001D5BBC(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == qword_100554EA0)
  {
    [JavaUtilHashMap doubleCapacity]_0(a1);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (!a2 || (v4 = [a2 entrySet]) == 0)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v5 = v4;
  result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (!v10)
        {
          goto LABEL_14;
        }

        sub_1001D667C(a1, [*(*(&v11 + 1) + 8 * v9) getKey], objc_msgSend(v10, "getValue"));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t JavaUtilHashMap_capacityForInitSizeWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((atomic_load_explicit(&JavaUtilHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D8864();
  }

  v3 = v2 + (v2 >> 1);
  if (v3 >= 0x40000000)
  {
    return 0x40000000;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001D5EDC(uint64_t a1, int a2)
{
  if (qword_100554EB8 != -1)
  {
    sub_1001D8870();
  }

  JreStrongAssignAndConsume((a1 + 24), [IOSObjectArray newArrayWithLength:a2 type:qword_100554EB0]);
  *(a1 + 48) = (a2 >> 1) + (a2 >> 2);
  return *(a1 + 24);
}

uint64_t sub_1001D6494(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    [a1 preModifyWithJavaUtilHashMap_HashMapEntry:*(a1 + 32)];
    v5 = *(v4 + 16);
    JreStrongAssign((v4 + 16), a2);
  }

  else
  {
    [a1 addNewEntryForNullKeyWithId:a2];
    v5 = 0;
    ++*(a1 + 40);
    ++*(a1 + 44);
  }

  return v5;
}

id sub_1001D667C(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v6 = JavaUtilCollections_secondaryHashWithId_(a2, a2);
    v7 = *(a1 + 24);
    v8 = (*(v7 + 8) - 1) & v6;
    v9 = *(v7 + 24 + 8 * v8);
    if (v9)
    {
      v10 = *(v7 + 24 + 8 * v8);
      while (*(v10 + 24) != v6 || ![a2 isEqual:*(v10 + 8)])
      {
        v10 = *(v10 + 32);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v13 = (v10 + 16);
      goto LABEL_13;
    }

LABEL_7:
    result = [a1 constructorNewRetainedEntryWithId:a2 withId:a3 withInt:v6 withJavaUtilHashMap_HashMapEntry:v9];
    *(v7 + 24 + 8 * v8) = result;
LABEL_11:
    ++*(a1 + 40);
    return result;
  }

  v12 = *(a1 + 32);
  if (!v12)
  {
    result = [a1 constructorNewRetainedEntryWithId:0 withId:a3 withInt:0 withJavaUtilHashMap_HashMapEntry:0];
    *(a1 + 32) = result;
    goto LABEL_11;
  }

  v13 = (v12 + 16);
LABEL_13:

  return JreStrongAssign(v13, a3);
}

JavaUtilHashMap_HashMapEntry *new_JavaUtilHashMap_HashMapEntry_initWithId_withId_withInt_withJavaUtilHashMap_HashMapEntry_(void *a1, void *a2, int a3, void *a4)
{
  v8 = [JavaUtilHashMap_HashMapEntry alloc];
  JreStrongAssign(&v8->key_, a1);
  JreStrongAssign(&v8->value_, a2);
  v8->hash__ = a3;
  JreStrongAssign(&v8->next_, a4);
  return v8;
}

void sub_1001D69FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((atomic_load_explicit(&JavaUtilHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D8864();
  }

  v4 = v2 + (v2 >> 1);
  if (v4 >= 0x40000000)
  {
    v5 = 0x40000000;
  }

  else
  {
    v5 = v4;
  }

  v6 = JavaUtilCollections_roundUpToPowerOfTwoWithInt_(v5, a2);
  v7 = *(a1 + 24);
  v8 = *(v7 + 8);
  if (v6 > v8)
  {
    v9 = v6;
    if (v6 == 2 * v8)
    {

      [JavaUtilHashMap doubleCapacity]_0(a1);
    }

    else
    {
      v10 = sub_1001D5EDC(a1, v6);
      if (*(a1 + 40))
      {
        if (v8 >= 1)
        {
          for (i = 0; i != v8; ++i)
          {
            v12 = *(v7 + 24 + 8 * i);
            if (v12)
            {
              do
              {
                v13 = *(v12 + 32);
                v14 = *(v12 + 24) & (v9 - 1);
                v15 = *(v10 + 24 + 8 * v14);
                *(v10 + 24 + 8 * v14) = v12;
                *(v12 + 32) = v15;
                v12 = v13;
              }

              while (v13);
            }
          }
        }

        v16 = 8 * *(v7 + 8);

        bzero((v7 + 24), v16);
      }
    }
  }
}

uint64_t sub_1001D6EE8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v7 = JavaUtilCollections_secondaryHashWithId_(a2, a2);
    v8 = *(a1 + 24);
    if (!v8)
    {
      JreThrowNullPointerException();
    }

    v9 = v7;
    v10 = *(v8 + 8);
    v11 = (v10 - 1) & v9;
    if (v11 < 0 != v6 || v11 >= v10)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, v11);
    }

    v13 = *(v8 + 24 + 8 * v11);
    if (v13)
    {
      while (*(v13 + 24) != v9 || ([a2 isEqual:*(v13 + 8)] & 1) == 0)
      {
        v13 = *(v13 + 32);
        if (!v13)
        {
          return 0;
        }
      }

      goto LABEL_14;
    }

    return 0;
  }

  v13 = *(a1 + 32);
  if (!v13)
  {
    return 0;
  }

LABEL_14:
  v14 = *(v13 + 16);

  return LibcoreUtilObjects_equalWithId_withId_(a3, v14);
}

uint64_t sub_1001D7000(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v6 = JavaUtilCollections_secondaryHashWithId_(a2, a2);
    v7 = *(a1 + 24);
    v8 = (*(v7 + 8) - 1) & v6;
    v9 = *(v7 + 24 + 8 * v8);
    if (v9)
    {
      v10 = v6;
      v11 = 0;
      v12 = v8;
      while (1)
      {
        v13 = v9;
        if (*(v9 + 24) == v10)
        {
          if ([a2 isEqual:*(v9 + 8)])
          {
            break;
          }
        }

        v9 = v13[4];
        v11 = v13;
        if (!v9)
        {
          return v9 & v8;
        }
      }

      if (LibcoreUtilObjects_equalWithId_withId_(a3, v13[2]))
      {
        if (v11)
        {
          v16 = v11 + 4;
        }

        else
        {
          v16 = (v7 + 24 + 8 * v12);
        }

        *v16 = v13[4];
        v13[4] = 0;
        v17 = v13;
        ++*(a1 + 44);
        --*(a1 + 40);
        [a1 postRemoveWithJavaUtilHashMap_HashMapEntry:v13];
        LODWORD(v9) = 1;
        v8 = 1;
      }

      else
      {
        v8 = 0;
        LODWORD(v9) = 1;
      }
    }

    return v9 & v8;
  }

  else
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      result = LibcoreUtilObjects_equalWithId_withId_(a3, *(v15 + 16));
      if (result)
      {
        JreStrongAssign((a1 + 32), 0);
        ++*(a1 + 44);
        --*(a1 + 40);
        [a1 postRemoveWithJavaUtilHashMap_HashMapEntry:v15];
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

JavaUtilHashMap *new_JavaUtilHashMap_init()
{
  v0 = [JavaUtilHashMap alloc];
  JavaUtilHashMap_init(v0);
  return v0;
}

JavaUtilHashMap *new_JavaUtilHashMap_initWithInt_(uint64_t a1)
{
  v2 = [JavaUtilHashMap alloc];
  JavaUtilHashMap_initWithInt_(v2, a1);
  return v2;
}

JavaUtilHashMap *new_JavaUtilHashMap_initWithInt_withFloat_(uint64_t a1, float a2)
{
  v4 = [JavaUtilHashMap alloc];
  JavaUtilHashMap_initWithInt_withFloat_(v4, a1, a2);
  return v4;
}

JavaUtilHashMap *new_JavaUtilHashMap_initWithJavaUtilMap_(void *a1)
{
  v2 = [JavaUtilHashMap alloc];
  JavaUtilHashMap_initWithJavaUtilMap_(v2, a1);
  return v2;
}

id JavaUtilHashMap_HashMapEntry_initWithId_withId_withInt_withJavaUtilHashMap_HashMapEntry_(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 16), a3);
  *(a1 + 24) = a4;

  return JreStrongAssign((a1 + 32), a5);
}

id sub_1001D7BDC(uint64_t a1, uint64_t a2)
{
  JreStrongAssign((a1 + 8), a2);
  result = JreStrongAssign((a1 + 24), *(a2 + 32));
  *(a1 + 40) = *(a2 + 44);
  if (!*(a1 + 24))
  {
    v5 = *(a2 + 24);
    if (!v5)
    {
      JreThrowNullPointerException();
    }

    v6 = *(a1 + 16);
    v7 = (v5 + 8);
    if (v6 >= *(v5 + 8))
    {
LABEL_10:
      v9 = 0;
    }

    else
    {
      while (1)
      {
        *(a1 + 16) = v6 + 1;
        v8 = *v7;
        if (v6 < 0 || v6 >= v8)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, v6);
        }

        v9 = *(v5 + 24 + 8 * v6);
        if (v9)
        {
          break;
        }

        v6 = *(a1 + 16);
        v7 = (v5 + 8);
        if (v6 >= *(v5 + 8))
        {
          goto LABEL_10;
        }
      }
    }

    return JreStrongAssign((a1 + 24), v9);
  }

  return result;
}

double JavaLangMath_absWithDouble_(uint64_t a1, double a2, uint64_t a3)
{
  v3 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1, a3, a2) & 0x7FFFFFFFFFFFFFFFLL;

  return JavaLangDouble_longBitsToDoubleWithLong_(v3, v4);
}

float JavaLangMath_absWithFloat_(float a1, uint64_t a2, uint64_t a3)
{
  v3 = JavaLangFloat_floatToRawIntBitsWithFloat_(a2, a3, a1) & 0x7FFFFFFF;

  return JavaLangFloat_intBitsToFloatWithInt_(v3, v4);
}

uint64_t JavaLangMath_absWithInt_(uint64_t result)
{
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return -result;
  }
}

uint64_t JavaLangMath_absWithLong_(uint64_t result)
{
  if (result < 0)
  {
    return -result;
  }

  return result;
}

void JavaLangMath_maxWithFloat_withFloat_(float a1, float a2, uint64_t a3, uint64_t a4)
{
  if (a1 <= a2 && a1 >= a2 && a1 == a2)
  {
    JavaLangFloat_floatToRawIntBitsWithFloat_(a3, a4, a1);
  }
}

uint64_t JavaLangMath_maxWithInt_withInt_(uint64_t result, int a2)
{
  if (result <= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t JavaLangMath_maxWithLong_withLong_(uint64_t result, uint64_t a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

float JavaLangMath_minWithFloat_withFloat_(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v4 = a4;
  if (a3 <= a4)
  {
    if (a3 >= a4)
    {
      if (a3 == a4)
      {
        if (JavaLangFloat_floatToRawIntBitsWithFloat_(a1, a2, a3) == 0x80000000)
        {
          return -0.0;
        }
      }

      else
      {
        return NAN;
      }
    }

    else
    {
      return a3;
    }
  }

  return v4;
}

uint64_t JavaLangMath_minWithInt_withInt_(uint64_t result, int a2)
{
  if (result >= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t JavaLangMath_minWithLong_withLong_(uint64_t result, uint64_t a2)
{
  if (result >= a2)
  {
    return a2;
  }

  return result;
}

unint64_t JavaLangMath_roundWithDouble_(double a1)
{
  v1 = a1 + 0.5;
  v2 = vcvtmd_s64_f64(v1);
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (floor(v1) < 0.0)
  {
    v3 = 0x8000000000000000;
  }

  if (v2 == 0x8000000000000000)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t JavaLangMath_roundWithFloat_(float a1)
{
  v1 = a1 + 0.5;
  v2 = vcvtms_s32_f32(v1);
  if (floorf(v1) < 0.0)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (v2 == 0x80000000)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

id JavaLangMath_setRandomSeedInternalWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaLangMath_NoImagePreloadHolder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D9A88();
  }

  v2 = qword_100554EC0;
  if (!qword_100554EC0)
  {
    JreThrowNullPointerException();
  }

  return [v2 setSeedWithLong:a1];
}

void JavaLangMath_ulpWithDouble_(uint64_t a1, double a2, uint64_t a3)
{
  isInfiniteWithDouble = JavaLangDouble_isInfiniteWithDouble_(a1, a3, a2);
  if (!isInfiniteWithDouble && a2 != 1.79769313e308 && a2 != -1.79769313e308)
  {
    v7 = JavaLangDouble_doubleToRawLongBitsWithDouble_(isInfiniteWithDouble, v5, a2);
    v9 = JavaLangDouble_longBitsToDoubleWithLong_(v7 & 0x7FFFFFFFFFFFFFFFLL, v8);
    nextafter(v9, 1.79769313e308);
  }
}

float JavaLangMath_ulpWithFloat_(float a1, uint64_t a2, uint64_t a3)
{
  isNaNWithFloat = JavaLangFloat_isNaNWithFloat_(a2, a3);
  if (isNaNWithFloat)
  {
    return NAN;
  }

  isInfiniteWithFloat = JavaLangFloat_isInfiniteWithFloat_(isNaNWithFloat, v5, a1);
  if (isInfiniteWithFloat)
  {
    return INFINITY;
  }

  if (a1 == 3.4028e38 || a1 == -3.4028e38)
  {
    return 2.0282e31;
  }

  v11 = JavaLangFloat_floatToRawIntBitsWithFloat_(isInfiniteWithFloat, v8, a1);
  v13 = JavaLangFloat_intBitsToFloatWithInt_(v11 & 0x7FFFFFFF, v12);
  v16 = JavaLangFloat_floatToRawIntBitsWithFloat_(v14, v15, v13);
  v17 = v16;
  v19 = JavaLangFloat_floatToRawIntBitsWithFloat_(v16, v18, 3.4028e38);
  if ((v17 & 0x7FFFFFFF) != 0)
  {
    if (v17 > 0 != v17 > v19)
    {
      v21 = (v17 + 1);
    }

    else
    {
      v21 = (v17 - 1);
    }

    return JavaLangFloat_intBitsToFloatWithInt_(v21, v20) - v13;
  }

  else
  {
    v22 = v19 & 0x80000000 | 1;

    return JavaLangFloat_intBitsToFloatWithInt_(v22, v20);
  }
}

double JavaLangMath_copySignWithDouble_withDouble_(uint64_t a1, double a2, double a3, uint64_t a4)
{
  v5 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a1, a4, a2);
  v7 = JavaLangDouble_doubleToRawLongBitsWithDouble_(v5, v6, a3) & 0x8000000000000000 | v5 & 0x7FFFFFFFFFFFFFFFLL;

  return JavaLangDouble_longBitsToDoubleWithLong_(v7, v8);
}

float JavaLangMath_copySignWithFloat_withFloat_(float a1, float a2, uint64_t a3, uint64_t a4)
{
  v5 = JavaLangFloat_floatToRawIntBitsWithFloat_(a3, a4, a1);
  v7 = JavaLangFloat_floatToRawIntBitsWithFloat_(v5, v6, a2) & 0x80000000 | v5 & 0x7FFFFFFF;

  return JavaLangFloat_intBitsToFloatWithInt_(v7, v8);
}

float JavaLangMath_nextAfterWithFloat_withDouble_(float a1, double a2, uint64_t a3, uint64_t a4)
{
  isNaNWithFloat = JavaLangFloat_isNaNWithFloat_(a3, a4);
  if (isNaNWithFloat & 1) != 0 || (isNaNWithDouble = JavaLangDouble_isNaNWithDouble_(isNaNWithFloat, v7), (isNaNWithDouble))
  {
    v10 = 2143289344;
    return *&v10;
  }

  if (a1 == 0.0 && a2 == 0.0)
  {
    return a2;
  }

  v12 = a1;
  if (a1 == COERCE_FLOAT(1) && v12 > a2 || a1 == COERCE_FLOAT(-2147483647) && v12 < a2)
  {
    result = -0.0;
    if (a1 > 0.0)
    {
      return 0.0;
    }

    return result;
  }

  isInfiniteWithFloat = JavaLangFloat_isInfiniteWithFloat_(isNaNWithDouble, v9, a1);
  if (v12 != a2 && isInfiniteWithFloat)
  {
    v14 = a1 <= 0.0;
    result = -3.4028e38;
    v15 = 3.4028e38;
    goto LABEL_36;
  }

  v17 = v12 > a2 && a1 == -3.4028e38;
  v19 = v12 < a2 && a1 == 3.4028e38;
  if (v19 || v17)
  {
    v14 = a1 <= 0.0;
    result = -INFINITY;
    v15 = INFINITY;
LABEL_36:
    if (!v14)
    {
      return v15;
    }

    return result;
  }

  if (v12 >= a2)
  {
    if (v12 <= a2)
    {
      return a2;
    }

    if (a1 <= 0.0)
    {
      if (a1 >= 0.0)
      {
        v10 = -2147483647;
        return *&v10;
      }

      goto LABEL_34;
    }

LABEL_44:
    v20 = JavaLangFloat_floatToIntBitsWithFloat_(a1) - 1;
    goto LABEL_45;
  }

  if (a1 <= 0.0)
  {
    if (a1 >= 0.0)
    {
      v10 = 1;
      return *&v10;
    }

    goto LABEL_44;
  }

LABEL_34:
  v20 = JavaLangFloat_floatToIntBitsWithFloat_(a1) + 1;
LABEL_45:

  return JavaLangFloat_intBitsToFloatWithInt_(v20, v21);
}

double JavaLangMath_nextUpWithDouble_(double a1, uint64_t a2, uint64_t a3)
{
  if (JavaLangDouble_isNaNWithDouble_(a2, a3))
  {
    v4 = 0x7FF8000000000000;
    return *&v4;
  }

  result = INFINITY;
  if (a1 != INFINITY)
  {
    if (a1 == 0.0)
    {
      v4 = 1;
      return *&v4;
    }

    v6 = JavaLangDouble_doubleToLongBitsWithDouble_(a1);
    if (a1 > 0.0)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = v6 - 1;
    }

    return JavaLangDouble_longBitsToDoubleWithLong_(v8, v7);
  }

  return result;
}

float JavaLangMath_nextUpWithFloat_(float a1, uint64_t a2, uint64_t a3)
{
  if (JavaLangFloat_isNaNWithFloat_(a2, a3))
  {
    v4 = 2143289344;
    return *&v4;
  }

  result = INFINITY;
  if (a1 != INFINITY)
  {
    if (a1 == 0.0)
    {
      v4 = 1;
      return *&v4;
    }

    v6 = JavaLangFloat_floatToIntBitsWithFloat_(a1);
    if (a1 > 0.0)
    {
      v8 = (v6 + 1);
    }

    else
    {
      v8 = (v6 - 1);
    }

    return JavaLangFloat_intBitsToFloatWithInt_(v8, v7);
  }

  return result;
}

double JavaLangMath_scalbWithDouble_withInt_(uint64_t a1, double a2, uint64_t a3)
{
  v3 = a1;
  isNaNWithDouble = JavaLangDouble_isNaNWithDouble_(a1, a3);
  if (isNaNWithDouble)
  {
    return a2;
  }

  isInfiniteWithDouble = JavaLangDouble_isInfiniteWithDouble_(isNaNWithDouble, v6, a2);
  if (a2 == 0.0 || isInfiniteWithDouble)
  {
    return a2;
  }

  v9 = JavaLangDouble_doubleToLongBitsWithDouble_(a2);
  v11 = JavaLangLong_numberOfLeadingZerosWithLong_(v9 & 0x7FFFFFFFFFFFFFFFLL, v10);
  v13 = (v11 - 12) & ~((v11 - 12) >> 31);
  v14 = ((v9 >> 52) & 0x7FF) + v3 - v13 - 1023;
  if (v14 >= 1024)
  {
    if (a2 <= 0.0)
    {
      return -INFINITY;
    }

    else
    {
      return INFINITY;
    }
  }

  if (v14 > -1023)
  {
    v21 = JavaLangDouble_doubleToRawLongBitsWithDouble_(v11, v12, a2);
    v24 = JavaLangDouble_longBitsToDoubleWithLong_(v21 & 0x7FFFFFFFFFFFFFFFLL, v22);
    v25 = (v14 << 52) + 0x3FF0000000000000;
    v26 = (v9 << (v13 + 1)) & 0xFFFFFFFFFFFFFLL | v25;
    v27 = v25 | v9 & 0xFFFFFFFFFFFFFLL;
    if (v24 >= 2.22507386e-308)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }
  }

  else
  {
    v15 = v14 + (v13 + 1023);
    v16 = JavaLangDouble_doubleToRawLongBitsWithDouble_(v11, v12, a2);
    v18 = JavaLangDouble_longBitsToDoubleWithLong_(v16 & 0x7FFFFFFFFFFFFFFFLL, v17);
    v19 = v9 & 0xFFFFFFFFFFFFFLL;
    if (v18 >= 2.22507386e-308)
    {
      v20 = v15 - 1;
      v19 |= 0x10000000000000uLL;
    }

    else
    {
      v20 = v15;
    }

    v28 = sub_1001D9854(v19, v20);
  }

  v29 = v28 | v9 & 0x8000000000000000;

  return JavaLangDouble_longBitsToDoubleWithLong_(v29, v23);
}

float JavaLangMath_scalbWithFloat_withInt_(uint64_t a1, float a2, uint64_t a3)
{
  v3 = a1;
  isNaNWithFloat = JavaLangFloat_isNaNWithFloat_(a1, a3);
  if (isNaNWithFloat)
  {
    return a2;
  }

  isInfiniteWithFloat = JavaLangFloat_isInfiniteWithFloat_(isNaNWithFloat, v6, a2);
  if (a2 == 0.0 || isInfiniteWithFloat)
  {
    return a2;
  }

  v9 = JavaLangFloat_floatToIntBitsWithFloat_(a2);
  v10 = JavaLangInteger_numberOfLeadingZerosWithInt_(v9 & 0x7FFFFFFF);
  v12 = (v10 - 9) & ~((v10 - 9) >> 31);
  v13 = v3 + (v9 >> 23) - v12 - 127;
  if (v13 >= 128)
  {
    if (a2 <= 0.0)
    {
      return -INFINITY;
    }

    else
    {
      return INFINITY;
    }
  }

  if (v13 > -127)
  {
    v20 = JavaLangFloat_floatToRawIntBitsWithFloat_(v10, v11, a2);
    v23 = JavaLangFloat_intBitsToFloatWithInt_(v20 & 0x7FFFFFFF, v21);
    v24 = (v13 << 23) + 1065353216;
    v25 = v24 | (v9 << (v12 + 1)) & 0x7FFFFF;
    v26 = v24 | v9 & 0x7FFFFF;
    if (v23 >= 1.1755e-38)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25;
    }
  }

  else
  {
    v14 = (v9 >> 23) + v3;
    v15 = JavaLangFloat_floatToRawIntBitsWithFloat_(v10, v11, a2);
    v17 = JavaLangFloat_intBitsToFloatWithInt_(v15 & 0x7FFFFFFF, v16);
    v18 = v9 & 0x7FFFFF;
    if (v17 >= 1.1755e-38)
    {
      v19 = v14 - 1;
      v18 = v18 | 0x800000;
    }

    else
    {
      v19 = v14;
    }

    v27 = sub_1001D97B0(v18, v19);
  }

  v28 = v27 | v9 & 0x80000000;

  return JavaLangFloat_intBitsToFloatWithInt_(v28, v22);
}

uint64_t sub_1001D97B0(uint64_t a1, int a2)
{
  v3 = a1;
  if (a2 >= 1)
  {
    return (a1 << a2);
  }

  if (JavaLangInteger_numberOfLeadingZerosWithInt_(a1 & 0x7FFFFFFF) > a2 + 32)
  {
    return 0;
  }

  v4 = (v3 >> -a2);
  v5 = ~a2;
  if ((v3 >> v5))
  {
    if (JavaLangInteger_numberOfTrailingZerosWithInt_(v3) < v5)
    {
      LODWORD(v4) = v4 + 1;
    }

    return v4 + ((JavaLangInteger_numberOfTrailingZerosWithInt_(v3) == v5) & v4);
  }

  return v4;
}

uint64_t sub_1001D9854(unint64_t a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    return a1 << a2;
  }

  if (a2 + 64 < JavaLangLong_numberOfLeadingZerosWithLong_(a1 & 0x7FFFFFFFFFFFFFFFLL, a2))
  {
    return 0;
  }

  v4 = a1 >> -a2;
  v6 = ~a2;
  if ((a1 >> v6))
  {
    if (JavaLangLong_numberOfTrailingZerosWithLong_(a1, v5) < v6)
    {
      ++v4;
    }

    v4 += (JavaLangLong_numberOfTrailingZerosWithLong_(a1, v7) == v6) & v4;
  }

  return v4;
}

double JavaLangMath_random()
{
  if (qword_100554ED0 != -1)
  {
    sub_1001D9A94();
  }

  v0 = qword_100554EC8;
  objc_sync_enter(qword_100554EC8);
  if ((atomic_load_explicit(JavaLangMath_NoImagePreloadHolder__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!qword_100554EC0)
  {
    JreThrowNullPointerException();
  }

  [qword_100554EC0 nextDouble];
  v2 = v1;
  objc_sync_exit(v0);
  return v2;
}

id JavaLangMath_randomIntInternal()
{
  if ((atomic_load_explicit(JavaLangMath_NoImagePreloadHolder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D9A88();
  }

  v0 = qword_100554EC0;
  if (!qword_100554EC0)
  {
    JreThrowNullPointerException();
  }

  return [v0 nextInt];
}

id JavaUtilPropertyResourceBundle_initWithJavaIoInputStream_(uint64_t a1, uint64_t a2)
{
  JavaUtilResourceBundle_init(a1);
  if (!a2)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"stream == null");
    objc_exception_throw(v7);
  }

  v4 = new_JavaUtilProperties_init();
  JreStrongAssignAndConsume((a1 + 32), v4);
  v5 = *(a1 + 32);

  return [v5 load__WithJavaIoInputStream:a2];
}

id JavaUtilPropertyResourceBundle_initWithJavaIoReader_(uint64_t a1, uint64_t a2)
{
  JavaUtilResourceBundle_init(a1);
  v4 = new_JavaUtilProperties_init();
  JreStrongAssignAndConsume((a1 + 32), v4);
  v5 = *(a1 + 32);

  return [v5 load__WithJavaIoReader:a2];
}

id sub_1001D9C14(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  v2 = [v1 propertyNames];
  v4 = JavaUtilEnumeration_class_(v2, v3);
  if (v2 && ([v4 isInstance:v2] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v2;
}

JavaUtilPropertyResourceBundle *new_JavaUtilPropertyResourceBundle_initWithJavaIoReader_(uint64_t a1)
{
  v2 = [JavaUtilPropertyResourceBundle alloc];
  JavaUtilPropertyResourceBundle_initWithJavaIoReader_(v2, a1);
  return v2;
}

uint64_t sub_1001D9DB8(uint64_t a1)
{
  v1 = (a1 + 32);
  if (!*(a1 + 32))
  {
    do
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        result = [v3 hasMoreElements];
        if (!result)
        {
          return result;
        }

        v5 = [*(a1 + 24) nextElement];
        v6 = *(*(a1 + 8) + 32);
        if (v6)
        {
          continue;
        }
      }

      JreThrowNullPointerException();
    }

    while (([v6 containsKeyWithId:v5] & 1) != 0);
    JreStrongAssign(v1, v5);
  }

  return 1;
}

id sub_1001D9F40(id *a1, void *a2)
{
  JreStrongAssign(a1 + 1, a2);
  v4 = sub_1001D9C14(a2);
  JreStrongAssign(a1 + 2, v4);
  v5 = a2[1];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = [v5 getKeys];

  return JreStrongAssign(a1 + 3, v6);
}

id JavaNetDatagramSocket_initWithInt_(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = -1;
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  sub_100150728(a2, v4, v5, v6, v7, v8, v9, v10);
  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001520E0();
  }

  v11 = JavaNetInet4Address_ANY_;

  return [a1 createSocketWithInt:a2 withJavaNetInetAddress:v11];
}

id JavaNetDatagramSocket_initWithInt_withJavaNetInetAddress_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = -1;
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  sub_100150728(a2, v6, v7, v8, v9, v10, v11, v12);
  if (!a3)
  {
    if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001520E0();
    }

    a3 = JavaNetInet4Address_ANY_;
  }

  return [a1 createSocketWithInt:a2 withJavaNetInetAddress:a3];
}

void sub_1001DA418(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1001DA408);
}

uint64_t JavaNetDatagramSocket_setDatagramSocketImplFactoryWithJavaNetDatagramSocketImplFactory_(void *a1)
{
  if (qword_100554EE0 != -1)
  {
    sub_1001DB690();
  }

  v2 = qword_100554ED8;
  objc_sync_enter(qword_100554ED8);
  if (JavaNetDatagramSocket_factory_)
  {
    v4 = new_JavaNetSocketException_initWithNSString_(@"Factory already set");
    objc_exception_throw(v4);
  }

  JreStrongAssign(&JavaNetDatagramSocket_factory_, a1);

  return objc_sync_exit(v2);
}

id JavaNetDatagramSocket_initWithJavaNetDatagramSocketImpl_(uint64_t a1, void *a2)
{
  *(a1 + 24) = -1;
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"socketImpl == null");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 8), a2);
}

id JavaNetDatagramSocket_initWithJavaNetSocketAddress_(uint64_t a1, void *a2)
{
  *(a1 + 24) = -1;
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  JreStrongAssignAndConsume((a1 + 48), [NSObject alloc]);
  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [a2 getClass];
      v20 = JreStrcat("$@", v13, v14, v15, v16, v17, v18, v19, @"Local address not an InetSocketAddress: ");
      v21 = new_JavaLangIllegalArgumentException_initWithNSString_(v20);
      objc_exception_throw(v21);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v4 = [a2 getPort];
    sub_100150728(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  if (JavaNetDatagramSocket_factory_)
  {
    v12 = [JavaNetDatagramSocket_factory_ createDatagramSocketImpl];
  }

  else
  {
    v12 = new_JavaNetPlainDatagramSocketImpl_init();
  }

  JreStrongAssign((a1 + 8), v12);
  [*(a1 + 8) create];
  if (a2)
  {
    [a1 bindWithJavaNetSocketAddress:a2];
  }

  return [a1 setBroadcastWithBoolean:1];
}

id JavaUtilTreeMap_init(uint64_t a1)
{
  JavaUtilAbstractMap_init();
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  v2 = qword_100554EE8;
  v5 = JavaUtilComparator_class_(v3, v4);
  if (v2 && ([v5 isInstance:v2] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return JreStrongAssign((a1 + 24), v2);
}

id JavaUtilTreeMap_initWithJavaUtilMap_(void *a1, void *a2)
{
  JavaUtilTreeMap_init(a1);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (!a2 || (v4 = [a2 entrySet]) == 0)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v5 = v4;
  result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (!v10)
        {
          goto LABEL_12;
        }

        [a1 putInternalWithId:objc_msgSend(*(*(&v11 + 1) + 8 * v9) withId:{"getKey"), objc_msgSend(v10, "getValue")}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

id JavaUtilTreeMap_initWithJavaUtilComparator_(uint64_t a1, void *a2)
{
  JavaUtilAbstractMap_init();
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  if (!a2)
  {
    a2 = qword_100554EE8;
    v6 = JavaUtilComparator_class_(v4, v5);
    if (a2)
    {
      if (([v6 isInstance:a2] & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }
  }

  return JreStrongAssign((a1 + 24), a2);
}

id JavaUtilTreeMap_initWithJavaUtilSortedMap_(id *a1, void *a2)
{
  JavaUtilAbstractMap_init();
  *(a1 + 10) = 0;
  *(a1 + 11) = 0;
  if (!a2)
  {
    goto LABEL_17;
  }

  v4 = [a2 comparator];
  if (v4)
  {
    v6 = v4;
    v7 = a1 + 3;
  }

  else
  {
    v8 = qword_100554EE8;
    v9 = JavaUtilComparator_class_(0, v5);
    if (v8 && ([v9 isInstance:v8] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v7 = a1 + 3;
    v6 = v8;
  }

  JreStrongAssign(v7, v6);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [a2 entrySet];
  if (!v10)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v11 = v10;
  result = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (result)
  {
    v13 = result;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (!v16)
        {
          goto LABEL_17;
        }

        [a1 putInternalWithId:objc_msgSend(*(*(&v17 + 1) + 8 * v15) withId:{"getKey"), objc_msgSend(v16, "getValue")}];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      result = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v13 = result;
    }

    while (result);
  }

  return result;
}

JavaUtilTreeMap_Node *new_JavaUtilTreeMap_Node_initWithJavaUtilTreeMap_Node_withId_(void *a1, void *a2)
{
  v4 = [JavaUtilTreeMap_Node alloc];
  objc_storeWeak(&v4->parent_, a1);
  JreStrongAssign(&v4->key_, a2);
  v4->height_ = 1;
  return v4;
}

uint64_t sub_1001DC104(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *(v4 + 16);
      if (v6)
      {
        result = *(v6 + 48);
      }

      else
      {
        result = 0;
      }

      v7 = *(v4 + 24);
      if (v7)
      {
        v8 = *(v7 + 48);
      }

      else
      {
        v8 = 0;
      }

      if (result - v8 == 2)
      {
        if (!v6)
        {
LABEL_43:
          JreThrowNullPointerException();
        }

        v13 = *(v6 + 24);
        if (v13)
        {
          LODWORD(v13) = *(v13 + 48);
        }

        v14 = *(v6 + 16);
        if (v14)
        {
          LODWORD(v14) = *(v14 + 48);
        }

        v15 = v14 - v13;
        if (v15)
        {
          v16 = 1;
        }

        else
        {
          v16 = a3;
        }

        if (v15 != 1 && v16)
        {
          sub_1001DC5E4(v5, v6);
        }

        result = sub_1001DC6D0(v5, v4);
        if (a3)
        {
          return result;
        }
      }

      else if (result - v8 == -2)
      {
        if (!v7)
        {
          goto LABEL_43;
        }

        v9 = *(v7 + 24);
        if (v9)
        {
          LODWORD(v9) = *(v9 + 48);
        }

        v10 = *(v7 + 16);
        if (v10)
        {
          LODWORD(v10) = *(v10 + 48);
        }

        v11 = v10 - v9;
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = a3;
        }

        if (v11 != -1)
        {
          if (v12)
          {
            sub_1001DC6D0(v5, *(v4 + 24));
          }
        }

        result = sub_1001DC5E4(v5, v4);
        if (a3)
        {
          return result;
        }
      }

      else if (result == v8)
      {
        *(v4 + 48) = result + 1;
        if (a3)
        {
          return result;
        }
      }

      else
      {
        result = JavaLangMath_maxWithInt_withInt_(result, v8);
        *(v4 + 48) = result + 1;
        if (!a3)
        {
          return result;
        }
      }

      result = objc_loadWeak((v4 + 8));
      v4 = result;
    }

    while (result);
  }

  return result;
}

id sub_1001DC4EC(uint64_t a1, id *a2, id *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  Weak = objc_loadWeak(a2 + 1);
  objc_storeWeak(a2 + 1, 0);
  if (a3)
  {
    objc_storeWeak(a3 + 1, Weak);
  }

  if (Weak)
  {
    v7 = (Weak + 2);
    if (Weak[2] != a2)
    {
      v7 = (Weak + 3);
    }
  }

  else
  {
    v7 = (a1 + 32);
  }

  return JreStrongAssign(v7, a3);
}

uint64_t sub_1001DC5E4(uint64_t a1, uint64_t a2)
{
  if (!a2 || (v4 = *(a2 + 24)) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a2 + 16);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  JreStrongAssign((a2 + 24), v6);
  if (v6)
  {
    objc_storeWeak((v6 + 8), a2);
  }

  sub_1001DC4EC(a1, a2, v4);
  JreStrongAssign((v4 + 16), a2);
  objc_storeWeak((a2 + 8), v4);
  if (v5)
  {
    v8 = *(v5 + 48);
    if (v6)
    {
LABEL_7:
      v9 = *(v6 + 48);
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_10:
  v10 = JavaLangMath_maxWithInt_withInt_(v8, v9) + 1;
  *(a2 + 48) = v10;
  if (v7)
  {
    v11 = *(v7 + 48);
  }

  else
  {
    v11 = 0;
  }

  result = JavaLangMath_maxWithInt_withInt_(v10, v11);
  *(v4 + 48) = result + 1;
  return result;
}

uint64_t sub_1001DC6D0(uint64_t a1, uint64_t a2)
{
  if (!a2 || (v4 = *(a2 + 16)) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a2 + 24);
  v6 = *(v4 + 24);
  v7 = *(v4 + 16);
  JreStrongAssign((a2 + 16), v6);
  if (v6)
  {
    objc_storeWeak((v6 + 8), a2);
  }

  sub_1001DC4EC(a1, a2, v4);
  JreStrongAssign((v4 + 24), a2);
  objc_storeWeak((a2 + 8), v4);
  if (v5)
  {
    v8 = *(v5 + 48);
    if (v6)
    {
LABEL_7:
      v9 = *(v6 + 48);
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_10:
  v10 = JavaLangMath_maxWithInt_withInt_(v8, v9) + 1;
  *(a2 + 48) = v10;
  if (v7)
  {
    v11 = *(v7 + 48);
  }

  else
  {
    v11 = 0;
  }

  result = JavaLangMath_maxWithInt_withInt_(v10, v11);
  *(v4 + 48) = result + 1;
  return result;
}

JavaUtilTreeMap_EntrySet *new_JavaUtilTreeMap_EntrySet_initWithJavaUtilTreeMap_(void *a1)
{
  v2 = [JavaUtilTreeMap_EntrySet alloc];
  objc_storeWeak(&v2->this$0_, a1);
  JavaUtilAbstractSet_init(v2, v3);
  return v2;
}

JavaUtilTreeMap_KeySet *new_JavaUtilTreeMap_KeySet_initWithJavaUtilTreeMap_(void *a1)
{
  v2 = [JavaUtilTreeMap_KeySet alloc];
  objc_storeWeak(&v2->this$0_, a1);
  JavaUtilAbstractSet_init(v2, v3);
  return v2;
}

JavaUtilTreeMap_ValuesCollection *new_JavaUtilTreeMap_ValuesCollection_initWithJavaUtilTreeMap_(void *a1)
{
  v2 = [JavaUtilTreeMap_ValuesCollection alloc];
  objc_storeWeak(&v2->this$0_, a1);
  JavaUtilAbstractCollection_init();
  return v2;
}

uint64_t JavaUtilTreeMap_countWithJavaUtilIterator_(void *a1)
{
  if (atomic_load_explicit(&JavaUtilTreeMap__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_1001E37C8();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = 0;
  if ([a1 hasNext])
  {
    do
    {
      [a1 next];
      v2 = (v2 + 1);
    }

    while (([a1 hasNext] & 1) != 0);
  }

  return v2;
}

JavaUtilTreeMap *new_JavaUtilTreeMap_init()
{
  v0 = [JavaUtilTreeMap alloc];
  JavaUtilTreeMap_init(v0);
  return v0;
}

JavaUtilTreeMap *new_JavaUtilTreeMap_initWithJavaUtilComparator_(void *a1)
{
  v2 = [JavaUtilTreeMap alloc];
  JavaUtilTreeMap_initWithJavaUtilComparator_(v2, a1);
  return v2;
}

JavaUtilTreeMap *new_JavaUtilTreeMap_initWithJavaUtilSortedMap_(void *a1)
{
  v2 = [JavaUtilTreeMap alloc];
  JavaUtilTreeMap_initWithJavaUtilSortedMap_(&v2->super.super.isa, a1);
  return v2;
}

IOSObjectArray *JavaUtilTreeMap_RelationEnum_values(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    a1 = sub_1001E37B0();
  }

  v2 = JavaUtilTreeMap_RelationEnum_class_(a1, a2);

  return [IOSObjectArray arrayWithObjects:JavaUtilTreeMap_RelationEnum_values_ count:6 type:v2];
}

void *JavaUtilTreeMap_RelationEnum_valueOfWithNSString_(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  v3 = 0;
  while (1)
  {
    v4 = JavaUtilTreeMap_RelationEnum_values_[v3];
    if ([a1 isEqual:{objc_msgSend(v4, "name")}])
    {
      break;
    }

    if (++v3 == 6)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v4;
}

uint64_t JavaUtilTreeMap_RelationEnum_class_(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  if (qword_100554EF8 != -1)
  {
    sub_1001E37D4();
  }

  return qword_100554EF0;
}

unint64_t sub_1001DE830(uint64_t a1, void *a2, void *a3, unint64_t a4, int a5, int a6)
{
  v9 = a3;
  if (*a2)
  {
    v11 = a2[3];
  }

  else
  {
    v11 = a2[4];
    *a2 = 1;
    a2[2] = a1 + 44;
  }

  v13 = a2[5];
  a2[1] = a3;
  if (v11)
  {
    v14 = a4 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v16 = 1;
    while (1)
    {
      v15 = v16;
      if (a5 == 1)
      {
        v18 = 32;
      }

      else
      {
        v17 = v11;
        if (a5 != 2)
        {
          goto LABEL_15;
        }

        v18 = 40;
      }

      v17 = *&v11[v18];
LABEL_15:
      *v9++ = v17;
      if (v11 == v13)
      {
        v11 = 0;
        goto LABEL_23;
      }

      if (a6)
      {
        v11 = [v11 next];
        if (!v11)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v11 = [v11 prev];
        if (!v11)
        {
          goto LABEL_23;
        }
      }

      v16 = v15 + 1;
      if (v15 >= a4)
      {
        goto LABEL_23;
      }
    }
  }

  v15 = 0;
LABEL_23:
  a2[3] = v11;
  return v15;
}

IOSObjectArray *JavaUtilTreeMap_BoundEnum_values(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    a1 = sub_1001E37BC();
  }

  v2 = JavaUtilTreeMap_BoundEnum_class_(a1, a2);

  return [IOSObjectArray arrayWithObjects:JavaUtilTreeMap_BoundEnum_values_ count:3 type:v2];
}

void *JavaUtilTreeMap_BoundEnum_valueOfWithNSString_(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v3 = 0;
  while (1)
  {
    v4 = JavaUtilTreeMap_BoundEnum_values_[v3];
    if ([a1 isEqual:{objc_msgSend(v4, "name")}])
    {
      break;
    }

    if (++v3 == 3)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v4;
}

uint64_t JavaUtilTreeMap_BoundEnum_class_(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (qword_100554F08 != -1)
  {
    sub_1001E37E8();
  }

  return qword_100554F00;
}

id JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(uint64_t a1, void *a2, char a3, void *a4, void *a5, void *a6, void *a7)
{
  JreStrongAssign((a1 + 24), a2);
  JavaUtilAbstractMap_init();
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (qword_1005580A0 != a5)
  {
    if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001E37BC();
    }

    if (qword_1005580A0 != a7)
    {
      v14 = a2[3];
      if (v14)
      {
        if ([v14 compareWithId:a4 withId:a6] >= 1)
        {
          v22 = JreStrcat("@$@", v15, v16, v17, v18, v19, v20, v21, a4);
          v23 = new_JavaLangIllegalArgumentException_initWithNSString_(v22);
          objc_exception_throw(v23);
        }

        goto LABEL_21;
      }

LABEL_24:
      JreThrowNullPointerException();
    }
  }

  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (qword_1005580A0 != a5)
  {
    v24 = a2[3];
    if (!v24)
    {
      goto LABEL_24;
    }

    v25 = a4;
    v26 = a4;
    goto LABEL_20;
  }

  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (qword_1005580A0 != a7)
  {
    v24 = a2[3];
    if (!v24)
    {
      goto LABEL_24;
    }

    v25 = a6;
    v26 = a6;
LABEL_20:
    [v24 compareWithId:v25 withId:v26];
  }

LABEL_21:
  *(a1 + 32) = a3;
  JreStrongAssign((a1 + 40), a4);
  JreStrongAssign((a1 + 48), a5);
  JreStrongAssign((a1 + 56), a6);

  return JreStrongAssign((a1 + 64), a7);
}

void *sub_1001DFD9C(uint64_t a1, int a2)
{
  if (*(a1 + 32) == a2)
  {
    v3 = [*(a1 + 48) ordinal];
    if (v3)
    {
      if (v3 != 1)
      {
        if (v3 == 2)
        {
          v4 = *(*(a1 + 24) + 32);
          if (!v4)
          {
            v15 = 0;
LABEL_23:
            if (atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire))
            {
              if (v15)
              {
LABEL_25:
                v16 = *(a1 + 64);
                v17 = qword_1005580A0;
                v18 = [v15 getKey];
                v19 = a1;
                v20 = v17;
                v21 = v16;
                goto LABEL_34;
              }
            }

            else
            {
              sub_1001E37BC();
              if (v15)
              {
                goto LABEL_25;
              }
            }

            return 0;
          }

          v5 = [v4 first];
LABEL_22:
          v15 = v5;
          goto LABEL_23;
        }

LABEL_43:
        v25 = new_JavaLangAssertionError_init();
        objc_exception_throw(v25);
      }

      v9 = *(a1 + 24);
      v10 = *(a1 + 40);
      if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1001E37B0();
      }

      v11 = qword_100558088;
    }

    else
    {
      v9 = *(a1 + 24);
      v10 = *(a1 + 40);
      if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1001E37B0();
      }

      v11 = qword_100558080;
    }

    v5 = [v9 findWithId:v10 withJavaUtilTreeMap_RelationEnum:v11];
    goto LABEL_22;
  }

  v6 = [*(a1 + 64) ordinal];
  if (!v6)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 56);
    if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001E37B0();
    }

    v14 = qword_100558068;
    goto LABEL_29;
  }

  if (v6 == 1)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 56);
    if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001E37B0();
    }

    v14 = JavaUtilTreeMap_RelationEnum_values_[0];
LABEL_29:
    v8 = [v12 findWithId:v13 withJavaUtilTreeMap_RelationEnum:v14];
    goto LABEL_30;
  }

  if (v6 != 2)
  {
    goto LABEL_43;
  }

  v7 = *(*(a1 + 24) + 32);
  if (v7)
  {
    v8 = [v7 last];
LABEL_30:
    v15 = v8;
    goto LABEL_31;
  }

  v15 = 0;
LABEL_31:
  v22 = *(a1 + 48);
  if (atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire))
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    sub_1001E37BC();
    if (!v15)
    {
      return 0;
    }
  }

  v23 = qword_1005580A0;
  v18 = [v15 getKey];
  v19 = a1;
  v20 = v22;
  v21 = v23;
LABEL_34:
  if (sub_1001E0314(v19, v18, v20, v21))
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

JavaLangIllegalArgumentException *sub_1001E01BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!a3 || ([a3 leftCapWithId:*(a1 + 40)], !a4))
  {
    JreThrowNullPointerException();
  }

  [a4 rightCapWithId:*(a1 + 56)];
  v14 = JreStrcat("@$$$$", v7, v8, v9, v10, v11, v12, v13, a2);
  v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);

  return v15;
}

BOOL sub_1001E0314(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (JavaUtilTreeMap_BoundEnum_values_[0] == a3)
  {
    v9 = *(a1[3] + 24);
    if (!v9)
    {
      goto LABEL_24;
    }

    if (([v9 compareWithId:a2 withId:a1[5]] & 0x80000000) != 0)
    {
      return 0;
    }
  }

  else
  {
    if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001E37BC();
    }

    if (qword_100558098 == a3)
    {
      v8 = *(a1[3] + 24);
      if (!v8)
      {
        goto LABEL_24;
      }

      if ([v8 compareWithId:a2 withId:a1[5]] < 1)
      {
        return 0;
      }
    }
  }

  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (JavaUtilTreeMap_BoundEnum_values_[0] == a4)
  {
    v12 = *(a1[3] + 24);
    if (v12)
    {
      return [v12 compareWithId:a2 withId:a1[7]] <= 0;
    }

LABEL_24:
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (qword_100558098 != a4)
  {
    return 1;
  }

  v10 = *(a1[3] + 24);
  if (!v10)
  {
    goto LABEL_24;
  }

  return ([v10 compareWithId:a2 withId:a1[7]] & 0x80000000) != 0;
}

id sub_1001E0700(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    goto LABEL_57;
  }

  v5 = [a3 forOrderWithBoolean:*(a1 + 32)];
  v6 = &OBJC_IVAR___LibcoreUtilMutableInt_value_;
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v9 = JavaUtilCollections_ReverseComparator__initialized;
  if (v8 != qword_1005580A0)
  {
    if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001E37B0();
      v6 = &OBJC_IVAR___LibcoreUtilMutableInt_value_;
    }

    if (v5 == JavaUtilTreeMap_RelationEnum_values_[0])
    {
      goto LABEL_11;
    }

    if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001E37B0();
    }

    if (v5 == qword_100558068)
    {
LABEL_11:
      v10 = *(*(a1 + 24) + 24);
      if (!v10)
      {
        goto LABEL_57;
      }

      v11 = [v10 compareWithId:*(a1 + 56) withId:a2];
      if (v11 <= 0)
      {
        v17 = v11;
        a2 = *(a1 + 56);
        v18 = *(a1 + 64);
        if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1001E37BC();
        }

        if (v18 == qword_100558098)
        {
          v9 = JavaUtilCollections_ReverseComparator__initialized;
          if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1001E37B0();
          }

          v5 = JavaUtilTreeMap_RelationEnum_values_[0];
        }

        else
        {
          v9 = JavaUtilCollections_ReverseComparator__initialized;
          if (v17 < 0)
          {
            if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
            {
              sub_1001E37B0();
            }

            v5 = qword_100558068;
          }
        }
      }

      else
      {
        v9 = JavaUtilCollections_ReverseComparator__initialized;
      }

      if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1001E37BC();
      }

      v8 = *(v9 + 20);
      v6 = &OBJC_IVAR___LibcoreUtilMutableInt_value_;
    }
  }

  v12 = *(a1 + v6[335]);
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (v12 != *(v9 + 20))
  {
    if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001E37B0();
    }

    if (v5 == qword_100558080)
    {
      goto LABEL_26;
    }

    if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001E37B0();
    }

    if (v5 == qword_100558088)
    {
LABEL_26:
      v13 = *(*(a1 + 24) + 24);
      if (v13)
      {
        v14 = [v13 compareWithId:*(a1 + 40) withId:a2];
        if ((v14 & 0x80000000) == 0)
        {
          v15 = v14;
          a2 = *(a1 + 40);
          v16 = *(a1 + v6[335]);
          if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1001E37BC();
          }

          if (v16 == qword_100558098)
          {
            if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
            {
              sub_1001E37B0();
            }

            v5 = qword_100558088;
          }

          else if (v15)
          {
            if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
            {
              sub_1001E37B0();
            }

            v5 = qword_100558080;
          }
        }

        if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1001E37BC();
        }

        v7 = *(v9 + 20);
        goto LABEL_49;
      }

LABEL_57:
      JreThrowNullPointerException();
    }
  }

LABEL_49:
  result = [*(a1 + 24) findWithId:a2 withJavaUtilTreeMap_RelationEnum:v5];
  if (result)
  {
    v20 = result;
    if (sub_1001E0314(a1, [result getKey], v7, v8))
    {
      return v20;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

JavaUtilTreeMap_BoundedMap_BoundedEntrySet *new_JavaUtilTreeMap_BoundedMap_BoundedEntrySet_initWithJavaUtilTreeMap_BoundedMap_(void *a1)
{
  v2 = [JavaUtilTreeMap_BoundedMap_BoundedEntrySet alloc];
  objc_storeWeak(&v2->this$0_, a1);
  JavaUtilAbstractSet_init(v2, v3);
  return v2;
}

JavaUtilTreeMap_BoundedMap_BoundedKeySet *new_JavaUtilTreeMap_BoundedMap_BoundedKeySet_initWithJavaUtilTreeMap_BoundedMap_(void *a1)
{
  v2 = [JavaUtilTreeMap_BoundedMap_BoundedKeySet alloc];
  objc_storeWeak(&v2->this$0_, a1);
  JavaUtilAbstractSet_init(v2, v3);
  return v2;
}

JavaUtilTreeMap_BoundedMap_BoundedValuesCollection *new_JavaUtilTreeMap_BoundedMap_BoundedValuesCollection_initWithJavaUtilTreeMap_BoundedMap_(void *a1)
{
  v2 = [JavaUtilTreeMap_BoundedMap_BoundedValuesCollection alloc];
  objc_storeWeak(&v2->this$0_, a1);
  JavaUtilAbstractCollection_init();
  return v2;
}

JavaUtilTreeMap_BoundedMap *sub_1001E1314(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  if (*(a1 + 32))
  {
    v6 = a5;
  }

  else
  {
    v6 = a3;
  }

  if (*(a1 + 32))
  {
    v7 = a4;
  }

  else
  {
    v7 = a2;
  }

  if (*(a1 + 32))
  {
    v8 = a3;
  }

  else
  {
    v8 = a5;
  }

  if (*(a1 + 32))
  {
    v9 = a2;
  }

  else
  {
    v9 = a4;
  }

  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (v8 == qword_1005580A0)
  {
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
  }

  else
  {
    v10 = *(a1 + 48);
    if (v8 == v10)
    {
      if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1001E37BC();
      }

      v10 = JavaUtilTreeMap_BoundEnum_values_[0];
    }

    if (!sub_1001E0314(a1, v9, v10, *(a1 + 64)))
    {
      v11 = *(a1 + 64);
      v12 = a1;
      v13 = v7;
      v14 = v10;
      goto LABEL_32;
    }
  }

  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (v6 == qword_1005580A0)
  {
    v7 = *(a1 + 56);
    v6 = *(a1 + 64);
  }

  else
  {
    v15 = *(a1 + 64);
    if (v6 == v15)
    {
      if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1001E37BC();
      }

      v15 = JavaUtilTreeMap_BoundEnum_values_[0];
    }

    if (!sub_1001E0314(a1, v7, *(a1 + 48), v15))
    {
      v14 = *(a1 + 48);
      v12 = a1;
      v13 = v7;
      v11 = v15;
LABEL_32:
      v16 = sub_1001E01BC(v12, v13, v14, v11);
      objc_exception_throw(v16);
    }
  }

  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v19 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v19, v17, v18, v9, v8, v7, v6);

  return v19;
}

id JavaUtilTreeMap_BoundedMap_BoundedIterator_initWithJavaUtilTreeMap_BoundedMap_withJavaUtilTreeMap_Node_(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 40), a2);
  v6 = a2[3];
  JreStrongAssign((a1 + 32), v6);
  *(a1 + 24) = v6[11];

  return JreStrongAssign((a1 + 8), a3);
}

id sub_1001E20D8(uint64_t a1, id *a2, void *a3)
{
  JreStrongAssign((a1 + 48), a2);
  Weak = objc_loadWeak(a2 + 1);

  return JavaUtilTreeMap_BoundedMap_BoundedIterator_initWithJavaUtilTreeMap_BoundedMap_withJavaUtilTreeMap_Node_(a1, Weak, a3);
}

id sub_1001E2B50(uint64_t a1, id *a2, void *a3)
{
  JreStrongAssign((a1 + 48), a2);
  Weak = objc_loadWeak(a2 + 1);

  return JavaUtilTreeMap_BoundedMap_BoundedIterator_initWithJavaUtilTreeMap_BoundedMap_withJavaUtilTreeMap_Node_(a1, Weak, a3);
}

id sub_1001E2CB0(uint64_t a1, id *a2, void *a3)
{
  JreStrongAssign((a1 + 48), a2);
  Weak = objc_loadWeak(a2 + 1);

  return JavaUtilTreeMap_BoundedMap_BoundedIterator_initWithJavaUtilTreeMap_BoundedMap_withJavaUtilTreeMap_Node_(a1, Weak, a3);
}

id sub_1001E3060(uint64_t a1, id *a2, void *a3)
{
  JreStrongAssign((a1 + 48), a2);
  Weak = objc_loadWeak(a2 + 1);

  return JavaUtilTreeMap_BoundedMap_BoundedIterator_initWithJavaUtilTreeMap_BoundedMap_withJavaUtilTreeMap_Node_(a1, Weak, a3);
}

id JavaUtilTreeMap_NavigableSubMap_initWithJavaUtilTreeMap_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  JavaUtilAbstractMap_init();
  JreStrongAssign((a1 + 24), a2);
  JreStrongAssign((a1 + 32), a3);
  result = JreStrongAssign((a1 + 40), a5);
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_1001E37BC();
  }

  *(a1 + 48) = qword_1005580A0 == a4;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_1001E37BC();
  }

  *(a1 + 49) = qword_1005580A0 == a6;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_1001E37BC();
  }

  *(a1 + 50) = JavaUtilTreeMap_BoundEnum_values_[0] == a4;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_1001E37BC();
  }

  *(a1 + 51) = JavaUtilTreeMap_BoundEnum_values_[0] == a6;
  return result;
}

JavaNetInet6Address *JavaNetInet6Address_getByAddressWithNSString_withByteArray_withInt_(void *a1, _DWORD *a2, int a3)
{
  if (atomic_load_explicit(JavaNetInet6Address__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1001CC9D8();
    if (!a2)
    {
LABEL_8:
      JavaUtilArrays_toStringWithByteArray_(a2);
      v15 = JreStrcat("$$", v8, v9, v10, v11, v12, v13, v14, @"Not an IPv6 address: ");
      v16 = new_JavaNetUnknownHostException_initWithNSString_(v15);
      objc_exception_throw(v16);
    }
  }

  if (a2[2] != 16)
  {
    goto LABEL_8;
  }

  v6 = new_JavaNetInet6Address_initWithByteArray_withNSString_withInt_(a2, a1, a3 & ~(a3 >> 31));

  return v6;
}

JavaNetInet6Address *JavaNetInet6Address_getByAddressWithNSString_withByteArray_withJavaNetNetworkInterface_(void *a1, _DWORD *a2, void *a3)
{
  if ((atomic_load_explicit(JavaNetInet6Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9D8();
  }

  v6 = JavaNetInet6Address_getByAddressWithNSString_withByteArray_withInt_(a1, a2, 0);
  if (a3)
  {
    v7 = [a3 getInetAddresses];
    if (v7)
    {
      v8 = v7;
      if ([v7 hasMoreElements])
      {
        while (1)
        {
          v9 = [v8 nextElement];
          if (!v9)
          {
            goto LABEL_17;
          }

          v10 = v9;
          v11 = [v9 getAddress];
          if (!v11)
          {
            goto LABEL_17;
          }

          if (v11[2] == 16)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              JreThrowClassCastException();
            }

            if (sub_1001E3ADC(v10, v6))
            {
              break;
            }
          }

          if (([v8 hasMoreElements] & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        if (v6)
        {
          *(&v6->super.family_ + 4) = 1;
          *&v6->scope_id_set_ = v10[8];
          LOBYTE(v6->scope_id_) = 1;
          JreStrongAssign((&v6->scope_ifname_set_ + 4), [a3 getName]);
LABEL_13:
          if ((*(&v6->super.family_ + 1) & 1) == 0)
          {
            JavaUtilArrays_toStringWithByteArray_(a2);
            v20 = JreStrcat("$$", v13, v14, v15, v16, v17, v18, v19, @"Scope id not found for address: ");
            v21 = new_JavaNetUnknownHostException_initWithNSString_(v20);
            objc_exception_throw(v21);
          }

          return v6;
        }
      }

      else
      {
LABEL_12:
        if (v6)
        {
          goto LABEL_13;
        }
      }
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  return v6;
}

BOOL sub_1001E3ADC(void *a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  return [a2 isSiteLocalAddress] && (objc_msgSend(a1, "isSiteLocalAddress") & 1) != 0 || objc_msgSend(a2, "isLinkLocalAddress") && (objc_msgSend(a1, "isLinkLocalAddress") & 1) != 0 || (objc_msgSend(a2, "isSiteLocalAddress") & 1) == 0 && !objc_msgSend(a2, "isLinkLocalAddress");
}

void sub_1001E42CC(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1001E42B8);
}

JavaNetInet6Address *new_JavaNetInet6Address_initWithByteArray_withNSString_withInt_(void *a1, void *a2, int a3)
{
  v6 = [JavaNetInet6Address alloc];
  JavaNetInetAddress_initWithInt_withByteArray_withNSString_(v6, 30, a1, a2);
  *&v6->scope_id_set_ = a3;
  *(&v6->super.family_ + 4) = a3 != 0;
  return v6;
}

JavaTextSimpleDateFormat *sub_1001E4CC4(uint64_t a1, void *a2, void *a3)
{
  if (!a2 || (v6 = [a2 length], !a3))
  {
    JreThrowNullPointerException();
  }

  v7 = v6;
  v8 = [a3 getIndex];
  if (v8 >= v7 || (v9 = v8, v10 = [a2 charAtWithInt:v8], v11 = v10, v10 != 44) && v10 != 125)
  {
    v38 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Missing element format");
    objc_exception_throw(v38);
  }

  [a3 setIndexWithInt:(v9 + 1)];
  if (v11 == 125)
  {
    return 0;
  }

  v43[0] = off_1004325E0;
  v43[1] = off_1004325F0;
  v13 = [IOSObjectArray arrayWithObjects:v43 count:4 type:NSString_class_()];
  v14 = sub_1001E6878(a2, a3, 0, v13);
  if (v14 == -1)
  {
    v39 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Unknown element format");
    objc_exception_throw(v39);
  }

  v15 = new_JavaLangStringBuffer_init();
  v16 = [a2 charAtWithInt:{objc_msgSend(a3, "getIndex") - 1}];
  if (v14 >= 2)
  {
    if (v14 == 2)
    {
      if (v16 == 125)
      {
        return JavaTextNumberFormat_getInstanceWithJavaUtilLocale_(*(a1 + 8));
      }

      else
      {
        v40 = off_100432620;
        v41 = @"integer";
        v33 = [IOSObjectArray arrayWithObjects:&v40 count:3 type:NSString_class_()];
        v34 = sub_1001E6878(a2, a3, 1, v33);
        if (v34 == 1)
        {
          return JavaTextNumberFormat_getPercentInstanceWithJavaUtilLocale_(*(a1 + 8), v35);
        }

        else if (v34)
        {
          if (v34 == -1)
          {
            JavaTextFormat_upToWithQuotesWithNSString_withJavaTextParsePosition_withJavaLangStringBuffer_withChar_withChar_(a2, a3, v15, 125, 123);
            v36 = [(JavaLangStringBuffer *)v15 description:v40];
            v37 = new_JavaTextDecimalFormatSymbols_initWithJavaUtilLocale_(*(a1 + 8));
            return new_JavaTextDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(v36, v37);
          }

          else
          {
            return JavaTextNumberFormat_getIntegerInstanceWithJavaUtilLocale_(*(a1 + 8), v35);
          }
        }

        else
        {
          return JavaTextNumberFormat_getCurrencyInstanceWithJavaUtilLocale_(*(a1 + 8), v35);
        }
      }
    }

    else
    {
      JavaTextFormat_upToWithQuotesWithNSString_withJavaTextParsePosition_withJavaLangStringBuffer_withChar_withChar_(a2, a3, v15, 125, 123);
      return new_JavaTextChoiceFormat_initWithNSString_([(JavaLangStringBuffer *)v15 description]);
    }
  }

  else if (v16 == 125)
  {
    v23 = *(a1 + 8);
    if (v14 == 1)
    {
      return JavaTextDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(2, v23, v17, v18, v19, v20, v21, v22);
    }

    else
    {
      return JavaTextDateFormat_getTimeInstanceWithInt_withJavaUtilLocale_(2, v23, v17, v18, v19, v20, v21, v22);
    }
  }

  else
  {
    v42[0] = off_100432600;
    v42[1] = off_100432610;
    v24 = [IOSObjectArray arrayWithObjects:v42 count:4 type:NSString_class_()];
    v25 = sub_1001E6878(a2, a3, 1, v24);
    if (v25 == -1)
    {
      JavaTextFormat_upToWithQuotesWithNSString_withJavaTextParsePosition_withJavaLangStringBuffer_withChar_withChar_(a2, a3, v15, 125, 123);
      return new_JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_([(JavaLangStringBuffer *)v15 description], *(a1 + 8));
    }

    else
    {
      v32 = *(a1 + 8);
      if (v14 == 1)
      {
        return JavaTextDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(v25, v32, v26, v27, v28, v29, v30, v31);
      }

      else
      {
        return JavaTextDateFormat_getTimeInstanceWithInt_withJavaUtilLocale_(v25, v32, v26, v27, v28, v29, v30, v31);
      }
    }
  }
}

void *sub_1001E5550(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v52 = new_JavaTextFieldPosition_initWithInt_(0);
  v9 = *(a1 + 40);
  if ((v9 & 0x80000000) == 0)
  {
    if (a3)
    {
      v10 = 0;
      v53 = a5;
      while (1)
      {
        v11 = *(a1 + 16);
        if (!v11)
        {
          break;
        }

        v12 = *(v11 + 8);
        if ((v10 & 0x80000000) != 0 || v10 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v10);
        }

        [a3 appendWithNSString:*(v11 + 24 + 8 * v10)];
        v13 = [a3 length];
        if (!a2)
        {
          goto LABEL_23;
        }

        v14 = *(a1 + 24);
        if (!v14)
        {
          break;
        }

        v15 = *(v14 + 8);
        if ((v10 & 0x80000000) != 0 || v10 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v10);
        }

        v16 = *(a2 + 8);
        if (*(v14 + 12 + 4 * v10) >= v16)
        {
LABEL_23:
          [a3 appendWithChar:123];
          v25 = *(a1 + 24);
          if (!v25)
          {
            break;
          }

          v26 = *(v25 + 8);
          if ((v10 & 0x80000000) != 0 || v10 >= v26)
          {
            IOSArray_throwOutOfBoundsWithMsg(v26, v10);
          }

          [a3 appendWithInt:*(v25 + 12 + 4 * v10)];
          [a3 appendWithChar:125];
          v27 = [a3 length];
          v28 = *(a1 + 24);
          v29 = *(v28 + 8);
          if ((v10 & 0x80000000) != 0 || v10 >= v29)
          {
            IOSArray_throwOutOfBoundsWithMsg(v29, v10);
          }

          sub_1001E5A84(v13, v27, *(v28 + 12 + 4 * v10), a4, a5);
          goto LABEL_41;
        }

        v17 = *(a1 + 24);
        v18 = *(v17 + 8);
        if ((v10 & 0x80000000) != 0 || v10 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v10);
        }

        v19 = *(v17 + 12 + 4 * v10);
        if (v19 < 0 || v19 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v19);
        }

        v20 = *(a1 + 32);
        if (!v20)
        {
          break;
        }

        v21 = *(a2 + 24 + 8 * v19);
        v22 = *(v20 + 8);
        if ((v10 & 0x80000000) != 0 || v10 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, v10);
        }

        v23 = *(v20 + 24 + 8 * v10);
        if (!v23 || !v21)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            Instance = JavaTextNumberFormat_getInstance();
          }

          else
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if ((isKindOfClass & 1) == 0)
            {
              [a3 appendWithId:v21];
              v44 = [a3 length];
              v45 = *(a1 + 24);
              if (!v45)
              {
                break;
              }

              v46 = v44;
              v47 = *(v45 + 8);
              if ((v10 & 0x80000000) != 0 || v10 >= v47)
              {
                IOSArray_throwOutOfBoundsWithMsg(v47, v10);
              }

              a5 = v53;
              sub_1001E5A84(v13, v46, *(v45 + 12 + 4 * v10), a4, v53);
              goto LABEL_41;
            }

            Instance = JavaTextDateFormat_getInstance(isKindOfClass, v31, v32, v33, v34, v35, v36, v37);
          }

          v23 = Instance;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v23)
          {
            break;
          }

          v38 = new_JavaTextMessageFormat_initWithNSString_([v23 formatWithId:v21]);
          [(JavaTextMessageFormat *)v38 setLocaleWithJavaUtilLocale:*(a1 + 8)];
          sub_1001E5550(v38, a2, a3, v52, 0);
        }

        else
        {
          if (!v23)
          {
            break;
          }

          [v23 formatWithId:v21 withJavaLangStringBuffer:a3 withJavaTextFieldPosition:v52];
        }

        v39 = [a3 length];
        v40 = *(a1 + 24);
        if (!v40)
        {
          break;
        }

        v41 = v39;
        v42 = *(v40 + 8);
        if ((v10 & 0x80000000) != 0 || v10 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, v10);
        }

        sub_1001E5A84(v13, v41, *(v40 + 12 + 4 * v10), a4, v53);
        v43 = v23;
        a5 = v53;
        sub_1001E5BC4(v43, v21, v13, v53);
LABEL_41:
        v10 = (v10 + 1);
        v9 = *(a1 + 40);
        if (v10 > v9)
        {
          goto LABEL_56;
        }
      }
    }

LABEL_62:
    JreThrowNullPointerException();
  }

LABEL_56:
  v48 = *(a1 + 16);
  if (!v48)
  {
    goto LABEL_62;
  }

  v49 = v9 + 1;
  v50 = *(v48 + 8);
  if (v49 < v50)
  {
    if (!a3)
    {
      goto LABEL_62;
    }

    if (v9 <= -2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v50, v9 + 1);
    }

    [a3 appendWithNSString:*(v48 + 24 + 8 * v49)];
  }

  return a3;
}

id sub_1001E5A84(id result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = result;
  if (a5)
  {
    v8 = a3;
    if ((atomic_load_explicit(JavaTextMessageFormat_Field__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001E7F6C();
    }

    v9 = JavaTextMessageFormat_Field_ARGUMENT_;
    v10 = JavaLangInteger_valueOfWithInt_(v8);
    v11 = sub_1001E7F00(v6, a2, v9, v10);

    return [a5 addWithId:v11];
  }

  else if (a4)
  {
    result = [a4 getFieldAttribute];
    v13 = result;
    if ((atomic_load_explicit(JavaTextMessageFormat_Field__initialized, memory_order_acquire) & 1) == 0)
    {
      result = sub_1001E7F6C();
    }

    if (v13 == JavaTextMessageFormat_Field_ARGUMENT_)
    {
      result = [a4 getEndIndex];
      if (!result)
      {
        [a4 setBeginIndexWithInt:v6];

        return [a4 setEndIndexWithInt:a2];
      }
    }
  }

  return result;
}

id sub_1001E5BC4(id result, uint64_t a2, int a3, void *a4)
{
  if (a4)
  {
    if (!result)
    {
      goto LABEL_14;
    }

    v6 = [result formatToCharacterIteratorWithId:a2];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = [v6 getIndex];
    result = [v7 getEndIndex];
    if (v8 != result)
    {
      while (1)
      {
        v9 = [v7 getRunStart];
        v10 = [v7 getRunLimit];
        v11 = [v7 getAttributes];
        if (!v11)
        {
          break;
        }

        v12 = [v11 keySet];
        if (!v12)
        {
          break;
        }

        v13 = [v12 iterator];
        if (!v13)
        {
          break;
        }

        v14 = v13;
        if ([v13 hasNext])
        {
          do
          {
            v15 = [v14 next];
            objc_opt_class();
            if (v15)
            {
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                JreThrowClassCastException();
              }
            }

            [a4 addWithId:{sub_1001E7F00(v9 + a3, v10 + a3, v15, objc_msgSend(v7, "getAttributeWithJavaTextAttributedCharacterIterator_Attribute:", v15))}];
          }

          while (([v14 hasNext] & 1) != 0);
        }

        [v7 setIndexWithInt:v10];
        v16 = [v7 getIndex];
        result = [v7 getEndIndex];
        if (v16 == result)
        {
          return result;
        }
      }

LABEL_14:
      JreThrowNullPointerException();
    }
  }

  return result;
}

JavaTextMessageFormat *JavaTextMessageFormat_formatWithNSString_withNSObjectArray_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(&JavaTextMessageFormat__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1001E7F78();
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      if (!*(a2 + 24 + 8 * v4))
      {
        IOSObjectArray_Set(a2, v4, @"null");
      }

      ++v4;
    }

    while (v4 < *(a2 + 8));
  }

LABEL_8:
  v5 = new_JavaTextMessageFormat_initWithNSString_(a1);

  return [(JavaTextFormat *)v5 formatWithId:a2];
}

uint64_t sub_1001E6878(void *a1, void *a2, char a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_29;
  }

  v8 = [a1 length];
  if (!a2)
  {
    goto LABEL_29;
  }

  v9 = v8;
  v10 = [a2 getIndex];
  if (v10 < v9)
  {
    while (1)
    {
      v11 = [a1 charAtWithInt:v10];
      if (!JavaLangCharacter_isWhitespaceWithChar_(v11, v12))
      {
        break;
      }

      v10 = (v10 + 1);
      if (v9 == v10)
      {
        v10 = v9;
        break;
      }
    }
  }

  if (!a4)
  {
    goto LABEL_29;
  }

  v27 = a3;
  v26 = a2;
  LODWORD(v13) = *(a4 + 8);
  v14 = v13 - 1;
  do
  {
    v13 = (v13 - 1);
    if (v13 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    v15 = *(a4 + 8);
    if (v15 <= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v13);
    }

    v16 = v14 & 0x7FFFFFFF;
    if (!*(a4 + 24 + 8 * v16))
    {
      goto LABEL_29;
    }

    v17 = [a1 regionMatches:1 thisOffset:v10 aString:*(a4 + 24 + 8 * (v14 & 0x7FFFFFFF)) otherOffset:0 count:{objc_msgSend(*(a4 + 24 + 8 * (v14 & 0x7FFFFFFF)), "length")}];
    --v14;
  }

  while (!v17);
  v18 = *(a4 + 8);
  if (v18 <= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v13);
  }

  v19 = *(a4 + 24 + 8 * v16);
  if (!v19)
  {
LABEL_29:
    JreThrowNullPointerException();
  }

  for (i = v10 + [v19 length]; i < v9; i = (i + 1))
  {
    v21 = [a1 charAtWithInt:i];
    if (!JavaLangCharacter_isWhitespaceWithChar_(v21, v22))
    {
      v23 = [a1 charAtWithInt:i];
      if (v23 == 44)
      {
        v24 = v27;
      }

      else
      {
        v24 = 1;
      }

      if (v23 == 125 || (v24 & 1) == 0)
      {
        [v26 setIndexWithInt:{(i + 1), v26}];
        return v13;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return 0xFFFFFFFFLL;
}

id sub_1001E6DBC(uint64_t a1, void *a2, void *a3)
{
  if (!a2 || ([a2 appendWithNSString:{@", number"}], !a3))
  {
    JreThrowNullPointerException();
  }

  if ([a3 isEqual:{JavaTextNumberFormat_getNumberInstanceWithJavaUtilLocale_(*(a1 + 8), v6)}])
  {
    return 0;
  }

  if ([a3 isEqual:{JavaTextNumberFormat_getIntegerInstanceWithJavaUtilLocale_(*(a1 + 8), v7)}])
  {
    v9 = @",integer";
LABEL_10:
    [a2 appendWithNSString:v9];
    return 0;
  }

  if ([a3 isEqual:{JavaTextNumberFormat_getCurrencyInstanceWithJavaUtilLocale_(*(a1 + 8), v8)}])
  {
    v9 = @",currency";
    goto LABEL_10;
  }

  if ([a3 isEqual:{JavaTextNumberFormat_getPercentInstanceWithJavaUtilLocale_(*(a1 + 8), v10)}])
  {
    v9 = @",percent";
    goto LABEL_10;
  }

  [a2 appendWithChar:44];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [a3 toPattern];
}

id sub_1001E6F04(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    goto LABEL_32;
  }

  if ([a3 isEqual:{JavaTextDateFormat_getTimeInstanceWithInt_withJavaUtilLocale_(2, *(a1 + 8), a3, a4, a5, a6, a7, a8)}])
  {
    if (a2)
    {
      v17 = @",time";
LABEL_26:
      [a2 appendWithNSString:v17];
      return 0;
    }

    goto LABEL_32;
  }

  if ([a3 isEqual:{JavaTextDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(2, *(a1 + 8), v11, v12, v13, v14, v15, v16)}])
  {
    if (a2)
    {
      v17 = @",date";
      goto LABEL_26;
    }

LABEL_32:
    JreThrowNullPointerException();
  }

  if ([a3 isEqual:{JavaTextDateFormat_getTimeInstanceWithInt_withJavaUtilLocale_(3, *(a1 + 8), v18, v19, v20, v21, v22, v23)}])
  {
    if (a2)
    {
      v17 = @",time,short";
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  if ([a3 isEqual:{JavaTextDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(3, *(a1 + 8), v24, v25, v26, v27, v28, v29)}])
  {
    if (a2)
    {
      v17 = @",date,short";
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  if ([a3 isEqual:{JavaTextDateFormat_getTimeInstanceWithInt_withJavaUtilLocale_(1, *(a1 + 8), v30, v31, v32, v33, v34, v35)}])
  {
    if (a2)
    {
      v17 = @",time,long";
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  v42 = [a3 isEqual:{JavaTextDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(1, *(a1 + 8), v36, v37, v38, v39, v40, v41)}];
  if (v42)
  {
    if (a2)
    {
      v17 = @",date,long";
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  v49 = [a3 isEqual:{JavaTextDateFormat_getTimeInstanceWithInt_withJavaUtilLocale_(v42, *(a1 + 8), v43, v44, v45, v46, v47, v48)}];
  if (v49)
  {
    if (a2)
    {
      v17 = @",time,full";
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  if ([a3 isEqual:{JavaTextDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(v49, *(a1 + 8), v50, v51, v52, v53, v54, v55)}])
  {
    if (a2)
    {
      v17 = @",date,full";
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    goto LABEL_32;
  }

  [a2 appendWithNSString:{@", date, "}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [a3 toPattern];
}

id sub_1001E7478(void *a1, void *a2)
{
  if (!a2)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  result = [a2 length];
  v5 = result;
  if (result >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [a2 charAtWithInt:v6];
      v8 = v7;
      if (v7 == 125 || v7 == 123)
      {
        if (!a1)
        {
          goto LABEL_11;
        }

        [a1 appendWithChar:39];
        [a1 appendWithChar:v8];
        v8 = 39;
      }

      else if (!a1)
      {
        goto LABEL_11;
      }

      result = [a1 appendWithChar:v8];
      v6 = (v6 + 1);
    }

    while (v5 != v6);
  }

  return result;
}

JavaTextMessageFormat *new_JavaTextMessageFormat_initWithNSString_(uint64_t a1)
{
  v2 = [JavaTextMessageFormat alloc];
  Default = JavaUtilLocale_getDefault();
  JavaTextFormat_init();
  JreStrongAssign(&v2->locale_, Default);
  [(JavaTextMessageFormat *)v2 applyPatternWithNSString:a1];
  return v2;
}

JavaTextMessageFormat_FieldContainer *sub_1001E7F00(int a1, int a2, void *a3, void *a4)
{
  v8 = [JavaTextMessageFormat_FieldContainer alloc];
  v8->start_ = a1;
  v8->end_ = a2;
  JreStrongAssign(&v8->attribute_, a3);
  JreStrongAssign(&v8->value_, a4);
  return v8;
}

uint64_t JavaLangReflectTypeVariable_class_(uint64_t a1, uint64_t a2)
{
  if (qword_100554F28 != -1)
  {
    sub_1001E7FF0();
  }

  return qword_100554F20;
}

id JavaNioSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_withBoolean_(uint64_t a1, uint64_t a2, int a3)
{
  JavaNioChannelsSocketChannel_initWithJavaNioChannelsSpiSelectorProvider_(a1, a2);
  JreStrongAssign((a1 + 63), 0);
  JreStrongAssign((a1 + 71), 0);
  JreStrongAssign((a1 + 79), 0);
  *(a1 + 91) = -1;
  atomic_store(0, (a1 + 95));
  JreStrongAssignAndConsume((a1 + 103), [NSObject alloc]);
  JreStrongAssignAndConsume((a1 + 111), [NSObject alloc]);
  *(a1 + 91) = 0;
  if (a3)
  {
    v5 = LibcoreIoIoBridge_socketWithBoolean_(1);
  }

  else
  {
    v5 = new_JavaIoFileDescriptor_init();
  }

  return JreStrongAssign((a1 + 55), v5);
}

id JavaNioSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_withJavaIoFileDescriptor_(uint64_t a1, uint64_t a2, void *a3)
{
  JavaNioChannelsSocketChannel_initWithJavaNioChannelsSpiSelectorProvider_(a1, a2);
  JreStrongAssign((a1 + 63), 0);
  JreStrongAssign((a1 + 71), 0);
  JreStrongAssign((a1 + 79), 0);
  *(a1 + 91) = -1;
  atomic_store(0, (a1 + 95));
  JreStrongAssignAndConsume((a1 + 103), [NSObject alloc]);
  JreStrongAssignAndConsume((a1 + 111), [NSObject alloc]);
  *(a1 + 91) = 2;

  return JreStrongAssign((a1 + 55), a3);
}

void *JavaNioSocketChannelImpl_validateAddressWithJavaNetSocketAddress_(void *a1)
{
  if (!a1)
  {
    v3 = new_JavaLangIllegalArgumentException_initWithNSString_(@"socketAddress == null");
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = new_JavaNioChannelsUnsupportedAddressTypeException_init();
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if ([a1 isUnresolved])
  {
    v3 = new_JavaNioChannelsUnresolvedAddressException_init();
LABEL_10:
    objc_exception_throw(v3);
  }

  return a1;
}

BOOL sub_1001E8B68(void *a1, void *a2)
{
  if ([a1 isBlocking])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  v3 = [a2 getCause];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!v3)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v3[21] == 36;
}

uint64_t sub_1001E8FCC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 103);
  objc_sync_enter(v4);
  if ([a1 isBlocking])
  {
    [a1 begin];
  }

  v5 = LibcoreIoIoBridge_recvfromWithBoolean_withJavaIoFileDescriptor_withJavaNioByteBuffer_withInt_withJavaNetDatagramPacket_withBoolean_(1, *(a1 + 55), a2, 0, 0, 0);
  if (v5 >= 1)
  {
    if (!a2)
    {
      JreThrowNullPointerException();
    }

    [a2 positionWithInt:{objc_msgSend(a2, "position") + v5}];
  }

  if ([a1 isBlocking])
  {
    [a1 endWithBoolean:v5 > 0];
  }

  objc_sync_exit(v4);
  return v5;
}

void sub_1001E90C8(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

id sub_1001E92FC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 111);
  objc_sync_enter(v4);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if ([a2 hasRemaining])
  {
    if ([a1 isBlocking])
    {
      [a1 begin];
    }

    v5 = LibcoreIoIoBridge_sendtoWithJavaIoFileDescriptor_withJavaNioByteBuffer_withInt_withJavaNetInetAddress_withInt_(*(a1 + 55), a2, 0, 0, 0);
    if (v5 >= 1)
    {
      [a2 positionWithInt:{objc_msgSend(a2, "position") + v5}];
    }

    if ([a1 isBlocking])
    {
      [a1 endWithBoolean:v5 >= 0];
    }
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v4);
  return v5;
}

void sub_1001E9400(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

JavaNioSocketChannelImpl *new_JavaNioSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_(uint64_t a1)
{
  v2 = [JavaNioSocketChannelImpl alloc];
  JavaNioSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_withBoolean_(v2, a1, 1);
  return v2;
}

JavaNioSocketChannelImpl *new_JavaNioSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_withBoolean_(uint64_t a1, int a2)
{
  v4 = [JavaNioSocketChannelImpl alloc];
  JavaNioSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_withBoolean_(v4, a1, a2);
  return v4;
}

JavaNioSocketChannelImpl *new_JavaNioSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_withJavaIoFileDescriptor_(uint64_t a1, void *a2)
{
  v4 = [JavaNioSocketChannelImpl alloc];
  JavaNioSocketChannelImpl_initWithJavaNioChannelsSpiSelectorProvider_withJavaIoFileDescriptor_(v4, a1, a2);
  return v4;
}

id sub_1001E9908(id *a1, void *a2, uint64_t a3)
{
  JavaNetSocket_initWithJavaNetSocketImpl_(a1, a2);
  objc_storeWeak(a1 + 8, a2);
  objc_storeWeak(a1 + 7, a3);
  JavaNetSocketUtils_setCreatedWithJavaNetSocket_(a1);
  if (!a3)
  {
    goto LABEL_11;
  }

  v6 = atomic_load((a3 + 95));
  if (v6)
  {
    [a1 onBindWithJavaNetInetAddress:*(a3 + 79) withInt:*(a3 + 87)];
  }

  if ([a3 isConnected])
  {
    v7 = *(a3 + 71);
    if (v7)
    {
      [a1 onConnectWithJavaNetInetAddress:objc_msgSend(v7 withInt:{"getAddress"), objc_msgSend(*(a3 + 71), "getPort")}];
      goto LABEL_7;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

LABEL_7:
  result = [a3 isOpen];
  if ((result & 1) == 0)
  {

    return [a1 onClose];
  }

  return result;
}

uint64_t JavaIoIOException_initWithJavaLangThrowable_(uint64_t a1, id a2)
{
  v2 = a2;
  if (a2)
  {
    a2 = [a2 description];
  }

  return JavaLangException_initWithNSString_withJavaLangThrowable_(a1, a2, v2);
}

JavaIoIOException *new_JavaIoIOException_init()
{
  v0 = [JavaIoIOException alloc];
  JavaLangException_init(v0);
  return v0;
}

JavaIoIOException *new_JavaIoIOException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaIoIOException alloc];
  JavaLangException_initWithNSString_(v2, a1);
  return v2;
}

JavaIoIOException *new_JavaIoIOException_initWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaIoIOException alloc];
  JavaLangException_initWithNSString_withJavaLangThrowable_(v4, a1, a2);
  return v4;
}

JavaIoIOException *new_JavaIoIOException_initWithJavaLangThrowable_(void *a1)
{
  v2 = [JavaIoIOException alloc];
  if (a1)
  {
    v3 = [a1 description];
  }

  else
  {
    v3 = 0;
  }

  JavaLangException_initWithNSString_withJavaLangThrowable_(v2, v3, a1);
  return v2;
}

uint64_t JavaUtilMap_class_(uint64_t a1, uint64_t a2)
{
  if (qword_100554F38 != -1)
  {
    sub_1001EA714();
  }

  return qword_100554F30;
}

uint64_t JavaUtilMap_Entry_class_(uint64_t a1, uint64_t a2)
{
  if (qword_100554F48 != -1)
  {
    sub_1001EA728();
  }

  return qword_100554F40;
}

void *sub_1001EB040(uint64_t a1, _DWORD *a2)
{
  *(a1 + 16) = 7;
  *(a1 + 32) = 0;
  v4 = JreStrongAssign((a1 + 8), a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v6 = a2[2];
  if (v6 >= 512)
  {
    v7 = 256;
  }

  else
  {
    v7 = v6 >> 1;
  }

  v8 = [IOSObjectArray arrayWithLength:v7 type:NSObject_class_(v4, v5)];
  JreStrongAssign((a1 + 24), v8);
  if (v6 >= 120)
  {
    if (v6 >= 0x606)
    {
      if (v6 >= 0x1D16F)
      {
        v9 = 40;
      }

      else
      {
        v9 = 19;
      }
    }

    else
    {
      v9 = 10;
    }
  }

  else
  {
    v9 = 5;
  }

  JreStrongAssignAndConsume((a1 + 40), [IOSIntArray newArrayWithLength:v9]);
  v10 = [IOSIntArray newArrayWithLength:v9];

  return JreStrongAssignAndConsume((a1 + 48), v10);
}

unsigned int *JavaUtilComparableTimSort_sortWithNSObjectArray_(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v9 = a1[2];

  return JavaUtilComparableTimSort_sortWithNSObjectArray_withInt_withInt_(a1, 0, v9, a4, a5, a6, a7, a8);
}

unsigned int *JavaUtilComparableTimSort_sortWithNSObjectArray_withInt_withInt_(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v9 = a2;
  result = JavaUtilArrays_checkStartAndEndWithInt_withInt_withInt_(a1[2], a2, a3, a4, a5, a6, a7, a8);
  v12 = a3 - v9;
  if (a3 - v9 >= 2)
  {
    if (v12 > 0x1F)
    {
      v14 = [JavaUtilComparableTimSort alloc];
      sub_1001EB040(v14, a1);
      v15 = v14;
      v16 = 0;
      v17 = a3 - v9;
      do
      {
        v16 |= v17 & 1;
        v18 = v17 >> 1;
        v19 = v17 > 0x3F;
        v17 >>= 1;
      }

      while (v19);
      v20 = v16 + v18;
      do
      {
        v21 = sub_1001EB5BC(a1, v9, a3);
        v22 = v21;
        if (v21 >= v20)
        {
          v24 = (v21 + v9);
        }

        else
        {
          if (v12 >= v20)
          {
            v23 = v20;
          }

          else
          {
            v23 = v12;
          }

          v24 = v9 + v23;
          sub_1001EB38C(a1, v9, v9 + v23, v21 + v9);
          v22 = v23;
        }

        sub_1001EB96C(v15, v9, v22);
        sub_1001EBA48(v15);
        v9 = v24;
        v12 -= v22;
      }

      while (v12);

      return sub_1001EBC60(v15);
    }

    else
    {
      v13 = sub_1001EB5BC(a1, v9, a3) + v9;

      return sub_1001EB38C(a1, v9, a3, v13);
    }
  }

  return result;
}

unsigned int *sub_1001EB38C(unsigned int *result, uint64_t a2, int a3, int a4)
{
  if (a4 == a2)
  {
    v4 = a4 + 1;
  }

  else
  {
    v4 = a4;
  }

  if (v4 < a3)
  {
    v5 = result;
    if (!result)
    {
LABEL_39:
      JreThrowNullPointerException();
    }

    v6 = v4;
    v7 = a2;
    v8 = a3;
    while (1)
    {
      v9 = v5[2];
      if (v6 < 0 || v6 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v6);
      }

      v10 = *&v5[2 * v6 + 6];
      v11 = JavaLangComparable_class_(v9, a2);
      if (!v10)
      {
        break;
      }

      if (([v11 isInstance:v10] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      if (v6 <= v7)
      {
        goto LABEL_21;
      }

      v12 = v7;
      LODWORD(v13) = a2;
      v14 = v6;
      do
      {
        v15 = (v13 + v14) >> 1;
        v16 = v5[2];
        if (v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (v13 + v14) >> 1);
        }

        if ([v10 compareToWithId:*&v5[2 * v15 + 6]] >= 0)
        {
          v13 = (v15 + 1);
        }

        else
        {
          v14 = (v13 + v14) >> 1;
          v13 = v13;
        }
      }

      while (v13 < v14);
      v7 = v12;
LABEL_22:
      v17 = (v6 - v13);
      if (v17 == 2)
      {
        v19 = v5[2];
        v20 = v13 + 1;
        v18 = v13 + 1;
        if (v13 + 1 < 0 || v20 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, v20);
        }

        IOSObjectArray_Set(v5, v13 + 2, *&v5[2 * v18 + 6]);
        goto LABEL_28;
      }

      if (v17 == 1)
      {
        v18 = v13 + 1;
LABEL_28:
        v21 = v5[2];
        if ((v13 & 0x80000000) != 0 || v13 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, v13);
        }

        v13 = v13;
        IOSObjectArray_Set(v5, v18, *&v5[2 * v13 + 6]);
        goto LABEL_32;
      }

      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v5, v13, v5, (v13 + 1), v17);
      v13 = v13;
LABEL_32:
      result = IOSObjectArray_Set(v5, v13, v10);
      if (++v6 >= v8)
      {
        return result;
      }
    }

    if (v6 > v7)
    {
      goto LABEL_39;
    }

LABEL_21:
    v13 = a2;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001EB5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 1;
  if (a2 + 1 == a3)
  {
    return 1;
  }

  if (!a1)
  {
    goto LABEL_40;
  }

  v6 = a3;
  v8 = *(a1 + 8);
  if (v3 < 0 || v3 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (a2 + 1));
  }

  v9 = *(a1 + 24 + 8 * v3);
  v10 = JavaLangComparable_class_(v8, a2);
  if (!v9)
  {
LABEL_40:
    JreThrowNullPointerException();
  }

  if (([v10 isInstance:v9] & 1) == 0)
  {
LABEL_39:
    JreThrowClassCastException();
  }

  LODWORD(v11) = a2 + 2;
  v12 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v12 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, a2);
  }

  if (([v9 compareToWithId:*(a1 + 24 + 8 * a2)] & 0x80000000) != 0)
  {
    LODWORD(v20) = a2 + 2;
    if (v11 < v6)
    {
      v20 = v11;
      v21 = a1 + 8 * v11;
      do
      {
        v22 = *(a1 + 8);
        if (v20 < 0 || v20 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, v20);
        }

        v23 = *(v21 + 24);
        v24 = JavaLangComparable_class_(v22, v13);
        if (!v23)
        {
          goto LABEL_40;
        }

        if (([v24 isInstance:v23] & 1) == 0)
        {
          goto LABEL_39;
        }

        v25 = *(a1 + 8);
        v26 = v20 - 1;
        if (v20 - 1 < 0 || v26 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, v26);
        }

        if (([v23 compareToWithId:*(a1 + 24 + 8 * (v20 - 1))] & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        ++v20;
        v21 += 8;
      }

      while (v6 != v20);
      LODWORD(v20) = v6;
    }

LABEL_37:
    sub_1001EB830(a1, a2, v20);
    LODWORD(v11) = v20;
  }

  else if (v11 < v6)
  {
    v14 = a1 + 8 * v11;
    v11 = v11;
    do
    {
      v15 = *(a1 + 8);
      if (v11 < 0 || v11 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v11);
      }

      v16 = *(v14 + 24);
      v17 = JavaLangComparable_class_(v15, v13);
      if (!v16)
      {
        goto LABEL_40;
      }

      if (([v17 isInstance:v16] & 1) == 0)
      {
        goto LABEL_39;
      }

      v18 = *(a1 + 8);
      v19 = v11 - 1;
      if (v11 - 1 < 0 || v19 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v19);
      }

      if (([v16 compareToWithId:*(a1 + 24 + 8 * (v11 - 1))] & 0x80000000) != 0)
      {
        return (v11 - a2);
      }

      ++v11;
      v14 += 8;
    }

    while (v6 != v11);
    LODWORD(v11) = v6;
  }

  return (v11 - a2);
}

void *sub_1001EB830(void *result, int a2, int a3)
{
  if (a3 - 1 > a2)
  {
    v3 = result;
    if (!result)
    {
      JreThrowNullPointerException();
    }

    v4 = a3 - 1;
    v5 = a2;
    do
    {
      v6 = *(v3 + 2);
      if (v5 < 0 || v5 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v5);
      }

      v7 = v3[v5 + 3];
      if (v4 < 0 || v4 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v4);
      }

      IOSObjectArray_Set(v3, v5, v3[v4 + 3]);
      result = IOSObjectArray_Set(v3, v4--, v7);
      ++v5;
    }

    while (v5 < v4);
  }

  return result;
}

uint64_t sub_1001EB96C(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 32);
  v6 = *(v3 + 8);
  if (v5 < 0 || v5 >= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, v5);
  }

  *(v3 + 12 + 4 * v5) = a2;
  v7 = *(a1 + 48);
  if (!v7)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v8 = *(a1 + 32);
  result = *(v7 + 8);
  if (v8 < 0 || v8 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v8);
  }

  *(v7 + 12 + 4 * v8) = a3;
  ++*(a1 + 32);
  return result;
}

uint64_t sub_1001EBA48(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 >= 2)
  {
    v2 = result;
    do
    {
      v3 = *(v2 + 48);
      v4 = (v1 - 2);
      if (v1 == 2)
      {
        goto LABEL_9;
      }

      if (!v3)
      {
        goto LABEL_29;
      }

      v5 = (v1 - 3);
      v6 = *(v3 + 8);
      if (v5 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, (v1 - 3));
      }

      if (v4 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, (v1 - 2));
      }

      v7 = (v1 - 1);
      if (v1 > v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, (v1 - 1));
      }

      if (*(v3 + 12 + 4 * v5) > *(v3 + 12 + 4 * v7) + *(v3 + 12 + 4 * v4))
      {
LABEL_9:
        if (!v3)
        {
LABEL_29:
          JreThrowNullPointerException();
        }

        result = *(v3 + 8);
        if (v4 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, (v1 - 2));
        }

        if (v1 > result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, (v1 - 1));
        }

        if (*(v3 + 12 + 4 * v4) > *(v3 + 12 + 4 * (v1 - 1)))
        {
          return result;
        }
      }

      else
      {
        v8 = *(v3 + 8);
        if (v5 >= v8)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, (v1 - 3));
        }

        if (v1 > v8)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, (v1 - 1));
        }

        if (*(v3 + 12 + 4 * v5) >= *(v3 + 12 + 4 * v7))
        {
          v4 = v4;
        }

        else
        {
          v4 = v5;
        }
      }

      result = sub_1001EBD60(v2, v4);
      v1 = *(v2 + 32);
    }

    while (v1 > 1);
  }

  return result;
}

_DWORD *sub_1001EBC60(_DWORD *result)
{
  v1 = result[8];
  if (v1 >= 2)
  {
    v2 = result;
    do
    {
      if (v1 == 2)
      {
        v3 = 0;
      }

      else
      {
        v4 = *(v2 + 48);
        if (!v4)
        {
          JreThrowNullPointerException();
        }

        v5 = (v1 - 3);
        v6 = *(v4 + 8);
        if (v5 >= v6)
        {
          IOSArray_throwOutOfBoundsWithMsg(v6, (v1 - 3));
        }

        if (v1 > v6)
        {
          IOSArray_throwOutOfBoundsWithMsg(v6, (v1 - 1));
        }

        if (*(v4 + 12 + 4 * v5) >= *(*(v2 + 48) + 12 + 4 * (v1 - 1)))
        {
          v3 = (v1 - 2);
        }

        else
        {
          v3 = v5;
        }
      }

      result = sub_1001EBD60(v2, v3);
      v1 = *(v2 + 32);
    }

    while (v1 > 1);
  }

  return result;
}

id sub_1001EBD60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_42;
  }

  v4 = *(v2 + 8);
  if ((a2 & 0x80000000) != 0 || v4 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, a2);
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    goto LABEL_42;
  }

  v6 = *(v2 + 12 + 4 * a2);
  v7 = *(v5 + 8);
  if ((a2 & 0x80000000) != 0 || v7 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a2);
  }

  v8 = *(v5 + 12 + 4 * a2);
  v9 = *(a1 + 40);
  v10 = *(v9 + 8);
  v11 = a2 + 1;
  v12 = a2 + 1;
  if (a2 + 1 < 0 || v11 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v11);
  }

  v13 = *(v9 + 12 + 4 * v12);
  v14 = *(a1 + 48);
  v15 = *(v14 + 8);
  if ((v12 & 0x80000000) != 0 || v12 >= v15)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, v12);
  }

  v16 = *(v14 + 12 + 4 * v12);
  if ((a2 & 0x80000000) != 0 || v15 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, a2);
  }

  *(*(a1 + 48) + 12 + 4 * a2) = v16 + v8;
  v17 = *(a1 + 32);
  if (v17 - 3 == a2)
  {
    v18 = *(a1 + 40);
    v19 = *(v18 + 8);
    v20 = a2 + 2;
    v21 = a2 + 2;
    if (a2 + 2 < 0 || v20 >= v19)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v20);
    }

    v22 = *(v18 + 12 + 4 * v21);
    if ((v12 & 0x80000000) != 0 || v12 >= v19)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v12);
    }

    *(*(a1 + 40) + 12 + 4 * v12) = v22;
    v23 = *(a1 + 48);
    v24 = *(v23 + 8);
    if ((v21 & 0x80000000) != 0 || v21 >= v24)
    {
      IOSArray_throwOutOfBoundsWithMsg(v24, v21);
    }

    v25 = *(v23 + 12 + 4 * v21);
    if ((v12 & 0x80000000) != 0 || v12 >= v24)
    {
      IOSArray_throwOutOfBoundsWithMsg(v24, v12);
    }

    *(v23 + 12 + 4 * v12) = v25;
    v17 = *(a1 + 32);
  }

  *(a1 + 32) = v17 - 1;
  v26 = *(a1 + 8);
  if (!v26)
  {
LABEL_42:
    JreThrowNullPointerException();
  }

  v27 = *(v26 + 8);
  if ((v13 & 0x80000000) != 0 || v13 >= v27)
  {
    IOSArray_throwOutOfBoundsWithMsg(v27, v13);
  }

  v28 = *(v26 + 24 + 8 * v13);
  v29 = JavaLangComparable_class_(v27, a2);
  if (v28 && ([v29 isInstance:v28] & 1) == 0)
  {
    goto LABEL_49;
  }

  result = sub_1001EC3DC(v28, *(a1 + 8), v6, v8, 0);
  v32 = (v8 - result);
  if (v8 == result)
  {
    return result;
  }

  v33 = result;
  v34 = *(a1 + 8);
  v35 = *(v34 + 8);
  v36 = v6 + v8 - 1;
  if (v36 < 0 || v36 >= v35)
  {
    IOSArray_throwOutOfBoundsWithMsg(v35, v36);
  }

  v37 = *(v34 + 24 + 8 * v36);
  v38 = JavaLangComparable_class_(v35, v31);
  if (v37)
  {
    if (([v38 isInstance:v37] & 1) == 0)
    {
LABEL_49:
      JreThrowClassCastException();
    }
  }

  result = sub_1001EC158(v37, *(a1 + 8), v13, v16, v16 - 1);
  if (result)
  {
    v39 = (v33 + v6);
    if (v32 <= result)
    {

      return sub_1001EC648(a1, v39, v32, v13, result);
    }

    else
    {

      return sub_1001ECD0C(a1, v39, v32, v13, result);
    }
  }

  return result;
}

uint64_t sub_1001EC158(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  if (!a1 || !a2)
  {
    JreThrowNullPointerException();
  }

  v10 = *(a2 + 8);
  v11 = a5 + a3;
  v12 = a5 + a3;
  if (a5 + a3 < 0 || v11 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v11);
  }

  if ([a1 compareToWithId:*(a2 + 24 + 8 * v12)] < 1)
  {
    v19 = a5 + 1;
    if (a5 + 1 <= 1)
    {
      v22 = 0;
      v21 = 1;
    }

    else
    {
      v20 = 0;
      v21 = 1;
      while (1)
      {
        v22 = v21;
        v23 = *(a2 + 8);
        v24 = v12 - v21;
        if (v24 < 0 || v24 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, v24);
        }

        if ([a1 compareToWithId:*(a2 + 24 + 8 * v24)] > 0)
        {
          break;
        }

        if ((2 * v22) <= 0x7FFFFFFE)
        {
          v21 = 2 * v22 + 1;
        }

        else
        {
          v21 = v19;
        }

        v20 = v22;
        if (v21 >= v19)
        {
          goto LABEL_36;
        }
      }

      v21 = v22;
      v22 = v20;
    }

LABEL_36:
    if (v21 >= v19)
    {
      v21 = v19;
    }

    v26 = a5 - v21;
    v27 = (a5 - v22);
  }

  else
  {
    v13 = a4 - a5;
    if (a4 - a5 < 2)
    {
      v16 = 0;
      v15 = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (1)
      {
        v16 = v15;
        v17 = *(a2 + 8);
        v18 = v15 + v12;
        if (v18 < 0 || v18 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v18);
        }

        if ([a1 compareToWithId:*(a2 + 24 + 8 * v18)] < 1)
        {
          break;
        }

        if ((2 * v16) <= 0x7FFFFFFE)
        {
          v15 = 2 * v16 + 1;
        }

        else
        {
          v15 = v13;
        }

        v14 = v16;
        if (v15 >= v13)
        {
          goto LABEL_31;
        }
      }

      v15 = v16;
      v16 = v14;
    }

LABEL_31:
    if (v15 >= v13)
    {
      v25 = v13;
    }

    else
    {
      v25 = v15;
    }

    v26 = v16 + a5;
    v27 = (v25 + a5);
  }

  v28 = v26 + 1;
  while (v28 < v27)
  {
    v29 = v28 + ((v27 - v28) >> 1);
    v30 = *(a2 + 8);
    v31 = v29 + a3;
    if ((v29 + a3) < 0 || v31 >= v30)
    {
      IOSArray_throwOutOfBoundsWithMsg(v30, v31);
    }

    v32 = [a1 compareToWithId:*(a2 + 24 + 8 * (v29 + a3))];
    if (v32 <= 0)
    {
      v27 = v29;
    }

    else
    {
      v27 = v27;
    }

    if (v32 > 0)
    {
      v28 = v29 + 1;
    }
  }

  return v27;
}

uint64_t sub_1001EC3DC(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  if (!a1 || !a2)
  {
    JreThrowNullPointerException();
  }

  v10 = *(a2 + 8);
  v11 = a5 + a3;
  v12 = a5 + a3;
  if (a5 + a3 < 0 || v11 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v11);
  }

  if (([a1 compareToWithId:*(a2 + 24 + 8 * v12)] & 0x80000000) != 0)
  {
    v19 = a5 + 1;
    if (a5 + 1 < 2)
    {
      v20 = 0;
      v21 = 1;
    }

    else
    {
      v20 = 0;
      v21 = 1;
      while (1)
      {
        v22 = v21;
        v23 = *(a2 + 8);
        v24 = v12 - v21;
        if (v24 < 0 || v24 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, v24);
        }

        if (([a1 compareToWithId:*(a2 + 24 + 8 * v24)] & 0x80000000) == 0)
        {
          break;
        }

        if ((2 * v22) <= 0x7FFFFFFE)
        {
          v21 = 2 * v22 + 1;
        }

        else
        {
          v21 = v19;
        }

        v20 = v22;
        if (v21 >= v19)
        {
          goto LABEL_36;
        }
      }

      v21 = v22;
    }

LABEL_36:
    if (v21 >= v19)
    {
      v21 = v19;
    }

    v26 = a5 - v21;
    v27 = (a5 - v20);
  }

  else
  {
    v13 = a4 - a5;
    if (a4 - a5 < 2)
    {
      v14 = 0;
      v15 = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (1)
      {
        v16 = v15;
        v17 = *(a2 + 8);
        v18 = v15 + v12;
        if (v18 < 0 || v18 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v18);
        }

        if (([a1 compareToWithId:*(a2 + 24 + 8 * v18)] & 0x80000000) != 0)
        {
          break;
        }

        if ((2 * v16) <= 0x7FFFFFFE)
        {
          v15 = 2 * v16 + 1;
        }

        else
        {
          v15 = v13;
        }

        v14 = v16;
        if (v15 >= v13)
        {
          goto LABEL_31;
        }
      }

      v15 = v16;
    }

LABEL_31:
    if (v15 >= v13)
    {
      v25 = v13;
    }

    else
    {
      v25 = v15;
    }

    v26 = v14 + a5;
    v27 = (v25 + a5);
  }

  v28 = v26 + 1;
  while (v28 < v27)
  {
    v29 = v28 + ((v27 - v28) >> 1);
    v30 = *(a2 + 8);
    v31 = v29 + a3;
    if ((v29 + a3) < 0 || v31 >= v30)
    {
      IOSArray_throwOutOfBoundsWithMsg(v30, v31);
    }

    if ([a1 compareToWithId:*(a2 + 24 + 8 * (v29 + a3))] < 0)
    {
      v27 = v29;
    }

    else
    {
      v28 = v29 + 1;
      v27 = v27;
    }
  }

  return v27;
}

id sub_1001EC648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = a3;
  v10 = *(a1 + 8);
  v60 = sub_1001ED3E8(a1, a3);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, a2, v60, 0, v7);
  if (!v10)
  {
    goto LABEL_86;
  }

  LODWORD(v11) = a2 + 1;
  v12 = v10[2];
  if ((a4 & 0x80000000) != 0 || v12 <= a4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, a4);
  }

  IOSObjectArray_Set(v10, a2, *&v10[2 * a4 + 6]);
  v57 = a5 - 1;
  if (a5 == 1)
  {
    v18 = v60;
    v19 = 0;
    v20 = v10;
    v21 = (a2 + 1);
    goto LABEL_10;
  }

  v14 = (a4 + 1);
  if (v7 == 1)
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, (a4 + 1), v10, (a2 + 1), v57);
    if (v60)
    {
      v15 = a5 + a2;
      v16 = v60[2];
      if (v16 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, 0);
      }

      v17 = *(v60 + 3);
      goto LABEL_82;
    }

LABEL_86:
    JreThrowNullPointerException();
  }

  v23 = 0;
  v56 = a1;
  v59 = *(a1 + 16);
  v24 = v60;
LABEL_14:
  LODWORD(v25) = 0;
  v26 = 0;
  v27 = v11;
  do
  {
    v28 = v10[2];
    if ((v14 & 0x80000000) != 0 || v14 >= v28)
    {
      IOSArray_throwOutOfBoundsWithMsg(v28, v14);
    }

    v29 = *&v10[2 * v14 + 6];
    v30 = JavaLangComparable_class_(v28, v13);
    if (!v29)
    {
      goto LABEL_86;
    }

    if (([v30 isInstance:v29] & 1) == 0)
    {
LABEL_85:
      JreThrowClassCastException();
    }

    if (!v24)
    {
      goto LABEL_86;
    }

    v31 = v24[2];
    if ((v23 & 0x80000000) != 0 || v23 >= v31)
    {
      IOSArray_throwOutOfBoundsWithMsg(v31, v23);
    }

    v32 = [v29 compareToWithId:*&v24[2 * v23 + 6]];
    v11 = (v27 + 1);
    v33 = v27;
    if ((v32 & 0x80000000) != 0)
    {
      v36 = v10[2];
      if ((v14 & 0x80000000) != 0 || v14 >= v36)
      {
        IOSArray_throwOutOfBoundsWithMsg(v36, v14);
      }

      v37 = (v14 + 1);
      IOSObjectArray_Set(v10, v33, *&v10[2 * v14 + 6]);
      v25 = 0;
      if (!--v57)
      {
        v35 = v23;
LABEL_73:
        v44 = v11;
LABEL_74:
        v53 = v59;
        if (v59 <= 1)
        {
          v53 = 1;
        }

        *(v56 + 16) = v53;
        if (v7 == 1)
        {
          goto LABEL_79;
        }

        if (!v7)
        {
          v55 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Comparison method violates its general contract!");
          objc_exception_throw(v55);
        }

        v18 = v60;
        v19 = v35;
        v20 = v10;
        v21 = v44;
LABEL_10:

        return JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v18, v19, v20, v21, v7);
      }

      ++v26;
      v14 = (v14 + 1);
    }

    else
    {
      v34 = v24[2];
      if ((v23 & 0x80000000) != 0 || v23 >= v34)
      {
        IOSArray_throwOutOfBoundsWithMsg(v34, v23);
      }

      LODWORD(v35) = v23 + 1;
      IOSObjectArray_Set(v10, v27, *&v60[2 * v23 + 6]);
      v7 = (v7 - 1);
      if (v7 == 1)
      {
        v38 = v57;
        goto LABEL_70;
      }

      v26 = 0;
      LODWORD(v25) = v25 + 1;
      v23 = (v23 + 1);
      v24 = v60;
    }

    v27 = v11;
  }

  while ((v26 | v25) < v59);
  v38 = v57;
  while (1)
  {
    v39 = v10[2];
    if ((v14 & 0x80000000) != 0 || v14 >= v39)
    {
      IOSArray_throwOutOfBoundsWithMsg(v39, v14);
    }

    v40 = *&v10[2 * v14 + 6];
    v41 = JavaLangComparable_class_(v39, v13);
    if (v40 && ([v41 isInstance:v40] & 1) == 0)
    {
      goto LABEL_85;
    }

    v42 = sub_1001EC3DC(v40, v24, v23, v7, 0);
    if (v42)
    {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v24, v23, v10, v11, v42);
      v11 = (v42 + v11);
      v35 = (v42 + v23);
      v7 = (v7 - v42);
      if (v7 < 2)
      {
        v25 = v38;
        v37 = v14;
        goto LABEL_73;
      }
    }

    else
    {
      v35 = v23;
    }

    v43 = v10[2];
    if ((v14 & 0x80000000) != 0 || v14 >= v43)
    {
      IOSArray_throwOutOfBoundsWithMsg(v43, v14);
    }

    v44 = (v11 + 1);
    v37 = (v14 + 1);
    IOSObjectArray_Set(v10, v11, *&v10[2 * v14 + 6]);
    v38 = (v38 - 1);
    if (!v38)
    {
      v25 = 0;
      goto LABEL_74;
    }

    v46 = v60[2];
    if ((v35 & 0x80000000) != 0 || v35 >= v46)
    {
      IOSArray_throwOutOfBoundsWithMsg(v46, v35);
    }

    v47 = *&v60[2 * v35 + 6];
    v48 = JavaLangComparable_class_(v46, v45);
    if (v47 && ([v48 isInstance:v47] & 1) == 0)
    {
      goto LABEL_85;
    }

    v58 = v42;
    v49 = sub_1001EC158(v47, v10, v14 + 1, v38, 0);
    if (v49)
    {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, (v14 + 1), v10, (v11 + 1), v49);
      v44 = (v49 + v44);
      v14 = (v49 + v37);
      v38 = (v38 - v49);
      if (!v38)
      {
        v25 = 0;
        v37 = v14;
        goto LABEL_74;
      }
    }

    else
    {
      v14 = (v14 + 1);
    }

    v50 = v60[2];
    if ((v35 & 0x80000000) != 0 || v35 >= v50)
    {
      IOSArray_throwOutOfBoundsWithMsg(v50, v35);
    }

    v11 = (v44 + 1);
    v51 = v44;
    v23 = (v35 + 1);
    IOSObjectArray_Set(v10, v51, *&v60[2 * v35 + 6]);
    v7 = (v7 - 1);
    if (v7 == 1)
    {
      break;
    }

    --v59;
    v24 = v60;
    if (v58 <= 6 && v49 <= 6)
    {
      v57 = v38;
      v59 = (v59 & ~(v59 >> 31)) + 2;
      goto LABEL_14;
    }
  }

  LODWORD(v35) = v35 + 1;
LABEL_70:
  v52 = v59;
  if (v59 <= 1)
  {
    v52 = 1;
  }

  *(v56 + 16) = v52;
  v44 = v11;
  v37 = v14;
  v25 = v38;
LABEL_79:
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10, v37, v10, v44, v25);
  v15 = v25 + v44;
  v54 = v60[2];
  if ((v35 & 0x80000000) != 0 || v35 >= v54)
  {
    IOSArray_throwOutOfBoundsWithMsg(v54, v35);
  }

  v17 = *&v60[2 * v35 + 6];
LABEL_82:

  return IOSObjectArray_Set(v10, v15, v17);
}

id sub_1001ECD0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v9 = *(a1 + 8);
  v10 = sub_1001ED3E8(a1, a5);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, a4, v10, 0, v5);
  if (!v9)
  {
    goto LABEL_84;
  }

  v11 = a3 + a2;
  v12 = a3 + a2 - 1;
  v13 = v5 + a4;
  v14 = v5 + a4 - 1;
  v15 = v9[2];
  if (v12 < 0 || v12 >= v15)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, (v11 - 1));
  }

  v16 = (v5 - 1);
  v17 = v13 - 2;
  IOSObjectArray_Set(v9, v14, *&v9[2 * v12 + 6]);
  v65 = a3 - 1;
  if (a3 == 1)
  {
    v23 = (v17 - v16);
    v24 = v10;
    goto LABEL_10;
  }

  if (v5 == 1)
  {
    v19 = v17 - v65;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, a2, v9, (v19 + 1), v65);
    if (v10)
    {
      v20 = v19;
      v21 = v10[2];
      if (v16 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, 0);
      }

      v22 = *&v10[2 * v16 + 6];
LABEL_78:

      return IOSObjectArray_Set(v9, v20, v22);
    }

LABEL_84:
    JreThrowNullPointerException();
  }

  if (!v10)
  {
    goto LABEL_84;
  }

  v64 = a2;
  v26 = (v11 - 2);
  v66 = *(a1 + 16);
  v67 = v10;
LABEL_15:
  v27 = 0;
  LODWORD(v28) = 0;
  v29 = v17;
  do
  {
    v30 = v10[2];
    if ((v16 & 0x80000000) != 0 || v16 >= v30)
    {
      IOSArray_throwOutOfBoundsWithMsg(v30, v16);
    }

    v31 = *&v10[2 * v16 + 6];
    v32 = JavaLangComparable_class_(v30, v18);
    if (!v31)
    {
      goto LABEL_84;
    }

    if (([v32 isInstance:v31] & 1) == 0)
    {
LABEL_83:
      JreThrowClassCastException();
    }

    v33 = v9[2];
    if ((v26 & 0x80000000) != 0 || v26 >= v33)
    {
      IOSArray_throwOutOfBoundsWithMsg(v33, v26);
    }

    v34 = [v31 compareToWithId:*&v9[2 * v26 + 6]];
    v17 = v29 - 1;
    v35 = v29;
    if ((v34 & 0x80000000) != 0)
    {
      v38 = v9[2];
      if ((v26 & 0x80000000) != 0 || v26 >= v38)
      {
        IOSArray_throwOutOfBoundsWithMsg(v38, v26);
      }

      LODWORD(v39) = v26 - 1;
      IOSObjectArray_Set(v9, v35, *&v9[2 * v26 + 6]);
      v28 = 0;
      if (!--v65)
      {
        goto LABEL_69;
      }

      ++v27;
      v26 = (v26 - 1);
    }

    else
    {
      v36 = v10[2];
      if ((v16 & 0x80000000) != 0 || v16 >= v36)
      {
        IOSArray_throwOutOfBoundsWithMsg(v36, v16);
      }

      LODWORD(v37) = v16 - 1;
      IOSObjectArray_Set(v9, v29, *&v67[2 * v16 + 6]);
      v5 = (v5 - 1);
      if (v5 == 1)
      {
        goto LABEL_65;
      }

      v27 = 0;
      LODWORD(v28) = v28 + 1;
      v16 = (v16 - 1);
      v10 = v67;
    }

    v29 = v17;
  }

  while ((v28 | v27) < v66);
  v37 = v16;
  v40 = v65;
  while (1)
  {
    v41 = v67[2];
    if ((v37 & 0x80000000) != 0 || v37 >= v41)
    {
      IOSArray_throwOutOfBoundsWithMsg(v41, v37);
    }

    v42 = *&v67[2 * v37 + 6];
    v43 = JavaLangComparable_class_(v41, v18);
    if (v42 && ([v43 isInstance:v42] & 1) == 0)
    {
      goto LABEL_83;
    }

    v44 = sub_1001EC3DC(v42, v9, v64, v40, v40 - 1);
    v45 = v40 - v44;
    if (v40 == v44)
    {
      v65 = v40;
      v39 = v26;
    }

    else
    {
      v46 = v44;
      v17 -= v45;
      v39 = (v26 - v45);
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, (v39 + 1), v9, (v17 + 1), v45);
      if (!v46)
      {
        v28 = 0;
        goto LABEL_70;
      }

      v65 = v46;
    }

    v47 = v67[2];
    if ((v37 & 0x80000000) != 0 || v37 >= v47)
    {
      IOSArray_throwOutOfBoundsWithMsg(v47, v37);
    }

    v48 = v17 - 1;
    v16 = (v37 - 1);
    IOSObjectArray_Set(v9, v17, *&v67[2 * v37 + 6]);
    v50 = v5 - 1;
    if (v5 == 2)
    {
      LODWORD(v26) = v39;
      LODWORD(v37) = v37 - 1;
      --v17;
LABEL_65:
      v28 = v65;
      v58 = v66;
      if (v66 <= 1)
      {
        v58 = 1;
      }

      *(a1 + 16) = v58;
      LODWORD(v39) = v26;
      goto LABEL_75;
    }

    v51 = v9[2];
    if ((v39 & 0x80000000) != 0 || v39 >= v51)
    {
      IOSArray_throwOutOfBoundsWithMsg(v51, v39);
    }

    v52 = *&v9[2 * v39 + 6];
    v53 = JavaLangComparable_class_(v51, v49);
    if (v52 && ([v53 isInstance:v52] & 1) == 0)
    {
      goto LABEL_83;
    }

    v54 = sub_1001EC158(v52, v67, 0, v5 - 1, v5 - 2);
    v5 = (v5 - 1);
    v55 = (v50 - v54);
    if (v55)
    {
      v56 = v54;
      v48 -= v55;
      v16 = (v16 - v55);
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v67, (v16 + 1), v9, (v48 + 1), v55);
      v5 = v56;
      if (v56 < 2)
      {
        break;
      }
    }

    v57 = v9[2];
    if ((v39 & 0x80000000) != 0 || v39 >= v57)
    {
      IOSArray_throwOutOfBoundsWithMsg(v57, v39);
    }

    v17 = v48 - 1;
    v26 = (v39 - 1);
    IOSObjectArray_Set(v9, v48, *&v9[2 * v39 + 6]);
    v40 = v65 - 1;
    if (v65 == 1)
    {
      v28 = 0;
      LODWORD(v39) = v26;
LABEL_69:
      LODWORD(v37) = v16;
      goto LABEL_70;
    }

    --v66;
    v37 = v16;
    if (v45 <= 6)
    {
      v37 = v16;
      if (v55 <= 6)
      {
        --v65;
        v66 = (v66 & ~(v66 >> 31)) + 2;
        v10 = v67;
        goto LABEL_15;
      }
    }
  }

  v5 = v56;
  v28 = v65;
  LODWORD(v37) = v16;
  v17 = v48;
LABEL_70:
  v59 = v66;
  if (v66 <= 1)
  {
    v59 = 1;
  }

  *(a1 + 16) = v59;
  if (v5 == 1)
  {
LABEL_75:
    v60 = v17 - v28;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, (v39 - v28 + 1), v9, (v60 + 1), v28);
    v20 = v60;
    v61 = v67[2];
    if ((v37 & 0x80000000) != 0 || v37 >= v61)
    {
      IOSArray_throwOutOfBoundsWithMsg(v61, v37);
    }

    v22 = *&v67[2 * v37 + 6];
    goto LABEL_78;
  }

  if (!v5)
  {
    v62 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Comparison method violates its general contract!");
    objc_exception_throw(v62);
  }

  v23 = (v17 - v5 + 1);
  v24 = v67;
LABEL_10:

  return JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v24, 0, v9, v23, v5);
}

id sub_1001ED3E8(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 24);
  v2 = *(a1 + 24);
  if (!v2)
  {
    goto LABEL_8;
  }

  if (*(v2 + 8) < a2)
  {
    v4 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v6 = (v5 | (v5 >> 16)) + 1;
    if (v6 < 0)
    {
LABEL_6:
      v8 = [IOSObjectArray arrayWithLength:a2 type:NSObject_class_(a1, a2)];
      JreStrongAssign(v3, v8);
      return *v3;
    }

    v7 = *(a1 + 8);
    if (v7)
    {
      a1 = JavaLangMath_minWithInt_withInt_(v6, *(v7 + 8) >> 1);
      a2 = a1;
      goto LABEL_6;
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  return v2;
}

uint64_t JavaIoCloseable_class_(uint64_t a1, uint64_t a2)
{
  if (qword_100554F58 != -1)
  {
    sub_1001ED57C();
  }

  return qword_100554F50;
}

void JavaTextNumberFormat_init(uint64_t a1, uint64_t a2)
{
  JavaTextFormat_init();
  *(a1 + 8) = 1;
  *(a1 + 9) = 0;
  *(a1 + 12) = 40;
  *(a1 + 16) = 1;
  *(a1 + 20) = 3;
  *(a1 + 24) = 0;
}

JavaTextDecimalFormat *JavaTextNumberFormat_getCurrencyInstanceWithJavaUtilLocale_(void *a1, uint64_t a2)
{
  v3 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(a1, a2);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = new_JavaTextDecimalFormat_initWithNSString_withJavaUtilLocale_(v3->currencyPattern_, a1);

  return v4;
}

JavaTextDecimalFormat *JavaTextNumberFormat_getIntegerInstanceWithJavaUtilLocale_(void *a1, uint64_t a2)
{
  v3 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(a1, a2);
  if (!v3 || (v4 = new_JavaTextDecimalFormat_initWithNSString_withJavaUtilLocale_(v3->integerPattern_, a1)) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  [(JavaTextDecimalFormat *)v4 setParseIntegerOnlyWithBoolean:1];
  return v5;
}

JavaTextDecimalFormat *JavaTextNumberFormat_getNumberInstanceWithJavaUtilLocale_(void *a1, uint64_t a2)
{
  v3 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(a1, a2);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = new_JavaTextDecimalFormat_initWithNSString_withJavaUtilLocale_(v3->numberPattern_, a1);

  return v4;
}

JavaTextDecimalFormat *JavaTextNumberFormat_getPercentInstanceWithJavaUtilLocale_(void *a1, uint64_t a2)
{
  v3 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(a1, a2);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = new_JavaTextDecimalFormat_initWithNSString_withJavaUtilLocale_(v3->percentPattern_, a1);

  return v4;
}

void sub_1001EDF5C(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1001EDF40);
}

JavaTextDecimalFormat *JavaTextNumberFormat_getInstance()
{
  Default = JavaUtilLocale_getDefault();

  return JavaTextNumberFormat_getNumberInstanceWithJavaUtilLocale_(Default, v1);
}

JavaTextFieldPosition *new_JavaTextFieldPosition_initWithInt_(int a1)
{
  result = [JavaTextFieldPosition alloc];
  result->field_ = a1;
  return result;
}

JavaTextFieldPosition *new_JavaTextFieldPosition_initWithJavaTextFormat_Field_(void *a1)
{
  v2 = [JavaTextFieldPosition alloc];
  JreStrongAssign(&v2->attribute_, a1);
  v2->field_ = -1;
  return v2;
}

id LibcoreIcuNativeDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(id *a1, void *a2, void *a3)
{
  JreStrongAssign(a1 + 4, 0);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v17 = [a3 getCurrencySymbol];
  v16 = [a3 getDecimalSeparator];
  [a3 getDigit];
  v15 = [a3 getExponentSeparator];
  v5 = [a3 getGroupingSeparator];
  v6 = [a3 getInfinity];
  v7 = [a3 getInternationalCurrencySymbol];
  v8 = [a3 getMinusSign];
  v9 = [a3 getMonetaryDecimalSeparator];
  v10 = [a3 getNaN];
  [a3 getPatternSeparator];
  v11 = [a3 getPercent];
  HIWORD(v14) = [a3 getPerMill];
  LOWORD(v14) = v11;
  v12 = sub_1001EFE78(a2, v17, v16, v15, v5, v6, v7, v8, v9, v10, v14, [a3 getZeroDigit]);
  JreStrongAssign(a1 + 1, v12);
  JreStrongAssign(a1 + 2, a2);
  return [a1 setMultiplierWithInt:1];
}

id LibcoreIcuNativeDecimalFormat_initWithNSString_withLibcoreIcuLocaleData_(id *a1, void *a2, uint64_t a3)
{
  JreStrongAssign(a1 + 4, 0);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = sub_1001EFE78(a2, *(a3 + 264), *(a3 + 226), *(a3 + 240), *(a3 + 228), *(a3 + 248), *(a3 + 272), *(a3 + 238), *(a3 + 236), *(a3 + 256), *(a3 + 232), *(a3 + 224));
  JreStrongAssign(a1 + 1, v6);

  return JreStrongAssign(a1 + 2, a2);
}

id sub_1001EEEAC(void *a1, uint64_t a2, __int16 a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, __int16 a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = WORD2(a11);
  v16 = a10;
  v20 = a3;
  v19 = a5;
  v18 = a8;
  [a1 setCurrencySymbol:a2];
  [a1 setDecimalSeparator:{+[NSString stringWithCharacters:length:](NSString, "stringWithCharacters:length:", &v20, 1)}];
  [a1 setExponentSymbol:a4];
  [a1 setGroupingSeparator:{+[NSString stringWithCharacters:length:](NSString, "stringWithCharacters:length:", &v19, 1)}];
  [a1 setPositiveInfinitySymbol:a6];
  [a1 setInternationalCurrencySymbol:a7];
  [a1 setNegativePrefix:{+[NSString stringWithCharacters:length:](NSString, "stringWithCharacters:length:", &v18, 1)}];
  [a1 setCurrencyGroupingSeparator:{+[NSString stringWithCharacters:length:](NSString, "stringWithCharacters:length:", &a9, 1)}];
  [a1 setNotANumberSymbol:v16];
  [a1 setPercentSymbol:{+[NSString stringWithCharacters:length:](NSString, "stringWithCharacters:length:", &a11, 1)}];
  result = [a1 setPerMillSymbol:{+[NSString stringWithCharacters:length:](NSString, "stringWithCharacters:length:", &a11 + 2, 1)}];
  if (v15 != 48)
  {
    return [a1 setZeroSymbol:{+[NSString stringWithCharacters:length:](NSString, "stringWithCharacters:length:", &a11 + 4, 1)}];
  }

  return result;
}

IOSCharArray *sub_1001EF224(void *a1, uint64_t a2)
{
  [a1 setAllowsFloats:0];
  v4 = [a1 positiveFormat];
  if (([v4 hasPrefix:@"%"] & 1) != 0 || objc_msgSend(v4, "hasSuffix:", @"%"))
  {
    [a1 setNumberStyle:3];
    v5 = (a2 * 100.0);
  }

  else
  {
    if (([v4 hasPrefix:@"¤"] & 1) != 0 || objc_msgSend(v4, "hasSuffix:", @"¤"))
    {
      v6 = a1;
      v7 = 2;
    }

    else
    {
      v6 = a1;
      v7 = 0;
    }

    [v6 setNumberStyle:v7];
    v5 = a2;
  }

  v8 = [objc_msgSend(a1 stringFromNumber:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", v5)), "stringByReplacingOccurrencesOfString:withString:", @" ", @" "}];

  return [IOSCharArray arrayWithNSString:v8];
}

IOSCharArray *sub_1001EF39C(void *a1, double a2)
{
  [a1 setAllowsFloats:1];
  v4 = [a1 positiveFormat];
  if (([v4 hasPrefix:@"%"] & 1) != 0 || objc_msgSend(v4, "hasSuffix:", @"%"))
  {
    [a1 setNumberStyle:3];
    v5 = a2 * 100.0;
  }

  else
  {
    if (([v4 hasPrefix:@"¤"] & 1) != 0 || objc_msgSend(v4, "hasSuffix:", @"¤"))
    {
      v6 = a1;
      v7 = 2;
    }

    else
    {
      v6 = a1;
      v7 = 0;
    }

    [v6 setNumberStyle:v7];
    v5 = a2;
  }

  v8 = [objc_msgSend(a1 stringFromNumber:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v5)), "stringByReplacingOccurrencesOfString:withString:", @" ", @" "}];

  return [IOSCharArray arrayWithNSString:v8];
}

JavaLangLong *sub_1001EF958(void *a1, void *a2, void *a3)
{
  v6 = [a3 getIndex];
  v7 = v6;
  v8 = [a2 length];
  v9 = v8 - v6;
  v23 = v6;
  v24 = &v8[-v6];
  if (v8 != v6)
  {
    v10 = v8;
    if (([a1 allowsFloats] & 1) == 0 && objc_msgSend(a2, "characterAtIndex:", v6) == 48)
    {
      if (v10 <= v6 + 1)
      {
LABEL_8:
        [a3 setIndexWithInt:(v7 + v9)];

        return JavaLangLong_valueOfWithLong_(0, v12);
      }

      v11 = v6 + 1;
      while ([a2 characterAtIndex:v11] == 48)
      {
        if (v10 == ++v11)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v25 = 0;
  v22 = 0;
  if (![a1 getObjectValue:&v25 forString:a2 range:&v23 error:&v22] || v22)
  {
    [a3 setErrorIndexWithInt:v7];
    return 0;
  }

  else
  {
    [a3 setIndexWithInt:(v7 + v24)];
    [v25 doubleValue];
    *v15.i64 = *v14.i64 - trunc(*v14.i64);
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    if (*vbslq_s8(vnegq_f64(v16), v15, v14).i64 == 0.0)
    {
      v17 = [v25 longLongValue];
      return JavaLangLong_valueOfWithLong_(v17, v18);
    }

    else
    {
      v19 = [v25 doubleValue];
      return JavaLangDouble_valueOfWithDouble_(v19, v20, v21);
    }
  }
}

id sub_1001EFE78(void *a1, uint64_t a2, __int16 a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, __int16 a8, __int16 a9, uint64_t a10, int a11, __int16 a12)
{
  v16 = objc_alloc_init(NSNumberFormatter);
  sub_1001EFFA8(v16, a1);
  WORD2(v19) = a12;
  LODWORD(v19) = a11;
  LOWORD(v18) = a9;
  sub_1001EEEAC(v16, a2, a3, a4, a5, a6, a7, a8, v18, a10, v19);

  return v16;
}

id sub_1001EFFA8(void *a1, void *a2)
{
  v3 = [a2 componentsSeparatedByString:@";"];
  [a1 setPositiveFormat:objc_msgSend(v3, "objectAtIndex:", 0)];
  result = [v3 count];
  if (result >= 2)
  {
    v5 = [v3 objectAtIndex:1];

    return [a1 setNegativeFormat:v5];
  }

  return result;
}

LibcoreIcuNativeDecimalFormat *new_LibcoreIcuNativeDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(void *a1, void *a2)
{
  v4 = [LibcoreIcuNativeDecimalFormat alloc];
  LibcoreIcuNativeDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(&v4->super.isa, a1, a2);
  return v4;
}

LibcoreIcuNativeDecimalFormat *new_LibcoreIcuNativeDecimalFormat_initWithNSString_withLibcoreIcuLocaleData_(void *a1, uint64_t a2)
{
  v4 = [LibcoreIcuNativeDecimalFormat alloc];
  LibcoreIcuNativeDecimalFormat_initWithNSString_withLibcoreIcuLocaleData_(&v4->super.isa, a1, a2);
  return v4;
}

uint64_t sub_1001F01D8(void *a1, uint64_t a2, uint64_t a3)
{
  if (atomic_load_explicit(LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1001F08BC();
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  v4 = [a1 getField];
  if (v4 >= 2)
  {
    v5 = [a1 getFieldAttribute];
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = qword_100554F60;
    if (qword_100554F60)
    {
      v7 = v5;
      v4 = 0;
      while (v4 < *(v6 + 8))
      {
        v8 = *(v6 + 24 + 8 * v4);
        if (!v8)
        {
          goto LABEL_11;
        }

        if ([v8 isEqual:v7])
        {
          return v4;
        }

        ++v4;
        v6 = qword_100554F60;
        if (!qword_100554F60)
        {
          goto LABEL_11;
        }
      }

      return 0xFFFFFFFFLL;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  return v4;
}

uint64_t sub_1001F03C8(uint64_t result)
{
  v1 = *(result + 8);
  if (!v1 || (v2 = *(result + 16), v2 < 0) || v2 == *(v1 + 8))
  {
    v3 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v3);
  }

  return result;
}

void *FillInStackTraceInternal(uint64_t a1)
{
  memset(v5, 0, 512);
  *(a1 + 80) = backtrace(v5, 128);
  v2 = (8 * *(a1 + 80));
  v3 = malloc_type_malloc(v2, 0x80040B8603338uLL);
  *(a1 + 72) = v3;
  return memcpy(v3, v5, v2);
}

id JavaLangThrowable_initWithJavaLangThrowable_(void *a1, id a2)
{
  v2 = a2;
  if (a2)
  {
    a2 = [a2 description];
  }

  return JavaLangThrowable_initWithNSString_withJavaLangThrowable_withBoolean_withBoolean_(a1, a2, v2, 1, 1);
}

id JavaLangThrowable_initWithNSString_withJavaLangThrowable_withBoolean_withBoolean_(void *a1, void *a2, void *a3, int a4, int a5)
{
  [a1 initWithName:objc_msgSend(objc_opt_class() reason:"description") userInfo:{a2, 0}];
  a1[5] = a3;
  v10 = a2;
  result = 0;
  a1[6] = v10;
  if (a4)
  {
    if (qword_100554F70 != -1)
    {
      sub_1001F1690();
    }

    result = [IOSObjectArray newArrayWithLength:0 type:qword_100554F68];
  }

  a1[8] = result;
  if (a5)
  {

    return FillInStackTraceInternal(a1);
  }

  return result;
}

JavaLangThrowable *new_JavaLangThrowable_init()
{
  v0 = [JavaLangThrowable alloc];
  JavaLangThrowable_initWithNSString_withJavaLangThrowable_withBoolean_withBoolean_(v0, 0, 0, 1, 1);
  return v0;
}

JavaLangThrowable *new_JavaLangThrowable_initWithNSString_(void *a1)
{
  v2 = [JavaLangThrowable alloc];
  JavaLangThrowable_initWithNSString_withJavaLangThrowable_withBoolean_withBoolean_(v2, a1, 0, 1, 1);
  return v2;
}

uint64_t JavaLangThrowable_class_(uint64_t a1)
{
  if (qword_100554F70 != -1)
  {
    sub_1001F1690();
  }

  return qword_100554F68;
}

JavaLangIllegalMonitorStateException *new_JavaLangIllegalMonitorStateException_init()
{
  v0 = [JavaLangIllegalMonitorStateException alloc];
  JavaLangRuntimeException_init(v0);
  return v0;
}

uint64_t JavaUtilSortedMap_class_(uint64_t a1, uint64_t a2)
{
  if (qword_100554F80 != -1)
  {
    sub_1001F17A4();
  }

  return qword_100554F78;
}

JavaIoUTFDataFormatException *new_JavaIoUTFDataFormatException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaIoUTFDataFormatException alloc];
  JavaIoIOException_initWithNSString_(v2, a1);
  return v2;
}

JavaNioChannelsUnsupportedAddressTypeException *new_JavaNioChannelsUnsupportedAddressTypeException_init()
{
  v0 = [JavaNioChannelsUnsupportedAddressTypeException alloc];
  JavaLangIllegalArgumentException_init(v0, v1);
  return v0;
}

JavaNioCharArrayBuffer *JavaNioCharBuffer_allocateWithInt_(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0x80000000) != 0)
  {
    v10 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"capacity < 0: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  v8 = new_JavaNioCharArrayBuffer_initWithCharArray_([IOSCharArray arrayWithLength:a1, a4, a5, a6, a7, a8]);

  return v8;
}

JavaNioCharArrayBuffer *JavaNioCharBuffer_wrapWithCharArray_(unsigned int *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = a1[2];

  return JavaNioCharBuffer_wrapWithCharArray_withInt_withInt_(a1, 0, v2);
}

JavaNioCharArrayBuffer *JavaNioCharBuffer_wrapWithCharArray_withInt_withInt_(unsigned int *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = a2;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(a1[2], a2, a3);
  result = new_JavaNioCharArrayBuffer_initWithCharArray_(a1);
  result->super.super.position_ = v4;
  result->super.super.limit_ = a3 + v4;
  return result;
}

JavaNioCharSequenceAdapter *JavaNioCharBuffer_wrapWithJavaLangCharSequence_(void *a1)
{
  v1 = new_JavaNioCharSequenceAdapter_initWithJavaLangCharSequence_(a1);

  return v1;
}

JavaNioCharSequenceAdapter *JavaNioCharBuffer_wrapWithJavaLangCharSequence_withInt_withInt_(void *a1, int a2, int a3)
{
  if (a2 < 0 || a3 < a2)
  {
    if (a1)
    {
LABEL_7:
      [a1 length];
      v14 = JreStrcat("$I$I$I", v7, v8, v9, v10, v11, v12, v13, @"cs.length()=");
      v15 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  if ([a1 length] < a3)
  {
    goto LABEL_7;
  }

  result = new_JavaNioCharSequenceAdapter_initWithJavaLangCharSequence_(a1);
  result->super.super.position_ = a2;
  result->super.super.limit_ = a3;
  return result;
}

JavaNioChannelsOverlappingFileLockException *new_JavaNioChannelsOverlappingFileLockException_init()
{
  v0 = [JavaNioChannelsOverlappingFileLockException alloc];
  JavaLangIllegalStateException_init(v0, v1);
  return v0;
}

OrgXmlSaxSAXNotRecognizedException *new_OrgXmlSaxSAXNotRecognizedException_initWithNSString_(uint64_t a1)
{
  v2 = [OrgXmlSaxSAXNotRecognizedException alloc];
  OrgXmlSaxSAXException_initWithNSString_(v2, a1);
  return v2;
}

JavaMathBigInteger *JavaMathMultiplication_multiplyWithJavaMathBigInteger_withJavaMathBigInteger_(int *a1, int *a2)
{
  if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F4A04();
  }

  return JavaMathMultiplication_karatsubaWithJavaMathBigInteger_withJavaMathBigInteger_(a1, a2);
}

JavaMathBigInteger *JavaMathMultiplication_karatsubaWithJavaMathBigInteger_withJavaMathBigInteger_(int *a1, int *a2)
{
  if (atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    sub_1001F4A04();
    if (!a2)
    {
      goto LABEL_26;
    }
  }

  if (!a1)
  {
    goto LABEL_26;
  }

  v4 = a2[4];
  v5 = a1[4];
  if (v4 <= v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  if (v4 > v5)
  {
    a1 = a2;
  }

  if (v6[4] <= 62)
  {

    return JavaMathMultiplication_multiplyPAPWithJavaMathBigInteger_withJavaMathBigInteger_(a1, v6);
  }

  v8 = (16 * a1[4]) & 0xFFFFFFE0;
  v9 = [a1 shiftRightWithInt:v8];
  v10 = [v6 shiftRightWithInt:v8];
  if (!v9 || (v11 = v10, v12 = [a1 subtractWithJavaMathBigInteger:{objc_msgSend(v9, "shiftLeftWithInt:", v8)}], !v11) || (v13 = v12, v14 = objc_msgSend(v6, "subtractWithJavaMathBigInteger:", objc_msgSend(v11, "shiftLeftWithInt:", v8)), v15 = JavaMathMultiplication_karatsubaWithJavaMathBigInteger_withJavaMathBigInteger_(v9, v11), v16 = JavaMathMultiplication_karatsubaWithJavaMathBigInteger_withJavaMathBigInteger_(v13, v14), v17 = objc_msgSend(v9, "subtractWithJavaMathBigInteger:", v13), !v14) || (v18 = JavaMathMultiplication_karatsubaWithJavaMathBigInteger_withJavaMathBigInteger_(v17, objc_msgSend(v14, "subtractWithJavaMathBigInteger:", v11))) == 0 || (v19 = objc_msgSend(v18, "addWithJavaMathBigInteger:", v15)) == 0 || (v20 = objc_msgSend(v19, "addWithJavaMathBigInteger:", v16)) == 0 || (v21 = objc_msgSend(v20, "shiftLeftWithInt:", v8), !v15) || (v22 = v21, (v23 = objc_msgSend(v15, "shiftLeftWithInt:", (2 * v8))) == 0) || (v24 = objc_msgSend(v23, "addWithJavaMathBigInteger:", v22)) == 0)
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  return [v24 addWithJavaMathBigInteger:v16];
}

JavaMathBigInteger *JavaMathMultiplication_multiplyPAPWithJavaMathBigInteger_withJavaMathBigInteger_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    sub_1001F4A04();
    if (!a1)
    {
      goto LABEL_21;
    }
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = v5 + v4;
  if (*(a1 + 20) == *(a2 + 20))
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  v8 = *(a1 + 8);
  if (v6 != 2)
  {
    v17 = *(a2 + 8);
    v18 = [IOSIntArray arrayWithLength:v6];
    JavaMathMultiplication_multArraysPAPWithIntArray_withInt_withIntArray_withInt_withIntArray_(v8, v4, v17, v5, v18);
    v19 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v7, v5 + v4, v18);
    [(JavaMathBigInteger *)v19 cutOffLeadingZeroes];
    return v19;
  }

  if (!v8)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v9 = *(v8 + 8);
  if (v9 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, 0);
  }

  v10 = *(v8 + 12);
  v11 = *(a2 + 8);
  v12 = *(v11 + 8);
  if (v12 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, 0);
  }

  v13 = *(v11 + 12);
  if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F4A04();
  }

  v14 = v13 * v10;
  if (HIDWORD(v14))
  {
    v20 = v13 * v10;
    return new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v7, 2, [IOSIntArray arrayWithInts:&v20 count:2]);
  }

  v15 = new_JavaMathBigInteger_initWithInt_withInt_(v7, v14);

  return v15;
}

uint64_t JavaMathMultiplication_multArraysPAPWithIntArray_withInt_withIntArray_withInt_withIntArray_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  if (atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = sub_1001F4A04();
    if (!a2)
    {
      return result;
    }
  }

  if (!a4)
  {
    return result;
  }

  if (a2 == 1)
  {
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, 0);
      }

      v11 = sub_1001F35A0(a5, a3, a4, *(v9 + 12));
      if (a5)
      {
        v12 = v11;
        result = *(a5 + 8);
        if ((a4 & 0x80000000) != 0 || result <= a4)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, a4);
        }

        *(a5 + 12 + 4 * a4) = v12;
        return result;
      }
    }

LABEL_24:
    JreThrowNullPointerException();
  }

  if (a4 == 1)
  {
    if (!a3)
    {
      goto LABEL_24;
    }

    v13 = *(a3 + 8);
    if (v13 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, 0);
    }

    v14 = sub_1001F35A0(a5, v9, a2, *(a3 + 12));
    if (!a5)
    {
      goto LABEL_24;
    }

    v15 = v14;
    result = *(a5 + 8);
    if ((a2 & 0x80000000) != 0 || result <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, a2);
    }

    *(a5 + 12 + 4 * a2) = v15;
  }

  else
  {

    return JavaMathMultiplication_multPAPWithIntArray_withIntArray_withIntArray_withInt_withInt_(v9, a3, a5, a2, a4);
  }

  return result;
}

uint64_t JavaMathMultiplication_multPAPWithIntArray_withIntArray_withIntArray_withInt_withInt_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = a4;
  v8 = result;
  if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
  {
    v26 = a5;
    v27 = result;
    result = sub_1001F4A04();
    v8 = v27;
    a5 = v26;
  }

  if (v8 == a2 && v5 == a5)
  {

    return JavaMathMultiplication_squareWithIntArray_withInt_withIntArray_(v8, v5, a3);
  }

  else if (v5 >= 1)
  {
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = v5;
      v12 = a5;
      v32 = v5;
      v33 = a5;
      while (1)
      {
        v13 = *(v8 + 8);
        if (v10 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v10);
        }

        if (a5 >= 1)
        {
          break;
        }

        if (!a3)
        {
          goto LABEL_37;
        }

        LODWORD(v15) = 0;
LABEL_30:
        result = *(a3 + 8);
        v25 = v10 + a5;
        if ((v10 + a5) < 0 || v25 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v25);
        }

        *(a3 + 12 + 4 * v25) = v15;
        ++v10;
        v9 += &_mh_execute_header;
        if (v10 == v11)
        {
          return result;
        }
      }

      if (a2)
      {
        v14 = 0;
        v15 = 0;
        v16 = *(v8 + 12 + 4 * v10);
        v17 = v9;
        while (1)
        {
          v18 = *(a2 + 8);
          if (v14 >= v18)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, v14);
          }

          if (!a3)
          {
            break;
          }

          v19 = *(a2 + 12 + 4 * v14);
          v20 = v10 + v14;
          v21 = *(a3 + 8);
          if (v10 + v14 < 0 || v21 <= v20)
          {
            IOSArray_throwOutOfBoundsWithMsg(v21, v10 + v14);
          }

          v22 = *(a3 + 12 + 4 * (v17 >> 32));
          if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
          {
            v29 = a5;
            v28 = v8;
            v30 = v9;
            v31 = v10;
            sub_1001F4A04();
            v11 = v32;
            v12 = v33;
            v9 = v30;
            v10 = v31;
            v8 = v28;
            a5 = v29;
          }

          v23 = *(a3 + 8);
          if ((v20 & 0x80000000) != 0 || v23 <= v20)
          {
            IOSArray_throwOutOfBoundsWithMsg(v23, v20);
          }

          v24 = v15 + v19 * v16 + v22;
          *(a3 + 12 + 4 * (v17 >> 32)) = v24;
          v15 = HIDWORD(v24);
          ++v14;
          v17 += &_mh_execute_header;
          if (v12 == v14)
          {
            goto LABEL_30;
          }
        }
      }
    }

LABEL_37:
    JreThrowNullPointerException();
  }

  return result;
}

unint64_t sub_1001F35A0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    sub_1001F4A04();
    a2 = v17;
  }

  if (a3 < 1)
  {
    return 0;
  }

  if (!a2)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v7 = 0;
  v8 = 0;
  v9 = a1;
  v10 = a2;
  v11 = a3;
  do
  {
    v12 = *(a2 + 8);
    if (v7 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v7);
    }

    v13 = *(v10 + 12);
    if (atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire))
    {
      if (!a1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v18 = a2;
      sub_1001F4A04();
      a2 = v18;
      if (!a1)
      {
        goto LABEL_18;
      }
    }

    v14 = *(a1 + 8);
    if (v7 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v7);
    }

    v15 = v8 + v13 * a4;
    *(v9 + 12) = v15;
    v8 = HIDWORD(v15);
    ++v7;
    v10 += 4;
    v9 += 4;
  }

  while (v11 != v7);
  return v8;
}