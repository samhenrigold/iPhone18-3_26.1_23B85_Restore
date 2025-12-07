uint64_t sub_233784CD0(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (!v1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = *(*v1 + 48);

  return v2();
}

void sub_233784E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_233784E34(_BYTE *a1)
{
  if (a1[113])
  {
    v1 = 0;
  }

  else
  {
    v2 = (*(*a1 + 80))(a1);
    v3 = [v2 objectForKeyedSubscript:@"kCGImageSourceXMPSidecar"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = v3;
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t sub_233784F0C(uint64_t a1)
{
  v2 = (*(*a1 + 80))(a1);
  v3 = sub_233739ACC(v2, off_27DE37BD0[0]);

  v4 = (*(*a1 + 80))(a1);
  v5 = v4;
  if (v3)
  {
    v6 = sub_2337397F8(v4, off_27DE37BD0[0]);
  }

  else
  {
    v7 = sub_233739ACC(v4, off_27DE37BC8[0]);

    if (!v7)
    {
      return 0;
    }

    v5 = (*(*a1 + 80))(a1);
    v6 = sub_2337397F8(v5, off_27DE37BC8[0]);
  }

  v8 = v6;

  return v8;
}

__n128 sub_233785054(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3] = 0uLL;
  return result;
}

void sub_233785064(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_2337239E8(v1);
  }
}

id sub_233785074()
{
  if ((atomic_load_explicit(byte_280C04DC0, memory_order_acquire) & 1) == 0)
  {
    sub_2338F9B5C();
  }

  if ((atomic_load_explicit(byte_280C04DC8, memory_order_acquire) & 1) == 0)
  {
    sub_2338F9BB8();
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_233785374;
  v9 = sub_233785384;
  v10 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23378538C;
  block[3] = &unk_2789EED30;
  block[4] = &v5;
  dispatch_sync(qword_280C04DB8[0], block);
  v0 = v6[5];
  if (!v0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);

  return v1;
}

void sub_2337851D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_233785204(void *a1)
{
  v2 = a1[7];
  v3 = a1[8];
  v4 = (a1[5] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(&v8, v4, a1[9], a1 + 10, a1 + 12);
  v5 = *(a1[4] + 8);
  v6 = v8;
  v8 = 0uLL;
  v7 = *(v5 + 56);
  *(v5 + 48) = v6;
  if (v7)
  {
    sub_2337239E8(v7);
    if (*(&v8 + 1))
    {
      sub_2337239E8(*(&v8 + 1));
    }
  }
}

void sub_2337852B0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337852A0);
}

uint64_t sub_2337852BC(uint64_t result, uint64_t a2)
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

void sub_2337852D8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_2337239E8(v1);
  }
}

uint64_t *sub_233785314(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  if (v3)
  {
    sub_23384F9A4(v3);
  }

  return a1;
}

void sub_23378535C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233785374(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23378538C(uint64_t a1)
{
  v1 = dword_27DE37DC8++;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), qword_280C04DB8[v1 + 3]);
  dword_27DE37DC8 &= 3u;
}

uint64_t *sub_2337853E4(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_23384F9AC(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

uint64_t *sub_233785424(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  if (v3)
  {
    (*(*v3 + 72))(v3);
  }

  return a1;
}

void sub_23378548C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_2337854A4(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v6 || !a3)
  {
    if (v6)
    {
      v8 = [v5 objectForKeyedSubscript:v6];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = [MEMORY[0x277CBEB38] dictionary];

        v8 = v9;
        [v5 setObject:v9 forKey:v7];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

uint64_t *sub_233785598(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

void *sub_2337856AC(void *a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, char *a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284907A70;
  sub_233781BD8((a1 + 3), *a2, a3, a4, *a5, *a6);
  return a1;
}

void sub_233785734(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284907A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337857B0(_BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  FilePath = CGImageReadSessionGetFilePath();
  if (FilePath && CFStringGetFileSystemRepresentation(FilePath, buffer, 1024))
  {
    v4 = strlen(buffer);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2337304FC();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    a2[23] = v4;
    if (v4)
    {
      memcpy(a2, buffer, v4);
    }

    a2[v5] = 0;
  }

  else
  {
    sub_2337252D4(a2);
  }
}

uint64_t sub_2337858C0(uint64_t a1)
{
  Size = CGImageReadSessionGetSize();
  sub_233723C18(&v3, &Size);
  return v3;
}

uint64_t sub_2337858F8(uint64_t a1, void *a2, size_t a3)
{
  v9 = 0;
  if ((*(a1 + 56) & 1) == 0)
  {
    (*(*a1 + 16))(a1);
    BytesAtOffset = CGImageReadSessionGetBytesAtOffset();
    sub_233723B40(&v10, &BytesAtOffset);
    *(a1 + 52) = v10;
    *(a1 + 56) = 1;
  }

  BytesAtOffset = a3;
  v6 = (a1 + 48);
  v10 = *(a1 + 48);
  if (*(a1 + 52) >= *sub_233785BD0(&v10, &BytesAtOffset))
  {
    memcpy(a2, (a1 + *(a1 + 48) + 57), a3);
    BytesAtOffset = a3;
  }

  else
  {
    sub_233751844(v6);
    BytesAtOffset = CGImageReadSessionGetBytesAtOffset();
  }

  sub_233723C18(&v9, &BytesAtOffset);
  sub_233723874(v6, &v9);
  return v9;
}

uint64_t sub_233785A3C(_DWORD *a1, int *a2, int a3)
{
  v12 = (*(*a1 + 16))(a1);
  sub_233726A8C(&v11, &v12);
  if (a3 == 2)
  {
    v7 = v11;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v7 = a1[12];
LABEL_7:
    v12 = v7;
    v6 = a2;
    goto LABEL_8;
  }

  if (a3)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = sub_233725414(a1);
  v12 = *a2;
  v6 = &v10;
LABEL_8:
  v8 = *sub_233725A80(&v12, v6);
  if (v8 < 0)
  {
LABEL_13:
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

LABEL_11:
  if (v11 < v8)
  {
    goto LABEL_13;
  }

  a1[12] = v8;
  return 0;
}

uint64_t sub_233785B50(uint64_t a1)
{
  v2 = sub_233725414(a1);
  v3 = *(a1 + 48);
  v5 = v2;
  v6 = v3;
  return *sub_233731EB0(&v6, &v5);
}

void sub_233785B98(void *a1)
{
  sub_23372525C(a1);

  JUMPOUT(0x2383ABF10);
}

int *sub_233785BD0(int *result, void *a2)
{
  v2 = *result;
  v3 = __OFADD__(v2, *a2);
  v4 = v2 + *a2;
  *result = v4;
  if (v3 || (v4 - 0x80000000) <= 0xFFFFFFFEFFFFFFFFLL)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

std::string *sub_233785C48(std::string *result)
{
  v1 = HIBYTE(result->__r_.__value_.__r.__words[2]);
  v2 = result->__r_.__value_.__r.__words[0];
  size = result->__r_.__value_.__l.__size_;
  if ((v1 & 0x80u) == 0)
  {
    v4 = result;
  }

  else
  {
    v4 = result->__r_.__value_.__r.__words[0];
  }

  if ((v1 & 0x80u) == 0)
  {
    v5 = HIBYTE(result->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v5 = result->__r_.__value_.__l.__size_;
  }

  do
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = *(&v4[-1].__r_.__value_.__r.__words[2] + v5-- + 7);
  }

  while (v6 == 32);
  if (v5 == -1)
  {
LABEL_13:
    v8 = v1;
    v9 = v2 + size;
    v10 = result + v1;
    if (v8 >= 0)
    {
      v9 = v10;
    }

    v11 = v9 - v4;
LABEL_16:

    return std::string::erase(result, 0, v11);
  }

  v7 = v5 + 1;
  if ((v1 & 0x80) != 0)
  {
    if (size > v5)
    {
      result->__r_.__value_.__l.__size_ = v7;
      goto LABEL_21;
    }

LABEL_33:
    sub_233754F68();
  }

  if (v5 >= v1)
  {
    goto LABEL_33;
  }

  *(&result->__r_.__value_.__s + 23) = v7;
  v2 = result;
LABEL_21:
  v2->__r_.__value_.__s.__data_[v5 + 1] = 0;
  v12 = HIBYTE(result->__r_.__value_.__r.__words[2]);
  if ((v12 & 0x80u) == 0)
  {
    v13 = result;
  }

  else
  {
    v13 = result->__r_.__value_.__r.__words[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = result->__r_.__value_.__l.__size_;
  }

  if (v12)
  {
    v11 = 0;
    while (v13->__r_.__value_.__s.__data_[v11] == 32)
    {
      if (v12 == ++v11)
      {
        return result;
      }
    }

    if (v11 != -1)
    {
      goto LABEL_16;
    }
  }

  return result;
}

double sub_233785D40(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  sub_23374B844(a1, a2, a3, a4, a5);
  *v5 = &unk_284907B40;
  *(v5 + 1180) = -1;
  *(v5 + 1210) = 0;
  *(v5 + 1218) = 0;
  result = 0.0;
  *(v5 + 1232) = 0u;
  *(v5 + 1184) = 0;
  *(v5 + 1200) = 0;
  *(v5 + 1192) = 0;
  *(v5 + 1208) = 0;
  *(v5 + 1224) = v5 + 1232;
  *(v5 + 1248) = 0;
  return result;
}

void sub_233785DAC(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v4 = a2;
  sub_23374FA0C(a1, a2, a3);
  if (*a3 == 50752 && ((*(*a1 + 56))(a1) & 1) == 0)
  {
    sub_2337338AC(a1, &v23);
    sub_233754E04(v25, &v23);
    if (v24)
    {
      sub_2337239E8(v24);
    }

    if (a3[1] != 3 || *(a3 + 1) != 3)
    {
      goto LABEL_38;
    }

    v6 = getenv("RAWCAMERA_DUALPIXEL_SECOND_IMAGE");
    v7 = *(v4 + 23);
    if (v6)
    {
      if ((v7 & 0x80) != 0)
      {
        if (*(v4 + 8) != 4)
        {
          goto LABEL_21;
        }

        v4 = *v4;
      }

      else if (v7 != 4)
      {
        goto LABEL_21;
      }

      v8 = *v4;
      v9 = 860112457;
    }

    else
    {
      if ((v7 & 0x80) != 0)
      {
        if (*(v4 + 8) != 4)
        {
          goto LABEL_21;
        }

        v4 = *v4;
      }

      else if (v7 != 4)
      {
        goto LABEL_21;
      }

      v8 = *v4;
      v9 = 876889673;
    }

    if (v8 == v9)
    {
LABEL_38:
      sub_233725FD4(v25);
      return;
    }

LABEL_21:
    sub_2337338AC(a1, &v23);
    v10 = v23;
    v21 = *(a3 + 2);
    sub_233723AE0(&v22, &v21);
    (*(*v10 + 40))(v10, &v22, 0);
    if (v24)
    {
      sub_2337239E8(v24);
    }

    sub_2337338AC(a1, &v23);
    v11 = sub_2337255C0(v23);
    if (v24)
    {
      sub_2337239E8(v24);
    }

    if (v11)
    {
      sub_2337338AC(a1, &v23);
      v12 = sub_2337255C0(v23);
      if (v24)
      {
        sub_2337239E8(v24);
      }

      v22 = v12;
      sub_2337338AC(a1, &v23);
      v13 = sub_2337255C0(v23);
      if (v24)
      {
        sub_2337239E8(v24);
      }

      v21 = v13;
      *(a1 + 1192) = *(a1 + 1184);
      do
      {
        sub_2337539D0((a1 + 1184), &v22);
        --v11;
      }

      while (v11);
      sub_2337539D0((a1 + 1184), &v21);
      if ((*(a1 + 1248) & 1) == 0)
      {
        v20 = 0;
        sub_233726998(&v23, &v20);
        v14 = *(a1 + 1184);
        if (*(a1 + 1192) != v14)
        {
          v15 = 0;
          v16 = 1;
          do
          {
            v17 = (v14 + 4 * v15);
            if (*v17 < 0)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0](exception, "RawCameraException");
              __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            sub_233726AE8(&v23, v17);
            v15 = v16;
            v14 = *(a1 + 1184);
            ++v16;
          }

          while (v15 < (*(a1 + 1192) - v14) >> 2);
        }

        if (v23 != *(a1 + 1210))
        {
          v19 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v19, "RawCameraException");
          __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }
    }

    goto LABEL_38;
  }
}

void sub_2337860C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_233786158(uint64_t a1, uint64_t a2)
{
  sub_2337338AC(a1, &__p);
  v12 = *(a2 + 8);
  sub_233723AE0(&v8, &v12);
  sub_233725F08(v13, &__p, &v8, 0);
  if (v11)
  {
    sub_2337239E8(v11);
  }

  sub_2337338AC(a1, &__p);
  v4 = sub_2337255C0(__p);
  if (v11)
  {
    sub_2337239E8(v11);
  }

  if ((v4 & 1) == 0 && (v4 - 200) >= 0xFF39u)
  {
    sub_2337338AC(a1, &v8);
    v5 = (v4 >> 1) - 1;
    v12 = v5;
    sub_233725B60(v8, &v12, &__p);
    if (v9)
    {
      sub_2337239E8(v9);
    }

    v6 = __p;
    if (v5 >= 0x2E)
    {
      *(a1 + 1248) = *(__p + 45) != 0;
LABEL_12:
      v11 = v6;
      operator delete(v6);
      return sub_233725FD4(v13);
    }

    if (__p)
    {
      goto LABEL_12;
    }
  }

  return sub_233725FD4(v13);
}

void sub_233786264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  sub_233725FD4((v11 - 40));
  _Unwind_Resume(a1);
}

uint64_t *sub_2337862B8(uint64_t a1, uint64_t a2)
{
  sub_2337338AC(a1, &v12);
  LODWORD(p_p) = *(a2 + 8);
  sub_233723AE0(&__p, &p_p);
  sub_233725F08(v14, &v12, &__p, 0);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  sub_2337338AC(a1, &v12);
  v4 = sub_2337255C0(v12);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  if ((v4 & 1) == 0 && (v4 - 100) >= 0xFF9Eu)
  {
    v5 = v4 >> 1;
    v6 = (v4 >> 1) - 1;
    if (v5 != 1)
    {
      sub_2337338AC(a1, &__p);
      LODWORD(p_p) = v6;
      sub_233725B60(__p, &p_p, &v12);
      if (v10)
      {
        sub_2337239E8(v10);
      }

      if (v6 >= 8)
      {
        v7 = *(v12 + 14);
        sub_23372A488(&__p, "IFD0:EXIF:MAKERNOTE:FILEINFO");
        p_p = &__p;
        *(sub_233786860((a1 + 1224), &__p, &unk_233905F1C, &p_p) + 56) = v7;
        if (v11 < 0)
        {
          operator delete(__p);
        }
      }

      sub_2338F884C(&v12);
    }
  }

  return sub_233725FD4(v14);
}

void sub_233786400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19)
{
  if (a17)
  {
    sub_2337239E8(a17);
  }

  sub_233725FD4(&a19);
  _Unwind_Resume(a1);
}

uint64_t *sub_233786484(uint64_t a1, uint64_t a2)
{
  sub_2337338AC(a1, &__p);
  v20 = *(a2 + 8);
  sub_233723AE0(&v16, &v20);
  sub_233725F08(v21, &__p, &v16, 0);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  sub_2337338AC(a1, &__p);
  v4 = sub_2337255C0(__p);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  if (v4 >= 9)
  {
    sub_2337338AC(a1, &v16);
    v5 = v16;
    v15 = 8;
    sub_233726998(&v20, &v15);
    sub_233725B60(v5, &v20, &__p);
    if (v17)
    {
      sub_2337239E8(v17);
    }

    v6 = __p;
    v7 = *__p;
    *(a1 + 1210) = v7;
    v8 = WORD1(v6->__vftable);
    *(a1 + 1212) = v8;
    shared_owners_low = LOWORD(v6->__shared_owners_);
    *(a1 + 1214) = shared_owners_low;
    v10 = WORD1(v6->__shared_owners_);
    *(a1 + 1216) = v10;
    v11 = WORD2(v6->__shared_owners_);
    *(a1 + 1218) = v11;
    shared_owners_high = HIWORD(v6->__shared_owners_);
    *(a1 + 1220) = shared_owners_high;
    if (v7 >> 4 >= 0x271 || v8 >> 4 >= 0x271 || shared_owners_low >= v7 || v11 >= v7 || shared_owners_low >= v11 || v10 >= v8 || shared_owners_high >= v8 || v10 >= shared_owners_high)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *(a1 + 1208) = 1;
    v19 = v6;
    operator delete(v6);
  }

  return sub_233725FD4(v21);
}

BOOL sub_233786784(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:FILEINFO");
  v2 = sub_233735E3C(a1 + 1224, __p);
  v3 = a1 + 1232 != v2 && *(v2 + 56) != 0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2337867FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233786828(uint64_t a1)
{
  sub_23375BA54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233786860(uint64_t **a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_233757640(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_233786B78(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_284907E78;
  v5[6] = 0;
  v6 = (v5 + 6);
  v5[7] = 0;
  v5[8] = 0;
  *(a1 + 12) = sub_233725614(*a3);
  *(a1 + 16) = sub_233725614(*a3);
  *(a1 + 20) = sub_233725614(*a3);
  *(a1 + 24) = sub_233725614(*a3);
  *(a1 + 28) = sub_233725614(*a3);
  *(a1 + 32) = sub_233725614(*a3);
  *(a1 + 36) = sub_233725614(*a3);
  *(a1 + 40) = sub_233725614(*a3);
  for (i = sub_233725614(*a3); i; --i)
  {
    v8 = sub_233725730(*a3);
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    if (v10 >= v9)
    {
      v12 = *v6;
      v13 = v10 - *v6;
      v14 = v13 >> 2;
      v15 = (v13 >> 2) + 1;
      if (v15 >> 62)
      {
        sub_2337235BC();
      }

      v16 = v9 - v12;
      if (v16 >> 1 > v15)
      {
        v15 = v16 >> 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v17 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        sub_2337235D4(v6, v17);
      }

      *(4 * v14) = v8;
      v11 = 4 * v14 + 4;
      memcpy(0, v12, v13);
      v18 = *(a1 + 48);
      *(a1 + 48) = 0;
      *(a1 + 56) = v11;
      *(a1 + 64) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 1);
    }

    *(a1 + 56) = v11;
  }

  return a1;
}

void sub_233786D28(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

RAWOpcodeScalePerColumn *sub_233786D54(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 12)];
  [v2 setObject:v3 forKeyedSubscript:@"Top"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 16)];
  [v2 setObject:v4 forKeyedSubscript:@"Left"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 20)];
  [v2 setObject:v5 forKeyedSubscript:@"Bottom"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 24)];
  [v2 setObject:v6 forKeyedSubscript:@"Right"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 28)];
  [v2 setObject:v7 forKeyedSubscript:@"Plane"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 32)];
  [v2 setObject:v8 forKeyedSubscript:@"Planes"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 36)];
  [v2 setObject:v9 forKeyedSubscript:@"RowPitch"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  [v2 setObject:v10 forKeyedSubscript:@"ColPitch"];

  v11 = [MEMORY[0x277CBEB18] array];
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  while (v13 != v14)
  {
    LODWORD(v12) = *v13;
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    [v11 addObject:v15];

    ++v13;
  }

  [v2 setObject:v11 forKeyedSubscript:@"Scale"];
  v16 = [[RAWOpcodeScalePerColumn alloc] initWithArguments:v2];

  return v16;
}

void *sub_233786FE4(void *a1)
{
  *a1 = &unk_284907E78;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_233787034(void *a1)
{
  *a1 = &unk_284907E78;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_2337873B4(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_2337873E4(result, a2 - v3, a3);
  }
}

void sub_2337873E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_233903BB0)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_2337235BC();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_233723798(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_233903BB0)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void sub_2337875D4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284907EC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233787628(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;

    operator delete(v4);
  }
}

id sub_233787694()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3720];
  v11 = *MEMORY[0x277CD3700];
  v12 = v0;
  v19[0] = MEMORY[0x277CBEC28];
  v19[1] = @"com.canon.crw-raw-image";
  v1 = *MEMORY[0x277CD3718];
  v13 = *MEMORY[0x277CD36E0];
  v19[2] = @".crw.";
  v19[3] = &unk_284957688;
  v19[4] = &unk_2849576A0;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{sub_2338F9E1C, v11, v12, v13, v1, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]}];
  v19[5] = v2;
  v14 = *MEMORY[0x277CD36C8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378798C];
  v19[6] = v3;
  v15 = *MEMORY[0x277CD36E8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233787998];
  v19[7] = v4;
  v16 = *MEMORY[0x277CD36D0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v19[8] = v5;
  v17 = *MEMORY[0x277CD36F0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337879A4];
  v19[9] = v6;
  v18 = *MEMORY[0x277CD36F8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337879B0];
  v19[10] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v11 count:11];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  return v9;
}

void sub_2337879BC(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_233789E70();
}

void sub_233787A58(void *a1)
{
  sub_2337338AC(a1, &__p);
  v2 = (**__p)(__p);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  if (v2)
  {
    if (((*(*a1 + 56))(a1) & 1) == 0)
    {
      v3 = (*(*a1 + 400))(a1);
      if (v3)
      {
        sub_2337338AC(a1, &__p);
        v4 = *(__p + 5);
        if (v17)
        {
          sub_2337239E8(v17);
        }

        if (v4)
        {
          sub_2337338AC(a1, &v14);
          sub_233754E04(&__p, &v14);
          if (v15)
          {
            sub_2337239E8(v15);
          }

          sub_2337338AC(a1, &v14);
          sub_2338B5664(v14[5], v3, a1[14]);
        }

        sub_2337338AC(a1, &v14);
        (*(*v14 + 8))(&__p);
        if (v15)
        {
          sub_2337239E8(v15);
        }

        if (v18 < 0)
        {
          if (v17)
          {
            p_p = __p;
LABEL_47:
            sub_2338B57A8(p_p, v3, a1[14]);
          }

          operator delete(__p);
        }

        else if (v18)
        {
          p_p = &__p;
          goto LABEL_47;
        }
      }
    }

    v13 = 0;
    sub_2337338AC(a1, &__p);
    LODWORD(v14) = 0;
    (*(*__p + 40))(__p, &v14, 0);
    if (v17)
    {
      sub_2337239E8(v17);
    }

    sub_2337338AC(a1, &__p);
    v5 = sub_2337255C0(__p);
    if (v17)
    {
      sub_2337239E8(v17);
    }

    if (v5 == 18761 || v5 == 19789)
    {
      if (v5 == 19789)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      sub_2337338AC(a1, &__p);
      sub_23372540C(__p, v6);
      if (v17)
      {
        sub_2337239E8(v17);
      }

      (*(*a1 + 96))(a1, v6);
      (*(*a1 + 112))(a1, v6);
      (*(*a1 + 128))(a1, v6);
      sub_2337338AC(a1, &__p);
      v12 = sub_233725614(__p);
      if (v17)
      {
        sub_2337239E8(v17);
      }

      sub_2337338AC(a1, &__p);
      (*(*__p + 32))(__p, &v13 + 4, 4);
      if (v17)
      {
        sub_2337239E8(v17);
      }

      sub_2337338AC(a1, &__p);
      (*(*__p + 32))(__p, &v13, 4);
      if (v17)
      {
        sub_2337239E8(v17);
      }

      if (v13 == 0x5041454852444343)
      {
        sub_2337338AC(a1, &__p);
        v7 = sub_233725614(__p);
        if (v17)
        {
          sub_2337239E8(v17);
        }

        if (v7 == 65538)
        {
          sub_2337338AC(a1, &__p);
          LODWORD(v14) = 0;
          (*(*__p + 40))(__p, &v14, 2);
          if (v17)
          {
            sub_2337239E8(v17);
          }

          sub_233726A8C(&v11, &v12);
          sub_2337338AC(a1, &__p);
          LODWORD(v14) = (*(*__p + 48))(__p);
          v10 = *sub_233731EB0(&v14, &v11);
          v8 = sub_233751844(&v10);
          if (v17)
          {
            sub_2337239E8(v17);
          }

          sub_2337338AC(a1, &__p);
          (*(*__p + 40))(__p, &v11, 0);
          sub_2338F9ED0(&__p, &v11, a1, v8);
        }
      }
    }
  }
}

