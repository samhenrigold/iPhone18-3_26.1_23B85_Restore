void sub_19B431430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_19B445384(v65);
  sub_19B445384(v64);
  if (*(v63 + 71) < 0)
  {
    operator delete(*(v63 + 48));
  }

  if (*(v63 + 47) < 0)
  {
    operator delete(*v66);
  }

  sub_19B445384(v63);
  _Unwind_Resume(a1);
}

char *sub_19B4315C8(char *a1, const __CFString *a2, char a3)
{
  v4 = sub_19B430DF4(a1, a2, a3, 0x1F0E3DFE0);
  *v4 = &unk_1F0E33ED0;
  if (*(v4 + 16) == 1)
  {
    sub_19B60DB30(a1, 1);
  }

  return a1;
}

void *sub_19B431640(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E334A8;
  a1[1] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  a1[1] = Mutable;
  if (!Mutable)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v3 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "could not create new mutable dictionary", v8, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 0, "CLNameValuePair::CLNameValuePair()", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return a1;
}

uint64_t sub_19B431834@<X0>(const __CFString *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_19B4318A4(a1, a2);
  if ((result & 1) == 0)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_19B431888(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B4318A4(const __CFString *cf, std::string *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(cf, 0x8000100u);
      if (!CStringPtr)
      {
        *bufferSize = 0;
        v41.length = CFStringGetLength(cf);
        v41.location = 0;
        CFStringGetBytes(cf, v41, 0x8000100u, 0, 0, 0, 0, bufferSize);
        ++*bufferSize;
        operator new[]();
      }

      sub_19B43212C(a2, CStringPtr);
      return 1;
    }

    v7 = CFGetTypeID(cf);
    if (v7 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      if (BytePtr)
      {
        v10 = xmlBufferCreate();
        if (v10)
        {
          v11 = v10;
          v12 = xmlNewTextWriterMemory(v10, 0);
          if (v12)
          {
            v13 = v12;
            v14 = xmlTextWriterWriteBase64(v12, BytePtr, 0, Length);
            v6 = v14 != -1;
            if (v14 != -1)
            {
              xmlTextWriterFlush(v13);
              v15 = xmlBufferContent(v11);
              v16 = xmlBufferLength(v11);
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
              }

              v17 = off_1ED71C828;
              if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218498;
                *&buf[4] = v15;
                *&buf[12] = 1024;
                *&buf[14] = v16;
                *&buf[18] = 2080;
                *&buf[20] = v15;
                _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "processed %p %d to (%s)", buf, 0x1Cu);
              }

              v18 = sub_19B420058();
              if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C820 != -1)
                {
                  dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
                }

                *bufferSize = 134218498;
                *&bufferSize[4] = v15;
                v35 = 1024;
                v36 = v16;
                v37 = 2080;
                v38 = v15;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "processed %p %d to (%s)", bufferSize, 28, v33);
                v20 = v19;
                sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLNameValuePair::encodeBase64(const void *, unsigned long, std::string &)", "CoreLocation: %s\n", v19);
                if (v20 != buf)
                {
                  free(v20);
                }
              }

              if (v16 < 0)
              {
                sub_19B4C51DC();
              }

              if (v16 >= 0x17)
              {
                operator new();
              }

              buf[23] = v16;
              if (v16)
              {
                memmove(buf, v15, v16);
              }

              buf[v16] = 0;
              if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(a2->__r_.__value_.__l.__data_);
              }

              *&a2->__r_.__value_.__l.__data_ = *buf;
              a2->__r_.__value_.__r.__words[2] = *&buf[16];
            }

            xmlFreeTextWriter(v13);
          }

          else
          {
            v6 = 0;
          }

          xmlBufferFree(v11);
          return v6;
        }
      }

      else
      {
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v29 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
        {
          *buf = 67240192;
          *&buf[4] = Length;
          _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_FAULT, "can't convert %{public}u data bytes", buf, 8u);
        }

        v30 = sub_19B420058();
        if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
          }

          *bufferSize = 67240192;
          *&bufferSize[4] = Length;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "can't convert %{public}u data bytes", bufferSize, 8);
          v32 = v31;
          sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, std::string &)", "CoreLocation: %s\n", v31);
          if (v32 != buf)
          {
            free(v32);
          }
        }
      }

      return 0;
    }
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
  }

  v21 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEFAULT))
  {
    if (cf)
    {
      v22 = CFGetTypeID(cf);
    }

    else
    {
      v22 = -1;
    }

    *buf = 134349056;
    *&buf[4] = v22;
    _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEFAULT, "#Warning type IDs do not match - %{public}lu", buf, 0xCu);
  }

  v23 = sub_19B420058();
  if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v24 = off_1ED71C828;
    if (cf)
    {
      v25 = CFGetTypeID(cf);
    }

    else
    {
      v25 = -1;
    }

    *bufferSize = 134349056;
    *&bufferSize[4] = v25;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v24, 0, "#Warning type IDs do not match - %{public}lu", bufferSize, 12);
    v27 = v26;
    sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, std::string &)", "CoreLocation: %s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = 0;
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  v6 = 0;
  a2->__r_.__value_.__s.__data_[0] = 0;
  return v6;
}

std::string *sub_19B43212C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_19B432174(a1, __s, v4);
}

std::string *sub_19B432174(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

void sub_19B432230(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v22[2] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) < 0)
  {
    if (!*(a1 + 8))
    {
LABEL_7:
      v4 = CFCopyUserName();
      goto LABEL_8;
    }

    v2 = *a1;
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_7;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v2, 0x8000100u);
LABEL_8:
  v5 = v4;
  sub_19B421798();
  if (sub_19B43242C() && (v6 = getenv("_SET_CLPERSISTENTSTORE_TEST_PATH")) != 0)
  {
    v8 = MEMORY[0x1E696AEC0];
    v22[0] = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, v6);
    v22[1] = v5;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v22, 2);
    v12 = objc_msgSend_pathWithComponents_(v8, v11, v10);
    v15 = objc_msgSend_UTF8String(v12, v13, v14);
    sub_19B428B50(&v20, v15);
    *a2 = v20;
    a2[2] = v21;
  }

  else if (v5)
  {
    v16 = CFCopyHomeDirectoryURLForUser();
    v17 = v16;
    if (v16)
    {
      v18 = CFURLCopyFileSystemPath(v16, kCFURLPOSIXPathStyle);
      v19 = v18;
      if (v18)
      {
        sub_19B431834(v18, &v20);
        *a2 = v20;
        a2[2] = v21;
        CFRelease(v19);
      }

      CFRelease(v17);
    }

    CFRelease(v5);
  }
}

void sub_19B4323AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B43242C()
{
  if (qword_1ED71C9F8 != -1)
  {
    dispatch_once(&qword_1ED71C9F8, &unk_1F0E3A500);
  }

  return byte_1ED71C974;
}

void sub_19B432474()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) == 1)
    {
      byte_1ED71C974 = 1;
    }

    CFRelease(v1);
  }
}

void sub_19B4324F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_3;
  }

  v5 = CFCopyUserName();
  sub_19B431834(v5, &v16);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *&v16.__r_.__value_.__l.__data_;
  v6 = v16.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v16.__r_.__value_.__l + 2);
  v4 = HIBYTE(v6);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!*(a1 + 8))
  {
    return;
  }

LABEL_11:
  sub_19B432654(&v15);
  v7 = std::string::append(&v15, "/private/var/Managed Preferences/", 0x21uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v12 = std::string::append(&v16, v10, v11);
  size = v12->__r_.__value_.__l.__size_;
  *a2 = v12->__r_.__value_.__r.__words[0];
  *(a2 + 8) = size;
  *(a2 + 15) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  LOBYTE(size) = *(&v12->__r_.__value_.__s + 23);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a2 + 23) = size;
  if (v14 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_19B432620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

const __CFString *sub_19B432654@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (qword_1ED71CAA8 != -1)
  {
    dispatch_once(&qword_1ED71CAA8, &unk_1F0E29020);
  }

  result = qword_1ED71CAA0;
  if (qword_1ED71CAA0)
  {

    return sub_19B431834(result, a1);
  }

  return result;
}

uint64_t sub_19B4326E4(uint64_t *a1, const char *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFF8];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2);
  isDirectory = objc_msgSend_fileURLWithPath_isDirectory_(v4, v6, v5, 0);
  if (isDirectory)
  {
    v52 = 0;
    if (objc_opt_respondsToSelector())
    {
      v9 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], v8, isDirectory, 0, &v52);
    }

    else
    {
      v9 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x1E695DEF0], v8, isDirectory);
    }

    v15 = *a1;
    if (!v9)
    {
      (*(v15 + 872))(a1);
      result = v52;
      if (!v52)
      {
        return result;
      }

      v18 = objc_msgSend_domain(v52, v16, v17);
      if (objc_msgSend_isEqual_(v18, v19, *MEMORY[0x1E696A250]) && objc_msgSend_code(v52, v20, v21) == 260)
      {
        if (qword_1ED71C7F8 != -1)
        {
          dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
        }

        v22 = qword_1ED71C7F0;
        if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_msgSend_description(v52, v23, v24);
          v28 = objc_msgSend_UTF8String(v25, v26, v27);
          *buf = 68289538;
          v54 = 0;
          v55 = 2082;
          v56 = "";
          v57 = 2082;
          v58 = a2;
          v59 = 2082;
          v60 = v28;
          _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED71C7F8 != -1)
          {
            dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
          }
        }

        v29 = qword_1ED71C7F0;
        result = os_signpost_enabled(qword_1ED71C7F0);
        if (!result)
        {
          return result;
        }

        v32 = objc_msgSend_description(v52, v30, v31);
        v35 = objc_msgSend_UTF8String(v32, v33, v34);
        *buf = 68289538;
        v54 = 0;
        v55 = 2082;
        v56 = "";
        v57 = 2082;
        v58 = a2;
        v59 = 2082;
        v60 = v35;
        v13 = "file does not exist... clearing";
        v14 = "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      else
      {
        if (qword_1ED71C7F8 != -1)
        {
          dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
        }

        v39 = qword_1ED71C7F0;
        if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_ERROR))
        {
          v42 = objc_msgSend_description(v52, v40, v41);
          v45 = objc_msgSend_UTF8String(v42, v43, v44);
          *buf = 68289538;
          v54 = 0;
          v55 = 2082;
          v56 = "";
          v57 = 2082;
          v58 = a2;
          v59 = 2082;
          v60 = v45;
          _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED71C7F8 != -1)
          {
            dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
          }
        }

        v29 = qword_1ED71C7F0;
        result = os_signpost_enabled(qword_1ED71C7F0);
        if (!result)
        {
          return result;
        }

        v48 = objc_msgSend_description(v52, v46, v47);
        v51 = objc_msgSend_UTF8String(v48, v49, v50);
        *buf = 68289538;
        v54 = 0;
        v55 = 2082;
        v56 = "";
        v57 = 2082;
        v58 = a2;
        v59 = 2082;
        v60 = v51;
        v13 = "#Warning Error reading file";
        v14 = "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      v37 = v29;
      v38 = 38;
      goto LABEL_41;
    }

    if ((*(v15 + 784))(a1))
    {
      return 1;
    }

    if (qword_1ED71C7F8 != -1)
    {
      dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
    }

    v36 = qword_1ED71C7F0;
    if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v54 = 0;
      v55 = 2082;
      v56 = "";
      v57 = 2082;
      v58 = a2;
      _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED71C7F8 != -1)
      {
        dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
      }
    }

    v11 = qword_1ED71C7F0;
    result = os_signpost_enabled(qword_1ED71C7F0);
    if (result)
    {
      *buf = 68289282;
      v54 = 0;
      v55 = 2082;
      v56 = "";
      v57 = 2082;
      v58 = a2;
      v13 = "could not deserialize property list";
      v14 = "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}";
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_1ED71C7F8 != -1)
    {
      dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
    }

    v10 = qword_1ED71C7F0;
    if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v54 = 0;
      v55 = 2082;
      v56 = "";
      v57 = 2082;
      v58 = a2;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED71C7F8 != -1)
      {
        dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
      }
    }

    v11 = qword_1ED71C7F0;
    result = os_signpost_enabled(qword_1ED71C7F0);
    if (result)
    {
      *buf = 68289282;
      v54 = 0;
      v55 = 2082;
      v56 = "";
      v57 = 2082;
      v58 = a2;
      v13 = "Invalid fileURL";
      v14 = "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}";
LABEL_32:
      v37 = v11;
      v38 = 28;
LABEL_41:
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v13, v14, buf, v38);
      return 0;
    }
  }

  return result;
}

void sub_19B432D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, int a12, __int128 a13, __int128 a14, __int16 a15, uint64_t a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    if (qword_1ED71C7F8 != -1)
    {
      dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
    }

    v17 = qword_1ED71C7F0;
    if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_ERROR))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = "";
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
      if (qword_1ED71C7F8 != -1)
      {
        dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
      }
    }

    v18 = qword_1ED71C7F0;
    if (os_signpost_enabled(qword_1ED71C7F0))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = "";
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Can't load data from file", "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
    }

    objc_end_catch();
    JUMPOUT(0x19B432C20);
  }

  _Unwind_Resume(a1);
}

BOOL sub_19B432E80(uint64_t a1)
{
  os_unfair_lock_lock(&unk_1ED71C8F0);
  v2 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_7;
    }

    v2 = *v2;
    goto LABEL_6;
  }

  if (*(a1 + 71))
  {
LABEL_6:
    sub_19B4326E4((a1 + 120), v2);
  }

LABEL_7:
  v3 = CFPreferencesSynchronize(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E898]);
  if (*(a1 + 16) == 1)
  {
    sub_19B60DB30(a1, 0);
  }

  os_unfair_lock_unlock(&unk_1ED71C8F0);
  return v3 != 0;
}

void sub_19B432FA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B432FD8(uint64_t a1, const char *a2, _DWORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B43304C(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B43304C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_19B5EDC64(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v10 = off_1ED71C828;
      v11 = (*(*a1 + 840))(a1);
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v16, 22);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, int &, int) const", "CoreLocation: %s\n", v12);
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

BOOL sub_19B4332F8(uint64_t a1, const __CFString *a2, void *a3)
{
  os_unfair_lock_lock(&unk_1ED71C8F0);
  v6 = sub_19B433A44(a1 + 120, a2, a3);
  os_unfair_lock_unlock(&unk_1ED71C8F0);
  if (v6)
  {
    return 1;
  }

  v7 = CFPreferencesCopyValue(a2, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  *a3 = v7;
  if (v7)
  {
    return 1;
  }

  return sub_19B433A44(a1 + 104, a2, a3);
}

void sub_19B4333C0(char *a1)
{
  *a1 = &unk_1F0E317E8;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0xFFFFFFFF00000000;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  sub_19B4294F0(a1 + 5, "CLLogBase", 1, 0);
}

void sub_19B433474(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B4334F0(uint64_t a1, const __CFString *a2, uint64_t *a3, int a4)
{
  v42 = *MEMORY[0x1E69E9840];
  cf = 0;
  result = (*(*a1 + 912))(a1, a2, &cf);
  if (result)
  {
    *a3 = 0;
    v8 = CFGetTypeID(cf);
    if (v8 == CFArrayGetTypeID())
    {
      v9 = a4 & ~(a4 >> 31);
      if (CFArrayGetCount(cf) > v9)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v9);
LABEL_46:
        *a3 = ValueAtIndex;
        CFRetain(ValueAtIndex);
        CFRelease(cf);
        return 1;
      }

      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v20 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        sub_19B431834(a2, __p);
        v21 = SBYTE3(v37);
        v22 = *__p;
        Count = CFArrayGetCount(cf);
        v24 = __p;
        if (v21 < 0)
        {
          v24 = v22;
        }

        *buf = 136446722;
        *v39 = v24;
        *&v39[8] = 1026;
        *&v39[10] = v9;
        v40 = 2050;
        v41 = Count;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "specified index is out of range for key %{public}s (%{public}d of %{public}ld)", buf, 0x1Cu);
        if (SBYTE3(v37) < 0)
        {
          operator delete(*__p);
        }
      }

      v25 = sub_19B420058();
      if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
      {
        goto LABEL_43;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v26 = off_1ED71C828;
      sub_19B431834(a2, v32);
      v27 = v33;
      v28 = v32[0];
      v29 = CFArrayGetCount(cf);
      v30 = v32;
      if (v27 < 0)
      {
        v30 = v28;
      }

      *__p = 136446722;
      *&__p[4] = v30;
      *&__p[12] = 1026;
      *&__p[14] = v9;
      v36 = 2050;
      v37 = v29;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v26, 17, "specified index is out of range for key %{public}s (%{public}d of %{public}ld)", __p, 28);
      v19 = v31;
      if (v33 < 0)
      {
        operator delete(v32[0]);
      }
    }

    else
    {
      if (a4 < 1)
      {
        ValueAtIndex = cf;
        goto LABEL_46;
      }

      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v11 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v12 = CFGetTypeID(cf);
        sub_19B431834(a2, __p);
        v13 = (v37 & 0x80000000) == 0 ? __p : *__p;
        *buf = 67240706;
        *v39 = a4;
        *&v39[4] = 2050;
        *&v39[6] = v12;
        v40 = 2082;
        v41 = v13;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "specified index %{public}d not applicable to type %{public}lu for key %{public}s", buf, 0x1Cu);
        if (SBYTE3(v37) < 0)
        {
          operator delete(*__p);
        }
      }

      v14 = sub_19B420058();
      if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
      {
        goto LABEL_43;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v15 = off_1ED71C828;
      v16 = CFGetTypeID(cf);
      sub_19B431834(a2, v32);
      if (v33 >= 0)
      {
        v17 = v32;
      }

      else
      {
        v17 = v32[0];
      }

      *__p = 67240706;
      *&__p[4] = a4;
      *&__p[8] = 2050;
      *&__p[10] = v16;
      v36 = 2082;
      v37 = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v15, 17, "specified index %{public}d not applicable to type %{public}lu for key %{public}s", __p, 28);
      v19 = v18;
      if (v33 < 0)
      {
        operator delete(v32[0]);
      }
    }

    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::copyInternal(CFStringRef, CFTypeRef &, int) const", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }

LABEL_43:
    CFRelease(cf);
    result = *a3;
    if (*a3)
    {
      CFRelease(result);
      return 0;
    }
  }

  return result;
}

void sub_19B433A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B433A44(uint64_t a1, const void *a2, void *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 8), a2);
  v5 = Value;
  *a3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v5 != 0;
}

os_log_t sub_19B433A88()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433AB8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433AE8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433B18()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433B48()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433B78()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433BA8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433BD8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433C08()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433C38()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433C68()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433C98()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433CC8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433CF8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433D28()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433D58()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433D88()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433DB8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433DE8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433E18()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433E48()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433E78()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

void sub_19B433EE4()
{
  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  v0 = 1;
  if ((dword_1ED71C97C - 259) >= 0x15)
  {
    v0 = (dword_1ED71C97C - 198) < 4 || dword_1ED71C97C == 1;
  }

  byte_1ED71C971 = v0;
}

void sub_19B433F54()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1))
    {
      v3 = 4;
    }

    else
    {
      v3 = sub_19B433FE8();
    }

    dword_1ED71C97C = v3;

    CFRelease(v1);
  }

  else
  {
    dword_1ED71C97C = sub_19B433FE8();
  }
}

