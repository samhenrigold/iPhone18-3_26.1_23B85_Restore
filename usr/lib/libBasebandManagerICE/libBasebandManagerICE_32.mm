BOOL prop::tracesettings::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE600];
  v5 = strlen(*MEMORY[0x29EDBE600]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297605A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

uint64_t prop::set(char *a1, char *a2, char *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(v6, *MEMORY[0x29EDBF8A0]) && strcasecmp(v6, *MEMORY[0x29EDBFC60]) && strcasecmp(v6, *MEMORY[0x29EDBFC58]))
    {
      if (strcasecmp(v6, *MEMORY[0x29EDBE5F8]))
      {
        if (strcasecmp(v6, *MEMORY[0x29EDBF8E8]) && strcasecmp(v6, *MEMORY[0x29EDBE690]))
        {
          if (strcasecmp(v6, *MEMORY[0x29EDBE7A8]))
          {
            if (strcasecmp(v6, *MEMORY[0x29EDBE7B0]))
            {
              if (strcasecmp(v6, *MEMORY[0x29EDBE718]))
              {
                if (strcasecmp(v6, *MEMORY[0x29EDBE528]))
                {
                  if (strcasecmp(v6, *MEMORY[0x29EDBE710]))
                  {
                    if (strcasecmp(v6, *MEMORY[0x29EDBE5B0]))
                    {
                      if (strcasecmp(v6, *MEMORY[0x29EDBE608]))
                      {
LABEL_16:
                        if (!strcasecmp(v6, *MEMORY[0x29EDBE600]))
                        {

                          return prop::tracesettings::set(a2, a3);
                        }

                        else
                        {
                          sGetOsLogContext();
                          v7 = qword_2A18CB2E8;
                          if (os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
                          {
                            if (a1[23] >= 0)
                            {
                              v9 = a1;
                            }

                            else
                            {
                              v9 = *a1;
                            }

                            if (a2[23] >= 0)
                            {
                              v10 = a2;
                            }

                            else
                            {
                              v10 = *a2;
                            }

                            if (a3[23] >= 0)
                            {
                              v11 = a3;
                            }

                            else
                            {
                              v11 = *a3;
                            }

                            v12 = 136315650;
                            v13 = v9;
                            v14 = 2080;
                            v15 = v10;
                            v16 = 2080;
                            v17 = v11;
                            _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "set: Invalid domain; domain='%s' key='%s' value='%s'", &v12, 0x20u);
                          }

                          return 0;
                        }
                      }

                      goto LABEL_33;
                    }

                    goto LABEL_60;
                  }

                  goto LABEL_57;
                }

                goto LABEL_54;
              }

              goto LABEL_51;
            }

            goto LABEL_48;
          }

          goto LABEL_45;
        }

        goto LABEL_39;
      }

      goto LABEL_42;
    }
  }

  else if (strcasecmp(a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(a1, *MEMORY[0x29EDBF8A0]) && strcasecmp(a1, *MEMORY[0x29EDBFC60]) && strcasecmp(a1, *MEMORY[0x29EDBFC58]))
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE5F8]))
    {
      if (strcasecmp(a1, *MEMORY[0x29EDBF8E8]) && strcasecmp(a1, *MEMORY[0x29EDBE690]))
      {
        if (strcasecmp(a1, *MEMORY[0x29EDBE7A8]))
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE7B0]))
          {
            if (strcasecmp(a1, *MEMORY[0x29EDBE718]))
            {
              if (strcasecmp(a1, *MEMORY[0x29EDBE528]))
              {
                if (strcasecmp(a1, *MEMORY[0x29EDBE710]))
                {
                  if (strcasecmp(a1, *MEMORY[0x29EDBE5B0]))
                  {
                    v6 = a1;
                    if (strcasecmp(a1, *MEMORY[0x29EDBE608]))
                    {
                      goto LABEL_16;
                    }

LABEL_33:

                    return prop::tailspin::set(a2, a3);
                  }

LABEL_60:

                  return prop::profile::set(a2, a3);
                }

LABEL_57:

                return prop::systemlogs::set(a2, a3);
              }

LABEL_54:

              return prop::logfilter::set(a2, a3);
            }

LABEL_51:

            return prop::ttr::set(a2, a3);
          }

LABEL_48:

          return prop::compression::set(a2, a3);
        }

LABEL_45:

        return prop::bbipc::set(a2, a3);
      }

LABEL_39:

      return prop::ipc::set(a2, a3);
    }

LABEL_42:

    return prop::coredump::set(a2, a3);
  }

  return prop::bbtrace::set(a2, a3);
}

uint64_t prop::bbtrace::set(char *a1, uint64_t a2)
{
  v141 = *MEMORY[0x29EDCA608];
  memset(&v138, 170, sizeof(v138));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v138, *a2, *(a2 + 8));
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v138 = *a2;
    if (strcmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::bbtrace::get(a1, &v138))
  {
    goto LABEL_378;
  }

LABEL_9:
  v5 = a1[23];
  if ((v5 & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE6E0]))
    {
      if (strcasecmp(a1, *MEMORY[0x29EDBE798]))
      {
        if (strcasecmp(a1, *MEMORY[0x29EDBEA30]))
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
          {
            if (strcasecmp(a1, *MEMORY[0x29EDBF208]))
            {
              if (strcasecmp(a1, *MEMORY[0x29EDBE8F8]))
              {
                if (strcasecmp(a1, *MEMORY[0x29EDBE880]))
                {
                  v6 = *MEMORY[0x29EDBE6E8];
                  v7 = a1;
                  if (strcasecmp(a1, *MEMORY[0x29EDBE6E8]))
                  {
                    goto LABEL_18;
                  }

                  goto LABEL_37;
                }

LABEL_107:
                *__dst = -1431655766;
                if (!util::convert<int>(&v138, __dst, 0))
                {
                  goto LABEL_378;
                }

                v49 = *__dst;
                std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                LODWORD(__p.__r_.__value_.__l.__data_) = v49;
                v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
LABEL_121:
                v16 = v39;
LABEL_122:
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                goto LABEL_379;
              }

LABEL_92:
              v40 = *MEMORY[0x29EDBF8A0];
              v41 = strlen(*MEMORY[0x29EDBF8A0]);
              if (v41 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v42 = v41;
              if (v41 >= 0x17)
              {
                if ((v41 | 7) == 0x17)
                {
                  v50 = 25;
                }

                else
                {
                  v50 = (v41 | 7) + 1;
                }

                v43 = operator new(v50);
                *&__dst[8] = v42;
                *&__dst[16] = v50 | 0x8000000000000000;
                *__dst = v43;
              }

              else
              {
                __dst[23] = v41;
                v43 = __dst;
                if (!v41)
                {
                  goto LABEL_114;
                }
              }

              memmove(v43, v40, v42);
LABEL_114:
              v43[v42] = 0;
              v39 = prop::file::set<std::string>(__dst, a1, &v138);
              goto LABEL_121;
            }

LABEL_77:
            *__dst = -1431655766;
            if (!util::convert<int>(&v138, __dst, 0))
            {
              goto LABEL_378;
            }

            v32 = *__dst;
            v33 = *MEMORY[0x29EDBF8A0];
            v34 = strlen(*MEMORY[0x29EDBF8A0]);
            if (v34 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v35 = v34;
            if (v34 >= 0x17)
            {
              if ((v34 | 7) == 0x17)
              {
                v51 = 25;
              }

              else
              {
                v51 = (v34 | 7) + 1;
              }

              v36 = operator new(v51);
              *&__dst[8] = v35;
              *&__dst[16] = v51 | 0x8000000000000000;
              *__dst = v36;
            }

            else
            {
              __dst[23] = v34;
              v36 = __dst;
              if (!v34)
              {
                goto LABEL_120;
              }
            }

            memmove(v36, v33, v35);
LABEL_120:
            v36[v35] = 0;
            LODWORD(__p.__r_.__value_.__l.__data_) = v32;
            v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
            goto LABEL_121;
          }

LABEL_66:
          LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
          v27 = util::convert<int>(&v138, &__p, 0);
          v28 = v27;
          v29 = capabilities::radio::maverick(v27);
          if (v29)
          {
            if (LODWORD(__p.__r_.__value_.__l.__data_) < 5)
            {
              v30 = v28;
            }

            else
            {
              v30 = 0;
            }

            if ((v30 & 1) == 0)
            {
              goto LABEL_378;
            }
          }

          else
          {
            v37 = capabilities::radio::ice(v29);
            if ((v37 & v28) == 1)
            {
              v16 = 0;
              if (LODWORD(__p.__r_.__value_.__l.__data_) > 6 || ((1 << __p.__r_.__value_.__s.__data_[0]) & 0x45) == 0)
              {
                goto LABEL_379;
              }
            }

            else if (((v37 ^ 1) & v28) != 1)
            {
              goto LABEL_378;
            }
          }

          v44 = *MEMORY[0x29EDBF8A0];
          v45 = strlen(*MEMORY[0x29EDBF8A0]);
          if (v45 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v46 = v45;
          if (v45 >= 0x17)
          {
            if ((v45 | 7) == 0x17)
            {
              v48 = 25;
            }

            else
            {
              v48 = (v45 | 7) + 1;
            }

            v47 = operator new(v48);
            *&__dst[8] = v46;
            *&__dst[16] = v48 | 0x8000000000000000;
            *__dst = v47;
          }

          else
          {
            __dst[23] = v45;
            v47 = __dst;
            if (!v45)
            {
              goto LABEL_106;
            }
          }

          memmove(v47, v44, v46);
LABEL_106:
          v47[v46] = 0;
          v39 = prop::file::set<int>(__dst, a1, &__p);
          goto LABEL_121;
        }

LABEL_56:
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v138, &__p, 0))
        {
          goto LABEL_378;
        }

        v20 = *MEMORY[0x29EDBF8A0];
        v25 = strlen(*MEMORY[0x29EDBF8A0]);
        if (v25 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v22 = v25;
        if (v25 >= 0x17)
        {
          if ((v25 | 7) == 0x17)
          {
            v38 = 25;
          }

          else
          {
            v38 = (v25 | 7) + 1;
          }

          v23 = operator new(v38);
          *&__dst[8] = v22;
          *&__dst[16] = v38 | 0x8000000000000000;
          *__dst = v23;
        }

        else
        {
          __dst[23] = v25;
          v23 = __dst;
          if (!v25)
          {
            goto LABEL_91;
          }
        }

        goto LABEL_90;
      }

LABEL_51:
      __p.__r_.__value_.__s.__data_[0] = -86;
      if (!util::convert<BOOL>(&v138, &__p, 0))
      {
        goto LABEL_378;
      }

      v20 = *MEMORY[0x29EDBF8A0];
      v24 = strlen(*MEMORY[0x29EDBF8A0]);
      if (v24 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v24;
      if (v24 >= 0x17)
      {
        if ((v24 | 7) == 0x17)
        {
          v31 = 25;
        }

        else
        {
          v31 = (v24 | 7) + 1;
        }

        v23 = operator new(v31);
        *&__dst[8] = v22;
        *&__dst[16] = v31 | 0x8000000000000000;
        *__dst = v23;
      }

      else
      {
        __dst[23] = v24;
        v23 = __dst;
        if (!v24)
        {
          goto LABEL_91;
        }
      }

      goto LABEL_90;
    }

LABEL_46:
    __p.__r_.__value_.__s.__data_[0] = -86;
    if (!util::convert<BOOL>(&v138, &__p, 0))
    {
      goto LABEL_378;
    }

    v20 = *MEMORY[0x29EDBF8A0];
    v21 = strlen(*MEMORY[0x29EDBF8A0]);
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v22 = v21;
    if (v21 >= 0x17)
    {
      if ((v21 | 7) == 0x17)
      {
        v26 = 25;
      }

      else
      {
        v26 = (v21 | 7) + 1;
      }

      v23 = operator new(v26);
      *&__dst[8] = v22;
      *&__dst[16] = v26 | 0x8000000000000000;
      *__dst = v23;
    }

    else
    {
      __dst[23] = v21;
      v23 = __dst;
      if (!v21)
      {
        goto LABEL_91;
      }
    }

LABEL_90:
    memmove(v23, v20, v22);
LABEL_91:
    v23[v22] = 0;
    v39 = prop::file::set<BOOL>(__dst, a1, &__p);
    goto LABEL_121;
  }

  v7 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE6E0]))
  {
    goto LABEL_46;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE798]))
  {
    goto LABEL_51;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBEA30]))
  {
    goto LABEL_56;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_66;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBF208]))
  {
    goto LABEL_77;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE8F8]))
  {
    goto LABEL_92;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE880]))
  {
    goto LABEL_107;
  }

  v6 = *MEMORY[0x29EDBE6E8];
  if (strcasecmp(v7, *MEMORY[0x29EDBE6E8]))
  {
LABEL_18:
    v8 = MEMORY[0x29EDBD4C8];
    v9 = strcasecmp(v7, *MEMORY[0x29EDBD4C8]);
    if (!v9)
    {
      v52 = capabilities::radio::maverick(v9);
      if (v52 & 1) != 0 || (capabilities::radio::ice(v52))
      {
        *__dst = -1431655766;
        if ((util::convert<int>(&v138, __dst, 0) & 1) == 0)
        {
          goto LABEL_378;
        }

        v53 = *__dst;
        if (*__dst > 2u)
        {
          goto LABEL_378;
        }

        goto LABEL_364;
      }

      LOBYTE(v5) = a1[23];
    }

    v10 = *a1;
    if ((v5 & 0x80u) == 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    v12 = strcasecmp(v11, *MEMORY[0x29EDBF1F8]);
    if (!v12)
    {
      if (capabilities::trace::supportsDataRateObserver(v12))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        v13 = util::convert<unsigned int>(&v138, &__p);
        if (LODWORD(__p.__r_.__value_.__l.__data_) < 0xBB9)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14 == 1)
        {
          goto LABEL_354;
        }

        goto LABEL_378;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v54 = a1;
    }

    else
    {
      v54 = v10;
    }

    v55 = strcasecmp(v54, *v8);
    if (!v55)
    {
      if (capabilities::radio::initium(v55))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        v56 = util::convert<unsigned int>(&v138, &__p);
        if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
        {
          v57 = v56;
        }

        else
        {
          v57 = 0;
        }

        if (v57 == 1)
        {
          goto LABEL_354;
        }

        goto LABEL_378;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v58 = a1;
    }

    else
    {
      v58 = v10;
    }

    v59 = strcasecmp(v58, *MEMORY[0x29EDBFCB8]);
    if (!v59)
    {
      if (capabilities::radio::initium(v59))
      {
        *__dst = -1431655766;
        if ((util::convert<int>(&v138, __dst, 0) & 1) == 0)
        {
          goto LABEL_378;
        }

        v53 = *__dst;
        if (*__dst > 3u)
        {
          goto LABEL_378;
        }

LABEL_364:
        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
        LODWORD(__p.__r_.__value_.__l.__data_) = v53;
        v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
        goto LABEL_121;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v60 = a1;
    }

    else
    {
      v60 = v10;
    }

    v61 = strcasecmp(v60, *MEMORY[0x29EDBD4B8]);
    if (!v61)
    {
      if (capabilities::radio::maverick(v61))
      {
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v138, &__p, 0))
        {
          goto LABEL_378;
        }

        goto LABEL_285;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v62 = a1;
    }

    else
    {
      v62 = v10;
    }

    v63 = strcasecmp(v62, *MEMORY[0x29EDBD4B0]);
    if (!v63)
    {
      if (capabilities::radio::maverick(v63))
      {
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v138, &__p, 0))
        {
          goto LABEL_378;
        }

        goto LABEL_285;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v64 = a1;
    }

    else
    {
      v64 = v10;
    }

    v65 = strcasecmp(v64, *MEMORY[0x29EDBD4D0]);
    if (!v65)
    {
      if (capabilities::radio::maverick(v65))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        if (util::convert<unsigned int>(&v138, &__p))
        {
LABEL_354:
          std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
          v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
          goto LABEL_121;
        }

LABEL_378:
        v16 = 0;
        goto LABEL_379;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v66 = a1;
    }

    else
    {
      v66 = v10;
    }

    v67 = strcasecmp(v66, *MEMORY[0x29EDBD4D8]);
    if (!v67)
    {
      if (capabilities::radio::maverick(v67))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        if (!diag::config::asEnum())
        {
          goto LABEL_378;
        }

        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
        data = __p.__r_.__value_.__l.__data_;
        v39 = prop::file::set<unsigned int>(__dst, a1, &data);
        goto LABEL_121;
      }

      LOBYTE(v5) = a1[23];
    }

    if ((v5 & 0x80) != 0)
    {
      v68 = *a1;
      if (strcasecmp(*a1, *MEMORY[0x29EDBD4C0]))
      {
LABEL_185:
        v69 = *MEMORY[0x29EDBF200];
        v70 = strcasecmp(v68, *MEMORY[0x29EDBF200]);
        if (!v70)
        {
          if (capabilities::radio::maverick(v70))
          {
            goto LABEL_323;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80) != 0)
        {
          v71 = *a1;
          if (!strcasecmp(*a1, *MEMORY[0x29EDBF418]))
          {
            goto LABEL_323;
          }
        }

        else
        {
          v71 = a1;
          if (!strcasecmp(a1, *MEMORY[0x29EDBF418]))
          {
            goto LABEL_323;
          }
        }

        v72 = strcasecmp(v71, *MEMORY[0x29EDBD4A8]);
        if (!v72)
        {
          if (capabilities::radio::maverick(v72))
          {
            goto LABEL_323;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80u) == 0)
        {
          v73 = a1;
        }

        else
        {
          v73 = *a1;
        }

        v74 = *MEMORY[0x29EDBEF70];
        v75 = strcasecmp(v73, *MEMORY[0x29EDBEF70]);
        if (!v75)
        {
          if (capabilities::radio::maverick(v75))
          {
            goto LABEL_323;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80) != 0)
        {
          v76 = *a1;
          if (!strcasecmp(*a1, *MEMORY[0x29EDBF2E0]))
          {
            goto LABEL_323;
          }
        }

        else
        {
          v76 = a1;
          if (!strcasecmp(a1, *MEMORY[0x29EDBF2E0]))
          {
            goto LABEL_323;
          }
        }

        v77 = strcasecmp(v76, v69);
        if (!v77)
        {
          v85 = capabilities::radio::ice(v77);
          if (v85 & 1) != 0 || (capabilities::radio::initium(v85))
          {
            goto LABEL_323;
          }

          LOBYTE(v5) = a1[23];
        }

        v78 = *a1;
        if ((v5 & 0x80u) == 0)
        {
          v79 = a1;
        }

        else
        {
          v79 = *a1;
        }

        v80 = strcasecmp(v79, v74);
        if (!v80)
        {
          v86 = capabilities::radio::ice(v80);
          if (v86 & 1) != 0 || (capabilities::radio::initium(v86))
          {
            goto LABEL_323;
          }

          LOBYTE(v5) = a1[23];
          v78 = *a1;
        }

        if ((v5 & 0x80u) == 0)
        {
          v81 = a1;
        }

        else
        {
          v81 = v78;
        }

        v82 = strcasecmp(v81, *MEMORY[0x29EDBEB20]);
        if (!v82)
        {
          if (capabilities::radio::initium(v82))
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
            v83 = util::convert<int>(&v138, &__p, 0);
            if (LODWORD(__p.__r_.__value_.__l.__data_) < 4)
            {
              v84 = v83;
            }

            else
            {
              v84 = 0;
            }

            if (v84 != 1)
            {
              goto LABEL_378;
            }

            goto LABEL_334;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80) != 0)
        {
          v87 = *a1;
          if (strcasecmp(*a1, *MEMORY[0x29EDBFCB0]))
          {
LABEL_234:
            v88 = strcasecmp(v87, *MEMORY[0x29EDBFC88]);
            if (!v88)
            {
              if (capabilities::radio::ice(v88))
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                v89 = util::convert<int>(&v138, &__p, 0);
                if (LODWORD(__p.__r_.__value_.__l.__data_) < 0x65)
                {
                  v90 = v89;
                }

                else
                {
                  v90 = 0;
                }

                if (v90 != 1)
                {
                  goto LABEL_378;
                }

                goto LABEL_334;
              }

              LOBYTE(v5) = a1[23];
            }

            v91 = *a1;
            if ((v5 & 0x80u) == 0)
            {
              v92 = a1;
            }

            else
            {
              v92 = *a1;
            }

            v93 = strcasecmp(v92, *MEMORY[0x29EDBFC70]);
            if (!v93)
            {
              if (capabilities::radio::ice(v93))
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                v94 = util::convert<int>(&v138, &__p, 0);
                if (LODWORD(__p.__r_.__value_.__l.__data_) < 0x65)
                {
                  v95 = v94;
                }

                else
                {
                  v95 = 0;
                }

                if (v95 != 1)
                {
                  goto LABEL_378;
                }

                goto LABEL_334;
              }

              LOBYTE(v5) = a1[23];
              v91 = *a1;
            }

            if ((v5 & 0x80u) == 0)
            {
              v96 = a1;
            }

            else
            {
              v96 = v91;
            }

            v97 = strcasecmp(v96, *MEMORY[0x29EDBFC68]);
            if (!v97)
            {
              if (capabilities::radio::ice(v97))
              {
                goto LABEL_323;
              }

              LOBYTE(v5) = a1[23];
            }

            if ((v5 & 0x80) != 0)
            {
              v98 = *a1;
              if (strcasecmp(*a1, *MEMORY[0x29EDBF7F0]))
              {
                if (!strcasecmp(v98, *MEMORY[0x29EDBF7B0]) || !strcasecmp(v98, *MEMORY[0x29EDBF7B8]))
                {
                  goto LABEL_323;
                }

                if (strcasecmp(v98, *MEMORY[0x29EDBE790]))
                {
                  if (!strcasecmp(v98, *MEMORY[0x29EDBEDD8]) || !strcasecmp(v98, *MEMORY[0x29EDBEF80]))
                  {
                    goto LABEL_323;
                  }

                  if (strcasecmp(v98, *MEMORY[0x29EDBF410]))
                  {
LABEL_272:
                    v99 = strcasecmp(v98, *MEMORY[0x29EDBFC98]);
                    if (!v99)
                    {
                      if (capabilities::radio::dal(v99))
                      {
                        goto LABEL_323;
                      }

                      LOBYTE(v5) = a1[23];
                    }

                    v110 = *a1;
                    if ((v5 & 0x80u) == 0)
                    {
                      v111 = a1;
                    }

                    else
                    {
                      v111 = *a1;
                    }

                    v112 = strcasecmp(v111, *MEMORY[0x29EDBFC80]);
                    if (!v112)
                    {
                      if (capabilities::radio::dal(v112))
                      {
                        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                        v113 = util::convert<int>(&v138, &__p, 0);
                        if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
                        {
                          v114 = v113;
                        }

                        else
                        {
                          v114 = 0;
                        }

                        if (v114 != 1)
                        {
                          goto LABEL_378;
                        }

                        goto LABEL_334;
                      }

                      LOBYTE(v5) = a1[23];
                      v110 = *a1;
                    }

                    if ((v5 & 0x80u) == 0)
                    {
                      v115 = a1;
                    }

                    else
                    {
                      v115 = v110;
                    }

                    v116 = strcasecmp(v115, *MEMORY[0x29EDBFC90]);
                    if (!v116)
                    {
                      if (capabilities::radio::dal(v116))
                      {
LABEL_323:
                        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                        v39 = prop::file::set<std::string>(__dst, a1, &v138);
                        goto LABEL_121;
                      }

                      LOBYTE(v5) = a1[23];
                      v110 = *a1;
                    }

                    if ((v5 & 0x80u) == 0)
                    {
                      v117 = a1;
                    }

                    else
                    {
                      v117 = v110;
                    }

                    v118 = strcasecmp(v117, *MEMORY[0x29EDBFC78]);
                    if (!v118)
                    {
                      if (capabilities::radio::dal(v118))
                      {
                        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                        v119 = util::convert<int>(&v138, &__p, 0);
                        if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
                        {
                          v120 = v119;
                        }

                        else
                        {
                          v120 = 0;
                        }

                        if (v120 != 1)
                        {
                          goto LABEL_378;
                        }

                        goto LABEL_334;
                      }

                      LOBYTE(v5) = a1[23];
                      v110 = *a1;
                    }

                    if ((v5 & 0x80u) == 0)
                    {
                      v121 = a1;
                    }

                    else
                    {
                      v121 = v110;
                    }

                    v122 = strcasecmp(v121, *MEMORY[0x29EDBFCA8]);
                    if (!v122)
                    {
                      if (capabilities::trace::supportsErrorHandling(v122))
                      {
                        *__dst = -1431655766;
                        if ((util::convert<int>(&v138, __dst, 0) & 1) == 0)
                        {
                          goto LABEL_378;
                        }

                        v53 = *__dst;
                        if (*__dst > 2u)
                        {
                          goto LABEL_378;
                        }

                        goto LABEL_364;
                      }

                      LOBYTE(v5) = a1[23];
                      v110 = *a1;
                    }

                    if ((v5 & 0x80u) == 0)
                    {
                      v123 = a1;
                    }

                    else
                    {
                      v123 = v110;
                    }

                    v124 = strcasecmp(v123, *MEMORY[0x29EDBF648]);
                    if (!v124)
                    {
                      if (capabilities::radio::initium(v124))
                      {
                        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
                        v125 = util::convert<unsigned int>(&v138, &__p);
                        if (LODWORD(__p.__r_.__value_.__l.__data_))
                        {
                          v126 = v125;
                        }

                        else
                        {
                          v126 = 0;
                        }

                        if (v126 == 1)
                        {
                          goto LABEL_354;
                        }

                        goto LABEL_378;
                      }

                      LOBYTE(v5) = a1[23];
                      v110 = *a1;
                    }

                    if ((v5 & 0x80u) == 0)
                    {
                      v127 = a1;
                    }

                    else
                    {
                      v127 = v110;
                    }

                    v128 = strcasecmp(v127, *MEMORY[0x29EDBF500]);
                    if (!v128)
                    {
                      if (capabilities::radio::initium(v128))
                      {
                        *__dst = -1431655766;
                        if ((util::convert<int>(&v138, __dst, 0) & 1) == 0)
                        {
                          goto LABEL_378;
                        }

                        v53 = *__dst;
                        if (*__dst > 2u)
                        {
                          goto LABEL_378;
                        }

                        goto LABEL_364;
                      }

                      LOBYTE(v5) = a1[23];
                      v110 = *a1;
                    }

                    if ((v5 & 0x80u) == 0)
                    {
                      v129 = a1;
                    }

                    else
                    {
                      v129 = v110;
                    }

                    if (!strcasecmp(v129, *MEMORY[0x29EDBF2D8]))
                    {
                      std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                      v39 = prop::file::set<std::string>(__dst, a1, a2);
                      goto LABEL_121;
                    }

                    sGetOsLogContext();
                    v130 = qword_2A18CB2E8;
                    if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_378;
                    }

                    v131 = *MEMORY[0x29EDBF8A0];
                    if (a1[23] >= 0)
                    {
                      v132 = a1;
                    }

                    else
                    {
                      v132 = *a1;
                    }

                    v133 = &v138;
                    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v133 = v138.__r_.__value_.__r.__words[0];
                    }

                    *__dst = 136315650;
                    *&__dst[4] = v131;
                    *&__dst[12] = 2080;
                    *&__dst[14] = v132;
                    *&__dst[22] = 2080;
                    v140 = v133;
                    v107 = "[bbtrace] set: Invalid key; domain='%s' key='%s' value='%s'";
                    v108 = v130;
                    v109 = 32;
LABEL_377:
                    _os_log_error_impl(&dword_297476000, v108, OS_LOG_TYPE_ERROR, v107, __dst, v109);
                    goto LABEL_378;
                  }

                  goto LABEL_282;
                }

LABEL_288:
                data = -1431655766;
                v100 = util::convert<unsigned int>(&v138, &data);
                if (v100)
                {
                  v101 = data;
                  v102 = defaults::bbtrace::min_file_size(v100);
                  if (v101 < v102)
                  {
                    v101 = defaults::bbtrace::min_file_size(v102);
                  }

                  if (!v101)
                  {
                    sGetOsLogContext();
                    v106 = qword_2A18CB2E8;
                    if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_378;
                    }

                    *__dst = 0;
                    v107 = "file size cannot be 0";
                    v108 = v106;
                    v109 = 2;
                    goto LABEL_377;
                  }

                  data = 1 << (__clz(v101) ^ 0x1F);
                  std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                  v100 = prop::file::set<unsigned int>(__dst, a1, &data);
                  v103 = v100;
                  if ((__dst[23] & 0x80000000) != 0)
                  {
                    operator delete(*__dst);
                  }
                }

                else
                {
                  v103 = 0;
                }

                v104 = capabilities::trace::defaultHistorySizeMB(v100);
                v105 = 0x7FFFFFFF;
                if (v104 < 0x7FFFFFFF)
                {
                  v105 = v104;
                }

                __val = v105;
                std::string::basic_string[abi:ne200100]<0>(__dst, v6);
                prop::bbtrace::get<int>(__dst, &__val);
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                if (v103)
                {
                  std::string::basic_string[abi:ne200100]<0>(__dst, v6);
                  std::to_string(&__p, __val);
                  v16 = prop::bbtrace::set(__dst, &__p);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_122;
                }

                goto LABEL_378;
              }
            }

            else if (strcasecmp(a1, *MEMORY[0x29EDBF7F0]))
            {
              if (!strcasecmp(a1, *MEMORY[0x29EDBF7B0]) || !strcasecmp(a1, *MEMORY[0x29EDBF7B8]))
              {
                goto LABEL_323;
              }

              if (strcasecmp(a1, *MEMORY[0x29EDBE790]))
              {
                if (!strcasecmp(a1, *MEMORY[0x29EDBEDD8]) || !strcasecmp(a1, *MEMORY[0x29EDBEF80]))
                {
                  goto LABEL_323;
                }

                v98 = a1;
                if (strcasecmp(a1, *MEMORY[0x29EDBF410]))
                {
                  goto LABEL_272;
                }

LABEL_282:
                __p.__r_.__value_.__s.__data_[0] = -86;
                if (!util::convert<BOOL>(&v138, &__p, 0))
                {
                  goto LABEL_378;
                }

                goto LABEL_285;
              }

              goto LABEL_288;
            }

            __p.__r_.__value_.__s.__data_[0] = 0;
            if (!util::convert<BOOL>(&v138, &__p, 0))
            {
              goto LABEL_378;
            }

LABEL_285:
            std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
            v39 = prop::file::set<BOOL>(__dst, a1, &__p);
            goto LABEL_121;
          }
        }

        else
        {
          v87 = a1;
          if (strcasecmp(a1, *MEMORY[0x29EDBFCB0]))
          {
            goto LABEL_234;
          }
        }

        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v138, &__p, 0))
        {
          goto LABEL_378;
        }

        goto LABEL_285;
      }
    }

    else
    {
      v68 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBD4C0]))
      {
        goto LABEL_185;
      }
    }

    __p.__r_.__value_.__s.__data_[0] = -86;
    if (!util::convert<BOOL>(&v138, &__p, 0))
    {
      goto LABEL_378;
    }

    goto LABEL_285;
  }

LABEL_37:
  LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
  v15 = util::convert<int>(&v138, &__p, 0);
  v16 = v15;
  if (SLODWORD(__p.__r_.__value_.__l.__data_) < 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1)
  {
    v18 = capabilities::trace::defaultHistorySizeMB(v15);
    v19 = 0x7FFFFFFF;
    if (v18 < 0x7FFFFFFF)
    {
      v19 = v18;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = v19;
  }

  if (v16)
  {
LABEL_334:
    std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
    v39 = prop::file::set<int>(__dst, a1, &__p);
    goto LABEL_121;
  }

LABEL_379:
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_297607A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::coredump::set(std::string::size_type a1, char *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  memset(&v18, 170, sizeof(v18));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::coredump::get(a1, &v18))
  {
    goto LABEL_38;
  }

LABEL_9:
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (strcasecmp(v5, *MEMORY[0x29EDBE6E0]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }
    }

    v7 = *MEMORY[0x29EDBE5F8];
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v18;
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v18.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v20 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[coredump] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_38:
    v15 = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_39;
    }

    return v15;
  }

  v17 = -86;
  if (!util::convert<BOOL>(&v18, &v17, 0))
  {
    goto LABEL_38;
  }

  v10 = *MEMORY[0x29EDBE5F8];
  v11 = strlen(*MEMORY[0x29EDBE5F8]);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    *&buf[8] = v12;
    *&buf[16] = v14 | 0x8000000000000000;
    *buf = v13;
    goto LABEL_31;
  }

  buf[23] = v11;
  v13 = buf;
  if (v11)
  {
LABEL_31:
    memmove(v13, v10, v12);
  }

  v13[v12] = 0;
  v15 = prop::file::set<BOOL>(buf, a1, &v17);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_39;
    }
  }

  else if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_39:
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_2976081BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::ipc::set(char *a1, char *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  memset(&v27, 170, sizeof(v27));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v27 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::ipc::get(a1, &v27))
  {
    goto LABEL_56;
  }

LABEL_9:
  if (a1[23] < 0)
  {
    v5 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE6E0]))
    {
      if (strcasecmp(v5, *MEMORY[0x29EDBE6E8]))
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }

LABEL_33:
    LOBYTE(v26) = -86;
    if (!util::convert<BOOL>(&v27, &v26, 0))
    {
      goto LABEL_56;
    }

    v17 = *MEMORY[0x29EDBF8E8];
    v18 = strlen(*MEMORY[0x29EDBF8E8]);
    if (v18 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      if ((v18 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v18 | 7) + 1;
      }

      v20 = operator new(v21);
      *&buf[8] = v19;
      *&buf[16] = v21 | 0x8000000000000000;
      *buf = v20;
    }

    else
    {
      buf[23] = v18;
      v20 = buf;
      if (!v18)
      {
        goto LABEL_43;
      }
    }

    memmove(v20, v17, v19);
LABEL_43:
    v20[v19] = 0;
    v22 = prop::file::set<BOOL>(buf, a1, &v26);
    goto LABEL_50;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBE6E0]))
  {
    goto LABEL_33;
  }

  v5 = a1;
  if (strcasecmp(a1, *MEMORY[0x29EDBE6E8]))
  {
LABEL_12:
    v6 = strcasecmp(v5, "BufferCount");
    if (v6 || (capabilities::ipc::supportsPCI(v6) & 1) == 0)
    {
      if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
      {
        qword_2A18CB2E0 = 0;
        qword_2A18CB2E8 = 0;
        __cxa_guard_release(&qword_2A18CB2D8);
      }

      if (_MergedGlobals_12 == -1)
      {
        v7 = qword_2A18CB2E8;
        if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
        v7 = qword_2A18CB2E8;
        if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      v8 = *MEMORY[0x29EDBF8E8];
      if (a1[23] >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      v10 = &v27;
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v27.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = v9;
      *&buf[22] = 2080;
      v29 = v10;
      _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "[ipc] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
    }

LABEL_56:
    v24 = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_57;
    }

    return v24;
  }

LABEL_25:
  v26 = -1431655766;
  v11 = util::convert<int>(&v27, &v26, 0);
  if (v26 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 != 1)
  {
    goto LABEL_56;
  }

  v13 = *MEMORY[0x29EDBF8E8];
  v14 = strlen(*MEMORY[0x29EDBF8E8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v14 | 7) + 1;
    }

    v16 = operator new(v23);
    *&buf[8] = v15;
    *&buf[16] = v23 | 0x8000000000000000;
    *buf = v16;
  }

  else
  {
    buf[23] = v14;
    v16 = buf;
    if (!v14)
    {
      goto LABEL_49;
    }
  }

  memmove(v16, v13, v15);
LABEL_49:
  v16[v15] = 0;
  v22 = prop::file::set<int>(buf, a1, &v26);
LABEL_50:
  v24 = v22;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_57;
    }
  }

  else if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_57:
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return v24;
}

void sub_297608648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::bbipc::set(char *a1, char *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  memset(&v29, 170, sizeof(v29));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v29 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::bbipc::get(a1, &v29))
  {
    goto LABEL_63;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE6E0]))
    {
      v5 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBE7A0]))
      {
        goto LABEL_12;
      }

LABEL_24:
      v28 = -1431655766;
      if (!util::convert<int>(&v29, &v28, 0))
      {
        goto LABEL_63;
      }

      v10 = *MEMORY[0x29EDBE7A8];
      v11 = strlen(*MEMORY[0x29EDBE7A8]);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v11 | 7) + 1;
        }

        v13 = operator new(v24);
        *&buf[8] = v12;
        *&buf[16] = v24 | 0x8000000000000000;
        *buf = v13;
      }

      else
      {
        buf[23] = v11;
        v13 = buf;
        if (!v11)
        {
          goto LABEL_50;
        }
      }

      memmove(v13, v10, v12);
LABEL_50:
      v13[v12] = 0;
      v23 = prop::file::set<int>(buf, a1, &v28);
      goto LABEL_57;
    }

LABEL_29:
    LOBYTE(v28) = -86;
    if (!util::convert<BOOL>(&v29, &v28, 0))
    {
      goto LABEL_63;
    }

    v14 = *MEMORY[0x29EDBE7A8];
    v15 = strlen(*MEMORY[0x29EDBE7A8]);
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v15 | 7) + 1;
      }

      v17 = operator new(v22);
      *&buf[8] = v16;
      *&buf[16] = v22 | 0x8000000000000000;
      *buf = v17;
    }

    else
    {
      buf[23] = v15;
      v17 = buf;
      if (!v15)
      {
        goto LABEL_44;
      }
    }

    memmove(v17, v14, v16);
LABEL_44:
    v17[v16] = 0;
    v23 = prop::file::set<BOOL>(buf, a1, &v28);
    goto LABEL_57;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE6E0]))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, *MEMORY[0x29EDBE7A0]))
  {
    goto LABEL_24;
  }

LABEL_12:
  if (strcasecmp(v5, *MEMORY[0x29EDBEA38]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }
    }

    v7 = *MEMORY[0x29EDBE7A8];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v29;
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v29.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v31 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[bbipc] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_63:
    v26 = 0;
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_64;
    }

    return v26;
  }

  v28 = -1431655766;
  if (!util::convert<unsigned int>(&v29, &v28))
  {
    goto LABEL_63;
  }

  v18 = *MEMORY[0x29EDBE7A8];
  v19 = strlen(*MEMORY[0x29EDBE7A8]);
  if (v19 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v19 | 7) + 1;
    }

    v21 = operator new(v25);
    *&buf[8] = v20;
    *&buf[16] = v25 | 0x8000000000000000;
    *buf = v21;
  }

  else
  {
    buf[23] = v19;
    v21 = buf;
    if (!v19)
    {
      goto LABEL_56;
    }
  }

  memmove(v21, v18, v20);
LABEL_56:
  v21[v20] = 0;
  v23 = prop::file::set<unsigned int>(buf, a1, &v28);
LABEL_57:
  v26 = v23;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_64;
    }
  }

  else if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_64:
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  return v26;
}

void sub_297608B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::compression::set(char *a1, char *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  memset(&v26, 170, sizeof(v26));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v26 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::compression::get(a1, &v26))
  {
    goto LABEL_46;
  }

LABEL_9:
  v5 = a1[23];
  v6 = *a1;
  if (v5 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (strcasecmp(v7, *MEMORY[0x29EDBD4A0]))
  {
    v8 = 0;
    goto LABEL_28;
  }

  v25 = 0;
  if (util::convert<int>(&v26, &v25, 0))
  {
    v9 = *MEMORY[0x29EDBE7B0];
    v10 = strlen(*MEMORY[0x29EDBE7B0]);
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      if ((v10 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v10 | 7) + 1;
      }

      v12 = operator new(v13);
      *&__dst[8] = v11;
      *&__dst[16] = v13 | 0x8000000000000000;
      *__dst = v12;
    }

    else
    {
      __dst[23] = v10;
      v12 = __dst;
      if (!v10)
      {
LABEL_25:
        v12[v11] = 0;
        v8 = prop::file::set<int>(__dst, a1, &v25);
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        goto LABEL_27;
      }
    }

    memmove(v12, v9, v11);
    goto LABEL_25;
  }

  v8 = 0;
LABEL_27:
  LOBYTE(v5) = a1[23];
  v6 = *a1;
LABEL_28:
  if ((v5 & 0x80u) == 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = v6;
  }

  if (!strcasecmp(v14, *MEMORY[0x29EDBD340]))
  {
    LOBYTE(v25) = 1;
    if (util::convert<BOOL>(&v26, &v25, 0))
    {
      v19 = *MEMORY[0x29EDBE7B0];
      v20 = strlen(*MEMORY[0x29EDBE7B0]);
      if (v20 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v21 = v20;
      if (v20 >= 0x17)
      {
        if ((v20 | 7) == 0x17)
        {
          v23 = 25;
        }

        else
        {
          v23 = (v20 | 7) + 1;
        }

        v22 = operator new(v23);
        *&__dst[8] = v21;
        *&__dst[16] = v23 | 0x8000000000000000;
        *__dst = v22;
      }

      else
      {
        __dst[23] = v20;
        v22 = __dst;
        if (!v20)
        {
LABEL_52:
          v22[v21] = 0;
          v8 = prop::file::set<BOOL>(__dst, a1, &v25);
          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

          goto LABEL_54;
        }
      }

      memmove(v22, v19, v21);
      goto LABEL_52;
    }

LABEL_46:
    v8 = 0;
    goto LABEL_54;
  }

  if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
  {
    qword_2A18CB2E0 = 0;
    qword_2A18CB2E8 = 0;
    __cxa_guard_release(&qword_2A18CB2D8);
  }

  if (_MergedGlobals_12 == -1)
  {
    v15 = qword_2A18CB2E8;
    if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
    v15 = qword_2A18CB2E8;
    if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }
  }

  v16 = *MEMORY[0x29EDBE7B0];
  if (a1[23] >= 0)
  {
    v17 = a1;
  }

  else
  {
    v17 = *a1;
  }

  v18 = &v26;
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v26.__r_.__value_.__r.__words[0];
  }

  *__dst = 136315650;
  *&__dst[4] = v16;
  *&__dst[12] = 2080;
  *&__dst[14] = v17;
  *&__dst[22] = 2080;
  v28 = v18;
  _os_log_error_impl(&dword_297476000, v15, OS_LOG_TYPE_ERROR, "[compression] set: Invalid key; domain='%s' key='%s' value='%s'", __dst, 0x20u);
LABEL_54:
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_297608FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::ttr::set(char *a1, char *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  memset(&v24, 170, sizeof(v24));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v24 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::ttr::get(a1, &v24))
  {
    goto LABEL_54;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    v5 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      goto LABEL_11;
    }

LABEL_22:
    v23 = -1431655766;
    v10 = util::convert<unsigned int>(&v24, &v23);
    if (v23 < 4)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11 != 1)
    {
      goto LABEL_54;
    }

    v12 = *MEMORY[0x29EDBE718];
    v13 = strlen(*MEMORY[0x29EDBE718]);
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      if ((v13 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v13 | 7) + 1;
      }

      v15 = operator new(v19);
      *&buf[8] = v14;
      *&buf[16] = v19 | 0x8000000000000000;
      *buf = v15;
    }

    else
    {
      buf[23] = v13;
      v15 = buf;
      if (!v13)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_47;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_22;
  }

LABEL_11:
  if (strcasecmp(v5, *MEMORY[0x29EDBF2D0]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }
    }

    v7 = *MEMORY[0x29EDBE718];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v24.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v26 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[ttr] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_54:
    v21 = 0;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_55;
    }

    return v21;
  }

  v23 = -1431655766;
  v16 = util::convert<unsigned int>(&v24, &v23);
  if (v23)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 != 1)
  {
    goto LABEL_54;
  }

  v12 = *MEMORY[0x29EDBE718];
  v18 = strlen(*MEMORY[0x29EDBE718]);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v18;
  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v18 | 7) + 1;
    }

    v15 = operator new(v20);
    *&buf[8] = v14;
    *&buf[16] = v20 | 0x8000000000000000;
    *buf = v15;
    goto LABEL_47;
  }

  buf[23] = v18;
  v15 = buf;
  if (v18)
  {
LABEL_47:
    memmove(v15, v12, v14);
  }

LABEL_48:
  v15[v14] = 0;
  v21 = prop::file::set<unsigned int>(buf, a1, &v23);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_55;
    }
  }

  else if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_55:
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v21;
}

void sub_297609440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::logfilter::set(char *a1, char *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  memset(&v30, 170, sizeof(v30));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v30 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::logfilter::get(a1, &v30))
  {
    goto LABEL_68;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBEB40]))
    {
      v5 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEDE8]))
      {
        goto LABEL_12;
      }

LABEL_24:
      v29 = -1431655766;
      v10 = util::convert<int>(&v30, &v29, 0);
      if (v29 > -2)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11 != 1)
      {
        goto LABEL_68;
      }

      v12 = *MEMORY[0x29EDBE528];
      v13 = strlen(*MEMORY[0x29EDBE528]);
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        if ((v13 | 7) == 0x17)
        {
          v25 = 25;
        }

        else
        {
          v25 = (v13 | 7) + 1;
        }

        v15 = operator new(v25);
        *&buf[8] = v14;
        *&buf[16] = v25 | 0x8000000000000000;
        *buf = v15;
      }

      else
      {
        buf[23] = v13;
        v15 = buf;
        if (!v13)
        {
          goto LABEL_50;
        }
      }

LABEL_49:
      memmove(v15, v12, v14);
LABEL_50:
      v15[v14] = 0;
      v24 = prop::file::set<int>(buf, a1, &v29);
      goto LABEL_62;
    }

LABEL_32:
    v29 = -1431655766;
    v16 = util::convert<int>(&v30, &v29, 0);
    if (v29 > -2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 != 1)
    {
      goto LABEL_68;
    }

    v12 = *MEMORY[0x29EDBE528];
    v18 = strlen(*MEMORY[0x29EDBE528]);
    if (v18 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v18;
    if (v18 >= 0x17)
    {
      if ((v18 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v18 | 7) + 1;
      }

      v15 = operator new(v23);
      *&buf[8] = v14;
      *&buf[16] = v23 | 0x8000000000000000;
      *buf = v15;
    }

    else
    {
      buf[23] = v18;
      v15 = buf;
      if (!v18)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_49;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBEB40]))
  {
    goto LABEL_32;
  }

  if (!strcasecmp(v5, *MEMORY[0x29EDBEDE8]))
  {
    goto LABEL_24;
  }

LABEL_12:
  if (strcasecmp(v5, *MEMORY[0x29EDBF810]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }
    }

    v7 = *MEMORY[0x29EDBE528];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v30;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v30.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v32 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[logfilter] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_68:
    v27 = 0;
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_69;
    }

    return v27;
  }

  LOBYTE(v29) = 1;
  if (!util::convert<BOOL>(&v30, &v29, 0))
  {
    goto LABEL_68;
  }

  v19 = *MEMORY[0x29EDBE528];
  v20 = strlen(*MEMORY[0x29EDBE528]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v20 | 7) + 1;
    }

    v22 = operator new(v26);
    *&buf[8] = v21;
    *&buf[16] = v26 | 0x8000000000000000;
    *buf = v22;
  }

  else
  {
    buf[23] = v20;
    v22 = buf;
    if (!v20)
    {
      goto LABEL_61;
    }
  }

  memmove(v22, v19, v21);
LABEL_61:
  v22[v21] = 0;
  v24 = prop::file::set<BOOL>(buf, a1, &v29);
LABEL_62:
  v27 = v24;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_69;
    }
  }

  else if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_69:
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  return v27;
}

void sub_297609998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::systemlogs::set(char *a1, char *a2)
{
  v36 = *MEMORY[0x29EDCA608];
  memset(&v33, 170, sizeof(v33));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v33 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::systemlogs::get(a1, &v33))
  {
    goto LABEL_73;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      v5 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBE6E8]))
      {
        goto LABEL_12;
      }

LABEL_24:
      v32 = -1431655766;
      v10 = util::convert<int>(&v33, &v32, 0);
      if (v32 > 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11 != 1)
      {
        goto LABEL_73;
      }

      v12 = *MEMORY[0x29EDBE710];
      v13 = strlen(*MEMORY[0x29EDBE710]);
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        if ((v13 | 7) == 0x17)
        {
          v26 = 25;
        }

        else
        {
          v26 = (v13 | 7) + 1;
        }

        v15 = operator new(v26);
        *&buf[8] = v14;
        *&buf[16] = v26 | 0x8000000000000000;
        *buf = v15;
      }

      else
      {
        buf[23] = v13;
        v15 = buf;
        if (!v13)
        {
          goto LABEL_54;
        }
      }

      memmove(v15, v12, v14);
LABEL_54:
      v15[v14] = 0;
      v27 = prop::file::set<int>(buf, a1, &v32);
      goto LABEL_67;
    }

LABEL_32:
    v32 = -1431655766;
    if (TelephonyUtilIsInternalBuild())
    {
      IsCarrierBuild = 1;
    }

    else
    {
      IsCarrierBuild = TelephonyUtilIsCarrierBuild();
    }

    if (!util::convert<unsigned int>(&v33, &v32))
    {
      goto LABEL_73;
    }

    v17 = IsCarrierBuild ? 3 : 2;
    if (v32 >= v17)
    {
      goto LABEL_73;
    }

    v18 = *MEMORY[0x29EDBE710];
    v19 = strlen(*MEMORY[0x29EDBE710]);
    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v20 = v19;
    if (v19 >= 0x17)
    {
      if ((v19 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v19 | 7) + 1;
      }

      v21 = operator new(v28);
      *&buf[8] = v20;
      *&buf[16] = v28 | 0x8000000000000000;
      *buf = v21;
    }

    else
    {
      buf[23] = v19;
      v21 = buf;
      if (!v19)
      {
        goto LABEL_60;
      }
    }

    memmove(v21, v18, v20);
LABEL_60:
    v21[v20] = 0;
    v27 = prop::file::set<unsigned int>(buf, a1, &v32);
    goto LABEL_67;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_32;
  }

  if (!strcasecmp(v5, *MEMORY[0x29EDBE6E8]))
  {
    goto LABEL_24;
  }

LABEL_12:
  if (strcasecmp(v5, *MEMORY[0x29EDBF0A8]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }
    }

    v7 = *MEMORY[0x29EDBE710];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v33;
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v33.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v35 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[systemlogs] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_73:
    v30 = 0;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_74;
    }

    return v30;
  }

  LOBYTE(v32) = -86;
  if (!util::convert<BOOL>(&v33, &v32, 0))
  {
    goto LABEL_73;
  }

  v22 = *MEMORY[0x29EDBE710];
  v23 = strlen(*MEMORY[0x29EDBE710]);
  if (v23 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v23 | 7) + 1;
    }

    v25 = operator new(v29);
    *&buf[8] = v24;
    *&buf[16] = v29 | 0x8000000000000000;
    *buf = v25;
  }

  else
  {
    buf[23] = v23;
    v25 = buf;
    if (!v23)
    {
      goto LABEL_66;
    }
  }

  memmove(v25, v22, v24);
LABEL_66:
  v25[v24] = 0;
  v27 = prop::file::set<BOOL>(buf, a1, &v32);
LABEL_67:
  v30 = v27;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_74;
    }
  }

  else if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_74:
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  return v30;
}

void sub_297609F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::profile::set(char *a1, char *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  memset(&v24, 170, sizeof(v24));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v24 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::profile::get(a1, &v24))
  {
    goto LABEL_50;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    v5 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBE4C8]))
    {
      goto LABEL_11;
    }

LABEL_22:
    LOBYTE(v23) = -86;
    if (!util::convert<BOOL>(&v24, &v23, 0))
    {
      goto LABEL_50;
    }

    v10 = *MEMORY[0x29EDBE5B0];
    v11 = strlen(*MEMORY[0x29EDBE5B0]);
    if (v11 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      if ((v11 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v11 | 7) + 1;
      }

      v13 = operator new(v18);
      *&buf[8] = v12;
      *&buf[16] = v18 | 0x8000000000000000;
      *buf = v13;
    }

    else
    {
      buf[23] = v11;
      v13 = buf;
      if (!v11)
      {
        goto LABEL_37;
      }
    }

    memmove(v13, v10, v12);
LABEL_37:
    v13[v12] = 0;
    v19 = prop::file::set<BOOL>(buf, a1, &v23);
    goto LABEL_44;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE4C8]))
  {
    goto LABEL_22;
  }

LABEL_11:
  if (strcasecmp(v5, *MEMORY[0x29EDBF7D0]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }
    }

    v7 = *MEMORY[0x29EDBE5B0];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v24.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v26 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[profile] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_50:
    v21 = 0;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_51;
    }

    return v21;
  }

  v23 = -1431655766;
  if (!util::convert<int>(&v24, &v23, 0))
  {
    goto LABEL_50;
  }

  v14 = *MEMORY[0x29EDBE5B0];
  v15 = strlen(*MEMORY[0x29EDBE5B0]);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v15 | 7) + 1;
    }

    v17 = operator new(v20);
    *&buf[8] = v16;
    *&buf[16] = v20 | 0x8000000000000000;
    *buf = v17;
  }

  else
  {
    buf[23] = v15;
    v17 = buf;
    if (!v15)
    {
      goto LABEL_43;
    }
  }

  memmove(v17, v14, v16);
LABEL_43:
  v17[v16] = 0;
  v19 = prop::file::set<std::string>(buf, a1, &v24);
LABEL_44:
  v21 = v19;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_51;
    }
  }

  else if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_51:
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v21;
}

void sub_29760A370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::tailspin::set(std::string::size_type a1, char *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  memset(&v18, 170, sizeof(v18));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::tailspin::get(a1, &v18))
  {
    goto LABEL_38;
  }

LABEL_9:
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (strcasecmp(v5, *MEMORY[0x29EDBE4C8]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }
    }

    v7 = *MEMORY[0x29EDBE608];
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v18;
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v18.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v20 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[tailspin] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_38:
    v15 = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_39;
    }

    return v15;
  }

  v17 = -86;
  if (!util::convert<BOOL>(&v18, &v17, 0))
  {
    goto LABEL_38;
  }

  v10 = *MEMORY[0x29EDBE608];
  v11 = strlen(*MEMORY[0x29EDBE608]);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    *&buf[8] = v12;
    *&buf[16] = v14 | 0x8000000000000000;
    *buf = v13;
    goto LABEL_31;
  }

  buf[23] = v11;
  v13 = buf;
  if (v11)
  {
LABEL_31:
    memmove(v13, v10, v12);
  }

  v13[v12] = 0;
  v15 = prop::file::set<BOOL>(buf, a1, &v17);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_39;
    }
  }

  else if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_39:
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_29760A6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::tracesettings::set(char *a1, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  memset(&v26, 170, sizeof(v26));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
  }

  else
  {
    v26 = *a2;
  }

  if (a1[23] < 0)
  {
    v3 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBEF68]))
    {
      if (strcasecmp(v3, *MEMORY[0x29EDBF098]))
      {
        if (strcasecmp(v3, *MEMORY[0x29EDBEA40]))
        {
LABEL_8:
          if (strcasecmp(v3, *MEMORY[0x29EDBEDD0]))
          {
            if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
            {
              qword_2A18CB2E0 = 0;
              qword_2A18CB2E8 = 0;
              __cxa_guard_release(&qword_2A18CB2D8);
            }

            if (_MergedGlobals_12 == -1)
            {
              v4 = qword_2A18CB2E8;
              if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_67;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
              v4 = qword_2A18CB2E8;
              if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_67;
              }
            }

            v5 = *MEMORY[0x29EDBE600];
            if (a1[23] >= 0)
            {
              v6 = a1;
            }

            else
            {
              v6 = *a1;
            }

            v7 = &v26;
            if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v7 = v26.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = v5;
            *&buf[12] = 2080;
            *&buf[14] = v6;
            *&buf[22] = 2080;
            v28 = v7;
            _os_log_error_impl(&dword_297476000, v4, OS_LOG_TYPE_ERROR, "[tracesettings] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_67:
            v23 = 0;
            if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_68;
            }

            return v23;
          }

          v25 = -1431655766;
          if (!util::convert<int>(&v26, &v25, 0))
          {
            goto LABEL_67;
          }

          v12 = *MEMORY[0x29EDBE600];
          v20 = strlen(*MEMORY[0x29EDBE600]);
          if (v20 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v14 = v20;
          if (v20 >= 0x17)
          {
            if ((v20 | 7) == 0x17)
            {
              v22 = 25;
            }

            else
            {
              v22 = (v20 | 7) + 1;
            }

            v15 = operator new(v22);
            *&buf[8] = v14;
            *&buf[16] = v22 | 0x8000000000000000;
            *buf = v15;
          }

          else
          {
            buf[23] = v20;
            v15 = buf;
            if (!v20)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_59;
        }

LABEL_21:
        v8 = *MEMORY[0x29EDBE600];
        v9 = strlen(*MEMORY[0x29EDBE600]);
        if (v9 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v10 = v9;
        if (v9 >= 0x17)
        {
          if ((v9 | 7) == 0x17)
          {
            v21 = 25;
          }

          else
          {
            v21 = (v9 | 7) + 1;
          }

          v11 = operator new(v21);
          *&buf[8] = v10;
          *&buf[16] = v21 | 0x8000000000000000;
          *buf = v11;
        }

        else
        {
          buf[23] = v9;
          v11 = buf;
          if (!v9)
          {
            goto LABEL_39;
          }
        }

LABEL_38:
        memmove(v11, v8, v10);
LABEL_39:
        v11[v10] = 0;
        v18 = prop::file::set<std::string>(buf, a1, &v26);
        goto LABEL_61;
      }

LABEL_30:
      v8 = *MEMORY[0x29EDBE600];
      v16 = strlen(*MEMORY[0x29EDBE600]);
      if (v16 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v16;
      if (v16 >= 0x17)
      {
        if ((v16 | 7) == 0x17)
        {
          v17 = 25;
        }

        else
        {
          v17 = (v16 | 7) + 1;
        }

        v11 = operator new(v17);
        *&buf[8] = v10;
        *&buf[16] = v17 | 0x8000000000000000;
        *buf = v11;
      }

      else
      {
        buf[23] = v16;
        v11 = buf;
        if (!v16)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_38;
    }
  }

  else if (strcasecmp(a1, *MEMORY[0x29EDBEF68]))
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBF098]))
    {
      v3 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEA40]))
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v25 = -1431655766;
  if (!util::convert<int>(&v26, &v25, 0))
  {
    goto LABEL_67;
  }

  v12 = *MEMORY[0x29EDBE600];
  v13 = strlen(*MEMORY[0x29EDBE600]);
  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v13 | 7) + 1;
    }

    v15 = operator new(v19);
    *&buf[8] = v14;
    *&buf[16] = v19 | 0x8000000000000000;
    *buf = v15;
  }

  else
  {
    buf[23] = v13;
    v15 = buf;
    if (!v13)
    {
      goto LABEL_60;
    }
  }

LABEL_59:
  memmove(v15, v12, v14);
LABEL_60:
  v15[v14] = 0;
  v18 = prop::file::set<int>(buf, a1, &v25);
LABEL_61:
  v23 = v18;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_68;
    }
  }

  else if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_68:
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v23;
}

void sub_29760AC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::file::set<BOOL>(const void **a1, uint64_t a2, unsigned __int8 *a3)
{
  memset(__p, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v31, 0, sizeof(v31));
    v10 = &v31;
    *(&v31.__r_.__value_.__s + 23) = v4 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    v31.__r_.__value_.__l.__size_ = v4 + 1;
    v31.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v31.__r_.__value_.__r.__words[0] = v10;
  }

  if (v3 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  memmove(v10, v11, v4);
LABEL_15:
  *&v10[v4] = 46;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::string::append(&v31, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  __p[2] = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v17 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v17 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  for (; v18 != v17; v18 = (v18 + 1))
  {
    *v18 = __tolower(*v18);
  }

  std::to_string(&v31, *a3);
  v19 = *&v31.__r_.__value_.__l.__data_;
  v20 = v31.__r_.__value_.__r.__words[2];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18CAF18)
  {
    v22 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v22, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v31.__r_.__value_.__r.__words[0] = v22;
    v21 = operator new(0x20uLL);
    *v21 = &unk_2A1E43EE0;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = v22;
    v23 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v22;
    *(&xmmword_2A18CAF18 + 1) = v21;
    if (!v23)
    {
      *&v29 = v22;
      *(&v29 + 1) = v21;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  v21 = *(&xmmword_2A18CAF18 + 1);
  v22 = xmmword_2A18CAF18;
  v29 = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if ((v20 & 0x8000000000000000) == 0)
  {
    *&v28.__r_.__value_.__l.__data_ = v19;
    v28.__r_.__value_.__r.__words[2] = v20;
LABEL_42:
    v31 = v28;
    goto LABEL_43;
  }

  std::string::__init_copy_ctor_external(&v28, v19, *(&v19 + 1));
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v31, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
LABEL_43:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = ctu::cf::plist_adapter::set<std::string>(v22, &v31, v24, 1);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v28.__r_.__value_.__l.__data_);
    v26 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v26 = *(&v29 + 1);
  if (!*(&v29 + 1))
  {
LABEL_53:
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    operator delete(v19);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return v25;
    }

LABEL_58:
    operator delete(__p[0]);
    return v25;
  }

LABEL_52:
  if (atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_53;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_58;
  }

  return v25;
}

void sub_29760B044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t prop::file::set<int>(const void **a1, uint64_t a2, int *a3)
{
  memset(__p, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v31, 0, sizeof(v31));
    v10 = &v31;
    *(&v31.__r_.__value_.__s + 23) = v4 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    v31.__r_.__value_.__l.__size_ = v4 + 1;
    v31.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v31.__r_.__value_.__r.__words[0] = v10;
  }

  if (v3 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  memmove(v10, v11, v4);
LABEL_15:
  *&v10[v4] = 46;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::string::append(&v31, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  __p[2] = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v17 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v17 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  for (; v18 != v17; v18 = (v18 + 1))
  {
    *v18 = __tolower(*v18);
  }

  std::to_string(&v31, *a3);
  v19 = *&v31.__r_.__value_.__l.__data_;
  v20 = v31.__r_.__value_.__r.__words[2];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18CAF18)
  {
    v22 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v22, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v31.__r_.__value_.__r.__words[0] = v22;
    v21 = operator new(0x20uLL);
    *v21 = &unk_2A1E43EE0;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = v22;
    v23 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v22;
    *(&xmmword_2A18CAF18 + 1) = v21;
    if (!v23)
    {
      *&v29 = v22;
      *(&v29 + 1) = v21;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  v21 = *(&xmmword_2A18CAF18 + 1);
  v22 = xmmword_2A18CAF18;
  v29 = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if ((v20 & 0x8000000000000000) == 0)
  {
    *&v28.__r_.__value_.__l.__data_ = v19;
    v28.__r_.__value_.__r.__words[2] = v20;
LABEL_42:
    v31 = v28;
    goto LABEL_43;
  }

  std::string::__init_copy_ctor_external(&v28, v19, *(&v19 + 1));
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v31, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
LABEL_43:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = ctu::cf::plist_adapter::set<std::string>(v22, &v31, v24, 1);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v28.__r_.__value_.__l.__data_);
    v26 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v26 = *(&v29 + 1);
  if (!*(&v29 + 1))
  {
LABEL_53:
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    operator delete(v19);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return v25;
    }

LABEL_58:
    operator delete(__p[0]);
    return v25;
  }

LABEL_52:
  if (atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_53;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_58;
  }

  return v25;
}

void sub_29760B4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t prop::file::set<unsigned int>(const void **a1, uint64_t a2, unsigned int *a3)
{
  memset(__p, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v31, 0, sizeof(v31));
    v10 = &v31;
    *(&v31.__r_.__value_.__s + 23) = v4 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    v31.__r_.__value_.__l.__size_ = v4 + 1;
    v31.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v31.__r_.__value_.__r.__words[0] = v10;
  }

  if (v3 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  memmove(v10, v11, v4);
LABEL_15:
  *&v10[v4] = 46;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::string::append(&v31, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  __p[2] = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v17 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v17 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  for (; v18 != v17; v18 = (v18 + 1))
  {
    *v18 = __tolower(*v18);
  }

  std::to_string(&v31, *a3);
  v19 = *&v31.__r_.__value_.__l.__data_;
  v20 = v31.__r_.__value_.__r.__words[2];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18CAF18)
  {
    v22 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v22, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v31.__r_.__value_.__r.__words[0] = v22;
    v21 = operator new(0x20uLL);
    *v21 = &unk_2A1E43EE0;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = v22;
    v23 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v22;
    *(&xmmword_2A18CAF18 + 1) = v21;
    if (!v23)
    {
      *&v29 = v22;
      *(&v29 + 1) = v21;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  v21 = *(&xmmword_2A18CAF18 + 1);
  v22 = xmmword_2A18CAF18;
  v29 = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if ((v20 & 0x8000000000000000) == 0)
  {
    *&v28.__r_.__value_.__l.__data_ = v19;
    v28.__r_.__value_.__r.__words[2] = v20;
LABEL_42:
    v31 = v28;
    goto LABEL_43;
  }

  std::string::__init_copy_ctor_external(&v28, v19, *(&v19 + 1));
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v31, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
LABEL_43:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = ctu::cf::plist_adapter::set<std::string>(v22, &v31, v24, 1);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v28.__r_.__value_.__l.__data_);
    v26 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v26 = *(&v29 + 1);
  if (!*(&v29 + 1))
  {
LABEL_53:
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    operator delete(v19);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return v25;
    }

LABEL_58:
    operator delete(__p[0]);
    return v25;
  }

LABEL_52:
  if (atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_53;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_58;
  }

  return v25;
}

void sub_29760B8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t prop::file::set<std::string>(const void **a1, uint64_t a2, uint64_t a3)
{
  memset(v28, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v29, 0, sizeof(v29));
    v10 = &v29;
    *(&v29.__r_.__value_.__s + 23) = v4 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    v29.__r_.__value_.__l.__size_ = v4 + 1;
    v29.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v29.__r_.__value_.__r.__words[0] = v10;
  }

  if (v3 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  memmove(v10, v11, v4);
LABEL_15:
  *&v10[v4] = 46;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::string::append(&v29, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v28[2] = v15->__r_.__value_.__r.__words[2];
  *v28 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28[2]) >= 0)
  {
    v17 = (v28 + HIBYTE(v28[2]));
  }

  else
  {
    v17 = (v28[0] + v28[1]);
  }

  if (SHIBYTE(v28[2]) >= 0)
  {
    v18 = v28;
  }

  else
  {
    v18 = v28[0];
  }

  for (; v18 != v17; v18 = (v18 + 1))
  {
    *v18 = __tolower(*v18);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18CAF18)
  {
    v20 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v20, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v29.__r_.__value_.__r.__words[0] = v20;
    v19 = operator new(0x20uLL);
    *v19 = &unk_2A1E43EE0;
    v19[1] = 0;
    v19[2] = 0;
    v19[3] = v20;
    v21 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v20;
    *(&xmmword_2A18CAF18 + 1) = v19;
    if (!v21)
    {
      *&v27 = v20;
      *(&v27 + 1) = v19;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }
  }

  v19 = *(&xmmword_2A18CAF18 + 1);
  v20 = xmmword_2A18CAF18;
  v27 = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v29 = __p;
  }

  if (SHIBYTE(v28[2]) >= 0)
  {
    v22 = v28;
  }

  else
  {
    v22 = v28[0];
  }

  v23 = ctu::cf::plist_adapter::set<std::string>(v20, &v29, v22, 1);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_50:
      v24 = *(&v27 + 1);
      if (!*(&v27 + 1))
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v24 = *(&v27 + 1);
  if (!*(&v27 + 1))
  {
    goto LABEL_55;
  }

LABEL_54:
  if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
    if ((SHIBYTE(v28[2]) & 0x80000000) == 0)
    {
      return v23;
    }

    goto LABEL_56;
  }

LABEL_55:
  if (SHIBYTE(v28[2]) < 0)
  {
LABEL_56:
    operator delete(v28[0]);
  }

  return v23;
}

void sub_29760BD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t util::convert<unsigned int>(const std::string *a1, _DWORD *a2)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    LODWORD(v4) = strcasecmp(a1, "false");
    if (!v4)
    {
      goto LABEL_29;
    }

    LODWORD(v4) = strcasecmp(a1, "off");
    if (!v4)
    {
      goto LABEL_29;
    }

    LODWORD(v4) = strcasecmp(a1, "no");
    if (!v4)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v5 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_28:
    LODWORD(v4) = 1;
    goto LABEL_29;
  }

  v5 = a1->__r_.__value_.__r.__words[0];
  LODWORD(v4) = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!v4)
  {
    goto LABEL_29;
  }

  LODWORD(v4) = strcasecmp(v5, "off");
  if (!v4)
  {
    goto LABEL_29;
  }

  LODWORD(v4) = strcasecmp(v5, "no");
  if (!v4)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, "true") || !strcasecmp(v5, "on") || !strcasecmp(v5, "yes") || !strcasecmp(v5, "full") || !strcasecmp(v5, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v5, "lite"))
  {
LABEL_30:
    LODWORD(v4) = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v5, "background"))
  {
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v4 = std::stol(a1, &__idx, 0);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx != size || (v4 & 0x8000000000000000) != 0 || HIDWORD(v4))
  {
    return 0;
  }

LABEL_29:
  *a2 = v4;
  return 1;
}

uint64_t sub_29760C020(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

void prop::bbtrace::get<int>(char *a1, _DWORD *a2)
{
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a1, &__p))
  {
    util::convert<int>(&__p, a2, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29760C0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL prop::tracesettings::enabled(prop::tracesettings *this, const char *a2)
{
  v30 = 0;
  if (*MEMORY[0x29EDBE710] == this)
  {
    v6 = strlen(this);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_63:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      if ((v6 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v6 | 7) + 1;
      }

      p_dst = operator new(v15);
      v28 = v7;
      v29 = v15 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v29) = v6;
      p_dst = &__dst;
      if (!v6)
      {
LABEL_38:
        *(p_dst + v7) = 0;
        v16 = *MEMORY[0x29EDBE590];
        v17 = strlen(*MEMORY[0x29EDBE590]);
        if (v17 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v18 = v17;
        if (v17 >= 0x17)
        {
          if ((v17 | 7) == 0x17)
          {
            v20 = 25;
          }

          else
          {
            v20 = (v17 | 7) + 1;
          }

          v19 = operator new(v20);
          v25 = v18;
          v26 = v20 | 0x8000000000000000;
          v24 = v19;
        }

        else
        {
          HIBYTE(v26) = v17;
          v19 = &v24;
          if (!v17)
          {
LABEL_47:
            *(v19 + v18) = 0;
            memset(&__p, 0, sizeof(__p));
            if (prop::get(&__dst, &v24, &__p))
            {
              v31 = -1431655766;
              v21 = util::convert<int>(&__p, &v31, 0);
              if (v31)
              {
                v22 = 1;
              }

              else
              {
                v22 = v21 ^ 1;
              }

              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_55:
                if (SHIBYTE(v26) < 0)
                {
                  operator delete(v24);
                  if ((SHIBYTE(v29) & 0x80000000) == 0)
                  {
LABEL_57:
                    if (!v21)
                    {
                      return v30;
                    }

                    return v22;
                  }
                }

                else if ((SHIBYTE(v29) & 0x80000000) == 0)
                {
                  goto LABEL_57;
                }

                operator delete(__dst);
                if (!v21)
                {
                  return v30;
                }

                return v22;
              }
            }

            else
            {
              v21 = 0;
              v22 = 1;
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_55;
              }
            }

            operator delete(__p.__r_.__value_.__l.__data_);
            goto LABEL_55;
          }
        }

        memmove(v19, v16, v18);
        goto LABEL_47;
      }
    }

    memcpy(p_dst, this, v7);
    goto LABEL_38;
  }

  v3 = strlen(this);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_63;
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v3 | 7) + 1;
    }

    v5 = operator new(v9);
    v28 = v4;
    v29 = v9 | 0x8000000000000000;
    __dst = v5;
    goto LABEL_14;
  }

  HIBYTE(v29) = v3;
  v5 = &__dst;
  if (v3)
  {
LABEL_14:
    memcpy(v5, this, v4);
  }

  *(v5 + v4) = 0;
  v10 = *MEMORY[0x29EDBE6E0];
  v11 = strlen(*MEMORY[0x29EDBE6E0]);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    v25 = v12;
    v26 = v14 | 0x8000000000000000;
    v24 = v13;
    goto LABEL_23;
  }

  HIBYTE(v26) = v11;
  v13 = &v24;
  if (v11)
  {
LABEL_23:
    memmove(v13, v10, v12);
  }

  *(v13 + v12) = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::get(&__dst, &v24, &__p))
  {
    util::convert<BOOL>(&__p, &v30, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_28:
      if (SHIBYTE(v29) < 0)
      {
        goto LABEL_32;
      }

      return v30;
    }
  }

  else if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v24);
  if (SHIBYTE(v29) < 0)
  {
LABEL_32:
    operator delete(__dst);
  }

  return v30;
}

void sub_29760C408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

BOOL prop::tracesettings::anyEnabled(prop::tracesettings *this, const char *a2)
{
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) || prop::tracesettings::enabled(*MEMORY[0x29EDBE710], v2) || prop::tracesettings::enabled(*MEMORY[0x29EDBE5F8], v3) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v4) || prop::tracesettings::enabled(*MEMORY[0x29EDBE690], v5) || prop::tracesettings::enabled(*MEMORY[0x29EDBE7A8], v6))
  {
    return 1;
  }

  v9 = *MEMORY[0x29EDBE608];

  return prop::tracesettings::enabled(v9, v7);
}

BOOL prop::tracesettings::isContinuous(prop::tracesettings *this, const char *a2)
{
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v2))
  {
    return 1;
  }

  v5 = *MEMORY[0x29EDBE690];

  return prop::tracesettings::enabled(v5, v3);
}

BOOL prop::tracesettings::mobileBasebandServicesEnabled(prop::tracesettings *this, const char *a2)
{
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v2))
  {
    return 1;
  }

  v5 = *MEMORY[0x29EDBE690];

  return prop::tracesettings::enabled(v5, v3);
}

void ___ZL16sGetOsLogContextv_block_invoke_5()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "prop");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void prop::file::get<std::string>(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  memset(__p, 170, sizeof(__p));
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v7 = v6 + 1;
  if (v6 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    memset(&v27, 0, sizeof(v27));
    v12 = &v27;
    *(&v27.__r_.__value_.__s + 23) = v6 + 1;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v7 | 7) + 1;
    }

    v12 = operator new(v11);
    v27.__r_.__value_.__l.__size_ = v6 + 1;
    v27.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
    v27.__r_.__value_.__r.__words[0] = v12;
  }

  if (v5 >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  memmove(v12, v13, v6);
LABEL_15:
  *&v12[v6] = 46;
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = std::string::append(&v27, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  __p[2] = v17->__r_.__value_.__r.__words[2];
  *__p = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v19 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v19 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  for (; v20 != v19; v20 = (v20 + 1))
  {
    *v20 = __tolower(*v20);
  }

  memset(a4, 170, sizeof(std::string));
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *a3, *(a3 + 8));
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a3;
    a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18CAF18)
  {
    v22 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v22, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v29 = v22;
    v21 = operator new(0x20uLL);
    *v21 = &unk_2A1E43EE0;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = v22;
    v23 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v22;
    *(&xmmword_2A18CAF18 + 1) = v21;
    if (!v23)
    {
      v27.__r_.__value_.__r.__words[0] = v22;
      v27.__r_.__value_.__l.__size_ = v21;
      goto LABEL_41;
    }

    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  v21 = *(&xmmword_2A18CAF18 + 1);
  v22 = xmmword_2A18CAF18;
  *&v27.__r_.__value_.__l.__data_ = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
  {
LABEL_41:
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v29, v24);
  v25 = (**v22)(v22, v29);
  if (v25)
  {
    ctu::cf::assign();
    CFRelease(v25);
  }

  MEMORY[0x29C270E70](&v29);
  size = v27.__r_.__value_.__l.__size_;
  if (!v27.__r_.__value_.__l.__size_ || atomic_fetch_add((v27.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_50;
  }

  (size->__on_zero_shared)(size);
  std::__shared_weak_count::__release_weak(size);
  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_50:
    operator delete(__p[0]);
  }
}

void sub_29760C9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&a22);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t AccessorySimulatorDelegate::create@<X0>(uint64_t a1@<X0>, NSObject **a2@<X1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v17 = 0;
  v6 = operator new(0x80uLL);
  v7 = *(a1 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a1)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    v19 = v7;
    goto LABEL_6;
  }

  v19 = v18;
  (*(*v7 + 24))(v7, v18);
LABEL_6:
  v8 = *a2;
  v15 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  AccessorySimulatorDelegate::AccessorySimulatorDelegate(v6, v18, &v15);
  v11 = operator new(0x20uLL);
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__vftable = &unk_2A1E4C588;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v6;
  on_zero_shared = v6->__on_zero_shared;
  if (!on_zero_shared)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (on_zero_shared->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    std::__shared_weak_count::__release_weak(on_zero_shared);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_13:
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_14:
  v16 = v6;
  v17 = v11;
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))(v19, v9, v10);
  }

  result = (*(v6->~__shared_weak_count + 7))(v6);
  *a3 = v6;
  a3[1] = v11;
  return result;
}

void sub_29760CD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  operator delete(v12);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t AccessorySimulatorDelegate::AccessorySimulatorDelegate(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v12 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1E4C4F0;
  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      v11 = v10;
      (*(*v5 + 24))(v5, v10);
    }

    else
    {
      v11 = (*(*v5 + 16))(v5);
    }
  }

  else
  {
    v11 = 0;
  }

  v6 = *a3;
  v9 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = (*(*a1 + 16))(a1);
  AccessoriesDelegateBase::AccessoriesDelegateBase(a1, v10, &v9, v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  *a1 = &unk_2A1E4C4F0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  return a1;
}

void sub_29760CF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    dispatch_release(v9);
  }

  std::function<void ()(ctu::cf::CFSharedRef<__CFError>,std::vector<abm::AccessoryInfo>)>::~function(va);
  _Unwind_Resume(a1);
}

void AccessorySimulatorDelegate::~AccessorySimulatorDelegate(AccessorySimulatorDelegate *this)
{
  *this = &unk_2A1E4C4F0;
  v2 = *(this + 13);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
}

{
  *this = &unk_2A1E4C4F0;
  v2 = *(this + 13);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
}

{
  *this = &unk_2A1E4C4F0;
  v2 = *(this + 13);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(this);

  operator delete(v5);
}

BOOL AccessorySimulatorDelegate::handleServerCommand(uint64_t a1, const void **a2, void **a3)
{
  v6 = *MEMORY[0x29EDBF790];
  v7 = strlen(*MEMORY[0x29EDBF790]);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_59:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    p_dst = operator new(v10);
    v36 = v8;
    v37 = v10 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v37) = v7;
  p_dst = &__dst;
  if (v7)
  {
LABEL_9:
    memmove(p_dst, v6, v8);
  }

  v11 = 0;
  *(p_dst + v8) = 0;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = a2[1];
  }

  v14 = HIBYTE(v37);
  v15 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v14 = v36;
  }

  if (v13 == v14)
  {
    if (v12 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (v37 >= 0)
    {
      v17 = &__dst;
    }

    else
    {
      v17 = __dst;
    }

    v11 = memcmp(v16, v17, v13) == 0;
    if ((v15 & 0x80000000) == 0)
    {
LABEL_17:
      if (!v11)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

  else if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(__dst);
  if (!v11)
  {
    goto LABEL_31;
  }

LABEL_27:
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 1174405120;
  v33[2] = ___ZN26AccessorySimulatorDelegate19handleServerCommandENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictE_block_invoke;
  v33[3] = &__block_descriptor_tmp_39;
  v18 = *a3;
  v33[4] = a1;
  object = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped((a1 + 8), v33);
  xpc_release(object);
  object = 0;
LABEL_31:
  v19 = *MEMORY[0x29EDBF758];
  v20 = strlen(*MEMORY[0x29EDBF758]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_59;
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    v36 = v21;
    v37 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_39;
  }

  HIBYTE(v37) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_39:
    memmove(v22, v19, v21);
  }

  v24 = 0;
  *(v22 + v21) = 0;
  v25 = *(a2 + 23);
  if (v25 >= 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = a2[1];
  }

  v27 = HIBYTE(v37);
  v28 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v27 = v36;
  }

  if (v26 != v27)
  {
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_57:
    operator delete(__dst);
    if (!v24)
    {
      return v11;
    }

    goto LABEL_48;
  }

  if (v25 >= 0)
  {
    v30 = a2;
  }

  else
  {
    v30 = *a2;
  }

  if (v37 >= 0)
  {
    v31 = &__dst;
  }

  else
  {
    v31 = __dst;
  }

  v24 = memcmp(v30, v31, v26) == 0;
  if (v28 < 0)
  {
    goto LABEL_57;
  }

LABEL_47:
  if (v24)
  {
LABEL_48:
    v32[0] = MEMORY[0x29EDCA5F8];
    v32[1] = 0x40000000;
    v32[2] = ___ZN26AccessorySimulatorDelegate19handleServerCommandENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictE_block_invoke_3;
    v32[3] = &__block_descriptor_tmp_4;
    v32[4] = a1;
    ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped((a1 + 8), v32);
    return 1;
  }

  return v11;
}

void ___ZN26AccessorySimulatorDelegate19handleServerCommandENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  object = v1;
  v68 = 0;
  if (v1)
  {
    xpc_retain(v1);
  }

  else
  {
    object = xpc_null_create();
  }

  v3 = abm::AccessoryInfo::create();
  v5 = v4;
  xpc_release(object);
  object = 0;
  v6 = v3;
  v7 = *(v2 + 96);
  if ((v3 & 0xFFFF0000) != 0x10000)
  {
    if (v7)
    {
      v10 = vcnt_s8(v7);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = v3;
        if (v7 <= v3)
        {
          v11 = v3 % *(v2 + 96);
        }
      }

      else
      {
        v11 = (v7 - 1) & v3;
      }

      v19 = *(*(v2 + 88) + 8 * v11);
      if (v19)
      {
        v20 = *v19;
        if (*v19)
        {
          if (v10.u32[0] < 2uLL)
          {
            while (1)
            {
              v22 = *(v20 + 1);
              if (v22 == v3)
              {
                if (v20[8] == v3)
                {
                  goto LABEL_54;
                }
              }

              else if ((v22 & (v7 - 1)) != v11)
              {
                goto LABEL_48;
              }

              v20 = *v20;
              if (!v20)
              {
                goto LABEL_48;
              }
            }
          }

          do
          {
            v21 = *(v20 + 1);
            if (v21 == v3)
            {
              if (v20[8] == v3)
              {
                goto LABEL_54;
              }
            }

            else
            {
              if (v21 >= v7)
              {
                v21 %= v7;
              }

              if (v21 != v11)
              {
                break;
              }
            }

            v20 = *v20;
          }

          while (v20);
        }
      }
    }

    else
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
    }

LABEL_48:
    v20 = operator new(0x20uLL);
    *v20 = 0;
    *(v20 + 1) = v3;
    v20[8] = v3;
    v20[9] = -1;
    *(v20 + 10) = 0;
    v20[14] = 0;
    v23 = (*(v2 + 112) + 1);
    v24 = *(v2 + 120);
    if (v7 && (v24 * v7) >= v23)
    {
      v25 = *(v2 + 88);
      v26 = *(v25 + 8 * v11);
      if (v26)
      {
LABEL_51:
        *v20 = *v26;
        goto LABEL_52;
      }

LABEL_126:
      *v20 = *(v2 + 104);
      *(v2 + 104) = v20;
      *(v25 + 8 * v11) = v2 + 104;
      if (!*v20)
      {
        goto LABEL_53;
      }

      v49 = *(*v20 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v49 >= v7)
        {
          v49 %= v7;
        }

        v26 = (v25 + 8 * v49);
      }

      else
      {
        v26 = (v25 + 8 * (v49 & (v7 - 1)));
      }

LABEL_52:
      *v26 = v20;
LABEL_53:
      ++*(v2 + 112);
LABEL_54:
      v18 = 0;
      *(v20 + 9) = v3;
      *(v20 + 13) = v5;
      goto LABEL_55;
    }

    v29 = 1;
    if (v7 >= 3)
    {
      v29 = (v7 & (v7 - 1)) != 0;
    }

    v30 = v29 | (2 * v7);
    v31 = vcvtps_u32_f32(v23 / v24);
    if (v30 <= v31)
    {
      prime = v31;
    }

    else
    {
      prime = v30;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v7 = *(v2 + 96);
    }

    if (prime > v7)
    {
LABEL_77:
      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v33 = operator new(8 * prime);
      v34 = *(v2 + 88);
      *(v2 + 88) = v33;
      if (v34)
      {
        operator delete(v34);
        v33 = *(v2 + 88);
      }

      *(v2 + 96) = prime;
      bzero(v33, 8 * prime);
      v36 = v2 + 104;
      v35 = *(v2 + 104);
      if (!v35)
      {
        goto LABEL_107;
      }

      v37 = v35[1];
      v38 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v39 = v37 & v38;
        *(v33 + v39) = v36;
        for (i = *v35; *v35; i = *v35)
        {
          v41 = i[1] & v38;
          if (v41 == v39)
          {
            v35 = i;
          }

          else if (*(v33 + v41))
          {
            *v35 = *i;
            *i = **(v33 + v41);
            **(v33 + v41) = i;
          }

          else
          {
            *(v33 + v41) = v35;
            v35 = i;
            v39 = v41;
          }
        }

        goto LABEL_107;
      }

      if (v37 >= prime)
      {
        v37 %= prime;
      }

      *(v33 + v37) = v36;
      v45 = *v35;
      if (!*v35)
      {
LABEL_107:
        v7 = prime;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_108;
        }

        goto LABEL_125;
      }

      while (1)
      {
        v46 = v45[1];
        if (v46 >= prime)
        {
          v46 %= prime;
        }

        if (v46 == v37)
        {
          goto LABEL_101;
        }

        if (*(v33 + v46))
        {
          *v35 = *v45;
          *v45 = **(v33 + v46);
          **(v33 + v46) = v45;
          v45 = v35;
LABEL_101:
          v35 = v45;
          v45 = *v45;
          if (!v45)
          {
            goto LABEL_107;
          }
        }

        else
        {
          *(v33 + v46) = v35;
          v35 = v45;
          v45 = *v45;
          v37 = v46;
          if (!v45)
          {
            goto LABEL_107;
          }
        }
      }
    }

    if (prime < v7)
    {
      v42 = vcvtps_u32_f32(*(v2 + 112) / *(v2 + 120));
      if (v7 < 3 || (v43 = vcnt_s8(v7), v43.i16[0] = vaddlv_u8(v43), v43.u32[0] > 1uLL))
      {
        v42 = std::__next_prime(v42);
      }

      else
      {
        v44 = 1 << -__clz(v42 - 1);
        if (v42 >= 2)
        {
          v42 = v44;
        }
      }

      if (prime <= v42)
      {
        prime = v42;
      }

      if (prime < v7)
      {
        if (!prime)
        {
          v48 = *(v2 + 88);
          *(v2 + 88) = 0;
          if (v48)
          {
            operator delete(v48);
          }

          v7 = 0;
          *(v2 + 96) = 0;
          goto LABEL_125;
        }

        goto LABEL_77;
      }

      v7 = *(v2 + 96);
    }

    if ((v7 & (v7 - 1)) != 0)
    {
LABEL_108:
      if (v7 <= v3)
      {
        v11 = v3 % v7;
        v25 = *(v2 + 88);
        v26 = *(v25 + 8 * v11);
        if (v26)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v11 = v3;
        v25 = *(v2 + 88);
        v26 = *(v25 + 8 * v3);
        if (v26)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_126;
    }

LABEL_125:
    v11 = (v7 - 1) & v3;
    v25 = *(v2 + 88);
    v26 = *(v25 + 8 * v11);
    if (v26)
    {
      goto LABEL_51;
    }

    goto LABEL_126;
  }

  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v3;
    if (v7 <= v3)
    {
      v9 = v3 % *(v2 + 96);
    }
  }

  else
  {
    v9 = (v7 - 1) & v3;
  }

  v12 = *(v2 + 88);
  v13 = *(v12 + 8 * v9);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_29:
    __p = operator new(0x48uLL);
    v65 = xmmword_2976A54A0;
    strcpy(__p, "Invalid AccessoryID, could not find in cached accessory dictionary");
    (*(*v2 + 48))(&cf, v2, &__p, 5);
    v18 = cf;
    v68 = cf;
    cf = 0;
    if (SHIBYTE(v65) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_55;
  }

  v15 = v7 - 1;
  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v16 = v14[1];
      if (v16 == v3)
      {
        if (*(v14 + 8) == v3)
        {
          goto LABEL_113;
        }
      }

      else if ((v16 & v15) != v9)
      {
        goto LABEL_29;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
    v17 = v14[1];
    if (v17 == v3)
    {
      break;
    }

    if (v17 >= v7)
    {
      v17 %= v7;
    }

    if (v17 != v9)
    {
      goto LABEL_29;
    }

LABEL_24:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_29;
    }
  }

  if (*(v14 + 8) != v3)
  {
    goto LABEL_24;
  }

LABEL_113:
  if (v8.u32[0] > 1uLL)
  {
    v47 = v3;
    if (v7 <= v3)
    {
      v47 = v3 % *(v2 + 96);
    }
  }

  else
  {
    v47 = (v7 - 1) & v3;
  }

  v50 = *(v12 + 8 * v47);
  if (!v50 || (v51 = *v50) == 0)
  {
LABEL_149:
    v18 = 0;
    goto LABEL_55;
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v52 = v51[1];
      if (v52 == v3)
      {
        if (*(v51 + 8) == v3)
        {
          goto LABEL_150;
        }
      }

      else if ((v52 & v15) != v47)
      {
        goto LABEL_149;
      }

      v18 = 0;
      v51 = *v51;
      if (!v51)
      {
        goto LABEL_55;
      }
    }
  }

  while (2)
  {
    v53 = v51[1];
    if (v53 != v3)
    {
      if (v53 >= v7)
      {
        v53 %= v7;
      }

      if (v53 != v47)
      {
        goto LABEL_149;
      }

      goto LABEL_144;
    }

    if (*(v51 + 8) != v3)
    {
LABEL_144:
      v18 = 0;
      v51 = *v51;
      if (!v51)
      {
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

LABEL_150:
  if (v8.u32[0] > 1uLL)
  {
    if (v7 <= v3)
    {
      v6 = v3 % v7;
    }
  }

  else
  {
    v6 = v15 & v3;
  }

  v54 = *(v12 + 8 * v6);
  do
  {
    v55 = v54;
    v54 = *v54;
  }

  while (v54 != v51);
  if (v55 == (v2 + 104))
  {
    goto LABEL_167;
  }

  v56 = v55[1];
  if (v8.u32[0] > 1uLL)
  {
    if (v56 >= v7)
    {
      v56 %= v7;
    }
  }

  else
  {
    v56 &= v15;
  }

  if (v56 != v6)
  {
LABEL_167:
    if (!*v51)
    {
      goto LABEL_168;
    }

    v57 = *(*v51 + 8);
    if (v8.u32[0] > 1uLL)
    {
      if (v57 >= v7)
      {
        v57 %= v7;
      }
    }

    else
    {
      v57 &= v15;
    }

    if (v57 != v6)
    {
LABEL_168:
      *(v12 + 8 * v6) = 0;
    }
  }

  v58 = *v51;
  if (*v51)
  {
    v59 = *(v58 + 8);
    if (v8.u32[0] > 1uLL)
    {
      if (v59 >= v7)
      {
        v59 %= v7;
      }
    }

    else
    {
      v59 &= v15;
    }

    if (v59 != v6)
    {
      *(v12 + 8 * v59) = v55;
      v58 = *v51;
    }
  }

  *v55 = v58;
  *v51 = 0;
  --*(v2 + 112);
  operator delete(v51);
  v18 = 0;
LABEL_55:
  if (*(v2 + 80) == 1 && *(v2 + 72))
  {
    v63 = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    v27 = operator new(0xCuLL);
    v61 = v27 + 3;
    v62 = (v27 + 3);
    *v27 = v3;
    v27[2] = v5;
    v60 = v27;
    v28 = *(v2 + 72);
    if (!v28)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v28 + 48))(v28, &v63, &v60);
    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v63)
    {
      CFRelease(v63);
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_29760DCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_29760DCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  operator delete(v17);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_29760DCF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, xpc_object_t object, const void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a21);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a21);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void ___ZN26AccessorySimulatorDelegate19handleServerCommandENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictE_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 80) == 1)
  {
    v2 = *(v1 + 104);
    if (v2)
    {
      v3 = *(v1 + 72);
      if (v3)
      {
        *(v2 + 10) = 1;
LABEL_5:
        v8 = *(v2 + 18);
        v9 = *(v2 + 26);
        __p = 0;
        v11 = 0;
        v12 = 0;
        cf = 0;
        v4 = operator new(0xCuLL);
        v11 = v4 + 3;
        v12 = (v4 + 3);
        *v4 = v8;
        v4[2] = v9;
        __p = v4;
        (*(*v3 + 48))(v3, &cf, &__p);
        if (__p)
        {
          v11 = __p;
          operator delete(__p);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        while (1)
        {
          v2 = *v2;
          if (!v2)
          {
            break;
          }

          v3 = *(v1 + 72);
          *(v2 + 10) = 1;
          if (v3)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        do
        {
          *(v2 + 10) = 1;
          v2 = *v2;
        }

        while (v2);
      }
    }
  }

  if (*(v1 + 112))
  {
    v5 = *(v1 + 104);
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    *(v1 + 104) = 0;
    v7 = *(v1 + 96);
    if (v7)
    {
      bzero(*(v1 + 88), 8 * v7);
    }

    *(v1 + 112) = 0;
  }
}

void sub_29760DF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_29760DFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a14);
  _Unwind_Resume(a1);
}

void AccessorySimulatorDelegate::start(AccessorySimulatorDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN26AccessorySimulatorDelegate5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_5_1;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN26AccessorySimulatorDelegate5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Already started", &v8, 2u);
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Starting", &v8, 2u);
    }

    *(v1 + 80) = 1;
    v5 = *(v1 + 104);
    if (v5)
    {
      v6 = *(v1 + 72);
      if (v6)
      {
LABEL_8:
        v8 = *(v5 + 18);
        v9 = *(v5 + 26);
        __p = 0;
        v11 = 0;
        v12 = 0;
        cf = 0;
        v7 = operator new(0xCuLL);
        v11 = v7 + 3;
        v12 = (v7 + 3);
        *v7 = v8;
        v7[2] = v9;
        __p = v7;
        (*(*v6 + 48))(v6, &cf, &__p);
        if (__p)
        {
          v11 = __p;
          operator delete(__p);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        while (1)
        {
          v5 = *v5;
          if (!v5)
          {
            break;
          }

          v6 = *(v1 + 72);
          if (v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        do
        {
          v5 = *v5;
        }

        while (v5);
      }
    }
  }
}

void sub_29760E1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_29760E1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a14);
  _Unwind_Resume(a1);
}

void AccessorySimulatorDelegate::stop(AccessorySimulatorDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN26AccessorySimulatorDelegate4stopEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_6_2;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN26AccessorySimulatorDelegate4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Stopping", buf, 2u);
    }

    *(v1 + 80) = 0;
  }

  else if (v4)
  {
    *v5 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Already stopped", v5, 2u);
  }
}

void std::__shared_ptr_pointer<AccessorySimulatorDelegate *,std::shared_ptr<AccessorySimulatorDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<AccessorySimulatorDelegate>(AccessorySimulatorDelegate*)::{lambda(AccessorySimulatorDelegate *)#1},std::allocator<AccessorySimulatorDelegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<AccessorySimulatorDelegate *,std::shared_ptr<AccessorySimulatorDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<AccessorySimulatorDelegate>(AccessorySimulatorDelegate*)::{lambda(AccessorySimulatorDelegate *)#1},std::allocator<AccessorySimulatorDelegate>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI26AccessorySimulatorDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI26AccessorySimulatorDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI26AccessorySimulatorDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI26AccessorySimulatorDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<AccessorySimulatorDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<AccessorySimulatorDelegate>(AccessorySimulatorDelegate*)::{lambda(AccessorySimulatorDelegate*)#1}::operator() const(AccessorySimulatorDelegate*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *GetOsLogContext(void)
{
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18CB080 = 0;
  }

  if (GetOsLogContext(void)::onceToken != -1)
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_12);
  }

  return &GetOsLogContext(void)::sOsLogContext;
}

void ___Z15GetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "global");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void PPMManager::create(PPMManager **a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v2 = operator new(0x28uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A1E4C648;
  PPMManager::PPMManager((v2 + 3));
  *a1 = v3;
  a1[1] = v2;
}

void sub_29760E51C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void PPMManager::PPMManager(PPMManager *this)
{
  v14 = *MEMORY[0x29EDCA608];
  *this = 0;
  *(this + 1) = 0;
  v2 = operator new(0x28uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A1E4C5F8;
  v3 = (v2 + 3);
  ctu::OsLogLogger::OsLogLogger((v2 + 3), "com.apple.telephony", "ppm.hdlr");
  v2[4] = 0;
  v11 = 0;
  v4 = [MEMORY[0x29EDC91A0] sharedInstanceWithClientRepresentation:@"com.apple.duet.ppm-attr.bsbd" error:{&v11, v2 + 3, v2}];
  v5 = v11;
  v6 = v2[4];
  v2[4] = v4;

  if (v5 || !v2[4])
  {
    v7 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      PPMHandler::getErrorMsg(&__p, v5);
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v13 = v8;
      _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "Failed to get PPM instance: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v9 = *(this + 1);
  *this = v3;
  *(this + 1) = v2;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_29760E75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

void sub_29760E784(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void PPMManager::start(os_log_t **this)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *this;
  v2 = (*this)[1];
  v9 = 0;
  v3 = [v2 activityStartedWithLevel:&unk_2A1E51650 options:0 error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if ((v5 & 1) == 0)
  {
    v6 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
    {
      PPMHandler::getErrorMsg(&__p, v4);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v11 = p_p;
      _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "Failed to set PPM activity started level: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void PPMManager::reportTelemetry(uint64_t *a1, xpc_object_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v3 = xpc_null_create();
  }

  if (MEMORY[0x29C272BA0](v3) != MEMORY[0x29EDCAA00])
  {
    goto LABEL_19;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  *object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    *object = xpc_null_create();
  }

  xpc::bridge(&cf, object, v4);
  v5 = cf.__r_.__value_.__r.__words[0];
  if (cf.__r_.__value_.__r.__words[0])
  {
    v6 = CFGetTypeID(cf.__r_.__value_.__l.__data_);
    if (v6 == CFDictionaryGetTypeID())
    {
      v14 = v5;
      CFRetain(v5);
      v7 = cf.__r_.__value_.__r.__words[0];
      if (!cf.__r_.__value_.__r.__words[0])
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v5 = 0;
  v14 = 0;
  v7 = cf.__r_.__value_.__r.__words[0];
  if (cf.__r_.__value_.__r.__words[0])
  {
LABEL_13:
    CFRelease(v7);
  }

LABEL_14:
  xpc_release(*object);
  v8 = *(v2 + 8);
  v13 = 0;
  [v8 pushTelemetryToPPM:v5 error:&v13];
  v9 = v13;
  if (v9)
  {
    v10 = *v2;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      PPMHandler::getErrorMsg(&cf, v9);
      v11 = (cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &cf : cf.__r_.__value_.__r.__words[0];
      *object = 136315138;
      *&object[4] = v11;
      _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "Failed to report telemetry to PPM: %s", object, 0xCu);
      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

LABEL_19:
  xpc_release(v3);
}

void sub_29760EABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void PPMManager::shutdown(PPMManager *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v1 = *this;
  v2 = *(*this + 8);
  v15 = 0;
  v3 = [v2 activityStoppedWithLevel:0 options:0 error:&v15];
  v4 = v15;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if ((v5 & 1) == 0)
  {
    v6 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
    {
      PPMHandler::getErrorMsg(&__p, v4);
      v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v17 = v11;
      _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "Failed to set PPM activity stopped level: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v7 = *(v1 + 8);
  v13 = v4;
  [v7 endInteraction:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3;
  }

  if ((v9 & 1) == 0)
  {
    v10 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
    {
      PPMHandler::getErrorMsg(&__p, v8);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v17 = p_p;
      _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "Failed to end interaction: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void std::__shared_ptr_emplace<PPMHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E4C5F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<PPMHandler>::__on_zero_shared(uint64_t a1)
{

  JUMPOUT(0x29C270D60);
}

void PPMHandler::getErrorMsg(std::string *this, NSError *a2)
{
  v3 = a2;
  this->__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  this->__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
  *(&this->__r_.__value_.__s + 23) = 13;
  strcpy(this, "Unknown error");
  if (v3)
  {
    v9 = v3;
    v4 = [(NSError *)v3 localizedDescription];
    v5 = [(NSError *)v9 localizedFailureReason];
    if (v5)
    {
      v6 = [(NSError *)v9 localizedFailureReason];
    }

    else
    {
      v7 = [MEMORY[0x29EDB9F48] mainBundle];
      v6 = [v7 localizedStringForKey:@"Not found localizedFailureReason" value:&stru_2A1E50838 table:0];
    }

    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@: %@", v4, v6];

    std::string::__assign_external(this, [v8 UTF8String]);
    v3 = v9;
  }
}

void sub_29760EF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v16 = v15;

  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<PPMManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E4C648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<PPMManager>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t abm::ParseWakeDataIce(xpc_object_t *a1, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C272BA0](*a1);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 != MEMORY[0x29EDCAA00])
  {
    return 0;
  }

  v6 = MEMORY[0x29C272BA0](*a2);
  if (v6 != v5)
  {
    return 0;
  }

  v8 = capabilities::radio::initium(v6);
  v9 = MEMORY[0x29EDBE7D0];
  if (!v8)
  {
    v9 = MEMORY[0x29EDBE7C8];
  }

  v10 = xpc_string_create(*v9);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE848], v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = *MEMORY[0x29EDBEDA8];
  value = xpc_dictionary_get_value(*a1, *MEMORY[0x29EDBEDA8]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v14 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  v15 = xpc_int64_create(v14);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, v12, v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = *MEMORY[0x29EDBE9D0];
  v18 = xpc_dictionary_get_value(*a1, *MEMORY[0x29EDBE9D0]);
  if (v18)
  {
    v19 = v18;
    xpc_retain(v18);
  }

  else
  {
    v19 = xpc_null_create();
  }

  v20 = MEMORY[0x29C272BA0](v19);
  v21 = MEMORY[0x29EDCAA40];
  if (v20 != MEMORY[0x29EDCAA40])
  {
    if (v19)
    {
      xpc_retain(v19);
      v22 = v19;
    }

    else
    {
      v22 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a2, v17, v22);
    v23 = xpc_null_create();
    xpc_release(v22);
    xpc_release(v23);
  }

  if (v14 <= 3)
  {
    switch(v14)
    {
      case 1:
        v33 = xpc_string_create(*MEMORY[0x29EDBEB90]);
        if (!v33)
        {
          v33 = xpc_null_create();
        }

        xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v33);
        v34 = xpc_null_create();
        xpc_release(v33);
        xpc_release(v34);
        v26 = xpc_string_create(*MEMORY[0x29EDBF0D8]);
        if (!v26)
        {
          v26 = xpc_null_create();
        }

        goto LABEL_69;
      case 2:
        v43 = xpc_string_create(*MEMORY[0x29EDBEB90]);
        if (!v43)
        {
          v43 = xpc_null_create();
        }

        xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v43);
        v44 = xpc_null_create();
        xpc_release(v43);
        xpc_release(v44);
        v26 = xpc_string_create(*MEMORY[0x29EDBEE40]);
        if (!v26)
        {
          v26 = xpc_null_create();
        }

        goto LABEL_69;
      case 3:
        v27 = xpc_string_create(*MEMORY[0x29EDBEE48]);
        if (!v27)
        {
          v27 = xpc_null_create();
        }

        xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v27);
        v28 = xpc_null_create();
        xpc_release(v27);
        xpc_release(v28);
        v29 = xpc_string_create(*MEMORY[0x29EDBECD0]);
        if (!v29)
        {
          v29 = xpc_null_create();
        }

        xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBEDB0], v29);
        v30 = xpc_null_create();
        xpc_release(v29);
        xpc_release(v30);
        if (MEMORY[0x29C272BA0](v19) != v21)
        {
          v51 = v19;
          v52 = 0xAAAAAAAAAAAAAAAALL;
          if (v19)
          {
            xpc_retain(v19);
          }

          else
          {
            v51 = xpc_null_create();
          }

          abm::_ParseIceARI(&v52, &v51);
          xpc_release(v51);
          v51 = 0;
          xpc::dict::dict(&v49, &v52);
          v46 = *MEMORY[0x29EDBF190];
          object[0] = a2;
          object[1] = v46;
          xpc::dict::object_proxy::operator=(object, &v49, &v50);
          xpc_release(v50);
          v50 = 0;
          xpc_release(v49);
          v49 = 0;
          xpc_release(v52);
        }

        goto LABEL_74;
    }

    goto LABEL_51;
  }

  if (v14 > 5)
  {
    if (v14 == 6)
    {
      v38 = xpc_string_create(*MEMORY[0x29EDBEB98]);
      if (!v38)
      {
        v38 = xpc_null_create();
      }

      xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v38);
      v39 = xpc_null_create();
      xpc_release(v38);
      xpc_release(v39);
      v41 = capabilities::radio::initium(v40);
      v42 = MEMORY[0x29EDBECC8];
      if (!v41)
      {
        v42 = MEMORY[0x29EDBECF0];
      }

      v26 = xpc_string_create(*v42);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      goto LABEL_69;
    }

    if (v14 == 7)
    {
      v31 = xpc_string_create(*MEMORY[0x29EDBEB90]);
      if (!v31)
      {
        v31 = xpc_null_create();
      }

      xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v31);
      v32 = xpc_null_create();
      xpc_release(v31);
      xpc_release(v32);
      v26 = xpc_string_create(*MEMORY[0x29EDBECE0]);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      goto LABEL_69;
    }

LABEL_51:
    v35 = xpc_string_create(*MEMORY[0x29EDBEE50]);
    if (!v35)
    {
      v35 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v35);
    v36 = xpc_null_create();
    xpc_release(v35);
    xpc_release(v36);
    v26 = xpc_string_create(*MEMORY[0x29EDBF428]);
    if (!v26)
    {
      v26 = xpc_null_create();
    }

    goto LABEL_69;
  }

  if (v14 == 4)
  {
    v37 = *a1;
    v47 = v37;
    if (v37)
    {
      xpc_retain(v37);
    }

    else
    {
      v47 = xpc_null_create();
    }

    abm::ParseWakeDataIP(&v47, a2);
    xpc_release(v47);
    v47 = 0;
    goto LABEL_74;
  }

  v24 = xpc_string_create(*MEMORY[0x29EDBEA88]);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  v26 = xpc_string_create(*MEMORY[0x29EDBEDF8]);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

LABEL_69:
  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBEDB0], v26);
  v45 = xpc_null_create();
  xpc_release(v26);
  xpc_release(v45);
LABEL_74:
  xpc_release(v19);
  return 1;
}

void sub_29760F848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void abm::_ParseIceARI(xpc_object_t *a1, uint64_t a2)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    *a1 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  *a1 = v5;
LABEL_9:
  xpc_release(v4);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  *&value[1] = 0xAAAAAAAAAAAAAAAALL;
  __p = 0;
  v12 = 0;
  v13 = 0;
  xpc::dyn_cast_or_default();
  v6 = xpc_BOOL_create(1);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, *MEMORY[0x29EDBF6B8], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v9 = *&value[1];
  operator delete(*&value[1]);
}

void sub_29760FED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  xpc::dict::~dict(v19);
  _Unwind_Resume(a1);
}

void CMHandDetectionDelegate::create(NSObject **a1@<X0>, NSObject **a2@<X1>, void *a3@<X8>)
{
  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v6 = unk_2A18CAF68;
  if (!unk_2A18CAF68)
  {
    v7 = operator new(1uLL);
    v8 = operator new(0x20uLL);
    *v8 = &unk_2A1E4FD98;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = v7;
    v9 = off_2A18CAF70;
    unk_2A18CAF68 = v7;
    off_2A18CAF70 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v6 = unk_2A18CAF68;
  }

  v10 = off_2A18CAF70;
  v17[0] = v6;
  v17[1] = off_2A18CAF70;
  if (off_2A18CAF70)
  {
    atomic_fetch_add_explicit(off_2A18CAF70 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  isCMHandDetectionSupported = Capabilities::isCMHandDetectionSupported(v6);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v16 = isCMHandDetectionSupported;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_21:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  if ((isCMHandDetectionSupported & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0x28uLL);
  v12[1] = 0;
  v12[2] = 0;
  *v12 = &unk_2A1E4C718;
  v13 = v12 + 3;
  v14 = *a1;
  v17[0] = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = *a2;
  v18 = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  CMHandDetectionDelegate::CMHandDetectionDelegate(v13, v17, &v18);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  *a3 = v13;
  a3[1] = v12;
}

void sub_2976101E4(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_297610210(_Unwind_Exception *a1)
{
  if (v1)
  {
    dispatch_release(v1);
    if (!v2)
    {
LABEL_3:
      std::__shared_weak_count::~__shared_weak_count(v3);
      operator delete(v5);
      _Unwind_Resume(a1);
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  dispatch_release(v2);
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v6);
  _Unwind_Resume(a1);
}

void sub_297610258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *CMHandDetectionDelegate::CMHandDetectionDelegate(void *a1, dispatch_object_t *a2, NSObject **a3)
{
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v6 = *a3;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *a1 = 0;
  a1[1] = 0;
  if ([MEMORY[0x29EDB93A8] isCallHandednessAvailable])
  {
    v7 = operator new(0x40uLL);
    if (v5)
    {
      dispatch_retain(v5);
    }

    if (v6)
    {
      dispatch_retain(v6);
    }

    *v7 = 0;
    v7[1] = 0;
    v7[2] = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    v7[3] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v7[4] = 0;
    v7[6] = 0;
    *(v7 + 56) = 0;
    v7[4] = objc_alloc_init(MEMORY[0x29EDB93A8]);
    v8 = operator new(0x20uLL);
    v9 = v8;
    v8[2] = 0;
    v8[1] = 0;
    *v8 = &unk_2A1E4C698;
    v8[3] = v7;
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *v7 = v7;
    v7[1] = v8;
    if (!atomic_fetch_add(v8 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v8 + 16))(v8);
      std::__shared_weak_count::__release_weak(v9);
    }

    *a1 = v7;
    a1[1] = v9;
    if (v6)
    {
      dispatch_release(v6);
    }

    if (v5)
    {
      dispatch_release(v5);
    }
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  return a1;
}

void sub_2976103F8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler*)#1}::operator() const(CMHandDetectionHandler*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_297610420(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v3)
  {
    dispatch_release(v3);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  dispatch_release(v1);
LABEL_3:
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v2);
  if (v3)
  {
    dispatch_release(v3);
    if (!v1)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!v1)
  {
    goto LABEL_5;
  }

  dispatch_release(v1);
  _Unwind_Resume(a1);
}

void CMHandDetectionDelegate::~CMHandDetectionDelegate(CMHandDetectionDelegate *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

uint64_t CMHandDetectionDelegate::isSupported(CMHandDetectionDelegate *this)
{
  if ((atomic_load_explicit(&qword_2A18CB2F8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A18CB2F8))
  {
    return _MergedGlobals_13;
  }

  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v2 = unk_2A18CAF68;
  if (!unk_2A18CAF68)
  {
    Capabilities::create_default_global(&v6);
    std::shared_ptr<Capabilities>::operator=[abi:ne200100](&v6);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&v6);
    v2 = unk_2A18CAF68;
  }

  v4 = v2;
  v5 = off_2A18CAF70;
  if (off_2A18CAF70)
  {
    atomic_fetch_add_explicit(off_2A18CAF70 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  if (Capabilities::isCMHandDetectionSupported(v2))
  {
    v3 = [MEMORY[0x29EDB93A8] isCallHandednessAvailable];
  }

  else
  {
    v3 = 0;
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&v4);
  _MergedGlobals_13 = v3;
  __cxa_guard_release(&qword_2A18CB2F8);
  return _MergedGlobals_13;
}

void sub_2976106C4(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  __cxa_guard_abort(&qword_2A18CB2F8);
  _Unwind_Resume(a1);
}

void CMHandDetectionDelegate::registerCallback(uint64_t **a1, const void **a2)
{
  v2 = *a1;
  if (!*a2)
  {
    v4 = 0;
    v7 = *a1;
LABEL_6:
    v5 = 1;
    aBlock = 0;
    ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(v2, &v7);
    v6 = aBlock;
    if (!aBlock)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = _Block_copy(*a2);
  v4 = v3;
  v7 = v2;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = 0;
  aBlock = _Block_copy(v3);
  ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(v2, &v7);
  v6 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v6);
  }

LABEL_8:
  if ((v5 & 1) == 0)
  {
    _Block_release(v4);
  }
}

const char *CMHandDetectionDelegate::toString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown Hand Detection";
  }

  else
  {
    return off_29EE6C670[a1];
  }
}

void std::__shared_ptr_pointer<CMHandDetectionHandler *,std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler *)#1},std::allocator<CMHandDetectionHandler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CMHandDetectionHandler *,std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler *)#1},std::allocator<CMHandDetectionHandler>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler*)#1}::operator() const(CMHandDetectionHandler*)::{lambda(void *)#1}::__invoke(void *__p)
{
  if (__p)
  {
    v2 = __p[6];
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = __p[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = __p[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = __p[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(__p);
  }
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = *a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(CMHandDetectionHandler::start(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::start(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::start(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(CMHandDetectionHandler::start(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::start(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::start(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (v4 && (*(v3 + 56) & 1) == 0)
  {
    [v4 startCallHandednessUpdates];
    *(v3 + 56) = 1;
  }

  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297610B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = *a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(CMHandDetectionHandler::stop(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::stop(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(CMHandDetectionHandler::stop(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::stop(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (v4 && *(v3 + 56) == 1)
  {
    [v4 stopCallHandednessUpdates];
    *(v3 + 56) = 0;
  }

  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297610D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = *a2;
  *(a2 + 8) = 0;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t ***a1)
{
  v2 = *a1;
  v14 = *a1;
  v3 = **a1;
  if (!v3[4] || !v2[1])
  {
    goto LABEL_17;
  }

  v4 = v3[1];
  if (!v4 || (v5 = *v3, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = v2[1];
  if (v8)
  {
LABEL_9:
    v8 = _Block_copy(v8);
  }

LABEL_10:
  v9 = v3[6];
  v3[6] = v8;
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = objc_alloc_init(CMHandDetectionDelegateInternal);
  v3[5] = v10;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZZN22CMHandDetectionHandler16registerCallbackEN8dispatch5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c47_ZTSNSt3__18weak_ptrI22CMHandDetectionHandlerEE_e8_v16__0q8l;
  aBlock[4] = v3;
  aBlock[5] = v5;
  v16 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v17 = _Block_copy(aBlock);
  [(CMHandDetectionDelegateInternal *)v10 registerHandler:&v17, a1, v14];
  if (v17)
  {
    _Block_release(v17);
  }

  [v3[4] setDelegate:v3[5]];
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v7);
LABEL_17:
  v11 = v2[1];
  if (v11)
  {
    _Block_release(v11);
  }

  operator delete(v2);
  v12 = a1[2];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  operator delete(a1);
}

void sub_29761107C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  std::__shared_weak_count::__release_weak(v17);
  std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},std::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void sub_2976110D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},std::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void ___ZZN22CMHandDetectionHandler16registerCallbackEN8dispatch5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEv_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
        goto LABEL_16;
      }

      v8 = v5[1];
      if (!v8 || (v9 = *v5, (v10 = std::__shared_weak_count::lock(v8)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v11 = v10;
      v12 = operator new(0x10uLL);
      *v12 = v5;
      v12[1] = a2;
      v13 = v5[2];
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = operator new(0x18uLL);
      *v14 = v12;
      v14[1] = v9;
      v14[2] = v11;
      dispatch_async_f(v13, v14, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15execute_wrappedIZZZNS3_16registerCallbackENS_5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISE_NSJ_14default_deleteISE_EEEEENUlPvE_8__invokeESO_);
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else
      {
LABEL_16:
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      (v7->__on_zero_shared)(v7);

      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22CMHandDetectionHandlerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22CMHandDetectionHandlerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15execute_wrappedIZZZNS3_16registerCallbackENS_5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISE_NSJ_14default_deleteISE_EEEEENUlPvE_8__invokeESO_(void *a1)
{
  v2 = *a1;
  (*(*(**a1 + 48) + 16))();
  operator delete(v2);
  v3 = a1[2];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_297611374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},std::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = *a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(CMHandDetectionHandler::shutdown(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(CMHandDetectionHandler::shutdown(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (v4)
  {

    *(v3 + 32) = 0;
  }

  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297611594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void std::shared_ptr<Capabilities>::operator=[abi:ne200100](__int128 *a1)
{
  v1 = *a1;
  *a1 = 0uLL;
  v2 = off_2A18CAF70;
  unk_2A18CAF68 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_emplace<CMHandDetectionDelegate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E4C718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<CMHandDetectionDelegate>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void CellularCertModule::create(capabilities::abs *a1@<X0>, uint64_t *a2@<X8>)
{
  if (capabilities::abs::supportsCellularCert(a1) & 1) != 0 && ((TelephonyUtilIsInternalBuild() & 1) != 0 || (TelephonyUtilIsCarrierBuild()))
  {
    *a2 = 0xAAAAAAAAAAAAAAAALL;
    a2[1] = 0xAAAAAAAAAAAAAAAALL;
    v4 = operator new(0x90uLL);
    v5 = v4;
    v6 = *a1;
    v7 = *(a1 + 1);
    v10[0] = v6;
    v10[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    CellularCertModule::CellularCertModule(v4, v10);
    *a2 = 0xAAAAAAAAAAAAAAAALL;
    a2[1] = 0xAAAAAAAAAAAAAAAALL;
    std::shared_ptr<CellularCertModule>::shared_ptr[abi:ne200100]<CellularCertModule,std::shared_ptr<CellularCertModule> ctu::SharedSynchronizable<CellularCertModule>::make_shared_ptr<CellularCertModule>(CellularCertModule*)::{lambda(CellularCertModule*)#1},0>(a2, v5);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *a2 + 72;
    v11 = *a2;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableI18CellularCertModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
    block[3] = &__block_descriptor_tmp_29;
    block[4] = v8;
    block[5] = &v11;
    v9 = *(v11 + 88);
    if (*(v11 + 96))
    {
      dispatch_async_and_wait(v9, block);
    }

    else
    {
      dispatch_sync(v9, block);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_2976118A4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void CellularCertModule::init(CellularCertModule *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18CellularCertModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_29;
  block[4] = this + 72;
  block[5] = &v3;
  v2 = this + 88;
  v1 = *(this + 11);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void CellularCertModule::~CellularCertModule(CellularCertModule *this)
{
  *this = &unk_2A1E4C768;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v14, 2u);
  }

  v4 = *(this + 17);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 15);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  MEMORY[0x29C270D60](v2);
  v6 = *(this + 12);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 3);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(this + 3);
    }

    *(this + 4) = v9;
    operator delete(v11);
  }

  v13 = *(this + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

{
  CellularCertModule::~CellularCertModule(this);

  operator delete(v1);
}

uint64_t CellularCertModule::CellularCertModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E500C0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E42AA8;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E42AA8;
  }

  *a1 = &unk_2A1E4C768;
  ctu::OsLogContext::OsLogContext(&v18, "com.apple.telephony.abm", "cellularcert.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("cellularcert.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    *(a1 + 96) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 104, &v17);
  MEMORY[0x29C270D60](&v17);
  ctu::OsLogContext::~OsLogContext(&v18);
  *a1 = &unk_2A1E4C768;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  v7 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v8 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&v18, v7);
    v9 = v18;
    v18 = 0uLL;
    v10 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *(&v18 + 1);
    if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = off_2A18CADD8;
  }

  v16 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v8 + 144))(&v17, v8);
  v12 = v17;
  v17 = 0uLL;
  v13 = *(a1 + 120);
  *(a1 + 112) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(&v17 + 1);
  if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  return a1;
}

void sub_297611F28(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v4);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v3);
  MEMORY[0x29C270D60](v1 + 104);
  ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

_WORD *CellularCertModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v2 = operator new(2uLL);
  *a1 = v2;
  *v2 = 256;
  result = v2 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *CellularCertModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v2 = operator new(1uLL);
  *a1 = v2;
  *v2 = 3;
  result = v2 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void CellularCertModule::shutdownWithStage(void *a1, uint64_t a2, dispatch_object_t *a3)
{
  v4 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v4);
  }

  v5 = a1[10];
  if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v9 = operator new(0x10uLL);
  *v9 = a1;
  v9[1] = v4;
  v10 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v9;
  v11[1] = v6;
  v11[2] = v8;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void CellularCertModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void CellularCertModule::registerCommandHandlers_sync(CellularCertModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_53:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_53;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_53;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = abm::kCommandCellularCertBootstrap[0];
  v8 = strlen(abm::kCommandCellularCertBootstrap[0]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    p_dst = operator new(v11);
    *(&__dst + 1) = v9;
    v35 = v11 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v35) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN18CellularCertModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_40;
  aBlock[4] = this;
  aBlock[5] = v4;
  v32 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v33 = v12;
  Service::registerCommandHandler(this, &__dst, &v33);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst);
  }

  v13 = abm::kCommandCellularCertShutdown[0];
  v14 = strlen(abm::kCommandCellularCertShutdown[0]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    *(&__dst + 1) = v15;
    v35 = v17 | 0x8000000000000000;
    *&__dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v35) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 1174405120;
  v28[2] = ___ZN18CellularCertModule28registerCommandHandlers_syncEv_block_invoke_4;
  v28[3] = &__block_descriptor_tmp_7_4;
  v28[4] = this;
  v28[5] = v4;
  v29 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v28);
  v30 = v18;
  Service::registerCommandHandler(this, &__dst, &v30);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst);
  }

  v19 = abm::kCommandCellularCertConfigure[0];
  v20 = strlen(abm::kCommandCellularCertConfigure[0]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *(&__dst + 1) = v21;
    v35 = v23 | 0x8000000000000000;
    *&__dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v35) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 1174405120;
  v25[2] = ___ZN18CellularCertModule28registerCommandHandlers_syncEv_block_invoke_8;
  v25[3] = &__block_descriptor_tmp_11_4;
  v25[4] = this;
  v25[5] = v4;
  v26 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v25);
  v27 = v24;
  Service::registerCommandHandler(this, &__dst, &v27);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_297612770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (v32)
  {
    _Block_release(v32);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((*(v33 - 105) & 0x80000000) == 0)
    {
LABEL_5:
      v35 = a23;
      if (!a23)
      {
LABEL_10:
        if (a31)
        {
          std::__shared_weak_count::__release_weak(a31);
          std::__shared_weak_count::__release_weak(v31);
          _Unwind_Resume(a1);
        }

        std::__shared_weak_count::__release_weak(v31);
        _Unwind_Resume(a1);
      }

LABEL_9:
      std::__shared_weak_count::__release_weak(v35);
      goto LABEL_10;
    }
  }

  else if ((*(v33 - 105) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v33 - 128));
  v35 = a23;
  if (!a23)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void ___ZN18CellularCertModule28registerCommandHandlers_syncEv_block_invoke(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[5];
      if (!v9)
      {
        goto LABEL_19;
      }

      if (*a3)
      {
        v10 = _Block_copy(*a3);
        v11 = v9[10];
        if (!v11)
        {
LABEL_16:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = 0;
        v11 = v9[10];
        if (!v11)
        {
          goto LABEL_16;
        }
      }

      v12 = v9[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = v13;
      v15 = operator new(0x10uLL);
      *v15 = v6;
      v15[1] = v10;
      v16 = v9[11];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = operator new(0x18uLL);
      *v17 = v15;
      v17[1] = v12;
      v17[2] = v14;
      dispatch_async_f(v16, v17, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI18CellularCertModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else
      {
LABEL_19:
        if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      (v8->__on_zero_shared)(v8);

      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrI18CellularCertModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrI18CellularCertModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN18CellularCertModule28registerCommandHandlers_syncEv_block_invoke_4(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[5];
      if (!v9)
      {
        goto LABEL_19;
      }

      if (*a3)
      {
        v10 = _Block_copy(*a3);
        v11 = v9[10];
        if (!v11)
        {
LABEL_16:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = 0;
        v11 = v9[10];
        if (!v11)
        {
          goto LABEL_16;
        }
      }

      v12 = v9[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = v13;
      v15 = operator new(0x10uLL);
      *v15 = v6;
      v15[1] = v10;
      v16 = v9[11];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = operator new(0x18uLL);
      *v17 = v15;
      v17[1] = v12;
      v17[2] = v14;
      dispatch_async_f(v16, v17, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI18CellularCertModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else
      {
LABEL_19:
        if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      (v8->__on_zero_shared)(v8);

      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void ___ZN18CellularCertModule28registerCommandHandlers_syncEv_block_invoke_8(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = a1[5];
  if (v10)
  {
    v11 = *a2;
    if (v11)
    {
      xpc_retain(v11);
      v12 = *a3;
      if (*a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v11 = xpc_null_create();
      v12 = *a3;
      if (*a3)
      {
LABEL_6:
        v13 = _Block_copy(v12);
        v14 = v10[10];
        if (!v14)
        {
LABEL_19:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_10;
      }
    }

    v13 = 0;
    v14 = v10[10];
    if (!v14)
    {
      goto LABEL_19;
    }

LABEL_10:
    v15 = v10[9];
    v16 = std::__shared_weak_count::lock(v14);
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = v16;
    v18 = operator new(0x18uLL);
    *v18 = v7;
    v18[1] = v11;
    v19 = xpc_null_create();
    v18[2] = v13;
    v20 = v10[11];
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    v21 = operator new(0x18uLL);
    *v21 = v18;
    v21[1] = v15;
    v21[2] = v17;
    dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI18CellularCertModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    xpc_release(v19);
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void CellularCertModule::registerEventHandlers_sync(CellularCertModule *this)
{
  v33 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_53:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_53;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_53;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBF460];
  v8 = strlen(*MEMORY[0x29EDBF460]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    p_p = operator new(v11);
    *(&__p + 1) = v9;
    v26 = v11 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_14;
  }

  HIBYTE(v26) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v32 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E4C998;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v32 = v12;
  Service::registerEventHandler(this, &__p, v31);
  if (v32 == v31)
  {
    (*(*v32 + 32))(v32);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

  if (v32)
  {
    (*(*v32 + 40))();
  }

  if (SHIBYTE(v26) < 0)
  {
LABEL_47:
    operator delete(__p);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDBF278];
  v14 = strlen(*MEMORY[0x29EDBF278]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    *(&__p + 1) = v15;
    v26 = v17 | 0x8000000000000000;
    *&__p = v16;
    goto LABEL_27;
  }

  HIBYTE(v26) = v14;
  v16 = &__p;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = 0;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E4CA18;
  v18[1] = this;
  v18[2] = v4;
  v18[3] = v6;
  v30 = v18;
  Service::registerEventHandler(this, &__p, v29);
  if (v30 == v29)
  {
    (*(*v30 + 32))(v30);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

  if (v30)
  {
    (*(*v30 + 40))();
  }

  if (SHIBYTE(v26) < 0)
  {
LABEL_49:
    operator delete(__p);
  }

LABEL_32:
  v19 = *MEMORY[0x29EDBEFF0];
  v20 = strlen(*MEMORY[0x29EDBEFF0]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *(&__p + 1) = v21;
    v26 = v23 | 0x8000000000000000;
    *&__p = v22;
    goto LABEL_40;
  }

  HIBYTE(v26) = v20;
  v22 = &__p;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v28 = 0;
  v24 = operator new(0x20uLL);
  *v24 = &unk_2A1E4CA98;
  v24[1] = this;
  v24[2] = v4;
  v24[3] = v6;
  v28 = v24;
  Service::registerEventHandler(this, &__p, v27);
  if (v28 == v27)
  {
    (*(*v28 + 32))(v28);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_51:
    operator delete(__p);
    goto LABEL_45;
  }

  if (v28)
  {
    (*(*v28 + 40))();
  }

  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_51;
  }

LABEL_45:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
}

void CellularCertModule::sleep(void *a1, dispatch_object_t *a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v8);
  }

  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = a1[10];
  if (!v9 || (v10 = a1[9], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = a1;
  v13[1] = v8;
  v13[2] = v5;
  v13[3] = v7;
  v14 = a1[11];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::sleep(dispatch::group_session)::$_0>(CellularCertModule::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void CellularCertModule::wake(void *a1, dispatch_object_t *a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v8);
  }

  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = a1[10];
  if (!v9 || (v10 = a1[9], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = a1;
  v13[1] = v8;
  v13[2] = v5;
  v13[3] = v7;
  v14 = a1[11];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::wake(dispatch::group_session)::$_0>(CellularCertModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void CellularCertModule::bootstrapTest_sync(CellularCertModule *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Send request to initialize test", v5, 2u);
  }

  CellularCertClient::bootstrapTest(*(this + 16), a2);
}

void CellularCertModule::shutdownTest_sync(CellularCertModule *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Send request to shutdown test", v5, 2u);
  }

  CellularCertClient::shutdownTest(*(this + 16), a2);
}

void CellularCertModule::configureTest_sync(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 104);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Send request to configure test", buf, 2u);
  }

  v7 = *(a1 + 128);
  v8 = *a2;
  v9 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v8 = xpc_null_create();
    v9 = v8;
  }

  CellularCertClient::configureTest(v7, &v9, a3);
  xpc_release(v8);
}

atomic_ullong *std::shared_ptr<CellularCertModule>::shared_ptr[abi:ne200100]<CellularCertModule,std::shared_ptr<CellularCertModule> ctu::SharedSynchronizable<CellularCertModule>::make_shared_ptr<CellularCertModule>(CellularCertModule*)::{lambda(CellularCertModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E4C918;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_29761396C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<CellularCertModule> ctu::SharedSynchronizable<CellularCertModule>::make_shared_ptr<CellularCertModule>(CellularCertModule*)::{lambda(CellularCertModule*)#1}::operator() const(CellularCertModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<CellularCertModule *,std::shared_ptr<CellularCertModule> ctu::SharedSynchronizable<CellularCertModule>::make_shared_ptr<CellularCertModule>(CellularCertModule*)::{lambda(CellularCertModule *)#1},std::allocator<CellularCertModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CellularCertModule *,std::shared_ptr<CellularCertModule> ctu::SharedSynchronizable<CellularCertModule>::make_shared_ptr<CellularCertModule>(CellularCertModule*)::{lambda(CellularCertModule *)#1},std::allocator<CellularCertModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI18CellularCertModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI18CellularCertModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI18CellularCertModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI18CellularCertModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<CellularCertModule> ctu::SharedSynchronizable<CellularCertModule>::make_shared_ptr<CellularCertModule>(CellularCertModule*)::{lambda(CellularCertModule*)#1}::operator() const(CellularCertModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableI18CellularCertModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = **(a1 + 40);
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v2 = operator new(0x18uLL);
  ctu::OsLogLogger::OsLogLogger(v2, "com.apple.telephony.abm", "cellularcert.client");
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  std::shared_ptr<CellularCertClient>::shared_ptr[abi:ne200100]<CellularCertClient,0>(&v13, v2);
  v3 = v13;
  v13 = 0uLL;
  v4 = *(v1 + 136);
  *(v1 + 128) = v3;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(&v13 + 1);
  if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(v1 + 80);
  if (!v6 || (v7 = *(v1 + 72), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = MEMORY[0x29EDCA5F8];
  *(&v13 + 1) = 1174405120;
  v14 = ___ZZN18CellularCertModule4initEvENK3__0clEv_block_invoke;
  v15 = &__block_descriptor_tmp_33_2;
  v16 = v1;
  v17 = v7;
  v18 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(&v13);
  v12 = *(v1 + 88);
  if (v12)
  {
    dispatch_retain(*(v1 + 88));
  }

  v19 = v11;
  v20 = v12;
  (*(**(v1 + 112) + 16))(*(v1 + 112), &v19);
  if (v20)
  {
    dispatch_release(v20);
  }

  if (v19)
  {
    _Block_release(v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void sub_297613CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  dispatch::callback<void({block_pointer})(char const*,xpc::dict)>::~callback(v16 - 48);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

void ___ZZN18CellularCertModule4initEvENK3__0clEv_block_invoke(void *a1, const char *a2, xpc_object_t *a3)
{
  v4 = a1[4];
  v70 = 0;
  v71 = 0;
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_102;
  }

  v71 = std::__shared_weak_count::lock(v5);
  if (!v71)
  {
    return;
  }

  v70 = a1[5];
  if (!v70)
  {
    goto LABEL_102;
  }

  v8 = strlen(a2);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    p_dst = operator new(v11);
    object = v9;
    v69 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_12;
  }

  HIBYTE(v69) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_12:
    memcpy(p_dst, a2, v9);
  }

  *(v9 + p_dst) = 0;
  v12 = abm::kCommandCellularCertBootstrap[0];
  v13 = strlen(abm::kCommandCellularCertBootstrap[0]);
  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v15 = operator new(v16);
    v65 = v14;
    v66 = v16 | 0x8000000000000000;
    *buf = v15;
    goto LABEL_21;
  }

  HIBYTE(v66) = v13;
  v15 = buf;
  if (v13)
  {
LABEL_21:
    memmove(v15, v12, v14);
  }

  *(v15 + v14) = 0;
  v17 = SHIBYTE(v69);
  v18 = __dst;
  if (v69 >= 0)
  {
    v19 = &__dst;
  }

  else
  {
    v19 = __dst;
  }

  v20 = SHIBYTE(v66);
  v21 = *buf;
  if (v66 >= 0)
  {
    v22 = buf;
  }

  else
  {
    v22 = *buf;
  }

  v23 = strcasecmp(v19, v22);
  if (v20 < 0)
  {
    operator delete(v21);
    if ((v17 & 0x80000000) == 0)
    {
LABEL_30:
      if (v23)
      {
        goto LABEL_31;
      }

LABEL_37:
      __dst = 0xAAAAAAAAAAAAAAAALL;
      object = 0xAAAAAAAAAAAAAAAALL;
      v27 = v70;
      v28 = *(v70 + 104);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297476000, v28, OS_LOG_TYPE_DEFAULT, "#I Send request to initialize test", buf, 2u);
      }

      CellularCertClient::bootstrapTest(*(v27 + 128), &__dst);
      (*(**(v4 + 112) + 24))(*(v4 + 112), __dst);
      xpc_release(object);
      goto LABEL_102;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  operator delete(v18);
  if (!v23)
  {
    goto LABEL_37;
  }

LABEL_31:
  v24 = strlen(a2);
  if (v24 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v25 = v24;
  if (v24 >= 0x17)
  {
    if ((v24 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v24 | 7) + 1;
    }

    v26 = operator new(v29);
    object = v25;
    v69 = v29 | 0x8000000000000000;
    __dst = v26;
    goto LABEL_44;
  }

  HIBYTE(v69) = v24;
  v26 = &__dst;
  if (v24)
  {
LABEL_44:
    memcpy(v26, a2, v25);
  }

  *(v25 + v26) = 0;
  v30 = abm::kCommandCellularCertShutdown[0];
  v31 = strlen(abm::kCommandCellularCertShutdown[0]);
  if (v31 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v32 = v31;
  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v31 | 7) + 1;
    }

    v33 = operator new(v34);
    v65 = v32;
    v66 = v34 | 0x8000000000000000;
    *buf = v33;
    goto LABEL_53;
  }

  HIBYTE(v66) = v31;
  v33 = buf;
  if (v31)
  {
LABEL_53:
    memmove(v33, v30, v32);
  }

  *(v33 + v32) = 0;
  v35 = SHIBYTE(v69);
  v36 = __dst;
  if (v69 >= 0)
  {
    v37 = &__dst;
  }

  else
  {
    v37 = __dst;
  }

  v38 = SHIBYTE(v66);
  v39 = *buf;
  if (v66 >= 0)
  {
    v40 = buf;
  }

  else
  {
    v40 = *buf;
  }

  v41 = strcasecmp(v37, v40);
  if (v38 < 0)
  {
    operator delete(v39);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_62:
      if (v41)
      {
        goto LABEL_63;
      }

LABEL_69:
      __dst = 0xAAAAAAAAAAAAAAAALL;
      object = 0xAAAAAAAAAAAAAAAALL;
      v45 = v70;
      v46 = *(v70 + 104);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297476000, v46, OS_LOG_TYPE_DEFAULT, "#I Send request to shutdown test", buf, 2u);
      }

      CellularCertClient::shutdownTest(*(v45 + 128), &__dst);
      (*(**(v4 + 112) + 24))(*(v4 + 112), __dst);
      xpc_release(object);
      goto LABEL_102;
    }
  }

  else if ((v35 & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  operator delete(v36);
  if (!v41)
  {
    goto LABEL_69;
  }

LABEL_63:
  v42 = strlen(a2);
  if (v42 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v43 = v42;
  if (v42 >= 0x17)
  {
    if ((v42 | 7) == 0x17)
    {
      v47 = 25;
    }

    else
    {
      v47 = (v42 | 7) + 1;
    }

    v44 = operator new(v47);
    object = v43;
    v69 = v47 | 0x8000000000000000;
    __dst = v44;
    goto LABEL_76;
  }

  HIBYTE(v69) = v42;
  v44 = &__dst;
  if (v42)
  {
LABEL_76:
    memcpy(v44, a2, v43);
  }

  *(v43 + v44) = 0;
  v48 = abm::kCommandCellularCertConfigure[0];
  v49 = strlen(abm::kCommandCellularCertConfigure[0]);
  if (v49 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v50 = v49;
  if (v49 >= 0x17)
  {
    if ((v49 | 7) == 0x17)
    {
      v52 = 25;
    }

    else
    {
      v52 = (v49 | 7) + 1;
    }

    v51 = operator new(v52);
    v65 = v50;
    v66 = v52 | 0x8000000000000000;
    *buf = v51;
    goto LABEL_85;
  }

  HIBYTE(v66) = v49;
  v51 = buf;
  if (v49)
  {
LABEL_85:
    memmove(v51, v48, v50);
  }

  *(v51 + v50) = 0;
  v53 = SHIBYTE(v69);
  v54 = __dst;
  if (v69 >= 0)
  {
    v55 = &__dst;
  }

  else
  {
    v55 = __dst;
  }

  v56 = SHIBYTE(v66);
  v57 = *buf;
  if (v66 >= 0)
  {
    v58 = buf;
  }

  else
  {
    v58 = *buf;
  }

  v59 = strcasecmp(v55, v58);
  if (v56 < 0)
  {
    operator delete(v57);
    if ((v53 & 0x80000000) == 0)
    {
LABEL_94:
      if (!v59)
      {
        goto LABEL_98;
      }

      goto LABEL_102;
    }
  }

  else if ((v53 & 0x80000000) == 0)
  {
    goto LABEL_94;
  }

  operator delete(v54);
  if (!v59)
  {
LABEL_98:
    __dst = 0xAAAAAAAAAAAAAAAALL;
    object = 0xAAAAAAAAAAAAAAAALL;
    v60 = v70;
    v61 = *a3;
    v63 = v61;
    if (v61)
    {
      xpc_retain(v61);
    }

    else
    {
      v61 = xpc_null_create();
      v63 = v61;
    }

    CellularCertModule::configureTest_sync(v60, &v63, &__dst);
    xpc_release(v61);
    v63 = 0;
    (*(**(v4 + 112) + 32))(*(v4 + 112), __dst);
    xpc_release(object);
  }

LABEL_102:
  v62 = v71;
  if (v71)
  {
    if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v62->__on_zero_shared)(v62, a2, a3);
      std::__shared_weak_count::__release_weak(v62);
    }
  }
}

void sub_29761432C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, xpc_object_t object, int a16, __int16 a17, char a18, char a19, char a20)
{
  xpc_release(object);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(char const*,xpc::dict)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Send request to shutdown test", buf, 2u);
  }

  CellularCertClient::shutdownTest(*(v3 + 128), buf);
  xpc_release(object);
  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_297614560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  CellularCertModule::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_297614658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  CellularCertModule::registerEventHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_297614750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI18CellularCertModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  object = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(v3 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Send request to initialize test", buf, 2u);
  }

  CellularCertClient::bootstrapTest(*(v3 + 128), &v9);
  if (v9)
  {
    v5 = 0;
  }

  else
  {
    v5 = -534716416;
  }

  *buf = v5;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v2 + 1, buf, &object);
  xpc_release(object);
  v6 = v2[1];
  if (v6)
  {
    _Block_release(v6);
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_2976148A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN18CellularCertModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void **_ZNSt3__110unique_ptrIZZN18CellularCertModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI18CellularCertModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  object = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(v3 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Send request to shutdown test", buf, 2u);
  }

  CellularCertClient::shutdownTest(*(v3 + 128), &v9);
  if (v9)
  {
    v5 = 0;
  }

  else
  {
    v5 = -534716416;
  }

  *buf = v5;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v2 + 1, buf, &object);
  xpc_release(object);
  v6 = v2[1];
  if (v6)
  {
    _Block_release(v6);
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_297614A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN18CellularCertModule28registerCommandHandlers_syncEvEUb0_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void **_ZNSt3__110unique_ptrIZZN18CellularCertModule28registerCommandHandlers_syncEvEUb0_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI18CellularCertModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  object = 0xAAAAAAAAAAAAAAAALL;
  v4 = v2[1];
  v9 = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
    v9 = v4;
  }

  CellularCertModule::configureTest_sync(v3, &v9, &v10);
  xpc_release(v4);
  v9 = 0;
  if (v10)
  {
    v5 = 0;
  }

  else
  {
    v5 = -534716416;
  }

  v8 = v5;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v2 + 2, &v8, &object);
  xpc_release(object);
  v6 = v2[2];
  if (v6)
  {
    _Block_release(v6);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_297614BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN18CellularCertModule28registerCommandHandlers_syncEvEUb1_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN18CellularCertModule28registerCommandHandlers_syncEvEUb1_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4C998;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4C998;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4C998;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4C998;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    v19 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2] || MEMORY[0x29C272BA0](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_25;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      if (v5)
      {
        xpc_retain(v5);
        v10 = v5;
        v11 = v7[10];
        if (!v11)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[10];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = v7[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v13;
      v15 = operator new(0x18uLL);
      *v15 = v7;
      v15[1] = v4;
      v15[2] = v10;
      v16 = xpc_null_create();
      v17 = v7[11];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = operator new(0x18uLL);
      *v18 = v15;
      v18[1] = v12;
      v18[2] = v14;
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      xpc_release(v16);
      v9 = v19;
      if (v19)
      {
LABEL_25:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_297615068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18CellularCertModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  object[3] = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  memset(__p, 170, sizeof(__p));
  value = xpc_dictionary_get_value(v2[2], *MEMORY[0x29EDBEAF8]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  v5 = *(v3 + 104);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v6 = __p[0];
    }

    LODWORD(object[0]) = 136315138;
    *(object + 4) = v6;
    _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Boot state is %s", object, 0xCu);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v7 = v2[1];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = v2[1];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_2976152C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4CA18;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4CA18;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4CA18;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4CA18;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18CellularCertModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Reset Detected", v7, 2u);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4CA98;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4CA98;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4CA98;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4CA98;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18CellularCertModule26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Dump state begin", v7, 2u);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::sleep(dispatch::group_session)::$_0>(CellularCertModule::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = (*a1)[3];
  if (v3)
  {
    v4 = *v2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (v2[2])
      {
        v7 = *(v4 + 104);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Sleep", v12, 2u);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v8 = v2[3];
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v9 = v2[1];
  if (v9)
  {
    dispatch_group_leave(v9);
    v10 = v2[1];
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::wake(dispatch::group_session)::$_0>(CellularCertModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = (*a1)[3];
  if (v3)
  {
    v4 = *v2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (v2[2])
      {
        v7 = *(v4 + 104);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Wake", v12, 2u);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v8 = v2[3];
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v9 = v2[1];
  if (v9)
  {
    dispatch_group_leave(v9);
    v10 = v2[1];
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

uint64_t __cxx_global_var_init_12()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t IOKitAccessoriesDelegate::create@<X0>(uint64_t a1@<X0>, NSObject **a2@<X1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v17 = 0;
  v6 = operator new(0xB8uLL);
  v7 = *(a1 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a1)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    v19 = v7;
    goto LABEL_6;
  }

  v19 = v18;
  (*(*v7 + 24))(v7, v18);
LABEL_6:
  v8 = *a2;
  v15 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  IOKitAccessoriesDelegate::IOKitAccessoriesDelegate(v6, v18, &v15);
  v11 = operator new(0x20uLL);
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__vftable = &unk_2A1E4CBE0;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v6;
  on_zero_shared = v6->__on_zero_shared;
  if (!on_zero_shared)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (on_zero_shared->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    std::__shared_weak_count::__release_weak(on_zero_shared);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_13:
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_14:
  v16 = v6;
  v17 = v11;
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))(v19, v9, v10);
  }

  result = (*(v6->~__shared_weak_count + 7))(v6);
  *a3 = v6;
  a3[1] = v11;
  return result;
}

void sub_297616274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  operator delete(v12);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t IOKitAccessoriesDelegate::IOKitAccessoriesDelegate(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v19 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1E4CB18;
  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      v18 = v17;
      (*(*v5 + 24))(v5, v17);
    }

    else
    {
      v18 = (*(*v5 + 16))(v5);
    }
  }

  else
  {
    v18 = 0;
  }

  v6 = *a3;
  v15 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = (*(*a1 + 16))(a1);
  AccessoriesDelegateBase::AccessoriesDelegateBase(a1, v17, &v15, v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))();
  }

  *a1 = &unk_2A1E4CB18;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v8 = off_2A18CAD88;
  if (!off_2A18CAD88)
  {
    ABMServer::create_default_global(v16);
    v9 = *v16;
    v16[0] = 0;
    v16[1] = 0;
    v10 = *(&off_2A18CAD88 + 1);
    off_2A18CAD88 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = v16[1];
    if (v16[1] && !atomic_fetch_add((v16[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = off_2A18CAD88;
  }

  v12 = *(&off_2A18CAD88 + 1);
  if (*(&off_2A18CAD88 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAD88 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  ctu::iokit::Controller::create(*(*v8 + 144), v13);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  return a1;
}

void sub_29761662C(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  AccessoriesDelegateBase::~AccessoriesDelegateBase(v1);
  _Unwind_Resume(a1);
}

void sub_29761668C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (v15)
  {
    dispatch_release(v15);
  }

  std::function<void ()(ctu::cf::CFSharedRef<__CFError>,std::vector<abm::AccessoryInfo>)>::~function(va);
  _Unwind_Resume(a1);
}

void IOKitAccessoriesDelegate::~IOKitAccessoriesDelegate(IOKitAccessoriesDelegate *this)
{
  *this = &unk_2A1E4CB18;
  v2 = *(this + 20);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 12);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v9 = this;
  }

  else
  {
    v9 = this;
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(v9);
}

{
  IOKitAccessoriesDelegate::~IOKitAccessoriesDelegate(this);

  operator delete(v1);
}

void IOKitAccessoriesDelegate::init(IOKitAccessoriesDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN24IOKitAccessoriesDelegate4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_17;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

double ___ZN24IOKitAccessoriesDelegate4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = 2;
  v2 = std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>((v1 + 104), 2u, &v7);
  *(v2 + 20) = 0x2000000000004;
  *(v2 + 7) = 0x10000;
  v7 = 8;
  v3 = std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>((v1 + 104), 8u, &v7);
  *(v3 + 20) = 0x3000000000000;
  *(v3 + 7) = 0;
  v7 = 4;
  v4 = std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>((v1 + 104), 4u, &v7);
  *(v4 + 20) = 0x300000000000FLL;
  *(v4 + 7) = 0;
  v7 = 32;
  v5 = std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>((v1 + 104), 0x20u, &v7);
  *&result = 0x3000000000010;
  *(v5 + 20) = 0x3000000000010;
  *(v5 + 7) = 0;
  return result;
}

void IOKitAccessoriesDelegate::start(IOKitAccessoriesDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_12_0;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Already started", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
    }

    *(v1 + 80) = 1;
    v5 = *(v1 + 16);
    if (!v5 || (v6 = *(v1 + 8), (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    p_shared_weak_owners = &v7->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v8);
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke_2;
    aBlock[3] = &__block_descriptor_tmp_5_12;
    aBlock[4] = v1;
    aBlock[5] = v6;
    v20 = v8;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v10 = _Block_copy(aBlock);
    v11 = *(v1 + 24);
    if (v11)
    {
      dispatch_retain(*(v1 + 24));
    }

    v21 = v10;
    v22 = v11;
    ctu::iokit::Controller::setPowerSourceCallback();
    if (v22)
    {
      dispatch_release(v22);
    }

    v12 = v21;
    if (v21)
    {
      _Block_release(v21);
    }

    if (capabilities::abs::supportsDisplayCoverAccessory(v12))
    {
      v15[0] = MEMORY[0x29EDCA5F8];
      v15[1] = 1174405120;
      v15[2] = ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke_6;
      v15[3] = &__block_descriptor_tmp_11_5;
      v15[4] = v1;
      v15[5] = v6;
      v16 = v8;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v13 = _Block_copy(v15);
      v14 = *(v1 + 24);
      if (v14)
      {
        dispatch_retain(*(v1 + 24));
      }

      v17 = v13;
      object = v14;
      ctu::iokit::Controller::registerForDisplayCoverStateChanged();
      if (object)
      {
        dispatch_release(object);
      }

      if (v17)
      {
        _Block_release(v17);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }
    }

    if (v20)
    {
      std::__shared_weak_count::__release_weak(v20);
    }

    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_297616C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitDisplayCoverState)>::~callback(&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    v26 = a24;
    if (!a24)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v24);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v26 = a24;
    if (!a24)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v26);
  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke_2(void *a1, uint64_t a2)
{
  v141 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v138 = v6;
  if (!v6)
  {
    return;
  }

  if (!a1[5])
  {
    goto LABEL_272;
  }

  v136 = 0;
  v7 = *(v5 + 120);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v109 = 0;
    v11 = 0;
    v107 = (v5 + 160);
    v12 = -1;
    while (1)
    {
      v13 = *(v7 + 4);
      if ((v13 & a2) != 0)
      {
        break;
      }

LABEL_7:
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_104;
      }
    }

    v14 = *(v5 + 152);
    if (v14)
    {
      v15 = vcnt_s8(v14);
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        v16 = *(v7 + 4);
        if (*&v14 <= v13)
        {
          v16 = v13 % v14.i32[0];
        }
      }

      else
      {
        v16 = (v14.i32[0] - 1) & v13;
      }

      v17 = *(*(v5 + 144) + 8 * v16);
      if (v17)
      {
        v18 = *v17;
        if (v18)
        {
          if (v15.u32[0] < 2uLL)
          {
            v19 = *&v14 - 1;
            while (1)
            {
              v20 = v18[1];
              if (v20 == v13)
              {
                if (*(v18 + 4) == v13)
                {
                  goto LABEL_6;
                }
              }

              else if ((v20 & v19) != v16)
              {
                goto LABEL_30;
              }

              v18 = *v18;
              if (!v18)
              {
                goto LABEL_30;
              }
            }
          }

          do
          {
            v21 = v18[1];
            if (v21 == v13)
            {
              if (*(v18 + 4) == v13)
              {
                goto LABEL_6;
              }
            }

            else
            {
              if (v21 >= *&v14)
              {
                v21 %= *&v14;
              }

              if (v21 != v16)
              {
                break;
              }
            }

            v18 = *v18;
          }

          while (v18);
        }
      }
    }

LABEL_30:
    v22 = *(v5 + 40);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      ctu::iokit::asString();
      v24 = __p;
      if (SBYTE7(v116) < 0)
      {
        v24 = __p[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v24;
      _os_log_impl(&dword_297476000, v22, OS_LOG_TYPE_DEFAULT, "#I Power Source attached: %s", &buf, 0xCu);
      if (SBYTE7(v116) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = *(v7 + 10);
    v10 = *(v7 + 12);
    LOWORD(v109) = *(v7 + 13);
    WORD2(v109) = *(v7 + 14);
    capabilities::abs::supportedSARFeatures(v23);
    if (capabilities::abs::operator&())
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v26 = *(v7 + 4);
    v27 = *(v5 + 152);
    if (v27)
    {
      v28 = vcnt_s8(v27);
      v28.i16[0] = vaddlv_u8(v28);
      if (v28.u32[0] > 1uLL)
      {
        v29 = *(v7 + 4);
        if (v27 <= v26)
        {
          v29 = v26 % v27;
        }
      }

      else
      {
        v29 = (v27 - 1) & v26;
      }

      v30 = *(*(v5 + 144) + 8 * v29);
      if (v30)
      {
        v31 = *v30;
        if (*v30)
        {
          if (v28.u32[0] < 2uLL)
          {
            while (1)
            {
              v33 = v31[1];
              if (v33 == v26)
              {
                if (*(v31 + 4) == v26)
                {
                  goto LABEL_91;
                }
              }

              else if ((v33 & (v27 - 1)) != v29)
              {
                goto LABEL_59;
              }

              v31 = *v31;
              if (!v31)
              {
                goto LABEL_59;
              }
            }
          }

          do
          {
            v32 = v31[1];
            if (v32 == v26)
            {
              if (*(v31 + 4) == v26)
              {
                goto LABEL_91;
              }
            }

            else
            {
              if (v32 >= v27)
              {
                v32 %= v27;
              }

              if (v32 != v29)
              {
                break;
              }
            }

            v31 = *v31;
          }

          while (v31);
        }
      }
    }

    else
    {
      v29 = 0xAAAAAAAAAAAAAAAALL;
    }

LABEL_59:
    v31 = operator new(0x20uLL);
    *v31 = 0;
    v31[1] = v26;
    *(v31 + 4) = *(v7 + 4);
    *(v31 + 10) = -1;
    *(v31 + 22) = 0;
    *(v31 + 15) = 0;
    v34 = (*(v5 + 168) + 1);
    v35 = *(v5 + 176);
    if (v27 && (v35 * v27) >= v34)
    {
      v26 = v29;
    }

    else
    {
      v36 = (v27 & (v27 - 1)) != 0;
      if (v27 < 3)
      {
        v36 = 1;
      }

      v37 = v36 | (2 * v27);
      v38 = vcvtps_u32_f32(v34 / v35);
      if (v37 <= v38)
      {
        prime = v38;
      }

      else
      {
        prime = v37;
      }

      if (prime == 1)
      {
        prime = 2;
      }

      else if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(prime);
        v27 = *(v5 + 152);
      }

      if (prime > v27)
      {
        goto LABEL_72;
      }

      if (prime < v27)
      {
        v40 = vcvtps_u32_f32(*(v5 + 168) / *(v5 + 176));
        if (v27 < 3 || (v41 = vcnt_s8(v27), v41.i16[0] = vaddlv_u8(v41), v41.u32[0] > 1uLL))
        {
          v40 = std::__next_prime(v40);
        }

        else
        {
          v42 = 1 << -__clz(v40 - 1);
          if (v40 >= 2)
          {
            v40 = v42;
          }
        }

        if (prime <= v40)
        {
          prime = v40;
        }

        if (prime < v27)
        {
LABEL_72:
          std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__do_rehash<true>(v5 + 144, prime);
        }
      }

      v27 = *(v5 + 152);
      if ((v27 & (v27 - 1)) != 0)
      {
        if (v27 <= v26)
        {
          v26 %= v27;
        }
      }

      else
      {
        v26 = (v27 - 1) & v26;
      }
    }

    v43 = *(v5 + 144);
    v44 = *(v43 + 8 * v26);
    if (v44)
    {
      *v31 = *v44;
    }

    else
    {
      *v31 = *v107;
      *v107 = v31;
      *(v43 + 8 * v26) = v107;
      if (!*v31)
      {
        goto LABEL_90;
      }

      v47 = *(*v31 + 8);
      if ((v27 & (v27 - 1)) != 0)
      {
        if (v47 >= v27)
        {
          v47 %= v27;
        }

        v44 = (v43 + 8 * v47);
      }

      else
      {
        v44 = (v43 + 8 * (v47 & (v27 - 1)));
      }
    }

    *v44 = v31;
LABEL_90:
    ++*(v5 + 168);
LABEL_91:
    *(v31 + 10) = v12;
    v9 = 2;
    *(v31 + 11) = 2;
    *(v31 + 12) = v10;
    *(v31 + 13) = v109;
    *(v31 + 14) = WORD2(v109);
    v11 = v25;
    *(v31 + 15) = v25;
    v45 = *(v5 + 72);
    if (v45)
    {
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v46 = operator new(0xCuLL);
      v133 = v46 + 6;
      v134 = v46 + 6;
      *v46 = v12;
      v46[1] = 2;
      v46[2] = v10;
      v46[3] = v109;
      v46[4] = WORD2(v109);
      v46[5] = v25;
      v132 = v46;
      (*(*v45 + 48))(v45, &v135, &v132);
      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (v135)
      {
        CFRelease(v135);
      }

      v8 = 1;
      v9 = 2;
    }

    else
    {
LABEL_6:
      v8 = 1;
    }

    goto LABEL_7;
  }

  v11 = 0;
  v109 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v12 = -1;
LABEL_104:
  v106 = v9;
  v48 = *(v5 + 160);
  v108 = (v5 + 160);
  if (!v48)
  {
    v51 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_198;
  }

  v105 = v11;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  do
  {
    if ((v48[2] & a2) == 0)
    {
      v52 = *(v5 + 40);
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
      if (v53)
      {
        ctu::iokit::asString();
        v54 = __p;
        if (SBYTE7(v116) < 0)
        {
          v54 = __p[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v54;
        _os_log_impl(&dword_297476000, v52, OS_LOG_TYPE_DEFAULT, "#I Power Source detached: %s", &buf, 0xCu);
        if (SBYTE7(v116) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(v48 + 11) = 1;
      capabilities::abs::supportedSARFeatures(v53);
      if (capabilities::abs::operator&())
      {
        v55 = 2;
      }

      else
      {
        v55 = 1;
      }

      *(v48 + 15) = v55;
      if (v50 >= v49)
      {
        v56 = v50 - v51;
        v57 = (v50 - v51) >> 2;
        v58 = v57 + 1;
        if ((v57 + 1) >> 62)
        {
          std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
        }

        if ((v49 - v51) >> 1 > v58)
        {
          v58 = (v49 - v51) >> 1;
        }

        if ((v49 - v51) >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v59 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v59 = v58;
        }

        if (v59)
        {
          if (v59 >> 62)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v60 = operator new(4 * v59);
        }

        else
        {
          v60 = 0;
        }

        v61 = &v60[4 * v57];
        v49 = &v60[4 * v59];
        *v61 = *(v48 + 4);
        v50 = v61 + 4;
        memcpy(v60, v51, v56);
        if (v51)
        {
          operator delete(v51);
        }

        v51 = v60;
        if (!*(v5 + 72))
        {
          goto LABEL_106;
        }
      }

      else
      {
        *v50 = *(v48 + 4);
        v50 += 4;
        if (!*(v5 + 72))
        {
LABEL_106:
          v8 = 1;
          goto LABEL_107;
        }
      }

      v131 = v136;
      if (v136)
      {
        CFRetain(v136);
      }

      __p[0] = *(v48 + 20);
      LODWORD(__p[1]) = *(v48 + 7);
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v62 = operator new(0xCuLL);
      v129 = (v62 + 12);
      v130 = v62 + 12;
      *(v62 + 2) = __p[1];
      *v62 = __p[0];
      v128 = v62;
      v63 = *(v5 + 72);
      if (!v63)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v63 + 48))(v63, &v131, &v128);
      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      if (v131)
      {
        CFRelease(v131);
      }

      goto LABEL_106;
    }

LABEL_107:
    v48 = *v48;
  }

  while (v48);
  if (v51 == v50)
  {
    v11 = v105;
    if ((a2 & 1) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_198;
  }

  v64 = *(v5 + 152);
  v11 = v105;
  if (v64)
  {
    v65 = v51;
LABEL_144:
    v66 = *v65;
    v67 = vcnt_s8(v64);
    v67.i16[0] = vaddlv_u8(v67);
    if (v67.u32[0] > 1uLL)
    {
      v68 = *v65;
      if (*&v64 <= v66)
      {
        v68 = v66 % v64.i32[0];
      }
    }

    else
    {
      v68 = (v64.i32[0] - 1) & v66;
    }

    v69 = *(v5 + 144);
    v70 = *(v69 + 8 * v68);
    if (v70)
    {
      v71 = *v70;
      if (*v70)
      {
        v72 = *&v64 - 1;
        if (v67.u32[0] < 2uLL)
        {
          while (1)
          {
            v73 = *(v71 + 1);
            if (v73 == v66)
            {
              if (v71[4] == v66)
              {
                goto LABEL_164;
              }
            }

            else if ((v73 & v72) != v68)
            {
              goto LABEL_191;
            }

            v71 = *v71;
            if (!v71)
            {
              goto LABEL_191;
            }
          }
        }

        do
        {
          v74 = *(v71 + 1);
          if (v74 == v66)
          {
            if (v71[4] == v66)
            {
LABEL_164:
              if (v67.u32[0] > 1uLL)
              {
                if (*&v64 <= v66)
                {
                  v66 %= *&v64;
                }
              }

              else
              {
                v66 &= v72;
              }

              v75 = *(v69 + 8 * v66);
              do
              {
                v76 = v75;
                v75 = *v75;
              }

              while (v75 != v71);
              if (v76 == v108)
              {
                goto LABEL_181;
              }

              v77 = v76[1];
              if (v67.u32[0] > 1uLL)
              {
                if (v77 >= *&v64)
                {
                  v77 %= *&v64;
                }
              }

              else
              {
                v77 &= v72;
              }

              if (v77 != v66)
              {
LABEL_181:
                if (!*v71)
                {
                  goto LABEL_182;
                }

                v78 = *(*v71 + 8);
                if (v67.u32[0] > 1uLL)
                {
                  if (v78 >= *&v64)
                  {
                    v78 %= *&v64;
                  }
                }

                else
                {
                  v78 &= v72;
                }

                if (v78 != v66)
                {
LABEL_182:
                  *(v69 + 8 * v66) = 0;
                }
              }

              v79 = *v71;
              if (*v71)
              {
                v80 = *(v79 + 8);
                if (v67.u32[0] > 1uLL)
                {
                  if (v80 >= *&v64)
                  {
                    v80 %= *&v64;
                  }
                }

                else
                {
                  v80 &= v72;
                }

                if (v80 != v66)
                {
                  *(v69 + 8 * v80) = v76;
                  v79 = *v71;
                }
              }

              *v76 = v79;
              *v71 = 0;
              --*(v5 + 168);
              operator delete(v71);
              break;
            }
          }

          else
          {
            if (v74 >= *&v64)
            {
              v74 %= *&v64;
            }

            if (v74 != v68)
            {
              break;
            }
          }

          v71 = *v71;
        }

        while (v71);
      }
    }

LABEL_191:
    while (1)
    {
      v65 += 4;
      if (v65 == v50)
      {
        break;
      }

      v64 = *(v5 + 152);
      if (v64)
      {
        goto LABEL_144;
      }
    }
  }

  if (a2)
  {
LABEL_198:
    if (*(v5 + 168))
    {
      v85 = *(v5 + 40);
      v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);
      if (v86)
      {
        ctu::iokit::asString();
        v87 = (SBYTE7(v116) & 0x80u) == 0 ? __p : __p[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v87;
        _os_log_impl(&dword_297476000, v85, OS_LOG_TYPE_DEFAULT, "#I Power Source: %s", &buf, 0xCu);
        if (SBYTE7(v116) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v88 = *v108;
      if (*v108)
      {
        do
        {
          while ((v88[2] & a2) != 0)
          {
            v88 = *v88;
            if (!v88)
            {
              goto LABEL_194;
            }
          }

          *(v88 + 11) = 1;
          capabilities::abs::supportedSARFeatures(v86);
          v86 = capabilities::abs::operator&();
          if (v86)
          {
            v89 = 2;
          }

          else
          {
            v89 = 1;
          }

          *(v88 + 15) = v89;
          if (*(v5 + 72))
          {
            v127 = v136;
            if (v136)
            {
              CFRetain(v136);
            }

            __p[0] = *(v88 + 20);
            LODWORD(__p[1]) = *(v88 + 7);
            v124 = 0;
            v125 = 0;
            v126 = 0;
            v90 = operator new(0xCuLL);
            v125 = v90 + 12;
            v126 = v90 + 12;
            *(v90 + 2) = __p[1];
            *v90 = __p[0];
            v124 = v90;
            v91 = *(v5 + 72);
            if (!v91)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            (*(*v91 + 48))(v91, &v127, &v124);
            if (v124)
            {
              v125 = v124;
              operator delete(v124);
            }

            v86 = v127;
            if (v127)
            {
              CFRelease(v127);
            }
          }

          v88 = *v88;
        }

        while (v88);
      }

      if (*(v5 + 168))
      {
        v92 = *v108;
        if (*v108)
        {
          do
          {
            v93 = *v92;
            operator delete(v92);
            v92 = v93;
          }

          while (v93);
        }

        *(v5 + 160) = 0;
        v94 = *(v5 + 152);
        if (v94)
        {
          bzero(*(v5 + 144), 8 * v94);
        }

        *(v5 + 168) = 0;
      }
    }

    goto LABEL_267;
  }

LABEL_193:
  if (v8)
  {
    goto LABEL_267;
  }

LABEL_194:
  v123 = 0xAAAAAAAAAAAAAAAALL;
  *&v81 = 0xAAAAAAAAAAAAAAAALL;
  *(&v81 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v122[7] = v81;
  v122[8] = v81;
  v122[5] = v81;
  v122[6] = v81;
  v122[3] = v81;
  v122[4] = v81;
  v122[1] = v81;
  v122[2] = v81;
  v121 = v81;
  v122[0] = v81;
  *v119 = v81;
  v120 = v81;
  v117 = v81;
  v118 = v81;
  *__p = v81;
  v116 = v81;
  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
  v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unexpected Power Source event: ", 31);
  MEMORY[0x29C271B70](v82, a2);
  memset(&buf, 170, sizeof(buf));
  if ((BYTE8(v121) & 0x10) != 0)
  {
    v95 = v121;
    if (v121 < *(&v118 + 1))
    {
      *&v121 = *(&v118 + 1);
      v95 = *(&v118 + 1);
    }

    v96 = v118;
    v83 = v95 - v118;
    if ((v95 - v118) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_244;
    }
  }

  else
  {
    if ((BYTE8(v121) & 8) == 0)
    {
      v83 = 0;
      *(&buf.__r_.__value_.__s + 23) = 0;
      p_buf = &buf;
      goto LABEL_240;
    }

    v96 = *(&v116 + 1);
    v83 = *(&v117 + 1) - *(&v116 + 1);
    if (*(&v117 + 1) - *(&v116 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_244:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v83 >= 0x17)
  {
    if ((v83 | 7) == 0x17)
    {
      v97 = 25;
    }

    else
    {
      v97 = (v83 | 7) + 1;
    }

    p_buf = operator new(v97);
    buf.__r_.__value_.__l.__size_ = v83;
    buf.__r_.__value_.__r.__words[2] = v97 | 0x8000000000000000;
    buf.__r_.__value_.__r.__words[0] = p_buf;
    goto LABEL_239;
  }

  *(&buf.__r_.__value_.__s + 23) = v83;
  p_buf = &buf;
  if (v83)
  {
LABEL_239:
    memmove(p_buf, v96, v83);
  }

LABEL_240:
  p_buf->__r_.__value_.__s.__data_[v83] = 0;
  v98 = *(v5 + 40);
  if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
  {
    v99 = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v99 = buf.__r_.__value_.__r.__words[0];
    }

    *v139 = 136315138;
    *&v139[4] = v99;
    _os_log_error_impl(&dword_297476000, v98, OS_LOG_TYPE_ERROR, "%s", v139, 0xCu);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_248;
    }

LABEL_242:
    v114 = buf;
  }

  else
  {
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_242;
    }

LABEL_248:
    std::string::__init_copy_ctor_external(&v114, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  (*(*v5 + 48))(v139, v5, &v114, 5);
  v100 = v136;
  v101 = *v139;
  v136 = *v139;
  *v139 = 0;
  if (v100)
  {
    CFRelease(v100);
    if (*v139)
    {
      CFRelease(*v139);
    }
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  if (*(v5 + 72))
  {
    cf = v101;
    if (v101)
    {
      CFRetain(v101);
    }

    v102 = operator new(0xCuLL);
    v111 = v102 + 6;
    v112 = v102 + 6;
    *v102 = v12;
    v102[1] = v106;
    v102[2] = v10;
    v102[3] = v109;
    v102[4] = WORD2(v109);
    v102[5] = v11;
    v110 = v102;
    v103 = *(v5 + 72);
    if (!v103)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v103 + 48))(v103, &cf, &v110);
    if (v110)
    {
      v111 = v110;
      operator delete(v110);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  __p[0] = *MEMORY[0x29EDC9538];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9538] + 24);
  __p[1] = (MEMORY[0x29EDC9570] + 16);
  if (SHIBYTE(v120) < 0)
  {
    operator delete(v119[1]);
  }

  __p[1] = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&v116);
  std::ostream::~ostream();
  MEMORY[0x29C271DA0](v122);
LABEL_267:
  if (v51)
  {
    operator delete(v51);
  }

  if (v136)
  {
    CFRelease(v136);
  }

  v6 = v138;
  if (v138)
  {
LABEL_272:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v104 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v104);
    }
  }
}

void sub_297617CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  if (*(v61 - 105) < 0)
  {
    operator delete(*(v61 - 128));
  }

  std::ostringstream::~ostringstream(&a26);
  if (v60)
  {
    operator delete(v60);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v61 - 168));
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v61 - 160);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C271DA0](a1 + 112);
  return a1;
}

void ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke_6(void *a1, uint64_t a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v4 = a2;
  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v33 = v6;
  if (!v6)
  {
    return;
  }

  if (!a1[5])
  {
LABEL_52:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v24);
    }

    return;
  }

  cf = 0;
  if (v4 < 4)
  {
    v7 = 0x4000300010002uLL >> (16 * v4);
    v8 = v5[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = ctu::iokit::asString();
      _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I Display Cover event: %s", buf, 0xCu);
    }

    v9 = 0;
    if (!v5[9])
    {
      goto LABEL_49;
    }

LABEL_42:
    v28 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v22 = operator new(0xCuLL);
    v26 = v22 + 12;
    v27 = v22 + 12;
    *v22 = 13;
    *(v22 + 1) = v7;
    *(v22 + 4) = 0;
    v25 = v22;
    v23 = v5[9];
    if (!v23)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v23 + 48))(v23, &v28, &v25);
    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    goto LABEL_49;
  }

  v43 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[7] = v10;
  v42[8] = v10;
  v42[5] = v10;
  v42[6] = v10;
  v42[3] = v10;
  v42[4] = v10;
  v42[1] = v10;
  v42[2] = v10;
  v41 = v10;
  v42[0] = v10;
  *__p = v10;
  v40 = v10;
  v37 = v10;
  v38 = v10;
  *buf = v10;
  v36 = v10;
  std::ostringstream::basic_ostringstream[abi:ne200100](buf);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Unexpected Display Cover event: ", 32);
  v12 = ctu::iokit::asString();
  v13 = strlen(v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
  memset(&__dst, 170, sizeof(__dst));
  if ((BYTE8(v41) & 0x10) != 0)
  {
    v16 = v41;
    if (v41 < *(&v38 + 1))
    {
      *&v41 = *(&v38 + 1);
      v16 = *(&v38 + 1);
    }

    v17 = v38;
    v14 = v16 - v38;
    if ((v16 - v38) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if ((BYTE8(v41) & 8) == 0)
    {
      v14 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      p_dst = &__dst;
      goto LABEL_23;
    }

    v17 = *(&v36 + 1);
    v14 = *(&v37 + 1) - *(&v36 + 1);
    if (*(&v37 + 1) - *(&v36 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_27:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    p_dst = operator new(v18);
    __dst.__r_.__value_.__l.__size_ = v14;
    __dst.__r_.__value_.__r.__words[2] = v18 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_22;
  }

  *(&__dst.__r_.__value_.__s + 23) = v14;
  p_dst = &__dst;
  if (v14)
  {
LABEL_22:
    memmove(p_dst, v17, v14);
  }

LABEL_23:
  p_dst->__r_.__value_.__s.__data_[v14] = 0;
  v19 = v5[5];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = __dst.__r_.__value_.__r.__words[0];
    }

    *v34 = 136315138;
    *&v34[4] = v20;
    _os_log_error_impl(&dword_297476000, v19, OS_LOG_TYPE_ERROR, "%s", v34, 0xCu);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_31:
    std::string::__init_copy_ctor_external(&v29, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    goto LABEL_32;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  v29 = __dst;
LABEL_32:
  (*(*v5 + 48))(v34, v5, &v29, 5);
  v21 = cf;
  v9 = *v34;
  cf = *v34;
  *v34 = 0;
  if (v21)
  {
    CFRelease(v21);
    if (*v34)
    {
      CFRelease(*v34);
    }
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *buf = *MEMORY[0x29EDC9538];
  *&buf[*(*buf - 24)] = *(MEMORY[0x29EDC9538] + 24);
  *&buf[8] = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[1]);
  }

  *&buf[8] = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v36);
  std::ostream::~ostream();
  MEMORY[0x29C271DA0](v42);
  LOWORD(v7) = 0;
  if (v5[9])
  {
    goto LABEL_42;
  }

LABEL_49:
  if (v9)
  {
    CFRelease(v9);
  }

  v6 = v33;
  if (v33)
  {
    goto LABEL_52;
  }
}

void sub_297618498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a33);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a26);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void IOKitAccessoriesDelegate::stop(IOKitAccessoriesDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN24IOKitAccessoriesDelegate4stopEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_13_0;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN24IOKitAccessoriesDelegate4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Stopping", buf, 2u);
    }

    *(v1 + 80) = 0;
    v5 = ctu::iokit::Controller::stopPowerSourceNotifications(*(v1 + 88));
    if (*(v1 + 168))
    {
      v5 = *(v1 + 160);
      if (v5)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      *(v1 + 160) = 0;
      v7 = *(v1 + 152);
      if (v7)
      {
        bzero(*(v1 + 144), 8 * v7);
      }

      *(v1 + 168) = 0;
    }

    if (capabilities::abs::supportsDisplayCoverAccessory(v5))
    {
      ctu::iokit::Controller::stopDisplayCoverStateNotifications(*(v1 + 88));
    }
  }

  else if (v4)
  {
    *v8 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Already stopped", v8, 2u);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitDisplayCoverState)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void std::__shared_ptr_pointer<IOKitAccessoriesDelegate *,std::shared_ptr<IOKitAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOKitAccessoriesDelegate>(IOKitAccessoriesDelegate*)::{lambda(IOKitAccessoriesDelegate *)#1},std::allocator<IOKitAccessoriesDelegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<IOKitAccessoriesDelegate *,std::shared_ptr<IOKitAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOKitAccessoriesDelegate>(IOKitAccessoriesDelegate*)::{lambda(IOKitAccessoriesDelegate *)#1},std::allocator<IOKitAccessoriesDelegate>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI24IOKitAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI24IOKitAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI24IOKitAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI24IOKitAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<IOKitAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOKitAccessoriesDelegate>(IOKitAccessoriesDelegate*)::{lambda(IOKitAccessoriesDelegate*)#1}::operator() const(IOKitAccessoriesDelegate*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD *a3)
{
  v5 = a2;
  v6 = *(a1 + 1);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a2;
      if (v6 <= a2)
      {
        v8 = a2 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v11 = v10[1];
            if (v11 == a2)
            {
              if (*(v10 + 4) == a2)
              {
                return v10;
              }
            }

            else if ((v11 & (v6 - 1)) != v8)
            {
              goto LABEL_22;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v12 = v10[1];
          if (v12 == a2)
          {
            if (*(v10 + 4) == a2)
            {
              return v10;
            }
          }

          else
          {
            if (v12 >= v6)
            {
              v12 %= v6;
            }

            if (v12 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_22:
  v10 = operator new(0x20uLL);
  *v10 = 0;
  v10[1] = v5;
  *(v10 + 4) = *a3;
  *(v10 + 10) = -1;
  *(v10 + 22) = 0;
  *(v10 + 15) = 0;
  v13 = (*(a1 + 3) + 1);
  v14 = a1[8];
  if (v6 && (v14 * v6) >= v13)
  {
    v5 = v8;
  }

  else
  {
    v15 = 1;
    if (v6 >= 3)
    {
      v15 = (v6 & (v6 - 1)) != 0;
    }

    v16 = v15 | (2 * v6);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      prime = v17;
    }

    else
    {
      prime = v16;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 1);
    }

    if (prime > v6)
    {
      goto LABEL_35;
    }

    if (prime < v6)
    {
      v19 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (v6 < 3 || (v20 = vcnt_s8(v6), v20.i16[0] = vaddlv_u8(v20), v20.u32[0] > 1uLL))
      {
        v19 = std::__next_prime(v19);
      }

      else
      {
        v21 = 1 << -__clz(v19 - 1);
        if (v19 >= 2)
        {
          v19 = v21;
        }
      }

      if (prime <= v19)
      {
        prime = v19;
      }

      if (prime < v6)
      {
LABEL_35:
        std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__do_rehash<true>(a1, prime);
      }
    }

    v6 = *(a1 + 1);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v6 <= v5)
      {
        v5 %= v6;
      }
    }

    else
    {
      v5 = (v6 - 1) & v5;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v5);
  if (v23)
  {
    *v10 = *v23;
  }

  else
  {
    *v10 = *(a1 + 2);
    *(a1 + 2) = v10;
    *(v22 + 8 * v5) = a1 + 4;
    if (!*v10)
    {
      goto LABEL_53;
    }

    v25 = *(*v10 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v25 >= v6)
      {
        v25 %= v6;
      }

      v23 = (v22 + 8 * v25);
    }

    else
    {
      v23 = (v22 + 8 * (v25 & (v6 - 1)));
    }
  }

  *v23 = v10;
LABEL_53:
  ++*(a1 + 3);
  return v10;
}

void std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    v14 = *a1;
    *a1 = 0;
    if (v14)
    {
      operator delete(v14);
    }

    *(a1 + 8) = 0;
    return;
  }

  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v4 = operator new(8 * a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
    v4 = *a1;
  }

  *(a1 + 8) = a2;
  bzero(v4, 8 * a2);
  v8 = *(a1 + 16);
  v7 = a1 + 16;
  v6 = v8;
  if (v8)
  {
    v9 = v6[1];
    v10 = a2 - 1;
    if ((a2 & (a2 - 1)) == 0)
    {
      v11 = v9 & v10;
      *(v4 + v11) = v7;
      while (1)
      {
        v12 = *v6;
        if (!*v6)
        {
          break;
        }

        v13 = v12[1] & v10;
        if (v13 == v11)
        {
          v6 = *v6;
        }

        else if (*(v4 + v13))
        {
          *v6 = *v12;
          *v12 = **(v4 + v13);
          **(v4 + v13) = v12;
        }

        else
        {
          *(v4 + v13) = v6;
          v6 = v12;
          v11 = v13;
        }
      }

      return;
    }

    if (v9 >= a2)
    {
      v9 %= a2;
    }

    *(v4 + v9) = v7;
    v15 = *v6;
    if (*v6)
    {
      while (1)
      {
        v16 = v15[1];
        if (v16 >= a2)
        {
          v16 %= a2;
        }

        if (v16 == v9)
        {
          goto LABEL_23;
        }

        if (*(v4 + v16))
        {
          *v6 = *v15;
          *v15 = **(v4 + v16);
          **(v4 + v16) = v15;
          v15 = v6;
LABEL_23:
          v6 = v15;
          v15 = *v15;
          if (!v15)
          {
            return;
          }
        }

        else
        {
          *(v4 + v16) = v6;
          v6 = v15;
          v15 = *v15;
          v9 = v16;
          if (!v15)
          {
            return;
          }
        }
      }
    }
  }
}

void AntennaModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  v4 = dispatch_workloop_create("antenna.wl");
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x88uLL);
  v6 = *a1;
  v7 = a1[1];
  v11[0] = v6;
  v11[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  AntennaModule::AntennaModule(v5, v11, &v10);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<AntennaModule>::shared_ptr[abi:ne200100]<AntennaModule,std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule*)#1},0>(a2, v5);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  AntennaModule::init(*a2, v8, v9);
  if (v4)
  {

    dispatch_release(v4);
  }
}

void sub_297618D94(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  dispatch_release(v1);
  _Unwind_Resume(exception_object);
}

void AntennaModule::init(NSObject **this, uint64_t a2, uint64_t a3)
{
  v6 = this;
  if (this[12])
  {
    if (dispatch_workloop_is_current())
    {
      AntennaModule::init(void)::$_0::operator()(this);
      return;
    }

    v4 = this[12] == 0;
  }

  else
  {
    v4 = 1;
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI13AntennaModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_45;
  block[4] = this + 9;
  block[5] = &v6;
  v5 = this[11];
  if (v4)
  {
    dispatch_sync(v5, block);
  }

  else
  {
    dispatch_async_and_wait(v5, block);
  }
}

void *AntennaModule::AntennaModule(void *a1, uint64_t *a2, NSObject **a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E500C0;
  a1[1] = v5;
  a1[2] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    a1[7] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    std::__shared_weak_count::__release_weak(v6);
    *a1 = &unk_2A1E42AA8;
    std::__shared_weak_count::__release_weak(v6);
    v7 = &unk_2A1E4CC30;
    *a1 = &unk_2A1E4CC30;
    v8 = a1 + 9;
    v9 = *a3;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[5] = 0;
  a1[6] = a1 + 7;
  *a1 = &unk_2A1E42AA8;
  v7 = &unk_2A1E4CC30;
  *a1 = &unk_2A1E4CC30;
  v8 = a1 + 9;
  v9 = *a3;
  if (*a3)
  {
LABEL_5:
    dispatch_retain(v9);
    v7 = *a1;
  }

LABEL_6:
  v10 = v7[2](a1);
  ctu::OsLogContext::OsLogContext(v14, "com.apple.telephony.abm", v10);
  if (v9)
  {
    dispatch_retain(v9);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v12 = dispatch_queue_create_with_target_V2("antenna.mod", initially_inactive, v9);
  dispatch_set_qos_class_floor(v12, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v12);
  *v8 = 0;
  v8[1] = 0;
  a1[11] = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  a1[12] = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 13, v15);
  MEMORY[0x29C270D60](v15);
  ctu::OsLogContext::~OsLogContext(v14);
  if (v9)
  {
    dispatch_release(v9);
  }

  *a1 = &unk_2A1E4CC30;
  a1[15] = 0;
  a1[16] = 0;
  a1[14] = 0;
  return a1;
}

void AntennaModule::~AntennaModule(AntennaModule *this)
{
  *this = &unk_2A1E4CC30;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v15, 2u);
  }

  v4 = *(this + 16);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    do
    {
      v12 = *v5;
      if (*(v5 + 31) < 0)
      {
        operator delete(v5[1]);
      }

      operator delete(v5);
      v5 = v12;
    }

    while (v12);
  }

  *(this + 14) = 0;
  MEMORY[0x29C270D60](v2);
  v6 = *(this + 12);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 3);
    if (v10 != v9)
    {
      do
      {
        v13 = *(v10 - 1);
        v10 -= 3;
        if (v13 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(this + 3);
    }

    *(this + 4) = v9;
    operator delete(v11);
  }

  v14 = *(this + 2);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

{
  AntennaModule::~AntennaModule(this);

  operator delete(v1);
}

_WORD *AntennaModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v2 = operator new(2uLL);
  *a1 = v2;
  *v2 = 256;
  result = v2 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_WORD *AntennaModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v2 = operator new(2uLL);
  *a1 = v2;
  *v2 = 770;
  result = v2 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void AntennaModule::shutdownWithStage(uint64_t a1, int a2, NSObject **a3)
{
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      return;
    }

    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZN13AntennaModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
    v9[3] = &__block_descriptor_tmp_41;
    v4 = *a3;
    v9[4] = a1;
    group = v4;
    if (v4)
    {
      dispatch_retain(v4);
      dispatch_group_enter(group);
    }

    ctu::SharedSynchronizable<AntennaModule>::execute_wrapped((a1 + 72), v9);
    if (!group)
    {
      return;
    }

    dispatch_group_leave(group);
    v5 = group;
    if (!group)
    {
      return;
    }

LABEL_12:
    dispatch_release(v5);
    return;
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN13AntennaModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_5;
  v7[3] = &__block_descriptor_tmp_6_7;
  v6 = *a3;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(object);
  }

  ctu::SharedSynchronizable<AntennaModule>::execute_wrapped((a1 + 72), v7);
  if (object)
  {
    dispatch_group_leave(object);
    v5 = object;
    if (object)
    {
      goto LABEL_12;
    }
  }
}

void ___ZN13AntennaModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = **(*(a1 + 32) + 120);
  if (v1)
  {
    antenna::Service::Internal::shutdown(v1);
  }
}

void AntennaModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void AntennaModule::registerCommandHandlers_sync(AntennaModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_68:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_68;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEAB0];
  v8 = strlen(*MEMORY[0x29EDBEAB0]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    p_dst = operator new(v11);
    *(&__dst + 1) = v9;
    v44 = v11 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v44) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_8_2;
  aBlock[4] = this;
  aBlock[5] = v4;
  v41 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v42 = v12;
  Service::registerCommandHandler(this, &__dst, &v42);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst);
  }

  v13 = *MEMORY[0x29EDBE730];
  v14 = strlen(*MEMORY[0x29EDBE730]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    *(&__dst + 1) = v15;
    v44 = v17 | 0x8000000000000000;
    *&__dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v44) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 1174405120;
  v37[2] = ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_9;
  v37[3] = &__block_descriptor_tmp_12_5;
  v37[4] = this;
  v37[5] = v4;
  v38 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v37);
  v39 = v18;
  Service::registerCommandHandler(this, &__dst, &v39);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst);
  }

  v19 = *MEMORY[0x29EDBF128];
  v20 = strlen(*MEMORY[0x29EDBF128]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *(&__dst + 1) = v21;
    v44 = v23 | 0x8000000000000000;
    *&__dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v44) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 1174405120;
  v34[2] = ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_13;
  v34[3] = &__block_descriptor_tmp_16_4;
  v34[4] = this;
  v34[5] = v4;
  v35 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v34);
  v36 = v24;
  Service::registerCommandHandler(this, &__dst, &v36);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst);
  }

  v25 = *MEMORY[0x29EDBF118];
  v26 = strlen(*MEMORY[0x29EDBF118]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    *(&__dst + 1) = v27;
    v44 = v29 | 0x8000000000000000;
    *&__dst = v28;
    goto LABEL_53;
  }

  HIBYTE(v44) = v26;
  v28 = &__dst;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_17;
  v31[3] = &__block_descriptor_tmp_20;
  v31[4] = this;
  v31[5] = v4;
  v32 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v31);
  v33 = v30;
  Service::registerCommandHandler(this, &__dst, &v33);
  if (v30)
  {
    _Block_release(v30);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_297619C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (v40)
  {
    _Block_release(v40);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((*(v41 - 105) & 0x80000000) == 0)
    {
LABEL_5:
      v43 = a23;
      if (!a23)
      {
LABEL_10:
        if (a31)
        {
          std::__shared_weak_count::__release_weak(a31);
        }

        if (a39)
        {
          std::__shared_weak_count::__release_weak(a39);
          std::__shared_weak_count::__release_weak(v39);
          _Unwind_Resume(a1);
        }

        std::__shared_weak_count::__release_weak(v39);
        _Unwind_Resume(a1);
      }

LABEL_9:
      std::__shared_weak_count::__release_weak(v43);
      goto LABEL_10;
    }
  }

  else if ((*(v41 - 105) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v41 - 128));
  v43 = a23;
  if (!a23)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      return;
    }
  }

  v11 = *a2;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = xpc_null_create();
    v12 = *a3;
    if (*a3)
    {
LABEL_9:
      v13 = _Block_copy(v12);
      v14 = v7[10];
      if (!v14)
      {
LABEL_18:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
  v14 = v7[10];
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v7[9];
  v16 = std::__shared_weak_count::lock(v14);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = operator new(0x18uLL);
  *v18 = v7;
  v18[1] = v11;
  v19 = xpc_null_create();
  v18[2] = v13;
  v20 = v7[11];
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x18uLL);
  *v21 = v18;
  v21[1] = v15;
  v21[2] = v17;
  dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v19);
}

uint64_t __copy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13AntennaModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13AntennaModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_9(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      return;
    }
  }

  v11 = *a2;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = xpc_null_create();
    v12 = *a3;
    if (*a3)
    {
LABEL_9:
      v13 = _Block_copy(v12);
      v14 = v7[10];
      if (!v14)
      {
LABEL_18:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
  v14 = v7[10];
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v7[9];
  v16 = std::__shared_weak_count::lock(v14);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = operator new(0x18uLL);
  *v18 = v7;
  v18[1] = v11;
  v19 = xpc_null_create();
  v18[2] = v13;
  v20 = v7[11];
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x18uLL);
  *v21 = v18;
  v21[1] = v15;
  v21[2] = v17;
  dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v19);
}

void ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_13(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      return;
    }
  }

  v11 = *a2;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = xpc_null_create();
    v12 = *a3;
    if (*a3)
    {
LABEL_9:
      v13 = _Block_copy(v12);
      v14 = v7[10];
      if (!v14)
      {
LABEL_18:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
  v14 = v7[10];
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v7[9];
  v16 = std::__shared_weak_count::lock(v14);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = operator new(0x18uLL);
  *v18 = v7;
  v18[1] = v11;
  v19 = xpc_null_create();
  v18[2] = v13;
  v20 = v7[11];
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x18uLL);
  *v21 = v18;
  v21[1] = v15;
  v21[2] = v17;
  dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v19);
}

void ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_17(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      return;
    }
  }

  v11 = *a2;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = xpc_null_create();
    v12 = *a3;
    if (*a3)
    {
LABEL_9:
      v13 = _Block_copy(v12);
      v14 = v7[10];
      if (!v14)
      {
LABEL_18:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
  v14 = v7[10];
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v7[9];
  v16 = std::__shared_weak_count::lock(v14);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = operator new(0x18uLL);
  *v18 = v7;
  v18[1] = v11;
  v19 = xpc_null_create();
  v18[2] = v13;
  v20 = v7[11];
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x18uLL);
  *v21 = v18;
  v21[1] = v15;
  v21[2] = v17;
  dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v19);
}

void AntennaModule::registerEventHandlers_sync(AntennaModule *this)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_68:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_68;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEFF0];
  v8 = strlen(*MEMORY[0x29EDBEFF0]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    p_p = operator new(v11);
    *(&__p + 1) = v9;
    v32 = v11 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_14;
  }

  HIBYTE(v32) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v40 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E4CF78;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v40 = v12;
  Service::registerEventHandler(this, &__p, v39);
  if (v40 == v39)
  {
    (*(*v40 + 32))(v40);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

  if (v40)
  {
    (*(*v40 + 40))(v40);
  }

  if (SHIBYTE(v32) < 0)
  {
LABEL_60:
    operator delete(__p);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDBEFF8];
  v14 = strlen(*MEMORY[0x29EDBEFF8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    *(&__p + 1) = v15;
    v32 = v17 | 0x8000000000000000;
    *&__p = v16;
    goto LABEL_27;
  }

  HIBYTE(v32) = v14;
  v16 = &__p;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v38 = 0;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E4CFF8;
  v18[1] = this;
  v18[2] = v4;
  v18[3] = v6;
  v38 = v18;
  Service::registerEventHandler(this, &__p, v37);
  if (v38 == v37)
  {
    (*(*v38 + 32))(v38);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

  if (v38)
  {
    (*(*v38 + 40))();
  }

  if (SHIBYTE(v32) < 0)
  {
LABEL_62:
    operator delete(__p);
  }

LABEL_32:
  v19 = *MEMORY[0x29EDBF460];
  v20 = strlen(*MEMORY[0x29EDBF460]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *(&__p + 1) = v21;
    v32 = v23 | 0x8000000000000000;
    *&__p = v22;
    goto LABEL_40;
  }

  HIBYTE(v32) = v20;
  v22 = &__p;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v36 = 0;
  v24 = operator new(0x20uLL);
  *v24 = &unk_2A1E4D078;
  v24[1] = this;
  v24[2] = v4;
  v24[3] = v6;
  v36 = v24;
  Service::registerEventHandler(this, &__p, v35);
  if (v36 == v35)
  {
    (*(*v36 + 32))(v36);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_64;
  }

  if (v36)
  {
    (*(*v36 + 40))();
  }

  if (SHIBYTE(v32) < 0)
  {
LABEL_64:
    operator delete(__p);
  }

LABEL_45:
  v25 = *MEMORY[0x29EDBE618];
  v26 = strlen(*MEMORY[0x29EDBE618]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    *(&__p + 1) = v27;
    v32 = v29 | 0x8000000000000000;
    *&__p = v28;
    goto LABEL_53;
  }

  HIBYTE(v32) = v26;
  v28 = &__p;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v34 = 0;
  v30 = operator new(0x20uLL);
  *v30 = &unk_2A1E4D0F8;
  v30[1] = this;
  v30[2] = v4;
  v30[3] = v6;
  v34 = v30;
  Service::registerEventHandler(this, &__p, v33);
  if (v34 == v33)
  {
    (*(*v34 + 32))(v34);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_66:
    operator delete(__p);
    goto LABEL_58;
  }

  if (v34)
  {
    (*(*v34 + 40))();
  }

  if (SHIBYTE(v32) < 0)
  {
    goto LABEL_66;
  }

LABEL_58:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
}

void AntennaModule::sleep(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[10];
  if (!v4 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::sleep(dispatch::group_session)::$_0>(AntennaModule::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void AntennaModule::wake(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[10];
  if (!v4 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::wake(dispatch::group_session)::$_0>(AntennaModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void AntennaModule::setProperty_sync(AntennaModule *this, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C272BA0](*a2);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 != MEMORY[0x29EDCAA00])
  {
    v6 = *(this + 13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "Failed to get input!", &buf, 2u);
    }

    return;
  }

  memset(&buf, 170, sizeof(buf));
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED18]);
  v99.__r_.__value_.__r.__words[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v99.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&buf, &v99, "", v8);
  xpc_release(v99.__r_.__value_.__l.__data_);
  size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  if (size && MEMORY[0x29C272BA0](*a2) == v5)
  {
    v10 = *MEMORY[0x29EDBEFD0];
    v11 = strlen(*MEMORY[0x29EDBEFD0]);
    v12 = v11;
    v13 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v11 != -1)
      {
        v14 = buf.__r_.__value_.__l.__size_;
        if (buf.__r_.__value_.__l.__size_ >= v11)
        {
          v16 = v11;
        }

        else
        {
          v16 = buf.__r_.__value_.__l.__size_;
        }

        if (memcmp(buf.__r_.__value_.__l.__data_, v10, v16))
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else if (v11 != -1)
    {
      v14 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      if (memcmp(&buf, v10, v15))
      {
        goto LABEL_27;
      }

LABEL_23:
      if (v14 == v12)
      {
        xdict.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
        v17 = *MEMORY[0x29EDBEA98];
        v99.__r_.__value_.__r.__words[0] = a2;
        v99.__r_.__value_.__l.__size_ = v17;
        xpc::dict::object_proxy::operator xpc::dict(&v99, &xdict);
        if (MEMORY[0x29C272BA0](xdict.__r_.__value_.__r.__words[0]) == v5)
        {
          memset(&v99, 170, sizeof(v99));
          v18 = xpc_dictionary_get_value(xdict.__r_.__value_.__l.__data_, *MEMORY[0x29EDBF838]);
          object = v18;
          if (v18)
          {
            xpc_retain(v18);
          }

          else
          {
            object = xpc_null_create();
          }

          xpc::dyn_cast_or_default(&v99, &object, "", v19);
          xpc_release(object);
          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v98, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
          }

          else
          {
            v98 = v99;
          }

          AntennaModule::setPreference_sync<std::string>(this, &buf.__r_.__value_.__l.__data_, &v98);
          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }
        }

        xpc_release(xdict.__r_.__value_.__l.__data_);
        goto LABEL_73;
      }

LABEL_27:
      v20 = strlen(*MEMORY[0x29EDBE978]);
      v21 = v20;
      if ((v13 & 0x80000000) != 0)
      {
        if (v20 != -1)
        {
          v23 = buf.__r_.__value_.__l.__size_;
          v22 = buf.__r_.__value_.__r.__words[0];
LABEL_32:
          if (v23 >= v21)
          {
            v24 = v21;
          }

          else
          {
            v24 = v23;
          }

          if (!memcmp(v22, *MEMORY[0x29EDBE978], v24) && v23 == v21)
          {
            memset(&v99, 170, sizeof(v99));
            v25 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEA98]);
            xdict.__r_.__value_.__r.__words[0] = v25;
            if (v25)
            {
              xpc_retain(v25);
            }

            else
            {
              xdict.__r_.__value_.__r.__words[0] = xpc_null_create();
            }

            xpc::dyn_cast_or_default(&v99, &xdict, "", v26);
            xpc_release(xdict.__r_.__value_.__l.__data_);
            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v97, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
            }

            else
            {
              v97 = v99;
            }

            AntennaModule::setPreference_sync<std::string>(this, &buf.__r_.__value_.__l.__data_, &v97);
            if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
            {
              v38 = v97.__r_.__value_.__r.__words[0];
LABEL_61:
              operator delete(v38);
            }

LABEL_62:
            if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_73;
            }

            goto LABEL_63;
          }

          v27 = strlen(*MEMORY[0x29EDBEBA0]);
          v28 = v27;
          if ((v13 & 0x80000000) != 0)
          {
            if (v27 != -1)
            {
              v30 = buf.__r_.__value_.__l.__size_;
              v29 = buf.__r_.__value_.__r.__words[0];
LABEL_44:
              if (v30 >= v28)
              {
                v31 = v28;
              }

              else
              {
                v31 = v30;
              }

              if (!memcmp(v29, *MEMORY[0x29EDBEBA0], v31) && v30 == v28)
              {
                object = 0xAAAAAAAAAAAAAAAALL;
                v32 = *MEMORY[0x29EDBEA98];
                v99.__r_.__value_.__r.__words[0] = a2;
                v99.__r_.__value_.__l.__size_ = v32;
                xpc::dict::object_proxy::operator xpc::dict(&v99, &object);
                if (MEMORY[0x29C272BA0](object) == v5)
                {
                  memset(&v99, 170, sizeof(v99));
                  v33 = *MEMORY[0x29EDBF670];
                  xdict.__r_.__value_.__r.__words[0] = &object;
                  xdict.__r_.__value_.__l.__size_ = v33;
                  xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                  xpc::dyn_cast_or_default(&v99, &v96, "", v34);
                  xpc_release(v96);
                  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v95, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v95 = v99;
                  }

                  AntennaModule::setPreference_sync<std::string>(this, &buf.__r_.__value_.__l.__data_, &v95);
                  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v95.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v99.__r_.__value_.__l.__data_);
                  }
                }

LABEL_141:
                xpc_release(object);
                goto LABEL_73;
              }

              v35 = strlen(*MEMORY[0x29EDBED08]);
              v36 = v35;
              if ((v13 & 0x80000000) != 0)
              {
                if (v35 != -1)
                {
                  v13 = buf.__r_.__value_.__l.__size_;
                  p_buf = buf.__r_.__value_.__r.__words[0];
LABEL_78:
                  if (v13 >= v36)
                  {
                    v39 = v36;
                  }

                  else
                  {
                    v39 = v13;
                  }

                  if (!memcmp(p_buf, *MEMORY[0x29EDBED08], v39) && v13 == v36)
                  {
                    object = 0xAAAAAAAAAAAAAAAALL;
                    v40 = *MEMORY[0x29EDBEA98];
                    v99.__r_.__value_.__r.__words[0] = a2;
                    v99.__r_.__value_.__l.__size_ = v40;
                    xpc::dict::object_proxy::operator xpc::dict(&v99, &object);
                    if (MEMORY[0x29C272BA0](object) == v5)
                    {
                      memset(&v99, 170, sizeof(v99));
                      v41 = *MEMORY[0x29EDBF6E8];
                      xdict.__r_.__value_.__r.__words[0] = &object;
                      xdict.__r_.__value_.__l.__size_ = v41;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                      xpc::dyn_cast_or_default(&v99, &v96, "", v42);
                      xpc_release(v96);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v94, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v94 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf.__r_.__value_.__l.__data_, &v94);
                      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v94.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v99.__r_.__value_.__l.__data_);
                      }
                    }

                    goto LABEL_141;
                  }

                  if (!std::string::compare(&buf, *MEMORY[0x29EDBF530]))
                  {
                    object = 0xAAAAAAAAAAAAAAAALL;
                    v43 = *MEMORY[0x29EDBEA98];
                    v99.__r_.__value_.__r.__words[0] = a2;
                    v99.__r_.__value_.__l.__size_ = v43;
                    xpc::dict::object_proxy::operator xpc::dict(&v99, &object);
                    if (MEMORY[0x29C272BA0](object) == v5)
                    {
                      memset(&v99, 170, sizeof(v99));
                      v44 = *MEMORY[0x29EDBF818];
                      xdict.__r_.__value_.__r.__words[0] = &object;
                      xdict.__r_.__value_.__l.__size_ = v44;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                      xpc::dyn_cast_or_default(&v99, &v96, "", v45);
                      xpc_release(v96);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v93, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v93 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf.__r_.__value_.__l.__data_, &v93);
                      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v93.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v99.__r_.__value_.__l.__data_);
                      }
                    }

                    goto LABEL_141;
                  }

                  if (std::string::compare(&buf, *MEMORY[0x29EDBF558]))
                  {
                    if (!std::string::compare(&buf, *MEMORY[0x29EDBECA0]))
                    {
                      memset(&v99, 170, sizeof(v99));
                      v50 = *MEMORY[0x29EDBEA98];
                      xdict.__r_.__value_.__r.__words[0] = a2;
                      xdict.__r_.__value_.__l.__size_ = v50;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                      xpc::dyn_cast_or_default(&v99, &object, "", v51);
                      xpc_release(object);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v86, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v86 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf.__r_.__value_.__l.__data_, &v86);
                      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
                      {
                        v38 = v86.__r_.__value_.__r.__words[0];
                        goto LABEL_61;
                      }
                    }

                    else if (!std::string::compare(&buf, *MEMORY[0x29EDBF528]))
                    {
                      memset(&v99, 170, sizeof(v99));
                      v52 = *MEMORY[0x29EDBEA98];
                      xdict.__r_.__value_.__r.__words[0] = a2;
                      xdict.__r_.__value_.__l.__size_ = v52;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                      xpc::dyn_cast_or_default(&v99, &object, "", v53);
                      xpc_release(object);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v85, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v85 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf.__r_.__value_.__l.__data_, &v85);
                      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
                      {
                        v38 = v85.__r_.__value_.__r.__words[0];
                        goto LABEL_61;
                      }
                    }

                    else
                    {
                      if (std::string::compare(&buf, *MEMORY[0x29EDBF510]))
                      {
                        if (std::string::compare(&buf, *MEMORY[0x29EDBF5A8]))
                        {
                          if (!std::string::compare(&buf, *MEMORY[0x29EDBE4F0]))
                          {
                            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                            {
                              std::string::__init_copy_ctor_external(&v82, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                            }

                            else
                            {
                              v82 = buf;
                            }

                            AntennaModule::setPreference_sync<std::string>(this, &buf.__r_.__value_.__l.__data_, &v82);
                            if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v82.__r_.__value_.__l.__data_);
                            }

                            object = 0xAAAAAAAAAAAAAAAALL;
                            v69 = *MEMORY[0x29EDBEA98];
                            v99.__r_.__value_.__r.__words[0] = a2;
                            v99.__r_.__value_.__l.__size_ = v69;
                            xpc::dict::object_proxy::operator xpc::object(&v99, &xdict);
                            v70 = xpc_null_create();
                            v71 = xdict.__r_.__value_.__r.__words[0];
                            object = xdict.__r_.__value_.__r.__words[0];
                            if (xdict.__r_.__value_.__r.__words[0] && MEMORY[0x29C272BA0](xdict.__r_.__value_.__r.__words[0]) == v5)
                            {
                              xpc_retain(v71);
                            }

                            else
                            {
                              object = xpc_null_create();
                            }

                            if (MEMORY[0x29C272BA0]() != v5)
                            {
                              xpc::dict::operator=(&object, v70);
                            }

                            xpc_release(v70);
                            xpc_release(xdict.__r_.__value_.__l.__data_);
                            v72 = *MEMORY[0x29EDBF1D8];
                            std::string::basic_string[abi:ne200100]<0>(&v99, *MEMORY[0x29EDBF1D8]);
                            xdict.__r_.__value_.__r.__words[0] = &object;
                            xdict.__r_.__value_.__l.__size_ = v72;
                            xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                            xpc::dyn_cast_or_default(__p, &v96, "", v73);
                            AntennaModule::setPreference_sync<std::string>(this, &v99.__r_.__value_.__l.__data_, __p);
                            if (v81 < 0)
                            {
                              operator delete(__p[0]);
                            }

                            xpc_release(v96);
                            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v99.__r_.__value_.__l.__data_);
                            }

                            v74 = *MEMORY[0x29EDBE8B8];
                            std::string::basic_string[abi:ne200100]<0>(&v99, *MEMORY[0x29EDBE8B8]);
                            xdict.__r_.__value_.__r.__words[0] = &object;
                            xdict.__r_.__value_.__l.__size_ = v74;
                            xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                            v75 = xpc::dyn_cast_or_default(&v96, 0x7FFF);
                            AntennaModule::setPreference_sync<unsigned int>(this, &v99.__r_.__value_.__l.__data_, v75);
                            xpc_release(v96);
                            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v99.__r_.__value_.__l.__data_);
                            }

                            v76 = *MEMORY[0x29EDBEA90];
                            std::string::basic_string[abi:ne200100]<0>(&v99, *MEMORY[0x29EDBEA90]);
                            xdict.__r_.__value_.__r.__words[0] = &object;
                            xdict.__r_.__value_.__l.__size_ = v76;
                            xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                            v77 = xpc::dyn_cast_or_default(&v96, 0x7FFF);
                            AntennaModule::setPreference_sync<unsigned int>(this, &v99.__r_.__value_.__l.__data_, v77);
                            xpc_release(v96);
                            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v99.__r_.__value_.__l.__data_);
                            }

                            v78 = *MEMORY[0x29EDBE698];
                            std::string::basic_string[abi:ne200100]<0>(&v99, *MEMORY[0x29EDBE698]);
                            xdict.__r_.__value_.__r.__words[0] = &object;
                            xdict.__r_.__value_.__l.__size_ = v78;
                            xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                            v79 = xpc::dyn_cast_or_default(&v96, 0x7FFF);
                            AntennaModule::setPreference_sync<unsigned int>(this, &v99.__r_.__value_.__l.__data_, v79);
                            xpc_release(v96);
                            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v99.__r_.__value_.__l.__data_);
                            }

                            xpc_release(object);
                          }

                          goto LABEL_73;
                        }

                        memset(&v99, 170, sizeof(v99));
                        v56 = *MEMORY[0x29EDBEA98];
                        xdict.__r_.__value_.__r.__words[0] = a2;
                        xdict.__r_.__value_.__l.__size_ = v56;
                        xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                        xpc::dyn_cast_or_default(&v99, &object, "", v57);
                        xpc_release(object);
                        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                        {
                          std::string::__init_copy_ctor_external(&v83, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          v83 = v99;
                        }

                        AntennaModule::setPreference_sync<std::string>(this, &buf.__r_.__value_.__l.__data_, &v83);
                        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v83.__r_.__value_.__l.__data_);
                        }

                        v58 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
                        if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v59 = &v99;
                        }

                        else
                        {
                          v59 = v99.__r_.__value_.__r.__words[0];
                        }

                        v60 = strlen(*MEMORY[0x29EDBF878]);
                        if (strncasecmp(v59, *MEMORY[0x29EDBF878], v60))
                        {
                          v61 = *MEMORY[0x29EDBF820];
                          std::string::basic_string[abi:ne200100]<0>(&xdict, *MEMORY[0x29EDBF820]);
                          object = a2;
                          v90 = v61;
                          xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                          v62 = xpc::dyn_cast_or_default(&v96, 0);
                          AntennaModule::setPreference_sync<int>(this, &xdict.__r_.__value_.__l.__data_, v62);
                          xpc_release(v96);
                          if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(xdict.__r_.__value_.__l.__data_);
                          }

                          v63 = *MEMORY[0x29EDBF7D8];
                          std::string::basic_string[abi:ne200100]<0>(&xdict, *MEMORY[0x29EDBF7D8]);
                          object = a2;
                          v90 = v63;
                          xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                          v64 = xpc::dyn_cast_or_default(&v96, 0);
                          AntennaModule::setPreference_sync<int>(this, &xdict.__r_.__value_.__l.__data_, v64);
                          xpc_release(v96);
                          if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(xdict.__r_.__value_.__l.__data_);
                          }

                          v65 = *MEMORY[0x29EDBF610];
                          std::string::basic_string[abi:ne200100]<0>(&xdict, *MEMORY[0x29EDBF610]);
                          object = a2;
                          v90 = v65;
                          xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                          v66 = xpc::dyn_cast_or_default(&v96, 0);
                          AntennaModule::setPreference_sync<int>(this, &xdict.__r_.__value_.__l.__data_, v66);
                          xpc_release(v96);
                          if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(xdict.__r_.__value_.__l.__data_);
                          }

                          v67 = *MEMORY[0x29EDBF608];
                          std::string::basic_string[abi:ne200100]<0>(&xdict, *MEMORY[0x29EDBF608]);
                          object = a2;
                          v90 = v67;
                          xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                          v68 = xpc::dyn_cast_or_default(&v96, 0);
                          AntennaModule::setPreference_sync<int>(this, &xdict.__r_.__value_.__l.__data_, v68);
                          xpc_release(v96);
                          if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(xdict.__r_.__value_.__l.__data_);
                          }

                          v58 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
                        }

                        if ((v58 & 0x80) == 0)
                        {
                          goto LABEL_73;
                        }

LABEL_63:
                        operator delete(v99.__r_.__value_.__l.__data_);
                        goto LABEL_73;
                      }

                      memset(&v99, 170, sizeof(v99));
                      v54 = *MEMORY[0x29EDBEA98];
                      xdict.__r_.__value_.__r.__words[0] = a2;
                      xdict.__r_.__value_.__l.__size_ = v54;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                      xpc::dyn_cast_or_default(&v99, &object, "", v55);
                      xpc_release(object);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v84, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v84 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf.__r_.__value_.__l.__data_, &v84);
                      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
                      {
                        v38 = v84.__r_.__value_.__r.__words[0];
                        goto LABEL_61;
                      }
                    }

                    goto LABEL_62;
                  }

                  memset(&v99, 170, sizeof(v99));
                  v46 = *MEMORY[0x29EDBE720];
                  xdict.__r_.__value_.__r.__words[0] = a2;
                  xdict.__r_.__value_.__l.__size_ = v46;
                  xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                  xpc::dyn_cast_or_default(&v99, &object, "", v47);
                  xpc_release(object);
                  memset(&xdict, 170, sizeof(xdict));
                  v48 = *MEMORY[0x29EDBE960];
                  object = a2;
                  v90 = v48;
                  xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                  xpc::dyn_cast_or_default(&xdict, &v96, "", v49);
                  xpc_release(v96);
                  std::string::basic_string[abi:ne200100]<0>(&object, v46);
                  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v88, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v88 = v99;
                  }

                  AntennaModule::setPreference_sync<std::string>(this, &object, &v88);
                  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v88.__r_.__value_.__l.__data_);
                  }

                  if (v91 < 0)
                  {
                    operator delete(object);
                  }

                  std::string::basic_string[abi:ne200100]<0>(&object, v48);
                  if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v87, xdict.__r_.__value_.__l.__data_, xdict.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v87 = xdict;
                  }

                  AntennaModule::setPreference_sync<std::string>(this, &object, &v87);
                  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v87.__r_.__value_.__l.__data_);
                    if ((v91 & 0x80000000) == 0)
                    {
LABEL_126:
                      if ((SHIBYTE(xdict.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_62;
                      }

                      goto LABEL_130;
                    }
                  }

                  else if ((v91 & 0x80000000) == 0)
                  {
                    goto LABEL_126;
                  }

                  operator delete(object);
                  if ((SHIBYTE(xdict.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_62;
                  }

LABEL_130:
                  v38 = xdict.__r_.__value_.__r.__words[0];
                  goto LABEL_61;
                }
              }

              else if (v35 != -1)
              {
                p_buf = &buf;
                goto LABEL_78;
              }

              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          else if (v27 != -1)
          {
            v29 = &buf;
            v30 = v13;
            goto LABEL_44;
          }

          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else if (v20 != -1)
      {
        v22 = &buf;
        v23 = v13;
        goto LABEL_32;
      }

      std::string::__throw_out_of_range[abi:ne200100]();
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

LABEL_73:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_29761BD48(_Unwind_Exception *a1)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void AntennaModule::setPreference_sync<std::string>(uint64_t a1, const void **a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18CAF18)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v23.__r_.__value_.__r.__words[0] = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E43EE0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v7;
    *(&xmmword_2A18CAF18 + 1) = v6;
    if (!v8)
    {
      *&v22 = v7;
      *(&v22 + 1) = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v6 = *(&xmmword_2A18CAF18 + 1);
  v7 = xmmword_2A18CAF18;
  v22 = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  v11 = v10 + 16;
  if (v10 + 16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 < 0x17)
  {
    v14 = &buf[16];
    *&buf[16] = 0;
    buf[23] = v10 + 16;
    *buf = *"AntennaSetting::";
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = operator new(v12);
    *&buf[8] = v10 + 16;
    *&buf[16] = v12 | 0x8000000000000000;
    *buf = v13;
    *v13 = *"AntennaSetting::";
    v14 = v13 + 1;
  }

  if (v9 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  memmove(v14, v15, v10);
LABEL_23:
  v14[v10] = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = __p;
  }

  if (buf[23] >= 0)
  {
    v16 = buf;
  }

  else
  {
    v16 = *buf;
  }

  v17 = ctu::cf::plist_adapter::set<std::string>(v7, &v23, v16, 1);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_34:
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((buf[23] & 0x80000000) == 0)
  {
LABEL_35:
    v18 = *(&v22 + 1);
    if (!*(&v22 + 1))
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(*buf);
  v18 = *(&v22 + 1);
  if (!*(&v22 + 1))
  {
    goto LABEL_41;
  }

LABEL_40:
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    if (v17)
    {
      return;
    }

    goto LABEL_42;
  }

LABEL_41:
  if (v17)
  {
    return;
  }

LABEL_42:
  v19 = *(a1 + 104);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *&v23.__r_.__value_.__l.__data_ = *"AntennaSetting::";
    v23.__r_.__value_.__r.__words[2] = 0x1000000000000000;
    if (*(a2 + 23) >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = &v23;
    *&buf[12] = 2080;
    *&buf[14] = v20;
    _os_log_error_impl(&dword_297476000, v19, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29761C674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
      _Unwind_Resume(a1);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void sub_29761C748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AntennaModule::setPreference_sync<int>(uint64_t a1, const void **a2, int a3)
{
  v30 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18CAF18)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p[0] = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E43EE0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v7;
    *(&xmmword_2A18CAF18 + 1) = v6;
    if (!v8)
    {
      *buf = v7;
      *&buf[8] = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v6 = *(&xmmword_2A18CAF18 + 1);
  v7 = xmmword_2A18CAF18;
  *buf = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  v11 = v10 + 16;
  if (v10 + 16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 < 0x17)
  {
    v14 = &v26;
    v26 = 0;
    HIBYTE(v26) = v10 + 16;
    *__p = *"AntennaSetting::";
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = operator new(v12);
    __p[1] = (v10 + 16);
    v26 = v12 | 0x8000000000000000;
    __p[0] = v13;
    *v13 = *"AntennaSetting::";
    v14 = v13 + 2;
  }

  if (v9 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  memmove(v14, v15, v10);
LABEL_23:
  *(v14 + v10) = 0;
  if (v26 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(v27, v16);
  v17 = v27[0];
  v18 = *MEMORY[0x29EDB8ED8];
  valuePtr = a3;
  v19 = CFNumberCreate(v18, kCFNumberIntType, &valuePtr);
  v27[1] = v19;
  if (v19)
  {
    v20 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(v17, v19, v7[1], v7[2], *MEMORY[0x29EDB8FA8]);
    v21 = CFPreferencesSynchronize(v7[1], v7[2], v20) != 0;
    CFRelease(v19);
    MEMORY[0x29C270E70](v27);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v21 = 0;
    MEMORY[0x29C270E70](v27);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_28:
      v22 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  operator delete(__p[0]);
  v22 = *&buf[8];
  if (!*&buf[8])
  {
    goto LABEL_33;
  }

LABEL_32:
  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    if (v21)
    {
      return;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (v21)
  {
    return;
  }

LABEL_34:
  v23 = *(a1 + 104);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *__p = *"AntennaSetting::";
    v26 = 0x1000000000000000;
    if (*(a2 + 23) >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = __p;
    *&buf[12] = 2080;
    *&buf[14] = v24;
    _os_log_error_impl(&dword_297476000, v23, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29761CB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_29761CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  JUMPOUT(0x29761CB78);
}

void AntennaModule::setPreference_sync<unsigned int>(uint64_t a1, const void **a2, unsigned int a3)
{
  v25 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18CAF18)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p[0] = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E43EE0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v7;
    *(&xmmword_2A18CAF18 + 1) = v6;
    if (!v8)
    {
      *buf = v7;
      *&buf[8] = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v6 = *(&xmmword_2A18CAF18 + 1);
  v7 = xmmword_2A18CAF18;
  *buf = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  v11 = v10 + 16;
  if (v10 + 16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 < 0x17)
  {
    v14 = &v22;
    v22 = 0;
    HIBYTE(v22) = v10 + 16;
    *__p = *"AntennaSetting::";
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = operator new(v12);
    __p[1] = (v10 + 16);
    v22 = v12 | 0x8000000000000000;
    __p[0] = v13;
    *v13 = *"AntennaSetting::";
    v14 = v13 + 2;
  }

  if (v9 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  memmove(v14, v15, v10);
LABEL_23:
  *(v14 + v10) = 0;
  if (v22 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v23, v16);
  v17 = ctu::cf::plist_adapter::set<unsigned int>(v7, a3, v23, 1);
  MEMORY[0x29C270E70](&v23);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  v18 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    if (v17)
    {
      return;
    }
  }

  else if (v17)
  {
    return;
  }

  v19 = *(a1 + 104);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *__p = *"AntennaSetting::";
    v22 = 0x1000000000000000;
    if (*(a2 + 23) >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = __p;
    *&buf[12] = 2080;
    *&buf[14] = v20;
    _os_log_error_impl(&dword_297476000, v19, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29761CEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

void AntennaModule::initializeProperty(AntennaModule *this)
{
  for (i = *(this + 14); i; i = *i)
  {
    memset(&v13, 170, sizeof(v13));
    if (*(i + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, i[1], i[2]);
      v11 = this;
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_8:
        std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
        goto LABEL_9;
      }
    }

    else
    {
      v3 = *(i + 1);
      v13.__r_.__value_.__r.__words[2] = i[3];
      *&v13.__r_.__value_.__l.__data_ = v3;
      v11 = this;
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_8;
      }
    }

    __p = v13;
LABEL_9:
    v4 = *(this + 10);
    if (!v4 || (v5 = *(this + 9), (v6 = std::__shared_weak_count::lock(v4)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = v6;
    v8 = operator new(0x20uLL);
    *v8 = v11;
    *(v8 + 8) = __p;
    memset(&__p, 0, sizeof(__p));
    v9 = *(this + 11);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = operator new(0x18uLL);
    *v10 = v8;
    v10[1] = v5;
    v10[2] = v7;
    dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::initializeProperty(void)::$_0>(AntennaModule::initializeProperty(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::initializeProperty(void)::$_0,dispatch_queue_s *::default_delete<AntennaModule::initializeProperty(void)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_13:
        if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_17;
        }

        continue;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_17:
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29761D14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AntennaModule::initializeProperty_sync(uint64_t a1, uint64_t a2)
{
  v345[0] = xpc_null_create();
  v4 = *MEMORY[0x29EDBEFD0];
  v5 = strlen(*MEMORY[0x29EDBEFD0]);
  v6 = v5;
  v7 = *(a2 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    if (v5 == -1)
    {
      goto LABEL_685;
    }

    v9 = *a2;
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
    v9 = a2;
    if (v6 == -1)
    {
LABEL_685:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = !memcmp(v9, v4, v10) && v8 == v6;
  v12 = MEMORY[0x29EDCAA00];
  if (v11)
  {
    v342 = 0;
    v343 = 0;
    v344 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    if (!xmmword_2A18CAF18)
    {
      v19 = operator new(0x18uLL);
      MEMORY[0x29C270EE0](v19, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
      *&v341[0] = v19;
      v18 = operator new(0x20uLL);
      *v18 = &unk_2A1E43EE0;
      v18[1] = 0;
      v18[2] = 0;
      v18[3] = v19;
      v29 = *(&xmmword_2A18CAF18 + 1);
      *&xmmword_2A18CAF18 = v19;
      *(&xmmword_2A18CAF18 + 1) = v18;
      if (!v29)
      {
        *&__p = v19;
        *(&__p + 1) = v18;
        goto LABEL_61;
      }

      if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }
    }

    v18 = *(&xmmword_2A18CAF18 + 1);
    v19 = xmmword_2A18CAF18;
    __p = xmmword_2A18CAF18;
    if (!*(&xmmword_2A18CAF18 + 1))
    {
LABEL_62:
      pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      v39 = *(a2 + 23);
      if (v39 >= 0)
      {
        v40 = *(a2 + 23);
      }

      else
      {
        v40 = *(a2 + 8);
      }

      v41 = v40 + 16;
      if (v40 + 16 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v41 < 0x17)
      {
        v44 = &v341[1];
        *&v341[1] = 0;
        BYTE7(v341[1]) = v40 + 16;
        v341[0] = *"AntennaSetting::";
        if (!v40)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if ((v41 | 7) == 0x17)
        {
          v42 = 25;
        }

        else
        {
          v42 = (v41 | 7) + 1;
        }

        v43 = operator new(v42);
        *(&v341[0] + 1) = v40 + 16;
        *&v341[1] = v42 | 0x8000000000000000;
        *&v341[0] = v43;
        *v43 = *"AntennaSetting::";
        v44 = v43 + 1;
      }

      if (v39 >= 0)
      {
        v45 = a2;
      }

      else
      {
        v45 = *a2;
      }

      memmove(v44, v45, v40);
LABEL_76:
      *(v44 + v40) = 0;
      if ((SBYTE7(v341[1]) & 0x80u) == 0)
      {
        v46 = v341;
      }

      else
      {
        v46 = *&v341[0];
      }

      ctu::cf::MakeCFString::MakeCFString(&value, v46);
      v47 = (**v19)(v19, value);
      if (v47)
      {
        v48 = ctu::cf::assign();
        CFRelease(v47);
        MEMORY[0x29C270E70](&value);
        if ((SBYTE7(v341[1]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v48 = 0;
        MEMORY[0x29C270E70](&value);
        if ((SBYTE7(v341[1]) & 0x80000000) == 0)
        {
LABEL_81:
          v49 = *(&__p + 1);
          if (!*(&__p + 1))
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        }
      }

      operator delete(*&v341[0]);
      v49 = *(&__p + 1);
      if (!*(&__p + 1))
      {
        goto LABEL_86;
      }

LABEL_85:
      if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v49->__on_zero_shared)(v49);
        std::__shared_weak_count::__release_weak(v49);
        if (!v48)
        {
          goto LABEL_569;
        }

LABEL_87:
        v50 = xpc_dictionary_create(0, 0, 0);
        if (v50 || (v50 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v50) == v12)
          {
            xpc_retain(v50);
            v51 = v50;
          }

          else
          {
            v51 = xpc_null_create();
          }
        }

        else
        {
          v51 = xpc_null_create();
          v50 = 0;
        }

        xpc_release(v50);
        v74 = xpc_null_create();
        v75 = v345[0];
        v345[0] = v51;
        xpc_release(v75);
        xpc_release(v74);
        v76 = xpc_string_create(v4);
        if (!v76)
        {
          v76 = xpc_null_create();
        }

        xpc_dictionary_set_value(v345[0], *MEMORY[0x29EDBED18], v76);
        v77 = xpc_null_create();
        xpc_release(v76);
        xpc_release(v77);
        v78 = xpc_dictionary_create(0, 0, 0);
        if (v78 || (v78 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v78) == v12)
          {
            xpc_retain(v78);
            v79 = v78;
          }

          else
          {
            v79 = xpc_null_create();
          }
        }

        else
        {
          v79 = xpc_null_create();
          v78 = 0;
        }

        xpc_release(v78);
        if (v344 >= 0)
        {
          v80 = &v342;
        }

        else
        {
          v80 = v342;
        }

        v81 = xpc_string_create(v80);
        if (!v81)
        {
          v81 = xpc_null_create();
        }

        xpc_dictionary_set_value(v79, *MEMORY[0x29EDBF838], v81);
        v82 = xpc_null_create();
        xpc_release(v81);
        xpc_release(v82);
        if (v79)
        {
LABEL_476:
          xpc_retain(v79);
          v226 = v79;
LABEL_478:
          xpc_dictionary_set_value(v345[0], *MEMORY[0x29EDBEA98], v226);
          v227 = xpc_null_create();
          xpc_release(v226);
          xpc_release(v227);
          xpc_release(v79);
          goto LABEL_569;
        }

LABEL_477:
        v226 = xpc_null_create();
        goto LABEL_478;
      }

LABEL_86:
      if (!v48)
      {
        goto LABEL_569;
      }

      goto LABEL_87;
    }

LABEL_61:
    atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
    goto LABEL_62;
  }

  v13 = *MEMORY[0x29EDBE978];
  v14 = strlen(*MEMORY[0x29EDBE978]);
  v15 = v14;
  if ((v7 & 0x80000000) != 0)
  {
    if (v14 == -1)
    {
      goto LABEL_686;
    }

    v17 = *a2;
    v16 = *(a2 + 8);
  }

  else
  {
    v16 = v7;
    v17 = a2;
    if (v15 == -1)
    {
LABEL_686:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v16 >= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = v16;
  }

  if (!memcmp(v17, v13, v20) && v16 == v15)
  {
    v342 = 0;
    v343 = 0;
    v344 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    if (!xmmword_2A18CAF18)
    {
      v28 = operator new(0x18uLL);
      MEMORY[0x29C270EE0](v28, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
      *&v341[0] = v28;
      v27 = operator new(0x20uLL);
      *v27 = &unk_2A1E43EE0;
      v27[1] = 0;
      v27[2] = 0;
      v27[3] = v28;
      v38 = *(&xmmword_2A18CAF18 + 1);
      *&xmmword_2A18CAF18 = v28;
      *(&xmmword_2A18CAF18 + 1) = v27;
      if (!v38)
      {
        *&__p = v28;
        *(&__p + 1) = v27;
        goto LABEL_114;
      }

      if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v38->__on_zero_shared)(v38);
        std::__shared_weak_count::__release_weak(v38);
      }
    }

    v27 = *(&xmmword_2A18CAF18 + 1);
    v28 = xmmword_2A18CAF18;
    __p = xmmword_2A18CAF18;
    if (!*(&xmmword_2A18CAF18 + 1))
    {
LABEL_115:
      pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      v61 = *(a2 + 23);
      if (v61 >= 0)
      {
        v62 = *(a2 + 23);
      }

      else
      {
        v62 = *(a2 + 8);
      }

      v63 = v62 + 16;
      if (v62 + 16 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v63 < 0x17)
      {
        v66 = &v341[1];
        *&v341[1] = 0;
        BYTE7(v341[1]) = v62 + 16;
        v341[0] = *"AntennaSetting::";
        if (!v62)
        {
          goto LABEL_129;
        }
      }

      else
      {
        if ((v63 | 7) == 0x17)
        {
          v64 = 25;
        }

        else
        {
          v64 = (v63 | 7) + 1;
        }

        v65 = operator new(v64);
        *(&v341[0] + 1) = v62 + 16;
        *&v341[1] = v64 | 0x8000000000000000;
        *&v341[0] = v65;
        *v65 = *"AntennaSetting::";
        v66 = v65 + 1;
      }

      if (v61 >= 0)
      {
        v67 = a2;
      }

      else
      {
        v67 = *a2;
      }

      memmove(v66, v67, v62);
LABEL_129:
      *(v66 + v62) = 0;
      if ((SBYTE7(v341[1]) & 0x80u) == 0)
      {
        v68 = v341;
      }

      else
      {
        v68 = *&v341[0];
      }

      ctu::cf::MakeCFString::MakeCFString(&value, v68);
      v69 = (**v28)(v28, value);
      if (v69)
      {
        v70 = ctu::cf::assign();
        CFRelease(v69);
        MEMORY[0x29C270E70](&value);
        if ((SBYTE7(v341[1]) & 0x80000000) == 0)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v70 = 0;
        MEMORY[0x29C270E70](&value);
        if ((SBYTE7(v341[1]) & 0x80000000) == 0)
        {
LABEL_134:
          v71 = *(&__p + 1);
          if (!*(&__p + 1))
          {
            goto LABEL_139;
          }

          goto LABEL_138;
        }
      }

      operator delete(*&v341[0]);
      v71 = *(&__p + 1);
      if (!*(&__p + 1))
      {
        goto LABEL_139;
      }

LABEL_138:
      if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v71->__on_zero_shared)(v71);
        std::__shared_weak_count::__release_weak(v71);
        if (!v70)
        {
          goto LABEL_569;
        }

LABEL_140:
        v72 = xpc_dictionary_create(0, 0, 0);
        if (v72 || (v72 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v72) == v12)
          {
            xpc_retain(v72);
            v73 = v72;
          }

          else
          {
            v73 = xpc_null_create();
          }
        }

        else
        {
          v73 = xpc_null_create();
          v72 = 0;
        }

        xpc_release(v72);
        v105 = xpc_null_create();
        v106 = v345[0];
        v345[0] = v73;
        xpc_release(v106);
        xpc_release(v105);
        v107 = xpc_string_create(v13);
        if (!v107)
        {
          v107 = xpc_null_create();
        }

        xpc_dictionary_set_value(v345[0], *MEMORY[0x29EDBED18], v107);
        v108 = xpc_null_create();
        xpc_release(v107);
        xpc_release(v108);
        if (v344 >= 0)
        {
          v109 = &v342;
        }

        else
        {
          v109 = v342;
        }

        v110 = xpc_string_create(v109);
        if (!v110)
        {
          v110 = xpc_null_create();
        }

        xpc_dictionary_set_value(v345[0], *MEMORY[0x29EDBEA98], v110);
        v111 = xpc_null_create();
        xpc_release(v110);
        xpc_release(v111);
        goto LABEL_569;
      }

LABEL_139:
      if (!v70)
      {
        goto LABEL_569;
      }

      goto LABEL_140;
    }

LABEL_114:
    atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
    goto LABEL_115;
  }

  v22 = *MEMORY[0x29EDBEBA0];
  v23 = strlen(*MEMORY[0x29EDBEBA0]);
  v24 = v23;
  if ((v7 & 0x80000000) == 0)
  {
    v25 = v7;
    if (v23 != -1)
    {
      if (v7 >= v23)
      {
        v26 = v23;
      }

      else
      {
        v26 = v7;
      }

      if (memcmp(a2, v22, v26))
      {
        goto LABEL_50;
      }

LABEL_46:
      if (v25 != v24)
      {
        goto LABEL_50;
      }

      v342 = 0;
      v343 = 0;
      v344 = 0;
      pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      if (!xmmword_2A18CAF18)
      {
        v32 = operator new(0x18uLL);
        MEMORY[0x29C270EE0](v32, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
        *&v341[0] = v32;
        v31 = operator new(0x20uLL);
        *v31 = &unk_2A1E43EE0;
        v31[1] = 0;
        v31[2] = 0;
        v31[3] = v32;
        v60 = *(&xmmword_2A18CAF18 + 1);
        *&xmmword_2A18CAF18 = v32;
        *(&xmmword_2A18CAF18 + 1) = v31;
        if (!v60)
        {
          *&__p = v32;
          *(&__p + 1) = v31;
          goto LABEL_179;
        }

        if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v60->__on_zero_shared)(v60);
          std::__shared_weak_count::__release_weak(v60);
        }
      }

      v31 = *(&xmmword_2A18CAF18 + 1);
      v32 = xmmword_2A18CAF18;
      __p = xmmword_2A18CAF18;
      if (!*(&xmmword_2A18CAF18 + 1))
      {
LABEL_180:
        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v92 = *(a2 + 23);
        if (v92 >= 0)
        {
          v93 = *(a2 + 23);
        }

        else
        {
          v93 = *(a2 + 8);
        }

        v94 = v93 + 16;
        if (v93 + 16 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v94 < 0x17)
        {
          v97 = &v341[1];
          *&v341[1] = 0;
          BYTE7(v341[1]) = v93 + 16;
          v341[0] = *"AntennaSetting::";
          if (!v93)
          {
            goto LABEL_194;
          }
        }

        else
        {
          if ((v94 | 7) == 0x17)
          {
            v95 = 25;
          }

          else
          {
            v95 = (v94 | 7) + 1;
          }

          v96 = operator new(v95);
          *(&v341[0] + 1) = v93 + 16;
          *&v341[1] = v95 | 0x8000000000000000;
          *&v341[0] = v96;
          *v96 = *"AntennaSetting::";
          v97 = v96 + 1;
        }

        if (v92 >= 0)
        {
          v98 = a2;
        }

        else
        {
          v98 = *a2;
        }

        memmove(v97, v98, v93);
LABEL_194:
        *(v97 + v93) = 0;
        if ((SBYTE7(v341[1]) & 0x80u) == 0)
        {
          v99 = v341;
        }

        else
        {
          v99 = *&v341[0];
        }

        ctu::cf::MakeCFString::MakeCFString(&value, v99);
        v100 = (**v32)(v32, value);
        if (v100)
        {
          v101 = ctu::cf::assign();
          CFRelease(v100);
          MEMORY[0x29C270E70](&value);
          if ((SBYTE7(v341[1]) & 0x80000000) == 0)
          {
            goto LABEL_199;
          }
        }

        else
        {
          v101 = 0;
          MEMORY[0x29C270E70](&value);
          if ((SBYTE7(v341[1]) & 0x80000000) == 0)
          {
LABEL_199:
            v102 = *(&__p + 1);
            if (!*(&__p + 1))
            {
              goto LABEL_205;
            }

            goto LABEL_203;
          }
        }

        operator delete(*&v341[0]);
        v102 = *(&__p + 1);
        if (!*(&__p + 1))
        {
          goto LABEL_205;
        }

LABEL_203:
        if (!atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v102->__on_zero_shared)(v102);
          std::__shared_weak_count::__release_weak(v102);
        }

LABEL_205:
        if (!v101)
        {
          goto LABEL_569;
        }

        v103 = xpc_dictionary_create(0, 0, 0);
        if (v103 || (v103 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v103) == v12)
          {
            xpc_retain(v103);
            v104 = v103;
          }

          else
          {
            v104 = xpc_null_create();
          }
        }

        else
        {
          v104 = xpc_null_create();
          v103 = 0;
        }

        xpc_release(v103);
        v133 = xpc_null_create();
        v134 = v345[0];
        v345[0] = v104;
        xpc_release(v134);
        xpc_release(v133);
        v135 = xpc_string_create(v22);
        if (!v135)
        {
          v135 = xpc_null_create();
        }

        xpc_dictionary_set_value(v345[0], *MEMORY[0x29EDBED18], v135);
        v136 = xpc_null_create();
        xpc_release(v135);
        xpc_release(v136);
        v137 = xpc_dictionary_create(0, 0, 0);
        if (v137 || (v137 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v137) == v12)
          {
            xpc_retain(v137);
            v79 = v137;
          }

          else
          {
            v79 = xpc_null_create();
          }
        }

        else
        {
          v79 = xpc_null_create();
          v137 = 0;
        }

        xpc_release(v137);
        if (v344 >= 0)
        {
          v138 = &v342;
        }

        else
        {
          v138 = v342;
        }

        v139 = xpc_string_create(v138);
        if (!v139)
        {
          v139 = xpc_null_create();
        }

        xpc_dictionary_set_value(v79, *MEMORY[0x29EDBF670], v139);
        v140 = xpc_null_create();
        xpc_release(v139);
        xpc_release(v140);
        if (v79)
        {
          goto LABEL_476;
        }

        goto LABEL_477;
      }

LABEL_179:
      atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
      goto LABEL_180;
    }

LABEL_688:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v23 == -1)
  {
    goto LABEL_688;
  }

  v25 = *(a2 + 8);
  if (v25 >= v23)
  {
    v30 = v23;
  }

  else
  {
    v30 = *(a2 + 8);
  }

  if (!memcmp(*a2, v22, v30))
  {
    goto LABEL_46;
  }

LABEL_50:
  v33 = *MEMORY[0x29EDBED08];
  v34 = strlen(*MEMORY[0x29EDBED08]);
  v35 = v34;
  if ((v7 & 0x80000000) == 0)
  {
    v36 = v7;
    if (v34 != -1)
    {
      if (v7 >= v34)
      {
        v37 = v34;
      }

      else
      {
        v37 = v7;
      }

      if (memcmp(a2, v33, v37))
      {
        goto LABEL_103;
      }

LABEL_99:
      if (v36 != v35)
      {
        goto LABEL_103;
      }

      v342 = 0;
      v343 = 0;
      v344 = 0;
      pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      if (!xmmword_2A18CAF18)
      {
        v54 = operator new(0x18uLL);
        MEMORY[0x29C270EE0](v54, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
        *&v341[0] = v54;
        v53 = operator new(0x20uLL);
        *v53 = &unk_2A1E43EE0;
        v53[1] = 0;
        v53[2] = 0;
        v53[3] = v54;
        v91 = *(&xmmword_2A18CAF18 + 1);
        *&xmmword_2A18CAF18 = v54;
        *(&xmmword_2A18CAF18 + 1) = v53;
        if (!v91)
        {
          *&__p = v54;
          *(&__p + 1) = v53;
          goto LABEL_238;
        }

        if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v91->__on_zero_shared)(v91);
          std::__shared_weak_count::__release_weak(v91);
        }
      }

      v53 = *(&xmmword_2A18CAF18 + 1);
      v54 = xmmword_2A18CAF18;
      __p = xmmword_2A18CAF18;
      if (!*(&xmmword_2A18CAF18 + 1))
      {
LABEL_239:
        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v120 = *(a2 + 23);
        if (v120 >= 0)
        {
          v121 = *(a2 + 23);
        }

        else
        {
          v121 = *(a2 + 8);
        }

        v122 = v121 + 16;
        if (v121 + 16 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v122 < 0x17)
        {
          v125 = &v341[1];
          *&v341[1] = 0;
          BYTE7(v341[1]) = v121 + 16;
          v341[0] = *"AntennaSetting::";
          if (!v121)
          {
            goto LABEL_253;
          }
        }

        else
        {
          if ((v122 | 7) == 0x17)
          {
            v123 = 25;
          }

          else
          {
            v123 = (v122 | 7) + 1;
          }

          v124 = operator new(v123);
          *(&v341[0] + 1) = v121 + 16;
          *&v341[1] = v123 | 0x8000000000000000;
          *&v341[0] = v124;
          *v124 = *"AntennaSetting::";
          v125 = v124 + 1;
        }

        if (v120 >= 0)
        {
          v126 = a2;
        }

        else
        {
          v126 = *a2;
        }

        memmove(v125, v126, v121);
LABEL_253:
        *(v125 + v121) = 0;
        if ((SBYTE7(v341[1]) & 0x80u) == 0)
        {
          v127 = v341;
        }

        else
        {
          v127 = *&v341[0];
        }

        ctu::cf::MakeCFString::MakeCFString(&value, v127);
        v128 = (**v54)(v54, value);
        if (v128)
        {
          v129 = ctu::cf::assign();
          CFRelease(v128);
          MEMORY[0x29C270E70](&value);
          if ((SBYTE7(v341[1]) & 0x80000000) == 0)
          {
            goto LABEL_258;
          }
        }

        else
        {
          v129 = 0;
          MEMORY[0x29C270E70](&value);
          if ((SBYTE7(v341[1]) & 0x80000000) == 0)
          {
LABEL_258:
            v130 = *(&__p + 1);
            if (!*(&__p + 1))
            {
              goto LABEL_264;
            }

            goto LABEL_262;
          }
        }

        operator delete(*&v341[0]);
        v130 = *(&__p + 1);
        if (!*(&__p + 1))
        {
          goto LABEL_264;
        }

LABEL_262:
        if (!atomic_fetch_add(&v130->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v130->__on_zero_shared)(v130);
          std::__shared_weak_count::__release_weak(v130);
        }

LABEL_264:
        if (!v129)
        {
          goto LABEL_569;
        }

        v131 = xpc_dictionary_create(0, 0, 0);
        if (v131 || (v131 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v131) == v12)
          {
            xpc_retain(v131);
            v132 = v131;
          }

          else
          {
            v132 = xpc_null_create();
          }
        }

        else
        {
          v132 = xpc_null_create();
          v131 = 0;
        }

        xpc_release(v131);
        v166 = xpc_null_create();
        v167 = v345[0];
        v345[0] = v132;
        xpc_release(v167);
        xpc_release(v166);
        v168 = xpc_string_create(v33);
        if (!v168)
        {
          v168 = xpc_null_create();
        }

        xpc_dictionary_set_value(v345[0], *MEMORY[0x29EDBED18], v168);
        v169 = xpc_null_create();
        xpc_release(v168);
        xpc_release(v169);
        v170 = xpc_dictionary_create(0, 0, 0);
        if (v170 || (v170 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v170) == v12)
          {
            xpc_retain(v170);
            v79 = v170;
          }

          else
          {
            v79 = xpc_null_create();
          }
        }

        else
        {
          v79 = xpc_null_create();
          v170 = 0;
        }

        xpc_release(v170);
        if (v344 >= 0)
        {
          v171 = &v342;
        }

        else
        {
          v171 = v342;
        }

        v172 = xpc_string_create(v171);
        if (!v172)
        {
          v172 = xpc_null_create();
        }

        xpc_dictionary_set_value(v79, *MEMORY[0x29EDBF6E8], v172);
        v173 = xpc_null_create();
        xpc_release(v172);
        xpc_release(v173);
        if (v79)
        {
          goto LABEL_476;
        }

        goto LABEL_477;
      }

LABEL_238:
      atomic_fetch_add_explicit(v53 + 1, 1uLL, memory_order_relaxed);
      goto LABEL_239;
    }

LABEL_690:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v34 == -1)
  {
    goto LABEL_690;
  }

  v36 = *(a2 + 8);
  if (v36 >= v34)
  {
    v52 = v34;
  }

  else
  {
    v52 = *(a2 + 8);
  }

  if (!memcmp(*a2, v33, v52))
  {
    goto LABEL_99;
  }

LABEL_103:
  v55 = *MEMORY[0x29EDBF530];
  v56 = strlen(*MEMORY[0x29EDBF530]);
  v57 = v56;
  if ((v7 & 0x80000000) == 0)
  {
    v58 = v7;
    if (v56 != -1)
    {
      if (v7 >= v56)
      {
        v59 = v56;
      }

      else
      {
        v59 = v7;
      }

      if (memcmp(a2, v55, v59))
      {
        goto LABEL_172;
      }

LABEL_168:
      if (v58 != v57)
      {
        goto LABEL_172;
      }

      v342 = 0;
      v343 = 0;
      v344 = 0;
      pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      if (!xmmword_2A18CAF18)
      {
        v85 = operator new(0x18uLL);
        MEMORY[0x29C270EE0](v85, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
        *&v341[0] = v85;
        v84 = operator new(0x20uLL);
        *v84 = &unk_2A1E43EE0;
        v84[1] = 0;
        v84[2] = 0;
        v84[3] = v85;
        v119 = *(&xmmword_2A18CAF18 + 1);
        *&xmmword_2A18CAF18 = v85;
        *(&xmmword_2A18CAF18 + 1) = v84;
        if (!v119)
        {
          *&__p = v85;
          *(&__p + 1) = v84;
          goto LABEL_311;
        }

        if (!atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v119->__on_zero_shared)(v119);
          std::__shared_weak_count::__release_weak(v119);
        }
      }

      v84 = *(&xmmword_2A18CAF18 + 1);
      v85 = xmmword_2A18CAF18;
      __p = xmmword_2A18CAF18;
      if (!*(&xmmword_2A18CAF18 + 1))
      {
LABEL_312:
        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v154 = *(a2 + 23);
        if (v154 >= 0)
        {
          v155 = *(a2 + 23);
        }

        else
        {
          v155 = *(a2 + 8);
        }

        v156 = v155 + 16;
        if (v155 + 16 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v156 < 0x17)
        {
          v159 = &v341[1];
          *&v341[1] = 0;
          BYTE7(v341[1]) = v155 + 16;
          v341[0] = *"AntennaSetting::";
          if (!v155)
          {
            goto LABEL_326;
          }
        }

        else
        {
          if ((v156 | 7) == 0x17)
          {
            v157 = 25;
          }

          else
          {
            v157 = (v156 | 7) + 1;
          }

          v158 = operator new(v157);
          *(&v341[0] + 1) = v155 + 16;
          *&v341[1] = v157 | 0x8000000000000000;
          *&v341[0] = v158;
          *v158 = *"AntennaSetting::";
          v159 = v158 + 1;
        }

        if (v154 >= 0)
        {
          v160 = a2;
        }

        else
        {
          v160 = *a2;
        }

        memmove(v159, v160, v155);
LABEL_326:
        *(v159 + v155) = 0;
        if ((SBYTE7(v341[1]) & 0x80u) == 0)
        {
          v161 = v341;
        }

        else
        {
          v161 = *&v341[0];
        }

        ctu::cf::MakeCFString::MakeCFString(&value, v161);
        v162 = (**v85)(v85, value);
        if (v162)
        {
          v163 = ctu::cf::assign();
          CFRelease(v162);
        }

        else
        {
          v163 = 0;
        }

        MEMORY[0x29C270E70](&value);
        if (SBYTE7(v341[1]) < 0)
        {
          operator delete(*&v341[0]);
        }

        if (*(&__p + 1) && !atomic_fetch_add((*(&__p + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(**(&__p + 1) + 16))(*(&__p + 1));
          std::__shared_weak_count::__release_weak(*(&__p + 1));
        }

        if (!v163)
        {
          goto LABEL_569;
        }

        v164 = xpc_dictionary_create(0, 0, 0);
        if (v164 || (v164 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v164) == v12)
          {
            xpc_retain(v164);
            v165 = v164;
          }

          else
          {
            v165 = xpc_null_create();
          }
        }

        else
        {
          v165 = xpc_null_create();
          v164 = 0;
        }

        xpc_release(v164);
        v218 = xpc_null_create();
        v219 = v345[0];
        v345[0] = v165;
        xpc_release(v219);
        xpc_release(v218);
        v220 = xpc_string_create(v55);
        if (!v220)
        {
          v220 = xpc_null_create();
        }

        xpc_dictionary_set_value(v345[0], *MEMORY[0x29EDBED18], v220);
        v221 = xpc_null_create();
        xpc_release(v220);
        xpc_release(v221);
        v222 = xpc_dictionary_create(0, 0, 0);
        if (v222 || (v222 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v222) == v12)
          {
            xpc_retain(v222);
            v79 = v222;
          }

          else
          {
            v79 = xpc_null_create();
          }
        }

        else
        {
          v79 = xpc_null_create();
          v222 = 0;
        }

        xpc_release(v222);
        if (v344 >= 0)
        {
          v223 = &v342;
        }

        else
        {
          v223 = v342;
        }

        v224 = xpc_string_create(v223);
        if (!v224)
        {
          v224 = xpc_null_create();
        }

        xpc_dictionary_set_value(v79, *MEMORY[0x29EDBF818], v224);
        v225 = xpc_null_create();
        xpc_release(v224);
        xpc_release(v225);
        if (v79)
        {
          goto LABEL_476;
        }

        goto LABEL_477;
      }

LABEL_311:
      atomic_fetch_add_explicit(v84 + 1, 1uLL, memory_order_relaxed);
      goto LABEL_312;
    }

LABEL_692:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v56 == -1)
  {
    goto LABEL_692;
  }

  v58 = *(a2 + 8);
  if (v58 >= v56)
  {
    v83 = v56;
  }

  else
  {
    v83 = *(a2 + 8);
  }

  if (!memcmp(*a2, v55, v83))
  {
    goto LABEL_168;
  }

LABEL_172:
  v86 = *MEMORY[0x29EDBF558];
  v87 = strlen(*MEMORY[0x29EDBF558]);
  v88 = v87;
  if ((v7 & 0x80000000) != 0)
  {
    if (v87 == -1)
    {
      goto LABEL_694;
    }

    v90 = *a2;
    v89 = *(a2 + 8);
  }

  else
  {
    v89 = v7;
    v90 = a2;
    if (v88 == -1)
    {
LABEL_694:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v89 >= v88)
  {
    v112 = v88;
  }

  else
  {
    v112 = v89;
  }

  if (!memcmp(v90, v86, v112) && v89 == v88)
  {
    v113 = xpc_dictionary_create(0, 0, 0);
    if (v113 || (v113 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v113) == v12)
      {
        xpc_retain(v113);
        v114 = v113;
      }

      else
      {
        v114 = xpc_null_create();
      }
    }

    else
    {
      v114 = xpc_null_create();
      v113 = 0;
    }

    xpc_release(v113);
    v188 = xpc_null_create();
    v189 = v345[0];
    v345[0] = v114;
    xpc_release(v189);
    xpc_release(v188);
    v342 = 0;
    v343 = 0;
    v344 = 0;
    v190 = xpc_string_create(v86);
    if (!v190)
    {
      v190 = xpc_null_create();
    }

    xpc_dictionary_set_value(v345[0], *MEMORY[0x29EDBED18], v190);
    v191 = xpc_null_create();
    xpc_release(v190);
    xpc_release(v191);
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v192 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(v341);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
      v192 = xmmword_2A18CAF18;
    }

    v193 = *(&xmmword_2A18CAF18 + 1);
    *&__p = v192;
    *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v194 = *MEMORY[0x29EDBE720];
    v195 = strlen(*MEMORY[0x29EDBE720]);
    v196 = v195 + 16;
    if (v195 + 16 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v197 = v195;
    if (v196 < 0x17)
    {
      v200 = &v341[1];
      *&v341[1] = 0;
      BYTE7(v341[1]) = v195 + 16;
      v341[0] = *"AntennaSetting::";
      if (!v195)
      {
        goto LABEL_413;
      }
    }

    else
    {
      if ((v196 | 7) == 0x17)
      {
        v198 = 25;
      }

      else
      {
        v198 = (v196 | 7) + 1;
      }

      v199 = operator new(v198);
      *(&v341[0] + 1) = v196;
      *&v341[1] = v198 | 0x8000000000000000;
      *&v341[0] = v199;
      *v199 = *"AntennaSetting::";
      v200 = v199 + 1;
    }

    memmove(v200, v194, v197);
LABEL_413:
    *(v200 + v197) = 0;
    if ((SBYTE7(v341[1]) & 0x80u) == 0)
    {
      v201 = v341;
    }

    else
    {
      v201 = *&v341[0];
    }

    ctu::cf::MakeCFString::MakeCFString(&value, v201);
    v202 = (**v192)(v192, value);
    if (v202)
    {
      v203 = ctu::cf::assign();
      CFRelease(v202);
    }

    else
    {
      v203 = 0;
    }

    MEMORY[0x29C270E70](&value);
    if (SBYTE7(v341[1]) < 0)
    {
      operator delete(*&v341[0]);
    }

    if (v193 && !atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v193->__on_zero_shared)(v193);
      std::__shared_weak_count::__release_weak(v193);
    }

    if (v203)
    {
      if (v344 >= 0)
      {
        v204 = &v342;
      }

      else
      {
        v204 = v342;
      }

      v339 = xpc_string_create(v204);
      if (!v339)
      {
        v339 = xpc_null_create();
      }

      *&v341[0] = v345;
      *(&v341[0] + 1) = v194;
      xpc::dict::object_proxy::operator=(v341, &v339, &v340);
      xpc_release(v340);
      v340 = 0;
      xpc_release(v339);
      v339 = 0;
    }

    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v205 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(v341);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
      v205 = xmmword_2A18CAF18;
    }

    v206 = *(&xmmword_2A18CAF18 + 1);
    *&__p = v205;
    *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v207 = *MEMORY[0x29EDBE960];
    v208 = strlen(*MEMORY[0x29EDBE960]);
    v209 = v208 + 16;
    if (v208 + 16 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v210 = v208;
    if (v209 < 0x17)
    {
      v213 = &v341[1];
      *&v341[1] = 0;
      BYTE7(v341[1]) = v208 + 16;
      v341[0] = *"AntennaSetting::";
      if (!v208)
      {
LABEL_443:
        *(v213 + v210) = 0;
        if ((SBYTE7(v341[1]) & 0x80u) == 0)
        {
          v214 = v341;
        }

        else
        {
          v214 = *&v341[0];
        }

        ctu::cf::MakeCFString::MakeCFString(&value, v214);
        v215 = (**v205)(v205, value);
        if (v215)
        {
          v216 = ctu::cf::assign();
          CFRelease(v215);
        }

        else
        {
          v216 = 0;
        }

        MEMORY[0x29C270E70](&value);
        if (SBYTE7(v341[1]) < 0)
        {
          operator delete(*&v341[0]);
        }

        if (v206 && !atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v206->__on_zero_shared)(v206);
          std::__shared_weak_count::__release_weak(v206);
        }

        if (v216)
        {
          if (v344 >= 0)
          {
            v217 = &v342;
          }

          else
          {
            v217 = v342;
          }

          v337 = xpc_string_create(v217);
          if (!v337)
          {
            v337 = xpc_null_create();
          }

          *&v341[0] = v345;
          *(&v341[0] + 1) = v207;
          xpc::dict::object_proxy::operator=(v341, &v337, &v338);
          xpc_release(v338);
          v338 = 0;
          xpc_release(v337);
          v337 = 0;
        }

        goto LABEL_569;
      }
    }

    else
    {
      if ((v209 | 7) == 0x17)
      {
        v211 = 25;
      }

      else
      {
        v211 = (v209 | 7) + 1;
      }

      v212 = operator new(v211);
      *(&v341[0] + 1) = v209;
      *&v341[1] = v211 | 0x8000000000000000;
      *&v341[0] = v212;
      *v212 = *"AntennaSetting::";
      v213 = v212 + 1;
    }

    memmove(v213, v207, v210);
    goto LABEL_443;
  }

  v115 = strlen(*MEMORY[0x29EDBECA0]);
  v116 = v115;
  if ((v7 & 0x80000000) != 0)
  {
    if (v115 == -1)
    {
      goto LABEL_696;
    }

    v118 = *a2;
    v117 = *(a2 + 8);
  }

  else
  {
    v117 = v7;
    v118 = a2;
    if (v116 == -1)
    {
LABEL_696:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v117 >= v116)
  {
    v141 = v116;
  }

  else
  {
    v141 = v117;
  }

  if (!memcmp(v118, *MEMORY[0x29EDBECA0], v141) && v117 == v116)
  {
    v342 = 0;
    v343 = 0;
    v344 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v142 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(v341);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
      v142 = xmmword_2A18CAF18;
    }

    v143 = *(&xmmword_2A18CAF18 + 1);
    *&__p = v142;
    *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v144 = *(a2 + 23);
    if (v144 >= 0)
    {
      v145 = *(a2 + 23);
    }

    else
    {
      v145 = *(a2 + 8);
    }

    v146 = v145 + 16;
    if (v145 + 16 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v146 < 0x17)
    {
      v149 = &v341[1];
      *&v341[1] = 0;
      BYTE7(v341[1]) = v145 + 16;
      v341[0] = *"AntennaSetting::";
      if (!v145)
      {
        goto LABEL_365;
      }
    }

    else
    {
      if ((v146 | 7) == 0x17)
      {
        v147 = 25;
      }

      else
      {
        v147 = (v146 | 7) + 1;
      }

      v148 = operator new(v147);
      *(&v341[0] + 1) = v145 + 16;
      *&v341[1] = v147 | 0x8000000000000000;
      *&v341[0] = v148;
      *v148 = *"AntennaSetting::";
      v149 = v148 + 1;
    }

    if (v144 >= 0)
    {
      v174 = a2;
    }

    else
    {
      v174 = *a2;
    }

    memmove(v149, v174, v145);
LABEL_365:
    *(v149 + v145) = 0;
    if ((SBYTE7(v341[1]) & 0x80u) == 0)
    {
      v175 = v341;
    }

    else
    {
      v175 = *&v341[0];
    }

    ctu::cf::MakeCFString::MakeCFString(&value, v175);
    v176 = (**v142)(v142, value);
    if (v176)
    {
      v177 = ctu::cf::assign();
      CFRelease(v176);
    }

    else
    {
      v177 = 0;
    }

    MEMORY[0x29C270E70](&value);
    if (SBYTE7(v341[1]) < 0)
    {
      operator delete(*&v341[0]);
    }

    if (v143 && !atomic_fetch_add(&v143->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v143->__on_zero_shared)(v143);
      std::__shared_weak_count::__release_weak(v143);
    }

    if (!v177)
    {
      goto LABEL_569;
    }

    v186 = xpc_dictionary_create(0, 0, 0);
    v187 = v186;
    if (v186)
    {
      *&v341[0] = v186;
    }

    else
    {
      v187 = xpc_null_create();
      *&v341[0] = v187;
      if (!v187)
      {
        v237 = xpc_null_create();
        v187 = 0;
        goto LABEL_524;
      }
    }

    if (MEMORY[0x29C272BA0](v187) == v12)
    {
      xpc_retain(v187);
LABEL_525:
      xpc_release(v187);
      xpc::dict::operator=(v345, v341);
      xpc_release(*&v341[0]);
      if (*(a2 + 23) >= 0)
      {
        v243 = a2;
      }

      else
      {
        v243 = *a2;
      }

      v335 = xpc_string_create(v243);
      if (!v335)
      {
        v335 = xpc_null_create();
      }

      v244 = *MEMORY[0x29EDBED18];
      *&v341[0] = v345;
      *(&v341[0] + 1) = v244;
      xpc::dict::object_proxy::operator=(v341, &v335, &v336);
      xpc_release(v336);
      v336 = 0;
      xpc_release(v335);
      v335 = 0;
      if (v344 >= 0)
      {
        v245 = &v342;
      }

      else
      {
        v245 = v342;
      }

      v333 = xpc_string_create(v245);
      if (!v333)
      {
        v333 = xpc_null_create();
      }

      v246 = *MEMORY[0x29EDBEA98];
      *&v341[0] = v345;
      *(&v341[0] + 1) = v246;
      xpc::dict::object_proxy::operator=(v341, &v333, &v334);
      xpc_release(v334);
      v334 = 0;
      xpc_release(v333);
      v333 = 0;
      goto LABEL_569;
    }

    v237 = xpc_null_create();
LABEL_524:
    *&v341[0] = v237;
    goto LABEL_525;
  }

  v150 = strlen(*MEMORY[0x29EDBF528]);
  v151 = v150;
  if ((v7 & 0x80000000) != 0)
  {
    if (v150 == -1)
    {
      goto LABEL_699;
    }

    v153 = *a2;
    v152 = *(a2 + 8);
  }

  else
  {
    v152 = v7;
    v153 = a2;
    if (v151 == -1)
    {
LABEL_699:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v152 >= v151)
  {
    v178 = v151;
  }

  else
  {
    v178 = v152;
  }

  if (!memcmp(v153, *MEMORY[0x29EDBF528], v178) && v152 == v151)
  {
    v342 = 0;
    v343 = 0;
    v344 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v179 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(v341);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
      v179 = xmmword_2A18CAF18;
    }

    *&__p = v179;
    *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v341, "AntennaSetting::", a2);
    v180 = Preferences::getPreference<std::string>(__p, v341, &v342);
    if (SBYTE7(v341[1]) < 0)
    {
      operator delete(*&v341[0]);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
    if (!v180)
    {
      goto LABEL_569;
    }

    v181 = xpc_dictionary_create(0, 0, 0);
    v182 = v181;
    if (v181)
    {
      *&v341[0] = v181;
    }

    else
    {
      v182 = xpc_null_create();
      *&v341[0] = v182;
      if (!v182)
      {
        v242 = xpc_null_create();
        v182 = 0;
        goto LABEL_541;
      }
    }

    if (MEMORY[0x29C272BA0](v182) == v12)
    {
      xpc_retain(v182);
LABEL_542:
      xpc_release(v182);
      xpc::dict::operator=(v345, v341);
      xpc_release(*&v341[0]);
      if (*(a2 + 23) >= 0)
      {
        v248 = a2;
      }

      else
      {
        v248 = *a2;
      }

      v331 = xpc_string_create(v248);
      if (!v331)
      {
        v331 = xpc_null_create();
      }

      v249 = *MEMORY[0x29EDBED18];
      *&v341[0] = v345;
      *(&v341[0] + 1) = v249;
      xpc::dict::object_proxy::operator=(v341, &v331, &v332);
      xpc_release(v332);
      v332 = 0;
      xpc_release(v331);
      v331 = 0;
      if (v344 >= 0)
      {
        v250 = &v342;
      }

      else
      {
        v250 = v342;
      }

      v329 = xpc_string_create(v250);
      if (!v329)
      {
        v329 = xpc_null_create();
      }

      v251 = *MEMORY[0x29EDBEA98];
      *&v341[0] = v345;
      *(&v341[0] + 1) = v251;
      xpc::dict::object_proxy::operator=(v341, &v329, &v330);
      xpc_release(v330);
      v330 = 0;
      xpc_release(v329);
      v329 = 0;
      goto LABEL_569;
    }

    v242 = xpc_null_create();
LABEL_541:
    *&v341[0] = v242;
    goto LABEL_542;
  }

  v183 = strlen(*MEMORY[0x29EDBF510]);
  v184 = v183;
  if ((v7 & 0x80000000) != 0)
  {
    if (v183 == -1)
    {
      goto LABEL_701;
    }

    v185 = *a2;
    v7 = *(a2 + 8);
  }

  else
  {
    v185 = a2;
    if (v184 == -1)
    {
LABEL_701:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v7 >= v184)
  {
    v228 = v184;
  }

  else
  {
    v228 = v7;
  }

  if (!memcmp(v185, *MEMORY[0x29EDBF510], v228) && v7 == v184)
  {
    v342 = 0;
    v343 = 0;
    v344 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v229 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(v341);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
      v229 = xmmword_2A18CAF18;
    }

    *&__p = v229;
    *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v341, "AntennaSetting::", a2);
    v230 = Preferences::getPreference<std::string>(__p, v341, &v342);
    if (SBYTE7(v341[1]) < 0)
    {
      operator delete(*&v341[0]);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
    if (!v230)
    {
      goto LABEL_569;
    }

    v231 = xpc_dictionary_create(0, 0, 0);
    v232 = v231;
    if (v231)
    {
      *&v341[0] = v231;
    }

    else
    {
      v232 = xpc_null_create();
      *&v341[0] = v232;
      if (!v232)
      {
        v247 = xpc_null_create();
        v232 = 0;
        goto LABEL_557;
      }
    }

    if (MEMORY[0x29C272BA0](v232) == v12)
    {
      xpc_retain(v232);
LABEL_558:
      xpc_release(v232);
      xpc::dict::operator=(v345, v341);
      xpc_release(*&v341[0]);
      if (*(a2 + 23) >= 0)
      {
        v253 = a2;
      }

      else
      {
        v253 = *a2;
      }

      v327 = xpc_string_create(v253);
      if (!v327)
      {
        v327 = xpc_null_create();
      }

      v254 = *MEMORY[0x29EDBED18];
      *&v341[0] = v345;
      *(&v341[0] + 1) = v254;
      xpc::dict::object_proxy::operator=(v341, &v327, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v327);
      v327 = 0;
      if (v344 >= 0)
      {
        v255 = &v342;
      }

      else
      {
        v255 = v342;
      }

      v325 = xpc_string_create(v255);
      if (!v325)
      {
        v325 = xpc_null_create();
      }

      v256 = *MEMORY[0x29EDBEA98];
      *&v341[0] = v345;
      *(&v341[0] + 1) = v256;
      xpc::dict::object_proxy::operator=(v341, &v325, &v326);
      xpc_release(v326);
      v326 = 0;
      xpc_release(v325);
      v325 = 0;
      goto LABEL_569;
    }

    v247 = xpc_null_create();
LABEL_557:
    *&v341[0] = v247;
    goto LABEL_558;
  }

  if (!std::string::compare(a2, *MEMORY[0x29EDBF5A8]))
  {
    v342 = 0;
    v343 = 0;
    v344 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v238 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(v341);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
      v238 = xmmword_2A18CAF18;
    }

    *&__p = v238;
    *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v341, "AntennaSetting::", a2);
    v239 = Preferences::getPreference<std::string>(__p, v341, &v342);
    if (SBYTE7(v341[1]) < 0)
    {
      operator delete(*&v341[0]);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
    if (!v239)
    {
      goto LABEL_569;
    }

    v240 = xpc_dictionary_create(0, 0, 0);
    v241 = v240;
    if (v240)
    {
      *&v341[0] = v240;
    }

    else
    {
      v241 = xpc_null_create();
      *&v341[0] = v241;
      if (!v241)
      {
        v252 = xpc_null_create();
        v241 = 0;
        goto LABEL_581;
      }
    }

    if (MEMORY[0x29C272BA0](v241) == v12)
    {
      xpc_retain(v241);
LABEL_582:
      xpc_release(v241);
      xpc::dict::operator=(v345, v341);
      xpc_release(*&v341[0]);
      if (*(a2 + 23) >= 0)
      {
        v259 = a2;
      }

      else
      {
        v259 = *a2;
      }

      v323 = xpc_string_create(v259);
      if (!v323)
      {
        v323 = xpc_null_create();
      }

      v260 = *MEMORY[0x29EDBED18];
      *&v341[0] = v345;
      *(&v341[0] + 1) = v260;
      xpc::dict::object_proxy::operator=(v341, &v323, &v324);
      xpc_release(v324);
      v324 = 0;
      xpc_release(v323);
      v323 = 0;
      if (v344 >= 0)
      {
        v261 = &v342;
      }

      else
      {
        v261 = v342;
      }

      v321 = xpc_string_create(v261);
      if (!v321)
      {
        v321 = xpc_null_create();
      }

      v262 = *MEMORY[0x29EDBEA98];
      *&v341[0] = v345;
      *(&v341[0] + 1) = v262;
      xpc::dict::object_proxy::operator=(v341, &v321, &v322);
      xpc_release(v322);
      v322 = 0;
      xpc_release(v321);
      v321 = 0;
      if (v344 >= 0)
      {
        v263 = &v342;
      }

      else
      {
        v263 = v342;
      }

      v264 = strlen(*MEMORY[0x29EDBEFE0]);
      if (!strncasecmp(v263, *MEMORY[0x29EDBEFE0], v264))
      {
        LODWORD(value) = 0;
        pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v265 = xmmword_2A18CAF18;
        if (!xmmword_2A18CAF18)
        {
          ABMProperties::create_default_global(v341);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
          v265 = xmmword_2A18CAF18;
        }

        *&__p = v265;
        *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
        if (*(&xmmword_2A18CAF18 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v266 = __p;
        v267 = *MEMORY[0x29EDBF820];
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v341, "AntennaSetting::", *MEMORY[0x29EDBF820]);
        Preferences::getPreference<unsigned int>(v266, v341, &value);
        if (SBYTE7(v341[1]) < 0)
        {
          operator delete(*&v341[0]);
        }

        std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
        v319 = xpc_int64_create(value);
        if (!v319)
        {
          v319 = xpc_null_create();
        }

        *&v341[0] = v345;
        *(&v341[0] + 1) = v267;
        xpc::dict::object_proxy::operator=(v341, &v319, &v320);
        xpc_release(v320);
        v320 = 0;
        xpc_release(v319);
        v319 = 0;
        pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v268 = xmmword_2A18CAF18;
        if (!xmmword_2A18CAF18)
        {
          ABMProperties::create_default_global(v341);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
          v268 = xmmword_2A18CAF18;
        }

        *&__p = v268;
        *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
        if (*(&xmmword_2A18CAF18 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v269 = __p;
        v270 = *MEMORY[0x29EDBF7D8];
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v341, "AntennaSetting::", *MEMORY[0x29EDBF7D8]);
        Preferences::getPreference<unsigned int>(v269, v341, &value);
        if (SBYTE7(v341[1]) < 0)
        {
          operator delete(*&v341[0]);
        }

        std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
        v317 = xpc_int64_create(value);
        if (!v317)
        {
          v317 = xpc_null_create();
        }

        *&v341[0] = v345;
        *(&v341[0] + 1) = v270;
        xpc::dict::object_proxy::operator=(v341, &v317, &v318);
        xpc_release(v318);
        v318 = 0;
        xpc_release(v317);
        v317 = 0;
        pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v271 = xmmword_2A18CAF18;
        if (!xmmword_2A18CAF18)
        {
          ABMProperties::create_default_global(v341);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
          v271 = xmmword_2A18CAF18;
        }

        *&__p = v271;
        *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
        if (*(&xmmword_2A18CAF18 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v272 = __p;
        v273 = *MEMORY[0x29EDBF610];
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v341, "AntennaSetting::", *MEMORY[0x29EDBF610]);
        Preferences::getPreference<unsigned int>(v272, v341, &value);
        if (SBYTE7(v341[1]) < 0)
        {
          operator delete(*&v341[0]);
        }

        std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
        v315 = xpc_int64_create(value);
        if (!v315)
        {
          v315 = xpc_null_create();
        }

        *&v341[0] = v345;
        *(&v341[0] + 1) = v273;
        xpc::dict::object_proxy::operator=(v341, &v315, &v316);
        xpc_release(v316);
        v316 = 0;
        xpc_release(v315);
        v315 = 0;
        pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v274 = xmmword_2A18CAF18;
        if (!xmmword_2A18CAF18)
        {
          ABMProperties::create_default_global(v341);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
          v274 = xmmword_2A18CAF18;
        }

        *&__p = v274;
        *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
        if (*(&xmmword_2A18CAF18 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v275 = __p;
        v276 = *MEMORY[0x29EDBF608];
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v341, "AntennaSetting::", *MEMORY[0x29EDBF608]);
        Preferences::getPreference<unsigned int>(v275, v341, &value);
        if (SBYTE7(v341[1]) < 0)
        {
          operator delete(*&v341[0]);
        }

        std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
        v313 = xpc_int64_create(value);
        if (!v313)
        {
          v313 = xpc_null_create();
        }

        *&v341[0] = v345;
        *(&v341[0] + 1) = v276;
        xpc::dict::object_proxy::operator=(v341, &v313, &v314);
        xpc_release(v314);
        v314 = 0;
        xpc_release(v313);
        v313 = 0;
      }

      goto LABEL_569;
    }

    v252 = xpc_null_create();
LABEL_581:
    *&v341[0] = v252;
    goto LABEL_582;
  }

  if (std::string::compare(a2, *MEMORY[0x29EDBE4F0]))
  {
    goto LABEL_571;
  }

  v342 = 0;
  v343 = 0;
  v344 = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v233 = xmmword_2A18CAF18;
  if (!xmmword_2A18CAF18)
  {
    ABMProperties::create_default_global(v341);
    std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
    v233 = xmmword_2A18CAF18;
  }

  *&__p = v233;
  *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
  if (*(&xmmword_2A18CAF18 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v341, "AntennaSetting::", a2);
  v234 = Preferences::getPreference<std::string>(__p, v341, &v342);
  if (SBYTE7(v341[1]) < 0)
  {
    operator delete(*&v341[0]);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
  if (v234)
  {
    v235 = xpc_dictionary_create(0, 0, 0);
    v236 = v235;
    if (v235)
    {
      *&v341[0] = v235;
    }

    else
    {
      v236 = xpc_null_create();
      *&v341[0] = v236;
      if (!v236)
      {
        v258 = xpc_null_create();
        v236 = 0;
        goto LABEL_630;
      }
    }

    if (MEMORY[0x29C272BA0](v236) == v12)
    {
      xpc_retain(v236);
      goto LABEL_631;
    }

    v258 = xpc_null_create();
LABEL_630:
    *&v341[0] = v258;
LABEL_631:
    xpc_release(v236);
    xpc::dict::operator=(v345, v341);
    xpc_release(*&v341[0]);
    v312 = 0xAAAAAAAAAAAAAAAALL;
    v277 = xpc_dictionary_create(0, 0, 0);
    v278 = v277;
    if (v277)
    {
      v312 = v277;
    }

    else
    {
      v278 = xpc_null_create();
      v312 = v278;
      if (!v278)
      {
        v279 = xpc_null_create();
        v278 = 0;
        goto LABEL_638;
      }
    }

    if (MEMORY[0x29C272BA0](v278) == v12)
    {
      xpc_retain(v278);
      goto LABEL_639;
    }

    v279 = xpc_null_create();
LABEL_638:
    v312 = v279;
LABEL_639:
    xpc_release(v278);
    if (*(a2 + 23) >= 0)
    {
      v280 = a2;
    }

    else
    {
      v280 = *a2;
    }

    *&v310[1] = xpc_string_create(v280);
    if (!*&v310[1])
    {
      *&v310[1] = xpc_null_create();
    }

    v281 = *MEMORY[0x29EDBED18];
    *&v341[0] = v345;
    *(&v341[0] + 1) = v281;
    xpc::dict::object_proxy::operator=(v341, &v310[1], &v311);
    xpc_release(v311);
    v311 = 0;
    xpc_release(*&v310[1]);
    *&v310[1] = 0;
    memset(v341, 170, 24);
    std::string::basic_string[abi:ne200100]<0>(v341, "");
    v310[0] = 0x7FFF;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v282 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v282 = xmmword_2A18CAF18;
    }

    value = v282;
    v309 = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v283 = value;
    v284 = *MEMORY[0x29EDBF1D8];
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "AntennaSetting::", *MEMORY[0x29EDBF1D8]);
    Preferences::getPreference<std::string>(v283, &__p, v341);
    if (v307 < 0)
    {
      operator delete(__p);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&value);
    if (SBYTE7(v341[1]) < 0)
    {
      if (*(&v341[0] + 1))
      {
        v285 = *&v341[0];
        goto LABEL_655;
      }
    }

    else if (BYTE7(v341[1]))
    {
      v285 = v341;
LABEL_655:
      v304 = xpc_string_create(v285);
      if (!v304)
      {
        v304 = xpc_null_create();
      }

      *&__p = &v312;
      *(&__p + 1) = v284;
      xpc::dict::object_proxy::operator=(&__p, &v304, &v305);
      xpc_release(v305);
      v305 = 0;
      xpc_release(v304);
      v304 = 0;
    }

    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v286 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v286 = xmmword_2A18CAF18;
    }

    value = v286;
    v309 = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v287 = value;
    v288 = *MEMORY[0x29EDBE8B8];
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "AntennaSetting::", *MEMORY[0x29EDBE8B8]);
    Preferences::getPreference<unsigned int>(v287, &__p, v310);
    if (v307 < 0)
    {
      operator delete(__p);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&value);
    v302 = xpc_int64_create(v310[0]);
    if (!v302)
    {
      v302 = xpc_null_create();
    }

    *&__p = &v312;
    *(&__p + 1) = v288;
    xpc::dict::object_proxy::operator=(&__p, &v302, &v303);
    xpc_release(v303);
    v303 = 0;
    xpc_release(v302);
    v302 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v289 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v289 = xmmword_2A18CAF18;
    }

    value = v289;
    v309 = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v290 = value;
    v291 = *MEMORY[0x29EDBEA90];
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "AntennaSetting::", *MEMORY[0x29EDBEA90]);
    Preferences::getPreference<unsigned int>(v290, &__p, v310);
    if (v307 < 0)
    {
      operator delete(__p);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&value);
    v300 = xpc_int64_create(v310[0]);
    if (!v300)
    {
      v300 = xpc_null_create();
    }

    *&__p = &v312;
    *(&__p + 1) = v291;
    xpc::dict::object_proxy::operator=(&__p, &v300, &v301);
    xpc_release(v301);
    v301 = 0;
    xpc_release(v300);
    v300 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v292 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v292 = xmmword_2A18CAF18;
    }

    value = v292;
    v309 = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v293 = value;
    v294 = *MEMORY[0x29EDBE698];
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "AntennaSetting::", *MEMORY[0x29EDBE698]);
    Preferences::getPreference<unsigned int>(v293, &__p, v310);
    if (v307 < 0)
    {
      operator delete(__p);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&value);
    v298 = xpc_int64_create(v310[0]);
    if (!v298)
    {
      v298 = xpc_null_create();
    }

    *&__p = &v312;
    *(&__p + 1) = v294;
    xpc::dict::object_proxy::operator=(&__p, &v298, &v299);
    xpc_release(v299);
    v299 = 0;
    xpc_release(v298);
    v298 = 0;
    xpc::dict::dict(&v296, &v312);
    v295 = *MEMORY[0x29EDBEA98];
    *&__p = v345;
    *(&__p + 1) = v295;
    xpc::dict::object_proxy::operator=(&__p, &v296, &v297);
    xpc_release(v297);
    v297 = 0;
    xpc_release(v296);
    v296 = 0;
    if (SBYTE7(v341[1]) < 0)
    {
      operator delete(*&v341[0]);
    }

    xpc_release(v312);
  }

LABEL_569:
  if (SHIBYTE(v344) < 0)
  {
    operator delete(v342);
  }

LABEL_571:
  if (MEMORY[0x29C272BA0](v345[0]) == v12)
  {
    v257 = **(a1 + 120);
    if (v257)
    {
      antenna::Service::Internal::antennaSetProperty(v257, v345);
    }
  }

  xpc_release(v345[0]);
}

void sub_297620374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, xpc_object_t object)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
  }

  xpc_release(*(v31 - 104));
  _Unwind_Resume(a1);
}

uint64_t Preferences::getPreference<std::string>(uint64_t (***a1)(void, uint64_t), const char *a2, uint64_t a3)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v7, a2);
  v4 = (**a1)(a1, v7);
  if (v4)
  {
    v5 = ctu::cf::assign();
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x29C270E70](&v7);
  return v5;
}

void *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *result, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  v7 = v6 + v4;
  if (v6 + v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = result;
  if (v7 <= 0x16)
  {
    result[1] = 0;
    result[2] = 0;
    *result = 0;
    *(result + 23) = v7;
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if ((v7 | 7) == 0x17)
  {
    v11 = 25;
  }

  else
  {
    v11 = (v7 | 7) + 1;
  }

  result = operator new(v11);
  v10[1] = v7;
  v10[2] = v11 | 0x8000000000000000;
  *v10 = result;
  v10 = result;
  if (v4)
  {
LABEL_15:
    if (v3 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    result = memmove(v10, v12, v4);
  }

LABEL_19:
  v13 = v10 + v4;
  if (v6)
  {
    if (v5 >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    result = memmove(v13, v14, v6);
  }

  v13[v6] = 0;
  return result;
}

void *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, const void ***a2, char *__s)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  result = strlen(__s);
  v9 = result + v7;
  if (result + v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = result;
  if (v9 > 0x16)
  {
    if ((v9 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v9 | 7) + 1;
    }

    result = operator new(v11);
    a1[1] = v9;
    a1[2] = v11 | 0x8000000000000000;
    *a1 = result;
    a1 = result;
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  *(a1 + 23) = v9;
  if (v7)
  {
LABEL_12:
    if (v6 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    result = memmove(a1, v12, v7);
  }

LABEL_16:
  v13 = a1 + v7;
  if (v10)
  {
    result = memmove(v13, __s, v10);
  }

  *(v10 + v13) = 0;
  return result;
}

void AntennaModule::reportTransmitState(AntennaModule *this, void **a2)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v3 = *a2;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(&cf, &object, v4);
  v5 = cf;
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {
    v21 = 0;
    v7 = 1;
    v8 = cf;
    if (!cf)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v21 = v5;
  CFRetain(v5);
  v7 = 0;
  v8 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_10:
  xpc_release(object);
  if (v7)
  {
    return;
  }

  v9 = *MEMORY[0x29EDBF348];
  v10 = strlen(*MEMORY[0x29EDBF348]);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v12 = operator new(v14);
    __dst[1] = v11;
    v18 = v14 | 0x8000000000000000;
    __dst[0] = v12;
LABEL_20:
    memmove(v12, v9, v11);
    *(v11 + v12) = 0;
    v13 = v21;
    v16 = v21;
    if (!v21)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  HIBYTE(v18) = v10;
  v12 = __dst;
  if (v10)
  {
    goto LABEL_20;
  }

  LOBYTE(__dst[0]) = 0;
  v13 = v21;
  v16 = v21;
  if (v21)
  {
LABEL_21:
    CFRetain(v13);
  }

LABEL_22:
  aBlock = 0;
  Service::broadcastEvent(this, __dst, &v16, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
    if (!v13)
    {
      return;
    }
  }

  else if (!v13)
  {
    return;
  }

  CFRelease(v13);
}

void sub_297621154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, const void *a19)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a19);
  _Unwind_Resume(a1);
}

void AntennaModule::processCallback(AntennaModule *this, xpc_object_t *a2)
{
  v4 = *MEMORY[0x29EDBEC68];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEC68]))
  {
    memset(__s1, 170, sizeof(__s1));
    value = xpc_dictionary_get_value(*a2, v4);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    xpc::dyn_cast_or_default(__s1, object, "", v6);
    xpc_release(object[0]);
    v7 = strlen(*MEMORY[0x29EDBEBE8]);
    v8 = v7;
    v9 = HIBYTE(__s1[2]);
    if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
    {
      if (v7 != -1)
      {
        v10 = __s1[0];
        v11 = __s1[1];
LABEL_10:
        if (v11 >= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        if (!memcmp(v10, *MEMORY[0x29EDBEBE8], v12) && v11 == v8)
        {
          AntennaModule::reportTransmitState(this, a2);
          v9 = HIBYTE(__s1[2]);
        }

        v14 = *MEMORY[0x29EDBE728];
        v15 = strlen(*MEMORY[0x29EDBE728]);
        v16 = v15;
        if ((v9 & 0x80) != 0)
        {
          if (v15 != -1)
          {
            v17 = __s1[1];
            if (__s1[1] >= v15)
            {
              v19 = v15;
            }

            else
            {
              v19 = __s1[1];
            }

            if (memcmp(__s1[0], v14, v19))
            {
              goto LABEL_44;
            }

            goto LABEL_31;
          }
        }

        else if (v15 != -1)
        {
          v17 = v9;
          if (v9 >= v15)
          {
            v18 = v15;
          }

          else
          {
            v18 = v9;
          }

          if (memcmp(__s1, v14, v18))
          {
            goto LABEL_44;
          }

LABEL_31:
          if (v17 != v16)
          {
LABEL_44:
            if ((v9 & 0x80) != 0)
            {
              operator delete(__s1[0]);
            }

            return;
          }

          v20 = *MEMORY[0x29EDBEBD0];
          v21 = strlen(*MEMORY[0x29EDBEBD0]);
          if (v21 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v22 = v21;
          if (v21 >= 0x17)
          {
            if ((v21 | 7) == 0x17)
            {
              v24 = 25;
            }

            else
            {
              v24 = (v21 | 7) + 1;
            }

            v23 = operator new(v24);
            object[1] = v22;
            v30 = v24 | 0x8000000000000000;
            object[0] = v23;
          }

          else
          {
            HIBYTE(v30) = v21;
            v23 = object;
            if (!v21)
            {
              goto LABEL_41;
            }
          }

          memmove(v23, v20, v22);
LABEL_41:
          *(v22 + v23) = 0;
          v25 = *MEMORY[0x29EDBE750];
          v27[0] = a2;
          v27[1] = v25;
          xpc::dict::object_proxy::operator xpc::dict(v27, &v28);
          v26 = 0;
          Service::runCommand(this, object, &v28, &v26);
          xpc_release(v28);
          v28 = 0;
          if (SHIBYTE(v30) < 0)
          {
            operator delete(object[0]);
          }

          v9 = HIBYTE(__s1[2]);
          goto LABEL_44;
        }

        std::string::__throw_out_of_range[abi:ne200100]();
      }
    }

    else if (v7 != -1)
    {
      v10 = __s1;
      v11 = SHIBYTE(__s1[2]);
      goto LABEL_10;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }
}

void sub_297621450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void **xpc::dict::operator=(void **a1, xpc_object_t object)
{
  if (object)
  {
    v3 = object;
    xpc_retain(object);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *a1;
  *a1 = v3;
  xpc_release(v4);
  return a1;
}

atomic_ullong *std::shared_ptr<AntennaModule>::shared_ptr[abi:ne200100]<AntennaModule,std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E4CE70;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_29762163C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule*)#1}::operator() const(AntennaModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AntennaModule *,std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule *)#1},std::allocator<AntennaModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<AntennaModule *,std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule *)#1},std::allocator<AntennaModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI13AntennaModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI13AntennaModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI13AntennaModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI13AntennaModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule*)#1}::operator() const(AntennaModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void AntennaModule::init(void)::$_0::operator()(uint64_t a1)
{
  v130 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v3 = *(a1 + 80);
  if (!v3 || (v4 = *(a1 + 72), (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  p_shared_weak_owners = &v5->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v105 = 0xAAAAAAAAAAAAAAAALL;
  v106 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZZN13AntennaModule4initEvENK3__0clEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_44_4;
  aBlock[4] = a1;
  aBlock[5] = v4;
  v104 = v6;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v8 = _Block_copy(aBlock);
  v9 = *(a1 + 88);
  if (v9)
  {
    dispatch_retain(*(a1 + 88));
  }

  v105 = v8;
  v106 = v9;
  v10 = operator new(0x10uLL);
  if (v8)
  {
    v101 = _Block_copy(v8);
    v102 = v9;
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v101 = 0;
  v102 = v9;
  if (v9)
  {
LABEL_11:
    dispatch_retain(v9);
  }

LABEL_12:
  v11 = *(a1 + 96);
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  antenna::Service::Service(v10, &v101, &object);
  *buf = v10;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E4CEF0;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = v10;
  v13 = *(a1 + 128);
  *(a1 + 120) = v10;
  *(a1 + 128) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v102)
  {
    dispatch_release(v102);
  }

  if (v101)
  {
    _Block_release(v101);
  }

  v14 = *MEMORY[0x29EDBEFD0];
  v15 = strlen(*MEMORY[0x29EDBEFD0]);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    v17 = operator new(v18);
    v108 = v16;
    v109 = v18 | 0x8000000000000000;
    *buf = v17;
    goto LABEL_31;
  }

  HIBYTE(v109) = v15;
  v17 = buf;
  if (v15)
  {
LABEL_31:
    memmove(v17, v14, v16);
  }

  *(v17 + v16) = 0;
  v19 = v110;
  v20 = *MEMORY[0x29EDBE978];
  v21 = strlen(*MEMORY[0x29EDBE978]);
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v21 | 7) + 1;
    }

    v24 = operator new(v23);
    v110[1] = v22;
    v111 = v23 | 0x8000000000000000;
    v110[0] = v24;
    v19 = v24;
    goto LABEL_40;
  }

  HIBYTE(v111) = v21;
  if (v21)
  {
LABEL_40:
    memmove(v19, v20, v22);
  }

  *(v22 + v19) = 0;
  v25 = v112;
  v26 = *MEMORY[0x29EDBEBA0];
  v27 = strlen(*MEMORY[0x29EDBEBA0]);
  if (v27 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    if ((v27 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v27 | 7) + 1;
    }

    v30 = operator new(v29);
    v112[1] = v28;
    v113 = v29 | 0x8000000000000000;
    v112[0] = v30;
    v25 = v30;
    goto LABEL_49;
  }

  HIBYTE(v113) = v27;
  if (v27)
  {
LABEL_49:
    memmove(v25, v26, v28);
  }

  *(v28 + v25) = 0;
  v31 = v114;
  v32 = *MEMORY[0x29EDBED08];
  v33 = strlen(*MEMORY[0x29EDBED08]);
  if (v33 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = v33;
  if (v33 >= 0x17)
  {
    if ((v33 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v33 | 7) + 1;
    }

    v36 = operator new(v35);
    v114[1] = v34;
    v115 = v35 | 0x8000000000000000;
    v114[0] = v36;
    v31 = v36;
    goto LABEL_58;
  }

  HIBYTE(v115) = v33;
  if (v33)
  {
LABEL_58:
    memmove(v31, v32, v34);
  }

  *(v34 + v31) = 0;
  v37 = v116;
  v38 = *MEMORY[0x29EDBF530];
  v39 = strlen(*MEMORY[0x29EDBF530]);
  if (v39 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v40 = v39;
  if (v39 >= 0x17)
  {
    if ((v39 | 7) == 0x17)
    {
      v41 = 25;
    }

    else
    {
      v41 = (v39 | 7) + 1;
    }

    v42 = operator new(v41);
    v116[1] = v40;
    v117 = v41 | 0x8000000000000000;
    v116[0] = v42;
    v37 = v42;
    goto LABEL_67;
  }

  HIBYTE(v117) = v39;
  if (v39)
  {
LABEL_67:
    memmove(v37, v38, v40);
  }

  *(v40 + v37) = 0;
  v43 = v118;
  v44 = *MEMORY[0x29EDBF558];
  v45 = strlen(*MEMORY[0x29EDBF558]);
  if (v45 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v46 = v45;
  if (v45 >= 0x17)
  {
    if ((v45 | 7) == 0x17)
    {
      v47 = 25;
    }

    else
    {
      v47 = (v45 | 7) + 1;
    }

    v48 = operator new(v47);
    v118[1] = v46;
    v119 = v47 | 0x8000000000000000;
    v118[0] = v48;
    v43 = v48;
    goto LABEL_76;
  }

  HIBYTE(v119) = v45;
  if (v45)
  {
LABEL_76:
    memmove(v43, v44, v46);
  }

  *(v46 + v43) = 0;
  v49 = v120;
  v50 = *MEMORY[0x29EDBECA0];
  v51 = strlen(*MEMORY[0x29EDBECA0]);
  if (v51 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v52 = v51;
  if (v51 >= 0x17)
  {
    if ((v51 | 7) == 0x17)
    {
      v53 = 25;
    }

    else
    {
      v53 = (v51 | 7) + 1;
    }

    v54 = operator new(v53);
    v120[1] = v52;
    v121 = v53 | 0x8000000000000000;
    v120[0] = v54;
    v49 = v54;
    goto LABEL_85;
  }

  HIBYTE(v121) = v51;
  if (v51)
  {
LABEL_85:
    memmove(v49, v50, v52);
  }

  *(v52 + v49) = 0;
  v55 = v122;
  v56 = *MEMORY[0x29EDBF528];
  v57 = strlen(*MEMORY[0x29EDBF528]);
  if (v57 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v58 = v57;
  if (v57 >= 0x17)
  {
    if ((v57 | 7) == 0x17)
    {
      v59 = 25;
    }

    else
    {
      v59 = (v57 | 7) + 1;
    }

    v60 = operator new(v59);
    v122[1] = v58;
    v123 = v59 | 0x8000000000000000;
    v122[0] = v60;
    v55 = v60;
    goto LABEL_94;
  }

  HIBYTE(v123) = v57;
  if (v57)
  {
LABEL_94:
    memmove(v55, v56, v58);
  }

  *(v58 + v55) = 0;
  v61 = v124;
  v62 = *MEMORY[0x29EDBF510];
  v63 = strlen(*MEMORY[0x29EDBF510]);
  if (v63 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v64 = v63;
  if (v63 >= 0x17)
  {
    if ((v63 | 7) == 0x17)
    {
      v65 = 25;
    }

    else
    {
      v65 = (v63 | 7) + 1;
    }

    v66 = operator new(v65);
    v124[1] = v64;
    v125 = v65 | 0x8000000000000000;
    v124[0] = v66;
    v61 = v66;
    goto LABEL_103;
  }

  HIBYTE(v125) = v63;
  if (v63)
  {
LABEL_103:
    memmove(v61, v62, v64);
  }

  *(v64 + v61) = 0;
  v67 = v126;
  v68 = *MEMORY[0x29EDBF5A8];
  v69 = strlen(*MEMORY[0x29EDBF5A8]);
  if (v69 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v70 = v69;
  if (v69 >= 0x17)
  {
    if ((v69 | 7) == 0x17)
    {
      v71 = 25;
    }

    else
    {
      v71 = (v69 | 7) + 1;
    }

    v72 = operator new(v71);
    v126[1] = v70;
    v127 = v71 | 0x8000000000000000;
    v126[0] = v72;
    v67 = v72;
    goto LABEL_112;
  }

  HIBYTE(v127) = v69;
  if (v69)
  {
LABEL_112:
    memmove(v67, v68, v70);
  }

  *(v70 + v67) = 0;
  v73 = __p;
  v74 = *MEMORY[0x29EDBE4F0];
  v75 = strlen(*MEMORY[0x29EDBE4F0]);
  if (v75 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v76 = v75;
  if (v75 >= 0x17)
  {
    if ((v75 | 7) == 0x17)
    {
      v90 = 25;
    }

    else
    {
      v90 = (v75 | 7) + 1;
    }

    v91 = operator new(v90);
    __p[1] = v76;
    v129 = v90 | 0x8000000000000000;
    __p[0] = v91;
    v73 = v91;
  }

  else
  {
    HIBYTE(v129) = v75;
    if (!v75)
    {
      LOBYTE(__p[0]) = 0;
      v78 = (a1 + 112);
      v77 = *(a1 + 112);
      if (v77)
      {
        goto LABEL_117;
      }

LABEL_145:
      v86 = 0;
      goto LABEL_149;
    }
  }

  memmove(v73, v74, v76);
  *(v76 + v73) = 0;
  v78 = (a1 + 112);
  v77 = *(a1 + 112);
  if (!v77)
  {
    goto LABEL_145;
  }

LABEL_117:
  v79 = 0;
  do
  {
    v80 = &buf[v79];
    v81 = (v77 + 1);
    if (&buf[v79] != (v77 + 1))
    {
      v82 = v80[23];
      if (*(v77 + 31) < 0)
      {
        if (v82 >= 0)
        {
          v84 = &buf[v79];
        }

        else
        {
          v84 = *&buf[v79];
        }

        if (v82 >= 0)
        {
          v85 = v80[23];
        }

        else
        {
          v85 = *&buf[v79 + 8];
        }

        std::string::__assign_no_alias<false>(v81, v84, v85);
      }

      else if ((v80[23] & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v81, *&buf[v79], *&buf[v79 + 8]);
      }

      else
      {
        v83 = *v80;
        v77[3] = *(v80 + 2);
        *v81 = v83;
      }
    }

    v78 = *v78;
    v77 = *v77;
    v86 = v79 + 24;
    if (!v77)
    {
      break;
    }

    v87 = v79 == 240;
    v79 += 24;
  }

  while (!v87);
  if (v77)
  {
    if (v78)
    {
      v88 = *v78;
      if (*v78)
      {
        *v78 = 0;
        do
        {
          v89 = *v88;
          if (*(v88 + 31) < 0)
          {
            operator delete(v88[1]);
          }

          operator delete(v88);
          v88 = v89;
        }

        while (v89);
      }
    }

    goto LABEL_154;
  }

  if (v86 == 264)
  {
    goto LABEL_154;
  }

LABEL_149:
  v92 = operator new(0x20uLL);
  v93 = &buf[v86];
  *v92 = 0;
  v94 = (v92 + 1);
  if (*(&v109 + v86 + 7) < 0)
  {
    std::string::__init_copy_ctor_external(v94, *v93, *(v93 + 1));
  }

  else
  {
    *&v94->__r_.__value_.__l.__data_ = *v93;
    v92[3] = *(v93 + 2);
  }

  v95 = v92;
  if (v86 != 240)
  {
    v96 = &buf[v86 + 24];
    v97 = v86 - 240;
    v98 = v92;
    do
    {
      v95 = operator new(0x20uLL);
      *v95 = 0;
      v99 = (v95 + 1);
      if (v96[23] < 0)
      {
        std::string::__init_copy_ctor_external(v99, *v96, *(v96 + 1));
      }

      else
      {
        *&v99->__r_.__value_.__l.__data_ = *v96;
        v95[3] = *(v96 + 2);
      }

      *v98 = v95;
      v96 += 24;
      v98 = v95;
      v97 += 24;
    }

    while (v97);
  }

  *v95 = *v78;
  *v78 = v92;
LABEL_154:
  if (SHIBYTE(v129) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
LABEL_156:
      if ((SHIBYTE(v125) & 0x80000000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_174;
    }
  }

  else if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
    goto LABEL_156;
  }

  operator delete(v126[0]);
  if ((SHIBYTE(v125) & 0x80000000) == 0)
  {
LABEL_157:
    if ((SHIBYTE(v123) & 0x80000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_175;
  }

LABEL_174:
  operator delete(v124[0]);
  if ((SHIBYTE(v123) & 0x80000000) == 0)
  {
LABEL_158:
    if ((SHIBYTE(v121) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_176;
  }

LABEL_175:
  operator delete(v122[0]);
  if ((SHIBYTE(v121) & 0x80000000) == 0)
  {
LABEL_159:
    if ((SHIBYTE(v119) & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_177;
  }

LABEL_176:
  operator delete(v120[0]);
  if ((SHIBYTE(v119) & 0x80000000) == 0)
  {
LABEL_160:
    if ((SHIBYTE(v117) & 0x80000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_178;
  }

LABEL_177:
  operator delete(v118[0]);
  if ((SHIBYTE(v117) & 0x80000000) == 0)
  {
LABEL_161:
    if ((SHIBYTE(v115) & 0x80000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_179;
  }

LABEL_178:
  operator delete(v116[0]);
  if ((SHIBYTE(v115) & 0x80000000) == 0)
  {
LABEL_162:
    if ((SHIBYTE(v113) & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_180;
  }

LABEL_179:
  operator delete(v114[0]);
  if ((SHIBYTE(v113) & 0x80000000) == 0)
  {
LABEL_163:
    if ((SHIBYTE(v111) & 0x80000000) == 0)
    {
      goto LABEL_164;
    }

LABEL_181:
    operator delete(v110[0]);
    if ((SHIBYTE(v109) & 0x80000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_182;
  }

LABEL_180:
  operator delete(v112[0]);
  if (SHIBYTE(v111) < 0)
  {
    goto LABEL_181;
  }

LABEL_164:
  if ((SHIBYTE(v109) & 0x80000000) == 0)
  {
    goto LABEL_165;
  }

LABEL_182:
  operator delete(*buf);
LABEL_165:
  AntennaModule::initializeProperty(a1);
  if (v106)
  {
    dispatch_release(v106);
  }

  if (v105)
  {
    _Block_release(v105);
  }

  if (v104)
  {
    std::__shared_weak_count::__release_weak(v104);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_297622238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  operator delete(v72);
  if (a71 < 0)
  {
    operator delete(__p);
    if ((a69 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a69 & 0x80000000) == 0)
  {
LABEL_3:
    if (a67 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  operator delete(a68);
  if (a67 < 0)
  {
LABEL_4:
    operator delete(a66);
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  if ((a65 & 0x80000000) == 0)
  {
LABEL_5:
    if (a62 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a63);
  if (a62 < 0)
  {
LABEL_6:
    operator delete(a57);
    if ((a56 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  if ((a56 & 0x80000000) == 0)
  {
LABEL_7:
    if (a50 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a51);
  if (a50 < 0)
  {
LABEL_8:
    operator delete(a45);
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  if ((a44 & 0x80000000) == 0)
  {
LABEL_9:
    if (a38 < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a39);
  if (a38 < 0)
  {
LABEL_10:
    operator delete(a33);
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  if ((a32 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a26 & 0x80000000) == 0)
    {
LABEL_24:
      dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(&a19);
      if (a18)
      {
        std::__shared_weak_count::__release_weak(a18);
      }

      std::__shared_weak_count::__release_weak(v71);
      _Unwind_Resume(a1);
    }

LABEL_23:
    operator delete(a21);
    goto LABEL_24;
  }

LABEL_22:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  goto LABEL_23;
}

void sub_297622248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a71 < 0)
  {
    operator delete(a70);
    if ((a69 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a69 & 0x80000000) == 0)
  {
LABEL_3:
    if (a67 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  operator delete(a68);
  if (a67 < 0)
  {
LABEL_4:
    operator delete(a66);
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  if ((a65 & 0x80000000) == 0)
  {
LABEL_5:
    if (a62 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a63);
  if (a62 < 0)
  {
LABEL_6:
    operator delete(a57);
    if ((a56 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  if ((a56 & 0x80000000) == 0)
  {
LABEL_7:
    if (a50 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a51);
  if (a50 < 0)
  {
LABEL_8:
    operator delete(a45);
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  if ((a44 & 0x80000000) == 0)
  {
LABEL_9:
    if (a38 < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a39);
  if (a38 < 0)
  {
LABEL_10:
    operator delete(a33);
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  if ((a32 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a26 & 0x80000000) == 0)
    {
LABEL_24:
      dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(&a19);
      if (a18)
      {
        std::__shared_weak_count::__release_weak(a18);
      }

      std::__shared_weak_count::__release_weak(v71);
      _Unwind_Resume(a1);
    }

LABEL_23:
    operator delete(a21);
    goto LABEL_24;
  }

LABEL_22:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  goto LABEL_23;
}

void sub_2976222C8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2976222D0);
  }

  JUMPOUT(0x297622444);
}

void sub_297622454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  while (1)
  {
    v22 = *(v21 - 1);
    v21 -= 3;
    if (v22 < 0)
    {
      operator delete(*v21);
    }

    if (v21 == &a21)
    {
      JUMPOUT(0x297622418);
    }
  }
}

void ___ZZN13AntennaModule4initEvENK3__0clEv_block_invoke(void *a1, xpc_object_t *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v7)
        {
          return;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          return;
        }
      }

      AntennaModule::processCallback(v5, a2);
    }
  }
}

void std::__shared_ptr_pointer<antenna::Service *,std::shared_ptr<antenna::Service>::__shared_ptr_default_delete<antenna::Service,antenna::Service>,std::allocator<antenna::Service>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<antenna::Service *,std::shared_ptr<antenna::Service>::__shared_ptr_default_delete<antenna::Service,antenna::Service>,std::allocator<antenna::Service>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[1];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v3 = v1;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v1 = v3;
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<antenna::Service *,std::shared_ptr<antenna::Service>::__shared_ptr_default_delete<antenna::Service,antenna::Service>,std::allocator<antenna::Service>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002976A6057)
  {
    if (((v2 & 0x80000002976A6057 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A6057))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A6057 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E4CF38;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrIK13AntennaModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrIK13AntennaModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  AntennaModule::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_297622964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  AntennaModule::registerEventHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_297622A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1 + 1);
  v5 = 3760250880;
  if (MEMORY[0x29C272BA0](*v4) == MEMORY[0x29EDCAA00])
  {
    v6 = *(v3 + 120);
    if (v6)
    {
      v7 = *(v3 + 104);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        xpc::object::to_string(__p, (v2 + 1));
        if (v16 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 136315138;
        v18 = v10;
        _os_log_debug_impl(&dword_297476000, v7, OS_LOG_TYPE_DEBUG, "#D Received Audio State: %s", buf, 0xCu);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        v6 = *(v3 + 120);
        v8 = *v4;
        if (*v4)
        {
LABEL_5:
          xpc_retain(v8);
          v9 = *v6;
          if (!*v6)
          {
            goto LABEL_18;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v8 = *v4;
        if (*v4)
        {
          goto LABEL_5;
        }
      }

      v8 = xpc_null_create();
      v9 = *v6;
      if (!*v6)
      {
LABEL_18:
        xpc_release(v8);
        v5 = 0;
        goto LABEL_19;
      }

LABEL_14:
      __p[0] = v8;
      if (v8)
      {
        xpc_retain(v8);
        v11 = v8;
      }

      else
      {
        v11 = xpc_null_create();
        __p[0] = v11;
      }

      antenna::Service::Internal::setAudioState(v9, __p);
      xpc_release(v11);
      goto LABEL_18;
    }
  }

LABEL_19:
  v12 = v2[2];
  __p[0] = xpc_null_create();
  (*(v12 + 16))(v12, v5, __p);
  xpc_release(__p[0]);
  v13 = v2[2];
  if (v13)
  {
    _Block_release(v13);
  }

  xpc_release(*v4);
  operator delete(v2);
  v14 = a1[2];
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  operator delete(a1);
}

void sub_297622CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = 3760250880;
  if (MEMORY[0x29C272BA0]((*a1)[1]) == MEMORY[0x29EDCAA00])
  {
    v5 = *(v3 + 120);
    if (v5)
    {
      v6 = v2[1];
      v10 = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        v6 = xpc_null_create();
        v10 = v6;
      }

      antenna::Service::setMotionThresholds(v5, &v10);
      xpc_release(v6);
      v4 = 0;
      v10 = 0;
    }
  }

  v7 = v2[2];
  object = xpc_null_create();
  (*(v7 + 16))(v7, v4, &object);
  xpc_release(object);
  v8 = v2[2];
  if (v8)
  {
    _Block_release(v8);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_297622E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(v12);
  _ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(xpc_object_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *a1 + 1;
  v5 = 3760250880;
  if (MEMORY[0x29C272BA0](*v4) == MEMORY[0x29EDCAA00])
  {
    v6 = *(v3 + 15);
    if (v6)
    {
      if (*v6)
      {
        antenna::Service::Internal::antennaSetProperty(*v6, v2 + 1);
      }

      AntennaModule::setProperty_sync(v3, v2 + 1);
      v5 = 0;
    }
  }

  v7 = v2[2];
  object = xpc_null_create();
  v7[2](v7, v5, &object);
  xpc_release(object);
  v8 = v2[2];
  if (v8)
  {
    _Block_release(v8);
  }

  xpc_release(*v4);
  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_297623084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v11 = -534716416;
  v4 = xpc_null_create();
  v10 = v4;
  if (MEMORY[0x29C272BA0](v2[1]) == MEMORY[0x29EDCAA00])
  {
    v5 = *(v3 + 120);
    if (v5)
    {
      antenna::Service::antennaGetProperty(v5, v2 + 1, &object);
      v6 = object;
      object = xpc_null_create();
      v10 = v6;
      xpc_release(v4);
      xpc_release(object);
      v11 = 0;
    }
  }

  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>(v2 + 2, &v11, &v10);
  xpc_release(v10);
  v7 = v2[2];
  if (v7)
  {
    _Block_release(v7);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void sub_297623250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a14, uint64_t a15)
{
  xpc_release(v13);
  _ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4CF78;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4CF78;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4CF78;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4CF78;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13AntennaModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13AntennaModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13AntennaModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13AntennaModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 120);
  if (v3 && *v3)
  {
    antenna::Service::Internal::dumpState(*v3);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4CFF8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4CFF8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4CFF8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4CFF8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13AntennaModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13AntennaModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13AntennaModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13AntennaModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 120);
  if (v3 && *v3)
  {
    antenna::Service::Internal::dumpState(*v3);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4D078;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4D078;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4D078;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4D078;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    v19 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2] || MEMORY[0x29C272BA0](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_25;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      if (v5)
      {
        xpc_retain(v5);
        v10 = v5;
        v11 = v7[10];
        if (!v11)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[10];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = v7[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v13;
      v15 = operator new(0x18uLL);
      *v15 = v7;
      v15[1] = v4;
      v15[2] = v10;
      v16 = xpc_null_create();
      v17 = v7[11];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = operator new(0x18uLL);
      *v18 = v15;
      v18[1] = v12;
      v18[2] = v14;
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      xpc_release(v16);
      v9 = v19;
      if (v19)
      {
LABEL_25:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_297624054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13AntennaModule26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13AntennaModule26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13AntennaModule26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13AntennaModule26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (!*(v3 + 120))
  {
    goto LABEL_46;
  }

  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v2[2], *MEMORY[0x29EDBEAF8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(object);
  v5 = *MEMORY[0x29EDBEFB8];
  v6 = strlen(*MEMORY[0x29EDBEFB8]);
  v7 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v6 == __s1[1])
    {
      if (v6 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v5, v6))
      {
        goto LABEL_37;
      }
    }
  }

  else if (v6 == SHIBYTE(__s1[2]) && !memcmp(__s1, v5, v6))
  {
LABEL_37:
    v16 = **(v3 + 120);
    if (v16)
    {
      antenna::Service::Internal::startService(v16);
    }

    goto LABEL_44;
  }

  v8 = *MEMORY[0x29EDBF210];
  v9 = strlen(*MEMORY[0x29EDBF210]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v9 == __s1[1])
    {
      if (v9 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v8, v9))
      {
        goto LABEL_42;
      }
    }
  }

  else if (v9 == v7 && !memcmp(__s1, v8, v9))
  {
    goto LABEL_42;
  }

  v10 = *MEMORY[0x29EDBF420];
  v11 = strlen(*MEMORY[0x29EDBF420]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v11 == __s1[1])
    {
      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v10, v11))
      {
        goto LABEL_42;
      }
    }
  }

  else if (v11 == v7 && !memcmp(__s1, v10, v11))
  {
    goto LABEL_42;
  }

  v12 = *MEMORY[0x29EDBEB58];
  v13 = strlen(*MEMORY[0x29EDBEB58]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v13 == __s1[1])
    {
      if (v13 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v12, v13))
      {
        goto LABEL_42;
      }
    }
  }

  else if (v13 == v7 && !memcmp(__s1, v12, v13))
  {
    goto LABEL_42;
  }

  v14 = *MEMORY[0x29EDBEFC0];
  v15 = strlen(*MEMORY[0x29EDBEFC0]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v15 != __s1[1])
    {
      goto LABEL_44;
    }

    if (v15 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(__s1[0], v14, v15))
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v15 == v7 && !memcmp(__s1, v14, v15))
  {
LABEL_42:
    v17 = **(v3 + 120);
    if (v17)
    {
      antenna::Service::Internal::stopService(v17);
    }
  }

LABEL_44:
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

LABEL_46:
  xpc_release(v2[2]);
  v2[2] = 0;
  v18 = v2[1];
  if (v18)
  {
    dispatch_group_leave(v18);
    v19 = v2[1];
    if (v19)
    {
      dispatch_release(v19);
    }
  }

  operator delete(v2);
  v20 = a1[2];
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  operator delete(a1);
}

void sub_297624470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4D0F8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4D0F8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4D0F8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4D0F8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        if (v4)
        {
          dispatch_retain(v4);
          dispatch_group_enter(v4);
        }

        if (v5)
        {
          xpc_retain(v5);
          v10 = v5;
          v11 = v7[10];
          if (!v11)
          {
LABEL_21:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v10 = xpc_null_create();
          v11 = v7[10];
          if (!v11)
          {
            goto LABEL_21;
          }
        }

        v12 = v7[9];
        v13 = std::__shared_weak_count::lock(v11);
        if (!v13)
        {
          goto LABEL_21;
        }

        v14 = v13;
        v15 = operator new(0x18uLL);
        *v15 = v7;
        v15[1] = v4;
        v15[2] = v10;
        v16 = xpc_null_create();
        v17 = v7[11];
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = operator new(0x18uLL);
        *v18 = v15;
        v18[1] = v12;
        v18[2] = v14;
        dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        xpc_release(v16);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13AntennaModule26registerEventHandlers_syncEvE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13AntennaModule26registerEventHandlers_syncEvE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13AntennaModule26registerEventHandlers_syncEvE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13AntennaModule26registerEventHandlers_syncEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 120))
  {
    if (MEMORY[0x29C272BA0](v2[2]) == MEMORY[0x29EDCAA00])
    {
      value = xpc_dictionary_get_value(v2[2], *MEMORY[0x29EDBE5A8]);
      *buf = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v7 = xpc::dyn_cast_or_default(buf, 0);
      xpc_release(*buf);
      v8 = *(v3 + 120);
      if (v7)
      {
        antenna::Service::callActive(v8);
      }

      else
      {
        antenna::Service::callInactive(v8);
      }
    }

    else
    {
      v4 = *(v3 + 104);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v5 = "No input is given for voice call active state";
LABEL_7:
        _os_log_error_impl(&dword_297476000, v4, OS_LOG_TYPE_ERROR, v5, buf, 2u);
      }
    }
  }

  else
  {
    v4 = *(v3 + 104);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "Antenna Service has not created yet.";
      goto LABEL_7;
    }
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v9 = v2[1];
  if (v9)
  {
    dispatch_group_leave(v9);
    v10 = v2[1];
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

void sub_297624AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::sleep(dispatch::group_session)::$_0>(AntennaModule::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 120);
  if (v3 && *v3)
  {
    antenna::Service::Internal::enterLowPower(*v3);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::wake(dispatch::group_session)::$_0>(AntennaModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 120);
  if (v3 && *v3)
  {
    antenna::Service::Internal::exitLowPower(*v3);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::initializeProperty(void)::$_0>(AntennaModule::initializeProperty(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::initializeProperty(void)::$_0,dispatch_queue_s *::default_delete<AntennaModule::initializeProperty(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  AntennaModule::initializeProperty_sync(**a1, *a1 + 8);
  if (*(v2 + 31) < 0)
  {
    operator delete(v2[1]);
  }

  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_297624DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  _ZNSt3__110unique_ptrIZZN11FSModuleICE26registerEventHandlers_syncEvEUb_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *ABMProperties::create_default_global(ABMProperties *this)
{
  v2 = operator new(0x18uLL);
  MEMORY[0x29C270EE0](v2, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
  *this = v2;
  result = operator new(0x20uLL);
  *result = &unk_2A1E43EE0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  *(this + 1) = result;
  return result;
}

void sub_297624E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<ABMProperties>::operator=[abi:ne200100](uint64_t a1)
{
  v1 = *a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = *(&xmmword_2A18CAF18 + 1);
  xmmword_2A18CAF18 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __cxx_global_var_init_22()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_23()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_297476000);
  }

  return result;
}

void LogTracker::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xA8uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  LogTracker::LogTracker(v4, v8);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<LogTracker>::shared_ptr[abi:ne200100]<LogTracker,std::shared_ptr<LogTracker> ctu::SharedSynchronizable<LogTracker>::make_shared_ptr<LogTracker>(LogTracker*)::{lambda(LogTracker*)#1},0>(a2, v5);
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_297625070(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void *LogTracker::LogTracker(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E500C0;
  a1[1] = v3;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    a1[7] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E4A9F0;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    a1[3] = 0;
    a1[4] = 0;
    a1[7] = 0;
    a1[8] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    *a1 = &unk_2A1E4A9F0;
  }

  *a1 = &unk_2A1E4D178;
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", "logtracker.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("logtracker.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v6);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v6;
  if (v6)
  {
    dispatch_retain(v6);
    a1[12] = 0;
    dispatch_release(v6);
  }

  else
  {
    a1[12] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 13, v9);
  MEMORY[0x29C270D60](v9);
  ctu::OsLogContext::~OsLogContext(v8);
  *a1 = &unk_2A1E4D178;
  a1[16] = 0;
  a1[17] = 0;
  a1[15] = 0;
  a1[14] = a1 + 15;
  a1[18] = 0;
  a1[19] = 0;
  return a1;
}

void LogTracker::~LogTracker(LogTracker *this)
{
  *this = &unk_2A1E4D178;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v14, 2u);
  }

  v4 = *(this + 19);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    dispatch_release(v5);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::destroy(*(this + 15));
  MEMORY[0x29C270D60](v2);
  v6 = *(this + 12);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 3);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(this + 3);
    }

    *(this + 4) = v9;
    operator delete(v11);
  }

  v13 = *(this + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

{
  LogTracker::~LogTracker(this);

  operator delete(v1);
}

_WORD *LogTracker::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v2 = operator new(2uLL);
  *a1 = v2;
  *v2 = 256;
  result = v2 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void LogTracker::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<LogTracker>::execute_wrapped<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<LogTracker>::execute_wrapped<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void LogTracker::registerCommandHandlers_sync(uint64_t a1, NSObject **a2)
{
  v145 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_debug_impl(&dword_297476000, v4, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &buf, 2u);
    v5 = *(a1 + 80);
    if (!v5)
    {
LABEL_239:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      goto LABEL_239;
    }
  }

  v6 = *(a1 + 72);
  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_239;
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  LogTracker::checkLoggingVersion_sync(a1);
  v9 = dispatch_group_create();
  v10 = *(a1 + 136);
  *(a1 + 136) = v9;
  if (v10)
  {
    dispatch_release(v10);
  }

  v12 = dispatch_group_create();
  v13 = *(a1 + 152);
  *(a1 + 152) = v12;
  if (v13)
  {
    dispatch_release(v13);
  }

  *(a1 + 160) = 0;
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], v11) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v14) || prop::tracesettings::enabled(*MEMORY[0x29EDBE690], v14))
  {
    v141 = 0xAAAAAAAAAAAAAAAALL;
    v142 = 0xAAAAAAAAAAAAAAAALL;
    abm::HelperClient::create(&v141, "tracing.helper", v14);
    v15 = *(a1 + 104);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297476000, v15, OS_LOG_TYPE_DEFAULT, "#I ABM is initializing; reinit traces in helper", &buf, 2u);
    }

    v139 = 0xAAAAAAAAAAAAAAAALL;
    v140 = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN10LogTracker28registerCommandHandlers_syncEN8dispatch13group_sessionE_block_invoke;
    aBlock[3] = &__block_descriptor_64_e8_40c30_ZTSN8dispatch13group_sessionE48c46_ZTSNSt3__110shared_ptrIN3abm12HelperClientEEE_e147_v48__0_Result_i_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1____8_dict__object__v__40l;
    v16 = *a2;
    aBlock[4] = a1;
    v136 = v16;
    if (v16)
    {
      dispatch_retain(v16);
      dispatch_group_enter(v136);
    }

    v137 = v141;
    v138 = v142;
    if (v142)
    {
      atomic_fetch_add_explicit((v142 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = _Block_copy(aBlock);
    v18 = *(a1 + 88);
    if (v18)
    {
      dispatch_retain(*(a1 + 88));
    }

    v139 = v17;
    v140 = v18;
    v19 = xpc_dictionary_create(0, 0, 0);
    if (v19 || (v19 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v19) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v19);
        v20 = v19;
      }

      else
      {
        v20 = xpc_null_create();
      }
    }

    else
    {
      v20 = xpc_null_create();
      v19 = 0;
    }

    xpc_release(v19);
    v21 = xpc_int64_create(5000);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    xpc_dictionary_set_value(v20, *MEMORY[0x29EDBD2D8], v21);
    v22 = xpc_null_create();
    xpc_release(v21);
    xpc_release(v22);
    v23 = *MEMORY[0x29EDBE590];
    v24 = strlen(*MEMORY[0x29EDBE590]);
    if (v24 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v25 = v24;
    if (v24 >= 0x17)
    {
      if ((v24 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v24 | 7) + 1;
      }

      p_dst = operator new(v27);
      v134 = v27 | 0x8000000000000000;
      __dst = p_dst;
      v133 = v25;
    }

    else
    {
      HIBYTE(v134) = v24;
      p_dst = &__dst;
      if (!v24)
      {
LABEL_38:
        *(p_dst + v25) = 0;
        memset(&buf, 0, sizeof(buf));
        if (prop::bbtrace::get(&__dst, &buf))
        {
          v143 = -1431655766;
          v28 = util::convert<int>(&buf, &v143, 0);
          if (v143 == 4)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_46:
            if (SHIBYTE(v134) < 0)
            {
              operator delete(__dst);
            }

            v30 = *MEMORY[0x29EDBE880];
            v31 = strlen(*MEMORY[0x29EDBE880]);
            if (v31 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v32 = v31;
            if (v31 >= 0x17)
            {
              if ((v31 | 7) == 0x17)
              {
                v34 = 25;
              }

              else
              {
                v34 = (v31 | 7) + 1;
              }

              v33 = operator new(v34);
              v134 = v34 | 0x8000000000000000;
              __dst = v33;
              v133 = v32;
            }

            else
            {
              HIBYTE(v134) = v31;
              v33 = &__dst;
              if (!v31)
              {
LABEL_57:
                *(v33 + v32) = 0;
                memset(&buf, 0, sizeof(buf));
                if (prop::bbtrace::get(&__dst, &buf))
                {
                  v143 = -1431655766;
                  v35 = util::convert<int>(&buf, &v143, 0);
                  if (v143 == 1)
                  {
                    v36 = v35;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_70:
                    operator delete(buf.__r_.__value_.__l.__data_);
                    if (SHIBYTE(v134) < 0)
                    {
LABEL_71:
                      operator delete(__dst);
                      if ((v29 & v36) != 1)
                      {
LABEL_72:
                        v123 = v20;
                        if (v20)
                        {
                          xpc_retain(v20);
                          v38 = v139;
                          if (!v139)
                          {
                            goto LABEL_83;
                          }
                        }

                        else
                        {
                          v123 = xpc_null_create();
                          v38 = v139;
                          if (!v139)
                          {
LABEL_83:
                            v121 = v38;
                            object = v140;
                            if (v140)
                            {
                              dispatch_retain(v140);
                            }

                            abm::HelperClient::perform();
                            if (object)
                            {
                              dispatch_release(object);
                            }

                            if (v121)
                            {
                              _Block_release(v121);
                            }

                            xpc_release(v123);
                            v123 = 0;
LABEL_107:
                            xpc_release(v20);
                            if (v140)
                            {
                              dispatch_release(v140);
                            }

                            if (v139)
                            {
                              _Block_release(v139);
                            }

                            v43 = v138;
                            if (v138 && !atomic_fetch_add(&v138->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v43->__on_zero_shared)(v43);
                              std::__shared_weak_count::__release_weak(v43);
                            }

                            if (v136)
                            {
                              dispatch_group_leave(v136);
                              if (v136)
                              {
                                dispatch_release(v136);
                              }
                            }

                            v44 = v142;
                            if (v142 && !atomic_fetch_add((v142 + 8), 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v44->__on_zero_shared)(v44);
                              std::__shared_weak_count::__release_weak(v44);
                            }

                            goto LABEL_120;
                          }
                        }

                        v38 = _Block_copy(v38);
                        goto LABEL_83;
                      }

LABEL_66:
                      v37 = *(a1 + 104);
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                      {
                        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                        _os_log_impl(&dword_297476000, v37, OS_LOG_TYPE_DEFAULT, "#N Cellular Logging was detected before initiating LogTracker. The service needs to be paused in boot-up.", &buf, 2u);
                      }

                      v131 = v20;
                      if (v20)
                      {
                        xpc_retain(v20);
                      }

                      else
                      {
                        v131 = xpc_null_create();
                      }

                      v124[0] = MEMORY[0x29EDCA5F8];
                      v124[1] = 3321888768;
                      v124[2] = ___ZN10LogTracker28registerCommandHandlers_syncEN8dispatch13group_sessionE_block_invoke_4;
                      v124[3] = &__block_descriptor_72_e8_32c46_ZTSNSt3__110shared_ptrIN3abm12HelperClientEEE48c15_ZTSN3xpc4dictE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEE_e147_v48__0_Result_i_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1____8_dict__object__v__40l;
                      v124[4] = v141;
                      v125 = v142;
                      if (v142)
                      {
                        atomic_fetch_add_explicit((v142 + 8), 1uLL, memory_order_relaxed);
                      }

                      v126 = v20;
                      if (v20)
                      {
                        xpc_retain(v20);
                        v39 = v139;
                        if (!v139)
                        {
                          goto LABEL_92;
                        }
                      }

                      else
                      {
                        v126 = xpc_null_create();
                        v39 = v139;
                        if (!v139)
                        {
LABEL_92:
                          v127 = v39;
                          v128 = v140;
                          if (v140)
                          {
                            dispatch_retain(v140);
                          }

                          v40 = _Block_copy(v124);
                          v41 = *(a1 + 88);
                          if (v41)
                          {
                            dispatch_retain(*(a1 + 88));
                          }

                          v129 = v40;
                          v130 = v41;
                          abm::HelperClient::perform();
                          if (v130)
                          {
                            dispatch_release(v130);
                          }

                          if (v129)
                          {
                            _Block_release(v129);
                          }

                          xpc_release(v131);
                          v131 = 0;
                          if (v128)
                          {
                            dispatch_release(v128);
                          }

                          if (v127)
                          {
                            _Block_release(v127);
                          }

                          xpc_release(v126);
                          v126 = 0;
                          v42 = v125;
                          if (v125 && !atomic_fetch_add(&v125->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v42->__on_zero_shared)(v42);
                            std::__shared_weak_count::__release_weak(v42);
                          }

                          goto LABEL_107;
                        }
                      }

                      v39 = _Block_copy(v39);
                      goto LABEL_92;
                    }

LABEL_65:
                    if ((v29 & v36) != 1)
                    {
                      goto LABEL_72;
                    }

                    goto LABEL_66;
                  }
                }

                else
                {
                  v36 = 0;
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_70;
                  }
                }

                if (SHIBYTE(v134) < 0)
                {
                  goto LABEL_71;
                }

                goto LABEL_65;
              }
            }

            memmove(v33, v30, v32);
            goto LABEL_57;
          }
        }

        else
        {
          v29 = 0;
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }
        }

        operator delete(buf.__r_.__value_.__l.__data_);
        goto LABEL_46;
      }
    }

    memmove(p_dst, v23, v25);
    goto LABEL_38;
  }

LABEL_120:
  v45 = MEMORY[0x29EDBFC08];
  strlen(*MEMORY[0x29EDBFC08]);
  ctu::fs::create_directory();
  v46 = MEMORY[0x29EDBFC20];
  v47 = *MEMORY[0x29EDBFC20];
  v48 = strlen(*MEMORY[0x29EDBFC20]);
  if (v48 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v49 = v48;
  if (v48 >= 0x17)
  {
    if ((v48 | 7) == 0x17)
    {
      v51 = 25;
    }

    else
    {
      v51 = (v48 | 7) + 1;
    }

    v50 = operator new(v51);
    v120 = v51 | 0x8000000000000000;
    v119[0] = v50;
    v119[1] = v49;
    goto LABEL_128;
  }

  HIBYTE(v120) = v48;
  v50 = v119;
  if (v48)
  {
LABEL_128:
    memmove(v50, v47, v49);
  }

  *(v49 + v50) = 0;
  v52 = *v45;
  v53 = strlen(*v45);
  if (v53 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v54 = v53;
  if (v53 >= 0x17)
  {
    if ((v53 | 7) == 0x17)
    {
      v56 = 25;
    }

    else
    {
      v56 = (v53 | 7) + 1;
    }

    v55 = operator new(v56);
    v118 = v56 | 0x8000000000000000;
    __p[0] = v55;
    __p[1] = v54;
  }

  else
  {
    HIBYTE(v118) = v53;
    v55 = __p;
    if (!v53)
    {
      goto LABEL_138;
    }
  }

  memmove(v55, v52, v54);
LABEL_138:
  *(v54 + v55) = 0;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v115, "[^\\.].*", 0);
  util::moveDirContent(v119, __p, 1u, 1, &v115);
  v57 = v116;
  if (!v116 || atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(&v115);
    if ((SHIBYTE(v118) & 0x80000000) == 0)
    {
      goto LABEL_141;
    }

LABEL_236:
    operator delete(__p[0]);
    if ((SHIBYTE(v120) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_237;
  }

  (v57->__on_zero_shared)(v57);
  std::__shared_weak_count::__release_weak(v57);
  std::locale::~locale(&v115);
  if (SHIBYTE(v118) < 0)
  {
    goto LABEL_236;
  }

LABEL_141:
  if ((SHIBYTE(v120) & 0x80000000) == 0)
  {
    goto LABEL_142;
  }

LABEL_237:
  operator delete(v119[0]);
LABEL_142:
  strlen(*v46);
  ctu::fs::create_directory();
  v58 = *(a1 + 104);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = *v46;
    v60 = *v45;
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v59;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v60;