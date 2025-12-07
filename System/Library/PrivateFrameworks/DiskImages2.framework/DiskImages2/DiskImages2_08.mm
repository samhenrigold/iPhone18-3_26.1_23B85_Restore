char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if (*v12 >= *a1)
        {
          v14 = 1;
        }

        else
        {
          v14 = -1;
        }

        if (*v12 == *a1)
        {
          v15 = *(v12 + 1);
          v16 = *(a1 + 1);
          v17 = v15 == v16;
          v14 = v15 >= v16 ? 1 : -1;
          if (v17)
          {
            v14 = 0;
          }
        }

        if (v14 < 0)
        {
          v18 = *(v12 + 1);
          v19 = *(a1 + 1);
          *v12 = *a1;
          *(v12 + 1) = v19;
          *a1 = v13;
          *(a1 + 1) = v18;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v20 = a2 - 16;
      do
      {
        v22 = *a1;
        v21 = *(a1 + 1);
        v23 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(a1, a4, v8);
        if (v20 == v23)
        {
          *v23 = v22;
          *(v23 + 1) = v21;
        }

        else
        {
          *v23 = *v20;
          *v20 = v22;
          *(v20 + 1) = v21;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(a1, (v23 + 16), a4, (v23 + 16 - a1) >> 4);
        }

        v20 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        v11 = *v8 == v10;
        if (*v8 >= v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }

        if (v11)
        {
          v13 = v8[1];
          v14 = v8[3];
          v15 = v13 >= v14;
          v16 = v13 == v14;
          v12 = -1;
          if (v15)
          {
            v12 = 1;
          }

          if (v16)
          {
            v12 = 0;
          }
        }

        if (v12 < 0)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v17 = *v8;
      v18 = *a4;
      v19 = -1;
      if (*v8 >= *a4)
      {
        v19 = 1;
      }

      if (*v8 == *a4)
      {
        v20 = v8[1];
        v21 = a4[1];
        v15 = v20 >= v21;
        v22 = v20 == v21;
        v19 = -1;
        if (v15)
        {
          v19 = 1;
        }

        if (v22)
        {
          v19 = 0;
        }
      }

      if ((v19 & 0x80) == 0)
      {
        v23 = a4[1];
        do
        {
          v24 = a4;
          a4 = v8;
          v25 = v8[1];
          *v24 = v17;
          v24[1] = v25;
          if (v5 < v7)
          {
            break;
          }

          v26 = (2 * v7) | 1;
          v8 = (result + 16 * v26);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v7 = v26;
          }

          else
          {
            v27 = v8[2];
            v28 = *v8 == v27;
            if (*v8 >= v27)
            {
              v29 = 1;
            }

            else
            {
              v29 = -1;
            }

            if (v28)
            {
              v30 = v8[1];
              v31 = v8[3];
              v32 = v30 == v31;
              v29 = v30 >= v31 ? 1 : -1;
              if (v32)
              {
                v29 = 0;
              }
            }

            if (v29 < 0)
            {
              v8 += 2;
            }

            else
            {
              v7 = v26;
            }
          }

          v17 = *v8;
          if (*v8 >= v18)
          {
            v33 = 1;
          }

          else
          {
            v33 = -1;
          }

          if (*v8 == v18)
          {
            v34 = v8[1];
            v35 = v34 == v23;
            if (v34 >= v23)
            {
              v33 = 1;
            }

            else
            {
              v33 = -1;
            }

            if (v35)
            {
              v33 = 0;
            }
          }
        }

        while ((v33 & 0x80) == 0);
        *a4 = v18;
        a4[1] = v23;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3];
    v5 = v4 + 2;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = v4 + 4;
      v8 = v4[4];
      v9 = v4[2];
      v10 = v9 == v8;
      if (v9 >= v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = -1;
      }

      if (v10)
      {
        v12 = v4[3];
        v13 = v4[5];
        v14 = v12 == v13;
        if (v12 >= v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        if (v14)
        {
          v11 = 0;
        }

        else
        {
          v11 = v15;
        }
      }

      if (v11 < 0)
      {
        v5 = v7;
      }

      else
      {
        v3 = v6;
      }
    }

    *a1 = *v5;
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 16 * v4);
    v6 = (a2 - 16);
    v7 = *(a2 - 16);
    v8 = *v5;
    v9 = -1;
    if (*v5 >= v7)
    {
      v9 = 1;
    }

    if (*v5 == v7)
    {
      v10 = v5[1];
      v11 = *(a2 - 8);
      v12 = v10 >= v11;
      v13 = v10 == v11;
      v9 = -1;
      if (v12)
      {
        v9 = 1;
      }

      if (v13)
      {
        v9 = 0;
      }
    }

    if (v9 < 0)
    {
      v14 = *(a2 - 8);
      do
      {
        v15 = v6;
        v6 = v5;
        v16 = v5[1];
        *v15 = v8;
        v15[1] = v16;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 16 * v4);
        v8 = *v5;
        if (*v5 >= v7)
        {
          v17 = 1;
        }

        else
        {
          v17 = -1;
        }

        if (*v5 == v7)
        {
          v18 = v5[1];
          v19 = v18 == v14;
          if (v18 >= v14)
          {
            v17 = 1;
          }

          else
          {
            v17 = -1;
          }

          if (v19)
          {
            v17 = 0;
          }
        }
      }

      while (v17 < 0);
      *v6 = v7;
      v6[1] = v14;
    }
  }

  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<213ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<213ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<213ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<213ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<213ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE9098;
  di_log::logger_buf<di_log::log_printer<213ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<213ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<213ul>::log((a1 + 72), __p);
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

void sub_248EABC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<213ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 213;
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
      v26 = 213;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<218ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<218ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<218ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<218ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<218ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE92B8;
  di_log::logger_buf<di_log::log_printer<218ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<218ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<218ul>::log((a1 + 72), __p);
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

void sub_248EAC3A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<218ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<218ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 218;
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
      v26 = 218;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<222ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<222ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<222ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<222ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<222ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<222ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<222ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<222ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<222ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<222ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<222ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE94D8;
  di_log::logger_buf<di_log::log_printer<222ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<222ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<222ul>::log((a1 + 72), __p);
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

void sub_248EACB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<222ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<222ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<222ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 222;
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
      v26 = 222;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<231ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<231ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<231ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<231ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<231ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<231ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<231ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<231ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<231ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<231ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<231ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE96F8;
  di_log::logger_buf<di_log::log_printer<231ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<231ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<231ul>::log((a1 + 72), __p);
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

void sub_248EAD2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<231ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<231ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<231ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 231;
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
      v26 = 231;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<235ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<235ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<235ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<235ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<235ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<235ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<235ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<235ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<235ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<235ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<235ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE9918;
  di_log::logger_buf<di_log::log_printer<235ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<235ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<235ul>::log((a1 + 72), __p);
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

void sub_248EADA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<235ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<235ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<235ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 235;
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
      v26 = 235;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<237ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<237ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<237ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<237ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<237ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<237ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<237ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<237ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<237ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<237ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<237ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE9B38;
  di_log::logger_buf<di_log::log_printer<237ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<237ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<237ul>::log((a1 + 72), __p);
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

void sub_248EAE208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<237ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<237ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<237ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 237;
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
      v26 = 237;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<284ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<284ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<284ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<284ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<284ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<284ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<284ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<284ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<284ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<284ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<284ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE9D58;
  di_log::logger_buf<di_log::log_printer<284ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<284ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<284ul>::log((a1 + 72), __p);
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

void sub_248EAE9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<284ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<284ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<284ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 284;
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
      v26 = 284;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<295ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<295ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<295ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<295ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<295ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<295ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<295ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<295ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<295ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<295ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<295ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BE9F78;
  di_log::logger_buf<di_log::log_printer<295ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<295ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<295ul>::log((a1 + 72), __p);
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

void sub_248EAF138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<295ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<295ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<295ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 295;
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
      v26 = 295;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *di_log::logger<di_log::log_printer<246ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<246ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEA000;
  a1[45] = &unk_285BEA100;
  a1[46] = &unk_285BEA128;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEA000;
  a1[45] = &unk_285BEA088;
  a1[46] = &unk_285BEA0B0;
  return a1;
}