uint64_t sub_19B433FE8()
{
  v21 = *MEMORY[0x1E69E9840];
  if (MGIsDeviceOfType())
  {
    return 2;
  }

  v19 = 1244490093;
  *buf = xmmword_19B7B7F10;
  if (MGIsDeviceOfType())
  {
    return 5;
  }

  v14 = 1377801277;
  *v13 = xmmword_19B7B7F24;
  if (MGIsDeviceOfType())
  {
    return 5;
  }

  if (MGIsDeviceOfType())
  {
    return 19;
  }

  if (MGIsDeviceOfType())
  {
    return 20;
  }

  v19 = 1839812531;
  *buf = xmmword_19B7B7F38;
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 20;
  }

  if (MGIsDeviceOfType())
  {
    return 52;
  }

  v19 = -435113336;
  *buf = xmmword_19B7B7F4C;
  if (MGIsDeviceOfType())
  {
    return 53;
  }

  v19 = -1997581659;
  *buf = xmmword_19B7B7F60;
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 158;
  }

  v19 = -1441055153;
  *buf = xmmword_19B7B7F74;
  if (MGIsDeviceOfType())
  {
    return 159;
  }

  if (MGIsDeviceOfType())
  {
    return 160;
  }

  if (MGIsDeviceOfType())
  {
    return 3;
  }

  if (MGIsDeviceOfType())
  {
    return 6;
  }

  v19 = 1602014129;
  *buf = xmmword_19B7B7F88;
  if (MGIsDeviceOfType())
  {
    return 7;
  }

  v19 = -810116762;
  *buf = xmmword_19B7B7F9C;
  if (MGIsDeviceOfType())
  {
    return 8;
  }

  v19 = -1195351767;
  *buf = xmmword_19B7B7FB0;
  if (MGIsDeviceOfType())
  {
    return 9;
  }

  if (MGIsDeviceOfType())
  {
    return 10;
  }

  if (MGIsDeviceOfType())
  {
    return 11;
  }

  v19 = 1789837692;
  *buf = xmmword_19B7B7FC4;
  if (MGIsDeviceOfType())
  {
    return 13;
  }

  v19 = 48355600;
  *buf = xmmword_19B7B7FD8;
  if (MGIsDeviceOfType())
  {
    return 14;
  }

  v19 = -1239654590;
  *buf = xmmword_19B7B7FEC;
  if (MGIsDeviceOfType())
  {
    return 15;
  }

  v19 = -679691073;
  *buf = xmmword_19B7B8000;
  if (MGIsDeviceOfType())
  {
    return 16;
  }

  v19 = -1579092758;
  *buf = xmmword_19B7B8014;
  if (MGIsDeviceOfType())
  {
    return 17;
  }

  v19 = 1430379884;
  *buf = xmmword_19B7B8028;
  if (MGIsDeviceOfType())
  {
    return 18;
  }

  if (MGIsDeviceOfType())
  {
    return 21;
  }

  v19 = -798153473;
  *buf = xmmword_19B7B803C;
  if (MGIsDeviceOfType())
  {
    return 22;
  }

  v19 = -776721724;
  *buf = xmmword_19B7B8050;
  if (MGIsDeviceOfType())
  {
    return 23;
  }

  v19 = -1403227947;
  *buf = xmmword_19B7B8064;
  if (MGIsDeviceOfType())
  {
    return 24;
  }

  v19 = 729118884;
  *buf = xmmword_19B7B8078;
  if (MGIsDeviceOfType())
  {
    return 25;
  }

  v19 = 1046806126;
  *buf = xmmword_19B7B808C;
  if (MGIsDeviceOfType())
  {
    return 26;
  }

  v14 = -188760945;
  *v13 = xmmword_19B7B80A0;
  if (MGIsDeviceOfType())
  {
    return 26;
  }

  v19 = -489993439;
  *buf = xmmword_19B7B80B4;
  if (MGIsDeviceOfType())
  {
    return 27;
  }

  v19 = 886875686;
  *buf = xmmword_19B7B80C8;
  if (MGIsDeviceOfType())
  {
    return 28;
  }

  v19 = -1639077591;
  *buf = xmmword_19B7B80DC;
  if (MGIsDeviceOfType())
  {
    return 29;
  }

  v19 = 338555555;
  *buf = xmmword_19B7B80F0;
  if (MGIsDeviceOneOfType())
  {
    return 30;
  }

  v19 = 1032708406;
  *buf = xmmword_19B7B8104;
  if (MGIsDeviceOfType())
  {
    return 31;
  }

  v19 = 729903963;
  *buf = xmmword_19B7B8118;
  if (MGIsDeviceOfType())
  {
    return 32;
  }

  v19 = 1278131292;
  *buf = xmmword_19B7B812C;
  if (MGIsDeviceOfType())
  {
    return 33;
  }

  v19 = -1841712216;
  *buf = xmmword_19B7B8140;
  if (MGIsDeviceOfType())
  {
    return 34;
  }

  v19 = 1275676051;
  *buf = xmmword_19B7B8154;
  if (MGIsDeviceOfType())
  {
    return 35;
  }

  v19 = 1908474541;
  *buf = xmmword_19B7B8168;
  if (MGIsDeviceOfType())
  {
    return 36;
  }

  v19 = -1022451852;
  *buf = xmmword_19B7B817C;
  if (MGIsDeviceOfType())
  {
    return 62;
  }

  v19 = 1729782187;
  *buf = xmmword_19B7B8190;
  if (MGIsDeviceOfType())
  {
    return 63;
  }

  if (MGIsDeviceOfType())
  {
    return 37;
  }

  v19 = 368885834;
  *buf = xmmword_19B7B81A4;
  if (MGIsDeviceOfType())
  {
    return 38;
  }

  v19 = -414334491;
  *buf = xmmword_19B7B81B8;
  if (MGIsDeviceOfType())
  {
    return 39;
  }

  if (MGIsDeviceOfType())
  {
    return 40;
  }

  v19 = -526227167;
  *buf = xmmword_19B7B81CC;
  if (MGIsDeviceOfType())
  {
    return 41;
  }

  v19 = -1509831889;
  *buf = xmmword_19B7B81E0;
  if (MGIsDeviceOfType())
  {
    return 42;
  }

  v19 = 1960366092;
  *buf = xmmword_19B7B81F4;
  if (MGIsDeviceOfType())
  {
    return 43;
  }

  v19 = -2114570942;
  *buf = xmmword_19B7B8208;
  if (MGIsDeviceOfType())
  {
    return 148;
  }

  v19 = -1527788847;
  *buf = xmmword_19B7B821C;
  if (MGIsDeviceOfType())
  {
    return 44;
  }

  v19 = 1532898719;
  *buf = xmmword_19B7B8230;
  if (MGIsDeviceOfType())
  {
    return 45;
  }

  v19 = 996646949;
  *buf = xmmword_19B7B8244;
  if (MGIsDeviceOfType())
  {
    return 46;
  }

  v19 = -563086000;
  *buf = xmmword_19B7B8258;
  if (MGIsDeviceOfType())
  {
    return 47;
  }

  v19 = 659506830;
  *buf = xmmword_19B7B826C;
  if (MGIsDeviceOfType())
  {
    return 48;
  }

  v19 = 213746202;
  *buf = xmmword_19B7B8280;
  if (MGIsDeviceOfType())
  {
    return 49;
  }

  v19 = 289690957;
  *buf = xmmword_19B7B8294;
  if (MGIsDeviceOfType())
  {
    return 50;
  }

  v19 = 586720268;
  *buf = xmmword_19B7B82A8;
  if (MGIsDeviceOfType())
  {
    return 51;
  }

  v19 = -350584140;
  *buf = xmmword_19B7B82BC;
  if (MGIsDeviceOfType())
  {
    return 54;
  }

  v19 = 368778837;
  *buf = xmmword_19B7B82D0;
  if (MGIsDeviceOfType())
  {
    return 55;
  }

  if (MGIsDeviceOfType())
  {
    return 56;
  }

  v19 = -1418383976;
  *buf = xmmword_19B7B82E4;
  if (MGIsDeviceOfType())
  {
    return 57;
  }

  v19 = -1213485500;
  *buf = xmmword_19B7B82F8;
  if (MGIsDeviceOfType())
  {
    return 58;
  }

  if (MGIsDeviceOfType())
  {
    return 59;
  }

  v19 = 1425254930;
  *buf = xmmword_19B7B830C;
  if (MGIsDeviceOfType())
  {
    return 60;
  }

  v19 = 1899561076;
  *buf = xmmword_19B7B8320;
  if (MGIsDeviceOfType())
  {
    return 61;
  }

  v19 = -199226823;
  *buf = xmmword_19B7B8334;
  if (MGIsDeviceOfType())
  {
    return 64;
  }

  v14 = 1412427398;
  *v13 = xmmword_19B7B8348;
  if (MGIsDeviceOfType())
  {
    return 64;
  }

  v19 = -1283070668;
  *buf = xmmword_19B7B835C;
  if (MGIsDeviceOfType())
  {
    return 65;
  }

  v14 = 160260070;
  *v13 = xmmword_19B7B8370;
  if (MGIsDeviceOfType())
  {
    return 65;
  }

  v19 = 1711910369;
  *buf = xmmword_19B7B8384;
  if (MGIsDeviceOfType())
  {
    return 66;
  }

  v19 = -1282800328;
  *buf = xmmword_19B7B8398;
  if (MGIsDeviceOfType())
  {
    return 67;
  }

  v19 = 897736383;
  *buf = xmmword_19B7B83AC;
  if (MGIsDeviceOfType())
  {
    return 68;
  }

  v19 = -453987047;
  *buf = xmmword_19B7B83C0;
  if (MGIsDeviceOfType())
  {
    return 69;
  }

  v19 = 450980336;
  *buf = xmmword_19B7B83D4;
  if (MGIsDeviceOfType())
  {
    return 70;
  }

  v19 = 414393924;
  *buf = xmmword_19B7B83E8;
  if (MGIsDeviceOfType())
  {
    return 71;
  }

  v19 = -996295886;
  *buf = xmmword_19B7B83FC;
  if (MGIsDeviceOfType())
  {
    return 72;
  }

  v19 = -337121064;
  *buf = xmmword_19B7B8410;
  if (MGIsDeviceOfType())
  {
    return 73;
  }

  v19 = -2092955395;
  *buf = xmmword_19B7B8424;
  if (MGIsDeviceOfType())
  {
    return 74;
  }

  v19 = 674998600;
  *buf = xmmword_19B7B8438;
  if (MGIsDeviceOfType())
  {
    return 75;
  }

  v19 = 317289457;
  *buf = xmmword_19B7B844C;
  if (MGIsDeviceOfType())
  {
    return 76;
  }

  v19 = 401945557;
  *buf = xmmword_19B7B8460;
  if (MGIsDeviceOfType())
  {
    return 77;
  }

  v19 = -232427879;
  *buf = xmmword_19B7B8474;
  if (MGIsDeviceOfType())
  {
    return 78;
  }

  v19 = -427474227;
  *buf = xmmword_19B7B8488;
  if (MGIsDeviceOfType())
  {
    return 79;
  }

  v14 = 1477534141;
  *v13 = xmmword_19B7B849C;
  if (MGIsDeviceOfType())
  {
    return 79;
  }

  v19 = -1843102369;
  *buf = xmmword_19B7B84B0;
  if (MGIsDeviceOfType())
  {
    return 80;
  }

  if (MGIsDeviceOfType())
  {
    return 81;
  }

  v19 = 470738981;
  *buf = xmmword_19B7B84C4;
  if (MGIsDeviceOfType())
  {
    return 82;
  }

  if (MGIsDeviceOfType())
  {
    return 83;
  }

  v19 = 710807826;
  *buf = xmmword_19B7B84D8;
  if (MGIsDeviceOfType())
  {
    return 84;
  }

  if (MGIsDeviceOfType())
  {
    return 85;
  }

  v19 = 1860682089;
  *buf = xmmword_19B7B84EC;
  if (MGIsDeviceOfType())
  {
    return 86;
  }

  if (MGIsDeviceOfType())
  {
    return 87;
  }

  v19 = -2085056298;
  *buf = xmmword_19B7B8500;
  if (MGIsDeviceOfType())
  {
    return 88;
  }

  v19 = 2146530832;
  *buf = xmmword_19B7B8514;
  if (MGIsDeviceOfType())
  {
    return 89;
  }

  v19 = -1742178852;
  *buf = xmmword_19B7B8528;
  if (MGIsDeviceOfType())
  {
    return 90;
  }

  v19 = 617174804;
  *buf = xmmword_19B7B853C;
  if (MGIsDeviceOfType())
  {
    return 91;
  }

  v19 = 1330813729;
  *buf = xmmword_19B7B8550;
  if (MGIsDeviceOfType())
  {
    return 92;
  }

  if (MGIsDeviceOfType())
  {
    return 93;
  }

  if (MGIsDeviceOfType())
  {
    return 94;
  }

  v19 = 152704997;
  *buf = xmmword_19B7B8564;
  if (MGIsDeviceOfType())
  {
    return 95;
  }

  v19 = -338255497;
  *buf = xmmword_19B7B8578;
  if (MGIsDeviceOfType())
  {
    return 96;
  }

  v19 = -1040127899;
  *buf = xmmword_19B7B858C;
  if (MGIsDeviceOfType())
  {
    return 97;
  }

  v19 = 283967174;
  *buf = xmmword_19B7B85A0;
  if (MGIsDeviceOfType())
  {
    return 98;
  }

  v19 = 1530707451;
  *buf = xmmword_19B7B85B4;
  if (MGIsDeviceOfType())
  {
    return 99;
  }

  v19 = -871113647;
  *buf = xmmword_19B7B85C8;
  if (MGIsDeviceOfType())
  {
    return 100;
  }

  v19 = 483476120;
  *buf = xmmword_19B7B85DC;
  if (MGIsDeviceOfType())
  {
    return 101;
  }

  v19 = 1472775220;
  *buf = xmmword_19B7B85F0;
  if (MGIsDeviceOfType())
  {
    return 102;
  }

  v19 = 56502976;
  *buf = xmmword_19B7B8604;
  if (MGIsDeviceOfType())
  {
    return 103;
  }

  v19 = 282158961;
  *buf = xmmword_19B7B8618;
  if (MGIsDeviceOfType())
  {
    return 104;
  }

  v19 = 1282132887;
  *buf = xmmword_19B7B862C;
  if (MGIsDeviceOfType())
  {
    return 105;
  }

  v19 = -961843768;
  *buf = xmmword_19B7B8640;
  if (MGIsDeviceOfType())
  {
    return 106;
  }

  v19 = 1326690998;
  *buf = xmmword_19B7B8654;
  if (MGIsDeviceOfType())
  {
    return 107;
  }

  v19 = -441172408;
  *buf = xmmword_19B7B8668;
  if (MGIsDeviceOfType())
  {
    return 108;
  }

  v19 = -126099363;
  *buf = xmmword_19B7B867C;
  if (MGIsDeviceOfType())
  {
    return 109;
  }

  v19 = 1756484512;
  *buf = xmmword_19B7B8690;
  if (MGIsDeviceOfType())
  {
    return 110;
  }

  v19 = 763775061;
  *buf = xmmword_19B7B86A4;
  if (MGIsDeviceOfType())
  {
    return 111;
  }

  v19 = -1092155788;
  *buf = xmmword_19B7B86B8;
  if (MGIsDeviceOfType())
  {
    return 112;
  }

  v19 = -557458837;
  *buf = xmmword_19B7B86CC;
  if (MGIsDeviceOfType())
  {
    return 113;
  }

  v19 = -63049871;
  *buf = xmmword_19B7B86E0;
  if (MGIsDeviceOfType())
  {
    return 114;
  }

  v19 = 1730000236;
  *buf = xmmword_19B7B86F4;
  if (MGIsDeviceOfType())
  {
    return 115;
  }

  v19 = 406601745;
  *buf = xmmword_19B7B8708;
  if (MGIsDeviceOfType())
  {
    return 116;
  }

  v19 = 1530338216;
  *buf = xmmword_19B7B871C;
  if (MGIsDeviceOfType())
  {
    return 117;
  }

  v19 = -1930811061;
  *buf = xmmword_19B7B8730;
  if (MGIsDeviceOfType())
  {
    return 118;
  }

  v19 = 1654218604;
  *buf = xmmword_19B7B8744;
  if (MGIsDeviceOfType())
  {
    return 119;
  }

  v19 = -182498503;
  *buf = xmmword_19B7B8758;
  if (MGIsDeviceOfType())
  {
    return 124;
  }

  v19 = -2030489149;
  *buf = xmmword_19B7B876C;
  if (MGIsDeviceOfType())
  {
    return 120;
  }

  v19 = 841005628;
  *buf = xmmword_19B7B8780;
  if (MGIsDeviceOfType())
  {
    return 121;
  }

  v19 = 223445260;
  *buf = xmmword_19B7B8794;
  if (MGIsDeviceOfType())
  {
    return 122;
  }

  v19 = 1219348060;
  *buf = xmmword_19B7B87A8;
  if (MGIsDeviceOfType())
  {
    return 123;
  }

  v19 = -1384522500;
  *buf = xmmword_19B7B87BC;
  if (MGIsDeviceOfType())
  {
    return 125;
  }

  v19 = -782763850;
  *buf = xmmword_19B7B87D0;
  if (MGIsDeviceOfType())
  {
    return 126;
  }

  v19 = 1815762806;
  *buf = xmmword_19B7B87E4;
  if (MGIsDeviceOfType())
  {
    return 127;
  }

  v19 = -1897771119;
  *buf = xmmword_19B7B87F8;
  if (MGIsDeviceOfType())
  {
    return 128;
  }

  v19 = -652049476;
  *buf = xmmword_19B7B880C;
  if (MGIsDeviceOfType())
  {
    return 129;
  }

  v19 = 373548423;
  *buf = xmmword_19B7B8820;
  if (MGIsDeviceOfType())
  {
    return 130;
  }

  v19 = -1921398171;
  *buf = xmmword_19B7B8834;
  if (MGIsDeviceOfType())
  {
    return 131;
  }

  v19 = 2140507472;
  *buf = xmmword_19B7B8848;
  if (MGIsDeviceOfType())
  {
    return 132;
  }

  v19 = -936391310;
  *buf = xmmword_19B7B885C;
  if (MGIsDeviceOfType())
  {
    return 133;
  }

  v19 = 2030516999;
  *buf = xmmword_19B7B8870;
  *v13 = xmmword_19B7B8884;
  v14 = -1276010597;
  if (MGIsDeviceOneOfType())
  {
    return 134;
  }

  v19 = -762483149;
  *buf = xmmword_19B7B8898;
  *v13 = xmmword_19B7B88AC;
  v14 = -1926937532;
  if (MGIsDeviceOneOfType())
  {
    return 135;
  }

  v19 = -1902732724;
  *buf = xmmword_19B7B88C0;
  *v13 = xmmword_19B7B88D4;
  v14 = -342357580;
  if (MGIsDeviceOneOfType())
  {
    return 136;
  }

  v19 = 300442574;
  *buf = xmmword_19B7B88E8;
  *v13 = xmmword_19B7B88FC;
  v14 = -1294188889;
  if (MGIsDeviceOneOfType())
  {
    return 137;
  }

  if (MGIsDeviceOfType())
  {
    return 138;
  }

  v19 = -61007701;
  *buf = xmmword_19B7B8910;
  if (MGIsDeviceOfType())
  {
    return 139;
  }

  if (MGIsDeviceOfType())
  {
    return 140;
  }

  v19 = -235416490;
  *buf = xmmword_19B7B8924;
  if (MGIsDeviceOfType())
  {
    return 141;
  }

  v19 = -820493242;
  *buf = xmmword_19B7B8938;
  if (MGIsDeviceOfType())
  {
    return 143;
  }

  v19 = -1157300313;
  *buf = xmmword_19B7B894C;
  if (MGIsDeviceOfType())
  {
    return 144;
  }

  v19 = -2132668294;
  *buf = xmmword_19B7B8960;
  if (MGIsDeviceOfType())
  {
    return 145;
  }

  if (MGIsDeviceOfType())
  {
    return 146;
  }

  if (MGIsDeviceOfType())
  {
    return 147;
  }

  if (MGIsDeviceOfType())
  {
    return 149;
  }

  if (MGIsDeviceOfType())
  {
    return 150;
  }

  v19 = 1737149739;
  *buf = xmmword_19B7B8974;
  if (MGIsDeviceOfType())
  {
    return 151;
  }

  v19 = 1577888303;
  *buf = xmmword_19B7B8988;
  if (MGIsDeviceOfType())
  {
    return 152;
  }

  v19 = -1918230744;
  *buf = xmmword_19B7B899C;
  if (MGIsDeviceOfType())
  {
    return 153;
  }

  v19 = 1126727276;
  *buf = xmmword_19B7B89B0;
  if (MGIsDeviceOfType())
  {
    return 154;
  }

  v19 = 300130091;
  *buf = xmmword_19B7B89C4;
  if (MGIsDeviceOfType())
  {
    return 155;
  }

  v19 = 343814884;
  *buf = xmmword_19B7B89D8;
  if (MGIsDeviceOfType())
  {
    return 156;
  }

  v19 = -1675932945;
  *buf = xmmword_19B7B89EC;
  if (MGIsDeviceOfType())
  {
    return 157;
  }

  if (MGIsDeviceOfType())
  {
    return 161;
  }

  if (MGIsDeviceOfType())
  {
    return 162;
  }

  if (MGIsDeviceOfType())
  {
    return 166;
  }

  v19 = -1840391155;
  *buf = xmmword_19B7B8A00;
  if (MGIsDeviceOfType())
  {
    return 167;
  }

  v19 = -121925081;
  *buf = xmmword_19B7B8A14;
  if (MGIsDeviceOfType())
  {
    return 142;
  }

  v19 = 1071957977;
  *buf = xmmword_19B7B8A28;
  if (MGIsDeviceOfType())
  {
    return 168;
  }

  v19 = 438437663;
  *buf = xmmword_19B7B8A3C;
  if (MGIsDeviceOfType())
  {
    return 169;
  }

  v19 = 1575123478;
  *buf = xmmword_19B7B8A50;
  if (MGIsDeviceOfType())
  {
    return 170;
  }

  v19 = -382792827;
  *buf = xmmword_19B7B8A64;
  if (MGIsDeviceOfType())
  {
    return 171;
  }

  v19 = 123138233;
  *buf = xmmword_19B7B8A78;
  if (MGIsDeviceOfType())
  {
    return 172;
  }

  v19 = 681511593;
  *buf = xmmword_19B7B8A8C;
  if (MGIsDeviceOfType())
  {
    return 173;
  }

  v19 = 169342588;
  *buf = xmmword_19B7B8AA0;
  if (MGIsDeviceOfType())
  {
    return 174;
  }

  if (MGIsDeviceOfType())
  {
    return 175;
  }

  v19 = 713503427;
  *buf = xmmword_19B7B8AB4;
  if (MGIsDeviceOfType())
  {
    return 176;
  }

  v19 = -1632750650;
  *buf = xmmword_19B7B8AC8;
  if (MGIsDeviceOfType())
  {
    return 177;
  }

  v19 = -1820426635;
  *buf = xmmword_19B7B8ADC;
  if (MGIsDeviceOfType())
  {
    return 178;
  }

  v19 = -937652876;
  *buf = xmmword_19B7B8AF0;
  if (MGIsDeviceOfType())
  {
    return 179;
  }

  v19 = 1874287171;
  *buf = xmmword_19B7B8B04;
  if (MGIsDeviceOfType())
  {
    return 180;
  }

  v19 = -781324731;
  *buf = xmmword_19B7B8B18;
  if (MGIsDeviceOfType())
  {
    return 181;
  }

  v19 = 1214880059;
  *buf = xmmword_19B7B8B2C;
  if (MGIsDeviceOfType())
  {
    return 182;
  }

  v19 = 426359977;
  *buf = xmmword_19B7B8B40;
  if (MGIsDeviceOfType())
  {
    return 183;
  }

  v19 = -1354433901;
  *buf = xmmword_19B7B8B54;
  if (MGIsDeviceOfType())
  {
    return 184;
  }

  v19 = 1021543808;
  *buf = xmmword_19B7B8B68;
  if (MGIsDeviceOfType())
  {
    return 185;
  }

  if (MGIsDeviceOfType())
  {
    return 186;
  }

  if (MGIsDeviceOfType())
  {
    return 187;
  }

  v19 = 1459208360;
  *buf = xmmword_19B7B8B7C;
  if (MGIsDeviceOfType())
  {
    return 188;
  }

  if (MGIsDeviceOfType())
  {
    return 189;
  }

  v19 = 431774303;
  *buf = xmmword_19B7B8B90;
  if (MGIsDeviceOfType())
  {
    return 180;
  }

  if (MGIsDeviceOfType())
  {
    return 190;
  }

  if (MGIsDeviceOfType())
  {
    return 191;
  }

  if (MGIsDeviceOfType())
  {
    return 163;
  }

  if (MGIsDeviceOfType())
  {
    return 192;
  }

  if (MGIsDeviceOfType())
  {
    return 164;
  }

  if (MGIsDeviceOfType())
  {
    return 165;
  }

  v19 = 345196535;
  *buf = xmmword_19B7B8BA4;
  if (MGIsDeviceOfType())
  {
    return 193;
  }

  v19 = 440949464;
  *buf = xmmword_19B7B8BB8;
  if (MGIsDeviceOfType())
  {
    return 194;
  }

  v19 = 688565114;
  *buf = xmmword_19B7B8BCC;
  if (MGIsDeviceOfType())
  {
    return 195;
  }

  v19 = -493418906;
  *buf = xmmword_19B7B8BE0;
  if (MGIsDeviceOfType())
  {
    return 196;
  }

  if (MGIsDeviceOfType())
  {
    return 197;
  }

  v19 = -584398440;
  *buf = xmmword_19B7B8BF4;
  if (MGIsDeviceOfType())
  {
    return 202;
  }

  if (MGIsDeviceOfType())
  {
    return 203;
  }

  v19 = -879476163;
  *buf = xmmword_19B7B8C08;
  if (MGIsDeviceOfType())
  {
    return 204;
  }

  v19 = -695298128;
  *buf = xmmword_19B7B8C1C;
  *v13 = xmmword_19B7B8C30;
  v14 = 804488105;
  if (MGIsDeviceOneOfType())
  {
    return 205;
  }

  v19 = 1614584579;
  *buf = xmmword_19B7B8C44;
  *v13 = xmmword_19B7B8C58;
  v14 = 324288768;
  if (MGIsDeviceOneOfType())
  {
    return 206;
  }

  v19 = 460218192;
  *buf = xmmword_19B7B8C6C;
  *v13 = xmmword_19B7B8C80;
  v14 = 2144905009;
  if (MGIsDeviceOneOfType())
  {
    return 207;
  }

  v19 = 127894440;
  *buf = xmmword_19B7B8C94;
  *v13 = xmmword_19B7B8CA8;
  v14 = 1070997468;
  if (MGIsDeviceOneOfType())
  {
    return 208;
  }

  v19 = 372777383;
  *buf = xmmword_19B7B8CBC;
  if (MGIsDeviceOfType())
  {
    return 209;
  }

  v19 = -858079590;
  *buf = xmmword_19B7B8CD0;
  if (MGIsDeviceOfType())
  {
    return 210;
  }

  v19 = -212523443;
  *buf = xmmword_19B7B8CE4;
  if (MGIsDeviceOfType())
  {
    return 211;
  }

  v19 = 646100384;
  *buf = xmmword_19B7B8CF8;
  if (MGIsDeviceOfType())
  {
    return 212;
  }

  v19 = -340360463;
  *buf = xmmword_19B7B8D0C;
  if (MGIsDeviceOfType())
  {
    return 213;
  }

  v19 = 1605231531;
  *buf = xmmword_19B7B8D20;
  if (MGIsDeviceOfType())
  {
    return 214;
  }

  if (MGIsDeviceOfType())
  {
    return 215;
  }

  if (MGIsDeviceOfType())
  {
    return 216;
  }

  v19 = -545612308;
  *buf = xmmword_19B7B8D34;
  if (MGIsDeviceOfType())
  {
    return 217;
  }

  v19 = 1178062702;
  *buf = xmmword_19B7B8D48;
  if (MGIsDeviceOfType())
  {
    return 218;
  }

  v19 = 958549802;
  *buf = xmmword_19B7B8D5C;
  if (MGIsDeviceOfType())
  {
    return 219;
  }

  v19 = 1377540371;
  *buf = xmmword_19B7B8D70;
  if (MGIsDeviceOfType())
  {
    return 220;
  }

  v19 = -1047119348;
  *buf = xmmword_19B7B8D84;
  if (MGIsDeviceOfType())
  {
    return 221;
  }

  v19 = -1346985080;
  *buf = xmmword_19B7B8D98;
  if (MGIsDeviceOfType())
  {
    return 222;
  }

  if (MGIsDeviceOfType())
  {
    return 223;
  }

  if (MGIsDeviceOfType())
  {
    return 224;
  }

  v19 = -1243071412;
  *buf = xmmword_19B7B8DAC;
  if (MGIsDeviceOfType())
  {
    return 225;
  }

  v19 = 2017356181;
  *buf = xmmword_19B7B8DC0;
  if (MGIsDeviceOfType())
  {
    return 226;
  }

  if (MGIsDeviceOfType())
  {
    return 227;
  }

  if (MGIsDeviceOfType())
  {
    return 228;
  }

  v19 = -1231738393;
  *buf = xmmword_19B7B8DD4;
  if (MGIsDeviceOfType())
  {
    return 229;
  }

  v19 = 164967128;
  *buf = xmmword_19B7B8DE8;
  if (MGIsDeviceOfType())
  {
    return 230;
  }

  if (MGIsDeviceOfType())
  {
    return 231;
  }

  if (MGIsDeviceOfType())
  {
    return 232;
  }

  v19 = -1431778695;
  *buf = xmmword_19B7B8DFC;
  if (MGIsDeviceOfType())
  {
    return 233;
  }

  v19 = 533419158;
  *buf = xmmword_19B7B8E10;
  if (MGIsDeviceOfType())
  {
    return 234;
  }

  v19 = 1106979518;
  *buf = xmmword_19B7B8E24;
  if (MGIsDeviceOfType())
  {
    return 235;
  }

  v19 = -609570151;
  *buf = xmmword_19B7B8E38;
  if (MGIsDeviceOfType())
  {
    return 236;
  }

  v19 = -874769875;
  *buf = xmmword_19B7B8E4C;
  if (MGIsDeviceOfType())
  {
    return 237;
  }

  v19 = 1223847566;
  *buf = xmmword_19B7B8E60;
  if (MGIsDeviceOfType())
  {
    return 238;
  }

  v19 = 185580364;
  *buf = xmmword_19B7B8E74;
  if (MGIsDeviceOfType())
  {
    return 239;
  }

  v19 = -1379821877;
  *buf = xmmword_19B7B8E88;
  if (MGIsDeviceOfType())
  {
    return 240;
  }

  if (MGIsDeviceOfType())
  {
    return 241;
  }

  v19 = 1878025452;
  *buf = xmmword_19B7B8E9C;
  if (MGIsDeviceOfType())
  {
    return 242;
  }

  v19 = 1725957070;
  *buf = xmmword_19B7B8EB0;
  if (MGIsDeviceOfType())
  {
    return 243;
  }

  v19 = 538967431;
  *buf = xmmword_19B7B8EC4;
  if (MGIsDeviceOfType())
  {
    return 244;
  }

  v19 = 2060712151;
  *buf = xmmword_19B7B8ED8;
  if (MGIsDeviceOfType())
  {
    return 245;
  }

  v19 = 802516499;
  *buf = xmmword_19B7B8EEC;
  if (MGIsDeviceOfType())
  {
    return 246;
  }

  v19 = -1919324456;
  *buf = xmmword_19B7B8F00;
  if (MGIsDeviceOfType())
  {
    return 247;
  }

  v19 = 1127969586;
  *buf = xmmword_19B7B8F14;
  if (MGIsDeviceOfType())
  {
    return 248;
  }

  v19 = 1292009573;
  *buf = xmmword_19B7B8F28;
  if (MGIsDeviceOfType())
  {
    return 249;
  }

  v19 = 1656760039;
  *buf = xmmword_19B7B8F3C;
  if (MGIsDeviceOfType())
  {
    return 250;
  }

  v19 = -2071977621;
  *buf = xmmword_19B7B8F50;
  if (MGIsDeviceOfType())
  {
    return 251;
  }

  v19 = -543210860;
  *buf = xmmword_19B7B8F64;
  if (MGIsDeviceOfType())
  {
    return 252;
  }

  v19 = -1597604211;
  *buf = xmmword_19B7B8F78;
  if (MGIsDeviceOfType())
  {
    return 253;
  }

  if (MGIsDeviceOfType())
  {
    return 142;
  }

  if (qword_1ED71C988 != -1)
  {
    dispatch_once(&qword_1ED71C988, &unk_1F0E28FE0);
  }

  if (sub_19B5F8330())
  {
    return 1;
  }

  if (MGIsDeviceOfType())
  {
    return 254;
  }

  v19 = -12497897;
  *buf = xmmword_19B7B8F8C;
  if (MGIsDeviceOfType())
  {
    return 255;
  }

  v19 = -518121279;
  *buf = xmmword_19B7B8FA0;
  if (MGIsDeviceOfType())
  {
    return 256;
  }

  v19 = -773054213;
  *buf = xmmword_19B7B8FB4;
  if (MGIsDeviceOfType())
  {
    return 257;
  }

  v19 = -1204420428;
  *buf = xmmword_19B7B8FC8;
  if (MGIsDeviceOfType())
  {
    return 258;
  }

  if (MGIsDeviceOfType())
  {
    return 280;
  }

  v1 = MGCopyAnswer();
  if (v1)
  {
    if (qword_1EAFE2B38 != -1)
    {
      dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
    }

    v2 = qword_1EAFE2B40;
    if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      *&buf[4] = v1;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "unknown HW model %{private}@; file radar to CoreMotion Factory | 1.0", buf, 0xCu);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
      }

      *v13 = 138477827;
      *&v13[4] = v1;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B40, 16, "unknown HW model %{private}@; file radar to CoreMotion Factory | 1.0", v13, 12);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "static CLPlatformInfo::Hardware CLPlatformInfo::queryEmbeddedSystemHardware()", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    CFRelease(v1);
  }

  else
  {
    if (qword_1EAFE2B38 != -1)
    {
      dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
    }

    v4 = qword_1EAFE2B40;
    if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_ERROR))
    {
      sub_19B431834(@"HWModelStr", buf);
      v5 = v20 >= 0 ? buf : *buf;
      *v13 = 136380675;
      *&v13[4] = v5;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "unknown HW model %{private}s; file radar to CoreMotion Factory | 1.0", v13, 0xCu);
      if (v20 < 0)
      {
        operator delete(*buf);
      }
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) != 0 && (*(v6 + 164) & 0x80000000) != 0 && (*(v6 + 168) & 0x80000000) != 0 && !*(v6 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2B38 != -1)
    {
      dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
    }

    v9 = qword_1EAFE2B40;
    sub_19B431834(@"HWModelStr", v13);
    if (v15 >= 0)
    {
      v10 = v13;
    }

    else
    {
      v10 = *v13;
    }

    v16 = 136380675;
    v17 = v10;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v9, 16, "unknown HW model %{private}s; file radar to CoreMotion Factory | 1.0", &v16, 12);
    v12 = v11;
    if (v15 < 0)
    {
      operator delete(*v13);
    }

    sub_19B6BB7CC("Generic", 1, 0, 0, "static CLPlatformInfo::Hardware CLPlatformInfo::queryEmbeddedSystemHardware()", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  return 0;
}

