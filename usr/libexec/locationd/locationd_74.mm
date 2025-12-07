void sub_1004F8B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1004F8B68(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_1004F8C00(void *result, void *a2)
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

void sub_1004F8E58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1004F8E64(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_1004F8EFC(void *result, void *a2)
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

void sub_1004F9154(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1004F91D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10245A8E8;
  a2[1] = v2;
  return result;
}

void sub_1004F91FC(uint64_t a1, float *a2)
{
  v3 = *(a1 + 8);
  if (qword_1025D4270 != -1)
  {
    sub_1018A8590();
  }

  v4 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Produced a model output before serialization", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A9C18();
  }

  v5 = a2[12];
  v6 = a2[13];
  v7 = 0.0;
  if (v5 >= *(v3 + 152))
  {
    v7 = 1.0;
  }

  if (v5 >= *(v3 + 156))
  {
    v8 = 2.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = expf(-a2[10]) + 1.0;
  v10 = a2[11];
  if (qword_1025D4270 != -1)
  {
    sub_1018A8B38();
  }

  v11 = qword_1025D4278;
  v12 = 1.0 / v9;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219008;
    v27 = v12;
    *v28 = 2048;
    *&v28[2] = v10;
    *&v28[10] = 2048;
    v29 = v6;
    v30 = 2048;
    v31 = 0xBFF0000000000000;
    v32 = 2048;
    v33 = v8;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Model output produced | stepProbability: %f, offset: %f, speed: %f, uncertainty: %f, pedestrian state: %f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_1018A8B38();
    }

    v16 = 134219008;
    v17 = v12;
    v18 = 2048;
    v19 = v10;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = 0xBFF0000000000000;
    v24 = 2048;
    v25 = v8;
    LODWORD(v15) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "Model output produced | stepProbability: %f, offset: %f, speed: %f, uncertainty: %f, pedestrian state: %f", COERCE_DOUBLE(&v16), v15);
    v14 = v13;
    sub_100152C7C("Generic", 1, 0, 2, "auto CMPedNetAlgorithm::runInference(CFTimeInterval, CFAbsoluteTime)::(anonymous class)::operator()(const auto &) const [response:auto = motion::pednet::Response]", "%s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *buf = v6;
  LODWORD(v27) = -1082130432;
  *(&v27 + 1) = 1.0 / v9;
  *v28 = v10;
  *&v28[4] = v8;
  *&v28[8] = 0;
  sub_1004F595C(v3, buf);
}

uint64_t sub_1004F94DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004F9528(uint64_t a1)
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

void sub_1004F95C4()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_1004F963C()
{
  v1 = 4;
  qword_102656818 = 0;
  unk_102656820 = 0;
  qword_102656810 = 0;
  sub_1004579D4(&qword_102656810, &v1, &v2, 1uLL);
  return __cxa_atexit(sub_1004F4E20, &qword_102656810, dword_100000000);
}

BOOL sub_1004F96B0(const char *a1, int a2, uint64_t a3)
{
  v6 = xmlBufferCreate();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = xmlNewTextWriterMemory(v6, 0);
  if (v8)
  {
    v9 = v8;
    v10 = xmlTextWriterWriteBase64(v8, a1, 0, a2);
    v11 = v10 != -1;
    if (v10 != -1)
    {
      xmlTextWriterFlush(v9);
      v12 = xmlBufferContent(v7);
      v13 = xmlBufferLength(v7);
      if (qword_1025D48A0 != -1)
      {
        sub_1018A9CF4();
      }

      v14 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *v16 = 134218498;
        *&v16[4] = v12;
        *&v16[12] = 1024;
        *&v16[14] = v13;
        *&v16[18] = 2080;
        *&v16[20] = v12;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "processed %p %d to (%s)", v16, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A9D08(v12, v13);
      }

      if ((v13 & 0x80000000) != 0)
      {
        sub_100061080();
      }

      if (v13 >= 0x17)
      {
        operator new();
      }

      v16[23] = v13;
      if (v13)
      {
        memmove(v16, v12, v13);
      }

      v16[v13] = 0;
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = *v16;
      *(a3 + 16) = *&v16[16];
    }

    xmlFreeTextWriter(v9);
  }

  else
  {
    v11 = 0;
  }

  xmlBufferFree(v7);
  return v11;
}

void *sub_1004F98D4(void *a1, CFTypeRef cf)
{
  *a1 = off_10245A978;
  a1[1] = cf;
  CFRetain(cf);
  return a1;
}

void sub_1004F991C(void *a1)
{
  sub_100005DA8(a1);

  operator delete();
}

void *sub_1004F9954(void *a1, uint64_t a2)
{
  *a1 = off_10245A978;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, *(a2 + 8));
  a1[1] = MutableCopy;
  if (!MutableCopy)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A9FF8();
    }
  }

  return a1;
}

uint64_t sub_1004F9A30(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      CFRelease(v4);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, *(a2 + 8));
    *(a1 + 8) = MutableCopy;
    if (!MutableCopy)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018A9CF4();
      }

      v6 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *v8 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", v8, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018AA0DC();
      }
    }
  }

  return a1;
}

uint64_t sub_1004F9B88(void *context, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = sub_1004F9B4C;
  }

  else
  {
    v5 = sub_1004F9B10;
  }

  CFDictionaryApplyFunction(v4, v5, context);
  v6 = *(*context + 848);

  return v6(context);
}

uint64_t sub_1004F9C20(uint64_t *a1, uint64_t a2)
{
  v4 = [NSURL fileURLWithPath:[NSString stringWithUTF8String:a2] isDirectory:0];
  if (v4)
  {
    v22 = 0;
    if (objc_opt_respondsToSelector())
    {
      v5 = [NSData dataWithContentsOfURL:v4 options:0 error:&v22];
    }

    else
    {
      v5 = [NSData dataWithContentsOfURL:v4];
    }

    v11 = *a1;
    if (!v5)
    {
      (*(v11 + 872))(a1);
      result = v22;
      if (!v22)
      {
        return result;
      }

      if ([objc_msgSend(v22 "domain")] && objc_msgSend(v22, "code") == 260)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_1018AA1C0();
        }

        v12 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
        {
          v13 = [objc_msgSend(v22 "description")];
          *buf = 68289538;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = a2;
          v29 = 2082;
          v30 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D47A0 != -1)
          {
            sub_1018AA1C0();
          }
        }

        v14 = off_1025D47A8;
        result = os_signpost_enabled(off_1025D47A8);
        if (!result)
        {
          return result;
        }

        v15 = [objc_msgSend(v22 "description")];
        *buf = 68289538;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = a2;
        v29 = 2082;
        v30 = v15;
        v9 = "file does not exist... clearing";
        v10 = "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_1018AA1C0();
        }

        v19 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
        {
          v20 = [objc_msgSend(v22 "description")];
          *buf = 68289538;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = a2;
          v29 = 2082;
          v30 = v20;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D47A0 != -1)
          {
            sub_1018AA1C0();
          }
        }

        v14 = off_1025D47A8;
        result = os_signpost_enabled(off_1025D47A8);
        if (!result)
        {
          return result;
        }

        v21 = [objc_msgSend(v22 "description")];
        *buf = 68289538;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = a2;
        v29 = 2082;
        v30 = v21;
        v9 = "#Warning Error reading file";
        v10 = "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      v17 = v14;
      v18 = 38;
      goto LABEL_41;
    }

    if ((*(v11 + 784))(a1))
    {
      return 1;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_1018AA1C0();
    }

    v16 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = a2;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018AA1C0();
      }
    }

    v7 = off_1025D47A8;
    result = os_signpost_enabled(off_1025D47A8);
    if (result)
    {
      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = a2;
      v9 = "could not deserialize property list";
      v10 = "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}";
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018AA1E8();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018AA1C0();
      }
    }

    v7 = off_1025D47A8;
    result = os_signpost_enabled(off_1025D47A8);
    if (result)
    {
      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = a2;
      v9 = "Invalid fileURL";
      v10 = "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}";
LABEL_32:
      v17 = v7;
      v18 = 28;
LABEL_41:
      _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v9, v10, buf, v18);
      return 0;
    }
  }

  return result;
}

void sub_1004FA1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, int a12, __int128 a13, __int128 a14, __int16 a15, uint64_t a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    if (qword_1025D47A0 != -1)
    {
      sub_1018AA1C0();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = "";
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_1018AA1C0();
      }
    }

    v18 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = "";
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Can't load data from file", "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
    }

    objc_end_catch();
    JUMPOUT(0x1004FA158);
  }

  _Unwind_Resume(a1);
}

id sub_1004FA34C(uint64_t a1, id *a2, void *a3, int a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [NSURL fileURLWithPath:[NSString stringWithUTF8String:a2] isDirectory:0];
  if (v8)
  {
    v9 = 536870913;
    if (a4)
    {
      v9 = 1;
    }

    if (a4 == 1)
    {
      v10 = 1073741825;
    }

    else
    {
      v10 = v9;
    }

    v16 = 0;
    v11 = [a3 writeToURL:v8 options:v10 error:&v16];
    if ((v11 & 1) == 0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v12 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_ERROR))
      {
        v13 = [objc_msgSend(v16 "description")];
        *buf = 136446466;
        v18 = a2;
        v19 = 2082;
        v20 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "Could not write data to disk %{public}s, %{public}s", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018AA224(a2, &v16);
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v18 = a2;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Could not create NSURL for file: %{public}s", buf, 0xCu);
    }

    v11 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1018AA354(a2);
      v11 = 0;
    }
  }

  objc_autoreleasePoolPop(v7);
  return v11;
}

id sub_1004FA558(uint64_t a1, id *a2)
{
  cf = 0;
  v3 = (*(*a1 + 768))(a1, &cf);
  if (v3)
  {
    v4 = sub_1004FA34C(v3, a2, cf, 2);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v9 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Could not serialize data for file %{public}s", buf, 0xCu);
    }

    v4 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1018AA448(a2);
      v4 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

id sub_1004FA694(uint64_t a1, id *a2, int a3)
{
  cf = 0;
  sub_10000FF38(v12, "CLNameValuePair.SaveToBinaryFile", 0);
  v6 = objc_autoreleasePoolPush();
  v7 = (*(*a1 + 776))(a1, &cf);
  if (v7)
  {
    v8 = sub_1004FA34C(v7, a2, cf, a3);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018AA1C0();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = a2;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018AA1C0();
      }
    }

    v10 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize data", "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v8 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v6);
  sub_10001A420(v12);
  return v8;
}

void sub_1004FA8B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  (*(*a1 + 880))(a1, v5, a3);

  CFRelease(v5);
}

uint64_t sub_1004FA978(CFMutableDictionaryRef *a1)
{
  CFDictionaryRemoveAllValues(a1[1]);
  v2 = *(*a1 + 106);

  return v2(a1);
}

void sub_1004FA9DC(uint64_t a1, const __CFString *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    cf = 0;
    if (!(*(*a1 + 912))(a1, a2, &cf))
    {
      return;
    }

    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(cf) > a3)
      {
        CFArrayRemoveValueAtIndex(cf, a3);
        (*(*a1 + 848))(a1);
LABEL_38:
        CFRelease(cf);
        return;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v20 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        sub_1000238CC(a2, __p);
        v21 = SBYTE3(v38);
        v22 = *__p;
        Count = CFArrayGetCount(cf);
        v24 = __p;
        *buf = 136446722;
        if (v21 < 0)
        {
          v24 = v22;
        }

        v40 = v24;
        v41 = 1026;
        v42 = a3;
        v43 = 2050;
        v44 = Count;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in array of size %{public}ld", buf, 0x1Cu);
        if (SBYTE3(v38) < 0)
        {
          operator delete(*__p);
        }
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_38;
      }

      sub_1018AA53C(buf);
      v25 = qword_1025D48A8;
      sub_1000238CC(a2, v31);
      v26 = v32;
      v27 = v31[0];
      v28 = CFArrayGetCount(cf);
      v29 = v31;
      *__p = 136446722;
      if (v26 < 0)
      {
        v29 = v27;
      }

      *&__p[4] = v29;
      v35 = 1026;
      v36 = a3;
      v37 = 2050;
      v38 = v28;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v25, 17, "key %{public}s does not have element %{public}d in array of size %{public}ld", __p, 28);
      v19 = v30;
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }

    else
    {
      if (!a3)
      {
        (*(*a1 + 888))(a1, a2);
        goto LABEL_38;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v8 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        sub_1000238CC(a2, __p);
        v9 = SBYTE3(v38);
        v10 = *__p;
        v11 = CFGetTypeID(cf);
        v12 = __p;
        *buf = 136446722;
        if (v9 < 0)
        {
          v12 = v10;
        }

        v40 = v12;
        v41 = 1026;
        v42 = a3;
        v43 = 2050;
        v44 = v11;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in non-array type %{public}lu", buf, 0x1Cu);
        if (SBYTE3(v38) < 0)
        {
          operator delete(*__p);
        }
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_38;
      }

      sub_1018AA53C(buf);
      v13 = qword_1025D48A8;
      sub_1000238CC(a2, v31);
      v14 = v32;
      v15 = v31[0];
      v16 = CFGetTypeID(cf);
      v17 = v31;
      *__p = 136446722;
      if (v14 < 0)
      {
        v17 = v15;
      }

      *&__p[4] = v17;
      v35 = 1026;
      v36 = a3;
      v37 = 2050;
      v38 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v13, 17, "key %{public}s does not have element %{public}d in non-array type %{public}lu", __p, 28);
      v19 = v18;
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }

    sub_100152C7C("Generic", 1, 0, 0, "virtual void CLNameValuePair::clearInternal(const CFStringRef, int)", "%s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }

    goto LABEL_38;
  }

  v7 = *(*a1 + 888);

  v7();
}

void sub_1004FAEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004FAF3C(CFMutableDictionaryRef *a1, const void *a2)
{
  CFDictionaryRemoveValue(a1[1], a2);
  v3 = *(*a1 + 106);

  return v3(a1);
}

void sub_1004FB0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004FB0D0(uint64_t a1, uint64_t a2)
{
  v3 = [NSString stringWithUTF8String:a2];
  v4 = *(*a1 + 920);

  return v4(a1, v3);
}

uint64_t sub_1004FB178(uint64_t a1, const char *a2, CFTypeRef *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1003045C8(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_1004FB1EC(uint64_t a1, const char *a2, _WORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v7 = sub_1004FB260(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1004FB260(uint64_t a1, uint64_t a2, _WORD *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  *buf = 0;
  v6 = sub_100005EEC(cf, buf);
  if (v6)
  {
    *a3 = *buf;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v10 = qword_1025D48A8;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint16_t &, int) const", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1004FB4EC(uint64_t a1, const char *a2, _WORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v7 = sub_1004FB560(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1004FB560(uint64_t a1, uint64_t a2, _WORD *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1004FC2CC(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v10 = qword_1025D48A8;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, short &, int) const", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1004FB7DC(uint64_t a1, const char *a2, _DWORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v7 = sub_1004FB850(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1004FB850(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  *buf = 0;
  v6 = sub_1002E198C(cf, buf);
  if (v6)
  {
    *a3 = *buf;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      *&buf[4] = v8;
      v20 = 2112;
      v21 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v10 = qword_1025D48A8;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint32_t &, int) const", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1004FBADC(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_10016B550(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_1004FBB50(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v7 = sub_1004FBBC4(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1004FBBC4(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1004FC3E0(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v10 = qword_1025D48A8;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, long &, int) const", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1004FBE40(uint64_t a1, const char *a2, float *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v9 = 0.0;
  v6 = sub_100023B78(a1, v5, &v9);
  if (v6)
  {
    v7 = v9;
    *a3 = v7;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

float sub_1004FBECC(uint64_t a1, uint64_t a2, float *a3)
{
  v5 = 0.0;
  if (sub_100023B78(a1, a2, &v5))
  {
    result = v5;
    *a3 = result;
  }

  return result;
}

uint64_t sub_1004FBF14(uint64_t a1, const char *a2, CFTypeRef *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_10006EB64(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FBF88(uint64_t a1, const char *a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v10 = sub_1004FC008(a1, v9, a3, a4, a5);
  CFRelease(v9);
  return v10;
}

BOOL sub_1004FC008(uint64_t a1, uint64_t a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf, a5))
  {
    return 0;
  }

  v9 = sub_1004FCA9C(cf, a3, a4);
  if (!v9)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v11 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v23 = v11;
      v24 = 2112;
      v25 = a2;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v13 = qword_1025D48A8;
      v14 = (*(*a1 + 840))(a1);
      v18 = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v13, 17, "Unsupported type at %@:%@ (domain:key)", &v18, 22);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, const char *&, unsigned int &, int) const", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  CFRelease(cf);
  return v9;
}

uint64_t sub_1004FC28C(const void *a1, _WORD *a2)
{
  v4 = 0;
  result = sub_100005EEC(a1, &v4);
  if (result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1004FC2CC(const void *a1, _WORD *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    v10 = 0;
    v8 = CFGetTypeID(a1);
    if (v8 != CFBooleanGetTypeID())
    {
      return 0;
    }

    result = sub_1000700DC(a1, &v10);
    if (!result)
    {
      return result;
    }

    *a2 = v10;
    return 1;
  }

  if (CFNumberGetValue(a1, kCFNumberSInt16Type, a2))
  {
    return 1;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018A9CF4();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "could not get value", v9, 2u);
  }

  v6 = sub_10000A100(121, 0);
  result = 0;
  if (v6)
  {
    sub_1018AA580();
    return 0;
  }

  return result;
}

uint64_t sub_1004FC3E0(const void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    v10 = 0;
    v8 = CFGetTypeID(a1);
    if (v8 != CFBooleanGetTypeID())
    {
      return 0;
    }

    result = sub_1000700DC(a1, &v10);
    if (!result)
    {
      return result;
    }

    *a2 = v10;
    return 1;
  }

  if (CFNumberGetValue(a1, kCFNumberLongType, a2))
  {
    return 1;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018A9CF4();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "could not get value", v9, 2u);
  }

  v6 = sub_10000A100(121, 0);
  result = 0;
  if (v6)
  {
    sub_1018AA82C();
    return 0;
  }

  return result;
}

BOOL sub_1004FC4F4(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  cf = 0;
  if (!(*(*a1 + 912))(a1, a2, &cf))
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  v6 = v5 == CFArrayGetTypeID();
  v7 = v6;
  if (v6)
  {
    *a3 = cf;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v9 = v25 >= 0 ? __p : *__p;
      v10 = CFGetTypeID(cf);
      TypeID = CFArrayGetTypeID();
      *buf = 136446722;
      v28 = v9;
      v29 = 2050;
      v30 = v10;
      v31 = 2050;
      v32 = TypeID;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AA53C(buf);
      v13 = qword_1025D48A8;
      v14 = v19;
      sub_1000238CC(a2, v19);
      if (v20 < 0)
      {
        v14 = v19[0];
      }

      v15 = CFGetTypeID(cf);
      v16 = CFArrayGetTypeID();
      *__p = 136446722;
      *&__p[4] = v14;
      v23 = 2050;
      v24 = v15;
      v25 = 2050;
      v26 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v13, 17, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", __p, 32);
      v18 = v17;
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFArrayRef &) const", "%s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  CFAutorelease(cf);
  return v7;
}

void sub_1004FC790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1004FC7C8(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  v6 = v5 == CFDataGetTypeID();
  v7 = v6;
  if (v6)
  {
    *a3 = cf;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v9 = v25 >= 0 ? __p : *__p;
      v10 = CFGetTypeID(cf);
      TypeID = CFDataGetTypeID();
      *buf = 136446722;
      v28 = v9;
      v29 = 2050;
      v30 = v10;
      v31 = 2050;
      v32 = TypeID;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AA53C(buf);
      v13 = qword_1025D48A8;
      v14 = v19;
      sub_1000238CC(a2, v19);
      if (v20 < 0)
      {
        v14 = v19[0];
      }

      v15 = CFGetTypeID(cf);
      v16 = CFDataGetTypeID();
      *__p = 136446722;
      *&__p[4] = v14;
      v23 = 2050;
      v24 = v15;
      v25 = 2050;
      v26 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v13, 17, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", __p, 32);
      v18 = v17;
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFDataRef &, int) const", "%s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  CFAutorelease(cf);
  return v7;
}

void sub_1004FCA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1004FCA9C(const void *a1, const UInt8 **a2, _DWORD *a3)
{
  v6 = CFGetTypeID(a1);
  TypeID = CFDataGetTypeID();
  if (v6 == TypeID)
  {
    *a2 = CFDataGetBytePtr(a1);
    *a3 = CFDataGetLength(a1);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v10 = 134349312;
      v11 = CFGetTypeID(a1);
      v12 = 2050;
      v13 = CFDataGetTypeID();
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", &v10, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AAEF8();
    }
  }

  return v6 == TypeID;
}

BOOL sub_1004FCC04(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FCC70(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FCC70(uint64_t a1, const __CFString *a2, unsigned __int16 *a3)
{
  LODWORD(valuePtr[0]) = *a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, valuePtr);
      v7 = v10 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AB0F4();
    }
  }

  return v5 != 0;
}

BOOL sub_1004FCDF8(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FCE64(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FCE64(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AB1F8();
    }
  }

  return v5 != 0;
}

BOOL sub_1004FCFE0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FD04C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FD04C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AB400();
    }
  }

  return v5 != 0;
}

BOOL sub_1004FD1C8(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FD234(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FD234(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AB608();
    }
  }

  return v5 != 0;
}

BOOL sub_1004FD3B0(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  if (a3[23] >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = sub_1002DC480(a1, v5, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

BOOL sub_1004FD428(uint64_t a1, const __CFString *a2, char *a3)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return sub_1002DC480(a1, a2, a3);
}

BOOL sub_1004FD480(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FD4EC(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FD4EC(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, *(a3 + 8));
  if (Copy)
  {
    (*(*a1 + 896))(a1, a2, Copy);
    CFRelease(Copy);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AB914();
    }
  }

  return Copy != 0;
}

uint64_t sub_1004FD710(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  (*(*a1 + 928))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_1004FD7E4(uint64_t a1, const char *a2, _BYTE *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FD850(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FD850(uint64_t a1, const __CFString *a2, _BYTE *a3)
{
  v5 = &kCFBooleanTrue;
  if (!*a3)
  {
    v5 = &kCFBooleanFalse;
  }

  v6 = *v5;
  CFRetain(*v5);
  if (v6)
  {
    (*(*a1 + 928))(a1, a2, v6);
    CFRelease(v6);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v8 = v11 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018ABA18();
    }
  }

  return v6 != 0;
}

BOOL sub_1004FD9DC(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FDA48(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FDA48(uint64_t a1, const __CFString *a2, unsigned __int16 *a3)
{
  LODWORD(valuePtr[0]) = *a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, valuePtr);
      v7 = v10 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018ABB1C();
    }
  }

  return v5 != 0;
}

BOOL sub_1004FDBD0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FDC3C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FDC3C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018ABC20();
    }
  }

  return v5 != 0;
}

BOOL sub_1004FDDB8(uint64_t a1, const char *a2, unsigned int *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FDE24(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FDE24(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  valuePtr[0] = *a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, valuePtr);
      v7 = v10 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018ABD24();
    }
  }

  return v5 != 0;
}

