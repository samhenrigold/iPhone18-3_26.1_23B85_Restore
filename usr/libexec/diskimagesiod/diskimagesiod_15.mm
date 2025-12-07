void sub_100153330(_Unwind_Exception *a1)
{
  sub_10015A940(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100153354(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015A940(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100153398(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100164EC4(a1, a2);
  *a1 = off_10021D458;
  a1[45] = &off_10021D558;
  a1[46] = &off_10021D580;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021D458;
  a1[45] = off_10021D4E0;
  a1[46] = off_10021D508;
  return a1;
}

void sub_10015349C(_Unwind_Exception *a1)
{
  sub_10015B0D8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001534C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015B0D8(a1);
  std::ios::~ios();
  return a1;
}

void sub_100153504(uint64_t a1)
{
  v2 = (a1 + 152);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, sub_100164F8C);
  }
}

void sub_100153560(uint64_t a1)
{
  v2 = *(a1 + 28);
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_10015362C(int a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  if (fcntl(a1, 57, v2) < 0)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

off_t sub_10015367C(int a1, const char *a2)
{
  v2 = a2;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (fstatat(a1, a2, &v10, 32))
  {
    if (*__error() == 13 || *__error() == 1)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v9);
    sub_100001FE8(v9, "Cannot stat ", 12);
    v5 = v2[23];
    if (v5 >= 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = *v2;
    }

    if (v5 >= 0)
    {
      v7 = *(v2 + 23);
    }

    else
    {
      v7 = *(v2 + 1);
    }

    sub_100001FE8(v9, v6, v7);
    v8 = __error();
    sub_10000EBDC(exception, v9, *v8);
  }

  return v10.st_size;
}

void sub_10015381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

ssize_t sub_100153894(uint64_t a1, uint64_t a2)
{
  v4 = pwrite(**(a1 + 56), *a2, *(a2 + 16), *(a2 + 24));
  v5 = v4;
  if (v4 < 0 || v4 != *(a2 + 16))
  {
    *&v11 = "int FileLocal::_write(const sg_entry &)";
    *(&v11 + 1) = 21;
    v12 = 16;
    sub_100153A10(v13, &v11);
    sub_100001FE8(v14, "Error writing file @ ", 21);
    sub_100192838(v14, a2);
    sub_100001FE8(v14, ". returned ", 11);
    std::ostream::operator<<();
    sub_100001FE8(v14, " with errno: ", 13);
    __error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10015B870(v13);
    std::ios::~ios();
    if (v5 == -1)
    {
      return -*__error();
    }

    else
    {
      return 4294967291;
    }
  }

  else
  {
    v6 = *(a2 + 24) + v4;
    v7 = (*(a1 + 40) + 64);
    v8 = atomic_load(v7);
    if (v8 < v6)
    {
      v9 = v8;
      do
      {
        atomic_compare_exchange_strong(v7, &v9, v6);
        if (v9 == v8)
        {
          break;
        }

        v8 = v9;
      }

      while (v9 < v6);
    }
  }

  return v5;
}

void sub_1001539FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100153B38(va);
  _Unwind_Resume(a1);
}

void *sub_100153A10(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100165CE8(a1, a2);
  *a1 = off_10021D678;
  a1[45] = &off_10021D778;
  a1[46] = &off_10021D7A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021D678;
  a1[45] = off_10021D700;
  a1[46] = off_10021D728;
  return a1;
}

void sub_100153B14(_Unwind_Exception *a1)
{
  sub_10015B870(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100153B38(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015B870(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100153B7C(uint64_t a1, void *a2)
{
  v3 = (***(*(a1 + 40) + 72))(*(*(a1 + 40) + 72), **(a1 + 56), *a2, a2[2], a2[3]);
  v4 = v3;
  if (v3 < 0 || v3 != a2[2])
  {
    *&v6 = "int FileLocal::_read(const sg_entry &)";
    *(&v6 + 1) = 20;
    v7 = 16;
    sub_100153CE4(v8, &v6);
    sub_100001FE8(v9, "Error reading file @ ", 21);
    sub_100192838(v9, a2);
    sub_100001FE8(v9, ". returned ", 11);
    std::ostream::operator<<();
    sub_100001FE8(v9, " with errno: ", 13);
    __error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10015C008(v8);
    std::ios::~ios();
    if (v4 == -1)
    {
      return -*__error();
    }

    else
    {
      return 4294967291;
    }
  }

  return v4;
}

void sub_100153CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100153E0C(va);
  _Unwind_Resume(a1);
}

void *sub_100153CE4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100165DB0(a1, a2);
  *a1 = off_10021D898;
  a1[45] = &off_10021D998;
  a1[46] = &off_10021D9C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021D898;
  a1[45] = off_10021D920;
  a1[46] = off_10021D948;
  return a1;
}

void sub_100153DE8(_Unwind_Exception *a1)
{
  sub_10015C008(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100153E0C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015C008(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100153E50(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 40);
  if (*(v4 + 28))
  {
    v5 = *(v4 + 16);
    if (v5 < a2)
    {
      *&v11 = "int FileLocal::truncate(uint64_t)";
      *(&v11 + 1) = 23;
      v12 = 16;
      sub_100154148(v13, &v11);
      sub_100001FE8(v14, "Cannot increase size of a block device", 38);
      std::ostream::~ostream();
      sub_10015C7A0(v13);
      std::ios::~ios();
      return 4294967268;
    }

    if (v5 > a2)
    {
      *&v11 = "int FileLocal::truncate(uint64_t)";
      *(&v11 + 1) = 23;
      v12 = 0;
      sub_100067AD8(v13, &v11);
      sub_100001FE8(v14, "Ignoring truncate on block device", 33);
      std::ostream::~ostream();
      sub_100069374(v13);
      std::ios::~ios();
    }

    goto LABEL_12;
  }

  v7 = (*(*a1 + 40))(a1);
  if (v7 < a2)
  {
    __buf = 0;
    v8 = pwrite(**(a1 + 56), &__buf, 1uLL, a2 - 1);
    if (v8 != 1)
    {
      v9 = v8;
      *&v11 = "int FileLocal::truncate(uint64_t)";
      *(&v11 + 1) = 23;
      v12 = 16;
      sub_1001542B4(v13, &v11);
      sub_100001FE8(v14, "Failed to increase file size, pwrite returned ", 46);
      std::ostream::operator<<();
      sub_100001FE8(v14, " errno: ", 8);
      __error();
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10015CF38(v13);
      std::ios::~ios();
      if (v9 != -1)
      {
        return 4294967291;
      }

      return -*__error();
    }

LABEL_12:
    result = 0;
    atomic_store(a2, (*(a1 + 40) + 64));
    return result;
  }

  if (v7 <= a2 || ftruncate(**(a1 + 56), a2) != -1)
  {
    goto LABEL_12;
  }

  *&v11 = "int FileLocal::truncate(uint64_t)";
  *(&v11 + 1) = 23;
  v12 = 16;
  sub_100154420(v13, &v11);
  sub_100001FE8(v14, "ftruncate failed, errno: ", 25);
  __error();
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_10015D6D0(v13);
  std::ios::~ios();
  return -*__error();
}

void sub_100154104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100154548(va);
  _Unwind_Resume(a1);
}

void *sub_100154148(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100165E78(a1, a2);
  *a1 = off_10021DAB8;
  a1[45] = &off_10021DBB8;
  a1[46] = &off_10021DBE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021DAB8;
  a1[45] = off_10021DB40;
  a1[46] = off_10021DB68;
  return a1;
}

void sub_10015424C(_Unwind_Exception *a1)
{
  sub_10015C7A0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100154270(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015C7A0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1001542B4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100165F40(a1, a2);
  *a1 = off_10021DCD8;
  a1[45] = &off_10021DDD8;
  a1[46] = &off_10021DE00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021DCD8;
  a1[45] = off_10021DD60;
  a1[46] = off_10021DD88;
  return a1;
}

void sub_1001543B8(_Unwind_Exception *a1)
{
  sub_10015CF38(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001543DC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015CF38(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100154420(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166008(a1, a2);
  *a1 = off_10021DEF8;
  a1[45] = &off_10021DFF8;
  a1[46] = &off_10021E020;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021DEF8;
  a1[45] = off_10021DF80;
  a1[46] = off_10021DFA8;
  return a1;
}

void sub_100154524(_Unwind_Exception *a1)
{
  sub_10015D6D0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100154548(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015D6D0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10015458C(uint64_t a1, uint64_t a2)
{
  if (sub_1000E9608())
  {
    *&v11 = "int FileLocal::flush(di_flush_mode)";
    *(&v11 + 1) = 20;
    v12 = 2;
    sub_100154978(v13, &v11);
    sub_100001FE8(v14, "Calling ", 8);
    sub_1001927A0(v14, a2);
    sub_100001FE8(v14, " on ", 4);
    sub_100192C84(v14, a1);
    std::ostream::~ostream();
    sub_10015DE68(v13);
    std::ios::~ios();
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = *(a1 + 40);
    if ((*(v7 + 56) & v6) != 0)
    {
      if (sub_1000E9608())
      {
        *&v11 = "int FileLocal::flush(di_flush_mode)";
        *(&v11 + 1) = 20;
        v12 = 2;
        sub_100154AE4(v13, &v11);
        sub_1001927A0(v14, a2);
        sub_100001FE8(v14, " is not supported", 17);
        std::ostream::~ostream();
        sub_10015E600(v13);
        std::ios::~ios();
      }

      return (*(*a1 + 16))(a1, a2 != 2);
    }

    else
    {
      v4 = (*(**(v7 + 72) + 16))(*(v7 + 72), **(a1 + 56), a2);
      if ((v4 + 45) > 0x17 || ((1 << (v4 + 45)) & 0x900001) == 0)
      {
        goto LABEL_5;
      }

      atomic_fetch_or_explicit((*(a1 + 40) + 56), v6, memory_order_relaxed);
      *&v11 = "int FileLocal::flush(di_flush_mode)";
      *(&v11 + 1) = 20;
      v12 = 0;
      sub_100154C50(v13, &v11);
      sub_1001927A0(v14, a2);
      sub_100001FE8(v14, " is not supported (err code ", 28);
      __error();
      std::ostream::operator<<();
      sub_100001FE8(v14, ")", 1);
      std::ostream::~ostream();
      sub_10015ED98(v13);
      std::ios::~ios();
      if (a2 == 2)
      {
        return (*(*a1 + 16))(a1, 0);
      }

      else
      {
        atomic_fetch_or_explicit((*(a1 + 40) + 56), 2uLL, memory_order_relaxed);
        return (*(*a1 + 16))(a1, 1);
      }
    }
  }

  v4 = (*(**(*(a1 + 40) + 72) + 16))(*(*(a1 + 40) + 72), **(a1 + 56), 1);
LABEL_5:
  v5 = v4;
  if (v4)
  {
    *&v11 = "int FileLocal::flush(di_flush_mode)";
    *(&v11 + 1) = 20;
    v12 = 16;
    sub_100154DBC(v13, &v11);
    sub_1001927A0(v14, a2);
    sub_100001FE8(v14, " failed wih error ", 18);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10015F530(v13);
    std::ios::~ios();
  }

  return v5;
}

void sub_100154934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100154C0C(va);
  _Unwind_Resume(a1);
}

void *sub_100154978(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001660D0(a1, a2);
  *a1 = off_10021E118;
  a1[45] = &off_10021E218;
  a1[46] = &off_10021E240;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021E118;
  a1[45] = off_10021E1A0;
  a1[46] = off_10021E1C8;
  return a1;
}

void sub_100154A7C(_Unwind_Exception *a1)
{
  sub_10015DE68(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100154AA0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015DE68(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100154AE4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166198(a1, a2);
  *a1 = off_10021E338;
  a1[45] = &off_10021E438;
  a1[46] = &off_10021E460;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021E338;
  a1[45] = off_10021E3C0;
  a1[46] = off_10021E3E8;
  return a1;
}

void sub_100154BE8(_Unwind_Exception *a1)
{
  sub_10015E600(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100154C0C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015E600(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100154C50(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166260(a1, a2);
  *a1 = off_10021E558;
  a1[45] = &off_10021E658;
  a1[46] = &off_10021E680;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021E558;
  a1[45] = off_10021E5E0;
  a1[46] = off_10021E608;
  return a1;
}

void sub_100154D54(_Unwind_Exception *a1)
{
  sub_10015ED98(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100154D78(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015ED98(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100154DBC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166328(a1, a2);
  *a1 = off_10021E778;
  a1[45] = &off_10021E878;
  a1[46] = &off_10021E8A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021E778;
  a1[45] = off_10021E800;
  a1[46] = off_10021E828;
  return a1;
}

void sub_100154EC0(_Unwind_Exception *a1)
{
  sub_10015F530(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100154EE4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015F530(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100154F28(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 40);
  sub_100153504(v6);
  v7 = *(v6 + 80);
  v8 = *(v6 + 96);
  v9 = *(a1 + 40);
  sub_100153504(v9);
  if ((v8 & 1) == 0 || (*(v9 + 144) & 1) == 0)
  {
    *&v25 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
    *(&v25 + 1) = 26;
    LODWORD(v26) = 0;
    sub_100155414(&v27, &v25);
    sub_100001FE8(v35, "fd block size retrieval failed (err code ", 41);
    std::ostream::operator<<();
    sub_100001FE8(v35, ")", 1);
    std::ostream::~ostream();
    sub_10015FCC8(&v27);
    goto LABEL_14;
  }

  v10 = *(v9 + 104);
  v11 = (a2 + v7 - 1) / v7 * v7;
  v12 = a3 + a2;
  if (a2 <= v11 && v11 < v12)
  {
    v14 = a2 - v11 + a3;
    v15 = v14 / v7 * v7;
    v16 = v14 == v14 % v7 ? 0 : (a2 + v7 - 1) / v7 * v7;
    if (v14 != v14 % v7)
    {
      *&v25 = 0;
      *(&v25 + 1) = v16;
      v26 = v14 / v7 * v7;
      v19 = fcntl(**(a1 + 56), 99, &v25);
      if (!v19)
      {
        if (v16 != a2)
        {
          v20 = *(sub_100195B38() + 1);
          v27 = v10;
          v28 = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v29 = v16 - a2;
          v30 = a2;
          v31 = v16 - a2;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v7 = (*(*a1 + 120))(a1, &v27);
          if (v28)
          {
            sub_10000E984(v28);
          }

          if ((v7 & 0x80000000) != 0)
          {
            *&v23 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
            *(&v23 + 1) = 26;
            v24 = 16;
            sub_1001556EC(&v27, &v23);
            sub_100001FE8(v35, "Write zeros to unmap unaligned start region failed (err code", 60);
            __error();
            std::ostream::operator<<();
            sub_100001FE8(v35, ")", 1);
            sub_100155814(&v27);
            return v7;
          }
        }

        if (v15 + v16 < v12)
        {
          v21 = a3 - v15 - (v16 - a2);
          v22 = *(sub_100195B38() + 1);
          v27 = v10;
          v28 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v29 = v21;
          v30 = v15 + v16;
          v31 = v21;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v7 = (*(*a1 + 120))(a1, &v27);
          if (v28)
          {
            sub_10000E984(v28);
          }

          if ((v7 & 0x80000000) != 0)
          {
            *&v23 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
            *(&v23 + 1) = 26;
            v24 = 16;
            sub_100155858(&v27, &v23);
            sub_100001FE8(v35, "Write zeros to unmap unaligned end region failed (err code", 58);
            __error();
            std::ostream::operator<<();
            sub_100001FE8(v35, ")", 1);
            sub_100155980(&v27);
            return v7;
          }
        }

        return 0;
      }

      v7 = v19;
      *&v23 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
      *(&v23 + 1) = 26;
      v24 = 0;
      sub_100155580(&v27, &v23);
      sub_100001FE8(v35, "Punch hole is not supported (err code ", 38);
      __error();
      std::ostream::operator<<();
      sub_100001FE8(v35, ")", 1);
      std::ostream::~ostream();
      sub_100160460(&v27);
LABEL_14:
      std::ios::~ios();
      return v7;
    }
  }

  v17 = sub_1001559C4(a1, a2, a3, v7, v10);
  if (v17 == a3)
  {
    return 0;
  }

  v7 = v17;
  *&v25 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
  *(&v25 + 1) = 26;
  LODWORD(v26) = 16;
  sub_100155B5C(&v27, &v25);
  sub_100001FE8(v35, "Write zeros to unmap region failed (err code", 44);
  __error();
  std::ostream::operator<<();
  sub_100001FE8(v35, ")", 1);
  std::ostream::~ostream();
  sub_100161B28(&v27);
  std::ios::~ios();
  if ((v7 & 0x8000000000000000) == 0)
  {
    return 4294967291;
  }

  else
  {
    return v7;
  }
}

void sub_1001553A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_10000E984(a17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100155414(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001663F0(a1, a2);
  *a1 = off_10021E998;
  a1[45] = &off_10021EA98;
  a1[46] = &off_10021EAC0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021E998;
  a1[45] = off_10021EA20;
  a1[46] = off_10021EA48;
  return a1;
}

void sub_100155518(_Unwind_Exception *a1)
{
  sub_10015FCC8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015553C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015FCC8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100155580(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001664B8(a1, a2);
  *a1 = off_10021EBB8;
  a1[45] = &off_10021ECB8;
  a1[46] = &off_10021ECE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021EBB8;
  a1[45] = off_10021EC40;
  a1[46] = off_10021EC68;
  return a1;
}

void sub_100155684(_Unwind_Exception *a1)
{
  sub_100160460(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001556A8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100160460(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1001556EC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166580(a1, a2);
  *a1 = off_10021EDD8;
  a1[45] = &off_10021EED8;
  a1[46] = &off_10021EF00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021EDD8;
  a1[45] = off_10021EE60;
  a1[46] = off_10021EE88;
  return a1;
}

void sub_1001557F0(_Unwind_Exception *a1)
{
  sub_100160BF8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100155814(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100160BF8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100155858(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166648(a1, a2);
  *a1 = off_10021EFF8;
  a1[45] = &off_10021F0F8;
  a1[46] = &off_10021F120;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021EFF8;
  a1[45] = off_10021F080;
  a1[46] = off_10021F0A8;
  return a1;
}

void sub_10015595C(_Unwind_Exception *a1)
{
  sub_100161390(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100155980(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100161390(a1);
  std::ios::~ios();
  return a1;
}

ssize_t sub_1001559C4(uint64_t a1, off_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a3;
  __p = 0;
  v21 = 0;
  v22 = 0;
  sub_100155CC8(&__p, (a3 + a4 - 1) / a4 * a4);
  if (v7)
  {
    v10 = v21;
    do
    {
      if (v7 >= a4)
      {
        v11 = a4;
      }

      else
      {
        v11 = v7;
      }

      if (v10 >= v22)
      {
        v12 = (v10 - __p) >> 4;
        if ((v12 + 1) >> 60)
        {
          sub_100015B70();
        }

        v13 = (v22 - __p) >> 3;
        if (v13 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        if (v22 - __p >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_100083D14(&__p, v14);
        }

        v15 = (16 * v12);
        *v15 = a5;
        v15[1] = v11;
        v10 = (16 * v12 + 16);
        v16 = (16 * v12 - (v21 - __p));
        memcpy(v15 - (v21 - __p), __p, v21 - __p);
        v17 = __p;
        __p = v16;
        v21 = v10;
        v22 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v10 = a5;
        *(v10 + 1) = v11;
        v10 += 16;
      }

      v21 = v10;
      v7 -= v11;
    }

    while (v7);
  }

  else
  {
    v10 = v21;
  }

  v18 = pwritev(**(a1 + 56), __p, (v10 - __p) >> 4, a2);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v18;
}

void sub_100155B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100155B5C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166710(a1, a2);
  *a1 = off_10021F218;
  a1[45] = &off_10021F318;
  a1[46] = &off_10021F340;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021F218;
  a1[45] = off_10021F2A0;
  a1[46] = off_10021F2C8;
  return a1;
}

void sub_100155C60(_Unwind_Exception *a1)
{
  sub_100161B28(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100155C84(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100161B28(a1);
  std::ios::~ios();
  return a1;
}

void sub_100155CC8(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_100083D14(a1, a2);
    }

    sub_100015B70();
  }
}

uint64_t sub_100155D68(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((*(v1 + 48) & 1) != 0 || ((*(*a1 + 48))(a1) & 1) == 0 && sub_100057078(*(a1 + 40)))
  {
    return 0;
  }

  v4 = (*(*a1 + 48))(a1);
  if (v4)
  {
    v5 = 6;
  }

  else
  {
    v5 = 5;
  }

  if (!flock(**(a1 + 56), v5))
  {
    *&v8 = "int FileLocal::lock()";
    *(&v8 + 1) = 19;
    v9 = 0;
    sub_10012FDC8(v10, &v8);
    sub_100001FE8(v11, "File (fd ", 9);
    std::ostream::operator<<();
    sub_100001FE8(v11, ") is locked", 11);
    std::ostream::~ostream();
    sub_1001309C8(v10);
    std::ios::~ios();
    result = 0;
    *(v1 + 48) = 1;
    return result;
  }

  if (*__error() != 35)
  {
    *&v8 = "int FileLocal::lock()";
    *(&v8 + 1) = 19;
    v9 = 0;
    sub_10012FF34(v10, &v8);
    sub_100001FE8(v11, "flock returned errno ", 21);
    __error();
    std::ostream::operator<<();
    sub_100001FE8(v11, ", keeping file unlocked", 23);
    std::ostream::~ostream();
    sub_100131228(v10);
    std::ios::~ios();
    return 0;
  }

  *&v8 = "int FileLocal::lock()";
  *(&v8 + 1) = 19;
  v9 = 16;
  sub_100156040(v10, &v8);
  sub_100001FE8(v11, "Cannot acquire ", 15);
  if (v4)
  {
    v6 = "exclusive";
  }

  else
  {
    v6 = "shared";
  }

  if (v4)
  {
    v7 = 9;
  }

  else
  {
    v7 = 6;
  }

  sub_100001FE8(v11, v6, v7);
  sub_100001FE8(v11, " lock, errno ", 13);
  __error();
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_1001622C0(v10);
  std::ios::~ios();
  return -*__error();
}

void sub_100156008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100156168(va);
  _Unwind_Resume(a1);
}

void *sub_100156040(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001667D8(a1, a2);
  *a1 = off_10021F438;
  a1[45] = &off_10021F538;
  a1[46] = &off_10021F560;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021F438;
  a1[45] = off_10021F4C0;
  a1[46] = off_10021F4E8;
  return a1;
}

void sub_100156144(_Unwind_Exception *a1)
{
  sub_1001622C0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100156168(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001622C0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001561B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(v1 + 48) != 1)
  {
    return 0;
  }

  if (flock(**(a1 + 56), 8))
  {
    *&v3 = "int FileLocal::unlock_all()";
    *(&v3 + 1) = 25;
    v4 = 16;
    sub_100156354(v5, &v3);
    sub_100001FE8(v6, "Failed unlocking file with fd ", 30);
    std::ostream::operator<<();
    sub_100001FE8(v6, ", errno ", 8);
    __error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100162A58(v5);
    std::ios::~ios();
    return -*__error();
  }

  else
  {
    *&v3 = "int FileLocal::unlock_all()";
    *(&v3 + 1) = 25;
    v4 = 0;
    sub_100072C88(v5, &v3);
    sub_100001FE8(v6, "File (fd ", 9);
    std::ostream::operator<<();
    sub_100001FE8(v6, ") is unlocked", 13);
    std::ostream::~ostream();
    sub_100072EBC(v5);
    std::ios::~ios();
    result = 0;
    *(v1 + 48) = 0;
  }

  return result;
}

void sub_100156330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100072DB0(va);
  _Unwind_Resume(a1);
}

void *sub_100156354(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001668A0(a1, a2);
  *a1 = off_10021F658;
  a1[45] = &off_10021F758;
  a1[46] = &off_10021F780;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021F658;
  a1[45] = off_10021F6E0;
  a1[46] = off_10021F708;
  return a1;
}

void sub_100156458(_Unwind_Exception *a1)
{
  sub_100162A58(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015647C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100162A58(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001564E0(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 48);
  *(v1 + 48) = 0;
  return result;
}

void sub_1001564F0(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);
  if (v2 == v1)
  {
    return;
  }

  v3 = a1;
  v4 = *(a1 + 96);
  v5 = &v1[v4 >> 5];
  v6 = *v5 + 128 * (v4 & 0x1F);
  if (v6 == *(v1 + (((*(a1 + 104) + v4) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((*(a1 + 104) + v4) & 0x1F))
  {
    return;
  }

  v7 = *(a1 + 40);
  v86 = *(v7 + 49);
  v87 = *(v7 + 72);
  while (v2 == v1)
  {
    if (!v6)
    {
      goto LABEL_158;
    }

    v8 = 0;
LABEL_9:
    if (v8 == v6)
    {
      v12 = v5;
      v13 = v6;
    }

    else
    {
      v9 = (v6 - *v5) >> 7;
      if (v9 < 0)
      {
        v14 = 30 - v9;
        v10 = ~v14;
        v11 = &v5[-(v14 >> 5)];
      }

      else
      {
        v10 = v9 + 1;
        v11 = &v5[(v9 + 1) >> 5];
      }

      v15 = *v11 + 128 * (v10 & 0x1F);
      v13 = v6;
      v12 = v5;
      if (v15 != v8)
      {
        v12 = v5;
        v13 = v6;
        do
        {
          v16 = v15;
          v17 = v11;
          if (*(v13 + 112) != *(v15 + 112))
          {
            break;
          }

          v18 = *(v13 + 24);
          v19 = *(v13 + 16) + v18;
          if (v19 != *(v15 + 24))
          {
            break;
          }

          if (*(v13 + 104) == 1)
          {
            v20 = *(v13 + 48);
            if (*(v15 + 104))
            {
              if ((v20 != 0) == (*(v15 + 48) == 0))
              {
                break;
              }

              if (v20)
              {
                sub_100093838(v13 + 48, v18, v19, &v101);
                if (!sub_1000938C4(&v101, v16 + 48))
                {
                  break;
                }
              }
            }

            else if (v20)
            {
              break;
            }
          }

          else
          {
            v21 = *(v15 + 48);
            if (*(v16 + 104) == 1 && v21 != 0)
            {
              break;
            }
          }

          v15 = v16 + 128;
          v11 = v17;
          if (v16 + 128 - *v17 == 4096)
          {
            v11 = v17 + 1;
            v15 = v17[1];
          }

          v12 = v17;
          v13 = v16;
        }

        while (v15 != v8);
      }
    }

    v23 = (v13 - *v12) >> 7;
    if (v23 < 0)
    {
      v26 = 30 - v23;
      v92 = &v12[-(v26 >> 5)];
      v25 = *v92 + 128 * (~v26 & 0x1F);
    }

    else
    {
      v24 = v23 + 1;
      v92 = &v12[v24 >> 5];
      v25 = *v92 + 128 * (v24 & 0x1F);
    }

    if (v6[104] == 1 && *(v6 + 12))
    {
      (*(*v3 + 80))(&v98, v3);
      v27 = *(v6 + 28) == 0;
      v28 = *(v6 + 12);
      if (v28 == 3)
      {
        sub_1001460D4(&v101, v27, v6 + 7, *(v6 + 22));
        sub_100146188(v111, &v101);
        v112 = 2;
        sub_100146248(&v101);
      }

      else if (v28 == 2)
      {
        sub_100145D00(&v101, v27, v6 + 7, v6 + 9, *(v6 + 22));
        sub_100145E3C(v111, &v101);
        v112 = 1;
        v101 = off_10021B3A0;
        sub_100030D98(&v104);
        v101 = off_1001F8FA0;
        if (*(&v102 + 1))
        {
          v103[0] = *(&v102 + 1);
          operator delete(*(&v102 + 1));
        }
      }

      else
      {
        sub_100146500(v109, v6 + 9);
        sub_100145774(&v101, v27, v6 + 7, v109, *(v6 + 22));
        sub_1001458C8(v111, &v101);
        v112 = 0;
        v101 = off_10021B378;
        sub_100030CF8(v105);
        v43 = v104;
        v104 = 0;
        if (v43)
        {
          operator delete[]();
        }

        v101 = off_1001F8FA0;
        if (*(&v102 + 1))
        {
          v103[0] = *(&v102 + 1);
          operator delete(*(&v102 + 1));
        }

        v44 = *&v109[0];
        *&v109[0] = 0;
        if (v44)
        {
          operator delete[]();
        }
      }

      v45 = *(v6 + 22);
      v46 = *(v6 + 12) - *(v6 + 3);
      v97[0] = v5;
      v97[1] = v6;
      v97[2] = v92;
      v97[3] = v25;
      v95 = v46;
      v96 = v97;
      sub_100030DC4(v109, v111);
      v110 = v45;
      v90 = v98;
      v47 = *v96;
      v48 = v96[1];
      *&v93 = &v95;
      *(&v93 + 1) = v47;
      v94 = v48;
      v49 = v96[3];
      v50 = *(v6 + 28);
      v51 = vm_page_size;
      sub_100148204(v50, v116);
      v88 = v46;
      v91 = v50;
      if (v48 == v49)
      {
        v52 = 0;
        goto LABEL_99;
      }

      sub_100166968(&v93, &v121);
      sub_100030254(&v113, &v121);
      if (v122)
      {
        sub_10000E984(v122);
      }

      v99 = v93;
      v53 = v94;
      v100 = v94;
      if (v94 == v49)
      {
        v52 = 0;
LABEL_97:
        if (v114)
        {
          sub_10000E984(v114);
        }

LABEL_99:
        sub_100147DC0(&v101, v52, vm_page_size);
        sub_1000320D4(v116);
        v105[1] = v109;
        v105[2] = v90;
        v106 = v91;
        v107 = -v88;
        if (v48 == v49)
        {
          v62 = 0;
        }

        else
        {
          v62 = 0;
          v63 = *v47;
          do
          {
            v48 += 16;
            if (v48 - v63 == 4096)
            {
              v64 = v47[1];
              ++v47;
              v63 = v64;
              v48 = v64;
            }

            ++v62;
          }

          while (v48 != v49);
        }

        v108 = v62;
        is_mul_ok(3 * v62, 0x18uLL);
        operator new[]();
      }

      v52 = 0;
      v54 = v115 / v51 * v51;
      v55 = *(&v99 + 1);
      while (2)
      {
        sub_100166968(&v99, &v121);
        sub_100030254(&v118, &v121);
        if (!v117)
        {
          sub_10001583C();
        }

        if ((*(*v117 + 48))(v117, &v118))
        {
          v56 = v119 + v120 - v54;
          if (v56 % v51)
          {
            v57 = v51 - v56 % v51;
          }

          else
          {
            v57 = 0;
          }

          v58 = v57 + v56;
          v52 += v58;
          v54 += v58;
        }

        else
        {
          v59 = v51;
          if (!(v120 % v45))
          {
            if (!(v119 % v45))
            {
              v54 = v119 + v120;
              goto LABEL_87;
            }

            v59 = 0;
          }

          v60 = v59 + v52;
          if ((v119 + v120) % v45)
          {
            v61 = v51;
          }

          else
          {
            v61 = 0;
          }

          v52 = v60 + v61;
          v54 = (v45 - 1 + v119 + v120) / v45 * v45;
        }

LABEL_87:
        if (*(&v118 + 1))
        {
          sub_10000E984(*(&v118 + 1));
        }

        if (v122)
        {
          sub_10000E984(v122);
        }

        v53 += 16;
        v100 = v53;
        if ((v53 - *v55) == 4096)
        {
          *(&v99 + 1) = v55 + 1;
          v53 = v55[1];
          v100 = v53;
          ++v55;
        }

        if (v53 == v49)
        {
          goto LABEL_97;
        }

        continue;
      }
    }

    v101 = v103;
    v102 = xmmword_1001BC760;
    v111[0] = &v101;
    if (v6 == v25)
    {
      v33 = 0;
    }

    else
    {
      v29 = v6;
      v30 = v5;
      do
      {
        v31 = *(v29 + 2);
        *&v109[0] = *v29;
        *(&v109[0] + 1) = v31;
        sub_10015A63C(v111, v109);
        v29 += 128;
        if (v29 - *v30 == 4096)
        {
          v32 = v30[1];
          ++v30;
          v29 = v32;
        }
      }

      while (v29 != v25);
      v33 = v102 == 1;
    }

    v34 = *(v6 + 28);
    if (v34 == 1)
    {
      v37 = *(v6 + 3);
      v38 = **(v3 + 56);
      if (v33)
      {
        v39 = pwrite(v38, v101->iov_base, v101->iov_len, *(v6 + 3));
      }

      else
      {
        if (v6 == v25)
        {
          v42 = 0;
        }

        else
        {
          v42 = ((v25 - *v92) >> 7) + 4 * (v92 - v5) - ((v6 - *v5) >> 7);
        }

        v39 = pwritev(v38, v101, v42, *(v6 + 3));
      }

      v40 = v39;
      if (v39 >= 1)
      {
        v66 = v39 + v37;
        v67 = (*(v3 + 40) + 64);
        v68 = atomic_load(v67);
        if (v68 >= v39 + v37)
        {
          goto LABEL_136;
        }

        v69 = v68;
        do
        {
          atomic_compare_exchange_strong(v67, &v69, v66);
          if (v69 == v68)
          {
            break;
          }

          v68 = v69;
        }

        while (v69 < v66);
      }
    }

    else
    {
      if (v34)
      {
        v40 = 0;
        goto LABEL_136;
      }

      v35 = *(v6 + 3);
      if (v33)
      {
        v36 = (**v87)(v87, **(a1 + 56), v101->iov_base, v101->iov_len, *(v6 + 3));
      }

      else
      {
        if (v86)
        {
          if (v6 == v25)
          {
            v41 = 0;
          }

          else
          {
            v41 = 16 * (((v25 - *v92) >> 7) + 4 * (v92 - v5) - ((v6 - *v5) >> 7));
          }

          v70 = v101;
          v72 = *(a1 + 40);
          v71 = *(a1 + 48);
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v40 = 0;
          if (v41)
          {
            p_iov_len = &v70->iov_len;
            do
            {
              if ((v40 & 0x8000000000000000) == 0)
              {
                v74 = (***(v72 + 72))(*(v72 + 72), *(v72 + 8), *(p_iov_len - 1), *p_iov_len, v40 + v35);
                if (v74 == *p_iov_len)
                {
                  v40 += v74;
                }

                else if (v74 == -1)
                {
                  v40 = -1;
                }

                else
                {
                  v40 = -5;
                }
              }

              p_iov_len += 2;
              v41 -= 16;
            }

            while (v41);
          }

          if (v71)
          {
            sub_10000E984(v71);
          }

          v3 = a1;
          goto LABEL_134;
        }

        if (v6 == v25)
        {
          v65 = 0;
        }

        else
        {
          v65 = ((v25 - *v92) >> 7) + 4 * (v92 - v5) - ((v6 - *v5) >> 7);
        }

        v36 = (*(*v87 + 8))(v87, **(a1 + 56), v101, v65, *(v6 + 3));
      }

      v40 = v36;
      v3 = a1;
    }

LABEL_134:
    if (v40 == -1)
    {
      v40 = -*__error();
    }

    do
    {
LABEL_136:
      v75 = v40;
      if (v40 >= 1)
      {
        if (*(v6 + 2) >= v40)
        {
          v75 = v40;
        }

        else
        {
          v75 = *(v6 + 2);
        }
      }

      v76 = *(v6 + 15);
      *v76 = v75;
      *(v76 + 4) = 1;
      sub_100032F74(v6 + 15);
      v6 += 128;
      if (v6 - *v5 == 4096)
      {
        v77 = v5[1];
        ++v5;
        v6 = v77;
      }

      v40 -= v75 & ~(v75 >> 63);
    }

    while (v5 < v12 || v5 == v12 && v6 <= v13);
    if (*(&v102 + 1) && v103 != v101)
    {
      operator delete(v101);
    }

    v4 = *(v3 + 96);
    v1 = *(v3 + 72);
    v2 = *(v3 + 80);
  }

  v8 = *(v1 + (((v4 + *(v3 + 104)) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((v4 + *(v3 + 104)) & 0x1F);
  if (v6 != v8)
  {
    goto LABEL_9;
  }

  v78 = &v1[v4 >> 5];
  v79 = *v78 + 128 * (v4 & 0x1F);
  if (v79 != v6)
  {
    do
    {
      v80 = *(v79 + 15);
      if (v80)
      {
        *(v80 + 16) = 0;
      }

      v81 = *(v79 + 1);
      if (v81)
      {
        sub_10000E984(v81);
      }

      v79 += 128;
      if (v79 - *v78 == 4096)
      {
        v82 = v78[1];
        ++v78;
        v79 = v82;
      }
    }

    while (v79 != v6);
    v1 = *(v3 + 72);
    v2 = *(v3 + 80);
  }

LABEL_158:
  *(v3 + 104) = 0;
  v83 = v2 - v1;
  if (v83 >= 3)
  {
    do
    {
      operator delete(*v1);
      v84 = *(v3 + 80);
      v1 = (*(v3 + 72) + 8);
      *(v3 + 72) = v1;
      v83 = (v84 - v1) >> 3;
    }

    while (v83 > 2);
  }

  if (v83 == 1)
  {
    v85 = 16;
LABEL_164:
    *(v3 + 96) = v85;
  }

  else if (v83 == 2)
  {
    v85 = 32;
    goto LABEL_164;
  }
}

void sub_100157494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p)
{
  sub_100146248(&__p);
  if (a36)
  {
    sub_10000E984(a36);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100157728(uint64_t a1)
{
  sub_100147730(a1);
  (*(**(a1 + 224) + 152))(*(a1 + 224));
  sub_100166DD8(a1 + 224, *(a1 + 304));

  return sub_10003172C(a1);
}

uint64_t sub_1001577AC(uint64_t a1)
{
  *a1 = off_10021C5D8;
  *(a1 + 24) = off_10021C6C8;
  *(a1 + 32) = off_10021C700;
  v10 = 66053;
  if (ffsctl(**(a1 + 56), 0xC0084A44uLL, &v10, 0))
  {
    *&v6 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v6 + 1) = 43;
    v7 = 0;
    sub_100157A88(v8, &v6);
    sub_100001FE8(v9, "mark purgeable failed on ", 25);
    sub_100192C84(v9, a1);
    sub_100001FE8(v9, ", errno ", 8);
    __error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1001631F0(v8);
  }

  else
  {
    *&v6 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v6 + 1) = 43;
    v7 = 0;
    sub_100157BF4(v8, &v6);
    sub_100192C84(v9, a1);
    sub_100001FE8(v9, " marked as purgeable", 20);
    std::ostream::~ostream();
    sub_100163988(v8);
  }

  std::ios::~ios();
  v2 = (*(*a1 + 192))(a1);
  if (futimes(v2, 0))
  {
    *&v6 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v6 + 1) = 43;
    v7 = 16;
    sub_100157D60(v8, &v6);
    sub_100001FE8(v9, "futimes failed on ", 18);
    sub_100192C84(v9, a1);
    sub_100001FE8(v9, ", errno ", 8);
    __error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100164120(v8);
    std::ios::~ios();
  }

  *a1 = off_10021C798;
  *(a1 + 24) = off_10021C888;
  *(a1 + 32) = off_10021C8C0;
  sub_1000571A8((a1 + 64));
  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_100157A88(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100167904(a1, a2);
  *a1 = off_10021F878;
  a1[45] = &off_10021F978;
  a1[46] = &off_10021F9A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021F878;
  a1[45] = off_10021F900;
  a1[46] = off_10021F928;
  return a1;
}

void sub_100157B8C(_Unwind_Exception *a1)
{
  sub_1001631F0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100157BB0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001631F0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100157BF4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001679CC(a1, a2);
  *a1 = off_10021FA98;
  a1[45] = &off_10021FB98;
  a1[46] = &off_10021FBC0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021FA98;
  a1[45] = off_10021FB20;
  a1[46] = off_10021FB48;
  return a1;
}

void sub_100157CF8(_Unwind_Exception *a1)
{
  sub_100163988(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100157D1C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100163988(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100157D60(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100167A94(a1, a2);
  *a1 = off_10021FCB8;
  a1[45] = &off_10021FDB8;
  a1[46] = &off_10021FDE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021FCB8;
  a1[45] = off_10021FD40;
  a1[46] = off_10021FD68;
  return a1;
}

void sub_100157E64(_Unwind_Exception *a1)
{
  sub_100164120(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100157E88(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100164120(a1);
  std::ios::~ios();
  return a1;
}

void sub_100157EE0(uint64_t a1)
{
  sub_1001577AC(a1);

  operator delete();
}

void sub_100157F18(uint64_t a1)
{
  sub_1001577AC(a1 - 24);

  operator delete();
}

void sub_100157F54(uint64_t a1)
{
  sub_1001577AC(a1 - 32);

  operator delete();
}

uint64_t sub_100157F90(uint64_t a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v3)
  {
    if (v6)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = (*(*v6 + 192))(v6);
      goto LABEL_10;
    }

    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (**v3)(v3);
LABEL_10:
  v7 = v5;
  if (v4)
  {
    sub_10000E984(v4);
  }

  return v7;
}

void sub_1001580C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000E984(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001580F4(void *a1)
{
  *a1 = off_10021C798;
  a1[3] = off_10021C888;
  a1[4] = off_10021C8C0;
  sub_1000571A8(a1 + 8);
  v2 = a1[6];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_1001581D8(uint64_t a1, void *a2)
{
  sub_100001FE8(a2, "file(", 5);
  v2 = std::ostream::operator<<();

  return sub_100001FE8(v2, ")", 1);
}

void sub_100158284(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v11) = 0;
  v12 = 0;
  v14 = &v15;
  v15 = &v11;
  v13 = 0;
  sub_100030254(&v7, a2);
  v9 = 0;
  v10 = v15;
  v5 = v15;
  v15 = 0;
  *(v5 + 2) = &v10;
  sub_1001647B0((a1 + 64), &v7);
  if (v10)
  {
    *(v10 + 2) = 0;
  }

  if (v8)
  {
    sub_10000E984(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v12 == 1)
  {
    *a3 = v11;
    *(a3 + 4) = 1;
  }

  v6 = v14;
  *(a3 + 16) = v14;
  if (v6)
  {
    *v6 = a3;
  }

  if (v15)
  {
    *(v15 + 2) = 0;
  }
}

void sub_10015835C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a10)
  {
    sub_10000E984(a10);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    *(v26 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_100158394(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v11) = 0;
  v12 = 0;
  v14 = &v15;
  v15 = &v11;
  v13 = 0;
  sub_100030254(&v7, a2);
  v9 = 1;
  v10 = v15;
  v5 = v15;
  v15 = 0;
  *(v5 + 2) = &v10;
  sub_1001647B0((a1 + 64), &v7);
  if (v10)
  {
    *(v10 + 2) = 0;
  }

  if (v8)
  {
    sub_10000E984(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v12 == 1)
  {
    *a3 = v11;
    *(a3 + 4) = 1;
  }

  v6 = v14;
  *(a3 + 16) = v14;
  if (v6)
  {
    *v6 = a3;
  }

  if (v15)
  {
    *(v15 + 2) = 0;
  }
}

void sub_100158470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a10)
  {
    sub_10000E984(a10);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    *(v26 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_1001584C0(void *a1)
{
  *(a1 - 3) = off_10021C798;
  *a1 = off_10021C888;
  a1[1] = off_10021C8C0;
  sub_1000571A8(a1 + 5);
  v2 = a1[3];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 - 1);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_100158574(void *a1)
{
  *(a1 - 3) = off_10021C798;
  *a1 = off_10021C888;
  a1[1] = off_10021C8C0;
  sub_1000571A8(a1 + 5);
  v2 = a1[3];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 - 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_100158640(void *a1)
{
  *(a1 - 4) = off_10021C798;
  *(a1 - 1) = off_10021C888;
  *a1 = off_10021C8C0;
  sub_1000571A8(a1 + 4);
  v2 = a1[2];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 - 2);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1001586F0(void *a1)
{
  *(a1 - 4) = off_10021C798;
  *(a1 - 1) = off_10021C888;
  *a1 = off_10021C8C0;
  sub_1000571A8(a1 + 4);
  v2 = a1[2];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 - 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_1001587DC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100158A74(v1);

  return std::ios::~ios();
}

uint64_t sub_100158828(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100158A74(v1);

  return std::ios::~ios();
}

void sub_100158888(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100158A74(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001588F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015892C(_BYTE *a1, int a2)
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

void sub_100158998(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100158A74(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001589FC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100158A74(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100158A74(uint64_t a1)
{
  *a1 = &off_10021CB50;
  sub_100158BE0(a1);
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

uint64_t sub_100158BE0(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_100158D90((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100158D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100158D58(uint64_t a1)
{
  sub_100158A74(a1);

  operator delete();
}

int *sub_100158D90(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 67;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 67;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100158F74(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015920C(v1);

  return std::ios::~ios();
}

uint64_t sub_100158FC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015920C(v1);

  return std::ios::~ios();
}

void sub_100159020(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015920C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100159088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001590C4(_BYTE *a1, int a2)
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

void sub_100159130(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015920C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100159194(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015920C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015920C(uint64_t a1)
{
  *a1 = &off_10021CD70;
  sub_100159378(a1);
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

uint64_t sub_100159378(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_100159528((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001594C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001594F0(uint64_t a1)
{
  sub_10015920C(a1);

  operator delete();
}

int *sub_100159528(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 96;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 96;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015970C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001599A4(v1);

  return std::ios::~ios();
}

uint64_t sub_100159758(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001599A4(v1);

  return std::ios::~ios();
}

void sub_1001597B8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001599A4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100159820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015985C(_BYTE *a1, int a2)
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

void sub_1001598C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001599A4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015992C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001599A4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001599A4(uint64_t a1)
{
  *a1 = &off_10021CF90;
  sub_100159B10(a1);
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

uint64_t sub_100159B10(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_100159CC0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100159C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100159C88(uint64_t a1)
{
  sub_1001599A4(a1);

  operator delete();
}

int *sub_100159CC0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 104;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 104;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100159EA4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015A13C(v1);

  return std::ios::~ios();
}

uint64_t sub_100159EF0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015A13C(v1);

  return std::ios::~ios();
}

void sub_100159F50(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015A13C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100159FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100159FF4(_BYTE *a1, int a2)
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

void sub_10015A060(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015A13C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015A0C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015A13C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015A13C(uint64_t a1)
{
  *a1 = &off_10021D1B0;
  sub_10015A2A8(a1);
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

uint64_t sub_10015A2A8(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10015A458((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10015A3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015A420(uint64_t a1)
{
  sub_10015A13C(a1);

  operator delete();
}

int *sub_10015A458(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 209;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 209;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t **sub_10015A63C(uint64_t **a1, _OWORD *a2)
{
  v4 = *a1;
  v5 = *(v4 + 8);
  v6 = (*v4 + 16 * v5);
  if (v5 == *(v4 + 16))
  {
    sub_1000DA740(v4, v6, &v8, 1, a2);
  }

  else
  {
    *v6 = *a2;
    ++*(v4 + 8);
  }

  return a1;
}

uint64_t sub_10015A6A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015A940(v1);

  return std::ios::~ios();
}

uint64_t sub_10015A6F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015A940(v1);

  return std::ios::~ios();
}

void sub_10015A754(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015A940(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015A7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015A7F8(_BYTE *a1, int a2)
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

void sub_10015A864(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015A940(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015A8C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015A940(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015A940(uint64_t a1)
{
  *a1 = &off_10021D3D0;
  sub_10015AAAC(a1);
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

uint64_t sub_10015AAAC(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10015AC5C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10015ABF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015AC24(uint64_t a1)
{
  sub_10015A940(a1);

  operator delete();
}

int *sub_10015AC5C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 408;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 408;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015AE40(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015B0D8(v1);

  return std::ios::~ios();
}

uint64_t sub_10015AE8C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015B0D8(v1);

  return std::ios::~ios();
}

void sub_10015AEEC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015B0D8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015AF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015AF90(_BYTE *a1, int a2)
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

void sub_10015AFFC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015B0D8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015B060(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015B0D8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015B0D8(uint64_t a1)
{
  *a1 = &off_10021D5F0;
  sub_10015B244(a1);
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

uint64_t sub_10015B244(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10015B3F4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10015B390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015B3BC(uint64_t a1)
{
  sub_10015B0D8(a1);

  operator delete();
}

int *sub_10015B3F4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 412;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 412;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015B5D8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015B870(v1);

  return std::ios::~ios();
}

uint64_t sub_10015B624(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015B870(v1);

  return std::ios::~ios();
}

void sub_10015B684(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015B870(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015B6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015B728(_BYTE *a1, int a2)
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

void sub_10015B794(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015B870(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015B7F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015B870(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015B870(uint64_t a1)
{
  *a1 = &off_10021D810;
  sub_10015B9DC(a1);
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

uint64_t sub_10015B9DC(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10015BB8C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10015BB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015BB54(uint64_t a1)
{
  sub_10015B870(a1);

  operator delete();
}

int *sub_10015BB8C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 494;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 494;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015BD70(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015C008(v1);

  return std::ios::~ios();
}

uint64_t sub_10015BDBC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015C008(v1);

  return std::ios::~ios();
}

void sub_10015BE1C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015C008(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015BE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015BEC0(_BYTE *a1, int a2)
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

void sub_10015BF2C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015C008(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015BF90(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015C008(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015C008(uint64_t a1)
{
  *a1 = &off_10021DA30;
  sub_10015C174(a1);
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

uint64_t sub_10015C174(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10015C324((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10015C2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015C2EC(uint64_t a1)
{
  sub_10015C008(a1);

  operator delete();
}

int *sub_10015C324(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 509;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 509;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015C508(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015C7A0(v1);

  return std::ios::~ios();
}

uint64_t sub_10015C554(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015C7A0(v1);

  return std::ios::~ios();
}

void sub_10015C5B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015C7A0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015C61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015C658(_BYTE *a1, int a2)
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

void sub_10015C6C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015C7A0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015C728(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015C7A0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015C7A0(uint64_t a1)
{
  *a1 = &off_10021DC50;
  sub_10015C90C(a1);
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

uint64_t sub_10015C90C(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10015CABC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10015CA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015CA84(uint64_t a1)
{
  sub_10015C7A0(a1);

  operator delete();
}

int *sub_10015CABC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 521;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 521;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015CCA0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015CF38(v1);

  return std::ios::~ios();
}

uint64_t sub_10015CCEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015CF38(v1);

  return std::ios::~ios();
}

void sub_10015CD4C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015CF38(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015CDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015CDF0(_BYTE *a1, int a2)
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

void sub_10015CE5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015CF38(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015CEC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015CF38(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015CF38(uint64_t a1)
{
  *a1 = &off_10021DE70;
  sub_10015D0A4(a1);
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

uint64_t sub_10015D0A4(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10015D254((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10015D1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015D21C(uint64_t a1)
{
  sub_10015CF38(a1);

  operator delete();
}

int *sub_10015D254(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 535;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 535;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015D438(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015D6D0(v1);

  return std::ios::~ios();
}

uint64_t sub_10015D484(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015D6D0(v1);

  return std::ios::~ios();
}

void sub_10015D4E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015D6D0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015D54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015D588(_BYTE *a1, int a2)
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

void sub_10015D5F4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015D6D0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015D658(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015D6D0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015D6D0(uint64_t a1)
{
  *a1 = &off_10021E090;
  sub_10015D83C(a1);
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

uint64_t sub_10015D83C(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10015D9EC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10015D988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015D9B4(uint64_t a1)
{
  sub_10015D6D0(a1);

  operator delete();
}

int *sub_10015D9EC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 540;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 540;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015DBD0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015DE68(v1);

  return std::ios::~ios();
}

uint64_t sub_10015DC1C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015DE68(v1);

  return std::ios::~ios();
}

void sub_10015DC7C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015DE68(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015DCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015DD20(_BYTE *a1, int a2)
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

void sub_10015DD8C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015DE68(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015DDF0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015DE68(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015DE68(uint64_t a1)
{
  *a1 = &off_10021E2B0;
  sub_10015DFD4(a1);
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

uint64_t sub_10015DFD4(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10015E184((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10015E120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015E14C(uint64_t a1)
{
  sub_10015DE68(a1);

  operator delete();
}

int *sub_10015E184(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 552;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 552;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015E368(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015E600(v1);

  return std::ios::~ios();
}

uint64_t sub_10015E3B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015E600(v1);

  return std::ios::~ios();
}

void sub_10015E414(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015E600(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015E47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015E4B8(_BYTE *a1, int a2)
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

void sub_10015E524(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015E600(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015E588(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015E600(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015E600(uint64_t a1)
{
  *a1 = &off_10021E4D0;
  sub_10015E76C(a1);
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

uint64_t sub_10015E76C(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10015E91C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10015E8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015E8E4(uint64_t a1)
{
  sub_10015E600(a1);

  operator delete();
}

int *sub_10015E91C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 563;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 563;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015EB00(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015ED98(v1);

  return std::ios::~ios();
}

uint64_t sub_10015EB4C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015ED98(v1);

  return std::ios::~ios();
}

void sub_10015EBAC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015ED98(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015EC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015EC50(_BYTE *a1, int a2)
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

void sub_10015ECBC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015ED98(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015ED20(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015ED98(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015ED98(uint64_t a1)
{
  *a1 = &off_10021E6F0;
  sub_10015EF04(a1);
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

uint64_t sub_10015EF04(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10015F0B4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10015F050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015F07C(uint64_t a1)
{
  sub_10015ED98(a1);

  operator delete();
}

int *sub_10015F0B4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 570;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 570;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015F298(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015F530(v1);

  return std::ios::~ios();
}

uint64_t sub_10015F2E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015F530(v1);

  return std::ios::~ios();
}

void sub_10015F344(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015F530(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015F3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015F3E8(_BYTE *a1, int a2)
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

void sub_10015F454(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015F530(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015F4B8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015F530(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015F530(uint64_t a1)
{
  *a1 = &off_10021E910;
  sub_10015F69C(a1);
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

uint64_t sub_10015F69C(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10015F84C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10015F7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015F814(uint64_t a1)
{
  sub_10015F530(a1);

  operator delete();
}

int *sub_10015F84C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 580;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 580;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015FA30(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015FCC8(v1);

  return std::ios::~ios();
}

uint64_t sub_10015FA7C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015FCC8(v1);

  return std::ios::~ios();
}

void sub_10015FADC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015FCC8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015FB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015FB80(_BYTE *a1, int a2)
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

void sub_10015FBEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015FCC8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015FC50(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015FCC8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015FCC8(uint64_t a1)
{
  *a1 = &off_10021EB30;
  sub_10015FE34(a1);
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

uint64_t sub_10015FE34(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10015FFE4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10015FF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015FFAC(uint64_t a1)
{
  sub_10015FCC8(a1);

  operator delete();
}

int *sub_10015FFE4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 593;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 593;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001601C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100160460(v1);

  return std::ios::~ios();
}

uint64_t sub_100160214(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100160460(v1);

  return std::ios::~ios();
}

void sub_100160274(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100160460(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001602DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100160318(_BYTE *a1, int a2)
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

void sub_100160384(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100160460(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001603E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100160460(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100160460(uint64_t a1)
{
  *a1 = &off_10021ED50;
  sub_1001605CC(a1);
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

uint64_t sub_1001605CC(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10016077C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100160718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100160744(uint64_t a1)
{
  sub_100160460(a1);

  operator delete();
}

int *sub_10016077C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 606;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 606;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100160960(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100160BF8(v1);

  return std::ios::~ios();
}

uint64_t sub_1001609AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100160BF8(v1);

  return std::ios::~ios();
}

void sub_100160A0C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100160BF8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100160A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100160AB0(_BYTE *a1, int a2)
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

void sub_100160B1C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100160BF8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100160B80(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100160BF8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100160BF8(uint64_t a1)
{
  *a1 = &off_10021EF70;
  sub_100160D64(a1);
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

uint64_t sub_100160D64(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_100160F14((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100160EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100160EDC(uint64_t a1)
{
  sub_100160BF8(a1);

  operator delete();
}

int *sub_100160F14(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 614;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 614;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001610F8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100161390(v1);

  return std::ios::~ios();
}

uint64_t sub_100161144(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100161390(v1);

  return std::ios::~ios();
}

void sub_1001611A4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100161390(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016120C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100161248(_BYTE *a1, int a2)
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

void sub_1001612B4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100161390(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100161318(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100161390(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100161390(uint64_t a1)
{
  *a1 = &off_10021F190;
  sub_1001614FC(a1);
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

uint64_t sub_1001614FC(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_1001616AC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100161648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100161674(uint64_t a1)
{
  sub_100161390(a1);

  operator delete();
}

int *sub_1001616AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 623;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 623;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100161890(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100161B28(v1);

  return std::ios::~ios();
}

uint64_t sub_1001618DC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100161B28(v1);

  return std::ios::~ios();
}

void sub_10016193C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100161B28(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001619A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001619E0(_BYTE *a1, int a2)
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

void sub_100161A4C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100161B28(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100161AB0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100161B28(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100161B28(uint64_t a1)
{
  *a1 = &off_10021F3B0;
  sub_100161C94(a1);
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

uint64_t sub_100161C94(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_100161E44((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100161DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100161E0C(uint64_t a1)
{
  sub_100161B28(a1);

  operator delete();
}

int *sub_100161E44(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 631;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 631;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100162028(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001622C0(v1);

  return std::ios::~ios();
}

uint64_t sub_100162074(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001622C0(v1);

  return std::ios::~ios();
}

void sub_1001620D4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001622C0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016213C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100162178(_BYTE *a1, int a2)
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

void sub_1001621E4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001622C0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100162248(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001622C0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001622C0(uint64_t a1)
{
  *a1 = &off_10021F5D0;
  sub_10016242C(a1);
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

uint64_t sub_10016242C(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_1001625DC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100162578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001625A4(uint64_t a1)
{
  sub_1001622C0(a1);

  operator delete();
}

int *sub_1001625DC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 671;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 671;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001627C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100162A58(v1);

  return std::ios::~ios();
}

uint64_t sub_10016280C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100162A58(v1);

  return std::ios::~ios();
}

void sub_10016286C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100162A58(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001628D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100162910(_BYTE *a1, int a2)
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

void sub_10016297C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100162A58(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001629E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100162A58(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100162A58(uint64_t a1)
{
  *a1 = &off_10021F7F0;
  sub_100162BC4(a1);
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

uint64_t sub_100162BC4(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_100162D74((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100162D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100162D3C(uint64_t a1)
{
  sub_100162A58(a1);

  operator delete();
}

int *sub_100162D74(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 684;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 684;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100162F58(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001631F0(v1);

  return std::ios::~ios();
}

uint64_t sub_100162FA4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001631F0(v1);

  return std::ios::~ios();
}

void sub_100163004(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001631F0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016306C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001630A8(_BYTE *a1, int a2)
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

void sub_100163114(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001631F0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100163178(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001631F0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001631F0(uint64_t a1)
{
  *a1 = &off_10021FA10;
  sub_10016335C(a1);
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

uint64_t sub_10016335C(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10016350C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001634A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001634D4(uint64_t a1)
{
  sub_1001631F0(a1);

  operator delete();
}

int *sub_10016350C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 844;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 844;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001636F0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100163988(v1);

  return std::ios::~ios();
}

uint64_t sub_10016373C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100163988(v1);

  return std::ios::~ios();
}

void sub_10016379C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100163988(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100163804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100163840(_BYTE *a1, int a2)
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

void sub_1001638AC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100163988(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100163910(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100163988(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100163988(uint64_t a1)
{
  *a1 = &off_10021FC30;
  sub_100163AF4(a1);
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

uint64_t sub_100163AF4(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_100163CA4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100163C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100163C6C(uint64_t a1)
{
  sub_100163988(a1);

  operator delete();
}

int *sub_100163CA4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 847;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 847;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100163E88(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100164120(v1);

  return std::ios::~ios();
}

uint64_t sub_100163ED4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100164120(v1);

  return std::ios::~ios();
}

void sub_100163F34(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100164120(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100163F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100163FD8(_BYTE *a1, int a2)
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

void sub_100164044(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100164120(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001640A8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100164120(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100164120(uint64_t a1)
{
  *a1 = &off_10021FE50;
  sub_10016428C(a1);
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

uint64_t sub_10016428C(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_10016443C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001643D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100164404(uint64_t a1)
{
  sub_100164120(a1);

  operator delete();
}

int *sub_10016443C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 851;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 851;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1001646A4(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FEAA0;
  sub_100164700(a1 + 3, a2);
  return a1;
}

double sub_100164700(void *a1, uint64_t a2)
{
  v3 = sub_100192AE0(a1);
  *v3 = off_10021C798;
  v3[3] = off_10021C888;
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v3[4] = off_10021C8C0;
  v3[5] = v4;
  v3[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v3[5];
  }

  v3[7] = v4 + 8;
  result = 0.0;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  return result;
}

uint64_t sub_1001647B0(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 4 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10016489C(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v7 & 0x1F) << 7);
  }

  v9 = sub_100030464(v8, a2);
  v10 = *(a2 + 112);
  v9[15] = *(a2 + 120);
  v9 += 15;
  *(v9 - 2) = v10;
  *(a2 + 120) = 0;
  *(*v9 + 16) = v9;
  v11 = a1[4];
  v12 = a1[5] + 1;
  a1[5] = v12;
  v13 = v11 + v12;
  v14 = a1[1];
  v15 = (v14 + 8 * (v13 >> 5));
  v16 = *v15 + ((v13 & 0x1F) << 7);
  if (a1[2] == v14)
  {
    v16 = 0;
  }

  if (v16 == *v15)
  {
    v16 = *(v15 - 1) + 4096;
  }

  return v16 - 128;
}

void sub_10016489C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x20;
  v3 = v1 - 32;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_100017300(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_100074E98(a1, &v9);
}

void sub_100164A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100164A70(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021CB50;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100164B20(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100164B38(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021CD70;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100164BE8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100164C00(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021CF90;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100164CB0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100164CC8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021D1B0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100164D78(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100164D90(char **a1, char *a2)
{
  if (a2 >> 59)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v4 = operator new(16 * a2);
  v5 = &(*a1)[16 * a1[1]];

  sub_100198A28(a1, v4, a2, v5, 0, 0);
}

uint64_t sub_100164DFC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021D3D0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100164EAC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100164EC4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021D5F0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100164F74(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100164F8C(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  if (fstatfs(*(*v1 + 8), &v15) < 0)
  {
    *&v16 = "FileLocal::shared_state_t::init_unmap_zeros()::(anonymous class)::operator()() const";
    *(&v16 + 1) = 76;
    v17 = 16;
    sub_1001651DC(&v12, &v16);
    sub_100001FE8(v14, "fstatfs failed with err code ", 29);
    __error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100165474(&v12);
    std::ios::~ios();
    v7 = *__error();
    v8 = std::generic_category();
    v9 = *(v2 + 96);
    *(v2 + 80) = v7;
    *(v2 + 88) = v8;
    if (v9 == 1)
    {
      *(v2 + 96) = 0;
    }

    v10 = *__error();
    if (*(v2 + 144) == 1)
    {
      sub_10005715C(v2 + 104);
      *(v2 + 104) = v10;
      *(v2 + 112) = v8;
      *(v2 + 144) = 0;
    }

    else
    {
      *(v2 + 104) = v10;
      *(v2 + 112) = v8;
    }
  }

  else
  {
    f_bsize = v15.f_bsize;
    if ((*(v2 + 96) & 1) == 0)
    {
      *(v2 + 96) = 1;
    }

    *(v2 + 80) = f_bsize;
    if (f_bsize)
    {
      v4 = malloc_type_valloc(f_bsize, 0x8B7C732DuLL);
      if (!v4)
      {
        exception = __cxa_allocate_exception(8uLL);
        v6 = std::bad_alloc::bad_alloc(exception);
      }
    }

    else
    {
      v4 = 0;
    }

    *&v16 = off_1002200F0;
    v18 = &v16;
    v12 = v4;
    sub_100015FBC(v13, &v16);
    sub_10001590C(&v16);
    sub_100165348(v2 + 104, &v12);
    sub_100015888(&v12, 0);
    sub_10001590C(v13);
    v11 = *(v2 + 80);
    if (v11 >= 1)
    {
      bzero(*(v2 + 104), v11);
    }
  }
}

void sub_1001651A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_100015888(va, 0);
  sub_10001590C(va1);
  _Unwind_Resume(a1);
}

void *sub_1001651DC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001653AC(a1, a2);
  *a1 = off_10021FED8;
  a1[45] = &off_10021FFD8;
  a1[46] = &off_100220000;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021FED8;
  a1[45] = off_10021FF60;
  a1[46] = off_10021FF88;
  return a1;
}

void sub_1001652E0(_Unwind_Exception *a1)
{
  sub_100165474(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100165304(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100165474(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100165348(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 40) == 1)
  {
    sub_10000E46C(a1, a2);
  }

  else
  {
    sub_10005715C(a1);
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    sub_100015FBC(a1 + 8, (a2 + 1));
    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t sub_1001653AC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100220070;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10016545C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100165474(uint64_t a1)
{
  *a1 = &off_100220070;
  sub_1001658B4(a1);
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

void sub_1001655E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100165474(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100165648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100165684(_BYTE *a1, int a2)
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

uint64_t sub_1001656F0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100165474(v1);

  return std::ios::~ios();
}

void sub_10016573C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100165474(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001657A0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100165474(v1);

  return std::ios::~ios();
}

void sub_100165800(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100165474(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016587C(uint64_t a1)
{
  sub_100165474(a1);

  operator delete();
}

uint64_t sub_1001658B4(uint64_t a1)
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
        sub_100028B04(a1 + 104, __p);
        sub_100165A28((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100165A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100165A28(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
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
    v26 = 420;
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
    v15 = sub_1000E957C(v6, v7);
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
      v26 = 420;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100165C9C(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100220150))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100165CE8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021D810;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100165D98(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100165DB0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021DA30;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100165E60(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100165E78(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021DC50;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100165F28(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100165F40(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021DE70;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100165FF0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166008(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021E090;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1001660B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001660D0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021E2B0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100166180(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166198(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021E4D0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100166248(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166260(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021E6F0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100166310(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166328(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021E910;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1001663D8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001663F0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021EB30;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1001664A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001664B8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021ED50;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100166568(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166580(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021EF70;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100166630(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166648(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021F190;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1001666F8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166710(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021F3B0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1001667C0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001667D8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021F5D0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100166888(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001668A0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10021F7F0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100166950(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100166968(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  sub_100030254(&v5, v4);
  v7 += *v3;
  if (v8 == 1)
  {
    v8 = 0;
  }

  sub_100030464(a2, &v5);
  *(a2 + 112) = v4 + 120;
  if (v6)
  {
    sub_10000E984(v6);
  }
}

void sub_1001669EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100166A04(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = *a4;
  v11 = *a5;
  v25 = *a2;
  v26 = v6;
  v27 = v7;
  v28 = v10;
  if (v9 == v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = ((v9 - *v8) >> 7) + 4 * (v8 - v6) - ((v7 - *v6) >> 7);
  }

  v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3);
  if (v13 >= v12)
  {
    v13 = v12;
  }

  if (v13)
  {
    v14 = v13 + ((v7 - *v6) >> 7);
    if (v14 < 1)
    {
      v15 = *&v6[-8 * ((31 - v14) >> 5)] + ((~(31 - v14) & 0x1F) << 7);
    }

    else
    {
      v15 = *&v6[(v14 >> 2) & 0x3FFFFFFFFFFFFFF8] + ((v14 & 0x1F) << 7);
    }

    v16 = 24 * v13 - 24;
    do
    {
      v17 = v16;
      sub_100166968(&v25, v29);
      sub_100030464(&v20, v29);
      v23 = v31;
      v24 = v10;
      v18 = v10;
      if (v30)
      {
        sub_10000E984(v30);
        v18 = v24;
      }

      v19 = sub_100147EF8(a1, &v20, v18);
      if (v19 != v22)
      {
        sub_100148248(a1, &v20, v19, v18);
      }

      if (v21)
      {
        sub_10000E984(v21);
      }

      v7 += 128;
      v27 = v7;
      if (v7 - *v6 == 4096)
      {
        v26 = v6 + 8;
        v7 = *(v6 + 1);
        v27 = v7;
        v6 += 8;
      }

      v10 += 24;
      v28 = v10;
      v16 = v17 - 24;
    }

    while (v7 != v15 || v17);
  }
}

void sub_100166BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a31)
  {
    sub_10000E984(a31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100166C7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *sub_100166D50(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_100166D8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100166DD8(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = a2;
  if (*(a1 + 72) != *(a1 + 48))
  {
    do
    {
      sub_100166968(a1 + 56, &v9);
      v3 = v11;
      if (v10)
      {
        sub_10000E984(v10);
      }

      if ((*(*v3 + 4) & 1) == 0)
      {
        *&v7 = "crypto::details::unset_futures_errors_reporter<std::ranges::transform_view<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t, FileLocal::promise_io_t *, FileLocal::promise_io_t &, FileLocal::promise_io_t **, long>>>, (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/backends/file.cpp:755:24)>::__iterator<false>>::report_errors(int) [It = std::ranges::transform_view<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t, FileLocal::promise_io_t *, FileLocal::promise_io_t &, FileLocal::promise_io_t **, long>>>, (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/backends/file.cpp:755:24)>::__iterator<false>]";
        *(&v7 + 1) = 587;
        v8 = 16;
        sub_100166F38(&v9, &v7);
        sub_100001FE8(v12, "diskimageuio: report err ", 25);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_10016716C(&v9);
        std::ios::~ios();
        v4 = *v3;
        *v4 = *(a1 + 80);
        *(v4 + 4) = 1;
        sub_100032F74(v3);
      }

      v5 = *(a1 + 64);
      v6 = *(a1 + 72) + 128;
      *(a1 + 72) = v6;
      if (v6 - *v5 == 4096)
      {
        *(a1 + 64) = v5 + 1;
        v6 = v5[1];
        *(a1 + 72) = v6;
      }
    }

    while (v6 != *(a1 + 48));
  }
}

void sub_100166F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100167060(va);
  _Unwind_Resume(a1);
}

void *sub_100166F38(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001670A4(a1, a2);
  *a1 = off_100220278;
  a1[45] = &off_100220378;
  a1[46] = &off_1002203A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100220278;
  a1[45] = off_100220300;
  a1[46] = off_100220328;
  return a1;
}

void sub_10016703C(_Unwind_Exception *a1)
{
  sub_10016716C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100167060(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016716C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001670A4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100220410;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100167154(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016716C(uint64_t a1)
{
  *a1 = &off_100220410;
  sub_1001675AC(a1);
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

void sub_1001672D8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016716C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100167340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016737C(_BYTE *a1, int a2)
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

uint64_t sub_1001673E8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016716C(v1);

  return std::ios::~ios();
}

void sub_100167434(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016716C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100167498(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016716C(v1);

  return std::ios::~ios();
}