_BYTE *sub_19B436FAC()
{
  v27 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C988 != -1)
  {
    dispatch_once(&qword_1ED71C988, &unk_1F0E28FE0);
  }

  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  v0 = 0;
  v1 = dword_1ED71C97C;
  switch(dword_1ED71C97C)
  {
    case 0:
    case 281:
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
      }

      v20 = qword_1EAFE2B40;
      if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_ERROR))
      {
        *buf = 67174657;
        v26 = v1;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_ERROR, "Unsupported HW type %{private}d; file a radar to CoreMotion Factory | 1.0", buf, 8u);
      }

      v21 = sub_19B420058();
      if ((*(v21 + 160) & 0x80000000) != 0 && (*(v21 + 164) & 0x80000000) != 0 && (*(v21 + 168) & 0x80000000) != 0 && !*(v21 + 152))
      {
        goto LABEL_18;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
      }

      LODWORD(v24[0]) = 67174657;
      HIDWORD(v24[0]) = v1;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B40, 16, "Unsupported HW type %{private}d; file a radar to CoreMotion Factory | 1.0", v24, 8, v24[0]);
      goto LABEL_16;
    case 2:
    case 3:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 22:
    case 23:
    case 37:
    case 38:
    case 40:
    case 41:
    case 43:
    case 52:
    case 81:
    case 83:
    case 85:
    case 87:
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
      }

      v2 = qword_1EAFE2B40;
      if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v26 = v1;
        _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "Old hardware,%d is not supported", buf, 8u);
      }

      v3 = sub_19B420058();
      if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2B38 != -1)
        {
          dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
        }

        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B40, 17, "Old hardware,%d is not supported", v24);
LABEL_16:
        v5 = v4;
        sub_19B6BB7CC("Generic", 1, 0, 0, "CLPlatformInfo::MotionCapabilities CLPlatformInfo::queryMotionCaps()", "CoreLocation: %s\n", v4);
        if (v5 != buf)
        {
          free(v5);
        }
      }

LABEL_18:
      v0 = 0;
      break;
    case 24:
    case 25:
    case 27:
    case 28:
      v16 = 1586033086;
      goto LABEL_58;
    case 26:
      v10 = 0x134E88F1BELL;
      goto LABEL_90;
    case 29:
      v0 = 1115734017;
      break;
    case 30:
    case 31:
    case 32:
      v19 = 1115734017;
      goto LABEL_61;
    case 33:
    case 217:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 255:
    case 256:
      v6 = 1530;
      goto LABEL_22;
    case 34:
    case 195:
    case 196:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 218:
    case 229:
    case 230:
    case 231:
    case 232:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 257:
    case 258:
      v6 = 13818;
LABEL_22:
      v7 = v6 & 0xFFFFFFFF0000FFFFLL | 0x628C0000;
      goto LABEL_23;
    case 35:
    case 36:
    case 64:
    case 65:
      v17 = -3702;
      goto LABEL_84;
    case 39:
    case 42:
      v0 = 0x50022CA9C00ELL;
      break;
    case 44:
      v17 = -15942;
LABEL_84:
      v0 = v17 | 0x42880000u;
      break;
    case 45:
      v0 = 1116271034;
      break;
    case 46:
    case 62:
    case 161:
      v0 = 1653129658;
      break;
    case 47:
    case 63:
      v19 = 1653129658;
LABEL_61:
      v0 = v19 | 0x3000;
      break;
    case 48:
    case 193:
      v8 = 1088;
      v9 = 0x26289C1BALL;
      goto LABEL_26;
    case 49:
    case 194:
    case 197:
    case 210:
      v13 = 62970;
      goto LABEL_52;
    case 50:
    case 51:
      v10 = 0x5002ACA9C00ELL;
      goto LABEL_90;
    case 54:
    case 55:
      v16 = 2127327678;
LABEL_58:
      v0 = v16 | 0x202005300000000;
      break;
    case 56:
    case 57:
    case 58:
    case 59:
      v0 = 0x20300537E8C71BELL;
      break;
    case 60:
    case 61:
    case 204:
      v0 = 0x400000000;
      break;
    case 66:
    case 67:
    case 74:
    case 75:
      v10 = 0x486ABCA9C00ELL;
      goto LABEL_90;
    case 68:
    case 69:
    case 71:
    case 72:
      v15 = 0x24300537E8C35BELL;
      goto LABEL_76;
    case 70:
    case 73:
      v12 = 0x80537E8C31BELL;
      goto LABEL_78;
    case 76:
    case 146:
    case 147:
      v13 = 49594;
LABEL_52:
      v7 = v13 & 0xFFFFFFFF0000FFFFLL | 0x62890000;
LABEL_23:
      v0 = v7 & 0xFFFF0000FFFFFFFFLL | 0x200000000;
      break;
    case 77:
    case 145:
      v15 = 0x26289F5FALL;
LABEL_76:
      v0 = v15 - 1024;
      break;
    case 78:
    case 79:
    case 80:
    case 142:
      v12 = 0x537E8C35BELL;
LABEL_78:
      v0 = v12 & 0xFFFFFFFFFFFFLL | 0x243000000000000;
      break;
    case 82:
    case 84:
      v10 = 0x4F6ABCA9C00ELL;
      goto LABEL_90;
    case 86:
    case 88:
      v0 = 0x2496ABCA9C00ELL;
      break;
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
      v10 = 0x496ABCA9C01ELL;
      goto LABEL_90;
    case 95:
    case 96:
    case 97:
    case 98:
      v0 = 0x612496ABCA9C01ELL;
      break;
    case 99:
    case 100:
    case 101:
    case 102:
      v0 = 0xE12696ABCA9C05ELL;
      break;
    case 103:
    case 104:
    case 105:
    case 106:
      v0 = 0xE12696ABCAA005ELL;
      break;
    case 107:
    case 108:
    case 109:
    case 110:
      v11 = 0x496ABCA9C05ELL;
      goto LABEL_35;
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 280:
      v11 = 0x696ABCAA005ELL;
LABEL_35:
      v0 = v11 & 0xFFFFFFFFFFFFLL | 0xE16000000000000;
      break;
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
      v0 = 0x2E16696ABCAA005ELL;
      break;
    case 134:
    case 135:
    case 136:
    case 137:
      v14 = 1653208570;
      goto LABEL_49;
    case 138:
    case 139:
    case 140:
    case 141:
    case 143:
      v0 = 0x24B00537E8C35BELL;
      break;
    case 144:
    case 254:
      v0 = 0x2628C31BALL;
      break;
    case 148:
      v0 = 0x136E8C408ELL;
      break;
    case 149:
      v10 = 0x122C8C010ELL;
      goto LABEL_90;
    case 150:
    case 151:
    case 152:
    case 153:
      v10 = 0x406ABCA9C00ELL;
LABEL_90:
      v0 = v10 & 0xFFFFFFFFFFFFLL | 0x2000000000000;
      break;
    case 154:
    case 155:
    case 156:
    case 157:
      v14 = 1653356026;
LABEL_49:
      v0 = (v14 & 0xFFFF0000FFFFFFFFLL | 0x200000000) - 64;
      break;
    case 168:
    case 169:
    case 170:
    case 171:
      v0 = 0x27B00537E8C35BELL;
      break;
    case 172:
    case 173:
    case 176:
    case 177:
      v18 = 0x27B00537E8C35BELL;
      goto LABEL_82;
    case 174:
    case 175:
    case 234:
    case 235:
    case 236:
    case 237:
      v0 = 0x27700537E8C35FELL;
      break;
    case 178:
    case 179:
    case 180:
    case 181:
      v0 = 0x27700537E8C37FELL;
      break;
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 238:
    case 239:
    case 240:
      v8 = 2560;
      v9 = 0x27700537E8C35FELL;
LABEL_26:
      v0 = v9 | v8;
      break;
    case 198:
    case 199:
    case 200:
    case 201:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
      v0 = 554434570;
      break;
    case 233:
      v18 = 0x24B00537E8C35BELL;