BOOL sub_1004FDFAC(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FE018(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FE018(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018ABE28();
    }
  }

  return v5 != 0;
}

BOOL sub_1004FE194(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FE200(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FE200(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018ABF2C();
    }
  }

  return v5 != 0;
}

BOOL sub_1004FE37C(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FE3E8(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FE3E8(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AC030();
    }
  }

  return v5 != 0;
}

BOOL sub_1004FE564(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FE5D0(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FE5D0(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat64Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AC134();
    }
  }

  return v5 != 0;
}

BOOL sub_1004FE74C(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FE7B8(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FE7B8(uint64_t a1, const __CFString *a2, char *cStr)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AC238();
    }
  }

  return v5 != 0;
}

BOOL sub_1004FE93C(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  if (a3[23] >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = sub_1004FE7B8(a1, v5, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

BOOL sub_1004FE9B4(uint64_t a1, const __CFString *a2, char *a3)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return sub_1004FE7B8(a1, a2, a3);
}

uint64_t sub_1004FE9C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  (*(*a1 + 928))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_1004FEA9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FEB08(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FEB08(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, *(a3 + 8));
  if (Copy)
  {
    (*(*a1 + 928))(a1, a2, Copy);
    CFRelease(Copy);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AC33C();
    }
  }

  return Copy != 0;
}

uint64_t sub_1004FEC84(uint64_t a1, uint64_t a2, const void *a3)
{
  arg = 0;
  if ((*(*a1 + 912))(a1, a2, &arg))
  {
    CFAutorelease(arg);
    v6 = CFGetTypeID(arg);
    if (v6 == CFArrayGetTypeID())
    {
      Mutable = arg;
    }

    else
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      CFAutorelease(Mutable);
      CFArrayAppendValue(Mutable, arg);
    }

    v8 = CFGetTypeID(a3);
    if (v8 == CFArrayGetTypeID())
    {
      v11.length = CFArrayGetCount(a3);
      v11.location = 0;
      CFArrayAppendArray(Mutable, a3, v11);
    }

    else
    {
      CFArrayAppendValue(Mutable, a3);
    }
  }

  else
  {
    Mutable = a3;
  }

  return (*(*a1 + 896))(a1, a2, Mutable);
}

CFIndex sub_1004FEE4C(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!(*(*a1 + 912))(a1, a2, &cf))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = CFGetTypeID(cf);
  if (v2 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(cf);
  }

  else
  {
    Count = 1;
  }

  CFRelease(cf);
  return Count;
}

BOOL sub_1004FEF98(uint64_t a1, CFDataRef *a2)
{
  Data = CFPropertyListCreateData(kCFAllocatorDefault, *(a1 + 8), kCFPropertyListXMLFormat_v1_0, 0, 0);
  *a2 = Data;
  return Data != 0;
}

uint64_t sub_1004FEFE8(uint64_t a1, CFTypeRef *a2)
{
  v4 = CFWriteStreamCreateWithAllocatedBuffers(kCFAllocatorDefault, kCFAllocatorDefault);
  error = 0;
  if (v4)
  {
    v5 = v4;
    if (!CFWriteStreamOpen(v4))
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018A9CF4();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "could not open write stream", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018AC440();
      }

      goto LABEL_33;
    }

    v6 = CFPropertyListWrite(*(a1 + 8), v5, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    if (!error && v6)
    {
      *a2 = CFWriteStreamCopyProperty(v5, kCFStreamPropertyDataWritten);
      CFWriteStreamClose(v5);
      v7 = 1;
      goto LABEL_34;
    }

    if (error)
    {
      Code = CFErrorGetCode(error);
      if (error)
      {
        Domain = CFErrorGetDomain(error);
LABEL_24:
        if (qword_1025D48A0 != -1)
        {
          sub_1018AA1FC();
        }

        v12 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
        {
          sub_1000238CC(Domain, buf);
          v13 = v29 >= 0 ? buf : *buf;
          *v20 = 134349314;
          *&v20[4] = Code;
          v21 = 2082;
          v22 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "could not write data, error code, %{public}ld, error domain, %{public}s", v20, 0x16u);
          if (v29 < 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D48A0 != -1)
          {
            sub_1018AA1FC();
          }

          v15 = qword_1025D48A8;
          sub_1000238CC(Domain, v20);
          if (v23 >= 0)
          {
            v16 = v20;
          }

          else
          {
            v16 = *v20;
          }

          v24 = 134349314;
          v25 = Code;
          v26 = 2082;
          v27 = v16;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v15, 17, "could not write data, error code, %{public}ld, error domain, %{public}s", &v24, 22);
          v18 = v17;
          if (v23 < 0)
          {
            operator delete(*v20);
          }

          sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "%s\n", v18);
          if (v18 != buf)
          {
            free(v18);
          }
        }

LABEL_33:
        v7 = 0;
LABEL_34:
        CFRelease(v5);
        if (error)
        {
          CFRelease(error);
        }

        return v7;
      }
    }

    else
    {
      Code = 0;
    }

    Domain = @"unknown error";
    goto LABEL_24;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018A9CF4();
  }

  v8 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "could not create write stream", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018AC52C();
  }

  return 0;
}

BOOL sub_1004FF3A8(void *a1, const __CFData *a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  error = 0;
  v5 = CFPropertyListCreateWithData(kCFAllocatorDefault, a2, 1uLL, 0, &error);
  if (v5)
  {
    v6 = a1[1];
    if (v6)
    {
      CFRelease(v6);
    }

    a1[1] = v5;
    (*(*a1 + 848))(a1);
    goto LABEL_21;
  }

  if (!error)
  {
    Code = 0;
    goto LABEL_9;
  }

  Code = CFErrorGetCode(error);
  if (!error)
  {
LABEL_9:
    Domain = @"unknown error";
    goto LABEL_10;
  }

  Domain = CFErrorGetDomain(error);
LABEL_10:
  if (qword_1025D48A0 != -1)
  {
    sub_1018AA1FC();
  }

  v9 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    if (Domain)
    {
      sub_1000238CC(Domain, __p);
      if (v26 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 134349314;
      *&buf[4] = Code;
      v18 = 2082;
      v19 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "could not create intermediate property list - %{public}ld (%{public}s)", buf, 0x16u);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 134349314;
      *&buf[4] = Code;
      v18 = 2082;
      v19 = "unknown error";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "could not create intermediate property list - %{public}ld (%{public}s)", buf, 0x16u);
    }
  }

  if (sub_10000A100(121, 0))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v12 = qword_1025D48A8;
    if (Domain)
    {
      sub_1000238CC(Domain, buf);
      if (v20 >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }
    }

    else
    {
      v13 = "unknown error";
    }

    v21 = 134349314;
    v22 = Code;
    v23 = 2082;
    v24 = v13;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v12, 17, "could not create intermediate property list - %{public}ld (%{public}s)", &v21, 22);
    v15 = v14;
    if (Domain && v20 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::deserialize(const CFDataRef)", "%s\n", v15);
    if (v15 != __p)
    {
      free(v15);
    }
  }

LABEL_21:
  if (error)
  {
    CFRelease(error);
  }

  return v5 != 0;
}

void sub_1004FF734(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  (*(*a1 + 800))(a1, __p);
  if (qword_1025D48B0 != -1)
  {
    sub_1018AC618();
  }

  v1 = qword_1025D48B8;
  if (os_log_type_enabled(qword_1025D48B8, OS_LOG_TYPE_DEBUG))
  {
    v2 = __p;
    if (v7 < 0)
    {
      v2 = __p[0];
    }

    *buf = 136315138;
    v11 = v2;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AC640(buf);
    v3 = __p;
    if (v7 < 0)
    {
      v3 = __p[0];
    }

    v8 = 136315138;
    v9 = v3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48B8, 2, "%s", &v8);
    v5 = v4;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNameValuePair::print() const", "%s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004FF90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004FF934(uint64_t a1, std::string *a2)
{
  v4 = *(a1 + 8);
  if (v4 && CFDictionaryGetCount(v4))
  {
    memset(&context, 0, sizeof(context));
    CFDictionaryApplyFunction(*(a1 + 8), sub_1004FFA08, &context);
    std::string::operator=(a2, &context);
    if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(context.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      a2->__r_.__value_.__l.__size_ = 8;
      a2 = a2->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&a2->__r_.__value_.__s + 23) = 8;
    }

    strcpy(a2, "<empty>\n");
  }
}

void sub_1004FF9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004FFA08(const __CFString *a1, const __CFString *a2, std::string *a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFStringGetTypeID())
  {
    memset(&__p, 0, sizeof(__p));
    sub_100005A24(a1, &__p);
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID())
    {
      v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v9 = __p.__r_.__value_.__r.__words[0];
      Count = CFDictionaryGetCount(a2);
      p_p = &__p;
      if (v8 < 0)
      {
        p_p = v9;
      }

      snprintf(__str, 0x100uLL, "%s = <dictionary (%ld entries)>:\n", p_p, Count);
      v12 = strlen(__str);
      std::string::append(a3, __str, v12);
      CFDictionaryApplyFunction(a2, sub_1004FFA08, a3);
    }

    else
    {
      v16 = CFGetTypeID(a2);
      if (v16 == CFArrayGetTypeID())
      {
        v17.length = CFArrayGetCount(a2);
        v18 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = __p.__r_.__value_.__r.__words[0];
        }

        *&context.__r_.__value_.__l.__data_ = v18;
        context.__r_.__value_.__r.__words[2] = a3;
        v17.location = 0;
        CFArrayApplyFunction(a2, v17, sub_1005015A8, &context);
      }

      else
      {
        v19 = CFGetTypeID(a2);
        if (v19 == CFStringGetTypeID())
        {
          memset(&context, 0, sizeof(context));
          if (sub_100005A24(a2, &context))
          {
            v20 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v20 = __p.__r_.__value_.__r.__words[0];
            }

            p_context = &context;
            if ((context.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_context = context.__r_.__value_.__r.__words[0];
            }

            snprintf(__str, 0x100uLL, "%s = %s\n", v20, p_context);
          }

          v22 = strlen(__str);
          std::string::append(a3, __str, v22);
          if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(context.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v23 = CFGetTypeID(a2);
          if (v23 == CFNumberGetTypeID())
          {
            context.__r_.__value_.__r.__words[0] = 0;
            if (sub_1000B8430(a2, &context))
            {
              v24 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v24 = __p.__r_.__value_.__r.__words[0];
              }

              snprintf(__str, 0x100uLL, "%s = %0.6f\n", v24, *&context.__r_.__value_.__l.__data_);
            }

            v25 = strlen(__str);
            std::string::append(a3, __str, v25);
          }

          else
          {
            v26 = CFGetTypeID(a2);
            if (v26 == CFBooleanGetTypeID())
            {
              CFBooleanGetValue(a2);
              snprintf(__str, 0x100uLL, "%s = %d\n");
            }

            else
            {
              CFGetTypeID(a2);
              snprintf(__str, 0x100uLL, "%s = <unhandled value type %lu>\n");
            }

            v27 = strlen(__str);
            std::string::append(a3, __str, v27);
          }
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = CFGetTypeID(a1);
    TypeID = CFStringGetTypeID();
    snprintf(__str, 0x100uLL, "type ID does not match - %lu vs %lu\n", v13, TypeID);
    v15 = strlen(__str);
    std::string::append(a3, __str, v15);
  }
}

void sub_1004FFD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004FFDC0(uint64_t a1, void *context)
{
  v3 = *(a1 + 8);
  if (v3)
  {

    CFDictionaryApplyFunction(v3, sub_1004FFEE8, context);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315138;
      v6 = context;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "dictionary, %s, NULL", &v5, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018AC684(context);
    }
  }
}

