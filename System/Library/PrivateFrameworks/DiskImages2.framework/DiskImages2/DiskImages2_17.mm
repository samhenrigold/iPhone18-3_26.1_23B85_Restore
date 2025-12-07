void sub_248F5B7B0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<580ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileLocal::unmap_range(FileLocal *this, unint64_t a2, unint64_t a3)
{
  v6 = *(this + 5);
  FileLocal::shared_state_t::init_unmap_zeros(v6);
  v7 = *(v6 + 80);
  v8 = *(v6 + 96);
  v9 = *(this + 5);
  FileLocal::shared_state_t::init_unmap_zeros(v9);
  if ((v8 & 1) == 0 || (*(v9 + 144) & 1) == 0)
  {
    *&v29 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
    *(&v29 + 1) = 26;
    LODWORD(v30) = 0;
    di_log::logger<di_log::log_printer<593ul>>::logger(&v31, &v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "fd block size retrieval failed (err code ", 41);
    MEMORY[0x24C1ED390](&v39, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, ")", 1);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(&v31);
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
      *&v29 = 0;
      *(&v29 + 1) = v16;
      v30 = v14 / v7 * v7;
      v20 = fcntl(**(this + 7), 99, &v29);
      if (!v20)
      {
        if (v16 != a2)
        {
          v22 = *(details::get_dummy_shared_ptr() + 1);
          v31 = v10;
          v32 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = v16 - a2;
          v34 = a2;
          v35 = v16 - a2;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v7 = (*(*this + 120))(this, &v31);
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if ((v7 & 0x80000000) != 0)
          {
            *&v27 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
            *(&v27 + 1) = 26;
            v28 = 16;
            di_log::logger<di_log::log_printer<614ul>>::logger(&v31, &v27);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Write zeros to unmap unaligned start region failed (err code", 60);
            v26 = __error();
            MEMORY[0x24C1ED390](&v39, *v26);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, ")", 1);
            di_log::logger<di_log::log_printer<614ul>>::~logger(&v31);
            return v7;
          }
        }

        if (v15 + v16 < v12)
        {
          v23 = a3 - v15 - (v16 - a2);
          v24 = *(details::get_dummy_shared_ptr() + 1);
          v31 = v10;
          v32 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = v23;
          v34 = v15 + v16;
          v35 = v23;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v7 = (*(*this + 120))(this, &v31);
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if ((v7 & 0x80000000) != 0)
          {
            *&v27 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
            *(&v27 + 1) = 26;
            v28 = 16;
            di_log::logger<di_log::log_printer<623ul>>::logger(&v31, &v27);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Write zeros to unmap unaligned end region failed (err code", 58);
            v25 = __error();
            MEMORY[0x24C1ED390](&v39, *v25);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, ")", 1);
            di_log::logger<di_log::log_printer<623ul>>::~logger(&v31);
            return v7;
          }
        }

        return 0;
      }

      v7 = v20;
      *&v27 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
      *(&v27 + 1) = 26;
      v28 = 0;
      di_log::logger<di_log::log_printer<606ul>>::logger(&v31, &v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Punch hole is not supported (err code ", 38);
      v21 = __error();
      MEMORY[0x24C1ED390](&v39, *v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, ")", 1);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(&v31);
LABEL_14:
      MEMORY[0x24C1ED6A0](v40);
      return v7;
    }
  }

  v17 = FileLocal::write_zeros(this, a2, a3, v7, v10);
  if (v17 == a3)
  {
    return 0;
  }

  v7 = v17;
  *&v29 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
  *(&v29 + 1) = 26;
  LODWORD(v30) = 16;
  di_log::logger<di_log::log_printer<631ul>>::logger(&v31, &v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Write zeros to unmap region failed (err code", 44);
  v18 = __error();
  MEMORY[0x24C1ED390](&v39, *v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, ")", 1);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(&v31);
  MEMORY[0x24C1ED6A0](v40);
  if ((v7 & 0x8000000000000000) == 0)
  {
    return 4294967291;
  }

  else
  {
    return v7;
  }
}

void sub_248F5BC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<593ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<593ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C00378;
  a1[45] = &unk_285C00478;
  a1[46] = &unk_285C004A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C00378;
  a1[45] = &unk_285C00400;
  a1[46] = &unk_285C00428;
  return a1;
}

void sub_248F5BE08(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<593ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<606ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<606ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C00598;
  a1[45] = &unk_285C00698;
  a1[46] = &unk_285C006C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C00598;
  a1[45] = &unk_285C00620;
  a1[46] = &unk_285C00648;
  return a1;
}

void sub_248F5BF74(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<606ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<614ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<614ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C007B8;
  a1[45] = &unk_285C008B8;
  a1[46] = &unk_285C008E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C007B8;
  a1[45] = &unk_285C00840;
  a1[46] = &unk_285C00868;
  return a1;
}

void sub_248F5C0E0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<614ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<614ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<614ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<623ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<623ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C009D8;
  a1[45] = &unk_285C00AD8;
  a1[46] = &unk_285C00B00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C009D8;
  a1[45] = &unk_285C00A60;
  a1[46] = &unk_285C00A88;
  return a1;
}

void sub_248F5C24C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<623ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<623ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<623ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

ssize_t FileLocal::write_zeros(FileLocal *this, off_t a2, unint64_t a3, unint64_t a4, char *a5)
{
  v7 = a3;
  __p = 0;
  v21 = 0;
  v22 = 0;
  std::vector<iovec>::reserve(&__p, (a3 + a4 - 1) / a4 * a4);
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
          std::vector<iovec>::__throw_length_error[abi:ne200100]();
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
          std::allocator<iovec>::allocate_at_least[abi:ne200100](&__p, v14);
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

  v18 = pwritev(**(this + 7), __p, (v10 - __p) >> 4, a2);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v18;
}

void sub_248F5C428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<631ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<631ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C00BF8;
  a1[45] = &unk_285C00CF8;
  a1[46] = &unk_285C00D20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C00BF8;
  a1[45] = &unk_285C00C80;
  a1[46] = &unk_285C00CA8;
  return a1;
}