LABEL_82:
      v0 = v18 | 0x40;
      break;
    default:
      break;
  }

  LOBYTE(v24[0]) = (v0 & 0x200) != 0;
  result = sub_19B437AE0(buf, "OverrideMotionCapEclipseService", v24, 0);
  v23 = 512;
  if (!buf[1])
  {
    v23 = 0;
  }

  qword_1ED71CA20 = v23 | v0 & 0x2E7FFF7FFFEFFDFFLL;
  return result;
}

_BYTE *sub_19B437AE0(_BYTE *a1, uint64_t a2, _BYTE *a3, char a4)
{
  v15 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = *a3;
  a1[2] = a4;
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3A600);
  }

  v6 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v14 = a2;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "motion default ignored,'%{public}s'.", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3A600);
    }

    v11 = 136446210;
    v12 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "motion default ignored,'%{public}s'.", &v11, 12);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLMotionDefaultsWrite<BOOL>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = BOOL]", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  return a1;
}

uint64_t sub_19B437CF0(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8 = sub_19B420D84();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B437DDC;
  v11[3] = &unk_1E7533D70;
  v11[4] = &v13;
  v11[5] = a1;
  v12 = a2;
  v11[6] = a3;
  *&v11[7] = a4;
  sub_19B420C9C(v8, v11);
  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void sub_19B437DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B437DDC(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = (*(*v4 + 24))(v4);
  v6 = (a1 + 56);
  v7 = *(a1 + 56);
  v8 = v7 * v5;
  v38 = v8;
  if (v7 == 0.0)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
    }

    v9 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Requested update interval cannot be == 0.0 and dispatcher cannot be NULL. Use interval < 0.0 for spectator.", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
      }

      LOWORD(v39[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "Requested update interval cannot be == 0.0 and dispatcher cannot be NULL. Use interval < 0.0 for spectator.", v39, 2);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMotionNotifier::addDispatcherPrivate(int, Dispatcher *, const CFTimeInterval &)", "CoreLocation: %s\n", v11);
      goto LABEL_50;
    }
  }

  else
  {
    if (v7 < 0.0)
    {
      operator new();
    }

    v13 = v3[2];
    if (v8 > 0.0 && ((v14 = v13 + 80 * v2, v16 = *(v14 + 8), v15 = (v14 + 8), v17 = v16, v8 < v16) || v17 <= 0.0))
    {
      *v15 = v8;
      v19 = (*(*v3 + 24))(v3, v2, &v38);
      v13 = v3[2];
      *(v13 + 80 * v2 + 24) = v19;
      v18 = *v6;
      v8 = v38;
    }

    else
    {
      v18 = v7;
    }

    v20 = (v13 + 80 * v2);
    if (v18 < *v20 || *v20 <= 0.0)
    {
      *v20 = v18;
      v27 = (*(*v3 + 16))(v3, v2, a1 + 56);
      v28 = v3[2] + 80 * v2;
      *(v28 + 16) = v27;
      *buf = v4;
      *v45 = 0x100000000;
      *&v45[8] = v18;
      *&v45[16] = v8;
      sub_19B43851C(v28 + 32, v4, buf);
      sub_19B423614(v3, v2);
    }

    else
    {
      if (v20[2] <= 0.0)
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
        }

        v21 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "CLMotionNotifier::addDispatcherPrivate UpdateInterval is zero!", buf, 2u);
        }

        v22 = sub_19B420058();
        if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
          }

          LOWORD(v39[0]) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "CLMotionNotifier::addDispatcherPrivate UpdateInterval is zero!", v39, 2);
          v24 = v23;
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMotionNotifier::addDispatcherPrivate(int, Dispatcher *, const CFTimeInterval &)", "CoreLocation: %s\n", v23);
          if (v24 != buf)
          {
            free(v24);
          }
        }
      }

      v25 = v3[2] + 80 * v2;
      v26 = llround(*v6 / *(v25 + 16));
      *buf = v4;
      *v45 = 0;
      *&v45[4] = v26;
      *&v45[8] = v18;
      *&v45[16] = v8;
      sub_19B43851C(v25 + 32, v4, buf);
    }

    (*(*v3 + 40))(v3, v2, *(v3[2] + 80 * v2 + 48) - 1);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
    }

    v29 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
    {
      v30 = *v6;
      v31 = 0.0;
      if (*v6 > 0.0)
      {
        v31 = 1.0 / v30;
      }

      *buf = 67109632;
      *&buf[4] = v2;
      *v45 = 2048;
      *&v45[2] = v30;
      *&v45[10] = 2048;
      *&v45[12] = v31;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_DEBUG, "CLMotionNotifier::addDispatcherPrivate Added dispatcher for notification:%d, Update Interval:%f(%.1fHz)", buf, 0x1Cu);
    }

    v32 = sub_19B420058();
    if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
      }

      v33 = *v6;
      v34 = 0.0;
      if (*v6 > 0.0)
      {
        v34 = 1.0 / v33;
      }

      v39[0] = 67109632;
      v39[1] = v2;
      v40 = 2048;
      v41 = v33;
      v42 = 2048;
      v43 = v34;
      LODWORD(v36) = 28;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "CLMotionNotifier::addDispatcherPrivate Added dispatcher for notification:%d, Update Interval:%f(%.1fHz)", v39, v36, v37);
      v12 = v35;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLMotionNotifier::addDispatcherPrivate(int, Dispatcher *, const CFTimeInterval &)", "CoreLocation: %s\n", v35);
LABEL_50:
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v7 != 0.0;
}

uint64_t sub_19B43851C(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_19B4385F8(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *sub_19B438794(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 448);
  if (v2)
  {
    v3 = result[1];
    v4 = *(result + 4);
    v5 = *result;
    return v2(&v3, *(a2 + 456));
  }

  return result;
}

uint64_t sub_19B4387E8(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
  }

  v4 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 9);
    *buf = 134218240;
    v18 = v5;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CLIspDataVisitor] TimeSync visit machTimestamp,%llu,oscarTimestamp,%llu", buf, 0x16u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
    }

    v8 = *(a2 + 1);
    v9 = *(a2 + 9);
    v13 = 134218240;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "[CLIspDataVisitor] TimeSync visit machTimestamp,%llu,oscarTimestamp,%llu", &v13, 22);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLIspDataVisitor::visitTimeSync(const CMMotionCoprocessorReply::TimeSync *)", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a2 + 1), *(a2 + 9));
  }

  return result;
}

void sub_19B438A00()
{
  if ((sub_19B423E34() & 4) != 0)
  {
    operator new();
  }
}

void sub_19B438AE4(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  v5 = v1[6];
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  sub_19B674784(v1);
  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

double sub_19B438B2C()
{
  if (sub_19B4249E4())
  {
    if (sub_19B42AD98())
    {
      operator new();
    }
  }

  return result;
}

void sub_19B438BEC(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F0E32D30;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  is_mul_ok(a3, 0x50uLL);
  operator new[]();
}

uint64_t sub_19B438CCC(uint64_t a1, const char *a2, BOOL *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B439A40(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

void sub_19B4399F4(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  v5 = v2[11];
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  sub_19B674784(v2);
  MEMORY[0x19EAE76F0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B439A40(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_19B44525C(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v10 = off_1ED71C828;
      v11 = (*(*a1 + 840))(a1);
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v16, 22);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, BOOL &, int) const", "CoreLocation: %s\n", v12);
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

uint64_t sub_19B439CEC()
{
  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  return dword_1ED71C97C;
}

uint64_t sub_19B439D34()
{
  result = sub_19B439CEC();
  if ((result - 1) > 0xFF)
  {
    v1 = 0;
  }

  else
  {
    v1 = byte_19B7BAE90[(result - 1)];
  }

  byte_1ED71D268 = v1;
  return result;
}

os_log_t sub_19B439D74()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439DA4()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439DD4()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439E04()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439E34()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439E64()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439E94()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439EC4()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

void sub_19B439EF4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B439F84;
  v7[3] = &unk_1E7533E58;
  v7[4] = a1;
  v7[5] = a2;
  *&v7[6] = a3;
  sub_19B420C9C(v6, v7);
}

uint64_t sub_19B439F84(uint64_t a1)
{
  v1 = a1;
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = (*(**(a1 + 40) + 32))(*(a1 + 40));
  if (v3)
  {
    v4 = v3;
    if (qword_1ED71C800 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v28 = off_1ED71C808;
    v4 = "assert";
    v2 = "properties != nullptr";
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v34 = 0;
      *&v34[4] = 2082;
      *&v34[6] = "";
      v35 = 2082;
      v36 = "assert";
      v37 = 2081;
      v38 = "properties != nullptr";
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v29 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      *v34 = 0;
      *&v34[4] = 2082;
      *&v34[6] = "";
      v35 = 2082;
      v36 = "assert";
      v37 = 2081;
      v38 = "properties != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v1 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v34 = 0;
      *&v34[4] = 2082;
      *&v34[6] = "";
      v35 = 2082;
      v36 = "assert";
      v37 = 2081;
      v38 = "properties != nullptr";
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/Notifiers/CLDeviceMotion.mm", 198, "addDeviceMotionDispatcher_block_invoke");
  }

  dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
LABEL_3:
  v5 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    v8 = objc_msgSend_description(v4, v6, v7);
    v11 = objc_msgSend_UTF8String(v8, v9, v10);
    *buf = 136446210;
    *v34 = v11;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "CLDeviceMotion::addDeviceMotionDispatcher adding dispatcher with property: %{public}s", buf, 0xCu);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v17 = off_1ED71C808;
    v18 = objc_msgSend_description(v4, v15, v16);
    v31 = 136446210;
    v32 = objc_msgSend_UTF8String(v18, v19, v20);
    LODWORD(v30) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v17, 1, "CLDeviceMotion::addDeviceMotionDispatcher adding dispatcher with property: %{public}s", &v31, v30);
    v22 = v21;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::addDeviceMotionDispatcher(CLDeviceMotion::Dispatcher *, CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  *buf = objc_msgSend_mode(v4, v13, v14);
  result = sub_19B426490(buf);
  if (result)
  {
    v26 = objc_msgSend_mode(v4, v24, v25);
    v27 = sub_19B426F5C(v26);
    return sub_19B437CF0(v2, v27, *(v1 + 5), *(v1 + 6));
  }

  return result;
}

os_log_t sub_19B43A3C0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A3F0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A420()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A450()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A480()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A4B0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A4E0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A510()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A540()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A570()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A5A0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A5D0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A600()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A630()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A660()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A690()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A6C0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

uint64_t sub_19B43A6F0()
{
  if (qword_1ED71D5B8 != -1)
  {
    dispatch_once(&qword_1ED71D5B8, &unk_1F0E29E20);
  }

  return qword_1ED71D5B0;
}

uint64_t sub_19B43A738()
{
  if (sub_19B42521C())
  {
    operator new();
  }

  result = sub_19B423E34();
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_19B43AF08(_Unwind_Exception *a1)
{
  v3 = v1[15];
  v1[15] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = v1[5];
  v1[5] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_19B674784(v1);
  _Unwind_Resume(a1);
}

void sub_19B43B2B8(_Unwind_Exception *a1)
{
  v4 = v1[37];
  v1[37] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v1[22];
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  v6 = v1[20];
  if (v6)
  {
    sub_19B41FFEC(v6);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  sub_19B70B29C(v1);
  _Unwind_Resume(a1);
}

os_log_t sub_19B43B3EC()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B41C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B44C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B47C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B4AC()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B4DC()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B50C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B53C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B56C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B59C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B5CC()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B5FC()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B62C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B65C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B68C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B6BC()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

uint64_t sub_19B43B6EC()
{
  if (qword_1ED71C9F0 != -1)
  {
    dispatch_once(&qword_1ED71C9F0, &unk_1F0E3A4E0);
  }

  return byte_1ED71C973;
}

void sub_19B43B734(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      sub_19B421798();
      sub_19B43B6EC();
      v7 = sub_19B42CAAC();
      sub_19B42C428(v7);
    }

    if (a3)
    {
      v5 = sub_19B708344;
      v6 = a1;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    sub_19B42D100(v4, v5, v6);
  }
}

void sub_19B43B808()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"iPhone"))
    {
      byte_1ED71C973 = 1;
    }

    CFRelease(v1);
  }
}

uint64_t sub_19B43B878(unsigned __int8 *a1, int *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if ((*a2 & 4) != 0)
  {
    a1[28] = (*a2 & 8) != 0;
  }

  v5 = v4 & 1;
  v6 = v4 & 2;
  v7 = v4 & 4;
  v8 = v4 & 0x10;
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v9 = off_1ED71C808;
  v10 = v8 >> 4;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a2;
    v12 = a1[28];
    *buf = 67241472;
    *&buf[4] = v11;
    v61 = 1026;
    v62 = v5;
    v63 = 1026;
    v64 = v6 >> 1;
    v65 = 1026;
    v66 = v7 >> 2;
    v67 = 1026;
    v68[0] = v12;
    LOWORD(v68[1]) = 1026;
    *(&v68[1] + 2) = v10;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "Starting device motion, mode=%{public}#x,useAccelerometer=%{public}d,useGyro=%{public}d,useCompass=%{public}d,fUseNorthRef=%{public}d,buildingGYTT=%{public}d", buf, 0x26u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v14 = *a2;
    v15 = a1[28];
    v49[0] = 67241472;
    v49[1] = v14;
    v50 = 1026;
    v51 = v5;
    v52 = 1026;
    v53 = v6 >> 1;
    v54 = 1026;
    v55 = v7 >> 2;
    v56 = 1026;
    v57 = v15;
    v58 = 1026;
    v59 = v10;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "Starting device motion, mode=%{public}#x,useAccelerometer=%{public}d,useGyro=%{public}d,useCompass=%{public}d,fUseNorthRef=%{public}d,buildingGYTT=%{public}d", v49, 38);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::enableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  result = sub_19B426490(a2);
  if (result)
  {
    v48 = 0;
    v19 = sub_19B420D84();
    v20 = *(v19 + 24);
    v21 = *(v19 + 32);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = sub_19B438CCC(v20, "LogSensorFusion", &v48, 0xFFFFFFFFLL);
    if (v21)
    {
      sub_19B41FFEC(v21);
    }

    if ((v22 & 1) == 0)
    {
      v48 = 0;
    }

    result = *a2;
    if (result > 18)
    {
      if (result <= 66)
      {
        if (result == 19)
        {
          v46 = *(a1 + 4);
          if (!v46)
          {
            operator new();
          }
        }

        else
        {
          if (result != 34)
          {
            return result;
          }

          v46 = *(a1 + 6);
          if (!v46)
          {
            operator new();
          }

          v46[9] = sub_19B4455C8;
          v46[10] = a1;
        }

        goto LABEL_113;
      }

      if (result != 67)
      {
        if (result != 143)
        {
          if (result != 259)
          {
            return result;
          }

          v23 = *(a1 + 10);
          if (!v23)
          {
            if ((sub_19B421620() & 0x40) == 0)
            {
              if ((sub_19B421620() & 8) == 0)
              {
                if ((sub_19B421620() & 0x10) == 0)
                {
                  if (qword_1ED71C800 != -1)
                  {
                    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
                  }

                  v28 = off_1ED71C808;
                  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEFAULT, "Using CLSensorFusionServiceLegacy backend", buf, 2u);
                  }

                  v29 = sub_19B420058();
                  if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1ED71C800 != -1)
                    {
                      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
                    }

                    LOWORD(v49[0]) = 0;
                    LODWORD(v47) = 2;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "Using CLSensorFusionServiceLegacy backend", v49, v47);
                    v31 = v30;
                    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::enableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v30);
                    if (v31 != buf)
                    {
                      free(v31);
                    }
                  }

                  operator new();
                }

                if (qword_1ED71C800 != -1)
                {
                  dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
                }

                v41 = off_1ED71C808;
                if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_DEFAULT, "Using CLSensorFusionService6AxisAP backend", buf, 2u);
                }

                v42 = sub_19B420058();
                if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1ED71C800 != -1)
                  {
                    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
                  }

                  LOWORD(v49[0]) = 0;
                  LODWORD(v47) = 2;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "Using CLSensorFusionService6AxisAP backend", v49, v47);
                  v44 = v43;
                  sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::enableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v43);
                  if (v44 != buf)
                  {
                    free(v44);
                  }
                }

                operator new();
              }

              if (qword_1ED71C800 != -1)
              {
                dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
              }

              v37 = off_1ED71C808;
              if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEFAULT, "Using CLSensorFusionService6AxisSPU backend", buf, 2u);
              }

              v38 = sub_19B420058();
              if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C800 != -1)
                {
                  dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
                }

                LOWORD(v49[0]) = 0;
                LODWORD(v47) = 2;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "Using CLSensorFusionService6AxisSPU backend", v49, v47);
                v40 = v39;
                sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::enableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v39);
                if (v40 != buf)
                {
                  free(v40);
                }
              }

              operator new();
            }

            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
            }

            v32 = off_1ED71C808;
            if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_DEFAULT, "Using CLSensorFusionService6AxisAlwaysOnSPU backend", buf, 2u);
            }

            v33 = sub_19B420058();
            if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C800 != -1)
              {
                dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
              }

              LOWORD(v49[0]) = 0;
              LODWORD(v47) = 2;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "Using CLSensorFusionService6AxisAlwaysOnSPU backend", v49, v47);
              v35 = v34;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::enableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v34);
              if (v35 != buf)
              {
                free(v35);
              }
            }

            operator new();
          }

          v45 = sub_19B426F5C(259);
          *buf = sub_19B42753C(a1, v45);
          result = (*(*v23 + 16))(v23, buf);
          v46 = *(a1 + 10);
          goto LABEL_113;
        }

        goto LABEL_38;
      }

LABEL_32:
      v24 = *(a1 + 8);
      if (!v24)
      {
        if ((sub_19B421620() & 8) == 0)
        {
          if ((sub_19B421620() & 0x10) == 0)
          {
            operator new();
          }

          operator new();
        }

        operator new();
      }

      v36 = sub_19B426F5C(result);
      *buf = sub_19B42753C(a1, v36);
      result = (*(*v24 + 16))(v24, buf);
      v46 = *(a1 + 8);
      goto LABEL_113;
    }

    if (result > 6)
    {
      if (result != 7 && result != 15)
      {
        return result;
      }

LABEL_38:
      v25 = *(a1 + 9);
      if (!v25)
      {
        if ((sub_19B421620() & 0x10) == 0)
        {
          operator new();
        }

        operator new();
      }

      (*(*v25 + 24))(v25, a1[28]);
      v26 = *(a1 + 9);
      v27 = sub_19B426F5C(*a2);
      *buf = sub_19B42753C(a1, v27);
      result = (*(*v26 + 16))(v26, buf);
      v46 = *(a1 + 9);
LABEL_113:
      if (v46[7] != sub_19B4205E8 || v46[8] != a1)
      {
        v46[7] = sub_19B4205E8;
        v46[8] = a1;
        return (*(*v46 + 48))(v46);
      }

      return result;
    }

    if (result != 2)
    {
      if (result != 3)
      {
        return result;
      }

      goto LABEL_32;
    }

    result = sub_19B421620();
    if ((result & 0x100) != 0)
    {
      if (!*(a1 + 7))
      {
        operator new();
      }
    }

    else if (!*(a1 + 5))
    {
      operator new();
    }
  }

  return result;
}

CFRunLoopTimerRef *sub_19B43C87C(CFRunLoopTimerRef *a1, int a2, char a3)
{
  *a1 = &unk_1F0E33030;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 8) = a2;
  a1[5] = 0;
  *(a1 + 48) = a3;
  *(a1 + 13) = 0;
  a1[7] = 0;
  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  v4 = CFRunLoopTimerCreate(*MEMORY[0x1E695E480], 1.79769313e308, 1.79769313e308, 0, 0, sub_19B780E74, &context);
  a1[7] = v4;
  if (v4)
  {
    sub_19B420D84();
    CFRunLoopAddTimer(*qword_1ED71C908, a1[7], *MEMORY[0x1E695E8D0]);
  }

  return a1;
}

