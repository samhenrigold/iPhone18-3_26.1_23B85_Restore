void non-virtual thunk todi_log::logger<di_log::log_printer<392ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<392ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<392ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<392ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<392ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<392ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<392ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<392ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<392ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<392ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<392ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFB328;
  di_log::logger_buf<di_log::log_printer<392ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<392ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<392ul>::log((a1 + 72), __p);
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

void sub_248F475DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<392ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<392ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<392ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 392;
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
      v26 = 392;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<400ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<400ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<400ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<400ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<400ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<400ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<400ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<400ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<400ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<400ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<400ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFB548;
  di_log::logger_buf<di_log::log_printer<400ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<400ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<400ul>::log((a1 + 72), __p);
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

void sub_248F47D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<400ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<400ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<400ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 400;
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
      v26 = 400;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<409ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<409ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<409ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<409ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<409ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<409ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<409ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<409ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<409ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<409ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<409ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFB768;
  di_log::logger_buf<di_log::log_printer<409ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<409ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<409ul>::log((a1 + 72), __p);
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

void sub_248F4850C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<409ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<409ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<409ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 409;
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
      v26 = 409;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<416ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<416ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<416ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<416ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<416ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<416ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<416ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<416ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<416ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<416ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<416ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFB988;
  di_log::logger_buf<di_log::log_printer<416ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<416ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<416ul>::log((a1 + 72), __p);
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

void sub_248F48CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<416ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<416ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<416ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 416;
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
      v26 = 416;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sparse_bundles::Band::ContextBand::~ContextBand(sparse_bundles::Band::ContextBand *this)
{
  *this = &unk_285BFBA08;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_285BFBA08;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<47ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF99A8;
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

void sub_248F49054(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<56ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF9BC8;
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

void sub_248F4911C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<63ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF9DE8;
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

void sub_248F491E4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<74ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFA008;
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

void sub_248F492AC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<FileLocal>::__shared_ptr_emplace[abi:ne200100]<int,std::string,int &,std::allocator<FileLocal>,0>(void *a1, unsigned int *a2, const char *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6C38;
  v5 = *a4;
  v6 = FileDescriptorWrapper::open_from(*a2, a3, *a4 | 0x2000u);
  FileLocal::FileLocal((a1 + 3), v6, (v5 & 3) != 0, 0);
}

void *std::__shared_ptr_emplace<crypto_format_backend>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<FileLocal> &,std::shared_ptr<crypto::format> const&,unsigned int,std::allocator<crypto_format_backend>,0>(void *a1, uint64_t *a2, void *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6E08;
  std::construct_at[abi:ne200100]<crypto_format_backend,std::shared_ptr<FileLocal> &,std::shared_ptr<crypto::format> const&,unsigned int,crypto_format_backend*>((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<crypto_format_backend,std::shared_ptr<FileLocal> &,std::shared_ptr<crypto::format> const&,unsigned int,crypto_format_backend*>(uint64_t a1, uint64_t *a2, void *a3, unsigned int *a4)
{
  v6 = a2[1];
  v9 = *a2;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  crypto_format_backend::header_ignore_fields_t::header_ignore_fields_t(&v8, *a4);
  crypto_format_backend::crypto_format_backend(a1, &v9, a3, &v8);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return a1;
}

void sub_248F49554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *crypto_format_backend::header_ignore_fields_t::header_ignore_fields_t(_DWORD *this, int a2)
{
  *this = a2;
  if ((a2 & 0xFFFFFFFC) != 0)
  {
    v2 = a2 & 0xFFFFFFFC;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "header_ignore_fields_t";
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &unk_285BD5790;
    *(exception + 8) = v2;
  }

  return this;
}

uint64_t di_log::logger_buf<di_log::log_printer<124ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFA228;
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

void sub_248F496A4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<126ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFA448;
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

void sub_248F4976C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<162ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFA668;
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

void sub_248F49834(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<164ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFA888;
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

void sub_248F498FC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_248F4997C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    DiskImage::extents_t::extents_t(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<sparse_bundles::Band::ContextBand *,std::shared_ptr<sparse_bundles::Band::ContextBand>::__shared_ptr_default_delete<sparse_bundles::Band::ContextBand,sparse_bundles::Band::ContextBand>,std::allocator<sparse_bundles::Band::ContextBand>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<sparse_bundles::Band::ContextBand *,std::shared_ptr<sparse_bundles::Band::ContextBand>::__shared_ptr_default_delete<sparse_bundles::Band::ContextBand,sparse_bundles::Band::ContextBand>,std::allocator<sparse_bundles::Band::ContextBand>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<sparse_bundles::Band::ContextBand *,std::shared_ptr<sparse_bundles::Band::ContextBand>::__shared_ptr_default_delete<sparse_bundles::Band::ContextBand,sparse_bundles::Band::ContextBand>,std::allocator<sparse_bundles::Band::ContextBand>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<sparse_bundles::Band::get_mapped_blocks(void)::$_0 &&>>(uint64_t ***a1)
{
  v1 = ***a1;
  if (DIDebugLogsEnabled())
  {
    *&v3 = "sparse_bundles::Band::get_mapped_blocks()::(anonymous class)::operator()() const";
    *(&v3 + 1) = 72;
    LODWORD(v4) = 2;
    di_log::logger<di_log::log_printer<229ul>>::logger(v7, &v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Opening mapped blocks for ", 26);
    sparse_bundles::operator<<(&v8);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(v7);
    MEMORY[0x24C1ED6A0](&v9);
  }

  v2 = *(v1 + 40);
  *&v3 = MEMORY[0x277D85DD0];
  *(&v3 + 1) = 0x40000000;
  v4 = ___ZZN14sparse_bundles4Band17get_mapped_blocksEvENK3__0clEv_block_invoke;
  v5 = &__block_descriptor_tmp_814;
  v6 = v1;
  sparse_bundles::bundle_commons_t::run_in_high_tier(v2, &v3);
}

void *di_log::logger<di_log::log_printer<229ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<229ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFBAE0;
  a1[45] = &unk_285BFBBE0;
  a1[46] = &unk_285BFBC08;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFBAE0;
  a1[45] = &unk_285BFBB68;
  a1[46] = &unk_285BFBB90;
  return a1;
}

void sub_248F49CDC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<229ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sub_248F49E00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<236ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<236ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFBD00;
  a1[45] = &unk_285BFBE00;
  a1[46] = &unk_285BFBE28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFBD00;
  a1[45] = &unk_285BFBD88;
  a1[46] = &unk_285BFBDB0;
  return a1;
}

void sub_248F49F3C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<236ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<229ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFBC78;
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

void sub_248F4A054(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFBC78;
  di_log::logger_buf<di_log::log_printer<229ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<229ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<229ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<229ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<229ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<229ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<229ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<229ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<229ul>::log((a1 + 72), __p);
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

void sub_248F4A5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<229ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 229;
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
      v26 = 229;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<236ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFBE98;
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

void sub_248F4A8B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFBE98;
  di_log::logger_buf<di_log::log_printer<236ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<236ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<236ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<236ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<236ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<236ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<236ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<236ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<236ul>::log((a1 + 72), __p);
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

void sub_248F4AE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<236ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 236;
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
      v26 = 236;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<341ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFAAA8;
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

void sub_248F4B114(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<350ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFACC8;
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

void sub_248F4B1DC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<353ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFAEE8;
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

void sub_248F4B2A4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<357ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFB108;
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

void sub_248F4B36C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<392ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFB328;
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

void sub_248F4B434(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<400ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFB548;
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

void sub_248F4B4FC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<409ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFB768;
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

void sub_248F4B5C4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<416ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFB988;
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

void sub_248F4B68C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sparse_bundles::eviction_t::decrease(sparse_bundles::eviction_t *this)
{
  std::mutex::lock((this + 8));
  if (atomic_fetch_add(this, 0xFFFFFFFFFFFFFFFFLL) == 1 && *(this + 72) == 1)
  {
    *(this + 72) = 0;
    std::condition_variable::notify_one((this + 80));
  }

  std::mutex::unlock((this + 8));
}

uint64_t sparse_bundles::eviction_t::start_flush(uint64_t this)
{
  atomic_fetch_add(this, 1uLL);
  *(this + 72) = 1;
  return this;
}

void sparse_bundles::eviction_t::complete_flush(sparse_bundles::eviction_t *this)
{
  v2.__m_ = (this + 8);
  v2.__owns_ = 1;
  std::mutex::lock((this + 8));
  if (atomic_fetch_add(this, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    *(this + 72) = 0;
  }

  else if (*(this + 72) == 1)
  {
    do
    {
      std::condition_variable::wait((this + 80), &v2);
    }

    while ((*(this + 72) & 1) != 0);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

uint64_t sparse_bundles::open_bands_t::insert(char **this, unint64_t a2)
{
  v19 = a2;
  __lk.__m_ = (this + 3);
  __lk.__owns_ = 1;
  std::mutex::lock((this + 3));
  LOBYTE(v15[0]) = 0;
  std::__tree<std::__value_type<unsigned long long,BOOL>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,BOOL>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,BOOL>(this, &v19, &v19, v15);
  v4 = v3;
  if ((v3 & 1) == 0)
  {
    if (DIDebugLogsEnabled())
    {
      *&v13 = "sparse_bundles::open_bands_t::insert(uint64_t)";
      *(&v13 + 1) = 36;
      v14 = 2;
      di_log::logger<di_log::log_printer<72ul>>::logger(v15, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Band ", 5);
      *&v17[*(v16 - 24)] = *&v17[*(v16 - 24)] & 0xFFFFFFB5 | 8;
      MEMORY[0x24C1ED3E0](&v16, v19);
      *&v17[*(v16 - 24)] = *&v17[*(v16 - 24)] & 0xFFFFFFB5 | 2;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " was opened in the background, waiting for it to become available", 65);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<72ul>>::~logger_buf(v15);
      MEMORY[0x24C1ED6A0](v17);
    }

    v7 = this[1];
    v6 = this + 1;
    v5 = v7;
    if (v7)
    {
      do
      {
        v8 = v6;
        do
        {
          v9 = *(v5 + 4);
          v10 = v9 >= v19;
          v11 = v9 < v19;
          if (v10)
          {
            v8 = v5;
          }

          v5 = *&v5[8 * v11];
        }

        while (v5);
        if (v8 == v6)
        {
          break;
        }

        if (v19 < v8[4])
        {
          break;
        }

        if (v8[5])
        {
          break;
        }

        std::condition_variable::wait((v6 + 10), &__lk);
        v5 = *v6;
      }

      while (*v6);
    }

    if (DIDebugLogsEnabled())
    {
      *&v13 = "sparse_bundles::open_bands_t::insert(uint64_t)";
      *(&v13 + 1) = 36;
      v14 = 2;
      di_log::logger<di_log::log_printer<79ul>>::logger(v15, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Band ", 5);
      *&v17[*(v16 - 24)] = *&v17[*(v16 - 24)] & 0xFFFFFFB5 | 8;
      MEMORY[0x24C1ED3E0](&v16, v19);
      *&v17[*(v16 - 24)] = *&v17[*(v16 - 24)] & 0xFFFFFFB5 | 2;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " is now available", 17);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(v15);
      MEMORY[0x24C1ED6A0](v17);
    }
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  return v4 & 1;
}

void sub_248F4BA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (*(v13 - 64) == 1)
  {
    std::mutex::unlock(*(v13 - 72));
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<79ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<79ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFBF20;
  a1[45] = &unk_285BFC020;
  a1[46] = &unk_285BFC048;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFBF20;
  a1[45] = &unk_285BFBFA8;
  a1[46] = &unk_285BFBFD0;
  return a1;
}

void sub_248F4BB9C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<79ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sparse_bundles::open_bands_t::mark_as_placed(sparse_bundles::open_bands_t *this, unint64_t a2, int a3)
{
  std::mutex::lock((this + 24));
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = this + 8;
  do
  {
    v8 = *(v6 + 4);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (v7 == this + 8 || *(v7 + 4) > a2)
  {
LABEL_9:
    v7 = this + 8;
  }

  v7[40] = a3;
  if (a3)
  {
    std::condition_variable::notify_all((this + 88));
  }

  std::mutex::unlock((this + 24));
}

void sparse_bundles::open_bands_t::remove(sparse_bundles::open_bands_t *this, unint64_t a2)
{
  v8 = a2;
  std::mutex::lock((this + 24));
  std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *>>>::__erase_unique<unsigned long long>(this, &v8);
  if (DIDebugLogsEnabled())
  {
    *&v3 = "sparse_bundles::open_bands_t::remove(uint64_t)";
    *(&v3 + 1) = 36;
    v4 = 2;
    di_log::logger<di_log::log_printer<98ul>>::logger(v5, &v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Band ", 5);
    *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x24C1ED3E0](&v6, v8);
    *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 2;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " is closed, notifying waiters", 29);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(v5);
    MEMORY[0x24C1ED6A0](&v7);
  }

  std::condition_variable::notify_all((this + 88));
  std::mutex::unlock((this + 24));
}

void *di_log::logger<di_log::log_printer<98ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<98ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFC140;
  a1[45] = &unk_285BFC240;
  a1[46] = &unk_285BFC268;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFC140;
  a1[45] = &unk_285BFC1C8;
  a1[46] = &unk_285BFC1F0;
  return a1;
}

void sub_248F4BF04(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<98ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sparse_bundles::bundle_commons_t::bundle_commons_t(sparse_bundles::bundle_commons_t *this, DiskImageSparseBundle *a2)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = 0;
  std::allocate_shared[abi:ne200100]<BackendNull,std::allocator<BackendNull>,int,0>();
}

void sub_248F4C088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  workqueue::transaction::~transaction((v14 + 49));
  workqueue::workqueue::~workqueue(v15 + 18);
  v19 = v14[40];
  v14[40] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  sparse_bundles::open_bands_t::~open_bands_t(v15);
  std::condition_variable::~condition_variable(v16);
  std::mutex::~mutex((v15 - 15));
  v20 = v14[4];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = v14[2];
  v14[2] = 0;
  if (v21)
  {
    (*(*v21 + 16))(v21);
  }

  v22 = *v17;
  *v17 = 0;
  if (v22)
  {
    (*(*v22 + 16))(v22);
  }

  _Unwind_Resume(a1);
}

void sparse_bundles::bundle_commons_t::run_in_high_tier(uint64_t a1, uint64_t a2)
{
  v18[18] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x4802000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  __p = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  workqueue::workqueue::create_transaction(v18, (a1 + 328), 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___ZN14sparse_bundles16bundle_commons_t16run_in_high_tierEU13block_pointerFvvE_block_invoke;
  v8[3] = &unk_278F814B8;
  v8[4] = a2;
  v8[5] = &v9;
  workqueue::transaction::add(v18, v8);
  workqueue::transaction::~transaction(v18);
  if (*(v10 + 16))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = v10;
    v5 = *(v10 + 16);
    *exception = &unk_285BF4E60;
    v6 = std::generic_category();
    *(exception + 1) = v5;
    *(exception + 2) = v6;
    v7 = v4[7];
    *(exception + 24) = *(v4 + 5);
    *(exception + 5) = v7;
    v4[6] = 0;
    v4[7] = 0;
    v4[5] = 0;
    exception[48] = 1;
  }

  _Block_object_dispose(&v9, 8);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }
}

void sub_248F4C340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a15, 8);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

void __Block_byref_object_dispose__8(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t *sparse_bundles::band_to_filename@<X0>(uint64_t *__return_ptr a1@<X8>, sparse_bundles *this@<X0>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  *(&v5 + *(v5 - 24) + 8) = *(&v5 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x24C1ED3E0](&v5, this);
  std::ostringstream::str[abi:ne200100](&v5, a1);
  v5 = *MEMORY[0x277D82828];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x277D82828] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x24C1ED6A0](&v9);
}

void sub_248F4C650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x24C1ED6A0](v3 + 112);
  _Unwind_Resume(a1);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<79ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<79ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<79ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<79ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<79ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFC0B8;
  di_log::logger_buf<di_log::log_printer<79ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<79ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<79ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_248F4CBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<79ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 79;
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
      v26 = 79;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<98ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<98ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<98ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<98ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<98ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFC2D8;
  di_log::logger_buf<di_log::log_printer<98ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<98ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<98ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_248F4D35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<98ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<98ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 98;
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
      v26 = 98;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sparse_bundles::open_bands_t::~open_bands_t(sparse_bundles::open_bands_t *this)
{
  std::condition_variable::~condition_variable((this + 88));
  std::mutex::~mutex((this + 24));
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(this, *(this + 1));
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void *std::__tree<std::__value_type<unsigned long long,BOOL>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,BOOL>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,BOOL>(uint64_t a1, unint64_t *a2, void *a3, _BYTE *a4)
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
      v7 = v4[4];
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

uint64_t di_log::logger_buf<di_log::log_printer<79ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFC0B8;
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

void sub_248F4D870(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<98ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFC2D8;
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

void sub_248F4D938(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<BackendNull>::__shared_ptr_emplace[abi:ne200100]<int,std::allocator<BackendNull>,0>(uint64_t a1, int *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BD6CD8;
  v3 = *a2;
  v4 = di_utils::random_uuid(a1);
  v6 = v5;
  Backend::Backend((a1 + 24));
  *(a1 + 24) = &unk_285BD38B0;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v6;
  return a1;
}

void AEA_backend::AEA_backend(Backend *a1, uint64_t *a2, uint64_t *a3)
{
  BackendInternalBackend::BackendInternalBackend(a1, a2);
  *v5 = &unk_285BFC358;
  v6 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v6 + 192))(v6);
  v8 = a3[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  std::allocate_shared[abi:ne200100]<aea_format::AEA_format,std::allocator<aea_format::AEA_format>,aea_format::AEA_format,0>();
}

void sub_248F4DBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  BackendInternalBackend::~BackendInternalBackend(v13);
  _Unwind_Resume(a1);
}

void AEA_backend::create_streams(std::mutex **this, int a2)
{
  std::mutex::lock(this[9]);
  lseek(a2, 0, 0);
  *&v7 = AAFileStreamOpenWithFD(a2, 0);
  AEAwrapper::ByteStream::ByteStream(&v10, &v7);
  AEAwrapper::Context::Context(&v9, &v10);
  v4 = this[5];
  v5 = *&v4->__m_.__opaque[8];
  v6 = *&v4->__m_.__opaque[16];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  AEAwrapper::Context::setSymmetricKey(&v9, v5, 0x20uLL);
  AEAwrapper::ByteStream::make_DecryptionRandomAccessInputStream(&v10, &v9, 0xFFFFFFFFFFFFFFFFLL, 0x4000000000000000uLL, 1, &v8);
  std::allocate_shared[abi:ne200100]<AEAwrapper::DecryptionStream,std::allocator<AEAwrapper::DecryptionStream>,AEAwrapper::ByteStream,AEAwrapper::Context,AEAwrapper::ByteStream,0>();
}

void sub_248F4DD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, AAByteStream);
  va_copy(va2, va1);
  v10 = va_arg(va2, AEAContext);
  AEAwrapper::ByteStream::~ByteStream(va);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  AEAwrapper::Context::~Context(va1);
  AEAwrapper::ByteStream::~ByteStream(va2);
  std::mutex::unlock(v5);
  _Unwind_Resume(a1);
}

void AEA_backend::AEA_backend(uint64_t a1, void *a2, void *a3)
{
  BackendInternalBackend::BackendInternalBackend(a1, a3);
  *v5 = &unk_285BFC358;
  v6 = a2[6];
  v5[5] = a2[5];
  v5[6] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v7 = a2[10];
  *(a1 + 72) = a2[9];
  *(a1 + 80) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  AEA_backend::create_streams(a1, *(*(a1 + 40) + 8));
}

void sub_248F4DE3C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  AEA_backend::AEA_backend(v1, v2);
  BackendInternalBackend::~BackendInternalBackend(v1);
  _Unwind_Resume(a1);
}

ssize_t AEA_backend::read(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    return AEAwrapper::DecryptionStream::pread(*(a1 + 56), *a2, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    return 4294967194;
  }
}

void AEA_backend::~AEA_backend(AEA_backend *this)
{
  *this = &unk_285BFC358;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *this = &unk_285BD4DB0;
  v5 = *(this + 4);
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
  *this = &unk_285BFC358;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *this = &unk_285BD4DB0;
  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<aea_format::AEA_format>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BFC448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<aea_format::AEA_format>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::shared_ptr<AEA_backend::shared_state_t>::shared_ptr[abi:ne200100]<AEA_backend::shared_state_t,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_248F4E200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<AEA_backend::shared_state_t>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::mutex **std::unique_ptr<AEA_backend::shared_state_t>::~unique_ptr[abi:ne200100](std::mutex **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::mutex::~mutex(v2);
    MEMORY[0x24C1ED730]();
  }

  return a1;
}

void std::__shared_ptr_pointer<AEA_backend::shared_state_t *,std::shared_ptr<AEA_backend::shared_state_t>::__shared_ptr_default_delete<AEA_backend::shared_state_t,AEA_backend::shared_state_t>,std::allocator<AEA_backend::shared_state_t>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

std::mutex *std::__shared_ptr_pointer<AEA_backend::shared_state_t *,std::shared_ptr<AEA_backend::shared_state_t>::__shared_ptr_default_delete<AEA_backend::shared_state_t,AEA_backend::shared_state_t>,std::allocator<AEA_backend::shared_state_t>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    std::mutex::~mutex(result);

    JUMPOUT(0x24C1ED730);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<AEA_backend::shared_state_t *,std::shared_ptr<AEA_backend::shared_state_t>::__shared_ptr_default_delete<AEA_backend::shared_state_t,AEA_backend::shared_state_t>,std::allocator<AEA_backend::shared_state_t>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<AEAwrapper::DecryptionStream>::__shared_ptr_emplace[abi:ne200100]<AEAwrapper::ByteStream,AEAwrapper::Context,AEAwrapper::ByteStream,std::allocator<AEAwrapper::DecryptionStream>,0>(void *a1, void *a2, uint64_t *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BFC510;
  AEAwrapper::DecryptionStream::DecryptionStream(a1 + 3, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<AEAwrapper::DecryptionStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BFC510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<AEAwrapper::DecryptionStream>::__on_zero_shared(AAByteStream *a1)
{
  AEAwrapper::ByteStream::~ByteStream(a1 + 5);
  AEAwrapper::Context::~Context(a1 + 4);

  AEAwrapper::ByteStream::~ByteStream(a1 + 3);
}

void std::__shared_ptr_emplace<AEA_backend>::__shared_ptr_emplace[abi:ne200100]<AEA_backend&,std::shared_ptr<Backend> const&,std::allocator<AEA_backend>,0>(void *a1, void *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD6EA8;
  AEA_backend::AEA_backend((a1 + 3), a2, a3);
}

void *operator<<(void *a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = "full_fsync";
    v4 = 10;
  }

  else if (a2 == 1)
  {
    v3 = "fsync";
    v4 = 5;
  }

  else if (a2)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "bad flush type (", 16);
    a1 = MEMORY[0x24C1ED390](v5, a2);
    v3 = ")";
    v4 = 1;
  }

  else
  {
    v3 = "barrier";
    v4 = 7;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
}

{
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 2);
  *(v4 + 2) = v5 & 0xFFFFFFB5 | 8;
  v26 = 48;
  v6 = std::operator<<[abi:ne200100]<std::char_traits<char>>(a1, &v26);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 24) = 2;
  *(v6 + *(v7 - 24) + 8) |= 0x200u;
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "sg: buffer = ", 13);
  v9 = MEMORY[0x24C1ED370](v8, *a2);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " [", 2);
  v11 = MEMORY[0x24C1ED370](v10, a2);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "] ", 2);
  v13 = *v12;
  *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v12 + *(v13 - 24) + 24) = 0;
  *(v12 + *(v13 - 24) + 8) &= ~0x200u;
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " size = ", 8);
  v15 = MEMORY[0x24C1ED3C0](v14, *(a2 + 16));
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " buffer_size = ", 15);
  v17 = MEMORY[0x24C1ED3C0](v16, *(a2 + 32));
  *(v17 + *(*v17 - 24) + 8) = *(v17 + *(*v17 - 24) + 8) & 0xFFFFFFB5 | 8;
  v25 = 48;
  v18 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, &v25);
  v19 = *v18;
  *(v18 + *(*v18 - 24) + 24) = 2;
  *(v18 + *(v19 - 24) + 8) |= 0x200u;
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " offset = ", 10);
  v21 = MEMORY[0x24C1ED3E0](v20, *(a2 + 24));
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " crypto = ", 10);
  if (*(a2 + 48))
  {
    v23 = *(a2 + 104);
  }

  else
  {
    v23 = 0;
  }

  MEMORY[0x24C1ED380](v22, v23);
  *(a1 + *(*a1 - 24) + 8) = v5;
  return a1;
}