void sub_248F5C550(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<631ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void std::vector<iovec>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::allocator<iovec>::allocate_at_least[abi:ne200100](a1, a2);
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t FileLocal::lock(FileLocal *this)
{
  v1 = *(this + 5);
  if ((*(v1 + 48) & 1) != 0 || ((*(*this + 48))(this) & 1) == 0 && FileDescriptor::is_mounted_on_smb(*(this + 5)))
  {
    return 0;
  }

  v4 = (*(*this + 48))(this);
  if (v4)
  {
    v5 = 6;
  }

  else
  {
    v5 = 5;
  }

  if (!flock(**(this + 7), v5))
  {
    *&v10 = "int FileLocal::lock()";
    *(&v10 + 1) = 19;
    v11 = 0;
    di_log::logger<di_log::log_printer<667ul>>::logger(v12, &v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "File (fd ", 9);
    MEMORY[0x24C1ED390](&v13, **(this + 7));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, ") is locked", 11);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<667ul>>::~logger_buf(v12);
    MEMORY[0x24C1ED6A0](v14);
    result = 0;
    *(v1 + 48) = 1;
    return result;
  }

  if (*__error() != 35)
  {
    *&v10 = "int FileLocal::lock()";
    *(&v10 + 1) = 19;
    v11 = 0;
    di_log::logger<di_log::log_printer<674ul>>::logger(v12, &v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "flock returned errno ", 21);
    v9 = __error();
    MEMORY[0x24C1ED390](&v13, *v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, ", keeping file unlocked", 23);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<674ul>>::~logger_buf(v12);
    MEMORY[0x24C1ED6A0](v14);
    return 0;
  }

  *&v10 = "int FileLocal::lock()";
  *(&v10 + 1) = 19;
  v11 = 16;
  di_log::logger<di_log::log_printer<671ul>>::logger(v12, &v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Cannot acquire ", 15);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, " lock, errno ", 13);
  v8 = __error();
  MEMORY[0x24C1ED390](&v13, *v8);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(v12);
  MEMORY[0x24C1ED6A0](v14);
  return -*__error();
}

void sub_248F5C8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<671ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<671ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<671ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C00E18;
  a1[45] = &unk_285C00F18;
  a1[46] = &unk_285C00F40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C00E18;
  a1[45] = &unk_285C00EA0;
  a1[46] = &unk_285C00EC8;
  return a1;
}

void sub_248F5CA34(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<671ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileLocal::unlock_all(FileLocal *this)
{
  v1 = *(this + 5);
  if (*(v1 + 48) != 1)
  {
    return 0;
  }

  if (flock(**(this + 7), 8))
  {
    *&v5 = "int FileLocal::unlock_all()";
    *(&v5 + 1) = 25;
    v6 = 16;
    di_log::logger<di_log::log_printer<684ul>>::logger(v7, &v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Failed unlocking file with fd ", 30);
    MEMORY[0x24C1ED390](&v8, **(this + 7));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ", errno ", 8);
    v3 = __error();
    MEMORY[0x24C1ED390](&v8, *v3);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(v7);
    MEMORY[0x24C1ED6A0](v9);
    return -*__error();
  }

  else
  {
    *&v5 = "int FileLocal::unlock_all()";
    *(&v5 + 1) = 25;
    v6 = 0;
    di_log::logger<di_log::log_printer<687ul>>::logger(v7, &v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "File (fd ", 9);
    MEMORY[0x24C1ED390](&v8, **(this + 7));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ") is unlocked", 13);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(v7);
    MEMORY[0x24C1ED6A0](v9);
    result = 0;
    *(v1 + 48) = 0;
  }

  return result;
}

void sub_248F5CC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<687ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<684ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<684ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C01038;
  a1[45] = &unk_285C01138;
  a1[46] = &unk_285C01160;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C01038;
  a1[45] = &unk_285C010C0;
  a1[46] = &unk_285C010E8;
  return a1;
}