void sub_19B43C954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B783808(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B43C96C(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  sub_19B421798();
  v2 = sub_19B43CC3C();
  sub_19B43CCBC(a1, 1);
  *(a1 + 200) = 5;
  *(a1 + 201) = v2;
  *(a1 + 202) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *a1 = &unk_1F0E31F48;
  if ((sub_19B421620() & 8) == 0)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v4 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "CLPlatformInfo::motionCaps().deviceMotion6Service";
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Device motion service 6 is not supported on this platform!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v5 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "CLPlatformInfo::motionCaps().deviceMotion6Service";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Device motion service 6 is not supported on this platform!", "{msg%{public}.0s:Device motion service 6 is not supported on this platform!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v6 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "CLPlatformInfo::motionCaps().deviceMotion6Service";
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Device motion service 6 is not supported on this platform!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/DeviceMotion/CLSensorFusionServiceSPU.h", 57, "CLSensorFusionService6AxisSPU");
    __break(1u);
  }

  return a1;
}

uint64_t sub_19B43CC3C()
{
  if (qword_1ED71C9F0 != -1)
  {
    dispatch_once(&qword_1ED71C9F0, &unk_1F0E3A4E0);
  }

  if (byte_1ED71C973)
  {
    return 1;
  }

  if (qword_1ED71C9D8 != -1)
  {
    dispatch_once(&qword_1ED71C9D8, &unk_1F0E3A480);
  }

  return byte_1ED71C970;
}

uint64_t sub_19B43CCBC(uint64_t a1, int a2)
{
  v77 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E325E0;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 12) = a2;
  *(a1 + 16) = xmmword_19B7BD7C0;
  v4 = (a1 + 16);
  *(a1 + 32) = xmmword_19B7BD7C0;
  v5 = (a1 + 32);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  sub_19B41E130((a1 + 104), 0);
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 156) = xmmword_19B7BA300;
  *(a1 + 172) = 0x1FF00000000;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
  }

  v6 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 12);
    *buf = 67240192;
    LODWORD(v70) = v7;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "Starting device motion service %{public}d", buf, 8u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
    }

    v9 = *(a1 + 12);
    *v76 = 67240192;
    *&v76[4] = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Starting device motion service %{public}d", v76, 8);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLSensorFusionService::CLSensorFusionService(int)", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = sub_19B420D84();
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = sub_19B438CCC(v13, "LogDeviceMotion", v3, 0xFFFFFFFFLL);
  if (v14)
  {
    sub_19B41FFEC(v14);
  }

  if ((v15 & 1) == 0)
  {
    *v3 = 0;
  }

  sub_19B420D84();
  v68 = *(qword_1ED71C908 + 16);
  v16 = sub_19B420D84();
  v17 = *(v16 + 24);
  v18 = *(v16 + 32);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B438CCC(v17, "DeviceMotionUseThrottledInterval", &v68, 0xFFFFFFFFLL);
  if (v18)
  {
    sub_19B41FFEC(v18);
  }

  v19 = sub_19B420D84();
  v20 = *(v19 + 24);
  v21 = *(v19 + 32);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = sub_19B43D468(v20, "DeviceMotionAccelerometerUpdateInterval", v4, 0xFFFFFFFFLL);
  if (v21)
  {
    sub_19B41FFEC(v21);
  }

  if ((v22 & 1) == 0)
  {
    v23 = 0.01;
    if (v68)
    {
      v23 = 0.02;
    }

    *v4 = v23;
  }

  v24 = sub_19B420D84();
  v25 = *(v24 + 24);
  v26 = *(v24 + 32);
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = sub_19B43D468(v25, "DeviceMotionGyroUpdateInterval", (a1 + 24), 0xFFFFFFFFLL);
  if (v26)
  {
    sub_19B41FFEC(v26);
  }

  if ((v27 & 1) == 0)
  {
    v28 = 0.005;
    if (v68)
    {
      v28 = 0.02;
    }

    *(a1 + 24) = v28;
  }

  v29 = sub_19B420D84();
  v30 = *(v29 + 24);
  v31 = *(v29 + 32);
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = sub_19B43D468(v30, "DeviceMotionCompassUpdateInterval", v5, 0xFFFFFFFFLL);
  if (v31)
  {
    sub_19B41FFEC(v31);
  }

  if ((v32 & 1) == 0)
  {
    *v5 = 0x3F847AE147AE147BLL;
  }

  v33 = sub_19B42AD98();
  v34 = sub_19B43D788(v33, (a1 + 24));
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
  }

  v35 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v36 = *v4;
    *buf = 134349312;
    v70 = v34;
    v71 = 2050;
    v72 = v36;
    _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEBUG, "GyroUpdateInterval,%{public}.4f,AccelerometerUpdateInterval,%{public}.4f", buf, 0x16u);
  }

  v37 = sub_19B420058();
  if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
    }

    v38 = *v4;
    *v76 = 134349312;
    *&v76[4] = v34;
    *&v76[12] = 2050;
    *&v76[14] = v38;
    LODWORD(v66) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "GyroUpdateInterval,%{public}.4f,AccelerometerUpdateInterval,%{public}.4f", v76, v66);
    v40 = v39;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLSensorFusionService::CLSensorFusionService(int)", "CoreLocation: %s\n", v39);
    if (v40 != buf)
    {
      free(v40);
    }
  }

  if (*v3)
  {
    *v76 = &unk_1F0E311F0;
    *&v76[8] = CFAbsoluteTimeGetCurrent();
    v41 = v34;
    *&v76[20] = v41;
    v42 = sub_19B720E40();
    sub_19B7223F8(v42, v76);
    sub_19B517F80(buf);
    sub_19B5325B8(buf);
    v75 |= 1u;
    v73 = *&v76[8];
    v43 = v74;
    *(v74 + 12) |= 1u;
    *(v43 + 8) = v41;
    sub_19B51DBD4(buf);
  }

  sub_19B420D84();
  if (*(qword_1ED71C908 + 16) == 1)
  {
    v44 = sub_19B420D84();
    v45 = *(v44 + 24);
    v46 = *(v44 + 32);
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    buf[0] = 0;
    v47 = sub_19B438CCC(v45, "DumpGyroCalibrationDatabaseOnDeviceMotionStart", buf, 0xFFFFFFFFLL);
    v50 = (v47 & buf[0]);
    if (v46)
    {
      sub_19B41FFEC(v46);
    }

    if (v50)
    {
      v51 = MEMORY[0x1E696AEC0];
      v52 = objc_msgSend_date(MEMORY[0x1E695DF00], v48, v49);
      objc_msgSend_timeIntervalSinceReferenceDate(v52, v53, v54);
      v57 = objc_msgSend_stringWithFormat_(v51, v55, @"%.0f", v56);
      v58 = sub_19B43D9C4();
      v61 = objc_msgSend_vendor(v58, v59, v60);
      v63 = objc_msgSend_proxyForService_(v61, v62, @"CLGyroCalibrationDatabase");
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = sub_19B76029C;
      v67[3] = &unk_1E7535CA0;
      v67[4] = v57;
      objc_msgSend_dumpDatabase_onCompletion_(v63, v64, v57, v67);
    }
  }

  return a1;
}

void sub_19B43D414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (v17)
  {
    sub_19B41FFEC(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B43D468(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B43D4DC(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B43D4DC(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_19B444EE4(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v10 = off_1ED71C828;
      v11 = (*(*a1 + 840))(a1);
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v16, 22);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, double &, int) const", "CoreLocation: %s\n", v12);
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

double sub_19B43D788(uint64_t a1, double *a2)
{
  if ((sub_19B421620() & 1) != 0 || (sub_19B421620() & 2) != 0)
  {
    result = *(a1 + 40);
    return result * *a2;
  }

  result = *a2;
  if (*a2 <= 0.01 && result > 0.0)
  {
    a2 = (a1 + 40);
    return result * *a2;
  }

  return result;
}

void sub_19B43D7EC(uint64_t a1, double *a2)
{
  v3 = *(a1 + 208);
  if (!v3)
  {
    sub_19B42CAAC();
    operator new();
  }

  v4 = rint(*a2 * 1000000.0);
  if (*a2 < 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_19B4238F4(v3, v5);
  sub_19B42D100(*(a1 + 208), sub_19B41F1A0, a1);
}

void sub_19B43D938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  sub_19B41FFEC(v10);
  _Unwind_Resume(a1);
}

void *sub_19B43D97C(uint64_t a1, const char *a2)
{
  if (*(a1 + 180) == 1)
  {
    sub_19B4441E8(a1);
  }

  return sub_19B42E628(a1, a2);
}

uint64_t sub_19B43D9C4()
{
  if (qword_1ED71D2D8 != -1)
  {
    dispatch_once(&qword_1ED71D2D8, &unk_1F0E27EC0);
  }

  return qword_1ED71D2D0;
}

void *sub_19B43DA0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E69AD368];
  v4 = objc_msgSend_main(MEMORY[0x1E69AD380], a2, a3);
  result = objc_msgSend_newSharedVendorUniverseWithSilo_(v3, v5, v4);
  qword_1ED71D2D0 = result;
  return result;
}

void sub_19B43DB10(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B43DB40(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_1F0E32D08;
  v12 = [CLNotifierClientAdapter alloc];
  *(a1 + 8) = objc_msgSend_initWithClient_(v12, v13, a1);
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, a3);
  }

  else
  {
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, *a3);
  }

  v18 = v15;
  v19 = objc_msgSend_vendor(a4, v16, v17);
  v21 = objc_msgSend_proxyForService_(v19, v20, v18);
  *(a1 + 16) = v21;
  v22 = v21;
  if (a2)
  {
    objc_msgSend_setDelegateEntityName_(*(a1 + 16), v23, a2);
  }

  v26 = *(a1 + 8);
  v25 = *(a1 + 16);
  v27 = objc_msgSend_silo(a4, v23, v24);
  objc_msgSend_registerDelegate_inSilo_(v25, v28, v26, v27);
  return a1;
}

void sub_19B43DC6C(uint64_t a1, char *a2, __IOHIDServiceClient *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2 == "ADDED")
  {
    v5 = objc_autoreleasePoolPush();
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
    {
      v6 = IOHIDServiceClientCopyProperty(a3, @"PrimaryUsagePage");
      v9 = objc_msgSend_intValue(v6, v7, v8);
      v10 = IOHIDServiceClientCopyProperty(a3, @"PrimaryUsage");
      v13 = objc_msgSend_intValue(v10, v11, v12);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v14 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240448;
        v28 = v9;
        v29 = 1026;
        v30 = v13;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] New IOHIDServiceClientRef for usage pair {%{public}d, %{public}d} just became available.", buf, 0xEu);
      }

      v15 = sub_19B420058();
      if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v24[0] = 67240448;
        v24[1] = v9;
        v25 = 1026;
        v26 = v13;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "[CLIoHidInterface] New IOHIDServiceClientRef for usage pair {%{public}d, %{public}d} just became available.", v24, 14);
        v17 = v16;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onServiceRegistration(void *, IOHIDServiceClientRef)", "CoreLocation: %s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }

    v18 = *(a1 + 8);
    for (i = *(a1 + 16); v18 != i; v18 += 16)
    {
      v20 = *(v18 + 8);
      if (v20)
      {
        v21 = *v18;
        atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v22 = std::__shared_weak_count::lock(v20);
        if (v22)
        {
          v23 = v22;
          if (v21 && (sub_19B42F570(v21, a3) & 1) != 0)
          {
            sub_19B42F5C8(v21, a3, 1);
            if (v21[11])
            {
              IOHIDServiceClientRegisterRemovalCallback();
            }
          }

          sub_19B41FFEC(v23);
        }

        std::__shared_weak_count::__release_weak(v20);
      }
    }

    objc_autoreleasePoolPop(v5);
  }
}

uint64_t sub_19B43DFB0()
{
  result = sub_19B423E34();
  if (result)
  {
    byte_1ED71D550 = 1;
  }

  return result;
}

void *sub_19B43E020()
{
  v0 = objc_alloc(MEMORY[0x1E69AD360]);
  result = objc_msgSend_initWithIdentifier_(v0, v1, @"CLGeomagneticModelProviderSilo");
  qword_1ED71D560 = result;
  return result;
}

uint64_t sub_19B43E33C(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B43E3CC;
  block[3] = &unk_1E7532988;
  block[4] = a1;
  if (qword_1EAFE3620 != -1)
  {
    dispatch_once(&qword_1EAFE3620, block);
  }

  return qword_1EAFE3A88;
}

void sub_19B43E464(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  sub_19B43D7EC(a1, (a1 + 40));
  if (*(a1 + 201) == 1)
  {
    v2 = *(a1 + 208);
    *(v2 + 181) = 1;
    v3 = sub_19B43E748(v2);
    *(a1 + 202) = v3;
    if (v3)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
      }

      v4 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
      {
        v5 = sub_19B43EE18(*(a1 + 208));
        v6 = *(*(a1 + 208) + 16);
        v7 = *(*(a1 + 208) + 20);
        *buf = 134349568;
        v22 = v5;
        v23 = 1026;
        v24 = v7;
        v25 = 1026;
        v26 = v6;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[CLSensorFusionServiceSPU] FastPath opened,serviceRef,%{public}p,usagePage,%{public}d,usage,%{public}d", buf, 0x18u);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
        }

        v9 = off_1ED71C808;
        v10 = sub_19B43EE18(*(a1 + 208));
        v11 = *(*(a1 + 208) + 16);
        v12 = *(*(a1 + 208) + 20);
        v15 = 134349568;
        v16 = v10;
        v17 = 1026;
        v18 = v12;
        v19 = 1026;
        v20 = v11;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v9, 0, "[CLSensorFusionServiceSPU] FastPath opened,serviceRef,%{public}p,usagePage,%{public}d,usage,%{public}d", &v15, 24);
        v14 = v13;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionServiceSPU::start()", "CoreLocation: %s\n", v13);
        if (v14 != buf)
        {
          free(v14);
        }
      }
    }
  }
}

uint64_t sub_19B43E69C(uint64_t a1, char *a2, void *a3)
{
  *a1 = &unk_1F0E342D8;
  sub_19B428B50((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = objc_msgSend_silo(a3, v5, v6);
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

void sub_19B43E72C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B43E748(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
    }

    v20 = off_1ED71C838;
    p_vtable = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v27 = 0;
      *&v27[4] = 2082;
      *&v27[6] = "";
      v28 = 2082;
      v29 = "assert";
      v30 = 2081;
      v31 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[FastPathDevice] openFastPathPrivate() should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
      }
    }

    v21 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *v27 = 0;
      *&v27[4] = 2082;
      *&v27[6] = "";
      v28 = 2082;
      v29 = "assert";
      v30 = 2081;
      v31 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[FastPathDevice] openFastPathPrivate() should be running on motion thread", "{msg%{public}.0s:[FastPathDevice] openFastPathPrivate() should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
      }
    }

    v22 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v27 = 0;
      *&v27[4] = 2082;
      *&v27[6] = "";
      v28 = 2082;
      v29 = "assert";
      v30 = 2081;
      v31 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[FastPathDevice] openFastPathPrivate() should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidFastPathDevice.mm", 66, "openFastPathPrivate");
    goto LABEL_59;
  }

  if (*(a1 + 180) == 1)
  {
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C830 == -1)
    {
LABEL_4:
      v4 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[FastPath] Already opened", buf, 2u);
      }

      v5 = sub_19B420058();
      if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (p_vtable[262] != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
        }

        LOWORD(v24) = 0;
        LODWORD(v23) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "[FastPath] Already opened", &v24, v23);
        v7 = v6;
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL FastPathDevice::openFastPathPrivate()", "CoreLocation: %s\n", v6);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      v8 = 1;
      return v8 & 1;
    }

LABEL_59:
    dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
    goto LABEL_4;
  }

  if (*(a1 + 24) || (sub_19B782B40(a1) & 1) != 0)
  {
    os_unfair_lock_lock((a1 + 176));
    *(a1 + 180) = IOHIDServiceClientFastPathInit() != 0;
    os_unfair_lock_unlock((a1 + 176));
    if ((*(a1 + 180) & 1) == 0)
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
      }

      v9 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 24);
        *buf = 138543362;
        *v27 = v10;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "[FastPath] openFastPathPrivate() failed,serviceRef,%{public}@", buf, 0xCu);
      }

      v11 = sub_19B420058();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
        }

        v12 = *(a1 + 24);
        v24 = 138543362;
        v25 = v12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "[FastPath] openFastPathPrivate() failed,serviceRef,%{public}@", &v24, 12);
        v14 = v13;
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL FastPathDevice::openFastPathPrivate()", "CoreLocation: %s\n", v13);
        if (v14 != buf)
        {
          free(v14);
        }
      }
    }

    v8 = *(a1 + 180);
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
    }

    v16 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "[FastPath] Failed to open because of null service ref", buf, 2u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || (v8 = *(v17 + 152)) != 0)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
      }

      LOWORD(v24) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "[FastPath] Failed to open because of null service ref", &v24, 2);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL FastPathDevice::openFastPathPrivate()", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }

      v8 = 0;
    }
  }

  return v8 & 1;
}

uint64_t sub_19B43EE18(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v4 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v5 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] Should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v6 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 711, "getServiceRef");
  }

  return *(a1 + 24);
}

void sub_19B43F0AC(double *result, double *a2)
{
  v4 = a2[2];
  v5 = a2[3] + a2[3];
  v6 = a2[1];
  v7 = v6 * v5 - *a2 * (v4 + v4);
  v8 = (v6 + v6) * *a2 + v4 * v5;
  v9 = sqrtf((v8 * v8) + (v7 * v7));
  if (v9 == 0.0)
  {
    v10 = *(a2 + 1);
    *result = *a2;
    *(result + 1) = v10;
  }

  else
  {
    v11 = 1.0 - v6 * (v6 + v6) - v4 * (v4 + v4);
    v12 = v11;
    v13 = v9;
    if (v12 >= 0.0)
    {
      v15 = v11;
      v14 = acosf(v15);
    }

    else
    {
      v14 = -acosf(-v12);
    }

    v16 = __sincos_stret(v14 * 0.5);
    cosval = v16.__cosval;
    v18 = v16.__sinval / v13 * -v8;
    v19 = v16.__sinval / v13 * v7;
    v20 = 0.0;
    if (v12 < 0.0)
    {
      cosval = -(v16.__sinval / v13 * -v8);
      v18 = v16.__cosval;
      v19 = 0.0;
      v20 = -(v16.__sinval / v13 * v7);
    }

    sub_19B43F1C8(result, &cosval, a2);
  }
}

double sub_19B43F1C8(double *a1, double *a2, double *a3)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *a2;
  v8 = *a3;
  a1[1] = v3 * v5 + *a2 * a3[1] - v4 * v6 + a2[1] * *a3;
  v9 = a3[1];
  v10 = a2[1];
  a1[2] = v7 * v5 - v3 * v9 + v10 * v6 + v4 * v8;
  v11 = a2[2];
  v12 = a3[2];
  a1[3] = v11 * v9 - v10 * v12 + v7 * v6 + v3 * v8;
  result = -(v11 * v12) - v10 * v9 - a2[3] * a3[3] + v7 * v8;
  *a1 = result;
  return result;
}

void sub_19B43F5A4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A700);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    sub_19B420D84();
    v3 = *_CFGetProgname();
    *buf = 136446210;
    *&buf[4] = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "%{public}s is enabling power conservative device motion for parallax.", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A700);
    }

    v5 = off_1ED71C808;
    sub_19B420D84();
    v6 = *_CFGetProgname();
    *v12 = 136446210;
    *&v12[4] = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v5, 1, "%{public}s is enabling power conservative device motion for parallax.", v12, 12);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService3AxisDynamicGyro::start()", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  sub_19B43F988(a1 + 296);
  *buf = 0;
  v11 = 0xBFF0000000000000;
  *v12 = 0;
  v9 = mach_absolute_time();
  v10 = sub_19B41E070(v9);
  sub_19B440520(a1 + 296, buf, v12, &v11, &v10);
  operator new();
}

void sub_19B43F988(uint64_t a1)
{
  *(a1 + 8) = 0;
  bzero((a1 + 16), 0x20uLL);
  *(a1 + 40) = 0x3FF0000000000000;
  bzero((a1 + 64), 0x30uLL);
  bzero(*(a1 + 120), 0x18uLL);
  bzero(*(a1 + 112), 0x3CuLL);
  v2 = *(a1 + 120);
  memset_pattern16(v2, &unk_19B7BAE10, 0xCuLL);
  memset_pattern16((v2 + 12), &unk_19B7BAE20, 0xCuLL);
  *(a1 + 10) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 168) = _Q0;
  bzero((a1 + 184), 0xCuLL);
  bzero((a1 + 156), 0xCuLL);
  bzero((a1 + 136), 0xCuLL);
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  bzero((a1 + 560), 0xCuLL);
  bzero((a1 + 576), 0x18uLL);
  *(a1 + 600) = 0;
  *(a1 + 608) = 0xBFF0000000000000;
  *(a1 + 616) = 0;
  sub_19B43FC50((a1 + 320));
  sub_19B43FC50((a1 + 400));
  sub_19B43FC50((a1 + 480));

  sub_19B43FA98((a1 + 232));
}

void sub_19B43FA98(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  a1[8] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[5];
      v2 = (a1[4] + 8);
      a1[4] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 1024;
LABEL_7:
    a1[7] = v6;
  }

  a1[2] = 0;
}

void sub_19B43FB18(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  v5 = sub_19B43CCBC(a1, a3);
  v6 = *(v5 + 8);
  *(v5 + 256) = 0;
  *(v5 + 264) = 0;
  *(v5 + 272) = 0;
  *(v5 + 208) = 0;
  *(v5 + 216) = 0;
  *(v5 + 224) = 0;
  *(v5 + 273) = v6;
  *v5 = &unk_1F0E31AA0;
  *(v5 + 200) = &unk_1F0E31B08;
  *(v5 + 280) = 0;
  *(v5 + 288) = 0;
  v7 = sub_19B42AD98();
  v8 = sub_19B43D788(v7, (a1 + 24));
  sub_19B43FCD0(a1 + 296, &v8, (a1 + 16), v3);
}

void sub_19B43FC24(_Unwind_Exception *a1)
{
  sub_19B5D3E20(v2);
  sub_19B760468(v1);
  _Unwind_Resume(a1);
}