void Backend::Backend(Backend *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285BFC560;
}

uint64_t Backend::write(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    return (*(*a1 + 88))(a1);
  }

  else
  {
    return crypto::PerIOCrypto::encrypt_and_write_sg(a2, a1);
  }
}

uint64_t Backend::read(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    v5 = *(*a1 + 96);

    return v5();
  }

  else
  {
    v11 = 0;
    crypto::PerIOCrypto::sw_decryptable_sg_entry::sw_decryptable_sg_entry(v10, a2, &v11);
    sg_entry::sg_entry(v7, a2);
    if (v9 == 1)
    {
      v9 = 0;
    }

    v11 = (*(*a1 + 96))(a1, v7);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    crypto::PerIOCrypto::sw_decryptable_sg_entry::~sw_decryptable_sg_entry(v10);
    return v11;
  }
}

void sub_248F4EA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  crypto::PerIOCrypto::sw_decryptable_sg_entry::~sw_decryptable_sg_entry(va);
  _Unwind_Resume(a1);
}

void get_sink_backend(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(v5 + 4);
    v9[0] = *(v5 + 3);
    v9[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    get_sink_backend(v9, a2);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v6)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v8 = *(a1 + 8);
    *a2 = v4;
    a2[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_248F4EBC0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t replace_internal_backend(uint64_t a1, const void **a2, uint64_t *a3)
{
  v4 = *a1;
  if (v4 == *a2)
  {
    return 4294967274;
  }

  if (!v4)
  {
    return 4294967294;
  }

  if (!v7)
  {
    return 4294967294;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(v7 + 3);
  v10 = *(v7 + 4);
  v16[0] = v9;
  v16[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9 == *a2)
  {
    v14 = *a3;
    v13 = a3[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(v7 + 4);
    *(v7 + 3) = v14;
    *(v7 + 4) = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v11 = 0;
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = replace_internal_backend(v16, a2, a3);
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
LABEL_11:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v11;
}

void sub_248F4ED20(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void get_next_backend_in_graph(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  {
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6[3];
    v8 = v6[4];
    *a2 = v9;
    a2[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    if (v7)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    v10 = *(a1 + 8);
    *a2 = v4;
    a2[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void BackendSG::BackendSG(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BD4DB0;
  v5 = a2[1];
  a1[3] = *a2;
  a1[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_285BFC630;
  a1[5] = a3;
  std::allocate_shared[abi:ne200100]<BufferAllocator,std::allocator<BufferAllocator>,unsigned long &,int,unsigned long &,0>();
}

void sub_248F4F09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<146ul>>::~logger(va);
  v9 = *(v7 - 40);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<146ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<146ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFC850;
  a1[45] = &unk_285BFC950;
  a1[46] = &unk_285BFC978;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFC850;
  a1[45] = &unk_285BFC8D8;
  a1[46] = &unk_285BFC900;
  return a1;
}

void sub_248F4F1E0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<146ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sub_248F4F3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v15 = *(v13 - 40);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<163ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<163ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFCA70;
  a1[45] = &unk_285BFCB70;
  a1[46] = &unk_285BFCB98;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFCA70;
  a1[45] = &unk_285BFCAF8;
  a1[46] = &unk_285BFCB20;
  return a1;
}

void sub_248F4F53C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<163ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t BackendSG::truncate(BackendSG *this, uint64_t a2)
{
  v4 = (*(**(this + 3) + 56))(*(this + 3));
  if (v4)
  {
    *&v6 = "int BackendSG::truncate(uint64_t)";
    *(&v6 + 1) = 23;
    v7 = 16;
    di_log::logger<di_log::log_printer<185ul>>::logger(v8, &v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "BackendSG: truncating the inner backend failed, error = ", 56);
    MEMORY[0x24C1ED390](&v9, v4);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(v8);
    MEMORY[0x24C1ED6A0](&v10);
  }

  else
  {
    sg_entry::sg_entry<sg_entry&,void>(v8, this + 64, a2, 0, *(this + 11), *(this + 12));
    sg_entry::operator=(this + 64, v8);
    if (*(&v8[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8[0] + 1));
    }
  }

  return v4;
}

void sub_248F4F6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<185ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<185ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFCC90;
  a1[45] = &unk_285BFCD90;
  a1[46] = &unk_285BFCDB8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFCC90;
  a1[45] = &unk_285BFCD18;
  a1[46] = &unk_285BFCD40;
  return a1;
}

void sub_248F4F7DC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<185ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t BackendSG::BackendSG(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BD4DB0;
  v5 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_285BFC630;
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v7 = *(a2 + 56);
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sg_entry::sg_entry(a1 + 64, a2 + 64);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

void sub_248F4F8F4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  BackendInternalBackend::~BackendInternalBackend(v1);
  _Unwind_Resume(a1);
}

uint64_t BufferedWriteBackend::BufferedWriteBackend(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_285BD4DB0;
  v4 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 850045863;
  *a1 = &unk_285BFC708;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  std::vector<char>::vector[abi:ne200100]((a1 + 104), a3);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_248F4FA0C(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  BackendInternalBackend::~BackendInternalBackend(v1);
  _Unwind_Resume(a1);
}

uint64_t BufferedWriteBackend::reset_last_offset(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a1 + 104);
  v5 = v3 % (*(a1 + 112) - v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  if (v3 != v5 && *(a2 + 104) == 1 && *(a2 + 48))
  {
    *&v9 = "BufferedWriteBackend::reset_last_offset(const sg_entry &)";
    *(&v9 + 1) = 39;
    v10 = 16;
    di_log::logger<di_log::log_printer<218ul>>::logger(&v11, &v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "BufferedWriteBackend doesn't support per io crypto", 50);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(&v11);
    MEMORY[0x24C1ED6A0](&v20);
    return 4294967194;
  }

  v6 = *(details::get_dummy_shared_ptr() + 1);
  v11 = v4;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v5;
  v14 = v3 - v5;
  v15 = v5;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v7 = (*(*a1 + 128))(a1, &v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v5 == v7)
  {
LABEL_8:
    v7 = 0;
    *(a1 + 128) = v3;
    *(a1 + 136) = 1;
  }

  return v7;
}

void sub_248F4FB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<218ul>>::~logger(va);
  _Unwind_Resume(a1);
}

unint64_t BufferedWriteBackend::write(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    std::mutex::lock((a1 + 40));
    if ((*(a1 + 136) & 1) != 0 || (offset = BufferedWriteBackend::reset_last_offset(a1, a2), !offset))
    {
      v5 = *(a1 + 128);
      v6 = *(a1 + 104);
      v7 = *(a1 + 112) - v6;
      v8 = v5 % v7;
      if (v5 % v7)
      {
        v9 = v7 - v8;
        if (v9 >= *(a2 + 16))
        {
          v10 = *(a2 + 16);
        }

        else
        {
          v10 = v9;
        }

        memcpy((v6 + v8), *a2, v10);
        v11 = *(a1 + 104);
        v7 = *(a1 + 112) - v11;
        if (v10 + v8 == v7)
        {
          v12 = *(details::get_dummy_shared_ptr() + 1);
          v19 = v11;
          v20 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = v10 + v8;
          v22 = v5 - v8;
          v23 = v10 + v8;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          offset = (*(**(a1 + 24) + 120))(*(a1 + 24), &v19);
          v13 = v21;
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (v13 != offset)
          {
            goto LABEL_28;
          }

          v7 = *(a1 + 112) - *(a1 + 104);
        }
      }

      else
      {
        v10 = 0;
      }

      offset = *(a2 + 16);
      v15 = (offset - v10) / v7 * v7;
      if (offset - v10 != (offset - v10) % v7)
      {
        sg_entry::sg_entry<sg_entry const&,void>(&v19, a2, v15, v10, *(a2 + 24) + v10, *(a2 + 32) - v10);
        offset = (*(**(a1 + 24) + 120))(*(a1 + 24), &v19);
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        if (v15 != offset)
        {
          goto LABEL_28;
        }

        v10 += v15;
        offset = *(a2 + 16);
      }

      if (offset > v10)
      {
        memcpy(*(a1 + 104), (*a2 + v10), offset - v10);
        offset = *(a2 + 16);
      }

      *(a1 + 128) += offset;
    }

LABEL_28:
    std::mutex::unlock((a1 + 40));
    return offset;
  }

  *&v17 = "int BufferedWriteBackend::write(const sg_entry &)";
  *(&v17 + 1) = 31;
  v18 = 16;
  di_log::logger<di_log::log_printer<233ul>>::logger(&v19, &v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "BufferedWriteBackend doesn't support per io crypto", 50);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(&v19);
  MEMORY[0x24C1ED6A0](&v28);
  return 4294967194;
}

void sub_248F4FE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::mutex::unlock((v13 + 40));
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<233ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<233ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFCEB0;
  a1[45] = &unk_285BFCFB0;
  a1[46] = &unk_285BFCFD8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFCEB0;
  a1[45] = &unk_285BFCF38;
  a1[46] = &unk_285BFCF60;
  return a1;
}

void sub_248F4FF74(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<233ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t BufferedWriteBackend::flush(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 40));
  if (*(a1 + 136) == 1)
  {
    v4 = *(a1 + 104);
    v5 = *(a1 + 112) - v4;
    v6 = *(a1 + 128) % v5;
    if (!v6)
    {
      goto LABEL_11;
    }

    bzero((v4 + v6), v5 - v6);
    v7 = *(a1 + 128);
    v8 = *(a1 + 104);
    v9 = *(a1 + 112);
    v10 = *(details::get_dummy_shared_ptr() + 1);
    v16 = v8;
    v17 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v9 - v8;
    v19 = v7 - v6;
    v20 = v9 - v8;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v11 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v16);
    v12 = v11;
    v13 = v11 >= 0 ? 4294967291 : v11;
    v14 = v18;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v14 == v12)
    {
LABEL_11:
      v13 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2);
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock((a1 + 40));
  return v13;
}

void sub_248F50124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::mutex::unlock((v10 + 40));
  _Unwind_Resume(a1);
}

void BufferedWriteBackend::~BufferedWriteBackend(BufferedWriteBackend *this)
{
  BufferedWriteBackend::~BufferedWriteBackend(this);

  JUMPOUT(0x24C1ED730);
}

{
  *this = &unk_285BFC708;
  BufferedWriteBackend::flush(this, 1);
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((this + 40));
  *this = &unk_285BD4DB0;
  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void BackendSG::~BackendSG(BackendSG *this)
{
  *this = &unk_285BFC630;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_285BD4DB0;
  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

{
  *this = &unk_285BFC630;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_285BD4DB0;
  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  JUMPOUT(0x24C1ED730);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<146ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<146ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<146ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<146ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<146ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFC9E8;
  di_log::logger_buf<di_log::log_printer<146ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<146ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<146ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_248F50848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<146ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<146ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 146;
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
      v26 = 146;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<163ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<163ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<163ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<163ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<163ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFCC08;
  di_log::logger_buf<di_log::log_printer<163ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<163ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<163ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_248F50FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<163ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<163ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 163;
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
      v26 = 163;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<185ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<185ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<185ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<185ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<185ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFCE28;
  di_log::logger_buf<di_log::log_printer<185ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<185ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<185ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_248F51778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<185ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<185ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 185;
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
      v26 = 185;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<233ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<233ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<233ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<233ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<233ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFD048;
  di_log::logger_buf<di_log::log_printer<233ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<233ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<233ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_248F51F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<233ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<233ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 233;
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
      v26 = 233;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *std::__shared_ptr_emplace<BufferAllocator>::__shared_ptr_emplace[abi:ne200100]<unsigned long &,int,unsigned long &,std::allocator<BufferAllocator>,0>(void *a1, uint64_t *a2, unsigned int *a3, unint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BFD0C8;
  BufferAllocator::BufferAllocator((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<BufferAllocator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BFD0C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<146ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFC9E8;
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

void sub_248F5240C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<163ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFCC08;
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

void sub_248F524D4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<185ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFCE28;
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

void sub_248F5259C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<BackendSG>::__shared_ptr_emplace[abi:ne200100]<BackendSG&,std::shared_ptr<Backend> const&,std::allocator<BackendSG>,0>(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BEC430;
  BackendSG::BackendSG((a1 + 3), a2, a3);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<233ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFD048;
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

void sub_248F5274C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void CompressedBackend::make_backend(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 4)
  {
    std::allocate_shared[abi:ne200100]<BZIPCompressedBackend,std::allocator<BZIPCompressedBackend>,std::shared_ptr<Backend> const&,unsigned long &,0>();
  }

  std::allocate_shared[abi:ne200100]<StandardCompressedBackend,std::allocator<StandardCompressedBackend>,std::shared_ptr<Backend> const&,CompressedBackend::algo_t &,unsigned long &,0>();
}

void CompressedBackend::CompressedBackend(Backend *a1, void *a2, _DWORD *a3, size_t a4)
{
  BackendInternalBackend::BackendInternalBackend(a1, a2);
  *v6 = &unk_285BFD118;
  *(v6 + 40) = *a3;
  *(v6 + 48) = a4;
  operator new[]();
}

void CompressedBackend::CompressedBackend(Backend *a1, uint64_t a2, void *a3)
{
  BackendInternalBackend::BackendInternalBackend(a1, a3);
  *v4 = &unk_285BFD118;
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  operator new[]();
}

void CompressedBackend::~CompressedBackend(CompressedBackend *this)
{
  *this = &unk_285BFD118;
  boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::~vector(this + 72);
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    MEMORY[0x24C1ED710](v2, 0x1000C8077774924);
  }

  *this = &unk_285BD4DB0;
  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t CompressedBackend::read(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) != *(a1 + 56))
  {
    (*(*a1 + 152))(a1);
  }

  if (*(a2 + 104) == 1 && *(a2 + 48) != 0)
  {
    return 4294967251;
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(details::get_dummy_shared_ptr() + 1);
  v17 = v5;
  v18 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v6;
  v20 = v7;
  v21 = v6;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v9 = (*(**(a1 + 24) + 128))(*(a1 + 24), &v17);
  if ((v9 & 0x80000000) != 0)
  {
    *&v12 = "int CompressedBackend::read(const sg_entry &)";
    *(&v12 + 1) = 27;
    v13 = 16;
    di_log::logger<di_log::log_printer<56ul>>::logger(v14, &v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Internal backend read() failed. ret=", 36);
    MEMORY[0x24C1ED390](&v15, v9);
    std::ios_base::getloc(&v16[*(v15 - 24) - 8]);
    v10 = std::locale::use_facet(&v25, MEMORY[0x277D82680]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v25);
    std::ostream::put();
    std::ostream::flush();
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<56ul>>::~logger_buf(v14);
    MEMORY[0x24C1ED6A0](v16);
  }

  else
  {
    v9 = (*(*a1 + 208))(a1, a2, v17);
    if (!v9)
    {
      *&v12 = "int CompressedBackend::read(const sg_entry &)";
      *(&v12 + 1) = 27;
      v13 = 16;
      di_log::logger<di_log::log_printer<62ul>>::logger(v14, &v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Decompression failed", 20);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(v14);
      MEMORY[0x24C1ED6A0](v16);
      v9 = 4294967291;
    }
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return v9;
}

void sub_248F52C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  di_log::logger<di_log::log_printer<62ul>>::~logger(va);
  v11 = *(v9 - 160);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<62ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<62ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFD420;
  a1[45] = &unk_285BFD520;
  a1[46] = &unk_285BFD548;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFD420;
  a1[45] = &unk_285BFD4A8;
  a1[46] = &unk_285BFD4D0;
  return a1;
}

void sub_248F52DC0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<62ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void CompressedBackend::future_read(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 64);
  v7 = *(a2 + 16);
  if (*(a1 + 48) - v6 + *(a1 + 56) < v7)
  {
    (*(*a1 + 152))(a1);
    v6 = *(a1 + 64);
    v7 = *(a2 + 16);
  }

  v8 = *(a2 + 24);
  v9 = *(details::get_dummy_shared_ptr() + 1);
  v31 = v6;
  v32 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = v7;
  v34 = v8;
  v35 = v7;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (*(a2 + 104) == 1 && *(a2 + 48))
  {
    *a3 = -45;
    *(a3 + 4) = 1;
LABEL_11:
    *(a3 + 8) = 0;
    goto LABEL_12;
  }

  (*(**(a1 + 24) + 136))(&v29);
  if ((v29 & 0x100000000) == 0 && !v30)
  {
    *a3 = 0;
    *(a3 + 4) = 0;
    *(a3 + 16) = 0;
    goto LABEL_11;
  }

  LOBYTE(v24) = 0;
  v25 = 0;
  v27 = &v28;
  v28 = &v24;
  v26 = 0;
  sg_entry::sg_entry(v16, a2);
  v18 = v28;
  v28 = 0;
  *(v18 + 2) = &v18;
  LOBYTE(v19) = 0;
  v20 = 0;
  v21 = 0;
  if (BYTE4(v29) == 1)
  {
    v19 = v29;
    v20 = 1;
  }

  v10 = v30;
  v22 = v30;
  v30 = 0;
  if (v22)
  {
    *v10 = &v19;
  }

  v11 = *(a1 + 72);
  v23 = *(a1 + 64);
  v12 = *(a1 + 80);
  v13 = v11 + 152 * v12;
  if (v12 == *(a1 + 88))
  {
    boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t>>((a1 + 72), v11 + 152 * v12, 1, v16, &v39);
  }

  else
  {
    sg_entry::sg_entry(v11 + 152 * v12, v16);
    *(v13 + 112) = v18;
    v18 = 0;
    *(*(v13 + 112) + 16) = v13 + 112;
    *(v13 + 120) = 0;
    *(v13 + 124) = 0;
    *(v13 + 128) = 0;
    if (v20 == 1)
    {
      *(v13 + 120) = v19;
      *(v13 + 124) = 1;
    }

    *(v13 + 136) = v22;
    v22 = 0;
    v14 = *(v13 + 136);
    if (v14)
    {
      *v14 = v13 + 120;
    }

    *(v13 + 144) = v23;
    ++*(a1 + 80);
  }

  if (v18)
  {
    *(v18 + 2) = 0;
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  *(a1 + 64) += *(a2 + 16);
  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v25 == 1)
  {
    *a3 = v24;
    *(a3 + 4) = 1;
  }

  v15 = v27;
  *(a3 + 16) = v27;
  if (v15)
  {
    *v15 = a3;
  }

  if (v28)
  {
    *(v28 + 2) = 0;
  }

LABEL_12:
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }
}

void sub_248F53114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a32)
  {
    *(a32 + 16) = 0;
  }

  v34 = *(v32 - 176);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(exception_object);
}

void CompressedBackend::run_futures(CompressedBackend *this)
{
  (*(**(this + 3) + 152))(*(this + 3));
  v3 = *(this + 10);
  if (v3)
  {
    v4 = 152 * v3;
    v5 = *(this + 9) + 112;
    while (1)
    {
      LODWORD(v6) = lw_future<int>::get((v5 + 8), v2);
      if ((v6 & 0x80000000) == 0)
      {
        if (*(v5 - 96) > v6)
        {
          goto LABEL_7;
        }

        v6 = (*(*this + 208))(this, v5 - 112, *(v5 + 32));
        if (!v6)
        {
          break;
        }
      }

LABEL_8:
      v8 = *v5;
      *v8 = v6;
      *(v8 + 4) = 1;
      lw_promise<int>::notify_future(v5, v7);
      v5 += 152;
      v4 -= 152;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    *&v9 = "void CompressedBackend::run_futures()";
    *(&v9 + 1) = 35;
    v10 = 16;
    di_log::logger<di_log::log_printer<107ul>>::logger(v11, &v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Decompression failed", 20);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<107ul>>::~logger_buf(v11);
    MEMORY[0x24C1ED6A0](&v13);
LABEL_7:
    LODWORD(v6) = -5;
    goto LABEL_8;
  }

LABEL_9:
  *(this + 8) = *(this + 7);
  boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::priv_destroy_all(this + 9);
}

void sub_248F532D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  di_log::logger<di_log::log_printer<107ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t CompressedBackend::write(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) != *(a1 + 56))
  {
    (*(*a1 + 152))(a1);
  }

  if (*(a2 + 104) == 1 && *(a2 + 48) != 0)
  {
    return 4294967251;
  }

  v5 = (*(*a1 + 200))(a1, a2);
  if (!v5)
  {
    return 4294967291;
  }

  v6 = v5;
  v7 = *(a1 + 56);
  v8 = *(a2 + 24);
  v9 = *(details::get_dummy_shared_ptr() + 1);
  v18 = v7;
  v19 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = v6;
  v21 = v8;
  v22 = v6;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v10 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v18);
  if ((v10 & 0x80000000) != 0)
  {
    *&v13 = "int CompressedBackend::write(const sg_entry &)";
    *(&v13 + 1) = 28;
    v14 = 16;
    di_log::logger<di_log::log_printer<137ul>>::logger(v15, &v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Internal backend write() failed. ret=", 37);
    MEMORY[0x24C1ED390](&v16, v10);
    std::ios_base::getloc((&v16 + *(v16 - 24)));
    v11 = std::locale::use_facet(&v26, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v26);
    std::ostream::put();
    std::ostream::flush();
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(v15);
    MEMORY[0x24C1ED6A0](&v17);
  }

  else
  {
    v10 = v6;
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  return v10;
}

void sub_248F5351C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *(v13 - 160);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void *CompressedBackend::name(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Compressed(", 11);
  v6 = *(a1 + 40);
  v4 = operator<<(v3, &v6);
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ")", 1);
}

void *operator<<(void *a1, _DWORD *a2)
{
  v2 = &off_278F814E0;
  v3 = 120;
  while (*(v2 - 2) != *a2)
  {
    v2 += 3;
    v3 -= 24;
    if (!v3)
    {
      v4 = "no_match";
      v5 = 8;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, v5);
    }
  }

  v4 = *v2;
  v5 = v2[1];
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, v5);
}

void sub_248F536F8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 318);
  *(v1 + 318) = 0;
  if (v3)
  {
    MEMORY[0x24C1ED730]();
  }

  v4 = *(v1 + 317);
  *(v1 + 317) = 0;
  if (v4)
  {
    MEMORY[0x24C1ED710](v4, 0x1000C8077774924);
  }

  CompressedBackend::~CompressedBackend(v1);
  _Unwind_Resume(a1);
}

void sub_248F53844(_Unwind_Exception *a1)
{
  v3 = *(v1 + 318);
  *(v1 + 318) = 0;
  if (v3)
  {
    MEMORY[0x24C1ED730](v3, 0x1000C4052888210);
  }

  v4 = *(v1 + 317);
  *(v1 + 317) = 0;
  if (v4)
  {
    MEMORY[0x24C1ED710](v4, 0x1000C8077774924);
  }

  CompressedBackend::~CompressedBackend(v1);
  _Unwind_Resume(a1);
}

uint64_t BZIPCompressedBackend::decompress(uint64_t a1, uint64_t a2, char *a3)
{
  destLen = *(a2 + 32);
  v3 = BZ2_bzBuffToBuffDecompress(*a2, &destLen, a3, *(a2 + 16), 0, 0);
  if (!v3)
  {
    return destLen;
  }

  v4 = v3;
  *&v6 = "size_t BZIPCompressedBackend::decompress(const sg_entry &, char *) const";
  *(&v6 + 1) = 40;
  v7 = 16;
  di_log::logger<di_log::log_printer<264ul>>::logger(v8, &v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "BZIP decompression failed, res=", 31);
  MEMORY[0x24C1ED390](&v9, v4);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(v8);
  MEMORY[0x24C1ED6A0](&v10);
  return 0;
}

void sub_248F539F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  di_log::logger<di_log::log_printer<264ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<264ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<264ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFD860;
  a1[45] = &unk_285BFD960;
  a1[46] = &unk_285BFD988;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFD860;
  a1[45] = &unk_285BFD8E8;
  a1[46] = &unk_285BFD910;
  return a1;
}

void sub_248F53B10(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<264ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t BZIPCompressedBackend::compress(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  destLen = v2;
  v3 = v2 / 0x186A0;
  if ((v2 / 0x186A0) >= 8)
  {
    LODWORD(v3) = 8;
  }

  v4 = BZ2_bzBuffToBuffCompress(*(a1 + 56), &destLen, *a2, v2, v3 + 1, 0, 0);
  if (v4 != -8)
  {
    v5 = v4;
    if (!v4)
    {
      return destLen;
    }

    *&v7 = "size_t BZIPCompressedBackend::compress(const sg_entry &) const";
    *(&v7 + 1) = 38;
    v8 = 16;
    di_log::logger<di_log::log_printer<287ul>>::logger(v9, &v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "BZIP compression failed, res=", 29);
    MEMORY[0x24C1ED390](&v10, v5);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(v9);
    MEMORY[0x24C1ED6A0](&v11);
  }

  return 0;
}

void sub_248F53C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  di_log::logger<di_log::log_printer<287ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<287ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<287ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFDA80;
  a1[45] = &unk_285BFDB80;
  a1[46] = &unk_285BFDBA8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFDA80;
  a1[45] = &unk_285BFDB08;
  a1[46] = &unk_285BFDB30;
  return a1;
}

void sub_248F53D90(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<287ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void StandardCompressedBackend::~StandardCompressedBackend(StandardCompressedBackend *this)
{
  *this = &unk_285BFD200;
  v2 = *(this + 318);
  *(this + 318) = 0;
  if (v2)
  {
    MEMORY[0x24C1ED730](v2, 0x1000C4052888210);
  }

  v3 = *(this + 317);
  *(this + 317) = 0;
  if (v3)
  {
    MEMORY[0x24C1ED710](v3, 0x1000C8077774924);
  }

  CompressedBackend::~CompressedBackend(this);
}

{
  StandardCompressedBackend::~StandardCompressedBackend(this);

  JUMPOUT(0x24C1ED730);
}

void BZIPCompressedBackend::~BZIPCompressedBackend(BZIPCompressedBackend *this)
{
  CompressedBackend::~CompressedBackend(this);

  JUMPOUT(0x24C1ED730);
}

uint64_t boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::~vector(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 112;
    do
    {
      if (*v3)
      {
        *(*v3 + 16) = 0;
      }

      v4 = *(v3 - 104);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v3 += 152;
      --v2;
    }

    while (v2);
  }

  if (*(a1 + 16) && a1 + 24 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<62ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<62ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<62ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<62ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<62ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFD5B8;
  di_log::logger_buf<di_log::log_printer<62ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<62ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<62ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_248F54510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<62ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<62ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 62;
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
      v26 = 62;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

_DWORD *StandardCompressedBackend::pimpl::pimpl(_DWORD *a1, int *a2)
{
  *a1 = StandardCompressedBackend::pimpl::pimpl(CompressedBackend::algo_t)::algos[*a2];
  if (DIDebugLogsEnabled())
  {
    *&v5 = "StandardCompressedBackend::pimpl::pimpl(algo_t)";
    *(&v5 + 1) = 39;
    v6 = 2;
    di_log::logger<di_log::log_printer<195ul>>::logger(v7, &v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Using compression ", 18);
    v10 = *a2;
    operator<<(&v8, &v10);
    *(&v8 + *(v8 - 24) + 8) = *(&v8 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " constant ", 10);
    MEMORY[0x24C1ED390](&v8, *a1);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(v7);
    MEMORY[0x24C1ED6A0](&v9);
  }

  return a1;
}

void sub_248F54870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  di_log::logger<di_log::log_printer<195ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<195ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<195ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFD640;
  a1[45] = &unk_285BFD740;
  a1[46] = &unk_285BFD768;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFD640;
  a1[45] = &unk_285BFD6C8;
  a1[46] = &unk_285BFD6F0;
  return a1;
}

void sub_248F54988(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<195ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<195ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFD7D8;
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

void sub_248F54AA0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFD7D8;
  di_log::logger_buf<di_log::log_printer<195ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<195ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<195ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<195ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<195ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<195ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<195ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<195ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<195ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_248F55044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<195ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 195;
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
      v26 = 195;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<264ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<264ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<264ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<264ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<264ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFD9F8;
  di_log::logger_buf<di_log::log_printer<264ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<264ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<264ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_248F557A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<264ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<264ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 264;
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
      v26 = 264;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<287ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<287ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<287ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<287ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<287ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFDC18;
  di_log::logger_buf<di_log::log_printer<287ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<287ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<287ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
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

void sub_248F55F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<287ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<287ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 287;
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
      v26 = 287;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void std::__shared_ptr_emplace<BZIPCompressedBackend>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend> const&,unsigned long &,std::allocator<BZIPCompressedBackend>,0>(void *a1, void *a2, size_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BFDC98;
  v3 = *a3;
  v4 = 4;
  CompressedBackend::CompressedBackend((a1 + 3), a2, &v4, v3);
}

void std::__shared_ptr_emplace<BZIPCompressedBackend>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BFDC98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_emplace<StandardCompressedBackend>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend> const&,CompressedBackend::algo_t &,unsigned long &,std::allocator<StandardCompressedBackend>,0>(void *a1, void *a2, int *a3, size_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BFDCE8;
  v4 = *a3;
  StandardCompressedBackend::StandardCompressedBackend((a1 + 3), a2, &v4, *a4);
}

void std::__shared_ptr_emplace<StandardCompressedBackend>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BFDCE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<62ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFD5B8;
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

void sub_248F56594(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t>>(void **a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >= 0xD79435E50D7944)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(152 * v11);
  boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t>>(a1, v14, v13, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

const char *boost::container::vector_alloc_holder<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, const char *a2)
{
  v2 = 0xD79435E50D7943;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xD79435E50D7943 - v4 < &a2[v3 - v4])
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
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

  v9 = &a2[v3];
  if (v8 < 0xD79435E50D7943)
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

void boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t>>(void **a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t>>(a1, *a1, a4, *a1 + 152 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = v10 + 112;
      do
      {
        if (*v12)
        {
          *(*v12 + 16) = 0;
        }

        v13 = *(v12 - 13);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v12 += 152;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v14 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v14;
  a1[2] = a3;
}

void sub_248F5679C(_Unwind_Exception *exception_object)
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

uint64_t *boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a5;
  v17 = a1;
  v16 = boost::container::uninitialized_move_alloc<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t*>(a1, a2, a3, a5);
  v12 = sg_entry::sg_entry(v16, a7);
  *(v12 + 112) = *(a7 + 112);
  *(a7 + 112) = 0;
  *(*(v12 + 112) + 16) = v12 + 112;
  *(v12 + 120) = 0;
  *(v12 + 124) = 0;
  *(v12 + 128) = 0;
  if (*(a7 + 124) == 1)
  {
    *(v12 + 120) = *(a7 + 120);
    *(v12 + 124) = 1;
  }

  *(v12 + 136) = *(a7 + 136);
  *(a7 + 136) = 0;
  v13 = *(v12 + 136);
  if (v13)
  {
    *v13 = v12 + 120;
  }

  *(v12 + 144) = *(a7 + 144);
  boost::container::uninitialized_move_alloc<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t*>(a1, a3, a4, v12 + 152 * a6);
  v15 = 0;
  v16 = 0;
  return boost::container::dtl::scoped_destructor_range<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>>::~scoped_destructor_range(&v15);
}

void sub_248F568B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_destructor_range<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>>::~scoped_destructor_range(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::uninitialized_move_alloc<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      sg_entry::sg_entry(a4 + v7, a2 + v7);
      *(v8 + 112) = *(a2 + v7 + 112);
      *(a2 + v7 + 112) = 0;
      *(*(v8 + 112) + 16) = v8 + 112;
      *(v8 + 120) = 0;
      *(v8 + 124) = 0;
      *(v8 + 128) = 0;
      if (*(a2 + v7 + 124) == 1)
      {
        *(v8 + 120) = *(a2 + v7 + 120);
        *(v8 + 124) = 1;
      }

      *(a4 + v7 + 136) = *(a2 + v7 + 136);
      *(a2 + v7 + 136) = 0;
      v9 = *(a4 + v7 + 136);
      if (v9)
      {
        *v9 = v8 + 120;
      }

      *(a4 + v7 + 144) = *(a2 + v7 + 144);
      v7 += 152;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_248F569AC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v3)
  {
    boost::container::uninitialized_move_alloc<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,CompressedBackend::promise_io_t*,CompressedBackend::promise_io_t*>(v1, v2);
  }

  __cxa_rethrow();
}

uint64_t *boost::container::dtl::scoped_destructor_range<boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>>::~scoped_destructor_range(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v2 != v3)
  {
    v4 = *(v2 + 112);
    if (v4)
    {
      *(v4 + 16) = 0;
    }

    v5 = *(v2 + 8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      v2 = *a1;
      v3 = a1[1];
    }

    v2 += 152;
    *a1 = v2;
  }

  return a1;
}

void boost::container::vector<CompressedBackend::promise_io_t,boost::container::small_vector_allocator<CompressedBackend::promise_io_t,boost::container::new_allocator<void>,void>,void>::priv_destroy_all(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1 + 112;
    do
    {
      if (*v3)
      {
        *(*v3 + 16) = 0;
      }

      v4 = *(v3 - 104);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v3 += 152;
      --v2;
    }

    while (v2);
  }

  a1[1] = 0;
}

void std::__shared_ptr_emplace<StandardCompressedBackend>::__shared_ptr_emplace[abi:ne200100]<StandardCompressedBackend&,std::shared_ptr<Backend> const&,std::allocator<StandardCompressedBackend>,0>(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BFDCE8;
  StandardCompressedBackend::StandardCompressedBackend((a1 + 3), a2, a3);
}

uint64_t di_log::logger_buf<di_log::log_printer<264ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFD9F8;
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

void sub_248F56C2C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<287ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BFDC18;
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

void sub_248F56CF4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<BZIPCompressedBackend>::__shared_ptr_emplace[abi:ne200100]<BZIPCompressedBackend&,std::shared_ptr<Backend> const&,std::allocator<BZIPCompressedBackend>,0>(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BFDC98;
  CompressedBackend::CompressedBackend((a1 + 3), a2, a3);
}

uint64_t FileDescriptorWrapper::handle_open_from_error_message@<X0>(int a1@<W0>, const char *a2@<X1>, int a3@<W3>, void *a4@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v39);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Couldn't open ", 14);
  v9 = a2[23];
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 1);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "' with flags ", 13);
  v14 = *v13;
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v13 + *(v14 - 24) + 8) |= 0x200u;
  v15 = MEMORY[0x24C1ED390]();
  *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 2;
  if (a3 == 13)
  {
    if (a2[23] >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (fstatat(a1, v16, &v38, 0))
    {
      v37.__r_.__value_.__r.__words[0] = "std::string FileDescriptorWrapper::handle_open_from_error_message(int, const std::string &, int, int)";
      v37.__r_.__value_.__l.__size_ = 65;
      LODWORD(v37.__r_.__value_.__r.__words[2]) = 16;
      di_log::logger<di_log::log_printer<67ul>>::logger(&v34, &v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "fstatfs failed with err code", 28);
      v17 = __error();
      MEMORY[0x24C1ED390](&v35, *v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, " trying to check permission after EACCES", 40);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(&v34);
      MEMORY[0x24C1ED6A0](&v36);
    }

    else
    {
      std::to_string(&v34, v38.st_gid);
      v18 = getgrgid(v38.st_gid);
      if (v18)
      {
        std::string::__assign_external(&v34, v18->gr_name);
      }

      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, ", UID:GID(Name)=", 16);
      std::to_string(&v37, v38.st_uid);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v37;
      }

      else
      {
        v20 = v37.__r_.__value_.__r.__words[0];
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v37.__r_.__value_.__l.__size_;
      }

      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, size);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ":", 1);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v34;
      }

      else
      {
        v24 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v34.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, " mode=", 6);
      v27 = *v26;
      *(v26 + *(*v26 - 24) + 8) = *(v26 + *(*v26 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v26 + *(v27 - 24) + 8) |= 0x200u;
      v28 = MEMORY[0x24C1ED3D0]();
      *(v28 + *(*v28 - 24) + 8) = *(v28 + *(*v28 - 24) + 8) & 0xFFFFFFB5 | 2;
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " (our euid is ", 14);
      v30 = geteuid();
      v31 = MEMORY[0x24C1ED3A0](v29, v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ")", 1);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }
  }

  std::stringbuf::str[abi:ne200100](&v41, a4);
  v39[0] = *MEMORY[0x277D82818];
  v32 = *(MEMORY[0x277D82818] + 72);
  *(v39 + *(v39[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v40 = v32;
  v41 = MEMORY[0x277D82878] + 16;
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  v41 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v42);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1ED6A0](&v44);
}