void sub_233787F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_233788044(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  v27 = a2;
  sub_2337338AC(a1, &v25);
  v8 = (*(*v25 + 16))(v25);
  if (v26)
  {
    sub_2337239E8(v26);
  }

  if (v8 > a2)
  {
    sub_2337338AC(a1, &v23);
    v21 = (v27 + a3) - 4;
    sub_233723B40(&v22, &v21);
    sub_233725F08(&v25, &v23, &v22, 0);
    if (v24)
    {
      sub_2337239E8(v24);
    }

    sub_2337338AC(a1, &v23);
    v9 = (*(*v23 + 48))(v23);
    if (v24)
    {
      sub_2337239E8(v24);
    }

    sub_2337338AC(a1, &v23);
    v10 = sub_233725614(v23);
    if (v24)
    {
      sub_2337239E8(v24);
    }

    sub_2337338AC(a1, &v23);
    LODWORD(v21) = (*(*v23 + 16))(v23);
    v11 = *sub_2337580F8(&v21, &v27);
    if (v24)
    {
      sub_2337239E8(v24);
    }

    if (v10 >= v11)
    {
      goto LABEL_41;
    }

    if (a4 > 0xC)
    {
      goto LABEL_41;
    }

    v12 = v9;
    if (v9 - 2 < v27 + v10)
    {
      goto LABEL_41;
    }

    sub_2337338AC(a1, &v23);
    v13 = v23;
    v22 = v27 + v10;
    sub_233723AE0(&v21, &v22);
    (*(*v13 + 40))(v13, &v21, 0);
    if (v24)
    {
      sub_2337239E8(v24);
    }

    sub_2337338AC(a1, &v23);
    v14 = sub_2337255C0(v23);
    if (v24)
    {
      sub_2337239E8(v24);
    }

    if ((v10 + 10 * v14 + v27) + 2 > v12)
    {
      goto LABEL_41;
    }

    if (a4 == 1)
    {
      if ((v14 - 3) < 8u)
      {
LABEL_24:
        v15 = 0;
        do
        {
          sub_2337338AC(a1, &v23);
          v16 = sub_2337255C0(v23);
          if (v24)
          {
            sub_2337239E8(v24);
          }

          sub_2337338AC(a1, &v23);
          v17 = sub_233725614(v23);
          if (v24)
          {
            sub_2337239E8(v24);
          }

          v22 = v17;
          sub_2337338AC(a1, &v23);
          v18 = sub_233725614(v23);
          if (v24)
          {
            sub_2337239E8(v24);
          }

          if ((v16 & 0x3800) == 0x2800 || (v16 & 0x3800) == 0x3000)
          {
            v19 = v27 + v18;
            if (!__CFADD__(v27, v18))
            {
              sub_2337338AC(a1, &v23);
              LODWORD(v21) = (*(*v23 + 16))(v23);
              v20 = *sub_2337580F8(&v21, &v22);
              if (v24)
              {
                sub_2337239E8(v24);
              }

              if (v20 >= v19 && v19 != v27)
              {
                sub_233788044(a1, v19, v22, a4 + 1);
              }
            }
          }

          else
          {
            sub_2337884B0(a1, v27, v16, v22, v18);
          }

          ++v15;
        }

        while (v14 > v15);
      }
    }

    else if (v14 - 1 <= 0x31)
    {
      goto LABEL_24;
    }

LABEL_41:
    sub_233725FD4(&v25);
  }
}

void sub_233788418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a9)
  {
    sub_2337239E8(a9);
  }

  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2337884B0(uint64_t a1, int a2, int a3, unsigned int a4, int a5)
{
  sub_2337338AC(a1, &__p);
  sub_233754E04(v52, &__p);
  if (v48)
  {
    sub_2337239E8(v48);
  }

  if ((a3 & 0xC000) == 0x4000)
  {
    if ((a3 & 0x3FFF) == 0x1834)
    {
      *(a1 + 504) = a4;
    }

    return sub_233725FD4(v52);
  }

  if ((a3 & 0xC000) != 0)
  {
    return sub_233725FD4(v52);
  }

  v51 = a2 + a5;
  if (__CFADD__(a2, a5))
  {
    return sub_233725FD4(v52);
  }

  sub_2337338AC(a1, &__p);
  v10 = __p;
  sub_233723AE0(v45, &v51);
  (*(*v10 + 40))(v10, v45, 0);
  if (v48)
  {
    sub_2337239E8(v48);
  }

  if (a3 > 4143)
  {
    if (a3 <= 6159)
    {
      if (a3 <= 4264)
      {
        if (a3 == 4144)
        {
          if (((*(*a1 + 56))(a1) & 1) == 0)
          {
            sub_2337338AC(a1, &__p);
            sub_2337255C0(__p);
            if (v48)
            {
              sub_2337239E8(v48);
            }

            sub_2337338AC(a1, &__p);
            v31 = sub_2337255C0(__p);
            if (v48)
            {
              sub_2337239E8(v48);
            }

            LOWORD(v53) = v31;
            sub_2337338AC(a1, &__p);
            v32 = sub_2337255C0(__p);
            if (v48)
            {
              sub_2337239E8(v48);
            }

            LOWORD(v50) = v32;
            sub_2337338AC(a1, &__p);
            sub_2337255C0(__p);
            if (v48)
            {
              sub_2337239E8(v48);
            }

            sub_2337338AC(a1, &__p);
            sub_2337255C0(__p);
            if (v48)
            {
              sub_2337239E8(v48);
            }

            sub_2337338AC(a1, &__p);
            v33 = sub_2337255C0(__p);
            if (v48)
            {
              sub_2337239E8(v48);
            }

            if (v31 == 8 && v32 == 8 && (v33 == 12 || v33 == 10))
            {
              sub_2337AD450(0x80uLL, v45);
            }
          }

          return sub_233725FD4(v52);
        }

        if (a3 != 4145 || ((*(*a1 + 56))(a1) & 1) != 0)
        {
          return sub_233725FD4(v52);
        }

        if (a4 - 256 <= 0xFFFFFF11)
        {
          goto LABEL_156;
        }

        sub_2337338AC(a1, v45);
        v26 = v45[0];
        __src[0] = (a4 >> 1);
        sub_233723C18(&v53, __src);
        sub_233725B60(v26, &v53, &__p);
        if (v45[1])
        {
          sub_2337239E8(v45[1]);
        }

        v27 = __p;
        *(a1 + 712) = *(__p + 1);
        *(a1 + 716) = v27[2];
        *(a1 + 720) = vmovl_u16(*(v27 + 5));
LABEL_128:
        v48 = v27;
LABEL_129:
        operator delete(v27);
        return sub_233725FD4(v52);
      }

      if (a3 == 4265)
      {
        if ((*(*a1 + 56))(a1))
        {
          return sub_233725FD4(v52);
        }

        sub_2337338AC(a1, &__p);
        LODWORD(v45[0]) = 2;
        (*(*__p + 40))(__p, v45, 1);
        if (v48)
        {
          sub_2337239E8(v48);
        }

        if (a4 <= 2)
        {
          goto LABEL_156;
        }

        v50 = (a4 - 2) >> 1;
        sub_2337338AC(a1, v45);
        v34 = v45[0];
        sub_233723C18(__src, &v50);
        sub_233725B60(v34, __src, &__p);
        if (v45[1])
        {
          sub_2337239E8(v45[1]);
        }

        v45[1] = 0;
        v46 = 0;
        v45[0] = 0;
        sub_23375E2CC(v45, __p, v48, (v48 - __p) >> 1);
        sub_23372A488(__src, "CIFF:ColorBalance");
        v53 = __src;
        v30 = sub_23375E5EC((a1 + 120), __src, &unk_233905F1C, &v53);
LABEL_122:
        v35 = v30;
        v37 = (v30 + 56);
        v36 = *(v30 + 56);
        if (v36)
        {
          *(v35 + 64) = v36;
          operator delete(v36);
          *v37 = 0;
          v37[1] = 0;
          v37[2] = 0;
        }

        *(v35 + 56) = *v45;
        *(v35 + 72) = v46;
        v45[1] = 0;
        v46 = 0;
        v45[0] = 0;
        if (v44 < 0)
        {
          operator delete(__src[0]);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }
        }

        v27 = __p;
        if (!__p)
        {
          return sub_233725FD4(v52);
        }

        goto LABEL_128;
      }

      if (a3 != 4277 || a4 < 0xA)
      {
        return sub_233725FD4(v52);
      }

      sub_2337338AC(a1, &__p);
      v28 = sub_2337255C0(__p);
      if (v48)
      {
        sub_2337239E8(v48);
      }

      if (v28 < 0xA)
      {
        return sub_233725FD4(v52);
      }

      sub_2337338AC(a1, &__p);
      *(a1 + 764) = sub_2337255C0(__p);
      if (v48)
      {
        sub_2337239E8(v48);
      }

      sub_2337338AC(a1, &__p);
      *(a1 + 766) = sub_2337255C0(__p);
      if (v48)
      {
        sub_2337239E8(v48);
      }

      sub_2337338AC(a1, &__p);
      *(a1 + 768) = sub_2337255C0(__p);
      if (v48)
      {
        sub_2337239E8(v48);
      }

      sub_2337338AC(a1, &__p);
      *(a1 + 770) = sub_2337255C0(__p);
    }

    else
    {
      if (a3 > 8196)
      {
        switch(a3)
        {
          case 8197:
            if (((*(*a1 + 56))(a1) & 1) == 0)
            {
              *(a1 + 704) = v51;
              *(a1 + 708) = a4;
            }

            break;
          case 8199:
            *(a1 + 748) = v51;
            *(a1 + 752) = a4;
            break;
          case 8200:
            *(a1 + 756) = v51;
            *(a1 + 760) = a4;
            break;
        }

        return sub_233725FD4(v52);
      }

      if (a3 == 6160)
      {
        sub_2337338AC(a1, &__p);
        *(a1 + 736) = sub_233725614(__p);
        if (v48)
        {
          sub_2337239E8(v48);
        }

        sub_2337338AC(a1, &__p);
        *(a1 + 740) = sub_233725614(__p);
        if (v48)
        {
          sub_2337239E8(v48);
        }

        sub_2337338AC(a1, &__p);
        sub_233725614(__p);
        if (v48)
        {
          sub_2337239E8(v48);
        }

        sub_2337338AC(a1, &__p);
        *(a1 + 744) = sub_233725614(__p);
      }

      else
      {
        if (a3 != 6197 || ((*(*a1 + 56))(a1) & 1) != 0)
        {
          return sub_233725FD4(v52);
        }

        sub_2337338AC(a1, &__p);
        *(a1 + 776) = sub_233725614(__p);
      }
    }

LABEL_146:
    if (v48)
    {
      sub_2337239E8(v48);
    }

    return sub_233725FD4(v52);
  }

  if (a3 <= 2060)
  {
    if (a3 > 2058)
    {
      if (a3 == 2059)
      {
        if ((*(*a1 + 56))(a1))
        {
          return sub_233725FD4(v52);
        }

        sub_2337338AC(a1, &__p);
        LODWORD(v45[0]) = a4;
        sub_2337257E8(__p, v45, a1 + 560);
      }

      else
      {
        if ((*(*a1 + 56))(a1))
        {
          return sub_233725FD4(v52);
        }

        sub_2337338AC(a1, &__p);
        LODWORD(v45[0]) = a4;
        sub_2337257E8(__p, v45, a1 + 584);
      }

      goto LABEL_146;
    }

    if (a3 != 50)
    {
      if (a3 != 2058)
      {
        return sub_233725FD4(v52);
      }

      if (a4 - 256 > 0xFFFFFF00)
      {
        sub_2337338AC(a1, &__p);
        LODWORD(v45[0]) = a4;
        sub_2337257E8(__p, v45, a1 + 512);
        if (v48)
        {
          sub_2337239E8(v48);
        }

        v22 = a4;
        v23 = *(a1 + 535);
        if (v23 < 0)
        {
          v23 = *(a1 + 520);
        }

        if (v23 + 1 < a4)
        {
          sub_2337338AC(a1, &__p);
          v24 = *(a1 + 535);
          if (v24 < 0)
          {
            v24 = *(a1 + 520);
          }

          v25 = __p;
          v45[0] = (~v24 + v22);
          sub_233723C18(__src, v45);
          sub_2337257E8(v25, __src, a1 + 536);
          goto LABEL_146;
        }
      }

LABEL_156:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if ((*(*a1 + 56))(a1))
    {
      return sub_233725FD4(v52);
    }

    v50 = a4 >> 1;
    sub_2337338AC(a1, v45);
    v29 = v45[0];
    sub_233723C18(__src, &v50);
    sub_233725B60(v29, __src, &__p);
    if (v45[1])
    {
      sub_2337239E8(v45[1]);
    }

    v45[1] = 0;
    v46 = 0;
    v45[0] = 0;
    sub_23375E2CC(v45, __p, v48, (v48 - __p) >> 1);
    sub_23372A488(__src, "CIFF:CanonColorInfo1");
    v53 = __src;
    v30 = sub_23375E5EC((a1 + 120), __src, &unk_233905F1C, &v53);
    goto LABEL_122;
  }

  if (a3 <= 2069)
  {
    if (a3 == 2061)
    {
      if ((*(*a1 + 56))(a1))
      {
        return sub_233725FD4(v52);
      }

      sub_2337338AC(a1, &__p);
      LODWORD(v45[0]) = a4;
      sub_2337257E8(__p, v45, a1 + 608);
    }

    else
    {
      if (a3 != 2064 || ((*(*a1 + 56))(a1) & 1) != 0)
      {
        return sub_233725FD4(v52);
      }

      sub_2337338AC(a1, &__p);
      LODWORD(v45[0]) = a4;
      sub_2337257E8(__p, v45, a1 + 632);
    }

    goto LABEL_146;
  }

  switch(a3)
  {
    case 2070:
      if ((*(*a1 + 56))(a1))
      {
        return sub_233725FD4(v52);
      }

      sub_2337338AC(a1, &__p);
      LODWORD(v45[0]) = a4;
      sub_2337257E8(__p, v45, a1 + 656);
      goto LABEL_146;
    case 2071:
      if ((*(*a1 + 56))(a1))
      {
        return sub_233725FD4(v52);
      }

      sub_2337338AC(a1, &__p);
      LODWORD(v45[0]) = a4;
      sub_2337257E8(__p, v45, a1 + 680);
      goto LABEL_146;
    case 4138:
      v11 = (*(*a1 + 56))(a1);
      v12 = a4 < 6 ? 1 : v11;
      if ((v12 & 1) == 0)
      {
        sub_2337338AC(a1, &__p);
        v13 = __p;
        v45[0] = (v51 + 2);
        sub_233723B40(__src, v45);
        (*(*v13 + 40))(v13, __src, 0);
        if (v48)
        {
          sub_2337239E8(v48);
        }

        sub_2337338AC(a1, &__p);
        *(a1 + 772) = sub_2337255C0(__p);
        if (v48)
        {
          sub_2337239E8(v48);
        }

        sub_2337338AC(a1, &__p);
        *(a1 + 774) = sub_2337255C0(__p);
        if (v48)
        {
          sub_2337239E8(v48);
        }

        if (a4 < 0x32)
        {
          if (a4 < 0x10)
          {
            return sub_233725FD4(v52);
          }
        }

        else
        {
          sub_2337338AC(a1, &__p);
          v14 = __p;
          v45[0] = (v51 + 44);
          sub_233723B40(__src, v45);
          (*(*v14 + 40))(v14, __src, 0);
          if (v48)
          {
            sub_2337239E8(v48);
          }

          sub_2337338AC(a1, &__p);
          v15 = sub_2337256DC(__p);
          if (v48)
          {
            sub_2337239E8(v48);
          }

          sub_2337338AC(a1, &__p);
          v16 = __p;
          v45[0] = (v51 + 48);
          sub_233723B40(__src, v45);
          (*(*v16 + 40))(v16, __src, 0);
          if (v48)
          {
            sub_2337239E8(v48);
          }

          sub_2337338AC(a1, &__p);
          v17 = sub_2337256DC(__p);
          v18 = v48;
          if (v48)
          {
            sub_2337239E8(v48);
          }

          v19 = sub_2337896B8(v18, v15);
          v20 = log2f(v19);
          if (v17)
          {
            v19 = v17 / 10.0;
            v20 = log2f(v19);
          }

          v21 = -v20;
          sub_23372A488(&__p, "CIFF");
          v45[0] = &__p;
          *(sub_23377BB60((a1 + 312), &__p, &unk_233905F1C, v45) + 56) = v21;
          if (v49 < 0)
          {
            operator delete(__p);
          }

          sub_23372A488(&__p, "CIFF");
          v45[0] = &__p;
          *(sub_23377BB60((a1 + 288), &__p, &unk_233905F1C, v45) + 56) = v19;
          if (v49 < 0)
          {
            operator delete(__p);
          }
        }

        sub_2337338AC(a1, &__p);
        v39 = __p;
        v45[0] = (v51 + 14);
        sub_233723B40(__src, v45);
        (*(*v39 + 40))(v39, __src, 0);
        if (v48)
        {
          sub_2337239E8(v48);
        }

        sub_2337338AC(a1, &__p);
        v40 = sub_2337255C0(__p);
        if (v48)
        {
          sub_2337239E8(v48);
        }

        LODWORD(__src[0]) = v40;
        sub_23372A488(&__p, "CIFF:CanonShotInfo");
        v45[0] = &__p;
        v41 = sub_23375E5EC((a1 + 168), &__p, &unk_233905F1C, v45);
        sub_23375538C((v41 + 56), __src, __src + 4, 1uLL);
        if (v49 < 0)
        {
          v27 = __p;
          goto LABEL_129;
        }
      }

      break;
  }

  return sub_233725FD4(v52);
}

void sub_233789468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a27);
  _Unwind_Resume(a1);
}

float sub_2337896B8(uint64_t a1, int a2)
{
  result = 30.0;
  if (a2 >= -160)
  {
    if (a2 <= 384)
    {
      v3 = 0;
      v4 = &word_233904C5C;
      v5 = -61;
      do
      {
        v6 = *v4;
        v4 += 4;
        v7 = a2 - v6;
        if (a2 - v6 < 0)
        {
          v7 = -v7;
        }

        v8 = a2 - *(&unk_233904C54 + 4 * v3);
        if (v8 < 0)
        {
          v8 = *(&unk_233904C54 + 4 * v3) - a2;
        }

        if (v7 < v8)
        {
          v3 = v5 + 62;
        }
      }

      while (!__CFADD__(v5++, 1));
      return *(&unk_233904C54 + 2 * v3 + 1);
    }

    else
    {
      return 0.00025;
    }
  }

  return result;
}

uint64_t sub_23378972C(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void sub_233789784(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[186];
  if (v4 == 90)
  {
    v5 = 6;
  }

  else
  {
    v5 = 1;
  }

  if (v4 == 180)
  {
    v5 = 3;
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v4 == 270)
  {
    v6 = 8;
  }

  else
  {
    v6 = v5;
  }

  *a2 = 0;
  sub_233723AE0(&v8, a1 + 187);
  v9 = a1[188];
  sub_23373401C(a1, &v8, &v9, v6, &v10);
  sub_233723AE0(&v9, a1 + 189);
  v7 = a1[190];
  sub_23373401C(a1, &v9, &v7, v6, &v8);
  if (v10)
  {
    sub_233753C74(a2, &v10);
  }

  if (v8)
  {
    sub_233753C74(a2, &v8);
  }

  if (*(&v8 + 1))
  {
    sub_2337239E8(*(&v8 + 1));
  }

  if (*(&v10 + 1))
  {
    sub_2337239E8(*(&v10 + 1));
  }
}

void sub_233789880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  sub_233723948(&a13);
  _Unwind_Resume(a1);
}

char *sub_2337898D0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[535] < 0)
  {
    return sub_233731FB8(a2, *(result + 64), *(result + 65));
  }

  *a2 = *(result + 32);
  *(a2 + 16) = *(result + 66);
  return result;
}

char *sub_233789900@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[559] < 0)
  {
    return sub_233731FB8(a2, *(result + 67), *(result + 68));
  }

  *a2 = *(result + 536);
  *(a2 + 16) = *(result + 69);
  return result;
}

uint64_t sub_233789930(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8) == 6 && **a2 == 1179011395 && *(*a2 + 4) == 12918)
    {
      goto LABEL_21;
    }

    if (*(a2 + 8) != 4)
    {
LABEL_18:

      return sub_233733118(a1);
    }

    v4 = *a2;
  }

  else
  {
    v3 = *(a2 + 23);
    v4 = a2;
    if (v3 != 4)
    {
      if (v3 != 6)
      {
        goto LABEL_18;
      }

      if (*a2 != 1179011395 || *(a2 + 4) != 12918)
      {
        goto LABEL_18;
      }

LABEL_21:
      v8 = *(a1 + 774);
      if (v8 == 268)
      {
        return 1000;
      }

      else
      {
        return llround(exp2(vcvtd_n_f64_u32(v8, 5uLL)) * 100.0 * 0.03125);
      }
    }
  }

  if (*v4 != 1179011395)
  {
    goto LABEL_18;
  }

  v9 = *(a1 + 774);
  v10 = exp2(vcvtd_n_f64_u32(v9, 5uLL)) * 100.0 * 0.03125;
  v11 = exp2(vcvtd_n_f64_u32(*(a1 + 772), 5uLL)) * 100.0;
  v12 = 1000.0;
  if (v9 != 268)
  {
    v12 = v10;
  }

  return llround(v11 * v12 / 100.0);
}

uint64_t sub_233789AEC(_DWORD *a1)
{
  v1 = a1[180];
  v2 = a1[181];
  v3 = a1[182] - v1;
  v4 = a1[183] - v2;
  sub_2337238F0(&v6, v1, v2);
  sub_2337238F0(&v7, v3 + 1, v4 + 1);
  return v6;
}

