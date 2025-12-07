_OWORD *sub_100050B6C@<X0>(const std::error_category *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100051FD0(a1, v7);
  if (v7[16])
  {
    v5 = a1[5].__vftable;
    if (v5)
    {
      LOBYTE(v5) = !a1[73].__vftable || !a1[75].__vftable || a1[77].__vftable == 0;
    }

    *a2 = v5;
    v6 = 1;
  }

  else
  {
    result = sub_10005034C(v7);
    v6 = 0;
    *a2 = *result;
  }

  a2[16] = v6;
  return result;
}

__n128 sub_100050C00@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_1000660D8(a1, v15);
  if (v15[16])
  {
    v4 = *(a1 + 560);
    if (v4 == -1)
    {
      sub_100036CC4();
    }

    v13[0] = &v11;
    (off_10020C280[v4])(v13, a1 + 56);
  }

  else
  {
    *&v11 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::get_nr_blocks() const";
    *(&v11 + 1) = 80;
    v12 = 16;
    sub_100068084(v13, &v11);
    sub_1000026BC(v14, "Diskimageuio: query format failed ", 34);
    v6 = sub_10005034C(v15);
    v7 = (*(**(v6 + 8) + 16))(*(v6 + 8));
    v8 = strlen(v7);
    v9 = sub_1000026BC(v14, v7, v8);
    v16 = 58;
    sub_1000026BC(v9, &v16, 1);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000682B8(v13);
    std::ios::~ios();
    v10 = sub_10005034C(v15);
    result = *v10;
    *a2 = *v10;
    a2[1].n128_u8[0] = 0;
  }

  return result;
}

void sub_100050D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000681AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100050D74(uint64_t result)
{
  if (*(result + 56))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_100208560;
  }

  return result;
}

void diskimage_uio::diskimage::~diskimage(diskimage_uio::diskimage *this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = 0;
}

void sub_100050E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (!v3 || (v2 = *(v3[3] - 24)) != 0)
    {
      {
        operator new();
      }
    }
  }

  operator new();
}

void sub_1000510C0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10005115C(va);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x10005108CLL);
  }

  _Unwind_Resume(a1);
}

std::mutex **sub_10005115C(std::mutex **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100069590(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_1000511A4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10006A664(v1 + 248);
    sub_10006A538(v1 + 120);
    operator delete();
  }

  return a1;
}

void *diskimage_uio::operator<<(void *a1, int a2)
{
  if (a2 == 2)
  {
    v2 = "auto";
    v3 = 4;
  }

  else if (a2 == 1)
  {
    v2 = "read write";
    v3 = 10;
  }

  else if (a2)
  {
    v2 = "unknown";
    v3 = 7;
  }

  else
  {
    v2 = "read only";
    v3 = 9;
  }

  return sub_1000026BC(a1, v2, v3);
}

{
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v2 = "udzo";
      }

      else
      {
        v2 = "ulfo";
      }

      goto LABEL_22;
    }

    if (a2 == 1)
    {
      v2 = "raw";
      v3 = 3;
      return sub_1000026BC(a1, v2, v3);
    }

    if (a2 == 2)
    {
      v2 = "asif";
LABEL_22:
      v3 = 4;
      return sub_1000026BC(a1, v2, v3);
    }

LABEL_23:
    v2 = "unknown";
    v3 = 7;
    return sub_1000026BC(a1, v2, v3);
  }

  if (a2 <= 7)
  {
    if (a2 == 5)
    {
      v2 = "ulmo";
      goto LABEL_22;
    }

    if (a2 == 6)
    {
      v2 = "udzo_max";
      v3 = 8;
      return sub_1000026BC(a1, v2, v3);
    }

    goto LABEL_23;
  }

  if (a2 == 8)
  {
    v2 = "udro";
    goto LABEL_22;
  }

  if (a2 == 9)
  {
    v2 = "udsb";
    goto LABEL_22;
  }

  if (a2 != 11)
  {
    goto LABEL_23;
  }

  v2 = "pstack";
  v3 = 6;
  return sub_1000026BC(a1, v2, v3);
}

uint64_t sub_10005133C(uint64_t a1, uint64_t (*a2)(uint64_t a1, unsigned __int8 *a2), uint64_t a3, uint64_t a4)
{
  *(a1 + 120) = 850045863;
  *(a1 + 208) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = -1;
  *(a1 + 240) = a3;
  if (*(a4 + 24))
  {
    sub_10006B630(a1 + 248, a4);
  }

  else
  {
    *(a1 + 248) = off_10020C768;
    *(a1 + 256) = a1;
    *(a1 + 272) = a1 + 248;
  }

  sub_1000B3AB4(a1, a2);
  *a1 = sub_10006A1A4;
  return a1;
}

uint64_t sub_100051430@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1 + 15;
  v5 = a1[28];
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = atomic_exchange((*(a1[24] + (((v6 + a1[27]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v6 + a1[27]) & 0x1FF)), 0);
      if (v7)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }

    *a2 = v4;
    a2[1] = v7;
    v15 = v4;
    a2[2] = v6;
    v16 = -2;
  }

  else
  {
LABEL_5:
    v15 = 0uLL;
    v16 = -1;
    v8 = a1[34];
    if (!v8)
    {
      sub_10002870C();
    }

    (*(*v8 + 48))(&v13);
    if (v14)
    {
      v9 = a1[29];
      if ((v9 & 0x8000000000000000) != 0 || a1[28] + 1 <= v9)
      {
        v10 = -1;
      }

      else
      {
        v10 = -2;
      }

      v11 = v13;
      *a2 = v4;
      a2[1] = v11;
      a2[2] = v10;
    }

    else
    {
      *a2 = v15;
      a2[2] = v16;
      *(&v15 + 1) = 0;
      v16 = -2;
    }
  }

  return sub_10006B6C8(&v15);
}

void sub_100051560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10006B6C8(va);
  _Unwind_Resume(a1);
}

void sub_100051574(void *a1, const void **a2, std::string *a3, uint64_t a4)
{
  *a1 = 0;
  if (*a2)
  {
    v4 = a4;
    if (v6)
    {
      memset(&v12[3], 0, 24);
      v7 = (*(*v6 + 192))(v6);
      sub_10006BE4C(&__p, a3);
      sub_100170484(v7, &__p, v4, v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v12[0] != v12[1])
      {
        operator new();
      }

      exception = __cxa_allocate_exception(0x40uLL);
      v11 = std::generic_category();
      exception[1] = 22;
      exception[2] = v11;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "pstack_header";
      *exception = &off_10020C740;
    }
  }

  v8 = __cxa_allocate_exception(0x40uLL);
  v9 = std::generic_category();
  v8[1] = 22;
  v8[2] = v9;
  *(v8 + 24) = 0;
  *(v8 + 48) = 0;
  v8[7] = "pstack_header";
  *v8 = &off_10020C740;
}

void sub_100051A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char **a16, uint64_t a17, char a18, char *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, char a27, int a28, __int16 a29, char a30)
{
  a16 = &a19;
  sub_100051F10(&a16);
  a19 = &a22;
  sub_10006A41C(&a19);
  sub_10006A268(v30, 0);
  _Unwind_Resume(a1);
}

void sub_100051AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a24 != 1)
  {
    JUMPOUT(0x100051AB4);
  }

  JUMPOUT(0x100051AA8);
}

uint64_t sub_100051B14(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = std::generic_category();
  *(a1 + 8) = a3;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *a1 = &off_10020C740;
  return a1;
}

void *sub_100051B80(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_10006A380(result, a2);
    }

    sub_100036CAC();
  }

  return result;
}

void sub_100051BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10006A3C8(va);
  _Unwind_Resume(a1);
}

diskimage_uio::diskimage_open_params *sub_100051C10(diskimage_uio::diskimage_open_params *a1, __int128 *a2)
{
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    *&v4 = *a2;
    *a2 = 0;
  }

  else
  {
    v4 = *a2;
  }

  sub_10006C0DC(&v4, a1);
  if (v5 == 1)
  {
    diskimage_uio::diskimage_open_params::~diskimage_open_params(&v4);
  }

  return a1;
}

