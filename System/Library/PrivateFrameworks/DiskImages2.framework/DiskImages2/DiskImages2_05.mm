uint64_t di_log::logger_buf<di_log::log_printer<536ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<536ul>::log((a1 + 72), __p);
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

void sub_248E6F478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<536ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 536;
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
      v26 = 536;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<539ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDEA68;
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

void sub_248E6F734(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<539ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDEA68;
  di_log::logger_buf<di_log::log_printer<539ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<539ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<539ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<539ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<539ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<539ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<539ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<539ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<539ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<539ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<539ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<539ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<539ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<539ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<539ul>::log((a1 + 72), __p);
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

void sub_248E6FCD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<539ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 539;
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
      v26 = 539;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<546ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDEC88;
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

void sub_248E6FF94(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDEC88;
  di_log::logger_buf<di_log::log_printer<546ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<546ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<546ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<546ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<546ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<546ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<546ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<546ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<546ul>::log((a1 + 72), __p);
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

void sub_248E70538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<546ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 546;
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
      v26 = 546;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<551ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDEEA8;
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

void sub_248E707F4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDEEA8;
  di_log::logger_buf<di_log::log_printer<551ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<551ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<551ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<551ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<551ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<551ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<551ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<551ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<551ul>::log((a1 + 72), __p);
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

void sub_248E70D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<551ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 551;
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
      v26 = 551;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *di_log::logger<di_log::log_printer<596ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<596ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDEF30;
  a1[45] = &unk_285BDF030;
  a1[46] = &unk_285BDF058;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDEF30;
  a1[45] = &unk_285BDEFB8;
  a1[46] = &unk_285BDEFE0;
  return a1;
}

void sub_248E710DC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<596ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<596ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDF0C8;
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

void sub_248E711F4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDF0C8;
  di_log::logger_buf<di_log::log_printer<596ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<596ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<596ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<596ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<596ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<596ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<596ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<596ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<596ul>::log((a1 + 72), __p);
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

void sub_248E71798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<596ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 596;
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
      v26 = 596;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void std::__shared_ptr_emplace<FileLocal>::__shared_ptr_emplace[abi:ne200100]<int &,int,BOOL &,std::allocator<FileLocal>,0>(void *a1, int *a2, _DWORD *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6C38;
  FileLocal::FileLocal((a1 + 3), *a2, *a3 != 0, *a4);
}

uint64_t crypto::format_serializer::encode(void (**a1)(void, const char *, void, uint64_t), void *a2)
{
  (*a1)(a1, "crypto_hdr", *a2, 76);
  (*a1)(a1, "enc_keys", a2[2], a2[3] - a2[2]);
  v4 = *a1;

  return v4(a1, "secondary_key");
}

const std::error_category *diskimage_uio::details::diskimage_open_params_impl::decode_buffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X8>)
{
  __src = 0;
  v9 = (*a1)(a1, a2, &__src);
  v10 = __src;
  if (__src)
  {
    v11 = v9 <= 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_8;
  }

  if (v9 != a4)
  {
    (*(a1 + 16))(__src);
LABEL_8:
    result = std::generic_category();
    v13 = 0;
    *a5 = 22;
    *(a5 + 8) = result;
    goto LABEL_9;
  }

  memcpy(a3, __src, a4);
  result = (*(a1 + 16))(v10);
  *a5 = 0;
  v13 = 1;
LABEL_9:
  *(a5 + 16) = v13;
  return result;
}

void crypto::format_serializer::decode(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  crypto::header_serializer::decode(a1, &v30);
  if ((v32 & 1) == 0)
  {
    *a2 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v30);
    goto LABEL_9;
  }

  v29 = 0;
  v4 = (*a1)(a1, "enc_keys", &v29);
  v5 = v4;
  if (v29)
  {
    v6 = v4 <= 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = std::generic_category();
    *a2 = 22;
    *(a2 + 8) = v7;
LABEL_9:
    *(a2 + 88) = 0;
    goto LABEL_10;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(&v26, v29, &v29[v4], v4);
  v25 = 0;
  v8 = (*a1)(a1, "secondary_key", &v25);
  if (v25 && (v9 = v8, v8 > 0))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(&v22, v25, &v25[v8], v8);
    v19 = 0;
    __dst = 0;
    v21 = 0;
    std::vector<std::byte>::reserve(&v19, v9 + v5);
    std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte*,std::byte*>(&v19, __dst, v29, &v29[v5], v5);
    (*(a1 + 16))(v29);
    std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte*,std::byte*>(&v19, __dst, v25, &v25[v9], v9);
    (*(a1 + 16))(v25);
    *&v12 = v19;
    *(&v12 + 1) = __dst - v19;
    crypto::keys::keys(v18, &v12, 1, 8 * v5, 8 * v9);
    crypto::format::format(&v12, v18, &v30);
    v10 = *v13;
    *a2 = v12;
    v12 = 0uLL;
    *(a2 + 16) = v10;
    *(a2 + 32) = v14;
    v13[0] = 0;
    v13[1] = 0;
    *(a2 + 40) = *__p;
    *(a2 + 56) = v16;
    v14 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a2 + 64, v17);
    *(a2 + 88) = 1;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v17);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v13[0])
    {
      v13[1] = v13[0];
      operator delete(v13[0]);
    }

    if (*(&v12 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
    }

    *&v12 = v18;
    std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&v12);
    if (v19)
    {
      __dst = v19;
      operator delete(v19);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }

  else
  {
    v11 = std::generic_category();
    *a2 = 22;
    *(a2 + 8) = v11;
    *(a2 + 88) = 0;
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

LABEL_10:
  if (v32 == 1)
  {
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }
}

void sub_248E71E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  v31 = *(v27 + 40);
  if (v31)
  {
    *(v27 + 48) = v31;
    operator delete(v31);
  }

  crypto::format_serializer::decode(v28, (v27 + 8), &a9, (v27 + 24));
  a9 = &a20;
  std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  v32 = *(v29 - 104);
  if (v32)
  {
    *(v29 - 96) = v32;
    operator delete(v32);
  }

  if (*(v29 - 56) == 1)
  {
    v33 = *(v29 - 64);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<crypto::format,std::error_code>::error(uint64_t result)
{
  if (*(result + 88))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_285BD4148;
  }

  return result;
}

uint64_t diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<crypto::format,std::error_code>::~expected(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 64);
    v2 = *(a1 + 40);
    if (v2)
    {
      *(a1 + 48) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      *(a1 + 24) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return a1;
}

const std::error_category *crypto::header_serializer::decode@<X0>(uint64_t (**a1)(void, const char *, uint64_t *)@<X0>, uint64_t a2@<X8>)
{
  v8 = 0;
  v3 = (*a1)(a1, "crypto_hdr", &v8);
  v4 = v8;
  if (v8)
  {
    v5 = v3 <= 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    result = std::generic_category();
    *a2 = 2;
    *(a2 + 8) = result;
    *(a2 + 16) = 0;
  }

  else
  {
    if (v3 == 76)
    {
      std::allocate_shared[abi:ne200100]<crypto::header,std::allocator<crypto::header>,char *,0>();
    }

    v7 = std::generic_category();
    *a2 = 22;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    return MEMORY[0x24C1ED710](v4, 0x1000C8077774924);
  }

  return result;
}

char *std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte*,std::byte*>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<iovec>::__throw_length_error[abi:ne200100]();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v31 = (__dst - v11);
    memcpy(v13, __src, __len);
    v32 = &v13[__len];
    v33 = v10 - v5;
    memcpy(v32, v5, v10 - v5);
    *(a1 + 8) = v5;
    v34 = &v13[v11 - v5];
    memcpy(v34, v11, v31);
    *a1 = v34;
    *(a1 + 8) = &v32[v33];
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    return v13;
  }

  v16 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v27 = &__dst[__len];
    v28 = &v10[-__len];
    v29 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 != v10);
    }

    *(a1 + 8) = v29;
    if (v10 != v27)
    {
      memmove(&__dst[__len], __dst, v10 - v27);
    }

    v24 = v5;
    v25 = __src;
    v26 = __len;
    goto LABEL_27;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = &v10[v18];
  *(a1 + 8) = &v10[v18];
  if (v16 >= 1)
  {
    v20 = &v5[__len];
    v21 = &v10[v18];
    if (&v19[-__len] < v10)
    {
      v22 = v5 - &__src[__len];
      v23 = v5 - __src;
      do
      {
        a4[v23++] = a4[v22++];
      }

      while (&a4[v22] < v10);
      v21 = &a4[v23];
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[__len], v5, v19 - v20);
    }

    v24 = v5;
    v25 = __src;
    v26 = v10 - v5;
LABEL_27:
    memmove(v24, v25, v26);
  }

  return v5;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 16);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_285BDF138[v5])(&v6, a2);
    *(a1 + 16) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,crypto::format::aes_cbc_data,crypto::format::aes_xts_data> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void crypto::format::~format(crypto::format *this)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 64);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::__shared_ptr_emplace<FileLocal>::__shared_ptr_emplace[abi:ne200100]<int &,BOOL,BOOL,std::allocator<FileLocal>,0>(void *a1, int *a2, BOOL *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6C38;
  FileLocal::FileLocal((a1 + 3), *a2, *a3, *a4);
}

uint64_t std::__shared_ptr_emplace<crypto::format>::__shared_ptr_emplace[abi:ne200100]<crypto::format,std::allocator<crypto::format>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285BD4B28;
  *(a1 + 24) = *a2;
  *a2 = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 16);
  *(a1 + 56) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = *(a2 + 40);
  *(a1 + 80) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<crypto::format::aes_cbc_data,crypto::format::aes_xts_data>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1 + 88, a2 + 64);
  return a1;
}