void sub_233789B50(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 440))(a1);
  snprintf(__str, 0x10uLL, "%u", a1[126]);
  snprintf(__s, 0x10uLL, "%d", v4);
  snprintf(v7, 0x10uLL, "%d", HIDWORD(v4));
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_23372A488(__p, "crw");
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "canon");
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __str);
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __s);
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, v7);
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_233789D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_233789D5C(uint64_t a1)
{
  sub_233789D94(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233789D94(uint64_t a1)
{
  *a1 = &unk_284907F30;
  v2 = *(a1 + 792);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  if (*(a1 + 679) < 0)
  {
    operator delete(*(a1 + 656));
  }

  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  if (*(a1 + 583) < 0)
  {
    operator delete(*(a1 + 560));
  }

  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  return sub_233755950(a1);
}

uint64_t sub_233789F14(uint64_t a1, void *a2, char *a3, void **a4, void **a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849081D0;
  sub_23373245C(a1 + 24, a2, *a3, *a4, *a5);
  *(a1 + 24) = &unk_284907F30;
  *(a1 + 528) = -1;
  *(a1 + 808) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 788) = 0u;
  return a1;
}

void sub_233789FF4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849081D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_23378A124(void *a1, void *a2, unsigned int *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284908220;
  sub_23378A21C((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void sub_23378A1A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284908220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23378A21C(uint64_t a1, void *a2, unsigned int *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6)
{
  sub_233726998(&v16, a3);
  v11 = *a4;
  v14 = *a5;
  v15 = v11;
  v13 = *a6;
  return sub_2337B0510(a1, a2, &v16, &v15, &v14, &v13);
}

void sub_23378A2A0(os_signpost_id_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v16 = a3;
  v5 = a4;
  v6 = CGImagePluginGetOptions();
  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:off_27DE37BD0[0]];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_23378E07C(v6);
  v10 = v9;
  if (a1 + 1 >= 2 && os_signpost_enabled(v9))
  {
    v11 = "NO";
    *buf = 134218498;
    if (v8)
    {
      v11 = "YES";
    }

    *&buf[4] = v17;
    *&buf[12] = 2048;
    *&buf[14] = v16;
    v19 = 2080;
    v20 = v11;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CGImagePluginInitRaw", "Index:%lu, ThumbSize:%lu, UseRawData:%s", buf, 0x20u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23378A7BC;
  v14[3] = &unk_2789EED50;
  v14[4] = a1;
  v14[5] = v17;
  v14[6] = v16;
  v15 = v8;
  MEMORY[0x2383AC810](v14);
  sub_233723C18(&v12, &v17);
  sub_233723C18(&v13, &v16);
  sub_233781ACC(a1, &v12, &v13, v5);
}

void sub_23378A690(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v4 = *(v2 - 88);
    if (v4)
    {
      sub_2337239E8(v4);
    }

    __cxa_begin_catch(exception_object);
    v5 = CGImagePluginGetProperties();
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD35E8]];
      v8 = v7;
      if (v7)
      {
        [v7 removeObjectForKey:@"kCGImageSourceRawReconstructionMethodVersions"];
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x23378A534);
  }

  _Unwind_Resume(exception_object);
}

void sub_23378A7BC(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E07C(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    if (*(a1 + 56))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    v8 = 134218498;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    v12 = 2080;
    v13 = v7;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CGImagePluginInitRaw", "Index:%lu, ThumbSize:%lu, UseRawData:%s", &v8, 0x20u);
  }
}

void sub_23378A8BC(os_signpost_id_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8[50] = *MEMORY[0x277D85DE8];
  v5 = sub_23378E07C(a4);
  v6 = v5;
  if (a1 + 1 >= 2 && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CGImagePluginAddSourceProps", &unk_233945DBE, buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23378BA44;
  v8[3] = &unk_2789EE800;
  v8[4] = a1;
  MEMORY[0x2383AC810](v8);
  objc_autoreleasePoolPush();
  [MEMORY[0x277CBEB38] dictionary];
  objc_claimAutoreleasedReturnValue();
  sub_23372518C();
}

void sub_23378B748(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void **a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::__shared_weak_count *a60, uint64_t a61, std::__shared_weak_count *a62, uint64_t a63)
{
  if (a2)
  {

    a49 = &a53;
    sub_233723948(&a49);

    if (a60)
    {
      sub_2337239E8(a60);
    }

    if (a62)
    {
      sub_2337239E8(a62);
    }

    if (a64)
    {
      sub_2337239E8(a64);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x23378B6A8);
  }

  _Unwind_Resume(a1);
}

void sub_23378BA44(uint64_t a1)
{
  v2 = sub_23378E07C(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CGImagePluginAddSourceProps", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_23378BACC(os_signpost_id_t a1)
{
  v2 = sub_23378E07C(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CGImagePluginImageCount", &unk_233945DBE, buf, 2u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23378BBCC;
  v6[3] = &unk_2789EE800;
  v6[4] = a1;
  v4 = MEMORY[0x2383AC810](v6);
  v4[2]();

  return 1;
}

void sub_23378BBCC(uint64_t a1)
{
  v2 = sub_23378E07C(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CGImagePluginImageCount", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_23378BC54(void *a1, void *a2)
{
  v4 = sub_23378E07C(a1);
  v5 = v4;
  if (a1 + 1 >= 2 && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CGImagePluginCompareOptionsRaw", &unk_233945DBE, buf, 2u);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_23378C4D8;
  v35[3] = &unk_2789EE800;
  v35[4] = a1;
  v6 = MEMORY[0x2383AC810](v35);
  v7 = a1;
  v8 = a2;
  if (v7 == v8)
  {
    v17 = 1;
  }

  else
  {
    v31 = v6;
    v9 = sub_233739ACC(v7, off_27DE37BC8[0]);
    v10 = sub_233739ACC(v7, off_27DE37BD0[0]);
    v11 = sub_233739ACC(v8, off_27DE37BC8[0]);
    v12 = sub_233739ACC(v8, off_27DE37BD0[0]);
    v13 = 0;
    v14 = !v10;
    if (v9 && (v14 & 1) == 0)
    {
      v13 = sub_2337397F8(v7, off_27DE37BD0[0]);
    }

    if (v9 && !v10)
    {
      v13 = sub_2337397F8(v7, off_27DE37BC8[0]);
    }

    if (((v9 | v14) & 1) == 0)
    {
      v13 = sub_2337397F8(v7, off_27DE37BD0[0]);
    }

    v15 = 0;
    v16 = !v12;
    if (v11 && (v16 & 1) == 0)
    {
      v15 = sub_2337397F8(v8, off_27DE37BD0[0]);
    }

    if (v11 && !v12)
    {
      v15 = sub_2337397F8(v8, off_27DE37BC8[0]);
    }

    if (((v11 | v16) & 1) == 0)
    {
      v15 = sub_2337397F8(v8, off_27DE37BD0[0]);
    }

    if (v13 == v15)
    {
      if (sub_23378C560(v7, v8, @"kCGImageSourceAltMode", 1) && sub_23378C560(v7, v8, *MEMORY[0x277CD35D8], 1))
      {
        v18 = *MEMORY[0x277CD3628];
        v19 = [v7 objectForKeyedSubscript:*MEMORY[0x277CD3628]];
        v20 = sub_233818DA4(v19);
        v21 = [v8 objectForKeyedSubscript:v18];
        v6 = v31;
        LODWORD(v18) = sub_233818DA4(v21);

        if (v20 != v18)
        {
          v17 = 0;
          goto LABEL_32;
        }

        v22 = sub_2337397B0(v7, @"kCGImageSourceDisableVendorLensDistortionCorrection");
        if (v22 == sub_2337397B0(v8, @"kCGImageSourceDisableVendorLensDistortionCorrection"))
        {
          v23 = *MEMORY[0x277CD3650];
          v24 = sub_2337397B0(v7, *MEMORY[0x277CD3650]);
          v25 = sub_23373C094(v24);
          v26 = sub_2337397B0(v8, v23);
          if (v25 == sub_23373C094(v26))
          {
            v27 = *MEMORY[0x277CD3640];
            v28 = sub_233739A60(v7, *MEMORY[0x277CD3640]);
            if (v28)
            {
              v33[0] = 0;
              v33[1] = 0;
              sub_2337583E0(v28, v33);
            }

            v29 = sub_233740FAC(v7, v27);
            v32[0] = 0;
            v32[1] = 0;
            sub_233758444(v29, v32);
          }
        }
      }

      v17 = 0;
      v6 = v31;
      goto LABEL_32;
    }

    v17 = 0;
    v6 = v31;
  }

LABEL_32:

  v6[2](v6);
  return v17;
}

void sub_23378C49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void), void *a10)
{
  a9[2]();

  _Unwind_Resume(a1);
}

void sub_23378C4D8(uint64_t a1)
{
  v2 = sub_23378E07C(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CGImagePluginCompareOptionsRaw", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_23378C560(void *a1, void *a2, void *a3, char a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = sub_233739ACC(v7, v9);
  if (v10 ^ sub_233739ACC(v8, v9)) != 1 || (a4)
  {
    v12 = sub_2337397F8(v7, v9);
    v11 = v12 ^ sub_2337397F8(v8, v9) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL sub_23378C630(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = sub_233739ACC(v5, v7);
  if (v8 == sub_233739ACC(v6, v7))
  {
    v10 = sub_23378DD98(v5, v7);
    v11 = sub_23378DD98(v6, v7);
    v9 = vabdd_f64(v10, v11) / fmax(fabs(v10), fmax(fabs(v11), 0.001)) < 0.0000001;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL sub_23378C724(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_23378DDE8(a1, v6);
  v8 = sub_23378DDE8(v5, v6);
  v9 = v8;
  if (v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = 0;
    if (v7 && v8)
    {
      v11 = [v7 count];
      if (v11 == [v9 count])
      {
        v12 = 0;
        do
        {
          v13 = [v7 count];
          v10 = v12 >= v13;
          if (v12 >= v13)
          {
            break;
          }

          v14 = [v7 objectAtIndexedSubscript:v12];
          [v14 doubleValue];
          v16 = v15;

          v17 = [v9 objectAtIndexedSubscript:v12];
          [v17 doubleValue];
          v19 = v18;

          ++v12;
        }

        while (vabdd_f64(v16, v19) / fmax(fabs(v16), fmax(fabs(v19), 0.001)) <= 0.0000001);
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

void sub_23378C8D0(os_signpost_id_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v12 = a3;
  v13 = a2;
  v5 = a4;
  v6 = sub_23378E07C(v5);
  v7 = v6;
  if (a1 + 1 >= 2 && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CGImagePluginInitThumbnail", &unk_233945DBE, buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23378CAB8;
  v11[3] = &unk_2789EE800;
  v11[4] = a1;
  MEMORY[0x2383AC810](v11);
  sub_233723C18(&v9, &v13);
  sub_233723C18(&v8, &v12);
  sub_233781B50(a1, &v9, &v8, v5);
}

void sub_23378CA50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23378C9D4);
}

void sub_23378CAB8(uint64_t a1)
{
  v2 = sub_23378E07C(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CGImagePluginInitThumbnail", &unk_233945DBE, v5, 2u);
  }
}

void sub_23378CB40(os_signpost_id_t a1, unint64_t a2, void *a3, void *a4)
{
  v15 = a2;
  v6 = a3;
  v7 = a4;
  v8 = sub_23378E07C(v7);
  v9 = v8;
  if (a1 + 1 >= 2 && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CGImagePluginCopyAuxiliaryDataInfo", &unk_233945DBE, buf, 2u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23378CD58;
  v14[3] = &unk_2789EE800;
  v14[4] = a1;
  MEMORY[0x2383AC810](v14);
  sub_233723C18(&v12, &v15);
  v10 = 0;
  sub_233726998(&v11, &v10);
  sub_233781ACC(a1, &v12, &v11, v7);
}

void sub_23378CCEC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23378CC5CLL);
}

void sub_23378CD58(uint64_t a1)
{
  v2 = sub_23378E07C(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CGImagePluginCopyAuxiliaryDataInfo", &unk_233945DBE, v5, 2u);
  }
}

void *CopyRawPluginsInfoArray()
{
  v0 = [MEMORY[0x277CBEB18] array];
  v1 = sub_233780B40();
  [v0 addObjectsFromArray:v1];

  v2 = sub_23379875C();
  [v0 addObjectsFromArray:v2];

  v3 = sub_23375B690();
  [v0 addObjectsFromArray:v3];

  v4 = sub_23376A698();
  [v0 addObjectsFromArray:v4];

  v5 = sub_233795AC0();
  [v0 addObjectsFromArray:v5];

  v6 = sub_2337AA794();
  [v0 addObjectsFromArray:v6];

  v7 = sub_2337ABCCC();
  [v0 addObjectsFromArray:v7];

  v8 = sub_2338438F0();
  [v0 addObjectsFromArray:v8];

  v9 = sub_233793C20();
  [v0 addObjectsFromArray:v9];

  v10 = sub_2338641B0();
  [v0 addObjectsFromArray:v10];

  v11 = sub_2337934C0();
  [v0 addObjectsFromArray:v11];

  v12 = sub_2337E12A0();
  [v0 addObjectsFromArray:v12];

  v13 = sub_23378E154();
  [v0 addObjectsFromArray:v13];

  v14 = sub_233820A24();
  [v0 addObjectsFromArray:v14];

  v15 = sub_2337B5E58();
  [v0 addObjectsFromArray:v15];

  v16 = sub_233787694();
  [v0 addObjectsFromArray:v16];

  v17 = sub_23377C168();
  [v0 addObjectsFromArray:v17];

  v18 = sub_233765120();
  [v0 addObjectsFromArray:v18];

  v19 = sub_23375E6B8();
  [v0 addObjectsFromArray:v19];

  v20 = sub_2337648A8();
  [v0 addObjectsFromArray:v20];

  v21 = sub_233763A68();
  [v0 addObjectsFromArray:v21];

  v22 = sub_23375FB00();
  [v0 addObjectsFromArray:v22];

  v23 = sub_2338F613C();
  [v0 addObjectsFromArray:v23];

  return v0;
}

void sub_23378D098(void *a1)
{
  v3 = v2;

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23378D088);
}

CFArrayRef RCCopyMethodsArrayForIdentifier(os_signpost_id_t a1)
{
  v2 = sub_23378E07C(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "RCCopyMethodsArrayForIdentifier", &unk_233945DBE, buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23378D25C;
  v7[3] = &unk_2789EE800;
  v7[4] = a1;
  v4 = MEMORY[0x2383AC810](v7);
  v5 = CFArrayCreate(0, 0, 0, 0);
  v4[2](v4);

  return v5;
}

void sub_23378D25C(uint64_t a1)
{
  v2 = sub_23378E07C(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RCCopyMethodsArrayForIdentifier", &unk_233945DBE, v5, 2u);
  }
}

void RCCreateCIImageFromBufferAndProperties(__CVBuffer *a1, void *a2)
{
  v4 = sub_23378E07C(a1);
  v5 = v4;
  if (a1 + 1 >= 2 && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, a1, "RCCreateCIImageFromBufferAndProperties", &unk_233945DBE, buf, 2u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23378D424;
  v6[3] = &unk_2789EE800;
  v6[4] = a1;
  MEMORY[0x2383AC810](v6);
  RCCreateCIImageFromBufferAndPropertiesV2(a1, a2, 1);
}

void sub_23378D424(uint64_t a1)
{
  v2 = sub_23378E07C(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RCCreateCIImageFromBufferAndProperties", &unk_233945DBE, v5, 2u);
  }
}

void RCCreateCIImageFromBufferAndPropertiesV2(__CVBuffer *a1, void *a2, char a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v23 = a1;
  v22 = a3;
  v5 = sub_23378E07C(a1);
  v6 = v5;
  if (a1 + 1 >= 2 && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, a1, "RCCreateCIImageFromBufferAndProperties", &unk_233945DBE, buf, 2u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23378DD10;
  v21[3] = &unk_2789EE800;
  v21[4] = a1;
  MEMORY[0x2383AC810](v21);
  v7 = objc_autoreleasePoolPush();
  sub_2337E560C(v7, v8);
  if (v23 && a2)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(v23)];
    v10 = [&unk_284954EC8 containsObject:v9];

    if (v10)
    {
      v11 = a2;
      v12 = [v11 objectForKeyedSubscript:@"{Exif}"];
      v13 = v12 == 0;

      if (!v13)
      {
        v14 = [v11 objectForKeyedSubscript:@"{DNG}"];
        v15 = v14 == 0;

        if (!v15)
        {
          v20 = [v11 mutableCopy];
          sub_23378DE54();
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v17, "RawCameraException");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v16 = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](v16, "RawCameraException");
  __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_23378DB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, void *a22)
{
  if (a2)
  {

    if (a18)
    {
      sub_2337239E8(a18);
    }

    if (a20)
    {
      sub_2337239E8(a20);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x23378D960);
  }

  _Unwind_Resume(exception_object);
}

void sub_23378DD10(uint64_t a1)
{
  v2 = sub_23378E07C(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RCCreateCIImageFromBufferAndProperties", &unk_233945DBE, v5, 2u);
  }
}

double sub_23378DD98(void *a1, uint64_t a2)
{
  v2 = sub_233740FAC(a1, a2);
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

void *sub_23378DDE8(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void *sub_23378DEF0(void *a1, __CVBuffer **a2, void **a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284908270;
  sub_2337EE2C8((a1 + 3), *a2, *a3);
  return a1;
}

void sub_23378DF78(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284908270;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_23378DFF4(uint64_t a1)
{
  if ((atomic_load_explicit(byte_280C04DF8, memory_order_acquire) & 1) == 0)
  {
    sub_2338F9F28();
  }

  v2 = qword_280C04DF0;

  return v2;
}

id sub_23378E038(uint64_t a1)
{
  if ((atomic_load_explicit(byte_280C04E08, memory_order_acquire) & 1) == 0)
  {
    sub_2338F9F84();
  }

  v2 = qword_280C04E00;

  return v2;
}

id sub_23378E07C(uint64_t a1)
{
  if ((atomic_load_explicit(byte_280C04E18, memory_order_acquire) & 1) == 0)
  {
    sub_2338F9FE0();
  }

  v2 = qword_280C04E10;

  return v2;
}

id sub_23378E0C0(uint64_t a1)
{
  if ((atomic_load_explicit(byte_280C04E28, memory_order_acquire) & 1) == 0)
  {
    sub_2338FA03C();
  }

  v2 = qword_280C04E20;

  return v2;
}

id sub_23378E104(uint64_t a1)
{
  if ((atomic_load_explicit(byte_280C04E38, memory_order_acquire) & 1) == 0)
  {
    sub_2338FA098();
  }

  v2 = qword_280C04E30;

  return v2;
}

id sub_23378E154()
{
  v52[2] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CD3720];
  v35[0] = *MEMORY[0x277CD3700];
  v0 = v35[0];
  v35[1] = v1;
  v45[0] = MEMORY[0x277CBEC38];
  v45[1] = @"com.sony.arw-raw-image";
  v3 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v2 = v36;
  v37 = v3;
  v45[2] = @".arw.";
  v45[3] = &unk_284957760;
  v4 = *MEMORY[0x277CD3708];
  v45[4] = &unk_284957778;
  v5 = *MEMORY[0x277CD3710];
  v38 = v4;
  v39 = v5;
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233720E0C];
  v40 = *MEMORY[0x277CD36C8];
  v23 = v46;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378E65C];
  v47 = v22;
  v41 = *MEMORY[0x277CD36E8];
  [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378E668];
  v21 = v24 = v41;
  v48 = v21;
  v42 = *MEMORY[0x277CD36D0];
  v6 = v42;
  [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v26 = v25 = v40;
  v49 = v26;
  v43 = *MEMORY[0x277CD36F0];
  v7 = v43;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378E674];
  v50 = v20;
  v44 = *MEMORY[0x277CD36F8];
  v8 = v44;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378E680];
  v51 = v19;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v35 count:11];
  v52[0] = v18;
  v27[0] = v0;
  v27[1] = v1;
  v28[0] = MEMORY[0x277CBEC38];
  v28[1] = @"com.sony.axr-raw-image";
  v27[2] = v2;
  v27[3] = v3;
  v28[2] = @".axr.";
  v28[3] = &unk_284957760;
  v28[4] = &unk_284957778;
  v27[4] = v4;
  v27[5] = v5;
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233720E0C];
  v27[6] = v25;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378E65C];
  v30 = v9;
  v27[7] = v24;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378E668];
  v31 = v10;
  v27[8] = v6;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v32 = v11;
  v27[9] = v7;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378E674];
  v33 = v12;
  v27[10] = v8;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378E680];
  v34 = v13;
  v14 = v29;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:11];
  v52[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];

  return v16;
}

void sub_23378E68C(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_2337925DC();
}

uint64_t sub_23378E728(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isEqualToString:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

double sub_23378E79C(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  sub_23374B844(a1, a2, a3, a4, a5);
  *&v5 = 0;
  *v6 = &unk_2849082E0;
  *(v6 + 1184) = 0;
  *(v6 + 1200) = 0u;
  *(v6 + 1192) = v6 + 1200;
  *(v6 + 1224) = 0u;
  *(v6 + 1216) = v6 + 1224;
  *(v6 + 1248) = 0;
  *(v6 + 1256) = v5;
  *(v6 + 1240) = v6 + 1248;
  *(v6 + 1272) = 0;
  *(v6 + 1400) = 0;
  *(v6 + 1408) = 0;
  *(v6 + 1424) = 0;
  *(v6 + 1432) = 0;
  *(v6 + 1440) = 0;
  *(v6 + 1444) = 0;
  *(v6 + 1452) = 0;
  *(v6 + 1296) = 0;
  *(v6 + 1304) = 0;
  *(v6 + 1280) = 0u;
  *(v6 + 1336) = 0;
  *(v6 + 1328) = 0;
  *(v6 + 1312) = 0u;
  *(v6 + 1344) = 0u;
  *(v6 + 1360) = 0u;
  *(v6 + 1376) = 0;
  return *&v5;
}

void sub_23378E84C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  if (v6 > 0x7200)
  {
    if (*a3 <= 0x730Fu)
    {
      if (*a3 <= 0x72FFu)
      {
        if (v6 == 29185)
        {
          sub_2338FA234(a3, a1);
          return;
        }

        if (v6 != 29217)
        {
          if (v6 == 29264)
          {
            if (((*(*a1 + 56))(a1) & 1) == 0)
            {
              sub_2337530DC(&v76, ":MRWInfo", a2);
              sub_233790324(a1, &v76, *(a3 + 2));
              sub_2338F8878(&v76);
            }

            return;
          }

          goto LABEL_257;
        }

        if (a3[1] != 7 || *(a3 + 1) != 4)
        {
          return;
        }

        sub_2337338AC(a1, &v76);
        v59 = sub_233725404(v76);
        v60 = bswap32(*(a3 + 2));
        if (v59 == 2)
        {
          v61 = v60;
        }

        else
        {
          v61 = *(a3 + 2);
        }

        if (v77)
        {
          sub_2337239E8(v77);
        }

        if (*(a2 + 23) >= 0)
        {
          v62 = *(a2 + 23);
        }

        else
        {
          v62 = *(a2 + 8);
        }

        v63 = v79;
        sub_2337551CC(v79, v62 + 10);
        if (v80 < 0)
        {
          v63 = v79[0];
        }

        if (v62)
        {
          if (*(a2 + 23) >= 0)
          {
            v64 = a2;
          }

          else
          {
            v64 = *a2;
          }

          memmove(v63, v64, v62);
        }

        strcpy(v63 + v62, ":SR2SubIFD");
        sub_23378FE60(a1, v79, *(a1 + 1368), *(a1 + 1372), v61);
        if ((v80 & 0x80000000) == 0)
        {
          return;
        }

        v28 = v79[0];
LABEL_255:
        operator delete(v28);
        return;
      }

      if (v6 != 29440)
      {
        if (v6 != 29443)
        {
          if (v6 != 29446)
          {
            goto LABEL_257;
          }

          v25 = a3[1];
          if (v25 != 3 && v25 != 8 || *(a3 + 1) != 4)
          {
            return;
          }

          sub_2337338AC(a1, __p);
          sub_23374B2FC(a3, __p, &v76);
          if (__p[1])
          {
            sub_2337239E8(__p[1]);
          }

          v28 = v76;
          if (v77 - v76 != 8)
          {
            goto LABEL_142;
          }

          LOWORD(v26) = *(v76 + 2);
          LOWORD(v27) = *(v76 + 3);
          v29 = v27;
          v30 = fmax(v26, v29);
          LOWORD(v29) = *(v76 + 1);
          v31 = *&v29;
          v32 = fmax(v31, v30);
          LOWORD(v31) = *v76;
          __src = fmax(*&v31, v32);
          sub_2337530DC(__p, ":0x7306", a2);
          v70[0] = __p;
          v33 = sub_23375E520((a1 + 240), __p, &unk_233905F1C, v70);
          sub_233755258((v33 + 56), &__src, &v82, 1uLL);
          goto LABEL_139;
        }

        v65 = a3[1];
        if (v65 != 3 && v65 != 8 || *(a3 + 1) != 4)
        {
          return;
        }

        sub_2337338AC(a1, __p);
        sub_23374B2FC(a3, __p, &v76);
        if (__p[1])
        {
          sub_2337239E8(__p[1]);
        }

        v56 = v76;
        v57 = v77;
        if (v77 - v76 == 8)
        {
LABEL_247:
          __p[0] = 0;
          __p[1] = 0;
          v75 = 0;
          sub_23375E2CC(__p, v56, v57, 4uLL);
          sub_2337530DC(v70, ":WBLevels", a2);
          __src = COERCE_DOUBLE(v70);
          v66 = sub_23375E5EC((a1 + 120), v70, &unk_233905F1C, &__src);
          v67 = v66[7];
          if (v67)
          {
            v66[8] = v67;
            operator delete(v67);
            v66[7] = 0;
            v66[8] = 0;
            v66[9] = 0;
          }

          *(v66 + 7) = *__p;
          v66[9] = v75;
          __p[1] = 0;
          v75 = 0;
          __p[0] = 0;
          if (SHIBYTE(v71) < 0)
          {
            operator delete(v70[0]);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          v56 = v76;
        }

LABEL_253:
        if (!v56)
        {
          return;
        }

        v77 = v56;
        v28 = v56;
        goto LABEL_255;
      }
    }

    else
    {
      if (*a3 > 0x7980u)
      {
        if (*a3 > 0xC61Fu)
        {
          if (v6 == 50720)
          {
            if (a3[1] == 4 && *(a3 + 1) == 2)
            {
              sub_2337338AC(a1, __p);
              LODWORD(__src) = sub_233749410(a3);
              sub_233726A8C(v70, &__src);
              sub_233725F08(&v76, __p, v70, 0);
              if (__p[1])
              {
                sub_2337239E8(__p[1]);
              }

              sub_2337338AC(a1, __p);
              v47 = sub_233725614(__p[0]);
              if (__p[1])
              {
                sub_2337239E8(__p[1]);
              }

              sub_2337338AC(a1, __p);
              v48 = sub_233725614(__p[0]);
              if (__p[1])
              {
                sub_2337239E8(__p[1]);
              }

              if ((*(a1 + 1452) & 1) == 0)
              {
                *(a1 + 1452) = 1;
              }

              *(a1 + 1444) = v47 | (v48 << 32);
              sub_233725FD4(&v76);
            }

            return;
          }

          if (v6 == 50740)
          {
            if ((*(*a1 + 56))(a1))
            {
              v34 = 0;
            }

            else
            {
              v34 = a3[1] == 1;
            }

            v35 = v34 && *(a3 + 1) == 4;
            if (v35 && sub_233754AA0(a2, "IFD0"))
            {
              LODWORD(__p[0]) = 0;
              sub_233726998(&v76, __p);
              v36 = sub_233754BB0(a3, &v76);
              LODWORD(__src) = 1;
              sub_233726998(v70, &__src);
              v37 = sub_233754BB0(a3, v70);
              v83[0] = 2;
              sub_233726998(&v68, v83);
              v38 = sub_233754BB0(a3, &v68);
              v72 = 3;
              sub_233726998(&v73, &v72);
              v39 = sub_233754BB0(a3, &v73);
              sub_2337530DC(&v76, ":DNGPrivate", a2);
              (*(*a1 + 784))(a1, &v76, v36 | (((v38 << 8) | (v39 << 16) | v37) << 8));
              sub_2338F8878(&v76);
            }

            return;
          }
        }

        else
        {
          if (v6 == 31105)
          {
            goto LABEL_58;
          }

          if (v6 == 50719)
          {
            if (a3[1] == 4 && *(a3 + 1) == 2)
            {
              sub_2337338AC(a1, __p);
              LODWORD(__src) = sub_233749410(a3);
              sub_233726A8C(v70, &__src);
              sub_233725F08(&v76, __p, v70, 0);
              if (__p[1])
              {
                sub_2337239E8(__p[1]);
              }

              sub_2337338AC(a1, __p);
              v10 = sub_233725614(__p[0]);
              if (__p[1])
              {
                sub_2337239E8(__p[1]);
              }

              sub_2337338AC(a1, __p);
              v11 = sub_233725614(__p[0]);
              if (__p[1])
              {
                sub_2337239E8(__p[1]);
              }

              if ((*(a1 + 1440) & 1) == 0)
              {
                *(a1 + 1440) = 1;
              }

              *(a1 + 1432) = v10 | (v11 << 32);
              sub_233725FD4(&v76);
            }

            return;
          }
        }

        goto LABEL_257;
      }

      if (v6 != 29456)
      {
        if (v6 != 29459)
        {
          if (v6 != 30847)
          {
            goto LABEL_257;
          }

          if (a3[1] != 3 || (*(a3 + 1) - 3) > 1)
          {
            return;
          }

          sub_2337338AC(a1, __p);
          sub_23374B2FC(a3, __p, &v76);
          if (__p[1])
          {
            sub_2337239E8(__p[1]);
          }

          LOWORD(v15) = *(v76 + 1);
          LOWORD(v16) = *(v76 + 2);
          v17 = v16;
          v18 = fmax(v15, v17);
          LOWORD(v17) = *v76;
          v19 = fmax(*&v17, v18);
          if (v77 - v76 == 8)
          {
            LOWORD(v18) = *(v76 + 3);
            v19 = fmax(v19, *&v18);
          }

          if (*(a2 + 23) >= 0)
          {
            v20 = *(a2 + 23);
          }

          else
          {
            v20 = *(a2 + 8);
          }

          v21 = __p;
          sub_2337551CC(__p, v20 + 11);
          if (v75 < 0)
          {
            v21 = __p[0];
          }

          if (v20)
          {
            if (*(a2 + 23) >= 0)
            {
              v22 = a2;
            }

            else
            {
              v22 = *a2;
            }

            memmove(v21, v22, v20);
          }

          strcpy(v21 + v20, ":WhiteLevel");
          __src = v19;
          v70[0] = __p;
          v23 = sub_233757B14((a1 + 240), __p, &unk_233905F1C, v70, &v68);
          sub_233755258(v23 + 7, &__src, &v82, 1uLL);
          goto LABEL_139;
        }

        v55 = a3[1];
        if (v55 != 3 && v55 != 8 || *(a3 + 1) != 4)
        {
          return;
        }

        sub_2337338AC(a1, __p);
        sub_23374B2FC(a3, __p, &v76);
        if (__p[1])
        {
          sub_2337239E8(__p[1]);
        }

        v56 = v76;
        v57 = v77;
        if (v77 - v76 == 8)
        {
          goto LABEL_247;
        }

        goto LABEL_253;
      }
    }

    v40 = a3[1];
    if (v40 != 3 && v40 != 8 || *(a3 + 1) != 4)
    {
      return;
    }

    sub_2337338AC(a1, __p);
    sub_23374B2FC(a3, __p, &v76);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    v28 = v76;
    if (v77 - v76 != 8)
    {
      goto LABEL_142;
    }

    if (*(a2 + 23) >= 0)
    {
      v41 = *(a2 + 23);
    }

    else
    {
      v41 = *(a2 + 8);
    }

    v42 = __p;
    sub_2337551CC(__p, v41 + 12);
    if (v75 < 0)
    {
      v42 = __p[0];
    }

    if (v41)
    {
      if (*(a2 + 23) >= 0)
      {
        v43 = a2;
      }

      else
      {
        v43 = *a2;
      }

      memmove(v42, v43, v41);
    }

    strcpy(v42 + v41, ":BlackLevels");
    v70[1] = 0;
    v71 = 0;
    v70[0] = 0;
    sub_2337924A4(v70, v76, v77, (v77 - v76) >> 1);
    __src = COERCE_DOUBLE(__p);
    v44 = sub_233757B14((a1 + 264), __p, &unk_233905F1C, &__src, &v68);
    v45 = v44[7];
    if (v45)
    {
      v44[8] = v45;
      operator delete(v45);
      v44[7] = 0;
      v44[8] = 0;
      v44[9] = 0;
    }

    *(v44 + 7) = *v70;
    v44[9] = v71;
LABEL_139:
    if (SHIBYTE(v75) < 0)
    {
      operator delete(__p[0]);
    }

    v28 = v76;
LABEL_142:
    if (!v28)
    {
      return;
    }

    v77 = v28;
    goto LABEL_255;
  }

  if (*a3 <= 0x7033u)
  {
    if (*a3 > 0x7010u)
    {
      switch(v6)
      {
        case 0x7011u:
          if ((*(*a1 + 56))(a1))
          {
            v51 = 0;
          }

          else
          {
            v51 = a3[1] == 3;
          }

          v52 = v51 && *(a3 + 1) == 4;
          if (!v52 || !sub_233754AA0(a2, "IFD0:SUBIFD0"))
          {
            return;
          }

          v76 = 0;
          v77 = 0;
          v78 = 0;
          if (sub_233751BE4(a1, a3, &v76))
          {
            __p[0] = a2;
            v53 = sub_2337577E4((a1 + 1240), a2, &unk_233905F1C, __p, v70) + 7;
            if (v53 != &v76)
            {
              sub_233754F80(v53, v76, v77, (v77 - v76) >> 1);
            }
          }

LABEL_49:
          sub_2338F884C(&v76);
          return;
        case 0x7031u:
          sub_2338FA2F4(a3, a1);
          return;
        case 0x7032u:
          if (a3[1] == 8 && *(a3 + 1) == 17)
          {
            sub_2337338AC(a1, __p);
            LODWORD(__src) = sub_233749410(a3);
            sub_233726A8C(v70, &__src);
            sub_233725F08(&v76, __p, v70, 0);
            if (__p[1])
            {
              sub_2337239E8(__p[1]);
            }

            sub_2337338AC(a1, __p);
            v24 = sub_2337256DC(__p[0]);
            if (__p[1])
            {
              sub_2337239E8(__p[1]);
            }

            if (v24 <= 0x10)
            {
              sub_23374B668((a1 + 1280), v24);
              if (v24)
              {
                v24 = v24;
                do
                {
                  sub_2337338AC(a1, __p);
                  LOWORD(v70[0]) = sub_2337256DC(__p[0]);
                  sub_23374B768((a1 + 1280), v70);
                  if (__p[1])
                  {
                    sub_2337239E8(__p[1]);
                  }

                  --v24;
                }

                while (v24);
              }
            }

            goto LABEL_210;
          }

          return;
      }
    }

    else
    {
      switch(v6)
      {
        case 0x14Au:
          if (((*(*a1 + 56))(a1) & 1) == 0)
          {
            (*(*a1 + 224))(&v76, a1);
            if (!sub_233754AA0(&v76, "DSLR-A100"))
            {
              goto LABEL_265;
            }

            sub_23372A488(__p, "IFD0");
            v49 = sub_233735E3C(a1 + 536, __p);
            v50 = a1 + 544 != v49 && *(v49 + 56) == 3872;
            if (SHIBYTE(v75) < 0)
            {
              operator delete(__p[0]);
            }

            if (v50)
            {
              *(a1 + 1184) = *(a3 + 2);
            }

            else
            {
LABEL_265:
              sub_23374FA0C(a1, a2, a3);
            }

            sub_2338F8878(&v76);
          }

          return;
        case 0x7000u:
          if ((sub_2338FA334(a1, a3) & 1) != 0 && sub_233754AA0(a2, "IFD0:SUBIFD0"))
          {
            v58 = sub_233751308(a3);
            v76 = a2;
            *(sub_233757C60((a1 + 1192), a2, &unk_233905F1C, &v76, __p) + 28) = v58;
          }

          return;
        case 0x7010u:
          if ((*(*a1 + 56))(a1))
          {
            v12 = 0;
          }

          else
          {
            v12 = a3[1] == 3;
          }

          v13 = v12 && *(a3 + 1) == 4;
          if (!v13 || !sub_233754AA0(a2, "IFD0:SUBIFD0"))
          {
            return;
          }

          v76 = 0;
          v77 = 0;
          v78 = 0;
          if (sub_233751BE4(a1, a3, &v76))
          {
            __p[0] = a2;
            v14 = sub_2337577E4((a1 + 1216), a2, &unk_233905F1C, __p, v70) + 7;
            if (v14 != &v76)
            {
              sub_233754F80(v14, v76, v77, (v77 - v76) >> 1);
            }
          }

          goto LABEL_49;
      }
    }

LABEL_257:

    sub_23374FA0C(a1, a2, a3);
    return;
  }

  if (*a3 <= 0x7036u)
  {
    if (v6 == 28724)
    {
      sub_2338FA2B4(a3, a1);
      return;
    }

    if (v6 == 28725)
    {
      if (a3[1] == 8 && *(a3 + 1) == 33)
      {
        sub_2337338AC(a1, __p);
        LODWORD(__src) = sub_233749410(a3);
        sub_233726A8C(v70, &__src);
        sub_233725F08(&v76, __p, v70, 0);
        if (__p[1])
        {
          sub_2337239E8(__p[1]);
        }

        sub_2337338AC(a1, __p);
        v54 = sub_2337256DC(__p[0]);
        if (__p[1])
        {
          sub_2337239E8(__p[1]);
        }

        if (v54 <= 0x20)
        {
          sub_23374B668((a1 + 1312), v54);
          if (v54)
          {
            v54 = v54;
            do
            {
              sub_2337338AC(a1, __p);
              LOWORD(v70[0]) = sub_2337256DC(__p[0]);
              sub_23374B768((a1 + 1312), v70);
              if (__p[1])
              {
                sub_2337239E8(__p[1]);
              }

              --v54;
            }

            while (v54);
          }
        }

        goto LABEL_210;
      }

      return;
    }

LABEL_58:
    sub_2338FA274(a3, a1);
    return;
  }

  if (*a3 > 0x7038u)
  {
    if (v6 == 28729)
    {
      if (a3[1] == 5 && *(a3 + 1) == 3)
      {
        sub_2337338AC(a1, __p);
        LODWORD(__src) = sub_233749410(a3);
        sub_233726A8C(v70, &__src);
        sub_233725F08(&v76, __p, v70, 0);
        if (__p[1])
        {
          sub_2337239E8(__p[1]);
        }

        sub_2337338AC(a1, v70);
        v83[0] = sub_2337257A8(v70[0]);
        sub_2337338AC(a1, &__src);
        v83[1] = sub_2337257A8(*&__src);
        sub_2337338AC(a1, &v68);
        v83[2] = sub_2337257A8(v68);
        __p[1] = 0;
        v75 = 0;
        __p[0] = 0;
        sub_23375B254(__p, v83, &v84, 3uLL);
        if (v69)
        {
          sub_2337239E8(v69);
        }

        if (v82)
        {
          sub_2337239E8(v82);
        }

        if (v70[1])
        {
          sub_2337239E8(v70[1]);
        }

        sub_233790794(a1 + 1376, __p);
        sub_2338F8CCC(__p, &v76);
      }

      return;
    }

    if (v6 == 29184)
    {
      sub_2338FA254(a3, a1);
      return;
    }

    goto LABEL_257;
  }

  if (v6 == 28727)
  {
    if (a3[1] == 8 && *(a3 + 1) == 17)
    {
      sub_2337338AC(a1, __p);
      LODWORD(__src) = sub_233749410(a3);
      sub_233726A8C(v70, &__src);
      sub_233725F08(&v76, __p, v70, 0);
      if (__p[1])
      {
        sub_2337239E8(__p[1]);
      }

      sub_2337338AC(a1, __p);
      v46 = sub_2337256DC(__p[0]);
      if (__p[1])
      {
        sub_2337239E8(__p[1]);
      }

      if (v46 <= 0x10)
      {
        sub_23374B668((a1 + 1344), v46);
        if (v46)
        {
          v46 = v46;
          do
          {
            sub_2337338AC(a1, __p);
            LOWORD(v70[0]) = sub_2337256DC(__p[0]);
            sub_23374B768((a1 + 1344), v70);
            if (__p[1])
            {
              sub_2337239E8(__p[1]);
            }

            --v46;
          }

          while (v46);
        }
      }

      goto LABEL_210;
    }
  }

  else if (a3[1] == 3 && *(a3 + 1) == 2)
  {
    sub_2337338AC(a1, __p);
    LODWORD(__src) = sub_233749410(a3);
    sub_233726A8C(v70, &__src);
    sub_233725F08(&v76, __p, v70, 0);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    sub_2337338AC(a1, __p);
    v7 = sub_2337256DC(__p[0]);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    sub_2337338AC(a1, __p);
    v8 = sub_2337256DC(__p[0]);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    v9 = *(a1 + 1424);
    *(a1 + 1408) = v7;
    *(a1 + 1416) = v8;
    if ((v9 & 1) == 0)
    {
      *(a1 + 1424) = 1;
    }

LABEL_210:
    sub_233725FD4(&v76);
  }
}

void sub_23378FE60(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = a3;
  if (a3 && a4 - 0x20000 >= 0xFFFE0801)
  {
    v7 = 0;
    memset(v31, 0, sizeof(v31));
    do
    {
      a5 = 48828125 * a5 + 1;
      *(v31 + v7) = a5;
      v7 += 4;
    }

    while (v7 != 16);
    v8 = 0;
    v9 = DWORD2(v31[0]);
    v10 = v31[0];
    v11 = (*(&v31[0] + 1) ^ LODWORD(v31[0])) >> 31;
    HIDWORD(v31[0]) = v11;
    do
    {
      v12 = v9 ^ v10;
      v10 = *(v31 + v8 + 4);
      v9 = v11;
      HIDWORD(v13) = v12;
      LODWORD(v13) = v11 ^ v10;
      v11 = v13 >> 31;
      *(&v31[1] + v8) = v11;
      v8 += 4;
    }

    while (v8 != 492);
    v14 = a4 >> 2;
    sub_23372630C(&__p, v14);
    sub_2337338AC(a1, &v26);
    sub_233754E04(v28, &v26);
    if (v27)
    {
      sub_2337239E8(v27);
    }

    sub_2337338AC(a1, &v24);
    sub_233735A18(&v26, &v24, 2);
    if (v25)
    {
      sub_2337239E8(v25);
    }

    sub_2337338AC(a1, &v24);
    v15 = v24;
    sub_233723AE0(&v23, &v30);
    (*(*v15 + 40))(v15, &v23, 0);
    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (a4 >= 4)
    {
      v16 = 0;
      do
      {
        sub_2337338AC(a1, &v24);
        v17 = sub_233725614(v24);
        *(__p + v16) = v17;
        if (v25)
        {
          sub_2337239E8(v25);
        }

        v16 += 4;
      }

      while (4 * v14 != v16);
      v18 = 192;
      v19 = __p;
      v20 = a4 >> 2;
      do
      {
        v21 = *(v31 + (v18 & 0x7F)) ^ *(v31 + ((v18 - 64) & 0x7F));
        *(v31 + ((v18 - 65) & 0x7F)) = v21;
        *v19++ ^= v21;
        ++v18;
        --v20;
      }

      while (v20);
      v22 = __p;
      do
      {
        *v22 = bswap32(*v22);
        ++v22;
        --v14;
      }

      while (v14);
    }

    sub_233735A90(&v26);
    LODWORD(v24) = a4;
    sub_233725138();
  }
}

void sub_233790250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233790324(uint64_t a1, const void **a2, uint64_t a3)
{
  v30 = a3;
  sub_2337338AC(a1, &v26);
  v5 = v26;
  sub_2337268D8(&__p, &v30);
  (*(*v5 + 40))(v5, &__p, 0);
  if (v27)
  {
    sub_2337239E8(v27);
  }

  sub_2337338AC(a1, &v26);
  v6 = sub_233725614(v26);
  if (v27)
  {
    sub_2337239E8(v27);
  }

  if (v6 == 1230130432)
  {
    sub_2337338AC(a1, &v26);
    v7 = sub_233725614(v26);
    if (v27)
    {
      sub_2337239E8(v27);
    }

    v29 = v7;
    sub_233723C18(&v21, &v30);
    LODWORD(v26) = v21;
    v8 = *sub_233792784(&v26, &v29);
    v26 = 8;
    LODWORD(__p) = v8;
    v9 = *sub_233792784(&__p, &v26);
    while (1)
    {
      sub_2337338AC(a1, &v26);
      v10 = (*(*v26 + 48))(v26);
      if (v27)
      {
        sub_2337239E8(v27);
      }

      v11 = v10;
      if (v10 >= v9)
      {
        break;
      }

      sub_2337338AC(a1, &v26);
      v12 = sub_233725614(v26);
      if (v27)
      {
        sub_2337239E8(v27);
      }

      sub_2337338AC(a1, &v26);
      v13 = sub_233725614(v26);
      if (v27)
      {
        sub_2337239E8(v27);
      }

      if (v12 == 1195529984)
      {
        if (*(a2 + 23) >= 0)
        {
          v14 = *(a2 + 23);
        }

        else
        {
          v14 = a2[1];
        }

        sub_2337551CC(&v26, v14 + 4);
        if (v28 >= 0)
        {
          v15 = &v26;
        }

        else
        {
          v15 = v26;
        }

        if (v14)
        {
          if (*(a2 + 23) >= 0)
          {
            v16 = a2;
          }

          else
          {
            v16 = *a2;
          }

          memmove(v15, v16, v14);
        }

        strcpy(v15 + v14, ":WBG");
        sub_2337338AC(a1, &__p);
        LODWORD(v21) = 4;
        (*(*__p + 40))(__p, &v21, 1);
        if (v25)
        {
          sub_2337239E8(v25);
        }

        sub_2337338AC(a1, &v21);
        v17 = v21;
        v23 = 4;
        sub_233726998(&v31, &v23);
        sub_233725B60(v17, &v31, &__p);
        if (*(&v21 + 1))
        {
          sub_2337239E8(*(&v21 + 1));
        }

        v22 = 0;
        v21 = 0uLL;
        sub_23375E2CC(&v21, __p, v25, (v25 - __p) >> 1);
        v31 = &v26;
        v18 = sub_2337577E4((a1 + 120), &v26, &unk_233905F1C, &v31, &v23);
        v19 = v18[7];
        if (v19)
        {
          v18[8] = v19;
          operator delete(v19);
          v18[7] = 0;
          v18[8] = 0;
          v18[9] = 0;
        }

        *(v18 + 7) = v21;
        v18[9] = v22;
        if (__p)
        {
          v25 = __p;
          operator delete(__p);
        }

        if (v28 < 0)
        {
          operator delete(v26);
        }
      }

      sub_2337338AC(a1, &v26);
      v20 = v26;
      __p = (v11 + v13 + 8);
      sub_2337268D8(&v21, &__p);
      (*(*v20 + 40))(v20, &v21, 0);
      if (v27)
      {
        sub_2337239E8(v27);
      }
    }
  }
}

void sub_2337906F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  if (a18)
  {
    sub_2337239E8(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233790794(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_233723454(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_233729070(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t *sub_233790818@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_233728FF4(a2, *(a1 + 1344), *(a1 + 1352), (*(a1 + 1352) - *(a1 + 1344)) >> 1);
}

void sub_233790838(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, __int16 a5@<W5>, int a6@<W6>, void *a7@<X7>, uint64_t a8@<X8>)
{
  v23 = a1;
  v14 = a2;
  v15 = a4;
  v16 = a7;
  v17 = [v14 isEqualToString:@"IFD[0]"] ^ 1;
  if (a3 != 330)
  {
    LOBYTE(v17) = 1;
  }

  if ((v17 & 1) == 0)
  {
    v18 = [v23 objectForKeyedSubscript:@"Model"];
    if ([v18 isEqualToString:@"DSLR-A100"])
    {
      v19 = [v23 objectForKeyedSubscript:@"ImageWidth"];
      v20 = [v19 intValue];

      if (v20 == 3872)
      {
        v21 = v16;
        *a8 = @"A100DataOffset";
        *(a8 + 8) = 4;
        *(a8 + 12) = 1;
        *(a8 + 16) = v21;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  sub_23374C4A4(v15, a5, a6, v16, a8);
LABEL_9:
}

uint64_t *sub_2337909E0(uint64_t a1, const void **a2, uint64_t a3)
{
  v19 = a3;
  sub_2337338AC(a1, &__p);
  sub_2337268D8(&v17, &v19);
  sub_233725F08(v18, &__p, &v17, 0);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  sub_2337338AC(a1, &__p);
  v5 = sub_233725614(__p);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  if (v5 == 1230130432)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    p_p = &__p;
    sub_2337551CC(&__p, v6 + 8);
    if (v16 < 0)
    {
      p_p = __p;
    }

    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      memmove(p_p, v8, v6);
    }

    strcpy(p_p + v6, ":MRWInfo");
    sub_233790324(a1, &__p, v19);
  }

  else
  {
    sub_2337338AC(a1, &__p);
    v9 = __p;
    sub_2337268D8(&v17, &v19);
    (*(*v9 + 40))(v9, &v17, 0);
    if (v15)
    {
      sub_2337239E8(v15);
    }

    if (*(a2 + 23) >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = a2[1];
    }

    v11 = &__p;
    sub_2337551CC(&__p, v10 + 11);
    if (v16 < 0)
    {
      v11 = __p;
    }

    if (v10)
    {
      if (*(a2 + 23) >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      memmove(v11, v12, v10);
    }

    strcpy(v11 + v10, ":SR2Private");
    (*(*a1 + 704))(a1, 0, &__p);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  return sub_233725FD4(v18);
}

void sub_233790C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_233790CA4(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD0");
  v2 = sub_233735E3C(a1 + 1192, __p);
  if (a1 + 1200 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 56);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_233790D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233790D30(uint64_t a1)
{
  v2 = (*(*a1 + 56))(a1);
  if (v2)
  {
    return v2 ^ 1u;
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_2337338AC(a1, &v14);
  v3 = (*(*v14 + 48))(v14);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  v16 = v3;
  sub_2337338AC(a1, &v14);
  v4 = v14;
  v13 = 9;
  sub_233726998(&v20, &v13);
  v5 = sub_2337257E8(v4, &v20, &__p);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  if (SHIBYTE(v19) < 0)
  {
    if (v18 != 9)
    {
      goto LABEL_16;
    }

    p_p = __p;
  }

  else
  {
    if (SHIBYTE(v19) != 9)
    {
      goto LABEL_16;
    }

    p_p = &__p;
  }

  v7 = *p_p;
  v8 = p_p[8];
  if (v7 == 0x43534420594E4F53 && v8 == 32)
  {
    sub_2337338AC(a1, &v14);
    v11 = (*(*v14 + 48))(v14);
    v12 = 3;
    v20 = v11;
    v13 = *sub_233725A80(&v20, &v12);
    (*(*a1 + 160))(a1, &v13);
    if (v15)
    {
      sub_2337239E8(v15);
    }

    goto LABEL_17;
  }

LABEL_16:
  sub_2337268D8(&v14, &v16);
  (*(*a1 + 160))(a1, &v14);
LABEL_17:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  return v2 ^ 1u;
}

void sub_233790F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233790F98(uint64_t a1)
{
  v1 = *(a1 + 1184);
  if (!v1)
  {
    sub_23372A488(__p, "IFD0:SUBIFD0");
    v1 = sub_233753D88(a1, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v1;
}

void sub_233790FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233791018(uint64_t a1)
{
  if (*(a1 + 1184))
  {
    return 0;
  }

  sub_23372A488(__p, "IFD0:SUBIFD0");
  v1 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v1;
}

void sub_233791084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2337910A0(uint64_t a1)
{
  if (*(a1 + 1184))
  {
    sub_23372A488(__p, "IFD0");
  }

  else
  {
    sub_23372A488(__p, "IFD0:SUBIFD0");
  }

  v2 = sub_233753F24(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233791124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233791144(uint64_t a1)
{
  if (*(a1 + 1440) == 1 && *(a1 + 1452) == 1)
  {
    return *(a1 + 1432);
  }

  else
  {
    return sub_2337339FC(a1);
  }
}

void sub_233791188(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_23372A488(__p, "IFD0:SUBIFD0");
  v8 = sub_233735E3C(a1 + 1192, __p);
  v9 = v8;
  if (a1 + 1200 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v8 + 56);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 1200 == v9)
  {
    (*(*a1 + 384))(v29, a1);
    v27[0] = (*(*a1 + 424))(a1);
    sub_233792AEC();
  }

  if (v10 <= 2)
  {
    if (!v10)
    {
      (*(*a1 + 384))(v29, a1);
      v27[0] = (*(*a1 + 424))(a1);
      sub_23376419C();
    }

    if (v10 == 1)
    {
      (*(*a1 + 384))(v29, a1);
      v27[0] = (*(*a1 + 424))(a1);
      sub_2337927F0();
    }

    sub_23372A488(__p, "IFD0:SUBIFD0");
    if (sub_233751E10(a1 + 1216, __p, &v36))
    {
      sub_23372A488(v29, "IFD0:SUBIFD0");
      v11 = sub_233751E10(a1 + 1240, v29, &v33);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29[0]);
      }
    }

    else
    {
      v11 = 0;
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
      if (v11)
      {
LABEL_28:
        (*(*a1 + 384))(v29, a1);
        v27[0] = (*(*a1 + 424))(a1);
        sub_233792920();
      }
    }

    else if (v11)
    {
      goto LABEL_28;
    }

LABEL_33:
    (*(*a1 + 384))(v29, a1);
    v27[0] = (*(*a1 + 424))(a1);
    sub_233792AEC();
  }

  switch(v10)
  {
    case 3:
      goto LABEL_33;
    case 4:
      __p[0] = 0;
      __p[1] = 0;
      v32 = 0;
      v29[0] = 0;
      v29[1] = 0;
      v30 = 0;
      sub_233753FB4(a1, 0, v27);
      v12 = sub_233735E3C(a1 + 872, v27);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }

      sub_233753FB4(a1, 0, v27);
      v13 = sub_233735E3C(a1 + 896, v27);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }

      sub_233753FB4(a1, 0, v27);
      v14 = sub_2337921EC(a1 + 920, v27, __p);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }

      sub_233753FB4(a1, 0, v27);
      v15 = v14 | sub_2337921EC(a1 + 944, v27, v29);
      if (a1 + 904 != v13)
      {
        LOBYTE(v15) = 1;
      }

      if (a1 + 880 == v12)
      {
        v16 = v15;
      }

      else
      {
        v16 = 1;
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }

      if (v16)
      {
        if (sub_233792254(a1))
        {
          v26 = 0;
          v27[0] = 0;
          v27[1] = 0;
          v28 = 0;
          memset(v25, 0, sizeof(v25));
          memset(v24, 0, sizeof(v24));
          sub_23372A488(v22, "IFD0:SUBIFD0");
          v17 = sub_233735E3C(a1 + 1128, v22);
          if (a1 + 1136 != v17)
          {
            v26 = *(v17 + 56);
          }

          if (v23 < 0)
          {
            operator delete(v22[0]);
          }

          sub_23372A488(v22, "IFD0:SUBIFD0");
          sub_233751E10(a1 + 1104, v22, v27);
          if (v23 < 0)
          {
            operator delete(v22[0]);
          }

          sub_23372A488(v22, "IFD0:SUBIFD0");
          sub_2337921EC(a1 + 1080, v22, v25);
          if (v23 < 0)
          {
            operator delete(v22[0]);
          }

          sub_23372A488(v22, "IFD0:SUBIFD0");
          sub_2337921EC(a1 + 1152, v22, v24);
          if (v23 < 0)
          {
            operator delete(v22[0]);
          }

          (*(*a1 + 384))(&v21, a1);
          v20 = (*(*a1 + 424))(a1);
          sub_233792E74(v39, &v21, &v20, a2, a3, v25, v27, &v26, v24);
        }

        (*(*a1 + 384))(v25, a1);
        v24[0] = (*(*a1 + 424))(a1);
        sub_233792CA8();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 5:
      LODWORD(v25[0]) = 0;
      sub_233753FB4(a1, 0, __p);
      sub_23374C438(a1, __p, 0, v25);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p[0]);
      }

      if (LODWORD(v25[0]) == 32)
      {
        (*(*a1 + 384))(__p, a1);
        v29[0] = (*(*a1 + 424))(a1);
        sub_2337932F4();
      }

      v18 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v18, "RawCameraException");
      __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a4 = 0;
  a4[1] = 0;
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }
}

void sub_233791FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, std::__shared_weak_count *a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a40)
  {
    operator delete(a40);
  }

  v47 = *(v45 - 152);
  if (v47)
  {
    *(v45 - 144) = v47;
    operator delete(v47);
  }

  v48 = *(v45 - 128);
  if (v48)
  {
    *(v45 - 120) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2337921EC(uint64_t a1, char *a2, void **a3)
{
  v5 = sub_233735E3C(a1, a2);
  v6 = v5;
  v7 = a1 + 8;
  if (v7 != v5 && (v5 + 56) != a3)
  {
    sub_233723454(a3, *(v5 + 56), *(v5 + 64), (*(v5 + 64) - *(v5 + 56)) >> 2);
  }

  return v7 != v6;
}

BOOL sub_233792254(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD0");
  v2 = sub_233735E3C(a1 + 632, __p);
  v3 = a1 + 640 != v2 && *(v2 + 56) == 6;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2337922CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337922E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x10uLL, "%d", *(a1 + 1264));
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_23372A488(__p, "arw");
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "sony");
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __str);
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_233792254(a1))
  {
    sub_23372A488(__p, "sraw");
    sub_233735478(a2, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_23379241C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_23379246C(uint64_t a1)
{
  sub_23379251C(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t *sub_2337924A4(uint64_t *result, unsigned __int16 *a2, unsigned __int16 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_23372375C(result, a4);
  }

  return result;
}

void sub_233792500(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23379251C(uint64_t a1)
{
  *a1 = &unk_2849082E0;
  if (*(a1 + 1400) == 1)
  {
    v2 = *(a1 + 1376);
    if (v2)
    {
      *(a1 + 1384) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 1344);
  if (v3)
  {
    *(a1 + 1352) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 1312);
  if (v4)
  {
    *(a1 + 1320) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 1280);
  if (v5)
  {
    *(a1 + 1288) = v5;
    operator delete(v5);
  }

  sub_233735D24(a1 + 1240, *(a1 + 1248));
  sub_233735D24(a1 + 1216, *(a1 + 1224));
  sub_233735DD8(a1 + 1192, *(a1 + 1200));

  return sub_2337557B4(a1);
}

void *sub_233792680(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284908620;
  sub_23378E79C((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void sub_233792708(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284908620;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

_DWORD *sub_233792784(_DWORD *result, void *a2)
{
  v2 = *result;
  v3 = __CFADD__(v2, *a2);
  v4 = v2 + *a2;
  *result = v4;
  if (v3 || HIDWORD(v4))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_233792894(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849074D0;
  sub_2337AD9D8((a1 + 3), a2, *a3, a4, a5);
  a1[3] = &unk_28491FDD8;
  *(a1 + 212) = 0x100000000;
  a1[28] = 0;
  return a1;
}

uint64_t sub_2337929C4(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284908670;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28491E3C8;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  return a1;
}

void sub_233792A70(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284908670;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233792B90(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849086C0;
  sub_2337AD9D8((a1 + 3), a2, *a3, a4, a5);
  a1[3] = &unk_28490AEF8;
  return a1;
}

void sub_233792C2C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849086C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233792D4C(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284908710;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_284926878;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  return a1;
}

void sub_233792DF8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284908710;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233792F50(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8, uint64_t a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284908760;
  sub_233793058((a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9);
  return a1;
}

void sub_233792FDC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284908760;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233793058(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8, uint64_t a9)
{
  v15 = *a3;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  sub_233729070(&v23, *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 2);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_233728FF4(&v20, *a7, *(a7 + 8), (*(a7 + 8) - *a7) >> 1);
  LOWORD(a8) = *a8;
  v18 = 0;
  v19 = 0;
  __p = 0;
  sub_233729070(&__p, *a9, *(a9 + 8), (*(a9 + 8) - *a9) >> 2);
  sub_2337931B8(a1, a2, v15, a4, a5, &v23, &v20, a8, &__p);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return a1;
}

void sub_23379316C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337931B8(uint64_t a1, void *a2, unint64_t a3, void *a4, _OWORD *a5, uint64_t a6, uint64_t a7, __int16 a8, uint64_t a9)
{
  v13 = sub_2337AD9D8(a1, a2, a3, a4, a5);
  *v13 = &unk_28491AD90;
  *(v13 + 188) = 0;
  *(v13 + 192) = 0;
  *(v13 + 200) = 0u;
  *(v13 + 248) = 0u;
  *(v13 + 216) = 0u;
  *(v13 + 232) = 0u;
  *(v13 + 264) = 0;
  sub_233729070((v13 + 248), *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 2);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  sub_233728FF4((a1 + 272), *a7, *(a7 + 8), (*(a7 + 8) - *a7) >> 1);
  *(a1 + 296) = a8;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  sub_233729070((a1 + 304), *a9, *(a9 + 8), (*(a9 + 8) - *a9) >> 2);
  return a1;
}

void sub_233793290(_Unwind_Exception *a1)
{
  v5 = v1[34];
  if (v5)
  {
    v1[35] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[32] = v6;
    operator delete(v6);
  }

  v7 = v1[28];
  if (v7)
  {
    v1[29] = v7;
    operator delete(v7);
  }

  v8 = *v3;
  if (*v3)
  {
    v1[26] = v8;
    operator delete(v8);
  }

  sub_233723A54(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_233793398(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849087B0;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_284917828;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  return a1;
}

void sub_233793444(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849087B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_2337934C0()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3720];
  v11 = *MEMORY[0x277CD3700];
  v12 = v0;
  v19[0] = MEMORY[0x277CBEC38];
  v19[1] = @"com.sony.raw-image";
  v1 = *MEMORY[0x277CD3718];
  v13 = *MEMORY[0x277CD36E0];
  v19[2] = @".srf.";
  v19[3] = &unk_284957790;
  v19[4] = &unk_2849577A8;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{sub_2338FA398, v11, v12, v13, v1, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]}];
  v19[5] = v2;
  v14 = *MEMORY[0x277CD36C8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337937B8];
  v19[6] = v3;
  v15 = *MEMORY[0x277CD36E8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337937C4];
  v19[7] = v4;
  v16 = *MEMORY[0x277CD36D0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v19[8] = v5;
  v17 = *MEMORY[0x277CD36F0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337937D0];
  v19[9] = v6;
  v18 = *MEMORY[0x277CD36F8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2337937DC];
  v19[10] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v11 count:11];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  return v9;
}

void sub_2337937E8(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_233793A58();
}

uint64_t sub_233793884(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 2) == 7)
  {
    v2 = *(a2 + 4);
    if (v2 >= 2)
    {
      *(a1 + 1184) = *(a2 + 8) + v2;
    }
  }

  return sub_23374F8A0(a1);
}

unint64_t sub_2337938B4(uint64_t a1)
{
  sub_23372A488(__p, "IFD0");
  v2 = sub_233753F24(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233793910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23379392C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_23372A488(&__p, "srf");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "sony");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2337355A8(a1, &__p);
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2337939E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_233793A20(uint64_t a1)
{
  sub_2337557B4(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233793AFC(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284908B58;
  sub_23374B844((a1 + 3), a2, *a3, *a4, *a5);
  a1[3] = &unk_284908820;
  a1[151] = 0;
  return a1;
}

void sub_233793BA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284908B58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_233793C20()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3720];
  v11 = *MEMORY[0x277CD3700];
  v12 = v0;
  v19[0] = MEMORY[0x277CBEC38];
  v19[1] = @"com.pentax.raw-image";
  v1 = *MEMORY[0x277CD3718];
  v13 = *MEMORY[0x277CD36E0];
  v19[2] = @".pef.";
  v19[3] = &unk_2849577C0;
  v19[4] = &unk_2849577D8;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{sub_233720D74, v11, v12, v13, v1, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]}];
  v19[5] = v2;
  v14 = *MEMORY[0x277CD36C8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233793F18];
  v19[6] = v3;
  v15 = *MEMORY[0x277CD36E8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233793F24];
  v19[7] = v4;
  v16 = *MEMORY[0x277CD36D0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v19[8] = v5;
  v17 = *MEMORY[0x277CD36F0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233793F30];
  v19[9] = v6;
  v18 = *MEMORY[0x277CD36F8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233793F3C];
  v19[10] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v11 count:11];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  return v9;
}

void sub_233793F48(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_2337958C8();
}

BOOL sub_233793FE4(uint64_t a1)
{
  memset(&__p, 0, sizeof(__p));
  sub_2337338AC(a1, &v19);
  v2 = (*(*v19 + 48))(v19);
  if (v20)
  {
    sub_2337239E8(v20);
  }

  v21 = v2;
  sub_2337338AC(a1, &v19);
  v3 = v19;
  v18 = 8;
  sub_233726998(&v23, &v18);
  v4 = sub_2337257E8(v3, &v23, &__p);
  if (v20)
  {
    sub_2337239E8(v20);
  }

  if (!v4)
  {
    goto LABEL_22;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 3)
    {
      if (LOWORD(__p.__r_.__value_.__l.__data_) != 20289 || __p.__r_.__value_.__s.__data_[2] != 67)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 7)
    {
      p_p = &__p;
      goto LABEL_17;
    }

LABEL_21:
    v4 = 0;
    goto LABEL_22;
  }

  if (__p.__r_.__value_.__l.__size_ == 3 && *__p.__r_.__value_.__l.__data_ == 20289 && *(__p.__r_.__value_.__r.__words[0] + 2) == 67)
  {
    goto LABEL_30;
  }

  if (__p.__r_.__value_.__l.__size_ != 7)
  {
    goto LABEL_21;
  }

  p_p = __p.__r_.__value_.__r.__words[0];
LABEL_17:
  data = p_p->__r_.__value_.__l.__data_;
  v8 = *(p_p->__r_.__value_.__r.__words + 3);
  if (data != 1414415696 || v8 != 542654804)
  {
    goto LABEL_21;
  }

LABEL_30:
  sub_2337338AC(a1, &v19);
  v12 = sub_2337255C0(v19);
  if (v20)
  {
    sub_2337239E8(v20);
  }

  v4 = v12 == 19789 || v12 == 18761;
  if (v12 == 18761 || v12 == 19789)
  {
    std::string::operator=((a1 + 1184), &__p);
    if (v12 == 19789)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    (*(*a1 + 128))(a1, v13);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ != 7)
      {
        goto LABEL_49;
      }

      v14 = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 7)
      {
        goto LABEL_49;
      }

      v14 = &__p;
    }

    v15 = v14->__r_.__value_.__l.__data_;
    v16 = *(v14->__r_.__value_.__r.__words + 3);
    if (v15 == 1414415696 && v16 == 542654804)
    {
      sub_2337268D8(&v19, &v21);
      (*(*a1 + 144))(a1, &v19);
      sub_2337338AC(a1, &v19);
      v23 = (*(*v19 + 48))(v19);
      v18 = *sub_2337639F0(&v23, &v21);
      (*(*a1 + 160))(a1, &v18);
LABEL_50:
      if (v20)
      {
        sub_2337239E8(v20);
      }

      goto LABEL_22;
    }

LABEL_49:
    sub_2337338AC(a1, &v19);
    v23 = (*(*v19 + 48))(v19);
    (*(*a1 + 160))(a1, &v23);
    goto LABEL_50;
  }

LABEL_22:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_233794364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337943BC(uint64_t a1, const void **a2, unsigned __int16 *a3)
{
  nullsub_6();
  v6 = *a3;
  if (v6 <= 0x1FF)
  {
    if (*a3 > 0x5Bu)
    {
      if (v6 == 92)
      {
        if (a3[1] == 1 && *(a3 + 1) >= 2u)
        {
          LOBYTE(v32) = 0;
          if (sub_23374E3A4(a3) < 5)
          {
            LODWORD(v39) = 1;
            sub_233726998(&__dst, &v39);
            v18 = sub_233754BB0(a3, &__dst);
          }

          else
          {
            sub_2337338AC(a1, &v39);
            LODWORD(v34[0]) = sub_233749410(a3);
            sub_233726A8C(&v37, v34);
            sub_233725F08(&__dst, &v39, &v37, 0);
            if (v40)
            {
              sub_2337239E8(v40);
            }

            sub_2337338AC(a1, &v39);
            LODWORD(v37) = 1;
            (v39->__vftable[1].~__shared_weak_count)(v39, &v37, 1);
            if (v40)
            {
              sub_2337239E8(v40);
            }

            sub_2337338AC(a1, &v39);
            (v39->__on_zero_shared_weak)(v39, &v32, 1);
            if (v40)
            {
              sub_2337239E8(v40);
            }

            sub_233725FD4(&__dst);
            v18 = v32;
          }

          *(a1 + 1280) = v18;
        }
      }

      else if (v6 == 105 && ((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 7)
      {
        v14 = *(a3 + 1);
        if (v14)
        {
          if (v14 > 4)
          {
            sub_2337338AC(a1, &v39);
            LODWORD(v34[0]) = *(a3 + 2);
            sub_233723AE0(&v37, v34);
            sub_233725F08(&__dst, &v39, &v37, 0);
            if (v40)
            {
              sub_2337239E8(v40);
            }

            sub_2337338AC(a1, &v39);
            v15 = sub_233725510(v39);
            if (v40)
            {
              sub_2337239E8(v40);
            }

            sub_233725FD4(&__dst);
          }

          else
          {
            LODWORD(v39) = 0;
            sub_233726998(&__dst, &v39);
            v15 = sub_233754BB0(a3, &__dst);
          }

          if (v15)
          {
            if (*(a2 + 23) >= 0)
            {
              v22 = *(a2 + 23);
            }

            else
            {
              v22 = a2[1];
            }

            sub_2337551CC(&__dst, v22 + 21);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if (v22)
            {
              if (*(a2 + 23) >= 0)
              {
                v24 = a2;
              }

              else
              {
                v24 = *a2;
              }

              memmove(p_dst, v24, v22);
            }

            strcpy(p_dst + v22, ":ExpandedDynamicRange");
            v39 = &__dst;
            *(sub_23377BB60((a1 + 1232), &__dst, &unk_233905F1C, &v39) + 56) = 0x3FE0000000000000;
LABEL_103:
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }

    else
    {
      switch(v6)
      {
        case 3u:
          sub_2338FA3E4(a3, a1);
          break;
        case 4u:
          sub_2338FA404(a3, a1);
          break;
        case 5u:
          sub_2338FA424(a3, a1);
          break;
      }
    }
  }

  else
  {
    if (v6 != 512)
    {
      if (v6 != 513)
      {
        if (v6 == 544 && ((*(*a1 + 56))(a1) & 1) == 0)
        {
          sub_2337338AC(a1, &v39);
          LODWORD(v34[0]) = *(a3 + 2);
          sub_233723AE0(&v37, v34);
          sub_233725F08(&__dst, &v39, &v37, 0);
          if (v40)
          {
            sub_2337239E8(v40);
          }

          sub_2337338AC(a1, &v39);
          v7 = sub_2337255C0(v39);
          if (v40)
          {
            sub_2337239E8(v40);
          }

          sub_2337338AC(a1, &v39);
          LODWORD(v37) = 12;
          (v39->__vftable[1].~__shared_weak_count)(v39, &v37, 1);
          if (v40)
          {
            sub_2337239E8(v40);
          }

          if (a3[1] == 7)
          {
            v8 = (v7 + 12) & 0xF;
            if (*(a3 + 1) >= (3 * v8 + 14))
            {
              LOWORD(v37) = 0;
              sub_233730514(&v39, v8, &v37);
              LOBYTE(v34[0]) = 0;
              sub_233795750(&v37, v8, v34);
              LOBYTE(v32) = 0;
              sub_233795750(v34, (v8 + 17), &v32);
              if (v8)
              {
                v9 = 0;
                do
                {
                  sub_2337338AC(a1, &v32);
                  v10 = sub_2337255C0(v32);
                  *(&v39->__vftable + v9) = v10;
                  if (v33)
                  {
                    sub_2337239E8(v33);
                  }

                  v9 += 2;
                }

                while (2 * v8 != v9);
                for (i = 0; i != v8; ++i)
                {
                  sub_2337338AC(a1, &v32);
                  v12 = sub_233725510(v32);
                  *(v37 + i) = v12;
                  if (v33)
                  {
                    sub_2337239E8(v33);
                  }
                }
              }

              v29 = 0;
              v30 = 0;
              v31 = 0;
              sub_233728FF4(&v29, v39, v40, (v40 - v39) >> 1);
              __p = 0;
              v27 = 0;
              v28 = 0;
              sub_2337957D0(&__p, v37, v38, v38 - v37);
              v13 = sub_233794E54(&v29, &__p, v34);
              if (__p)
              {
                v27 = __p;
                operator delete(__p);
              }

              if (v29)
              {
                v30 = v29;
                operator delete(v29);
              }

              if ((v13 & 1) == 0)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                MEMORY[0x2383ABCE0](exception, "RawCameraException");
                __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }

              if ((a1 + 1256) != v34)
              {
                sub_2337550A4((a1 + 1256), v34[0], v34[1], v34[1] - v34[0]);
              }

              if (v34[0])
              {
                v34[1] = v34[0];
                operator delete(v34[0]);
              }

              if (v37)
              {
                v38 = v37;
                operator delete(v37);
              }

              if (v39)
              {
                v40 = v39;
                operator delete(v39);
              }
            }
          }

          sub_233725FD4(&__dst);
        }

        return;
      }

      if (((*(*a1 + 56))(a1) & 1) != 0 || a3[1] != 3 || *(a3 + 1) != 4)
      {
        return;
      }

      if (*(a2 + 23) < 0)
      {
        sub_233731FB8(&__dst, *a2, a2[1]);
      }

      else
      {
        __dst = *a2;
      }

      std::string::append(&__dst, ":WhitePoint", 0xBuLL);
      sub_2337338AC(a1, &v37);
      LODWORD(v32) = *(a3 + 2);
      sub_233723AE0(v34, &v32);
      sub_233725F08(&v39, &v37, v34, 0);
      if (v38)
      {
        sub_2337239E8(v38);
      }

      sub_2337338AC(a1, v34);
      v19 = v34[0];
      v36 = 4;
      sub_233726998(&v32, &v36);
      sub_233725B60(v19, &v32, &v37);
      if (v34[1])
      {
        sub_2337239E8(v34[1]);
      }

      v34[1] = 0;
      v35 = 0;
      v34[0] = 0;
      sub_23375E2CC(v34, v37, v38, (v38 - v37) >> 1);
      v32 = &__dst;
      v20 = sub_2337577E4((a1 + 120), &__dst, &unk_233905F1C, &v32, &v36);
      v21 = v20[7];
      if (v21)
      {
        v20[8] = v21;
        operator delete(v21);
        v20[7] = 0;
        v20[8] = 0;
        v20[9] = 0;
      }

      *(v20 + 7) = *v34;
      v20[9] = v35;
      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      sub_233725FD4(&v39);
      goto LABEL_103;
    }

    if (((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 3 && *(a3 + 1) == 4)
    {
      sub_2337338AC(a1, &v39);
      sub_23374AEDC(a3, &v39, &__dst);
      v37 = a2;
      v16 = sub_233757B14((a1 + 264), a2, &unk_233905F1C, &v37, v34);
      v17 = v16[7];
      if (v17)
      {
        v16[8] = v17;
        operator delete(v17);
        v16[7] = 0;
        v16[8] = 0;
        v16[9] = 0;
      }

      *(v16 + 7) = __dst;
      memset(&__dst, 0, sizeof(__dst));
      if (v40)
      {
        sub_2337239E8(v40);
      }
    }
  }
}

void sub_233794C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  v24 = *(v22 - 96);
  if (v24)
  {
    sub_2337239E8(v24);
  }

  sub_233725FD4((v22 - 80));
  _Unwind_Resume(a1);
}

uint64_t sub_233794E54(void *a1, void *a2, void *a3)
{
  v3 = a1[1] - *a1;
  v4 = v3 >> 1;
  if (v3 >> 1 != a2[1] - *a2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (a3[1] - *a3 != v4 + 17)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v5 = 0;
  v6 = v4 + 16;
  do
  {
    *(*a3 + v5++) = 0;
  }

  while (v5 != 16);
  v7 = (v3 >> 1);
  if (v4)
  {
    v8 = 0;
    do
    {
      v9 = *(*a2 + v8);
      if ((v9 - 17) < 0xFFFFFFF0)
      {
        return 1;
      }

      ++*(*a3 + (v9 - 1));
    }

    while (v7 != ++v8);
  }

  v10 = 0;
  v11 = 0;
  v12 = 16;
  do
  {
    v13 = *(*a3 + v10);
    if (*(*a3 + v10))
    {
      v14 = v13 << (11 - v10);
      v15 = v11;
      do
      {
        if (v4)
        {
          v16 = 0;
          while (v15 != *(*a1 + 2 * v16))
          {
            if (v7 == ++v16)
            {
              goto LABEL_18;
            }
          }

          *(*a3 + v12++) = v16;
        }

LABEL_18:
        v15 += 1 << (11 - v10);
        v17 = __OFSUB__(v13--, 1);
      }

      while (!((v13 < 0) ^ v17 | (v13 == 0)));
      v11 += v14;
    }

    ++v10;
  }

  while (v10 != 16);
  if (v12 == v6)
  {
    *(*a3 + v6) = -1;
    return 1;
  }

  return 0;
}

uint64_t sub_233794FF4(uint64_t a1)
{
  v6 = 1;
  sub_23372A488(__p, "IFD0");
  v2 = sub_23374C360(a1, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

void sub_233795064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233795080(uint64_t a1)
{
  sub_23372A488(__p, "IFD0");
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337950DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337950F8(uint64_t a1)
{
  sub_23372A488(__p, "IFD0");
  v2 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233795154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_233795170(uint64_t a1)
{
  sub_23372A488(__p, "IFD0");
  v2 = sub_233753F24(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2337951CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337951E8(uint64_t a1@<X0>, void **a2@<X8>)
{
  sub_23372A488(__p, "IFD0");
  v4 = sub_233735E3C(a1 + 704, __p);
  v5 = v4;
  if (a1 + 712 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 56);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v6 - 9) >= 0xFFFFFFF8 || a1 + 712 == v5)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  sub_233753B14(a1, a2);
  sub_2337268D8(__p, (a1 + 1216));
  sub_233723C18(&v9, (a1 + 1224));
  sub_23373401C(a1, __p, &v9, v8, &v10);
  sub_23372A488(__p, "IFD2");
  sub_233753354(a1, __p, &v9);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_233753C74(a2, &v10);
  }

  if (v9)
  {
    sub_233753C74(a2, &v9);
  }

  if (*(&v9 + 1))
  {
    sub_2337239E8(*(&v9 + 1));
  }

  if (*(&v10 + 1))
  {
    sub_2337239E8(*(&v10 + 1));
  }
}

void sub_233795328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_2337239E8(a13);
  }

  sub_233723948(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_23379539C(uint64_t a1)
{
  sub_23372A488(__p, "IFD0");
  v2 = sub_233735E3C(a1 + 656, __p);
  if (a1 + 664 == v2 || (v3 = *(v2 + 56), *(v2 + 64) == v3))
  {
    LOBYTE(v4) = 0;
    v5 = 0;
  }

  else
  {
    v4 = *v3;
    v5 = 1;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_9:
    LOWORD(result) = sub_233733AF4();
    return result;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_7:
  LODWORD(result) = ~(-1 << v4);
  return result;
}

void sub_233795448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_233795464(uint64_t a1, char *a2, void *a3)
{
  v5 = sub_233735E3C(a1 + 1232, a2);
  if (a1 + 1240 != v5)
  {
    *a3 = *(v5 + 56);
  }

  return a1 + 1240 != v5;
}

void sub_2337954AC(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x10uLL, "%d", a1[302]);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_23372A488(__p, "pef");
  sub_233735478(a2, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = __p;
  (*(*a1 + 216))(__p, a1);
  v5 = v15;
  v7 = __p[0];
  v6 = __p[1];
  if (v15 < 0)
  {
    v4 = __p[0];
  }

  if (v15 >= 0)
  {
    v6 = v15;
  }

  v8 = v4 + v6;
  if (v6 >= 7)
  {
    v9 = v4;
    do
    {
      v10 = memchr(v9, 83, v6 - 6);
      if (!v10)
      {
        break;
      }

      if (*v10 == 1397571923 && *(v10 + 3) == 1196315987)
      {
        goto LABEL_16;
      }

      v9 = (v10 + 1);
      v6 = v8 - v9;
    }

    while (v8 - v9 > 6);
  }

  v10 = v8;
LABEL_16:
  v13 = v10 == v8 || v10 - v4 == -1;
  if (v5 < 0)
  {
    operator delete(v7);
    if (v13)
    {
      goto LABEL_24;
    }
  }

  else if (v13)
  {
LABEL_24:
    sub_23372A488(__p, "pentax");
    sub_233735478(a2, __p);
    goto LABEL_27;
  }

  sub_23372A488(__p, "samsung");
  sub_233735478(a2, __p);
LABEL_27:
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __str);
  sub_233735478(a2, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2337956A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_2337956F4(uint64_t a1)
{
  sub_23379584C(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t *sub_23379572C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_2337957D0(a2, *(a1 + 1256), *(a1 + 1264), *(a1 + 1264) - *(a1 + 1256));
}

uint64_t *sub_233795750(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2337261C8(a1, a2);
  }

  return a1;
}

void sub_2337957B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2337957D0(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2337261C8(result, a4);
  }

  return result;
}

void sub_233795830(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23379584C(uint64_t a1)
{
  *a1 = &unk_284908BC8;
  v2 = *(a1 + 1256);
  if (v2)
  {
    *(a1 + 1264) = v2;
    operator delete(v2);
  }

  sub_233735DD8(a1 + 1232, *(a1 + 1240));
  if (*(a1 + 1207) < 0)
  {
    operator delete(*(a1 + 1184));
  }

  return sub_2337557B4(a1);
}

uint64_t sub_23379596C(uint64_t a1, void *a2, char *a3, void **a4, void **a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284908F18;
  sub_23374B844(a1 + 24, a2, *a3, *a4, *a5);
  *(a1 + 24) = &unk_284908BC8;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0u;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = a1 + 1264;
  *(a1 + 1296) = 0;
  *(a1 + 1288) = 0;
  *(a1 + 1304) = 0;
  return a1;
}

void sub_233795A44(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284908F18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_233795AC0()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3720];
  v11 = *MEMORY[0x277CD3700];
  v12 = v0;
  v19[0] = MEMORY[0x277CBEC38];
  v19[1] = @"com.leafamerica.raw-image";
  v1 = *MEMORY[0x277CD3718];
  v13 = *MEMORY[0x277CD36E0];
  v19[2] = @".mos.";
  v19[3] = &unk_2849577F0;
  v19[4] = &unk_284957808;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{sub_233720794, v11, v12, v13, v1, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]}];
  v19[5] = v2;
  v14 = *MEMORY[0x277CD36C8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233795DB8];
  v19[6] = v3;
  v15 = *MEMORY[0x277CD36E8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233795DC4];
  v19[7] = v4;
  v16 = *MEMORY[0x277CD36D0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v19[8] = v5;
  v17 = *MEMORY[0x277CD36F0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233795DD0];
  v19[9] = v6;
  v18 = *MEMORY[0x277CD36F8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233795DDC];
  v19[10] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v11 count:11];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  return v9;
}

void sub_233795DE8(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_2337983C0();
}

void sub_233795E84(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  sub_23374B9D8(a1);
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    v2 = (*(*a1 + 400))(a1);
    v3 = sub_2337854A4(v2, *MEMORY[0x277CD3490], 0);
    v4 = sub_2337854A4(v2, *MEMORY[0x277CD3038], 0);
    [v3 setObject:@"Leaf" forKeyedSubscript:*MEMORY[0x277CD34A8]];
    if (*(a1 + 1180) - 1 < 0x14)
    {
      [v3 setObject:*(&off_2789EED70 + (*(a1 + 1180) - 1)) forKeyedSubscript:*MEMORY[0x277CD34B0]];
    }

    v5 = MEMORY[0x277CCABB0];
    sub_23372A488(__p, "CameraObj_ISO_speed");
    v6 = [v5 numberWithInt:{(*(*a1 + 264))(a1, __p)}];
    v13[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD30B0]];
    if (*(a1 + 1182))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:?];
      v9 = *MEMORY[0x277CD34B8];
      [v2 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD34B8]];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 1182)];
      [v3 setObject:v10 forKeyedSubscript:v9];
    }
  }
}

double sub_233796184(uint64_t a1, uint64_t a2, int a3)
{
  sub_23372A488(v15, "XMP:exif");
  (*(*a1 + 392))(__p, a1, v15);
  v6 = sub_233735E3C(a1 + 288, __p);
  v7 = v6;
  if (a1 + 296 == v6)
  {
    v8 = -1.0;
  }

  else
  {
    v8 = *(v6 + 56);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (a1 + 296 == v7)
  {
    if (a3)
    {
      sub_23372A488(v15, "XMP:exif");
      (*(*a1 + 392))(__p, a1, v15);
      v9 = sub_233735E3C(a1 + 312, __p);
      if (a1 + 320 == v9)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = *(v9 + 56);
      }

      v12 = v10 > -100.0 && a1 + 320 != v9;
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v16 < 0)
      {
        operator delete(v15[0]);
        if (v12)
        {
          return sub_23373341C(v10);
        }
      }

      else if (v12)
      {
        return sub_23373341C(v10);
      }
    }

    return sub_233733290(a1, a2, a3);
  }

  return v8;
}

void sub_233796350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_23379638C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  sub_23374FA0C(a1, a2, a3);
  v6 = *a3;
  if (v6 != 34310)
  {
    if (v6 == 259 && a3[1] == 3 && *(a3 + 1) == 1)
    {
      LODWORD(v31[0]) = 0;
      sub_233726998(__p, v31);
      if (sub_23374B704(a3, __p) == 99)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }
    }

    return;
  }

  sub_23372A488(__p, "IFD0");
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10 = HIBYTE(v38);
  v11 = SHIBYTE(v38);
  if (v38 < 0)
  {
    v10 = __p[1];
  }

  if (v9 == v10 && (v8 >= 0 ? (v12 = a2) : (v12 = *a2), (v13 = __p[0], v38 >= 0) ? (v14 = __p) : (v14 = __p[0]), !memcmp(v12, v14, v9)))
  {
    v15 = a3[1];
    if (v15 == 2)
    {
      if (v11 < 0)
      {
        operator delete(v13);
      }

      goto LABEL_29;
    }

    if (v11 < 0)
    {
      operator delete(v13);
    }

    if (v15 == 1)
    {
LABEL_29:
      sub_233796C68(a1, *(a3 + 2), *(a3 + 1), 0);
      if (((*(*a1 + 56))(a1) & 1) == 0 && *(a1 + 1200) == 1)
      {
        v36 = 33620224;
        v35 = 65794;
        v34 = 16908289;
        v33 = 16777729;
        LODWORD(__src) = 131074;
        sub_23372A488(__p, "IFD0:EXIF");
        v31[0] = __p;
        v16 = sub_23375E5EC((a1 + 968), __p, &unk_233905F1C, v31);
        sub_2337554C0((v16 + 56), &__src, &__src + 4, 2uLL);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p[0]);
        }

        v17 = (*(a1 + 1208) + 360) % 360;
        v18 = *(a1 + 1201);
        switch(v17)
        {
          case 90:
            if (v18 == 1)
            {
              if (*(a1 + 1202) != 3 || *(a1 + 1203) != 2 || *(a1 + 1204))
              {
                break;
              }

              __p[0] = 0;
              __p[1] = 0;
              v38 = 0;
              sub_233798238(__p, &v34, &v35, 4);
              sub_23372A488(v31, "IFD0:EXIF");
              __src = v31;
              v24 = sub_23375E5EC((a1 + 992), v31, &unk_233905F1C, &__src);
              v25 = v24[7];
              if (v25)
              {
                v24[8] = v25;
                operator delete(v25);
                v24[7] = 0;
                v24[8] = 0;
                v24[9] = 0;
              }

              *(v24 + 7) = *__p;
              v24[9] = v38;
              __p[1] = 0;
              v38 = 0;
              __p[0] = 0;
              if (v32 < 0)
              {
                operator delete(v31[0]);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }
              }

              v18 = *(a1 + 1201);
            }

            if (v18 == 2 && !*(a1 + 1202) && *(a1 + 1203) == 1 && *(a1 + 1204) == 3)
            {
              __p[0] = 0;
              __p[1] = 0;
              v38 = 0;
              sub_233798238(__p, &v36, __p, 4);
              sub_23372A488(v31, "IFD0:EXIF");
              __src = v31;
              v21 = sub_23375E5EC((a1 + 992), v31, &unk_233905F1C, &__src);
              goto LABEL_96;
            }

            break;
          case 180:
            if (v18 == 1)
            {
              if (*(a1 + 1202) != 3 || *(a1 + 1203) != 2 || *(a1 + 1204))
              {
                break;
              }

              __p[0] = 0;
              __p[1] = 0;
              v38 = 0;
              sub_233798238(__p, &v35, &v36, 4);
              sub_23372A488(v31, "IFD0:EXIF");
              __src = v31;
              v22 = sub_23375E5EC((a1 + 992), v31, &unk_233905F1C, &__src);
              v23 = v22[7];
              if (v23)
              {
                v22[8] = v23;
                operator delete(v23);
                v22[7] = 0;
                v22[8] = 0;
                v22[9] = 0;
              }

              *(v22 + 7) = *__p;
              v22[9] = v38;
              __p[1] = 0;
              v38 = 0;
              __p[0] = 0;
              if (v32 < 0)
              {
                operator delete(v31[0]);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }
              }

              v18 = *(a1 + 1201);
            }

            if (v18 == 2 && !*(a1 + 1202) && *(a1 + 1203) == 1 && *(a1 + 1204) == 3)
            {
              __p[0] = 0;
              __p[1] = 0;
              v38 = 0;
              sub_233798238(__p, &v34, &v35, 4);
              sub_23372A488(v31, "IFD0:EXIF");
              __src = v31;
              v21 = sub_23375E5EC((a1 + 992), v31, &unk_233905F1C, &__src);
              goto LABEL_96;
            }

            break;
          case 270:
            if (v18 == 1)
            {
              if (*(a1 + 1202) != 3 || *(a1 + 1203) != 2 || *(a1 + 1204))
              {
                break;
              }

              __p[0] = 0;
              __p[1] = 0;
              v38 = 0;
              sub_233798238(__p, &v33, &v34, 4);
              sub_23372A488(v31, "IFD0:EXIF");
              __src = v31;
              v19 = sub_23375E5EC((a1 + 992), v31, &unk_233905F1C, &__src);
              v20 = v19[7];
              if (v20)
              {
                v19[8] = v20;
                operator delete(v20);
                v19[7] = 0;
                v19[8] = 0;
                v19[9] = 0;
              }

              *(v19 + 7) = *__p;
              v19[9] = v38;
              __p[1] = 0;
              v38 = 0;
              __p[0] = 0;
              if (v32 < 0)
              {
                operator delete(v31[0]);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }
              }

              v18 = *(a1 + 1201);
            }

            if (v18 == 2 && !*(a1 + 1202) && *(a1 + 1203) == 1 && *(a1 + 1204) == 3)
            {
              __p[0] = 0;
              __p[1] = 0;
              v38 = 0;
              sub_233798238(__p, &v35, &v36, 4);
              sub_23372A488(v31, "IFD0:EXIF");
              __src = v31;
              v21 = sub_23375E5EC((a1 + 992), v31, &unk_233905F1C, &__src);
LABEL_96:
              v28 = v21;
              v30 = (v21 + 56);
              v29 = *(v21 + 56);
              if (v29)
              {
                *(v28 + 64) = v29;
                operator delete(v29);
                *v30 = 0;
                v30[1] = 0;
                v30[2] = 0;
              }

              *(v28 + 56) = *__p;
              *(v28 + 72) = v38;
              __p[1] = 0;
              v38 = 0;
              __p[0] = 0;
              if (v32 < 0)
              {
                operator delete(v31[0]);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }
              }
            }

            break;
          default:
            if (v18 == 1)
            {
              if (*(a1 + 1202) != 3 || *(a1 + 1203) != 2 || *(a1 + 1204))
              {
                break;
              }

              __p[0] = 0;
              __p[1] = 0;
              v38 = 0;
              sub_233798238(__p, &v36, __p, 4);
              sub_23372A488(v31, "IFD0:EXIF");
              __src = v31;
              v26 = sub_23375E5EC((a1 + 992), v31, &unk_233905F1C, &__src);
              v27 = v26[7];
              if (v27)
              {
                v26[8] = v27;
                operator delete(v27);
                v26[7] = 0;
                v26[8] = 0;
                v26[9] = 0;
              }

              *(v26 + 7) = *__p;
              v26[9] = v38;
              __p[1] = 0;
              v38 = 0;
              __p[0] = 0;
              if (v32 < 0)
              {
                operator delete(v31[0]);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }
              }

              v18 = *(a1 + 1201);
            }

            if (v18 == 2 && !*(a1 + 1202) && *(a1 + 1203) == 1 && *(a1 + 1204) == 3)
            {
              __p[0] = 0;
              __p[1] = 0;
              v38 = 0;
              sub_233798238(__p, &v33, &v34, 4);
              sub_23372A488(v31, "IFD0:EXIF");
              __src = v31;
              v21 = sub_23375E5EC((a1 + 992), v31, &unk_233905F1C, &__src);
              goto LABEL_96;
            }

            break;
        }
      }

      if (*(a1 + 1208))
      {
        sub_2338FA444(*(a1 + 1212), *(a1 + 1208), a1);
      }
    }
  }

  else if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_233796BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_233796C68(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v61 = a2;
  sub_2337338AC(a1, v67);
  sub_2337268D8(&v70, &v61);
  sub_233725F08(v60, v67, &v70, 0);
  if (*&v67[8])
  {
    sub_2337239E8(*&v67[8]);
  }

  if (a3 >= 0x35)
  {
    while (1)
    {
      sub_2337338AC(a1, v67);
      v6 = sub_233725614(*v67);
      if (*&v67[8])
      {
        sub_2337239E8(*&v67[8]);
      }

      if (v6 != 1347114067)
      {
        return sub_233725FD4(v60);
      }

      sub_2337338AC(a1, v67);
      v7 = *v67;
      v70 = 4;
      sub_233723B40(&v57, &v70);
      (*(*v7 + 40))(v7, &v57, 1);
      if (*&v67[8])
      {
        sub_2337239E8(*&v67[8]);
      }

      sub_2337338AC(a1, v67);
      (*(**v67 + 32))(*v67, &v70, 32);
      if (*&v67[8])
      {
        sub_2337239E8(*&v67[8]);
      }

      v72 = 0;
      sub_2337338AC(a1, v67);
      v8 = *v67;
      v57 = 8;
      sub_233723B40(__p, &v57);
      (*(*v8 + 40))(v8, __p, 1);
      if (*&v67[8])
      {
        sub_2337239E8(*&v67[8]);
      }

      sub_2337338AC(a1, v67);
      v9 = sub_233725614(*v67);
      if (*&v67[8])
      {
        sub_2337239E8(*&v67[8]);
      }

      sub_2337338AC(a1, v67);
      v10 = (*(**v67 + 48))(*v67);
      if (*&v67[8])
      {
        sub_2337239E8(*&v67[8]);
      }

      v69 = 0;
      *v67 = 0u;
      v68 = 0u;
      v11 = v9;
      if (((*(*a1 + 56))(a1) & 1) == 0)
      {
        v12 = v70 == 0x6A624F746F6F6853 && *v71 == 0x79745F6B6361625FLL;
        if (v12 && *&v71[3] == 0x657079745F6B63)
        {
          LODWORD(__p[0]) = 0;
          sub_2337338AC(a1, &v57);
          if (v9 >= 0x27uLL)
          {
            v40 = 39;
          }

          else
          {
            v40 = v9;
          }

          (*(*v57 + 32))(v57, v67, v40);
          HIBYTE(v69) = 0;
          if (v58)
          {
            sub_2337239E8(v58);
          }

          v41 = sscanf(v67, "%u", __p);
          v38 = 0;
          v42 = __p[0];
          if (v41 != 1)
          {
            v42 = 0;
          }

          *(a1 + 1180) = v42;
          *(a1 + 1216) = 1;
          goto LABEL_189;
        }
      }

      if (((*(*a1 + 56))(a1) & 1) == 0)
      {
        v14 = v70 == 0x666F725074706143 && *v71 == 0x5F7265626D756E5FLL;
        v15 = v14 && *&v71[8] == 0x656E616C705F666FLL;
        if (v15 && *&v71[16] == 115)
        {
          LODWORD(__p[0]) = 0;
          sub_2337338AC(a1, &v57);
          if (v9 >= 0x27uLL)
          {
            v43 = 39;
          }

          else
          {
            v43 = v9;
          }

          (*(*v57 + 32))(v57, v67, v43);
          HIBYTE(v69) = 0;
          if (v58)
          {
            sub_2337239E8(v58);
          }

          if (sscanf(v67, "%u", __p) == 1 && LODWORD(__p[0]) >= 2)
          {
            *(a1 + 1180) = 2;
          }

          v38 = 0;
          *(a1 + 1217) = 1;
          goto LABEL_189;
        }
      }

      if (((*(*a1 + 56))(a1) & 1) == 0 && !(v70 ^ 0x5F6A624F7475654ELL | *v71 ^ 0x736C61727475656ELL | v71[8]))
      {
        sub_2337338AC(a1, &v57);
        if (v9 >= 0x27uLL)
        {
          v45 = 39;
        }

        else
        {
          v45 = v9;
        }

        (*(*v57 + 32))(v57, v67, v45);
        HIBYTE(v69) = 0;
        if (v58)
        {
          sub_2337239E8(v58);
        }

        if (sscanf(v67, "%d%d%d%d", &v63, &v64, &v65, &v66) == 4)
        {
          LODWORD(__p[0]) = 0;
          sub_2337982AC(&v57, 4uLL, __p);
          v46 = v57;
          *v57 = v64;
          v47 = v65;
          v46[1] = v65;
          v46[2] = v47;
          v46[3] = v66;
          sub_23372A488(__p, "NeutObj_neutrals");
          __src = __p;
          v48 = (sub_23375E5EC((a1 + 120), __p, &unk_233905F1C, &__src) + 56);
          if (v48 != &v57)
          {
            sub_233723454(v48, v57, v58, (v58 - v57) >> 2);
          }

          if (v56 < 0)
          {
            operator delete(__p[0]);
          }

          if (v57)
          {
            v58 = v57;
            operator delete(v57);
          }
        }

        v38 = 0;
        *(a1 + 1218) = 1;
        goto LABEL_189;
      }

      if (v70 == 0x666F725074706143 && *v71 == 0x7461645F7761725FLL && *&v71[8] == 0x697461746F725F61 && *&v71[11] == 0x6E6F697461746FLL)
      {
        sub_2337338AC(a1, &v57);
        if (v9 >= 0x27uLL)
        {
          v39 = 39;
        }

        else
        {
          v39 = v9;
        }

        (*(*v57 + 32))(v57, v67, v39);
        HIBYTE(v69) = 0;
        if (v58)
        {
          sub_2337239E8(v58);
        }

        sscanf(v67, "%d", a1 + 1208);
        v38 = 0;
        *(a1 + 1219) = 1;
        goto LABEL_189;
      }

      if (v70 == 0x5F666F7250676D49 && *v71 == 0x6E6F697461746F72 && *&v71[7] == 0x656C676E615F6ELL)
      {
        sub_2337338AC(a1, &v57);
        if (v9 >= 0x27uLL)
        {
          v44 = 39;
        }

        else
        {
          v44 = v9;
        }

        (*(*v57 + 32))(v57, v67, v44);
        HIBYTE(v69) = 0;
        if (v58)
        {
          sub_2337239E8(v58);
        }

        sscanf(v67, "%d", a1 + 1212);
        v38 = 0;
        *(a1 + 1220) = 1;
        goto LABEL_189;
      }

      if (((*(*a1 + 56))(a1) & 1) == 0)
      {
        v22 = v70 == 0x666F725074706143 && *v71 == 0x5F636961736F6D5FLL;
        if (v22 && *&v71[8] == 0x6E726574746170)
        {
          sub_2337338AC(a1, &v57);
          if (v9 >= 0x27uLL)
          {
            v49 = 39;
          }

          else
          {
            v49 = v9;
          }

          (*(*v57 + 32))(v57, v67, v49);
          HIBYTE(v69) = 0;
          if (v58)
          {
            sub_2337239E8(v58);
          }

          v38 = 0;
          *(a1 + 1201) = v67[0] - 48;
          *(a1 + 1202) = v67[2] - 48;
          *(a1 + 1203) = v67[4] - 48;
          *(a1 + 1204) = v67[6] - 48;
          *(a1 + 1200) = 1;
          *(a1 + 1221) = 1;
          goto LABEL_189;
        }
      }

      v24 = v70 == 0x6572705F4745504ALL && *v71 == 0x7461645F77656976;
      if (!v24 || *&v71[8] != 97)
      {
        break;
      }

      v38 = 0;
      *(a1 + 1184) = v10;
      *(a1 + 1192) = v9;
      *(a1 + 1222) = 1;
LABEL_189:
      sub_2337338AC(a1, &v57);
      v52 = v57;
      __p[0] = (v10 + v11);
      sub_2337268D8(&v63, __p);
      (*(*v52 + 40))(v52, &v63, 0);
      if (v58)
      {
        sub_2337239E8(v58);
      }

      a3 = a3 - 52 - v11;
      if (v38 & 1 | (a3 < 0x35))
      {
        return sub_233725FD4(v60);
      }
    }

    if (((*(*a1 + 56))(a1) & 1) == 0)
    {
      v26 = v70 == 0x624F6172656D6143 && *v71 == 0x70735F4F53495F6ALL;
      if (v26 && *&v71[8] == 6579557)
      {
        v63 = 0;
        sub_2337338AC(a1, &v57);
        if (v9 >= 0x27uLL)
        {
          v50 = 39;
        }

        else
        {
          v50 = v9;
        }

        (*(*v57 + 32))(v57, v67, v50);
        HIBYTE(v69) = 0;
        if (v58)
        {
          sub_2337239E8(v58);
        }

        if (sscanf(v67, "%u", &v63) == 1 && v63 <= 6)
        {
          LODWORD(__src) = dword_233905198[v63];
          sub_23372A488(&v57, "CameraObj_ISO_speed");
          __p[0] = &v57;
          v51 = sub_23375E5EC((a1 + 192), &v57, &unk_233905F1C, __p);
          sub_23375538C((v51 + 56), &__src, &__src + 4, 1uLL);
          if (v59 < 0)
          {
            operator delete(v57);
          }
        }

        v38 = 0;
        *(a1 + 1223) = 1;
        goto LABEL_189;
      }
    }

    v29 = v70 == 0x4F65727574706143 && *v71 == 0x63656C65735F6A62 && *&v71[5] == 0x6E6F697463656CLL;
    if (v29 || (v70 == 0x4F65727574706143 ? (v30 = *v71 == 0x5F656E6F745F6A62) : (v30 = 0), v30 ? (v31 = *&v71[6] == 0x65767275635F65) : (v31 = 0), v31 || (v70 == 0x4F65727574706143 ? (v32 = *v71 == 0x70726168735F6A62) : (v32 = 0), v32 ? (v33 = *&v71[5] == 0x7373656E707261) : (v33 = 0), v33 || (v70 == 0x6A624F746F6F6853 ? (v34 = *v71 == 0x735F726F6C6F635FLL) : (v34 = 0), v34 ? (v35 = *&v71[5] == 0x70757465735F72) : (v35 = 0), v35 || (v70 == 0x6A624F746F6F6853 ? (v36 = *v71 == 0x65735F657661735FLL) : (v36 = 0), v36 ? (v37 = *&v71[8] == 7370100) : (v37 = 0), v37)))))
    {
LABEL_188:
      v38 = 0;
      goto LABEL_189;
    }

    if ((*(*a1 + 56))(a1))
    {
      if (*(a1 + 1219) == 1 && *(a1 + 1220) == 1)
      {
        v38 = *(a1 + 1222);
        goto LABEL_185;
      }
    }

    else if (*(a1 + 1216) == 1 && *(a1 + 1217) == 1 && *(a1 + 1218) == 1 && *(a1 + 1219) == 1 && *(a1 + 1220) == 1 && *(a1 + 1221) == 1 && *(a1 + 1222) == 1)
    {
      v38 = *(a1 + 1223);
      goto LABEL_185;
    }

    v38 = 0;
LABEL_185:
    if ((v38 & 1) != 0 || v9 < 0x35)
    {
      goto LABEL_189;
    }

    sub_233796C68(a1, v10, v9, a4 + 1);
    goto LABEL_188;
  }

  return sub_233725FD4(v60);
}

void *sub_233797AB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 1180);
  if (v2 == 35 || v2 == 32)
  {
    v4 = "Mamiya";
  }

  else
  {
    v4 = "Leaf";
  }

  return sub_23372A488(a2, v4);
}

void *sub_233797AE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 1180) - 1 > 0x22)
  {
    v2 = "";
  }

  else
  {
    v2 = off_2789EEE10[(*(a1 + 1180) - 1)];
  }

  return sub_23372A488(a2, v2);
}

uint64_t sub_233797B24(uint64_t a1)
{
  sub_23372A488(__p, "IFD0");
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233797B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233797B9C(uint64_t a1)
{
  sub_23372A488(__p, "IFD0");
  v2 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233797BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233797C14(uint64_t a1)
{
  v6 = 1;
  sub_23372A488(__p, "IFD0");
  v2 = sub_23374C360(a1, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

void sub_233797C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_233797CA0(uint64_t a1)
{
  sub_23372A488(__p, "IFD0");
  v2 = sub_233753F24(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233797CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233797D18(uint64_t a1@<X0>, void **a2@<X8>)
{
  sub_233753B14(a1, a2);
  sub_2337268D8(&v6, (a1 + 1184));
  sub_233723C18(&v5, (a1 + 1192));
  sub_23373401C(a1, &v6, &v5, 1, &v7);
  if (v7)
  {
    v4 = *(a1 + 1182);
    if (*(a1 + 1182))
    {
      if (v4 == 6)
      {
        v4 = 8;
      }

      else if (v4 == 8)
      {
        v4 = 6;
      }
    }

    *(v7 + 20) = v4;
    sub_233753C74(a2, &v7);
  }

  if (*(&v7 + 1))
  {
    sub_2337239E8(*(&v7 + 1));
  }
}

void sub_233797DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  sub_233723948(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_233797E48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 536))(a1);
  if (result == 7)
  {
    (*(*a1 + 384))(&v10, a1);
    v9 = (*(*a1 + 424))(a1);
    v8 = (*(*a1 + 440))(a1);
    v6 = (*(*a1 + 448))(a1);
    v7 = v5;
    sub_233798598();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_23379806C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337980A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = (*(*a1 + 784))(a1);
  snprintf(__str, 0x10uLL, "%u", v3);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_23372A488(__p, "mos");
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "leaf");
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __str);
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2337981C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_233798200(uint64_t a1)
{
  sub_2337557B4(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t *sub_233798238(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    sub_2337261C8(result, a4);
  }

  return result;
}

void sub_233798290(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2337982AC(uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_233723580(a1, a2);
  }

  return a1;
}

void sub_2337983A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233798464(uint64_t a1, void *a2, char *a3, void **a4, void **a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849092D0;
  sub_23374B844(a1 + 24, a2, *a3, *a4, *a5);
  *(a1 + 24) = &unk_284908F88;
  *(a1 + 1204) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0u;
  return a1;
}

void sub_23379851C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849092D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23379863C(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284909320;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_28491E2D8;
  *(a1 + 212) = -1;
  return a1;
}

void sub_2337986E0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284909320;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_23379875C()
{
  v40[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233720638];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233798B80];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233798B8C];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233798B98];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233798BA4];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233798BB0];
  v19 = *MEMORY[0x277CD3720];
  v28[0] = *MEMORY[0x277CD3700];
  v20 = v28[0];
  v28[1] = v19;
  v39[0] = MEMORY[0x277CBEC38];
  v39[1] = @"com.adobe.raw-image";
  v17 = *MEMORY[0x277CD3718];
  v29 = *MEMORY[0x277CD36E0];
  v18 = v29;
  v30 = v17;
  v39[2] = @".dng.";
  v39[3] = &unk_284957820;
  v15 = *MEMORY[0x277CD3710];
  v31 = *MEMORY[0x277CD3708];
  v16 = v31;
  v32 = v15;
  v39[4] = &unk_284957838;
  v39[5] = v0;
  v25 = v0;
  v5 = *MEMORY[0x277CD36E8];
  v33 = *MEMORY[0x277CD36C8];
  v4 = v33;
  v34 = v5;
  v39[6] = v1;
  v39[7] = v2;
  v7 = v1;
  v8 = *MEMORY[0x277CD36F0];
  v35 = *MEMORY[0x277CD36D0];
  v6 = v35;
  v36 = v8;
  v39[8] = v24;
  v39[9] = v23;
  v10 = *MEMORY[0x277CD36D8];
  v37 = *MEMORY[0x277CD36F8];
  v9 = v37;
  v38 = v10;
  v39[10] = v22;
  v39[11] = v3;
  v21 = v3;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v28 count:12];
  v40[0] = v14;
  v26[0] = v20;
  v26[1] = v19;
  v27[0] = MEMORY[0x277CBEC38];
  v27[1] = @"com.dxo.raw-image";
  v26[2] = v18;
  v26[3] = v17;
  v27[2] = @".dxo.";
  v27[3] = &unk_284957820;
  v26[4] = v16;
  v26[5] = v15;
  v27[4] = &unk_284957838;
  v27[5] = v25;
  v26[6] = v4;
  v26[7] = v5;
  v27[6] = v7;
  v27[7] = v2;
  v26[8] = v6;
  v26[9] = v8;
  v27[8] = v24;
  v27[9] = v23;
  v26[10] = v9;
  v27[10] = v22;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:11];
  v40[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];

  return v12;
}