void sub_248F5CD48(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<684ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileLocal::remove_lock_ownership(FileLocal *this)
{
  v1 = *(this + 5);
  result = *(v1 + 48);
  *(v1 + 48) = 0;
  return result;
}

void FileLocal::run_futures(FileLocal *this, char *a2)
{
  v123 = *MEMORY[0x277D85DE8];
  v2 = *(this + 9);
  v3 = *(this + 10);
  if (v3 == v2)
  {
    return;
  }

  v4 = this;
  v5 = *(this + 12);
  v6 = &v2[v5 >> 5];
  v7 = *v6 + 128 * (v5 & 0x1F);
  if (v7 == *(v2 + (((*(this + 13) + v5) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((*(this + 13) + v5) & 0x1F))
  {
    return;
  }

  v8 = *(this + 5);
  v86 = *(v8 + 49);
  v87 = *(v8 + 72);
  while (v3 == v2)
  {
    if (!v7)
    {
      goto LABEL_158;
    }

    v9 = 0;
LABEL_9:
    if (v9 == v7)
    {
      v13 = v6;
      v14 = v7;
    }

    else
    {
      v10 = (v7 - *v6) >> 7;
      if (v10 < 0)
      {
        v15 = 30 - v10;
        v11 = ~v15;
        v12 = &v6[-(v15 >> 5)];
      }

      else
      {
        v11 = v10 + 1;
        v12 = &v6[(v10 + 1) >> 5];
      }

      v16 = *v12 + 128 * (v11 & 0x1F);
      v14 = v7;
      v13 = v6;
      if (v16 != v9)
      {
        v13 = v6;
        v14 = v7;
        do
        {
          v17 = v16;
          v18 = v12;
          if (*(v14 + 112) != *(v16 + 112))
          {
            break;
          }

          a2 = *(v14 + 24);
          v19 = &a2[*(v14 + 16)];
          if (v19 != *(v16 + 24))
          {
            break;
          }

          if (*(v14 + 104) == 1)
          {
            v20 = *(v14 + 48);
            if (*(v16 + 104))
            {
              if ((v20 != 0) == (*(v16 + 48) == 0))
              {
                break;
              }

              if (v20)
              {
                sg_per_io_crypto::clone_with_offset(&v101, (v14 + 48), a2, v19);
                if (!sg_per_io_crypto::operator==(&v101, v17 + 48))
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
            v21 = *(v16 + 48);
            if (*(v17 + 104) == 1 && v21 != 0)
            {
              break;
            }
          }

          v16 = v17 + 128;
          v12 = v18;
          if (v17 + 128 - *v18 == 4096)
          {
            v12 = v18 + 1;
            v16 = v18[1];
          }

          v13 = v18;
          v14 = v17;
        }

        while (v16 != v9);
      }
    }

    v23 = (v14 - *v13) >> 7;
    if (v23 < 0)
    {
      v26 = 30 - v23;
      v92 = &v13[-(v26 >> 5)];
      v25 = *v92 + 128 * (~v26 & 0x1F);
    }

    else
    {
      v24 = v23 + 1;
      v92 = &v13[v24 >> 5];
      v25 = *v92 + 128 * (v24 & 0x1F);
    }

    if (v7[104] == 1 && *(v7 + 12))
    {
      (*(*v4 + 80))(&v98, v4, a2);
      v27 = *(v7 + 28) == 0;
      v28 = *(v7 + 12);
      if (v28 == 3)
      {
        crypto::context::aes_xts_ans_kdf2::aes_xts_ans_kdf2(&v101, v27, (v7 + 56), *(v7 + 22));
        crypto::context::aes_xts_ans_kdf2::aes_xts_ans_kdf2(v111, &v101);
        v112 = 2;
        crypto::context::aes_xts_ans_kdf2::~aes_xts_ans_kdf2(&v101);
      }

      else if (v28 == 2)
      {
        crypto::context::aes_xts::aes_xts(&v101, v27, v7 + 7, v7 + 9, *(v7 + 22));
        crypto::context::aes_xts::aes_xts(v111, &v101);
        v112 = 1;
        v101 = &unk_285BD82F8;
        std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100](&v104);
        v101 = &unk_285BD3848;
        if (*(&v102 + 1))
        {
          v103[0] = *(&v102 + 1);
          operator delete(*(&v102 + 1));
        }
      }

      else
      {
        crypto::context::aes_iv::aes_iv(v109, v7 + 9);
        crypto::context::aes_cbc::aes_cbc(&v101, v27, v7 + 7, v109, *(v7 + 22));
        crypto::context::aes_cbc::aes_cbc(v111, &v101);
        v112 = 0;
        v101 = &unk_285BD82D0;
        std::unique_ptr<cccbc_ctx [],crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>>::reset[abi:ne200100](v105);
        v43 = v104;
        v104 = 0;
        if (v43)
        {
          MEMORY[0x24C1ED710](v43, 0x1000C8015230203);
        }

        v101 = &unk_285BD3848;
        if (*(&v102 + 1))
        {
          v103[0] = *(&v102 + 1);
          operator delete(*(&v102 + 1));
        }

        v44 = *&v109[0];
        *&v109[0] = 0;
        if (v44)
        {
          MEMORY[0x24C1ED710](v44, 0x1000C8015230203);
        }
      }

      v45 = *(v7 + 22);
      v46 = *(v7 + 12) - *(v7 + 3);
      v97[0] = v6;
      v97[1] = v7;
      v97[2] = v92;
      v97[3] = v25;
      v95 = v46;
      v96 = v97;
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v109, v111);
      v110 = v45;
      v90 = v98;
      v47 = *v96;
      v48 = v96[1];
      *&v93 = &v95;
      *(&v93 + 1) = v47;
      v94 = v48;
      v49 = v96[3];
      v50 = *(v7 + 28);
      v51 = *MEMORY[0x277D85FA0];
      crypto::details::buffer_aligner::backend_op_to_different_buffer_fn(v50, v116);
      v88 = v46;
      v91 = v50;
      if (v48 == v49)
      {
        v52 = 0;
        goto LABEL_99;
      }

      std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>::operator*[abi:ne200100](&v93, &v121);
      sg_entry::sg_entry(&v113, &v121);
      if (v122)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v122);
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
          std::__shared_weak_count::__release_shared[abi:ne200100](v114);
        }

LABEL_99:
        crypto::details::sg_allocator::sg_allocator(&v101, v52, *MEMORY[0x277D85FA0]);
        std::__function::__value_func<BOOL ()(sg_entry const&)>::~__value_func[abi:ne200100](v116);
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
        std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>::operator*[abi:ne200100](&v99, &v121);
        sg_entry::sg_entry(&v118, &v121);
        if (!v117)
        {
          std::__throw_bad_function_call[abi:ne200100]();
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
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v118 + 1));
        }

        if (v122)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v122);
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
    v102 = xmmword_248F9D670;
    v111[0] = &v101;
    if (v7 == v25)
    {
      v33 = 0;
    }

    else
    {
      v29 = v7;
      v30 = v6;
      do
      {
        v31 = *(v29 + 2);
        *&v109[0] = *v29;
        *(&v109[0] + 1) = v31;
        std::back_insert_iterator<boost::container::small_vector<iovec,16ul,void,void>>::operator=[abi:ne200100](v111, v109);
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

    v34 = *(v7 + 28);
    if (v34 == 1)
    {
      v37 = *(v7 + 3);
      v38 = **(v4 + 7);
      if (v33)
      {
        v39 = pwrite(v38, v101->iov_base, v101->iov_len, *(v7 + 3));
      }

      else
      {
        if (v7 == v25)
        {
          v42 = 0;
        }

        else
        {
          v42 = ((v25 - *v92) >> 7) + 4 * (v92 - v6) - ((v7 - *v6) >> 7);
        }

        v39 = pwritev(v38, v101, v42, *(v7 + 3));
      }

      v40 = v39;
      if (v39 >= 1)
      {
        v66 = v39 + v37;
        v67 = (*(v4 + 5) + 64);
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

      v35 = *(v7 + 3);
      if (v33)
      {
        v36 = (**v87)(v87, **(this + 7), v101->iov_base, v101->iov_len, *(v7 + 3));
      }

      else
      {
        if (v86)
        {
          if (v7 == v25)
          {
            v41 = 0;
          }

          else
          {
            v41 = 16 * (((v25 - *v92) >> 7) + 4 * (v92 - v6) - ((v7 - *v6) >> 7));
          }

          v70 = v101;
          v72 = *(this + 5);
          v71 = *(this + 6);
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
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          }

          v4 = this;
          goto LABEL_134;
        }

        if (v7 == v25)
        {
          v65 = 0;
        }

        else
        {
          v65 = ((v25 - *v92) >> 7) + 4 * (v92 - v6) - ((v7 - *v6) >> 7);
        }

        v36 = (*(*v87 + 8))(v87, **(this + 7), v101, v65, *(v7 + 3));
      }

      v40 = v36;
      v4 = this;
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
        if (*(v7 + 2) >= v40)
        {
          v75 = v40;
        }

        else
        {
          v75 = *(v7 + 2);
        }
      }

      v76 = *(v7 + 15);
      *v76 = v75;
      *(v76 + 4) = 1;
      lw_promise<int>::notify_future(v7 + 15, a2);
      v7 += 128;
      if (v7 - *v6 == 4096)
      {
        v77 = v6[1];
        ++v6;
        v7 = v77;
      }

      v40 -= v75 & ~(v75 >> 63);
    }

    while (v6 < v13 || v6 == v13 && v7 <= v14);
    if (*(&v102 + 1) && v103 != v101)
    {
      operator delete(v101);
    }

    v5 = *(v4 + 12);
    v2 = *(v4 + 9);
    v3 = *(v4 + 10);
  }

  v9 = *(v2 + (((v5 + *(v4 + 13)) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((v5 + *(v4 + 13)) & 0x1F);
  if (v7 != v9)
  {
    goto LABEL_9;
  }

  v78 = &v2[v5 >> 5];
  v79 = *v78 + 128 * (v5 & 0x1F);
  if (v79 != v7)
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
        std::__shared_weak_count::__release_shared[abi:ne200100](v81);
      }

      v79 += 128;
      if (v79 - *v78 == 4096)
      {
        v82 = v78[1];
        ++v78;
        v79 = v82;
      }
    }

    while (v79 != v7);
    v2 = *(v4 + 9);
    v3 = *(v4 + 10);
  }

LABEL_158:
  *(v4 + 13) = 0;
  v83 = v3 - v2;
  if (v83 >= 3)
  {
    do
    {
      operator delete(*v2);
      v84 = *(v4 + 10);
      v2 = (*(v4 + 9) + 8);
      *(v4 + 9) = v2;
      v83 = (v84 - v2) >> 3;
    }

    while (v83 > 2);
  }

  if (v83 == 1)
  {
    v85 = 16;
LABEL_164:
    *(v4 + 12) = v85;
  }

  else if (v83 == 2)
  {
    v85 = 32;
    goto LABEL_164;
  }
}

void sub_248F5DD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p)
{
  crypto::context::aes_xts_ans_kdf2::~aes_xts_ans_kdf2(&__p);
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  _Unwind_Resume(a1);
}