void sub_248E7266C(_Unwind_Exception *a1)
{
  v6 = v5;
  v8 = *v6;
  if (*v6)
  {
    v1[3].__vftable = v8;
    operator delete(v8);
  }

  std::__shared_ptr_emplace<crypto::format>::__shared_ptr_emplace[abi:ne200100]<crypto::format,std::allocator<crypto::format>,0>(v2, v3, v4);
  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void diskimage_uio::details::diskimage_open_params_impl::crypto_ctx_t::crypto_ctx_t(void *a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a3;
  v4 = a3[1];
  a1[3] = v4;
  a1[2] = v5;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[4] = 0;
  a1[5] = 0;
  std::allocate_shared[abi:ne200100]<crypto_format_backend,std::allocator<crypto_format_backend>,std::shared_ptr<Backend> &,std::shared_ptr<crypto::format> &,int,0>();
}

void sub_248E7275C(_Unwind_Exception *a1)
{
  v5 = *(v1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  diskimage_uio::details::diskimage_open_params_impl::crypto_ctx_t::crypto_ctx_t(v3, v2);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<crypto_format_backend>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend> &,std::shared_ptr<crypto::format> &,int,std::allocator<crypto_format_backend>,0>(void *a1, uint64_t a2, void *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6E08;
  std::construct_at[abi:ne200100]<crypto_format_backend,std::shared_ptr<Backend> &,std::shared_ptr<crypto::format> &,int,crypto_format_backend*>((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<crypto_format_backend,std::shared_ptr<Backend> &,std::shared_ptr<crypto::format> &,int,crypto_format_backend*>(uint64_t a1, uint64_t a2, void *a3, int *a4)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *a4;
  v9[0] = 0x200000001;
  smart_enums::validators::flags<unsigned int>("header_ignore_fields_t", v8, v9, 2);
  crypto_format_backend::crypto_format_backend(a1, a2, a3, &v8);
  return a1;
}

std::string *diskimage_uio::details::diskimage_open_params_impl::diskimage_open_params_impl(std::string *this, __int128 *a2, int a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  p_size = &this[24].__r_.__value_.__l.__size_;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v8;
  }

  LODWORD(this[23].__r_.__value_.__r.__words[1]) = 0;
  LODWORD(this[23].__r_.__value_.__r.__words[2]) = 0;
  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  HIDWORD(this[23].__r_.__value_.__r.__words[2]) = a3;
  LODWORD(this[24].__r_.__value_.__l.__data_) = a3;
  *p_size = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(p_size + 1) = *(a4 + 16);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(p_size + 2) = *(a4 + 32);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  v9 = this[25].__r_.__value_.__r.__words[2];
  data = this[26].__r_.__value_.__l.__data_;
  if (data)
  {
    atomic_fetch_add_explicit(data + 1, 1uLL, memory_order_relaxed);
  }

  size = this[1].__r_.__value_.__l.__size_;
  this[1].__r_.__value_.__r.__words[0] = v9;
  this[1].__r_.__value_.__l.__size_ = data;
  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }

  diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(this, this[24].__r_.__value_.__l.__data_, 0, v16);
  if ((v16[16] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v16);
  }

  if (LODWORD(this[23].__r_.__value_.__r.__words[2]) == 2)
  {
    v13 = this[1].__r_.__value_.__l.__data_;
    v12 = this[1].__r_.__value_.__l.__size_;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17[0] = 0x200000001;
    smart_enums::validators::flags<unsigned int>("header_ignore_fields_t", 2, v17, 2);
    *(v13 + 98) = 2;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  return this;
}

void sub_248E72ACC(_Unwind_Exception *a1)
{
  v4 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  diskimage_uio::details::diskimage_open_params_impl::crypto_ctx_t::~crypto_ctx_t(v2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1 + 56);
  v6 = *(v1 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v1 + 32);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<crypto::header>::__shared_ptr_emplace[abi:ne200100]<char *,std::allocator<crypto::header>,0>(void *a1, const char **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BDD998;
  crypto::header::header((a1 + 3), *a2);
  return a1;
}

std::string *diskimage_uio::details::diskimage_open_params_impl::diskimage_open_params_impl(std::string *this, __int128 *a2, std::string::size_type *a3, int a4, int a5, std::string::size_type *a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v11;
  }

  v12 = a3[1];
  this[1].__r_.__value_.__r.__words[0] = *a3;
  this[1].__r_.__value_.__l.__size_ = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a6[1];
  this[1].__r_.__value_.__r.__words[2] = *a6;
  this[2].__r_.__value_.__r.__words[0] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(this[23].__r_.__value_.__r.__words[1]) = 0;
  LODWORD(this[23].__r_.__value_.__r.__words[2]) = 0;
  HIDWORD(this[23].__r_.__value_.__r.__words[2]) = a5;
  LODWORD(this[24].__r_.__value_.__l.__data_) = a4;
  *&this[24].__r_.__value_.__r.__words[1] = 0u;
  *&this[25].__r_.__value_.__l.__data_ = 0u;
  *&this[25].__r_.__value_.__r.__words[2] = 0u;
  diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(this, a4, 1, v16);
  if ((v16[16] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v16);
  }

  return this;
}

void sub_248E72D1C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  diskimage_uio::details::diskimage_open_params_impl::crypto_ctx_t::~crypto_ctx_t(v2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1 + 56);
  v5 = *(v1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::details::diskimage_open_params_impl::diskimage_open_params_impl(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0uLL;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0uLL;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1 + 56, a2 + 56);
  v5 = *(a2 + 71);
  *(a1 + 576) = *(a2 + 144);
  *(a1 + 568) = v5;
  *(a1 + 584) = *(a2 + 73);
  *(a1 + 592) = *(a2 + 74);
  *(a2 + 584) = 0u;
  *(a1 + 600) = *(a2 + 75);
  *(a1 + 608) = *(a2 + 76);
  *(a2 + 600) = 0u;
  *(a1 + 616) = *(a2 + 77);
  *(a1 + 624) = *(a2 + 78);
  *(a2 + 616) = 0u;
  return a1;
}

void sub_248E72E30(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  diskimage_uio::details::diskimage_open_params_impl::diskimage_open_params_impl((v1 + 32), v1);
  _Unwind_Resume(a1);
}

uint64_t *diskimage_uio::details::diskimage_open_params_impl::validate_unlocked@<X0>(uint64_t *__return_ptr a1@<X8>, const std::error_category *this@<X0>)
{
  diskimage_uio::details::diskimage_open_params_impl::is_locked(this, v16);
  if (v16[16])
  {
    result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<DIImageFormat,std::error_code>::value(v16);
    if (*result == 1)
    {
      *&v11 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::validate_unlocked() const";
      *(&v11 + 1) = 84;
      v12 = 16;
      di_log::logger<di_log::log_printer<635ul>>::logger(v13, &v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Diskimageuio: image is locked", 29);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(v13);
      MEMORY[0x24C1ED6A0](v15);
      result = make_error_code(162);
      v4 = 0;
      *a1 = result;
      a1[1] = v5;
    }

    else
    {
      *a1 = 0;
      v4 = 1;
    }
  }

  else
  {
    *&v11 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::validate_unlocked() const";
    *(&v11 + 1) = 84;
    v12 = 16;
    di_log::logger<di_log::log_printer<630ul>>::logger(v13, &v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Diskimageuio: can't get lock status ", 36);
    v6 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v16);
    v7 = (*(**(v6 + 1) + 16))(*(v6 + 1));
    v8 = strlen(v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v7, v8);
    v17 = 58;
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v17, 1);
    MEMORY[0x24C1ED390](v10, *v6);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(v13);
    MEMORY[0x24C1ED6A0](v15);
    result = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v16);
    v4 = 0;
    *a1 = *result;
  }

  *(a1 + 16) = v4;
  return result;
}

void sub_248E7300C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<635ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<645ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<645ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDF5A0;
  a1[45] = &unk_285BDF6A0;
  a1[46] = &unk_285BDF6C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDF5A0;
  a1[45] = &unk_285BDF628;
  a1[46] = &unk_285BDF650;
  return a1;
}

void sub_248E73134(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<645ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<630ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<630ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDF160;
  a1[45] = &unk_285BDF260;
  a1[46] = &unk_285BDF288;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDF160;
  a1[45] = &unk_285BDF1E8;
  a1[46] = &unk_285BDF210;
  return a1;
}

void sub_248E732A0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<630ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<635ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<635ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDF380;
  a1[45] = &unk_285BDF480;
  a1[46] = &unk_285BDF4A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDF380;
  a1[45] = &unk_285BDF408;
  a1[46] = &unk_285BDF430;
  return a1;
}

void sub_248E7340C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<635ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<630ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDF2F8;
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

void sub_248E73524(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDF2F8;
  di_log::logger_buf<di_log::log_printer<630ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<630ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<630ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<630ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<630ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<630ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<630ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<630ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<630ul>::log((a1 + 72), __p);
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

void sub_248E73AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<630ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 630;
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
      v26 = 630;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<635ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDF518;
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

void sub_248E73D84(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDF518;
  di_log::logger_buf<di_log::log_printer<635ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<635ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<635ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<635ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<635ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<635ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<635ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<635ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<635ul>::log((a1 + 72), __p);
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

void sub_248E74328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<635ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 635;
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
      v26 = 635;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<645ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDF738;
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

void sub_248E745E4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDF738;
  di_log::logger_buf<di_log::log_printer<645ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<645ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<645ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<645ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<645ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<645ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<645ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<645ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<645ul>::log((a1 + 72), __p);
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

void sub_248E74B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<645ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 645;
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
      v26 = 645;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *di_log::logger<di_log::log_printer<655ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<655ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDF7C0;
  a1[45] = &unk_285BDF8C0;
  a1[46] = &unk_285BDF8E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDF7C0;
  a1[45] = &unk_285BDF848;
  a1[46] = &unk_285BDF870;
  return a1;
}

void sub_248E74E98(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<655ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<655ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDF958;
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

void sub_248E74FB0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDF958;
  di_log::logger_buf<di_log::log_printer<655ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<655ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<655ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<655ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<655ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<655ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<655ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<655ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<655ul>::log((a1 + 72), __p);
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

void sub_248E75554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<655ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 655;
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
      v26 = 655;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

const std::error_category *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<hdr_get_block_size(std::variant<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&>@<X0>(uint64_t a1@<X8>)
{
  *&v3 = "hdr_get_block_size(const hdr_variant &)::(anonymous class)::operator()(const auto &) const [hdr:auto = std::monostate]";
  *(&v3 + 1) = 70;
  v4 = 16;
  di_log::logger<di_log::log_printer<101ul>>::logger(v5, &v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Diskimageuio: can't get Diskimage attribute, unknown header format", 66);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(v5);
  MEMORY[0x24C1ED6A0](&v7);
  result = std::generic_category();
  *a1 = 6;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

void sub_248E757FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<101ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<hdr_get_block_size(std::variant<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  diskimage_uio::details::diskimage_open_params_impl::get_block_size(*(*(*a1 + 8) - 8), &v3);
  *a2 = v3.n128_u64[0];
  *(a2 + 16) = 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<hdr_get_block_size(std::variant<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 8))();
  *a2 = result;
  *(a2 + 16) = 1;
  return result;
}

void *di_log::logger<di_log::log_printer<101ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<101ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDFA10;
  a1[45] = &unk_285BDFB10;
  a1[46] = &unk_285BDFB38;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDFA10;
  a1[45] = &unk_285BDFA98;
  a1[46] = &unk_285BDFAC0;
  return a1;
}

void sub_248E759D4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<101ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<101ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDFBA8;
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

void sub_248E75AEC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDFBA8;
  di_log::logger_buf<di_log::log_printer<101ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<101ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<101ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<101ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<101ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<101ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<101ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<101ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<101ul>::log((a1 + 72), __p);
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

void sub_248E76090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<101ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 101;
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
      v26 = 101;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *di_log::logger<di_log::log_printer<665ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<665ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDFC30;
  a1[45] = &unk_285BDFD30;
  a1[46] = &unk_285BDFD58;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDFC30;
  a1[45] = &unk_285BDFCB8;
  a1[46] = &unk_285BDFCE0;
  return a1;
}

void sub_248E763A0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<665ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<665ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDFDC8;
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

void sub_248E764B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BDFDC8;
  di_log::logger_buf<di_log::log_printer<665ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<665ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<665ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<665ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<665ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<665ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<665ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<665ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<665ul>::log((a1 + 72), __p);
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

void sub_248E76A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<665ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 665;
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
      v26 = 665;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

const std::error_category *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<hdr_get_nr_blocks(std::variant<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&>@<X0>(uint64_t a1@<X8>)
{
  *&v3 = "hdr_get_nr_blocks(const hdr_variant &)::(anonymous class)::operator()(const auto &) const [hdr:auto = std::monostate]";
  *(&v3 + 1) = 69;
  v4 = 16;
  di_log::logger<di_log::log_printer<113ul>>::logger(v5, &v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Diskimageuio: can't get Diskimage attribute, unknown header format", 66);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<113ul>>::~logger_buf(v5);
  MEMORY[0x24C1ED6A0](&v7);
  result = std::generic_category();
  *a1 = 6;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

void sub_248E76D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<113ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<hdr_get_nr_blocks(std::variant<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  diskimage_uio::details::diskimage_open_params_impl::get_nr_blocks(*(*(*a1 + 8) - 8), &v3);
  *a2 = v3.n128_u64[0];
  *(a2 + 16) = 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<hdr_get_nr_blocks(std::variant<std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,udif::header,di_asif::header,raw_header,pstack_header,plugin_header> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 16))();
  *a2 = result;
  *(a2 + 16) = 1;
  return result;
}

crypto::auth_table **std::unique_ptr<diskimage_uio::crypto::details::auth_table_impl_t>::~unique_ptr[abi:ne200100](crypto::auth_table **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    crypto::auth_table::~auth_table(v2);
    MEMORY[0x24C1ED730]();
  }

  return a1;
}

void *di_log::logger<di_log::log_printer<159ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<159ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BDFE80;
  a1[45] = &unk_285BDFF80;
  a1[46] = &unk_285BDFFA8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BDFE80;
  a1[45] = &unk_285BDFF08;
  a1[46] = &unk_285BDFF30;
  return a1;
}

void sub_248E76F28(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<159ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<159ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0018;
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

void sub_248E77040(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0018;
  di_log::logger_buf<di_log::log_printer<159ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<159ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<159ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<159ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<159ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<159ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<159ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<159ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<159ul>::log((a1 + 72), __p);
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

void sub_248E775E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<159ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 159;
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
      v26 = 159;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *di_log::logger<di_log::log_printer<173ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<173ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE00A0;
  a1[45] = &unk_285BE01A0;
  a1[46] = &unk_285BE01C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE00A0;
  a1[45] = &unk_285BE0128;
  a1[46] = &unk_285BE0150;
  return a1;
}

void sub_248E778F4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<173ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<173ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0238;
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

void sub_248E77A0C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0238;
  di_log::logger_buf<di_log::log_printer<173ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<173ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<173ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<173ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<173ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<173ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<173ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<173ul>::log((a1 + 72), __p);
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

void sub_248E77FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<173ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 173;
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
      v26 = 173;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void di_hybrid_subscriber_t::~di_hybrid_subscriber_t(std::mutex *this)
{
  gcd::gcd_queue::barrier_sync(&this[7].__m_.__opaque[48], &__block_literal_global_4);
  gcd::gcd_group::~gcd_group(&this[9].__m_.__opaque[40]);
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](&this[9].__m_.__sig);
  std::mutex::~mutex(this + 8);
  gcd::gcd_group::~gcd_group(&this[7].__m_.__opaque[48]);
  PluginRing::~PluginRing(&this[4].__m_.__opaque[40]);
  std::__function::__value_func<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::~__value_func[abi:ne200100](&this[3].__m_.__opaque[48]);
  pool_ns::pool_t<DiskImage::Context,std::default_delete>::~pool_t(&this[1].__m_.__opaque[48]);
}

uint64_t std::optional<crypto::keys>::operator=[abi:ne200100]<crypto::keys&,void>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::vector<crypto::keys::key_pair>::__assign_with_size[abi:ne200100]<crypto::keys::key_pair*,crypto::keys::key_pair*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<crypto::keys::key_pair>::__init_with_size[abi:ne200100]<crypto::keys::key_pair*,crypto::keys::key_pair*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_248E78324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void diskimage_uio::details::diskimage_open_params_impl::resolve_disk_after_crypto_ctx(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33[19] = *MEMORY[0x277D85DE8];
  diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(a1, *(a1 + 576), 0, &v27);
  if ((v28 & 1) == 0)
  {
    v8 = *(a1 + 572);
    if (v8)
    {
      if (*(a1 + 576) != v8)
      {
        v20 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v27);
        v21 = std::generic_category();
        *&v30 = 35;
        *(&v30 + 1) = v21;
        if ((*(**(v20 + 1) + 32))(*(v20 + 1), *v20, &v30) || (*(**(&v30 + 1) + 40))(*(&v30 + 1), v20, v30))
        {
          *&v25 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_after_crypto_ctx(std::optional<crypto_internal::keys> &&)";
          *(&v25 + 1) = 96;
          v26 = 2;
          di_log::logger<di_log::log_printer<682ul>>::logger(&v30, &v25);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Diskimageuio: required mode ", 28);
          diskimage_uio::operator<<(&v32, *(a1 + 572));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, " is different than current mode ", 32);
          diskimage_uio::operator<<(&v32, *(a1 + 576));
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(&v30);
          MEMORY[0x24C1ED6A0](v33);
          diskimage_uio::details::diskimage_open_params_impl::open_and_resolve(a1, *(a1 + 572), 0, &v30);
          if (v31)
          {
            if ((v28 & 1) == 0)
            {
              v28 = v31;
            }

            *&v25 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_after_crypto_ctx(std::optional<crypto_internal::keys> &&)";
            *(&v25 + 1) = 96;
            v26 = 16;
            di_log::logger<di_log::log_printer<687ul>>::logger(&v30, &v25);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Diskimageuio: after reopening backend to read-write, it's no longer encrypted", 77);
            std::ostream::~ostream();
            di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(&v30);
            goto LABEL_22;
          }

          v27 = v30;
          if (v28)
          {
            v28 = v31;
          }

          if (*(a2 + 24) == 1)
          {
            diskimage_uio::details::diskimage_open_params_impl::unlock(a1, a2, 0);
            return;
          }
        }
      }
    }

    *&v25 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_after_crypto_ctx(std::optional<crypto_internal::keys> &&)";
    *(&v25 + 1) = 96;
    v26 = 16;
    di_log::logger<di_log::log_printer<698ul>>::logger(&v30, &v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Diskimageuio: couldn't resolve image while setting passphrase ", 62);
    v9 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v27);
    v10 = (*(**(v9 + 1) + 16))(*(v9 + 1));
    v11 = strlen(v10);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v10, v11);
    LOBYTE(v23) = 58;
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v23, 1);
    MEMORY[0x24C1ED390](v13, *v9);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(&v30);
    MEMORY[0x24C1ED6A0](v33);
    v14 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v27);