void sub_233798BD4(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_2337A74A0();
}

uint64_t sub_233798C70(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23374B844(a1, a2, a3, a4, a5);
  *v6 = &unk_284909390;
  sub_23372A488(v6 + 148, "IFD0");
  sub_23372A488((a1 + 1208), "IFD0:CAMERAPROFILES0:IFD0");
  *(a1 + 1232) = 0x1000000000000;
  *(a1 + 1240) = 1;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0;
  v9 = xmmword_233905298;
  v10 = 0x3FF0000000000000;
  *(a1 + 1288) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1296) = 0;
  sub_233764ED4((a1 + 1288), &v9, &v11, 3uLL);
  *(a1 + 1320) = 0u;
  *(a1 + 1312) = a1 + 1320;
  *(a1 + 1344) = 0u;
  *(a1 + 1336) = a1 + 1344;
  *(a1 + 1368) = 0u;
  *(a1 + 1360) = a1 + 1368;
  *(a1 + 1392) = 0u;
  *(a1 + 1384) = a1 + 1392;
  *(a1 + 1416) = 0u;
  *(a1 + 1408) = a1 + 1416;
  *(a1 + 1440) = 0u;
  *(a1 + 1432) = a1 + 1440;
  *(a1 + 1464) = 0u;
  *(a1 + 1456) = a1 + 1464;
  *(a1 + 1488) = 0u;
  *(a1 + 1480) = a1 + 1488;
  *(a1 + 1512) = 0u;
  *(a1 + 1504) = a1 + 1512;
  *(a1 + 1536) = 0u;
  *(a1 + 1528) = a1 + 1536;
  *(a1 + 1560) = 0u;
  *(a1 + 1552) = a1 + 1560;
  *(a1 + 1584) = 0u;
  *(a1 + 1576) = a1 + 1584;
  *(a1 + 1600) = sub_2338191FC();
  *(a1 + 1608) = v7;
  *(a1 + 1616) = 0;
  *(a1 + 1632) = 0u;
  *(a1 + 1624) = a1 + 1632;
  *(a1 + 1656) = 0u;
  *(a1 + 1648) = a1 + 1656;
  *(a1 + 1680) = 0u;
  *(a1 + 1672) = a1 + 1680;
  *(a1 + 1704) = 0u;
  *(a1 + 1696) = a1 + 1704;
  *(a1 + 1728) = 0u;
  *(a1 + 1720) = a1 + 1728;
  *(a1 + 1752) = 0u;
  *(a1 + 1744) = a1 + 1752;
  *(a1 + 1776) = 0u;
  *(a1 + 1768) = a1 + 1776;
  *(a1 + 1800) = 0u;
  *(a1 + 1792) = a1 + 1800;
  *(a1 + 1824) = 0u;
  *(a1 + 1816) = a1 + 1824;
  *(a1 + 1848) = 0u;
  *(a1 + 1840) = a1 + 1848;
  *(a1 + 1872) = 0u;
  *(a1 + 1864) = a1 + 1872;
  *(a1 + 1896) = 0u;
  *(a1 + 1888) = a1 + 1896;
  *(a1 + 1912) = 0x3FF0000000000000;
  *(a1 + 1920) = 0x3FF0000000000000;
  *(a1 + 1936) = 0u;
  *(a1 + 1928) = a1 + 1936;
  *(a1 + 1952) = 0;
  *(a1 + 1956) = 0;
  *(a1 + 1960) = 0;
  *(a1 + 1972) = 0;
  *(a1 + 1976) = 0;
  *(a1 + 1988) = 0;
  *(a1 + 1992) = 0;
  *(a1 + 2112) = 0;
  *(a1 + 2128) = 0u;
  *(a1 + 2120) = a1 + 2128;
  *(a1 + 2152) = 0u;
  *(a1 + 2144) = a1 + 2152;
  *(a1 + 2232) = 0;
  *(a1 + 2200) = 0u;
  *(a1 + 2216) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0u;
  *(a1 + 2248) = 0u;
  *(a1 + 2240) = a1 + 2248;
  *(a1 + 2272) = 0u;
  *(a1 + 2264) = a1 + 2272;
  *(a1 + 2296) = 0u;
  *(a1 + 2288) = a1 + 2296;
  *(a1 + 2320) = 0u;
  *(a1 + 2312) = a1 + 2320;
  *(a1 + 2344) = 0u;
  *(a1 + 2336) = a1 + 2344;
  *(a1 + 2368) = 0u;
  *(a1 + 2360) = a1 + 2368;
  *(a1 + 2392) = 0u;
  *(a1 + 2384) = a1 + 2392;
  *(a1 + 2416) = 0u;
  *(a1 + 2408) = a1 + 2416;
  *(a1 + 2440) = 0u;
  *(a1 + 2432) = a1 + 2440;
  *(a1 + 2464) = 0u;
  *(a1 + 2456) = a1 + 2464;
  *(a1 + 2488) = 0u;
  *(a1 + 2480) = a1 + 2488;
  return a1;
}