void sub_248EAF484(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<246ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<246ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<246ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<246ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEA198;
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

void sub_248EAF59C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<246ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEA198;
  di_log::logger_buf<di_log::log_printer<246ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<246ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<246ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<246ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<246ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<246ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<246ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<246ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<246ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<246ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<246ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<246ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<246ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<246ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<246ul>::log((a1 + 72), __p);
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

void sub_248EAFB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<246ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 246;
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
      v26 = 246;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<387ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<387ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<387ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<387ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<387ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<387ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<387ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<387ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<387ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<387ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<387ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEA3B8;
  di_log::logger_buf<di_log::log_printer<387ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<387ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<387ul>::log((a1 + 72), __p);
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

void sub_248EB029C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<387ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<387ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<387ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 387;
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
      v26 = 387;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<390ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<390ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<390ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<390ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<390ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<390ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<390ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<390ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<390ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<390ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<390ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEA5D8;
  di_log::logger_buf<di_log::log_printer<390ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<390ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<390ul>::log((a1 + 72), __p);
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

void sub_248EB0A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<390ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<390ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<390ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 390;
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
      v26 = 390;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void DiskImagesRuntimeException::DiskImagesRuntimeException(DiskImagesRuntimeException *this, const DiskImagesRuntimeException *a2)
{
  *this = &unk_285BF4E60;
  *(this + 8) = *(a2 + 8);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 1, (a2 + 24));
  *(this + 7) = *(a2 + 7);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_248EB0D20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void non-virtual thunk todi_log::logger<di_log::log_printer<434ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<434ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<434ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<434ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<434ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<434ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<434ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<434ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<434ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<434ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<434ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEA7F8;
  di_log::logger_buf<di_log::log_printer<434ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<434ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<434ul>::log((a1 + 72), __p);
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

void sub_248EB12F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<434ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<434ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<434ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 434;
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
      v26 = 434;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<443ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<443ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<443ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<443ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<443ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<443ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<443ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<443ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<443ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<443ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<443ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEAA18;
  di_log::logger_buf<di_log::log_printer<443ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<443ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<443ul>::log((a1 + 72), __p);
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

void sub_248EB1A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<443ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<443ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<443ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 443;
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
      v26 = 443;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<460ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<460ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<460ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<460ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<460ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<460ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<460ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<460ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<460ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<460ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<460ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEAC38;
  di_log::logger_buf<di_log::log_printer<460ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<460ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<460ul>::log((a1 + 72), __p);
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

void sub_248EB2224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<460ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<460ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<460ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 460;
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
      v26 = 460;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<469ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<469ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<469ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<469ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<469ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<469ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<469ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<469ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<469ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<469ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<469ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEAE58;
  di_log::logger_buf<di_log::log_printer<469ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<469ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<469ul>::log((a1 + 72), __p);
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

void sub_248EB29BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<469ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<469ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<469ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 469;
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
      v26 = 469;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<492ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<492ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<492ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<492ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<492ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<492ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<492ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<492ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<492ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<492ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<492ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEB078;
  di_log::logger_buf<di_log::log_printer<492ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<492ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<492ul>::log((a1 + 72), __p);
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

void sub_248EB3154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<492ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<492ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<492ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 492;
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
      v26 = 492;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<498ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<498ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<498ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<498ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<498ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<498ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<498ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<498ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<498ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<498ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<498ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEB298;
  di_log::logger_buf<di_log::log_printer<498ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<498ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<498ul>::log((a1 + 72), __p);
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

void sub_248EB38EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<498ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<498ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<498ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 498;
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
      v26 = 498;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<505ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<505ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<505ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<505ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<505ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<505ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<505ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<505ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<505ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<505ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<505ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEB4B8;
  di_log::logger_buf<di_log::log_printer<505ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<505ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<505ul>::log((a1 + 72), __p);
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

void sub_248EB4084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<505ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<505ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<505ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 505;
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
      v26 = 505;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<511ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<511ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<511ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<511ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<511ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<511ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<511ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<511ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<511ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<511ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<511ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEB6D8;
  di_log::logger_buf<di_log::log_printer<511ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<511ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<511ul>::log((a1 + 72), __p);
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

void sub_248EB481C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<511ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<511ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<511ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 511;
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
      v26 = 511;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<523ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<523ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<523ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<523ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<523ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<523ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<523ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<523ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<523ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<523ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<523ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEB8F8;
  di_log::logger_buf<di_log::log_printer<523ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<523ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<523ul>::log((a1 + 72), __p);
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

void sub_248EB4FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<523ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<523ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<523ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 523;
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
      v26 = 523;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

DiskImageSparseBundle::ContextSparseBundle *DiskImageSparseBundle::ContextSparseBundle::ContextSparseBundle(DiskImageSparseBundle::ContextSparseBundle *this, DiskImageSparseBundle *a2)
{
  *this = &unk_285BEB978;
  *(this + 1) = a2;
  std::vector<std::shared_ptr<sparse_bundles::Band::ContextBand>>::vector[abi:ne200100](this + 2, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 90) - *(a2 + 89)) >> 3));
  if (DIDebugLogsEnabled())
  {
    *&v4 = "DiskImageSparseBundle::ContextSparseBundle::ContextSparseBundle(DiskImageSparseBundle &)";
    *(&v4 + 1) = 63;
    v5 = 2;
    di_log::logger<di_log::log_printer<37ul>>::logger(v6, &v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Constructing sb context", 23);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<37ul>>::~logger_buf(v6);
    MEMORY[0x24C1ED6A0](&v8);
  }

  return this;
}

void sub_248EB52DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<37ul>>::~logger(va);
  std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<37ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<37ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEB9D8;
  a1[45] = &unk_285BEBAD8;
  a1[46] = &unk_285BEBB00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEB9D8;
  a1[45] = &unk_285BEBA60;
  a1[46] = &unk_285BEBA88;
  return a1;
}

void sub_248EB540C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<37ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<37ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<37ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void DiskImageSparseBundle::ContextSparseBundle::~ContextSparseBundle(DiskImageSparseBundle::ContextSparseBundle *this)
{
  DiskImageSparseBundle::ContextSparseBundle::~ContextSparseBundle(this);

  JUMPOUT(0x24C1ED730);
}

{
  *this = &unk_285BEB978;
  if (DIDebugLogsEnabled())
  {
    *&v2 = "DiskImageSparseBundle::ContextSparseBundle::~ContextSparseBundle()";
    *(&v2 + 1) = 64;
    v3 = 2;
    di_log::logger<di_log::log_printer<41ul>>::logger(v4, &v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "Destructing sb context", 22);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<41ul>>::~logger_buf(v4);
    MEMORY[0x24C1ED6A0](&v6);
  }

  v4[0] = (this + 16);
  std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](v4);
}

uint64_t *std::vector<std::shared_ptr<sparse_bundles::Band::ContextBand>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::shared_ptr<LockableResource>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<37ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEBB70;
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

void sub_248EB55E0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<37ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEBB70;
  di_log::logger_buf<di_log::log_printer<37ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<37ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<37ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<37ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<37ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<37ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<37ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<37ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<37ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<37ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<37ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<37ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<37ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<37ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<37ul>::log((a1 + 72), __p);
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

void sub_248EB5B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<37ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 37;
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
      v26 = 37;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *di_log::logger<di_log::log_printer<41ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<41ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEBBF8;
  a1[45] = &unk_285BEBCF8;
  a1[46] = &unk_285BEBD20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEBBF8;
  a1[45] = &unk_285BEBC80;
  a1[46] = &unk_285BEBCA8;
  return a1;
}