void sub_1004FFEE8(const __CFString *a1, const __CFString *a2, char *a3)
{
  memset(&v85, 0, sizeof(v85));
  v6 = CFGetTypeID(a1);
  if (v6 != CFStringGetTypeID())
  {
    goto LABEL_28;
  }

  sub_100005A24(a1, &v85);
  v7 = CFGetTypeID(a2);
  if (v7 == CFDictionaryGetTypeID())
  {
    sub_10000EC00(&v84, a3);
    sub_10000EC00(&__p, "->");
    if ((v83 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v83 & 0x80u) == 0)
    {
      v9 = v83;
    }

    else
    {
      v9 = v82;
    }

    v10 = std::string::append(&v84, p_p, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v85;
    }

    else
    {
      v12 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v85.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v86, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v14->__r_.__value_.__l + 2);
    *buf = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if (v83 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    if (buf[23] >= 0)
    {
      v16 = buf;
    }

    else
    {
      v16 = *buf;
    }

    CFDictionaryApplyFunction(a2, sub_1004FFEE8, v16);
    v17 = buf[23];
LABEL_25:
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v18 = *buf;
    goto LABEL_27;
  }

  v19 = CFGetTypeID(a2);
  if (v19 == CFArrayGetTypeID())
  {
    sub_10000EC00(&v84, a3);
    sub_10000EC00(&__p, "->");
    if ((v83 & 0x80u) == 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p;
    }

    if ((v83 & 0x80u) == 0)
    {
      v21 = v83;
    }

    else
    {
      v21 = v82;
    }

    v22 = std::string::append(&v84, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v85;
    }

    else
    {
      v24 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v85.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v86, v24, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v26->__r_.__value_.__l + 2);
    *buf = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if (v83 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    for (i = 0; ; ++i)
    {
      Count = CFArrayGetCount(a2);
      v17 = buf[23];
      if (i >= Count)
      {
        break;
      }

      if (buf[23] >= 0)
      {
        v30 = buf;
      }

      else
      {
        v30 = *buf;
      }

      v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s.%ld", v30, i);
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      sub_1004FFEE8(v31, ValueAtIndex, a3);
      if (v31)
      {
        CFRelease(v31);
      }
    }

    goto LABEL_25;
  }

  v33 = CFGetTypeID(a2);
  if (v33 != CFStringGetTypeID())
  {
    v37 = CFGetTypeID(a2);
    if (v37 == CFNumberGetTypeID())
    {
      if (CFNumberIsFloatType(a2))
      {
        v84.__r_.__value_.__r.__words[0] = 0;
        sub_1000B8430(a2, &v84);
        if (qword_1025D48A0 != -1)
        {
          sub_1018AA1FC();
        }

        v38 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          v39 = &v85;
          if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v39 = v85.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = a3;
          *&buf[12] = 2080;
          *&buf[14] = v39;
          *&buf[22] = 2048;
          v89[0] = v84.__r_.__value_.__r.__words[0];
          _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "dictionary, %s, key, %s, value, %.8lf", buf, 0x20u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_28;
        }

        sub_1018AA53C(buf);
        v40 = &v85;
        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = v85.__r_.__value_.__r.__words[0];
        }

        LODWORD(v86.__r_.__value_.__l.__data_) = 136315650;
        *(v86.__r_.__value_.__r.__words + 4) = a3;
        WORD2(v86.__r_.__value_.__r.__words[1]) = 2080;
        *(&v86.__r_.__value_.__r.__words[1] + 6) = v40;
        HIWORD(v86.__r_.__value_.__r.__words[2]) = 2048;
        v87[0] = v84.__r_.__value_.__r.__words[0];
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "dictionary, %s, key, %s, value, %.8lf", &v86, 32, *&v80);
        v42 = v41;
        sub_100152C7C("Generic", 1, 0, 2, "void _printCSV_logKeyValue(const void *, const void *, void *)", "%s\n", v41);
      }

      else
      {
        LODWORD(v84.__r_.__value_.__l.__data_) = 0;
        sub_100005EEC(a2, &v84);
        if (qword_1025D48A0 != -1)
        {
          sub_1018AA1FC();
        }

        v67 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          v68 = &v85;
          if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v68 = v85.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          *&buf[4] = a3;
          *&buf[12] = 2080;
          *&buf[14] = v68;
          *&buf[22] = 1024;
          LODWORD(v89[0]) = v84.__r_.__value_.__l.__data_;
          WORD2(v89[0]) = 1024;
          *(v89 + 6) = v84.__r_.__value_.__l.__data_;
          _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_DEBUG, "dictionary, %s, key, %s, value, %d, 0x%08x", buf, 0x22u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_28;
        }

        sub_1018AA53C(buf);
        v69 = &v85;
        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v69 = v85.__r_.__value_.__r.__words[0];
        }

        LODWORD(v86.__r_.__value_.__l.__data_) = 136315906;
        *(v86.__r_.__value_.__r.__words + 4) = a3;
        WORD2(v86.__r_.__value_.__r.__words[1]) = 2080;
        *(&v86.__r_.__value_.__r.__words[1] + 6) = v69;
        HIWORD(v86.__r_.__value_.__r.__words[2]) = 1024;
        LODWORD(v87[0]) = v84.__r_.__value_.__l.__data_;
        WORD2(v87[0]) = 1024;
        *(v87 + 6) = v84.__r_.__value_.__l.__data_;
        LODWORD(v79) = 34;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "dictionary, %s, key, %s, value, %d, 0x%08x", &v86, v79, v80, __p);
        v42 = v70;
        sub_100152C7C("Generic", 1, 0, 2, "void _printCSV_logKeyValue(const void *, const void *, void *)", "%s\n", v70);
      }
    }

    else
    {
      v43 = CFGetTypeID(a2);
      if (v43 == CFBooleanGetTypeID())
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018AA1FC();
        }

        v44 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          v45 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
          v46 = v85.__r_.__value_.__r.__words[0];
          Value = CFBooleanGetValue(a2);
          v48 = &v85;
          *buf = 136315650;
          if (v45 < 0)
          {
            v48 = v46;
          }

          *&buf[4] = a3;
          *&buf[12] = 2080;
          *&buf[14] = v48;
          *&buf[22] = 1024;
          LODWORD(v89[0]) = Value;
          _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "dictionary, %s, key, %s, value, %d, [CFBoolean]", buf, 0x1Cu);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_28;
        }

        sub_1018AA53C(buf);
        v49 = qword_1025D48A8;
        v50 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
        v51 = v85.__r_.__value_.__r.__words[0];
        v52 = CFBooleanGetValue(a2);
        v53 = &v85;
        LODWORD(v86.__r_.__value_.__l.__data_) = 136315650;
        if (v50 < 0)
        {
          v53 = v51;
        }

        *(v86.__r_.__value_.__r.__words + 4) = a3;
        WORD2(v86.__r_.__value_.__r.__words[1]) = 2080;
        *(&v86.__r_.__value_.__r.__words[1] + 6) = v53;
        HIWORD(v86.__r_.__value_.__r.__words[2]) = 1024;
        LODWORD(v87[0]) = v52;
        LODWORD(v79) = 28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v49, 2, "dictionary, %s, key, %s, value, %d, [CFBoolean]", &v86, v79, v80);
        v42 = v54;
        sub_100152C7C("Generic", 1, 0, 2, "void _printCSV_logKeyValue(const void *, const void *, void *)", "%s\n", v54);
      }

      else
      {
        v55 = CFGetTypeID(a2);
        if (v55 == CFDateGetTypeID())
        {
          if (qword_1025D48A0 != -1)
          {
            sub_1018AA1FC();
          }

          v56 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            v57 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
            v58 = v85.__r_.__value_.__r.__words[0];
            AbsoluteTime = CFDateGetAbsoluteTime(a2);
            v60 = &v85;
            *buf = 136315650;
            if (v57 < 0)
            {
              v60 = v58;
            }

            *&buf[4] = a3;
            *&buf[12] = 2080;
            *&buf[14] = v60;
            *&buf[22] = 2048;
            *v89 = AbsoluteTime;
            _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "dictionary, %s, key, %s, value, %.2lf, [CFDate]", buf, 0x20u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_28;
          }

          sub_1018AA53C(buf);
          v61 = qword_1025D48A8;
          v62 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
          v63 = v85.__r_.__value_.__r.__words[0];
          v64 = CFDateGetAbsoluteTime(a2);
          v65 = &v85;
          LODWORD(v86.__r_.__value_.__l.__data_) = 136315650;
          if (v62 < 0)
          {
            v65 = v63;
          }

          *(v86.__r_.__value_.__r.__words + 4) = a3;
          WORD2(v86.__r_.__value_.__r.__words[1]) = 2080;
          *(&v86.__r_.__value_.__r.__words[1] + 6) = v65;
          HIWORD(v86.__r_.__value_.__r.__words[2]) = 2048;
          *v87 = v64;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v61, 2, "dictionary, %s, key, %s, value, %.2lf, [CFDate]", &v86, 32, *&v80);
          v42 = v66;
          sub_100152C7C("Generic", 1, 0, 2, "void _printCSV_logKeyValue(const void *, const void *, void *)", "%s\n", v66);
        }

        else
        {
          if (qword_1025D48A0 != -1)
          {
            sub_1018AA1FC();
          }

          v71 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            v72 = &v85;
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v72 = v85.__r_.__value_.__r.__words[0];
            }

            *buf = 136315394;
            *&buf[4] = a3;
            *&buf[12] = 2080;
            *&buf[14] = v72;
            _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEBUG, "dictionary, %s, key, %s, un-printable value", buf, 0x16u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_28;
          }

          sub_1018AA53C(buf);
          v73 = &v85;
          if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v73 = v85.__r_.__value_.__r.__words[0];
          }

          LODWORD(v86.__r_.__value_.__l.__data_) = 136315394;
          *(v86.__r_.__value_.__r.__words + 4) = a3;
          WORD2(v86.__r_.__value_.__r.__words[1]) = 2080;
          *(&v86.__r_.__value_.__r.__words[1] + 6) = v73;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "dictionary, %s, key, %s, un-printable value", &v86, 22);
          v42 = v74;
          sub_100152C7C("Generic", 1, 0, 2, "void _printCSV_logKeyValue(const void *, const void *, void *)", "%s\n", v74);
        }
      }
    }

    if (v42 != buf)
    {
      free(v42);
    }

    goto LABEL_28;
  }

  memset(&v84, 0, sizeof(v84));
  sub_100005A24(a2, &v84);
  if (qword_1025D48A0 != -1)
  {
    sub_1018AA1FC();
  }

  v34 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v35 = &v85;
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v85.__r_.__value_.__r.__words[0];
    }

    v36 = &v84;
    if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v36 = v84.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = a3;
    *&buf[12] = 2080;
    *&buf[14] = v35;
    *&buf[22] = 2080;
    v89[0] = v36;
    _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "dictionary, %s, key, %s, value, %s", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AA53C(buf);
    v75 = &v85;
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v75 = v85.__r_.__value_.__r.__words[0];
    }

    v76 = &v84;
    if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v76 = v84.__r_.__value_.__r.__words[0];
    }

    LODWORD(v86.__r_.__value_.__l.__data_) = 136315650;
    *(v86.__r_.__value_.__r.__words + 4) = a3;
    WORD2(v86.__r_.__value_.__r.__words[1]) = 2080;
    *(&v86.__r_.__value_.__r.__words[1] + 6) = v75;
    HIWORD(v86.__r_.__value_.__r.__words[2]) = 2080;
    v87[0] = v76;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "dictionary, %s, key, %s, value, %s", &v86, 32, v80);
    v78 = v77;
    sub_100152C7C("Generic", 1, 0, 2, "void _printCSV_logKeyValue(const void *, const void *, void *)", "%s\n", v77);
    if (v78 != buf)
    {
      free(v78);
    }
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    v18 = v84.__r_.__value_.__r.__words[0];
LABEL_27:
    operator delete(v18);
  }

LABEL_28:
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }
}

void sub_100500B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100500C0C(const __CFString *a1, const __CFString *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    memset(&v59, 0, sizeof(v59));
    sub_100005A24(a1, &v59);
    v5 = CFGetTypeID(a2);
    if (v5 == CFDictionaryGetTypeID())
    {
      if (qword_1025D48B0 != -1)
      {
        sub_1018AC618();
      }

      v6 = qword_1025D48B8;
      if (os_log_type_enabled(qword_1025D48B8, OS_LOG_TYPE_DEBUG))
      {
        v7 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
        v8 = v59.__r_.__value_.__r.__words[0];
        Count = CFDictionaryGetCount(a2);
        v10 = &v59;
        if (v7 < 0)
        {
          v10 = v8;
        }

        *buf = 136315394;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = Count;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "\t%s = <dictionary (%ld entries)>:", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018AC640(buf);
        v41 = qword_1025D48B8;
        v42 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
        v43 = v59.__r_.__value_.__r.__words[0];
        v44 = CFDictionaryGetCount(a2);
        v45 = &v59;
        if (v42 < 0)
        {
          v45 = v43;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v45;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v44;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v41, 2, "\t%s = <dictionary (%ld entries)>:", &__p, 22);
        v47 = v46;
        sub_100152C7C("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "%s\n", v46);
        if (v47 != buf)
        {
          free(v47);
        }
      }

      CFDictionaryApplyFunction(a2, sub_100500C0C, 0);
      goto LABEL_59;
    }

    v11 = CFGetTypeID(a2);
    if (v11 == CFArrayGetTypeID())
    {
      v12.length = CFArrayGetCount(a2);
      *&buf[8] = 0uLL;
      v13 = &v59;
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = v59.__r_.__value_.__r.__words[0];
      }

      *buf = v13;
      v12.location = 0;
      CFArrayApplyFunction(a2, v12, sub_100501520, buf);
      goto LABEL_59;
    }

    v14 = CFGetTypeID(a2);
    if (v14 == CFStringGetTypeID())
    {
      memset(&__p, 0, sizeof(__p));
      if (sub_100005A24(a2, &__p))
      {
        if (qword_1025D48B0 != -1)
        {
          sub_1018AC618();
        }

        v15 = qword_1025D48B8;
        if (os_log_type_enabled(qword_1025D48B8, OS_LOG_TYPE_DEBUG))
        {
          v16 = &v59;
          if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v16 = v59.__r_.__value_.__r.__words[0];
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = v16;
          *&buf[12] = 2080;
          *&buf[14] = p_p;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "\t%s = %s", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018AC640(buf);
          v48 = &v59;
          if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v48 = v59.__r_.__value_.__r.__words[0];
          }

          v49 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v49 = __p.__r_.__value_.__r.__words[0];
          }

          *v60 = 136315394;
          *&v60[4] = v48;
          v61 = 2080;
          v62 = v49;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48B8, 2, "\t%s = %s", v60, 22);
          v51 = v50;
          sub_100152C7C("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "%s\n", v50);
          if (v51 != buf)
          {
            free(v51);
          }
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_59;
    }

    v18 = CFGetTypeID(a2);
    if (v18 == CFNumberGetTypeID())
    {
      *v60 = 0;
      if (!sub_1000B8430(a2, v60))
      {
        goto LABEL_59;
      }

      if (qword_1025D48B0 != -1)
      {
        sub_1018AC618();
      }

      v19 = qword_1025D48B8;
      if (os_log_type_enabled(qword_1025D48B8, OS_LOG_TYPE_DEBUG))
      {
        v20 = &v59;
        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v20 = v59.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = v20;
        *&buf[12] = 2048;
        *&buf[14] = *v60;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "\t%s = %0.6f", buf, 0x16u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_59;
      }

      sub_1018AC640(buf);
      v21 = &v59;
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v59.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v21;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = *v60;
      LODWORD(v58) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48B8, 2, "\t%s = %0.6f", &__p, v58);
      v23 = v22;
      sub_100152C7C("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "%s\n", v22);
      if (v23 == buf)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v24 = CFGetTypeID(a2);
      if (v24 == CFBooleanGetTypeID())
      {
        if (qword_1025D48B0 != -1)
        {
          sub_1018AC618();
        }

        v25 = qword_1025D48B8;
        if (os_log_type_enabled(qword_1025D48B8, OS_LOG_TYPE_DEBUG))
        {
          v26 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
          v27 = v59.__r_.__value_.__r.__words[0];
          Value = CFBooleanGetValue(a2);
          v29 = &v59;
          if (v26 < 0)
          {
            v29 = v27;
          }

          *buf = 136315394;
          *&buf[4] = v29;
          *&buf[12] = 1024;
          *&buf[14] = Value;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "\t%s = %d", buf, 0x12u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_59;
        }

        sub_1018AC640(buf);
        v30 = qword_1025D48B8;
        v31 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
        v32 = v59.__r_.__value_.__r.__words[0];
        v33 = CFBooleanGetValue(a2);
        v34 = &v59;
        if (v31 < 0)
        {
          v34 = v32;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v34;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v33;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v30, 2, "\t%s = %d", &__p, 18);
        v23 = v35;
        sub_100152C7C("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "%s\n", v35);
      }

      else
      {
        if (qword_1025D48B0 != -1)
        {
          sub_1018AC618();
        }

        v36 = qword_1025D48B8;
        if (os_log_type_enabled(qword_1025D48B8, OS_LOG_TYPE_DEBUG))
        {
          v37 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
          v38 = v59.__r_.__value_.__r.__words[0];
          v39 = CFGetTypeID(a2);
          v40 = &v59;
          if (v37 < 0)
          {
            v40 = v38;
          }

          *buf = 136315394;
          *&buf[4] = v40;
          *&buf[12] = 2048;
          *&buf[14] = v39;
          _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "\t%s = <unhandled value type %lu>", buf, 0x16u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_59;
        }

        sub_1018AC640(buf);
        v52 = qword_1025D48B8;
        v53 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
        v54 = v59.__r_.__value_.__r.__words[0];
        v55 = CFGetTypeID(a2);
        v56 = &v59;
        if (v53 < 0)
        {
          v56 = v54;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v56;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v55;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v52, 2, "\t%s = <unhandled value type %lu>", &__p, 22);
        v23 = v57;
        sub_100152C7C("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "%s\n", v57);
      }

      if (v23 == buf)
      {
LABEL_59:
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    free(v23);
    goto LABEL_59;
  }
}

void sub_1005014AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100501520(const __CFString *a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s[%d]", *a2, *(a2 + 8));
  sub_100500C0C(v4, a1);
  ++*(a2 + 8);

  CFRelease(v4);
}

void sub_1005015A8(const __CFString *a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s[%d]", *a2, *(a2 + 8));
  sub_1004FFA08(v4, a1, *(a2 + 16));
  ++*(a2 + 8);

  CFRelease(v4);
}

BOOL sub_100501634(const void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  TypeID = CFStringGetTypeID();
  if (v4 == TypeID)
  {
    *a2 = a1;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = 134349312;
      v9 = CFGetTypeID(a1);
      v10 = 2050;
      v11 = CFStringGetTypeID();
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", &v8, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AC780();
    }
  }

  return v4 == TypeID;
}

uint64_t sub_1005017C0(uint64_t result, float a2)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = v2;
  *(v4 - 52) = 2050;
  *(v3 + 14) = result;
  return result;
}

BOOL sub_1005017E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1000238CC(v6, va);
}

void sub_100501BFC(void *a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x1C71C71C71C71C8)
    {
      sub_100503B9C(a1, a2);
    }

    sub_10028C64C();
  }
}

NSTimer *sub_100501CC8(uint64_t a1)
{
  *(*(a1 + 32) + 216) = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"rotateCAHourly" selector:0 userInfo:1 repeats:3600.0];
  result = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"rotateCADaily" selector:0 userInfo:1 repeats:86400.0];
  *(*(a1 + 32) + 224) = result;
  return result;
}

id sub_100502100(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[9];
  v12[8] = a3[8];
  v12[9] = v5;
  v6 = a3[11];
  v12[10] = a3[10];
  v12[11] = v6;
  v7 = a3[5];
  v12[4] = a3[4];
  v12[5] = v7;
  v8 = a3[7];
  v12[6] = a3[6];
  v12[7] = v8;
  v9 = a3[1];
  v12[0] = *a3;
  v12[1] = v9;
  v10 = a3[3];
  v12[2] = a3[2];
  v12[3] = v10;
  return [a4 onCompanionNotification:v4 data:v12];
}

id sub_100502160(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[7];
  v11[6] = a3[6];
  v11[7] = v5;
  v6 = a3[9];
  v11[8] = a3[8];
  v11[9] = v6;
  v7 = a3[3];
  v11[2] = a3[2];
  v11[3] = v7;
  v8 = a3[5];
  v11[4] = a3[4];
  v11[5] = v8;
  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  return [a4 onMotionActivityNotification:v4 data:v11];
}

double sub_100502850(uint64_t a1, double result)
{
  if ((*a1)++)
  {
    v4 = *(a1 + 8);
    v3 = *(a1 + 16);
    v5 = *(a1 + 24) * v4;
    v6 = *(a1 + 32) * (v4 * v4);
    v7 = v5 + 1.0;
    if (v3 == result)
    {
      v8 = *(a1 + 16);
    }

    else
    {
      v8 = (result + v5 * v3) / (v5 + 1.0);
      *(a1 + 16) = v8;
    }

    v9 = ((result - v8) * (result - v8) + v5 * (*(a1 + 40) + (v3 - v8) * (v3 - v8))) / v7;
    result = v6 + 1.0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v6 + 1.0;
    *(a1 + 40) = v9;
  }

  else
  {
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_100503078(void *a1, _OWORD *a2)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = (*a1 + 144 * ((a1[3] + a1[4]) % v2));
    v4 = a2[4];
    v6 = a2[1];
    v5 = a2[2];
    v3[3] = a2[3];
    v3[4] = v4;
    v3[1] = v6;
    v3[2] = v5;
    v7 = a2[8];
    v9 = a2[5];
    v8 = a2[6];
    v3[7] = a2[7];
    v3[8] = v7;
    v3[5] = v9;
    v3[6] = v8;
    *v3 = *a2;
    v10 = a1[4];
    if (v10 == a1[5])
    {
      v2 = 0;
      a1[3] = (a1[3] + 1) % v10;
    }

    else
    {
      a1[4] = v10 + 1;
      return 1;
    }
  }

  return v2;
}

NSDictionary *sub_100503350(uint64_t a1)
{
  v3[0] = @"btRssi";
  v4[0] = [NSNumber numberWithDouble:*(*(a1 + 32) + 128)];
  v3[1] = @"btRssiAge";
  v4[1] = [NSNumber numberWithDouble:*(a1 + 40)];
  v3[2] = @"companionPressure";
  v4[2] = [NSNumber numberWithDouble:**(a1 + 32)];
  v3[3] = @"companionPressureAge";
  v4[3] = [NSNumber numberWithDouble:*(a1 + 48)];
  v3[4] = @"companionPressureVariance";
  v4[4] = [NSNumber numberWithDouble:*(*(a1 + 32) + 16)];
  v3[5] = @"inProximity";
  v4[5] = [NSNumber numberWithInt:*(*(a1 + 32) + 64)];
  v3[6] = @"motionState";
  v4[6] = [NSNumber numberWithInt:*(*(a1 + 32) + 48)];
  v3[7] = @"proximityAge";
  v4[7] = [NSNumber numberWithDouble:*(a1 + 56)];
  v3[8] = @"relativePressureBiasEstimate";
  v4[8] = [NSNumber numberWithDouble:*(*(a1 + 32) + 104)];
  v3[9] = @"relativePressureBiasMeasurement";
  v4[9] = [NSNumber numberWithDouble:*(*(a1 + 32) + 96)];
  v3[10] = @"tableIndex";
  v4[10] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[11] = @"timeSinceLastCalibration";
  v4[11] = [NSNumber numberWithDouble:*(*(a1 + 32) + 136)];
  v3[12] = @"watchMotionStateAge";
  v4[12] = [NSNumber numberWithDouble:*(a1 + 64)];
  v3[13] = @"watchPressure";
  v4[13] = [NSNumber numberWithDouble:*(*(a1 + 32) + 24)];
  v3[14] = @"watchPressureAge";
  v4[14] = [NSNumber numberWithDouble:*(a1 + 72)];
  v3[15] = @"watchPressureVariance";
  v4[15] = [NSNumber numberWithDouble:*(*(a1 + 32) + 40)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:16];
}

void sub_100503B9C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100503BF8(uint64_t a1, unint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  sub_100503C48(a1, a2);
  return a1;
}

void sub_100503C2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100503C48(void *result, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((result[1] - *result) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_100503C8C(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 144 * a2;
  }
}

void sub_100503C8C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 144 * ((144 * a2 - 144) / 0x90) + 144;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 4);
    if (v6 + a2 > 0x1C71C71C71C71C7)
    {
      sub_10028C64C();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0xE38E38E38E38E3)
    {
      v9 = 0x1C71C71C71C71C7;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_100503B9C(a1, v9);
    }

    v11 = 144 * v6;
    v12 = 144 * ((144 * a2 - 144) / 0x90) + 144;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_100503E30(uint64_t a1, uint64_t a2)
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

