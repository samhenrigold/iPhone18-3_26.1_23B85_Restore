id sub_1004A9DE0(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v39 = a2;
  v9 = a3;
  v10 = a5;
  v40 = v9;
  v43 = v10;
  if ([v9 containsString:@"aladdink"])
  {
    v11 = @"aladdin";
    v12 = @"aladdink";
LABEL_5:
    v13 = [v9 stringByReplacingOccurrencesOfString:v12 withString:v11];

    v40 = v13;
    goto LABEL_6;
  }

  if ([v9 containsString:@"geniek"])
  {
    v11 = @"genie";
    v12 = @"geniek";
    goto LABEL_5;
  }

LABEL_6:
  v38 = a1;
  v41 = objc_alloc_init(NSMutableArray);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v39;
  v14 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = *v49;
  v16 = @"LPM";
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v49 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v48 + 1) + 8 * i);
      if (v10)
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v19 = v10;
        v20 = [v19 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v20)
        {
          v21 = v16;
          v22 = *v45;
          while (2)
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v45 != v22)
              {
                objc_enumerationMutation(v19);
              }

              if ([v18 containsString:*(*(&v44 + 1) + 8 * j)])
              {
                LODWORD(v20) = 1;
                goto LABEL_22;
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v44 objects:v53 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }

LABEL_22:
          v16 = v21;
        }

        v10 = v43;
        if (a4)
        {
LABEL_27:
          if ((v20 | [v18 containsString:v16] ^ 1))
          {
            continue;
          }

LABEL_28:
          [v41 addObject:v18];
          continue;
        }
      }

      else
      {
        LODWORD(v20) = 0;
        if (a4)
        {
          goto LABEL_27;
        }
      }

      if (((v20 | [v18 containsString:v16]) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  }

  while (v14);
LABEL_31:

  v24 = [NSPredicate predicateWithFormat:@"SELF MATCHES[c] %@", v40];
  v25 = [v41 filteredArrayUsingPredicate:v24];
  v26 = [v25 mutableCopy];

  if (![v26 count])
  {
    goto LABEL_36;
  }

  v27 = [v26 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];
  v28 = [v27 mutableCopy];

  v26 = v28;
  v29 = [v28 lastObject];
  v30 = [v29 length] > 0xFF;

  if (v30)
  {
    v31 = qword_100BCE8D8;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [v28 lastObject];
      sub_1008321E0(v32, v40, v52);
    }

LABEL_36:
    v33 = 0;
  }

  else
  {
    if ([v28 count] < 2)
    {
      goto LABEL_41;
    }

    v34 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      sub_100832170();
    }

    if (sub_10009B9DC(v34, v35) == 8)
    {
LABEL_41:
      v36 = [v28 lastObject];
    }

    else
    {
      v36 = (*(*v38 + 432))(v38, v28);
    }

    v33 = v36;
  }

  return v33;
}

id sub_1004AA2EC(uint64_t a1, void *a2)
{
  v27 = a2;
  v47 = 0;
  v31 = [NSRegularExpression regularExpressionWithPattern:@".*_([0-9]*)[.]([0-9]*)[.]([0-9]*)[.].*" options:1 error:&v47];
  v26 = v47;
  if (v26)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [v27 lastObject];
      v4 = [v26 debugDescription];
      sub_100832248(v3, v4, v50);
    }

    v5 = [v27 lastObject];
  }

  else
  {
    v37 = objc_alloc_init(NSNumberFormatter);
    v35 = [v27 lastObject];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v27;
    v6 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v6)
    {
      v33 = 0;
      v34 = 0;
      v36 = 0;
      v29 = *v44;
      v30 = v6;
      v7 = &stru_100B0F9E0;
      v8 = &stru_100B0F9E0;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v43 + 1) + 8 * i);
          v10 = [v31 matchesInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v33 = v10;
          v11 = [v33 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v11)
          {
            v38 = *v40;
            v7 = &stru_100B0F9E0;
            v8 = &stru_100B0F9E0;
            do
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v40 != v38)
                {
                  objc_enumerationMutation(v33);
                }

                v13 = *(*(&v39 + 1) + 8 * j);
                if ([v13 numberOfRanges] >= 4)
                {
                  v14 = [v13 rangeAtIndex:1];
                  v16 = [v9 substringWithRange:{v14, v15}];

                  v17 = [v13 rangeAtIndex:3];
                  v19 = [v9 substringWithRange:{v17, v18}];

                  v20 = [v37 numberFromString:v16];
                  v21 = [v20 longValue];

                  v22 = [v37 numberFromString:v19];
                  v23 = [v22 longValue];

                  if (v36 < v21 || v36 == v21 && v34 < v23)
                  {
                    v24 = v9;

                    v35 = v24;
                    v36 = v21;
                    v8 = v16;
                    v7 = v19;
                    v34 = v23;
                  }

                  else
                  {
                    v8 = v16;
                    v7 = v19;
                  }
                }
              }

              v11 = [v33 countByEnumeratingWithState:&v39 objects:v48 count:16];
            }

            while (v11);
          }

          else
          {
            v7 = &stru_100B0F9E0;
            v8 = &stru_100B0F9E0;
          }
        }

        v30 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v30);
    }

    else
    {
      v33 = 0;
      v8 = &stru_100B0F9E0;
      v7 = &stru_100B0F9E0;
    }

    v5 = v35;
  }

  return v5;
}

uint64_t sub_1004AA810(uint64_t a1, uint64_t *a2, void *a3, _DWORD *a4)
{
  bzero(v12, 0x240uLL);
  sub_1004AAC10(v12, a2, 8);
  if ((*(&v12[4] + *(v12[0] - 3)) & 5) != 0)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008322A8();
    }

    v7 = 2402;
  }

  else
  {
    *a4 = 0;
    std::istream::seekg();
    std::istream::tellg();
    *a4 = v11;
    std::istream::seekg();
    v9 = *a4;
    if (v9 <= 0)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100832420();
      }

      if (v13 && !std::filebuf::close())
      {
        std::ios_base::clear((v12 + *(v12[0] - 3)), *(&v12[4] + *(v12[0] - 3)) | 4);
      }

      v7 = 2403;
    }

    else
    {
      v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
      *a3 = v10;
      if (v10)
      {
        std::istream::read();
        if ((*(&v12[4] + *(v12[0] - 3)) & 5) != 0)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100832320();
          }

          if (v13 && !std::filebuf::close())
          {
            std::ios_base::clear((v12 + *(v12[0] - 3)), *(&v12[4] + *(v12[0] - 3)) | 4);
          }

          v7 = 2405;
        }

        else
        {
          if (v13 && !std::filebuf::close())
          {
            std::ios_base::clear((v12 + *(v12[0] - 3)), *(&v12[4] + *(v12[0] - 3)) | 4);
          }

          v7 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008323A8();
        }

        if (v13 && !std::filebuf::close())
        {
          std::ios_base::clear((v12 + *(v12[0] - 3)), *(&v12[4] + *(v12[0] - 3)) | 4);
        }

        v7 = 2404;
      }
    }
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return v7;
}

void sub_1004AABDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_1004AAC10(void (__cdecl ***a1)(std::ifstream *__hidden this), uint64_t *a2, int a3))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  a1[1] = 0;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 2);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1004AADA8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1004AADE0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v13 = a2 + 23;
  v12 = *(a2 + 23);
  if ((v12 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_3;
    }

LABEL_7:
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100832544();
    }

    return 2400;
  }

  if (!*(a2 + 1))
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!a4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008324A8();
    }

    return 2401;
  }

  if ((v12 & 0x80000000) != 0)
  {
    sub_100008904(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v31 = *(a2 + 2);
  }

  v15 = (*(*a1 + 400))(&v32, a1, &__dst, a6);
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = v32;
  *(a5 + 2) = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__dst);
  }

  if (*(a5 + 23) < 0)
  {
    v17 = *(a5 + 1);
    if (v17)
    {
      sub_100008904(&v28, *a5, v17);
LABEL_23:
      v14 = (*(*a1 + 440))(a1, &v28, a3, a4);
      if (SHIBYTE(v29) < 0)
      {
        v18 = v28;
LABEL_50:
        operator delete(v18);
        return v14;
      }

      return v14;
    }
  }

  else if (*(a5 + 23))
  {
    v28 = *a5;
    v29 = *(a5 + 2);
    goto LABEL_23;
  }

  if (sub_10009B9DC(v15, v16) == 8)
  {
    if (*v13 < 0)
    {
      sub_100008904(__p, *a2, *(a2 + 1));
    }

    else
    {
      *__p = *a2;
      v27 = *(a2 + 2);
    }

    (*(*a1 + 416))(&v32, a1, __p, a6);
    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    *a5 = v32;
    *(a5 + 2) = v33;
    HIBYTE(v33) = 0;
    LOBYTE(v32) = 0;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a5 + 23) < 0)
    {
      sub_100008904(&v24, *a5, *(a5 + 1));
    }

    else
    {
      v24 = *a5;
      v25 = *(a5 + 2);
    }

    v14 = (*(*a1 + 440))(a1, &v24, a3, a4);
    if (SHIBYTE(v25) < 0)
    {
      v18 = v24;
      goto LABEL_50;
    }
  }

  else
  {
    if (*v13 < 0)
    {
      sub_100008904(v22, *a2, *(a2 + 1));
    }

    else
    {
      *v22 = *a2;
      v23 = *(a2 + 2);
    }

    (*(*a1 + 408))(&v32, a1, v22);
    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    *a5 = v32;
    *(a5 + 2) = v33;
    HIBYTE(v33) = 0;
    LOBYTE(v32) = 0;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (*(a5 + 23) < 0)
    {
      sub_100008904(v20, *a5, *(a5 + 1));
    }

    else
    {
      *v20 = *a5;
      v21 = *(a5 + 2);
    }

    v14 = (*(*a1 + 440))(a1, v20, a3, a4);
    if (SHIBYTE(v21) < 0)
    {
      v18 = v20[0];
      goto LABEL_50;
    }
  }

  return v14;
}

void sub_1004AB218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004AB298(std::string *a1@<X8>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  sub_100007E30(a1, "");
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "System Settings MGCopyAnswer WSKU", &v10, 2u);
  }

  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3)
  {
    if (CFDataGetLength(v3) == 16)
    {
      v5 = 0;
      v6 = CFDataGetBytePtr(v4) + 8;
      do
      {
        v7 = v6[v5];
        if (v7 >= 0x21)
        {
          std::string::push_back(a1, v7);
        }

        ++v5;
      }

      while (v5 != 4);
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = a1;
        }

        else
        {
          v9 = a1->__r_.__value_.__r.__words[0];
        }

        v10 = 136315138;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Obtained sku from system is: %s", &v10, 0xCu);
      }
    }

    CFRelease(v4);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008325C4();
  }
}

uint64_t sub_1004AB45C()
{
  values = @"AppleSunriseBluetooth";
  keys = @"IOUserClass";
  v0 = sub_10022EB48(&keys, &values, 1);
  v1 = CFAutorelease(v0);
  notification = 0;
  v2 = IONotificationPortCreate(kIOMainPortDefault);
  RunLoopSource = IONotificationPortGetRunLoopSource(v2);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 2, v1);
  v6 = IOServiceAddMatchingNotification(v2, "IOServiceFirstMatch", MutableCopy, sub_1004AB64C, Current, &notification);
  if (v6)
  {
    sub_100304AF8("IOServiceAddMatchingNotification returned 0x%08x", v6);
    CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    IONotificationPortDestroy(v2);
    return 1;
  }

  if (IOIteratorNext(notification))
  {
    CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    IONotificationPortDestroy(v2);
    IOObjectRelease(notification);
  }

  else
  {
    do
    {
      sub_100304AF8("AppleSunriseBluetooth not found, waiting for it to appear");
      v8 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 5.0, 0);
      v9 = IOIteratorNext(notification);
      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8 == kCFRunLoopRunTimedOut;
      }
    }

    while (!v10);
    v11 = v9;
    CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    IONotificationPortDestroy(v2);
    IOObjectRelease(notification);
    if (!v11)
    {
      sub_100304AF8("PCIe could not find AppleSunriseBluetooth service");
      return 1;
    }
  }

  return 0;
}

void sub_1004AB64C(__CFRunLoop *a1)
{
  sub_100304AF8("AppleSunriseBluetooth found, releasing waiting thread");

  CFRunLoopStop(a1);
}

void sub_1004AB690(uint64_t a1)
{
  sub_1004AB944(a1);

  operator delete();
}

Class sub_1004AB708(uint64_t a1)
{
  if (!qword_100B6E810)
  {
    qword_100B6E810 = _sl_dlopen();
  }

  result = objc_getClass("SBSSmartCoverService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100B6E808 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1004AB808(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100B6E810 = result;
  return result;
}

uint64_t sub_1004AB87C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

void *sub_1004AB944(uint64_t a1)
{
  *a1 = off_100AF88E0;
  *(a1 + 8) = off_100AF8CC0;
  *(a1 + 16) = off_100AF8CE0;
  *(a1 + 24) = off_100AF8D00;
  *(a1 + 32) = off_100AF8D20;
  *(a1 + 40) = off_100AF8D40;
  *(a1 + 48) = off_100AF8D60;
  *(a1 + 56) = off_100AF8D80;
  *(a1 + 64) = off_100AF8DA0;
  *(a1 + 72) = off_100AF8DC0;
  *(a1 + 80) = off_100AF8DE0;
  *(a1 + 88) = off_100AF8E00;
  *(a1 + 96) = off_100AF8E20;
  *(a1 + 104) = off_100AF8E40;
  *(a1 + 112) = off_100AF8E60;
  *(a1 + 120) = off_100AF8E80;
  *(a1 + 128) = off_100AF8EA0;
  *(a1 + 136) = off_100AF8EC0;
  *(a1 + 144) = off_100AF8EE0;
  *(a1 + 152) = off_100AF8F00;
  *(a1 + 160) = off_100AF8F20;
  *(a1 + 168) = off_100AF8F40;
  *(a1 + 176) = off_100AF8F60;
  *(a1 + 184) = off_100AF8F80;
  *(a1 + 192) = off_100AF8FA0;
  *(a1 + 200) = off_100AF8FC0;
  *(a1 + 208) = off_100AF8FE0;
  *(a1 + 216) = off_100AF9000;
  *(a1 + 1352) = off_100AF9020;
  *(a1 + 1360) = &off_100AF9080;

  sub_10007A068(a1 + 1592);

  return sub_1004A3290(a1);
}

uint64_t sub_1004AC0D8(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 8);
  v8 = *(a1 + 80);
  if (v8 != (a1 + 88))
  {
    while (1)
    {
      v9 = v8[4];
      v10 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
      {
        break;
      }

      if (v9)
      {
        goto LABEL_4;
      }

LABEL_7:
      v13 = v8[1];
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
          v14 = v8[2];
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
      if (v14 == (a1 + 88))
      {
        return sub_1000088CC(v22);
      }
    }

    v16 = *(v9 + 8);
    *buf = 134219264;
    v24 = a2;
    v25 = 1024;
    v26 = a3;
    v27 = 1024;
    v28 = a4;
    v29 = 1024;
    v30 = a5;
    v31 = 1024;
    v32 = a6;
    v33 = 2048;
    v34 = v16;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "BTDeviceMsgHandler::BTServiceEventCallback device:%llx services:%x eventType:%x ServiceSpecificEvent:%x result:%d cbid:%llx", buf, 0x2Eu);
LABEL_4:
    if (*(*(v9 + 24) + 160) == 1)
    {
      v11 = xpc_dictionary_create(0, 0, 0);
      v12 = v11;
      if (v11)
      {
        xpc_dictionary_set_uint64(v11, "kCBMsgArgID", *(v9 + 8));
        xpc_dictionary_set_uint64(v12, "kCBMsgArgSessionID", *(v9 + 16));
        xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a2);
        xpc_dictionary_set_uint64(v12, "kCBMsgArgServiceMask", a3);
        xpc_dictionary_set_uint64(v12, "kCBMsgArgEventType", a4);
        xpc_dictionary_set_uint64(v12, "kCBMsgArgEvent", a5);
        xpc_dictionary_set_uint64(v12, "kCBMsgArgResult", a6);
        sub_100383144(*(v9 + 24), "kCBMsgIdServiceEvent", v12, 1);
      }
    }

    goto LABEL_7;
  }

  return sub_1000088CC(v22);
}

uint64_t sub_1004AC368(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  if (a6)
  {
    return sub_1004AC0D8(a6, result, a2, a3, a4, a5);
  }

  return result;
}