void crypto::crypt_op::crypt_consecutive_vector_with_futures<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>>::~crypt_consecutive_vector_with_futures(crypto::crypt_op::crypt_consecutive_vector *a1, const void *a2)
{
  crypto::crypt_op::crypt_consecutive_vector::reset(a1, a2);
  (*(**(a1 + 28) + 152))(*(a1 + 28));
  crypto::details::unset_futures_errors_reporter<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>>::report_errors(a1 + 224, *(a1 + 76));

  crypto::crypt_op::crypt_consecutive_vector::~crypt_consecutive_vector(a1);
}

void PurgeableFileBackend::~PurgeableFileBackend(PurgeableFileBackend *this)
{
  *this = &unk_285BFDD98;
  *(this + 3) = &unk_285BFDE88;
  *(this + 4) = &unk_285BFDEC0;
  v12 = 66053;
  if (ffsctl(**(this + 7), 0xC0084A44uLL, &v12, 0))
  {
    *&v7 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v7 + 1) = 43;
    v8 = 0;
    di_log::logger<di_log::log_printer<844ul>>::logger(v9, &v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "mark purgeable failed on ", 25);
    operator<<(&v10, this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ", errno ", 8);
    v2 = __error();
    MEMORY[0x24C1ED390](&v10, *v2);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(v9);
  }

  else
  {
    *&v7 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v7 + 1) = 43;
    v8 = 0;
    di_log::logger<di_log::log_printer<847ul>>::logger(v9, &v7);
    operator<<(&v10, this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " marked as purgeable", 20);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<847ul>>::~logger_buf(v9);
  }

  MEMORY[0x24C1ED6A0](v11);
  v3 = (*(*this + 192))(this);
  if (futimes(v3, 0))
  {
    *&v7 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v7 + 1) = 43;
    v8 = 16;
    di_log::logger<di_log::log_printer<851ul>>::logger(v9, &v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "futimes failed on ", 18);
    operator<<(&v10, this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ", errno ", 8);
    v4 = __error();
    MEMORY[0x24C1ED390](&v10, *v4);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<851ul>>::~logger_buf(v9);
    MEMORY[0x24C1ED6A0](v11);
  }

  *this = &unk_285BFDF58;
  *(this + 3) = &unk_285BFE048;
  *(this + 4) = &unk_285BFE080;
  std::deque<FileLocal::promise_io_t>::~deque[abi:ne200100](this + 8);
  v5 = *(this + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  PurgeableFileBackend::~PurgeableFileBackend(this);

  JUMPOUT(0x24C1ED730);
}