void sub_19B43FC50(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  a1[9] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[6];
      v2 = (a1[5] + 8);
      a1[5] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 512;
LABEL_7:
    a1[8] = v6;
  }

  a1[2] = 0;
  a1[3] = 0;
}

void sub_19B43FCD0(uint64_t a1, void *a2, double *a3, char a4)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F0E32A20;
  *(a1 + 10) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 128) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 168) = _Q0;
  *(a1 + 196) = a4;
  *(a1 + 200) = *a2;
  *(a1 + 208) = 4;
  *(a1 + 216) = 0x3FA0A3D70A3D70A4;
  *(a1 + 224) = 1;
  *(a1 + 232) = &unk_1F0E32728;
  *(a1 + 240) = 100;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 304) = &unk_1F0E32C18;
  *(a1 + 312) = 20;
  *(a1 + 320) = &unk_1F0E32748;
  *(a1 + 328) = 20;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 400) = &unk_1F0E32748;
  *(a1 + 408) = 20;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = &unk_1F0E32748;
  *(a1 + 488) = 20;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0xBFF0000000000000;
  *(a1 + 616) = 0;
  operator new[]();
}

void sub_19B4404F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_19B66F4D8(v13);
  *(v12 + 232) = a12;
  sub_19B42A568((v12 + 256));
  _Unwind_Resume(a1);
}

void sub_19B440520(uint64_t a1, float64_t *a2, double *a3, double *a4, void *a5)
{
  v220 = *MEMORY[0x1E69E9840];
  v10.f64[0] = *a2;
  v11 = *a2;
  *(a1 + 184) = v11;
  v12 = *a3;
  v13 = *a3;
  *(a1 + 188) = v13;
  v14 = *a4;
  v15 = *a4;
  *(a1 + 192) = v15;
  if (*(a1 + 176) < 0.0)
  {
    sub_19B442618(a1 + 16, a2, a3, a4);
    *(a1 + 176) = *a5;
    v16 = *a2;
    *(a1 + 560) = v16;
    v17 = *a3;
    *(a1 + 564) = v17;
    v18 = *a4;
    *(a1 + 568) = v18;
    *(a1 + 600) = 0;
    sub_19B4425C0((a1 + 576), (a1 + 16));
    *(a1 + 8) = 1;
    return;
  }

  if (*(a1 + 224) == 1)
  {
    v10.f64[1] = v12;
    v19 = vcvt_f32_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(*(a1 + 560)), vdupq_n_s64(0x3FB999999999999AuLL)), vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL), v10));
    *(a1 + 560) = v19;
    v20 = *(a1 + 568) * 0.1 + v14 * 0.9;
    *(a1 + 568) = v20;
    *buf = v19.f32[0];
    *v189 = v19.f32[1];
    v209 = v20;
    sub_19B66F590(a1 + 320, buf);
    sub_19B66F590(a1 + 400, v189);
    sub_19B66F590(a1 + 480, &v209);
  }

  v21 = *a5;
  *(a1 + 176) = *a5;
  if (!*(a1 + 148))
  {
    return;
  }

  v22 = *(a1 + 168);
  if (v21 < v22)
  {
    return;
  }

  if (*(a1 + 196) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
    }

    v23 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v24 = *a2;
      v25 = *a3;
      v26 = *a4;
      v27 = *(a1 + 560);
      v28 = *(a1 + 564);
      v29 = *(a1 + 568);
      v30 = *a5;
      *buf = 134219520;
      *&buf[4] = v24;
      *&buf[12] = 2048;
      *&buf[14] = v25;
      *&buf[22] = 2048;
      v200 = v26;
      v201 = 2048;
      v202 = v27;
      v203 = 2048;
      v204 = v28;
      v205 = 2048;
      v206 = v29;
      v207 = 2048;
      v208 = v30;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEBUG, "[Accelerometer6] x,%.4f,y,%.4f,z,%.4f,lpf, %.4f, %.4f, %.4f, timestamp,%lf", buf, 0x48u);
    }

    v31 = sub_19B420058();
    if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
      }

      v32 = *a2;
      v33 = *a3;
      v34 = *a4;
      v35 = *(a1 + 560);
      v36 = *(a1 + 564);
      v37 = *(a1 + 568);
      v38 = *a5;
      *v189 = 134219520;
      *&v189[4] = v32;
      *&v189[12] = 2048;
      *&v189[14] = v33;
      *&v189[22] = 2048;
      v190 = v34;
      v191 = 2048;
      v192 = v35;
      v193 = 2048;
      v194 = v36;
      v195 = 2048;
      v196 = v37;
      v197 = 2048;
      v198 = v38;
      LODWORD(v179) = 72;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[Accelerometer6] x,%.4f,y,%.4f,z,%.4f,lpf, %.4f, %.4f, %.4f, timestamp,%lf", COERCE_DOUBLE(v189), v179, v180, v181, v182, v183, v184);
      v40 = v39;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v39);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
    }

    v41 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v42 = *(a1 + 156);
      v43 = *(a1 + 160);
      v44 = *(a1 + 164);
      v45 = *(a1 + 296);
      v46 = 0.0;
      if (v45)
      {
        v47 = *(a1 + 248);
        v48 = (v47 / v45);
        if (v45 != 1)
        {
          v49 = (v45 * *(a1 + 252)) - (v47 * v47);
          if (v49 >= 0.0)
          {
            v46 = (v49 / ((v45 - 1) * v45));
          }
        }
      }

      else
      {
        v48 = 0.0;
      }

      *buf = 134219008;
      *&buf[4] = v42;
      *&buf[12] = 2048;
      *&buf[14] = v43;
      *&buf[22] = 2048;
      v200 = v44;
      v201 = 2048;
      v202 = v48;
      v203 = 2048;
      v204 = v46;
      _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_DEBUG, "[RotationRate6X] %.3f, %.3f, %.3f, %.3f, %.3f", buf, 0x34u);
    }

    v50 = sub_19B420058();
    if (*(v50 + 160) > 1 || *(v50 + 164) > 1 || *(v50 + 168) > 1 || *(v50 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
      }

      v51 = *(a1 + 156);
      v52 = *(a1 + 160);
      v53 = *(a1 + 164);
      v54 = *(a1 + 296);
      v55 = 0.0;
      if (v54)
      {
        v56 = *(a1 + 248);
        v57 = (v56 / v54);
        if (v54 != 1)
        {
          v58 = (v54 * *(a1 + 252)) - (v56 * v56);
          if (v58 >= 0.0)
          {
            v55 = (v58 / ((v54 - 1) * v54));
          }
        }
      }

      else
      {
        v57 = 0.0;
      }

      *v189 = 134219008;
      *&v189[4] = v51;
      *&v189[12] = 2048;
      *&v189[14] = v52;
      *&v189[22] = 2048;
      v190 = v53;
      v191 = 2048;
      v192 = v57;
      v193 = 2048;
      v194 = v55;
      LODWORD(v179) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[RotationRate6X] %.3f, %.3f, %.3f, %.3f, %.3f", COERCE_DOUBLE(v189), v179, v180, v181, v182);
      v60 = v59;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v59);
      if (v60 != buf)
      {
        free(v60);
      }
    }
  }

  v61 = *a2;
  v62 = *a3;
  v63 = *a4;
  LODWORD(v22) = *(a1 + 136);
  LODWORD(v21) = *(a1 + 140);
  v185 = *&v21;
  v186 = *&v22;
  v64 = *(a1 + 144);
  v65 = *(a1 + 148);
  sub_19B66E618(a1, v21, *&v22);
  v66 = sqrt(v62 * v62 + v61 * v61 + v63 * v63);
  v67 = fabs(v66 + -1.0) / v66;
  if (v67 > 0.1)
  {
    return;
  }

  if (*(a1 + 224) != 1 || *(a1 + 616))
  {
    goto LABEL_45;
  }

  v117 = fabsf(*(a1 + 156));
  if (v117 > 10.0)
  {
    goto LABEL_173;
  }

  v118 = fabsf(*(a1 + 160));
  if (v118 > 10.0)
  {
    goto LABEL_173;
  }

  v119 = fabsf(*(a1 + 164));
  if (v119 > 10.0)
  {
    goto LABEL_173;
  }

  v120 = *(a1 + 296);
  if (v120)
  {
    if ((*(a1 + 248) / v120) > 10.0)
    {
      goto LABEL_173;
    }
  }

  if (v117 > 3.14159265 || v118 > 3.14159265 || v119 > 3.14159265 || v120 && (*(a1 + 248) / v120) > 3.14159265)
  {
    if (v120 < 2 || (v121 = (v120 * *(a1 + 252)) - (*(a1 + 248) * *(a1 + 248)), v121 < 0.0) || (v121 / ((v120 - 1) * v120)) < 1.25)
    {
      sub_19B4425C0((a1 + 576), (a1 + 16));
      if (*(a1 + 196) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
        }

        v122 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v122, OS_LOG_TYPE_DEBUG, "rotating and going through.", buf, 2u);
        }

        v123 = sub_19B420058();
        if (*(v123 + 160) > 1 || *(v123 + 164) > 1 || *(v123 + 168) > 1 || *(v123 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
          }

          *v189 = 0;
          LODWORD(v179) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "rotating and going through.", v189, *&v179);
          v125 = v124;
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v124);
          if (v125 != buf)
          {
            free(v125);
          }
        }
      }

      goto LABEL_45;
    }
  }

  sub_19B66F0F4(a1 + 304, &v209);
  v184 = sqrt(v211 * v211 + v210 * v210 + v212 * v212);
  v126 = *(a1 + 608);
  if (v126 > 0.0 && *(a1 + 176) - v126 > 15.0 && v184 < 0.3)
  {
    sub_19B66F1D4(a1 + 304, buf);
    if (fabs(sqrt(*&buf[16] * *&buf[16] + *&buf[8] * *&buf[8] + v200 * v200) + -1.0) <= 0.1)
    {
      *(a1 + 616) = 10;
      if (*(a1 + 196) != 1)
      {
        goto LABEL_243;
      }

      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      v156 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v156, OS_LOG_TYPE_DEBUG, "it's been too long. go through.", buf, 2u);
      }

      v157 = sub_19B420058();
      if (*(v157 + 160) <= 1 && *(v157 + 164) <= 1 && *(v157 + 168) <= 1 && !*(v157 + 152))
      {
        goto LABEL_243;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      *v189 = 0;
      LODWORD(v179) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "it's been too long. go through.", v189, *&v179);
      v159 = v158;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v158);
LABEL_187:
      if (v159 != buf)
      {
        free(v159);
      }

      goto LABEL_243;
    }
  }

  if (*(a1 + 392) <= (*(a1 + 312) * 0.5))
  {
LABEL_173:
    sub_19B4425C0((a1 + 576), (a1 + 16));
    return;
  }

  v127 = *(a1 + 296);
  if (v127)
  {
    if (*(*(*(a1 + 264) + (((v127 + *(a1 + 288) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v127 + *(a1 + 288) - 1) & 0x3FF)) > 0.2)
    {
      sub_19B4425C0((a1 + 576), (a1 + 16));
      if (*(a1 + 196) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
        }

        v128 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          v129 = *(a1 + 576);
          v130 = *(a1 + 584);
          v131 = *(a1 + 592);
          *buf = 134218496;
          *&buf[4] = v129;
          *&buf[12] = 2048;
          *&buf[14] = v130;
          *&buf[22] = 2048;
          v200 = v131;
          _os_log_impl(&dword_19B41C000, v128, OS_LOG_TYPE_DEBUG, "grabing gravity, %.4f, %.4f, %.4f", buf, 0x20u);
        }

        v132 = sub_19B420058();
        if (*(v132 + 160) > 1 || *(v132 + 164) > 1 || *(v132 + 168) > 1 || *(v132 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
          }

          v133 = *(a1 + 576);
          v134 = *(a1 + 584);
          v135 = *(a1 + 592);
          *v189 = 134218496;
          *&v189[4] = v133;
          *&v189[12] = 2048;
          *&v189[14] = v134;
          *&v189[22] = 2048;
          v190 = v135;
          LODWORD(v179) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "grabing gravity, %.4f, %.4f, %.4f", COERCE_DOUBLE(v189), v179, v180);
          v137 = v136;
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v136);
          if (v137 != buf)
          {
            free(v137);
          }
        }
      }
    }
  }

  if (v184 <= *(a1 + 216) * 0.75)
  {
    goto LABEL_243;
  }

  v138 = *(a1 + 576);
  v139 = *(a1 + 584);
  v140 = *(a1 + 592);
  v141 = fabs(v211 * v139 + v210 * v138 + v212 * v140);
  v183 = v184 - v141;
  v142 = *(a1 + 336);
  v143 = *(a1 + 416);
  v144 = *(a1 + 496);
  v215 = &unk_1F0E33EB0;
  v145 = v139 * v143 + v142 * v138 + v144 * v140;
  v216 = v142 - v145 * v138;
  v217 = v143 - v145 * v139;
  v218 = v144 - v145 * v140;
  v181 = v145;
  v182 = fabs(v218) + fabs(v216) + fabs(v217);
  if (*(a1 + 196) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
    }

    v146 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219264;
      *&buf[4] = v210;
      *&buf[12] = 2048;
      *&buf[14] = v211;
      *&buf[22] = 2048;
      v200 = v212;
      v201 = 2048;
      v202 = v184;
      v203 = 2048;
      v204 = v141;
      v205 = 2048;
      v206 = v184 - v141;
      _os_log_impl(&dword_19B41C000, v146, OS_LOG_TYPE_DEBUG, "std, %.3f, %.3f, %.3f, mag, %.3f, dot, %.3f, leftover, %.3f", buf, 0x3Eu);
    }

    v147 = sub_19B420058();
    if (*(v147 + 160) > 1 || *(v147 + 164) > 1 || *(v147 + 168) > 1 || *(v147 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      *v189 = 134219264;
      *&v189[4] = v210;
      *&v189[12] = 2048;
      *&v189[14] = v211;
      *&v189[22] = 2048;
      v190 = v212;
      v191 = 2048;
      v192 = v184;
      v193 = 2048;
      v194 = v141;
      v195 = 2048;
      v196 = v184 - v141;
      LODWORD(v179) = 62;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "std, %.3f, %.3f, %.3f, mag, %.3f, dot, %.3f, leftover, %.3f", COERCE_DOUBLE(v189), v179, v180, v181, v182, v183);
      v149 = v148;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v148);
      if (v149 != buf)
      {
        free(v149);
      }
    }

    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
    }

    v150 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219008;
      *&buf[4] = v216;
      *&buf[12] = 2048;
      *&buf[14] = v217;
      *&buf[22] = 2048;
      v200 = v218;
      v201 = 2048;
      v202 = v181;
      v203 = 2048;
      v204 = v182;
      _os_log_impl(&dword_19B41C000, v150, OS_LOG_TYPE_DEBUG, "sum, %.3f, %.3f, %.3f, dot, %.3f, leftover, %.3f", buf, 0x34u);
    }

    v151 = sub_19B420058();
    if (*(v151 + 160) > 1 || *(v151 + 164) > 1 || *(v151 + 168) > 1 || *(v151 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      *v189 = 134219008;
      *&v189[4] = v216;
      *&v189[12] = 2048;
      *&v189[14] = v217;
      *&v189[22] = 2048;
      v190 = v218;
      v191 = 2048;
      v192 = v181;
      v193 = 2048;
      v194 = v182;
      LODWORD(v179) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "sum, %.3f, %.3f, %.3f, dot, %.3f, leftover, %.3f", COERCE_DOUBLE(v189), v179, v180, v181, v182);
      v153 = v152;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v152);
      if (v153 != buf)
      {
        free(v153);
      }
    }
  }

  if (v183 > *(a1 + 216))
  {
    goto LABEL_191;
  }

  v154 = *(a1 + 296);
  if (v154)
  {
    v155 = 0.0;
    if ((*(a1 + 248) / v154) > 1.57079633)
    {
      v155 = 1.0;
    }
  }

  else
  {
    v155 = 0.0;
  }

  if (v182 > (v155 * 0.5 + 1.0) * 6.0)
  {
LABEL_191:
    *(a1 + 600) = 0;
    return;
  }

  if (v183 >= 0.01 || v182 >= 0.6)
  {
    v164 = *(a1 + 600) + 1;
    *(a1 + 600) = v164;
    if (!v154)
    {
      goto LABEL_230;
    }

    v165 = (a1 + 600);
    v160 = *(a1 + 248) / v154;
  }

  else
  {
    if (!v154)
    {
      v164 = *(a1 + 600) + 1;
      *(a1 + 600) = v164;
      goto LABEL_230;
    }

    v160 = *(a1 + 248) / v154;
    if (v160 > 0.5)
    {
      if (*(a1 + 196) != 1)
      {
        goto LABEL_243;
      }

      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      v161 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v161, OS_LOG_TYPE_DEBUG, "===========Skip ahead.", buf, 2u);
      }

      v162 = sub_19B420058();
      if (*(v162 + 160) <= 1 && *(v162 + 164) <= 1 && *(v162 + 168) <= 1 && !*(v162 + 152))
      {
        goto LABEL_243;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      *v189 = 0;
      LODWORD(v179) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "===========Skip ahead.", v189, *&v179);
      v159 = v163;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v163);
      goto LABEL_187;
    }

    v165 = (a1 + 600);
    v164 = *(a1 + 600) + 1;
    *(a1 + 600) = v164;
  }

  if (v160 > 1.0 && *(*(*(a1 + 264) + (((v154 + *(a1 + 288) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v154 + *(a1 + 288) - 1) & 0x3FF)) < 0.2)
  {
    sub_19B66F1D4(a1 + 304, buf);
    v166 = sqrt(*&buf[16] * *&buf[16] + *&buf[8] * *&buf[8] + v200 * v200);
    if (fabs(v166 + -1.0) / v166 >= 0.025)
    {
      v164 = *v165;
    }

    else
    {
      if (*(a1 + 196) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
        }

        v167 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v167, OS_LOG_TYPE_DEBUG, "Skip ahead------.", buf, 2u);
        }

        v168 = sub_19B420058();
        if (*(v168 + 160) > 1 || *(v168 + 164) > 1 || *(v168 + 168) > 1 || *(v168 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
          }

          *v189 = 0;
          LODWORD(v179) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Skip ahead------.", v189, *&v179);
          v170 = v169;
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v169);
          if (v170 != buf)
          {
            free(v170);
          }
        }
      }

      v164 = *v165 + 2;
      *v165 = v164;
    }
  }

LABEL_230:
  if (v164 >= *(a1 + 208))
  {
LABEL_243:
    if (*(a1 + 224) == 1 && v184 > 0.2)
    {
      v174 = *(a1 + 296);
      if (!v174 || *(*(*(a1 + 264) + (((v174 + *(a1 + 288) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v174 + *(a1 + 288) - 1) & 0x3FF)) < 0.75 && (*(a1 + 248) / v174) < 1.0)
      {
        sub_19B66F1D4(a1 + 304, v189);
        v62 = *&v189[16];
        v61 = *&v189[8];
        v63 = v190;
        if (*(a1 + 196) == 1)
        {
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
          }

          v175 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v175, OS_LOG_TYPE_DEBUG, "using mean accel", buf, 2u);
          }

          v176 = sub_19B420058();
          if (*(v176 + 160) > 1 || *(v176 + 164) > 1 || *(v176 + 168) > 1 || *(v176 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
            }

            LOWORD(v209) = 0;
            LODWORD(v179) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "using mean accel", &v209, *&v179);
            v178 = v177;
            sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v177);
            if (v178 != buf)
            {
              free(v178);
            }
          }
        }

        v66 = sqrt(v62 * v62 + v61 * v61 + v63 * v63);
        v67 = fabs(v66 + -1.0) / v66;
      }
    }