void sub_248EB5F60(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<41ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<41ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<41ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<41ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEBD90;
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

void sub_248EB6078(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<41ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEBD90;
  di_log::logger_buf<di_log::log_printer<41ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<41ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<41ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<41ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<41ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<41ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<41ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<41ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<41ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<41ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<41ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<41ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<41ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<41ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<41ul>::log((a1 + 72), __p);
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

void sub_248EB661C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<41ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 41;
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
      v26 = 41;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<46ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE7D78;
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

void sub_248EB68D8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<59ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE7F98;
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

void sub_248EB69A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<80ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE81B8;
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

void sub_248EB6A68(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<107ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE83D8;
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

void sub_248EB6B30(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<111ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE85F8;
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

void sub_248EB6BF8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<154ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE8818;
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

void sub_248EB6CC0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<165ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE8A38;
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

void sub_248EB6D88(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<190ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE8C58;
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

void sub_248EB6E50(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<194ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE8E78;
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

void sub_248EB6F18(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void boost::container::vector<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>*,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>>>(char **a1@<X0>, char *a2@<X1>, void *a3@<X8>, const char *a4@<X2>, _OWORD *a5@<X3>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a4);
  if (v11 >> 59)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(16 * v11);
  boost::container::vector<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>*,std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>>>(a1, v14, v13, a2, a4, a5);
  *a3 = &(*a1)[a2 - v10];
}

const char *boost::container::vector_alloc_holder<boost::container::small_vector_allocator<std::pair<std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,unsigned long>,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, const char *a2)
{
  v2 = 0x7FFFFFFFFFFFFFFLL;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x7FFFFFFFFFFFFFFLL - v4 < &a2[v3 - v4])
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
  if (v8 < 0x7FFFFFFFFFFFFFFLL)
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

uint64_t di_log::logger_buf<di_log::log_printer<213ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE9098;
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

void sub_248EB70F4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<218ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE92B8;
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

void sub_248EB71BC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<222ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE94D8;
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

void sub_248EB7284(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<231ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE96F8;
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

void sub_248EB734C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<235ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE9918;
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

void sub_248EB7414(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<237ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE9B38;
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

void sub_248EB74DC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<284ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE9D58;
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

void sub_248EB75A4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<295ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BE9F78;
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

void sub_248EB766C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<DiskImageSparseBundle::void_stackable_identifier(void)::$_0 &&>>(di_utils *a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = *(*v1 + 560);
  *(v3 + 160) = di_utils::random_uuid(a1);
  *(v3 + 168) = v4;
  SparseBundleBackend::write_info_plists(*(v2 + 560));
}

void sub_248EB76D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a2 == 1)
  {
    v58 = __cxa_begin_catch(exception_object);
    *&a9 = "DiskImageSparseBundle::void_stackable_identifier()::(anonymous class)::operator()() const";
    *(&a9 + 1) = 81;
    a11 = 16;
    di_log::logger<di_log::log_printer<307ul>>::logger(&a13, &a9);
    operator<<(&a58, v58);
    di_log::logger<di_log::log_printer<307ul>>::~logger(&a13);
    v59 = v58[2];
    if (v59 >= 0)
    {
      v59 = -v59;
    }

    **(v57 + 8) = v59;
    __cxa_end_catch();
    JUMPOUT(0x248EB76BCLL);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<307ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<307ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEBE18;
  a1[45] = &unk_285BEBF18;
  a1[46] = &unk_285BEBF40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEBE18;
  a1[45] = &unk_285BEBEA0;
  a1[46] = &unk_285BEBEC8;
  return a1;
}

void sub_248EB786C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<307ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<307ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<307ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<307ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEBFB0;
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

void sub_248EB7984(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<307ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEBFB0;
  di_log::logger_buf<di_log::log_printer<307ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<307ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<307ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<307ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<307ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<307ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<307ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<307ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<307ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<307ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<307ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<307ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<307ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<307ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<307ul>::log((a1 + 72), __p);
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

void sub_248EB7F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<307ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 307;
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
      v26 = 307;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t boost::icl::cardinality<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>>(void *a1)
{
  v1 = boost::icl::identity_element<unsigned long>::value(void)::_value;
  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v4 = boost::icl::cardinality<boost::icl::discrete_interval<unsigned long long,std::less>>((v3 + 4));
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

      v1 += v4;
      v3 = v6;
    }

    while (v6 != v2);
  }

  return v1;
}

unint64_t boost::icl::cardinality<boost::icl::discrete_interval<unsigned long long,std::less>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v1 == 3)
    {
      if (v2 < v3)
      {
        return boost::icl::identity_element<unsigned long>::value(void)::_value;
      }
    }

    else if (v3 >= v2)
    {
      return boost::icl::identity_element<unsigned long>::value(void)::_value;
    }
  }

  else if (v3 >= v2 || v3 + 1 >= v2)
  {
    return boost::icl::identity_element<unsigned long>::value(void)::_value;
  }

  return v2 + (v1 & 1) - v3 + (((v1 >> 1) & 1) - 1);
}

uint64_t di_log::logger_buf<di_log::log_printer<387ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEA3B8;
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

void sub_248EB82C8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<390ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEA5D8;
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

void sub_248EB8390(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<434ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEA7F8;
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

void sub_248EB8458(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<443ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEAA18;
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

void sub_248EB8520(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<460ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEAC38;
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

void sub_248EB85E8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *std::set<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::insert[abi:ne200100]<std::__tree_const_iterator<boost::icl::discrete_interval<unsigned long long,std::less>,std::__tree_node<boost::icl::discrete_interval<unsigned long long,std::less>,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::insert[abi:ne200100]<std::__tree_const_iterator<boost::icl::discrete_interval<unsigned long long,std::less>,std::__tree_node<boost::icl::discrete_interval<unsigned long long,std::less>,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::__emplace_hint_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::discrete_interval<unsigned long long,std::less> const&>(v5, (v5 + 8), (v4 + 4), (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::__emplace_hint_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::discrete_interval<unsigned long long,std::less> const&>(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t di_log::logger_buf<di_log::log_printer<469ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEAE58;
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

void sub_248EB8830(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::erase(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__remove_node_pointer(a1, v4);
      operator delete(v4);
      v4 = v6;
    }

    while (v6 != a3);
  }

  return a3;
}

void *boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>::add_over(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v5 = boost::icl::segmental::join_under<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>>(a1, a2, a3);
  boost::icl::segmental::join_left<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>>(a1, &v5);
  return boost::icl::segmental::join_right<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>>(a1, &v5);
}

uint64_t std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::__emplace_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::discrete_interval<unsigned long long,std::less> const&>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *boost::icl::segmental::join_left<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>>(uint64_t **a1, uint64_t **a2)
{
  v2 = *a2;
  if (*a2 == *a1)
  {
    return *a1;
  }

  v4 = *v2;
  if (*v2)
  {
    do
    {
      v5 = v4;
      v4 = *(v4 + 8);
    }

    while (v4);
  }

  else
  {
    v6 = *a2;
    do
    {
      v5 = *(v6 + 16);
      v7 = *v5 == v6;
      v6 = v5;
    }

    while (v7);
  }

  v8 = *(v2 + 32);
  if ((*(v2 + 48) & 2) == 0)
  {
    ++v8;
  }

  if (v8 == (*(v5 + 48) & 1) + *(v5 + 40))
  {
    v14 = *(v2 + 32);
    v15 = *(v2 + 48);
    std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__remove_node_pointer(a1, v2);
    operator delete(v2);
    v10 = *(v5 + 32);
    v11 = *(v5 + 48);
    boost::icl::hull<boost::icl::discrete_interval<unsigned long long,std::less>>(&v10, &v14, &v12);
    *(v5 + 32) = v12;
    *(v5 + 48) = v13;
    *a2 = v5;
    return v5;
  }

  return v2;
}

void *boost::icl::segmental::join_right<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>>(uint64_t **a1, uint64_t *a2)
{
  v5 = a1 + 1;
  result = *a2;
  if (*a2 == v5)
  {
    return v5;
  }

  v21 = v2;
  v22 = v3;
  v8 = result[1];
  if (v8)
  {
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    v10 = result;
    do
    {
      v9 = v10[2];
      v11 = *v9 == v10;
      v10 = v9;
    }

    while (!v11);
  }

  if (v9 != v5)
  {
    v12 = v9[4];
    if ((v9[6] & 2) == 0)
    {
      ++v12;
    }

    if (v12 == (result[6] & 1) + result[5])
    {
      v19 = *(v9 + 2);
      v20 = v9[6];
      std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__remove_node_pointer(a1, v9);
      operator delete(v9);
      v13 = *a2;
      v15 = *(*a2 + 32);
      v16 = v13[6];
      boost::icl::hull<boost::icl::discrete_interval<unsigned long long,std::less>>(&v15, &v19, &v17);
      v14 = *a2;
      *(v14 + 32) = v17;
      *(v14 + 48) = v18;
      return *a2;
    }
  }

  return result;
}

unint64_t *boost::icl::hull<boost::icl::discrete_interval<unsigned long long,std::less>>@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  v5 = *a2;
  v4 = a2[1];
  if (*(a2 + 16))
  {
    if (v3 == 3)
    {
      if (v4 < v5)
      {
LABEL_4:
        *a3 = *result;
        v6 = result[2];
LABEL_13:
        *(a3 + 16) = v6;
        return result;
      }
    }

    else if (v5 >= v4)
    {
      goto LABEL_4;
    }
  }

  else if (v5 >= v4 || v5 + 1 >= v4)
  {
    goto LABEL_4;
  }

  v8 = *(result + 16);
  v10 = *result;
  v9 = result[1];
  if (*(result + 16))
  {
    if (v8 == 3)
    {
      if (v9 < v10)
      {
LABEL_12:
        *a3 = *a2;
        v6 = a2[2];
        goto LABEL_13;
      }
    }

    else if (v10 >= v9)
    {
      goto LABEL_12;
    }
  }

  else if (v10 >= v9 || v10 + 1 >= v9)
  {
    goto LABEL_12;
  }

  v12 = v8 & 2;
  if ((v8 & 2) != 0)
  {
    v13 = *result;
  }

  else
  {
    v13 = v10 + 1;
  }

  v14 = v3 & 2;
  if ((v3 & 2) != 0)
  {
    result = *a2;
  }

  else
  {
    result = (v5 + 1);
  }

  v15 = v8 & 1;
  v16 = v3 & 1;
  if (v13 >= result)
  {
    v12 = v14;
  }

  else
  {
    v5 = v10;
  }

  if (v9 + v15 - 1 >= v4 + v16 - 1)
  {
    v4 = v9;
    LOBYTE(v16) = v15;
  }

  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v16 | v12;
  return result;
}

uint64_t boost::icl::segmental::join_under<boost::icl::interval_set<unsigned long long,std::less,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>>(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v6 = std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::lower_bound[abi:ne200100]<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, a2);
  v7 = v6;
  v8 = *(v6 + 8);
  if (v8)
  {
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    v10 = v6;
    do
    {
      v9 = *(v10 + 16);
      v11 = *v9 == v10;
      v10 = v9;
    }

    while (!v11);
  }

  v12 = *(a3 + 8);
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
    v14 = a3;
    do
    {
      v13 = *(v14 + 16);
      v11 = *v13 == v14;
      v14 = v13;
    }

    while (!v11);
  }

  v19 = *(v6 + 32);
  v20 = *(v6 + 48);
  boost::icl::right_subtract<boost::icl::discrete_interval<unsigned long long,std::less>>(&v19, a2, &v21);
  v17 = *(a3 + 32);
  v18 = *(a3 + 48);
  boost::icl::left_subtract<boost::icl::discrete_interval<unsigned long long,std::less>>(&v17, a2, &v19);
  std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::erase(a1, v9, v13);
  v17 = v21;
  v18 = v22;
  boost::icl::hull<boost::icl::discrete_interval<unsigned long long,std::less>>(&v17, a2, v16);
  boost::icl::hull<boost::icl::discrete_interval<unsigned long long,std::less>>(v16, &v19, &v17);
  *(v7 + 32) = v17;
  *(v7 + 48) = v18;
  return v7;
}

uint64_t boost::icl::right_subtract<boost::icl::discrete_interval<unsigned long long,std::less>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 16);
  v4 = *result;
  v5 = *(result + 8);
  if (*(result + 16))
  {
    if (v3 == 3)
    {
      if (v5 < v4)
      {
        goto LABEL_27;
      }
    }

    else if (v4 >= v5)
    {
      goto LABEL_27;
    }
  }

  else if (v4 >= v5 || v4 + 1 >= v5)
  {
    goto LABEL_27;
  }

  v7 = *(a2 + 16);
  v8 = *a2;
  v9 = *(a2 + 8);
  if (!*(a2 + 16))
  {
    if (v8 >= v9 || v8 + 1 >= v9)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v7 != 3)
  {
    if (v8 < v9)
    {
      goto LABEL_23;
    }

LABEL_27:
    *a3 = *result;
    *(a3 + 16) = *(result + 16);
    return result;
  }

  if (v9 < v8)
  {
    goto LABEL_27;
  }

LABEL_23:
  v11 = (v3 & 1) + v5 - 1;
  if ((v7 & 2) != 0)
  {
    v12 = *a2;
  }

  else
  {
    v12 = v8 + 1;
  }

  if (v11 < v12)
  {
    goto LABEL_27;
  }

  *a3 = v4;
  *(a3 + 8) = v8;
  *(a3 + 16) = v3 & 2 | ((~v7 & 2) != 0);
  return result;
}

uint64_t boost::icl::left_subtract<boost::icl::discrete_interval<unsigned long long,std::less>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (v3 == 3)
    {
      if (v4 < v5)
      {
        goto LABEL_26;
      }
    }

    else if (v5 >= v4)
    {
      goto LABEL_26;
    }
  }

  else if (v5 >= v4 || v5 + 1 >= v4)
  {
    goto LABEL_26;
  }

  v7 = *(result + 16);
  v9 = *result;
  v8 = *(result + 8);
  if (!*(result + 16))
  {
    if (v9 >= v8 || v9 + 1 >= v8)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v7 != 3)
  {
    if (v9 < v8)
    {
      goto LABEL_23;
    }

LABEL_26:
    *a3 = *result;
    *(a3 + 16) = *(result + 16);
    return result;
  }

  if (v8 < v9)
  {
    goto LABEL_26;
  }

LABEL_23:
  if ((v7 & 2) == 0)
  {
    ++v9;
  }

  if ((v3 & 1) + v4 - 1 < v9)
  {
    goto LABEL_26;
  }

  *a3 = v4;
  *(a3 + 8) = v8;
  *(a3 + 16) = v7 & 1 | (2 * ((v3 & 1) == 0));
  return result;
}