void *sub_100503E8C(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = off_1025019A0;
  v9 = a5;
  *a1 = off_10245AE20;
  a1[1] = v9;
  a1[2] = a3;
  a1[3] = a4;
  v10 = a2;
  a1[5] = 0;
  a1[4] = v10;
  a1[6] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_100504014;
  aBlock[3] = &unk_10245AE50;
  aBlock[4] = v14;
  a1[5] = _Block_copy(aBlock);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001D728;
  v12[3] = &unk_10245AE78;
  v12[4] = v14;
  a1[6] = _Block_copy(v12);
  _Block_object_dispose(v14, 8);
  return a1;
}

void sub_10050402C(uint64_t a1)
{
  sub_100504064(a1);

  operator delete();
}

uint64_t sub_100504064(uint64_t a1)
{
  *a1 = off_10245AE20;
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));

  return sub_1017E7D44(a1);
}

unsigned __int8 *sub_1005040E0()
{
  v1 = 1;
  sub_100126E84(&unk_102656828, "PressureFindingLogCa", &v1, 0);
  v2 = 0x405E000000000000;
  return sub_10183A3AC(byte_102656830, "PressureFindingPressureValidDuration", &v2, 0);
}

void *sub_100504204(void *a1, uint64_t a2)
{
  *a1 = off_10245AEE8;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = [[CLHarvestAccessoryLocationProviderAdapter alloc] initWithMonitorGpsExternal:a1];
  return a1;
}

void sub_100504274(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v4)
  {
    sub_1018AD890(v4);
  }

  sub_1018AD858(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10050429C(uint64_t a1)
{
  *a1 = off_10245AEE8;

  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_10050434C(uint64_t a1)
{
  sub_10050429C(a1);

  operator delete();
}

uint64_t sub_100504384(uint64_t a1)
{
  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100504534(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018AD8B4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMonitorGpsExternal::onAccessoryNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018AD8C8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMonitorGpsExternal::onAccessoryNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  (*(**(a4 + 40) + 32))(*(a4 + 40), a1, *a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100504768(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_10245AF88;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a2;
  a1[5] = off_10245B020;
  operator new();
}

BOOL sub_100504910(NSURLSession *a1, NSMutableURLRequest *a2, NSMutableURLRequest *a3, double *a4)
{
  if (!a1[1].super.isa)
  {
    v8 = [(objc_class *)a1[4].super.isa operationQueue];
    v9 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    if (qword_102656868 != -1)
    {
      sub_1018AD8F0();
    }

    v10 = [NSURLSession sessionWithConfiguration:v9 delegate:qword_102656870 delegateQueue:v8];
    a1[1].super.isa = v10;
    v11 = v10;
  }

  if (*a4 <= 0.0)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1018AD904();
    }

    v27 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_FAULT))
    {
      v28 = *a4;
      *buf = 68289282;
      v47 = 0;
      v48 = 2082;
      v49 = "";
      v50 = 2050;
      v51 = v28;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Ignoring new #filedownload request with invalid timeout, Timeout_s:%{public}.09f}", buf, 0x1Cu);
      if (qword_1025D4860 != -1)
      {
        sub_1018AD918();
      }
    }

    v29 = qword_1025D4868;
    if (!os_signpost_enabled(qword_1025D4868))
    {
      return 0;
    }

    v30 = *a4;
    *buf = 68289282;
    v47 = 0;
    v48 = 2082;
    v49 = "";
    v50 = 2050;
    v51 = v30;
    v31 = "Ignoring new #filedownload request with invalid timeout";
    v32 = "{msg%{public}.0s:Ignoring new #filedownload request with invalid timeout, Timeout_s:%{public}.09f}";
LABEL_53:
    v35 = v29;
    v36 = 28;
    goto LABEL_54;
  }

  v12 = [NSURL URLWithString:[NSString stringWithUTF8String:a2, *a4]];
  if (!v12)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1018AD904();
    }

    v33 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289283;
      v47 = 0;
      v48 = 2082;
      v49 = "";
      v50 = 2081;
      v51 = a2;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Ignoring new #filedownload request with invalid src string, URLString:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D4860 != -1)
      {
        sub_1018AD918();
      }
    }

    v29 = qword_1025D4868;
    if (!os_signpost_enabled(qword_1025D4868))
    {
      return 0;
    }

    *buf = 68289283;
    v47 = 0;
    v48 = 2082;
    v49 = "";
    v50 = 2081;
    v51 = a2;
    v31 = "Ignoring new #filedownload request with invalid src string";
    v32 = "{msg%{public}.0s:Ignoring new #filedownload request with invalid src string, URLString:%{private, location:escape_only}s}";
    goto LABEL_53;
  }

  v13 = v12;
  v14 = [NSMutableURLRequest requestWithURL:v12];
  if (!v14)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1018AD904();
    }

    v34 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289283;
      v47 = 0;
      v48 = 2082;
      v49 = "";
      v50 = 2113;
      v51 = v13;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Ignoring new #filedownload request with invalid src url, URL:%{private, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D4860 != -1)
      {
        sub_1018AD918();
      }
    }

    v29 = qword_1025D4868;
    if (!os_signpost_enabled(qword_1025D4868))
    {
      return 0;
    }

    *buf = 68289283;
    v47 = 0;
    v48 = 2082;
    v49 = "";
    v50 = 2113;
    v51 = v13;
    v31 = "Ignoring new #filedownload request with invalid src url";
    v32 = "{msg%{public}.0s:Ignoring new #filedownload request with invalid src url, URL:%{private, location:escape_only}@}";
    goto LABEL_53;
  }

  v15 = v14;
  [(NSMutableURLRequest *)v14 setTimeoutInterval:*a4];
  [(NSMutableURLRequest *)v15 setAllowsCellularAccess:LOBYTE(a1[10].super.isa)];
  if (a1[2].super.isa)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1018AD904();
    }

    v16 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_FAULT))
    {
      v17 = [(objc_class *)a1[2].super.isa originalRequest];
      *buf = 68289539;
      v47 = 0;
      v48 = 2082;
      v49 = "";
      v50 = 2113;
      v51 = v17;
      v52 = 2113;
      v53 = v15;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Dropping uncancelled #filedownload to service new request, OriginalRequest:%{private, location:escape_only}@, NewRequest:%{private, location:escape_only}@}", buf, 0x26u);
      if (qword_1025D4860 != -1)
      {
        sub_1018AD918();
      }
    }

    v18 = qword_1025D4868;
    if (os_signpost_enabled(qword_1025D4868))
    {
      v19 = [(objc_class *)a1[2].super.isa originalRequest];
      *buf = 68289539;
      v47 = 0;
      v48 = 2082;
      v49 = "";
      v50 = 2113;
      v51 = v19;
      v52 = 2113;
      v53 = v15;
      _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Dropping uncancelled #filedownload to service new request", "{msg%{public}.0s:Dropping uncancelled #filedownload to service new request, OriginalRequest:%{private, location:escape_only}@, NewRequest:%{private, location:escape_only}@}", buf, 0x26u);
    }

    sub_1005053B8(a1);
  }

  a1[12].super.isa = 0;
  v20 = [NSURL fileURLWithPath:[NSString stringWithUTF8String:a3] isDirectory:0];
  a1[3].super.isa = v20;
  if (!v20)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1018AD918();
    }

    v38 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v47 = 0;
      v48 = 2082;
      v49 = "";
      v50 = 2113;
      v51 = v15;
      v52 = 2081;
      v53 = a3;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Ignoring new #filedownload request with invalid dst string, NewRequest:%{private, location:escape_only}@, LocalFileString:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4860 != -1)
      {
        sub_1018AD918();
      }
    }

    v39 = qword_1025D4868;
    if (!os_signpost_enabled(qword_1025D4868))
    {
      return 0;
    }

    *buf = 68289539;
    v47 = 0;
    v48 = 2082;
    v49 = "";
    v50 = 2113;
    v51 = v15;
    v52 = 2081;
    v53 = a3;
    v31 = "Ignoring new #filedownload request with invalid dst string";
    v32 = "{msg%{public}.0s:Ignoring new #filedownload request with invalid dst string, NewRequest:%{private, location:escape_only}@, LocalFileString:%{private, location:escape_only}s}";
    v35 = v39;
    v36 = 38;
LABEL_54:
    _os_signpost_emit_with_name_impl(dword_100000000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v31, v32, buf, v36);
    return 0;
  }

  isa = a1[6].super.isa;
  v21 = a1[7].super.isa;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100008080(v21);
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3321888768;
  v44[2] = sub_10050543C;
  v44[3] = &unk_10245AFD0;
  v44[4] = a1;
  v44[5] = isa;
  v45 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = [(objc_class *)a1[1].super.isa downloadTaskWithRequest:v15 completionHandler:v44];
  a1[2].super.isa = v23;
  v24 = v23 != 0;
  if (v23)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1018AD918();
    }

    v25 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
    {
      v26 = a1[3].super.isa;
      *buf = 68289539;
      v47 = 0;
      v48 = 2082;
      v49 = "";
      v50 = 2113;
      v51 = v15;
      v52 = 2113;
      v53 = v26;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Created task for #filedownload request, NewRequest:%{private, location:escape_only}@, LocalFile:%{private, location:escape_only}@}", buf, 0x26u);
    }

    if (BYTE1(a1[10].super.isa))
    {
      operator new();
    }

    if (!a1[13].super.isa)
    {
      a1[13].super.isa = [[CLOSTransaction alloc] initWithDescription:"CLDownloadOSTransaction"];
    }

    [(objc_class *)a1[2].super.isa resume];
  }

  else
  {
    if (qword_1025D4860 != -1)
    {
      sub_1018AD918();
    }

    v40 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_FAULT))
    {
      v41 = a1[3].super.isa;
      *buf = 68289539;
      v47 = 0;
      v48 = 2082;
      v49 = "";
      v50 = 2113;
      v51 = v15;
      v52 = 2113;
      v53 = v41;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not create task for #filedownload request, NewRequest:%{private, location:escape_only}@, LocalFile:%{private, location:escape_only}@}", buf, 0x26u);
      if (qword_1025D4860 != -1)
      {
        sub_1018AD918();
      }
    }

    v42 = qword_1025D4868;
    if (os_signpost_enabled(qword_1025D4868))
    {
      v43 = a1[3].super.isa;
      *buf = 68289539;
      v47 = 0;
      v48 = 2082;
      v49 = "";
      v50 = 2113;
      v51 = v15;
      v52 = 2113;
      v53 = v43;
      _os_signpost_emit_with_name_impl(dword_100000000, v42, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not create task for #filedownload request", "{msg%{public}.0s:Could not create task for #filedownload request, NewRequest:%{private, location:escape_only}@, LocalFile:%{private, location:escape_only}@}", buf, 0x26u);
    }
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  return v24;
}

void sub_100505350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  _Unwind_Resume(exception_object);
}

double sub_10050543C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  *&result = 3221225472;
  v11 = *(a1 + 48);
  if (v11)
  {
    if (*(v11 + 8) != -1)
    {
      sub_1005054D4(v9, a2, a3, a4, COERCE_DOUBLE(3221225472));
    }
  }

  return result;
}

void sub_1005054D4(uint64_t a1, uint64_t a2, void *a3, void *a4, double a5)
{
  v31 = a4;
  if (a4)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1018AD904();
    }

    v8 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 24);
      *buf = 68289795;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2113;
      v37 = a3;
      v38 = 2113;
      v39 = v9;
      v40 = 2113;
      v41 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Error on #filedownload task completion, Response:%{private, location:escape_only}@, LocalFile:%{private, location:escape_only}@, Error:%{private, location:escape_only}@}", buf, 0x30u);
      if (qword_1025D4860 != -1)
      {
        sub_1018AD918();
      }
    }

    v10 = qword_1025D4868;
    if (os_signpost_enabled(qword_1025D4868))
    {
      v11 = *(a1 + 24);
      *buf = 68289795;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2113;
      v37 = a3;
      v38 = 2113;
      v39 = v11;
      v40 = 2113;
      v41 = a4;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Error on #filedownload task completion", "{msg%{public}.0s:Error on #filedownload task completion, Response:%{private, location:escape_only}@, LocalFile:%{private, location:escape_only}@, Error:%{private, location:escape_only}@}", buf, 0x30u);
    }

    *(a1 + 96) = [a4 code];
  }

  else
  {
    v14 = sub_100505B48(a3);
    *(a1 + 96) = v14;
    if (v14)
    {
      if (qword_1025D4860 != -1)
      {
        sub_1018AD904();
      }

      v15 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 24);
        v17 = *(a1 + 96);
        *buf = 68289795;
        v33 = 0;
        v34 = 2082;
        v35 = "";
        v36 = 2113;
        v37 = a3;
        v38 = 2113;
        v39 = v16;
        v40 = 1025;
        LODWORD(v41) = v17;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Protocol error on #filedownload task completion, Response:%{private, location:escape_only}@, LocalFile:%{private, location:escape_only}@, ResultCode:%{private}d}", buf, 0x2Cu);
        if (qword_1025D4860 != -1)
        {
          sub_1018AD918();
        }
      }

      v18 = qword_1025D4868;
      if (os_signpost_enabled(qword_1025D4868))
      {
        v19 = *(a1 + 24);
        v20 = *(a1 + 96);
        *buf = 68289795;
        v33 = 0;
        v34 = 2082;
        v35 = "";
        v36 = 2113;
        v37 = a3;
        v38 = 2113;
        v39 = v19;
        v40 = 1025;
        LODWORD(v41) = v20;
        _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Protocol error on #filedownload task completion", "{msg%{public}.0s:Protocol error on #filedownload task completion, Response:%{private, location:escape_only}@, LocalFile:%{private, location:escape_only}@, ResultCode:%{private}d}", buf, 0x2Cu);
      }
    }

    else
    {
      if (qword_1025D4860 != -1)
      {
        sub_1018AD904();
      }

      v21 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 24);
        *buf = 68289539;
        v33 = 0;
        v34 = 2082;
        v35 = "";
        v36 = 2113;
        v37 = a3;
        v38 = 2113;
        v39 = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#filedownload task completed successfully, Response:%{private, location:escape_only}@, LocalFile:%{private, location:escape_only}@}", buf, 0x26u);
      }

      if (!-[NSFileManager replaceItemAtURL:withItemAtURL:backupItemName:options:resultingItemURL:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager", 0), "replaceItemAtURL:withItemAtURL:backupItemName:options:resultingItemURL:error:", *(a1 + 24), a2, 0, 1, &v30, &v31) || (v23 = [*(a1 + 24) absoluteString], (objc_msgSend(v23, "isEqual:", objc_msgSend(v30, "absoluteString")) & 1) == 0))
      {
        if (qword_1025D4860 != -1)
        {
          sub_1018AD918();
        }

        v24 = qword_1025D4868;
        if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_ERROR))
        {
          v25 = *(a1 + 24);
          *buf = 68290307;
          v33 = 0;
          v34 = 2082;
          v35 = "";
          v36 = 2113;
          v37 = a3;
          v38 = 2113;
          v39 = v25;
          v40 = 2113;
          v41 = v30;
          v42 = 2113;
          v43 = a2;
          v44 = 2113;
          v45 = v31;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Error writing file to disk for completed #filedownload task, Response:%{private, location:escape_only}@, LocalFile:%{private, location:escape_only}@, LostAndFile:%{private, location:escape_only}@, TempFile:%{private, location:escape_only}@, Error:%{private, location:escape_only}@}", buf, 0x44u);
          if (qword_1025D4860 != -1)
          {
            sub_1018AD918();
          }
        }

        v26 = qword_1025D4868;
        if (os_signpost_enabled(qword_1025D4868))
        {
          v27 = *(a1 + 24);
          *buf = 68290307;
          v33 = 0;
          v34 = 2082;
          v35 = "";
          v36 = 2113;
          v37 = a3;
          v38 = 2113;
          v39 = v27;
          v40 = 2113;
          v41 = v30;
          v42 = 2113;
          v43 = a2;
          v44 = 2113;
          v45 = v31;
          _os_signpost_emit_with_name_impl(dword_100000000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Error writing file to disk for completed #filedownload task", "{msg%{public}.0s:Error writing file to disk for completed #filedownload task, Response:%{private, location:escape_only}@, LocalFile:%{private, location:escape_only}@, LostAndFile:%{private, location:escape_only}@, TempFile:%{private, location:escape_only}@, Error:%{private, location:escape_only}@}", buf, 0x44u);
        }

        v28 = [v31 code];
        v29 = 512;
        if (v28)
        {
          v29 = v28;
        }

        *(a1 + 96) = v29;
      }
    }
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    v12(a1, *(a1 + 96) == 0, *(a1 + 72));
  }

  sub_1005053B8(a1);
}

void sub_100505A58(uint64_t a1, double a2)
{
  if (*(a1 + 16))
  {
    if (qword_1025D4860 != -1)
    {
      sub_1018AD904();
    }

    v3 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 16) originalRequest];
      v5[0] = 68289283;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2113;
      v9 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cancelling task for #filedownload request, OriginalRequest:%{private, location:escape_only}@}", v5, 0x1Cu);
    }
  }

  sub_1005053B8(a1);
}

uint64_t sub_100505B48(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 statusCode];
  if (v2 <= 409)
  {
    if (v2 <= 403)
    {
      if (v2 != 200)
      {
        if (v2 != 401)
        {
          if (v2 == 403)
          {
            return -1102;
          }

          return -1;
        }

        return -1013;
      }

      return 0;
    }

    if (v2 != 404)
    {
      if (v2 == 407)
      {
        return -1013;
      }

      if (v2 == 408)
      {
        return -1001;
      }

      return -1;
    }

    return -1100;
  }

  if (v2 > 500)
  {
    switch(v2)
    {
      case 501:
        return -1002;
      case 503:
        return -1004;
      case 504:
        return -1001;
      default:
        return -1;
    }
  }

  else
  {
    if (v2 == 410)
    {
      return -1100;
    }

    if (v2 != 429)
    {
      if (v2 == 500)
      {
        return -1011;
      }

      return -1;
    }

    return -1020;
  }
}

void sub_100505D38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245B058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100505DE4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 52) & 2) == 0)
  {
    return 0;
  }

  v2 = *(a2 + 40);
  if (!v2)
  {
    v2 = *(qword_102639980 + 40);
  }

  if ((*(v2 + 493) & 4) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 344);
  if (!v4)
  {
    v4 = *(qword_1026372F8 + 344);
  }

  return *(v4 + 36) & 1;
}

void sub_100505E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018AD940();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 68289026;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRayTracingTileHeaderDecoder,logDecodedTileHeader}", &v22, 0x12u);
  }

  v6 = *(a2 + 40);
  if (!v6)
  {
    v6 = *(qword_102639980 + 40);
  }

  v7 = *(v6 + 344);
  if (!v7)
  {
    v7 = *(qword_1026372F8 + 344);
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    v8 = *(qword_102639C88 + 8);
  }

  v9 = *(v8 + 48);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (!v10)
    {
      v10 = *(qword_102639C98 + 8);
    }

    v11 = *(v10 + 20) & 1;
    if ((~v9 & 0x3E) == 0 && v11 != 0)
    {
      v13 = *(v8 + 24);
      *(a3 + 80) = v13;
      *(a3 + 36) = *(v8 + 40);
      LODWORD(v13) = *(v8 + 16);
      *(a3 + 72) = v13;
      v14 = *(v8 + 8);
      if (!v14)
      {
        v14 = *(qword_102639C98 + 8);
      }

      *(a3 + 56) = *(v14 + 8);
      *(a3 + 44) = *(v8 + 20);
      if (qword_1025D4620 != -1)
      {
        sub_1018AD954();
      }

      v15 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a3 + 56);
        v17 = *(a3 + 44);
        v18 = *(a3 + 36);
        v19 = *(a3 + 72);
        v20 = *(a3 + 80);
        v21 = *(a3 + 88);
        v22 = 68290563;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2050;
        v27 = v16;
        v28 = 1026;
        v29 = v17;
        v30 = 1026;
        v31 = v18;
        v32 = 1026;
        v33 = v19;
        v34 = 2049;
        v35 = v20;
        v36 = 2049;
        v37 = v21;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRayTracingTileHeaderDecoder,tileHeaderFields, creation_timestamp_s:%{public}f, tile_content_iod_number:%{public}u, tile_format_version:%{public}u, expiration_age_s:%{public}u, tile_south_west_corner_latitude_deg:%{private}f, tile_south_west_corner_longitude_deg:%{private}f}", &v22, 0x42u);
      }
    }
  }
}