void *di_log::logger<di_log::log_printer<844ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<844ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C01258;
  a1[45] = &unk_285C01358;
  a1[46] = &unk_285C01380;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C01258;
  a1[45] = &unk_285C012E0;
  a1[46] = &unk_285C01308;
  return a1;
}

void sub_248F5E47C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<844ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<847ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<847ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C01478;
  a1[45] = &unk_285C01578;
  a1[46] = &unk_285C015A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C01478;
  a1[45] = &unk_285C01500;
  a1[46] = &unk_285C01528;
  return a1;
}

void sub_248F5E5E8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<847ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<847ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<847ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<851ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<851ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C01698;
  a1[45] = &unk_285C01798;
  a1[46] = &unk_285C017C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C01698;
  a1[45] = &unk_285C01720;
  a1[46] = &unk_285C01748;
  return a1;
}

void sub_248F5E754(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<851ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<851ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<851ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void non-virtual thunk toPurgeableFileBackend::~PurgeableFileBackend(PurgeableFileBackend *this)
{
  PurgeableFileBackend::~PurgeableFileBackend((this - 24));
}

{
  PurgeableFileBackend::~PurgeableFileBackend((this - 32));
}

{
  PurgeableFileBackend::~PurgeableFileBackend((this - 24));

  JUMPOUT(0x24C1ED730);
}

{
  PurgeableFileBackend::~PurgeableFileBackend((this - 32));

  JUMPOUT(0x24C1ED730);
}

uint64_t get_fd_from_backend(uint64_t a1)
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
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v7;
}

void sub_248F5E9B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *FileLocal::name(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "file(", 5);
  v4 = MEMORY[0x24C1ED390](v3, **(a1 + 56));

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ")", 1);
}