uint64_t std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::lower_bound[abi:ne200100]<boost::icl::discrete_interval<unsigned long long,std::less>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = a1 + 8;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    if ((*(a2 + 16) & 2) == 0)
    {
      ++v5;
    }

    do
    {
      v6 = (*(v3 + 48) & 1) + *(v3 + 40) - 1;
      v7 = v6 >= v5;
      v8 = v6 < v5;
      if (v7)
      {
        result = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
  }

  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<492ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEB078;
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

void sub_248EB9034(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<498ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEB298;
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

void sub_248EB90FC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<505ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEB4B8;
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

void sub_248EB91C4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<511ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEB6D8;
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

void sub_248EB928C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<523ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEB8F8;
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

void sub_248EB9354(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

const void **details::copy_user_entry_to_resource(const __CFString *a1, void *a2, __CFDictionary *a3)
{
  TypeID = CFStringGetTypeID();
  if (a1)
  {
    v7 = TypeID;
    if (CFGetTypeID(a1) != TypeID)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v17 = CFGetTypeID(a1);
      goto LABEL_20;
    }
  }

  OSType = CFStringGetOSType(a1);
  if (OSType == 1651272568 || OSType == 1970628964 || OSType == 1886155636)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    v12 = "User data contains reserved key(s)";
LABEL_16:
    DiskImagesRuntimeException::DiskImagesRuntimeException(v11, v12, 0x16u);
    v15 = DiskImagesRuntimeException::~DiskImagesRuntimeException;
    goto LABEL_17;
  }

  v9 = CFDataGetTypeID();
  if (!a2)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    v12 = "Invalid user data content";
    goto LABEL_16;
  }

  v7 = v9;
  if (CFGetTypeID(a2) != v9)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v17 = CFGetTypeID(a2);
LABEL_20:
    v13 = cf::CFUtilException::CFUtilException(exception, v17, v7);
    v15 = cf::CFUtilException::~CFUtilException;
LABEL_17:
    __cxa_throw(v13, v14, v15);
  }

  std::string::basic_string[abi:ne200100]<0>(v22, "");
  LOBYTE(__p[0]) = 0;
  v21 = 0;
  udif::details::block_attributes::block_attributes(&v18, 80);
  udif::details::create_data_wrap_dict(v22, __p, 0, &v18, a2, &v24);
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  __p[0] = v24;
  v22[0] = CFArrayCreate(*MEMORY[0x277CBECE8], __p, 1, MEMORY[0x277CBF128]);
  CFDictionarySetValue(a3, a1, v22[0]);
  CFAutoRelease<__CFArray const*>::~CFAutoRelease(v22);
  return CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v24);
}

BOOL details::udif_verify::verify_checksums(details::udif_verify *this, const udif::checksum_type *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(this + 71);
  v3 = *(this + 1);
  v4 = *(this + 70);
  if (v4)
  {
    v21 = *(this + 6);
    LOBYTE(v4) = 1;
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  v5 = *(v3 + 72);
  v27 = *(v5 + 44);
  v5 = (v5 + 360);
  v6 = v5[5];
  v32 = v5[4];
  v33 = v6;
  v7 = v5[7];
  v34 = v5[6];
  v35 = v7;
  v8 = v5[1];
  v28 = *v5;
  v29 = v8;
  v9 = v5[3];
  v30 = v5[2];
  v10 = *(this + 9);
  v11 = *(this + 10);
  v12 = v2 == 0;
  v22 = v4;
  v31 = v9;
  *&v26 = udif::get_csum_any(&v27);
  *(&v26 + 1) = v13;
  if (v12)
  {
    if ((v22 & 1) == 0)
    {
      return 1;
    }

LABEL_29:
    v19 = udif::details::checksum::operator==((*(v3 + 72) + 80), &v21);
LABEL_30:
    std::string::basic_string[abi:ne200100]<0>(__p, "Data Fork");
    udif::details::UDIF_base::print_checksum_verification_status(v3, __p, &v21, (*(v3 + 72) + 80));
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    return v19;
  }

  v14 = *(v3 + 32);
  if (v14 == (v3 + 40) || v10 == v11)
  {
    goto LABEL_21;
  }

  v15 = 1;
  do
  {
    v25 = *v10;
    v15 = v15 && udif::details::checksum::operator==(v14 + 15, &v25);
    std::string::basic_string[abi:ne200100]<0>(__p, "BLX");
    udif::details::UDIF_base::print_checksum_verification_status(v3, __p, &v25, v14 + 15);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    v26 = *udif::master_checksum_add<checksum::Any<locks::None,checksum::None,checksum::CRC32>>(&v26, &v25);
    v16 = v14[1];
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = v14[2];
        v18 = *v17 == v14;
        v14 = v17;
      }

      while (!v18);
    }

    if (v17 == (v3 + 40))
    {
      break;
    }

    v10 = (v10 + 184);
    v14 = v17;
  }

  while (v10 != v11);
  if (v15)
  {
LABEL_21:
    v19 = udif::details::checksum::operator==(&v27, &v26);
  }

  else
  {
    v19 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Master checksum");
  udif::details::UDIF_base::print_checksum_verification_status(v3, __p, &v26, &v27);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22)
  {
    if (!v19)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  return v19;
}