uint64_t sub_1005060A4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018AD940();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    *buf = 68289282;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRayTracingTileHeaderDecoder,readFirstProtobuf, tileFile:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  memset(&__p, 0, sizeof(__p));
  if (!sub_1016B0694(a2, &__p))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018AD97C();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "#RTTMA,CLRayTracingTileHeaderDecoder,error,failed to create/open protobuf input stream", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_22;
    }

    sub_1018AD9A4(buf);
    v13 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "#RTTMA,CLRayTracingTileHeaderDecoder,error,failed to create/open protobuf input stream", &v13, 2);
    v9 = v8;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRayTracingTileHeaderDecoder::readFirstProtobuf(const std::string &, ::CLP::LogEntry::LogEntry &) const", "%s\n", v8);
    goto LABEL_27;
  }

  if (wireless_diagnostics::google::protobuf::MessageLite::ParseFromString())
  {
    v6 = 1;
    goto LABEL_23;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018AD97C();
  }

  v10 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#RTTMA,CLRayTracingTileHeaderDecoder,error,cannot ParseFromString()", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AD9A4(buf);
    v13 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "#RTTMA,CLRayTracingTileHeaderDecoder,error,cannot ParseFromString()", &v13, 2);
    v9 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRayTracingTileHeaderDecoder::readFirstProtobuf(const std::string &, ::CLP::LogEntry::LogEntry &) const", "%s\n", v12);
LABEL_27:
    if (v9 != buf)
    {
      free(v9);
    }
  }

LABEL_22:
  v6 = 0;
LABEL_23:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1005063BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005063E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018AD940();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 68289026;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRayTracingTileHeaderDecoder,decodeHeader}", v11, 0x12u);
  }

  v6 = sub_10000AED0();
  v7 = sub_1005060A4(v6, a2, v11);
  if ((v7 & 1) != 0 && (v8 = sub_100505DE4(v7, v11), v8))
  {
    sub_100505E38(v8, v11, a3);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  sub_10000CE1C(v11);
  return v9;
}

uint64_t sub_100506524(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018AD940();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 68289026;
    v16[1] = 0;
    v17 = 2082;
    v18 = "";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRayTracingTileHeaderDecoder,tileIod}", v16, 0x12u);
  }

  v6 = sub_10000AED0();
  v7 = sub_1005060A4(v6, a2, v16);
  if ((v7 & 1) == 0 || !sub_100505DE4(v7, v16))
  {
    goto LABEL_14;
  }

  v8 = v19;
  v9 = v19;
  if (!v19)
  {
    v9 = *(qword_102639980 + 40);
  }

  v10 = *(v9 + 344);
  if (!v10)
  {
    v10 = *(qword_1026372F8 + 344);
  }

  v11 = *(v10 + 8);
  if (!v11)
  {
    v11 = *(qword_102639C88 + 8);
  }

  if ((*(v11 + 48) & 4) != 0)
  {
    if (!v19)
    {
      v8 = *(qword_102639980 + 40);
    }

    v14 = *(v8 + 344);
    if (!v14)
    {
      v14 = *(qword_1026372F8 + 344);
    }

    v15 = *(v14 + 8);
    if (!v15)
    {
      v15 = *(qword_102639C88 + 8);
    }

    *a3 = *(v15 + 20);
    v12 = 1;
  }

  else
  {
LABEL_14:
    v12 = 0;
  }

  sub_10000CE1C(v16);
  return v12;
}

uint64_t *sub_100506754(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  if ((sub_100023B30(a1, a2) & 0x2000000000000000) != 0)
  {
    if (!*a1)
    {
      operator new();
    }

    if (qword_1025D41F0 != -1)
    {
      sub_1018AD9E8();
    }

    v6 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Setup for CLFlickGestureAnalytics complete", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018AD9FC(buf);
      v9[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D41F8, 1, "Setup for CLFlickGestureAnalytics complete", v9, 2);
      v5 = v8;
      sub_100152C7C("Generic", 1, 0, 2, "CLFlickGestureAnalytics::CLFlickGestureAnalytics()", "%s\n", v8);
LABEL_17:
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  else
  {
    if (qword_1025D41F0 != -1)
    {
      sub_1018AD9E8();
    }

    v3 = qword_1025D41F8;
    if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "FlickGestureAnalytics not supported on this device.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018AD9FC(buf);
      v9[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D41F8, 1, "FlickGestureAnalytics not supported on this device.", v9, 2);
      v5 = v4;
      sub_100152C7C("Generic", 1, 0, 2, "CLFlickGestureAnalytics::CLFlickGestureAnalytics()", "%s\n", v4);
      goto LABEL_17;
    }
  }

  return a1;
}

void sub_100506A54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100506AE0(uint64_t *a1, uint64_t a2)
{
  if (*a1 && (v3 = sub_100C5E83C(a1, a2), sub_10095D9F8(v3, 1, *a1), v4 = *a1, *a1 = 0, v4))
  {
    (*(*v4 + 8))(v4);
    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100506B8C(uint64_t a1, _BYTE *a2)
{
  if (qword_1025D41F0 != -1)
  {
    sub_1018AD9E8();
  }

  v3 = qword_1025D41F8;
  if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "Analytics Received for Flick Gesture", v7, 2u);
  }

  v4 = sub_10000A100(121, 2);
  if (v4)
  {
    sub_1018ADA40();
  }

  if (*a2 == 1)
  {
    return sub_100506C40(v5, v4, a2);
  }

  else
  {
    return sub_10050710C(v5, v4, a2);
  }
}

uint64_t sub_100506C40(double a1, uint64_t a2, uint64_t a3)
{
  v41[0] = @"gesturesDetected";
  v41[1] = @"possibleGesturesDetected";
  v42[0] = &off_10254E9F0;
  v42[1] = &off_10254E9F0;
  v41[2] = @"gestureLengthSeconds";
  LODWORD(a1) = *(a3 + 4);
  v42[2] = [NSNumber numberWithFloat:a1];
  v41[3] = @"zRotxRotRatio";
  LODWORD(v4) = *(a3 + 20);
  v42[3] = [NSNumber numberWithFloat:v4];
  v41[4] = @"pauseBtwPeaksToGestureDurationRatio";
  LODWORD(v5) = *(a3 + 32);
  v42[4] = [NSNumber numberWithFloat:v5];
  v41[5] = @"absPosPeakHeightRps";
  LODWORD(v6) = *(a3 + 48);
  v42[5] = [NSNumber numberWithFloat:v6];
  v41[6] = @"absNegPeakHeightRps";
  LODWORD(v7) = *(a3 + 44);
  v42[6] = [NSNumber numberWithFloat:v7];
  v41[7] = @"negPeakWidthSeconds";
  LODWORD(v8) = *(a3 + 52);
  v42[7] = [NSNumber numberWithFloat:v8];
  v41[8] = @"posPeakWidthSeconds";
  LODWORD(v9) = *(a3 + 56);
  v42[8] = [NSNumber numberWithFloat:v9];
  v41[9] = @"isWristLooselyLevel";
  v42[9] = [NSNumber numberWithInt:*(a3 + 8)];
  v41[10] = @"detectionConfidence";
  LODWORD(v10) = *(a3 + 60);
  v42[10] = [NSNumber numberWithFloat:v10];
  v41[11] = @"falsePositiveProbability";
  LODWORD(v11) = *(a3 + 64);
  v42[11] = [NSNumber numberWithFloat:v11];
  v41[12] = @"wristAngleToHorizontalDegrees";
  LODWORD(v12) = *(a3 + 12);
  v42[12] = [NSNumber numberWithFloat:v12];
  v41[13] = @"absWristAngleDiffBtwPeaksDegrees";
  LODWORD(v13) = *(a3 + 16);
  v42[13] = [NSNumber numberWithFloat:v13];
  v41[14] = @"screenTiltAtEndDegrees";
  LODWORD(v14) = *(a3 + 24);
  v42[14] = [NSNumber numberWithFloat:v14];
  v41[15] = @"screenTiltAtStartDegrees";
  LODWORD(v15) = *(a3 + 28);
  v42[15] = [NSNumber numberWithFloat:v15];
  v41[16] = @"absNegPeakTotalAngleDegrees";
  LODWORD(v16) = *(a3 + 36);
  v42[16] = [NSNumber numberWithFloat:v16];
  v41[17] = @"absPosPeakTotalAngleDegrees";
  LODWORD(v17) = *(a3 + 40);
  v42[17] = [NSNumber numberWithFloat:v17];
  v41[18] = @"maxGestureLengthSettings";
  v42[18] = [NSNumber numberWithInt:*(a3 + 68)];
  v18 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:19];
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18);
  if (v19)
  {
    v20 = v19;
    v21 = MEMORY[0];
    do
    {
      v22 = 0;
      do
      {
        if (MEMORY[0] != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(8 * v22);
        if (qword_1025D41F0 != -1)
        {
          sub_1018ADB54();
        }

        v24 = qword_1025D41F8;
        if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [(NSDictionary *)v18 objectForKeyedSubscript:v23];
          *buf = 138478083;
          v38 = v23;
          v39 = 2113;
          v40 = v25;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "Sending CA event field %{private}@ : %{private}@", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D41F0 != -1)
          {
            sub_1018ADB54();
          }

          v26 = qword_1025D41F8;
          v27 = [(NSDictionary *)v18 objectForKeyedSubscript:v23];
          v33 = 138478083;
          v34 = v23;
          v35 = 2113;
          v36 = v27;
          LODWORD(v32) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v26, 0, "Sending CA event field %{private}@ : %{private}@", &v33, v32);
          v29 = v28;
          sub_100152C7C("Generic", 1, 0, 2, "void CLFlickGestureAnalytics::onGestureDetected(const CLFlickGestureNotifier::FlickAnalytics *)", "%s\n", v28);
          if (v29 != buf)
          {
            free(v29);
          }
        }

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18);
      v20 = v30;
    }

    while (v30);
  }

  return AnalyticsSendEventLazy();
}

uint64_t sub_10050710C(double a1, uint64_t a2, uint64_t a3)
{
  v41[0] = @"gesturesRejectedAll";
  v41[1] = @"possibleGesturesDetected";
  v42[0] = &off_10254E9F0;
  v42[1] = &off_10254E9F0;
  v41[2] = @"zRotxRotRatio";
  LODWORD(a1) = *(a3 + 20);
  v42[2] = [NSNumber numberWithFloat:a1];
  v41[3] = @"pauseBtwPeaksToGestureDurationRatio";
  LODWORD(v4) = *(a3 + 32);
  v42[3] = [NSNumber numberWithFloat:v4];
  v41[4] = @"absPosPeakHeightRps";
  LODWORD(v5) = *(a3 + 48);
  v42[4] = [NSNumber numberWithFloat:v5];
  v41[5] = @"absNegPeakHeightRps";
  LODWORD(v6) = *(a3 + 44);
  v42[5] = [NSNumber numberWithFloat:v6];
  v41[6] = @"negPeakWidthSeconds";
  LODWORD(v7) = *(a3 + 52);
  v42[6] = [NSNumber numberWithFloat:v7];
  v41[7] = @"posPeakWidthSeconds";
  LODWORD(v8) = *(a3 + 56);
  v42[7] = [NSNumber numberWithFloat:v8];
  v41[8] = @"isWristLooselyLevel";
  v42[8] = [NSNumber numberWithInt:*(a3 + 8)];
  v41[9] = @"falsePositiveProbability";
  LODWORD(v9) = *(a3 + 64);
  v42[9] = [NSNumber numberWithFloat:v9];
  v41[10] = @"wristAngleToHorizontalDegrees";
  LODWORD(v10) = *(a3 + 12);
  v42[10] = [NSNumber numberWithFloat:v10];
  v41[11] = @"absWristAngleDiffBtwPeaksDegrees";
  LODWORD(v11) = *(a3 + 16);
  v42[11] = [NSNumber numberWithFloat:v11];
  v41[12] = @"screenTiltAtEndDegrees";
  LODWORD(v12) = *(a3 + 24);
  v42[12] = [NSNumber numberWithFloat:v12];
  v41[13] = @"screenTiltAtStartDegrees";
  LODWORD(v13) = *(a3 + 28);
  v42[13] = [NSNumber numberWithFloat:v13];
  v41[14] = @"absNegPeakTotalAngleDegrees";
  LODWORD(v14) = *(a3 + 36);
  v42[14] = [NSNumber numberWithFloat:v14];
  v41[15] = @"absPosPeakTotalAngleDegrees";
  LODWORD(v15) = *(a3 + 40);
  v42[15] = [NSNumber numberWithFloat:v15];
  v41[16] = @"gestureRejectedBaseDetectorConfidence";
  LODWORD(v16) = *(a3 + 60);
  v42[16] = [NSNumber numberWithFloat:v16];
  v41[17] = @"gestureRejectedGestureLengthSeconds";
  LODWORD(v17) = *(a3 + 4);
  v42[17] = [NSNumber numberWithFloat:v17];
  v41[18] = @"maxGestureLengthSettings";
  v42[18] = [NSNumber numberWithInt:*(a3 + 68)];
  v18 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:19];
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18);
  if (v19)
  {
    v20 = v19;
    v21 = MEMORY[0];
    do
    {
      v22 = 0;
      do
      {
        if (MEMORY[0] != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(8 * v22);
        if (qword_1025D41F0 != -1)
        {
          sub_1018ADB54();
        }

        v24 = qword_1025D41F8;
        if (os_log_type_enabled(qword_1025D41F8, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [(NSDictionary *)v18 objectForKeyedSubscript:v23];
          *buf = 138478083;
          v38 = v23;
          v39 = 2113;
          v40 = v25;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "Sending CA event field %{private}@ : %{private}@", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D41F0 != -1)
          {
            sub_1018ADB54();
          }

          v26 = qword_1025D41F8;
          v27 = [(NSDictionary *)v18 objectForKeyedSubscript:v23];
          v33 = 138478083;
          v34 = v23;
          v35 = 2113;
          v36 = v27;
          LODWORD(v32) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v26, 0, "Sending CA event field %{private}@ : %{private}@", &v33, v32);
          v29 = v28;
          sub_100152C7C("Generic", 1, 0, 2, "void CLFlickGestureAnalytics::onGestureRejected(const CLFlickGestureNotifier::FlickAnalytics *)", "%s\n", v28);
          if (v29 != buf)
          {
            free(v29);
          }
        }

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18);
      v20 = v30;
    }

    while (v30);
  }

  return AnalyticsSendEventLazy();
}

void sub_100507618(uint64_t a1, uint64_t a2)
{
  sub_100DE295C(a1, 1);
  *v3 = off_10245B198;
  v3[8] = a2;
}

uint64_t sub_100507668(uint64_t a1, double a2)
{
  v3 = a2;
  result = *(a1 + 64);
  if (result)
  {
    return (*(*result + 16))(result, &v3);
  }

  return result;
}

void *sub_1005076E0(void *a1)
{
  *a1 = off_10245B1F0;
  sub_1000F8B58(a1 + 2);
  return a1;
}

void sub_100507724(void *a1)
{
  *a1 = off_10245B1F0;
  sub_1000F8B58(a1 + 2);

  operator delete();
}

id sub_1005082F8(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  return [a4 providerOnVehicleStateNotification:&v5];
}

void sub_100508D5C(id a1, BOOL a2, NSError *a3)
{
  if (a2)
  {
    if (qword_1025D4330 != -1)
    {
      sub_1018AE900();
    }

    v3 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Fall event successfully pushed to HKHealthStore", &v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018AECFC();
    }
  }

  else
  {
    if (qword_1025D4330 != -1)
    {
      sub_1018AE900();
    }

    v5 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "HKHealthStore, saveObjects failed on, %@", &v6, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AEBEC(a3);
    }
  }
}

uint64_t sub_100508ECC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v10 = a4[1];
  v20 = *a4;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a5[1];
  v18 = *a5;
  v19 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a6[1];
  v16 = *a6;
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *buf = xmmword_102656878;
  *&buf[16] = unk_102656888;
  v23 = xmmword_102656898;
  sub_100C72EC8(a1, a2, 13, &v20, &v18, &v16, a8, a7, buf);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  *a1 = off_10245B280;
  *(a1 + 352) = *a3;
  v13 = a3[1];
  *(a1 + 360) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 400) = 0;
  *(a1 + 392) = 0;
  if (qword_1025D47D0 != -1)
  {
    sub_1018AEDEC();
  }

  v14 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = 13;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:construction, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
  }

  *(a1 + 368) = [*(a1 + 72) classifyingStoreForHarvesterWithSubArchiving:13 itemCountThresholdForAutoCleanUp:500];
  return a1;
}

uint64_t sub_100509118(uint64_t a1)
{
  *a1 = off_10245B280;

  v2 = *(a1 + 360);
  if (v2)
  {
    sub_100008080(v2);
  }

  return sub_100401ED8(a1);
}

void sub_100509184(uint64_t a1)
{
  sub_100509118(a1);

  operator delete();
}

uint64_t sub_1005091C0()
{
  if ((atomic_load_explicit(&qword_1026568B0, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_1026568B0);
    if (v1)
    {
      byte_1026568A8 = sub_10071CBEC(v1);
      __cxa_guard_release(&qword_1026568B0);
    }
  }

  return byte_1026568A8;
}

uint64_t sub_100509234(uint64_t a1, uint64_t a2)
{
  sub_10004FD18();
  v4 = (a1 + 280);
  v5 = unk_102656888;
  *v4 = xmmword_102656878;
  v4[1] = v5;
  *(v4 + 25) = unk_102656891;
  if (sub_100185ADC(a2, "Ionosphere", v11, 0xFFFFFFFFLL))
  {
    sub_1010FCEEC(v4, v11);
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018AEDEC();
  }

  v6 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1010FCB7C(__p);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2050;
    v17 = 13;
    v18 = 2081;
    v19 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:harvest-apply-rules, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, rules:%{private, location:escape_only}s}", buf, 0x26u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_100005DA4();
}

void sub_1005093CC(uint64_t a1)
{
  v2 = objc_alloc_init(CLPIonosphereCollectionRequest);
  [v2 setMeta:{+[CLPMeta meta](CLPMeta, "meta")}];
  v14[0] = [*(a1 + 368) homeArchive];
  v14[1] = [*(a1 + 368) workArchive];
  v14[2] = [*(a1 + 368) mainArchive];
  v3 = [NSArray arrayWithObjects:v14 count:3];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3);
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 overwritePrimaryObject:v2];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100509588;
        v9[3] = &unk_10245B358;
        v9[4] = v8;
        v9[5] = a1;
        [v8 iterateSubArchivesWithHandler:v9];
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3);
    }

    while (v5);
  }
}

id sub_100509588(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if ([a2 count])
  {
    v5 = [a2 mappedDataByDestructivelyCombiningPrimaryAndSecondaryData];
    if (v5)
    {
      v6 = [[CLHUploadRequest alloc] initWithPayload:v5];
      -[CLHUploadRequest setEndpoint:](v6, "setEndpoint:", [objc_msgSend(*(v4 + 80) "endpointSelector")]);
      [*(v4 + 80) submitRequest:v6];
    }
  }

  result = [a2 count];
  if (!result)
  {
    v8 = *(a1 + 32);

    return [v8 deleteSubArchiveIfInactive:a2];
  }

  return result;
}

uint64_t sub_100509648(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_1000183C0(a1);
  (*(*v2 + 24))(v2, v3, 2);
  v4 = *(a1 + 56);
  v5 = sub_1000183C0(a1);
  (*(*v4 + 24))(v4, v5, 3);
  return 1;
}

uint64_t sub_1005096E0(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_1000183C0(a1);
  (*(*v2 + 32))(v2, v3, 2);
  v4 = *(a1 + 56);
  v5 = sub_1000183C0(a1);
  v6 = *(*v4 + 32);

  return v6(v4, v5, 3);
}