void sub_248F572E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x2B8], MEMORY[0x277D82818]);
  MEMORY[0x24C1ED6A0](&STACK[0x338]);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<67ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<67ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFE178;
  a1[45] = &unk_285BFE278;
  a1[46] = &unk_285BFE2A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFE178;
  a1[45] = &unk_285BFE200;
  a1[46] = &unk_285BFE228;
  return a1;
}

void sub_248F5745C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<67ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<67ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileDescriptorWrapper::open_file(const char *a1, uint64_t a2)
{
  v3 = a1;
  v35[19] = *MEMORY[0x277D85DE8];
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v4 = open(a1, a2, 438);
  if (v4 == -1)
  {
    v12 = *__error();
    v13 = DIForwardLogs();
    if (v13)
    {
      *&v25 = 0;
      DIOSLog = getDIOSLog(v13, v14);
      if (os_log_type_enabled(DIOSLog, OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      if (v3[23] < 0)
      {
        v3 = *v3;
      }

      v17 = *__error();
      *buf = 68158467;
      *&buf[4] = 69;
      v28 = 2080;
      v29 = "static int FileDescriptorWrapper::open_file(const std::string &, int)";
      v30 = 2081;
      v31 = v3;
      v32 = 1024;
      v33 = v17;
      v18 = _os_log_send_and_compose_impl(v16, &v25, 0, 0, &dword_248DE0000, DIOSLog, 16, "%.*s: Failed opening %{private}s, errno %d", buf, 34);
      if (v18)
      {
        v19 = v18;
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v18);
        free(v19);
      }
    }

    else
    {
      v20 = getDIOSLog(v13, v14);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        if (v3[23] < 0)
        {
          v3 = *v3;
        }

        v21 = *__error();
        *buf = 68158467;
        *&buf[4] = 69;
        v28 = 2080;
        v29 = "static int FileDescriptorWrapper::open_file(const std::string &, int)";
        v30 = 2081;
        v31 = v3;
        v32 = 1024;
        v33 = v21;
        _os_log_impl(&dword_248DE0000, v20, OS_LOG_TYPE_ERROR, "%.*s: Failed opening %{private}s, errno %d", buf, 0x22u);
      }
    }

    *__error() = v12;
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](buf);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Couldn't open file with flags ", 30);
    v23 = *buf;
    *&buf[*(*buf - 24) + 8] = *&buf[*(*buf - 24) + 8] & 0xFFFFFFB5 | 8;
    *&buf[*(v23 - 24) + 8] |= 0x200u;
    MEMORY[0x24C1ED390](buf, a2);
    v24 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, buf, *v24);
  }

  v5 = v4;
  if (DIDebugLogsEnabled())
  {
    *&v25 = "int FileDescriptorWrapper::open_file(const std::string &, int)";
    *(&v25 + 1) = 36;
    v26 = 2;
    di_log::logger<di_log::log_printer<79ul>>::logger(buf, &v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "'", 1);
    v6 = v3[23];
    if (v6 >= 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = *v3;
    }

    if (v6 >= 0)
    {
      v8 = *(v3 + 23);
    }

    else
    {
      v8 = *(v3 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, v7, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "' opened successfully with flags ", 33);
    v9 = v34;
    *(v35 + *(v34 - 24)) = *(v35 + *(v34 - 24)) & 0xFFFFFFB5 | 8;
    *(v35 + *(v9 - 24)) |= 0x200u;
    MEMORY[0x24C1ED390](&v34, a2);
    v10 = v34;
    *(v35 + *(v34 - 24)) &= ~0x200u;
    *(v35 + *(v10 - 24)) = *(v35 + *(v10 - 24)) & 0xFFFFFFB5 | 2;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, ", fd=", 5);
    MEMORY[0x24C1ED390](&v34, v5);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<79ul>>::~logger_buf(buf);
    MEMORY[0x24C1ED6A0](v35);
  }

  return v5;
}