void sub_1004AC390(id a1)
{
  v55 = "kCBMsgIdDeviceAddressToStringMsg";
  v56 = 32;
  v57 = &v55;
  v1 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v1[4] = sub_1004AD100;
  v1[5] = 0;
  v55 = "kCBMsgIdDeviceAddressFromStringMsg";
  v56 = 34;
  v57 = &v55;
  v2 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v2[4] = sub_10009CE78;
  v2[5] = 0;
  v55 = "kCBMsgIdDeviceFromAddressMsg";
  v56 = 28;
  v57 = &v55;
  v3 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v3[4] = sub_10009C96C;
  v3[5] = 0;
  v55 = "kCBMsgIdDeviceFromIdentifierMsg";
  v56 = 31;
  v57 = &v55;
  v4 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v4[4] = sub_1000D6828;
  v4[5] = 0;
  v55 = "kCBMsgIdDeviceGetAddressStringMsg";
  v56 = 33;
  v57 = &v55;
  v5 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v5[4] = sub_1000E405C;
  v5[5] = 0;
  v55 = "kCBMsgIdDeviceGetDeviceTypeMsg";
  v56 = 30;
  v57 = &v55;
  v6 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v6[4] = sub_1000E6FF8;
  v6[5] = 0;
  v55 = "kCBMsgIdDeviceGetDeviceClassMsg";
  v56 = 31;
  v57 = &v55;
  v7 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v7[4] = sub_1004AD2F4;
  v7[5] = 0;
  v55 = "kCBMsgIdDeviceGetDefaultNameMsg";
  v56 = 31;
  v57 = &v55;
  v8 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v8[4] = sub_1004AD3E0;
  v8[5] = 0;
  v55 = "kCBMsgIdDeviceGetNameMsg";
  v56 = 24;
  v57 = &v55;
  v9 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v9[4] = sub_1004AD544;
  v9[5] = 0;
  v55 = "kCBMsgIdDeviceGetProductNameMsg";
  v56 = 31;
  v57 = &v55;
  v10 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v10[4] = sub_1004AD6A8;
  v10[5] = 0;
  v55 = "kCBMsgIdDeviceSetUserNameMsg";
  v56 = 28;
  v57 = &v55;
  v11 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v11[4] = sub_1004AD80C;
  v11[5] = 0;
  v55 = "kCBMsgIdDeviceGetSyncSettingsMsg";
  v56 = 32;
  v57 = &v55;
  v12 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v12[4] = sub_1004AD8F8;
  v12[5] = 0;
  v55 = "kCBMsgIdDeviceSetSyncSettingsMsg";
  v56 = 32;
  v57 = &v55;
  v13 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v13[4] = sub_1004AD9E4;
  v13[5] = 0;
  v55 = "kCBMsgIdDeviceGetGroupsMsg";
  v56 = 26;
  v57 = &v55;
  v14 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v14[4] = sub_1004ADAD0;
  v14[5] = 0;
  v55 = "kCBMsgIdDeviceSetGroupMsg";
  v56 = 25;
  v57 = &v55;
  v15 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v15[4] = sub_1004ADC8C;
  v15[5] = 0;
  v55 = "kCBMsgIdDeviceGetPairingStatusMsg";
  v56 = 33;
  v57 = &v55;
  v16 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v16[4] = sub_1004ADD90;
  v16[5] = 0;
  v55 = "kCBMsgIdDeviceGetCloudPairingStatusMsg";
  v56 = 38;
  v57 = &v55;
  v17 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v17[4] = sub_1004ADE7C;
  v17[5] = 0;
  v55 = "kCBMsgIdDeviceGetMagicPairingStatusMsg";
  v56 = 38;
  v57 = &v55;
  v18 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v18[4] = sub_1004ADF68;
  v18[5] = 0;
  v55 = "kCBMsgIdDeviceGetConnectionStatusMsg";
  v56 = 36;
  v57 = &v55;
  v19 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v19[4] = sub_1004AE054;
  v19[5] = 0;
  v55 = "kCBMsgIdDeviceIsAppleAudioDeviceMsg";
  v56 = 35;
  v57 = &v55;
  v20 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v20[4] = sub_1004AE140;
  v20[5] = 0;
  v55 = "kCBMsgIdDeviceSupportsHSMsg";
  v56 = 27;
  v57 = &v55;
  v21 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v21[4] = sub_1004AE22C;
  v21[5] = 0;
  v55 = "kCBMsgIdDeviceIsProControllerMsg";
  v56 = 32;
  v57 = &v55;
  v22 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v22[4] = sub_1004AE318;
  v22[5] = 0;
  v55 = "kCBMsgIdDeviceServiceAddCallbacksMsg";
  v56 = 36;
  v57 = &v55;
  v23 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v23[4] = sub_1004AE404;
  v23[5] = 0;
  v55 = "kCBMsgIdDeviceServiceRemoveCallbacksMsg";
  v56 = 39;
  v57 = &v55;
  v24 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v24[4] = sub_1004AE638;
  v24[5] = 0;
  v55 = "kCBMsgIdDeviceConnectMsg";
  v56 = 24;
  v57 = &v55;
  v25 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v25[4] = sub_1004AE820;
  v25[5] = 0;
  v55 = "kCBMsgIdDeviceConnectServicesMsg";
  v56 = 32;
  v57 = &v55;
  v26 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v26[4] = sub_1004AE8EC;
  v26[5] = 0;
  v55 = "kCBMsgIdDeviceConnectServicesWithParametersMsg";
  v56 = 46;
  v57 = &v55;
  v27 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v27[4] = sub_1004AE9D8;
  v27[5] = 0;
  v55 = "kCBMsgIdDeviceDisconnectMsg";
  v56 = 27;
  v57 = &v55;
  v28 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v28[4] = sub_1004AEB3C;
  v28[5] = 0;
  v55 = "kCBMsgIdDeviceDisconnectServicesMsg";
  v56 = 35;
  v57 = &v55;
  v29 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v29[4] = sub_1004AEC08;
  v29[5] = 0;
  v55 = "kCBMsgIdDeviceGetConnectedServicesMsg";
  v56 = 37;
  v57 = &v55;
  v30 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v30[4] = sub_1004AECF4;
  v30[5] = 0;
  v55 = "kCBMsgIdDeviceGetSupportedServicesMsg";
  v56 = 37;
  v57 = &v55;
  v31 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v31[4] = sub_1004AEDE0;
  v31[5] = 0;
  v55 = "kCBMsgIdDeviceSetServiceSettingsMsg";
  v56 = 35;
  v57 = &v55;
  v32 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v32[4] = sub_1004AEECC;
  v32[5] = 0;
  v55 = "kCBMsgIdDeviceGetServiceSettingsMsg";
  v56 = 35;
  v57 = &v55;
  v33 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v33[4] = sub_1004AEFF0;
  v33[5] = 0;
  v55 = "kCBMsgIdDeviceSetVirtualTypeMsg";
  v56 = 31;
  v57 = &v55;
  v34 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v34[4] = sub_1004AF16C;
  v34[5] = 0;
  v55 = "kCBMsgIdDeviceGetVirtualTypeMsg";
  v56 = 31;
  v57 = &v55;
  v35 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v35[4] = sub_1004AF258;
  v35[5] = 0;
  v55 = "kCBMsgIdDeviceGetComPortForServiceMsg";
  v56 = 37;
  v57 = &v55;
  v36 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v36[4] = sub_1004AF344;
  v36[5] = 0;
  v55 = "kCBMsgIdDeviceGetComPortForServiceWithSandboxExtensionMsg";
  v56 = 57;
  v57 = &v55;
  v37 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v37[4] = sub_1004AF4E0;
  v37[5] = 0;
  v55 = "kCBMsgIdDeviceMatchesAdvertisedKeyMsg";
  v56 = 37;
  v57 = &v55;
  v38 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v38[4] = sub_1004AF72C;
  v38[5] = 0;
  v55 = "kCBMsgIdDeviceGetAdvertisedValueForKeyMsg";
  v56 = 41;
  v57 = &v55;
  v39 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v39[4] = sub_1004AF848;
  v39[5] = 0;
  v55 = "kCBMsgIdDeviceGetDeviceIdMsg";
  v56 = 28;
  v57 = &v55;
  v40 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v40[4] = sub_1004AFA00;
  v40[5] = 0;
  v55 = "kCBMsgIdDeviceSetHIDPropertiesMsg";
  v56 = 33;
  v57 = &v55;
  v41 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v41[4] = sub_1004AFB34;
  v41[5] = 0;
  v55 = "kCBMsgIdDevicePhysicalLinkDisconnectMsg";
  v56 = 39;
  v57 = &v55;
  v42 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v42[4] = sub_1004AFC38;
  v42[5] = 0;
  v55 = "kCBMsgIdDeviceConfigureLinkKeyMsg";
  v56 = 33;
  v57 = &v55;
  v43 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v43[4] = sub_1004AFD00;
  v43[5] = 0;
  v55 = "kCBMsgIdDeviceIsTemporaryPairedMsg";
  v56 = 34;
  v57 = &v55;
  v44 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v44[4] = sub_1004AFE8C;
  v44[5] = 0;
  v55 = "kCBMsgIdDeviceIsWirelessSplitterSupportedMsg";
  v56 = 44;
  v57 = &v55;
  v45 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v45[4] = sub_1004AFF78;
  v45[5] = 0;
  v55 = "kCBMsgIdDeviceIsTemporaryPairedNotInContactsMsg";
  v56 = 47;
  v57 = &v55;
  v46 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v46[4] = sub_1004B0064;
  v46[5] = 0;
  v55 = "kCBMsgIdDeviceGetLowSecurityStatusMsg";
  v56 = 37;
  v57 = &v55;
  v47 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v47[4] = sub_1004B0150;
  v47[5] = 0;
  v55 = "kCBMsgIdDeviceGetHIDDeviceBehaviorMsg";
  v56 = 37;
  v57 = &v55;
  v48 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v48[4] = sub_1004B023C;
  v48[5] = 0;
  v55 = "kCBMsgIdDeviceSetHijackAudioRouteMsg";
  v56 = 36;
  v57 = &v55;
  v49 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v49[4] = sub_1004B032C;
  v49[5] = 0;
  v55 = "kCBMsgIdDeviceSetACLHighPriorityMsg";
  v56 = 35;
  v57 = &v55;
  v50 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v50[4] = sub_1004B0418;
  v50[5] = 0;
  v55 = "kCBMsgIdDeviceIsCentralMsg";
  v56 = 26;
  v57 = &v55;
  v51 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v51[4] = sub_1004B051C;
  v51[5] = 0;
  v55 = "kCBMsgIdDeviceGetUserSelectedDeviceTypeMsg";
  v56 = 42;
  v57 = &v55;
  v52 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v52[4] = sub_1004B0608;
  v52[5] = 0;
  v55 = "kCBMsgIdDeviceSetUserSelectedDeviceTypeMsg";
  v56 = 42;
  v57 = &v55;
  v53 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v53[4] = sub_1004B06F4;
  v53[5] = 0;
  v55 = "kCBMsgIdDeviceIsGenuineAirPodsMsg";
  v56 = 33;
  v57 = &v55;
  v54 = sub_10009C6F0(&xmmword_100BCE580, &v55, &unk_1008A9BD0, &v57);
  v54[4] = sub_1004B07E0;
  v54[5] = 0;
}

void sub_1004AD100(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgAddressBytes", &length);
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAddressStringBuffSize");
  if (length != 6 || uint64 == 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
    {
      sub_10083264C();
    }

    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v9 = reply;
      xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", 3uLL);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
      xpc_release(v9);
    }
  }

  else
  {
    if (uint64 >= 0x200)
    {
      v10 = 512;
    }

    else
    {
      v10 = uint64;
    }

    __chkstk_darwin(uint64);
    v12 = &length - v11;
    bzero(&length - v11, v10);
    *v12 = 0;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10083260C();
    }

    v13 = sub_100528FD0(data, v12, v10);
    v14 = xpc_dictionary_create_reply(xdict);
    if (v14)
    {
      v15 = v14;
      xpc_dictionary_set_uint64(v14, "kCBMsgArgResult", v13);
      xpc_dictionary_set_string(v15, "kCBMsgArgAddressString", v12);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v15);
      xpc_release(v15);
    }
  }
}

void sub_1004AD2F4(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008328BC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1005290A8(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgDeviceClass", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AD3E0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  memset(v11, 0, sizeof(v11));
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832924();
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if (!uint64)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6 >= 0x100)
  {
    v7 = 256;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_100529174(uint64, v11, v7);
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_string(v10, "kCBMsgArgName", v11);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1004AD544(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  memset(v11, 0, sizeof(v11));
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10083298C();
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if (!uint64)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6 >= 0x100)
  {
    v7 = 256;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_100529378(uint64, v11, v7);
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_string(v10, "kCBMsgArgName", v11);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1004AD6A8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  memset(v11, 0, sizeof(v11));
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008329F4();
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if (!uint64)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6 >= 0x100)
  {
    v7 = 256;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_1005295D4(uint64, v11, v7);
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_string(v10, "kCBMsgArgName", v11);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1004AD80C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  string = xpc_dictionary_get_string(value, "kCBMsgArgName");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832A5C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100529830(uint64, string);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1004AD8F8(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832AC4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1005299A8(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgSyncSettings", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AD9E4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgSyncSettings");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832B2C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100529A70(uint64, v6);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1004ADAD0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgGrouIdArraySize");
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  bzero(&v15 - v7, v9);
  v15 = v6;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832B94();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v10 = sub_100529B20(uint64, v8, &v15);
    goto LABEL_6;
  }

  v15 = 0;
  v10 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    v13 = xpc_array_create(0, 0);
    if (v15)
    {
      for (i = 0; i < v15; ++i)
      {
        xpc_array_set_uint64(v13, 0xFFFFFFFFFFFFFFFFLL, *&v8[4 * i]);
      }
    }

    xpc_dictionary_set_value(v12, "kCBMsgArgGrouIdArray", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v13);
    xpc_release(v12);
  }
}

void sub_1004ADC8C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgGrouId");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832BFC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_100529BE0(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1004ADD90(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832C64();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_100529D80(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgPaired", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004ADE7C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832CCC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_100529ED4(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgPaired", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004ADF68(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832D34();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_100529F34(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgPaired", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AE054(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832D9C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_100529FCC(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgConnected", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AE140(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832E04();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052A038(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AE22C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832E6C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052A108(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AE318(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832ED4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052A1D8(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

uint64_t sub_1004AE404(uint64_t a1, void *a2)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 8);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSessionID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgServiceMask");
  if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_17:
    v9 = 1;
    goto LABEL_18;
  }

  sub_100832F3C();
  if (!uint64)
  {
    goto LABEL_17;
  }

LABEL_3:
  v8 = *(a1 + 80);
  if (v8 == (a1 + 88))
  {
LABEL_13:
    v14 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A00407049A3A3uLL);
    v19 = v14;
    v14[1] = v6;
    v14[2] = uint64;
    *v14 = sub_1004AC368;
    v14[3] = *(a1 + 72);
    sub_1000452CC(a1 + 80, &v19, &v19);
    if (*(a1 + 104))
    {
      v9 = 0;
    }

    else
    {
      v15 = sub_10052A240(uint64, *v19, v7, a1);
      *(a1 + 104) = 1;
      v9 = v15;
    }
  }

  else
  {
    v9 = 1;
    while (1)
    {
      v10 = v8[4];
      if (*(v10 + 8) == v6 && *(v10 + 16) == uint64)
      {
        break;
      }

      v11 = v8[1];
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
          v12 = v8[2];
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v8 = v12;
      if (v12 == (a1 + 88))
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  reply = xpc_dictionary_create_reply(a2);
  v17 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v17);
    xpc_release(v17);
  }

  return sub_1000088CC(v20);
}

void sub_1004AE610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004AE638(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSessionID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832FC0();
  }

  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 8);
  if (uint64)
  {
    v7 = *(a1 + 80);
    if (v7 == (a1 + 88))
    {
LABEL_13:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100833028();
      }

      v12 = 3;
    }

    else
    {
      while (1)
      {
        v8 = v7[4];
        if (v8[1] == v6 && v8[2] == uint64)
        {
          break;
        }

        v9 = v7[1];
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
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
        if (v10 == (a1 + 88))
        {
          goto LABEL_13;
        }
      }

      v17 = v7[4];
      if (*(a1 + 104) == 1)
      {
        v13 = sub_10052A2B4(uint64, *v8);
        *(a1 + 104) = 0;
        v12 = v13;
      }

      else
      {
        v12 = 0;
      }

      sub_100075DC4((a1 + 80), &v17);
      free(v17);
    }
  }

  else
  {
    v12 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v15 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v15);
    xpc_release(v15);
  }

  return sub_1000088CC(v18);
}

void sub_1004AE808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004AE820(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833068();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052A310(uint64, 0xFFFFFFFFLL);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AE8EC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgServices");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008330D0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052A310(uint64, v6);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1004AE9D8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgServices");
  data = xpc_dictionary_get_data(value, "kCBMsgArgKey", 0);
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgConnectionMode");
  v12 = 0uLL;
  if (data)
  {
    v12 = *data;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833138();
    if (uint64)
    {
      goto LABEL_5;
    }
  }

  else if (uint64)
  {
LABEL_5:
    v9 = sub_10052A78C(uint64, v6, v8, &v12);
    goto LABEL_8;
  }

  v9 = 1;
LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1004AEB3C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008331A0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052B3F4(uint64, 0xFFFFFFFFLL);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AEC08(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgServiceMask");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833208();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052B3F4(uint64, v6);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1004AECF4(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833270();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052B6AC(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgServiceMask", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AEDE0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008332D8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052B7E4(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgServiceMask", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AEECC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  string = xpc_dictionary_get_string(value, "kCBMsgArgKey");
  v7 = xpc_dictionary_get_string(value, "kCBMsgArgValue");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgServiceMask");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833340();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_10052B918(uint64, v8, string, v7);
    goto LABEL_6;
  }

  v9 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1004AEFF0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  string = xpc_dictionary_get_string(value, "kCBMsgArgKey");
  memset(v11, 0, sizeof(v11));
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgServiceMask");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008333A8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10052B9EC(uint64, v7, string, v11);
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_string(v10, "kCBMsgArgValue", v11);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1004AF16C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  xpc_dictionary_get_uint64(value, "kCBMsgArgType");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833410();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052BAC0(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AF258(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833478();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_100529ED4(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgType", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AF344(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  if (v6 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v6;
  }

  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgServiceID");
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  bzero(&v14 - v9, v7);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008334E0();
    if (uint64)
    {
      goto LABEL_6;
    }
  }

  else if (uint64)
  {
LABEL_6:
    v11 = sub_10052BB20(uint64, v8, v10, v7);
    goto LABEL_9;
  }

  v11 = 1;
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v13 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v11);
    if (!v11)
    {
      xpc_dictionary_set_data(v13, "kCBMsgArgData", v10, v7);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_1004AF4E0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  if (v6 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v6;
  }

  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgServiceID");
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  __chkstk_darwin(v8);
  v10 = v13 - v9;
  bzero(v13 - v9, v7);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833548();
    if (uint64)
    {
      goto LABEL_6;
    }

LABEL_10:
    LODWORD(uint64) = 1;
    goto LABEL_11;
  }

  if (!uint64)
  {
    goto LABEL_10;
  }

LABEL_6:
  LODWORD(uint64) = sub_10052BB20(uint64, v8, v10, v7);
  if (!uint64)
  {
    uint64 = sandbox_extension_issue_file();
    if (uint64)
    {
      strlcpy(v13, uint64, 0x200uLL);
      HIBYTE(v14) = 0;
      free(uint64);
      LODWORD(uint64) = 0;
    }
  }

LABEL_11:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", uint64);
    if (!uint64)
    {
      xpc_dictionary_set_data(v12, "kCBMsgArgData", v10, v7);
      xpc_dictionary_set_data(v12, "kCBMsgArgExtensionToken", v13, 0x200uLL);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1004AF72C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  *&value[1] = 0;
  data = xpc_dictionary_get_data(v4, "kCBMsgArgKey", &value[1]);
  value[0] = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008335B0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052BBF4(uint64, data, *&value[1], value);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBool", value[0]);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1004AF848(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  if (v6 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v6;
  }

  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgKey", &length);
  __chkstk_darwin(data);
  v10 = &v14 - v9;
  bzero(&v14 - v9, v7);
  v15 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833618();
    if (uint64)
    {
      goto LABEL_6;
    }
  }

  else if (uint64)
  {
LABEL_6:
    v11 = sub_10052BC78(uint64, data, length, v10, &v15, v7);
    goto LABEL_9;
  }

  v11 = 1;
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v13 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v11);
    if (!v11)
    {
      xpc_dictionary_set_data(v13, "kCBMsgArgData", v10, v15);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_1004AFA00(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  v9 = 0;
  value = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833680();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052BD20(uint64, &value + 1, &value, &v9 + 1, &v9);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgVendorIdSource", HIDWORD(value));
    xpc_dictionary_set_uint64(v8, "kCBMsgArgVendorId", value);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgProductId", HIDWORD(v9));
    xpc_dictionary_set_uint64(v8, "kCBMsgArgVersionId", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AFB34(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgAuthStatus");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgHIDType");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008336E8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10052BE20(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1004AFC38(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833750();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052B074(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AFD00(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (v6)
  {
    data = xpc_dictionary_get_data(value, "kCBMsgArgKey", 0);
  }

  else
  {
    data = 0;
  }

  length = 0;
  v8 = xpc_dictionary_get_data(value, "kCBMsgArgAddressBytes", &length);
  if (length == 6)
  {
    v9 = v8;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_1008337B8();
      if (uint64)
      {
        goto LABEL_7;
      }
    }

    else if (uint64)
    {
LABEL_7:
      v10 = sub_10052BED0(uint64, v9, data, v6);
LABEL_14:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v12 = reply;
      v13 = v10;
      goto LABEL_16;
    }

    v10 = 1;
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
  {
    sub_1008326E8();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    v13 = 8;
LABEL_16:
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1004AFE8C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833820();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C050(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgPaired", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AFF78(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833888();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C0E4(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004B0064(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008338F0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C1B4(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004B0150(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833958();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C248(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgLowSecurityStatus", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004B023C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 2;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008339C0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C2B0(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMSgArgHIDDeviceBehavior", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004B032C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833A28();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052C318(uint64, v6);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1004B0418(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgRequesterID");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833A90();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10052C3E0(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1004B051C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833AF8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C538(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004B0608(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833B60();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C5A4(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDeviceType", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004B06F4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDeviceType");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833BC8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052C664(uint64, v6);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1004B07E0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = -1;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833C30();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052C884(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100833C98(&value, uint64, v7);
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgGenuine", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void *sub_1004B0900(void *a1)
{
  v2 = a1 + 10;
  v3 = a1[10];
  v4 = a1 + 11;
  if (v3 != a1 + 11)
  {
    do
    {
      free(v3[4]);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  sub_10000CEDC(v2, a1[11]);
  a1[11] = 0;
  a1[12] = 0;
  a1[10] = v4;
  sub_10000CEDC(v2, 0);
  *a1 = &off_100AF7B80;
  sub_10007A068((a1 + 1));
  return a1;
}

void sub_1004B09C8(void *a1)
{
  sub_1004B0900(a1);

  operator delete();
}

uint64_t sub_1004B0A00(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 8);
  v2 = *(a1 + 80);
  v3 = (a1 + 88);
  if (v2 != (a1 + 88))
  {
    do
    {
      v4 = v2[4];
      if (*(a1 + 104) == 1)
      {
        sub_10052A2B4(v4[2], *v4);
        *(a1 + 104) = 0;
      }

      free(v4);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  sub_10000CEDC(a1 + 80, *(a1 + 88));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = v3;
  return sub_1000088CC(v9);
}

void sub_1004B0AEC()
{
  v0 = objc_autoreleasePoolPush();
  xmmword_100BCE580 = 0u;
  *algn_100BCE590 = 0u;
  dword_100BCE5A0 = 1065353216;
  __cxa_atexit(sub_1004AC0D4, &xmmword_100BCE580, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1004B0B58(uint64_t a1)
{
  *a1 = off_100AF9278;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_100044BBC((a1 + 64));
  *(a1 + 128) = 0;
  *(a1 + 424) = 0;
  *(a1 + 448) = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_100833D48();
  }

  sub_100312650(off_100B50A98 + 64, a1);
  v2 = objc_opt_new();
  v3 = *(a1 + 8);
  *(a1 + 8) = v2;

  v4 = [*(a1 + 8) setFormatOptions:1907];
  v6 = sub_100017F4C(v4, v5);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004B0D14;
  v10[3] = &unk_100ADF8F8;
  v10[4] = a1;
  sub_10000CA94(v6, v10);
  v7 = objc_opt_new();
  v8 = *(a1 + 424);
  *(a1 + 424) = v7;

  *(a1 + 136) = 0;
  *(a1 + 142) = 0;
  *(a1 + 139) = 1023;
  *(a1 + 141) = 8;
  *(a1 + 142) = 100000;
  *(a1 + 433) = 33619967;
  *(a1 + 437) = 2;
  *(a1 + 440) = sub_1004B1148();
  sub_1004B12A0(a1);
  return a1;
}

void sub_1004B0CD0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1004B0D18()
{
  v0 = +[NSFileManager defaultManager];
  v27 = 0;
  v1 = [v0 contentsOfDirectoryAtPath:@"/private/var/mobile/Library/Logs/Bluetooth/" error:&v27];
  v2 = v27;
  v18 = v1;
  v19 = v2;
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v1;
    v4 = [obj countByEnumeratingWithState:&v23 objects:v36 count:16];
    if (v4)
    {
      v5 = *v24;
      do
      {
        v6 = 0;
        do
        {
          if (*v24 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v23 + 1) + 8 * v6);
          if ([v7 hasPrefix:@"Accessory"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"bluetoothd-Accessory"))
          {
            v8 = [NSString stringWithFormat:@"%@%@", @"/private/var/mobile/Library/Logs/Bluetooth/", v7, v18];
            v22 = 0;
            v9 = [v0 attributesOfItemAtPath:v8 error:&v22];
            v10 = v22;
            v11 = [v9 objectForKey:NSFileCreationDate];
            [v11 timeIntervalSinceNow];
            v13 = v12;

            if (v10)
            {
              v14 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                *buf = 141558531;
                v29 = 1752392040;
                v30 = 2113;
                v31 = v8;
                v32 = 2114;
                v33 = *&v10;
                _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "deleteOldLogFiles: Can't get path attributes for %{private, mask.hash}@, error %{public}@", buf, 0x20u);
              }
            }

            else if (v13 >= -15552000.0 && (v13 >= -604800.0 || (v16 = sub_10000E92C(), ((*(*v16 + 8))(v16) & 1) != 0)))
            {
              v10 = 0;
            }

            else
            {
              v21 = 0;
              [v0 removeItemAtPath:v8 error:&v21];
              v10 = v21;
              v15 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 141558787;
                v29 = 1752392040;
                v30 = 2113;
                v31 = v8;
                v32 = 2048;
                v33 = v13;
                v34 = 2114;
                v35 = v10;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "deleteOldLogFiles: Deleting old log file: %{private, mask.hash}@, fileAge %f, error %{public}@", buf, 0x2Au);
              }
            }
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v17 = [obj countByEnumeratingWithState:&v23 objects:v36 count:16];
        v4 = v17;
      }

      while (v17);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100833D5C();
  }
}

double sub_1004B1148()
{
  v0 = sub_10000E92C();
  if ((*(*v0 + 8))(v0))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.1;
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"com.apple.bluetooth.accessory.CrashAnalyticsSamplingRate", @"com.apple.da", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    if (AppIntegerValue > 0x64)
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100833DCC();
      }
    }

    else
    {
      v1 = AppIntegerValue / 100.0;
    }
  }

  v3 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "getCrashAnalyticsSamplingRate: Returning %f", buf, 0xCu);
  }

  return v1;
}

double sub_1004B12A0(uint64_t a1)
{
  v1 = a1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 31) = 0;
  [*(a1 + 128) invalidate];
  v2 = *(v1 + 128);
  *(v1 + 128) = 0;

  [*(v1 + 424) removeAllObjects];
  result = 0.0;
  *(v1 + 150) = 0u;
  v1 += 150;
  *(v1 + 282) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0;
  *(v1 + 257) = 1;
  *(v1 + 265) = 768;
  *(v1 + 268) = 0;
  *(v1 + 272) = 1;
  return result;
}

uint64_t sub_1004B133C(uint64_t a1)
{
  *a1 = off_100AF9278;
  if (qword_100B50AA0 != -1)
  {
    sub_100833D48();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1);

  sub_10007A068(a1 + 64);
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1004B13D8(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 64);
  v3 = *(v1 + 40);
  if (v3)
  {
    *(v1 + 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1004B1418(uint64_t a1)
{
  sub_1004B133C(a1);

  operator delete();
}

void sub_1004B1464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = 0;
  if (*(a1 + 448))
  {
    if (a2)
    {
      v4 = a3;
      v59[0] = 0;
      v59[1] = 0;
      sub_100007F88(v59, a1 + 64);
      v6 = sub_1004B1ED8(a1, a2 + 128);
      v60 = v6;
      if (!v6)
      {
        operator new();
      }

      v7 = v6;
      v8 = qword_100BCE8C8;
      if (*(v6 + 40) == 3)
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(v7 + 8);
          *buf = 138543362;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "initializeAccessoryLoggingSession: Disconnected device %{public}@ reconnected", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100833E7C(v7);
      }

      v10 = sub_1004B1F1C(a1, a2 + 128);
      v12 = sub_100017F4C(v10, v11);
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1004B21DC;
      v58[3] = &unk_100ADF8F8;
      v58[4] = a1;
      sub_10000CA94(v12, v58);
      if ((v4 - 8194) > 0xE || ((1 << (v4 - 2)) & 0x409B) == 0)
      {
        v13 = sub_1000E2C2C(a2);
        if ((v13 & 1) == 0 && (*(a2 + 1016) & 1) == 0)
        {
          v42 = sub_10000C798(v13, v14);
          v43 = (*(*v42 + 352))(v42);
          if (v43 & 1) != 0 || (v45 = sub_10000C798(v43, v44), v46 = (*(*v45 + 416))(v45), (v46) || (v48 = sub_10000C798(v46, v47), v13 = (*(*v48 + 456))(v48), v13))
          {
            if (sub_1004B21E0())
            {
              v49 = 8;
            }

            else
            {
              v49 = 9;
            }

            v13 = sub_1004B22F4(a1, a2 + 128, v49, 2u);
          }
        }
      }

      v15 = sub_10000C798(v13, v14);
      if ((*(*v15 + 352))(v15))
      {
        if ((v4 - 8194) <= 0xE && ((1 << (v4 - 2)) & 0x409B) != 0)
        {
          v16 = sub_10000E92C();
          if ((*(*v16 + 8))(v16))
          {
            v17 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "initializeAccessoryLoggingSession: Invoking W1 iOS-internal initialization steps", buf, 2u);
              v17 = qword_100BCE8C8;
            }

            v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
            if (v18)
            {
              v20 = *(a1 + 136);
              v21 = *(a1 + 137);
              v22 = *(a1 + 139);
              v23 = *(a1 + 141);
              v24 = *(a1 + 142);
              v25 = *(a1 + 146);
              v26 = *(a1 + 138);
              *buf = 67110656;
              *&buf[4] = v20;
              *&buf[8] = 1024;
              *&buf[10] = v21;
              *v63 = 1024;
              *&v63[2] = v22;
              *v64 = 1024;
              *&v64[2] = v23;
              v65 = 1024;
              v66 = v24;
              v67 = 1024;
              v68 = v25;
              v69 = 1024;
              v70 = v26;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "initializeAccessoryLoggingSession: isTimeStampPeriodicallyEnabled = %d, isDisableDiagnosticsPeriodicallyEnabled = %d, module = %d, level = %d, log_interval = %d, power_logging_interval = %d, isCrashLoggingDisabled = %d", buf, 0x2Cu);
            }

            if (*(a1 + 137) == 1)
            {
              v27 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                v28 = *(v60 + 8);
                *buf = 138543874;
                *&buf[4] = v28;
                *&buf[12] = 1024;
                *v63 = 1;
                *&v63[4] = 1024;
                *v64 = 3000;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Send Diagnostics Request Periodically to %{public}@, type = %d, interval = %d", buf, 0x18u);
              }

              buf[0] = 0;
              sub_1000216B4(buf);
              v29 = sub_10018825C((a2 + 128), 1, 3000);
              sub_100022214(buf);
              if (v29 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                sub_100833F1C();
              }

              v18 = sub_10002249C(buf);
            }

            if (*(a1 + 136) == 1)
            {
              v30 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                v31 = *(v60 + 8);
                *buf = 138543874;
                *&buf[4] = v31;
                *&buf[12] = 1024;
                *v63 = 0;
                *&v63[4] = 1024;
                *v64 = 100;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Send TimeStamp Request Periodically to %{public}@, type = %d, interval = %d", buf, 0x18u);
              }

              buf[0] = 0;
              sub_1000216B4(buf);
              v32 = sub_10018825C((a2 + 128), 0, 100);
              sub_100022214(buf);
              if (v32 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                sub_100833FAC();
              }

              v18 = sub_10002249C(buf);
            }

            if (*(a1 + 146))
            {
              v33 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                v34 = *(v60 + 8);
                v35 = *(a1 + 146);
                *buf = 138543874;
                *&buf[4] = v34;
                *&buf[12] = 1024;
                *v63 = 2;
                *&v63[4] = 1024;
                *v64 = v35;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Send Power Logging Request Periodically to %{public}@, type = %d, interval = %d", buf, 0x18u);
              }

              *(v60 + 40) = 6;
              LOBYTE(dword_100B54550) = 1;
              v57 = 0;
              sub_1000216B4(&v57);
              v36 = sub_100189034((a2 + 128), 4u, 5, &dword_100B54550);
              sub_100022214(&v57);
              if (v36 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                sub_10083403C();
              }

              v37 = fopen(aPrivateVarMobi_14, "a");
              if (v37)
              {
                sub_1000C23E0(a2, buf);
                v38 = v64[3];
                v39 = *buf;
                v40 = sub_100304810(a2 + 128);
                v41 = buf;
                if (v38 < 0)
                {
                  v41 = v39;
                }

                fprintf(v37, "Power Logging - Device Name -> %s, Bluetooth Addr -> %s \n", v41, v40);
                if ((v64[3] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                fclose(v37);
              }

              else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                v50 = __error();
                sub_1008340CC(v50, v61);
              }

              v18 = sub_10002249C(&v57);
            }

            if ((*(a1 + 138) & 1) == 0 && *(v60 + 40) != 6)
            {
              sub_1004B2A3C(a1);
              v51 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                v52 = *(v60 + 8);
                *buf = 138543362;
                *&buf[4] = v52;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "initializeAccessoryLoggingSession: Send request to %{public}@ for check crash log existence, Left Bud", buf, 0xCu);
              }

              *(a1 + 418) = 0x10000;
              *(v60 + 40) = 7;
              LOBYTE(dword_100B54550) = 2;
              *(a1 + 416) = 2;
              buf[0] = 0;
              sub_1000216B4(buf);
              v53 = sub_100189034((a2 + 128), 4u, 5, &dword_100B54550);
              sub_100022214(buf);
              dword_100B6EA30 = dword_100B54550;
              byte_100B6EA34 = byte_100B54554;
              byte_100B6EA39 = 5;
              v54 = *(a2 + 132);
              *(a1 + 409) = *(a2 + 128);
              *(a1 + 413) = v54;
              *(a1 + 415) = 0;
              if (v53)
              {
                if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                {
                  sub_100834114();
                }
              }

              v18 = sub_10002249C(buf);
            }

            v55 = sub_100017F4C(v18, v19);
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_1004B2AC0;
            v56[3] = &unk_100ADF8F8;
            v56[4] = a1;
            sub_10008E008(v55, 30000, v56);
          }
        }
      }

      sub_1000088CC(v59);
    }

    else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008341A4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100833E40();
  }
}

void sub_1004B1E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_10002249C(&a19);
  sub_1000088CC(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B1ED8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 == v3)
  {
    return 0;
  }

  while (1)
  {
    result = *v2;
    if (*(*v2 + 16) == *a2 && *(*v2 + 20) == *(a2 + 4))
    {
      break;
    }

    v2 += 8;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004B1F1C(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v4 = sub_1004B1ED8(a1, a2);
  if (*(a1 + 448))
  {
    v5 = v4;
    if (v4)
    {
      v22.tv_sec = 0;
      *&v22.tv_usec = 0;
      gettimeofday(&v22, 0);
      v6 = qword_100BCE8C8;
      v7 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
      tv_sec = v22.tv_sec;
      tv_usec = v22.tv_usec;
      if (v7)
      {
        v10 = *(v5 + 8);
        *buf = 134218498;
        v24 = tv_sec;
        v25 = 1024;
        v26 = tv_usec;
        v27 = 2114;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sendTimestamp: Sending UNIX Epoch Time (seconds %ld, useconds %u) to %{public}@", buf, 0x1Cu);
      }

      v19 = __PAIR64__(tv_usec, tv_sec);
      v12 = +[NSTimeZone localTimeZone];
      [*(a1 + 8) setTimeZone:v12];

      v13 = *(a1 + 8);
      v14 = [NSDate dateWithTimeIntervalSince1970:tv_sec];
      v15 = [v13 stringFromDate:v14];
      v16 = v15;
      v17 = [v15 UTF8String];

      v21 = v17;
      LOWORD(v20) = strlen(v17);
      if (qword_100B508F0 != -1)
      {
        sub_10083421C();
      }

      *buf = *a2;
      LOWORD(v24) = *(a2 + 4);
      v18 = sub_1000E6554(off_100B508E8, buf, 1);
      if (v18)
      {
        if (qword_100B50950 != -1)
        {
          sub_100834244();
        }

        return sub_100334234(off_100B50948, v18, &v19);
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_10083426C(a2);
        }

        return 1;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1008342F0(a2);
      }

      return 312;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008341E0();
    }

    return 111;
  }
}

uint64_t sub_1004B21E0()
{
  v8 = 0;
  v0 = sub_10000E92C();
  sub_100007E30(v6, "AccessoryLogging");
  sub_100007E30(__p, "APLogCollectionEnabled");
  (*(*v0 + 72))(v0, v6, __p, &v8);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  v1 = sub_10000E92C();
  v2 = (*(*v1 + 264))(v1);
  return (v8 | v2) & 1;
}

void sub_1004B22C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004B22F4(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v58[0] = 0;
  v58[1] = 0;
  v59 = 0;
  v8 = sub_10000E92C();
  v9 = (*(*v8 + 160))(v8);
  if (a4 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    if (*(a1 + 448))
    {
      if (*(a1 + 32) == 1)
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_10083442C();
        }

        v11 = 10;
      }

      else
      {
        v57[0] = 0;
        v57[1] = 0;
        sub_100007F88(v57, a1 + 64);
        if (a2)
        {
          v12 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            v13 = sub_100304810(a2);
            *buf = 141558275;
            *&buf[4] = 1752392040;
            v61 = 2081;
            v62 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sendLogCommand: BdAddr %{private, mask.hash}s specified", buf, 0x16u);
          }

          v14 = sub_1004B1ED8(a1, a2);
          *buf = v14;
          if (v14)
          {
            v15 = *(v14 + 24) - 8194;
            if (v15 > 0xE || ((1 << v15) & 0x409B) == 0)
            {
              sub_1000C2484(v58, buf);
            }
          }
        }

        else
        {
          for (i = *(a1 + 40); i != *(a1 + 48); ++i)
          {
            v17 = *i;
            __p[0] = v17;
            v18 = *(v17 + 24) - 8194;
            v19 = v18 > 0xE;
            v20 = (1 << v18) & 0x409B;
            if (v19 || v20 == 0)
            {
              if (*(v17 + 40))
              {
                v22 = qword_100BCE8C8;
                if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = *(v17 + 8);
                  v24 = *(__p[0] + 40);
                  *buf = 138543618;
                  *&buf[4] = v23;
                  v61 = 1024;
                  LODWORD(v62) = v24;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "sendLogCommand: %{public}@ not idle (status %d), skipping", buf, 0x12u);
                }
              }

              else
              {
                sub_1000C2484(v58, __p);
              }
            }
          }
        }

        v25 = v58[0];
        if (v58[1] == v58[0])
        {
          v44 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "sendLogCommand: No appropriate accessory to command", buf, 2u);
          }

          v11 = 312;
        }

        else
        {
          v55 = a3;
          *v56 = *(a1 + 433);
          v56[4] = *(a1 + 437);
          if (a4 <= 0xB && ((1 << a4) & 0xE3E) != 0)
          {
            v56[3] = a4;
          }

          v49 = a1;
          v48 = a4;
          v50 = a3;
          if (a3 == 7)
          {
            *&v56[1] = 1;
          }

          v52 = 0;
          v51 = 0;
          v26 = &qword_100BCE8C8;
          p_info = &OBJC_METACLASS___BTVCDevice.info;
          v28 = &OBJC_METACLASS___BTVCDevice.info;
          v29 = &OBJC_METACLASS___BTVCDevice.info;
          while (1)
          {
            v30 = *v25;
            v31 = *v26;
            v32 = os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT);
            if (v32)
            {
              v33 = sub_1004B4C94(v32, v55);
              v34 = v29;
              v35 = v26;
              v36 = v28;
              v37 = p_info;
              v38 = *(v30 + 8);
              *buf = 136316674;
              *&buf[4] = v33;
              v61 = 2114;
              v62 = v38;
              v63 = 1024;
              v64 = v56[0];
              v65 = 1024;
              v66 = v56[1];
              v67 = 1024;
              v68 = v56[2];
              v69 = 1024;
              v70 = v56[3];
              v71 = 1024;
              v72 = v56[4];
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "sendLogCommand: Sending command %s to %{public}@: device %d module %d submodule %d type %d level %d", buf, 0x34u);

              p_info = v37;
              v28 = v36;
              v26 = v35;
              v29 = v34;
            }

            if (p_info[286] != -1)
            {
              sub_10083421C();
            }

            v39 = v28[285];
            *buf = *(v30 + 16);
            *&buf[4] = *(v30 + 20);
            v40 = sub_1000E6554(v39, buf, 1);
            if (!v40)
            {
              break;
            }

            if (v29[298] != -1)
            {
              sub_100834244();
            }

            v41 = sub_100330C90(off_100B50948, v40, 512, 6, &v55);
            if (v41)
            {
              v42 = *v26;
              if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
              {
                v43 = *(v30 + 8);
                *buf = 138543618;
                *&buf[4] = v43;
                v61 = 1024;
                LODWORD(v62) = v41;
                _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "sendLogCommand: Failed to send command to %{public}@ (error = %d)", buf, 0x12u);
              }

              v52 = v41;
            }

            else
            {
              if (v50 == 5)
              {
                sub_1004B2C9C(v49, v30);
              }

              v51 = 1;
            }

            if (++v25 == v58[1])
            {
              if (!((v48 != 2) | v51 & 1))
              {
                v46 = sub_10000E92C();
                sub_100007E30(buf, "AccessoryLogging");
                sub_100007E30(__p, "StoredLogsRetrieved");
                (*(*v46 + 80))(v46, buf, __p, 0);
                if (v54 < 0)
                {
                  operator delete(__p[0]);
                }

                if (SHIBYTE(v63) < 0)
                {
                  operator delete(*buf);
                }
              }

              if (v51)
              {
                v11 = 0;
              }

              else
              {
                v11 = v52;
              }

              goto LABEL_71;
            }
          }

          if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
          {
            v45 = sub_100304810(v30 + 16);
            sub_1008343E8(v45, buf);
          }

          v11 = 1;
        }

LABEL_71:
        sub_1000088CC(v57);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1008343AC();
      }

      v11 = 111;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834370();
    }

    v11 = 2;
  }

  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }

  return v11;
}

void sub_1004B29B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_1000088CC(&a26);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_1004B2A3C(uint64_t a1)
{
  [*(a1 + 424) removeAllObjects];
  sub_1004BEFFC(a1, aPrivateVarMobi_15);
  sub_1004BEFFC(a1, aPrivateVarMobi_14);
  sub_1004BEFFC(a1, aPrivateVarMobi_16);
  sub_1004BEFFC(a1, &unk_100B6E820);
  sub_1004BEFFC(a1, &unk_100B6E920);
  result = [*(a1 + 424) count];
  *(a1 + 432) = result;
  return result;
}

uint64_t sub_1004B2AC8(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 64);
  v2 = *(a1 + 48);
  while (v2 != *(a1 + 40))
  {
    v4 = *(v2 - 8);
    v2 -= 8;
    v3 = v4;
    v5 = *(v4 + 24) - 8194;
    v6 = v5 > 0xE;
    v7 = (1 << v5) & 0x409B;
    if (!v6 && v7 != 0)
    {
      if (*(a1 + 448))
      {
        if (qword_100B508F0 != -1)
        {
          sub_10083421C();
        }

        v10 = *(v3 + 16);
        v9 = v3 + 16;
        v15 = v10;
        v16 = *(v9 + 4);
        v11 = sub_1000E6554(off_100B508E8, &v15, 1);
        if (v11)
        {
          if (qword_100B50950 != -1)
          {
            sub_100834244();
          }

          sub_100331844(off_100B50948, v11, 9, 0, 2);
        }

        else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          v12 = sub_100304810(v9);
          sub_100834468(v12, &v15);
        }

        return sub_1000088CC(v14);
      }

      goto LABEL_17;
    }
  }

  if ((*(a1 + 448) & 1) == 0)
  {
LABEL_17:
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008344AC();
    }

    return sub_1000088CC(v14);
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_1008344E8();
  }

  return sub_1000088CC(v14);
}

void sub_1004B2C9C(uint64_t a1, uint64_t a2)
{
  *(a2 + 40) = 1;
  *(a1 + 32) = 1;
  v4 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
    *buf = 138543618;
    v21 = v5;
    v22 = 1024;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "startInactivityTimer: Timeout period for %{public}@ begun, pId = 0x%x", buf, 0x12u);
  }

  v7 = *(a2 + 24);
  v8 = v7 == 8223 || v7 == 8202;
  v9 = 45.0;
  v15 = 3221225472;
  v14 = _NSConcreteStackBlock;
  v16 = sub_1004B2E4C;
  v17 = &unk_100AF92A8;
  if (!v8)
  {
    v9 = 12.0;
  }

  v18 = a1;
  v19 = a2;
  v10 = [NSTimer timerWithTimeInterval:0 repeats:&v14 block:v9];
  v12 = *(a2 + 32);
  v11 = (a2 + 32);
  *v11 = v10;

  v13 = [NSRunLoop mainRunLoop:v14];
  [v13 addTimer:*v11 forMode:NSDefaultRunLoopMode];
}