void FileLocal::future_read(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v11) = 0;
  v12 = 0;
  v14 = &v15;
  v15 = &v11;
  v13 = 0;
  sg_entry::sg_entry(&v7, a2);
  v9 = 0;
  v10 = v15;
  v5 = v15;
  v15 = 0;
  *(v5 + 2) = &v10;
  std::deque<FileLocal::promise_io_t>::emplace_back<FileLocal::promise_io_t>((a1 + 64), &v7);
  if (v10)
  {
    *(v10 + 2) = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
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

void sub_248F5EC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    *(v26 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void FileLocal::future_write(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v11) = 0;
  v12 = 0;
  v14 = &v15;
  v15 = &v11;
  v13 = 0;
  sg_entry::sg_entry(&v7, a2);
  v9 = 1;
  v10 = v15;
  v5 = v15;
  v15 = 0;
  *(v5 + 2) = &v10;
  std::deque<FileLocal::promise_io_t>::emplace_back<FileLocal::promise_io_t>((a1 + 64), &v7);
  if (v10)
  {
    *(v10 + 2) = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
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

void sub_248F5ED60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    *(v26 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toFileLocal::~FileLocal(FileLocal *this)
{
  *(this - 3) = &unk_285BFDF58;
  *this = &unk_285BFE048;
  *(this + 1) = &unk_285BFE080;
  std::deque<FileLocal::promise_io_t>::~deque[abi:ne200100](this + 5);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this - 1);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  *(this - 3) = &unk_285BFDF58;
  *this = &unk_285BFE048;
  *(this + 1) = &unk_285BFE080;
  std::deque<FileLocal::promise_io_t>::~deque[abi:ne200100](this + 5);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this - 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x24C1ED730);
}

{
  *(this - 4) = &unk_285BFDF58;
  *(this - 1) = &unk_285BFE048;
  *this = &unk_285BFE080;
  std::deque<FileLocal::promise_io_t>::~deque[abi:ne200100](this + 4);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this - 2);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  *(this - 4) = &unk_285BFDF58;
  *(this - 1) = &unk_285BFE048;
  *this = &unk_285BFE080;
  std::deque<FileLocal::promise_io_t>::~deque[abi:ne200100](this + 4);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this - 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x24C1ED730);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<67ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<67ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<67ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<67ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<67ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFE310;
  di_log::logger_buf<di_log::log_printer<67ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<67ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<67ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F5F61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<67ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<96ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<96ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<96ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<96ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<96ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFE530;
  di_log::logger_buf<di_log::log_printer<96ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<96ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<96ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F5FDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<96ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<104ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<104ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<104ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<104ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<104ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFE750;
  di_log::logger_buf<di_log::log_printer<104ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<104ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<104ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F6054C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<104ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<209ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<209ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<209ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<209ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<209ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<209ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<209ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<209ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<209ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<209ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<209ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFE970;
  di_log::logger_buf<di_log::log_printer<209ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<209ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<209ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F60CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<209ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<209ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<209ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t **std::back_insert_iterator<boost::container::small_vector<iovec,16ul,void,void>>::operator=[abi:ne200100](uint64_t **a1, _OWORD *a2)
{
  v4 = *a1;
  v5 = *(v4 + 8);
  v6 = (*v4 + 16 * v5);
  if (v5 == *(v4 + 16))
  {
    boost::container::vector<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>*,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>>>(v4, v6, &v8, 1, a2);
  }

  else
  {
    *v6 = *a2;
    ++*(v4 + 8);
  }

  return a1;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<394ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<394ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<394ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<394ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<394ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFEB90;
  di_log::logger_buf<di_log::log_printer<394ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<394ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<394ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F614E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<394ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v26 = 394;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      v26 = 394;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<408ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<408ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<408ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<408ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<408ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFEDB0;
  di_log::logger_buf<di_log::log_printer<408ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<408ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<408ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F61C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<408ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<412ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<412ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<412ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<412ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<412ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFEFD0;
  di_log::logger_buf<di_log::log_printer<412ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<412ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<412ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F62418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<412ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<494ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<494ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<494ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<494ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<494ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFF1F0;
  di_log::logger_buf<di_log::log_printer<494ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<494ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<494ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F62BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<494ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<509ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<509ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<509ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<509ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<509ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFF410;
  di_log::logger_buf<di_log::log_printer<509ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<509ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<509ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F63348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<509ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<521ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<521ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<521ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<521ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<521ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFF630;
  di_log::logger_buf<di_log::log_printer<521ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<521ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<521ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F63AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<521ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<535ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<535ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<535ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<535ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<535ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFF850;
  di_log::logger_buf<di_log::log_printer<535ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<535ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<535ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F64278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<535ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<540ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<540ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<540ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<540ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<540ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFFA70;
  di_log::logger_buf<di_log::log_printer<540ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<540ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<540ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F64A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<540ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<552ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<552ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<552ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<552ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<552ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFFC90;
  di_log::logger_buf<di_log::log_printer<552ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<552ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<552ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F651A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<552ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<563ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<563ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<563ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<563ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<563ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFFEB0;
  di_log::logger_buf<di_log::log_printer<563ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<563ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<563ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F65940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<563ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<570ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<570ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<570ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<570ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<570ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C000D0;
  di_log::logger_buf<di_log::log_printer<570ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<570ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<570ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F660D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<570ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<580ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<580ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<580ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<580ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<580ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C002F0;
  di_log::logger_buf<di_log::log_printer<580ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<580ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<580ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F66870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<580ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<593ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<593ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<593ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<593ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<593ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C00510;
  di_log::logger_buf<di_log::log_printer<593ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<593ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<593ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F67008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<593ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<593ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<606ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<606ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<606ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<606ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<606ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C00730;
  di_log::logger_buf<di_log::log_printer<606ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<606ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<606ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F677A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<606ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<606ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<614ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<614ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<614ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<614ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<614ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<614ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<614ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<614ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<614ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<614ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<614ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C00950;
  di_log::logger_buf<di_log::log_printer<614ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<614ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<614ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F67F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<614ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<614ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<614ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<623ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<623ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<623ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<623ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<623ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<623ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<623ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<623ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<623ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<623ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<623ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C00B70;
  di_log::logger_buf<di_log::log_printer<623ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<623ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<623ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F686D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<623ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<623ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<623ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<631ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<631ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<631ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<631ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<631ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C00D90;
  di_log::logger_buf<di_log::log_printer<631ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<631ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<631ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F68E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<631ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<631ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<671ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<671ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<671ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<671ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<671ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C00FB0;
  di_log::logger_buf<di_log::log_printer<671ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<671ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<671ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F69600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<671ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<671ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<684ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<684ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<684ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<684ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<684ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C011D0;
  di_log::logger_buf<di_log::log_printer<684ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<684ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<684ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F69D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<684ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<684ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<844ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<844ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<844ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<844ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<844ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C013F0;
  di_log::logger_buf<di_log::log_printer<844ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<844ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<844ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F6A530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<844ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<844ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<847ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<847ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<847ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<847ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<847ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<847ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<847ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<847ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<847ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<847ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<847ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C01610;
  di_log::logger_buf<di_log::log_printer<847ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<847ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<847ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F6ACC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<847ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<847ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<847ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<851ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<851ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<851ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<851ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<851ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<851ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<851ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<851ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<851ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<851ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<851ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C01830;
  di_log::logger_buf<di_log::log_printer<851ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<851ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<851ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F6B460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<851ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<851ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<851ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *std::__shared_ptr_emplace<FileLocal>::__shared_ptr_emplace[abi:ne200100]<FileLocal&,std::allocator<FileLocal>,0>(void *a1, const FileLocal *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6C38;
  FileLocal::FileLocal((a1 + 3), a2);
  return a1;
}

void FileLocal::FileLocal(FileLocal *this, const FileLocal *a2)
{
  Backend::Backend(this);
  *v3 = &unk_285BFDF58;
  *(v3 + 24) = &unk_285BFE048;
  v4 = *(a2 + 5);
  v5 = *(a2 + 6);
  *(v3 + 32) = &unk_285BFE080;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = *(v3 + 40);
  }

  *(v3 + 56) = v4 + 8;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
}

uint64_t std::deque<FileLocal::promise_io_t>::emplace_back<FileLocal::promise_io_t>(unint64_t *a1, uint64_t a2)
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
    std::deque<FileLocal::promise_io_t>::__add_back_capacity(a1);
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

  v9 = sg_entry::sg_entry(v8, a2);
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

void std::deque<FileLocal::promise_io_t>::__add_back_capacity(unint64_t *a1)
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
    std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::atomic<DiskImage::Context *> *,std::allocator<std::atomic<DiskImage::Context *> *>>::emplace_back<std::atomic<DiskImage::Context *> *&>(a1, &v9);
}