void sub_248F57960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t FileDescriptorWrapper::open_from(int a1, const char *a2, int a3)
{
  v5 = a3 | 0x100u;
  if (a2[23] >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v26[1] = 438;
  v27 = v6;
  v26[0] = a3 | 0x100;
  v7 = fcntl(a1, 56, v26);
  if (v7 == -1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v20);
    v16 = __error();
    FileDescriptorWrapper::handle_open_from_error_message(a1, a2, *v16, &v23);
    if ((v25 & 0x80u) == 0)
    {
      v17 = &v23;
    }

    else
    {
      v17 = v23;
    }

    if ((v25 & 0x80u) == 0)
    {
      v18 = v25;
    }

    else
    {
      v18 = *(&v23 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v17, v18);
    v19 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v20, *v19);
  }

  v8 = v7;
  if (DIDebugLogsEnabled())
  {
    *&v23 = "int FileDescriptorWrapper::open_from(int, const std::string &, int)";
    *(&v23 + 1) = 36;
    v24 = 2;
    di_log::logger<di_log::log_printer<96ul>>::logger(v20, &v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "'", 1);
    v9 = a2[23];
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "' opened successfully with flags ", 33);
    v12 = v21;
    *(&v21 + *(v21 - 24) + 8) = *(&v21 + *(v21 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(&v21 + *(v12 - 24) + 8) |= 0x200u;
    MEMORY[0x24C1ED390](&v21, v5);
    v13 = v21;
    *(&v21 + *(v21 - 24) + 8) &= ~0x200u;
    *(&v21 + *(v13 - 24) + 8) = *(&v21 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 2;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, ", fd=", 5);
    MEMORY[0x24C1ED390](&v21, v8);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(v20);
    MEMORY[0x24C1ED6A0](&v22);
  }

  return v8;
}

void sub_248F57C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v7 - 65) < 0)
  {
    operator delete(*(v7 - 88));
    std::ostringstream::~ostringstream(va);
    if ((v6 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::ostringstream::~ostringstream(va);
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  __cxa_free_exception(v5);
  goto LABEL_6;
}

void *di_log::logger<di_log::log_printer<96ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<96ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFE398;
  a1[45] = &unk_285BFE498;
  a1[46] = &unk_285BFE4C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFE398;
  a1[45] = &unk_285BFE420;
  a1[46] = &unk_285BFE448;
  return a1;
}

void sub_248F57DC8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<96ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<96ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void FileDescriptorWrapper::~FileDescriptorWrapper(FileDescriptorWrapper *this)
{
  *this = &unk_285BFDD38;
  v2 = *(this + 2);
  if (v2 != -1)
  {
    close(v2);
    if (DIDebugLogsEnabled())
    {
      *&v3 = "FileDescriptorWrapper::~FileDescriptorWrapper()";
      *(&v3 + 1) = 45;
      v4 = 2;
      di_log::logger<di_log::log_printer<104ul>>::logger(v5, &v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "File descriptor ", 16);
      MEMORY[0x24C1ED390](&v6, *(this + 2));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " closed", 7);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(v5);
      MEMORY[0x24C1ED6A0](&v7);
    }
  }
}