uint64_t sub_1004B2E4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, v2 + 64);
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100834524(a1);
  }

  [*(*(a1 + 40) + 80) removeAllObjects];
  v3 = *(a1 + 40);
  *(v3 + 40) = 2;
  sub_1004B2EF8(v2, v3);
  return sub_1000088CC(v5);
}

uint64_t sub_1004B2EF8(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_new();
  __p = 0;
  v123 = 0;
  v124 = 0;
  if (a2)
  {
    if (*(a2 + 40) - 3 <= 1 && *(a2 + 64))
    {
      v4 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a2 + 48);
        *buf = 138412290;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: finishSession: File %@ still open, closing and marking as corrupt", buf, 0xCu);
      }

      *(a2 + 56) = 1;
      sub_1004BA85C(a2);
    }

    v6 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 8);
      v9 = v8;
      v10 = *(a2 + 40);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      if (v11 == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = *(*v11 + 40);
          v15 = v14 > 8;
          v16 = (1 << v14) & 0x182;
          if (!v15 && v16 != 0)
          {
            ++v13;
          }

          v11 += 8;
        }

        while (v11 != v12);
      }

      *buf = 138543874;
      *&buf[4] = v8;
      v128 = 1024;
      v129 = v10;
      v130 = 1024;
      v131 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "finishSession: %{public}@ logging session finished (state now %d); remaining sessions: %d", buf, 0x18u);
    }

    v20 = *(a1 + 40);
    v19 = *(a1 + 48);
    if (v20 != v19)
    {
      v21 = 0;
      v22 = *(a1 + 40);
      do
      {
        v23 = *(*v22 + 40);
        v15 = v23 > 8;
        v24 = (1 << v23) & 0x182;
        if (!v15 && v24 != 0)
        {
          ++v21;
        }

        ++v22;
      }

      while (v22 != v19);
      if (v21 > 0)
      {
        v18 = 0;
        goto LABEL_140;
      }

      if (v20 != v19)
      {
        v108 = 0;
        v110 = 0;
        v26 = 0;
        *&v7 = 67109120;
        v107 = v7;
        while (1)
        {
          v109 = v20;
          v27 = *v20;
          v28 = *(*v20 + 40);
          if (v28 <= 3)
          {
            break;
          }

          if (v28 <= 6)
          {
            if ((v28 - 4) < 2)
            {
              goto LABEL_67;
            }

            if (v28 != 6)
            {
LABEL_52:
              v41 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
              {
                *buf = v107;
                *&buf[4] = v28;
                _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "finishSession: Unhandled status %d", buf, 8u);
              }

LABEL_54:
              v36 = v109;
              goto LABEL_90;
            }

LABEL_49:
            v36 = v109;
            goto LABEL_108;
          }

          if (v28 == 8)
          {
LABEL_50:
            v37 = qword_100BCE8C8;
            if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_54;
            }

            v38 = *(v27 + 8);
            v39 = *(v27 + 40);
            *buf = 138543618;
            *&buf[4] = v38;
            v128 = 1024;
            v129 = v39;
            v40 = v38;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "finishSession: %{public}@ should not be in state %d", buf, 0x12u);

            v36 = v109;
LABEL_90:
            if (*(a1 + 34) == 1)
            {
              v62 = *(v27 + 24) - 8194;
              v15 = v62 > 0x2D;
              v63 = (1 << v62) & 0x20647A877F9BLL;
              if (!v15 && v63 != 0)
              {
                v65 = sub_1004BACBC(a1, v27);
                v66 = v65;
                if (v65 && (!*(a1 + 24) || *(a1 + 16) == 1))
                {
                  v116 = 0u;
                  v117 = 0u;
                  v114 = 0u;
                  v115 = 0u;
                  v67 = v65;
                  v68 = [v67 countByEnumeratingWithState:&v114 objects:v125 count:16];
                  if (v68)
                  {
                    v69 = *v115;
                    do
                    {
                      for (i = 0; i != v68; i = i + 1)
                      {
                        if (*v115 != v69)
                        {
                          objc_enumerationMutation(v67);
                        }

                        [v3 addObject:{*(*(&v114 + 1) + 8 * i), v107}];
                      }

                      v68 = [v67 countByEnumeratingWithState:&v114 objects:v125 count:16];
                    }

                    while (v68);
                  }

                  v36 = v109;
                }
              }
            }

            sub_1004B8880(v27);
            ++v108;
            goto LABEL_108;
          }

          if (v28 != 7)
          {
            goto LABEL_52;
          }

          v32 = qword_100BCE8C8;
          if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_49;
          }

          v33 = *(v27 + 8);
          v34 = *(v27 + 40);
          *buf = 138543618;
          *&buf[4] = v33;
          v128 = 1024;
          v129 = v34;
          v35 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Warning: finishSession: %{public}@ in state %d", buf, 0x12u);

          v36 = v109;
LABEL_108:
          v20 = v36 + 1;
          if (v20 == *(a1 + 48))
          {
            goto LABEL_112;
          }
        }

        if (v28 > 1)
        {
          if (v28 != 2)
          {
            v29 = v27 + 16;
            v30 = v123;
            if (v123 >= v124)
            {
              v42 = (v123 - __p) >> 3;
              if ((v42 + 1) >> 61)
              {
                sub_1000C7698();
              }

              v43 = (v124 - __p) >> 2;
              if (v43 <= v42 + 1)
              {
                v43 = v42 + 1;
              }

              if (v124 - __p >= 0x7FFFFFFFFFFFFFF8)
              {
                v44 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v43;
              }

              if (v44)
              {
                sub_100008108(&__p, v44);
              }

              *(8 * v42) = v29;
              v31 = 8 * v42 + 8;
              v45 = (8 * v42 - (v123 - __p));
              memcpy(v45, __p, v123 - __p);
              v46 = __p;
              __p = v45;
              v123 = v31;
              v124 = 0;
              if (v46)
              {
                operator delete(v46);
              }
            }

            else
            {
              *v123 = v29;
              v31 = (v30 + 8);
            }

            v123 = v31;
            v47 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              v48 = *(v27 + 8);
              *buf = 138543362;
              *&buf[4] = v48;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "finishSession: Session for %{public}@ marked for deletion", buf, 0xCu);
            }
          }

LABEL_67:
          v49 = *(v27 + 24) - 8194;
          v15 = v49 > 0xE;
          v50 = (1 << v49) & 0x409B;
          if (v15 || v50 == 0)
          {
            v52 = *(v27 + 80);
          }

          else
          {
            v52 = *(a1 + 424);
            v110 |= [*(a1 + 424) count] > *(a1 + 432);
          }

          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v53 = v52;
          v54 = [v53 countByEnumeratingWithState:&v118 objects:v126 count:16];
          if (!v54)
          {
LABEL_89:

            v36 = v109;
            goto LABEL_90;
          }

          v55 = *v119;
          while (2)
          {
            v56 = 0;
LABEL_75:
            if (*v119 != v55)
            {
              objc_enumerationMutation(v53);
            }

            v57 = *(*(&v118 + 1) + 8 * v56);
            v58 = *(v27 + 24) - 8194;
            v15 = v58 > 0xE;
            v59 = (1 << v58) & 0x409B;
            if (v15 || v59 == 0)
            {
              if (![*(*(&v118 + 1) + 8 * v56) hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryVersionInfo"])
              {
                v110 = 1;
                goto LABEL_81;
              }

              if ((*(a1 + 34) & 1) == 0)
              {
                goto LABEL_81;
              }
            }

            else
            {
LABEL_81:
              [v3 addObject:{v57, v107}];
              v26 = v27;
            }

            if (v54 == ++v56)
            {
              v61 = [v53 countByEnumeratingWithState:&v118 objects:v126 count:16];
              v54 = v61;
              if (!v61)
              {
                goto LABEL_89;
              }

              continue;
            }

            goto LABEL_75;
          }
        }

        if (v28)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }
    }

    v26 = 0;
    v110 = 0;
    v108 = 0;
LABEL_112:
    v71 = qword_100BCE8C8;
    v72 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
    if (v72)
    {
      v74 = [v3 count];
      *buf = 134218240;
      *&buf[4] = v74;
      v128 = 1024;
      v129 = v108;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "finishSession: Sending %lu file(s) from %d session(s)", buf, 0x12u);
    }

    if (*(a1 + 24))
    {
      v75 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 16))
        {
          v76 = "Diagnostic Extension";
        }

        else
        {
          v76 = "Sysdiagnose";
        }

        *buf = 136446210;
        *&buf[4] = v76;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "finishSession: %{public}s - Accessory Log Retrieval Completed", buf, 0xCu);
      }

      if (v110)
      {
        v77 = v3;
      }

      else
      {
        v77 = 0;
      }

      sub_1004BF104(a1, v77);
    }

    else
    {
      if ((v110 & 1) == 0)
      {
        v89 = qword_100BCE8C8;
        v78 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
        if (v78)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Warning: finishSession: No real log files to send", buf, 2u);
        }

        v18 = 1;
        goto LABEL_125;
      }

      if (*(a1 + 33))
      {
        v88 = qword_100BCE8C8;
        v78 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
        if (v78)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "finishSession: Force send complete", buf, 2u);
        }
      }

      else
      {
        v90 = sub_10000C798(v72, v73);
        v91 = (*(*v90 + 352))(v90);
        if ((v91 & 1) == 0 && (v93 = sub_10000C798(v91, v92), v94 = (*(*v93 + 416))(v93), (v94 & 1) == 0) && (v96 = sub_10000C798(v94, v95), !(*(*v96 + 456))(v96)) || (v97 = sub_10000E92C(), !(*(*v97 + 8))(v97)))
        {
          v78 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR);
          if (v78)
          {
            sub_1008345B8();
          }

          v18 = 2;
          goto LABEL_125;
        }

        v98 = *(a1 + 34);
        v99 = qword_100BCE8C8;
        v100 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
        if (v98 == 1)
        {
          if (v100)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "finishSession: Retrieved crash log, opening Tap-to-Radar", buf, 2u);
          }

          v102 = sub_10000EE80(v100, v101);
          v78 = (*(*v102 + 168))(v102, v3, 1, *(v26 + 24));
        }

        else
        {
          if (v100)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "finishSession: Internal Settings - Accessory Log Retrieval Completed", buf, 2u);
          }

          v103 = sub_10000EE80(v100, v101);
          v104 = *(v26 + 24);
          v105 = *v26;
          v106 = [NSString stringWithString:v105];
          (*(*v103 + 152))(v103, v3, 0, v104, v106);
        }
      }
    }

    v18 = 0;
LABEL_125:
    if ((*(a1 + 34) & 1) == 0)
    {
      v80 = sub_10000C798(v78, v79);
      v81 = (*(*v80 + 352))(v80);
      if ((v81 & 1) != 0 || (v83 = sub_10000C798(v81, v82), (*(*v83 + 456))(v83)))
      {
        v84 = sub_10000E92C();
        if ((*(*v84 + 8))(v84))
        {
          v85 = sub_10000E92C();
          sub_100007E30(buf, "AccessoryLogging");
          sub_100007E30(v112, "StoredLogsRetrieved");
          (*(*v85 + 80))(v85, buf, v112, v110 & 1);
          if (v113 < 0)
          {
            operator delete(v112[0]);
          }

          if (SHIBYTE(v131) < 0)
          {
            operator delete(*buf);
          }
        }
      }
    }

    v86 = __p;
    if (__p != v123)
    {
      do
      {
        if (qword_100B50950 != -1)
        {
          sub_100834244();
        }

        if (!sub_100341598(off_100B50948, *v86))
        {
          sub_1004B4DE0(a1, *v86);
        }

        ++v86;
      }

      while (v86 != v123);
    }

    sub_1004B12A0(a1);
    goto LABEL_140;
  }

  if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    v18 = 1;
    goto LABEL_142;
  }

  sub_1008345F4();
  v18 = 1;
LABEL_140:
  if (__p)
  {
    v123 = __p;
    operator delete(__p);
  }

LABEL_142:

  return v18;
}

void sub_1004B3C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004B3CFC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *v7 = a2;
  *&v7[8] = a3;
  *&v7[12] = WORD2(a3);
  v6 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110656;
    v9 = a2 & 1;
    v10 = 1024;
    v11 = (a2 >> 8) & 1;
    v12 = 1024;
    v13 = (a2 >> 24);
    v14 = 1024;
    v15 = BYTE5(a2);
    v16 = 1024;
    v17 = *&v7[6];
    v18 = 1024;
    v19 = a3 >> 16;
    v20 = 1024;
    v21 = WORD1(a2) & 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setW1Logging: isTimeStampPeriodicallyEnabled = %d, isDisableDiagnosticsPeriodicallyEnabled = %d, module = %d, level = %d, log_interval = %d, power_logging_interval = %d, isCrashLoggingDisabled = %d", buf, 0x2Cu);
  }

  *(a1 + 136) = *v7;
  *(a1 + 142) = *&v7[6];
}

void sub_1004B3E20(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109888;
    v5[1] = BYTE1(a2);
    v6 = 1024;
    v7 = BYTE4(a2);
    v8 = 1024;
    v9 = BYTE2(a2);
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setAccessoryLogging: module = %d, level = %d, submodule = %d, device = %d", v5, 0x1Au);
  }

  *(a1 + 433) = a2;
  *(a1 + 435) = BYTE2(a2);
  *(a1 + 436) = BYTE3(a2);
  *(a1 + 437) = BYTE4(a2);
}

void sub_1004B3F38()
{
  v0 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Post an event to trigger AWD Diagnostics ", v1, 2u);
  }

  if (qword_100B540A0 != -1)
  {
    sub_100834630();
  }

  if ((*(*off_100B54098 + 32))(off_100B54098))
  {
    if (qword_100B540A0 != -1)
    {
      sub_100834630();
    }

    sub_1005897E0(off_100B54098, &stru_100AF9310);
  }
}

uint64_t sub_1004B400C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 448) != 1)
  {
    return 111;
  }

  v7 = sub_10000E92C();
  v8 = (*(*v7 + 8))(v7);
  if (v8 && (v10 = sub_10000C798(v8, v9), (*(*v10 + 352))(v10)))
  {
    v11 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v12 = v16 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v18 = v12;
      v19 = 1024;
      v20 = a3;
      v21 = 1024;
      v22 = a4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Send RequestPeriodically to device %s, type = %d, interval = %d", buf, 0x18u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v13 = sub_10018825C((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v13 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834658();
    }

    sub_10002249C(buf);
  }

  else
  {
    v13 = 102;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_1008346C8();
  }

  return sub_1000DD584(off_100B50A98, v13, 10000);
}

void sub_1004B4208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B4224(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 448) != 1)
  {
    return 111;
  }

  v5 = sub_10000E92C();
  v6 = (*(*v5 + 8))(v5);
  if (v6 && (v8 = sub_10000C798(v6, v7), (*(*v8 + 352))(v8)))
  {
    v9 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v10 = v14 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v16 = v10;
      v17 = 1024;
      v18 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Send CancelRequestPeriodically to device %s, type = %d", buf, 0x12u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v11 = sub_1001885E0((a2 + 128), a3);
    sub_100022214(__p);
    if (v11 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008346F0();
    }

    sub_10002249C(__p);
  }

  else
  {
    v11 = 102;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_1008346C8();
  }

  return sub_1000DD584(off_100B50A98, v11, 10000);
}

void sub_1004B4410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B442C(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 24) = a2;
  *(a1 + 16) = a3;
  sub_1004B4450();
  return 0;
}

void sub_1004B4450()
{
  v0 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "TraceLogCollection - syncLogOnDemand", v1, 2u);
  }

  if (qword_100B540A0 != -1)
  {
    sub_100834630();
  }

  if ((*(*off_100B54098 + 32))(off_100B54098))
  {
    if (qword_100B540A0 != -1)
    {
      sub_100834630();
    }

    sub_1005897E0(off_100B54098, &stru_100AF92C8);
  }
}

void sub_1004B4524(id a1)
{
  if (qword_100B51308 != -1)
  {
    sub_100834760();
  }

  v2 = qword_100B51300;

  sub_1004B4568(v2);
}

uint64_t sub_1004B4568(uint64_t a1)
{
  v2 = sub_10000E92C();
  if ((*(*v2 + 160))(v2))
  {
    if (*(a1 + 448))
    {
      if (*(a1 + 48) == *(a1 + 40))
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_100834828();
        }

        return 312;
      }

      else if (*(a1 + 32) == 1)
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_1008347EC();
        }

        return 10;
      }

      else
      {
        v3 = sub_1004B22F4(a1, 0, 5, 2u);
        v4 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v30) = v3;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "syncLogOnDemandEvent: sendLogCommand returned %d", buf, 8u);
        }

        v5 = sub_10000E92C();
        if ((*(*v5 + 8))(v5))
        {
          sub_1004B2A3C(a1);
          v28[0] = 0;
          v28[1] = 0;
          sub_100007F88(v28, a1 + 64);
          v7 = *(a1 + 40);
          v6 = *(a1 + 48);
          do
          {
            v8 = v6;
            if (v6 == v7)
            {
              v16 = 0;
              goto LABEL_37;
            }

            v6 -= 8;
            v9 = *(v8 - 8);
            v10 = *(v9 + 24) - 8194;
            v11 = v10 > 0xE;
            v12 = (1 << v10) & 0x409B;
          }

          while (v11 || v12 == 0);
          if (qword_100B508F0 != -1)
          {
            sub_10083421C();
          }

          *buf = *(v9 + 16);
          LOWORD(v30) = *(v9 + 20);
          v14 = sub_1000E6554(off_100B508E8, buf, 1);
          v27 = 3;
          if (qword_100B50950 != -1)
          {
            sub_100834244();
          }

          sub_10033C47C(off_100B50948, v14, &v27);
          v15 = v27;
          if ((v27 - 3) <= 0xFFFFFFFD)
          {
            v15 = 2;
            v27 = 2;
          }

          *(a1 + 416) = v15;
          *(a1 + 407) = 1;
          *(a1 + 418) = 0x10000;
          LOBYTE(dword_100B54550) = v15;
          v26 = 0;
          sub_1000216B4(&v26);
          v16 = sub_100189034((v9 + 16), 4u, 5, &dword_100B54550);
          v17 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(v9 + 8);
            *buf = 138543618;
            v30 = v18;
            v31 = 1024;
            v32 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "syncLogOnDemandEvent: Requested trace log from W1 device %{public}@, Left Bud (result = %d)", buf, 0x12u);
          }

          dword_100B6EA30 = dword_100B54550;
          byte_100B6EA34 = byte_100B54554;
          byte_100B6EA39 = 5;
          v19 = *(v9 + 20);
          *(a1 + 409) = *(v9 + 16);
          *(a1 + 413) = v19;
          *(a1 + 415) = 0;
          sub_100022214(&v26);
          if (!v16)
          {
            *(v9 + 40) = 8;
            *(a1 + 32) = 1;
          }

          sub_10002249C(&v26);
LABEL_37:
          if (*(a1 + 32) == 1 && *(a1 + 24))
          {
            v20 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "syncLogOnDemandEvent: Starting overall timer", buf, 2u);
            }

            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_1004B4AFC;
            v25[3] = &unk_100AEC260;
            v25[4] = a1;
            v21 = [NSTimer timerWithTimeInterval:0 repeats:v25 block:415.0];
            v22 = *(a1 + 128);
            *(a1 + 128) = v21;

            v23 = +[NSRunLoop mainRunLoop];
            [v23 addTimer:*(a1 + 128) forMode:NSDefaultRunLoopMode];
          }

          if (v3 && v8 != v7)
          {
            if (qword_100B50AA0 != -1)
            {
              sub_1008346C8();
            }

            v3 = sub_1000DD584(off_100B50A98, v16, 10000);
          }

          sub_1000088CC(v28);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1008347B0();
      }

      return 111;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834774();
    }

    return 2;
  }

  return v3;
}

void sub_1004B4AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004B4AFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, v4 + 64);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100834864(v4);
  }

  v6 = *(v4 + 40);
  v5 = *(v4 + 48);
  if (v6 != v5)
  {
    while (1)
    {
      v7 = *v6;
      v17 = v7;
      v8 = *(v7 + 24) - 8194;
      v9 = v8 > 0xE;
      v10 = (1 << v8) & 0x409B;
      if (v9 || v10 == 0)
      {
        break;
      }

      v12 = *(v7 + 40);
      if (v12 != 7)
      {
        goto LABEL_11;
      }

LABEL_16:
      if (++v6 == v5)
      {
        v15 = v18;
        if (v18 != v19)
        {
          do
          {
            v16 = *v15;
            *(v16 + 40) = 4;
            sub_1004B2EF8(v4, v16);
            ++v15;
          }

          while (v15 != v19);
          v15 = v18;
        }

        if (v15)
        {
          v19 = v15;
          operator delete(v15);
        }

        goto LABEL_22;
      }
    }

    v12 = *(v7 + 40);
LABEL_11:
    v9 = v12 > 8;
    v13 = (1 << v12) & 0x182;
    if (!v9 && v13 != 0)
    {
      sub_1000C2484(&v18, &v17);
      v5 = *(v4 + 48);
    }

    goto LABEL_16;
  }