LABEL_14:
    *a3 = *v14;
LABEL_23:
    *(a3 + 16) = 0;
    return;
  }

  diskimage_uio::details::diskimage_open_params_impl::is_encrypted(a1, &v25);
  if ((v26 & 1) == 0)
  {
    *&v23 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_after_crypto_ctx(std::optional<crypto_internal::keys> &&)";
    *(&v23 + 1) = 96;
    v24 = 16;
    di_log::logger<di_log::log_printer<703ul>>::logger(&v30, &v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Diskimageuio: can't set passphrase, can't get encrypted status ", 63);
    v15 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v25);
    v16 = (*(**(v15 + 1) + 16))(*(v15 + 1));
    v17 = strlen(v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v16, v17);
    v29 = 58;
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v29, 1);
    MEMORY[0x24C1ED390](v19, *v15);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(&v30);
    MEMORY[0x24C1ED6A0](v33);
    v14 = diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(&v25);
    goto LABEL_14;
  }

  if ((v25 & 1) == 0)
  {
    *&v23 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::resolve_disk_after_crypto_ctx(std::optional<crypto_internal::keys> &&)";
    *(&v23 + 1) = 96;
    v24 = 16;
    di_log::logger<di_log::log_printer<707ul>>::logger(&v30, &v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Diskimageuio: can't set passphrase, image not encrypted after reopen", 68);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(&v30);
LABEL_22:
    MEMORY[0x24C1ED6A0](v33);
    *a3 = make_error_code(161);
    *(a3 + 8) = v22;
    goto LABEL_23;
  }

  if (*(a1 + 568) == 2)
  {
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v30 = 0x200000001;
    smart_enums::validators::flags<unsigned int>("header_ignore_fields_t", 2, &v30, 2);
    *(v7 + 392) = 2;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  *a3 = 0;
  *(a3 + 16) = 1;
}

void sub_248E7882C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  di_log::logger<di_log::log_printer<687ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void std::vector<crypto::keys::key_pair>::__assign_with_size[abi:ne200100]<crypto::keys::key_pair*,crypto::keys::key_pair*>(char **a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<crypto::keys::key_pair>::__vdeallocate(a1);
    if (a4 <= 0x555555555555555)
    {
      v8 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v9 = 0x555555555555555;
      }

      else
      {
        v9 = v8;
      }

      std::vector<crypto::keys::key_pair>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<crypto::keys::key_pair *,crypto::keys::key_pair *,crypto::keys::key_pair *>(&v16, a2, a3, v7);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        std::__destroy_at[abi:ne200100]<crypto::keys::key_pair,0>(v14);
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    v11 = std::__copy_impl::operator()[abi:ne200100]<crypto::keys::key_pair *,crypto::keys::key_pair *,crypto::keys::key_pair *>(&v15, a2, (a2 + v10), v7);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<crypto::keys::key_pair>,crypto::keys::key_pair*,crypto::keys::key_pair*,crypto::keys::key_pair*>(a1, v11, a3, a1[1]);
  }
}

void std::vector<crypto::keys::key_pair>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        std::__destroy_at[abi:ne200100]<crypto::keys::key_pair,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<crypto::keys::key_pair>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::allocator<crypto::keys::key_pair>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<iovec>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<crypto::keys::key_pair>,crypto::keys::key_pair*,crypto::keys::key_pair*,crypto::keys::key_pair*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(a4, *(a2 + v7), *(a2 + v7 + 8), *(a2 + v7 + 8) - *(a2 + v7));
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(a4 + 3, *(v8 + 24), *(v8 + 32), *(v8 + 32) - *(v8 + 24));
      a4 += 6;
      v7 += 48;
    }

    while (v8 + 48 != a3);
  }

  return a4;
}

void sub_248E78B50(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<crypto::keys::key_pair,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

char **std::__copy_impl::operator()[abi:ne200100]<crypto::keys::key_pair *,crypto::keys::key_pair *,crypto::keys::key_pair *>(int a1, char **a2, char **a3, void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::byte>::__assign_with_size[abi:ne200100]<std::byte*,std::byte*>(a4, *v5, v5[1], v5[1] - *v5);
        std::vector<std::byte>::__assign_with_size[abi:ne200100]<std::byte*,std::byte*>(a4 + 3, v5[3], v5[4], v5[4] - v5[3]);
      }

      v5 += 6;
      a4 += 6;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *std::vector<std::byte>::__assign_with_size[abi:ne200100]<std::byte*,std::byte*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<char>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void std::allocator<crypto::keys::key_pair>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<crypto::keys::key_pair>::__init_with_size[abi:ne200100]<crypto::keys::key_pair*,crypto::keys::key_pair*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<crypto::keys::key_pair>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_248E78E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<682ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<682ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE02E0;
  a1[45] = &unk_285BE03E0;
  a1[46] = &unk_285BE0408;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE02E0;
  a1[45] = &unk_285BE0368;
  a1[46] = &unk_285BE0390;
  return a1;
}

void sub_248E78F24(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<682ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<687ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<687ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE0500;
  a1[45] = &unk_285BE0600;
  a1[46] = &unk_285BE0628;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE0500;
  a1[45] = &unk_285BE0588;
  a1[46] = &unk_285BE05B0;
  return a1;
}

void sub_248E79090(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<687ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<698ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<698ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE0720;
  a1[45] = &unk_285BE0820;
  a1[46] = &unk_285BE0848;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE0720;
  a1[45] = &unk_285BE07A8;
  a1[46] = &unk_285BE07D0;
  return a1;
}

void sub_248E791FC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<698ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<703ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<703ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE0940;
  a1[45] = &unk_285BE0A40;
  a1[46] = &unk_285BE0A68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE0940;
  a1[45] = &unk_285BE09C8;
  a1[46] = &unk_285BE09F0;
  return a1;
}

void sub_248E79368(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<703ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<707ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<707ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE0B60;
  a1[45] = &unk_285BE0C60;
  a1[46] = &unk_285BE0C88;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE0B60;
  a1[45] = &unk_285BE0BE8;
  a1[46] = &unk_285BE0C10;
  return a1;
}

void sub_248E794D4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<707ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<682ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0478;
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