LABEL_45:
    *(a1 + 600) = 0;
    if (*(a1 + 196) == 1)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      v68 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = v61;
        *&buf[12] = 2048;
        *&buf[14] = v62;
        *&buf[22] = 2048;
        v200 = v63;
        v201 = 2048;
        v202 = v66;
        _os_log_impl(&dword_19B41C000, v68, OS_LOG_TYPE_DEBUG, "accM, (%.4f, %.4f, %.4f), mag, %.3f", buf, 0x2Au);
      }

      v69 = sub_19B420058();
      if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
        }

        *v189 = 134218752;
        *&v189[4] = v61;
        *&v189[12] = 2048;
        *&v189[14] = v62;
        *&v189[22] = 2048;
        v190 = v63;
        v191 = 2048;
        v192 = v66;
        LODWORD(v179) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "accM, (%.4f, %.4f, %.4f), mag, %.3f", COERCE_DOUBLE(v189), v179, v180, v181);
        v71 = v70;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v70);
        if (v71 != buf)
        {
          free(v71);
        }
      }
    }

    v72 = v67 * (0.015 / (exp((0.9 - sqrtf((((v185 / v65) * (v185 / v65)) + ((v186 / v65) * (v186 / v65))) + ((v64 / v65) * (v64 / v65)))) / 0.08) + 1.0)) + 0.00000900000032;
    if (*(a1 + 224) == 1 && !*(a1 + 616))
    {
      v72 = v72 * 0.85;
    }

    v73 = 0;
    v74 = 0;
    v75 = v62 / v66;
    v76 = *(a1 + 16);
    v77 = *(a1 + 24);
    v78 = *(a1 + 32) + *(a1 + 32);
    v79 = *(a1 + 40);
    v80 = v79 * (v77 + v77) - v76 * v78;
    v81 = -(v79 * (v76 + v76)) - v77 * v78;
    v82 = v76 * (v76 + v76) + -1.0 + v77 * (v77 + v77);
    *&v76 = v81;
    *&v78 = v82;
    LODWORD(v215) = 0;
    HIDWORD(v215) = LODWORD(v78);
    *&v216 = -*&v76;
    *&v77 = v80;
    *(&v216 + 1) = -*&v78;
    LODWORD(v217) = 0;
    HIDWORD(v217) = LODWORD(v77);
    LODWORD(v218) = LODWORD(v76);
    *(&v218 + 1) = -*&v77;
    v219 = 0;
    do
    {
      v83 = v73;
      v84 = 3;
      do
      {
        *&buf[v83] = *(&v215 + v83);
        v83 += 12;
        --v84;
      }

      while (v84);
      ++v74;
      v73 += 4;
    }

    while (v74 != 3);
    bzero(&v202 + 2, 0x24uLL);
    v85 = v72;
    *v214 = v85;
    *&v214[1] = v85;
    *&v214[2] = v85;
    v86 = v61 / v66 - v80;
    v87 = v75 - v81;
    *v213 = v86;
    *&v213[1] = v87;
    v88 = v63 / v66 - v82;
    *&v213[2] = v88;
    sub_19B66EDDC(v189, (a1 + 112), buf, v214, v213, 6, 3, &v209);
    v89 = v81 * *&v189[8] + *v189 * v80 + *&v189[16] * v82;
    *v189 = *v189 - v89 * v80;
    *&v189[8] = *&v189[8] - v89 * v81;
    *&v189[16] = *&v189[16] - v89 * v82;
    sub_19B44793C(v188, v189);
    sub_19B447A1C(v187, v188, (a1 + 16));
    v90 = 0;
    v91 = v187[1];
    *(a1 + 16) = v187[0];
    *(a1 + 32) = v91;
    do
    {
      *(a1 + 88 + v90) = *&v189[v90 + 24] + *(a1 + 88 + v90);
      v90 += 8;
    }

    while (v90 != 24);
    if (*(a1 + 224) == 1)
    {
      sub_19B4425C0((a1 + 576), (a1 + 16));
    }

    *(a1 + 608) = *a5;
    v92 = *(a1 + 616);
    v93 = __OFSUB__(v92, 1);
    v94 = v92 - 1;
    if (v94 < 0 == v93)
    {
      *(a1 + 616) = v94;
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      v95 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v95, OS_LOG_TYPE_DEBUG, "Doing some crude updates to catch up.", buf, 2u);
      }

      v96 = sub_19B420058();
      if (*(v96 + 160) > 1 || *(v96 + 164) > 1 || *(v96 + 168) > 1 || *(v96 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
        }

        *v189 = 0;
        LODWORD(v179) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Doing some crude updates to catch up.", v189, *&v179);
        v98 = v97;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v97);
        if (v98 != buf)
        {
          free(v98);
        }
      }
    }

    if (*(a1 + 196) == 1)
    {
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
      }

      v99 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        v100 = *(a1 + 64);
        v101 = *(a1 + 72);
        v102 = *(a1 + 80);
        v103 = *(a1 + 88);
        v104 = *(a1 + 96);
        v105 = *(a1 + 104);
        v106 = *a5;
        *buf = 134219520;
        *&buf[4] = v100;
        *&buf[12] = 2048;
        *&buf[14] = v101;
        *&buf[22] = 2048;
        v200 = v102;
        v201 = 2048;
        v202 = v103;
        v203 = 2048;
        v204 = v104;
        v205 = 2048;
        v206 = v105;
        v207 = 2048;
        v208 = v106;
        _os_log_impl(&dword_19B41C000, v99, OS_LOG_TYPE_DEBUG, "[KalmanFilterStates] %f,%f,%f,%f,%f,%f,%f", buf, 0x48u);
      }

      v107 = sub_19B420058();
      if (*(v107 + 160) > 1 || *(v107 + 164) > 1 || *(v107 + 168) > 1 || *(v107 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
        }

        v108 = *(a1 + 64);
        v109 = *(a1 + 72);
        v110 = *(a1 + 80);
        v111 = *(a1 + 88);
        v112 = *(a1 + 96);
        v113 = *(a1 + 104);
        v114 = *a5;
        *v189 = 134219520;
        *&v189[4] = v108;
        *&v189[12] = 2048;
        *&v189[14] = v109;
        *&v189[22] = 2048;
        v190 = v110;
        v191 = 2048;
        v192 = v111;
        v193 = 2048;
        v194 = v112;
        v195 = 2048;
        v196 = v113;
        v197 = 2048;
        v198 = v114;
        LODWORD(v179) = 72;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[KalmanFilterStates] %f,%f,%f,%f,%f,%f,%f", COERCE_DOUBLE(v189), v179, v180, v181, v182, v183, v184);
        v116 = v115;
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v115);
LABEL_94:
        if (v116 != buf)
        {
          free(v116);
        }

        return;
      }
    }

    return;
  }

  if (*(a1 + 196) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
    }

    v171 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v171, OS_LOG_TYPE_DEBUG, "Taking another look.", buf, 2u);
    }

    v172 = sub_19B420058();
    if (*(v172 + 160) > 1 || *(v172 + 164) > 1 || *(v172 + 168) > 1 || *(v172 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      *v189 = 0;
      LODWORD(v179) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Taking another look.", v189, *&v179);
      v116 = v173;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v173);
      goto LABEL_94;
    }
  }
}

double sub_19B4425C0(double *a1, double *a2)
{
  *a1 = a2[3] * (a2[1] + a2[1]) - *a2 * (a2[2] + a2[2]);
  a1[1] = -(a2[3] * (*a2 + *a2)) - a2[1] * (a2[2] + a2[2]);
  result = *a2 * (*a2 + *a2) + -1.0 + a2[1] * (a2[1] + a2[1]);
  a1[2] = result;
  return result;
}

uint64_t sub_19B442618(uint64_t result, double *a2, double *a3, double *a4)
{
  v4 = sqrt(*a3 * *a3 + *a2 * *a2 + *a4 * *a4);
  v5 = -*a3 / v4;
  *result = v5;
  v6 = *a2 / v4;
  *(result + 8) = v6;
  *(result + 16) = 0;
  v7 = sqrt((1.0 - *a4 / v4) * 0.5);
  *(result + 24) = v7;
  v8 = v6 * v6 + v5 * v5;
  if (v8 <= 0.000001)
  {
    if (*a4 <= 0.0)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0x3FF0000000000000;
    }

    else
    {
      *result = 0x3FF0000000000000;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 8) = 0;
    }
  }

  else
  {
    v9 = sqrt((1.0 - v7 * v7) / v8);
    *result = v5 * v9;
    *(result + 8) = vmulq_n_f64(*&v6, v9);
  }

  return result;
}

uint64_t sub_19B4426E4()
{
  if (qword_1ED71C9D8 != -1)
  {
    dispatch_once(&qword_1ED71C9D8, &unk_1F0E3A480);
  }

  return byte_1ED71C970;
}

double sub_19B44272C(uint64_t a1, int a2, double *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
    }

    v16 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
    {
      v17 = *a3;
      *buf = 134349056;
      v30 = v17;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_INFO, "Setting gyro temperature update interval to %{public}f", buf, 0xCu);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
      }

      v19 = *a3;
      *v36 = 134349056;
      *&v36[4] = v19;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 1, "Setting gyro temperature update interval to %{public}f", v36, 12);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLGyro::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    v22 = *a3;
    if (*a3 < 1.0 && v22 != 0.0)
    {
      v22 = 1.0;
    }

    *(a1 + 72) = v22;
    sub_19B42A614(a1, *(a1 + 32));
    return *(a1 + 72);
  }

  else if (a2)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
    }

    v24 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v30) = a2;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_FAULT, "Unrecognized gyro notification %{public}d", buf, 8u);
    }

    v25 = sub_19B420058();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || (v6 = 0.0, *(v25 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
      }

      *v36 = 67240192;
      *&v36[4] = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 17, "Unrecognized gyro notification %{public}d", v36, 8);
      v27 = v26;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLGyro::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v26);
      if (v27 != buf)
      {
        free(v27);
      }

      return 0.0;
    }
  }

  else
  {
    *(a1 + 64) = *a3;
    sub_19B42A614(a1, *(a1 + 32));
    v6 = sub_19B43D788(a1, (a1 + 64));
    if (*(a1 + 96) == 1)
    {
      *v36 = &unk_1F0E311F0;
      *&v36[8] = CFAbsoluteTimeGetCurrent();
      v7 = v6;
      *&v36[20] = v7;
      v8 = sub_19B720E40();
      sub_19B7223F8(v8, v36);
      sub_19B517F80(buf);
      sub_19B5325B8(buf);
      v35 |= 1u;
      v33 = *&v36[8];
      v9 = v34;
      *(v34 + 12) |= 1u;
      *(v9 + 8) = v7;
      sub_19B51DBD4(buf);
    }

    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
    }

    v10 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
    {
      v11 = *a3;
      *buf = 134349312;
      v30 = v11;
      v31 = 2050;
      v32 = v6;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "Set gyro data update interval to %{public}f,dt,%{public}f", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
      }

      v13 = *a3;
      *v36 = 134349312;
      *&v36[4] = v13;
      *&v36[12] = 2050;
      *&v36[14] = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 1, "Set gyro data update interval to %{public}f,dt,%{public}f", v36, 22);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLGyro::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  return v6;
}

void sub_19B442CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

void sub_19B442D08()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"iPad"))
    {
      byte_1ED71C970 = 1;
    }

    CFRelease(v1);
  }
}

uint64_t sub_19B442D78(uint64_t result, double a2)
{
  if (!*(result + 16))
  {
    operator new();
  }

  return result;
}

uint64_t sub_19B442E70()
{
  if (qword_1ED71C930 != -1)
  {
    dispatch_once(&qword_1ED71C930, &unk_1F0E29060);
  }

  return qword_1ED71C8D8;
}

void sub_19B442EB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_19B420D84();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B442FA4;
  v9[3] = &unk_1E7532EB0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = a3;
  v9[6] = a4;
  sub_19B420C9C(v8, v9);
}

void sub_19B442F50(uint64_t a1)
{
  if ((*(a1 + 25) & 1) == 0)
  {
    v2 = sub_19B442E70();
    sub_19B442EB8(v2, sub_19B4452F8, *(a1 + 24), a1);
    *(a1 + 25) = 1;
  }
}

void sub_19B442FD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B41C000, "CL: CLGyroBiasEstimatorClientRemote::registerWithGyroBiasEstimatorPrivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E288A0);
  }

  v9 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290050;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 1026;
    v21 = a3;
    v22 = 2050;
    v23 = a1;
    v24 = 2050;
    v25 = a4;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGyroBiasEstimatorClientRemote::registerWithGyroBiasEstimatorPrivate, event:%{public, location:escape_only}s, isBuildingGYTT:%{public}hhd, client:%{public}p, info:%{public}p}", buf, 0x36u);
  }

  v10 = *(a1 + 16);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B443654;
  v11[3] = &unk_1E7532EB0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a4;
  v12 = a3;
  dispatch_async(v10, v11);
  os_activity_scope_leave(&state);
}

uint64_t sub_19B4431A8(uint64_t result, double a2)
{
  if (!*(result + 8))
  {
    operator new();
  }

  return result;
}

void sub_19B4432A0(void *a1, uint64_t a2)
{
  a1[1] = a2;
  v3 = a1[4];
  v4 = a1[5];
  a1[8] = 0;
  v5 = (v4 - v3) >> 3;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*v3);
      v6 = a1[5];
      v3 = (a1[4] + 8);
      a1[4] = v3;
      v5 = (v6 - v3) >> 3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v7 = 512;
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v7 = 1024;
LABEL_7:
    a1[7] = v7;
  }

  a1[2] = 0;
}

uint64_t sub_19B443324(uint64_t a1, const char *a2, _DWORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B443398(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B443398(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  *buf = 0;
  v6 = sub_19B5EDA58(cf, buf);
  if (v6)
  {
    *a3 = *buf;
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      *&buf[4] = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v10 = off_1ED71C828;
      v11 = (*(*a1 + 840))(a1);
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v16, 22);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint32_t &, int) const", "CoreLocation: %s\n", v12);
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

void sub_19B443854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a20)
  {
    sub_19B41FFEC(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B4438CC(void *a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v33 = off_1ED71C838;
    p_vtable = "assert";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v41 = 0;
      *&v41[4] = 2082;
      *&v41[6] = "";
      *&v41[14] = 2082;
      *&v41[16] = "assert";
      v42 = 2081;
      v43 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setMatchingProperties should be called from motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v34 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *v41 = 0;
      *&v41[4] = 2082;
      *&v41[6] = "";
      *&v41[14] = 2082;
      *&v41[16] = "assert";
      v42 = 2081;
      v43 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setMatchingProperties should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setMatchingProperties should be called from motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    a1 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v41 = 0;
      *&v41[4] = 2082;
      *&v41[6] = "";
      *&v41[14] = 2082;
      *&v41[16] = "assert";
      v42 = 2081;
      v43 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setMatchingProperties should be called from motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm", 652, "setMatchingProperties");
    goto LABEL_68;
  }

  if (objc_msgSend_isEqualToDictionary_(a2, v5, *(a1 + 20)))
  {
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C830 == -1)
    {
LABEL_4:
      v7 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 20);
        *buf = 138477827;
        *v41 = v8;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] setMatchingProperties - Early return for identical properties %{private}@", buf, 0xCu);
      }

      v9 = sub_19B420058();
      if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (p_vtable[262] != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v10 = *(a1 + 20);
        v36 = 138477827;
        v37 = v10;
        LODWORD(v35) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIoHidInterface] setMatchingProperties - Early return for identical properties %{private}@", &v36, v35);
        v12 = v11;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::setMatchingProperties(NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      return;
    }

LABEL_68:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    goto LABEL_4;
  }

  v13 = a2;

  *(a1 + 20) = a2;
  v14 = *(a1 + 3);
  if (v14 && (sub_19B42EF5C(v14, a2) & 1) == 0)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v15 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 3);
      v17 = *(a1 + 20);
      *buf = 134283779;
      *v41 = v16;
      *&v41[8] = 2114;
      *&v41[10] = v17;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] setMatchingProperties - Previously matched service ref %{private}p does not match new properties %{public}@. Clearing and refreshing.", buf, 0x16u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v19 = *(a1 + 3);
      v20 = *(a1 + 20);
      v36 = 134283779;
      v37 = v19;
      v38 = 2114;
      v39 = v20;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIoHidInterface] setMatchingProperties - Previously matched service ref %{private}p does not match new properties %{public}@. Clearing and refreshing.", &v36, 22);
      v22 = v21;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::setMatchingProperties(NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v21);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    if ((sub_19B4217E0(*(a1 + 3), @"ReportInterval", &unk_1F0E6A6C0) & 1) == 0)
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v23 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "[CLIoHidInterface] setMatchingProperties - Failed to stop streaming from the old service", buf, 2u);
      }

      v24 = sub_19B420058();
      if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        LOWORD(v36) = 0;
        LODWORD(v35) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "[CLIoHidInterface] setMatchingProperties - Failed to stop streaming from the old service", &v36, v35);
        v26 = v25;
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLIoHidInterface::Device::setMatchingProperties(NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v25);
        if (v26 != buf)
        {
          free(v26);
        }
      }
    }

    (*(*a1 + 48))(a1);
    sub_19B42E770(*(a1 + 5), 0);
    if (*(a1 + 3))
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v27 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 3);
        *buf = 134283521;
        *v41 = v28;
        _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] setMatchingProperties - successfully switch to new service %{private}p", buf, 0xCu);
      }

      v29 = sub_19B420058();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v30 = *(a1 + 3);
        v36 = 134283521;
        v37 = v30;
        LODWORD(v35) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIoHidInterface] setMatchingProperties - successfully switch to new service %{private}p", &v36, v35);
        v32 = v31;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::setMatchingProperties(NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v31);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      sub_19B421D14(*(a1 + 5));
    }
  }
}

uint64_t sub_19B444174(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B4441CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B4441E8(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
    }

    v8 = off_1ED71C838;
    p_vtable = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[FastPathDevice] closeFastPathPrivate() should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
      }
    }

    v9 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[FastPathDevice] closeFastPathPrivate() should be running on motion thread", "{msg%{public}.0s:[FastPathDevice] closeFastPathPrivate() should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
      }
    }

    v10 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[FastPathDevice] closeFastPathPrivate() should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidFastPathDevice.mm", 90, "closeFastPathPrivate");
LABEL_31:
    dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
    goto LABEL_8;
  }

  if (*(a1 + 180) != 1)
  {
    return;
  }

  if (*(a1 + 24))
  {
    os_unfair_lock_lock((a1 + 176));
    IOHIDServiceClientFastPathInvalidate();
    *(a1 + 180) = 0;

    os_unfair_lock_unlock((a1 + 176));
    return;
  }

  p_vtable = CMDeviceOrientationManager.vtable;
  if (qword_1ED71C830 != -1)
  {
    goto LABEL_31;
  }

LABEL_8:
  v4 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "[FastPath] Failed to close because of null service ref", buf, 2u);
  }

  v5 = sub_19B420058();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (p_vtable[262] != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
    }

    v12[0] = 0;
    LODWORD(v11) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 16, "[FastPath] Failed to close because of null service ref", v12, v11);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 0, "void FastPathDevice::closeFastPathPrivate()", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }
}

void *sub_19B44461C(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B444174((a1 + 3), a2, a3);
  return a1;
}

void sub_19B4446EC(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  Dictionary = CLConnectionMessage::getDictionary(v3);
  sub_19B444AA4(v19, Dictionary);
  if ((*(v19[0] + 856))(v19) <= 0)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E28540);
    }

    v8 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Could not get dictionary for message", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E28540);
      }

      LOWORD(v16[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 17, "Could not get dictionary for message", v16, 2);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroBiasEstimatorClientRemote::onGyroBiasEstimation(std::shared_ptr<CLConnectionMessage>, CLGyroBiasEstimatorClientCallback, void *)", "CoreLocation: %s\n", v10);
      goto LABEL_26;
    }
  }

  else
  {
    if (sub_19B444D44(v16, &v17, &v18, v19))
    {
      v6(v16, v5);
      goto LABEL_28;
    }

    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E28540);
    }

    v12 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "Message does not contain a valid gyro bias object", buf, 2u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E28540);
      }

      v15[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 17, "Message does not contain a valid gyro bias object", v15, 2);
      v11 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroBiasEstimatorClientRemote::onGyroBiasEstimation(std::shared_ptr<CLConnectionMessage>, CLGyroBiasEstimatorClientCallback, void *)", "CoreLocation: %s\n", v14);
LABEL_26:
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

LABEL_28:
  sub_19B445384(v19);
  if (v4)
  {
    sub_19B41FFEC(v4);
  }
}

void sub_19B444A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19B445384(va);
  if (v16)
  {
    sub_19B41FFEC(v16);
  }

  _Unwind_Resume(a1);
}

void *sub_19B444AA4(void *a1, CFDictionaryRef theDict)
{
  v12 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E334A8;
  a1[1] = 0;
  v3 = *MEMORY[0x1E695E480];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  a1[1] = MutableCopy;
  if (!MutableCopy)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v10[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "could not create new mutable dictionary", v10, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "CLNameValuePair::CLNameValuePair(CFDictionaryRef)", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return a1;
}

uint64_t sub_19B444CC8()
{
  result = sub_19B42AD98();
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_19B444D44(float *a1, float *a2, BOOL *a3, uint64_t a4)
{
  if (!sub_19B444E58(a4, "kCLBiasXKey", a1) || !sub_19B444E58(a4, "kCLBiasYKey", a1 + 1) || !sub_19B444E58(a4, "kCLBiasZKey", a1 + 2) || !sub_19B444E58(a4, "kCLVarianceXKey", a2) || !sub_19B444E58(a4, "kCLVarianceYKey", a2 + 1) || !sub_19B444E58(a4, "kCLVarianceZKey", a2 + 2))
  {
    return 0;
  }

  return sub_19B438CCC(a4, "KCLDoingBiasEstimationKey", a3, 0xFFFFFFFFLL);
}

uint64_t sub_19B444E58(uint64_t a1, const char *a2, float *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v9 = 0.0;
  v6 = sub_19B43D4DC(a1, v5, &v9);
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

uint64_t sub_19B444EE4(const void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      v19 = CFGetTypeID(a1);
      v20 = 2050;
      TypeID = CFNumberGetTypeID();
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) != 0 && (*(v7 + 164) & 0x80000000) != 0 && (*(v7 + 168) & 0x80000000) != 0 && !*(v7 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v8 = off_1ED71C828;
    v14 = 134349312;
    v15 = CFGetTypeID(a1);
    v16 = 2050;
    v17 = CFNumberGetTypeID();
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v8, 17, "type IDs do not match - %{public}lu vs %{public}lu", &v14, 22);
    v10 = v9;
    sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, double &)", "CoreLocation: %s\n", v9);
    if (v10 == buf)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (CFNumberGetValue(a1, kCFNumberFloat64Type, a2))
  {
    return 1;
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
  }

  v11 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
  }

  v12 = sub_19B420058();
  if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    LOWORD(v14) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "could not get value", &v14, 2);
    v10 = v13;
    sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, double &)", "CoreLocation: %s\n", v13);
    if (v10 != buf)
    {
LABEL_25:
      free(v10);
    }
  }

  return 0;
}