{
  FileDescriptorWrapper::~FileDescriptorWrapper(this);

  JUMPOUT(0x24C1ED730);
}

void *di_log::logger<di_log::log_printer<104ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<104ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFE5B8;
  a1[45] = &unk_285BFE6B8;
  a1[46] = &unk_285BFE6E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFE5B8;
  a1[45] = &unk_285BFE640;
  a1[46] = &unk_285BFE668;
  return a1;
}

void sub_248F58020(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<104ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<104ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void FileDescriptor::FileDescriptor(FileDescriptor *this, int a2, char a3)
{
  *(this + 2) = a2;
  *this = &unk_285BD6900;
  *(this + 12) = a3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  FileDescriptor::update_info(this);
}

uint64_t FileDescriptor::update_info(FileDescriptor *this)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(&v22, 0, sizeof(v22));
  FileDescriptor::get_stat(this, &v22);
  v2 = v22.st_mode & 0xF000;
  if (v2 == 0x2000)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 24576;
  }

  *(this + 7) = v3;
  if (!v3)
  {
    *(this + 2) = v22.st_size;
    goto LABEL_17;
  }

  bzero(v27, 0x400uLL);
  bzero(&__big, 0x400uLL);
  if (fcntl(*(this + 2), 50, v27) < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "get path failed", *v10);
  }

  if (!basename_r(v27, &__big))
  {
    v12 = __cxa_allocate_exception(0x40uLL);
    v13 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(v12, "basename_r failed", *v13);
  }

  if (strnstr(&__big, "rdisk", 5uLL) == &__big)
  {
    memmove(&__big, v26, 0x3FFuLL);
  }

  add_create_expected<iokit_utils::di_io_obj_t>::create<char (&)[1024]>(v20, &__big);
  unwrap_expected<iokit_utils::di_io_obj_t,std::error_code>(v20, "device not found in registry", &object);
  valuePtr[0] = &object;
  valuePtr[1] = &cf;
  cf = @"Size";
  wrap_exception<std::expected<CFAutoRelease<__CFNumber const*>,std::error_code> iokit_utils::di_io_obj_t::get_cf_ref<__CFNumber const*>(__CFString const*)::{lambda(void)#1}>(v17, valuePtr);
  unwrap_expected<CFAutoRelease<__CFNumber const*>,std::error_code>(v17, "device size not found in registry", &cf);
  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFNumberGetTypeID()))
  {
    v7 = "device size not found in registry";
    v8 = 19;
    goto LABEL_22;
  }

  valuePtr[0] = 0;
  if (!CFNumberGetValue(cf, kCFNumberLongLongType, valuePtr))
  {
    v7 = "Failed converting CFNumber to longlong";
    v8 = 22;
LABEL_22:
    v15 = __cxa_allocate_exception(0x40uLL);
    *v15 = &unk_285BF4E60;
    v16 = std::generic_category();
    v15[1] = v8;
    v15[2] = v16;
    *(v15 + 24) = 0;
    *(v15 + 48) = 0;
    v15[7] = v7;
  }

  *(this + 2) = valuePtr[0];
  CFAutoRelease<__CFNumber const*>::~CFAutoRelease(&cf);
  if (v18 == 1)
  {
    CFAutoRelease<__CFNumber const*>::~CFAutoRelease(v17);
  }

  IOObjectRelease(object);
  if (v21 == 1)
  {
    IOObjectRelease(v20[0]);
  }