void sub_248E795EC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0478;
  di_log::logger_buf<di_log::log_printer<682ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<682ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<682ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<682ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<682ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<682ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<682ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<682ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<682ul>::log((a1 + 72), __p);
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

void sub_248E79B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<682ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 682;
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
      v26 = 682;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<687ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0698;
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

void sub_248E79E4C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0698;
  di_log::logger_buf<di_log::log_printer<687ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<687ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<687ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<687ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<687ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<687ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<687ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<687ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<687ul>::log((a1 + 72), __p);
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

void sub_248E7A3F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<687ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 687;
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
      v26 = 687;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<698ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE08B8;
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

void sub_248E7A6AC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE08B8;
  di_log::logger_buf<di_log::log_printer<698ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<698ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<698ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<698ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<698ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<698ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<698ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<698ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<698ul>::log((a1 + 72), __p);
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

void sub_248E7AC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<698ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 698;
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
      v26 = 698;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<703ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0AD8;
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

void sub_248E7AF0C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0AD8;
  di_log::logger_buf<di_log::log_printer<703ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<703ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<703ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<703ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<703ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<703ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<703ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<703ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<703ul>::log((a1 + 72), __p);
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

void sub_248E7B4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<703ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 703;
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
      v26 = 703;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<707ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0CF8;
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

void sub_248E7B76C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0CF8;
  di_log::logger_buf<di_log::log_printer<707ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<707ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<707ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<707ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<707ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<707ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<707ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<707ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<707ul>::log((a1 + 72), __p);
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

void sub_248E7BD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<707ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 707;
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
      v26 = 707;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t io_rings_di_subscriber_t::io_rings_di_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &,std::function<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)> const&)::$_1::__invoke(io_rings_di_subscriber_t *a1, unsigned __int8 *a2)
{
  io_rings_di_subscriber_t::get_ctx(v7, a1);
  if (v7[1])
  {
    v4 = io_rings_parse_and_execute_sqe(a1, v7, a2);
  }

  else
  {
    v4 = -12;
  }

  v5 = io_rings_return_status(*(a1 + 7), a2, v4, 0);
  pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t::~pooled_element_t(v7);
  return v5;
}

void sub_248E7BF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pool_ns::pool_t<DiskImage::Context,std::default_delete>::pooled_element_t::~pooled_element_t(va);
  _Unwind_Resume(a1);
}

void header_exception::~header_exception(std::exception *this)
{
  DiskImagesRuntimeException::~DiskImagesRuntimeException(this);

  JUMPOUT(0x24C1ED730);
}

void ***std::unique_ptr<std::vector<diskimage_uio::diskimage_open_params_pair>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<diskimage_uio::diskimage_open_params_pair>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x24C1ED730](v2, 0x20C40960023A9);
  }

  return result;
}

void std::vector<diskimage_uio::diskimage_open_params_pair>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 8) = *(v7 + 8);
      *(v7 + 8) = 0;
      v7 += 16;
      v8 += 16;
    }

    while (v7 != v5);
    do
    {
      diskimage_uio::diskimage_open_params::~diskimage_open_params((v4 + 8));
      v4 += 16;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void std::allocator<diskimage_uio::diskimage_open_params_pair>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<diskimage_uio::diskimage_open_params_pair>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    diskimage_uio::diskimage_open_params::~diskimage_open_params((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<diskimage_uio::diskimage_open_params_pair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 16;
        diskimage_uio::diskimage_open_params::~diskimage_open_params((v4 - 8));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

uint64_t std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<1084ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD9E28;
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

void sub_248E7C3D8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1097ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BDA708;
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

void sub_248E7C4A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::operator<<[abi:ne200100]<di_log::logger<di_log::log_printer<1992ul>>,char [33],0>(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 360), __s, v4);
  return a1;
}

void *di_log::logger<di_log::log_printer<1992ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1992ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE0DA8;
  a1[45] = &unk_285BE0EA8;
  a1[46] = &unk_285BE0ED0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE0DA8;
  a1[45] = &unk_285BE0E30;
  a1[46] = &unk_285BE0E58;
  return a1;
}

void sub_248E7C5FC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1992ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<1999ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1999ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BE0FC8;
  a1[45] = &unk_285BE10C8;
  a1[46] = &unk_285BE10F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BE0FC8;
  a1[45] = &unk_285BE1050;
  a1[46] = &unk_285BE1078;
  return a1;
}

void sub_248E7C768(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1999ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *diskimage_uio::details::diskimage_impl::create_diskimage_impl<std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    *&v17 = "diskimage_impl *diskimage_uio::details::diskimage_impl::create_diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
    *(&v17 + 1) = 77;
    v18 = 16;
    di_log::logger<di_log::log_printer<1992ul>>::logger(v19, &v17);
    std::operator<<[abi:ne200100]<di_log::logger<di_log::log_printer<1992ul>>,char [33],0>(v19, "Diskimageuio: No diskimage given");
    di_log::logger<di_log::log_printer<1992ul>>::~logger(v19);
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = make_error_code(157);
    exception[1] = v12;
  }

  if (a1 + 16 != a2)
  {
    operator new();
  }

  v15 = *a1;
  v5 = *a1;
  v6 = *(a1 + 8);
  v16 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    *&v17 = "diskimage_impl *diskimage_uio::details::diskimage_impl::create_diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
    *(&v17 + 1) = 77;
    v18 = 16;
    di_log::logger<di_log::log_printer<1999ul>>::logger(v19, &v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Diskimageuio: single image given, but role is ", 46);
    diskimage_uio::operator<<(v21, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " rather than image", 18);
    di_log::logger<di_log::log_printer<1999ul>>::~logger(v19);
    v13 = __cxa_allocate_exception(0x10uLL);
    v14 = std::generic_category();
    *v13 = 22;
    v13[1] = v14;
  }

  diskimage_uio::details::diskimage_open_params_impl::query_image_format(&v17, v6);
  LODWORD(v19[0]) = 12;
  v20 = 1;
  if (diskimage_uio::expected_ns::std::experimental::fundamentals_v3::operator==<DIImageFormat,std::error_code>(&v17, v19))
  {
    operator new();
  }

  diskimage_uio::details::diskimage_open_params_impl::query_image_format(&v17, v16);
  LODWORD(v19[0]) = 11;
  v20 = 1;
  if (!diskimage_uio::expected_ns::std::experimental::fundamentals_v3::operator==<DIImageFormat,std::error_code>(&v17, v19) || (v7 = *(v16 + 7), v8 = v7[1], v8 - *v7 != 16))
  {
    operator new();
  }

  v9 = diskimage_uio::details::diskimage_impl::create_diskimage_impl<std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>>(*v7, v8, a3);
  diskimage_uio::diskimage_open_params::~diskimage_open_params(&v16);
  return v9;
}

void sub_248E7CAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  di_log::logger<di_log::log_printer<1992ul>>::~logger(va);
  JUMPOUT(0x248E7CAB8);
}

uint64_t di_log::logger_buf<di_log::log_printer<1992ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE0F40;
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