void sub_248EB9854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t details::udif_verify::is_csum_data_none_type(uint64_t a1)
{
  v4 = 0;
  v3 = &v4;
  v1 = *(a1 + 12);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v3;
  (off_285BEC1E0[v1])(&v5, a1 + 4);
  return v4;
}

details::udif_verify *details::udif_verify::udif_verify(details::udif_verify *this, DiskImageUDIF *a2, const udif::details::UDIF_base *a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = (*(*a2 + 24))(a2);
  runs_iterator = udif::details::UDIF_base::create_runs_iterator(*(this + 1));
  *(this + 7) = v6;
  *(this + 3) = runs_iterator;
  *(this + 4) = v6;
  *(this + 5) = runs_iterator;
  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v7 = *(a3 + 9);
  v8 = *(this + 2) * *(a3 + 10);
  v11[0] = 0;
  v11[1] = v8;
  v12 = 2;
  details::udif_verify::create_csum_data<boost::iterators::transform_iterator<interval_map2set_it::$_0,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__tree_node<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,void *> *,long>>,boost::use_default,boost::use_default>>((this + 40), (this + 56), v11, (v7 + 80), this + 96);
  if (details::udif_verify::is_csum_data_none_type(this + 96))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  *(this + 71) = v9;
  *(this + 70) = details::udif_verify::is_csum_data_none_type(this + 96) ^ 1;
  return this;
}

void sub_248EB99D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void details::udif_verify::create_csum_data<boost::iterators::transform_iterator<interval_map2set_it::$_0,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__tree_node<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,void *> *,long>>,boost::use_default,boost::use_default>>(__int128 *a1@<X0>, const udif::checksum_type *a2@<X1>, uint64_t a3@<X2>, udif *a4@<X3>, uint64_t a5@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  csum_any = udif::get_csum_any(a4);
  *v12 = 850045863;
  v14[0] = 0;
  v14[1] = 0;
  memset(&v12[8], 0, 60);
  v13 = v14;
  v15 = *a1;
  v16 = v15;
  v17 = *a2;
  v19 = 0;
  v11 = v15;
  if (v15 != v17)
  {
    v11 = *(v15 + 32);
    if ((*(v15 + 48) & 2) == 0)
    {
      ++v11;
    }

    v18 = v11;
  }

  v20[0] = csum_any;
  v20[1] = v10;
  memset(&v21[8], 0, 60);
  v23[0] = 0;
  v23[1] = 0;
  *v21 = 850045863;
  v22 = v23;
  v24 = *a1;
  v25 = v24;
  v26 = *a2;
  v27 = v11;
  v28 = 0;
  v29 = 0;
  ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::ChecksumScheduler(a5, v20, a3);
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(&v22, v23[0]);
  std::mutex::~mutex(v21);
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(&v13, v14[0]);
  std::mutex::~mutex(v12);
}

void sub_248EB9B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::~ChecksumScheduler(va);
  ExecutionSchedulerSortedConsecutiveIt<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,locks::Std,boost::iterators::transform_iterator<interval_map2set_it::$_0,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__tree_node<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,void *> *,long>>,boost::use_default,boost::use_default>>::~ExecutionSchedulerSortedConsecutiveIt(&a9);
  _Unwind_Resume(a1);
}

uint64_t ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::~ChecksumScheduler(uint64_t a1)
{
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(a1 + 88, *(a1 + 96));
  std::mutex::~mutex((a1 + 16));
  return a1;
}

details::udif_verify *details::udif_verify::udif_verify(details::udif_verify *this, DiskImageUDIF *a2, const udif::details::UDIF_base *a3, char a4)
{
  *(details::udif_verify::udif_verify(this, a2, a3) + 71) = 4 * (a4 & 1);
  if ((a4 & 2) != 0)
  {
    v6 = details::udif_verify::is_csum_data_none_type(this + 96) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  *(this + 70) = v6;
  return this;
}

void details::udif_verify::~udif_verify(details::udif_verify *this)
{
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(this + 184, *(this + 24));
  std::mutex::~mutex((this + 112));
  v2 = (this + 72);
  std::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t details::udif_verify::populate_csum_data(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 == a2 + 1)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  do
  {
    details::udif_verify::create_csum_data<boost::iterators::transform_iterator<interval_map2set_it::$_0,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__tree_node<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,void *> *,long>>,boost::use_default,boost::use_default>>((a1 + 40), (a1 + 56), (v3 + 4), (v3 + 60), &v16);
    v6 = *(a1 + 80);
    if (v6 >= *(a1 + 88))
    {
      v10 = std::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::__emplace_back_slow_path<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>((a1 + 72), &v16);
    }

    else
    {
      *v6 = v16;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0u;
      *(v6 + 72) = 0;
      v7 = v21;
      *(v6 + 88) = v19;
      v8 = v20;
      *(v6 + 96) = v20;
      v9 = v6 + 96;
      *(v6 + 80) = v18;
      *(v6 + 16) = 850045863;
      *(v6 + 104) = v7;
      if (v7)
      {
        v8[2] = v9;
        v19 = &v20;
        v20 = 0;
        v21 = 0;
      }

      else
      {
        *(v6 + 88) = v9;
      }

      *(v6 + 112) = v22;
      *(v6 + 128) = v23;
      *(v6 + 144) = v24;
      *(v6 + 160) = v25;
      *(v6 + 168) = 0;
      *(v6 + 176) = v26;
      v10 = v6 + 184;
      *(a1 + 80) = v6 + 184;
    }

    *(a1 + 80) = v10;
    std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(&v19, v20);
    std::mutex::~mutex(&v17);
    v11 = *(v3 + 15);
    v12 = v11 == 10 || v11 == 0;
    if (v12)
    {
      v5 = v5;
    }

    else
    {
      v5 = 2;
    }

    v13 = v3[1];
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
        v14 = v3[2];
        v12 = *v14 == v3;
        v3 = v14;
      }

      while (!v12);
    }

    v3 = v14;
  }

  while (v14 != v2);
  return v5;
}

uint64_t details::udif_verify::create_execution_contexts@<X0>(details::udif_verify *this@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v15[1] = a2;
  result = ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::ContextAllocator(a5, a4);
  if (v5)
  {
    v9 = (*(**this + 144))();
    v15[0] = v9;
    v14 = 0uLL;
    if (!DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::is_simple(*this))
    {
      v10 = *(v9 + 48);
      v12 = *(v9 + 40);
      v13 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v9 + 16) != v9 + 24)
      {
        v11 = 1;
        std::allocate_shared[abi:ne200100]<BackendSG,std::allocator<BackendSG>,std::shared_ptr<Backend> const&,unsigned long &,int,BOOL,0>();
      }

      *(v9 + 56) = 0;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::emplace_back(a5, v15, &v14);
  }

  return result;
}

BOOL DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::is_simple(uint64_t a1)
{
  v1 = *(a1 + 168);
  v2 = (a1 + 176);
  if (v1 == (a1 + 176))
  {
    return 1;
  }

  do
  {
    get_sink_backend((v1 + 5), &v10);
    v3 = v1[5];
    v4 = v10;
    v5 = v3 == v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v3 != v4)
    {
      break;
    }

    v6 = v1[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      do
      {
        v7 = v1[2];
        v8 = *v7 == v1;
        v1 = v7;
      }

      while (!v8);
    }

    v1 = v7;
  }

  while (v7 != v2);
  return v5;
}

void DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF::modify_backend_for_type(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v8 = a2;
  v4 = std::__tree<std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,std::shared_ptr<Backend>>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,std::shared_ptr<Backend>>>>::__emplace_unique_key_args<udif::run_type,std::piecewise_construct_t const&,std::tuple<udif::run_type const&>,std::tuple<>>(a1 + 16, a2, &std::piecewise_construct, &v8);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

uint64_t details::udif_verify::calculate_checksums(int32x2_t *this, workqueue::workqueue *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  resources = system_properties::get_resources(this);
  v32 = (*(**this + 24))();
  v5 = (*(**this + 80))(v44);
  if (v44[0].__cv_.__sig <= resources[2] / v32 * v32)
  {
    sig = resources[2] / v32 * v32;
  }

  else
  {
    sig = v44[0].__cv_.__sig;
  }

  v7 = *(resources + 2);
  if (v7 == 1)
  {
    v8 = (*resources)(v5);
  }

  else
  {
    if (v7)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v8 = *resources;
  }

  v9 = resources[3] / sig;
  if (v8 < v9)
  {
    LODWORD(v9) = v8;
  }

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  (*(**this + 80))(v44);
  v31 = *&v44[0].__cv_.__opaque[8] + sig;
  BufferAllocator::BufferAllocator(v44, *&v44[0].__cv_.__opaque[8] + sig, 0, v10);
  v11 = this[1];
  runs_iterator = udif::details::UDIF_base::create_runs_iterator(v11);
  v30 = v13;
  v14 = runs_iterator;
  if (this[35].i32[1])
  {
    v15 = details::udif_verify::populate_csum_data(this, v11 + 4);
    this[35].i32[1] = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = this[35].i32[0];
  if (DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::is_simple(*this))
  {
    this[35] = vbic_s8(0x200000002, vceqz_s32(this[35]));
    v17 = 2;
  }

  else
  {
    v17 = v16 | v15;
  }

  details::udif_verify::create_execution_contexts(this, v31, v10, v43);
  workqueue::workqueue::create_transaction(v42, a2, v10);
  v18 = this[9];
  v41 = 0;
  v19 = *(v11 + 4);
  if (v19 != (v11 + 40) && v14 != v30)
  {
    while ((v14[6] & 1) + v14[5] - 1 > (v19[6] & 1) + v19[5] - 1)
    {
LABEL_22:
      v20 = v19[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v19[2];
          v25 = *v21 == v19;
          v19 = v21;
        }

        while (!v25);
      }

      if (v21 != (v11 + 40))
      {
        *&v18 += 184;
        v19 = v21;
        if (v14 != v30)
        {
          continue;
        }
      }

      goto LABEL_52;
    }

    v22 = v14;
    while (1)
    {
      v37 = *(v19 + 2);
      v38 = v19[6];
      boost::icl::operator&<boost::icl::discrete_interval<unsigned long long,std::less>>(&v37, (v22 + 4), v39);
      v23 = v39[0];
      if ((v40 & 2) == 0)
      {
        v23 = v39[0] + 1;
      }

      if (v23 <= (v40 & 1) + v39[1] - 1)
      {
        break;
      }

      v24 = v22[1];
      if (v24)
      {
        do
        {
          v14 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v14 = v22[2];
          v25 = *v14 == v22;
          v22 = v14;
        }

        while (!v25);
      }

      v25 = (v14[6] & 1) + v14[5] - 1 > (v19[6] & 1) + v19[5] - 1 || v14 == v30;
      v22 = v14;
      if (v25)
      {
        goto LABEL_22;
      }
    }

    if (!atomic_load_explicit(&v41, memory_order_acquire))
    {
      v34 = v23;
      v35 = v23 + (v32 + sig - 1) / v32;
      v36 = 2;
      boost::icl::operator&<boost::icl::discrete_interval<unsigned long long,std::less>>(&v34, v39, &v37);
      if (v17 == 1)
      {
        v34 = 0;
        v35 = 0;
        ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::allocate(v43, &v33);
      }

      BufferAllocator::allocate(&v34, v44);
    }

    v26 = this[9];
    for (i = this[10]; *&v26 != *&i; *&v26 += 184)
    {
      *(*&v26 + 176) = 1;
      ExecutionSchedulerSortedConsecutiveIt<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,locks::Std,boost::iterators::transform_iterator<interval_map2set_it::$_0,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__tree_node<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,void *> *,long>>,boost::use_default,boost::use_default>>::abort(*&v26 + 16);
    }

    this[34].i8[0] = 1;
    ExecutionSchedulerSortedConsecutiveIt<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,locks::Std,boost::iterators::transform_iterator<interval_map2set_it::$_0,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__tree_node<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,void *> *,long>>,boost::use_default,boost::use_default>>::abort(&this[14]);
  }

LABEL_52:
  v28 = atomic_load(&v41);
  workqueue::transaction::~transaction(v42);
  ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::~ContextAllocator(v43);
  BufferAllocator::~BufferAllocator(v44);
  return v28;
}

void sub_248EBA92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  workqueue::transaction::~transaction(&a44);
  ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::~ContextAllocator(&a62);
  BufferAllocator::~BufferAllocator(&STACK[0x240]);
  _Unwind_Resume(a1);
}

void boost::icl::operator&<boost::icl::discrete_interval<unsigned long long,std::less>>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 16);
  v5 = *result;
  v4 = *(result + 8);
  if (*(result + 16))
  {
    if (v3 == 3)
    {
      if (v4 < v5)
      {
        goto LABEL_15;
      }
    }

    else if (v5 >= v4)
    {
LABEL_15:
      {
        v17 = a3;
        boost::icl::operator&<boost::icl::discrete_interval<unsigned long long,std::less>>();
        a3 = v17;
      }

      *a3 = boost::icl::identity_element<boost::icl::discrete_interval<unsigned long long,std::less>>::value(void)::_value;
      *(a3 + 16) = qword_27EECDCF0;
      return;
    }
  }

  else if (v5 >= v4 || v5 + 1 >= v4)
  {
    goto LABEL_15;
  }

  v7 = *(a2 + 16);
  v9 = *a2;
  v8 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (v7 == 3)
    {
      if (v8 < v9)
      {
        goto LABEL_15;
      }
    }

    else if (v9 >= v8)
    {
      goto LABEL_15;
    }
  }

  else if (v9 >= v8 || v9 + 1 >= v8)
  {
    goto LABEL_15;
  }

  v11 = v3 & 2;
  if ((v3 & 2) != 0)
  {
    v12 = *result;
  }

  else
  {
    v12 = v5 + 1;
  }

  v13 = v7 & 2;
  if ((v7 & 2) != 0)
  {
    v14 = *a2;
  }

  else
  {
    v14 = v9 + 1;
  }

  v15 = v3 & 1;
  v16 = v7 & 1;
  if (v12 < v14)
  {
    v5 = *a2;
    v11 = v13;
  }

  if (v4 + v15 - 1 >= v8 + v16 - 1)
  {
    v4 = *(a2 + 8);
    LOBYTE(v15) = v16;
  }

  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v15 | v11;
}

void ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::allocate(uint64_t a1@<X0>, void *a2@<X8>)
{
  __lk.__m_ = (a1 + 32);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (*(a1 + 144) != 1 || v5 != v4)
  {
    while (v5 == v4)
    {
      std::condition_variable::wait((a1 + 96), &__lk);
      v5 = *(a1 + 8);
      v4 = *(a1 + 16);
    }

    v7 = *(v4 - 8);
    *(a1 + 16) = v4 - 8;
    std::shared_ptr<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>>::shared_ptr[abi:ne200100]<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>,ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::allocate(void)::{lambda(std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>)#1},0>(a2, v7, a1);
  }

  v8[1] = 0;
  v9 = 0;
  v8[0] = 0;
  ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::emplace_back(a1, &v9, v8);
}

void sub_248EBABCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::mutex *a13, char a14)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::allocate(&a10, &a12);
  std::mutex::unlock(a13);
  _Unwind_Resume(a1);
}