void sub_100051C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    diskimage_uio::diskimage_open_params::~diskimage_open_params(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t diskimage_uio::stack_image_node::stack_image_node(uint64_t a1, int a2, int a3, __int128 *a4, __int128 *a5, CFTypeRef cf)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_1000093B4((a1 + 8), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 24) = *(a4 + 2);
    *(a1 + 8) = v9;
  }

  if (*(a5 + 23) < 0)
  {
    sub_1000093B4((a1 + 32), *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    *(a1 + 48) = *(a5 + 2);
    *(a1 + 32) = v10;
  }

  *(a1 + 56) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void sub_100051D3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void diskimage_uio::stack_image_node::~stack_image_node(diskimage_uio::stack_image_node *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void sub_100051DD0(uint64_t a1)
{
  sub_10006A4A4(a1);

  operator delete();
}

void sub_100051E08(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete();
}

void *sub_100051E4C@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if ((a1 - 150) > 0x13)
  {
    v2 = "(unrecognized error)";
  }

  else
  {
    v2 = off_10020C7E8[a1 - 150];
  }

  return sub_100003410(a2, v2);
}

void sub_100051E78(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100038E68();
}

uint64_t sub_100051EC0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_10004FF10((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100051F10(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10004FF10(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100051F98(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

const std::error_category *sub_100051FD0@<X0>(const std::error_category *result@<X0>, uint64_t a2@<X8>)
{
  if (LODWORD(result[71].__vftable) == 12 || result[3].__vftable)
  {
    *a2 = 0;
    v3 = 1;
  }

  else
  {
    *&v4 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::verify_backend() const";
    *(&v4 + 1) = 81;
    v5 = 16;
    sub_100052128(v6, &v4);
    sub_1000026BC(v7, "Diskimageuio: backend doesn't exist", 35);
    std::ostream::~ostream();
    sub_10005235C(v6);
    std::ios::~ios();
    result = std::generic_category();
    v3 = 0;
    *a2 = 6;
    *(a2 + 8) = result;
  }

  *(a2 + 16) = v3;
  return result;
}

void sub_100052090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100052250(va);
  _Unwind_Resume(a1);
}

void *sub_1000520A4@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_100052128(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100052294(a1, a2);
  *a1 = off_100208590;
  a1[45] = &off_100208690;
  a1[46] = &off_1002086B8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100208590;
  a1[45] = off_100208618;
  a1[46] = off_100208640;
  return a1;
}

void sub_10005222C(_Unwind_Exception *a1)
{
  sub_10005235C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100052250(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005235C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100052294(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100208728;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100052344(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10005235C(uint64_t a1)
{
  *a1 = &off_100208728;
  sub_10005279C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000524C8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005235C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100052530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10005256C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1000525D8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005235C(v1);

  return std::ios::~ios();
}

void sub_100052624(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005235C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100052688(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005235C(v1);

  return std::ios::~ios();
}

void sub_1000526E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005235C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100052764(uint64_t a1)
{
  sub_10005235C(a1);

  operator delete();
}

uint64_t sub_10005279C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100052910((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000528E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100052910(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 603;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 603;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100052AF4(void *a1, unsigned int *a2)
{
  v3 = (*(**(a2 + 1) + 16))(*(a2 + 1));
  v4 = strlen(v3);
  v5 = sub_1000026BC(a1, v3, v4);
  v7 = 58;
  sub_1000026BC(v5, &v7, 1);
  return std::ostream::operator<<();
}

uint64_t sub_100052B84(uint64_t result)
{
  v1 = result;
  v2 = *(result + 504);
  if (v2 != -1)
  {
    result = (off_100208798[v2])(&v3, result);
  }

  *(v1 + 504) = -1;
  return result;
}

void sub_100052BF8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }

  v3 = *(a2 + 8);
  if (v3)
  {

    sub_10000367C(v3);
  }
}

uint64_t sub_100052C4C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 504);
  if (*(result + 504) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_100052B84(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_1002087C8[v4])(v6);
    }
  }

  return result;
}

uint64_t *sub_100052CBC(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 504))
  {
    result = sub_100052B84(*result);
    *(v1 + 504) = 0;
  }

  return result;
}

double sub_100052CF8(uint64_t *result, _OWORD *a2, __int128 *a3)
{
  v5 = *result;
  if (*(*result + 504) == 2)
  {
    v6 = *a3;
    v7 = a3[2];
    a2[1] = a3[1];
    a2[2] = v7;
    *a2 = v6;
    v8 = a3[3];
    v9 = a3[4];
    v10 = a3[5];
    *(a2 + 92) = *(a3 + 92);
    a2[4] = v9;
    a2[5] = v10;
    a2[3] = v8;
  }

  else
  {
    v12[2] = v3;
    v12[3] = v4;
    v12[0] = v5;
    v12[1] = a3;
    *&v8 = sub_100053004(v12).n128_u64[0];
  }

  return *&v8;
}

__n128 sub_100052D5C(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if ((*a1)[31].n128_u32[2] == 3)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    sub_100052B84(*a1);
    result = *a3;
    *v4 = *a3;
    v4[31].n128_u32[2] = 3;
  }

  return result;
}

__n128 sub_100052DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 504) == 1)
  {
    *a2 = *a3;
    v4 = *(a3 + 16);
    v5 = *(a3 + 32);
    v6 = *(a3 + 64);
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 64) = v6;
    *(a2 + 16) = v4;
    *(a2 + 32) = v5;
    *(a2 + 80) = *(a3 + 80);
    *(a2 + 84) = *(a3 + 84);
    v7 = *(a3 + 88);
    v8 = *(a3 + 104);
    v9 = *(a3 + 120);
    *(a2 + 136) = *(a3 + 136);
    *(a2 + 120) = v9;
    *(a2 + 104) = v8;
    *(a2 + 88) = v7;
    v10 = *(a3 + 152);
    v11 = *(a3 + 168);
    v12 = *(a3 + 184);
    *(a2 + 200) = *(a3 + 200);
    *(a2 + 184) = v12;
    *(a2 + 168) = v11;
    *(a2 + 152) = v10;
    v13 = *(a3 + 248);
    v14 = *(a3 + 264);
    v15 = *(a3 + 280);
    *(a2 + 232) = *(a3 + 232);
    *(a2 + 264) = v14;
    *(a2 + 280) = v15;
    *(a2 + 248) = v13;
    v17 = *(a3 + 312);
    v16 = *(a3 + 328);
    v18 = *(a3 + 296);
    *(a2 + 344) = *(a3 + 344);
    *(a2 + 312) = v17;
    *(a2 + 328) = v16;
    *(a2 + 296) = v18;
    *(a2 + 216) = *(a3 + 216);
    *(a2 + 352) = *(a3 + 352);
    *(a2 + 356) = *(a3 + 356);
    v19 = *(a3 + 360);
    v20 = *(a3 + 376);
    v21 = *(a3 + 408);
    *(a2 + 392) = *(a3 + 392);
    *(a2 + 408) = v21;
    *(a2 + 360) = v19;
    *(a2 + 376) = v20;
    result = *(a3 + 424);
    v23 = *(a3 + 440);
    v24 = *(a3 + 472);
    *(a2 + 456) = *(a3 + 456);
    *(a2 + 472) = v24;
    *(a2 + 424) = result;
    *(a2 + 440) = v23;
    v25 = *(a3 + 488);
    *(a2 + 496) = *(a3 + 496);
    *(a2 + 488) = v25;
  }

  else
  {
    sub_100052B84(a1);
    *a1 = 0x4796C6F6BLL;
    *(a1 + 8) = 512;
    *(a1 + 12) = *(a3 + 12);
    v27 = *(a3 + 16);
    v28 = *(a3 + 32);
    *(a1 + 48) = *(a3 + 48);
    *(a1 + 16) = v27;
    *(a1 + 32) = v28;
    *(a1 + 56) = *(a3 + 56);
    *(a1 + 60) = *(a3 + 60);
    *(a1 + 64) = *(a3 + 64);
    *(a1 + 80) = *(a3 + 80);
    v29 = *(a3 + 88);
    v30 = *(a3 + 104);
    v31 = *(a3 + 120);
    *(a1 + 136) = *(a3 + 136);
    *(a1 + 120) = v31;
    *(a1 + 104) = v30;
    *(a1 + 88) = v29;
    v32 = *(a3 + 152);
    v33 = *(a3 + 168);
    v34 = *(a3 + 184);
    *(a1 + 200) = *(a3 + 200);
    *(a1 + 184) = v34;
    *(a1 + 168) = v33;
    *(a1 + 152) = v32;
    v35 = *(a3 + 248);
    v36 = *(a3 + 264);
    v37 = *(a3 + 280);
    *(a1 + 232) = *(a3 + 232);
    *(a1 + 264) = v36;
    *(a1 + 280) = v37;
    *(a1 + 248) = v35;
    v39 = *(a3 + 312);
    v38 = *(a3 + 328);
    v40 = *(a3 + 296);
    *(a1 + 344) = *(a3 + 344);
    *(a1 + 312) = v39;
    *(a1 + 328) = v38;
    *(a1 + 296) = v40;
    *(a1 + 216) = *(a3 + 216);
    *(a1 + 352) = *(a3 + 352);
    v41 = *(a3 + 360);
    v42 = *(a3 + 376);
    v43 = *(a3 + 408);
    *(a1 + 392) = *(a3 + 392);
    *(a1 + 408) = v43;
    *(a1 + 360) = v41;
    *(a1 + 376) = v42;
    result = *(a3 + 424);
    v44 = *(a3 + 440);
    v45 = *(a3 + 472);
    *(a1 + 456) = *(a3 + 456);
    *(a1 + 472) = v45;
    *(a1 + 424) = result;
    *(a1 + 440) = v44;
    *(a1 + 488) = *(a3 + 488);
    *(a1 + 492) = *(a3 + 492);
    *(a1 + 504) = 1;
  }

  return result;
}

__n128 sub_100053004(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100052B84(*a1);
  *v1 = 2003069043;
  *(v1 + 4) = *(v2 + 4);
  *(v1 + 12) = *(v2 + 12);
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 48);
  *(v1 + 62) = *(v2 + 62);
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *(v1 + 16) = v3;
  *(v1 + 70) = 0;
  result = *(v2 + 72);
  *(v1 + 88) = *(v2 + 88);
  *(v1 + 72) = result;
  *(v1 + 96) = *(v2 + 96);
  *(v1 + 100) = *(v2 + 100);
  *(v1 + 104) = *(v2 + 104);
  *(v1 + 504) = 2;
  return result;
}

void ***sub_100053094(uint64_t a1, void ***a2, void ***a3)
{
  if (*(a1 + 504) == 4)
  {
    v4 = *a3;
    *a3 = 0;

    return sub_10006A268(a2, v4);
  }

  else
  {
    result = sub_100052B84(a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 504) = 4;
  }

  return result;
}

__n128 sub_100053108(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 504) == 5)
  {
    v5 = *a3;
    *a3 = 0uLL;
    v6 = *(a2 + 8);
    *a2 = v5;
    if (v6)
    {
      sub_10000367C(v6);
    }

    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }

    result = a3[1];
    *(a2 + 32) = *(a3 + 4);
    *(a2 + 16) = result;
    *(a3 + 39) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    sub_100052B84(a1);
    *a1 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    result = a3[1];
    *(a1 + 32) = *(a3 + 4);
    *(a1 + 16) = result;
    *(a3 + 3) = 0;
    *(a3 + 4) = 0;
    *(a3 + 2) = 0;
    *(a1 + 504) = 5;
  }

  return result;
}

uint64_t sub_1000531B8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_100029E48(a1);
}

uint64_t sub_100053264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100146D64(&v9, a1);
  *&v5 = "expected<std::pair<hdr_variant, image_format>, diskimage_err> diskimage_uio::details::diskimage_open_params_impl::get_disk_image_hdr_udif (std::shared_ptr<Backend> &)";
  *(&v5 + 1) = 137;
  v6 = 16;
  sub_1000533DC(v7, &v5);
  sub_1000026BC(v8, "UDIF images are currently not supported in diskimage_uio", 56);
  std::ostream::~ostream();
  sub_100053808(v7);
  std::ios::~ios();
  *a2 = make_error_code(161);
  *(a2 + 8) = v3;
  *(a2 + 520) = 0;
  if (v10)
  {
    sub_10000367C(v10);
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_10005333C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100053504(va);
  sub_10005338C((v9 - 56));
  __cxa_begin_catch(a1);
  sub_100053548();
}

uint64_t *sub_10005338C(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete();
  }

  return a1;
}

void *sub_1000533DC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100053740(a1, a2);
  *a1 = off_100208810;
  a1[45] = &off_100208910;
  a1[46] = &off_100208938;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100208810;
  a1[45] = off_100208898;
  a1[46] = off_1002088C0;
  return a1;
}