void sub_248E7CB94(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE0F40;
  di_log::logger_buf<di_log::log_printer<1992ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<1992ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1992ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1992ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<1992ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1992ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1992ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1992ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<1992ul>::log((a1 + 72), __p);
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

void sub_248E7D138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<1992ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 1992;
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
      v26 = 1992;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<1999ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE1160;
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

void sub_248E7D3F4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE1160;
  di_log::logger_buf<di_log::log_printer<1999ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<1999ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1999ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1999ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<1999ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1999ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1999ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1999ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<1999ul>::log((a1 + 72), __p);
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

void sub_248E7D998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<1999ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 1999;
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
      v26 = 1999;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t diskimage_uio::details::diskimage_impl::diskimage_impl<std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v66 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0u;
  v7 = (a1 + 8);
  *a1 = &unk_285BD9B88;
  *(a1 + 64) = 850045863;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  std::__shared_mutex_base::__shared_mutex_base((a1 + 128));
  if (a2 == a3)
  {
    *&v57 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
    *(&v57 + 1) = 54;
    LODWORD(v58) = 16;
    di_log::logger<di_log::log_printer<956ul>>::logger(&v59, &v57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Diskimageuio: No diskimage given", 32);
    di_log::logger<di_log::log_printer<956ul>>::~logger(&v59);
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = make_error_code(157);
    exception[1] = v47;
  }

  v8 = *a2;
  v55 = *a2;
  v9 = *(a2 + 8);
  v56 = v9;
  *(a2 + 8) = 0;
  if (a2 + 16 != a3)
  {
    diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(&lpsrc, v9);
    v13 = (*(*lpsrc + 24))(lpsrc);
    if (!v55)
    {
      *&v57 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
      *(&v57 + 1) = 54;
      LODWORD(v58) = 16;
      di_log::logger<di_log::log_printer<978ul>>::logger(&v59, &v57);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Diskimageuio: multiple images given, but first role is image instead of shadow/cache/snapshot", 93);
      di_log::logger<di_log::log_printer<978ul>>::~logger(&v59);
      v50 = __cxa_allocate_exception(0x10uLL);
      *v50 = make_error_code(163);
      v50[1] = v51;
    }

    v14 = v13;
    v57 = 0uLL;
    v58 = 0;
    v15 = lpsrc;
    if (v55 == 1)
    {
      lpsrc = 0;
      v59 = v15;
      LODWORD(v60) = 2;
    }

    else
    {
      v16 = (*(*lpsrc + 40))(lpsrc);
      if (v55 == 3)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = lpsrc;
      if (v17 == 1 && lpsrc != 0)
      {
        if (v20)
        {
          v20[216] = 0;
        }
      }

      v21 = v17 ^ 1;
      v22 = *(&v57 + 1);
      lpsrc = 0;
      v59 = v18;
      LODWORD(v60) = v21;
      if (*(&v57 + 1) < v58)
      {
        **(&v57 + 1) = v18;
        if (v18)
        {
          operator new();
        }

        *(v22 + 8) = 0;
        *(v22 + 16) = v21;
        *(&v57 + 1) = v22 + 24;
        goto LABEL_25;
      }
    }

    v23 = std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__emplace_back_slow_path<std::tuple<std::unique_ptr<DiskImage>,DiskImageStackable::role>>(&v57, &v59);
    v24 = v59;
    *(&v57 + 1) = v23;
    v59 = 0;
    if (v24)
    {
      (*(*v24 + 16))(v24);
    }

LABEL_25:
    v25 = a2 + 16;
    if (a2 + 16 == a3)
    {
LABEL_58:
      operator new();
    }

    v26 = v55;
    v27 = v55 == 1;
    while (1)
    {
      v55 = *v25;
      diskimage_uio::diskimage_open_params::operator=(&v56, (v25 + 8));
      diskimage_uio::details::diskimage_open_params_impl::query_image_format(v52, v56);
      if ((v53 & 1) == 0)
      {
        *&v64 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
        *(&v64 + 1) = 54;
        v65 = 16;
        di_log::logger<di_log::log_printer<1003ul>>::logger(&v59, &v64);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Diskimageuio: Can't get image format", 36);
        di_log::logger<di_log::log_printer<1003ul>>::~logger(&v59);
        v42 = __cxa_allocate_exception(0x10uLL);
        *v42 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v52);
      }

      diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(&v59, v56);
      v28 = v59;
      v59 = 0;
      v29 = lpsrc;
      lpsrc = v28;
      if (v29)
      {
        (*(*v29 + 16))(v29);
        v30 = v59;
        v59 = 0;
        if (v30)
        {
          (*(*v30 + 16))(v30);
        }

        v28 = lpsrc;
      }

      v31 = *v28;
      {
        *&v64 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
        *(&v64 + 1) = 54;
        v65 = 16;
        di_log::logger<di_log::log_printer<1010ul>>::logger(&v59, &v64);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Diskimageuio: Nested stacking is not allowed.", 45);
        di_log::logger<di_log::log_printer<1010ul>>::~logger(&v59);
        goto LABEL_64;
      }

      if ((*(v31 + 24))(v28) != v14)
      {
        *&v64 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
        *(&v64 + 1) = 54;
        v65 = 16;
        di_log::logger<di_log::log_printer<1015ul>>::logger(&v59, &v64);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Diskimageuio: Multiple images given but block size differ. ", 59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, " block_size: ", 13);
        MEMORY[0x24C1ED3C0](v63, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, " / ", 3);
        v39 = (*(*lpsrc + 24))(lpsrc);
        MEMORY[0x24C1ED3C0](v63, v39);
        di_log::logger<di_log::log_printer<1015ul>>::~logger(&v59);
LABEL_64:
        v38 = 163;
LABEL_65:
        v40 = __cxa_allocate_exception(0x10uLL);
        *v40 = make_error_code(v38);
        v40[1] = v41;
      }

      v25 += 16;
      if (v25 == a3)
      {
        break;
      }

      if (LODWORD(v52[0]) != 2)
      {
        *&v64 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
        *(&v64 + 1) = 54;
        v65 = 16;
        di_log::logger<di_log::log_printer<1031ul>>::logger(&v59, &v64);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Diskimageuio: Can't stack non asif formats. Got ", 48);
        v43 = diskimage_uio::operator<<(v63, v52[0]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " instead", 8);
        di_log::logger<di_log::log_printer<1031ul>>::~logger(&v59);
        goto LABEL_64;
      }

      if (v55 != 1)
      {
        if (v55 != 2)
        {
          *&v64 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
          *(&v64 + 1) = 54;
          v65 = 16;
          di_log::logger<di_log::log_printer<1038ul>>::logger(&v59, &v64);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Diskimageuio: Multiple images given, except for top or bottom, role should be cache/snapshot, but role given ", 109);
          diskimage_uio::operator<<(v63, v55);
          di_log::logger<di_log::log_printer<1038ul>>::~logger(&v59);
          goto LABEL_72;
        }

        if ((*(*lpsrc + 40))(lpsrc))
        {
          *&v64 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
          *(&v64 + 1) = 54;
          v65 = 16;
          di_log::logger<di_log::log_printer<1043ul>>::logger(&v59, &v64);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Diskimageuio: Snapshots should be read only", 43);
          di_log::logger<di_log::log_printer<1043ul>>::~logger(&v59);
          goto LABEL_72;
        }

LABEL_42:
        v32 = 1;
        goto LABEL_46;
      }

      if (v27)
      {
        *&v64 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
        *(&v64 + 1) = 54;
        v65 = 16;
        di_log::logger<di_log::log_printer<1049ul>>::logger(&v59, &v64);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Diskimageuio: Only single cache is allowed", 42);
        di_log::logger<di_log::log_printer<1049ul>>::~logger(&v59);
LABEL_72:
        v44 = __cxa_allocate_exception(0x10uLL);
        *v44 = make_error_code(163);
        v44[1] = v45;
      }

      if (v26 == 2)
      {
        *&v64 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
        *(&v64 + 1) = 54;
        v65 = 16;
        di_log::logger<di_log::log_printer<1054ul>>::logger(&v59, &v64);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Diskimageuio: Snapshot detected on top of cache", 47);
        di_log::logger<di_log::log_printer<1054ul>>::~logger(&v59);
        goto LABEL_72;
      }

      v27 = 1;
      v32 = 2;
LABEL_46:
      if (LODWORD(v52[0]) != 12)
      {
        (*(*lpsrc + 80))(&v59);
        if (v59 || v60 || v61 || v62)
        {
          *&v64 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
          *(&v64 + 1) = 54;
          v65 = 16;
          di_log::logger<di_log::log_printer<1064ul>>::logger(&v59, &v64);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Diskimageuio: images with constraints currently not supported", 61);
          di_log::logger<di_log::log_printer<1064ul>>::~logger(&v59);
          v38 = 164;
          goto LABEL_65;
        }
      }

      v33 = lpsrc;
      lpsrc = 0;
      v59 = v33;
      LODWORD(v60) = v32;
      v34 = *(&v57 + 1);
      if (*(&v57 + 1) >= v58)
      {
        v35 = std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__emplace_back_slow_path<std::tuple<std::unique_ptr<DiskImage>,DiskImageStackable::role>>(&v57, &v59);
        v36 = v59;
        *(&v57 + 1) = v35;
        v59 = 0;
        if (v36)
        {
          (*(*v36 + 16))(v36);
        }
      }

      else
      {
        **(&v57 + 1) = v33;
        if (v33)
        {
          operator new();
        }

        *(v34 + 8) = 0;
        *(v34 + 16) = v32;
        *(&v57 + 1) = v34 + 24;
      }

      if (v25 == a3)
      {
        goto LABEL_58;
      }
    }

    if (v55)
    {
      *&v64 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
      *(&v64 + 1) = 54;
      v65 = 16;
      di_log::logger<di_log::log_printer<1023ul>>::logger(&v59, &v64);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Diskimageuio: bottom diskimage should have role image, but ", 59);
      diskimage_uio::operator<<(v63, v55);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, " given", 6);
      di_log::logger<di_log::log_printer<1023ul>>::~logger(&v59);
      goto LABEL_64;
    }

    (*(*lpsrc + 40))(lpsrc);
    goto LABEL_42;
  }

  if (v8)
  {
    *&v57 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<std::__wrap_iter<diskimage_uio::diskimage_open_params_pair *>>]";
    *(&v57 + 1) = 54;
    LODWORD(v58) = 16;
    di_log::logger<di_log::log_printer<965ul>>::logger(&v59, &v57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Diskimageuio: single image given, but role is ", 46);
    diskimage_uio::operator<<(v63, v55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, " rather than image", 18);
    di_log::logger<di_log::log_printer<965ul>>::~logger(&v59);
    v48 = __cxa_allocate_exception(0x10uLL);
    v49 = std::generic_category();
    *v48 = 22;
    v48[1] = v49;
  }

  diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(&v59, v9);
  v10 = v59;
  v59 = 0;
  v11 = *v7;
  *v7 = v10;
  if (v11)
  {
    (*(*v11 + 16))(v11);
    v12 = v59;
    v59 = 0;
    if (v12)
    {
      (*(*v12 + 16))(v12);
    }
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&v56);
  return a1;
}

void sub_248E7E8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  di_log::logger<di_log::log_printer<1049ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  di_log::logger<di_log::log_printer<1054ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7E8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  di_log::logger<di_log::log_printer<1043ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7E9C4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x248E7EB88);
}

void sub_248E7E9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  di_log::logger<di_log::log_printer<1038ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7EA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  di_log::logger<di_log::log_printer<1023ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7EA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  di_log::logger<di_log::log_printer<1003ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7EA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  di_log::logger<di_log::log_printer<1010ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  di_log::logger<di_log::log_printer<1064ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7EA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  di_log::logger<di_log::log_printer<1031ul>>::~logger(va);
  JUMPOUT(0x248E7EAF0);
}