void sub_233798FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char **a11, char **a12, char **a13, void **a14, void **a15, void **a16)
{
  v30 = v21;
  v26 = v20;
  sub_233735D24(v16 + 1576, *v17);
  sub_233735D24(v16 + 1552, *v22);
  sub_233735DD8(v16 + 1528, *v18);
  sub_233735DD8(v16 + 1504, *v24);
  sub_233735D24(v16 + 1480, *v23);
  sub_233735DD8(v16 + 1456, *v19);
  sub_233735DD8(v16 + 1432, *a11);
  sub_233735DD8(v16 + 1408, *v25);
  sub_233735DD8(v16 + 1384, *a12);
  sub_233735DD8(v16 + 1360, *v26);
  sub_233735DD8(v16 + 1336, *a13);
  sub_233755A84(v16 + 1312, *v30);
  v28 = *a14;
  if (*a14)
  {
    *(v16 + 1296) = v28;
    operator delete(v28);
  }

  v29 = *(v16 + 1248);
  if (v29)
  {
    *(v16 + 1256) = v29;
    operator delete(v29);
  }

  if (*(v16 + 1231) < 0)
  {
    operator delete(*a15);
  }

  if (*(v16 + 1207) < 0)
  {
    operator delete(*a16);
  }

  sub_2337557B4(v16);
  _Unwind_Resume(a1);
}