LABEL_17:
  result = FileDescriptor::fetch_physical_block_size(this);
  *(this + 6) = result;
  st_ino = v22.st_ino;
  *(this + 4) = v22.st_dev;
  *(this + 5) = st_ino;
  return result;
}

void sub_248F58438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, int a14, io_object_t object, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FileDescriptor::get_stat@<X0>(FileDescriptor *this@<X0>, stat *a2@<X8>)
{
  result = fstat(*(this + 2), a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "fstat failed", *v4);
  }

  return result;
}

uint64_t FileDescriptor::get_statfs@<X0>(FileDescriptor *this@<X0>, statfs *a2@<X8>)
{
  result = fstatfs(*(this + 2), a2);
  if ((result & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "fstatfs failed", *v4);
  }

  return result;
}

uint64_t FileDescriptor::get_device_type(FileDescriptor *this, const stat *a2)
{
  v2 = *(this + 2) & 0xF000;
  if (v2 == 0x2000)
  {
    return 2;
  }

  else
  {
    return v2 == 24576;
  }
}

uint64_t *FileDescriptor::get_mounted_on_fs(FileDescriptor *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v12 = *MEMORY[0x277D85DE8];
  FileDescriptor::get_statfs(v1, &__src);
  memcpy(__dst, &__src, sizeof(__dst));
  std::string::basic_string[abi:ne200100]<0>(v3, &__dst[72]);
  *&v8 = "FileDescriptor::get_mounted_on_fs() const";
  *(&v8 + 1) = 33;
  v9 = 2;
  di_log::logger<di_log::log_printer<162ul>>::logger(&__src, &v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src.f_mntonname[272], "File system is ", 15);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src.f_mntonname[272], v5, v6);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<162ul>>::~logger_buf(&__src);
  return MEMORY[0x24C1ED6A0](&__src.f_mntonname[280]);
}