void sub_248E7EAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *a22)
{
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(v22 + 128);
  std::mutex::~mutex(a10);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((v22 + 16));
  v24 = *a12;
  *a12 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::details::diskimage_impl::diskimage_impl<std::move_iterator<diskimage_uio::diskimage_open_params_pair *>>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v65 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0u;
  v7 = (a1 + 8);
  *a1 = &unk_285BD9B88;
  *(a1 + 64) = 850045863;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  std::__shared_mutex_base::__shared_mutex_base((a1 + 128));
  if (a2 == a3)
  {
    *&v56 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
    *(&v56 + 1) = 54;
    LODWORD(v57) = 16;
    di_log::logger<di_log::log_printer<956ul>>::logger(&v58, &v56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Diskimageuio: No diskimage given", 32);
    di_log::logger<di_log::log_printer<956ul>>::~logger(&v58);
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = make_error_code(157);
    exception[1] = v46;
  }

  v8 = *a2;
  v54 = *a2;
  v9 = *(a2 + 8);
  v55 = v9;
  *(a2 + 8) = 0;
  v10 = a2 + 16;
  if (a2 + 16 != a3)
  {
    diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(&lpsrc, v9);
    v11 = (*(*lpsrc + 24))(lpsrc);
    if (!v54)
    {
      *&v56 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
      *(&v56 + 1) = 54;
      LODWORD(v57) = 16;
      di_log::logger<di_log::log_printer<978ul>>::logger(&v58, &v56);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Diskimageuio: multiple images given, but first role is image instead of shadow/cache/snapshot", 93);
      di_log::logger<di_log::log_printer<978ul>>::~logger(&v58);
      v47 = __cxa_allocate_exception(0x10uLL);
      *v47 = make_error_code(163);
      v47[1] = v48;
    }

    v12 = v11;
    v56 = 0uLL;
    v57 = 0;
    v13 = lpsrc;
    if (v54 == 1)
    {
      lpsrc = 0;
      v58 = v13;
      LODWORD(v59) = 2;
    }

    else
    {
      v17 = (*(*lpsrc + 40))(lpsrc);
      if (v54 == 3)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = lpsrc;
      if (v18 == 1 && lpsrc != 0)
      {
        if (v21)
        {
          v21[216] = 0;
        }
      }

      v22 = *(&v56 + 1);
      lpsrc = 0;
      v58 = v19;
      LODWORD(v59) = v18 ^ 1;
      if (*(&v56 + 1) < v57)
      {
        **(&v56 + 1) = v19;
        if (v19)
        {
          operator new();
        }

        *(v22 + 8) = 0;
        *(v22 + 16) = v18 ^ 1;
        *(&v56 + 1) = v22 + 24;
        goto LABEL_25;
      }
    }

    v23 = std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__emplace_back_slow_path<std::tuple<std::unique_ptr<DiskImage>,DiskImageStackable::role>>(&v56, &v58);
    v24 = v58;
    *(&v56 + 1) = v23;
    v58 = 0;
    if (v24)
    {
      (*(*v24 + 16))(v24);
    }

LABEL_25:
    v25 = v54;
    v26 = v54 == 1;
    while (1)
    {
      v54 = *v10;
      diskimage_uio::diskimage_open_params::operator=(&v55, (v10 + 8));
      diskimage_uio::details::diskimage_open_params_impl::query_image_format(v51, v55);
      if ((v52 & 1) == 0)
      {
        *&v63 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
        *(&v63 + 1) = 54;
        v64 = 16;
        di_log::logger<di_log::log_printer<1003ul>>::logger(&v58, &v63);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Diskimageuio: Can't get image format", 36);
        di_log::logger<di_log::log_printer<1003ul>>::~logger(&v58);
        v41 = __cxa_allocate_exception(0x10uLL);
        *v41 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v51);
      }

      diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(&v58, v55);
      v27 = v58;
      v58 = 0;
      v28 = lpsrc;
      lpsrc = v27;
      if (v28)
      {
        (*(*v28 + 16))(v28);
        v29 = v58;
        v58 = 0;
        if (v29)
        {
          (*(*v29 + 16))(v29);
        }

        v27 = lpsrc;
      }

      v30 = *v27;
      {
        *&v63 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
        *(&v63 + 1) = 54;
        v64 = 16;
        di_log::logger<di_log::log_printer<1010ul>>::logger(&v58, &v63);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Diskimageuio: Nested stacking is not allowed.", 45);
        di_log::logger<di_log::log_printer<1010ul>>::~logger(&v58);
        goto LABEL_63;
      }

      if ((*(v30 + 24))(v27) != v12)
      {
        *&v63 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
        *(&v63 + 1) = 54;
        v64 = 16;
        di_log::logger<di_log::log_printer<1015ul>>::logger(&v58, &v63);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Diskimageuio: Multiple images given but block size differ. ", 59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " block_size: ", 13);
        MEMORY[0x24C1ED3C0](v62, v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " / ", 3);
        v38 = (*(*lpsrc + 24))(lpsrc);
        MEMORY[0x24C1ED3C0](v62, v38);
        di_log::logger<di_log::log_printer<1015ul>>::~logger(&v58);
LABEL_63:
        v37 = 163;
LABEL_64:
        v39 = __cxa_allocate_exception(0x10uLL);
        *v39 = make_error_code(v37);
        v39[1] = v40;
      }

      v10 += 16;
      if (v10 == a3)
      {
        break;
      }

      if (LODWORD(v51[0]) != 2)
      {
        *&v63 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
        *(&v63 + 1) = 54;
        v64 = 16;
        di_log::logger<di_log::log_printer<1031ul>>::logger(&v58, &v63);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Diskimageuio: Can't stack non asif formats. Got ", 48);
        v42 = diskimage_uio::operator<<(v62, v51[0]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " instead", 8);
        di_log::logger<di_log::log_printer<1031ul>>::~logger(&v58);
        goto LABEL_63;
      }

      if (v54 != 1)
      {
        if (v54 != 2)
        {
          *&v63 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
          *(&v63 + 1) = 54;
          v64 = 16;
          di_log::logger<di_log::log_printer<1038ul>>::logger(&v58, &v63);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Diskimageuio: Multiple images given, except for top or bottom, role should be cache/snapshot, but role given ", 109);
          diskimage_uio::operator<<(v62, v54);
          di_log::logger<di_log::log_printer<1038ul>>::~logger(&v58);
          goto LABEL_71;
        }

        if ((*(*lpsrc + 40))(lpsrc))
        {
          *&v63 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
          *(&v63 + 1) = 54;
          v64 = 16;
          di_log::logger<di_log::log_printer<1043ul>>::logger(&v58, &v63);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Diskimageuio: Snapshots should be read only", 43);
          di_log::logger<di_log::log_printer<1043ul>>::~logger(&v58);
          goto LABEL_71;
        }

LABEL_41:
        v31 = 1;
        goto LABEL_45;
      }

      if (v26)
      {
        *&v63 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
        *(&v63 + 1) = 54;
        v64 = 16;
        di_log::logger<di_log::log_printer<1049ul>>::logger(&v58, &v63);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Diskimageuio: Only single cache is allowed", 42);
        di_log::logger<di_log::log_printer<1049ul>>::~logger(&v58);
LABEL_71:
        v43 = __cxa_allocate_exception(0x10uLL);
        *v43 = make_error_code(163);
        v43[1] = v44;
      }

      if (v25 == 2)
      {
        *&v63 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
        *(&v63 + 1) = 54;
        v64 = 16;
        di_log::logger<di_log::log_printer<1054ul>>::logger(&v58, &v63);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Diskimageuio: Snapshot detected on top of cache", 47);
        di_log::logger<di_log::log_printer<1054ul>>::~logger(&v58);
        goto LABEL_71;
      }

      v26 = 1;
      v31 = 2;
LABEL_45:
      if (LODWORD(v51[0]) != 12)
      {
        (*(*lpsrc + 80))(&v58);
        if (v58 || v59 || v60 || v61)
        {
          *&v63 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
          *(&v63 + 1) = 54;
          v64 = 16;
          di_log::logger<di_log::log_printer<1064ul>>::logger(&v58, &v63);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Diskimageuio: images with constraints currently not supported", 61);
          di_log::logger<di_log::log_printer<1064ul>>::~logger(&v58);
          v37 = 164;
          goto LABEL_64;
        }
      }

      v32 = lpsrc;
      lpsrc = 0;
      v58 = v32;
      LODWORD(v59) = v31;
      v33 = *(&v56 + 1);
      if (*(&v56 + 1) >= v57)
      {
        v34 = std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__emplace_back_slow_path<std::tuple<std::unique_ptr<DiskImage>,DiskImageStackable::role>>(&v56, &v58);
        v35 = v58;
        *(&v56 + 1) = v34;
        v58 = 0;
        if (v35)
        {
          (*(*v35 + 16))(v35);
        }
      }

      else
      {
        **(&v56 + 1) = v32;
        if (v32)
        {
          operator new();
        }

        *(v33 + 8) = 0;
        *(v33 + 16) = v31;
        *(&v56 + 1) = v33 + 24;
      }

      if (v10 == a3)
      {
        operator new();
      }
    }

    if (v54)
    {
      *&v63 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
      *(&v63 + 1) = 54;
      v64 = 16;
      di_log::logger<di_log::log_printer<1023ul>>::logger(&v58, &v63);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Diskimageuio: bottom diskimage should have role image, but ", 59);
      diskimage_uio::operator<<(v62, v54);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " given", 6);
      di_log::logger<di_log::log_printer<1023ul>>::~logger(&v58);
      goto LABEL_63;
    }

    (*(*lpsrc + 40))(lpsrc);
    goto LABEL_41;
  }

  if (v8)
  {
    *&v56 = "diskimage_uio::details::diskimage_impl::diskimage_impl(iter_t, iter_t, uint32_t) [iter_t = std::move_iterator<diskimage_uio::diskimage_open_params_pair *>]";
    *(&v56 + 1) = 54;
    LODWORD(v57) = 16;
    di_log::logger<di_log::log_printer<965ul>>::logger(&v58, &v56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Diskimageuio: single image given, but role is ", 46);
    diskimage_uio::operator<<(v62, v54);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " rather than image", 18);
    di_log::logger<di_log::log_printer<965ul>>::~logger(&v58);
    v49 = __cxa_allocate_exception(0x10uLL);
    v50 = std::generic_category();
    *v49 = 22;
    v49[1] = v50;
  }

  diskimage_uio::details::diskimage_open_params_impl::transfer_disk_image_ownership(&v58, v9);
  v14 = v58;
  v58 = 0;
  v15 = *v7;
  *v7 = v14;
  if (v15)
  {
    (*(*v15 + 16))(v15);
    v16 = v58;
    v58 = 0;
    if (v16)
    {
      (*(*v16 + 16))(v16);
    }
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&v55);
  return a1;
}

void sub_248E7F828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  diskimage_uio::diskimage_open_params::~diskimage_open_params(va);
  movable_lock<std::shared_mutex>::~movable_lock(v18 + 128);
  std::mutex::~mutex(v17);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((v18 + 16));
  v21 = *v19;
  *v19 = 0;
  if (v21)
  {
    (*(*v21 + 16))(v21);
  }

  _Unwind_Resume(a1);
}

void sub_248E7F980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  __cxa_end_catch();
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7F9A0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x248E7FB8CLL);
}

void sub_248E7F9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1049ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7F9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1054ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7F9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1043ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7F9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1038ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7F9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  __cxa_free_exception(v22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v24 = *a11;
  *a11 = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  _Unwind_Resume(a1);
}

void sub_248E7FA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1023ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7FA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1003ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7FA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1010ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7FA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1064ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_248E7FA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  di_log::logger<di_log::log_printer<1031ul>>::~logger(&a22);
  a22 = &a19;
  std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  diskimage_uio::diskimage_open_params::~diskimage_open_params(&a18);
  movable_lock<std::shared_mutex>::~movable_lock(a12 + 128);
  std::mutex::~mutex(a9);
  std::deque<diskimage_uio::crypto::encryption_props>::~deque[abi:ne200100]((a12 + 16));
  v23 = *a11;
  *a11 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

unint64_t diskimage_uio::details::setup_sync_subscriber(io_rings_subscriber_sync_t &)::$_0::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  diskimage_uio::create_sg_vec_from_buffer(v23, v13, a4, a3, a5);
  if (!a6 || (v14 = diskimage_uio::attach_per_io_crypto_to_vec(a1, v24, a6), !v14))
  {
    v25 |= 2u;
    v27 |= 2u;
    v26 |= 2u;
    v15 = *(a2 + 8);
    sg_vec_ref::begin(v24, v20);
    sg_vec_ref::end(v24, v17);
    v14 = DiskImage::Context::read(v15, v20, v17);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v14 /= v12;
    }
  }

  sg_vec::~sg_vec(v23);
  return v14;
}

void sub_248E7FD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a10);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a38);
  sg_vec::~sg_vec(&a65);
  _Unwind_Resume(a1);
}

void diskimage_uio::create_sg_vec_from_buffer(char **__return_ptr a1@<X8>, diskimage_uio *this@<X0>, char *a3@<X2>, uint64_t a4@<X1>, uint64_t a5@<X3>)
{
  v7 = a3 * this;
  v8 = a5 * this;
  v9 = *(details::get_dummy_shared_ptr() + 1);
  *&v10 = a4;
  *(&v10 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v7;
  v12 = v8;
  v13 = v7;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sg_vec::sg_vec(a1, &v10);
  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
  }
}

void sub_248E7FE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t diskimage_uio::attach_per_io_crypto_to_vec(uint64_t a1, sg_vec_ref *a2, uint64_t a3)
{
  v5 = *(a1 + 240);
  v6 = (*(**(v5 + 8) + 24))(*(v5 + 8));
  diskimage_uio::crypto::registered_cryptos::to_sg_per_io_crypto((v5 + 16), a3, v6, v9);
  if (v9[56])
  {
    sg_vec_ref::attach_per_io_crypto(a2, v9);
    return 0;
  }

  else
  {
    v8 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<sg_per_io_crypto,std::error_code>::error(v9);
    if (v8 < 0)
    {
      return v8;
    }

    else
    {
      return -v8;
    }
  }
}

char **sg_vec::sg_vec(char **a1, __int128 *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 4);
  v5 = *a2;
  *a2 = 0uLL;
  v16 = &v18;
  v19 = v4;
  v17 = xmmword_248F9C7F0;
  v18 = v5;
  sg_vec_ns::details::sg_vec_data::sg_vec_data(a1, &v16);
  boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::~vector(&v16);
  v6 = a1[1];
  v16 = *a1;
  v7 = &v16[24 * v6];
  v8 = a1[19];
  v14 = a1[18];
  v15 = v7;
  v13 = v14 + v8;
  sg_vec_ref::sg_vec_ref((a1 + 26), &v16, &v15, &v14, &v13, *(a2 + 3), *(a2 + 2), *(a2 + 10));
  v11 = *(a2 + 12);
  v10 = a2 + 3;
  v9 = v11;
  if (*(v10 + 56) == 1 && v9)
  {
    sg_vec_ref::attach_per_io_crypto((a1 + 26), v10);
  }

  return a1;
}

void sub_248E7FFB8(_Unwind_Exception *a1)
{
  sg_vec_ref::~sg_vec_ref((v1 + 208));
  sg_vec_ns::details::sg_vec_data::~sg_vec_data(v1);
  _Unwind_Resume(a1);
}