id sub_2337990E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  sub_23372A488(__p, "");
  v8 = sub_23379918C(a1, v6, v5, __p, v4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_233799170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_23379918C(uint64_t a1, int a2, int a3, __int128 *a4, int a5)
{
  v149 = *MEMORY[0x277D85DE8];
  sub_2337541FC(a1, a2, &v118);
  v108 = [MEMORY[0x277CBEB18] array];
  v6 = v118;
  v114 = v119;
  if (v118 != v119)
  {
    v115 = a1 + 784;
    v105 = a1 + 952;
    v106 = a1 + 928;
    v107 = *MEMORY[0x277CBF988];
    do
    {
      v7 = sub_233735E3C(a1 + 2264, v6);
      if (a1 + 2272 != v7)
      {
        v8 = *(v7 + 56);
        if (v8 >= 3)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](exception, "RawCameraException");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if (v8 != a5)
        {
          goto LABEL_159;
        }
      }

      v9 = sub_233735E3C(a1 + 2288, v6);
      if (a1 + 2296 == v9)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = *(v9 + 56);
      }

      v11 = sub_233735E3C(a1 + 2312, v6);
      if (a1 + 2320 == v11)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = *(v11 + 56);
      }

      sub_233735E3C(a1 + 2336, v6);
      sub_233735E3C(a1 + 2360, v6);
      __p.__r_.__value_.__s.__data_[0] = 0;
      v117 = 0;
      memset(__dst, 0, 24);
      v13 = sub_233735E3C(a1 + 2408, v6);
      if (a1 + 2416 != v13 || (v13 = sub_233735E3C(a1 + 2384, v6), a1 + 2392 != v13))
      {
        std::string::operator=(__dst, (v13 + 56));
        sub_23379A6D4(&__p, __dst);
      }

      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      if (v117 != 1)
      {
LABEL_78:
        v34 = sub_233735E3C(a1 + 536, v6);
        if (a1 + 544 == v34)
        {
          v100 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v100, "RawCameraException");
          __cxa_throw(v100, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v35 = *(v34 + 56);
        v36 = sub_233735E3C(a1 + 560, v6);
        if (a1 + 568 == v36)
        {
          v101 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v101, "RawCameraException");
          __cxa_throw(v101, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v37 = *(v36 + 56);
        v38 = sub_233735E3C(a1 + 680, v6);
        if (a1 + 688 == v38)
        {
          v103 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v103, "RawCameraException");
          __cxa_throw(v103, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v39 = *(v38 + 56);
        v40 = sub_233735E3C(a1 + 656, v6);
        if (a1 + 664 == v40 || (v41 = *(v40 + 56), *(v40 + 64) == v41))
        {
          v99 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v99, "RawCameraException");
          __cxa_throw(v99, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v42 = *v41;
        v43 = sub_233735E3C(a1 + 584, v6);
        if (a1 + 592 == v43)
        {
          v102 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v102, "RawCameraException");
          __cxa_throw(v102, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v44 = *(v43 + 56);
        v45 = sub_233735E3C(a1 + 632, v6);
        if (a1 + 640 == v45)
        {
LABEL_165:
          v94 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v94, "RawCameraException");
          __cxa_throw(v94, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if (v44 == 7 || v44 == 52546 || v44 == 34892)
        {
          if (*(v45 + 56) != a3)
          {
            goto LABEL_165;
          }

          if (v42 == 8)
          {
            if (v39 == 1)
            {
              v47 = sub_233735E3C(a1 + 776, v6);
              if (v115 == v47)
              {
                v48 = 0;
              }

              else
              {
                v48 = (*(v47 + 64) - *(v47 + 56)) >> 2;
              }

              v49 = [MEMORY[0x277CBEB28] dataWithCapacity:{30000, v105}];
              if (v48)
              {
                v52 = 0;
                v53 = 1;
                do
                {
                  v54 = sub_233735E3C(a1 + 776, v6);
                  if (v115 == v54 || (v55 = *(v54 + 56), v52 >= (*(v54 + 64) - v55) >> 2) || (v56 = *(v55 + 4 * v52), v57 = sub_233735E3C(a1 + 800, v6), a1 + 808 == v57) || (v58 = *(v57 + 56), v52 >= (*(v57 + 64) - v58) >> 2))
                  {
                    v92 = __cxa_allocate_exception(0x10uLL);
                    MEMORY[0x2383ABCE0](v92, "RawCameraException");
                    __cxa_throw(v92, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                  }

                  v59 = *(v58 + 4 * v52);
                  sub_233726154(__dst, v59);
                  sub_2337338AC(a1, &v128);
                  LODWORD(v134) = v56;
                  (*(*v128 + 24))(v128, *__dst, *&__dst[8] - *__dst, &v134);
                  if (*(&v128 + 1))
                  {
                    sub_2337239E8(*(&v128 + 1));
                  }

                  [v49 appendBytes:*__dst length:v59];
                  if (*__dst)
                  {
                    *&__dst[8] = *__dst;
                    operator delete(*__dst);
                  }

                  v52 = v53;
                }

                while (v48 > v53++);
                goto LABEL_112;
              }

              v68 = sub_233735E3C(a1 + 920, v6);
              if (v106 == v68)
              {
                goto LABEL_175;
              }

              v70 = (*(v68 + 64) - *(v68 + 56)) >> 2;
              if (v70 == 1)
              {
                v71 = sub_233735E3C(a1 + 920, v6);
                if (v106 == v71 || (v72 = *(v71 + 56), *(v71 + 64) == v72) || (v73 = *v72, v74 = sub_233735E3C(a1 + 944, v6), v105 == v74) || (v75 = *(v74 + 56), *(v74 + 64) == v75))
                {
                  v97 = __cxa_allocate_exception(0x10uLL);
                  MEMORY[0x2383ABCE0](v97, "RawCameraException");
                  __cxa_throw(v97, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                }

                v76 = *v75;
                sub_233726154(__dst, v76);
                sub_2337338AC(a1, &v128);
                LODWORD(v134) = v73;
                (*(*v128 + 24))(v128, *__dst, *&__dst[8] - *__dst, &v134);
                if (*(&v128 + 1))
                {
                  sub_2337239E8(*(&v128 + 1));
                }

                [v49 appendBytes:*__dst length:v76];
                if (*__dst)
                {
                  *&__dst[8] = *__dst;
                  operator delete(*__dst);
                }

LABEL_112:
                if (![v49 length])
                {
                  v95 = __cxa_allocate_exception(0x10uLL);
                  MEMORY[0x2383ABCE0](v95, "RawCameraException");
                  __cxa_throw(v95, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                }

                v110 = [MEMORY[0x277CBEB28] dataWithLength:v37 * (v35 & 0x1FFFFFFF)];
                if (v44 == 52546)
                {
                  v77 = v49;
                  [v49 mutableBytes];
                  [v49 length];
                  v78 = v110;
                  [v110 mutableBytes];
                  JxlDecoderCreate();
                  JxlDecoderSubscribeEvents();
                  if (JxlDecoderSetInput() || JxlDecoderProcessInput() != 64 || (v147 = 0u, memset(v148, 0, sizeof(v148)), v145 = 0u, v146 = 0u, v143 = 0u, v144 = 0u, v141 = 0u, v142 = 0u, v139 = 0u, v140 = 0u, memset(__dst, 0, sizeof(__dst)), JxlDecoderGetBasicInfo()) || *&__dst[12] != 8 || DWORD1(v140) != 1 || JxlDecoderProcessInput() != 256 || JxlDecoderGetColorAsEncodedProfile() || JxlDecoderSetPreferredColorProfile() || (v134 = DWORD1(v140) | 0x200000000, v135 = 0, v136 = 1, *&v126 = 0, JxlDecoderImageOutBufferSize()) || JxlDecoderSetImageOutBuffer() || JxlDecoderProcessInput() != 4096)
                  {
                    v98 = __cxa_allocate_exception(0x10uLL);
                    MEMORY[0x2383ABCE0](v98, "RawCameraException");
                    __cxa_throw(v98, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                  }

                  JxlDecoderDestroy();
                }

                else
                {
                  v61 = v49;
                  v62 = [v49 mutableBytes];
                  v63 = [v49 length];
                  v64 = v110;
                  v65 = [v110 mutableBytes];
                  v66 = [v110 length];
                  v126 = xmmword_2849096D8;
                  v127 = qword_2849096E8;
                  v124 = v62;
                  v125 = v63;
                  applejpeg_decode_create();
                  v135 = 0;
                  v136 = 0;
                  v137 = 0;
                  v134 = v35 & 0x1FFFFFFF;
                  applejpeg_decode_set_option_stride();
                  v122 = 0;
                  v123 = 0;
                  v120 = v65;
                  v121 = v66;
                  output_buffer_size = applejpeg_decode_open_mem();
                  if (!output_buffer_size)
                  {
                    output_buffer_size = applejpeg_decode_set_option_outformat();
                    if (!output_buffer_size)
                    {
                      output_buffer_size = applejpeg_decode_get_output_buffer_size();
                      if (!output_buffer_size)
                      {
                        output_buffer_size = applejpeg_decode_image_all();
                      }
                    }
                  }

                  applejpeg_decode_destroy();
                  if (output_buffer_size)
                  {
                    v96 = __cxa_allocate_exception(0x10uLL);
                    MEMORY[0x2383ABCE0](v96, "RawCameraException");
                    __cxa_throw(v96, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                  }
                }

                v79 = [MEMORY[0x277CBF758] imageWithBitmapData:v110 bytesPerRow:v35 & 0x1FFFFFFF size:v107 format:0 colorSpace:{v35, v37}];
                v132[0] = @"inputRVector";
                v80 = [MEMORY[0x277CBF788] vectorWithX:v12 Y:0.0 Z:0.0 W:0.0];
                v133[0] = v80;
                v132[1] = @"inputGVector";
                v81 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:v12 Z:0.0 W:0.0];
                v133[1] = v81;
                v132[2] = @"inputBVector";
                v82 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:v12 W:0.0];
                v133[2] = v82;
                v132[3] = @"inputBiasVector";
                v83 = [MEMORY[0x277CBF788] vectorWithX:v10 Y:v10 Z:v10 W:0.0];
                v133[3] = v83;
                v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:4];
                v85 = [v79 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v84];

                memset(__dst, 0, 24);
                if (sub_233754A3C(a1 + 2432, v6, __dst))
                {
                  v86 = [MEMORY[0x277CBEA90] dataWithBytes:*__dst length:*&__dst[8] - *__dst];
                  v87 = v86;
                  if (v86)
                  {
                    v130 = @"_XMP";
                    v131 = v86;
                    v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
                    v89 = [v85 imageBySettingProperties:v88];
                  }

                  else
                  {
                    v89 = v85;
                  }
                }

                else
                {
                  v89 = v85;
                }

                if (*__dst)
                {
                  *&__dst[8] = *__dst;
                  operator delete(*__dst);
                }

                [v108 addObject:v89];

                v90 = v110;
              }

              else
              {
                if (!v70)
                {
LABEL_175:
                  v104 = __cxa_allocate_exception(0x10uLL);
                  MEMORY[0x2383ABCE0](v104, "RawCameraException");
                  __cxa_throw(v104, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                }

                v90 = sub_2338C0490(v68, v69);
                if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                {
                  *__dst = 0;
                  _os_log_impl(&dword_23371F000, v90, OS_LOG_TYPE_INFO, "Auxiliary image will be ignored since it has more than 1 tile.", __dst, 2u);
                }
              }

LABEL_155:
              goto LABEL_156;
            }

            v49 = sub_2338C0490(v45, v46);
            if (!os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              goto LABEL_155;
            }

            *__dst = 67109120;
            *&__dst[4] = v39;
            v50 = v49;
            v51 = "Auxiliary image will be ignored since it has %d channels instead of 1.";
          }

          else
          {
            v49 = sub_2338C0490(v45, v46);
            if (!os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              goto LABEL_155;
            }

            *__dst = 67109120;
            *&__dst[4] = v42;
            v50 = v49;
            v51 = "Auxiliary image will be ignored since it is not 8-bit.  It is %d bits per sample.";
          }
        }

        else
        {
          v49 = sub_2338C0490(v45, v46);
          if (!os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            goto LABEL_155;
          }

          *__dst = 67109120;
          *&__dst[4] = v44;
          v50 = v49;
          v51 = "Auxiliary image will be ignored since it has an unrecognized compression value of %d.";
        }

        _os_log_impl(&dword_23371F000, v50, OS_LOG_TYPE_INFO, v51, __dst, 8u);
        goto LABEL_155;
      }

      v14 = *(a4 + 23);
      if (v14 < 0)
      {
        if (!*(a4 + 1))
        {
          goto LABEL_78;
        }
      }

      else if (!*(a4 + 23))
      {
        goto LABEL_78;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_233731FB8(__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        if ((*(a4 + 23) & 0x80) == 0)
        {
LABEL_24:
          v128 = *a4;
          v129 = *(a4 + 2);
          goto LABEL_27;
        }
      }

      else
      {
        *__dst = __p;
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_24;
        }
      }

      sub_233731FB8(&v128, *a4, *(a4 + 1));
LABEL_27:
      if (__dst[23] >= 0)
      {
        v15 = &__dst[__dst[23]];
      }

      else
      {
        v15 = (*__dst + *&__dst[8]);
      }

      if (__dst[23] >= 0)
      {
        v16 = __dst;
      }

      else
      {
        v16 = *__dst;
      }

      while (v16 != v15)
      {
        *v16 = __tolower(*v16);
        ++v16;
      }

      v17 = HIBYTE(v129);
      v18 = HIBYTE(v129);
      v19 = *(&v128 + 1);
      v20 = v128;
      if (v129 >= 0)
      {
        v21 = &v128 + HIBYTE(v129);
      }

      else
      {
        v21 = (v128 + *(&v128 + 1));
      }

      if (v129 >= 0)
      {
        v22 = &v128;
      }

      else
      {
        v22 = v128;
      }

      if (v22 != v21)
      {
        do
        {
          *v22 = __tolower(*v22);
          ++v22;
        }

        while (v22 != v21);
        v17 = HIBYTE(v129);
        v19 = *(&v128 + 1);
        v20 = v128;
        v18 = HIBYTE(v129);
      }

      v23 = __dst[23];
      v24 = __dst[23];
      if (__dst[23] >= 0)
      {
        v25 = __dst;
      }

      else
      {
        v25 = *__dst;
      }

      if (__dst[23] < 0)
      {
        v23 = *&__dst[8];
      }

      if (v18 >= 0)
      {
        v26 = &v128;
      }

      else
      {
        v26 = v20;
      }

      if (v18 >= 0)
      {
        v27 = v17;
      }

      else
      {
        v27 = v19;
      }

      if (v27)
      {
        v28 = &v25[v23];
        if (v23 >= v27)
        {
          v31 = *v26;
          v109 = v25;
          do
          {
            if (v23 - v27 == -1)
            {
              break;
            }

            v32 = memchr(v25, v31, v23 - v27 + 1);
            if (!v32)
            {
              break;
            }

            v29 = v32;
            if (!memcmp(v32, v26, v27))
            {
              goto LABEL_68;
            }

            v25 = v29 + 1;
            v23 = v28 - (v29 + 1);
          }

          while (v23 >= v27);
          v29 = v28;
LABEL_68:
          v25 = v109;
        }

        else
        {
          v29 = &v25[v23];
        }

        v30 = v29 == v28 || v29 - v25 == -1;
        if (v18 < 0)
        {
LABEL_59:
          operator delete(v20);
          if ((__dst[23] & 0x80) != 0)
          {
            goto LABEL_60;
          }

          goto LABEL_77;
        }
      }

      else
      {
        v30 = 0;
        if (v18 < 0)
        {
          goto LABEL_59;
        }
      }

      if (v24 < 0)
      {
LABEL_60:
        operator delete(*__dst);
        if (!v30)
        {
          goto LABEL_78;
        }

        goto LABEL_156;
      }

LABEL_77:
      if (!v30)
      {
        goto LABEL_78;
      }

LABEL_156:
      if (v117 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_159:
      v6 += 24;
    }

    while (v6 != v114);
  }

  *__dst = &v118;
  sub_233735AD4(__dst);

  return v108;
}

void sub_23379A370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __int16 *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, int a41, __int16 a42)
{
  v44 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v44;
    operator delete(v44);
  }

  if (a40 == 1 && a39 < 0)
  {
    operator delete(a34);
  }

  a34 = &a42;
  sub_233735AD4(&a34);
  _Unwind_Resume(a1);
}

id sub_23379A600(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    sub_233731FB8(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v10 = *(a4 + 16);
  }

  v7 = sub_23379918C(a1, a2, a3, __p, 0);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_23379A6A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23379A67CLL);
}

std::string *sub_23379A6D4(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(__dst, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_233731FB8(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return __dst;
}

id sub_23379A744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a2;
  sub_23372A488(__p, "");
  v7 = sub_23379A7EC(a1, v5, 0, __p, v4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_23379A7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_23379A7EC(uint64_t a1, int a2, uint64_t a3, __int128 *a4, int a5)
{
  v61[2] = *MEMORY[0x277D85DE8];
  sub_2337541FC(a1, a2, &v58);
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = v8;
  v10 = v58;
  v11 = v59;
  if (v58 != v59)
  {
    v12 = a1 + 2272;
    v51 = a1 + 544;
    v46 = v8;
    v48 = v59;
    v50 = a5;
    v49 = a4;
    do
    {
      v13 = sub_233735E3C(a1 + 2264, v10);
      if (v12 != v13)
      {
        v14 = *(v13 + 56);
        if (v14 >= 3)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](exception, "RawCameraException");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if (v14 != a5)
        {
          goto LABEL_78;
        }
      }

      __p.__r_.__value_.__s.__data_[0] = 0;
      v57 = 0;
      memset(&__dst, 0, sizeof(__dst));
      v15 = sub_233735E3C(a1 + 2408, v10);
      if (a1 + 2416 != v15 || (v15 = sub_233735E3C(a1 + 2384, v10), a1 + 2392 != v15))
      {
        std::string::operator=(&__dst, (v15 + 56));
        sub_23379A6D4(&__p, &__dst);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (v57 != 1)
      {
LABEL_69:
        v36 = sub_233735E3C(a1 + 536, v10);
        v37 = v36;
        if (v51 == v36)
        {
          v38 = v52 & 0xFFFFFF00;
        }

        else
        {
          v38 = *(v36 + 56);
        }

        v52 = v38;
        v39 = sub_233735E3C(a1 + 560, v10);
        if (a1 + 568 != v39 && v51 != v37)
        {
          v40 = *(v39 + 56);
          v60[0] = @"Width";
          v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v52];
          v60[1] = @"Height";
          v61[0] = v41;
          v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v40];
          v61[1] = v42;
          v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];

          [v9 addObject:v43];
        }

        goto LABEL_75;
      }

      v16 = *(a4 + 23);
      if (v16 < 0)
      {
        if (!*(a4 + 1))
        {
          goto LABEL_69;
        }
      }

      else if (!*(a4 + 23))
      {
        goto LABEL_69;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_233731FB8(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        if ((*(a4 + 23) & 0x80) == 0)
        {
LABEL_18:
          v53 = *a4;
          v54 = *(a4 + 2);
          goto LABEL_21;
        }
      }

      else
      {
        __dst = __p;
        if ((v16 & 0x80) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_233731FB8(&v53, *a4, *(a4 + 1));
LABEL_21:
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = (&__dst + HIBYTE(__dst.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v17 = (__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_);
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      while (p_dst != v17)
      {
        p_dst->__r_.__value_.__s.__data_[0] = __tolower(p_dst->__r_.__value_.__s.__data_[0]);
        p_dst = (p_dst + 1);
      }

      v19 = HIBYTE(v54);
      v20 = HIBYTE(v54);
      v21 = *(&v53 + 1);
      v22 = v53;
      if (v54 >= 0)
      {
        v23 = (&v53 + HIBYTE(v54));
      }

      else
      {
        v23 = (v53 + *(&v53 + 1));
      }

      if (v54 >= 0)
      {
        v24 = &v53;
      }

      else
      {
        v24 = v53;
      }

      if (v24 != v23)
      {
        do
        {
          *v24 = __tolower(*v24);
          v24 = (v24 + 1);
        }

        while (v24 != v23);
        v19 = HIBYTE(v54);
        v21 = *(&v53 + 1);
        v22 = v53;
        v20 = HIBYTE(v54);
      }

      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      v26 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &__dst;
      }

      else
      {
        v27 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      if (v20 >= 0)
      {
        v28 = &v53;
      }

      else
      {
        v28 = v22;
      }

      if (v20 >= 0)
      {
        v29 = v19;
      }

      else
      {
        v29 = v21;
      }

      if (v29)
      {
        v30 = v27 + size;
        if (size >= v29)
        {
          v33 = *v28;
          v47 = v27;
          do
          {
            if (size - v29 == -1)
            {
              break;
            }

            v34 = memchr(v27, v33, size - v29 + 1);
            if (!v34)
            {
              break;
            }

            v31 = v34;
            if (!memcmp(v34, v28, v29))
            {
              goto LABEL_59;
            }

            v27 = (v31 + 1);
            size = v30 - (v31 + 1);
          }

          while (size >= v29);
          v31 = v30;
LABEL_59:
          v9 = v46;
          v27 = v47;
        }

        else
        {
          v31 = v27 + size;
        }

        v32 = v31 == v30 || v31 - v27 == -1;
      }

      else
      {
        v32 = 0;
      }

      v12 = a1 + 2272;
      if (v20 < 0)
      {
        operator delete(v22);
        if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_68;
        }
      }

      else if ((v26 & 0x80) == 0)
      {
        goto LABEL_68;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_68:
      a5 = v50;
      v11 = v48;
      a4 = v49;
      if (!v32)
      {
        goto LABEL_69;
      }

LABEL_75:
      if (v57 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_78:
      v10 += 24;
    }

    while (v10 != v11);
  }

  __p.__r_.__value_.__r.__words[0] = &v58;
  sub_233735AD4(&__p);

  return v9;
}