void ___ZN7details11udif_verify19calculate_checksumsERN9workqueue9workqueueE_block_invoke(uint64_t a1)
{
  v68[71] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v6 = (*(a1 + 48) - v3 + (v2 & 1) + (((v2 >> 1) & 1) - 1)) * v5;
  if ((v2 & 2) != 0)
  {
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = v3 + 1;
  }

  v8 = v7 * v5;
  v10 = *(a1 + 80);
  v9 = *(a1 + 88);
  v47 = *(a1 + 72);
  v48 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v45 = v6;
  v49 = v6;
  v50 = v8;
  v51 = v9;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v11 = *(a1 + 96);
  sg_vec_ns::make(&v47, &v61);
  sg_vec_ref::begin(v67, &v58);
  sg_vec_ref::end(v67, v55);
  v12 = DiskImage::Context::read(*v11, &v58, v55);
  v14 = v13;
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (*(&v58 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v58 + 1));
  }

  sg_vec::~sg_vec(&v61);
  if ((v12 & 0x8000000000000000) == 0 || !v12)
  {
    v15 = v4;
    v17 = *(a1 + 72);
    v16 = *(a1 + 80);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v44 = v16;
    v18 = 0;
    v19 = *(a1 + 64);
    v20 = v50;
    if (v49 <= v19)
    {
      v21 = *(a1 + 64);
    }

    else
    {
      v21 = v49;
    }

    if (v49)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (*(a1 + 128))
    {
      v46 = 0;
      v23 = 0;
      if (v8 == v14)
      {
        v24 = *(a1 + 96);
        sg_entry::sg_entry(&v61, *(v24 + 8) + 64);
        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }

        v18 = v61;
        v25 = v62;
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v46 = v25;
        sg_entry::sg_entry(&v61, *(v24 + 8) + 64);
        v23 = v63;
        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }
      }
    }

    else
    {
      v46 = 0;
      v23 = 0;
    }

    v26 = (v17 + v8 - v14);
    v27 = v20 / v19;
    v28 = v19 + v20 + v22 - 1;
    v29 = v15;
    v30 = *(v15 + 284);
    v31 = v28 / v19;
    if (v30 == 1)
    {
      v32 = v44;
      v33 = v45;
      if (!v23)
      {
        goto LABEL_57;
      }

      v34 = *(a1 + 120);
      v35 = v46;
      if (!v46)
      {
        v36 = v18;
        goto LABEL_46;
      }

      v36 = v18;
    }

    else
    {
      v32 = v44;
      v33 = v45;
      if (v30 != 2 || !v45)
      {
        goto LABEL_57;
      }

      v34 = *(a1 + 120);
      if (!v44)
      {
        v35 = 0;
        v36 = v26;
        goto LABEL_46;
      }

      v35 = v44;
      v36 = v26;
    }

    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_46:
    v37 = *(v29 + 284);
    if (v37 == 2)
    {
      v38 = v33;
    }

    else if (v37 == 1)
    {
      v38 = v23;
    }

    else
    {
      v38 = 0;
    }

    v61 = v27;
    v62 = v31;
    LOBYTE(v63) = 2;
    v64 = v36;
    v65 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v66 = v38;
    ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::add(v34, &v61);
    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

LABEL_57:
    v39 = *(v29 + 280);
    if (v39 == 1)
    {
      if (v23)
      {
        v40 = v29 + 96;
        v41 = v46;
        if (!v46)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }
    }

    else if (v39 == 2 && v33)
    {
      v40 = v29 + 96;
      if (!v32)
      {
        v41 = 0;
        v18 = v26;
        goto LABEL_67;
      }

      v41 = v32;
      v18 = v26;
LABEL_66:
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_67:
      v42 = *(v29 + 280);
      if (v42 == 2)
      {
        v23 = v33;
      }

      else if (v42 != 1)
      {
        v23 = 0;
      }

      v61 = v27;
      v62 = v31;
      LOBYTE(v63) = 2;
      v64 = v18;
      v65 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v66 = v23;
      ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::add(v40, &v61);
      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }
    }

    if ((*(a1 + 132) & 1) == 0)
    {
      BackendSG::drop_sg(*(*(a1 + 96) + 8));
    }

    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    goto LABEL_83;
  }

  v43 = 0;
  atomic_compare_exchange_strong(*(a1 + 112), &v43, v12);
  if (!v43)
  {
    *&v58 = "details::udif_verify::calculate_checksums(workqueue::workqueue &)_block_invoke";
    *(&v58 + 1) = 41;
    v59 = 16;
    di_log::logger<di_log::log_printer<339ul>>::logger(&v61, &v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "Error reading sectors for verify ", 33);
    MEMORY[0x24C1ED390](v68, v12);
    di_log::logger<di_log::log_printer<339ul>>::~logger(&v61);
  }

LABEL_83:
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }
}

void sub_248EBB08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  di_log::logger<di_log::log_printer<339ul>>::~logger(&STACK[0x250]);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<339ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<339ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEC208;
  a1[45] = &unk_285BEC308;
  a1[46] = &unk_285BEC330;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEC208;
  a1[45] = &unk_285BEC290;
  a1[46] = &unk_285BEC2B8;
  return a1;
}

void sub_248EBB248(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<339ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<339ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<339ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::add(uint64_t a1, char **a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  *v44 = *(a2 + 17);
  *&v44[3] = *(a2 + 5);
  v7 = a2[3];
  v6 = a2[4];
  a2[3] = 0;
  a2[4] = 0;
  v8 = a2[5];
  *v45 = *(a2 + 17);
  *&v45[3] = *(a2 + 5);
  std::mutex::lock((a1 + 16));
  if (*(a1 + 168))
  {
    std::mutex::unlock((a1 + 16));
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v47 = v3;
    *&v48 = v4;
    BYTE8(v48) = v5;
    *(&v48 + 9) = *v45;
    HIDWORD(v48) = *&v45[3];
    v49[0] = a1;
    v49[1] = v3;
    v49[2] = v4;
    v50 = v5;
    *v51 = *v44;
    *&v51[3] = *&v44[3];
    v52 = v7;
    v53 = v6;
    v54 = v8;
    std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::__emplace_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,std::pair<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>((a1 + 88), &v47, &v47);
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    if ((v5 & 2) != 0)
    {
      v9 = v3;
    }

    else
    {
      v9 = v3 + 1;
    }

    v10 = *(a1 + 160);
    std::mutex::unlock((a1 + 16));
    if (v9 == v10)
    {
      v11 = (a1 + 96);
      while (1)
      {
        v47 = v49;
        v48 = xmmword_248F9D670;
        std::mutex::lock((a1 + 16));
        v13 = *(a1 + 88);
        v14 = *(a1 + 160);
        if (v13 == v11)
        {
          v17 = (a1 + 96);
        }

        else
        {
          v15 = *(a1 + 144);
          v16 = *(a1 + 112);
          v17 = *(a1 + 88);
          while (v16 != v15)
          {
            v18 = v17[4];
            if ((v17[6] & 2) == 0)
            {
              ++v18;
            }

            if (v18 != v14)
            {
              break;
            }

            v14 = v17[5] + (v17[6] & 1);
            for (i = (v16[6] & 1) + v16[5]; v14 > i - 1; i = (v16[6] & 1) + v16[5])
            {
              v20 = v16[1];
              v21 = v16;
              if (v20)
              {
                do
                {
                  v16 = v20;
                  v20 = *v20;
                }

                while (v20);
              }

              else
              {
                do
                {
                  v16 = v21[2];
                  v22 = *v16 == v21;
                  v21 = v16;
                }

                while (!v22);
              }

              *(a1 + 112) = v16;
              if (v16 == v15)
              {
                break;
              }

              if ((v16[6] & 2) != 0)
              {
                v14 = v16[4];
              }

              else
              {
                v14 = v16[4] + 1;
              }
            }

            v23 = v17[1];
            if (v23)
            {
              do
              {
                v24 = v23;
                v23 = *v23;
              }

              while (v23);
            }

            else
            {
              do
              {
                v24 = v17[2];
                v22 = *v24 == v17;
                v17 = v24;
              }

              while (!v22);
            }

            v17 = v24;
            if (v24 == v11)
            {
              v17 = (a1 + 96);
              break;
            }
          }

          if (v13 == v17)
          {
            v17 = v13;
          }

          else
          {
            v25 = 0;
            v26 = v13;
            do
            {
              v27 = v25;
              v28 = v26[1];
              if (v28)
              {
                do
                {
                  v29 = v28;
                  v28 = *v28;
                }

                while (v28);
              }

              else
              {
                do
                {
                  v29 = v26[2];
                  v22 = *v29 == v26;
                  v26 = v29;
                }

                while (!v22);
              }

              ++v25;
              v26 = v29;
            }

            while (v29 != v17);
            if (*(&v48 + 1) <= v27)
            {
              if (v27 >= 0x249249249249249)
              {
                boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
              }

              v30 = operator new(56 * v25);
              boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,boost::move_iterator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>>(&v47, v30, v25, &v47[56 * v48], 0, 0);
            }
          }
        }

        while (v17 != v13)
        {
          v31 = &v47[56 * v48];
          if (v48 == *(&v48 + 1))
          {
            boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>(&v47, v31, 1, (v13 + 7), v46);
          }

          else
          {
            *v31 = v13[7];
            v32 = *(v13 + 4);
            *(v31 + 3) = v13[10];
            *(v31 + 8) = v32;
            *(v31 + 2) = *(v13 + 11);
            v13[11] = 0;
            v13[12] = 0;
            *(v31 + 6) = v13[13];
            *&v48 = v48 + 1;
          }

          v13 = std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::erase((a1 + 88), v13);
        }

        std::mutex::unlock((a1 + 16));
        if (v48)
        {
          v33 = v47;
          v34 = &v47[56 * v48];
          do
          {
            v35 = *v33;
            v36 = v33[6];
            v46[0] = v33[4];
            v46[1] = v36;
            checksum::Any<locks::None,checksum::None,checksum::CRC32>::add(v35, v46);
            v33 += 7;
          }

          while (v33 != v34);
          v37 = v48;
          if (v48)
          {
            v38 = (v47 + 40);
            do
            {
              if (*v38)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*v38);
              }

              v38 += 7;
              --v37;
            }

            while (v37);
          }
        }

        *&v48 = 0;
        std::mutex::lock((a1 + 16));
        *(a1 + 160) = v14;
        v39 = *(a1 + 88);
        if (v39 == v11 || *(a1 + 112) == *(a1 + 144))
        {
          break;
        }

        v40 = *(v39 + 48);
        v41 = *(v39 + 32);
        if ((v40 & 2) != 0)
        {
          v42 = v41;
        }

        else
        {
          v42 = v41 + 1;
        }

        std::mutex::unlock((a1 + 16));
        if (v42 != v14)
        {
          goto LABEL_70;
        }

        boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::~vector(&v47);
      }

      std::mutex::unlock((a1 + 16));
LABEL_70:
      boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::~vector(&v47);
    }
  }

  return a1;
}