id sub_100509788(uint64_t a1)
{
  v2 = (*(**(a1 + 56) + 64))(*(a1 + 56));
  v3 = v2 - (*(*a1 + 192))(a1);
  v4 = *(a1 + 368);

  return [v4 pruneSecondaryDataOlderThan:v3];
}

void sub_100509824(uint64_t a1, int a2, int a3, CLMotionActivity *this)
{
  if (CLMotionActivity::isStatic(this))
  {
    v6 = 0;
  }

  else
  {
    v6 = CLMotionActivity::isUnclassifiedMoving(this) ^ 1;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018AEE14();
  }

  v7 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    type = this->type;
    v9 = *(a1 + 400);
    v10[0] = 68290051;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2050;
    v14 = 13;
    v15 = 2049;
    v16 = type;
    v17 = 1025;
    v18 = v9;
    v19 = 1025;
    v20 = v6;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Received motion state, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, data.activity.type:%{private}lu, current fIsMoving:%{private}hhd, new isMoving:%{private}hhd}", v10, 0x32u);
  }

  *(a1 + 400) = v6;
}

void sub_100509958(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = sub_1000081AC();
  v7 = *(a1 + 376);
  if (v7 != 0.0)
  {
    v8 = v6 - v7;
    v9 = sub_100EFC5B4();
    if (v8 < sub_100BCA9B4(v9))
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018AEE14();
      }

      v10 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 376);
        v12 = sub_100EFC5B4();
        *buf = 68289795;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = v6;
        *&buf[28] = 2049;
        *&buf[30] = v11;
        *&buf[38] = 2049;
        *&buf[40] = sub_100BCA9B4(v12);
        v13 = "{msg%{public}.0s:Ionosphere Harvest: Skipping, required interval has not passed:, Current:%{public}f, LastIonosphereCollection:%{private}f, CollectionInterval:%{private}f}";
        v14 = v10;
        v15 = OS_LOG_TYPE_DEBUG;
        v16 = 48;
LABEL_21:
        _os_log_impl(dword_100000000, v14, v15, v13, buf, v16);
        return;
      }

      return;
    }
  }

  if ((*(a1 + 400) & 1) == 0)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018AEE14();
    }

    v20 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = 13;
    v13 = "{msg%{public}.0s:Skipping, motion state is static or unclassified moving., subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
    v14 = v20;
    v15 = OS_LOG_TYPE_DEBUG;
    goto LABEL_20;
  }

  v56 = 0;
  v57.var0 = 0;
  v57.var1 = 0.0;
  CNTimeSpan::SetTimeSpan(&v57, 0, 0.0);
  v54 = vdupq_n_s64(0x7FF8000000000000uLL);
  v58 = v54;
  v60.var0 = 0;
  v60.var1 = 0.0;
  v59 = 0x7FF8000000000000;
  CNTimeSpan::SetTimeSpan(&v60, 0, 0.0);
  v61 = v54;
  v62 = v54;
  v63 = v54;
  v64 = v54;
  v65 = v54;
  v66 = v54;
  v67 = v54;
  if (!(*(**(a1 + 352) + 16))(*(a1 + 352), &v56) || v56 != 1 || HIBYTE(v56) != 1)
  {
    return;
  }

  v17 = v60.var1 + v60.var0;
  if (v17 - *(a1 + 384) >= 1.0)
  {
    v89 = v58;
    v90 = v59;
    if (cnnavigation::ECEFToLLA())
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018AEDEC();
      }

      v21 = qword_1025D47D8;
      if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = 13;
      v13 = "{msg%{public}.0s:ECEF to LLA conversion failed., subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
    }

    else
    {
      v22 = objc_opt_new();
      [v22 setLatitudeDeg:v91 * 57.2957795];
      [v22 setLongitudeDeg:v92 * 57.2957795];
      [v22 setGeodeticAltitudeM:v93];
      v23 = v57.var1 + v57.var0;
      if (COERCE__INT64(fabs(v23)) < 0x7FF0000000000000)
      {
        v52 = a4;
        [v22 setEstimatorAgeSec:v57.var1 + v57.var0];
        [v22 setApplicableTimeSec:v17];
        [v22 setHmaxKm:*v61.i64];
        [v22 setVtec0:*&v61.i64[1]];
        [v22 setD2vtecDphi2:*v64.i64];
        [v22 setD2vtecDtheta2:*v63.i64];
        [v22 setD2vtecDthetaphi:*&v63.i64[1]];
        [v22 setDvtecDphi:*&v62.i64[1]];
        [v22 setDvtecDtheta:*v62.i64];
        [v22 setPhmaxHmaxKm2:*&v64.i64[1]];
        [v22 setPvtec0Vtec0:*v65.i64];
        [v22 setPdvtecDthetaDvtecDtheta:*&v65.i64[1]];
        [v22 setPdvtecDphiDvtecDphi:*v66.i64];
        [v22 setPd2vtecDtheta2D2vtecDtheta2:*&v66.i64[1]];
        [v22 setPd2vtecDthetadphiD2vtecDthetadphi:*v67.i64];
        v51 = v22;
        [v22 setPd2vtecDphi2D2vtecDphi2:*&v67.i64[1]];
        v88[0] = [*(a1 + 368) homeArchive];
        v88[1] = [*(a1 + 368) workArchive];
        v88[2] = [*(a1 + 368) mainArchive];
        v24 = [NSArray arrayWithObjects:v88 count:3];
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24);
        if (v25)
        {
          v26 = v25;
          v27 = MEMORY[0];
          do
          {
            v28 = 0;
            do
            {
              if (MEMORY[0] != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(8 * v28);
              v30 = [v29 count];
              v31 = sub_100EFC5B4();
              if (v30 >= sub_100187E48(v31) || v30 && v23 < *(a1 + 392))
              {
                if (qword_1025D47D0 != -1)
                {
                  sub_1018AEDEC();
                }

                v32 = qword_1025D47D8;
                if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
                {
                  v33 = *(a1 + 392);
                  *buf = 68289794;
                  *&buf[4] = 0;
                  *&buf[8] = 2082;
                  *&buf[10] = "";
                  *&buf[18] = 2050;
                  *&buf[20] = v30;
                  *&buf[28] = 2050;
                  *&buf[30] = v23;
                  *&buf[38] = 2050;
                  *&buf[40] = v33;
                  _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Ionosphere Harvest: rotating subarchive, archiveCount:%{public}lu, estimatorAgeSec:%{public}f, fLastEstimatorAgeSec:%{public}f}", buf, 0x30u);
                }

                [v29 generateNewSubArchive];
              }

              v28 = v28 + 1;
            }

            while (v26 != v28);
            v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24);
          }

          while (v26);
        }

        v34 = [CLPLocation alloc];
        v35 = v52[7];
        *&v70[16] = v52[6];
        *&v70[32] = v35;
        *v71 = v52[8];
        *&v71[12] = *(v52 + 140);
        v36 = v52[3];
        *&buf[32] = v52[2];
        *v69 = v36;
        v37 = v52[5];
        *&v69[16] = v52[4];
        *v70 = v37;
        v38 = v52[1];
        *buf = *v52;
        *&buf[16] = v38;
        [*(a1 + 368) writeSecondaryObject:v51 collectedAt:objc_msgSend(v34 toField:{"initWithDaemonLocation:", buf), 2}];
        *(a1 + 376) = v6;
        *(a1 + 384) = v17;
        *(a1 + 392) = v23;
        if (qword_1025D47D0 != -1)
        {
          sub_1018AEDEC();
        }

        v39 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v40 = v58;
          v41 = v59;
          v42 = v61;
          v43 = v64.i64[0];
          v44 = v63.i64[0];
          v53 = v62.i64[1];
          v55 = v63.i64[1];
          v50 = v62.i64[0];
          [v51 latitudeDeg];
          v46 = v45;
          [v51 longitudeDeg];
          v48 = v47;
          [v51 geodeticAltitudeM];
          *buf = 68294659;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2049;
          *&buf[20] = v17;
          *&buf[28] = 2049;
          *&buf[30] = v40.i64[0];
          *&buf[38] = 2049;
          *&buf[40] = v40.i64[1];
          *v69 = 2049;
          *&v69[2] = v41;
          *&v69[10] = 2049;
          *&v69[12] = v42.i64[0];
          *&v69[20] = 2049;
          *&v69[22] = v42.i64[1];
          *&v69[30] = 2049;
          *v70 = v43;
          *&v70[8] = 2049;
          *&v70[10] = v44;
          *&v70[18] = 2049;
          *&v70[20] = v55;
          *&v70[28] = 2049;
          *&v70[30] = v53;
          *&v70[38] = 2049;
          *&v70[40] = v50;
          *v71 = 2049;
          *&v71[2] = v46;
          *&v71[10] = 2049;
          *&v71[12] = v48;
          *&v71[20] = 2049;
          *&v71[22] = v49;
          v72 = 2049;
          v73 = v23;
          v74 = 2049;
          v75 = v64.i64[1];
          v76 = 2049;
          v77 = v65.i64[0];
          v78 = 2049;
          v79 = v65.i64[1];
          v80 = 2049;
          v81 = v66.i64[0];
          v82 = 2049;
          v83 = v66.i64[1];
          v84 = 2049;
          v85 = v67.i64[0];
          v86 = 2049;
          v87 = v67.i64[1];
          v13 = "{msg%{public}.0s:Harvested IonosphereParameters:, applicable_time:%{private}f, applicable_position_x_ecef_:%{private}f, applicable_position_y_ecef_:%{private}f, applicable_position_z_ecef_:%{private}f, hmax_:%{private}f, vtec0_:%{private}f, d2vtec_dphi2_:%{private}f, d2vtec_dtheta2_:%{private}f, d2vtec_dthetadphi_:%{private}f, dvtec_dphi_:%{private}f, dvtec_dtheta_:%{private}f, latitudeDeg:%{private}f, longitudeDeg:%{private}f, altitudeM:%{private}f, estimator_time_duration:%{private}f, phmax_hmax_:%{private}f, pvtec0_vtec0_:%{private}f, pdvtec_dtheta_dvtec_dtheta_:%{private}f, pdvtec_dphi_dvtec_dphi_:%{private}f, pd2vtec_dtheta2_d2vtec_dtheta2_:%{private}f, pd2vtec_dthetadphi_d2vtec_dthetadphi_:%{private}f, pd2vtec_dphi2_d2vtec_dphi2_:%{private}f}";
          v14 = v39;
          v15 = OS_LOG_TYPE_DEBUG;
          v16 = 238;
          goto LABEL_21;
        }

        return;
      }

      if (qword_1025D47D0 != -1)
      {
        sub_1018AEDEC();
      }

      v21 = qword_1025D47D8;
      if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = 13;
      v13 = "{msg%{public}.0s:parameter_estimation_time_duration_ is not a valid value, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
    }

    v14 = v21;
    v15 = OS_LOG_TYPE_DEFAULT;
LABEL_20:
    v16 = 28;
    goto LABEL_21;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018AEDEC();
  }

  v18 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 384);
    *buf = 68289539;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2049;
    *&buf[20] = v17;
    *&buf[28] = 2049;
    *&buf[30] = v19;
    v13 = "{msg%{public}.0s:Ionosphere Harvest: Already harvested at time:, applicable_time:%{private}f, LastApplicableTimeHarvested:%{private}f}";
    v14 = v18;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 38;
    goto LABEL_21;
  }
}

unsigned __int16 *sub_10050A2FC(uint64_t a1, uint64_t a2)
{
  if (qword_1025D45A0 != -1)
  {
    sub_1018AEE28();
  }

  v4 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v15 = 134218496;
    v16 = v5;
    v17 = 1024;
    *v18 = v6;
    *&v18[4] = 2048;
    *&v18[6] = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "onSteps,startTime,%f,count,%d,distance,%f", &v15, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AEE3C(a2);
  }

  if (*(a1 + 66))
  {
    v8 = (*(*a1 + 56))(a1);
    Current = CFAbsoluteTimeGetCurrent();
    v10 = *a2;
    if (vabdd_f64(Current, *a2) > v8)
    {
      if (qword_1025D45A0 != -1)
      {
        sub_1018AEF64();
      }

      v11 = Current - v10;
      v12 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315650;
        v16 = 0x8000000101C7C62DLL & 0x7FFFFFFFFFFFFFFFLL;
        v17 = 2048;
        *v18 = v10;
        *&v18[8] = 2048;
        *&v18[10] = v11;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "<%s> #Warning, unexpected latency, time,%f,latency,%f", &v15, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018AEF8C(v10, v11);
      }
    }
  }

  result = sub_10050A560((a1 + 64), a2);
  for (i = *(a1 + 32); i != a1 + 24; i = *(i + 8))
  {
    result = (*(**(i + 24) + 16))(*(i + 24), a1);
  }

  return result;
}

unsigned __int16 *sub_10050A560(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[28 * (v3 - v2)];
  v6 = a2[1];
  v5 = a2[2];
  v7 = *a2;
  *(v4 + 7) = *(a2 + 6);
  *(v4 + 4) = v7;
  *(v4 + 20) = v5;
  *(v4 + 12) = v6;
  v8 = result[1];
  v9 = *(result + 1);
  if (v9 <= v8)
  {
    v10 = *result + 1;
    if (v10 < v9)
    {
      LOWORD(v9) = 0;
    }

    *result = v10 - v9;
  }

  else
  {
    result[1] = v8 + 1;
  }

  return result;
}

void sub_10050A5D8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  sub_1003E66FC(a1 + 8, a2, a3);
  if (qword_1025D45A0 != -1)
  {
    sub_1018AEE28();
  }

  v7 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v5;
    *buf = 67109376;
    v11 = v8;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "fActiveRefCount %d leech %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AF0D0(v5, v3);
  }

  if (!v6 && *v5 == 1)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018AEF64();
    }

    v9 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "creating steps dispatcher", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018AF1EC();
    }

    if (*(a1 + 48))
    {
      operator new();
    }
  }
}

void sub_10050A818(uint64_t a1, uint64_t a2)
{
  if (sub_1003E6B84(a1 + 8, a2))
  {
    if (*(a1 + 16) != 1)
    {
      sub_1018AF2D0();
    }

    if (*(a1 + 48))
    {
      if (qword_1025D45A0 != -1)
      {
        sub_1018AEE28();
      }

      v4 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "releasing steps delegate", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018AF4A0();
      }

      (*(**(a1 + 48) + 24))(*(a1 + 48));
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018AEF64();
  }

  v5 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "release steps client", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AF580();
  }

  sub_1003E6D3C(a1 + 8, a2);
}

void sub_10050A990(void *a1)
{
  sub_10050AA50(a1);

  operator delete();
}

void sub_10050A9E4(uint64_t a1)
{
  sub_10050AA50((a1 - 8));

  operator delete();
}

void *sub_10050AA50(void *a1)
{
  *a1 = &off_10245B3C0;
  a1[1] = off_10245B428;
  if (qword_1025D45A0 != -1)
  {
    sub_1018AEE28();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "factory stream steps destroyed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AF660(buf);
    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 2, "factory stream steps destroyed", v7, 2);
    v6 = v5;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CMDataProviderFactorySteps::~CMDataProviderFactorySteps()", "%s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100008080(v3);
  }

  a1[1] = off_10244FCF8;
  sub_1001FB750(a1 + 3);
  return a1;
}

void sub_10050AC1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_10050AC94(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10245B4B8;
  sub_10050AD8C((a1 + 3), a2);
  return a1;
}

void sub_10050AD10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245B4B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10050AD8C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  *(a1 + 48) = v4;
  *a1 = &off_10245B3C0;
  *(a1 + 8) = off_10245B428;
  *(a1 + 56) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 64) = 0xF000000000;
    sub_100008080(v3);
  }

  else
  {
    *(a1 + 64) = 0xF000000000;
  }

  return a1;
}