void sub_248F58704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FileDescriptor::fetch_physical_block_size(FileDescriptor *this)
{
  v42 = *MEMORY[0x277D85DE8];
  FileDescriptor::get_statfs(this, &v41);
  if (*(this + 7))
  {
    v2 = (v41.f_flags & 0x1000) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    f_bsize = v41.f_bsize;
    goto LABEL_24;
  }

  bzero(&v41, 0x400uLL);
  bzero(&__big, 0x400uLL);
  if (fcntl(*(this + 2), 50, &v41) < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = __error();
    v15 = "get path failed";
    goto LABEL_29;
  }

  if (!basename_r(&v41, &__big))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = __error();
    v15 = "basename_r failed";
LABEL_29:
    v16 = *v14;
    *exception = &unk_285BF4E60;
    v17 = std::generic_category();
    exception[1] = v16;
    exception[2] = v17;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = v15;
  }

  if (strnstr(&__big, "rdisk", 5uLL) == &__big)
  {
    memmove(&__big, &__big + 1, 0x3FFuLL);
  }

  add_create_expected<iokit_utils::di_io_obj_t>::create<char (&)[1024]>(v35, &__big);
  unwrap_expected<iokit_utils::di_io_obj_t,std::error_code>(v35, "device not found in registry", &v34);
  iokit_utils::di_io_obj_view::di_io_obj_view(v33, 3, &v34);
  iokit_utils::di_io_obj_view::begin(v33, v31);
  iokit_utils::di_io_obj_view::end(&v30, v33);
  while (iokit_utils::di_io_obj_iterator::operator!=(v31, &v30))
  {
    iokit_utils::di_io_obj_iterator::operator*();
    iokit_utils::di_io_obj_base_t<unsigned int>::di_io_obj_base_t(object, v4);
    v5 = IOObjectConformsTo(object[0], "IOBlockStorageDriver");
    IOObjectRelease(object[0]);
    if (v5)
    {
      break;
    }

    iokit_utils::di_io_obj_iterator::operator++(v31);
  }

  *v32 = *v31;
  *v31 = 0;
  IOObjectRelease(HIDWORD(v30));
  IOObjectRelease(v30);
  IOObjectRelease(v31[1]);
  IOObjectRelease(v31[0]);
  iokit_utils::di_io_obj_view::end(object, v33);
  v6 = iokit_utils::di_io_obj_iterator::operator==(v32, object);
  IOObjectRelease(object[1]);
  IOObjectRelease(object[0]);
  if (v6)
  {
    v18 = __cxa_allocate_exception(0x40uLL);
    v19 = std::generic_category();
    *v18 = &unk_285BF4E60;
    v18[1] = 19;
    v18[2] = v19;
    *(v18 + 24) = 0;
    *(v18 + 48) = 0;
    v18[7] = "IOBlockStorageDriver device not found in registry iteration";
  }

  iokit_utils::di_io_obj_iterator::operator*();
  iokit_utils::di_io_obj_view::di_io_obj_view(v29, 1, v7);
  iokit_utils::di_io_obj_view::begin(v29, v27);
  iokit_utils::di_io_obj_view::end(&v26, v29);
  while (iokit_utils::di_io_obj_iterator::operator!=(v27, &v26))
  {
    iokit_utils::di_io_obj_iterator::operator*();
    iokit_utils::di_io_obj_base_t<unsigned int>::di_io_obj_base_t(object, v8);
    v9 = IOObjectConformsTo(object[0], "IOMedia");
    IOObjectRelease(object[0]);
    if (v9)
    {
      break;
    }

    iokit_utils::di_io_obj_iterator::operator++(v27);
  }

  *v28 = *v27;
  *v27 = 0;
  IOObjectRelease(HIDWORD(v26));
  IOObjectRelease(v26);
  IOObjectRelease(v27[1]);
  IOObjectRelease(v27[0]);
  iokit_utils::di_io_obj_view::end(object, v29);
  v10 = iokit_utils::di_io_obj_iterator::operator==(v28, object);
  IOObjectRelease(object[1]);
  IOObjectRelease(object[0]);
  if (v10)
  {
    v20 = __cxa_allocate_exception(0x40uLL);
    v21 = std::generic_category();
    *v20 = &unk_285BF4E60;
    v20[1] = 19;
    v20[2] = v21;
    *(v20 + 24) = 0;
    *(v20 + 48) = 0;
    v20[7] = "IOMedia device not found in registry iteration";
  }

  iokit_utils::di_io_obj_iterator::operator*();
  valuePtr[0] = v11;
  valuePtr[1] = &number;
  number = @"Preferred Block Size";
  wrap_exception<std::expected<CFAutoRelease<__CFNumber const*>,std::error_code> iokit_utils::di_io_obj_t::get_cf_ref<__CFNumber const*>(__CFString const*)::{lambda(void)#1}>(object, valuePtr);
  unwrap_expected<CFAutoRelease<__CFNumber const*>,std::error_code>(object, "Unable to get IOMedia preferred block size", &number);
  valuePtr[0] = 0;
  if (!CFNumberGetValue(number, kCFNumberLongLongType, valuePtr))
  {
    v22 = __cxa_allocate_exception(0x40uLL);
    *v22 = &unk_285BF4E60;
    v23 = std::generic_category();
    v22[1] = 22;
    v22[2] = v23;
    *(v22 + 24) = 0;
    *(v22 + 48) = 0;
    v22[7] = "Failed converting CFNumber to longlong";
  }

  f_bsize = LODWORD(valuePtr[0]);
  CFAutoRelease<__CFNumber const*>::~CFAutoRelease(&number);
  if (v25 == 1)
  {
    CFAutoRelease<__CFNumber const*>::~CFAutoRelease(object);
  }

  IOObjectRelease(v28[1]);
  IOObjectRelease(v28[0]);
  IOObjectRelease(v32[1]);
  IOObjectRelease(v32[0]);
  IOObjectRelease(v34);
  if (v36 == 1)
  {
    IOObjectRelease(v35[0]);
  }

LABEL_24:
  if (DIDebugLogsEnabled())
  {
    *&__big = "FileDescriptor::fetch_physical_block_size() const";
    *(&__big + 1) = 41;
    v40 = 2;
    di_log::logger<di_log::log_printer<213ul>>::logger(&v41, &__big);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41.f_mntonname[272], "Physical block_size is ", 23);
    MEMORY[0x24C1ED3A0](&v41.f_mntonname[272], f_bsize);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(&v41);
    MEMORY[0x24C1ED6A0](&v41.f_mntonname[280]);
  }

  return f_bsize;
}

void sub_248F58D60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_248F58FBC()
{
  di_log::logger<di_log::log_printer<209ul>>::~logger(&STACK[0x4B0]);
  __cxa_end_catch();
  JUMPOUT(0x248F58ECCLL);
}

uint64_t *add_create_expected<iokit_utils::di_io_obj_t>::create<char (&)[1024]>@<X0>(uint64_t *__return_ptr a1@<X8>, char *a2@<X0>)
{
  iokit_utils::di_io_obj_t::di_io_obj_t(&v4, a2);
  *a1 = v4;
  v4 = 0;
  *(a1 + 16) = 1;
  return IOObjectRelease(0);
}

uint64_t unwrap_expected<CFAutoRelease<__CFNumber const*>,std::error_code>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((*(result + 16) & 1) == 0)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = *v3;
    *exception = &unk_285BF4E60;
    *(exception + 8) = v6;
    exception[24] = 0;
    exception[48] = 0;
    *(exception + 7) = a2;
  }

  *a3 = *result;
  *result = 0;
  return result;
}

void *di_log::logger<di_log::log_printer<209ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<209ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFE7D8;
  a1[45] = &unk_285BFE8D8;
  a1[46] = &unk_285BFE900;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFE7D8;
  a1[45] = &unk_285BFE860;
  a1[46] = &unk_285BFE888;
  return a1;
}

void sub_248F591E8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<209ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<209ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<209ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

BOOL FileDescriptor::mounted_on_same_fs(FileDescriptor *this, const FileDescriptor *a2, const FileDescriptor *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  FileDescriptor::get_statfs(this, &v8);
  v4 = v8.f_fsid.val[0];
  v5 = v8.f_fsid.val[1];
  FileDescriptor::get_statfs(a2, &v8);
  return v4 == v8.f_fsid.val[0] && v5 == v8.f_fsid.val[1];
}

uint64_t details::file_operations_t::flush(int a1, int a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v3 = fcntl(a2, 51, 0);
    }

    else
    {
      v3 = fsync(a2);
    }
  }

  else
  {
    v3 = fcntl(a2, 85, 0);
  }

  if (v3 == -1)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

ssize_t details::rdevice_operations_t::_pread(details::rdevice_operations_t *this, uint64_t __fd, void *__buf, size_t __nbyte, unint64_t a5)
{
  v6 = *(this + 1);
  if (__nbyte % v6 || a5 % v6)
  {
    v8[0] = __buf;
    v8[1] = __nbyte;
    return (*(*this + 8))(this, __fd, v8, 1, a5);
  }

  else
  {

    return pread(__fd, __buf, __nbyte, a5);
  }
}

ssize_t details::rdevice_operations_t::_preadv(details::rdevice_operations_t *this, int a2, const iovec *a3, int a4, unint64_t a5)
{
  v16[32] = *MEMORY[0x277D85DE8];
  if (a4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a4;
    p_iov_len = &a3->iov_len;
    do
    {
      v8 = *p_iov_len;
      p_iov_len += 2;
      v5 += v8;
      --v6;
    }

    while (v6);
  }

  v9 = *(this + 1);
  v10 = a5 % v9 + v5;
  if (a5 % v9)
  {
    v11 = (v10 % v9 != 0) + 1;
  }

  else
  {
    v11 = v10 % v9 != 0;
  }

  if (v11)
  {
    v14 = v16;
    *v15 = xmmword_248F9D670;
    v13 = (v11 + a4);
    if (v13 >= 0x11)
    {
      boost::container::vector<iovec,boost::container::small_vector_allocator<iovec,boost::container::new_allocator<void>,void>,void>::priv_move_to_new_buffer(&v14, v13);
    }

    operator new[]();
  }

  return preadv(a2, a3, a4, a5);
}