LABEL_22:
  sub_1000088CC(v21);
}

const char *sub_1004B4C94(uint64_t a1, int a2)
{
  if ((a2 - 1) > 8)
  {
    return "Unknown";
  }

  else
  {
    return off_100AF93D0[(a2 - 1)];
  }
}

uint64_t sub_1004B4CC0(uint64_t a1, uint64_t a2)
{
  if (qword_100B50950 != -1)
  {
    sub_100834920();
  }

  v4 = sub_10033E9DC(off_100B50948);
  if (*(a1 + 24) && *(a1 + 16) != 1)
  {
    v6 = v4;
    *(a1 + 16) = 1;
    v7 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "purgeCallback: Returning zero files to sysdiagnose", v8, 2u);
    }

    return sub_100348258(v6, a2, 64, "", 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834934();
    }

    return 12;
  }
}

uint64_t sub_1004B4DC8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    LOBYTE(v1) = *(a1 + 16) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1004B4DE0(uint64_t a1, uint64_t a2)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 64);
  v4 = sub_1004B1ED8(a1, a2);
  v5 = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v6 != v7)
  {
    while (*v6 != v4)
    {
      v6 += 8;
      if (v6 == v7)
      {
        goto LABEL_13;
      }
    }
  }

  if (v6 == v7)
  {
LABEL_13:
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834970();
    }

    v14 = 312;
  }

  else
  {
    v8 = *(v4 + 40);
    v9 = v8 > 8;
    v10 = (1 << v8) & 0x182;
    if (v9 || v10 == 0)
    {
      v16 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v5 + 8);
        *buf = 138543362;
        v20 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "removeAccessoryLoggingSession: Removing %{public}@", buf, 0xCu);

        v7 = *(a1 + 48);
      }

      if (v7 != v6 + 8)
      {
        memmove(v6, v6 + 8, v7 - (v6 + 8));
      }

      *(a1 + 48) = v7 - 8;
      sub_1004BF53C(v5);
      operator delete();
    }

    *(v4 + 40) = 3;
    v12 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v5 + 8);
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: removeAccessoryLoggingSession: Disconnected from %{public}@ while actively logging", buf, 0xCu);
    }

    v14 = sub_1004B2EF8(a1, v5);
  }

  sub_1000088CC(v18);
  return v14;
}

uint64_t sub_1004B502C(uint64_t a1, uint64_t a2)
{
  if (sub_1000E2C2C(a2))
  {
    return 1;
  }

  return sub_1004B21E0();
}

uint64_t sub_1004B5068(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v7 = a3;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 64);
  v10 = sub_1004B1ED8(a1, a2);
  v11 = qword_100BCE8C8;
  if (v10)
  {
    v12 = v10;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v12 + 8);
      v14 = *(v12 + 40);
      *buf = 138544130;
      v27 = v13;
      v28 = 1024;
      v29 = v7;
      v30 = 1024;
      v31 = a4;
      v32 = 1024;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "recvLoggingHandler: %{public}@, type: %u, len: %u, status: %d", buf, 0x1Eu);
    }

    if (v7 > 31)
    {
      if (v7 == 32)
      {
        v15 = sub_1004B59AC(a1, a2, a4, a5);
        goto LABEL_22;
      }

      if (v7 != 128)
      {
        if (v7 == 1024)
        {
          v15 = sub_1004B6F54(a1, a2, a4, a5);
LABEL_22:
          v17 = v15;
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      v20 = sub_10000E92C();
      v21 = (*(*v20 + 8))(v20);
      if (v21)
      {
        v15 = sub_1004B5558(v21, v22, 0, a5);
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v7 == 2)
    {
      v23 = sub_10000E92C();
      if ((*(*v23 + 8))(v23))
      {
        v15 = sub_1004B5398(a1, a2, a4, a5);
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v7 != 4)
    {
LABEL_24:
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100834A34();
      }

      v17 = 3;
      goto LABEL_27;
    }

    v18 = sub_10000E92C();
    if (!(*(*v18 + 8))(v18))
    {
LABEL_23:
      v17 = 2;
      goto LABEL_27;
    }

    v19 = *(v12 + 40);
    if ((v19 - 7) < 2)
    {
      v15 = sub_1004B658C(a1, a2, a4, a5);
      goto LABEL_22;
    }

    if (v19 == 6)
    {
      v15 = sub_1004B62AC(a1, a2, 0, a5);
      goto LABEL_22;
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008349AC(v12);
    }

    v17 = 1;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_100304810(a2);
      sub_100834AC4(v16, buf);
    }

    v17 = 8;
  }

LABEL_27:
  sub_1000088CC(v25);
  return v17;
}

uint64_t sub_1004B5398(uint64_t a1, uint64_t a2, __int16 a3, const void *a4)
{
  LOWORD(__nitems) = a3;
  v16.tv_sec = 0;
  *&v16.tv_usec = 0;
  gettimeofday(&v16, 0);
  tv_usec = v16.tv_usec;
  __ptr = v16.tv_sec;
  v7 = sub_1004B1ED8(a1, a2);
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + 24);
    if (v9 == 8194)
    {
      v10 = &unk_100B6E820;
LABEL_9:
      v12 = fopen(v10, "ab");
      if (v12)
      {
        v13 = v12;
        fwrite((a1 + 422), 1uLL, 1uLL, v12);
        fwrite(&__ptr, 1uLL, 4uLL, v13);
        fwrite(&tv_usec, 1uLL, 4uLL, v13);
        fwrite(&__nitems, 1uLL, 2uLL, v13);
        fwrite(a4, 1uLL, __nitems, v13);
        fclose(v13);
        return 0;
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_100834B04();
        }

        return 1;
      }
    }

    if (v9 == 8201)
    {
      v10 = &unk_100B6E920;
      goto LABEL_9;
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834B88(v8);
    }

    return 2;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834C20(a2);
    }

    return 8;
  }
}

uint64_t sub_1004B5558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = fopen(aPrivateVarMobi_16, "w");
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = a4 + 28;
    v34 = a4;
    v9 = a4 + 21;
    v10 = a4 + 20;
    do
    {
      if (*(a4 + 20 + 40 * v7))
      {
LABEL_4:
        fwrite("Source Device : Addr -> ", 0x18uLL, 1uLL, v6);
        for (i = 0; i != 6; ++i)
        {
          fprintf(v6, "%02x", *(v10 + i));
        }

        fwrite(", Link Key -> ", 0xEuLL, 1uLL, v6);
        for (j = 0; j != 16; ++j)
        {
          fprintf(v6, "%02x", *(v8 + j));
        }

        fputc(10, v6);
      }

      else
      {
        v13 = 0;
        while (v13 != 5)
        {
          if (*(v9 + v13++))
          {
            if ((v13 - 1) <= 4)
            {
              goto LABEL_4;
            }

            break;
          }
        }
      }

      ++v7;
      v9 += 40;
      v10 += 40;
      v8 += 40;
    }

    while (v7 != 15);
    v15 = 0;
    v16 = a4 + 620;
    v17 = a4 + 636;
    v18 = a4 + 652;
    v19 = a4 + 621;
    v20 = v34 + 620;
    do
    {
      if (*(v16 + 36 * v15))
      {
LABEL_17:
        fwrite("Magic Device : Hint -> ", 0x17uLL, 1uLL, v6);
        for (k = 0; k != 16; ++k)
        {
          fprintf(v6, "%02x", *(v20 + k));
        }

        fwrite(", Key -> ", 9uLL, 1uLL, v6);
        for (m = 0; m != 16; ++m)
        {
          fprintf(v6, "%02x", *(v17 + m));
        }

        fprintf(v6, ", Ratchet -> %d", *(v18 + 36 * v15));
        fputc(10, v6);
      }

      else
      {
        v23 = 0;
        while (v23 != 15)
        {
          if (*(v19 + v23++))
          {
            if ((v23 - 1) <= 0xE)
            {
              goto LABEL_17;
            }

            break;
          }
        }
      }

      ++v15;
      v19 += 36;
      v20 += 36;
      v17 += 36;
    }

    while (v15 != 5);
    if (*(v34 + 800))
    {
LABEL_30:
      fwrite("Magic IRK -> ", 0xDuLL, 1uLL, v6);
      for (n = 0; n != 16; ++n)
      {
        fprintf(v6, "%02x", *(v34 + 800 + n));
      }

      fwrite(", Magic Key -> ", 0xFuLL, 1uLL, v6);
      for (ii = 0; ii != 16; ++ii)
      {
        fprintf(v6, "%02x", *(v34 + 816 + ii));
      }

      fputc(10, v6);
    }

    else
    {
      v30 = 0;
      while (v30 != 15)
      {
        if (*(v34 + 801 + v30++))
        {
          if ((v30 - 1) <= 0xE)
          {
            goto LABEL_30;
          }

          break;
        }
      }
    }

    if (*(v34 + 832))
    {
LABEL_36:
      fwrite("Couple Addr -> ", 0xFuLL, 1uLL, v6);
      for (jj = 0; jj != 6; ++jj)
      {
        fprintf(v6, "%02x", *(v34 + 832 + jj));
      }

      fwrite(", Link Key -> ", 0xEuLL, 1uLL, v6);
      for (kk = 0; kk != 16; ++kk)
      {
        fprintf(v6, "%02x", *(v34 + 840 + kk));
      }

      fputc(10, v6);
    }

    else
    {
      v32 = 0;
      while (v32 != 5)
      {
        if (*(v34 + 833 + v32++))
        {
          if ((v32 - 1) <= 4)
          {
            goto LABEL_36;
          }

          break;
        }
      }
    }

    fclose(v6);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834CA0();
    }

    return 1;
  }
}

uint64_t sub_1004B59AC(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  memset(v97, 0, 31);
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v95 = 0;
  v96 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100834D24();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, buf, 1);
  v9 = sub_1004B1ED8(a1, a2);
  if (!v9)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834DBC(a2);
    }

    return 8;
  }

  v10 = v9;
  if (!a4)
  {
LABEL_22:
    v19 = qword_100BCE8C8;
    if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      return 3;
    }

    v62 = *(v10 + 8);
    *buf = 138543874;
    *&buf[4] = v62;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    *&buf[22] = 1024;
    *&buf[24] = a3;
    v64 = "recvW1AppDiagnosticsHandler: %{public}@ sent invalid APP Diag data : data->%p, len->%d";
    v65 = buf;
    v66 = v19;
    v67 = 28;
LABEL_65:
    _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, v64, v65, v67);

    return 3;
  }

  if (a3 > 453)
  {
    if (a3 != 454)
    {
      if (a3 == 904)
      {
        v71 = 0;
        v11 = 0;
        v12 = 2;
        v68 = 1;
        v69 = 1;
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v71 = 0;
    v11 = 0;
    v68 = 0;
    v69 = 1;
  }

  else
  {
    if (a3 != 64)
    {
      if (a3 == 128)
      {
        v11 = 0;
        v12 = 2;
        v71 = 1;
        v68 = 1;
        v69 = 0;
        goto LABEL_19;
      }

LABEL_15:
      v68 = 0;
      v69 = 0;
      v12 = 0;
      v71 = 1;
      v11 = 1;
      goto LABEL_19;
    }

    v68 = 0;
    v69 = 0;
    v11 = 0;
    v71 = 1;
  }

  v12 = 1;
LABEL_19:
  v72 = *(v8 + 1042);
  v14 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(v10 + 8);
    v16 = v10;
    v17 = v8;
    v18 = v15;
    *buf = 138543874;
    *&buf[4] = v15;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 1024;
    *&buf[20] = v69;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "recvW1AppDiagnosticsHandler: DiagInfo received from %{public}@ %d bud, AWD = %d", buf, 0x18u);

    v8 = v17;
    v10 = v16;
  }

  if (v11)
  {
    goto LABEL_22;
  }

  v21 = v12 << 6;
  memcpy((a1 + 150), a4, v21);
  *(a1 + 406) = v21;
  v22 = fopen(aPrivateVarMobi_15, "w");
  if (!v22)
  {
    v35 = v72;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834D38();
    }

    v13 = 1;
    goto LABEL_43;
  }

  v23 = v22;
  v70 = v21;
  v24 = v8;
  v26 = *a4;
  v25 = a4[1];
  v97[0] = *(a4 + 2);
  *(v97 + 15) = *(a4 + 23);
  v80 = *(a4 + 39);
  v81 = *(a4 + 47);
  v78 = *(a4 + 51);
  v79 = *(a4 + 53);
  v27 = *(a4 + 54);
  v28 = *(a4 + 55);
  v96 = *(a4 + 63);
  v95 = v28;
  fwrite("App Diagnostics Info Collected from Accessory Device\n\n", 0x36uLL, 1uLL, v22);
  sub_1000C23E0(v24, buf);
  if (buf[23] >= 0)
  {
    v29 = buf;
  }

  else
  {
    v29 = *buf;
  }

  fprintf(v23, "DeviceName : %s\n", v29);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v30 = sub_100304810(a2);
  fprintf(v23, "Device Bluetooth Address : %s\n", v30);
  v31 = fwrite("\n======Primary Device======\n", 0x1CuLL, 1uLL, v23);
  *buf = v26;
  *&buf[4] = v25;
  *&buf[8] = v97[0];
  *&buf[23] = *(v97 + 15);
  v86 = v80;
  v87 = v81;
  v88 = v78;
  v89 = v79;
  v90 = v27;
  v91 = v95;
  v92 = v96;
  sub_1004B7AC0(v31, v23, buf);
  v75 = 0u;
  v76 = 0u;
  v32 = sub_100579608(&v75, 1, v24);
  *(&v76 + 1) = __PAIR64__(v25, v26);
  LOWORD(v76) = WORD6(v97[1]);
  BYTE2(v76) = BYTE14(v97[1]);
  *(&v76 + 3) = *(&v81 + 1);
  BYTE5(v76) = HIBYTE(v81);
  v34 = sub_10000F034(v32, v33);
  (*(*v34 + 56))(v34, &v75);
  if (v27 == 9)
  {
    v36 = "dev-fused";
    v8 = v24;
    v35 = v72;
LABEL_38:
    v37 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(v10 + 8);
      *buf = 138543618;
      *&buf[4] = v38;
      *&buf[12] = 2082;
      *&buf[14] = v36;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "recvW1AppDiagnosticsHandler: %{public}@ fused status : %{public}s", buf, 0x16u);
    }

    goto LABEL_40;
  }

  v8 = v24;
  v35 = v72;
  if (v27 == 1)
  {
    v36 = "prod-fused";
    goto LABEL_38;
  }

LABEL_40:
  if (v68)
  {
    v97[0] = *(a4 + 18);
    *(v97 + 15) = *(a4 + 87);
    v80 = *(a4 + 103);
    v81 = *(a4 + 111);
    v78 = *(a4 + 115);
    v79 = *(a4 + 117);
    v39 = *(a4 + 118);
    v96 = *(a4 + 127);
    v95 = *(a4 + 119);
    v40 = *(a4 + 8);
    v41 = fwrite("\n======Secondary Device======\n", 0x1EuLL, 1uLL, v23);
    *buf = v40;
    *&buf[8] = v97[0];
    *&buf[23] = *(v97 + 15);
    v86 = v80;
    v87 = v81;
    v88 = v78;
    v89 = v79;
    v90 = v39;
    v92 = v96;
    v91 = v95;
    sub_1004B7AC0(v41, v23, buf);
  }

  fclose(v23);
  v13 = 0;
  v21 = v70;
LABEL_43:
  if (v71)
  {
    return v13;
  }

  v42 = a4 + v21;
  bzero(buf, 0x29AuLL);
  bzero(&v75, 0x29AuLL);
  sub_1004B7CF4(v43, buf, a4 + v21 + 4);
  v44 = *(a4 + v21);
  buf[1] = *v42;
  if (v35)
  {
    v94 |= v35;
  }

  v45 = *(v42 + 1);
  *&buf[3] = *(v42 + 1);
  v46 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v47 = *(v10 + 8);
    v48 = v42[1];
    *v82 = 138544130;
    *&v82[4] = v47;
    *&v82[12] = 1024;
    *&v82[14] = v44;
    *&v82[18] = 1024;
    *&v82[20] = v48;
    v83 = 1024;
    v84 = v45;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "recvW1AppDiagnosticsHandler: Received %{public}@ AWD: awdVersion=%d, data[1]=%d, awdLength=%d", v82, 0x1Eu);
  }

  if (v45 == 386)
  {
    v49 = v42[1];
    v50 = v49 != 0;
  }

  else
  {
    if (v45 < 0x182 || (v50 = v42[1]) == 0)
    {
      v61 = qword_100BCE8C8;
      if (!os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        return 3;
      }

      v62 = *(v10 + 8);
      v63 = v42[1];
      *v82 = 138543874;
      *&v82[4] = v62;
      *&v82[12] = 1024;
      *&v82[14] = v45;
      *&v82[18] = 1024;
      *&v82[20] = v63;
      v64 = "recvW1AppDiagnosticsHandler: %{public}@ sent invalid AWD header awdLength=%d data[1]=%d";
      v65 = v82;
      v66 = v61;
      v67 = 24;
      goto LABEL_65;
    }

    v49 = 1;
  }

  buf[0] = v50;
  buf[2] = v49;
  v93 = *(v10 + 24);
  memset(v82, 0, sizeof(v82));
  v51 = sub_100579608(v82, 5, v8);
  *&v82[16] = buf;
  v53 = sub_10000F034(v51, v52);
  v54 = (*(*v53 + 56))(v53, v82);
  v55 = *&buf[3];
  v56 = v68 ^ 1;
  if (*&buf[3] < 0x183u)
  {
    v56 = 1;
  }

  if ((v56 & 1) == 0)
  {
    sub_1004B7CF4(v54, &v75, (v42 + 390));
    if (v35)
    {
      v94 |= v35;
    }

    if (buf[0] == 1)
    {
      v57 = 2;
    }

    else
    {
      v57 = 1;
    }

    LOBYTE(v75) = v57;
    BYTE1(v75) = buf[1];
    BYTE2(v75) = 2;
    *(&v75 + 3) = v55;
    v77 = *(v10 + 24);
    v73[0] = 0;
    v73[1] = 0;
    v74 = 0;
    v58 = sub_100579608(v73, 5, v8);
    v74 = &v75;
    v60 = sub_10000F034(v58, v59);
    (*(*v60 + 56))(v60, v73);
  }

  return v13;
}

uint64_t sub_1004B62AC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4)
{
  if (*(a1 + 448) != 1)
  {
    return 111;
  }

  v7 = a4[4];
  v8 = a4[1];
  v9 = *a4;
  if (v9 == 1 && v8 == 121 && v7 == 1)
  {
    LOBYTE(dword_100B54550) = 2;
    LOBYTE(v18.tm_sec) = 0;
    sub_1000216B4(&v18);
    v11 = sub_100189034(a2, 4u, 5, &dword_100B54550);
    if (v11 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834FA0();
    }

    goto LABEL_21;
  }

  if (v9 == 2 && v8 == 121 && v7 == 1)
  {
    LOBYTE(v18.tm_sec) = 0;
    sub_1000216B4(&v18);
    v11 = sub_10018825C(a2, 2, 2 * ((5 * *(a1 + 146)) & 0x7FFFu));
    if (v11 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100834F30();
    }

    goto LABEL_21;
  }

  if (v8 != 85)
  {
    return 0;
  }

  v14 = fopen(aPrivateVarMobi_14, "a");
  if (v14)
  {
    v15 = v14;
    memset(&v18, 0, sizeof(v18));
    v19 = time(0);
    localtime_r(&v19, &v18);
    fprintf(v15, "%02d/%02d/%02d %02d:%02d:%02d : side = ", v18.tm_mon + 1, v18.tm_mday, v18.tm_year + 1900, v18.tm_hour, v18.tm_min, v18.tm_sec);
    if (v9 == 1)
    {
      v16 = "Left, ";
      v17 = 6;
    }

    else
    {
      v16 = "Right, ";
      v17 = 7;
    }

    fwrite(v16, v17, 1uLL, v15);
    fprintf(v15, "voltage = %dmV, current = %dmA, temperature = %dºC, level = %d%%\n", __rev16(*(a4 + 3)), __rev16(*(a4 + 4)), a4[10], a4[5]);
    fclose(v15);
    if (v9 == 1)
    {
      LOBYTE(v18.tm_sec) = 0;
      sub_1000216B4(&v18);
      v11 = sub_100189034(a2, 4u, 7, byte_100B5461D);
      if (v11 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100834E3C();
      }

LABEL_21:
      sub_10002249C(&v18);
      return v11;
    }

    return 0;
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100834EAC();
  }

  return 1;
}