unint64_t diskimage_uio::details::setup_sync_subscriber(io_rings_subscriber_sync_t &)::$_1::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = v12 * a4;
  if (!v13)
  {
    return 0;
  }

  v14 = v12;
  v15 = -1;
  v16 = 8;
  v17 = v12 * a4;
  do
  {
    v18 = *(a3 + v16);
    v19 = v17 >= v18;
    v17 -= v18;
    if (!v19)
    {
      return -22;
    }

    ++v15;
    v16 += 16;
  }

  while (v17);
  result = v15 + 1;
  if (v15 < 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = a3;
    v27 = (v15 + 1);
    diskimage_uio::io_vec_to_sg_vec<std::span<iovec const,18446744073709551615ul>>(&v26, v14 * a5, v13, 0, v29);
    if (!a6 || (v20 = diskimage_uio::attach_per_io_crypto_to_vec(a1, v30, a6), !v20))
    {
      v31 |= 2u;
      v33 |= 2u;
      v32 |= 2u;
      v21 = *(a2 + 8);
      sg_vec_ref::begin(v30, &v26);
      sg_vec_ref::end(v30, v23);
      v20 = DiskImage::Context::read(v21, &v26, v23);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        v20 /= v14;
      }
    }

    sg_vec::~sg_vec(v29);
    return v20;
  }

  return result;
}

void sub_248E801C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a10);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a38);
  sg_vec::~sg_vec(&a65);
  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::io_vec_to_sg_vec<std::span<iovec const,18446744073709551615ul>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char **a5@<X8>)
{
  dummy_shared_ptr = details::get_dummy_shared_ptr();
  v12 = dummy_shared_ptr;
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = a5 + 3;
  *a5 = (a5 + 3);
  v16 = xmmword_248F9C800;
  *(a5 + 1) = xmmword_248F9C800;
  v17 = (v13 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v13)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 < 6)
  {
    if (v13)
    {
      v29 = v17 + 1;
      do
      {
        v30 = *v14;
        v31 = dummy_shared_ptr[1];
        if (v31)
        {
          atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
        }

        v32 = v14[1];
        *v15 = v30;
        v15[1] = v31;
        v15[2] = v32;
        v14 += 2;
        v15 += 3;
        --v29;
      }

      while (v29);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v37 = a4;
    if (v18 >= 0x555555555555556)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v11);
    }

    v19 = a2;
    v20 = a3;
    v21 = operator new(24 * v18);
    v22 = *a5;
    if (*a5)
    {
      boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_destroy_all(a5);
      if (v15 != v22)
      {
        operator delete(v22);
      }
    }

    a5[1] = 0;
    a5[2] = v18;
    *a5 = v21;
    if (v13)
    {
      v23 = &v14[2 * v13];
      v24 = v21;
      a3 = v20;
      a2 = v19;
      a4 = v37;
      v16 = xmmword_248F9C800;
      do
      {
        v25 = *v14;
        v26 = v12[1];
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v27 = v14[1];
        *v24 = v25;
        *(v24 + 1) = v26;
        *(v24 + 2) = v27;
        v14 += 2;
        v24 += 24;
      }

      while (v14 != v23);
      v28 = a5[1];
    }

    else
    {
      v28 = 0;
      v24 = v21;
      a3 = v20;
      a2 = v19;
      a4 = v37;
      v16 = xmmword_248F9C800;
    }

    v18 = &v28[0xAAAAAAAAAAAAAAABLL * ((v24 - v21) >> 3)];
  }

  a5[18] = (a5 + 21);
  a5[1] = v18;
  *(a5 + 19) = v16;
  boost::container::vector<unsigned long,boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,void>::priv_resize<boost::container::value_init_t,boost::move_detail::integral_constant<unsigned int,1u>>(a5 + 18, v18);
  v33 = a5[1];
  v41 = *a5;
  v34 = &v41[3 * v33];
  v35 = a5[19];
  v39 = a5[18];
  v40 = v34;
  v38 = &v39[8 * v35];
  return sg_vec_ref::sg_vec_ref((a5 + 26), &v41, &v40, &v39, &v38, a2, a3, a4);
}

unint64_t diskimage_uio::details::setup_sync_subscriber(io_rings_subscriber_sync_t &)::$_2::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  diskimage_uio::create_sg_vec_from_buffer(v23, v13, a4, a3, a5);
  if (!a6 || (v14 = diskimage_uio::attach_per_io_crypto_to_vec(a1, v24, a6), !v14))
  {
    v25 |= 1u;
    v27 |= 1u;
    v26 |= 1u;
    v15 = *(a2 + 8);
    sg_vec_ref::begin(v24, v20);
    sg_vec_ref::end(v24, v17);
    v14 = DiskImage::Context::write(v15, v20, v17);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v14 /= v12;
    }
  }

  sg_vec::~sg_vec(v23);
  return v14;
}

void sub_248E80624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a10);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a38);
  sg_vec::~sg_vec(&a65);
  _Unwind_Resume(a1);
}

unint64_t diskimage_uio::details::setup_sync_subscriber(io_rings_subscriber_sync_t &)::$_3::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = v12 * a4;
  if (!v13)
  {
    return 0;
  }

  v14 = v12;
  v15 = -1;
  v16 = 8;
  v17 = v12 * a4;
  do
  {
    v18 = *(a3 + v16);
    v19 = v17 >= v18;
    v17 -= v18;
    if (!v19)
    {
      return -22;
    }

    ++v15;
    v16 += 16;
  }

  while (v17);
  result = v15 + 1;
  if (v15 < 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = a3;
    v27 = (v15 + 1);
    diskimage_uio::io_vec_to_sg_vec<std::span<iovec const,18446744073709551615ul>>(&v26, v14 * a5, v13, 1, v29);
    if (!a6 || (v20 = diskimage_uio::attach_per_io_crypto_to_vec(a1, v30, a6), !v20))
    {
      v31 |= 1u;
      v33 |= 1u;
      v32 |= 1u;
      v21 = *(a2 + 8);
      sg_vec_ref::begin(v30, &v26);
      sg_vec_ref::end(v30, v23);
      v20 = DiskImage::Context::write(v21, &v26, v23);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        v20 /= v14;
      }
    }

    sg_vec::~sg_vec(v29);
    return v20;
  }

  return result;
}

void sub_248E80838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a10);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a38);
  sg_vec::~sg_vec(&a65);
  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::details::setup_sync_subscriber(io_rings_subscriber_sync_t &)::$_4::__invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = DiskImage::Context::unmap(*(a2 + 8));
  if (v4 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return a3;
  }
}

uint64_t diskimage_uio::details::setup_sync_subscriber(io_rings_subscriber_sync_t &)::$_5::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 1)
  {
    if (a3 == 3 || a3 == 2)
    {
      return DiskImage::Context::flush(*(a2 + 8));
    }

    return 4294967274;
  }

  if (!a3)
  {
    return a3;
  }

  if (a3 != 1)
  {
    return 4294967274;
  }

  return DiskImage::Context::flush(*(a2 + 8));
}

std::mutex *diskimage_uio::details::setup_di_subscriber<di_hybrid_subscriber_t>(di_hybrid_subscriber_t &,io_rings_desc_t *)::{lambda(io_rings_subscriber_sync_t *)#1}::__invoke(std::mutex *result)
{
  if (result)
  {
    di_hybrid_subscriber_t::~di_hybrid_subscriber_t(result);

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t diskimage_uio::details::setup_di_subscriber<io_rings_di_subscriber_t>(io_rings_di_subscriber_t &,io_rings_desc_t *)::{lambda(io_rings_subscriber_sync_t *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::__function::__value_func<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::~__value_func[abi:ne200100](result + 248);
    pool_ns::pool_t<DiskImage::Context,std::default_delete>::~pool_t(v1 + 120);

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t std::__function::__func<io_rings_di_subscriber_t::io_rings_di_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &,std::function<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)> const&)::$_0,std::allocator<io_rings_di_subscriber_t::io_rings_di_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &,std::function<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)> const&)::$_0>,diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BE11E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<io_rings_di_subscriber_t::io_rings_di_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &,std::function<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)> const&)::$_0,std::allocator<io_rings_di_subscriber_t::io_rings_di_subscriber_t(io_rings_desc_t *,diskimage_uio::details::diskimage_impl &,std::function<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)> const&)::$_0>,diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<std::unique_ptr<DiskImage::Context>,std::error_code> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_248E80B88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<diskimage_uio::diskimage_open_params,std::error_code>::swap(diskimage_uio::diskimage_open_params *this, diskimage_uio::diskimage_open_params *a2)
{
  if (*(this + 16) == 1)
  {
    if (*(a2 + 16))
    {
      v8[0] = *this;
      *this = 0;
      diskimage_uio::diskimage_open_params::operator=(this, a2);
      diskimage_uio::diskimage_open_params::operator=(a2, v8);
LABEL_6:
      diskimage_uio::diskimage_open_params::~diskimage_open_params(v8);
      return result;
    }

    *v8 = *a2;
    *a2 = *this;
    *this = 0;
    diskimage_uio::diskimage_open_params::~diskimage_open_params(this);
    result.n128_u64[0] = v8[0];
    *this = *v8;
    v7 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v7;
  }

  else
  {
    if (*(a2 + 16))
    {
      v4 = *a2;
      *a2 = 0;
      diskimage_uio::diskimage_open_params::~diskimage_open_params(a2);
      *a2 = *this;
      *this = v4;
      v8[0] = 0;
      v5 = *(this + 16);
      *(this + 16) = *(a2 + 16);
      *(a2 + 16) = v5;
      goto LABEL_6;
    }

    result = *this;
    *this = *a2;
    *a2 = result;
  }

  return result;
}

__n128 OUTLINED_FUNCTION_0(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = 0;
  return result;
}

void sub_248E80D18(_Unwind_Exception *a1, int a2)
{
  v5 = v3;
  MEMORY[0x24C1ED730](v5, 0x1080C40B813A31BLL);
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    rawTestPlugin_t::CreationError(v7, v2, v8);
    __cxa_end_catch();
    JUMPOUT(0x248E80D04);
  }

  _Unwind_Resume(a1);
}