void sub_248F59698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    if (a10 != __p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void boost::container::vector<iovec,boost::container::small_vector_allocator<iovec,boost::container::new_allocator<void>,void>,void>::push_back(char **result, _OWORD *a2)
{
  v5 = result[1];
  v6 = &(*result)[16 * v5];
  if (v5 == result[2])
  {
    v7[1] = v2;
    v7[2] = v3;
    boost::container::vector<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>*,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>>>(result, v6, v7, 1, a2);
  }

  else
  {
    *v6 = *a2;
    ++result[1];
  }
}

uint64_t details::device_operations_t::flush(int a1, int a2, int a3)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  if (a3)
  {
    if (a3 != 2)
    {
      v3 = fsync(a2);
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v6) = 2;
  }

  v3 = ioctl(a2, 0x80186416uLL, v5);
LABEL_6:
  if (v3 == -1)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

uint64_t FileLocal::disable_file_zero_padding(FileLocal *this)
{
  if (FileDescriptor::is_mounted_on_apfs(*(this + 5)))
  {
    v4 = 0x200000001;
    if (ffsctl(**(this + 7), 0xC0084A80uLL, &v4, 0))
    {
      *&v5 = "int FileLocal::disable_file_zero_padding() const";
      *(&v5 + 1) = 40;
      v6 = 0;
      di_log::logger<di_log::log_printer<408ul>>::logger(v7, &v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Zero padding cannot be disabled from this process (res=", 55);
      v2 = __error();
      MEMORY[0x24C1ED390](&v8, *v2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ")", 1);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(v7);
      MEMORY[0x24C1ED6A0](v9);
      return -*__error();
    }

    else
    {
      *&v5 = "int FileLocal::disable_file_zero_padding() const";
      *(&v5 + 1) = 40;
      v6 = 0;
      di_log::logger<di_log::log_printer<412ul>>::logger(v7, &v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Zero padding disabled successfully on fd ", 41);
      MEMORY[0x24C1ED390](&v8, **(this + 7));
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(v7);
      MEMORY[0x24C1ED6A0](v9);
      return 0;
    }
  }

  else
  {
    *&v5 = "int FileLocal::disable_file_zero_padding() const";
    *(&v5 + 1) = 40;
    v6 = 0;
    di_log::logger<di_log::log_printer<394ul>>::logger(v7, &v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Backend is not mounted on APFS", 30);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(v7);
    MEMORY[0x24C1ED6A0](v9);
    return 4294967251;
  }
}

void sub_248F5997C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  di_log::logger<di_log::log_printer<412ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<394ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<394ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFE9F8;
  a1[45] = &unk_285BFEAF8;
  a1[46] = &unk_285BFEB20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFE9F8;
  a1[45] = &unk_285BFEA80;
  a1[46] = &unk_285BFEAA8;
  return a1;
}

void sub_248F59AB4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<394ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<394ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<408ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<408ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFEC18;
  a1[45] = &unk_285BFED18;
  a1[46] = &unk_285BFED40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFEC18;
  a1[45] = &unk_285BFECA0;
  a1[46] = &unk_285BFECC8;
  return a1;
}

void sub_248F59C20(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<408ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<408ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<412ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<412ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFEE38;
  a1[45] = &unk_285BFEF38;
  a1[46] = &unk_285BFEF60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFEE38;
  a1[45] = &unk_285BFEEC0;
  a1[46] = &unk_285BFEEE8;
  return a1;
}

void sub_248F59D8C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<412ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<412ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void FileLocal::shared_state_t::init_unmap_zeros(FileLocal::shared_state_t *this)
{
  v2 = (this + 152);
  v3 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<FileLocal::shared_state_t::init_unmap_zeros(void)::$_0 &&>>);
  }
}

void FileLocal::shared_state_t::create_ops(FileLocal::shared_state_t *this)
{
  v2 = *(this + 7);
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

uint64_t FileLocal::unlink_from(int a1, uint64_t *a2)
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

off_t FileLocal::get_file_size_from(int a1, const char *a2)
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
    std::ostringstream::basic_ostringstream[abi:ne200100](v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Cannot stat ", 12);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v6, v7);
    v8 = __error();
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v9, *v8);
  }

  return v10.st_size;
}

void sub_248F5A10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

ssize_t FileLocal::_write(uint64_t a1, uint64_t a2)
{
  v4 = pwrite(**(a1 + 56), *a2, *(a2 + 16), *(a2 + 24));
  v5 = v4;
  if (v4 < 0 || v4 != *(a2 + 16))
  {
    *&v12 = "int FileLocal::_write(const sg_entry &)";
    *(&v12 + 1) = 21;
    v13 = 16;
    di_log::logger<di_log::log_printer<494ul>>::logger(v14, &v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Error writing file @ ", 21);
    operator<<(&v15, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, ". returned ", 11);
    MEMORY[0x24C1ED3B0](&v15, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " with errno: ", 13);
    v10 = __error();
    MEMORY[0x24C1ED390](&v15, *v10);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(v14);
    MEMORY[0x24C1ED6A0](&v16);
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

void sub_248F5A2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<494ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<494ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<494ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFF058;
  a1[45] = &unk_285BFF158;
  a1[46] = &unk_285BFF180;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFF058;
  a1[45] = &unk_285BFF0E0;
  a1[46] = &unk_285BFF108;
  return a1;
}

void sub_248F5A404(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<494ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<494ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileLocal::_read(uint64_t a1, void *a2)
{
  v3 = (***(*(a1 + 40) + 72))(*(*(a1 + 40) + 72), **(a1 + 56), *a2, a2[2], a2[3]);
  v4 = v3;
  if (v3 < 0 || v3 != a2[2])
  {
    *&v7 = "int FileLocal::_read(const sg_entry &)";
    *(&v7 + 1) = 20;
    v8 = 16;
    di_log::logger<di_log::log_printer<509ul>>::logger(v9, &v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Error reading file @ ", 21);
    operator<<(&v10, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ". returned ", 11);
    MEMORY[0x24C1ED3B0](&v10, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " with errno: ", 13);
    v5 = __error();
    MEMORY[0x24C1ED390](&v10, *v5);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(v9);
    MEMORY[0x24C1ED6A0](&v11);
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

void sub_248F5A5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<509ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<509ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<509ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFF278;
  a1[45] = &unk_285BFF378;
  a1[46] = &unk_285BFF3A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFF278;
  a1[45] = &unk_285BFF300;
  a1[46] = &unk_285BFF328;
  return a1;
}

void sub_248F5A6D8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<509ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<509ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileLocal::truncate(FileLocal *this, unint64_t a2)
{
  v4 = *(this + 5);
  if (*(v4 + 28))
  {
    v5 = *(v4 + 16);
    if (v5 < a2)
    {
      *&v13 = "int FileLocal::truncate(uint64_t)";
      *(&v13 + 1) = 23;
      v14 = 16;
      di_log::logger<di_log::log_printer<521ul>>::logger(v15, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Cannot increase size of a block device", 38);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(v15);
      MEMORY[0x24C1ED6A0](v17);
      return 4294967268;
    }

    if (v5 > a2)
    {
      *&v13 = "int FileLocal::truncate(uint64_t)";
      *(&v13 + 1) = 23;
      v14 = 0;
      di_log::logger<di_log::log_printer<524ul>>::logger(v15, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Ignoring truncate on block device", 33);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<524ul>>::~logger_buf(v15);
      MEMORY[0x24C1ED6A0](v17);
    }

    goto LABEL_12;
  }

  v7 = (*(*this + 40))(this);
  if (v7 < a2)
  {
    __buf = 0;
    v8 = pwrite(**(this + 7), &__buf, 1uLL, a2 - 1);
    if (v8 != 1)
    {
      v9 = v8;
      *&v13 = "int FileLocal::truncate(uint64_t)";
      *(&v13 + 1) = 23;
      v14 = 16;
      di_log::logger<di_log::log_printer<535ul>>::logger(v15, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Failed to increase file size, pwrite returned ", 46);
      MEMORY[0x24C1ED3B0](&v16, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " errno: ", 8);
      v10 = __error();
      MEMORY[0x24C1ED390](&v16, *v10);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(v15);
      MEMORY[0x24C1ED6A0](v17);
      if (v9 != -1)
      {
        return 4294967291;
      }

      return -*__error();
    }

LABEL_12:
    result = 0;
    atomic_store(a2, (*(this + 5) + 64));
    return result;
  }

  if (v7 <= a2 || ftruncate(**(this + 7), a2) != -1)
  {
    goto LABEL_12;
  }

  *&v13 = "int FileLocal::truncate(uint64_t)";
  *(&v13 + 1) = 23;
  v14 = 16;
  di_log::logger<di_log::log_printer<540ul>>::logger(v15, &v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "ftruncate failed, errno: ", 25);
  v11 = __error();
  MEMORY[0x24C1ED390](&v16, *v11);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(v15);
  MEMORY[0x24C1ED6A0](v17);
  return -*__error();
}

void sub_248F5A9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  di_log::logger<di_log::log_printer<540ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<521ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<521ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFF498;
  a1[45] = &unk_285BFF598;
  a1[46] = &unk_285BFF5C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFF498;
  a1[45] = &unk_285BFF520;
  a1[46] = &unk_285BFF548;
  return a1;
}

void sub_248F5AB3C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<521ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<521ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<535ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<535ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFF6B8;
  a1[45] = &unk_285BFF7B8;
  a1[46] = &unk_285BFF7E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFF6B8;
  a1[45] = &unk_285BFF740;
  a1[46] = &unk_285BFF768;
  return a1;
}

void sub_248F5ACA8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<535ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<535ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<540ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<540ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFF8D8;
  a1[45] = &unk_285BFF9D8;
  a1[46] = &unk_285BFFA00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFF8D8;
  a1[45] = &unk_285BFF960;
  a1[46] = &unk_285BFF988;
  return a1;
}

void sub_248F5AE14(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<540ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<540ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t FileLocal::flush(uint64_t a1, uint64_t a2)
{
  if (DIDebugLogsEnabled())
  {
    *&v12 = "int FileLocal::flush(di_flush_mode)";
    *(&v12 + 1) = 20;
    v13 = 2;
    di_log::logger<di_log::log_printer<552ul>>::logger(v14, &v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Calling ", 8);
    operator<<(&v15, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " on ", 4);
    operator<<(&v15, a1);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(v14);
    MEMORY[0x24C1ED6A0](v16);
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
      if (DIDebugLogsEnabled())
      {
        *&v12 = "int FileLocal::flush(di_flush_mode)";
        *(&v12 + 1) = 20;
        v13 = 2;
        di_log::logger<di_log::log_printer<563ul>>::logger(v14, &v12);
        operator<<(&v15, a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " is not supported", 17);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(v14);
        MEMORY[0x24C1ED6A0](v16);
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
      *&v12 = "int FileLocal::flush(di_flush_mode)";
      *(&v12 + 1) = 20;
      v13 = 0;
      di_log::logger<di_log::log_printer<570ul>>::logger(v14, &v12);
      operator<<(&v15, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " is not supported (err code ", 28);
      v11 = __error();
      MEMORY[0x24C1ED390](&v15, *v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, ")", 1);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(v14);
      MEMORY[0x24C1ED6A0](v16);
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
    *&v12 = "int FileLocal::flush(di_flush_mode)";
    *(&v12 + 1) = 20;
    v13 = 16;
    di_log::logger<di_log::log_printer<580ul>>::logger(v14, &v12);
    operator<<(&v15, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " failed wih error ", 18);
    MEMORY[0x24C1ED390](&v15, v5);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<580ul>>::~logger_buf(v14);
    MEMORY[0x24C1ED6A0](v16);
  }

  return v5;
}

void sub_248F5B224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<563ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<552ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<552ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFFAF8;
  a1[45] = &unk_285BFFBF8;
  a1[46] = &unk_285BFFC20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFFAF8;
  a1[45] = &unk_285BFFB80;
  a1[46] = &unk_285BFFBA8;
  return a1;
}

void sub_248F5B36C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<552ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<552ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<563ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<563ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFFD18;
  a1[45] = &unk_285BFFE18;
  a1[46] = &unk_285BFFE40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFFD18;
  a1[45] = &unk_285BFFDA0;
  a1[46] = &unk_285BFFDC8;
  return a1;
}

void sub_248F5B4D8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<563ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<563ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<570ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<570ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFFF38;
  a1[45] = &unk_285C00038;
  a1[46] = &unk_285C00060;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFFF38;
  a1[45] = &unk_285BFFFC0;
  a1[46] = &unk_285BFFFE8;
  return a1;
}

void sub_248F5B644(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<570ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<570ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<580ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<580ul>>::logger_buf(a1, a2);
  *a1 = &unk_285C00158;
  a1[45] = &unk_285C00258;
  a1[46] = &unk_285C00280;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285C00158;
  a1[45] = &unk_285C001E0;
  a1[46] = &unk_285C00208;
  return a1;
}