void sub_1004B6570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B658C(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  v8 = *a4;
  if (qword_100B508F0 != -1)
  {
    sub_100834D24();
  }

  *buf = *a2;
  LOWORD(v78) = *(a2 + 4);
  v9 = sub_1000E6554(off_100B508E8, buf, 1);
  v10 = sub_1004B1ED8(a1, a2);
  v76 = 0;
  if (*(a1 + 448) != 1)
  {
    return 111;
  }

  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 24) - 8194;
    v13 = v12 > 0xE;
    v14 = (1 << v12) & 0x409B;
    if (!v13 && v14 != 0)
    {
      v75 = v10;
      if (qword_100B50950 != -1)
      {
        sub_100834244();
      }

      sub_10033C1E4(off_100B50948, v9, &v76 + 1, &v76);
      v74 = v76;
      v16 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v75 + 8);
        v18 = *(v75 + 24);
        *buf = 138544386;
        v78 = v17;
        v79 = 1024;
        *v80 = a3;
        *&v80[4] = 1024;
        *&v80[6] = v74 != 3;
        v81 = 1024;
        v82 = v18;
        v83 = 1024;
        v84 = v8;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: %{public}@ len = %d, isUTPUp = %d, productId = %d, buddyRspSide = %d", buf, 0x24u);
      }

      v19 = v75;
      if (a3 == 1 && v74 != 3 || a3 == 1 && *(v75 + 24) != 8194)
      {
        v20 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(v75 + 8);
          *buf = 138543362;
          v78 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Warning: recvW1CrashTraceHandler: Flash in %{public}@ is busy. Retransmit Buddy command", buf, 0xCu);
        }

        sub_1004B7ED4(a1, a2);
        return 10;
      }

      if (a3 < 2)
      {
        v28 = 0;
        v27 = 0;
      }

      else
      {
        v26 = sub_1004B8008(a1, a2, v8, a4 + 1, (a3 - 1));
        v27 = a4[1];
        v28 = v26 == 1;
        v19 = v75;
      }

      v32 = *(a1 + 416);
      if (v8 == v32)
      {
        v34 = a3 == 1 || v27 == 131;
        if ((v34 || v28) && *(v19 + 24) == 8194)
        {
          v32 = v8;
          if (v74 != 3)
          {
            *(a1 + 418) = 0x10000;
            if (v8 == 1)
            {
              v35 = 2;
            }

            else
            {
              v35 = 1;
            }

            LOBYTE(dword_100B54550) = v35;
            v36 = *(v19 + 40);
            if (v36 == 8)
            {
              v39 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                v40 = *(v19 + 8);
                *buf = 138543362;
                v78 = v40;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: Send request to %{public}@ for trace log", buf, 0xCu);
              }

              *(a1 + 407) = 0;
            }

            else if (v36 == 7)
            {
              v37 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                v38 = *(v19 + 8);
                *buf = 138543362;
                v78 = v38;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: Send request to %{public}@ to check crash log existence", buf, 0xCu);
              }
            }

            v41 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              v42 = *(v75 + 8);
              *buf = 138543618;
              v78 = v42;
              v79 = 1024;
              *v80 = dword_100B54550;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: Send TestEnable command to %{public}@ for the other side, side = %d", buf, 0x12u);
            }

            buf[0] = 0;
            sub_1000216B4(buf);
            v43 = sub_100189034((v9 + 128), 4u, 5, &dword_100B54550);
            sub_100022214(buf);
            dword_100B6EA30 = dword_100B54550;
            byte_100B6EA34 = byte_100B54554;
            byte_100B6EA39 = 5;
            v44 = *(v9 + 132);
            *(a1 + 409) = *(v9 + 128);
            *(a1 + 413) = v44;
            *(a1 + 415) = 0;
            v19 = v75;
            if (v43 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              sub_100835010();
              v19 = v75;
            }

            sub_10002249C(buf);
            v32 = *(a1 + 416);
          }
        }

        else
        {
          v32 = v8;
        }
      }

      if (v32 == 1)
      {
        v45 = 2;
      }

      else
      {
        v45 = 1;
      }

      if (v45 == v8 || *(v19 + 24) != 8194 || v74 == 3)
      {
        if (a3 != 1 && v27 != 131 && !v28)
        {
          if (*(v19 + 24) != 8194 || *(v19 + 40) != 8)
          {
            return 0;
          }

          v22 = 0;
          if ((*(a1 + 408) & 1) != 0 || v27 != 121)
          {
            return v22;
          }
        }

        v46 = [*(a1 + 424) count];
        v47 = *(v75 + 40);
        if (v46 > *(a1 + 432))
        {
          if (v47 == 8)
          {
            v48 = *(a1 + 24);
            v49 = qword_100BCE8C8;
            v50 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
            if (v48)
            {
              if (v50)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: TTR or Sysdiagnose - Trace Log Collection Completed", buf, 2u);
              }

              *(v75 + 40) = 5;
              return sub_1004B2EF8(a1, v75);
            }

            if (!v50)
            {
              goto LABEL_85;
            }

            *buf = 0;
            v52 = "recvW1CrashTraceHandler: Internal Settings - Trace Log Collection Completed";
          }

          else
          {
            v49 = qword_100BCE8C8;
            v50 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
            if (!v50)
            {
              goto LABEL_85;
            }

            *buf = 0;
            v52 = "recvW1CrashTraceHandler: Found crash in Audio Accessory device";
          }

          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v52, buf, 2u);
LABEL_85:
          v53 = sub_10000C798(v50, v51);
          v54 = (*(*v53 + 352))(v53);
          if ((v54 & 1) != 0 || (v56 = sub_10000C798(v54, v55), (*(*v56 + 416))(v56)))
          {
            v57 = qword_100BCE8C8;
            v58 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
            if (v58)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: Triggering Tap-to-Radar popup", buf, 2u);
            }

            v60 = sub_10000EE80(v58, v59);
            v61 = [NSOrderedSet orderedSetWithOrderedSet:*(a1 + 424)];
            v62 = *(v75 + 40);
            v63 = *(v75 + 24);
            v64 = *v75;
            v65 = [NSString stringWithString:v64];
            (*(*v60 + 152))(v60, v61, v62 == 7, v63, v65);

            v22 = 0;
          }

          else
          {
            v66 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              v67 = [*(a1 + 424) count];
              *buf = 134217984;
              v78 = v67;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: Have %ld logs, but cannot trigger non-iOS pop-up", buf, 0xCu);
            }

            v22 = 2;
          }

          sub_1004B8880(v75);
          v68 = *(a1 + 40);
          v69 = *(a1 + 48);
          if (v68 == v69)
          {
            goto LABEL_102;
          }

          v70 = 0;
          do
          {
            v71 = *(*v68 + 40);
            v13 = v71 > 8;
            v72 = (1 << v71) & 0x182;
            if (!v13 && v72 != 0)
            {
              ++v70;
            }

            v68 += 8;
          }

          while (v68 != v69);
          if (!v70)
          {
LABEL_102:
            sub_1004B12A0(a1);
          }

          sub_1004B2A3C(a1);
          return v22;
        }

        if (v47 != 8)
        {
          v22 = 0;
          *(v75 + 40) = 0;
          return v22;
        }
      }

      return 0;
    }

    v29 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(v11 + 8);
      v31 = *(v11 + 24);
      *buf = 138543618;
      v78 = v30;
      v79 = 1024;
      *v80 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: %{public}@ productId = %d unsupported for legacy crash trace handling", buf, 0x12u);
    }

    return 2;
  }

  else
  {
    v23 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = sub_100304810(a2);
      *buf = 141558275;
      v78 = 1752392040;
      v79 = 2081;
      *v80 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "recvW1CrashTraceHandler: Invalid address %{private, mask.hash}s", buf, 0x16u);
    }

    return 8;
  }
}

uint64_t sub_1004B6F54(uint64_t a1, int *a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = sub_1004B1ED8(a1, a2);
  if (!a3 || !a4)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008350A0();
    }

    return 3;
  }

  v9 = v8;
  if (!v8)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835398(a2);
    }

    return 8;
  }

  v10 = *(v8 + 32);
  if (v10)
  {
    v11 = *a4;
    if (v11 == 4)
    {
      goto LABEL_6;
    }

    v13 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v9 + 8);
      buf.tm_sec = 138543362;
      *&buf.tm_min = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "recvLogHandler: Stopping inactivity timer for %{public}@", &buf, 0xCu);

      v10 = *(v9 + 32);
    }

    [v10 invalidate];
    v15 = *(v9 + 32);
    *(v9 + 32) = 0;
  }

  v11 = *a4;
  if (v11 > 0xFC)
  {
    if (v11 == 253)
    {
      return sub_1004B9610(a1, a2);
    }

    if (v11 == 254)
    {
      return sub_1004B9420(a1, a2, a3, a4);
    }

    return sub_1004B914C(a1, a2);
  }

  if (v11 == 6)
  {
    return sub_1004B899C(a1, a2, a3, a4);
  }

  if (v11 == 252)
  {
    if (a3 < 2)
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1008350DC();
      }

      return 3;
    }

    if (a4[1] != 1)
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100835118();
      }

      return 3;
    }

    v73 = 0;
    v16 = sub_10000E92C();
    sub_100007E30(&buf, "AccessoryLogging");
    sub_100007E30(v77, "AccessoryLogDWRPopupKey");
    (*(*v16 + 72))(v16, &buf, v77, &v73);
    if (v78 < 0)
    {
      operator delete(*v77);
    }

    if (SHIBYTE(buf.tm_year) < 0)
    {
      operator delete(*&buf.tm_sec);
    }

    if ((v73 & 1) == 0)
    {
      return sub_1004B9948(a1, a2, 5);
    }

    v17 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.tm_sec) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "recvLogHandler: Skipping DWR popup", &buf, 2u);
    }

    return 17;
  }

LABEL_6:
  if (a3 <= 2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835308(v9);
    }

    return 3;
  }

  if (a3 == 3)
  {
    v18 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(v9 + 8);
      v20 = *a4;
      v21 = a4[1];
      v22 = a4[2];
      buf.tm_sec = 138544130;
      *&buf.tm_min = v19;
      LOWORD(buf.tm_mday) = 1024;
      *(&buf.tm_mday + 2) = v20;
      HIWORD(buf.tm_mon) = 1024;
      buf.tm_year = v21;
      LOWORD(buf.tm_wday) = 1024;
      *(&buf.tm_wday + 2) = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Warning: recvLogHandler: Ignoring data for %{public}@ shorter with only header: %02x %02x %02x", &buf, 0x1Eu);
    }

    return 3;
  }

  if (v11 == 4)
  {
    return sub_1004B9B18(a1, a2, a3, a4);
  }

  v23 = a4[1];
  v24 = v23 & 0x7F;
  v25 = v24;
  if (*(v9 + 64))
  {
    goto LABEL_45;
  }

  v36 = *(v9 + 40);
  if (v36 <= 8 && ((1 << v36) & 0x182) != 0)
  {
    if ((v23 & 0x7F) != 0)
    {
      v37 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        v64 = *(v9 + 8);
        v65 = *(v9 + 40);
        v66 = sub_1004BA678(v64, *a4);
        v67 = sub_1004BA6F8(v66, a4[2]);
        buf.tm_sec = 138544386;
        *&buf.tm_min = v64;
        LOWORD(buf.tm_mday) = 1024;
        *(&buf.tm_mday + 2) = v65;
        HIWORD(buf.tm_mon) = 1024;
        buf.tm_year = v23 & 0x7F;
        LOWORD(buf.tm_wday) = 2080;
        *(&buf.tm_wday + 2) = v66;
        HIWORD(buf.tm_isdst) = 2080;
        *(&buf.tm_isdst + 1) = v67;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "recvLogHandler: No open log file for %{public}@ (status = %u, packetSeqNum = %u, logType = %s, logDevice = %s)", &buf, 0x2Cu);
      }
    }

    else
    {
      *(v9 + 73) = v11;
      if (v11 == 1)
      {
        *(a1 + 34) = 1;
        v38 = 7;
      }

      else
      {
        v38 = 8;
      }

      *(v9 + 40) = v38;
      *(v9 + 74) = a4[2];
      memset(&buf, 0, sizeof(buf));
      v44 = sub_1004B7E94(v8, &buf);
      v69 = sub_1004BA678(v44, *(v9 + 73));
      v68 = sub_1004BA6F8(v69, *(v9 + 74));
      if (qword_100B50950 != -1)
      {
        sub_100834244();
      }

      v70 = sub_10033F114(off_100B50948, v9 + 16);
      v45 = [NSString stringWithFormat:@"/private/var/mobile/Library/Logs/Bluetooth/Accessory%s_%s_%@_%04d-%02d-%02d-%02d-%02d-%02d.%s", v69, v68, v70, (buf.tm_year + 1900), (buf.tm_mon + 1), buf.tm_mday, buf.tm_hour, buf.tm_min, buf.tm_sec, sub_1004BA7DC(v70, *(v9 + 73))];
      v47 = (v9 + 48);
      v46 = *(v9 + 48);
      *(v9 + 48) = v45;

      v48 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v49 = *v47;
        *v77 = 138412290;
        *&v77[4] = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "recvLogHandler: Opening file %@", v77, 0xCu);
      }

      *(v9 + 64) = fopen([*(v9 + 48) UTF8String], "ab");
      *(v9 + 72) = 0;
      v50 = *(v9 + 96);
      if (v50)
      {
        [*(v9 + 104) setObject:v50 forKey:*(v9 + 48)];
        v51 = *(v9 + 96);
        *(v9 + 96) = 0;
      }

      if (*(v9 + 73) == 11)
      {
        v52 = +[NSFileManager defaultManager];
        v74 = NSFileProtectionKey;
        v75 = NSFileProtectionCompleteUnlessOpen;
        v53 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v54 = *v47;
        v72 = 0;
        v55 = [v52 setAttributes:v53 ofItemAtPath:v54 error:&v72];
        v56 = v72;

        if (v55)
        {
          v57 = v56;
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
          {
            sub_10083518C();
          }

          v58 = +[NSFileManager defaultManager];
          v59 = *v47;
          v71 = v56;
          v60 = [v58 removeItemAtPath:v59 error:&v71];
          v57 = v71;

          if ((v60 & 1) == 0 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
          {
            sub_100835200();
          }

          *(v9 + 64) = 0;
        }
      }

      if (*(v9 + 64))
      {
        v25 = 0;
LABEL_45:
        v26 = *(v9 + 72);
        if (v24 != v26)
        {
          v27 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
          {
            v61 = *(v9 + 48);
            buf.tm_sec = 138412802;
            *&buf.tm_min = v61;
            LOWORD(buf.tm_mday) = 1024;
            *(&buf.tm_mday + 2) = v25;
            HIWORD(buf.tm_mon) = 1024;
            buf.tm_year = v26;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "recvLogHandler: File %@ seq num mismatch rcvd %d expected %d", &buf, 0x18u);
            LOBYTE(v26) = *(v9 + 72);
          }

          *(v9 + 56) = 1;
          LOBYTE(v24) = v26;
        }

        *(v9 + 72) = (v24 + 1) & 0x7F;
        v28 = *a4;
        v29 = *(v9 + 73);
        if (v28 != v29)
        {
          v30 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
          {
            v62 = *(v9 + 48);
            buf.tm_sec = 138412802;
            *&buf.tm_min = v62;
            LOWORD(buf.tm_mday) = 1024;
            *(&buf.tm_mday + 2) = v28;
            HIWORD(buf.tm_mon) = 1024;
            buf.tm_year = v29;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "recvLogHandler: File %@ log type mismatch rcvd %d expected %d", &buf, 0x18u);
          }

          *(v9 + 56) = 1;
        }

        v31 = a4[2];
        v32 = *(v9 + 74);
        if (v31 != v32)
        {
          v33 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
          {
            v63 = *(v9 + 48);
            buf.tm_sec = 138412802;
            *&buf.tm_min = v63;
            LOWORD(buf.tm_mday) = 1024;
            *(&buf.tm_mday + 2) = v31;
            HIWORD(buf.tm_mon) = 1024;
            buf.tm_year = v32;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "recvLogHandler: File %@ log device mismatch rcvd %d expected %d", &buf, 0x18u);
          }

          *(v9 + 56) = 1;
        }

        fwrite(a4 + 3, 1uLL, a3 - 3, *(v9 + 64));
        if (v23 >= 0)
        {
          v34 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            v35 = *(v9 + 48);
            buf.tm_sec = 138412290;
            *&buf.tm_min = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "recvLogHandler: Completed writing file %@", &buf, 0xCu);
          }

          sub_1004BA85C(v9);
        }

        return 0;
      }

      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100835274();
      }
    }

    return 1;
  }

  v39 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v40 = *(v9 + 8);
    v41 = *(v9 + 40);
    v42 = sub_1004BA678(v40, *a4);
    v43 = sub_1004BA6F8(v42, a4[2]);
    buf.tm_sec = 138544386;
    *&buf.tm_min = v40;
    LOWORD(buf.tm_mday) = 1024;
    *(&buf.tm_mday + 2) = v41;
    HIWORD(buf.tm_mon) = 1024;
    buf.tm_year = v23 & 0x7F;
    LOWORD(buf.tm_wday) = 2080;
    *(&buf.tm_wday + 2) = v42;
    HIWORD(buf.tm_isdst) = 2080;
    *(&buf.tm_isdst + 1) = v43;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Warning: recvLogHandler: Refusing non-AWD log data from %{public}@ (status = %u, packetSeqNum = %u, logType = %s, logDevice = %s)", &buf, 0x2Cu);
  }

  return 6;
}

uint64_t sub_1004B7AC0(int a1, FILE *a2, uint64_t a3)
{
  fprintf(a2, "  Pri A2DP Uptime.. %d\n", *(a3 + 8));
  fprintf(a2, "  Sec A2DP Uptime.. %d\n", *(a3 + 12));
  fprintf(a2, "  Pri HFP Uptime... %d\n", *(a3 + 16));
  fprintf(a2, "  Sec HFP Uptime... %d\n", *(a3 + 20));
  fprintf(a2, "  Pri AAC Uptime... %d\n", *(a3 + 24));
  fprintf(a2, "  Sec AAC Uptime... %d\n", *(a3 + 28));
  fprintf(a2, "  Total Uptime..... %d\n", *(a3 + 32));
  fprintf(a2, "  Num C-Swaps...... %d\n", *a3);
  fprintf(a2, "  Num UC-Swaps..... %d\n", *(a3 + 4));
  fprintf(a2, "  Bud Active FW.... %d.%d.%d\n", *(a3 + 36), *(a3 + 37), *(a3 + 38));
  fprintf(a2, "  Bud Pending FW... %d.%d.%d\n", *(a3 + 39), *(a3 + 40), *(a3 + 41));
  fprintf(a2, "  Bud Previous FW.. %d.%d.%d\n", *(a3 + 42), *(a3 + 43), *(a3 + 44));
  fprintf(a2, "  Bud HW Ver....... %d.%d.%d\n", *(a3 + 45), *(a3 + 46), *(a3 + 47));
  fprintf(a2, "  Case FW Ver...... %d.%d.%d\n", *(a3 + 48), *(a3 + 49), *(a3 + 50));
  fprintf(a2, "  Case HW Ver...... %d.%d.%d\n", *(a3 + 54), *(a3 + 55), *(a3 + 56));
  fprintf(a2, "  Case FWUP Ver.... %d.%d.%d\n", *(a3 + 51), *(a3 + 52), *(a3 + 53));
  return fprintf(a2, "  SCP Ver.......... %d.%d.%d.%d.%d.%d\n", *(a3 + 57), *(a3 + 58), *(a3 + 59), *(a3 + 60), *(a3 + 61), *(a3 + 62));
}

__n128 sub_1004B7CF4(int a1, char *a2, uint64_t a3)
{
  v5 = a2 + 307;
  bzero(a2, 0x29AuLL);
  *(a2 + 5) = *a3;
  *(a2 + 7) = *(a3 + 2);
  *(a2 + 9) = *(a3 + 4);
  *(a2 + 11) = *(a3 + 6);
  *(a2 + 15) = *(a3 + 10);
  *(a2 + 19) = *(a3 + 14);
  *(a2 + 23) = *(a3 + 18);
  *(a2 + 27) = *(a3 + 22);
  *(a2 + 31) = *(a3 + 26);
  *(a2 + 35) = *(a3 + 30);
  *(a2 + 39) = *(a3 + 34);
  *(a2 + 43) = *(a3 + 38);
  *(a2 + 47) = *(a3 + 42);
  v6 = *(a3 + 46);
  v7 = *(a3 + 62);
  v8 = *(a3 + 78);
  *(a2 + 99) = *(a3 + 94);
  *(a2 + 83) = v8;
  *(a2 + 67) = v7;
  *(a2 + 51) = v6;
  v9 = *(a3 + 110);
  v10 = *(a3 + 126);
  v11 = *(a3 + 142);
  *(a2 + 163) = *(a3 + 158);
  *(a2 + 147) = v11;
  *(a2 + 131) = v10;
  *(a2 + 115) = v9;
  v12 = *(a3 + 174);
  v13 = *(a3 + 190);
  v14 = *(a3 + 206);
  *(a2 + 227) = *(a3 + 222);
  *(a2 + 211) = v14;
  *(a2 + 195) = v13;
  *(a2 + 179) = v12;
  v15 = *(a3 + 238);
  v16 = *(a3 + 254);
  v17 = *(a3 + 286);
  *(a2 + 275) = *(a3 + 270);
  *(a2 + 291) = v17;
  *(a2 + 259) = v16;
  *(a2 + 243) = v15;
  *v5 = *(a3 + 302);
  v18 = *(a3 + 310);
  *(a2 + 323) = *(a3 + 318);
  *(a2 + 315) = v18;
  v19 = *(a3 + 322);
  *(a2 + 335) = *(a3 + 330);
  *(a2 + 327) = v19;
  v20 = *(a3 + 334);
  *(a2 + 357) = *(a3 + 350);
  *(a2 + 341) = v20;
  result = *(a3 + 354);
  *(a2 + 373) = *(a3 + 366);
  *(a2 + 361) = result;
  *(v5 + 16) = *(a3 + 382);
  *(v5 + 41) = *(a3 + 384);
  return result;
}