__n128 sub_10050AEA8(uint64_t a1, uint64_t a2)
{
  *a2 = off_10245B508;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10050AEE0(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_10050AF28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10050AF74(uint64_t a1)
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

uint64_t sub_10050AFF4(uint64_t a1)
{
  v2 = a1 + 4096;
  v3 = sub_10082C208(a1, &off_10245B5B8);
  sub_10082C208(v3 + 64, &off_10245B5B8);
  sub_10082C208(a1 + 128, &off_10245B5B8);
  sub_10082C208(a1 + 192, &off_10245B5B8);
  sub_10082C208(a1 + 256, &off_10245B5B8);
  *(a1 + 320) = 1;
  *(a1 + 336) = 0x25A00000000;
  *(a1 + 332) = 1031798784;
  *(a1 + 2752) = 1;
  *(a1 + 2768) = 0x25A00000000;
  *(a1 + 2764) = 1031798784;
  *(v2 + 1088) = 1;
  *(a1 + 5200) = 0x25A00000000;
  *(a1 + 5196) = 1031798784;
  *(v2 + 3520) = 1;
  *(a1 + 7632) = 0x25A00000000;
  *(a1 + 7628) = 1031798784;
  *(a1 + 10048) = 0u;
  return a1;
}

uint64_t sub_10050B0B0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  sub_10050B2D0(a1, a2, a3);
  if (*(a1 + 10048) < 0x40uLL)
  {
    return 0;
  }

  v9 = *(a4 + 16);
  v10 = *(a4 + 24) > 30.0 && v9 == 0.0;
  v11 = v9 * 60.0;
  v12 = v10 ? 46.154 : v11;
  v13 = fmaxf((480.0 / fmaxf(v12, 20.0)) / 0.04, 320.0);
  if (*(a1 + 2770) < v13)
  {
    return 0;
  }

  v32[0] = 0x25A00000000;
  sub_10050B56C(a1);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v26 = 0;
  sub_10050B9AC(a1, v13, v32, v30, v28, &v26, v12);
  v24 = 0;
  v25 = 0;
  if (v26 < 2)
  {
    v18 = 0;
    v16 = 0.0;
    v17 = 0.0;
  }

  else
  {
    v16 = sub_10050BB38(v12, v15, v30, v28, v26, &v25, &v24);
    v23 = 0;
    v17 = sub_10050BCA4(a1, v25, v24, v32, &v23);
    v18 = v23;
  }

  v27[0] = 0x14000000000;
  sub_10050BD1C(v15, v32, v27);
  v20 = v19;
  v22 = sub_10050BDF0(v21, v27);
  *(a5 + 20) = v18;
  *(a5 + 24) = v17;
  *(a5 + 12) = v22;
  *(a5 + 16) = v16;
  *(a5 + 8) = v20;
  *a5 = *(a2 + 48);
  *(a1 + 10048) = 0;
  return 1;
}

void sub_10050B2D0(uint64_t a1, float *a2, int *a3)
{
  ++*(a1 + 10056);
  v6 = sub_10011E6AC(a2);
  v7 = a2[4];
  sub_100AEA7C8(a2, v43);
  v8 = sub_1010BD498(v43);
  v10 = v9;
  v11 = *a3;
  LODWORD(a3) = a3[1];
  sub_100AEA7C8(a2, v42);
  sub_1004ACED8(v42, v43);
  v12 = sub_10011FB70(v43, a2 + 4);
  v14 = v13;
  v15 = v7 + v6;
  if (v11 != a3)
  {
    v15 = -(v7 + v6);
  }

  sub_10082C20C(a1, v15);
  v17 = v16;
  sub_10082C20C((a1 + 64), v12);
  v19 = v18;
  sub_10082C20C((a1 + 128), v14);
  v21 = v20;
  sub_10082C20C((a1 + 192), v8);
  v23 = v22;
  sub_10082C20C((a1 + 256), v10);
  if (*(a1 + 10056) >= 4uLL)
  {
    v25 = *(a1 + 338);
    v26 = *(a1 + 340);
    v27 = *(a1 + 336);
    if (v27 + v25 >= v26)
    {
      v28 = *(a1 + 340);
    }

    else
    {
      v28 = 0;
    }

    *(a1 + 4 * (v27 + v25 - v28) + 344) = v17;
    if (v26 <= v25)
    {
      if (v27 + 1 < v26)
      {
        LOWORD(v26) = 0;
      }

      *(a1 + 336) = v27 + 1 - v26;
    }

    else
    {
      *(a1 + 338) = v25 + 1;
    }

    *(a1 + 320) = 1;
    v29 = *(a1 + 2770);
    v30 = *(a1 + 2772);
    v31 = *(a1 + 2768);
    if (v31 + v29 >= v30)
    {
      v32 = *(a1 + 2772);
    }

    else
    {
      v32 = 0;
    }

    *(a1 + 4 * (v31 + v29 - v32) + 2776) = v19;
    if (v30 <= v29)
    {
      if (v31 + 1 < v30)
      {
        LOWORD(v30) = 0;
      }

      *(a1 + 2768) = v31 + 1 - v30;
    }

    else
    {
      *(a1 + 2770) = v29 + 1;
    }

    *(a1 + 2752) = 1;
    v33 = *(a1 + 5202);
    v34 = *(a1 + 5204);
    v35 = *(a1 + 5200);
    if (v35 + v33 >= v34)
    {
      v36 = *(a1 + 5204);
    }

    else
    {
      v36 = 0;
    }

    *(a1 + 4 * (v35 + v33 - v36) + 5208) = v21;
    if (v34 <= v33)
    {
      if (v35 + 1 < v34)
      {
        LOWORD(v34) = 0;
      }

      *(a1 + 5200) = v35 + 1 - v34;
    }

    else
    {
      *(a1 + 5202) = v33 + 1;
    }

    *(a1 + 5184) = 1;
    v37 = atan2f(v24, v23);
    v38 = *(a1 + 7634);
    v39 = *(a1 + 7636);
    v40 = *(a1 + 7632);
    if (v40 + v38 >= v39)
    {
      v41 = *(a1 + 7636);
    }

    else
    {
      v41 = 0;
    }

    *(a1 + 4 * (v40 + v38 - v41) + 7640) = v37;
    if (v39 <= v38)
    {
      if (v40 + 1 < v39)
      {
        LOWORD(v39) = 0;
      }

      *(a1 + 7632) = v40 + 1 - v39;
    }

    else
    {
      *(a1 + 7634) = v38 + 1;
    }

    *(a1 + 7616) = 1;
    ++*(a1 + 10048);
    *(a1 + 10056) = 0;
  }
}

void sub_10050B56C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_10050BEA4(v5, v3);
  *v54 = 0x25A00000000;
  v53 = 1031798784;
  *v51 = 0x25A00000000;
  v50 = 1031798784;
  v8 = v6[1385];
  if (v6[2601] < v8)
  {
    v8 = v6[2601];
  }

  if (v8)
  {
    v48 = v4;
    v9 = __sincosf_stret(v7);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *sub_100457AE8(v6 + 1384, v10);
      v16 = (v9.__sinval * *sub_100457AE8(v6 + 2600, v10)) + (v9.__cosval * v15);
      v17 = v13 + v12;
      if (v17 >= 0x25A)
      {
        v18 = -2384;
      }

      else
      {
        v18 = 24;
      }

      *&v52[4 * v17 + v18] = v16;
      if (v12 > 0x259u)
      {
        if (v13 >= 0x259u)
        {
          v19 = -602;
        }

        else
        {
          v19 = 0;
        }

        v13 += v19 + 1;
      }

      else
      {
        ++v12;
      }

      v20 = *sub_100457AE8(v6 + 1384, v10);
      v21 = (v9.__cosval * *sub_100457AE8(v6 + 2600, v10)) + (-v9.__sinval * v20);
      v22 = v14 + v11;
      if (v22 >= 0x25A)
      {
        v23 = -2384;
      }

      else
      {
        v23 = 24;
      }

      *&v49[4 * v22 + v23] = v21;
      if (v11 > 0x259u)
      {
        if (v14 >= 0x259u)
        {
          v24 = -602;
        }

        else
        {
          v24 = 0;
        }

        v14 += v24 + 1;
      }

      else
      {
        ++v11;
      }

      ++v10;
      if (v6[2601] >= v6[1385])
      {
        v25 = v6[1385];
      }

      else
      {
        v25 = v6[2601];
      }
    }

    while (v10 < v25);
    v54[1] = v12;
    v51[1] = v11;
    v4 = v48;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v13 = 0;
  }

  v54[0] = v13;
  v52[0] = 1;
  v51[0] = v14;
  v49[0] = 1;
  if (v4[1] == 1)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = -1.0;
  }

  v27 = v12;
  if (v11 < v12)
  {
    v27 = v11;
  }

  if (*v4 == 1)
  {
    if (v27)
    {
      v28 = 0;
      do
      {
        v29 = *sub_100457AE8(v54, v28);
        v30 = *sub_100457AE8(v51, v28);
        v31 = *sub_100457AE8(v51, v28);
        v32 = sqrt(v29 * v29 + v30 * v30) * ((v26 * v31) / fabsf(*sub_100457AE8(v51, v28)));
        v33 = v2[1];
        v34 = *(v2 + 1);
        v35 = *v2;
        if (v35 + v33 >= v34)
        {
          v36 = *(v2 + 1);
        }

        else
        {
          v36 = 0;
        }

        *&v2[2 * (v35 + v33 - v36) + 4] = v32;
        if (v34 <= v33)
        {
          if (v35 + 1 < v34)
          {
            LOWORD(v34) = 0;
          }

          *v2 = v35 + 1 - v34;
        }

        else
        {
          v2[1] = v33 + 1;
        }

        ++v28;
        if (v51[1] >= v54[1])
        {
          v37 = v54[1];
        }

        else
        {
          v37 = v51[1];
        }
      }

      while (v28 < v37);
    }
  }

  else if (v27)
  {
    v38 = 0;
    do
    {
      v39 = *sub_100457AE8(v54, v38);
      v40 = *sub_100457AE8(v51, v38);
      v41 = *sub_100457AE8(v54, v38);
      v42 = sqrt(v39 * v39 + v40 * v40) * ((v26 * v41) / fabsf(*sub_100457AE8(v54, v38)));
      v43 = v2[1];
      v44 = *(v2 + 1);
      v45 = *v2;
      if (v45 + v43 >= v44)
      {
        v46 = *(v2 + 1);
      }

      else
      {
        v46 = 0;
      }

      *&v2[2 * (v45 + v43 - v46) + 4] = v42;
      if (v44 <= v43)
      {
        if (v45 + 1 < v44)
        {
          LOWORD(v44) = 0;
        }

        *v2 = v45 + 1 - v44;
      }

      else
      {
        v2[1] = v43 + 1;
      }

      ++v38;
      if (v51[1] >= v54[1])
      {
        v47 = v54[1];
      }

      else
      {
        v47 = v51[1];
      }
    }

    while (v38 < v47);
  }
}

void sub_10050B9AC(unsigned __int16 *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, unint64_t *a6, float a7)
{
  if (a7 >= 46.0)
  {
    v11 = 0.28571;
  }

  else
  {
    v11 = (60.0 / fmaxf(a7, 12.0)) / 3.5;
  }

  v17 = 0;
  v18 = 0;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v12 = sub_10050C120(a1, a2, v21, v19, &v18, &v17, v11);
  v13 = v18;
  sub_10050C310(0.08, v12, v21, v18, a3, 1);
  v14 = v17;
  sub_10050C310(0.08, v15, v19, v17, a3, 0);
  sub_10050C424(((v11 * 3.5) * 0.7) / 5.0, ((v11 * 3.5) * 0.75) * 0.5, v16, v21, v19, v13, v14, a4, a5, a6);
}

float sub_10050BB38(float a1, uint64_t a2, int *a3, int *a4, unint64_t a5, void *a6, void *a7)
{
  v7 = 0.0;
  if (a5 < 2)
  {
    return v7;
  }

  v8 = 0;
  v9 = 30;
  if (a5 < 0x1E)
  {
    v9 = a5;
  }

  v12 = *a3;
  v10 = a3 + 1;
  v11 = v12;
  v13 = 3.4028e38;
  v16 = *a4;
  v14 = a4 + 1;
  v15 = v16;
  v17 = v9 - 1;
  v18 = 3.4028e38;
  v19 = 3.4028e38;
  do
  {
    v20 = v15;
    v21 = *v14++;
    v15 = v21;
    v22 = (v21 - v20) * 0.04;
    v23 = 60.0 / v22;
    if (a1 >= 46.154)
    {
      v24 = v23 > 34.615;
    }

    else
    {
      v24 = fabsf((v23 - a1) / a1) < 0.25;
    }

    v26 = *v10++;
    v25 = v26;
    v27 = (v26 - v11) * 0.04;
    v28 = vabds_f32(v27, v22);
    if (v28 >= v19)
    {
      v24 = 0;
    }

    v29 = v28;
    if (v24)
    {
      goto LABEL_11;
    }

    if (v8)
    {
      v8 = 1;
    }

    else
    {
      if (v28 < v18)
      {
        v29 = v19;
LABEL_11:
        *a6 = v11;
        *a7 = v25;
        v19 = v29;
        v8 = v24;
        v13 = v22;
        goto LABEL_18;
      }

      v8 = 0;
    }

    v28 = v18;
LABEL_18:
    v11 = v25;
    v18 = v28;
    --v17;
  }

  while (v17);
  v30 = 60.0 / v13;
  if (a1 >= 46.0 || vabds_f32(v30, a1) < (a1 * 0.25))
  {
    a1 = fminf(v30, 120.0);
  }

  v7 = 0.0;
  if (a1 >= 0.0)
  {
    return a1;
  }

  return v7;
}

float sub_10050BCA4(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int16 *a4, float *a5)
{
  v12 = 0;
  sub_10050CA40(a1, a2, a3, a4, &v12);
  *a5 = v8;
  sub_10050CD24(v9, a2, a4, v12);
  result = *a5 / v10;
  if (result > 5.0)
  {
    result = 5.0;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

void sub_10050BD1C(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = a2[1];
  v4 = v3 - 320;
  if (v3 >= 0x140)
  {
    v7 = 0;
    v8 = -3.4028e38;
    v9 = 3.4028e38;
    do
    {
      v10 = sub_100457AE8(a2, v4 + v7);
      if (v8 < *v10)
      {
        v8 = *v10;
      }

      v11 = sub_100457AE8(a2, v4 + v7);
      if (*v11 < v9)
      {
        v9 = *v11;
      }

      v12 = *sub_100457AE8(a2, v4 + v7);
      *sub_100457AE8(a3, v7++) = v12;
    }

    while (v7 != 320);
  }
}

float sub_10050BDF0(uint64_t a1, unsigned __int16 *a2)
{
  sub_1012F7D70(v7);
  sub_1012F7D74(v7, v8, a2);
  v3 = sub_100C71D50(0x19u, 0x80uLL, 0.1);
  LODWORD(a2) = sub_100C71D00(v3);
  v4 = sub_100C71D50(0x19u, 0x80uLL, 10.0);
  v5 = sub_100C71D00(v4);
  return sqrtf(fabsf(sub_100C71D8C(a2, v5, v8)));
}

float sub_10050BEA4(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 7634);
  if (v4 <= 0x140)
  {
    v5 = 320;
  }

  else
  {
    v5 = *(a1 + 7634);
  }

  v6 = (v5 - 320);
  v7 = 0.0;
  if (v6 < v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = (v5 - 320);
    do
    {
      if (*sub_100457AE8((a1 + 7632), v10) >= 1.57079633)
      {
        ++v8;
      }

      else if (*sub_100457AE8((a1 + 7632), v10) <= -1.57079633)
      {
        ++v9;
      }

      ++v10;
    }

    while (v10 < *(a1 + 7634));
    if (v9 <= 0 || v8 <= 0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 6.2832;
    }
  }

  v12 = 0;
  memset(v20, 0, 512);
  do
  {
    v13 = *sub_100457AE8((a1 + 7632), v6);
    v14 = sub_100457AE8((a1 + 7632), v6);
    v15 = *v14;
    if (v13 <= -1.57079633)
    {
      v15 = v7 + *v14;
    }

    *(v20 + v12) = v15;
    v12 += 4;
    ++v6;
  }

  while (v12 != 1280);
  memcpy(__dst, v20, sizeof(__dst));
  sub_1009E77D8(__dst, 4uLL, 0x140uLL, sub_10050C10C);
  v16 = dbl_101C7C920[*a2 == 1] + __dst[159];
  v17 = v16;
  if (v16 > 3.14159265)
  {
    v18 = -6.28318531;
LABEL_26:
    v16 = v17 + v18;
    return v16 + 0.0;
  }

  if (v17 < -3.14159265)
  {
    v18 = 6.28318531;
    goto LABEL_26;
  }

  return v16 + 0.0;
}

unint64_t sub_10050C120(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6, float a7)
{
  v12 = a2;
  v28 = 30;
  v29 = 30;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  result = sub_10050C500(a1, a2, &v29, &v28, v32, v30);
  v15 = (a1[169] - v12) & ~((a1[169] - v12) >> 31);
  if (v29 >= 1)
  {
    if (v29 >= 0x1E)
    {
      v16 = 30;
    }

    else
    {
      v16 = v29;
    }

    v17 = v16 - 1;
    v18 = v32;
    do
    {
      v19 = *v18++;
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v20 = sub_10050C6C0(-1.0, v19, result, v15, 2, (a1 + 160), &v34);
      result = sub_10050C8E8(a7, -1.0, v20, a3, (a1 + 160), &v34, v20);
      *a5 = result;
    }

    while (result <= 5 && v17-- != 0);
  }

  if (v28 >= 1)
  {
    if (v28 >= 0x1E)
    {
      v22 = 30;
    }

    else
    {
      v22 = v28;
    }

    v23 = v22 - 1;
    v24 = v30;
    do
    {
      v25 = *v24++;
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v26 = sub_10050C6C0(1.0, v25, result, v15, 2, (a1 + 160), &v34);
      result = sub_10050C8E8(a7, 1.0, v26, a4, (a1 + 160), &v34, v26);
      *a6 = result;
    }

    while (result <= 5 && v23-- != 0);
  }

  return result;
}

void sub_10050C310(float a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, int a6)
{
  if (a6)
  {
    v6 = -1.0;
  }

  else
  {
    v6 = 1.0;
  }

  if (a4 >= 0x1E)
  {
    v7 = 30;
  }

  else
  {
    v7 = a4;
  }

  if (a4)
  {
    v10 = 0;
    v11 = vcvtmd_s64_f64(a1 / 0.04);
    do
    {
      v12 = *(a3 + 4 * v10);
      if (v12 >= 1 && v12 < a5[1])
      {
        v14 = sub_100457AE8(a5, v12);
        v15 = *(a3 + 4 * v10);
        v16 = (v15 - v11) & ~((v15 - v11) >> 31);
        v17 = v11 + 1 + v15;
        v18 = v17 >= a5[1] ? a5[1] : v17;
        if (v16 < v18)
        {
          v19 = v6 * *v14;
          do
          {
            if ((v6 * *sub_100457AE8(a5, v16)) > v19)
            {
              v19 = v6 * *sub_100457AE8(a5, v16);
              *(a3 + 4 * v10) = v16;
            }

            ++v16;
          }

          while (v18 != v16);
        }
      }

      ++v10;
    }

    while (v10 != v7);
  }
}

void sub_10050C424(float a1, float a2, uint64_t a3, _DWORD *a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  if (a6 && a7)
  {
    v10 = 0;
    v11 = 0;
    v12 = vcvtmd_s64_f64(a1 / 0.04);
    v13 = vcvtmd_s64_f64(a2 / 0.04);
    v14 = a7 - 1;
    if (a7 - 1 >= 0x1D)
    {
      v14 = 29;
    }

    v15 = 30;
    if (a6 >= 0x1E)
    {
      v16 = 30;
    }

    else
    {
      v16 = a6;
    }

    v17 = *a4 - v13;
    if (a7 < 0x1E)
    {
      v15 = a7;
    }

    v18 = -1;
    do
    {
      v19 = a4[v10];
      if (*(a5 + 4 * v14) <= v19)
      {
        break;
      }

      if (v19 - v17 >= v13)
      {
        v20 = v18 + 1;
        v21 = (a5 + 4 + 4 * v18);
        while (v20 < v15)
        {
          v22 = *v21++;
          ++v20;
          if (v22 - v19 >= v12)
          {
            *(a8 + 4 * v11) = v19;
            v17 = *(v21 - 1);
            *(a9 + 4 * v11++) = v17;
            *a10 = v11;
            v18 = v20 - 1;
            break;
          }
        }
      }

      if (++v10 >= v16)
      {
        break;
      }
    }

    while (v11 < 0x1E);
  }
}

unsigned __int16 *sub_10050C500(unsigned __int16 *result, int a2, unsigned int *a3, unsigned int *a4, float *a5, float *a6)
{
  v10 = result[169];
  v11 = (v10 - a2) & ~((v10 - a2) >> 31);
  if (v11 >= v10)
  {
    v14 = 3.4028e38;
    v16 = -3.4028e38;
  }

  else
  {
    v12 = result;
    v13 = -3.4028e38;
    v14 = 3.4028e38;
    do
    {
      v15 = sub_100457AE8(v12 + 168, v11);
      if (v13 < *v15)
      {
        v13 = *v15;
      }

      result = sub_100457AE8(v12 + 168, v11);
      if (*result < v14)
      {
        v14 = *result;
      }

      ++v11;
    }

    while (v11 < v12[169]);
    v16 = v13 + -1.0;
  }

  v17 = -1.0 - v14;
  if ((-1.0 - v14) < 0.4)
  {
    v17 = 0.4;
  }

  if (v17 < 0.9)
  {
    v17 = 0.9;
  }

  if (v16 < 0.5)
  {
    v16 = 0.5;
  }

  if (v16 < 0.9)
  {
    v16 = 0.9;
  }

  v18 = vcvtpd_s64_f64((v17 + 0.7) / 0.1);
  if (v18 >= 30)
  {
    v18 = 30;
  }

  *a3 = v18;
  v19 = vcvtpd_s64_f64((v16 + 0.1) / 0.1);
  if (v19 >= 30)
  {
    v20 = 30;
  }

  else
  {
    v20 = v19;
  }

  *a4 = v20;
  v21 = *a3;
  if (v21 >= 1)
  {
    v22 = 0;
    v23 = -v21;
    do
    {
      v24 = v17;
      if (v22)
      {
        v24 = *(a5 - 1) + -0.1;
      }

      *a5++ = v24;
      --v22;
    }

    while (v23 != v22);
  }

  if (v19 >= 1)
  {
    v25 = 0;
    v26 = -v20;
    do
    {
      v27 = v16;
      if (v25)
      {
        v27 = *(a6 - 1) + -0.1;
      }

      *a6++ = v27;
      --v25;
    }

    while (v26 != v25);
  }

  return result;
}

unint64_t sub_10050C6C0(float a1, float a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v10 = 0;
  v11 = (a5 / 2);
  if (v11 < 1.0)
  {
    v11 = 1.0;
  }

  v12 = v11;
  v13 = a4 & ~(a4 >> 31);
  if (v11 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v11;
  }

  v15 = v14 + 1;
  v32 = 2 * v12;
  v33 = v14;
  v34 = v11;
  do
  {
    v16 = *(a6 + 18);
    if (v13 >= v16 - v15)
    {
      break;
    }

    v17 = v13 & ~(v13 >> 31);
    if (v17 < v16)
    {
      while ((*sub_100457AE8((a6 + 16), v17) * a1) <= a2)
      {
        if (++v17 >= *(a6 + 18))
        {
          goto LABEL_13;
        }
      }

      v16 = v17;
    }

LABEL_13:
    v13 = v16 + 1;
    if (v16 >= v14)
    {
      v18 = *(a6 + 18);
      if (v16 < v18 - v15)
      {
        v19 = (v16 - v12) & ~((v16 - v12) >> 31);
        if (v16 >= v18)
        {
          v20 = *(a6 + 18);
        }

        else
        {
          v20 = v16;
        }

        if (v19 >= v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          do
          {
            v22 = *sub_100457AE8((a6 + 16), v16);
            if (((a1 * v22) - (*sub_100457AE8((a6 + 16), v19) * a1)) > 0.0)
            {
              ++v21;
            }

            ++v19;
            v18 = *(a6 + 18);
            if (v16 >= v18)
            {
              v23 = *(a6 + 18);
            }

            else
            {
              v23 = v16;
            }
          }

          while (v19 < v23);
        }

        v24 = v16 + v12;
        v25 = v18 - 1;
        if (v25 >= v24)
        {
          v25 = v24;
        }

        if (v13 <= v25)
        {
          v26 = 0;
          v27 = (v16 + 1);
          do
          {
            v28 = *sub_100457AE8((a6 + 16), v16);
            if (((a1 * v28) - (*sub_100457AE8((a6 + 16), v27) * a1)) > 0.0)
            {
              ++v26;
            }

            ++v27;
            v29 = *(a6 + 18) - 1;
            if (v29 >= v24)
            {
              v29 = v24;
            }
          }

          while (v27 <= v29);
        }

        else
        {
          v26 = 0;
        }

        if (v26 + v21 >= v32)
        {
          *(a7 + 4 * v10) = v16;
          v13 = v24 + 1;
          ++v10;
        }

        v14 = v33;
        v12 = v34;
      }
    }
  }

  while (v10 < 0x1E);
  return v10;
}

uint64_t sub_10050C8E8(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, unsigned int a7)
{
  if (a7 < 1)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = vcvtmd_s64_f64(a1 / 0.04);
  if (a7 >= 0x1E)
  {
    v15 = 30;
  }

  else
  {
    v15 = a7;
  }

  do
  {
    v16 = a6[v11];
    if (v16 > v12 && v16 >= 1 && v16 < *(a5 + 18))
    {
      v19 = *sub_100457AE8((a5 + 16), v16) * a2;
      *(a4 + 4 * v13) = a6[v11];
      v20 = a6;
      v21 = v15;
      do
      {
        v22 = *v20;
        v23 = a6[v11];
        if (v22 >= ((v23 - v14) & ~((v23 - v14) >> 31)))
        {
          v24 = v23 + v14;
          if (*(a5 + 18) - 1 < v24)
          {
            v24 = *(a5 + 18) - 1;
          }

          if (v22 <= v24 && (*sub_100457AE8((a5 + 16), v22) * a2) > v19)
          {
            v19 = *sub_100457AE8((a5 + 16), *v20) * a2;
            *(a4 + 4 * v13) = *v20;
          }
        }

        ++v20;
        --v21;
      }

      while (v21);
      v12 = a6[v11] + v14;
      ++v13;
    }

    ++v11;
  }

  while (v11 != v15);
  return v13;
}

void sub_10050CA40(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int16 *a4, void *a5)
{
  v5 = a4[1] - 1;
  if (v5 >= a3)
  {
    v5 = a3;
  }

  v6 = v5 - a2;
  if (v5 > a2)
  {
    v9 = a2;
    v10 = v6 + 1;
    v11 = 4 * (v6 + 1);
    __chkstk_darwin(a1);
    v15 = &v47 - v14;
    if ((v16 & 1) == 0)
    {
      v17 = 0;
      v18 = v13 + 1;
      do
      {
        if (v17)
        {
          v19 = *&v15[4 * v17 - 4];
          v12 = sub_100457AE8(a4, v9);
          v20 = v19 + *v12 * 0.04 * 9.81000042;
        }

        else
        {
          v20 = 0.0;
        }

        *&v15[4 * v17++] = v20;
        ++v9;
      }

      while (v18 != v9);
      __chkstk_darwin(v12);
      v24 = __chkstk_darwin(v21);
      v27 = &v47 - v26;
      if (v6 != -1)
      {
        v28 = 0;
        v29 = (*&v24 - v25) / v6;
        do
        {
          if (v28)
          {
            v30 = v29 + *(v23 + 4 * v28 - 4);
          }

          else
          {
            v30 = 0.0;
          }

          *(v23 + 4 * v28) = v30;
          *&v27[4 * v28] = *&v15[4 * v28] - v30;
          ++v28;
        }

        while (v10 != v28);
        __chkstk_darwin(v22);
        v33 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        v34 = 0;
        do
        {
          if (v34)
          {
            v35 = *&v33[4 * v34 - 4] + *(v32 + 4 * v34) * 0.04;
          }

          else
          {
            v35 = 0.0;
          }

          *&v33[4 * v34++] = v35;
        }

        while (v10 != v34);
        v37 = __chkstk_darwin(v31);
        v38 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        v39 = 0;
        v42 = v40 - v41;
        v43 = 0.0;
        v44 = v42 / *&v37;
        do
        {
          v45 = 0.0;
          if (v39)
          {
            v45 = v44 + *&v38[4 * v39 - 4];
          }

          *&v38[4 * v39] = v45;
          v46 = vabds_f32(*(v36 + 4 * v39), v45);
          if (v43 < v46)
          {
            *a5 = v39;
            v43 = v46;
          }

          ++v39;
        }

        while (v10 != v39);
      }
    }
  }
}

void sub_10050CD24(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4)
{
  v4 = a3[1] - a2;
  if (v4 >= a4)
  {
    v4 = a4;
  }

  if (v4)
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      if (fabsf(*sub_100457AE8(a3, a2 + v8)) < 0.8)
      {
        v10 = v9 + 0.04;
        v9 = v10;
      }

      ++v8;
      v11 = a3[1] - a2;
      if (v11 >= a4)
      {
        v11 = a4;
      }
    }

    while (v8 < v11);
  }
}