void sub_248F6BAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<67ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFE310;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6BBA8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<96ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFE530;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6BC70(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<104ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFE750;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6BD38(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<209ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFE970;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6BE00(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void boost::container::vector<iovec,boost::container::small_vector_allocator<iovec,boost::container::new_allocator<void>,void>,void>::priv_move_to_new_buffer(char **a1, char *a2)
{
  if (a2 >> 59)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v4 = operator new(16 * a2);
  v5 = &(*a1)[16 * a1[1]];

  boost::container::vector<iovec,boost::container::small_vector_allocator<iovec,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<iovec,boost::container::new_allocator<void>,void>,boost::move_iterator<iovec*>,iovec*>>(a1, v4, a2, v5, 0, 0);
}

uint64_t di_log::logger_buf<di_log::log_printer<394ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFEB90;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6BF34(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<408ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFEDB0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6BFFC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<412ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFEFD0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6C0C4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<FileLocal::shared_state_t::init_unmap_zeros(void)::$_0 &&>>(uint64_t ***a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  v2 = *v1;
  if (fstatfs(*(*v1 + 8), &v17) < 0)
  {
    *&v18 = "FileLocal::shared_state_t::init_unmap_zeros()::(anonymous class)::operator()() const";
    *(&v18 + 1) = 76;
    v19 = 16;
    di_log::logger<di_log::log_printer<420ul>>::logger(&v13, &v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "fstatfs failed with err code ", 29);
    v7 = __error();
    MEMORY[0x24C1ED390](&v15, *v7);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<420ul>>::~logger_buf(&v13);
    MEMORY[0x24C1ED6A0](&v16);
    v8 = *__error();
    v9 = std::generic_category();
    v10 = *(v2 + 96);
    *(v2 + 80) = v8;
    *(v2 + 88) = v9;
    if (v10 == 1)
    {
      *(v2 + 96) = 0;
    }

    v11 = *__error();
    if (*(v2 + 144) == 1)
    {
      std::__expected_base<std::unique_ptr<char,std::function<void ()(char *)>>,std::error_code>::__repr::__destroy_union_member[abi:ne200100](v2 + 104);
      *(v2 + 104) = v11;
      *(v2 + 112) = v9;
      *(v2 + 144) = 0;
    }

    else
    {
      *(v2 + 104) = v11;
      *(v2 + 112) = v9;
    }
  }

  else
  {
    f_bsize = v17.f_bsize;
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
        __cxa_throw(v6, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }
    }

    else
    {
      v4 = 0;
    }

    *&v18 = &unk_285C01AD0;
    v20 = &v18;
    v13 = v4;
    std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v14, &v18);
    std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&v18);
    std::expected<std::unique_ptr<char,std::function<void ()(char *)>>,std::error_code>::operator=[abi:ne200100]<std::unique_ptr<char,std::function<void ()(char *)>>>(v2 + 104, &v13);
    std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v13, 0);
    std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v14);
    v12 = *(v2 + 80);
    if (v12 >= 1)
    {
      bzero(*(v2 + 104), v12);
    }
  }
}

void sub_248F6C2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](va, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<420ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<420ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C018B8;
  a1[45] = &unk_285C019B8;
  a1[46] = &unk_285C019E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C018B8;
  a1[45] = &unk_285C01940;
  a1[46] = &unk_285C01968;
  return a1;
}