void sub_1004B7ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B1ED8(a1, a2);
  if (*(a1 + 448))
  {
    v6 = v4;
    if (v4)
    {
      if (*(a1 + 415) < 5u)
      {
        v7 = sub_100017F4C(v4, v5);
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_1004BE78C;
        v8[3] = &unk_100ADF8F8;
        v8[4] = a1;
        sub_10008E008(v7, 10000, v8);
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_100835454(a1);
        }

        *(v6 + 40) = 0;
      }
    }

    else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008354F0(a2);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100835418();
  }
}

uint64_t sub_1004B8008(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned int a5)
{
  v10 = *a4;
  v11 = a4[3];
  if (qword_100B508F0 != -1)
  {
    sub_100834D24();
  }

  memset(&v37[64], 0, 56);
  *v37 = *a2;
  *&v37[4] = *(a2 + 4);
  v12 = sub_1000E6554(off_100B508E8, v37, 1);
  v13 = sub_1004B1ED8(a1, a2);
  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v16 = v13;
    if (v10 == 133)
    {
      if (*(a1 + 407) == 1 && *(v13 + 40) == 8 && *(a1 + 416) != a3)
      {
        result = 0;
        *(a1 + 408) = 1;
        return result;
      }

      goto LABEL_15;
    }

    if (v10 == 129)
    {
      v17 = 1;
LABEL_18:
      *v37 = time(0);
      localtime_r(v37, &v37[64]);
      *v37 = *&v37[64];
      sub_1004BED8C(a1, &unk_100B6EA3A, a2, 1);
      *v37 = *&v37[64];
      sub_1004BED8C(a1, &unk_100B6EB3A, a2, 2);
      if (*(v16 + 40) == 7)
      {
        *v37 = *&v37[64];
        sub_1004BED8C(a1, &unk_100B6EC3A, a2, 3);
      }

      if (*(v16 + 24) == 8201)
      {
        *v37 = *&v37[64];
        sub_1004BED8C(a1, &unk_100B6ED3A, a2, 8);
      }

      if (v11 == 1)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v10 == 133 || (v18 & 1) != 0)
      {
        if (v10 == 133)
        {
          sleep(5u);
LABEL_42:
          v22 = *(a1 + 418);
          v23 = *(a1 + 420);
LABEL_43:
          sub_1004BE980(a1, a2, 3, a3, v22, 246, v23);
          result = 0;
          v24 = *(a1 + 418) + 246;
LABEL_44:
          *(a1 + 418) = v24;
          return result;
        }
      }

      else
      {
        result = 1;
        if (v10 != 121 || v11 != 1 || (*(a1 + 407) & 1) != 0 || *(v16 + 40) != 8)
        {
          return result;
        }
      }

      if (v17)
      {
        *v37 = 0uLL;
        v19 = sub_100579608(v37, 0, v12);
        v21 = sub_10000F034(v19, v20);
        (*(*v21 + 56))(v21, v37);
      }

      goto LABEL_42;
    }

    if (v10 == 121 && v11 == 1)
    {
      if ((*(a1 + 407) & 1) == 0 && *(v13 + 40) == 8 && *(a1 + 408) == 1)
      {
LABEL_15:
        v17 = 0;
        goto LABEL_18;
      }

LABEL_47:
      v25 = *(v13 + 40);
      if (v25 == 8)
      {
        if (*(a1 + 407) != 1)
        {
          return 0;
        }

        sub_1004BE980(a1, a2, 5, a3, 0, 0, 0);
        if (*(v16 + 24) != 8194)
        {
          return 0;
        }

        sleep(1u);
        if (a3 == 1)
        {
          v29 = 2;
        }

        else
        {
          v29 = 1;
        }

        v26 = a1;
        v27 = a2;
        v28 = 5;
        goto LABEL_71;
      }

      if (v25 == 7)
      {
        if (*(a1 + 141) != 8)
        {
          v26 = a1;
          v27 = a2;
          v28 = 6;
LABEL_70:
          v29 = a3;
LABEL_71:
          sub_1004BE980(v26, v27, v28, v29, 0, 0, 0);
          return 0;
        }

        goto LABEL_67;
      }

      return 0;
    }

    if (v10 == 121)
    {
      if (v11 == 1)
      {
        goto LABEL_47;
      }

      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100835674();
      }

      return 1;
    }

    result = 0;
    if (v10 > 134)
    {
      if (v10 == 139)
      {
LABEL_68:
        v26 = a1;
        v27 = a2;
        v28 = 2;
        goto LABEL_70;
      }

      if (v10 != 135)
      {
        return result;
      }

LABEL_67:
      if (*(a1 + 142) != 100000)
      {
        v26 = a1;
        v27 = a2;
        v28 = 7;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    if (v10 != 123)
    {
      if (v10 != 131)
      {
        return result;
      }

      usleep(0x7A120u);
      return 0;
    }

    if (v11 != 1)
    {
      return 1;
    }

    usleep(0x186A0u);
    v30 = *(a1 + 420) - 1;
    if (v30 <= 8 && ((0x187u >> v30) & 1) != 0 && (v31 = fopen(*(&off_100AF9418 + (*(a1 + 420) - 1)), "ab")) != 0)
    {
      v32 = v31;
      fwrite(a4 + 4, 1uLL, a5 - 4, v31);
      fclose(v32);
    }

    else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008355F0();
    }

    v33 = *(a1 + 420);
    if (v33 > 2)
    {
      if (v33 != 3)
      {
        if (v33 != 8)
        {
          if (v33 == 9)
          {
            if (*(a1 + 418) != 0x2000)
            {
              v33 = 9;
              goto LABEL_116;
            }

            v34 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
            {
              *v37 = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Log collection for MCU1 and MCU2 are completed.", v37, 2u);
            }

            sub_1004BEFFC(a1, &unk_100B6EE3A);
            goto LABEL_112;
          }

LABEL_114:
          if (v33 > 9 || ((1 << v33) & 0x302) == 0)
          {
LABEL_117:
            if (v33 <= 9 && ((1 << v33) & 0x302) != 0 && *(a1 + 418) == 8118)
            {
              sub_1004BE980(a1, a2, 3, a3, 8118, 74, v33);
              result = 0;
              v24 = *(a1 + 418) + 74;
              goto LABEL_44;
            }

            if ((v33 & 0xFFFE) != 2)
            {
              return 0;
            }

            goto LABEL_122;
          }

LABEL_116:
          v22 = *(a1 + 418);
          if (v22 >> 1 <= 0xFDA)
          {
            goto LABEL_123;
          }

          goto LABEL_117;
        }

        if (*(a1 + 418) == 0x2000)
        {
          sub_1004BEFFC(a1, &unk_100B6ED3A);
          if (*(v16 + 24) != 8201)
          {
LABEL_113:
            v33 = *(a1 + 420);
            goto LABEL_114;
          }

          v36 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            *v37 = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Log collection for MCU1 is completed.", v37, 2u);
          }

LABEL_112:
          sub_1004BE980(a1, a2, 4, a3, 0, 0, 0);
          goto LABEL_113;
        }

LABEL_111:
        v33 = 8;
        goto LABEL_116;
      }

      if (*(a1 + 418) == 4096)
      {
        sub_1004BEFFC(a1, &unk_100B6EC3A);
        if (*(v16 + 24) != 8201)
        {
          goto LABEL_112;
        }

        v35 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Start logging for MCU1", v37, 2u);
        }

        goto LABEL_110;
      }

      LOBYTE(v33) = 3;
LABEL_122:
      v22 = *(a1 + 418);
      if (v22 > 0xF5F)
      {
        if (v22 == 3936)
        {
          sub_1004BE980(a1, a2, 3, a3, v22, 160, v33);
          result = 0;
          v24 = *(a1 + 418) + 160;
          goto LABEL_44;
        }

        return 0;
      }

LABEL_123:
      v23 = v33;
      goto LABEL_43;
    }

    if (v33 == 1)
    {
      if (*(a1 + 418) != 0x2000)
      {
        v33 = 1;
        goto LABEL_116;
      }

      LOWORD(v33) = 2;
    }

    else
    {
      if (v33 != 2)
      {
        goto LABEL_114;
      }

      if (*(a1 + 418) != 4096)
      {
        LOBYTE(v33) = 2;
        goto LABEL_122;
      }

      sub_1004BEFFC(a1, &unk_100B6EA3A);
      sub_1004BEFFC(a1, &unk_100B6EB3A);
      if (*(v16 + 40) != 7)
      {
        if (*(v16 + 24) != 8201)
        {
          goto LABEL_112;
        }

LABEL_110:
        *(a1 + 418) = 0x80000;
        goto LABEL_111;
      }

      LOWORD(v33) = 3;
    }

    v22 = 0;
    *(a1 + 420) = v33;
    *(a1 + 418) = 0;
    goto LABEL_123;
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100835570(a2);
  }

  return 8;
}

id sub_1004B8880(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  *(a1 + 40) = 0;
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;

  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  v4 = *(a1 + 64);
  if (v4)
  {
    fclose(v4);
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = -256;
  *(a1 + 74) = -1;
  [*(a1 + 80) removeAllObjects];
  v5 = *(a1 + 96);
  *(a1 + 96) = 0;

  [*(a1 + 104) removeAllObjects];
  v6 = *(a1 + 24) - 8194;
  if (v6 > 0xE || ((1 << v6) & 0x409B) == 0)
  {
    v8 = *(a1 + 80);
    if (qword_100B50950 != -1)
    {
      sub_100834920();
    }

    v9 = sub_10033F3C8(off_100B50948, a1 + 16);
    [v8 addObject:v9];
  }

  result = [*(a1 + 80) count];
  *(a1 + 88) = result;
  return result;
}

uint64_t sub_1004B899C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if ((atomic_load_explicit(&qword_100B6EA28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6EA28))
  {
    qword_100B6EA20 = [NSDate dateWithTimeIntervalSince1970:315572400.0];
    __cxa_guard_release(&qword_100B6EA28);
  }

  v7 = sub_1004B1ED8(a1, a2);
  v59 = *a2;
  v60 = *(a2 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_100834D24();
  }

  v8 = sub_1000E6554(off_100B508E8, &v59, 0);
  v58 = 0;
  v9 = sub_10000E92C();
  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(__p, "AccessoryLogCrashPopupKey");
  (*(*v9 + 72))(v9, buf, __p, &v58);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(*buf);
  }

  sub_1000C23E0(v8, buf);
  if (v64 >= 0)
  {
    v10 = buf;
  }

  else
  {
    v10 = *buf;
  }

  v54 = *a2;
  v55 = *(a2 + 2);
  sub_1000BE6F8(&v54, __p);
  if (v57 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = [NSString stringWithUTF8String:v11];
  v13 = [NSString stringWithFormat:@"Accessory %s %@ crashed before this connection, it might appear as a timeout or remote terminated connection", v10, v12];

  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(*buf);
  }

  v14 = v13;
  sub_1001C4B04([v13 UTF8String]);
  if (v7)
  {
    if ((*(a1 + 32) & 1) != 0 || (v15 = *(v7 + 40), v15 <= 8) && ((1 << v15) & 0x182) != 0)
    {
      v16 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v7 + 8);
        v18 = *(a1 + 32);
        v19 = *(v7 + 40);
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 1024;
        v62 = v18;
        v63 = 1024;
        v64 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: recvCrashAvailableHandler: Refusing crash log available from %{public}@ (busy %d) (status %d)", buf, 0x18u);
      }

      v20 = 10;
      goto LABEL_28;
    }

    v23 = sub_10000E92C();
    if (!(*(*v23 + 8))(v23) || (v58 & 1) != 0 || (v28 = sub_1000E2C2C(v8), (v28 & 1) == 0) && (v28 = sub_1004B21E0(), (v28 & 1) == 0))
    {
      v24 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v25 = sub_10000E92C();
        v26 = (*(*v25 + 8))(v25);
        if (sub_1000E2C2C(v8))
        {
          v27 = 1;
        }

        else
        {
          v27 = sub_1004B21E0();
        }

        *buf = 67109376;
        *&buf[4] = v26;
        *&buf[8] = 1024;
        *&buf[10] = v27;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "recvCrashAvailableHandler: Dismissing; internal build %d, AACP stored logging possible %d", buf, 0xEu);
      }

      goto LABEL_46;
    }

    v30 = sub_10000C798(v28, v29);
    v31 = (*(*v30 + 352))(v30);
    if ((v31 & 1) == 0)
    {
      v33 = sub_10000C798(v31, v32);
      v34 = (*(*v33 + 416))(v33);
      if ((v34 & 1) == 0)
      {
        v36 = sub_10000C798(v34, v35);
        if (((*(*v36 + 456))(v36) & 1) == 0)
        {
          v52 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v20 = 2;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "recvCrashAvailableHandler: Ignoring available crash (unsupported platform)", buf, 2u);
          }

          else
          {
            v20 = 2;
          }

          goto LABEL_28;
        }
      }
    }

    [qword_100B6EA20 timeIntervalSinceNow];
    v38 = v37;
    if (v37 < 0.0 && v37 > -60.0)
    {
      v39 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = -v38;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "recvCrashAvailableHandler: Suppressing crash notification (%f seconds elapsed)", buf, 0xCu);
      }

LABEL_46:
      v20 = sub_1004B22F4(a1, a2, 6, 1u);
      goto LABEL_28;
    }

    v40 = +[NSDate date];
    v41 = qword_100B6EA20;
    qword_100B6EA20 = v40;

    v43 = sub_1004BAA70(v42, a3, a4);
    v44 = *(v7 + 96);
    *(v7 + 96) = v43;

    v45 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(v7 + 8);
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "recvCrashAvailableHandler: Crash log from %{public}@ available, informing user", buf, 0xCu);
    }

    sub_1000E2D2C(v8, 0xAu, buf);
    if (v64 >= 0)
    {
      v47 = buf;
    }

    else
    {
      v47 = *buf;
    }

    v48 = [NSString stringWithUTF8String:v47];
    v50 = v48;
    if (SHIBYTE(v64) < 0)
    {
      operator delete(*buf);
    }

    v51 = sub_10000EE80(v48, v49);
    (*(*v51 + 144))(v51, *(v7 + 16) | (*(v7 + 20) << 32), *(v7 + 24), *v7, v50);

    v20 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      v21 = sub_100304810(a2);
      sub_1008356B0(v21, buf);
    }

    v20 = 8;
  }

LABEL_28:

  return v20;
}

uint64_t sub_1004B914C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B1ED8(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 40);
    v7 = v6 > 8;
    v8 = (1 << v6) & 0x182;
    if (v7 || v8 == 0)
    {
      v17 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v5 + 8);
        v19 = *(v5 + 40);
        v25 = 138543618;
        v26 = v18;
        v27 = 1024;
        LODWORD(v28) = v19;
        v20 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Warning: recvLogCompleteHandler: Refusing log complete from %{public}@ (status %d)", &v25, 0x12u);
      }

      return 6;
    }

    else
    {
      if (*(v4 + 64))
      {
        v10 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(v5 + 48);
          v25 = 138412290;
          v26 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: recvLogCompleteHandler: Received log complete while %@ still open; still sending possibly corrupted file", &v25, 0xCu);
        }

        *(v5 + 56) = 1;
        sub_1004BA85C(v5);
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      v13 = [*(v5 + 80) count];
      v14 = qword_100BCE8C8;
      if (v13 <= *(v5 + 88))
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          v22 = *(v5 + 8);
          v23 = *(v5 + 40);
          v25 = 138543618;
          v26 = v22;
          v27 = 1024;
          LODWORD(v28) = v23;
          v24 = v22;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "recvLogCompleteHandler: %{public}@ reports no log file to send (status %d)", &v25, 0x12u);

          v14 = qword_100BCE8C8;
        }

        v12 = 12;
      }

      *(v5 + 40) = 5;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v5 + 8);
        v16 = [*(v5 + 80) count];
        v25 = 138543618;
        v26 = v15;
        v27 = 2048;
        v28 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "recvLogCompleteHandler: %{public}@ session complete, file count %lu", &v25, 0x16u);
      }

      sub_1004B2EF8(a1, v5);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008356F0(a2);
    }

    return 8;
  }

  return v12;
}

uint64_t sub_1004B9420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1004B1ED8(a1, a2);
  if (v8)
  {
    v9 = v8;
    if ((*(a1 + 32) & 1) == 0 && ((v10 = *(v8 + 40), v11 = v10 > 8, v12 = (1 << v10) & 0x182, !v11) ? (v13 = v12 == 0) : (v13 = 1), v13))
    {
      v19 = sub_1004BAA70(v8, a3, a4);
      v20 = *(v9 + 96);
      *(v9 + 96) = v19;

      v21 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v9 + 8);
        v23 = 138543362;
        v24 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "recvLogForceSendHandler: Device %{public}@ initiating forced logging session", &v23, 0xCu);
      }

      *(a1 + 33) = 1;
      sub_1004B2C9C(a1, v9);
      return 0;
    }

    else
    {
      v14 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v9 + 8);
        v16 = *(a1 + 32);
        v17 = *(v9 + 40);
        v23 = 138543874;
        v24 = v15;
        v25 = 1024;
        v26 = v16;
        v27 = 1024;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Warning: recvLogForceSendHandler: Refusing log force send from %{public}@ (busy %d) (status %d)", &v23, 0x18u);
      }

      return 2;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835770(a2);
    }

    return 8;
  }
}

uint64_t sub_1004B9610(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B1ED8(a1, a2);
  v4 = sub_10000E92C();
  v5 = (*(*v4 + 8))(v4);
  if (!v5)
  {
    return 2;
  }

  v7 = sub_10000C798(v5, v6);
  v8 = (*(*v7 + 352))(v7);
  if (!v8)
  {
    return 2;
  }

  v10 = sub_10000C798(v8, v9);
  if (!(*(*v10 + 456))(v10))
  {
    return 2;
  }

  if ((*(a1 + 32) & 1) != 0 || (v11 = *(v3 + 40), v11 <= 8) && ((1 << v11) & 0x182) != 0)
  {
    v12 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v3 + 8);
      v14 = *(a1 + 32);
      v15 = *(v3 + 40);
      *buf = 138543874;
      *&buf[4] = v13;
      v29 = 1024;
      v30 = v14;
      v31 = 1024;
      v32 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: recvStoredLogAvailableHandler: Refusing stored log available from %{public}@ (busy %d) (status %d)", buf, 0x18u);
    }

    return 10;
  }

  else
  {
    v27 = 0;
    v17 = sub_10000E92C();
    sub_100007E30(buf, "AccessoryLogging");
    sub_100007E30(__p, "SuppressAllPopups");
    v18 = (*(*v17 + 72))(v17, buf, __p, &v27);
    v20 = v18;
    v21 = v27;
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = v20 & v21;
    if (SHIBYTE(v32) < 0)
    {
      operator delete(*buf);
    }

    if (v22)
    {
      v23 = sub_10000E92C();
      sub_100007E30(buf, "AccessoryLogging");
      sub_100007E30(__p, "StoredLogAvailable");
      (*(*v23 + 80))(v23, buf, __p, 1);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v24 = sub_10000EE80(v18, v19);
      (*(*v24 + 168))(v24, 0, 3, *(v3 + 24));
    }

    return 0;
  }
}

void sub_1004B9904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1004B9948(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = sub_1004B1ED8(a1, a2);
  v16 = *a2;
  v17 = *(a2 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_100834D24();
  }

  v6 = sub_1000E6554(off_100B508E8, &v16, 0);
  v8 = *sub_10000C798(v6, v7);
  if ((*(v8 + 352))())
  {
    v9 = sub_1000E2C2C(v6);
    if (v9 & 1) != 0 || (v9 = sub_1004B21E0(), (v9))
    {
      if (v5)
      {
        v11 = sub_10000EE80(v9, v10);
        (*(*v11 + 160))(v11, *a2 | (*(a2 + 2) << 32), a3, *(v5 + 24));
        return 0;
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_10083582C(a2);
        }

        return 8;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1008357F0();
      }

      return 11;
    }
  }

  else
  {
    v13 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v12 = 2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Warning: recvFileRadarRequestHandler: Only supported on iOS", v15, 2u);
    }

    else
    {
      return 2;
    }
  }

  return v12;
}