uint64_t sub_19B44525C(const void *a1, BOOL *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID() && v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  *a2 = CFBooleanGetValue(a1) != 0;
  return 1;
}

os_log_t sub_19B4452C8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED71C7E0 = result;
  return result;
}

void sub_19B4452F8(_OWORD *a1, uint64_t a2)
{
  v5[0] = *a1;
  *(v5 + 12) = *(a1 + 12);
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B445C68;
  v4[3] = &unk_1E7532CC8;
  v4[4] = a2;
  sub_19B421668(v3, v4);
}

void *sub_19B445384(void *a1)
{
  *a1 = &unk_1F0E334A8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_19B4453D4(uint64_t result, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  *(result + 48) = *a2;
  v2 = (result + 48);
  if (*(result + 72))
  {
    v3 = result;
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
    }

    v4 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      v5 = *v2;
      *buf = 134349056;
      v13 = v5;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Set device motion sensor status %{public}ld", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
      }

      v7 = *v2;
      v10 = 134349056;
      v11 = v7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 1, "Set device motion sensor status %{public}ld", &v10, 12);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSensorFusionService::updateSensorStatus(const SensorStatus &)", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    return (*(v3 + 72))(v2, *(v3 + 80));
  }

  return result;
}

uint64_t sub_19B4455DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 16);
  v9 = a2;
  v10 = v8 + 80 * a2;
  v11 = *(v10 + 32);
  if (v11 != (v10 + 40))
  {
    do
    {
      result = (*(*v11[4] + 16))(v11[4], a2, a3, a4);
      *(v11 + 10) = (*(v11 + 10) + 1) % *(v11 + 11);
      v12 = v11[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v11[2];
          v14 = *v13 == v11;
          v11 = v13;
        }

        while (!v14);
      }

      v8 = *(v7 + 16);
      v11 = v13;
    }

    while (v13 != (v8 + 80 * v9 + 40));
  }

  v15 = v8 + 80 * v9;
  v16 = *(v15 + 64);
  if (v16 != v15 + 56)
  {
    do
    {
      result = (*(**(v16 + 16) + 16))(*(v16 + 16), a2, a3, a4);
      v16 = *(v16 + 8);
    }

    while (v16 != *(v7 + 16) + 80 * v9 + 56);
  }

  return result;
}

os_log_t sub_19B445744()
{
  result = os_log_create("com.apple.locationd.Motion", "Accel");
  qword_1ED71C7E8 = result;
  return result;
}

os_log_t sub_19B445774()
{
  result = os_log_create("com.apple.locationd.Motion", "Accel");
  qword_1ED71C7E8 = result;
  return result;
}

os_log_t sub_19B4457A4()
{
  result = os_log_create("com.apple.locationd.Motion", "Accel");
  qword_1ED71C7E8 = result;
  return result;
}

uint64_t *sub_19B4457D4(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 592);
  if (v2)
  {
    v3 = *result;
    return v2(0, &v3, *(a2 + 600));
  }

  return result;
}

void sub_19B445814(uint64_t a1)
{
  v2 = sub_19B420D84();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_19B445890;
  v3[3] = &unk_1E75327D8;
  v3[4] = a1;
  sub_19B420C9C(v2, v3);
}

void sub_19B4458B8(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLGyroBiasEstimatorClientRemote::unregisterWithGyroBiasEstimatorPrivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E288A0);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = "activity";
    v13 = 2050;
    v14 = a1;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGyroBiasEstimatorClientRemote::unregisterWithGyroBiasEstimatorPrivate, event:%{public, location:escape_only}s, client:%{public}p}", buf, 0x26u);
  }

  v4 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B445A50;
  block[3] = &unk_1E75327D8;
  block[4] = a1;
  dispatch_async(v4, block);
  os_activity_scope_leave(&state);
}

uint64_t sub_19B445A50(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 8);
  if (result)
  {
    v3 = MEMORY[0x19EAE71C0]();
    result = MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
    *(v1 + 8) = 0;
  }

  return result;
}

void sub_19B445A94(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B445ACC(void *a1, uint64_t a2)
{
  v4 = a1[4];
  if (v4)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = a1[7];
  if (v5)
  {
    (*(*v5 + 40))(v5, a2);
  }

  v6 = a1[8];
  if (v6)
  {
    (*(*v6 + 40))(v6, a2);
  }

  v7 = a1[6];
  if (v7)
  {
    (*(*v7 + 40))(v7, a2);
  }

  v8 = a1[9];
  if (v8)
  {
    (*(*v8 + 40))(v8, a2);
  }

  v9 = a1[5];
  if (v9)
  {
    (*(*v9 + 40))(v9, a2);
  }

  result = a1[10];
  if (result)
  {
    v11 = *(*result + 40);

    return v11();
  }

  return result;
}

void sub_19B445C68(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v2 + 40) = *(a1 + 52);
  *(v2 + 28) = v3;
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28E40);
  }

  v4 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 44);
    v7 = *(a1 + 48);
    v8 = *(a1 + 52);
    v9 = *(a1 + 56);
    v10 = *(a1 + 60);
    v11 = *(a1 + 64);
    *buf = 136316930;
    v39 = "GyroBias";
    v40 = 2048;
    v41 = v5;
    v42 = 2048;
    v43 = v6;
    v44 = 2048;
    v45 = v7;
    v46 = 2048;
    v47 = v8;
    v48 = 2048;
    v49 = v9;
    v50 = 2048;
    v51 = v10;
    v52 = 1024;
    v53 = v11;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Type,%s,bias.x,%20.20f,bias.y,%20.20f,bias.z,%20.20f,variance.x,%20.20f,variance.y,%20.20f,variance.z,%20.20f,doingBiasEstimation,%d", buf, 0x4Eu);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28E40);
    }

    v13 = *(a1 + 40);
    v14 = *(a1 + 44);
    v15 = *(a1 + 48);
    v16 = *(a1 + 52);
    v17 = *(a1 + 56);
    v18 = *(a1 + 60);
    v19 = *(a1 + 64);
    *v57 = 136316930;
    *&v57[4] = "GyroBias";
    *&v57[12] = 2048;
    *&v57[14] = v13;
    *&v57[22] = 2048;
    *&v57[24] = v14;
    *&v57[32] = 2048;
    *&v57[34] = v15;
    *&v57[42] = 2048;
    v58 = v16;
    v59 = 2048;
    v60 = v17;
    v61 = 2048;
    v62 = v18;
    v63 = 1024;
    v64 = v19;
    LODWORD(v37) = 78;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "Type,%s,bias.x,%20.20f,bias.y,%20.20f,bias.z,%20.20f,variance.x,%20.20f,variance.y,%20.20f,variance.z,%20.20f,doingBiasEstimation,%d", v57, v37);
    v21 = v20;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSensorFusionServiceAP::onBiasAndVariance(const CLMotionTypeGyroBiasAndVariance)_block_invoke", "CoreLocation: %s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  if (*(v2 + 73) == 1)
  {
    *v57 = &unk_1F0E312B0;
    *&v57[8] = CFAbsoluteTimeGetCurrent();
    *&v57[20] = *(a1 + 40);
    *&v57[36] = *(a1 + 56);
    LOBYTE(v58) = *(a1 + 64);
    v22 = sub_19B720E40();
    sub_19B7223F8(v22, v57);
    sub_19B517F80(buf);
    sub_19B532528(buf);
    v56 |= 1u;
    v54 = *&v57[8];
    v23 = v55;
    v24 = *(a1 + 40);
    *(v55 + 36) |= 1u;
    *(v23 + 8) = v24;
    v25 = v55;
    v26 = *(a1 + 44);
    *(v55 + 36) |= 2u;
    *(v25 + 12) = v26;
    v27 = v55;
    v28 = *(a1 + 48);
    *(v55 + 36) |= 4u;
    *(v27 + 16) = v28;
    v29 = v55;
    v30 = *(a1 + 52);
    *(v55 + 36) |= 0x10u;
    *(v29 + 24) = v30;
    v31 = v55;
    v32 = *(a1 + 56);
    *(v55 + 36) |= 0x20u;
    *(v31 + 28) = v32;
    v33 = v55;
    v34 = *(a1 + 60);
    *(v55 + 36) |= 0x40u;
    *(v33 + 32) = v34;
    v35 = v55;
    v36 = *(a1 + 64);
    *(v55 + 36) |= 8u;
    *(v35 + 20) = v36;
    sub_19B51DBD4(buf);
  }

  if (*(v2 + 25) == 1)
  {
    (*(*v2 + 24))(v2, a1 + 40, a1 + 52);
  }
}

void sub_19B446094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B4460B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v102 = *MEMORY[0x1E69E9840];
  result = IOHIDEventGetType();
  if (result == 20)
  {
    IOHIDEventGetFloatValue();
    v6 = v5;
    IOHIDEventGetFloatValue();
    v8 = v7;
    IOHIDEventGetFloatValue();
    v10 = v9;
    TimeStamp = IOHIDEventGetTimeStamp();
    v12 = sub_19B41E070(TimeStamp);
    v61 = v12;
    IntegerValue = IOHIDEventGetIntegerValue();
    v14 = *(v3 + 72);
    if (v14 > 0.0 && v12 > v14 + *(v3 + 48))
    {
      v62 = v12;
      if (sub_19B42A90C(v3))
      {
        v15 = (*(**(v3 + 80) + 24))(*(v3 + 80), @"AppleVoltageDictionary");
        v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"GYRO_TEMP");
        objc_msgSend_floatValue(v17, v18, v19);
        v63 = v20 / 100.0;

        v21 = v17 != 0;
      }

      else
      {
        v21 = 0;
      }

      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27B20);
      }

      v22 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v81 = COERCE_DOUBLE("CLGyro");
        v82 = 1026;
        LODWORD(v83) = v21;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEBUG, "Type,%{public}s,ret=%{public}d", buf, 0x12u);
      }

      v23 = sub_19B420058();
      if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27B20);
        }

        *v68 = 136446466;
        *&v68[4] = "CLGyro";
        *&v68[12] = 1026;
        *&v68[14] = v21;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "Type,%{public}s,ret=%{public}d", v68, 18, *&v12, *&v62);
        v25 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyro::onGyroData(const CLMotionTypeRotationRate &, const CLMotionTypeTimestamp &, unsigned int)", "CoreLocation: %s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      if (v21)
      {
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27B20);
        }

        v26 = qword_1EAFE2898;
        if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v81 = COERCE_DOUBLE("GyroTemperature");
          v82 = 2050;
          v83 = v63;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, "Type,%{public}s,temperature,%{public}f", buf, 0x16u);
        }

        v27 = sub_19B420058();
        if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2890 != -1)
          {
            dispatch_once(&qword_1EAFE2890, &unk_1F0E27B20);
          }

          *v68 = 136446466;
          *&v68[4] = "GyroTemperature";
          *&v68[12] = 2050;
          *&v68[14] = v63;
          LODWORD(v60) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "Type,%{public}s,temperature,%{public}f", v68, *&v60);
          v29 = v28;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyro::onGyroData(const CLMotionTypeRotationRate &, const CLMotionTypeTimestamp &, unsigned int)", "CoreLocation: %s\n", v28);
          if (v29 != buf)
          {
            free(v29);
          }
        }

        if (*(v3 + 96) == 1)
        {
          *v68 = &unk_1F0E31370;
          *&v68[8] = CFAbsoluteTimeGetCurrent();
          *&v68[20] = v63;
          v30 = sub_19B720E40();
          sub_19B7223F8(v30, v68);
          sub_19B517F80(buf);
          sub_19B532498(buf);
          v101 |= 1u;
          v98 = *&v68[8];
          v31 = v100;
          v32 = v63;
          *(v100 + 16) |= 2u;
          *(v31 + 12) = v32;
          sub_19B51DBD4(buf);
        }

        sub_19B41DF08(v3, 1, &v62, 16);
      }

      *(v3 + 48) = v12;
    }

    v33 = v6;
    v34 = v8;
    v35 = v10;
    v62 = v12;
    v63 = v33;
    v64 = v34;
    v65 = v35;
    v66 = HIWORD(IntegerValue);
    v67 = (~IntegerValue & 0x300) == 0;
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
    }

    v36 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
    {
      v37 = mach_absolute_time();
      v38 = sub_19B41E070(v37);
      *buf = 134220032;
      v81 = v33;
      v82 = 2048;
      v83 = v34;
      v84 = 2048;
      v85 = v35;
      v86 = 2048;
      v87 = v12;
      v88 = 1024;
      v89 = IntegerValue;
      v90 = 1024;
      v91 = HIWORD(IntegerValue) % 3u;
      v92 = 1024;
      v93 = (IntegerValue >> 8) & 1;
      v94 = 1024;
      v95 = (IntegerValue >> 9) & 1;
      v96 = 2048;
      v97 = v38;
      _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_DEBUG, "[CLGyro] x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f,subType,%d,sampleNum%%3,%d,triggerEnabled,%d,triggerOn,%d,now,%f", buf, 0x4Cu);
    }

    v39 = sub_19B420058();
    if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
      }

      v40 = qword_1ED71C818;
      v41 = mach_absolute_time();
      v42 = sub_19B41E070(v41);
      *v68 = 134220032;
      *&v68[4] = v33;
      *&v68[12] = 2048;
      *&v68[14] = v34;
      *&v68[22] = 2048;
      v69 = v35;
      *v70 = 2048;
      *&v70[2] = v12;
      *&v70[10] = 1024;
      v71 = IntegerValue;
      v72 = 1024;
      v73 = HIWORD(IntegerValue) % 3u;
      v74 = 1024;
      v75 = (IntegerValue >> 8) & 1;
      v76 = 1024;
      v77 = (IntegerValue >> 9) & 1;
      v78 = 2048;
      v79 = v42;
      LODWORD(v60) = 76;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v40, 2, "[CLGyro] x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f,subType,%d,sampleNum%%3,%d,triggerEnabled,%d,triggerOn,%d,now,%f", COERCE_DOUBLE(v68), v60, v61, v62, LODWORD(v63), LODWORD(v65));
      v44 = v43;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyro::onGyroData(const CLMotionTypeRotationRate &, const CLMotionTypeTimestamp &, unsigned int)", "CoreLocation: %s\n", v43);
      if (v44 != buf)
      {
        free(v44);
      }
    }

    if (v12 < *(v3 + 56))
    {
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
      }

      v45 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
      {
        v46 = *(v3 + 56);
        *buf = 134218240;
        v81 = v46;
        v82 = 2048;
        v83 = v12;
        _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_ERROR, "Gyro time rollback, last timestamp, %f, current timestamp, %f", buf, 0x16u);
      }

      v47 = sub_19B420058();
      if ((*(v47 + 160) & 0x80000000) == 0 || (*(v47 + 164) & 0x80000000) == 0 || (*(v47 + 168) & 0x80000000) == 0 || *(v47 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
        }

        v48 = *(v3 + 56);
        *v68 = 134218240;
        *&v68[4] = v48;
        *&v68[12] = 2048;
        *&v68[14] = v12;
        LODWORD(v60) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 16, "Gyro time rollback, last timestamp, %f, current timestamp, %f", COERCE_DOUBLE(v68), v60);
        v50 = v49;
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyro::onGyroData(const CLMotionTypeRotationRate &, const CLMotionTypeTimestamp &, unsigned int)", "CoreLocation: %s\n", v49);
        if (v50 != buf)
        {
          free(v50);
        }
      }
    }

    if (*(v3 + 96) == 1)
    {
      *v68 = &unk_1F0E31270;
      *&v68[8] = CFAbsoluteTimeGetCurrent();
      v69 = v12;
      *v70 = v33;
      *&v70[4] = v34;
      *&v70[8] = v10;
      v71 = IntegerValue;
      LOBYTE(v72) = HIWORD(IntegerValue) % 3u;
      HIBYTE(v72) = BYTE1(IntegerValue) & 1;
      LOBYTE(v73) = (IntegerValue & 0x200) != 0;
      v51 = sub_19B720E40();
      sub_19B7223F8(v51, v68);
      sub_19B517F80(buf);
      sub_19B532408(buf);
      v101 |= 1u;
      v98 = *&v68[8];
      v52 = v99;
      *(v99 + 44) |= 1u;
      *(v52 + 8) = v12;
      v53 = v99;
      *(v99 + 44) |= 0x10u;
      *(v53 + 28) = v33;
      v54 = v99;
      *(v99 + 44) |= 0x20u;
      *(v54 + 32) = v34;
      v55 = v99;
      *(v99 + 44) |= 0x40u;
      *(v55 + 36) = v35;
      v56 = v99;
      *(v99 + 44) |= 8u;
      *(v56 + 24) = IntegerValue;
      v57 = v99;
      *(v99 + 44) |= 4u;
      *(v57 + 20) = HIWORD(IntegerValue) % 3u;
      v58 = v99;
      *(v99 + 44) |= 0x80u;
      *(v58 + 40) = BYTE1(IntegerValue) & 1;
      v59 = v99;
      *(v99 + 44) |= 0x100u;
      *(v59 + 41) = (IntegerValue & 0x200) != 0;
      sub_19B51DBD4(buf);
    }

    result = sub_19B41DF08(v3, 0, &v62, 24);
    *(v3 + 56) = v12;
  }

  return result;
}

void sub_19B446B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

void sub_19B446BB0(uint64_t a1, float32x2_t *a2, double *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  if (*(a1 + 196) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
    }

    v6 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v7 = a2->f32[0];
      v8 = a2->f32[1];
      v9 = a2[1].f32[0];
      v10 = *a3;
      v11 = *(a3 + 1);
      v12 = *(a3 + 2);
      *buf = 134219264;
      v49 = v7;
      v50 = 2048;
      v51 = v8;
      v52 = 2048;
      v53 = v9;
      v54 = 2048;
      v55 = v10;
      v56 = 2048;
      v57 = v11;
      LOWORD(v58[0]) = 2048;
      *(v58 + 2) = v12;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "[Bias,Var] bias.x,%f,bias.y,%f,bias.z,%f,var.x,%f,var.y,%f,var.z,%f", buf, 0x3Eu);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
      }

      v14 = a2->f32[0];
      v15 = a2->f32[1];
      v16 = a2[1].f32[0];
      v17 = *a3;
      v18 = *(a3 + 1);
      v19 = *(a3 + 2);
      v36 = 134219264;
      v37 = v14;
      v38 = 2048;
      v39 = v15;
      v40 = 2048;
      v41 = v16;
      v42 = 2048;
      v43 = v17;
      v44 = 2048;
      v45 = v18;
      v46 = 2048;
      v47 = v19;
      LODWORD(v31) = 62;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "[Bias,Var] bias.x,%f,bias.y,%f,bias.z,%f,var.x,%f,var.y,%f,var.z,%f", COERCE_DOUBLE(&v36), v31, v32, v33, v34, v35);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedGyroBias(const CLMotionTypeRotationRate &, const CLMotionTypeVector3 &)", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  if (*(a1 + 10))
  {
    v22 = 0;
    v34 = *a3;
    LODWORD(v35) = *(a3 + 2);
    do
    {
      v23 = *(&v34 + v22);
      if (v23 < 0.000001)
      {
        v23 = 0.000001;
      }

      *(&v34 + v22) = v23;
      v22 += 4;
    }

    while (v22 != 12);
    v24 = *(a1 + 152);
    if (v24 >= 50)
    {
      v25 = 50;
    }

    else
    {
      v25 = *(a1 + 152);
    }

    if (v24 >= 1)
    {
      v26 = 0;
      v27 = v34;
      v28 = LODWORD(v35);
      do
      {
        v32 = COERCE_DOUBLE(vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(*a2), *(a1 + 88))));
        v29 = a2[1].f32[0] - *(a1 + 104);
        *&v33 = v29;
        bzero(buf, 0x48uLL);
        *(&v55 + 2) = 1065353216;
        v58[0] = 1065353216;
        v58[4] = 1065353216;
        v60 = v27;
        v61 = v28;
        sub_19B66EDDC(&v36, (a1 + 112), buf, &v60, &v32, 6, 3, v59);
        for (i = 0; i != 24; i += 8)
        {
          *(a1 + i + 88) = *(&v41 + i) + *(a1 + i + 88);
        }

        ++v26;
      }

      while (v26 != v25);
    }

    *(a1 + 152) = 0;
  }

  else
  {
    *(a1 + 88) = vcvtq_f64_f32(*a2);
    *(a1 + 104) = a2[1].f32[0];
    *(a1 + 10) = 1;
  }
}