void sub_248F6C430(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<420ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<420ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<420ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t std::expected<std::unique_ptr<char,std::function<void ()(char *)>>,std::error_code>::operator=[abi:ne200100]<std::unique_ptr<char,std::function<void ()(char *)>>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 40) == 1)
  {
    std::unique_ptr<char,std::function<void ()(char *)>>::operator=[abi:ne200100](a1, a2);
  }

  else
  {
    std::__expected_base<std::unique_ptr<char,std::function<void ()(char *)>>,std::error_code>::__repr::__destroy_union_member[abi:ne200100](a1);
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](a1 + 8, (a2 + 1));
    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<420ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C01A50;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6C5AC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<420ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C01A50;
  di_log::logger_buf<di_log::log_printer<420ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<420ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<420ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<420ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<420ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<420ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<420ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<420ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<420ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<420ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<420ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<420ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<420ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<420ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<420ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F6CB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<420ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
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
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
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
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t *std::unique_ptr<char,std::function<void ()(char *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](a1, v4);
  std::__function::__value_func<void ()(char *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t std::__function::__value_func<void ()(char *)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(char *)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(char *)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t di_log::logger_buf<di_log::log_printer<494ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFF1F0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6D034(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<509ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFF410;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6D0FC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<521ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFF630;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6D1C4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<535ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFF850;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6D28C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<540ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFFA70;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6D354(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<552ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFFC90;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6D41C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<563ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFFEB0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6D4E4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<570ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C000D0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6D5AC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<580ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C002F0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6D674(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<593ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C00510;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6D73C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<606ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C00730;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6D804(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<614ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C00950;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6D8CC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<623ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C00B70;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6D994(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<631ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C00D90;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6DA5C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<671ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C00FB0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6DB24(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<684ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C011D0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6DBEC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>::operator*[abi:ne200100](uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  sg_entry::sg_entry(&v5, v4);
  v7 += *v3;
  if (v8 == 1)
  {
    v8 = 0;
  }

  sg_entry::sg_entry(a2, &v5);
  *(a2 + 112) = v4 + 120;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_248F6DC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void crypto::details::buffer_aligner::operator()<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
      std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>::operator*[abi:ne200100](&v25, v29);
      sg_entry::sg_entry(&v20, v29);
      v23 = v31;
      v24 = v10;
      v18 = v10;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        v18 = v24;
      }

      v19 = crypto::details::buffer_aligner::try_append_to_last_sg(a1, &v20, v18);
      if (v19 != v22)
      {
        crypto::details::buffer_aligner::handle_unaligned_sg(a1, &v20, v19, v18);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
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

void sub_248F6DE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>>(crypto::crypt_op&,Backend &,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false> const&,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>>(crypto::crypt_op&,Backend &,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false> const&,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>>(crypto::crypt_op&,Backend &,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false> const&,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>>(crypto::crypt_op&,Backend &,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false> const&,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::operator()(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>>(crypto::crypt_op&,Backend &,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false> const&,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>>(crypto::crypt_op&,Backend &,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false> const&,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false> const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void crypto::details::unset_futures_errors_reporter<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>>::report_errors(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = a2;
  if (*(a1 + 72) != *(a1 + 48))
  {
    do
    {
      std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t,FileLocal::promise_io_t*,FileLocal::promise_io_t&,FileLocal::promise_io_t**,long,32l>>>,FileLocal::run_futures(void)::$_0>::__iterator<false>::operator*[abi:ne200100](a1 + 56, &v11);
      v4 = v13;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if ((*(*v4 + 4) & 1) == 0)
      {
        *&v9 = "crypto::details::unset_futures_errors_reporter<std::ranges::transform_view<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t, FileLocal::promise_io_t *, FileLocal::promise_io_t &, FileLocal::promise_io_t **, long>>>, (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/backends/file.cpp:755:24)>::__iterator<false>>::report_errors(int) [It = std::ranges::transform_view<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t, FileLocal::promise_io_t *, FileLocal::promise_io_t &, FileLocal::promise_io_t **, long>>>, (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/backends/file.cpp:755:24)>::__iterator<false>]";
        *(&v9 + 1) = 587;
        v10 = 16;
        di_log::logger<di_log::log_printer<60ul>>::logger(&v11, &v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "diskimageuio: report err ", 25);
        MEMORY[0x24C1ED390](&v14, a2);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<60ul>>::~logger_buf(&v11);
        MEMORY[0x24C1ED6A0](&v15);
        v5 = *v4;
        *v5 = *(a1 + 80);
        *(v5 + 4) = 1;
        lw_promise<int>::notify_future(v4, v6);
      }

      v7 = *(a1 + 64);
      v8 = *(a1 + 72) + 128;
      *(a1 + 72) = v8;
      if (v8 - *v7 == 4096)
      {
        *(a1 + 64) = v7 + 1;
        v8 = v7[1];
        *(a1 + 72) = v8;
      }
    }

    while (v8 != *(a1 + 48));
  }
}

void sub_248F6E1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  di_log::logger<di_log::log_printer<60ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<844ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C013F0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6E284(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<847ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C01610;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6E34C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<851ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285C01830;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F6E414(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t Ram::_write(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = v4 + v3;
  if (__CFADD__(v4, v3))
  {
    v6 = -1;
  }

  else
  {
    v6 = v4 + v3;
  }

  if (__CFADD__(v4, v3))
  {
    v5 = v6;
  }

  if (v5 > *(a1 + 72))
  {
    *&v8 = "int Ram::_write(const sg_entry &)";
    *(&v8 + 1) = 15;
    v9 = 16;
    di_log::logger<di_log::log_printer<30ul>>::logger(v10, &v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Trying to write @ ", 18);
    MEMORY[0x24C1ED3E0](v11, *(a2 + 24));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
    MEMORY[0x24C1ED3C0](v11, *(a2 + 16));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "bytes, which is after end of ramdisk", 36);
    di_log::logger<di_log::log_printer<30ul>>::~logger(v10);
    return 4294967274;
  }

  else
  {
    memcpy((*(a1 + 64) + v4), *a2, v3);
    return *(a2 + 16);
  }
}

void sub_248F6E518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<30ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<30ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<30ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C01D40;
  a1[45] = &unk_285C01E40;
  a1[46] = &unk_285C01E68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C01D40;
  a1[45] = &unk_285C01DC8;
  a1[46] = &unk_285C01DF0;
  return a1;
}

void sub_248F6E638(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<30ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<30ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<30ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t Ram::_read(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = v4 + v3;
  if (__CFADD__(v4, v3))
  {
    v6 = -1;
  }

  else
  {
    v6 = v4 + v3;
  }

  if (__CFADD__(v4, v3))
  {
    v5 = v6;
  }

  if (v5 > *(a1 + 72))
  {
    *&v8 = "int Ram::_read(const sg_entry &)";
    *(&v8 + 1) = 14;
    v9 = 16;
    di_log::logger<di_log::log_printer<42ul>>::logger(v10, &v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Trying to read @ ", 17);
    MEMORY[0x24C1ED3E0](v11, *(a2 + 24));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
    MEMORY[0x24C1ED3C0](v11, *(a2 + 16));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "bytes, which is after end of ramdisk", 36);
    di_log::logger<di_log::log_printer<42ul>>::~logger(v10);
    return 4294967274;
  }

  else
  {
    memcpy(*a2, (*(a1 + 64) + v4), v3);
    return *(a2 + 16);
  }
}

void sub_248F6E790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<42ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<42ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<42ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C01F60;
  a1[45] = &unk_285C02060;
  a1[46] = &unk_285C02088;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C01F60;
  a1[45] = &unk_285C01FE8;
  a1[46] = &unk_285C02010;
  return a1;
}

void sub_248F6E8B0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<42ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<42ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<42ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void Ram::~Ram(Ram *this)
{
  Ram::~Ram(this);

  JUMPOUT(0x24C1ED730);
}

{
  *this = &unk_285C01C50;
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](this + 3, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](this + 32);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t Ram::truncate(Ram *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(this + 9) = a2;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<30ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<30ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<30ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<30ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<30ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<30ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<30ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<30ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<30ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<30ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<30ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285C01ED8;
  di_log::logger_buf<di_log::log_printer<30ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}