void rawTestPlugin_t::Decode(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 8))(a2, "fd");
  if ((v4 & 0x80000000) == 0)
  {
    v15 = 0;
    v5 = (*a1)(a2, "path", &v15);
    v6 = v5;
    if (v5 > 0)
    {
      [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
      objc_claimAutoreleasedReturnValue();
      (*(a1 + 16))(v15);
      v7 = (*a1)(a2, "writable", &v15);
      v8 = v7;
      if (v7 == 1)
      {
        (*(a1 + 16))();
        operator new();
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_285BE14E8;
      v14 = std::generic_category();
      exception[1] = v8;
      exception[2] = v14;
      exception[3] = "Cannot decode writable";
    }

    v11 = __cxa_allocate_exception(0x20uLL);
    *v11 = &unk_285BE14E8;
    v12 = std::generic_category();
    v11[1] = v6;
    v11[2] = v12;
    v11[3] = "Cannot decode path";
  }

  v9 = __cxa_allocate_exception(0x20uLL);
  *v9 = &unk_285BE14E8;
  v10 = std::generic_category();
  v9[1] = v4;
  v9[2] = v10;
  v9[3] = "Cannot decode file descriptor";
}

void sub_248E81050(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    rawTestPlugin_t::CreationError(v3, v2, v4);
    __cxa_end_catch();
    JUMPOUT(0x248E80F08);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rawTestPlugin_t::rawTestPlugin_t(uint64_t a1, uint64_t a2)
{
  v4 = [*(a2 + 8) objectForKeyedSubscript:@"path"];
  v5 = (*(a2 + 4) & 3) != 0;
  *(a1 + 96) = v4;
  *(a1 + 104) = v5;
  *(a1 + 108) = -1;
  *a1 = 96;
  *(a1 + 8) = rawTestPlugin_t::GetBlockSize;
  *(a1 + 16) = rawTestPlugin_t::GetNrBlocks;
  *(a1 + 24) = rawTestPlugin_t::IsWritable;
  *(a1 + 32) = rawTestPlugin_t::GetPreferredAlignment;
  *(a1 + 40) = rawTestPlugin_t::GetPreferredSize;
  *(a1 + 48) = 0;
  *(a1 + 56) = rawTestPlugin_t::GetSubscriber;
  *(a1 + 64) = rawTestPlugin_t::Encode;
  *(a1 + 72) = rawTestPlugin_t::ReleaseImage;
  *(a1 + 80) = 0;
  *(a1 + 88) = rawTestPlugin_t::CopyUUID;
  v6 = open([v4 fileSystemRepresentation], *(a2 + 4));
  *(a1 + 108) = v6;
  if (v6 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = *__error();
    *exception = &unk_285BE14E8;
    v10 = std::generic_category();
    exception[1] = v9;
    exception[2] = v10;
    exception[3] = "Failed opening the file";
  }

  return a1;
}

void sub_248E8124C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  rawTestPlugin_t::~rawTestPlugin_t(v1);
  _Unwind_Resume(a1);
}

uint64_t rawTestPlugin_t::CreationError(rawTestPlugin_t *this, const pluginException_t *a2, __CFError **a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v19 = 0;
    v8 = getDIOSLog(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = (*(*this + 16))(this);
    v11 = *(this + 2);
    *buf = 68158466;
    v21 = 97;
    v22 = 2080;
    v23 = "static di_plugin_image_t *rawTestPlugin_t::CreationError(const pluginException_t &, CFErrorRef *)";
    v24 = 2080;
    v25 = v10;
    v26 = 1024;
    v27 = v11;
    LODWORD(v17) = 34;
    v12 = _os_log_send_and_compose_impl(v9, &v19, 0, 0, &dword_248DE0000, v8, 16, "%.*s: Failed instantiating rawTestPlugin object: %s (code %d)", buf, v17, v18);

    if (v12)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
      free(v12);
    }
  }

  else
  {
    v13 = getDIOSLog(v6, v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = (*(*this + 16))(this);
      v15 = *(this + 2);
      *buf = 68158466;
      v21 = 97;
      v22 = 2080;
      v23 = "static di_plugin_image_t *rawTestPlugin_t::CreationError(const pluginException_t &, CFErrorRef *)";
      v24 = 2080;
      v25 = v14;
      v26 = 1024;
      v27 = v15;
      _os_log_impl(&dword_248DE0000, v13, OS_LOG_TYPE_ERROR, "%.*s: Failed instantiating rawTestPlugin object: %s (code %d)", buf, 0x22u);
    }
  }

  *__error() = v5;
  if (a2)
  {
    *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*(this + 2) userInfo:0];
  }

  return 0;
}

void pluginException_t::pluginException_t(pluginException_t *this, const char *a2, unsigned int a3)
{
  *this = &unk_285BE14E8;
  v6 = std::generic_category();
  *(this + 1) = a3;
  *(this + 2) = v6;
  *(this + 3) = a2;
}

rawTestPlugin_t *rawTestPlugin_t::ReleaseImage(rawTestPlugin_t *result)
{
  if (result)
  {
    rawTestPlugin_t::~rawTestPlugin_t(result);

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t rawTestPlugin_t::get_stat@<X0>(rawTestPlugin_t *this@<X0>, stat *a2@<X8>)
{
  result = fstat(*(this + 27), a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = __error();
    pluginException_t::pluginException_t(exception, "fstat failed", *v4);
  }

  return result;
}

uint64_t rawTestPlugin_t::ReleaseSubscriber(uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::mutex::~mutex((result + 104));

    v2 = *(v1 + 72);
    if (v2)
    {
      *(v1 + 80) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t rawTestPlugin_t::subscriber_t::_addSQE(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 104));
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v5 >= v4)
  {
    v7 = *(a1 + 72);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<iovec>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::allocator<std::unique_ptr<diskimage_uio::stack_image_node const>>::allocate_at_least[abi:ne200100](a1 + 72, v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = *(a1 + 72);
    v14 = *(a1 + 80) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(a1 + 72);
    *(a1 + 72) = v15;
    *(a1 + 80) = v6;
    *(a1 + 88) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(a1 + 80) = v6;
  std::mutex::unlock((a1 + 104));
  return 0;
}

void rawTestPlugin_t::subscriber_t::_execute(rawTestPlugin_t::subscriber_t *this)
{
  std::mutex::lock((this + 104));
  v2 = *(this + 9);
  v3 = *(this + 10);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  std::mutex::unlock((this + 104));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "raw plugin: going to execute ", 29);
  v5 = MEMORY[0x24C1ED3C0](v4, (v3 - v2) >> 3);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " SQEs", 5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v13, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v13);
  std::ostream::put();
  std::ostream::flush();
  v8 = *(this + 12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN15rawTestPlugin_t12subscriber_t8_executeEv_block_invoke;
  block[3] = &__block_descriptor_64_ea8_40c58_ZTSNSt3__16vectorIPK14io_rings_sqe_tNS_9allocatorIS3_EEEE_e5_v8__0l;
  block[4] = this;
  __p = 0;
  v11 = 0;
  v12 = 0;
  std::vector<io_rings_sqe_t const*>::__init_with_size[abi:ne200100]<io_rings_sqe_t const**,io_rings_sqe_t const**>(&__p, v2, v3, (v3 - v2) >> 3);
  dispatch_async(v8, block);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v2)
  {
    operator delete(v2);
  }
}

void sub_248E81A54(_Unwind_Exception *a1)
{
  std::locale::~locale((v2 - 56));
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *___ZN15rawTestPlugin_t12subscriber_t8_executeEv_block_invoke(void *result)
{
  v1 = result[5];
  v2 = result[6];
  if (v1 != v2)
  {
    v3 = result[4];
    while (1)
    {
      v4 = *v1;
      v5 = **v1;
      v6 = -45;
      if (v5 > 4)
      {
        if (v5 != 5)
        {
          if (v5 == 6)
          {
            v6 = 0;
          }

          else
          {
            v6 = -45;
          }

          goto LABEL_14;
        }

        iov = rawTestPlugin_t::flush(*(v3 + 64));
        goto LABEL_13;
      }

      if (v5 == 2)
      {
        break;
      }

      if (v5 == 4)
      {
        iov = rawTestPlugin_t::do_io<io_rings_sqe_op_write_iov_t>(*(v3 + 64), (v4 + 24), MEMORY[0x277D85F58]);
LABEL_13:
        v6 = iov;
      }

LABEL_14:
      result = io_rings_return_status(*(v3 + 56), v4, v6, 0);
      if (++v1 == v2)
      {
        return result;
      }
    }

    iov = rawTestPlugin_t::do_io<io_rings_sqe_op_read_iov_t>(*(v3 + 64), (v4 + 24), MEMORY[0x277D85F50]);
    goto LABEL_13;
  }

  return result;
}

uint64_t rawTestPlugin_t::do_io<io_rings_sqe_op_read_iov_t>(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = 0;
    v7 = v5 << 9;
    v8 = (v4 + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 2;
      v10 = v7 >= v9;
      v7 -= v9;
      if (!v10)
      {
        break;
      }

      ++v6;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v6 = -22;
  }

  else
  {
    v6 = 0;
  }

LABEL_8:
  v11 = a2[1] << 9;
  v12 = a3(*(a1 + 108));
  if ((v12 & 0x80000000) == 0)
  {
    return v12 >> 9;
  }

  v14 = *__error();
  v15 = DIForwardLogs();
  if (v15)
  {
    v27 = 0;
    v17 = getDIOSLog(v15, v16);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    v19 = *__error();
    *buf = 0x8404100502;
    if (v18)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v29 = 2080;
    v30 = "int rawTestPlugin_t::do_io(const IOV_OP &, ssize_t (*)(int, const struct iovec *, int, off_t)) [IOV_OP = io_rings_sqe_op_read_iov_t]";
    v31 = 2048;
    v32 = v11;
    v33 = 1024;
    v34 = v6;
    v35 = 1024;
    v36 = v19;
    LODWORD(v25) = 40;
    v21 = _os_log_send_and_compose_impl(v20, &v27, 0, 0, &dword_248DE0000, v17, 16, "%.*s: I/O error at offset %lld iov_count %d errno %d", buf, v25, v26);

    if (v21)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v21);
      free(v21);
    }
  }

  else
  {
    v22 = getDIOSLog(v15, v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *__error();
      *buf = 0x8404100502;
      v29 = 2080;
      v30 = "int rawTestPlugin_t::do_io(const IOV_OP &, ssize_t (*)(int, const struct iovec *, int, off_t)) [IOV_OP = io_rings_sqe_op_read_iov_t]";
      v31 = 2048;
      v32 = v11;
      v33 = 1024;
      v34 = v6;
      v35 = 1024;
      v36 = v23;
      _os_log_impl(&dword_248DE0000, v22, OS_LOG_TYPE_ERROR, "%.*s: I/O error at offset %lld iov_count %d errno %d", buf, 0x28u);
    }
  }

  *__error() = v14;
  v24 = *__error();
  if (v24 < 0)
  {
    return v24;
  }

  else
  {
    return -v24;
  }
}

uint64_t rawTestPlugin_t::do_io<io_rings_sqe_op_write_iov_t>(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = 0;
    v7 = v5 << 9;
    v8 = (v4 + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 2;
      v10 = v7 >= v9;
      v7 -= v9;
      if (!v10)
      {
        break;
      }

      ++v6;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v6 = -22;
  }

  else
  {
    v6 = 0;
  }

LABEL_8:
  v11 = a2[1] << 9;
  v12 = a3(*(a1 + 108));
  if ((v12 & 0x80000000) == 0)
  {
    return v12 >> 9;
  }

  v14 = *__error();
  v15 = DIForwardLogs();
  if (v15)
  {
    v27 = 0;
    v17 = getDIOSLog(v15, v16);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    v19 = *__error();
    *buf = 0x8504100502;
    if (v18)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v29 = 2080;
    v30 = "int rawTestPlugin_t::do_io(const IOV_OP &, ssize_t (*)(int, const struct iovec *, int, off_t)) [IOV_OP = io_rings_sqe_op_write_iov_t]";
    v31 = 2048;
    v32 = v11;
    v33 = 1024;
    v34 = v6;
    v35 = 1024;
    v36 = v19;
    LODWORD(v25) = 40;
    v21 = _os_log_send_and_compose_impl(v20, &v27, 0, 0, &dword_248DE0000, v17, 16, "%.*s: I/O error at offset %lld iov_count %d errno %d", buf, v25, v26);

    if (v21)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v21);
      free(v21);
    }
  }

  else
  {
    v22 = getDIOSLog(v15, v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *__error();
      *buf = 0x8504100502;
      v29 = 2080;
      v30 = "int rawTestPlugin_t::do_io(const IOV_OP &, ssize_t (*)(int, const struct iovec *, int, off_t)) [IOV_OP = io_rings_sqe_op_write_iov_t]";
      v31 = 2048;
      v32 = v11;
      v33 = 1024;
      v34 = v6;
      v35 = 1024;
      v36 = v23;
      _os_log_impl(&dword_248DE0000, v22, OS_LOG_TYPE_ERROR, "%.*s: I/O error at offset %lld iov_count %d errno %d", buf, 0x28u);
    }
  }

  *__error() = v14;
  v24 = *__error();
  if (v24 < 0)
  {
    return v24;
  }

  else
  {
    return -v24;
  }
}