void sub_248EBB72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::mutex::unlock((v13 + 16));
  boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::~vector(va);
  _Unwind_Resume(a1);
}

void BackendSG::drop_sg(BackendSG *this)
{
  v2 = 0;
  v3 = 0;
  memset(v1, 0, 44);
  sg_entry::operator=(this + 64, v1);
  if (*(&v1[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v1[0] + 1));
  }
}

void sub_248EBB7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_72c27_ZTSNSt3__110shared_ptrIcEE96c178_ZTSNSt3__110shared_ptrINS_5tupleIJNS_10unique_ptrIN17DiskImageUDIFReadI10UDIFReaderIN5locks4NoneEE13DiskImageUDIFE11ContextUDIFENS_14default_deleteISA_EEEENS0_I9BackendSGEEEEEEE(void *result, void *a2)
{
  v2 = a2[10];
  result[9] = a2[9];
  result[10] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[13];
  result[12] = a2[12];
  result[13] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_72c27_ZTSNSt3__110shared_ptrIcEE96c178_ZTSNSt3__110shared_ptrINS_5tupleIJNS_10unique_ptrIN17DiskImageUDIFReadI10UDIFReaderIN5locks4NoneEE13DiskImageUDIFE11ContextUDIFENS_14default_deleteISA_EEEENS0_I9BackendSGEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_248EBB904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(va);
  _Unwind_Resume(a1);
}

void copy_user_entry_from_resource(const __CFString *a1, const void *a2, __CFDictionary *a3)
{
  TypeID = CFStringGetTypeID();
  if (a1)
  {
    v7 = TypeID;
    if (CFGetTypeID(a1) != TypeID)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v15 = a1;
      v16 = exception;
      v17 = CFGetTypeID(v15);
LABEL_18:
      v18 = v16;
      v19 = v7;
      goto LABEL_19;
    }
  }

  OSType = CFStringGetOSType(a1);
  switch(OSType)
  {
    case 1651272568:
      return;
    case 1886155636:
      return;
    case 1970628964:
      return;
  }

  v9 = CFArrayGetTypeID();
  if (!a2)
  {
    return;
  }

  v7 = v9;
  if (CFGetTypeID(a2) != v9)
  {
    v16 = __cxa_allocate_exception(0x40uLL);
    v17 = CFGetTypeID(a2);
    goto LABEL_18;
  }

  if (CFArrayGetCount(a2) < 1)
  {
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
  v11 = CFDictionaryGetTypeID();
  if (!ValueAtIndex)
  {
    return;
  }

  v12 = v11;
  if (CFGetTypeID(ValueAtIndex) != v11)
  {
    goto LABEL_21;
  }

  ValueAtIndex = CFDictionaryGetValue(ValueAtIndex, @"Data");
  v13 = CFDataGetTypeID();
  if (!ValueAtIndex)
  {
    return;
  }

  v12 = v13;
  if (CFGetTypeID(ValueAtIndex) != v13)
  {
LABEL_21:
    v21 = __cxa_allocate_exception(0x40uLL);
    v17 = CFGetTypeID(ValueAtIndex);
    v18 = v21;
    v19 = v12;
LABEL_19:
    v20 = cf::CFUtilException::CFUtilException(v18, v17, v19);
  }

  CFDictionaryAddValue(a3, a1, ValueAtIndex);
}

void sub_248EBBCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&a9);
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&a10);
  _Unwind_Resume(a1);
}

BOOL DiskImageUDIF::verify_image(DiskImageUDIF *this, workqueue::workqueue *a2, int a3)
{
  v11[13] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    details::udif_verify::udif_verify(v8, this, (this + 64), 3);
    if (!details::udif_verify::calculate_checksums(v8, a2))
    {
      goto LABEL_6;
    }
  }

  else
  {
    details::udif_verify::udif_verify(v8, this, (this + 64));
    if (!details::udif_verify::calculate_checksums(v8, a2))
    {
LABEL_6:
      v5 = details::udif_verify::verify_checksums(v8, v4);
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(v11, v11[1]);
  std::mutex::~mutex(&v10);
  v7 = &v9;
  std::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::__destroy_vector::operator()[abi:ne200100](&v7);
  return v5;
}

void sub_248EBBE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  details::udif_verify::~udif_verify(va);
  _Unwind_Resume(a1);
}

BOOL DiskImageUDIF::udif_extents_iterator_interface::_make_val@<W0>(DiskImageUDIF::udif_extents_iterator_interface *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 64);
  v4 = *(this + 8);
  v6 = (this + 72);
  v7 = *(this + 9);
  v8 = *(this + 5);
  if (v4 != v7)
  {
    while (v8 > (v4[6] & 1) + v4[5] - 1)
    {
      v9 = v4[1];
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
          v10 = v4[2];
          v13 = *v10 == v4;
          v4 = v10;
        }

        while (!v13);
      }

      *v5 = v10;
      v4 = v10;
      if (v10 == v7)
      {
        goto LABEL_11;
      }
    }
  }

  v10 = v4;
LABEL_11:
  is_mapped = offset_is_mapped(this + 8, v6, v8);
  if (is_mapped)
  {
    result = offset_is_mapped(v5, v6, v8);
    v13 = v10 == v7 || !result;
    v14 = v8;
    if (!v13)
    {
      do
      {
        v14 = (v10[6] & 1) + v10[5];
        result = offset_is_mapped(v5, v6, v14);
        if (!result)
        {
          break;
        }

        v15 = v10[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v10[2];
            v13 = *v16 == v10;
            v10 = v16;
          }

          while (!v13);
        }

        *v5 = v16;
        v10 = v16;
      }

      while (v16 != v7);
    }
  }

  else
  {
    result = offset_is_mapped(v5, v6, v8);
    v14 = v8;
    if (!result)
    {
      if (v10 == v7)
      {
        v14 = *(this + 3);
      }

      else if ((v10[6] & 2) != 0)
      {
        v14 = v10[4];
      }

      else
      {
        v14 = v10[4] + 1;
      }
    }
  }

  *a2 = v8;
  *(a2 + 8) = v14;
  *(a2 + 16) = 2;
  *(a2 + 24) = is_mapped;
  return result;
}

BOOL offset_is_mapped(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = *a1;
  if (*a1 == *a2)
  {
    return 0;
  }

  v4 = *(v3 + 32);
  if ((*(v3 + 48) & 2) != 0)
  {
    if (v4 > a3)
    {
      return 0;
    }
  }

  else if (v4 >= a3)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  if (*(v3 + 48))
  {
    if (v5 < a3)
    {
      return 0;
    }
  }

  else if (v5 <= a3)
  {
    return 0;
  }

  v7 = *(v3 + 56);
  return v7 == 1 || HIBYTE(v7) == 128;
}

void DiskImageUDIF::~DiskImageUDIF(DiskImageUDIF *this)
{
  *this = &unk_285BD5CF8;
  udif::details::UDIF_base::~UDIF_base((this + 64));
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  *this = &unk_285BD5CF8;
  udif::details::UDIF_base::~UDIF_base((this + 64));
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x24C1ED730);
}