void sub_1000534E0(_Unwind_Exception *a1)
{
  sub_100053808(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100053504(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100053808(a1);
  std::ios::~ios();
  return a1;
}

void sub_10005357C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  if (a2 != 3 && a2 != 2)
  {
    if (a2 == 1)
    {
      v3 = __cxa_begin_catch(a1);
      *&v5 = "expected<std::pair<hdr_variant, image_format>, diskimage_err> diskimage_uio::details::diskimage_open_params_impl::get_disk_image_handle_exceptions()";
      *(&v5 + 1) = 146;
      v6 = 16;
      sub_100053FA0(v8, &v5);
      sub_10019E1D0(&v9, v3);
      std::ostream::~ostream();
      sub_1000541D4(v8);
      std::ios::~ios();
      *v2 = make_error_code(161);
      *(v2 + 8) = v4;
      *(v2 + 520) = 0;
      goto LABEL_7;
    }

LABEL_8:
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  v7 = 0;
  sub_10005496C(v8, &v5);
  v10 = 0;
  sub_10005496C(v2, v8);
  *(v2 + 512) = v10;
  *(v2 + 520) = 1;
  sub_100052B84(v8);
  sub_100052B84(&v5);
LABEL_7:
  __cxa_end_catch();
}

uint64_t sub_100053740(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002089A8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000537F0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100053808(uint64_t a1)
{
  *a1 = &off_1002089A8;
  sub_100053C48(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100053974(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100053808(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000539DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100053A18(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100053A84(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100053808(v1);

  return std::ios::~ios();
}

void sub_100053AD0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100053808(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100053B34(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100053808(v1);

  return std::ios::~ios();
}

void sub_100053B94(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100053808(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100053C10(uint64_t a1)
{
  sub_100053808(a1);

  operator delete();
}

uint64_t sub_100053C48(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100053DBC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100053D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100053DBC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 414;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 414;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100053FA0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10005410C(a1, a2);
  *a1 = off_100208A48;
  a1[45] = &off_100208B48;
  a1[46] = &off_100208B70;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100208A48;
  a1[45] = off_100208AD0;
  a1[46] = off_100208AF8;
  return a1;
}

void sub_1000540A4(_Unwind_Exception *a1)
{
  sub_1000541D4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000540C8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000541D4(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10005410C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100208BE0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000541BC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000541D4(uint64_t a1)
{
  *a1 = &off_100208BE0;
  sub_100054614(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100054340(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000541D4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000543A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000543E4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100054450(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000541D4(v1);

  return std::ios::~ios();
}

void sub_10005449C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000541D4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100054500(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000541D4(v1);

  return std::ios::~ios();
}

void sub_100054560(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000541D4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000545DC(uint64_t a1)
{
  sub_1000541D4(a1);

  operator delete();
}

uint64_t sub_100054614(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100054788((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100054760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100054788(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 382;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 382;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10005496C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 504) = -1;
  sub_1000549B4(a1, a2);
  return a1;
}

uint64_t sub_1000549B4(uint64_t a1, uint64_t a2)
{
  result = sub_100052B84(a1);
  v5 = *(a2 + 504);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_100208C50[v5])(&v6, a2);
    *(a1 + 504) = v5;
  }

  return result;
}

__n128 sub_100054A1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0x4796C6F6BLL;
  *(v2 + 8) = 512;
  *(v2 + 12) = *(a2 + 12);
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  *(v2 + 56) = *(a2 + 56);
  *(v2 + 60) = *(a2 + 60);
  *(v2 + 64) = *(a2 + 64);
  *(v2 + 80) = *(a2 + 80);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  v7 = *(a2 + 120);
  *(v2 + 136) = *(a2 + 136);
  *(v2 + 120) = v7;
  *(v2 + 104) = v6;
  *(v2 + 88) = v5;
  v8 = *(a2 + 152);
  v9 = *(a2 + 168);
  v10 = *(a2 + 184);
  *(v2 + 200) = *(a2 + 200);
  *(v2 + 184) = v10;
  *(v2 + 168) = v9;
  *(v2 + 152) = v8;
  v11 = *(a2 + 248);
  v12 = *(a2 + 264);
  v13 = *(a2 + 280);
  *(v2 + 232) = *(a2 + 232);
  *(v2 + 264) = v12;
  *(v2 + 280) = v13;
  *(v2 + 248) = v11;
  v15 = *(a2 + 312);
  v14 = *(a2 + 328);
  v16 = *(a2 + 296);
  *(v2 + 344) = *(a2 + 344);
  *(v2 + 312) = v15;
  *(v2 + 328) = v14;
  *(v2 + 296) = v16;
  *(v2 + 216) = *(a2 + 216);
  *(v2 + 352) = *(a2 + 352);
  v17 = *(a2 + 360);
  v18 = *(a2 + 376);
  v19 = *(a2 + 408);
  *(v2 + 392) = *(a2 + 392);
  *(v2 + 408) = v19;
  *(v2 + 360) = v17;
  *(v2 + 376) = v18;
  result = *(a2 + 424);
  v21 = *(a2 + 440);
  v22 = *(a2 + 472);
  *(v2 + 456) = *(a2 + 456);
  *(v2 + 472) = v22;
  *(v2 + 424) = result;
  *(v2 + 440) = v21;
  *(v2 + 488) = *(a2 + 488);
  *(v2 + 492) = *(a2 + 492);
  return result;
}

__n128 sub_100054B38(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 2003069043;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 12) = *(a2 + 12);
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(v2 + 62) = *(a2 + 62);
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 16) = v3;
  *(v2 + 70) = 0;
  result = *(a2 + 72);
  *(v2 + 88) = *(a2 + 88);
  *(v2 + 72) = result;
  *(v2 + 96) = *(a2 + 96);
  *(v2 + 100) = *(a2 + 100);
  *(v2 + 104) = *(a2 + 104);
  return result;
}

__n128 sub_100054BA0(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void **sub_100054BB0(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

__n128 sub_100054BC4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = *(a2 + 16);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 16) = result;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return result;
}

BOOL sub_100054BF0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2 && (v2 = a1[1], v2 == a2[1]))
  {
    return memcmp(a1 + 2, a2 + 2, v2 >> 3) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100054D24(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *a1 = &off_100208CD0;
  v5 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *sub_100055F1C(a1 + 64, a2) = &off_100208C90;
  if (*(a2 + 88) == 1)
  {
    v6 = *(a2 + 96);
    *(a1 + 16) = v6;
    *(a1 + 24) = 1;
    *(a1 + 32) = 2 * v6;
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  return a1;
}

void sub_100054DD8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    sub_10000367C(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100054DF4(uint64_t a1)
{
  sub_100059D1C(a1);

  operator delete();
}

__n128 sub_100054E54@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_100054F6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!sub_1000242EC(a3, a4))
  {
    v7 = *(a3 + 104) != 1 || *(a3 + 48) == 0;
    if (!v7)
    {
      return -45;
    }
  }

  v91 = v93;
  v92 = xmmword_1001C76E0;
  __p = v90;
  v89 = xmmword_1001C76E0;
  v8 = sub_100056374(a3, a4);
  v9 = v8;
  if (v8 > 0x10)
  {
    if (v8 >= 0x555555555555556)
    {
      sub_100026DEC("get_next_capacity, allocator's max size reached");
    }

    v10 = operator new(24 * v8);
    sub_100056CB0(&__p, v10, v9, __p + 24 * v89, 0, 0);
  }

  sub_1001442BC(a1 + 64, *(a3 + 24), (a4[26] - *(a3 + 208)) & ~((a4[26] - *(a3 + 208)) >> 63), &v91);
  sub_100026714(v84, a4);
  v76[0] = 0;
  v83 = 0;
  v51 = *(v91 + 3);
  sub_100026714(&v72, a3);
  if (!v92)
  {
    v37 = 0;
    v53 = 0;
    goto LABEL_85;
  }

  v50 = a4;
  v53 = 0;
  v37 = 0;
  v11 = v91;
  v12 = (v91 + 64 * v92);
  while (1)
  {
    v13 = *(v11 + 4);
    if (v13)
    {
      if (sub_1000242EC(&v72, v84))
      {
        break;
      }
    }

    if (v13 > v74)
    {
      sub_100024C18(&v72);
    }

    if (sub_1000242EC(&v72, v84))
    {
      *&v69 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
      *(&v69 + 1) = 75;
      v70 = 16;
      sub_1000565D8(&v54, &v69);
      sub_1000026BC(v61, "Udif: advanced buffer, needs to read ", 37);
      sub_1001462E8(v61, v11);
      sub_1000026BC(v61, " but buffer is full", 19);
      std::ios_base::getloc((v61 + *(v61[0] - 24)));
      v38 = std::locale::use_facet(&v67, &std::ctype<char>::id);
      (v38->__vftable[2].~facet_0)(v38, 10);
      std::locale::~locale(&v67);
      std::ostream::put();
      std::ostream::flush();
      std::ostream::~ostream();
      sub_1000577C0(&v54);
      goto LABEL_84;
    }

    sub_100026638(&v69, &v72);
    v14 = v71;
    if (v13 <= v71)
    {
      if (*v11)
      {
        sub_1000587B8(&v67, &v69, *(v11 + 2), 0, *(v11 + 1), *(v11 + 4));
        if (v53)
        {
          *&v65 = v11;
          v17 = sub_100058898(a2 + 16, v11, &unk_1001CB4FC, &v65);
          (*(*v17[5] + 136))(&v54);
          v18 = __p + 24 * v89;
          if (v89 == *(&v89 + 1))
          {
            sub_1000591CC(&__p, v18, 1, &v54, &v65);
          }

          else
          {
            *v18 = 0;
            v18[4] = 0;
            *(v18 + 1) = 0;
            if (BYTE4(v54) == 1)
            {
              *v18 = v54;
              v18[4] = 1;
            }

            *(v18 + 2) = v56;
            v56 = 0;
            v19 = *(v18 + 2);
            if (v19)
            {
              *v19 = v18;
            }

            *&v89 = v89 + 1;
          }

          sub_100024AB4(&v72, v13);
          goto LABEL_28;
        }

        v54 = v11;
        v21 = sub_100058898(a2 + 16, v11, &unk_1001CB4FC, &v54);
        v22 = (*(*v21[5] + 128))(v21[5], &v67);
        v37 = v22;
        if (v22 < 0)
        {
          v20 = 0;
          v16 = 2;
        }

        else if (*(a2 + 56) == 1 && v11[8] > v22)
        {
          *&v65 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
          *(&v65 + 1) = 75;
          v66 = 16;
          sub_1000568B0(&v54, &v65);
          sub_1000026BC(v61, "Error: Not enough data read. expected: ", 39);
          std::ostream::operator<<();
          sub_1000026BC(v61, " read: ", 7);
          std::ostream::operator<<();
          sub_1000026BC(v61, " backend: ", 10);
          std::ostream::operator<<();
          std::ios_base::getloc((v61 + *(v61[0] - 24)));
          v23 = std::locale::use_facet(&v87, &std::ctype<char>::id);
          (v23->__vftable[2].~facet_0)(v23, 10);
          std::locale::~locale(&v87);
          std::ostream::put();
          std::ostream::flush();
          std::ostream::~ostream();
          sub_100058A34(&v54);
          std::ios::~ios();
          v20 = 0;
          v16 = 2;
          v37 = -5;
        }

        else
        {
          v24 = sub_100056A1C(a1, &v67, v11, &v91, v14);
          v13 -= v24;
          sub_100024AB4(&v72, v13);
          if (v92)
          {
            v25 = 0;
            v26 = 0;
            v27 = v92 << 6;
            v28 = (v91 + 32);
            do
            {
              v30 = *v28;
              v28 += 8;
              v29 = v30;
              v31 = v30 + v25;
              v32 = v30 + v26;
              v33 = v14 - v26;
              v34 = v30 + v26 > v14;
              if (v30 + v26 >= v14)
              {
                v26 = 0;
              }

              else
              {
                v26 = v32;
              }

              if (v34)
              {
                v26 = v29;
                v35 = v33;
              }

              else
              {
                v35 = 0;
              }

              v25 = v31 + v35;
              v27 -= 64;
            }

            while (v27);
          }

          else
          {
            v25 = 0;
          }

          v36 = sub_10002554C(a3);
          v51 += v24;
          sub_100024580(&v54, a3 + 120, (v50 + 15), v51, v25 - v24, v36);
          if (!sub_1000242EC(a3, v50) && *(a3 + 104) == 1 && *(a3 + 48))
          {
            sub_1000257F4(&v54, (a3 + 48));
          }

          sub_100056AB4(v76, &v54);
          if (v64)
          {
            sub_10000367C(v64);
          }

          if (v63)
          {
            sub_10000367C(v63);
          }

          if (v62)
          {
            sub_10000367C(v62);
          }

          if (v60)
          {
            sub_10000367C(v60);
          }

          if (v58)
          {
            sub_10000367C(v58);
          }

          if (v57)
          {
            sub_10000367C(v57);
          }

          sub_1000246F4(v76, &v54);
          sub_100027250(&v72, &v54);
          if (v59)
          {
            sub_10000367C(v59);
          }

          if (v55)
          {
            sub_10000367C(v55);
          }

          sub_1000249F0(&v72, v13);
          sub_100024448(v76, &v54);
          sub_100027250(v84, &v54);
          if (v59)
          {
            sub_10000367C(v59);
          }

          if (v55)
          {
            sub_10000367C(v55);
          }

LABEL_28:
          v16 = 0;
          v20 = 1;
        }

        if (*(&v67 + 1))
        {
          sub_10000367C(*(&v67 + 1));
        }

        if ((v20 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        bzero(v69, v13);
        sub_100024AB4(&v72, v13);
      }

      v16 = 0;
      v53 += v13;
      goto LABEL_35;
    }

    *&v67 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
    *(&v67 + 1) = 75;
    v68 = 16;
    sub_100056744(&v54, &v67);
    sub_1000026BC(v61, "Udif: needs to read ", 20);
    sub_1001462E8(v61, v11);
    sub_1000026BC(v61, " but buffer is too small ", 25);
    std::ostream::operator<<();
    std::ios_base::getloc((v61 + *(v61[0] - 24)));
    v15 = std::locale::use_facet(&v65, &std::ctype<char>::id);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    std::ostream::~ostream();
    sub_100058020(&v54);
    std::ios::~ios();
    v16 = 2;
    v37 = -28;
LABEL_35:
    if (*(&v69 + 1))
    {
      sub_10000367C(*(&v69 + 1));
    }

    if (!v16)
    {
      v11 += 16;
      if (v11 != v12)
      {
        continue;
      }
    }

    goto LABEL_85;
  }

  *&v69 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
  *(&v69 + 1) = 75;
  v70 = 16;
  sub_10005646C(&v54, &v69);
  sub_1000026BC(v61, "Udif: needs to read ", 20);
  sub_1001462E8(v61, v11);
  sub_1000026BC(v61, " but buffer is full", 19);
  std::ios_base::getloc((v61 + *(v61[0] - 24)));
  v39 = std::locale::use_facet(&v67, &std::ctype<char>::id);
  (v39->__vftable[2].~facet_0)(v39, 10);
  std::locale::~locale(&v67);
  std::ostream::put();
  std::ostream::flush();
  std::ostream::~ostream();
  sub_100056F60(&v54);
LABEL_84:
  std::ios::~ios();
  v37 = -28;
LABEL_85:
  v40 = *(a2 + 16);
  if (v40 != (a2 + 24))
  {
    do
    {
      (*(*v40[5] + 152))(v40[5]);
      v41 = v40[1];
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = v40[2];
          v7 = *v42 == v40;
          v40 = v42;
        }

        while (!v7);
      }

      v40 = v42;
    }

    while (v42 != (a2 + 24));
  }

  if ((v37 & 0x8000000000000000) == 0)
  {
    if (v89)
    {
      v43 = __p;
      v44 = (__p + 24 * v89);
      v45 = v91;
      while (1)
      {
        do
        {
          v46 = v45[16];
          v45 += 16;
        }

        while (!v46);
        v47 = sub_10003C008(v43);
        v37 = v47;
        if (v47 < 0)
        {
          break;
        }

        if (*(a2 + 56) == 1 && v45[8] > v47)
        {
          *&v69 = "io_result_t DiskImageUDIFRead<UDIFReader<locks::None>, DiskImageUDIF>::read(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &) [UDIF = UDIFReader<locks::None>, UDIFVariant = DiskImageUDIF]";
          *(&v69 + 1) = 75;
          v70 = 16;
          sub_100056B44(&v54, &v69);
          sub_1000026BC(v61, "Error: Not enough data read. expected: ", 39);
          std::ostream::operator<<();
          sub_1000026BC(v61, " read: ", 7);
          std::ostream::operator<<();
          sub_1000026BC(v61, " backend: ", 10);
          std::ostream::operator<<();
          std::ios_base::getloc((v61 + *(v61[0] - 24)));
          v49 = std::locale::use_facet(&v67, &std::ctype<char>::id);
          (v49->__vftable[2].~facet_0)(v49, 10);
          std::locale::~locale(&v67);
          std::ostream::put();
          std::ostream::flush();
          std::ostream::~ostream();
          sub_100059584(&v54);
          std::ios::~ios();
          v37 = -5;
          break;
        }

        v43 += 6;
        if (v43 == v44)
        {
          goto LABEL_100;
        }
      }
    }

    else
    {
LABEL_100:
      v37 = v53;
    }
  }

  if (v75)
  {
    sub_10000367C(v75);
  }

  if (v73)
  {
    sub_10000367C(v73);
  }

  if (v83 == 1)
  {
    if (v82)
    {
      sub_10000367C(v82);
    }

    if (v81)
    {
      sub_10000367C(v81);
    }

    if (v80)
    {
      sub_10000367C(v80);
    }

    if (v79)
    {
      sub_10000367C(v79);
    }

    if (v78)
    {
      sub_10000367C(v78);
    }

    if (v77)
    {
      sub_10000367C(v77);
    }
  }

  if (v86)
  {
    sub_10000367C(v86);
  }

  if (v85)
  {
    sub_10000367C(v85);
  }

  if (*(&v89 + 1) && v90 != __p)
  {
    operator delete(__p);
  }

  if (*(&v92 + 1) && v93 != v91)
  {
    operator delete(v91);
  }

  return v37;
}

void sub_100055C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002440(&STACK[0x400]);
  sub_10002568C(&STACK[0x4E0]);
  sub_100002440(&STACK[0x7B8]);
  if (STACK[0x8B0] && a11 != STACK[0x8A0])
  {
    operator delete(STACK[0x8A0]);
  }

  if (STACK[0xA48])
  {
    if (a12 != STACK[0xA38])
    {
      operator delete(STACK[0xA38]);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100055DCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100039940(v14, a3);
  sub_1000246F4(v15, v11);
  v5 = sub_100024448(v15, v8);
  v6 = (*(*a1 + 160))(a1, a2, v11, v8, v5);
  if (v10)
  {
    sub_10000367C(v10);
  }

  if (v9)
  {
    sub_10000367C(v9);
  }

  if (v13)
  {
    sub_10000367C(v13);
  }

  if (v12)
  {
    sub_10000367C(v12);
  }

  sub_1000036E8(v14);
  return v6;
}

void sub_100055ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&a10);
  sub_100002440(&a38);
  sub_1000036E8(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_100055F1C(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(a2 + 8);
  v2 = (a2 + 16);
  v3 = *(a2 + 16);
  *result = &off_100226F00;
  *(result + 16) = v3;
  v4 = result + 16;
  v5 = *(a2 + 24);
  *(result + 24) = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *(a2 + 8) = v2;
    *v2 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    *(result + 8) = v4;
  }

  *(result + 32) = *(a2 + 32);
  v6 = (a2 + 40);
  v7 = *(a2 + 40);
  *(result + 40) = v7;
  v8 = result + 40;
  v9 = *(a2 + 48);
  *(result + 48) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 32) = v6;
    *v6 = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    *(result + 32) = v8;
  }

  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v10 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(result + 72) = v10;
  v11 = *(a2 + 80);
  *(result + 96) = *(a2 + 96);
  *(result + 80) = v11;
  *(result + 104) = *(a2 + 104);
  v12 = (a2 + 112);
  v13 = *(a2 + 112);
  *(result + 112) = v13;
  v14 = result + 112;
  v15 = *(a2 + 120);
  *(result + 120) = v15;
  if (v15)
  {
    *(v13 + 16) = v14;
    *(a2 + 104) = v12;
    *v12 = 0;
    *(a2 + 120) = 0;
  }

  else
  {
    *(result + 104) = v14;
  }

  return result;
}

__n128 sub_10005600C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[1];
  *a2 = result;
  a2[1].n128_u64[0] = a1[2].n128_u64[0];
  a2[1].n128_u32[2] = 1;
  return result;
}

uint64_t sub_1000560BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  v3 = a1 + 16;
  *a1 = off_100208E40;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = a1 + 40;
  *(a1 + 48) = 0;
  sub_100143028(a2 + 64, v7);
  v6[0] = v3;
  v6[1] = v4;
  sub_10005618C(v6, v7);
  if (v9)
  {
    sub_10000367C(v9);
  }

  sub_100056314(v7, v8);
  *(a1 + 56) = 1;
  return a1;
}

void sub_100056168(_Unwind_Exception *a1)
{
  v5 = *(v1 + 48);
  if (v5)
  {
    sub_10000367C(v5);
  }

  sub_100056314(v2, *v3);
  _Unwind_Resume(a1);
}

void *sub_10005618C(void *a1, uint64_t a2)
{
  sub_1000562A8(*a1, a2);
  v4 = a1[1];
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    sub_10000367C(v6);
  }

  return a1;
}

void *sub_1000561D8(void *a1)
{
  *a1 = off_100208E40;
  v2 = a1[6];
  if (v2)
  {
    sub_10000367C(v2);
  }

  sub_100056314((a1 + 2), a1[3]);
  return a1;
}

void sub_100056230(void *a1)
{
  *a1 = off_100208E40;
  v2 = a1[6];
  if (v2)
  {
    sub_10000367C(v2);
  }

  sub_100056314((a1 + 2), a1[3]);

  operator delete();
}

void sub_1000562A8(void *a1, void *a2)
{
  v4 = a1 + 1;
  sub_100056314(a1, a1[1]);
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void sub_100056314(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100056314(a1, *a2);
    sub_100056314(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      sub_10000367C(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_100056374(uint64_t a1, void *a2)
{
  v2 = *(a1 + 136);
  v12 = *(a1 + 120);
  v13 = v2;
  v14 = *(a1 + 152);
  v15 = *(a1 + 168);
  v3 = *(a1 + 184);
  v16 = *(a1 + 176);
  v17 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 192);
  v4 = a2[15];
  v5 = a2[16];
  v6 = a2[17];
  v7 = a2[23];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; ; ++i)
  {
    v9 = v12 == v4 && *(&v12 + 1) == v5;
    if (v9 && v13 == v6)
    {
      break;
    }

    sub_100023DCC(&v12);
  }

  if (v7)
  {
    sub_10000367C(v7);
  }

  if (v17)
  {
    sub_10000367C(v17);
  }

  return i;
}

void sub_100056448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (v17)
  {
    sub_10000367C(v17);
  }

  if (a17)
  {
    sub_10000367C(a17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10005646C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100056E98(a1, a2);
  *a1 = off_100208EA0;
  a1[45] = &off_100208FA0;
  a1[46] = &off_100208FC8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100208EA0;
  a1[45] = off_100208F28;
  a1[46] = off_100208F50;
  return a1;
}

void sub_100056570(_Unwind_Exception *a1)
{
  sub_100056F60(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100056594(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100056F60(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000565D8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000576F8(a1, a2);
  *a1 = off_1002090C0;
  a1[45] = &off_1002091C0;
  a1[46] = &off_1002091E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002090C0;
  a1[45] = off_100209148;
  a1[46] = off_100209170;
  return a1;
}

void sub_1000566DC(_Unwind_Exception *a1)
{
  sub_1000577C0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100056700(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000577C0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100056744(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100057F58(a1, a2);
  *a1 = off_1002092E0;
  a1[45] = &off_1002093E0;
  a1[46] = &off_100209408;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002092E0;
  a1[45] = off_100209368;
  a1[46] = off_100209390;
  return a1;
}

void sub_100056848(_Unwind_Exception *a1)
{
  sub_100058020(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005686C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100058020(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000568B0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10005896C(a1, a2);
  *a1 = off_100209500;
  a1[45] = &off_100209600;
  a1[46] = &off_100209628;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100209500;
  a1[45] = off_100209588;
  a1[46] = off_1002095B0;
  return a1;
}

void sub_1000569B4(_Unwind_Exception *a1)
{
  sub_100058A34(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000569D8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100058A34(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100056A1C(uint64_t a1, void **a2, uint64_t a3, void *a4, unint64_t a5)
{
  v5 = a4[1];
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = v5 << 6;
  v9 = (*a4 + 32);
  do
  {
    v11 = *v9;
    v9 += 8;
    v10 = v11;
    v12 = v11 + v6;
    v13 = v11 + v7;
    v14 = a5 - v7;
    v15 = v11 + v7 > a5;
    if (v11 + v7 >= a5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v13;
    }

    if (v15)
    {
      v7 = v10;
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v6 = v12 + v16;
    v8 -= 64;
  }

  while (v8);
  if (v6 <= a5 + a5 * *(a1 + 24))
  {
    return 0;
  }

  v17 = *(a3 + 48);
  memmove(*a2, *a2 + v17, *(a3 + 32) - v17);
  return v17;
}

uint64_t sub_100056AB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 720) == 1)
  {
    v4 = *(a1 + 680);
    if (v4)
    {
      sub_10000367C(v4);
    }

    v5 = *(a1 + 504);
    if (v5)
    {
      sub_10000367C(v5);
    }

    v6 = *(a1 + 456);
    if (v6)
    {
      sub_10000367C(v6);
    }

    v7 = *(a1 + 280);
    if (v7)
    {
      sub_10000367C(v7);
    }

    v8 = *(a1 + 160);
    if (v8)
    {
      sub_10000367C(v8);
    }

    v9 = *(a1 + 72);
    if (v9)
    {
      sub_10000367C(v9);
    }

    *(a1 + 720) = 0;
  }

  result = sub_1000269AC(a1, a2);
  *(a1 + 720) = 1;
  return result;
}

void *sub_100056B44(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000594BC(a1, a2);
  *a1 = off_100209720;
  a1[45] = &off_100209820;
  a1[46] = &off_100209848;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100209720;
  a1[45] = off_1002097A8;
  a1[46] = off_1002097D0;
  return a1;
}

void sub_100056C48(_Unwind_Exception *a1)
{
  sub_100059584(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100056C6C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100059584(a1);
  std::ios::~ios();
  return a1;
}

void sub_100056CB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_100056D60(a1, *a1, a4, *a1 + 24 * a1[1], a2, a5, a6);
  if (v10 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v11 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v11;
  a1[2] = a3;
}

void sub_100056D3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_100056D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a5 + v7;
      *v8 = 0;
      *(v8 + 4) = 0;
      *(v8 + 8) = 0;
      v9 = a2 + v7;
      if (*(a2 + v7 + 4) == 1)
      {
        *v8 = *(a2 + v7);
        *(v8 + 4) = 1;
      }

      *(v8 + 16) = *(v9 + 16);
      *(v9 + 16) = 0;
      v10 = *(v8 + 16);
      if (v10)
      {
        *v10 = v8;
      }

      v7 += 24;
    }

    while (a2 + v7 != a3);
    a5 += v7;
  }

  if (a6)
  {
    v11 = 0;
    v12 = a6;
    do
    {
      v13 = a5 + v11;
      *v13 = 0;
      *(v13 + 4) = 0;
      *(v13 + 8) = 0;
      v14 = a7 + v11;
      if (*(a7 + v11 + 4) == 1)
      {
        *v13 = *(a7 + v11);
        *(v13 + 4) = 1;
      }

      *(v13 + 16) = *(v14 + 16);
      *(v14 + 16) = 0;
      v15 = *(v13 + 16);
      if (v15)
      {
        *v15 = v13;
      }

      v11 += 24;
      --v12;
    }

    while (v12);
  }

  if (a3 != a4)
  {
    v16 = 0;
    do
    {
      v17 = a5 + 24 * a6 + v16;
      *v17 = 0;
      *(v17 + 4) = 0;
      *(v17 + 8) = 0;
      v18 = a3 + v16;
      if (*(a3 + v16 + 4) == 1)
      {
        *v17 = *(a3 + v16);
        *(v17 + 4) = 1;
      }

      *(v17 + 16) = *(v18 + 16);
      *(v18 + 16) = 0;
      v19 = *(v17 + 16);
      if (v19)
      {
        *v19 = v17;
      }

      v16 += 24;
    }

    while (a3 + v16 != a4);
  }
}

uint64_t sub_100056E98(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100209038;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100056F48(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100056F60(uint64_t a1)
{
  *a1 = &off_100209038;
  sub_1000573A0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000570CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100056F60(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100057134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100057170(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1000571DC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100056F60(v1);

  return std::ios::~ios();
}

void sub_100057228(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100056F60(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005728C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100056F60(v1);

  return std::ios::~ios();
}

void sub_1000572EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100056F60(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100057368(uint64_t a1)
{
  sub_100056F60(a1);

  operator delete();
}

uint64_t sub_1000573A0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100057514((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000574EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100057514(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 178;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 178;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000576F8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100209258;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000577A8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000577C0(uint64_t a1)
{
  *a1 = &off_100209258;
  sub_100057C00(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10005792C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000577C0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100057994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000579D0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100057A3C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000577C0(v1);

  return std::ios::~ios();
}

void sub_100057A88(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000577C0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100057AEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000577C0(v1);

  return std::ios::~ios();
}

void sub_100057B4C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000577C0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100057BC8(uint64_t a1)
{
  sub_1000577C0(a1);

  operator delete();
}

uint64_t sub_100057C00(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100057D74((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100057D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100057D74(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 187;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 187;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100057F58(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100209478;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100058008(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100058020(uint64_t a1)
{
  *a1 = &off_100209478;
  sub_100058460(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10005818C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100058020(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000581F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100058230(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10005829C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100058020(v1);

  return std::ios::~ios();
}

void sub_1000582E8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100058020(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005834C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100058020(v1);

  return std::ios::~ios();
}

void sub_1000583AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100058020(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100058428(uint64_t a1)
{
  sub_100058020(a1);

  operator delete();
}

uint64_t sub_100058460(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1000585D4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000585AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000585D4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 196;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 196;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000587B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  *a1 = *a2 + a4;
  *(a1 + 8) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = *(a2 + 40);
  sub_100058830(a2, a4, (a1 + 48));
  return a1;
}

void sub_100058818(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10000367C(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100058830(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(result + 104))
  {
    sub_10008A29C(result + 48, *(result + 24), *(result + 24) + a2, v5);
    sub_10008A2D0(a3, v5);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a3 = 0;
  }

  a3[56] = v4;
}

uint64_t *sub_100058898(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t sub_10005896C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100209698;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100058A1C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100058A34(uint64_t a1)
{
  *a1 = &off_100209698;
  sub_100058E74(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100058BA0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100058A34(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100058C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100058C44(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100058CB0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100058A34(v1);

  return std::ios::~ios();
}

void sub_100058CFC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100058A34(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100058D60(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100058A34(v1);

  return std::ios::~ios();
}

void sub_100058DC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100058A34(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100058E3C(uint64_t a1)
{
  sub_100058A34(a1);

  operator delete();
}

uint64_t sub_100058E74(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100058FE8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100058FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100058FE8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 217;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 217;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_1000591CC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_10005927C(a1, a3);
  if (v11 >= 0x555555555555556)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(24 * v11);
  sub_1000592F4(a1, v13, v12, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t sub_10005927C(uint64_t a1, uint64_t a2)
{
  v2 = 0x555555555555555;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x555555555555555 - v4 < a2 - v4 + v3)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = v3 + a2;
  if (v8 < 0x555555555555555)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void sub_1000592F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_1000593A4(a1, *a1, a4, *a1 + 24 * a1[1], a2, a5, a6);
  if (v10 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v11 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v11;
  a1[2] = a3;
}

void sub_100059380(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1000593A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a5 + v7;
      *v8 = 0;
      *(v8 + 4) = 0;
      *(v8 + 8) = 0;
      v9 = a2 + v7;
      if (*(a2 + v7 + 4) == 1)
      {
        *v8 = *(a2 + v7);
        *(v8 + 4) = 1;
      }

      *(v8 + 16) = *(v9 + 16);
      *(v9 + 16) = 0;
      v10 = *(v8 + 16);
      if (v10)
      {
        *v10 = v8;
      }

      v7 += 24;
    }

    while (a2 + v7 != a3);
    a5 += v7;
  }

  *a5 = 0;
  *(a5 + 4) = 0;
  *(a5 + 8) = 0;
  if (*(a7 + 4) == 1)
  {
    *a5 = *a7;
    *(a5 + 4) = 1;
  }

  *(a5 + 16) = *(a7 + 16);
  *(a7 + 16) = 0;
  v11 = *(a5 + 16);
  if (v11)
  {
    *v11 = a5;
  }

  if (a3 != a4)
  {
    v12 = 0;
    do
    {
      v13 = a5 + 24 * a6 + v12;
      *v13 = 0;
      *(v13 + 4) = 0;
      *(v13 + 8) = 0;
      v14 = a3 + v12;
      if (*(a3 + v12 + 4) == 1)
      {
        *v13 = *(a3 + v12);
        *(v13 + 4) = 1;
      }

      *(v13 + 16) = *(v14 + 16);
      *(v14 + 16) = 0;
      v15 = *(v13 + 16);
      if (v15)
      {
        *v15 = v13;
      }

      v12 += 24;
    }

    while (a3 + v12 != a4);
  }
}

uint64_t sub_1000594BC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002098B8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10005956C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100059584(uint64_t a1)
{
  *a1 = &off_1002098B8;
  sub_1000599C4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000596F0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100059584(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100059758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100059794(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100059800(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100059584(v1);

  return std::ios::~ios();
}

void sub_10005984C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100059584(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000598B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100059584(v1);

  return std::ios::~ios();
}

void sub_100059910(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100059584(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10005998C(uint64_t a1)
{
  sub_100059584(a1);

  operator delete();
}

uint64_t sub_1000599C4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100059B38((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100059B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100059B38(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 257;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 257;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100059D1C(uint64_t a1)
{
  *a1 = &off_100226F00;
  sub_100056314(a1 + 104, *(a1 + 112));
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    sub_10000367C(v3);
  }

  sub_1000085B4(a1 + 32, *(a1 + 40));
  sub_1000085B4(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_100059DAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000F84F0(v4, *a1);
  v11 = 2003069043;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  *v16 = *v9;
  *&v16[14] = *(&v9[1] + 6);
  v17 = 0;
  v18 = *&v9[3];
  v19 = v9[5];
  v20 = v9[6];
  v21 = v10;
  v22 = 2;
  v23 = 2;
  sub_10005496C(a2, &v11);
  *(a2 + 512) = v23;
  *(a2 + 520) = 1;
  return sub_100052B84(&v11);
}

void sub_100059EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a2)
  {
    sub_100052B84(va);
    __cxa_begin_catch(exception_object);
    sub_100053548();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100059F04@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10005A030(&v5, *a1, a2);
  v6[0] = v5;
  v7 = 3;
  sub_10005496C(v8, v6);
  v9 = 1;
  sub_10005496C(a3, v8);
  *(a3 + 512) = v9;
  *(a3 + 520) = 1;
  sub_100052B84(v8);
  return sub_100052B84(v6);
}

void sub_100059FBC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a2)
  {
    sub_100052B84(&STACK[0x210]);
    sub_100052B84(va);
    __cxa_begin_catch(a1);
    sub_100053548();
  }

  _Unwind_Resume(a1);
}

unint64_t *sub_10005A030(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*a2 + 40))(a2);
  v6 = 512;
  if (a3)
  {
    v6 = a3;
  }

  if (v5 % v6)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100051B14(exception, "raw_header", 0x16u);
  }

  *a1 = v6;
  a1[1] = v5 / v6;
  return a1;
}

uint64_t sub_10005A0EC(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  *(a1 + 8) = 0;
  *a1 = off_100209938;
  v5 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = a3;
  if (!a4)
  {
    if (!((*(**a2 + 40))() % a3))
    {
      return a1;
    }

LABEL_9:
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_100233158;
    v11 = std::generic_category();
    exception[1] = 152;
    exception[2] = v11;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Size is not a multiple of block size";
  }

  if (a4 % a3)
  {
    goto LABEL_9;
  }

  v6 = (*(*a1 + 72))(a1, a4);
  if (v6)
  {
    v7 = __cxa_allocate_exception(0x40uLL);
    *v7 = &off_100233158;
    v8 = std::generic_category();
    v7[1] = v6;
    v7[2] = v8;
    *(v7 + 24) = 0;
    *(v7 + 48) = 0;
    v7[7] = "set size failed";
  }

  return a1;
}

void sub_10005A2A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_10000367C(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10005A2CC(void *a1)
{
  *a1 = off_100209938;
  v2 = a1[3];
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

void sub_10005A318(void *a1)
{
  *a1 = off_100209938;
  v1 = a1[3];
  if (v1)
  {
    sub_10000367C(v1);
  }

  operator delete();
}

uint64_t sub_10005A588(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __p = v25;
  v24 = xmmword_1001C76E0;
  v7 = sub_100056374(a3, a4);
  v8 = v7;
  if (v7 > 0x10)
  {
    if (v7 >= 0x555555555555556)
    {
      sub_100026DEC("get_next_capacity, allocator's max size reached");
    }

    v9 = operator new(24 * v7);
    sub_100056CB0(&__p, v9, v8, __p + 24 * v24, 0, 0);
  }

  v22[0] = &__p;
  v22[1] = a2;
  sub_100026714(v19, a3);
  sub_100026714(&v16, a4);
  sub_10005ACA8(v22, v19, &v16, 0xFFFFFFFFFFFFFFFFLL);
  if (v18)
  {
    sub_10000367C(v18);
  }

  if (v17)
  {
    sub_10000367C(v17);
  }

  if (v21)
  {
    sub_10000367C(v21);
  }

  if (v20)
  {
    sub_10000367C(v20);
  }

  (*(**(a2 + 16) + 152))(*(a2 + 16));
  if (v24)
  {
    v10 = 0;
    v11 = __p;
    v12 = 24 * v24;
    do
    {
      v13 = sub_10003C008(v11);
      if (v13 < 0)
      {
        break;
      }

      v10 += v13;
      v11 += 6;
      v13 = v10;
      v12 -= 24;
    }

    while (v12);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (*(&v24 + 1) && v25 != __p)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_10005A774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&a9);
  sub_100002440(&a37);
  if (a66)
  {
    if (v66 != __p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005A7C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = ((a4[26] - *(a3 + 208)) & ~((a4[26] - *(a3 + 208)) >> 63)) + *(a3 + 24);
  if (v8 > (*(**(a1 + 16) + 40))(*(a1 + 16)))
  {
    *&v24 = "io_result_t DiskImageRaw::write(DiskImage::Context &, const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v24 + 1) = 31;
    v25 = 16;
    sub_10005B1F0(&__p, &v24);
    sub_1000026BC(v29, "Requested write is out of range - offset ", 41);
    std::ostream::operator<<();
    sub_1000026BC(v29, " length ", 8);
    std::ostream::operator<<();
    sub_1000026BC(v29, " backend size ", 14);
    (*(**(a1 + 16) + 40))(*(a1 + 16));
    std::ostream::operator<<();
    sub_10005B318(&__p);
    return -34;
  }

  else
  {
    __p = v28;
    v27 = xmmword_1001C76E0;
    v9 = sub_100056374(a3, a4);
    v10 = v9;
    if (v9 > 0x10)
    {
      if (v9 >= 0x555555555555556)
      {
        sub_100026DEC("get_next_capacity, allocator's max size reached");
      }

      v11 = operator new(24 * v9);
      sub_100056CB0(&__p, v11, v10, __p + 24 * v27, 0, 0);
    }

    *&v24 = &__p;
    *(&v24 + 1) = a2;
    sub_100026714(&v21, a3);
    sub_100026714(v18, a4);
    sub_10005B35C(&v24, &v21, v18, 0xFFFFFFFFFFFFFFFFLL);
    if (v20)
    {
      sub_10000367C(v20);
    }

    if (v19)
    {
      sub_10000367C(v19);
    }

    if (v23)
    {
      sub_10000367C(v23);
    }

    if (v22)
    {
      sub_10000367C(v22);
    }

    (*(**(a2 + 16) + 152))(*(a2 + 16));
    if (v27)
    {
      v12 = 0;
      v13 = __p;
      v14 = 24 * v27;
      do
      {
        v15 = sub_10003C008(v13);
        if (v15 < 0)
        {
          break;
        }

        v12 += v15;
        v13 += 6;
        v15 = v12;
        v14 -= 24;
      }

      while (v14);
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (*(&v27 + 1) && v28 != __p)
    {
      operator delete(__p);
    }
  }

  return v16;
}

uint64_t sub_10005AB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  for (i = (a3 + 8); ; i += 2)
  {
    result = (*(**(a2 + 16) + 24))(*(a2 + 16), *(a1 + 32) * *(i - 1), *i * *(a1 + 32));
    if (result)
    {
      break;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_10005ABF0(void *a1)
{
  *a1 = off_100209A18;
  v2 = a1[3];
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

void sub_10005AC3C(void *a1)
{
  *a1 = off_100209A18;
  v1 = a1[3];
  if (v1)
  {
    sub_10000367C(v1);
  }

  operator delete();
}

unint64_t sub_10005ACA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100026898(&v26, a2);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  v30 = *(a2 + 136);
  v31 = *(a2 + 152);
  v32 = *(a2 + 168);
  v8 = *(a2 + 176);
  v9 = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v33 = v8;
  v34 = v9;
  v36 = *(a2 + 216);
  v35 = *(a2 + 208);
  sub_100026898(&v15, a3);
  v17 = *(a3 + 112);
  v18 = *(a3 + 120);
  v19 = *(a3 + 136);
  v20 = *(a3 + 152);
  v21 = *(a3 + 168);
  v10 = *(a3 + 176);
  v11 = *(a3 + 192);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  v22 = v10;
  v23 = v11;
  v12 = *(a3 + 208);
  v25 = *(a3 + 216);
  v24 = v12;
  v13 = sub_10005AE0C(a1, &v26, &v15, a4, 0);
  if (*(&v22 + 1))
  {
    sub_10000367C(*(&v22 + 1));
  }

  if (v16)
  {
    sub_10000367C(v16);
  }

  if (*(&v33 + 1))
  {
    sub_10000367C(*(&v33 + 1));
  }

  if (v27)
  {
    sub_10000367C(v27);
  }

  return v13;
}

void sub_10005ADE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_100002440(&a9);
  sub_100002440(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10005AE0C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 208);
  v32[0] = 0;
  v39 = 0;
  while (!sub_1000242EC(a2, a3))
  {
    if (a2[26] >= v10 || v9 >= a4)
    {
      break;
    }

    if (sub_1000E0464())
    {
      *&v29 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at app/disk_images/formats/raw.h:54:22)]";
      *(&v29 + 1) = 104;
      LODWORD(v30) = 2;
      sub_10002A1D4(v26, &v29);
      sub_1000026BC(v28, "sg: ", 4);
      sub_10019A3A8(v28, a2);
      std::ostream::~ostream();
      sub_10002A44C(v26);
      std::ios::~ios();
    }

    v26[0] = 0;
    v26[1] = v10;
    LOBYTE(v27) = 2;
    sub_10008A3F4(a2, v26, &v29);
    v12 = *a1;
    (*(**(*(a1 + 8) + 16) + 136))(v26);
    v13 = v12[1];
    v14 = *v12 + 24 * v13;
    if (v13 == v12[2])
    {
      sub_1000591CC(v12, v14, 1, v26, &v40);
    }

    else
    {
      *v14 = 0;
      *(v14 + 4) = 0;
      *(v14 + 8) = 0;
      if (BYTE4(v26[0]) == 1)
      {
        *v14 = v26[0];
        *(v14 + 4) = 1;
      }

      *(v14 + 16) = v27;
      v27 = 0;
      v15 = *(v14 + 16);
      if (v15)
      {
        *v15 = v14;
      }

      ++v12[1];
    }

    v16 = v30;
    if (v30 >= 0)
    {
      v17 = v30;
    }

    else
    {
      v17 = v30;
    }

    v18 = v17 >= 0 || v17 == 0;
    v19 = v18;
    if (v18)
    {
      v20 = v31;
      if ((v8 & 1) == 0)
      {
        v8 = 1;
      }

      if (sub_100025604(a2, a3, v31, v17))
      {
        sub_100026714(v25, a2);
        sub_100025558(v25, a3, v20, v17, a4, v26);
        sub_10002A340(v32, v26);
        sub_100025620(v26);
        sub_100002440(v25);
        sub_1000246F4(v32, v26);
        sub_100027250(a2, v26);
        sub_100002440(v26);
        sub_100024448(v32, v26);
        sub_100027250(a3, v26);
        sub_100002440(v26);
      }

      if (a5)
      {
        sub_1000249F0(a2, v17);
      }

      else
      {
        sub_100024AB4(a2, v17);
      }

      v9 += v17;
    }

    else
    {
      if (v30 >= 0)
      {
        v16 = -v30;
      }

      v22 = v16;
    }

    if (*(&v29 + 1))
    {
      sub_10000367C(*(&v29 + 1));
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v22 = v9;
LABEL_43:
  if (v39 == 1)
  {
    if (v38)
    {
      sub_10000367C(v38);
    }

    if (v37)
    {
      sub_10000367C(v37);
    }

    if (v36)
    {
      sub_10000367C(v36);
    }

    if (v35)
    {
      sub_10000367C(v35);
    }

    if (v34)
    {
      sub_10000367C(v34);
    }

    if (v33)
    {
      sub_10000367C(v33);
    }
  }

  return v22;
}

void sub_10005B16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_100002440(&a40);
  if (STACK[0x3D0])
  {
    sub_10000367C(STACK[0x3D0]);
  }

  sub_10002568C(&STACK[0x438]);
  _Unwind_Resume(a1);
}

void *sub_10005B1F0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10005B4C0(a1, a2);
  *a1 = off_100209A78;
  a1[45] = &off_100209B78;
  a1[46] = &off_100209BA0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100209A78;
  a1[45] = off_100209B00;
  a1[46] = off_100209B28;
  return a1;
}

void sub_10005B2F4(_Unwind_Exception *a1)
{
  sub_10005B588(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005B318(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005B588(a1);
  std::ios::~ios();
  return a1;
}

unint64_t sub_10005B35C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100026898(&v26, a2);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  v30 = *(a2 + 136);
  v31 = *(a2 + 152);
  v32 = *(a2 + 168);
  v8 = *(a2 + 176);
  v9 = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v33 = v8;
  v34 = v9;
  v36 = *(a2 + 216);
  v35 = *(a2 + 208);
  sub_100026898(&v15, a3);
  v17 = *(a3 + 112);
  v18 = *(a3 + 120);
  v19 = *(a3 + 136);
  v20 = *(a3 + 152);
  v21 = *(a3 + 168);
  v10 = *(a3 + 176);
  v11 = *(a3 + 192);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  v22 = v10;
  v23 = v11;
  v12 = *(a3 + 208);
  v25 = *(a3 + 216);
  v24 = v12;
  v13 = sub_10005BD20(a1, &v26, &v15, a4, 0);
  if (*(&v22 + 1))
  {
    sub_10000367C(*(&v22 + 1));
  }

  if (v16)
  {
    sub_10000367C(v16);
  }

  if (*(&v33 + 1))
  {
    sub_10000367C(*(&v33 + 1));
  }

  if (v27)
  {
    sub_10000367C(v27);
  }

  return v13;
}

void sub_10005B49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_100002440(&a9);
  sub_100002440(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005B4C0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100209C10;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10005B570(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10005B588(uint64_t a1)
{
  *a1 = &off_100209C10;
  sub_10005B9C8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10005B6F4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005B588(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005B75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10005B798(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10005B804(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005B588(v1);

  return std::ios::~ios();
}

void sub_10005B850(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005B588(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005B8B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005B588(v1);

  return std::ios::~ios();
}

void sub_10005B914(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005B588(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10005B990(uint64_t a1)
{
  sub_10005B588(a1);

  operator delete();
}

uint64_t sub_10005B9C8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10005BB3C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10005BB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10005BB3C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 65;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 65;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

unint64_t sub_10005BD20(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 208);
  v32[0] = 0;
  v39 = 0;
  while (!sub_1000242EC(a2, a3))
  {
    if (a2[26] >= v10 || v9 >= a4)
    {
      break;
    }

    if (sub_1000E0464())
    {
      *&v29 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at app/disk_images/formats/raw.h:72:22)]";
      *(&v29 + 1) = 104;
      LODWORD(v30) = 2;
      sub_10002A1D4(v26, &v29);
      sub_1000026BC(v28, "sg: ", 4);
      sub_10019A3A8(v28, a2);
      std::ostream::~ostream();
      sub_10002A44C(v26);
      std::ios::~ios();
    }

    v26[0] = 0;
    v26[1] = v10;
    LOBYTE(v27) = 2;
    sub_10008A3F4(a2, v26, &v29);
    v12 = *a1;
    (*(**(*(a1 + 8) + 16) + 144))(v26);
    v13 = v12[1];
    v14 = *v12 + 24 * v13;
    if (v13 == v12[2])
    {
      sub_1000591CC(v12, v14, 1, v26, &v40);
    }

    else
    {
      *v14 = 0;
      *(v14 + 4) = 0;
      *(v14 + 8) = 0;
      if (BYTE4(v26[0]) == 1)
      {
        *v14 = v26[0];
        *(v14 + 4) = 1;
      }

      *(v14 + 16) = v27;
      v27 = 0;
      v15 = *(v14 + 16);
      if (v15)
      {
        *v15 = v14;
      }

      ++v12[1];
    }

    v16 = v30;
    if (v30 >= 0)
    {
      v17 = v30;
    }

    else
    {
      v17 = v30;
    }

    v18 = v17 >= 0 || v17 == 0;
    v19 = v18;
    if (v18)
    {
      v20 = v31;
      if ((v8 & 1) == 0)
      {
        v8 = 1;
      }

      if (sub_100025604(a2, a3, v31, v17))
      {
        sub_100026714(v25, a2);
        sub_100025558(v25, a3, v20, v17, a4, v26);
        sub_10002A340(v32, v26);
        sub_100025620(v26);
        sub_100002440(v25);
        sub_1000246F4(v32, v26);
        sub_100027250(a2, v26);
        sub_100002440(v26);
        sub_100024448(v32, v26);
        sub_100027250(a3, v26);
        sub_100002440(v26);
      }

      if (a5)
      {
        sub_1000249F0(a2, v17);
      }

      else
      {
        sub_100024AB4(a2, v17);
      }

      v9 += v17;
    }

    else
    {
      if (v30 >= 0)
      {
        v16 = -v30;
      }

      v22 = v16;
    }

    if (*(&v29 + 1))
    {
      sub_10000367C(*(&v29 + 1));
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v22 = v9;
LABEL_43:
  if (v39 == 1)
  {
    if (v38)
    {
      sub_10000367C(v38);
    }

    if (v37)
    {
      sub_10000367C(v37);
    }

    if (v36)
    {
      sub_10000367C(v36);
    }

    if (v35)
    {
      sub_10000367C(v35);
    }

    if (v34)
    {
      sub_10000367C(v34);
    }

    if (v33)
    {
      sub_10000367C(v33);
    }
  }

  return v22;
}

void sub_10005C080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_100002440(&a40);
  if (STACK[0x3D0])
  {
    sub_10000367C(STACK[0x3D0]);
  }

  sub_10002568C(&STACK[0x438]);
  _Unwind_Resume(a1);
}

void sub_10005C108(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void *sub_10005C144(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10005C43C(a1, a2);
  *a1 = off_100209D38;
  a1[45] = &off_100209E38;
  a1[46] = &off_100209E60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100209D38;
  a1[45] = off_100209DC0;
  a1[46] = off_100209DE8;
  return a1;
}

void sub_10005C248(_Unwind_Exception *a1)
{
  sub_10005C504(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005C26C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005C504(a1);
  std::ios::~ios();
  return a1;
}

void sub_10005C2B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10005C2EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_10005C31C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10005C35C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100038E68();
}

void **sub_10005C3B4(void **a1)
{
  sub_10005C3E8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10005C3E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 24;
    v4 = *(v1 - 16);
    if (v4)
    {
      sub_10000367C(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 24;
    }
  }
}

uint64_t sub_10005C43C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100209ED0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10005C4EC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10005C504(uint64_t a1)
{
  *a1 = &off_100209ED0;
  sub_10005C944(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10005C670(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005C504(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005C6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10005C714(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10005C780(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005C504(v1);

  return std::ios::~ios();
}

void sub_10005C7CC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005C504(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005C830(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005C504(v1);

  return std::ios::~ios();
}

void sub_10005C890(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005C504(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10005C90C(uint64_t a1)
{
  sub_10005C504(a1);

  operator delete();
}

uint64_t sub_10005C944(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10005CAB8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10005CA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10005CAB8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 1010;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 1010;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_10005CCA0(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_10005CCD8(void *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_100179BBC(a2);
  sub_100003410(v15, v3);
  sub_100009110(v10);
  if ((v16 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = v15[1];
  }

  v6 = sub_1000026BC(&v11, v4, v5);
  v7 = sub_1000026BC(v6, " [", 2);
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  v8 = std::ostream::operator<<();
  sub_1000026BC(v8, "]", 1);
  sub_100008510(&v12, a1);
  v11 = v9;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_10005CF68(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10005CFBC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10005CFBC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 16);
    if (v4)
    {
      sub_10000367C(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_10005D008(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_10020CCB0;
  v3 = *(a2 + 8);
  *(a1 + 16) = *a2;
  *(a1 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 39) < 0)
  {
    sub_1000093B4((a1 + 32), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 48) = *(a2 + 32);
    *(a1 + 32) = v4;
  }

  *(a1 + 56) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  return a1;
}

void sub_10005D09C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_10000367C(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10005D0B4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = off_100208488;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 850045863;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  std::__shared_mutex_base::__shared_mutex_base((a1 + 128));
  return a1;
}

void sub_10005D13C(_Unwind_Exception *a1)
{
  v4 = v3;
  std::mutex::~mutex(v4);
  sub_1000531B8(v2);
  v6 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v6)
  {
    sub_1001A3574(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005D16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005D208(a1 + 56, a1, *(a1 + 8));
  sub_10005D25C(a2, &v5, *(a1 + 48));
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void sub_10005D1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1001A3598();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10005D208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10002870C();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_10005D25C(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = qword_10023FE60;
  *(a1 + 8) = qword_10023FE60;
  v6 = (a1 + 8);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = a3;
  sub_100124F38(a1, v8);
  *v6 = v8[0];
  *(v6 + 12) = *(v8 + 12);
  return a1;
}

void sub_10005D2D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_1001A3598();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10005D2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005D208(a1 + 56, a1, *(a1 + 16));
  sub_10005D25C(a2, &v5, *(a1 + 48));
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void sub_10005D36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1001A3598();
  }

  _Unwind_Resume(exception_object);
}

void *sub_10005D388(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10005DC5C(a1, a2);
  *a1 = off_100209FA8;
  a1[45] = &off_10020A0A8;
  a1[46] = &off_10020A0D0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100209FA8;
  a1[45] = off_10020A030;
  a1[46] = off_10020A058;
  return a1;
}

void sub_10005D48C(_Unwind_Exception *a1)
{
  sub_10005DD24(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005D4B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005DD24(a1);
  std::ios::~ios();
  return a1;
}

_OWORD *sub_10005D4F4@<X0>(__int128 *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!*(a1 + 3) || *(a1 + 144) != a2)
  {
    v8 = a1 + 73;
    v9 = *(a1 + 4);
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    if (v9)
    {
      sub_10000367C(v9);
    }

    v10 = *(a1 + 74);
    *v8 = 0;
    *(a1 + 74) = 0;
    if (v10)
    {
      sub_10000367C(v10);
    }

    v11 = *(a1 + 76);
    *(a1 + 75) = 0;
    *(a1 + 76) = 0;
    if (v11)
    {
      sub_10000367C(v11);
    }

    v12 = *(a1 + 78);
    *(a1 + 77) = 0;
    *(a1 + 78) = 0;
    if (v12)
    {
      sub_10000367C(v12);
    }

    if (*(a1 + 23) < 0)
    {
      sub_1000093B4(__p, *a1, *(a1 + 1));
    }

    else
    {
      *__p = *a1;
      __p[2] = *(a1 + 2);
    }

    v29[0] = 2 * ((a2 - 1) < 2);
    sub_10005F2B0();
  }

  sub_100050B6C(a1, v29);
  if ((v30 & 1) == 0)
  {
    *&v26 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
    *(&v26 + 1) = 83;
    v27 = 16;
    sub_10005E4BC(__p, &v26);
    sub_1000026BC(v32, "Diskimageuio: Couldn't get locked status ", 41);
    v15 = sub_10005034C(v29);
    v16 = (*(**(v15 + 8) + 16))(*(v15 + 8));
    v17 = strlen(v16);
    v18 = sub_1000026BC(v32, v16, v17);
    LOBYTE(v24) = 58;
    sub_1000026BC(v18, &v24, 1);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10005F664(__p);
    std::ios::~ios();
    result = sub_10005034C(v29);
    *a4 = *result;
    goto LABEL_19;
  }

  if (v29[0])
  {
    *&v26 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
    *(&v26 + 1) = 83;
    v27 = 0;
    sub_10005F144(__p, &v26);
    sub_1000026BC(v32, "Diskimageuio: decryption key missing", 36);
    std::ostream::~ostream();
    sub_100064A58(__p);
    std::ios::~ios();
    result = make_error_code(162);
    *a4 = result;
    *(a4 + 8) = v14;
LABEL_19:
    *(a4 + 16) = 0;
    return result;
  }

  *&v26 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
  *(&v26 + 1) = 83;
  v27 = 2;
  sub_10005E628(__p, &v26);
  sub_1000026BC(v32, "Diskimageuio: backend isn't locked", 34);
  std::ostream::~ostream();
  sub_10005FEC4(__p);
  std::ios::~ios();
  sub_10005E794(a1, 0, __p);
  if (v33)
  {
    v19 = sub_10005EF6C(__p);
    sub_100052C4C(a1 + 56, v19);
    *(a1 + 142) = *(v19 + 512);
    *&v24 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
    *(&v24 + 1) = 83;
    v25 = 2;
    sub_10005EFD8(&v26, &v24);
    sub_1000026BC(v28, "Diskimageuio: resolved disk image format ", 41);
    diskimage_uio::operator<<(v28, *(a1 + 142));
    std::ostream::~ostream();
    sub_1000641F8(&v26);
    result = std::ios::~ios();
    *a4 = 0;
    v20 = 1;
  }

  else
  {
    v21 = *(a1 + 143);
    if (v21)
    {
      if (*(a1 + 144) != v21)
      {
        v22 = sub_10005EAD0(__p);
        v23 = std::generic_category();
        *&v26 = 35;
        *(&v26 + 1) = v23;
        if ((*(**(v22 + 1) + 32))(*(v22 + 1), *v22, &v26) || (*(**(&v26 + 1) + 40))(*(&v26 + 1), v22, v26))
        {
          *&v24 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
          *(&v24 + 1) = 83;
          v25 = 2;
          sub_10005EB28(&v26, &v24);
          sub_1000026BC(v28, "Diskimageuio: required mode ", 28);
          diskimage_uio::operator<<(v28, *(a1 + 143));
          sub_1000026BC(v28, " is different than current mode ", 32);
          diskimage_uio::operator<<(v28, *(a1 + 144));
          std::ostream::~ostream();
          sub_1000628D8(&v26);
          std::ios::~ios();
          if (a3)
          {
            *&v24 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
            *(&v24 + 1) = 83;
            v25 = 2;
            sub_10005EC94(&v26, &v24);
            sub_1000026BC(v28, "Diskimageuio: reopen backend to required mode ", 46);
            diskimage_uio::operator<<(v28, *(a1 + 143));
            sub_10005EDBC(&v26);
            result = sub_10005D4F4(a1, *(a1 + 143), 0, a4);
            goto LABEL_32;
          }

          *&v24 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(const diskimage_open_params::mode, BOOL)";
          *(&v24 + 1) = 83;
          v25 = 0;
          sub_10005EE00(&v26, &v24);
          sub_1000026BC(v28, "Diskimageuio: required mode ", 28);
          diskimage_uio::operator<<(v28, *(a1 + 143));
          sub_1000026BC(v28, " is different than current mode ", 32);
          diskimage_uio::operator<<(v28, *(a1 + 144));
          sub_10005EF28(&v26);
        }
      }
    }

    result = sub_10005EAD0(__p);
    v20 = 0;
    *a4 = *result;
  }

  *(a4 + 16) = v20;
LABEL_32:
  if (v33 == 1)
  {
    return sub_100052B84(__p);
  }

  return result;
}

void sub_10005DAF8(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x458]) == 1)
  {
    sub_100052B84(&STACK[0x250]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005DC5C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020A140;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10005DD0C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10005DD24(uint64_t a1)
{
  *a1 = &off_10020A140;
  sub_10005E164(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10005DE90(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005DD24(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005DEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10005DF34(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10005DFA0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005DD24(v1);

  return std::ios::~ios();
}

void sub_10005DFEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005DD24(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005E050(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005DD24(v1);

  return std::ios::~ios();
}

void sub_10005E0B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005DD24(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10005E12C(uint64_t a1)
{
  sub_10005DD24(a1);

  operator delete();
}

uint64_t sub_10005E164(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10005E2D8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10005E2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10005E2D8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 559;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 559;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_10005E4BC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10005F59C(a1, a2);
  *a1 = off_10020A268;
  a1[45] = &off_10020A368;
  a1[46] = &off_10020A390;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020A268;
  a1[45] = off_10020A2F0;
  a1[46] = off_10020A318;
  return a1;
}

void sub_10005E5C0(_Unwind_Exception *a1)
{
  sub_10005F664(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005E5E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005F664(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10005E628(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10005FDFC(a1, a2);
  *a1 = off_10020A488;
  a1[45] = &off_10020A588;
  a1[46] = &off_10020A5B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020A488;
  a1[45] = off_10020A510;
  a1[46] = off_10020A538;
  return a1;
}

void sub_10005E72C(_Unwind_Exception *a1)
{
  sub_10005FEC4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005E750(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005FEC4(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10005E794@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10006065C(0, (a1 + 24), *(a1 + 572) == 0, a1, a2, v24);
  if (v26)
  {
    v5 = sub_10005EF6C(v24);
    sub_10005496C(v21, v5);
    v23 = *(v5 + 512);
    v6 = v23 > 0xB || ((1 << v23) & 0xA06) == 0;
    if (v6 || *(a1 + 576) || !*(a1 + 572))
    {
      sub_10005496C(&v17, v21);
      v20 = v23;
      sub_10005496C(a3, &v17);
      *(a3 + 512) = v20;
      *(a3 + 520) = 1;
      sub_100052B84(&v17);
    }

    else
    {
      *&v15 = "image_format>, diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_image_header(size_t)";
      *(&v15 + 1) = 107;
      v16 = 2;
      sub_100060C18(&v17, &v15);
      sub_1000026BC(v19, "Diskimageuio: Required read-write disk image (", 46);
      v13 = diskimage_uio::operator<<(v19, v23);
      sub_1000026BC(v13, ")", 1);
      std::ostream::~ostream();
      sub_100062078(&v17);
      std::ios::~ios();
      v14 = std::generic_category();
      *a3 = 35;
      *(a3 + 8) = v14;
      *(a3 + 520) = 0;
    }

    result = sub_100052B84(v21);
  }

  else
  {
    *&v17 = "image_format>, diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_image_header(size_t)";
    *(&v17 + 1) = 107;
    v18 = 16;
    sub_100060AAC(v21, &v17);
    sub_1000026BC(v22, "Diskimageuio: Couldn't get diskimage: ", 38);
    v8 = sub_10005EAD0(v24);
    v9 = (*(**(v8 + 8) + 16))(*(v8 + 8));
    v10 = strlen(v9);
    v11 = sub_1000026BC(v22, v9, v10);
    LOBYTE(v15) = 58;
    sub_1000026BC(v11, &v15, 1);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100061818(v21);
    result = std::ios::~ios();
    *a3 = 0;
    v12 = v26;
    *(a3 + 520) = v26;
    if (v12 == 1)
    {
      result = sub_10005496C(a3, v24);
      *(a3 + 512) = v25;
    }

    else
    {
      *a3 = v24[0];
    }
  }

  if (v26 == 1)
  {
    return sub_100052B84(v24);
  }

  return result;
}

void sub_10005EA5C(_Unwind_Exception *a1)
{
  sub_100052B84(&STACK[0x220]);
  if (LOBYTE(STACK[0x630]) == 1)
  {
    sub_100052B84(&STACK[0x428]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005EAD0(uint64_t result)
{
  if (*(result + 520))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_100208560;
  }

  return result;
}

void *sub_10005EB28(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100062810(a1, a2);
  *a1 = off_10020AD08;
  a1[45] = &off_10020AE08;
  a1[46] = &off_10020AE30;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020AD08;
  a1[45] = off_10020AD90;
  a1[46] = off_10020ADB8;
  return a1;
}

void sub_10005EC2C(_Unwind_Exception *a1)
{
  sub_1000628D8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005EC50(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000628D8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10005EC94(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100063070(a1, a2);
  *a1 = off_10020AF28;
  a1[45] = &off_10020B028;
  a1[46] = &off_10020B050;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020AF28;
  a1[45] = off_10020AFB0;
  a1[46] = off_10020AFD8;
  return a1;
}

void sub_10005ED98(_Unwind_Exception *a1)
{
  sub_100063138(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005EDBC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100063138(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10005EE00(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000638D0(a1, a2);
  *a1 = off_10020B148;
  a1[45] = &off_10020B248;
  a1[46] = &off_10020B270;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020B148;
  a1[45] = off_10020B1D0;
  a1[46] = off_10020B1F8;
  return a1;
}

void sub_10005EF04(_Unwind_Exception *a1)
{
  sub_100063998(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005EF28(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100063998(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10005EF6C(uint64_t result)
{
  if (*(result + 520) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *v1;
    *exception = &off_100209CA8;
    *(exception + 8) = v3;
  }

  return result;
}

void *sub_10005EFD8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100064130(a1, a2);
  *a1 = off_10020B368;
  a1[45] = &off_10020B468;
  a1[46] = &off_10020B490;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020B368;
  a1[45] = off_10020B3F0;
  a1[46] = off_10020B418;
  return a1;
}

void sub_10005F0DC(_Unwind_Exception *a1)
{
  sub_1000641F8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005F100(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000641F8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10005F144(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100064990(a1, a2);
  *a1 = off_10020B588;
  a1[45] = &off_10020B688;
  a1[46] = &off_10020B6B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020B588;
  a1[45] = off_10020B610;
  a1[46] = off_10020B638;
  return a1;
}

void sub_10005F248(_Unwind_Exception *a1)
{
  sub_100064A58(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10005F26C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100064A58(a1);
  std::ios::~ios();
  return a1;
}

void sub_10005F33C(void *a1, const char *a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020A1C0;
  v4 = *a3;
  v5 = sub_100158764(a2, *a3);
  sub_10004D9A0(a1 + 3, v5, (v4 & 3) != 0, 0);
}

void sub_10005F3DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020A1C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10005F4C4(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020A210;
  sub_100188190((a1 + 3), a2);
  return a1;
}

void sub_10005F540(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020A210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10005F59C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020A400;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10005F64C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10005F664(uint64_t a1)
{
  *a1 = &off_10020A400;
  sub_10005FAA4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10005F7D0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005F664(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005F838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10005F874(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10005F8E0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005F664(v1);

  return std::ios::~ios();
}

void sub_10005F92C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005F664(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10005F990(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005F664(v1);

  return std::ios::~ios();
}

void sub_10005F9F0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005F664(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10005FA6C(uint64_t a1)
{
  sub_10005F664(a1);

  operator delete();
}

uint64_t sub_10005FAA4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10005FC18((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10005FBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10005FC18(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 519;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 519;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10005FDFC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020A620;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10005FEAC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10005FEC4(uint64_t a1)
{
  *a1 = &off_10020A620;
  sub_100060304(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100060030(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10005FEC4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100060098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000600D4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100060140(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005FEC4(v1);

  return std::ios::~ios();
}

void sub_10006018C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10005FEC4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000601F0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005FEC4(v1);

  return std::ios::~ios();
}

void sub_100060250(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10005FEC4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000602CC(uint64_t a1)
{
  sub_10005FEC4(a1);

  operator delete();
}

uint64_t sub_100060304(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100060478((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100060450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100060478(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 524;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 524;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_10006065C(int a1@<W0>, const void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a1 > 8)
  {
    if ((a1 - 9) < 2)
    {
      goto LABEL_11;
    }

    if (a1 == 11)
    {
      if (*(a4 + 23) < 0)
      {
        sub_1000093B4(__p, *a4, *(a4 + 8));
      }

      else
      {
        __p[0] = *a4;
      }

      sub_100051574(&v15, a2, __p, a3);
    }

    if (a1 == 12)
    {
LABEL_11:
      v17 = 0;
      sub_10005496C(v18, __p);
      v20 = 0;
      sub_10005496C(a6, v18);
      *(a6 + 512) = v20;
      *(a6 + 520) = 1;
      sub_100052B84(v18);
      sub_100052B84(__p);
      return;
    }

    goto LABEL_34;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v12 = 1;
      while (1)
      {
        if ((v12 - 3) >= 5 && v12 != 1)
        {
          sub_10006065C(v12, a2, a3, a4, a5, a6);
          if (*(a6 + 520) != 1 || *(sub_10005EF6C(a6) + 512))
          {
            return;
          }

          if (*(a6 + 520) == 1)
          {
            sub_100052B84(a6);
          }
        }

        if (++v12 == 13)
        {
          goto LABEL_5;
        }
      }
    }

    if (a1 == 1)
    {
LABEL_5:

      sub_100059F04(a2, a5, a6);
      return;
    }

LABEL_34:
    __p[0].__r_.__value_.__r.__words[0] = "expected<std::pair<hdr_variant, image_format>, diskimage_err> diskimage_uio::details::diskimage_open_params_impl::get_disk_image_hdr(image_format, std::shared_ptr<Backend> &, BOOL, const std::filesystem::path &, size_t)";
    __p[0].__r_.__value_.__l.__size_ = 132;
    LODWORD(__p[0].__r_.__value_.__r.__words[2]) = 16;
    sub_100060D84(v18, __p);
    sub_1000026BC(v19, "Diskimageuio: Unsupported image format", 38);
    diskimage_uio::operator<<(v19, a1);
    std::ostream::~ostream();
    sub_100060FB8(v18);
    std::ios::~ios();
    *a6 = make_error_code(161);
    *(a6 + 8) = v14;
    *(a6 + 520) = 0;
    return;
  }

  if (a1 == 2)
  {

    sub_100059DAC(a2, a6);
  }

  else
  {
    if (a1 != 8)
    {
      goto LABEL_34;
    }

    sub_100053264(a2, a6);
  }
}

void sub_1000609DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    sub_100053548();
  }

  _Unwind_Resume(a1);
}

void *sub_100060AAC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100061750(a1, a2);
  *a1 = off_10020A8C8;
  a1[45] = &off_10020A9C8;
  a1[46] = &off_10020A9F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020A8C8;
  a1[45] = off_10020A950;
  a1[46] = off_10020A978;
  return a1;
}

void sub_100060BB0(_Unwind_Exception *a1)
{
  sub_100061818(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100060BD4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100061818(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100060C18(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100061FB0(a1, a2);
  *a1 = off_10020AAE8;
  a1[45] = &off_10020ABE8;
  a1[46] = &off_10020AC10;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020AAE8;
  a1[45] = off_10020AB70;
  a1[46] = off_10020AB98;
  return a1;
}

void sub_100060D1C(_Unwind_Exception *a1)
{
  sub_100062078(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100060D40(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100062078(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100060D84(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100060EF0(a1, a2);
  *a1 = off_10020A6A8;
  a1[45] = &off_10020A7A8;
  a1[46] = &off_10020A7D0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020A6A8;
  a1[45] = off_10020A730;
  a1[46] = off_10020A758;
  return a1;
}

void sub_100060E88(_Unwind_Exception *a1)
{
  sub_100060FB8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100060EAC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100060FB8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100060EF0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020A840;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100060FA0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100060FB8(uint64_t a1)
{
  *a1 = &off_10020A840;
  sub_1000613F8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100061124(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100060FB8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006118C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000611C8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100061234(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100060FB8(v1);

  return std::ios::~ios();
}

void sub_100061280(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100060FB8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000612E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100060FB8(v1);

  return std::ios::~ios();
}

void sub_100061344(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100060FB8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000613C0(uint64_t a1)
{
  sub_100060FB8(a1);

  operator delete();
}

uint64_t sub_1000613F8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10006156C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100061544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006156C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 470;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 470;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100061750(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020AA60;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100061800(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100061818(uint64_t a1)
{
  *a1 = &off_10020AA60;
  sub_100061C58(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100061984(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100061818(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000619EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100061A28(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100061A94(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100061818(v1);

  return std::ios::~ios();
}

void sub_100061AE0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100061818(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100061B44(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100061818(v1);

  return std::ios::~ios();
}

void sub_100061BA4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100061818(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100061C20(uint64_t a1)
{
  sub_100061818(a1);

  operator delete();
}

uint64_t sub_100061C58(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100061DCC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100061DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100061DCC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 480;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 480;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100061FB0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020AC80;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100062060(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100062078(uint64_t a1)
{
  *a1 = &off_10020AC80;
  sub_1000624B8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000621E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100062078(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006224C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100062288(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1000622F4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100062078(v1);

  return std::ios::~ios();
}

void sub_100062340(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100062078(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000623A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100062078(v1);

  return std::ios::~ios();
}

void sub_100062404(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100062078(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100062480(uint64_t a1)
{
  sub_100062078(a1);

  operator delete();
}

uint64_t sub_1000624B8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10006262C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100062604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006262C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 488;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 488;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100062810(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020AEA0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000628C0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000628D8(uint64_t a1)
{
  *a1 = &off_10020AEA0;
  sub_100062D18(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100062A44(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000628D8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100062AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100062AE8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100062B54(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000628D8(v1);

  return std::ios::~ios();
}

void sub_100062BA0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000628D8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100062C04(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000628D8(v1);

  return std::ios::~ios();
}

void sub_100062C64(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000628D8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100062CE0(uint64_t a1)
{
  sub_1000628D8(a1);

  operator delete();
}

uint64_t sub_100062D18(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100062E8C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100062E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100062E8C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 530;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 530;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100063070(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020B0C0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100063120(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100063138(uint64_t a1)
{
  *a1 = &off_10020B0C0;
  sub_100063578(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000632A4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100063138(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006330C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100063348(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1000633B4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100063138(v1);

  return std::ios::~ios();
}

void sub_100063400(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100063138(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100063464(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100063138(v1);

  return std::ios::~ios();
}

void sub_1000634C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100063138(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100063540(uint64_t a1)
{
  sub_100063138(a1);

  operator delete();
}

uint64_t sub_100063578(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1000636EC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000636C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000636EC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 536;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 536;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000638D0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020B2E0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100063980(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100063998(uint64_t a1)
{
  *a1 = &off_10020B2E0;
  sub_100063DD8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100063B04(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100063998(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100063B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100063BA8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100063C14(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100063998(v1);

  return std::ios::~ios();
}

void sub_100063C60(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100063998(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100063CC4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100063998(v1);

  return std::ios::~ios();
}