uint64_t sub_10050CF50(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10050DCE8;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102656970 != -1)
  {
    dispatch_once(&qword_102656970, block);
  }

  return qword_102636F00;
}

void sub_10050D2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10050D2D4(uint64_t a1, char *a2, void *a3)
{
  v4 = (a1 + 120);
  if (*(a1 + 120))
  {
    v6 = (a1 + 176);
    if (*(a1 + 176) == 1)
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018AF84C();
      }

      v7 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
      {
        if (a2[23] >= 0)
        {
          v8 = a2;
        }

        else
        {
          v8 = *a2;
        }

        v9 = *v6;
        *buf = 136446466;
        v51 = *&v8;
        v52 = 1026;
        *v53 = v9;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "SedentaryAlarm,Error starting,client,%{public}s,armed,%{public}d", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018AFAA0(a2, v6);
      }

      return 108;
    }

    else
    {
      [objc_msgSend(a3 objectForKeyedSubscript:{CMSedentaryTimerStartTimeKey), "doubleValue"}];
      v16 = v15;
      v17 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v15];
      v18 = [+[NSCalendar currentCalendar](NSCalendar components:"components:fromDate:" fromDate:192, v17];
      v19 = [(NSDateComponents *)v18 minute];
      v20 = [(NSDateComponents *)v18 second];
      if (v19 | v20)
      {
        v21 = v20;
        if (qword_1025D4200 != -1)
        {
          sub_1018AF84C();
        }

        v22 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v51 = v16;
          v52 = 2048;
          *v53 = v19;
          *&v53[8] = 2048;
          v54 = v21;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "SedentaryAlarm,startDate sent that doesn't align with the wall hour,%f,minuteOffset,%ld,secondOffset,%ld", buf, 0x20u);
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4200 != -1)
          {
            sub_1018AFA78();
          }

          v42 = 134218496;
          v43 = v16;
          v44 = 2048;
          *v45 = v19;
          *&v45[8] = 2048;
          v46 = v21;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 16, "SedentaryAlarm,startDate sent that doesn't align with the wall hour,%f,minuteOffset,%ld,secondOffset,%ld", COERCE_DOUBLE(&v42), 32, v40);
          v39 = v38;
          sub_100152C7C("Generic", 1, 0, 0, "CMError CLSedentaryTimerNotifier::startTimer(const std::string &, NSDictionary *)", "%s\n", v38);
          if (v39 != buf)
          {
            free(v39);
          }
        }
      }

      [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
      v24 = (v16 - v23);
      WORD1(v40) = v24;
      [objc_msgSend(a3 objectForKeyedSubscript:{CMSedentaryTimerPeriodIntervalKey), "doubleValue"}];
      v26 = v25;
      [objc_msgSend(a3 objectForKeyedSubscript:{CMSedentaryTimerReminderIntervalKey), "doubleValue"}];
      v28 = v27;
      v29 = [objc_msgSend(a3 objectForKeyedSubscript:{CMSedentaryTimerAutoRescheduleKey), "BOOLValue"}];
      LOWORD(v41) = v29;
      HIWORD(v41) = *(a1 + 268);
      if (qword_1025D4200 != -1)
      {
        sub_1018AFA78();
      }

      v30 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] >= 0)
        {
          v31 = a2;
        }

        else
        {
          v31 = *a2;
        }

        *buf = 136316418;
        v51 = *&v31;
        v52 = 1024;
        *v53 = v24;
        *&v53[4] = 1024;
        *&v53[6] = v26;
        LOWORD(v54) = 1024;
        *(&v54 + 2) = v28;
        HIWORD(v54) = 1024;
        v55 = v29;
        v56 = 2048;
        v57 = v16;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "SedentaryAlarm,START,client,%s,offset,%d,period,%d,reminder,%d,autoReschedule,%d,startDate,%f", buf, 0x2Eu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4200 != -1)
        {
          sub_1018AFA78();
        }

        if (a2[23] >= 0)
        {
          v35 = a2;
        }

        else
        {
          v35 = *a2;
        }

        v42 = 136316418;
        v43 = *&v35;
        v44 = 1024;
        *v45 = v24;
        *&v45[4] = 1024;
        *&v45[6] = v26;
        LOWORD(v46) = 1024;
        *(&v46 + 2) = v28;
        HIWORD(v46) = 1024;
        v47 = v29;
        v48 = 2048;
        v49 = v16;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 0, "SedentaryAlarm,START,client,%s,offset,%d,period,%d,reminder,%d,autoReschedule,%d,startDate,%f", &v42, 46, v40, v41);
        v37 = v36;
        sub_100152C7C("Generic", 1, 0, 2, "CMError CLSedentaryTimerNotifier::startTimer(const std::string &, NSDictionary *)", "%s\n", v36);
        if (v37 != buf)
        {
          free(v37);
        }
      }

      if (v24 >= 0)
      {
        LOWORD(v33) = v24;
      }

      else
      {
        v33 = -v24;
      }

      result = 107;
      if (v26 && v28 < v26 && v26 > v33)
      {
        v34 = sub_100023ED4(0, v32);
        (*(*(v34 + 64) + 24))();
        *v6 = 1;
        return 100;
      }
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018AF84C();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      if (a2[23] >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      v13 = *v4;
      *buf = 136446466;
      v51 = *&v12;
      v52 = 1026;
      *v53 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "SedentaryAlarm,Error starting,client,%{public}s,fitness tracking,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AF968(a2, v4);
    }

    return 109;
  }

  return result;
}

void sub_10050DA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10050DA68(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018AF84C();
  }

  v3 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "SedentaryAlarm,STOP", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018AFCB8();
  }

  v5 = sub_100023ED4(0, v4);
  (*(*(v5 + 64) + 32))();
  *(a1 + 176) = 0;
  return 100;
}

void sub_10050DCA8(id a1)
{
  v2 = sub_10001A3E8(a1, v1);
  v4 = sub_10071C8FC(v2, v3);
  if (v4)
  {
    v6 = sub_100BA0344(v4, v5);
    if (v6)
    {
      sub_10001A3E8(v6, v7);
      if (sub_10001CF3C())
      {
        byte_102656960 = 1;
      }
    }
  }
}

void sub_10050DD58(uint64_t a1, void *a2)
{
  v2 = sub_10050E518(a1, "CLSedentaryTimerNotifier", a2);
  *v2 = off_10245B620;
  *(v2 + 112) = off_10245B710;
  *(v2 + 120) = 0;
  *(v2 + 121) = 0x10000000000000;
  *(v2 + 129) = 0;
  *(v2 + 137) = 0;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0;
  operator new();
}

uint64_t sub_10050E518(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_10245BAD8;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_10050E5A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10050E5C4(uint64_t a1, _DWORD *a2, _BYTE *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018AFED0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLSedentaryTimerNotifier::onFitnessTrackingNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018AFEE4();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSedentaryTimerNotifier::onFitnessTrackingNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10050FBFC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10050E790(uint64_t a1, _DWORD *a2, __int128 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018AFED0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLSedentaryTimerNotifier::onMotionStateObserverNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018AFEE4();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSedentaryTimerNotifier::onMotionStateObserverNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  if (*a2 == 1)
  {
    v9 = *a3;
    *(a4 + 137) = *(a3 + 4);
    *(a4 + 121) = v9;
  }

  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10050E964(uint64_t a1, _DWORD *a2, __int128 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018AFED0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLSedentaryTimerNotifier::onNatalimetryNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018AFEE4();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSedentaryTimerNotifier::onNatalimetryNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10050FF24(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_10050EB30(uint64_t a1, int a2, char a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10050EBB0;
  v8[3] = &unk_10245B730;
  v8[4] = v5;
  *&v8[5] = a4;
  *&v8[6] = a5;
  v9 = a2;
  v10 = a3;
  return [v6 async:v8];
}

void sub_10050EBC8(void *result, int a2, unsigned __int8 a3, double a4, double a5)
{
  if (a2 <= 4)
  {
    v6 = (result + 15);
    if (result[15])
    {
      v8 = a2;
      Current = CFAbsoluteTimeGetCurrent();
      if (v8 == 3 || !v8)
      {
        v12 = *(result + 121);
        v13 = Current > v12 && Current - v12 < 320.0;
        if (v13 && *(result + 133) >= 1)
        {
          if (qword_1025D4200 != -1)
          {
            sub_1018AF84C();
          }

          v14 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
          {
            v15 = CFAbsoluteTimeGetCurrent();
            v16 = *(result + 121);
            *buf = 134218240;
            *&buf[4] = v15;
            *&buf[12] = 2048;
            *&buf[14] = v16;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "SedentaryAlarm,InVehicleReminder,now,%.3f,motionStateTime,%.3f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018B0018(result + 121);
          }

          v8 = 4;
        }
      }

      HIDWORD(v25) = 0;
      *&v24 = a4;
      *(&v24 + 1) = a5;
      LODWORD(v25) = v8;
      *(&v25 + 4) = a3;
      if (qword_1025D4200 != -1)
      {
        sub_1018AFA78();
      }

      v17 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349568;
        *&buf[4] = a4;
        *&buf[12] = 2050;
        *&buf[14] = a5;
        *&buf[22] = 1026;
        *&buf[24] = v8;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "StandPlus,aop alarm,startTime,%{public}f,firedTime,%{public}f,type,%{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4200 != -1)
        {
          sub_1018AFA78();
        }

        v26 = 134349568;
        v27 = a4;
        v28 = 2050;
        v29 = a5;
        v30 = 1026;
        v31 = v8;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 0, "StandPlus,aop alarm,startTime,%{public}f,firedTime,%{public}f,type,%{public}d", &v26, 28);
        v23 = v22;
        sub_100152C7C("Generic", 1, 0, 2, "void CLSedentaryTimerNotifier::onSedentaryAlarm(const CFAbsoluteTime, const CFAbsoluteTime, const CLSedentaryAlarmType, const BOOL)", "%s\n", v22);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      v18 = result[47];
      if (v18)
      {
        sub_1004AA754(v18, &v24);
      }

      else
      {
        *buf = v24;
        *&buf[16] = v25;
        (*(*result + 216))(result, buf);
      }
    }

    else
    {
      sub_10000EC00(buf, "com.apple.locationd");
      sub_10050DA68(result, v19);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (qword_1025D4200 != -1)
      {
        sub_1018AFA78();
      }

      v20 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        v21 = *v6;
        *buf = 67109120;
        *&buf[4] = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "SedentaryAlarm,STOP,fitness tracking,%d", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018AFF0C(v6);
      }
    }
  }
}

void sub_10050EF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10050EFAC(uint64_t a1, uint64_t a2)
{
  v11 = 86400;
  v3 = sub_100011660(a1, a2);
  sub_100185AC0(v3, &v9);
  v4 = sub_10005BBE4(v9, "SedentaryTimerAggregateInterval", &v11);
  if (v10)
  {
    sub_100008080(v10);
  }

  if (v4)
  {
    v5 = 1000000000 * v11;
  }

  else
  {
    v5 = 86400000000000;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [*(a1 + 40) queue]);
  *(a1 + 256) = v6;
  dispatch_source_set_timer(v6, 0, v5, 0xDF8475800uLL);
  v7 = *(a1 + 256);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10050F374;
  v8[3] = &unk_102449A78;
  v8[4] = a1;
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(*(a1 + 256));
}

void sub_10050F0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10050F0F4(uint64_t a1)
{
  *a1 = off_10245BAD8;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10050F178(void *a1)
{
  *a1 = off_10245B620;
  a1[14] = off_10245B710;
  sub_10050F320(a1);
  sub_10050FEA4(a1 + 47, 0);
  sub_1003F764C((a1 + 25));
  v2 = a1[24];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[20];
  a1[20] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[19];
  a1[19] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[18];
  a1[18] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return sub_10050F0F4(a1);
}

void sub_10050F2AC(void *a1)
{
  sub_10050F178(a1);

  operator delete();
}

void sub_10050F2E4(uint64_t a1)
{
  sub_10050F178((a1 - 112));

  operator delete();
}

void sub_10050F320(uint64_t a1)
{
  *(a1 + 384) = 0;
  if (*(a1 + 168))
  {
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", *(a1 + 168)];
    *(a1 + 168) = 0;
  }

  *(a1 + 108) = 1;
}

uint64_t sub_10050F380(char *a1)
{
  if (a1[40])
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018B0138();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000137E0();
      v4 = *(*(a1 + 3) + 132);
      v17 = 134218240;
      *v18 = v3;
      *&v18[8] = 1024;
      v19 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating records start %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B014C(a1);
    }

    v5 = (*(**(a1 + 3) + 32))(*(a1 + 3), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_1018B0268();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000137E0();
      v8 = *(*(a1 + 3) + 132);
      v17 = 134218240;
      *v18 = v7;
      *&v18[8] = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Aggregating records stop %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B0290(a1 + 24);
    }

    v9 = *(a1 + 3);
    v10 = *(v9 + 132);
    if (sub_1005126C8(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018B0268();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 3);
        v13 = *(v12 + 132);
        v14 = sub_1005126C8(v12, a1);
        v17 = 67109376;
        *v18 = v13;
        *&v18[4] = 1024;
        *&v18[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B03AC(a1 + 3, a1);
      }
    }

    return v5;
  }

  else
  {
    v16 = *(**(a1 + 3) + 32);

    return v16();
  }
}

void sub_10050F68C(uint64_t a1, double *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v5 = *(a2 + 1);
  v9 = *a2;
  v10 = v5;
  v8[2] = sub_10050F7D8;
  v8[3] = &unk_10244FF80;
  v8[4] = v3;
  [v4 async:v8];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v7 setTimestamp:*a2];
  [(ALActivityLog *)v7 setSedentaryAlarmData:objc_alloc_init(ALCLSedentaryAlarmData)];
  [(ALCLSedentaryAlarmData *)[(ALActivityLog *)v7 sedentaryAlarmData] setFiredTime:a2[1]];
  [(ALCLSedentaryAlarmData *)[(ALActivityLog *)v7 sedentaryAlarmData] setType:*(a2 + 4)];
  [(ALCLSedentaryAlarmData *)[(ALActivityLog *)v7 sedentaryAlarmData] setDidWake:*(a2 + 20)];
  [(ALCLSedentaryAlarmData *)[(ALActivityLog *)v7 sedentaryAlarmData] setRegularEntry:1];
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  objc_autoreleasePoolPop(v6);
}

void sub_10050F7D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v2;
  sub_10050F810(v1, v3);
}

void sub_10050F810(void *a1, uint64_t a2)
{
  LODWORD(__p[0]) = 0;
  if (sub_10000608C(a1, __p, 1))
  {
    memset(__p, 0, sizeof(__p));
    sub_1005120E4(__p, 1uLL);
  }

  if (*(a2 + 20) == 1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.locationd.sedentarytimer", 0, 0, 0);
  }
}