uint64_t sub_1004B9B18(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = a3;
  if (qword_100B508F0 != -1)
  {
    sub_100834D24();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v7 = sub_1000E6554(off_100B508E8, buf, 1);
  v8 = v5 - 4;
  if (v5 <= 4)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083591C();
    }

    return 3;
  }

  v10 = a4[3] & 0x3F;
  if (v10 < 0x26)
  {
    v11 = v7;
    v12 = a4[5];
    if ((v12 - 1) > 0xB)
    {
      v13 = 0;
    }

    else
    {
      v13 = word_1008A8838[38 * a4[5] + v10];
    }

    v14 = qword_100BCE8C8;
    if (v13 != v8)
    {
      v20 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR);
      if (v20)
      {
        v21 = sub_1004BAC98(v20, v10);
        *buf = 67110146;
        *&buf[4] = v10;
        *&buf[8] = 2080;
        *&buf[10] = v21;
        *&buf[18] = 1024;
        *&buf[20] = v12;
        *&buf[24] = 1024;
        *&buf[26] = v13;
        *&buf[30] = 1024;
        *&buf[32] = v8;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "recvAwdHandler: Unexpected AWD data length for awdDataType: %u (%s), awdVersion %u: expected len %u actual %u", buf, 0x24u);
      }

      return 3;
    }

    v15 = *(v7 + 1042);
    v16 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      v17 = sub_1004BAC98(v16, v10);
      *buf = 67109634;
      *&buf[4] = v10;
      *&buf[8] = 2080;
      *&buf[10] = v17;
      *&buf[18] = 1024;
      *&buf[20] = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "recvAwdHandler: awdDataType = %u (%s), awdVersion = %u", buf, 0x18u);
    }

    result = 0;
    switch(v10)
    {
      case 0:
        bzero(buf, 0x29AuLL);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v18 = sub_100579608(&v28, 5, v11);
        v30 = buf;
        if (v15)
        {
          v44 |= v15;
        }

        goto LABEL_44;
      case 1:
        bzero(buf, 0x313uLL);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v23 = 6;
        goto LABEL_43;
      case 2:
        v32 = 0u;
        memset(buf, 0, sizeof(buf));
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v18 = sub_100579608(&v28, 7, v11);
        v30 = buf;
        if (v15)
        {
          *&buf[134] |= v15;
        }

        goto LABEL_44;
      case 3:
        memset(buf, 0, 63);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v18 = sub_100579608(&v28, 8, v11);
        v30 = buf;
        if (v15)
        {
          *&buf[57] |= v15;
        }

        goto LABEL_44;
      case 4:
        memset(buf, 0, 55);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v23 = 9;
        goto LABEL_43;
      case 5:
        v43[0] = 0;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        memset(v36, 0, sizeof(v36));
        v34 = 0u;
        v35 = 0u;
        memset(v33, 0, sizeof(v33));
        v32 = 0u;
        memset(buf, 0, sizeof(buf));
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v18 = sub_100579608(&v28, 10, v11);
        v30 = buf;
        if (v15)
        {
          *&buf[23] |= v15;
        }

        goto LABEL_44;
      case 6:
        v32 = 0u;
        memset(v33, 0, 25);
        memset(buf, 0, sizeof(buf));
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v18 = sub_100579608(&v28, 11, v11);
        v30 = buf;
        if (v15)
        {
          *&buf[20] |= v15;
        }

        goto LABEL_44;
      case 7:
        v32 = 0u;
        memset(v33, 0, 17);
        memset(buf, 0, sizeof(buf));
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v23 = 12;
        goto LABEL_43;
      case 8:
        v35 = 0u;
        memset(v36, 0, 26);
        v34 = 0u;
        v32 = 0u;
        memset(v33, 0, sizeof(v33));
        memset(buf, 0, sizeof(buf));
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v23 = 13;
LABEL_43:
        v18 = sub_100579608(&v28, v23, v11);
        v30 = buf;
LABEL_44:
        v24 = sub_10000F034(v18, v19);
        v25 = (*(*v24 + 56))(v24, &v28);
        goto LABEL_62;
      case 9:
        bzero(buf, 0x3AEuLL);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 14;
        goto LABEL_61;
      case 10:
        bzero(buf, 0x225uLL);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 15;
        goto LABEL_61;
      case 11:
        memset(buf, 0, 94);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 16;
        goto LABEL_61;
      case 13:
        memset(buf, 0, 112);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 18;
        goto LABEL_61;
      case 14:
        memset(buf, 0, 139);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 19;
        goto LABEL_61;
      case 15:
        memset(buf, 0, 62);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 20;
        goto LABEL_61;
      case 16:
        memset(buf, 0, 84);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 21;
        goto LABEL_61;
      case 17:
        bzero(buf, 0x21FuLL);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v25 = sub_100579608(&v28, 22, v11);
        v30 = buf;
        if (v15)
        {
          *&buf[23] |= v15;
        }

        goto LABEL_62;
      case 18:
        bzero(buf, 0x2A9uLL);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 23;
        goto LABEL_61;
      case 19:
        memset(buf, 0, 46);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 24;
        goto LABEL_61;
      case 20:
        memset(buf, 0, 59);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 25;
        goto LABEL_61;
      case 23:
        bzero(buf, 0x36BuLL);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 28;
        goto LABEL_61;
      case 24:
        memset(buf, 0, 50);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 29;
        goto LABEL_61;
      case 25:
        memset(buf, 0, 41);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 30;
        goto LABEL_61;
      case 26:
        bzero(buf, 0x2DDuLL);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 31;
        goto LABEL_61;
      case 27:
        memset(buf, 0, 122);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 32;
        goto LABEL_61;
      case 28:
        memset(buf, 0, 110);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 33;
        goto LABEL_61;
      case 29:
        memset(buf, 0, 110);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 34;
        goto LABEL_61;
      case 30:
        v42 = 0u;
        memset(v43, 0, 29);
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        v35 = 0u;
        memset(v36, 0, sizeof(v36));
        v34 = 0u;
        v32 = 0u;
        memset(v33, 0, sizeof(v33));
        memset(buf, 0, sizeof(buf));
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 35;
        goto LABEL_61;
      case 31:
        memset(buf, 0, 63);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 36;
        goto LABEL_61;
      case 33:
        memset(buf, 0, 78);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 37;
        goto LABEL_61;
      case 35:
        memset(buf, 0, 89);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 38;
        goto LABEL_61;
      case 36:
        bzero(buf, 0x347uLL);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 39;
        goto LABEL_61;
      case 37:
        memset(buf, 0, 38);
        memcpy(buf, a4 + 4, v8);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v22 = 40;
LABEL_61:
        v25 = sub_100579608(&v28, v22, v11);
        v30 = buf;
LABEL_62:
        v27 = sub_10000F034(v25, v26);
        (*(*v27 + 48))(v27, &v28);
        result = 0;
        break;
      default:
        return result;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008358AC();
    }

    return 2;
  }

  return result;
}

const char *sub_1004BA678(uint64_t a1, uint64_t a2)
{
  if (a2 - 1) < 0xB && ((0x757u >> (a2 - 1)))
  {
    return (&off_100AF9460)[(a2 - 1)];
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083598C();
  }

  return "UnknownType";
}

const char *sub_1004BA6F8(uint64_t a1, uint64_t a2)
{
  if (a2 == 255)
  {
    return "All";
  }

  v2 = a2 & 0x7F;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = a2;
      v4 = "RightPrimary";
      v5 = "RightSecondary";
LABEL_15:
      if (v3 < 0)
      {
        return v4;
      }

      else
      {
        return v5;
      }
    }

    if (v2 == 4)
    {
      return "Case";
    }
  }

  else
  {
    if ((a2 & 0x7F) == 0)
    {
      return "Single";
    }

    if (v2 == 1)
    {
      v3 = a2;
      v4 = "LeftPrimary";
      v5 = "LeftSecondary";
      goto LABEL_15;
    }
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_1008359FC();
  }

  return "UnknownDevice";
}

const char *sub_1004BA7DC(uint64_t a1, uint64_t a2)
{
  if (a2 - 1) < 0xB && ((0x757u >> (a2 - 1)))
  {
    return (&off_100AF94B8)[(a2 - 1)];
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083598C();
  }

  return "UnknownExt";
}

void sub_1004BA85C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_100B6EF58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6EF58))
  {
    qword_100B6EF50 = [@"/private/var/mobile/Library/Logs/Bluetooth/Accessory" length];
    __cxa_guard_release(&qword_100B6EF58);
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    fclose(v2);
    *(a1 + 64) = 0;
    if (*(a1 + 56) == 1)
    {
      v3 = [NSMutableString stringWithString:*(a1 + 48)];
      [v3 insertString:@"Corrupt" atIndex:qword_100B6EF50];
      v4 = +[NSFileManager defaultManager];
      v5 = *(a1 + 48);
      v10 = 0;
      v6 = [v4 moveItemAtPath:v5 toPath:v3 error:&v10];
      v7 = v10;

      v8 = qword_100BCE8C8;
      if (v6)
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v12 = v3;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "closeCurrentLogFile: Renaming potentially corrupt file to %@", buf, 0xCu);
        }

        objc_storeStrong((a1 + 48), v3);
      }

      else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100835A6C();
      }
    }

    [*(a1 + 80) addObject:*(a1 + 48)];
    v9 = *(a1 + 48);
    *(a1 + 48) = 0;

    *(a1 + 56) = 0;
  }
}

id sub_1004BAA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= 3)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835C64();
    }

LABEL_19:
    v12 = 0;
    goto LABEL_24;
  }

  if (((8 * *(a3 + 3)) | 4) != a2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835AE0();
    }

    goto LABEL_19;
  }

  v4 = [NSMutableArray arrayWithCapacity:*(a3 + 3)];
  if (*(a3 + 3))
  {
    v5 = 0;
    v6 = (a3 + 4);
LABEL_7:
    v7 = 4;
    v8 = v6;
    while (1)
    {
      v9 = *v8;
      if (*v8)
      {
        if (!((v9 & 0x80) != 0 ? __maskrune(v9, 0x40000uLL) : _DefaultRuneLocale.__runetype[v9] & 0x40000))
        {
          break;
        }
      }

      ++v8;
      if (!--v7)
      {
        if (*(a3 + 4 + 8 * v5 + 4))
        {
          v11 = [NSData dataWithBytes:a3 + 4 + 8 * v5 length:8];
          [v4 setObject:v11 atIndexedSubscript:v5];

          ++v5;
          v6 += 8;
          if (v5 < *(a3 + 3))
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }

        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_100835BE4();
        }

LABEL_22:
        v12 = 0;
        goto LABEL_23;
      }
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835B64();
    }

    goto LABEL_22;
  }

LABEL_16:
  v12 = v4;
LABEL_23:

LABEL_24:

  return v12;
}

const char *sub_1004BAC98(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x25)
  {
    return "Unknown";
  }

  else
  {
    return (&off_100AF9510)[a2];
  }
}

NSMutableOrderedSet *sub_1004BACBC(uint64_t a1, uint64_t a2)
{
  v53 = objc_opt_new();
  v71 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(__p, "CrashAnalyticsTestMode");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v71);
  v4 = v71;
  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v3 & v4;
  if ((v79 & 0x80000000) == 0)
  {
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_7:
    v6 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "dispatchCrashLogsToAnalytics: Test mode flag is set", buf, 2u);
    }

    v7 = sub_10000E92C();
    sub_100007E30(buf, "AccessoryLogging");
    sub_100007E30(__p, "CrashAnalyticsTestMode");
    (*(*v7 + 80))(v7, buf, __p, 0);
    if (v70 < 0)
    {
      operator delete(__p[0]);
    }

    if (v79 < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_13;
  }

  operator delete(*buf);
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_13:
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = *(a2 + 80);
  v8 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (!v8)
  {
    v58 = 0;
    goto LABEL_81;
  }

  v58 = 0;
  v9 = *v66;
  v54 = kOSALogOptionOverrideFilePrefix;
  do
  {
    v10 = 0;
    do
    {
      if (*v66 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v65 + 1) + 8 * v10);
      if ([v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash"])
      {
        if ([v11 hasSuffix:@".bin"])
        {
          v12 = [*(a2 + 104) objectForKey:v11];
          if (!v12)
          {
            v18 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "dispatchCrashLogsToAnalytics: No metadata for %@", buf, 0xCu);
            }

            goto LABEL_65;
          }

          v13 = [NSData dataWithContentsOfFile:v11];
          v14 = v13;
          if (!v13 || ![v13 length])
          {
            v17 = qword_100BCE8C8;
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "dispatchCrashLogsToAnalytics: Could not read %@", buf, 0xCu);
            }

            goto LABEL_64;
          }

          if ([v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash_RightPrimary"])
          {
            v15 = @"right";
          }

          else
          {
            if (([v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash_LeftPrimary"] & 1) == 0)
            {
              if ([v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash_RightSecondary"])
              {
                v15 = @"right";
              }

              else
              {
                if (([v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash_LeftSecondary"] & 1) == 0)
                {
                  v45 = [v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash_Single"];
                  v46 = @"single";
                  if (v45 & 1) != 0 || (v47 = [v11 hasPrefix:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryCrash_Case"], v46 = @"case", (v47))
                  {
                    v21 = 0;
                    v74 = @"role";
                  }

                  else
                  {
                    v48 = qword_100BCE8C8;
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v11;
                      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "dispatchCrashLogsToAnalytics: Could not determine role for %@", buf, 0xCu);
                    }

                    v74 = @"role";
                    v46 = +[NSNull null];
                    v21 = 1;
                    v55 = v46;
                  }

                  v75 = @"side";
                  v76[0] = v46;
                  +[NSNull null];
                  v56 = v20 = 1;
                  v15 = v56;
                  goto LABEL_35;
                }

                v15 = @"left";
              }

              v19 = @"secondary";
LABEL_34:
              v20 = 0;
              v21 = 0;
              v76[0] = v19;
              v74 = @"role";
              v75 = @"side";
LABEL_35:
              v76[1] = v15;
              v59 = [NSDictionary dictionaryWithObjects:v76 forKeys:&v74 count:2];
              if (v20)
              {
              }

              if (v21)
              {
              }

              v22 = sub_1004BB870(a1, v14, v11, v12, v59, *(a2 + 24), v71);
              v24 = v22;
              if (v22)
              {
                v25 = sub_10000C798(v22, v23);
                v26 = (*(*v25 + 352))(v25);
                if (v26 & 1) != 0 || (v28 = sub_10000C798(v26, v27), v29 = (*(*v28 + 416))(v28), (v29) || (v31 = sub_10000C798(v29, v30), (*(*v31 + 456))(v31)))
                {
                  v32 = sub_10000E92C();
                  if ((*(*v32 + 8))(v32))
                  {
                    v33 = [v11 stringByDeletingPathExtension];
                    v34 = [v33 stringByAppendingPathExtension:@"json"];

                    if ([v24 writeToFile:v34 atomically:0])
                    {
                      [v53 addObject:v34];
                    }

                    else
                    {
                      v35 = qword_100BCE8C8;
                      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v34;
                        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "dispatchCrashLogsToAnalytics: Failed to write analytics file: %@", buf, 0xCu);
                      }
                    }
                  }
                }

                v36 = arc4random_uniform(0xF4241u);
                v37 = *(a1 + 440);
                if (v36 / 1000000.0 <= v37)
                {
                  v72 = v54;
                  v73 = @"AccessoryCrash";
                  v39 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
                  v64 = 0;
                  v62[0] = _NSConcreteStackBlock;
                  v62[1] = 3221225472;
                  v62[2] = sub_1004BC054;
                  v62[3] = &unk_100AF92F0;
                  v63 = v24;
                  v40 = [OSALog createForSubmission:@"305" metadata:0 options:v39 error:&v64 writing:v62];
                  v41 = v64;

                  v42 = qword_100BCE8C8;
                  if (!v40 || v41)
                  {
                    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v41;
                      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "dispatchCrashLogsToAnalytics: Could not submit processed crash log to analytics, error %@", buf, 0xCu);
                    }
                  }

                  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
                  {
                    v43 = [v40 filepath];
                    *buf = 138412290;
                    *&buf[4] = v43;
                    v52 = v43;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "dispatchCrashLogsToAnalytics: Submitted to analytics: %@", buf, 0xCu);
                  }
                }

                else
                {
                  v38 = qword_100BCE8C8;
                  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    *&buf[4] = v37;
                    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "dispatchCrashLogsToAnalytics: Skipping analytics submission due to %f sampling rate", buf, 0xCu);
                  }
                }
              }

              v44 = qword_100BCE8C8;
              if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v11;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "dispatchCrashLogsToAnalytics: Processed %@", buf, 0xCu);
              }

              ++v58;
LABEL_64:

LABEL_65:
              goto LABEL_66;
            }

            v15 = @"left";
          }

          v19 = @"primary";
          goto LABEL_34;
        }

        v16 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v11;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "dispatchCrashLogsToAnalytics: File %@ lacks .bin extension", buf, 0xCu);
        }
      }

LABEL_66:
      v10 = v10 + 1;
    }

    while (v8 != v10);
    v49 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
    v8 = v49;
  }

  while (v49);
LABEL_81:

  v50 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v58;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "dispatchCrashLogsToAnalytics: Processed %d crash logs", buf, 8u);
  }

  return v53;
}

void sub_1004BB740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (*(v46 - 137) < 0)
  {
    operator delete(*(v46 - 160));
  }

  _Unwind_Resume(a1);
}

id sub_1004BB870(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = a2;
  v49 = a3;
  v13 = a4;
  v43 = a5;
  v50 = objc_opt_new();
  v64[0] = @"bug_type";
  v64[1] = @"UI_country_code";
  v65[0] = @"305";
  v65[1] = @"US";
  v64[2] = @"log-version";
  v64[3] = @"accessory_type";
  v65[2] = @"1.0";
  v65[3] = @"audio";
  v65[4] = v43;
  v64[4] = @"application-info";
  v64[5] = @"accessory_pid";
  v66 = [NSNumber numberWithUnsignedInt:a6];
  v64[6] = @"analytics_test_mode";
  v48 = [NSNumber numberWithBool:a7];
  v67 = v48;
  v64[7] = @"crashlogs";
  v47 = objc_opt_new();
  v68 = v47;
  v64[8] = @"accessory_crashreporter_key";
  v14 = v66;
  v46 = +[NSNull null];
  v69 = v46;
  v64[9] = @"accessory_os_version";
  v45 = +[NSNull null];
  v70 = v45;
  v64[10] = @"accessory_os_train";
  v44 = +[NSNull null];
  v71 = v44;
  v64[11] = @"accessory_machine_config";
  v15 = +[NSNull null];
  v72 = v15;
  v64[12] = @"accessory_release_type";
  v16 = +[NSNull null];
  v73 = v16;
  v64[13] = @"usage_since_last_crash";
  v17 = +[NSNull null];
  v74 = v17;
  v64[14] = @"usage_since_last_crash_user_facing";
  v18 = +[NSNull null];
  v75 = v18;
  v64[15] = @"usage_since_last_crash_in_ear";
  v19 = +[NSNull null];
  v76 = v19;
  v64[16] = @"accessory_fusing";
  v20 = +[NSNull null];
  v77 = v20;
  v21 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:17];
  [v50 setDictionary:v21];

  v22 = 0;
  v23 = 0;
  do
  {
    if ([v13 count] <= v22)
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100835CD8();
      }

      goto LABEL_21;
    }

    v24 = [v13 objectAtIndexedSubscript:v22];
    v25 = v24;
    v26 = [v24 bytes];

    v27 = v26[1];
    if ([v12 length] - v23 < v27)
    {
      v40 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        v42 = v26[1];
        *buf = 67109890;
        v57 = v22;
        v58 = 1024;
        v59 = v42;
        v60 = 1024;
        v61 = v23;
        v62 = 2112;
        v63 = v49;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "processCrashInstanceForAnalytics: Chunk %d of size %d at offset %d of %@ extends past the end of the file", buf, 0x1Eu);
      }

LABEL_21:
      v39 = 0;
      goto LABEL_26;
    }

    LOBYTE(v57) = 0;
    *buf = 0;
    *buf = *v26;
    LOBYTE(v57) = 0;
    v28 = v12;
    v29 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v12 bytes] + v23, v26[1], 0);
    if (v29)
    {
      v30 = [NSString stringWithFormat:@"%@, %s core", v49, buf];
      v31 = sub_1004BC060(v30, v29, v30, v50);

      if (v31)
      {
        v32 = [v50 objectForKeyedSubscript:@"crashlogs"];
        v54[0] = @"core";
        v33 = [NSString stringWithCString:buf encoding:4];
        v54[1] = @"crashlog";
        v55[0] = v33;
        v55[1] = v31;
        v34 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
        [v32 addObject:v34];
      }
    }

    else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835D58(&v52, v53);
    }

    v35 = v26[1];

    ++v22;
    v23 += v35;
  }

  while ([v12 length] > v23);
  if ([v13 count] != v22 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100835D94();
  }

  v51 = 0;
  v36 = [NSJSONSerialization dataWithJSONObject:v50 options:1 error:&v51];
  v37 = v51;
  v38 = v37;
  if (!v36 || v37)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100835E08();
    }

    v39 = 0;
  }

  else
  {
    v39 = v36;
  }

LABEL_26:

  return v39;
}