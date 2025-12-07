void sub_1006A9AA8(_DWORD *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v5 = sub_10000C798(a1, a2);
  if ((*(*v5 + 56))(v5, 2))
  {
    memset(&v19, 0, sizeof(v19));
    sub_100007E30(&v19, "\r\n");
    std::string::append(&v19, "+CPBS: ");
    v6 = a1[3];
    if (v6 <= 1)
    {
      if (!v6)
      {
        v10 = "(SM,ON,ME,DC,MC,RC)";
LABEL_20:
        std::string::append(&v19, v10);
        goto LABEL_21;
      }

      if (v6 == 1)
      {
        std::string::append(&v19, "");
        v7 = &off_100B06EA8;
        v8 = 15;
        while (a1[6] != *(v7 - 2))
        {
          v7 += 2;
          if (!--v8)
          {
            goto LABEL_19;
          }
        }

        std::string::append(&v19, *v7);
LABEL_19:
        std::string::append(&v19, ",");
        v21 = 0;
        *__str = 0;
        snprintf(__str, 0xCuLL, "%d", a1[7]);
        std::string::append(&v19, __str);
        std::string::append(&v19, ",");
        v15 = a1[7] + 100;
        v10 = __str;
        snprintf(__str, 0xCuLL, "%d", v15);
        goto LABEL_20;
      }

LABEL_21:
      sub_100007E30(&__p, "\r\n");
      if ((v18 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v18 & 0x80u) == 0)
      {
        v12 = v18;
      }

      else
      {
        v12 = v17;
      }

      std::string::append(&v19, p_p, v12);
      if (v18 < 0)
      {
        operator delete(__p);
      }

      sub_100007E30(&__p, "\r\nOK\r\n");
      if ((v18 & 0x80u) == 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p;
      }

      if ((v18 & 0x80u) == 0)
      {
        v14 = v18;
      }

      else
      {
        v14 = v17;
      }

      std::string::append(&v19, v13, v14);
      if (v18 < 0)
      {
        operator delete(__p);
      }

      *a3 = v19;
      memset(&v19, 0, sizeof(v19));
      goto LABEL_42;
    }

    if (v6 == 2)
    {
      if (a1[6])
      {
        v9 = "\r\nOK\r\n";
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
        {
          sub_10085E358();
        }

        v9 = "\r\n+CME ERROR: 22\r\n";
      }
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_21;
      }

      v9 = "\r\nERROR\r\n";
    }

    sub_100007E30(a3, v9);
LABEL_42:
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    return;
  }

  sub_100007E30(a3, "\r\nERROR\r\n");
}

void sub_1006A9DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A9DEC(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  *(a1 + 8) = 14;
  *(a1 + 12) = a3;
  *a1 = off_100B06FD0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0u;
  v6 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  v7 = sub_10000C798(a1, a2);
  if (((*(*v7 + 56))(v7, 2) & 1) != 0 && *(a1 + 12) == 2)
  {
    v14 = 0;
    *__dst = 0;
    strlcpy(__dst, a4, 0xAuLL);
    HIBYTE(v14) = 0;
    v8 = strtok(__dst, ",");
    if (v8)
    {
      *v6 = atoi(v8);
      v9 = strtok(0, ",");
      if (!v9)
      {
        v11 = *v6;
        goto LABEL_8;
      }

      v10 = atoi(v9);
      v11 = *(a1 + 24);
      *(a1 + 28) = v10;
      if (v10 < v11)
      {
        *v6 = v10;
LABEL_8:
        *(a1 + 28) = v11;
      }
    }
  }

  return a1;
}

void sub_1006A9F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = v10 + 40;
  sub_1006AD258(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A9F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C798(a1, a2);
  if (!(*(*v4 + 56))(v4, 2))
  {
    return 0;
  }

  v5 = *(a1 + 12);
  if (v5 != 2)
  {
    if (!v5)
    {
      v6 = *(a1 + 16);

      return sub_1006AE714(a2, v6, (a1 + 24), (a1 + 28), (a1 + 32), (a1 + 36));
    }

    return 0;
  }

  v8 = *(a1 + 24);
  v9 = *(a1 + 28);
  if (v9 - v8 > 0x32)
  {
    return 0;
  }

  v10 = *(a1 + 16);

  return sub_1006AE898(a2, v10, v8, v9, (a1 + 40));
}

void *sub_1006AA030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v6 = sub_10000C798(a1, a2);
  if ((*(*v6 + 56))(v6, 2))
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    memset(v69, 0, sizeof(v69));
    v7 = sub_100008760(&v68);
    v8 = *(a1 + 12);
    if (v8 <= 1)
    {
      if (!v8)
      {
        if (*(a1 + 28))
        {
          sub_100007E30(v64, "\r\n");
          if (SHIBYTE(v64[2]) >= 0)
          {
            v10 = v64;
          }

          else
          {
            LODWORD(v10) = v64[0];
          }

          if (SHIBYTE(v64[2]) >= 0)
          {
            v11 = HIBYTE(v64[2]);
          }

          else
          {
            v11 = v64[1];
          }

          v12 = sub_100007774(&v68, v10, v11);
          sub_100007774(v12, "+CPBR: (", 8);
          v13 = std::ostream::operator<<();
          sub_100007774(v13, "-", 1);
          v14 = std::ostream::operator<<();
          sub_100007774(v14, "),", 2);
          v15 = std::ostream::operator<<();
          sub_100007774(v15, ",", 1);
          v16 = std::ostream::operator<<();
          sub_100007E30(&__p, "\r\n");
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            LODWORD(p_p) = __p.__r_.__value_.__l.__data_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v18 = __p.__r_.__value_.__r.__words[1];
          }
        }

        else
        {
          sub_100007E30(v64, "\r\n");
          if (SHIBYTE(v64[2]) >= 0)
          {
            v56 = v64;
          }

          else
          {
            LODWORD(v56) = v64[0];
          }

          if (SHIBYTE(v64[2]) >= 0)
          {
            v57 = HIBYTE(v64[2]);
          }

          else
          {
            v57 = v64[1];
          }

          v58 = sub_100007774(&v68, v56, v57);
          v16 = sub_100007774(v58, "+CPBR: (1-1),20,20", 18);
          sub_100007E30(&__p, "\r\n");
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            LODWORD(p_p) = __p.__r_.__value_.__l.__data_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v18 = __p.__r_.__value_.__r.__words[1];
          }
        }

        sub_100007774(v16, p_p, v18);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64[2]) < 0)
        {
          operator delete(v64[0]);
        }

        goto LABEL_198;
      }

      if (v8 != 1)
      {
LABEL_198:
        sub_100007E30(v64, "\r\nOK\r\n");
        if (SHIBYTE(v64[2]) >= 0)
        {
          v59 = v64;
        }

        else
        {
          LODWORD(v59) = v64[0];
        }

        if (SHIBYTE(v64[2]) >= 0)
        {
          v60 = HIBYTE(v64[2]);
        }

        else
        {
          v60 = v64[1];
        }

        sub_100007774(&v68, v59, v60);
        if (SHIBYTE(v64[2]) < 0)
        {
          operator delete(v64[0]);
        }

        std::stringbuf::str();
        goto LABEL_207;
      }

LABEL_26:
      sub_100007E30(a3, "\r\nERROR\r\n");
LABEL_207:
      if (SHIBYTE(v71) < 0)
      {
        operator delete(*(&v70 + 1));
      }

      std::locale::~locale(v69);
      std::ostream::~ostream();
      return std::ios::~ios();
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_198;
      }

      goto LABEL_26;
    }

    if ((*(a1 + 28) - *(a1 + 24)) > 0x32)
    {
      goto LABEL_26;
    }

    v62 = sub_1006A6460(v7, v3);
    v66 = 0;
    if (sub_100541900(v3, &v66))
    {
      v19 = sub_100541720(v3);
      v20 = v66;
      if (v19)
      {
        v20 = v66 - 2;
        v66 -= 2;
      }

      *(v62 + 16) = v20;
    }

    v21 = *(a1 + 40);
    if (*(a1 + 48) == v21)
    {
      if (v62)
      {
        goto LABEL_197;
      }

      goto LABEL_198;
    }

    v22 = 0;
    v61 = v3;
LABEL_33:
    v65 = 0;
    memset(v64, 0, sizeof(v64));
    v23 = v21 + 72 * v22;
    LODWORD(v64[0]) = *v23;
    if (*(v23 + 31) < 0)
    {
      sub_100008904(&v64[1], *(v23 + 8), *(v23 + 16));
    }

    else
    {
      v24 = *(v23 + 8);
      v64[3] = *(v23 + 24);
      *&v64[1] = v24;
    }

    LODWORD(v64[4]) = *(v23 + 32);
    if (*(v23 + 63) < 0)
    {
      sub_100008904(&v64[5], *(v23 + 40), *(v23 + 48));
    }

    else
    {
      v25 = *(v23 + 40);
      v64[7] = *(v23 + 56);
      *&v64[5] = v25;
    }

    LODWORD(v65) = *(v23 + 64);
    sub_100007E30(&__p, "\r\n");
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__p;
    }

    else
    {
      LODWORD(v26) = __p.__r_.__value_.__l.__data_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = __p.__r_.__value_.__r.__words[1];
    }

    v28 = sub_100007774(&v68, v26, v27);
    sub_100007774(v28, "+CPBR: ", 7);
    v29 = std::ostream::operator<<();
    sub_100007774(v29, ",", 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (LODWORD(v64[4]) == 2)
    {
      if (SHIBYTE(v64[3]) >= 0)
      {
        v30 = &v64[1];
      }

      else
      {
        LODWORD(v30) = v64[1];
      }

      if (SHIBYTE(v64[3]) >= 0)
      {
        v31 = HIBYTE(v64[3]);
      }

      else
      {
        v31 = v64[2];
      }

      sub_100007774(&v68, v30, v31);
      goto LABEL_126;
    }

    memset(&__p, 0, sizeof(__p));
    if (SHIBYTE(v64[3]) < 0)
    {
      sub_100008904(&__p, v64[1], v64[2]);
    }

    else
    {
      __p = *&v64[1];
    }

    for (i = 0; ; i = v33 + 1)
    {
      v33 = i;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        size = __p.__r_.__value_.__l.__size_;
        v34 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__l.__size_ <= i)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (i >= SHIBYTE(__p.__r_.__value_.__r.__words[2]))
        {
          size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v34 = &__p;
LABEL_110:
          v3 = v61;
          if (size)
          {
            v41 = 0;
            while (memchr("1234567890#*+,", v34->__r_.__value_.__s.__data_[v41], 0xEuLL))
            {
              if (size == ++v41)
              {
                goto LABEL_114;
              }
            }

            while (v41 != -1)
            {
              std::string::erase(&__p, v41, 1uLL);
              v54 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
              v55 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
              if (!v55)
              {
                break;
              }

              v41 = 0;
              while (memchr("1234567890#*+,", v54->__r_.__value_.__s.__data_[v41], 0xEuLL))
              {
                if (v55 == ++v41)
                {
                  goto LABEL_114;
                }
              }
            }
          }

LABEL_114:
          if (!sub_10054152C(v61))
          {
            v42 = std::string::find(&__p, 44, 0);
            std::string::basic_string(&v63, &__p, 0, v42, v83);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = v63;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &__p;
          }

          else
          {
            LODWORD(v43) = __p.__r_.__value_.__l.__data_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v44 = __p.__r_.__value_.__r.__words[1];
          }

          sub_100007774(&v68, v43, v44);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

LABEL_126:
          sub_100007774(&v68, ",", 2);
          if (LODWORD(v64[4]) <= 2)
          {
            sub_100007774(&v68, off_100B072E0[LODWORD(v64[4])], 3);
          }

          memset(&__p, 0, sizeof(__p));
          if (SHIBYTE(v64[7]) < 0)
          {
            sub_100008904(&__p, v64[5], v64[6]);
          }

          else
          {
            __p = *&v64[5];
          }

          if (sub_100541720(v3) && (v65 - 1) < 3)
          {
            std::string::append(&__p, off_100B072F8[(v65 - 1)]);
          }

          if (*(v62 + 8))
          {
            v45 = sub_100007774(&v68, ",", 1);
            sub_10039BE10(v62, &v63, &__p);
            if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v46 = &v63;
            }

            else
            {
              LODWORD(v46) = v63.__r_.__value_.__l.__data_;
            }

            if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v47 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v47 = v63.__r_.__value_.__r.__words[1];
            }

            sub_100007774(v45, v46, v47);
          }

          else
          {
            v48 = sub_100007774(&v68, ",", 2);
            sub_10039BE10(v62, &v63, &__p);
            if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v49 = &v63;
            }

            else
            {
              LODWORD(v49) = v63.__r_.__value_.__l.__data_;
            }

            if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v50 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v50 = v63.__r_.__value_.__r.__words[1];
            }

            v51 = sub_100007774(v48, v49, v50);
            sub_100007774(v51, "", 1);
          }

          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          sub_100007E30(&v63, "\r\n");
          if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v52 = &v63;
          }

          else
          {
            LODWORD(v52) = v63.__r_.__value_.__l.__data_;
          }

          if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v53 = v63.__r_.__value_.__r.__words[1];
          }

          sub_100007774(&v68, v52, v53);
          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v64[7]) < 0)
          {
            operator delete(v64[5]);
          }

          if (SHIBYTE(v64[3]) < 0)
          {
            operator delete(v64[1]);
          }

          ++v22;
          v21 = *(a1 + 40);
          if (v22 >= 0x8E38E38E38E38E39 * ((*(a1 + 48) - v21) >> 3))
          {
LABEL_197:
            (*(*v62 + 8))(v62);
            goto LABEL_198;
          }

          goto LABEL_33;
        }

        v34 = &__p;
      }

      v36 = v34->__r_.__value_.__s.__data_[i];
      if (v34->__r_.__value_.__s.__data_[i] < 0)
      {
        v37 = __maskrune(v34->__r_.__value_.__s.__data_[i], 0x100uLL);
      }

      else
      {
        v37 = _DefaultRuneLocale.__runetype[v34->__r_.__value_.__s.__data_[i]] & 0x100;
      }

      if (v37)
      {
        v38 = __tolower(v36);
        if (v38 > 0x63)
        {
          if (v38 > 0x66)
          {
            if (v38 > 0x69)
            {
              if (v38 > 0x6C)
              {
                if (v38 > 0x6F)
                {
                  if (v38 > 0x73)
                  {
                    if (v38 > 0x76)
                    {
                      if (v38 > 0x7A)
                      {
                        continue;
                      }

                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v39 = &__p;
                      }

                      else
                      {
                        v39 = __p.__r_.__value_.__r.__words[0];
                      }

                      v40 = 57;
                    }

                    else
                    {
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v39 = &__p;
                      }

                      else
                      {
                        v39 = __p.__r_.__value_.__r.__words[0];
                      }

                      v40 = 56;
                    }
                  }

                  else
                  {
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v39 = &__p;
                    }

                    else
                    {
                      v39 = __p.__r_.__value_.__r.__words[0];
                    }

                    v40 = 55;
                  }
                }

                else
                {
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v39 = &__p;
                  }

                  else
                  {
                    v39 = __p.__r_.__value_.__r.__words[0];
                  }

                  v40 = 54;
                }
              }

              else
              {
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v39 = &__p;
                }

                else
                {
                  v39 = __p.__r_.__value_.__r.__words[0];
                }

                v40 = 53;
              }
            }

            else
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v39 = &__p;
              }

              else
              {
                v39 = __p.__r_.__value_.__r.__words[0];
              }

              v40 = 52;
            }
          }

          else
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = &__p;
            }

            else
            {
              v39 = __p.__r_.__value_.__r.__words[0];
            }

            v40 = 51;
          }
        }

        else
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = &__p;
          }

          else
          {
            v39 = __p.__r_.__value_.__r.__words[0];
          }

          v40 = 50;
        }

        v39->__r_.__value_.__s.__data_[v33] = v40;
      }
    }
  }

  return sub_100007E30(a3, "\r\nERROR\r\n");
}

void sub_1006AAAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_1003B8618(&a41);
  _Unwind_Resume(a1);
}

uint64_t sub_1006AABB8(uint64_t result, int a2)
{
  *(result + 8) = 15;
  *(result + 12) = a2;
  *result = off_100B07000;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1006AABE8(uint64_t a1)
{
  *a1 = off_100B07000;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006AAC38(uint64_t a1)
{
  *a1 = off_100B07000;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1006AACA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  (*(*v3 + 48))(v3, a1 + 16, 1);
  return 1;
}

void sub_1006AACFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 12);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v25 = "\r\nOK\r\n";
      goto LABEL_39;
    }
  }

  else if (v3 == 1)
  {
    sub_100007E30(&v30, "\r\n");
    v5 = std::string::append(&v30, "+CCLK: ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v9 = *(a1 + 16);
    v8 = a1 + 16;
    v7 = v9;
    v10 = *(v8 + 23);
    if (v10 >= 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = v7;
    }

    if (v10 >= 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v12 = *(v8 + 8);
    }

    v13 = std::string::append(&v31, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v32, "");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(v28, "\r\n");
    if ((v29 & 0x80u) == 0)
    {
      v17 = v28;
    }

    else
    {
      v17 = v28[0];
    }

    if ((v29 & 0x80u) == 0)
    {
      v18 = v29;
    }

    else
    {
      v18 = v28[1];
    }

    v19 = std::string::append(&v33, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(__p, "\r\nOK\r\n");
    if ((v27 & 0x80u) == 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v22 = v27;
    }

    else
    {
      v22 = __p[1];
    }

    v23 = std::string::append(&v34, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    a2[2] = *(&v23->__r_.__value_.__l + 2);
    *a2 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    return;
  }

  v25 = "\r\nERROR\r\n";
LABEL_39:

  sub_100007E30(a2, v25);
}

void sub_1006AAF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006AAFE4(void *a1)
{
  *&result = 0x200000010;
  a1[1] = 0x200000010;
  *a1 = off_100B07030;
  return result;
}

double sub_1006AB040(void *a1)
{
  *&result = 0x200000011;
  a1[1] = 0x200000011;
  *a1 = off_100B07060;
  return result;
}

void sub_1006AB08C(std::string *a1@<X8>)
{
  sub_100007E30(&v15, "\r\n");
  v2 = std::string::append(&v15, "+CGATT: 0");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v13, "\r\n");
  if ((v14 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v13[1];
  }

  v6 = std::string::append(&v16, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v17, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1006AB1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006AB250(void *a1)
{
  *&result = 0x200000012;
  a1[1] = 0x200000012;
  *a1 = off_100B07090;
  return result;
}

void sub_1006AB29C(std::string *a1@<X8>)
{
  sub_100007E30(&v15, "\r\n");
  v2 = std::string::append(&v15, "+VTS: (0,1,2,3,4,5,6,7,8,9,*,#),(0 - 600)");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v13, "\r\n");
  if ((v14 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v13[1];
  }

  v6 = std::string::append(&v16, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v17, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1006AB3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006AB460(void *a1)
{
  *&result = 0x200000013;
  a1[1] = 0x200000013;
  *a1 = off_100B070C0;
  return result;
}

uint64_t sub_1006AB4BC(uint64_t a1, const char *a2, uint64_t a3)
{
  *(a1 + 8) = 0x200000014;
  *a1 = off_100B070F0;
  *(a1 + 16) = a3;
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  memset(v8, 0, sizeof(v8));
  *(a1 + 24) = 0;
  strlcpy(v8, a2, 0x100uLL);
  v5 = strtok(v8, ",");
  if (v5)
  {
    std::string::assign(v4, v5);
    v6 = strtok(0, ",");
    if (v6)
    {
      *(a1 + 56) = atoi(v6);
      *(a1 + 24) = 1;
    }

    else if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E38C();
    }
  }

  else if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E3FC();
  }

  return a1;
}

uint64_t sub_1006AB654(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 56);
    *(v2 + 582) = (v3 & 0x8000) != 0;
    v4 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "supported";
      if ((v3 & 0x8000) == 0)
      {
        v5 = "not supported";
      }

      v7 = 136446210;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AT XAPL Feature: Audio Input Config is %{public}s", &v7, 0xCu);
      v2 = *(a1 + 16);
    }

    *(v2 + 580) = 257;
    if (qword_100B508E0 != -1)
    {
      sub_10085E46C();
    }

    sub_1005184C0(off_100B508D8, *(a1 + 16));
  }

  return 1;
}

void sub_1006AB770(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 56) < 8)
    {
      goto LABEL_17;
    }

    if (qword_100B54090 != -1)
    {
      v13 = a1;
      sub_10085E494();
      a1 = v13;
    }

    if (sub_100389744(qword_100B54088, *(a1 + 16)))
    {
      v3 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AT+APLSIRI response enabled", &buf, 2u);
      }

      sub_100007E30(&v17, "\r\n");
      v4 = std::string::insert(&v17, 0, "\r\n+XAPL=iPhone,15");
      v5 = *&v4->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(&__p, "\r\nOK\r\n");
      if ((v16 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v7 = v16;
      }

      else
      {
        v7 = v15;
      }
    }

    else
    {
LABEL_17:
      v8 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AT+APLSIRI response disabled", &buf, 2u);
      }

      sub_100007E30(&v17, "\r\n");
      v9 = std::string::insert(&v17, 0, "\r\n+XAPL=iPhone,7");
      v10 = *&v9->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(&__p, "\r\nOK\r\n");
      if ((v16 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v7 = v16;
      }

      else
      {
        v7 = v15;
      }
    }

    v11 = std::string::append(&buf, p_p, v7);
    v12 = *&v11->__r_.__value_.__l.__data_;
    a2[2] = *(&v11->__r_.__value_.__l + 2);
    *a2 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    sub_100007E30(a2, "\r\nERROR\r\n");
  }
}

void sub_1006AB9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006ABA20(uint64_t a1, const char *a2, uint64_t a3)
{
  *(a1 + 8) = 0x200000015;
  *a1 = off_100B07120;
  *(a1 + 16) = a3;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  memset(v12, 0, sizeof(v12));
  strlcpy(v12, a2, 0x100uLL);
  v4 = strtok(v12, ",");
  if (v4)
  {
    v5 = atoi(v4);
    v6 = strtok(0, ",");
    v7 = strtok(0, ",");
    if (v6 && v7)
    {
      while (1)
      {
        v8 = *v6;
        if ((v8 - 49) >= 5)
        {
          break;
        }

        v9 = *v7;
        v10 = *(a1 + 28);
        *(a1 + 32 + 4 * v10) = (v8 - 48);
        *(a1 + 288 + v10) = v9;
        ++*(a1 + 28);
        v6 = strtok(0, ",");
        v7 = strtok(0, ",");
        if (!v6 || !v7)
        {
          goto LABEL_13;
        }
      }

      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
      {
        sub_10085E4A8();
      }
    }

LABEL_13:
    if (v5 != *(a1 + 28))
    {
      *(a1 + 24) = 0;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
      {
        sub_10085E518();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E588();
    }

    *(a1 + 24) = 0;
  }

  return a1;
}

BOOL sub_1006ABC40(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((*(v2 + 580) & 1) == 0)
  {
    result = os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10085E5F8();
    return 0;
  }

  if (*(a1 + 24) != 1 || sub_1000DFB74(v2, 0x80000u) == 4)
  {
    return 0;
  }

  if (*(a1 + 28) < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 288;
  while (1)
  {
    v6 = *(v5 + 4 * v4 - 256);
    if (v6 <= 2)
    {
      break;
    }

    switch(v6)
    {
      case 3:
        v13 = qword_100BCE978;
        if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v8 = buf;
          v9 = v13;
          v10 = "A65 rebooting";
          goto LABEL_29;
        }

        break;
      case 4:
        v12 = qword_100BCE978;
        if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
        {
          v15 = 0;
          v8 = &v15;
          v9 = v12;
          v10 = "Button 1 action";
          goto LABEL_29;
        }

        break;
      case 5:
        v7 = qword_100BCE978;
        if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
        {
          v14 = 0;
          v8 = &v14;
          v9 = v7;
          v10 = "Button 2 action";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, v8, 2u);
        }

        break;
      default:
        goto LABEL_35;
    }

LABEL_30:
    if (++v4 >= *(a1 + 28))
    {
      return 1;
    }
  }

  if (v6 == 1)
  {
    sub_10053F158(*(a1 + 16), (10 * *(v5 + v4) + 42) & 0xFE);
    if (qword_100B508E0 != -1)
    {
      sub_10085E46C();
    }

    sub_100518C44(off_100B508D8, *(a1 + 16));
    goto LABEL_30;
  }

  if (v6 == 2)
  {
    v11 = *(v5 + v4);
    if (v11 == 49)
    {
      sub_10053F320(*(a1 + 16), 1);
    }

    else if (v11 == 48)
    {
      sub_10053F320(*(a1 + 16), 0);
      if (qword_100B508E0 != -1)
      {
        sub_10085E46C();
      }

      sub_1005189F4(off_100B508D8, *(a1 + 16));
    }

    goto LABEL_30;
  }

LABEL_35:
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E62C();
  }

  result = 0;
  *(a1 + 24) = 0;
  return result;
}

void *sub_1006ABEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((*(a2 + 580) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E5F8();
    }

    return sub_100007E30(a3, "\r\nERROR\r\n");
  }

  if (*(a1 + 24) != 1)
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E660();
    }

    return sub_100007E30(a3, "\r\nERROR\r\n");
  }

  return sub_100007E30(a3, "\r\nOK\r\n");
}

uint64_t sub_1006ABF7C(uint64_t a1, const char *a2, uint64_t a3)
{
  *(a1 + 8) = 0x200000017;
  *a1 = off_100B07150;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  memset(v5, 0, sizeof(v5));
  strlcpy(v5, a2, 0x100uLL);
  if (LOBYTE(v5[0]) == 49)
  {
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_1006AC050(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 580);
  if (v2)
  {
    *(v1 + 581) = *(a1 + 24);
  }

  else if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E694();
  }

  return v2;
}

void *sub_1006AC0B0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 580))
  {

    return sub_100007E30(a2, "\r\nOK\r\n");
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E694();
    }

    return sub_100007E30(a2, "\r\nERROR\r\n");
  }
}

std::string *sub_1006AC138(std::string *a1, const std::string::value_type *a2, std::string::size_type a3)
{
  a1->__r_.__value_.__l.__size_ = 0x200000016;
  a1->__r_.__value_.__r.__words[0] = off_100B07180;
  a1->__r_.__value_.__r.__words[2] = a3;
  a1[1].__r_.__value_.__r.__words[0] = 0;
  a1[1].__r_.__value_.__l.__size_ = 0;
  a1[1].__r_.__value_.__r.__words[2] = 0;
  std::string::assign(a1 + 1, a2);
  return a1;
}

void sub_1006AC1A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006AC1C4(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 580);
  if ((v1 & 1) == 0 && os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E6C8();
  }

  return v1;
}

void *sub_1006AC218@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 580))
  {

    return sub_100007E30(a2, "\r\nOK\r\n");
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E6C8();
    }

    return sub_100007E30(a2, "\r\nERROR\r\n");
  }
}

uint64_t sub_1006AC2A0(uint64_t a1, const char *a2, uint64_t a3)
{
  *(a1 + 8) = 0x200000018;
  *a1 = off_100B071B0;
  *(a1 + 16) = a3;
  memset(v12, 0, sizeof(v12));
  strlcpy(v12, a2, 0x100uLL);
  v4 = strtok(v12, ",");
  if (v4)
  {
    v5 = atoi(v4);
    v6 = strtok(0, ",");
    v7 = strtok(0, ",");
    if (v6 && v7)
    {
      while (1)
      {
        v8 = *v6;
        if ((v8 - 49) >= 3)
        {
          break;
        }

        v9 = *v7;
        v10 = *(a1 + 28);
        *(a1 + 32 + 4 * v10) = (v8 - 48);
        *(a1 + 288 + v10) = v9;
        ++*(a1 + 28);
        v6 = strtok(0, ",");
        v7 = strtok(0, ",");
        if (!v6 || !v7)
        {
          goto LABEL_13;
        }
      }

      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
      {
        sub_10085E6FC();
      }
    }

LABEL_13:
    if (v5 != *(a1 + 28))
    {
      *(a1 + 24) = 0;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
      {
        sub_10085E76C();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E7DC();
    }

    *(a1 + 24) = 0;
  }

  return a1;
}

BOOL sub_1006AC4B4(uint64_t a1)
{
  if ((*(*(a1 + 16) + 580) & 1) == 0)
  {
    result = os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10085E84C();
    return 0;
  }

  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  if (*(a1 + 28) < 1)
  {
    return 1;
  }

  v2 = 0;
  v3 = a1 + 288;
  while (1)
  {
    v4 = *(v3 + 4 * v2 - 256);
    if (v4 == 3)
    {
      v6 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "A65 rebooting", v8, 2u);
      }

      goto LABEL_19;
    }

    if (v4 == 2)
    {
      v5 = *(v3 + v2);
      if (v5 == 49)
      {
        sub_10053F320(*(a1 + 16), 1);
      }

      else if (v5 == 48)
      {
        sub_10053F320(*(a1 + 16), 0);
        if (qword_100B508E0 != -1)
        {
          sub_10085E46C();
        }

        sub_1005189F4(off_100B508D8, *(a1 + 16));
      }

      goto LABEL_19;
    }

    if (v4 != 1)
    {
      break;
    }

    sub_10053F158(*(a1 + 16), (10 * *(v3 + v2) + 42) & 0xFE);
    if (qword_100B508E0 != -1)
    {
      sub_10085E46C();
    }

    sub_100518C44(off_100B508D8, *(a1 + 16));
LABEL_19:
    if (++v2 >= *(a1 + 28))
    {
      return 1;
    }
  }

  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E880();
  }

  result = 0;
  *(a1 + 24) = 0;
  return result;
}

void *sub_1006AC69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((*(a2 + 580) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E5F8();
    }

    return sub_100007E30(a3, "\r\nERROR\r\n");
  }

  if (*(a1 + 24) != 1)
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E660();
    }

    return sub_100007E30(a3, "\r\nERROR\r\n");
  }

  return sub_100007E30(a3, "\r\nOK\r\n");
}

double sub_1006AC758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 0x200000019;
  *(a1 + 8) = 0x200000019;
  *a1 = off_100B071E0;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1006AC78C(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 580);
  if (v1)
  {
    if (qword_100B54090 != -1)
    {
      sub_10085E494();
    }

    *(a1 + 24) = sub_100389744(qword_100B54088, *(a1 + 16));
  }

  else if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E8B4();
  }

  return v1;
}

void sub_1006AC814(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(*(a1 + 16) + 580))
  {
    *__s = 0;
    sprintf(__s, "%1d", *(a1 + 24));
    sub_100007E30(&v19, "\r\n");
    v3 = std::string::append(&v19, "+APLSIRI:");
    v4 = *&v3->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    v5 = std::string::append(&v20, __s);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(v17, "\r\n");
    if ((v18 & 0x80u) == 0)
    {
      v7 = v17;
    }

    else
    {
      v7 = v17[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v8 = v18;
    }

    else
    {
      v8 = v17[1];
    }

    v9 = std::string::append(&v21, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(__p, "\r\nOK\r\n");
    if ((v16 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v12 = v16;
    }

    else
    {
      v12 = __p[1];
    }

    v13 = std::string::append(&v22, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    a2[2] = *(&v13->__r_.__value_.__l + 2);
    *a2 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    sub_100007E30(a2, "\r\nERROR\r\n");
  }
}

void sub_1006AC9E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006ACA78(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(a1 + 8) = 0x20000001ALL;
  *a1 = off_100B07210;
  *(a1 + 16) = a3;
  *(a1 + 24) = 256;
  if (!a2 || (*(a3 + 580) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E8E8();
      if (!a2)
      {
        return a1;
      }
    }

    else if (!a2)
    {
      return a1;
    }
  }

  if (*a2 == 49)
  {
    *(a1 + 24) = 1;
  }

  return a1;
}

BOOL sub_1006ACB30(uint64_t a1)
{
  v2 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 24))
    {
      v3 = "enabled";
    }

    else
    {
      v3 = "disabled";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Siri eyes free mode set to %s", &v5, 0xCu);
  }

  if (*(*(a1 + 16) + 580) == 1 && (*(a1 + 25) & 1) != 0)
  {
    if (qword_100B54090 != -1)
    {
      sub_10085E950();
    }

    sub_100389ED8(qword_100B54088, *(a1 + 16), *(a1 + 24));
    return 1;
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10085E91C();
      return 0;
    }
  }

  return result;
}

void *sub_1006ACC68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(*(a1 + 16) + 580) == 1 && (*(a1 + 25) & 1) != 0)
  {
    v3 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Responding with AT_OK for APLEFM", v5, 2u);
    }

    return sub_100007E30(a2, "\r\nOK\r\n");
  }

  else
  {

    return sub_100007E30(a2, "\r\nERROR\r\n");
  }
}

uint64_t sub_1006ACD28(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(a1 + 8) = 0x20000001BLL;
  *a1 = off_100B07240;
  *(a1 + 16) = a3;
  *(a1 + 24) = 256;
  if (!a2 || (*(a3 + 580) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10085E978();
      if (!a2)
      {
        return a1;
      }
    }

    else if (!a2)
    {
      return a1;
    }
  }

  if (*a2 == 49)
  {
    *(a1 + 24) = 1;
  }

  return a1;
}

BOOL sub_1006ACDE0(uint64_t a1)
{
  if (*(*(a1 + 16) + 580) == 1 && (*(a1 + 25) & 1) != 0)
  {
    if (qword_100B54090 != -1)
    {
      v2 = a1;
      sub_10085E494();
      a1 = v2;
    }

    sub_100389F68(qword_100B54088, *(a1 + 16), *(a1 + 24));
    return 1;
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10085E9AC();
      return 0;
    }
  }

  return result;
}

void *sub_1006ACE80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(*(a1 + 16) + 580) == 1 && (*(a1 + 25) & 1) != 0)
  {
    v3 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Responsding with AT_OK for APLNRSTAT", v5, 2u);
    }

    return sub_100007E30(a2, "\r\nOK\r\n");
  }

  else
  {

    return sub_100007E30(a2, "\r\nERROR\r\n");
  }
}

void *sub_1006ACF40(void *a1)
{
  *a1 = off_100B06FD0;
  v3 = (a1 + 5);
  sub_1006AD258(&v3);
  return a1;
}

void sub_1006ACF98(void *a1)
{
  *a1 = off_100B06FD0;
  v1 = (a1 + 5);
  sub_1006AD258(&v1);
  operator delete();
}

uint64_t sub_1006AD004(uint64_t a1)
{
  *a1 = off_100B070F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_1006AD054(uint64_t a1)
{
  *a1 = off_100B070F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

uint64_t sub_1006AD0F4(uint64_t a1)
{
  *a1 = off_100B07180;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1006AD144(uint64_t a1)
{
  *a1 = off_100B07180;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_1006AD214(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1006AD258(void ***a1)
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
        v4 -= 72;
        sub_1006AD2E0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1006AD2E0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void sub_1006AD4D8()
{
  v0 = &qword_100BC6FD8;
  v1 = -192;
  do
  {
    if (*(v0 + 23) < 0)
    {
      operator delete(*v0);
    }

    v0 -= 4;
    v1 += 32;
  }

  while (v1);
}

void sub_1006AD51C()
{
  v0 = objc_autoreleasePoolPush();
  dword_100BC6F30 = 1;
  sub_100007E30(&qword_100BC6F38, "");
  dword_100BC6F50 = 2;
  sub_100007E30(qword_100BC6F58, "GSM");
  dword_100BC6F70 = 4;
  sub_100007E30(qword_100BC6F78, "ASCII");
  dword_100BC6F90 = 8;
  sub_100007E30(qword_100BC6F98, "8859-1");
  dword_100BC6FB0 = 16;
  sub_100007E30(qword_100BC6FB8, "UCS2");
  dword_100BC6FD0 = 32;
  sub_100007E30(&qword_100BC6FD8, "UTF-8");
  __cxa_atexit(sub_1006AD4D8, 0, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void *sub_1006AD640(void *a1, std::string::size_type a2, uint64_t a3)
{
  *a1 = 0;
  v5 = *a3;
  if (*a3 > 1)
  {
    if (v5 == 2)
    {
      v6 = "CMD";
      goto LABEL_11;
    }

    if (v5 == 3)
    {
      return a1;
    }
  }

  else
  {
    if (!v5)
    {
      v6 = "TEST";
      goto LABEL_11;
    }

    if (v5 == 1)
    {
      v6 = "READ";
LABEL_11:
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      *__dst = 0u;
      v8 = *(a3 + 24);
      v9 = *(*(a3 + 32) + 8) - v8 + *(*(a3 + 32) + 18);
      if (v9 >= 1)
      {
        if (v9 >= 0x32)
        {
          v10 = qword_100BCE978;
          if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
          {
            LOWORD(v15) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Truncating data when copying into params", &v15, 2u);
            v8 = *(a3 + 24);
          }

          v9 = 49;
        }

        strncpy(__dst, v8, v9);
      }

      v11 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a3 + 8);
        v15 = 136446722;
        v16 = v6;
        v17 = 2082;
        v18 = v12;
        v19 = 2082;
        v20 = __dst;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received AT %{public}s command %{public}s %{public}s", &v15, 0x20u);
      }

      v13 = *(a3 + 8);
      if (!strncmp(v13, "+CGMI", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CGMM", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CGMR", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CGSN", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CSCS", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CIMI", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+GMI", 4uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+GMM", 4uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+GMR", 4uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+GSN", 4uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CREG", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+COPS", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CPAS", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CPIN", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CBC", 4uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CSQ", 4uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CPBS", 5uLL))
      {
        operator new();
      }

      if (!strncmp(v13, "+CPBR", 5uLL))
      {
        operator new();
      }

      if (strncmp(v13, "+CPBF", 5uLL) && strncmp(v13, "+CPBW", 5uLL))
      {
        if (!strncmp(v13, "+CCLK", 5uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+CMEE", 5uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+CGATT", 6uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+VTS", 4uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+VTD", 4uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+XAPL", 5uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+IPHONEACCEV", 0xCuLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+IPHONEEV", 9uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+IPHONEACCINDICATOR", 0x13uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+IPHONEACCNAME", 0xEuLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+APLSIRI", 8uLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+APLNRSTAT", 0xAuLL))
        {
          operator new();
        }

        if (!strncmp(v13, "+APLEFM", 7uLL))
        {
          operator new();
        }
      }

      return a1;
    }
  }

  v7 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085EA24(v7);
  }

  return a1;
}

uint64_t *sub_1006AE18C(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_1006AE1DC(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  if ((*(*a1 + 8) - 13) <= 1)
  {
    v4 = sub_10000C798(a1, a2);
    v5 = (*(*v4 + 56))(v4, 2);
    if (v5)
    {
      sub_1006AE29C(v5, a2);
    }
  }

  v6 = *(**a1 + 16);

  return v6();
}

void sub_1006AE29C(uint64_t a1, uint64_t a2)
{
  if ((sub_10053F074(a2) & 1) == 0)
  {
    v3 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      if (v6 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device %{public}s now supports contact sync", buf, 0xCu);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10054097C(a2);
    sub_10053E630(a2);
  }
}

void sub_1006AE3A4(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  if (a1 && *a2)
  {
    (*(**a2 + 24))();
  }

  else
  {
    a3[23] = 9;
    strcpy(a3, "\r\nERROR\r\n");
  }
}

BOOL sub_1006AE3F8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 1;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  if (*a1 != a3)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      *a1 = 0;
      (*(*v7 + 8))(v7);
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;
      *(a1 + 20) = 0;
      *(a1 + 24) = 0;
    }

    v8 = a3 - 1;
    if (a3 - 1) <= 0xE && ((0x7441u >> v8))
    {
      v9 = dword_1008C4CC0[v8];
      v13[0] = 0;
      v13[1] = 0;
      sub_1006A5878(v13, a2);
      v10 = sub_1006A5A08(v13, v9, 2, 0, 0xFFFFLL, 0x14u, 1);
      *(a1 + 8) = v10;
      v3 = v10 != 0;
      if (v10)
      {
        *a1 = a3;
      }

      else
      {
        v12 = qword_100BCE978;
        if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
        {
          sub_10085EA68(v12);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1006AE52C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    *a1 = 0;
    result = (*(*result + 8))(result);
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_1006AE590(void *a1, uint64_t a2)
{
  if (!a1[1])
  {
    sub_1006AE3F8(a1, a2, 11);
  }

  return *a1;
}

uint64_t sub_1006AE5C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_1006AE3F8(a1, a2, 11);
    v4 = *(a1 + 8);
    if (!v4)
    {
      return 0;
    }
  }

  v5 = (*(*v4 + 16))(v4);
  if (v5 >= 0x3E9)
  {
    sub_1000DEEA4(a2, __s1);
    if (v12 < 0)
    {
      v7 = *__s1;
      v8 = strncmp(*__s1, "MB PhoneSystem", 0xEuLL);
      operator delete(v7);
      if (v8)
      {
        return v5;
      }
    }

    else if (*__s1 != 0x656E6F685020424DLL || *&__s1[6] != 0x6D6574737953656ELL)
    {
      return v5;
    }

    v9 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      *__s1 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restricting contacts to 1000 on kit matching MB PhoneSystem", __s1, 2u);
    }

    return 1000;
  }

  return v5;
}

uint64_t sub_1006AE714(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  if (!*(a1 + 8))
  {
    sub_1006AE3F8(a1, a2, 11);
  }

  v12 = sub_1006AE5C8(a1, a2);
  *a4 = v12;
  *a3 = v12 != 0;
  *a5 = 50;
  *a6 = 50;
  return 1;
}

uint64_t sub_1006AE79C(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16) <= a2)
  {
    v4 = *(a1 + 20);
  }

  else
  {
    v4 = 0;
    *(a1 + 16) = 1;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
  }

  for (i = 1; ; i = 0)
  {
    while (1)
    {
      v6 = sub_1006A6344(*(a1 + 8), v4);
      if (!v6)
      {
        break;
      }

      if (*(a1 + 24) < (0x6DB6DB6DB6DB6DB7 * ((*(v6 + 240) - *(v6 + 232)) >> 3)))
      {
        v7 = *(a1 + 16);
        if (v7 == a2)
        {
          return 1;
        }

        *(a1 + 16) = v7 + 1;
        i = 1;
      }

      sub_1006A63C8(*(a1 + 8), *(a1 + 20));
      v4 = *(a1 + 20) + 1;
      *(a1 + 20) = v4;
    }

    if ((i & 1) == 0)
    {
      break;
    }

    v4 = 0;
    *(a1 + 20) = 0;
    ++*(a1 + 24);
  }

  return 0;
}

uint64_t sub_1006AE898(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unint64_t *a5)
{
  if (*(a1 + 8))
  {
    while (sub_1006AE79C(a1, a3))
    {
      v9 = sub_1006A6344(*(a1 + 8), *(a1 + 20));
      v37 = 0;
      v35 = 0u;
      *v36 = 0u;
      *v34 = 0u;
      sub_10042A6A4(v9, *(a1 + 24), v34);
      if ((SBYTE7(v35) & 0x80u) == 0)
      {
        v10 = v34;
      }

      else
      {
        v10 = v34[0];
      }

      v11 = *v10 != 43;
      if (DWORD2(v35) == 4)
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }

      if (DWORD2(v35) == 3)
      {
        v13 = 2;
      }

      else
      {
        v13 = v12;
      }

      if ((DWORD2(v35) - 1) < 2)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      memset(&__dst, 0, sizeof(__dst));
      if (*(v9 + 39) < 0)
      {
        sub_100008904(&__dst, *(v9 + 16), *(v9 + 24));
      }

      else
      {
        __dst = *(v9 + 16);
      }

      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v16 = HIBYTE(v37);
        if (v37 < 0)
        {
          v16 = v36[1];
        }

        if (v16)
        {
          std::operator+<char>();
          v17 = std::string::append(&v32, ")");
          v18 = *&v17->__r_.__value_.__l.__data_;
          *&buf[16] = *(&v17->__r_.__value_.__l + 2);
          *buf = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          if (buf[23] >= 0)
          {
            v19 = buf;
          }

          else
          {
            v19 = *buf;
          }

          if (buf[23] >= 0)
          {
            v20 = buf[23];
          }

          else
          {
            v20 = *&buf[8];
          }

          std::string::append(&__dst, v19, v20);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }
        }
      }

      v21 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
      {
        p_dst = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        v23 = *(a1 + 20);
        v24 = *(a1 + 24);
        *buf = 67109890;
        *&buf[4] = a3;
        *&buf[8] = 2082;
        *&buf[10] = p_dst;
        *&buf[18] = 1024;
        *&buf[20] = v23;
        v39 = 2048;
        v40 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Found index #%u (%{public}s) at entry <%u,%zu>", buf, 0x22u);
      }

      if (SBYTE7(v35) < 0)
      {
        sub_100008904(v30, v34[0], v34[1]);
      }

      else
      {
        *v30 = *v34;
        v31 = v35;
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100008904(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = __dst;
      }

      sub_1006AEDC4(buf, a3, v30, v11, &__p, v14);
      sub_1006AED3C(a5, buf);
      if (v42 < 0)
      {
        operator delete(v41);
      }

      if (SBYTE5(v40) < 0)
      {
        operator delete(*&buf[8]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30[0]);
      }

      sub_1006A63C8(*(a1 + 8), *(a1 + 20));
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36[0]);
      }

      if (SBYTE7(v35) < 0)
      {
        operator delete(v34[0]);
      }

      if (++a3 > a4)
      {
        return 1;
      }
    }

    v25 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 20);
      v27 = *(a1 + 24);
      *buf = 67109632;
      *&buf[4] = a3;
      *&buf[8] = 1024;
      *&buf[10] = v26;
      *&buf[14] = 2048;
      *&buf[16] = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Could not find entry for index #%u (curEntryIndex=%u, curNumberDepth=%zu)", buf, 0x18u);
    }
  }

  return 1;
}

void sub_1006AEC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_1000DA6C8(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_1006AED3C(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1006AEE78(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(v3 + 32) = *(a2 + 32);
    v5 = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 40) = v5;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    *(v3 + 64) = *(a2 + 64);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1006AEDC4(uint64_t a1, int a2, __int128 *a3, int a4, std::string *__str, int a6)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100008904((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v10;
  }

  *(a1 + 32) = a4;
  std::string::basic_string((a1 + 40), __str, 0, 0x1F4uLL, &v12);
  *(a1 + 64) = a6;
  return a1;
}

void sub_1006AEE5C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006AEE78(unint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1000C7698();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1006AEFF8(a1, v6);
  }

  v7 = 72 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v7 + 32) = *(a2 + 32);
  v9 = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(v7 + 64) = *(a2 + 64);
  *&v18 = 72 * v2 + 72;
  v10 = a1[1];
  v11 = 72 * v2 + *a1 - v10;
  sub_1006AF054(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1006AF108(&v16);
  return v15;
}

void sub_1006AEFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1006AF108(va);
  _Unwind_Resume(a1);
}

void sub_1006AEFF8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_1006AF054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      *(a4 + 32) = *(v7 + 32);
      v9 = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 40) = v9;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = 0;
      *(a4 + 64) = *(v7 + 64);
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      sub_1006AD2E0(a1, v5);
      v5 += 72;
    }
  }
}

void **sub_1006AF108(void **a1)
{
  sub_1006AF13C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1006AF13C(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    sub_1006AD2E0(v4, i - 72);
  }
}

uint64_t sub_1006AF184(uint64_t a1)
{
  *a1 = off_100B07320;
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

BOOL sub_1006AF208(uint64_t a1, uint64_t a2, unsigned __int16 a3, _WORD *a4)
{
  *a4 = 0;
  v8 = *(a1 + 40);
  while (1)
  {
    v9 = *(a1 + 39);
    v10 = v9;
    if (*(a1 + 39) < 0)
    {
      v10 = *(a1 + 24);
    }

    if (v8 == v10)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_20;
    }

LABEL_14:
    if ((v9 & 0x80) != 0)
    {
      v9 = *(a1 + 24);
    }

    v13 = *(a1 + 40);
    v14 = v9 - v13;
    if (v14 >= a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = v14;
    }

    std::string::copy((a1 + 16), (a2 + *a4), v15, v13);
    v8 = *(a1 + 40) + v15;
    *(a1 + 40) = v8;
    *a4 += v15;
    a3 -= v15;
  }

  *(a1 + 40) = 0;
  (*(*a1 + 16))(a1);
  v9 = *(a1 + 39);
  v11 = v9;
  if (*(a1 + 39) < 0)
  {
    v11 = *(a1 + 24);
  }

  if (v11)
  {
    v12 = a3 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_20:
  if ((v9 & 0x80) != 0)
  {
    v9 = *(a1 + 24);
  }

  return v9 != 0;
}

double sub_1006AF324(uint64_t a1, uint64_t a2, char a3, __int16 a4)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &off_100B07348;
  *(a1 + 8) = a2;
  *(a1 + 48) = a3;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 58) = a4;
  return result;
}

void sub_1006AF35C(uint64_t a1)
{
  v2 = *(a1 + 52);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
LABEL_16:
      v7 = (a1 + 16);
      std::string::assign((a1 + 16), "</vCard-listing>\n");
      v8 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
      {
        if (*(a1 + 39) < 0)
        {
          v7 = *v7;
        }

        *buf = 136315138;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Sending footer:\n\n%s", buf, 0xCu);
      }

      *(a1 + 52) = 3;
      return;
    }

    if (v2 == 3)
    {
      if (*(a1 + 39) < 0)
      {
        **(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      else
      {
        *(a1 + 16) = 0;
        *(a1 + 39) = 0;
      }
    }
  }

  else
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return;
      }

      v3 = sub_1006A6344(*(a1 + 8), *(a1 + 56));
      if (v3)
      {
        v4 = v3;
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        *v28 = 0u;
        v29 = 0u;
        *buf = 0u;
        memset(v27, 0, sizeof(v27));
        sub_100008760(buf);
        sub_100007774(buf, "<card ", 6);
        v9 = sub_100007774(buf, "handle=", 8);
        *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFFB5 | 8;
        v10 = std::ostream::operator<<();
        *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 2;
        sub_100007774(v10, ".vcf", 5);
        memset(&v22, 0, sizeof(v22));
        if (*(v4 + 39) < 0)
        {
          sub_100008904(&v22, *(v4 + 16), *(v4 + 24));
        }

        else
        {
          v22 = *(v4 + 16);
        }

        v11 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        v12 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        size = v22.__r_.__value_.__l.__size_;
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = v22.__r_.__value_.__l.__size_;
        }

        if (!v14 && *(a1 + 48) == 1)
        {
          v25 = 0;
          *__p = 0u;
          memset(__str, 0, sizeof(__str));
          sub_10042A6A4(v4, 0, __str);
          std::string::operator=(&v22, __str);
          if (SHIBYTE(v25) < 0)
          {
            operator delete(__p[0]);
          }

          if ((__str[23] & 0x80000000) != 0)
          {
            operator delete(*__str);
          }

          v11 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
          size = v22.__r_.__value_.__l.__size_;
          v12 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        if (v12 < 0)
        {
          v11 = size;
        }

        if (v11)
        {
          v15 = sub_100007774(buf, " name=", 7);
          sub_10050DDC8(&v22, __str);
          if (__str[23] >= 0)
          {
            v16 = __str;
          }

          else
          {
            LODWORD(v16) = *__str;
          }

          v17 = __str[23] >= 0 ? __str[23] : *&__str[8];
          v18 = sub_100007774(v15, v16, v17);
          sub_100007774(v18, "", 1);
          if ((__str[23] & 0x80000000) != 0)
          {
            operator delete(*__str);
          }
        }

        sub_100007774(buf, "/>\n", 3);
        std::stringbuf::str();
        v19 = (a1 + 16);
        if (*(a1 + 39) < 0)
        {
          operator delete(*v19);
        }

        *v19 = *__str;
        *(a1 + 32) = *&__str[16];
        v20 = qword_100BCE978;
        if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
        {
          v21 = *(a1 + 56);
          if (*(a1 + 39) < 0)
          {
            v19 = *v19;
          }

          *__str = 67109378;
          *&__str[4] = v21;
          *&__str[8] = 2080;
          *&__str[10] = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Sending card #%u:\n\n%s", __str, 0x12u);
        }

        sub_1006A63C8(*(a1 + 8), *(a1 + 56));
        ++*(a1 + 56);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28[1]);
        }

        std::locale::~locale(v27);
        std::ostream::~ostream();
        std::ios::~ios();
        return;
      }

      *(a1 + 52) = 2;
      goto LABEL_16;
    }

    v5 = (a1 + 16);
    std::string::assign((a1 + 16), "<?xml version=1.0?>\n<!DOCTYPE vcard-listing SYSTEM vcard-listing.dtd>\n<vCard-listing version=1.0>\n");
    v6 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 39) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Sending header:\n\n%s", buf, 0xCu);
    }

    *(a1 + 52) = 1;
  }
}

void sub_1006AF90C(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  sub_1000DA6C8(&a16);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1006AF990(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &off_100B07370;
  *(a1 + 8) = a2;
  *(a1 + 48) = a3;
  *(a1 + 52) = a4;
  *(a1 + 56) = 0;
  *(a1 + 58) = sub_10054152C(a5);
  return a1;
}

uint64_t sub_1006AFA04(uint64_t a1)
{
  result = sub_1006A6344(*(a1 + 8), *(a1 + 56));
  if (result)
  {
    (*(*result + 16))(v6);
    v3 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      operator delete(*v3);
    }

    *v3 = *v6;
    *(a1 + 32) = *&v6[16];
    v4 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 56);
      if (*(a1 + 39) < 0)
      {
        v3 = *v3;
      }

      *v6 = 67109378;
      *&v6[4] = v5;
      *&v6[8] = 2080;
      *&v6[10] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending vCard #%u:\n\n%s", v6, 0x12u);
    }

    result = sub_1006A63C8(*(a1 + 8), *(a1 + 56));
    ++*(a1 + 56);
  }

  else if (*(a1 + 39) < 0)
  {
    **(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 39) = 0;
  }

  return result;
}

void sub_1006AFB78(uint64_t a1)
{
  sub_1006AF184(a1);

  operator delete();
}

void sub_1006AFBB4(uint64_t a1)
{
  sub_1006AF184(a1);

  operator delete();
}

void sub_1006AFC30(id a1)
{
  v1 = objc_alloc_init(BluetoothAudiodConnection);
  v2 = qword_100BC6FF0;
  qword_100BC6FF0 = v1;
}

void sub_1006AFDCC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BluetoothAudiodConnection;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1006AFF0C(id a1)
{
  v1 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "bluetoothaudiod invalidated", v2, 2u);
  }
}

void sub_1006B0000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1006B0190(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1006B02A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1006B0A04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1006B0B40(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1006B0D34(uint64_t a1, uint64_t a2, io_service_t a3)
{
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  v6 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x53u, 0xEAu, 0x67u, 0x34u, 0xC7u, 0xEu, 0x46u, 0x35u, 0x9Cu, 0xF5u, 0x4Fu, 0xAFu, 5u, 0xB4u, 0xF2u, 0x30u);
  v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v8 = IOCreatePlugInInterfaceForService(a3, v6, v7, a1, &theScore);
  if (!v8)
  {
    v10 = *a1;
    v11 = *(**a1 + 8);
    v12 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xA6u, 0x7Au, 0x69u, 0x95u, 0x23u, 0x6Bu, 0x44u, 0xDEu, 0x97u, 0xB5u, 0x27u, 0xB9u, 0xB1u, 0xE6u, 0x6Fu, 0x2Fu);
    v13 = CFUUIDGetUUIDBytes(v12);
    v11(v10, *&v13.byte0, *&v13.byte8, v5);
    v14 = *(a1 + 8);
    if (v14)
    {
      v8 = (*(*v14 + 64))(v14);
      if (v8)
      {
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
        {
          sub_10085EAFC();
        }
      }

      else
      {
        *(a1 + 16) = (*(**(a1 + 8) + 88))(*(a1 + 8));
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
      {
        sub_10085EB70();
      }

      return 0;
    }
  }

  return v8;
}

IOCFPlugInInterface **sub_1006B0F2C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    ((*result)[1].QueryInterface)(result);
    result = *a1;
    if (*a1)
    {
      ((*result)->Release)(result);
      result = IODestroyPlugInInterface(*a1);
    }

    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_1006B0F80(uint64_t a1, char *a2, int a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10085EC9C();
    }

    return 0;
  }

  v5 = a2;
  if (!a2 || (v6 = a3) == 0)
  {
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10085EC5C();
    }

    return 0;
  }

  v7 = (*(*v4 + 96))(v4);
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  bzero(&v13[-v8], v10);
  v17 = 0;
  v11 = (*(**(a1 + 8) + 112))(*(a1 + 8), (*(a1 + 16) * v6), v9, &v17);
  if (v11)
  {
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10085EBE8();
    }

    return 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
    do
    {
      if (!(*(**(a1 + 8) + 128))(*(a1 + 8), v9, &v15, &v16, 0, 0))
      {
        break;
      }

      memcpy(v5, v16, *(a1 + 16));
      (*(**(a1 + 8) + 136))(*(a1 + 8), v9, v15, &v14);
      if (!v14)
      {
        v5 += *(a1 + 16);
        v11 = (v11 + 1);
      }

      --v6;
    }

    while (v6);
  }

  return v11;
}

uint64_t sub_1006B117C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 8);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v10 = *(a1 + 80);
  v11 = (a1 + 88);
  if (v10 != v11)
  {
    do
    {
      v12 = v10[4];
      if (v12)
      {
        sub_1006B135C(&v22, v12);
      }

      v13 = v10[1];
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
          v14 = v10[2];
          v15 = *v14 == v10;
          v10 = v14;
        }

        while (!v15);
      }

      v10 = v14;
    }

    while (v14 != v11);
    v16 = v22;
    v17 = v23;
    if (v22 != v23)
    {
      do
      {
        v18 = *(v16 + 64);
        if (v18)
        {
          if (*(v18 + 160) == 1)
          {
            v19 = xpc_dictionary_create(0, 0, 0);
            v20 = v19;
            if (v19)
            {
              xpc_dictionary_set_uint64(v19, "kCBMsgArgID", *(v16 + 40));
              xpc_dictionary_set_uint64(v20, "kCBMsgArgAccessoryManagerID", a2);
              xpc_dictionary_set_uint64(v20, "kCBMsgArgEvent", a3);
              xpc_dictionary_set_uint64(v20, "kCBMsgArgBTDevice", a4);
              xpc_dictionary_set_uint64(v20, "kCBMsgArgState", a5);
              sub_100383144(*(v16 + 64), "kCBMsgIdAccessoryEvent", v20, 1);
            }
          }
        }

        v16 += 96;
      }

      while (v16 != v17);
      v16 = v22;
    }

    if (v16)
    {
      v23 = v16;
      operator delete(v16);
    }
  }

  return sub_1000088CC(v25);
}

void sub_1006B1334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006B135C(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    v12 = v11 + 1;
    if (v11 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_1000C7698();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x155555555555555)
    {
      v14 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_1006BA130(a1, v14);
    }

    v15 = 96 * v11;
    v16 = a2[1];
    *v15 = *a2;
    *(v15 + 16) = v16;
    v17 = a2[2];
    v18 = a2[3];
    v19 = a2[5];
    *(v15 + 64) = a2[4];
    *(v15 + 80) = v19;
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    v10 = 96 * v11 + 96;
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[5];
    v4[4] = a2[4];
    v4[5] = v9;
    v4[2] = v7;
    v4[3] = v8;
    v10 = (v4 + 6);
  }

  *(a1 + 8) = v10;
}

uint64_t sub_1006B1474(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, const void *a6, unsigned int a7)
{
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1 + 8);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v14 = *(a1 + 80);
  v15 = (a1 + 88);
  if (v14 != v15)
  {
    do
    {
      v16 = v14[4];
      if (v16)
      {
        sub_1006B135C(&v27, v16);
      }

      v17 = v14[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v14[2];
          v19 = *v18 == v14;
          v14 = v18;
        }

        while (!v19);
      }

      v14 = v18;
    }

    while (v18 != v15);
    v20 = v27;
    v21 = v28;
    if (v27 != v28)
    {
      v22 = a5;
      do
      {
        v23 = *(v20 + 64);
        if (v23)
        {
          if (*(v23 + 160) == 1)
          {
            v24 = xpc_dictionary_create(0, 0, 0);
            v25 = v24;
            if (v24)
            {
              xpc_dictionary_set_uint64(v24, "kCBMsgArgID", *(v20 + 40));
              xpc_dictionary_set_uint64(v25, "kCBMsgArgAccessoryManagerID", a2);
              xpc_dictionary_set_uint64(v25, "kCBMsgArgBTDevice", a3);
              xpc_dictionary_set_uint64(v25, "kCBMsgArgSetupType", a4);
              xpc_dictionary_set_uint64(v25, "kCBMsgArgOPType", v22);
              xpc_dictionary_set_data(v25, "kCBMsgArgData", a6, a7);
              sub_100383144(*(v20 + 64), "kCBMsgIdAccessorySetupCommand", v25, 1);
            }
          }
        }

        v20 += 96;
      }

      while (v20 != v21);
      v20 = v27;
    }

    if (v20)
    {
      v28 = v20;
      operator delete(v20);
    }
  }

  return sub_1000088CC(v30);
}

void sub_1006B1648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006B1670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, const void *a6, unsigned int a7)
{
  bytes = a4;
  v30 = WORD2(a4);
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 8);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v13 = *(a1 + 80);
  v14 = (a1 + 88);
  if (v13 != v14)
  {
    do
    {
      v15 = v13[4];
      if (v15)
      {
        sub_1006B135C(&v25, v15);
      }

      v16 = v13[1];
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
          v17 = v13[2];
          v18 = *v17 == v13;
          v13 = v17;
        }

        while (!v18);
      }

      v13 = v17;
    }

    while (v17 != v14);
    v19 = v25;
    v20 = v26;
    if (v25 != v26)
    {
      do
      {
        v21 = *(v19 + 64);
        if (v21)
        {
          if (*(v21 + 160) == 1)
          {
            v22 = xpc_dictionary_create(0, 0, 0);
            v23 = v22;
            if (v22)
            {
              xpc_dictionary_set_uint64(v22, "kCBMsgArgID", *(v19 + 40));
              xpc_dictionary_set_uint64(v23, "kCBMsgArgAccessoryManagerID", a2);
              xpc_dictionary_set_uint64(v23, "kCBMsgArgBTDevice", a3);
              xpc_dictionary_set_data(v23, "kCBMsgArgAddressBytes", &bytes, 6uLL);
              xpc_dictionary_set_uint64(v23, "kCBMsgArgRelayMsgType", a5);
              xpc_dictionary_set_data(v23, "kCBMsgArgData", a6, a7);
              sub_100383144(*(v19 + 64), "kCBMsgIdAccessoryRelayMsgRecv", v23, 1);
            }
          }
        }

        v19 += 96;
      }

      while (v19 != v20);
      v19 = v25;
    }

    if (v19)
    {
      v26 = v19;
      operator delete(v19);
    }
  }

  return sub_1000088CC(v28);
}

void sub_1006B1850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006B1878(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, a1 + 8);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v12 = *(a1 + 80);
  v13 = (a1 + 88);
  if (v12 != v13)
  {
    do
    {
      v14 = v12[4];
      if (v14)
      {
        sub_1006B135C(&v24, v14);
      }

      v15 = v12[1];
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
          v16 = v12[2];
          v17 = *v16 == v12;
          v12 = v16;
        }

        while (!v17);
      }

      v12 = v16;
    }

    while (v16 != v13);
    v18 = v24;
    v19 = v25;
    if (v24 != v25)
    {
      do
      {
        v20 = *(v18 + 64);
        if (v20)
        {
          if (*(v20 + 160) == 1)
          {
            v21 = xpc_dictionary_create(0, 0, 0);
            v22 = v21;
            if (v21)
            {
              xpc_dictionary_set_uint64(v21, "kCBMsgArgID", *(v18 + 40));
              xpc_dictionary_set_uint64(v22, "kCBMsgArgAccessoryManagerID", a2);
              xpc_dictionary_set_uint64(v22, "kCBMsgArgBTDevice", a3);
              xpc_dictionary_set_uint64(v22, "kCBMsgArgCmdReqType", a4);
              xpc_dictionary_set_uint64(v22, "kCBMsgArgResult", a5);
              xpc_dictionary_set_uint64(v22, "kCBMsgArgReason", a6);
              sub_100383144(*(v18 + 64), "kCBMsgIdAccessoryCommandStatus", v22, 1);
            }
          }
        }

        v18 += 96;
      }

      while (v18 != v19);
      v18 = v24;
    }

    if (v18)
    {
      v25 = v18;
      operator delete(v18);
    }
  }

  return sub_1000088CC(v27);
}

void sub_1006B1A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006B1A70(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const void *a5, size_t a6, uint64_t a7)
{
  v14 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 134218752;
    *&v32[4] = a2;
    *&v32[12] = 2048;
    *&v32[14] = a3;
    *&v32[22] = 1024;
    v33 = a4;
    v34 = 2048;
    v35 = a6;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "BTAccessoryMsgHandler::BTAccessoryCustomCallbackHandler manager:%llX device:%llX type:%X dataSize:%zu", v32, 0x26u);
  }

  v29[0] = 0;
  v29[1] = 0;
  sub_100007F88(v29, a1 + 8);
  memset(v32, 0, sizeof(v32));
  v15 = *(a1 + 80);
  v16 = (a1 + 88);
  if (v15 != v16)
  {
    do
    {
      v17 = v15[4];
      if (v17)
      {
        sub_1006B135C(v32, v17);
      }

      v18 = v15[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v15[2];
          v23 = *v19 == v15;
          v15 = v19;
        }

        while (!v23);
      }

      v15 = v19;
    }

    while (v19 != v16);
    v20 = *v32;
    v21 = *&v32[8];
    if (*v32 != *&v32[8])
    {
      do
      {
        v22 = *(v20 + 64);
        if (v22)
        {
          v23 = *(v22 + 160) == 1 && *(v20 + 48) == a4;
          if (v23)
          {
            v24 = qword_100BCE950;
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
            {
              v27 = *(v20 + 40);
              *buf = 134217984;
              v31 = v27;
              _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "BTAccessoryMsgHandler::BTAccessoryCustomCallbackHandler cbid:%llu", buf, 0xCu);
            }

            v25 = xpc_dictionary_create(0, 0, 0);
            v26 = v25;
            if (v25)
            {
              xpc_dictionary_set_uint64(v25, "kCBMsgArgID", *(v20 + 40));
              xpc_dictionary_set_uint64(v26, "kCBMsgArgAccessoryManagerID", a2);
              xpc_dictionary_set_uint64(v26, "kCBMsgArgBTDevice", a3);
              xpc_dictionary_set_uint64(v26, "kCBMsgArgCustomMessageType", a4);
              xpc_dictionary_set_data(v26, "kCBMsgArgData", a5, a6);
              xpc_dictionary_set_uint64(v26, "kCBMsgArgUserData", a7);
              sub_100383144(*(v20 + 64), "kCBMsgIdAccessoryCustomMessage", v26, 1);
            }
          }
        }

        v20 += 96;
      }

      while (v20 != v21);
      v20 = *v32;
    }

    if (v20)
    {
      *&v32[8] = v20;
      operator delete(v20);
    }
  }

  return sub_1000088CC(v29);
}

void sub_1006B1D74(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a5)
  {
    if (qword_100B540D0 != -1)
    {
      sub_10085ECDC();
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1006B1E3C;
    v10[3] = &unk_100AF2780;
    v10[4] = a3;
    v10[5] = a1;
    v10[6] = a5;
    v11 = a2;
    v12 = a4;
    sub_100614A70(off_100B540C8, v10);
  }
}

void sub_1006B1E3C(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_10085ECF0();
  }

  if (!sub_100618944(qword_100B50B80, *(a1 + 32)))
  {
    goto LABEL_14;
  }

  if (qword_100B50B88 != -1)
  {
    sub_10085ECF0();
  }

  if (sub_100618944(qword_100B50B80, *(a1 + 40)))
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    v6 = *(a1 + 60);

    sub_1006B117C(v2, v3, v5, v4, v6);
  }

  else
  {
LABEL_14:
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085ED04();
    }
  }
}

uint64_t sub_1006B1F08(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, const void *a5, unsigned int a6, uint64_t a7)
{
  if (a7)
  {
    return sub_1006B1474(a7, result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1006B1F34(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, const void *a5, unsigned int a6, uint64_t a7)
{
  if (a7)
  {
    return sub_1006B1670(a7, result, a2, a3 & 0xFFFFFFFFFFFFLL, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1006B1F64(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  if (a6)
  {
    return sub_1006B1878(a6, result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1006B1F8C(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, size_t a5, uint64_t *a6)
{
  v12 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134219008;
    v16 = a1;
    v17 = 2048;
    v18 = a2;
    v19 = 1024;
    v20 = a3;
    v21 = 2048;
    v22 = a5;
    v23 = 2048;
    v24 = a6;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "BTAccessoryMsgHandler::BTAccessoryCustomMessageCallback manager:%llX device:%llX type:%X dataSize:%zu userData:%p", &v15, 0x30u);
  }

  result = *a6;
  if (*a6)
  {
    v14 = *a6;
    if (a3 == 64)
    {
      v14 = a6[1];
    }

    return sub_1006B1A70(result, a1, a2, a3, a4, a5, v14);
  }

  return result;
}

void sub_1006B20B8(id a1)
{
  v78 = "kCBMsgIdAccessoryGetDefaultMsg";
  v79 = 30;
  v80 = &v78;
  v1 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v1[4] = sub_1006B33D8;
  v1[5] = 0;
  v78 = "kCBMsgIdAccessoryAddCallbacksMsg";
  v79 = 32;
  v80 = &v78;
  v2 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v2[4] = sub_1006B3524;
  v2[5] = 0;
  v78 = "kCBMsgIdAccessoryRemoveCallbacksMsg";
  v79 = 35;
  v80 = &v78;
  v3 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v3[4] = sub_1006B3840;
  v3[5] = 0;
  v78 = "kCBMsgIdAccessoryRegisterDeviceMsg";
  v79 = 34;
  v80 = &v78;
  v4 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v4[4] = sub_1006B3B0C;
  v4[5] = 0;
  v78 = "kCBMsgIdAccessoryPlugInDeviceMsg";
  v79 = 32;
  v80 = &v78;
  v5 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v5[4] = sub_1006B3CC8;
  v5[5] = 0;
  v78 = "kCBMsgIdAccessoryUnplugDeviceMsg";
  v79 = 32;
  v80 = &v78;
  v6 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v6[4] = sub_1006B3DB4;
  v6[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceStateMsg";
  v79 = 34;
  v80 = &v78;
  v7 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v7[4] = sub_1006B3EA0;
  v7[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDevicesMsg";
  v79 = 30;
  v80 = &v78;
  v8 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v8[4] = sub_1006B3FB0;
  v8[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceBatteryLevelMsg";
  v79 = 41;
  v80 = &v78;
  v9 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v9[4] = sub_1006B417C;
  v9[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceBatteryStatusMsg";
  v79 = 42;
  v80 = &v78;
  v10 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v10[4] = sub_1006B428C;
  v10[5] = 0;
  v78 = "kCBMsgIdAccessoryGetTimeSyncIdMsg";
  v79 = 33;
  v80 = &v78;
  v11 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v11[4] = sub_1006B4480;
  v11[5] = 0;
  v78 = "kCBMsgIdAccessoryIsAccessoryMsg";
  v79 = 31;
  v80 = &v78;
  v12 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v12[4] = sub_1006B4590;
  v12[5] = 0;
  v78 = "kCBMsgIdAccessoryGenerateLinkKeyMsg";
  v79 = 35;
  v80 = &v78;
  v13 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v13[4] = sub_1006B46A0;
  v13[5] = 0;
  v78 = "kCBMsgIdAccessorySetLinkKeyExMsg";
  v79 = 32;
  v80 = &v78;
  v14 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v14[4] = sub_1006B4840;
  v14[5] = 0;
  v78 = "kCBMsgIdAccessorySetFirstSettingMsg";
  v79 = 35;
  v80 = &v78;
  v15 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v15[4] = sub_1006B4A5C;
  v15[5] = 0;
  v78 = "kCBMsgIdAccessorySetSecondSettingMsg";
  v79 = 36;
  v80 = &v78;
  v16 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v16[4] = sub_1006B4B60;
  v16[5] = 0;
  v78 = "kCBMsgIdAccessoryGetFirstSettingMsg";
  v79 = 35;
  v80 = &v78;
  v17 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v17[4] = sub_1006B4C64;
  v17[5] = 0;
  v78 = "kCBMsgIdAccessorySetRemoteTimeSyncMsg";
  v79 = 37;
  v80 = &v78;
  v18 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v18[4] = sub_1006B4D74;
  v18[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSecondSettingMsg";
  v79 = 36;
  v80 = &v78;
  v19 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v19[4] = sub_1006B4E78;
  v19[5] = 0;
  v78 = "kCBMsgIdAccessoryRegisterCustomMessageClientMsg";
  v79 = 47;
  v80 = &v78;
  v20 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v20[4] = sub_1006B4F88;
  v20[5] = 0;
  v78 = "kCBMsgIdAccessoryDeregisterCustomMessageClientMsg";
  v79 = 49;
  v80 = &v78;
  v21 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v21[4] = sub_1006B5374;
  v21[5] = 0;
  v78 = "kCBMsgIdAccessorySendCustomMessageMsg";
  v79 = 37;
  v80 = &v78;
  v22 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v22[4] = sub_1006B564C;
  v22[5] = 0;
  v78 = "kCBMsgIdAccessorySimulateAACPMsg";
  v79 = 32;
  v80 = &v78;
  v23 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v23[4] = sub_1006B5784;
  v23[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceDiagnosticsMsg";
  v79 = 40;
  v80 = &v78;
  v24 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v24[4] = sub_1006B589C;
  v24[5] = 0;
  v78 = "kCBMsgIdAccessorySendRequestPeriodicallyMsg";
  v79 = 43;
  v80 = &v78;
  v25 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v25[4] = sub_1006B5A38;
  v25[5] = 0;
  v78 = "kCBMsgIdAccessoryCancelRequestPeriodicallyMsg";
  v79 = 45;
  v80 = &v78;
  v26 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v26[4] = sub_1006B5B5C;
  v26[5] = 0;
  v78 = "kCBMsgIdAccessorySendControlCommandMsg";
  v79 = 38;
  v80 = &v78;
  v27 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v27[4] = sub_1006B5C60;
  v27[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDoubleTapActionMsg";
  v79 = 38;
  v80 = &v78;
  v28 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v28[4] = sub_1006B5D84;
  v28[5] = 0;
  v78 = "kCBMsgIdAccessoryGetControlCommandMsg";
  v79 = 37;
  v80 = &v78;
  v29 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v29[4] = sub_1006B5E94;
  v29[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDoubleTapActionExMsg";
  v79 = 40;
  v80 = &v78;
  v30 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v30[4] = sub_1006B5FDC;
  v30[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDoubleTapCapabilityMsg";
  v79 = 42;
  v80 = &v78;
  v31 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v31[4] = sub_1006B6104;
  v31[5] = 0;
  v78 = "kCBMsgIdAccessoryGetInEarStatusMsg";
  v79 = 34;
  v80 = &v78;
  v32 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v32[4] = sub_1006B6214;
  v32[5] = 0;
  v78 = "kCBMsgIdAccessoryGetFeatureCapabilityMsg";
  v79 = 40;
  v80 = &v78;
  v33 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v33[4] = sub_1006B6340;
  v33[5] = 0;
  v78 = "kCBMsgIdAccessorySetDoubleTapActionMsg";
  v79 = 38;
  v80 = &v78;
  v34 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v34[4] = sub_1006B6468;
  v34[5] = 0;
  v78 = "kCBMsgIdAccessorySetDoubleTapActionExMsg";
  v79 = 40;
  v80 = &v78;
  v35 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v35[4] = sub_1006B656C;
  v35[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSettingFeatureBitMaskMsg";
  v79 = 44;
  v80 = &v78;
  v36 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v36[4] = sub_1006B6690;
  v36[5] = 0;
  v78 = "kCBMsgIdAccessoryGetAccessoryInfoMsg";
  v79 = 36;
  v80 = &v78;
  v37 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v37[4] = sub_1006B67A0;
  v37[5] = 0;
  v78 = "kCBMsgIdAccessoryReadDeviceVersionInfoMsg";
  v79 = 41;
  v80 = &v78;
  v38 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v38[4] = sub_1006B693C;
  v38[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceColorMsg";
  v79 = 34;
  v80 = &v78;
  v39 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v39[4] = sub_1006B6D38;
  v39[5] = 0;
  v78 = "kCBMsgIdAccessoryGetWirelessSharingSpatialMsg";
  v79 = 45;
  v80 = &v78;
  v40 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v40[4] = sub_1006B6E48;
  v40[5] = 0;
  v78 = "kCBMsgIdAccessorySetupCommandMsg";
  v79 = 32;
  v80 = &v78;
  v41 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v41[4] = sub_1006B6F58;
  v41[5] = 0;
  v78 = "kCBMsgIdAccessorySendRelayMsgMsg";
  v79 = 32;
  v80 = &v78;
  v42 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v42[4] = sub_1006B70A8;
  v42[5] = 0;
  v78 = "kCBMsgIdAccessoryUpdateConnPriorityListMsg";
  v79 = 42;
  v80 = &v78;
  v43 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v43[4] = sub_1006B7254;
  v43[5] = 0;
  v78 = "kCBMsgIdAccessoryGetNonAppleHAEPairedDevicesMsg";
  v79 = 47;
  v80 = &v78;
  v44 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v44[4] = sub_1006B7450;
  v44[5] = 0;
  v78 = "kCBMsgIdAccessorySmartRouteModeMsg";
  v79 = 34;
  v80 = &v78;
  v45 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v45[4] = sub_1006B7638;
  v45[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSmartRouteModeMsg";
  v79 = 37;
  v80 = &v78;
  v46 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v46[4] = sub_1006B773C;
  v46[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSmartRouteSupportMsg";
  v79 = 40;
  v80 = &v78;
  v47 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v47[4] = sub_1006B784C;
  v47[5] = 0;
  v78 = "kCBMsgIdAccessorySetDeviceStateOnPeerSrcMsg";
  v79 = 43;
  v80 = &v78;
  v48 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v48[4] = sub_1006B795C;
  v48[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSpatialAudioPlatformSupportMsg";
  v79 = 50;
  v80 = &v78;
  v49 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v49[4] = sub_1006B7AE4;
  v49[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceSoundProfileSupportMsg";
  v79 = 48;
  v80 = &v78;
  v50 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v50[4] = sub_1006B7BF4;
  v50[5] = 0;
  v78 = "kCBMsgIdAccessoryGetDeviceSoundProfileAllowedMsg";
  v79 = 48;
  v80 = &v78;
  v51 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v51[4] = sub_1006B7D10;
  v51[5] = 0;
  v78 = "kCBMsgIdAccessorySetDeviceSoundProfileAllowedMsg";
  v79 = 48;
  v80 = &v78;
  v52 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v52[4] = sub_1006B7E30;
  v52[5] = 0;
  v78 = "kCBMsgIdAccessoryGetCallManagementConfigMsg";
  v79 = 43;
  v80 = &v78;
  v53 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v53[4] = sub_1006B7F40;
  v53[5] = 0;
  v78 = "kCBMsgIdAccessoryGetFeatureProxCardStatusMsg";
  v79 = 44;
  v80 = &v78;
  v54 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v54[4] = sub_1006B80D8;
  v54[5] = 0;
  v78 = "kCBMsgIdAccessorySetFeatureProxCardStatusMsg";
  v79 = 44;
  v80 = &v78;
  v55 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v55[4] = sub_1006B81F4;
  v55[5] = 0;
  v78 = "kCBMsgIdAccessoryGetStereoHFPSupportMsg";
  v79 = 39;
  v80 = &v78;
  v56 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v56[4] = sub_1006B8304;
  v56[5] = 0;
  v78 = "kCBMsgIdAccessoryGetAnnounceMessagesSupportMsg";
  v79 = 46;
  v80 = &v78;
  v57 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v57[4] = sub_1006B8414;
  v57[5] = 0;
  v78 = "kCBMsgIdAccessoryGetAACPCapabilityBitsMsg";
  v79 = 41;
  v80 = &v78;
  v58 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v58[4] = sub_1006B8524;
  v58[5] = 0;
  v78 = "kCBMsgIdAccessoryGetAACPCapabilityIntegerMsg";
  v79 = 44;
  v80 = &v78;
  v59 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v59[4] = sub_1006B86C0;
  v59[5] = 0;
  v78 = "kCBMsgIdAccessorySensorStreamTimeSyncEnableMsg";
  v79 = 46;
  v80 = &v78;
  v60 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v60[4] = sub_1006B87E8;
  v60[5] = 0;
  v78 = "kCBMsgIdAccessoryGetAnnounceCallsSupportMsg";
  v79 = 43;
  v80 = &v78;
  v61 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v61[4] = sub_1006B88EC;
  v61[5] = 0;
  v78 = "kCBMsgIdAccessorySpatialAudioModeMsg";
  v79 = 36;
  v80 = &v78;
  v62 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v62[4] = sub_1006B89FC;
  v62[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSpatialAudioModeMsg";
  v79 = 39;
  v80 = &v78;
  v63 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v63[4] = sub_1006B8B44;
  v63[5] = 0;
  v78 = "kCBMsgIdAccessorySpatialAudioAllowedMsg";
  v79 = 39;
  v80 = &v78;
  v64 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v64[4] = sub_1006B8C98;
  v64[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSpatialAudioAllowedMsg";
  v79 = 42;
  v80 = &v78;
  v65 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v65[4] = sub_1006B8DA0;
  v65[5] = 0;
  v78 = "kCBMsgIdAccessoryGetAdaptiveLatencyJitterBufferLevelMsg";
  v79 = 55;
  v80 = &v78;
  v66 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v66[4] = sub_1006B8EB0;
  v66[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSpatialAudioActiveMsg";
  v79 = 41;
  v80 = &v78;
  v67 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v67[4] = sub_1006B8FE8;
  v67[5] = 0;
  v78 = "kCBMsgIdAccessorySetIsHiddenMsg";
  v79 = 31;
  v80 = &v78;
  v68 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v68[4] = sub_1006B90F8;
  v68[5] = 0;
  v78 = "kCBMsgIdAccessoryGetGyroInformationMsg";
  v79 = 38;
  v80 = &v78;
  v69 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v69[4] = sub_1006B91FC;
  v69[5] = 0;
  v78 = "kCBMsgIdAccessoryGetSensorStreamingFrequencyMsg";
  v79 = 47;
  v80 = &v78;
  v70 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v70[4] = sub_1006B932C;
  v70[5] = 0;
  v78 = "kCBMsgIdAccessoryGetCaseSerialNumbersForAppleProductIdMsg";
  v79 = 57;
  v80 = &v78;
  v71 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v71[4] = sub_1006B943C;
  v71[5] = 0;
  v78 = "kCBMsgIdAccessoryGetCaseSerialNumbersForAppleProductIdsMsg";
  v79 = 58;
  v80 = &v78;
  v72 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v72[4] = sub_1006B95D8;
  v72[5] = 0;
  v78 = "kCBMsgIdAccessoryGetPrimaryBudSideMsg";
  v79 = 37;
  v80 = &v78;
  v73 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v73[4] = sub_1006B97C8;
  v73[5] = 0;
  v78 = "kCBMsgIdAccessoryGetHeadphoneFeatureValueMsg";
  v79 = 44;
  v80 = &v78;
  v74 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v74[4] = sub_1006B98E0;
  v74[5] = 0;
  v78 = "kCBMsgIdAccessorySetHeadphoneFeatureValueMsg";
  v79 = 44;
  v80 = &v78;
  v75 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v75[4] = sub_1006B9A08;
  v75[5] = 0;
  v78 = "kCBMsgIdAccessorySendAdaptiveVolumeMessageMsg";
  v79 = 45;
  v80 = &v78;
  v76 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v76[4] = sub_1006B9B2C;
  v76[5] = 0;
  v78 = "kCBMsgIdAccessorySendPMEConfigMessageMsg";
  v79 = 40;
  v80 = &v78;
  v77 = sub_1006BA258(&xmmword_100BCEAD8, &v78, &unk_1008A9BD0, &v80);
  v77[4] = sub_1006B9C98;
  v77[5] = 0;
}

void sub_1006B33D8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSessionID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085ED4C();
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 7;
    goto LABEL_10;
  }

  if (!uint64)
  {
    goto LABEL_9;
  }

LABEL_3:
  v14 = 0;
  LODWORD(v6) = sub_10051BB7C(uint64, &v14);
  uint64 = 0;
  if (!v6)
  {
    uint64 = v14;
    v7 = *(a1 + 72);
    v8 = *(v7 + 40);
    asid = xpc_connection_get_asid(*(v7 + 16));
    v10 = asid;
    if (qword_100B50B88 != -1)
    {
      v13 = asid;
      sub_10085EDB4();
      v10 = v13;
    }

    sub_100618A78(qword_100B50B80, v14, v8, v10);
  }

  v6 = v6;
LABEL_10:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgAccessoryManagerID", uint64);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

uint64_t sub_1006B3524(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085EDDC();
  }

  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 8);
  if (!uint64)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 72);
  v8 = *(v7 + 40);
  asid = xpc_connection_get_asid(*(v7 + 16));
  v10 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = uint64;
    v24 = 1024;
    v25 = v8;
    v26 = 2048;
    v27 = asid;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "identifier mapping accessoryManagerID:%llx pid:%d asid:%llx", buf, 0x1Cu);
  }

  if (qword_100B50B88 != -1)
  {
    sub_10085EDB4();
  }

  if (sub_100618D34(qword_100B50B80, uint64, v8, asid))
  {
    v11 = *(a1 + 80);
    if (v11 == (a1 + 88))
    {
LABEL_19:
      v17 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A0040EB02D296uLL);
      *buf = v17;
      v17[5] = v6;
      v17[7] = uint64;
      *v17 = sub_1006B1D74;
      v17[1] = sub_1006B1F08;
      v17[2] = sub_1006B1F34;
      v17[3] = sub_1006B1F64;
      v17[8] = *(a1 + 72);
      sub_1000452CC(a1 + 80, buf, buf);
      if (*(a1 + 105))
      {
        v12 = 0;
      }

      else
      {
        v21 = sub_10051BBD8(uint64, *buf, a1);
        *(a1 + 105) = 1;
        v12 = v21;
      }
    }

    else
    {
      v12 = 1;
      while (1)
      {
        v13 = v11[4];
        if (*(v13 + 40) == v6 && *(v13 + 56) == uint64)
        {
          break;
        }

        v14 = v11[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v11[2];
            v16 = *v15 == v11;
            v11 = v15;
          }

          while (!v16);
        }

        v11 = v15;
        if (v15 == (a1 + 88))
        {
          goto LABEL_19;
        }
      }
    }
  }

  else
  {
LABEL_21:
    v12 = 7;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v19 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v19);
    xpc_release(v19);
  }

  return sub_1000088CC(v22);
}

uint64_t sub_1006B3840(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085EE44();
  }

  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 8);
  if (!uint64)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 72);
  v8 = *(v7 + 40);
  asid = xpc_connection_get_asid(*(v7 + 16));
  v10 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = uint64;
    v23 = 1024;
    v24 = v8;
    v25 = 2048;
    v26 = asid;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "identifier mapping accessoryManagerID:%llx pid:%d asid:%llx", buf, 0x1Cu);
  }

  if (qword_100B50B88 != -1)
  {
    sub_10085EDB4();
  }

  if (sub_100618D34(qword_100B50B80, uint64, v8, asid))
  {
    v11 = *(a1 + 80);
    if (v11 == (a1 + 88))
    {
LABEL_18:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085EEAC();
      }

      v16 = 0;
    }

    else
    {
      while (1)
      {
        v12 = v11[4];
        if (*(v12 + 40) == v6 && *(v12 + 56) == uint64)
        {
          break;
        }

        v13 = v11[1];
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
            v14 = v11[2];
            v15 = *v14 == v11;
            v11 = v14;
          }

          while (!v15);
        }

        v11 = v14;
        if (v14 == (a1 + 88))
        {
          goto LABEL_18;
        }
      }

      *buf = v11[4];
      if (*(a1 + 105) == 1)
      {
        v20 = sub_10051BC64(uint64, v12);
        *(a1 + 105) = 0;
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }

      sub_100075DC4((a1 + 80), buf);
      free(*buf);
    }
  }

  else
  {
LABEL_21:
    v16 = 7;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v18 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v16);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v18);
    xpc_release(v18);
  }

  return sub_1000088CC(v21);
}

void sub_1006B3B0C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  length = 0;
  data = xpc_dictionary_get_data(v4, "kCBMsgArgAddressBytes", &length);
  if (length == 6)
  {
    v7 = data;
    string = xpc_dictionary_get_string(v4, "kCBMsgArgName");
    v9 = xpc_dictionary_get_uint64(v4, "kCBMsgArgClassOfDevice");
    v10 = xpc_dictionary_get_string(v4, "kCBMsgArgPincode");
    value = 0;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10085EEE0();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v11 = sub_10051BCDC(uint64, v7, string, v9, v10, &value);
LABEL_11:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v13 = reply;
      xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v11);
      v15 = value;
      v14 = "kCBMsgArgBTDevice";
      v12 = v13;
      goto LABEL_13;
    }

    v11 = 7;
    goto LABEL_11;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
  {
    sub_1008326E8();
  }

  v12 = xpc_dictionary_create_reply(xdict);
  if (v12)
  {
    v13 = v12;
    v14 = "kCBMsgArgResult";
    v15 = 8;
LABEL_13:
    xpc_dictionary_set_uint64(v12, v14, v15);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_1006B3CC8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085EF48();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051C178(uint64, v6);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B3DB4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085EFB0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051C400(uint64, v6);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B3EA0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F018();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051C4C0(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgState", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B3FB0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCbMsgArgDeviceArrayMaxSize");
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  bzero(&v15 - v7, v9);
  v15 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F080();
  }

  if (v6 <= 0x100)
  {
    if (uint64)
    {
      v10 = sub_10051C5A0(uint64, v8, &v15, v6);
    }

    else
    {
      v10 = 7;
    }
  }

  else
  {
    v10 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    v13 = xpc_array_create(0, 0);
    if (!v10 && v15)
    {
      for (i = 0; i < v15; ++i)
      {
        xpc_array_set_uint64(v13, 0xFFFFFFFFFFFFFFFFLL, *&v8[8 * i]);
      }
    }

    xpc_dictionary_set_value(v12, "kCBMsgArgDeviceArray", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v13);
    xpc_release(v12);
  }
}

void sub_1006B417C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LOBYTE(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F0E8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051C6F8(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBatteryPercent", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B428C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  v12 = 0;
  *value = 0u;
  *v11 = 0u;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F150();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051C7D8(uint64, v6, value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBatteryPercentSingle", LOBYTE(value[0]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBatteryPercentLeft", LOBYTE(v11[0]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBatteryPercentRight", LOBYTE(value[1]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBatteryPercentCase", LOBYTE(v11[1]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBatteryPercentCombined", v12);
    xpc_dictionary_set_BOOL(v9, "kCBMsgArgBatteryIsChargingSingle", HIDWORD(value[0]) != 0);
    xpc_dictionary_set_BOOL(v9, "kCBMsgArgBatteryIsChargingLeft", HIDWORD(v11[0]) != 0);
    xpc_dictionary_set_BOOL(v9, "kCBMsgArgBatteryIsChargingRight", HIDWORD(value[1]) != 0);
    xpc_dictionary_set_BOOL(v9, "kCBMsgArgBatteryIsChargingCase", HIDWORD(v11[1]) != 0);
    xpc_dictionary_set_BOOL(v9, "kCBMsgArgBatteryIsChargingCombined", HIDWORD(v12) != 0);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B4480(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  value = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F1B8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051DE88(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgID", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B4590(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F220();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051C8B8(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgIsAccessory", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B46A0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v12 = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgAddressBytes", &v12);
  if (v12 == 6)
  {
    v7 = data;
    bytes[0] = 0;
    bytes[1] = 0;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10085F288();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v8 = sub_10051C990(uint64, v7, bytes);
LABEL_11:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v10 = reply;
      xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
      xpc_dictionary_set_data(v10, "kCBMsgArgLinkKey", bytes, 0x10uLL);
      goto LABEL_13;
    }

    v8 = 7;
    goto LABEL_11;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
  {
    sub_1008326E8();
  }

  v9 = xpc_dictionary_create_reply(xdict);
  if (v9)
  {
    v10 = v9;
    xpc_dictionary_set_uint64(v9, "kCBMsgArgResult", 8uLL);
LABEL_13:
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B4840(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  length = 0;
  data = xpc_dictionary_get_data(v4, "kCBMsgArgAddressBytes", &length);
  if (length == 6)
  {
    v7 = data;
    string = xpc_dictionary_get_string(v4, "kCBMsgArgName");
    v9 = xpc_dictionary_get_uint64(v4, "kCBMsgArgClassOfDevice");
    v10 = xpc_dictionary_get_uint64(v4, "kCBMsgArgServiceMask");
    v19 = 0;
    v11 = xpc_dictionary_get_data(v4, "kCBMsgArgLinkKey", &v19);
    value = 0;
    v21 = 0uLL;
    if (v11)
    {
      if (v19)
      {
        v21 = *v11;
      }
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10085F2F0();
      if (uint64)
      {
        goto LABEL_7;
      }
    }

    else if (uint64)
    {
LABEL_7:
      v12 = sub_10051CA8C(uint64, v7, string, v9, v10, &v21, &value);
LABEL_14:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v14 = reply;
      xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v12);
      v16 = value;
      v15 = "kCBMsgArgBTDevice";
      v13 = v14;
      goto LABEL_16;
    }

    v12 = 7;
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
  {
    sub_1008326E8();
  }

  v13 = xpc_dictionary_create_reply(xdict);
  if (v13)
  {
    v14 = v13;
    v15 = "kCBMsgArgResult";
    v16 = 8;
LABEL_16:
    xpc_dictionary_set_uint64(v13, v15, v16);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v14);
    xpc_release(v14);
  }
}

void sub_1006B4A5C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgMicMode");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F358();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051D754(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B4B60(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F3C0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051DF58(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B4C64(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F428();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051EE98(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgMicMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B4D74(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F490();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051DE78(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B4E78(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F4F8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051F008(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgInEarDetect", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

uint64_t sub_1006B4F88(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgEventType");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgUserData");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F560();
  }

  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 8);
  if (uint64)
  {
    v9 = *(a1 + 72);
    v10 = *(v9 + 40);
    asid = xpc_connection_get_asid(*(v9 + 16));
    v12 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v30 = uint64;
      v31 = 1024;
      *v32 = v10;
      *&v32[4] = 2048;
      *&v32[6] = asid;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "identifier mapping accessoryManagerID:%llx pid:%d asid:%llx", buf, 0x1Cu);
    }

    if (qword_100B50B88 != -1)
    {
      sub_10085EDB4();
    }

    if (sub_100618D34(qword_100B50B80, uint64, v10, asid))
    {
      v13 = *(a1 + 80);
      if (v13 == (a1 + 88))
      {
LABEL_20:
        v19 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A0040EB02D296uLL);
        v27 = v19;
        v19[6] = v6;
        v19[7] = uint64;
        v19[4] = sub_1006B1F8C;
        v19[5] = v7;
        v19[8] = *(a1 + 72);
        v19[9] = a1;
        if (v8)
        {
          v20 = -1;
        }

        else
        {
          v20 = 0;
        }

        *(v19 + 22) = (v6 << 25) >> 31;
        *(v19 + 23) = v20;
        sub_1000452CC(a1 + 80, &v27, &v27);
        v21 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(a1 + 96);
          *buf = 134219008;
          v30 = uint64;
          v31 = 2048;
          *v32 = v27 + 4;
          *&v32[8] = 2048;
          *&v32[10] = v7;
          v33 = 2048;
          v34 = v6;
          v35 = 2048;
          v36 = v26;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "BTAccessoryMsgHandler::handleBTAccessoryRegisterCustomMessageClientMsg accessoryManager:%llx callbacks:%p cbid:%llu messageType:%llX fBTAccessoryCallbacks.size():%lu", buf, 0x34u);
        }

        if (*(a1 + 104))
        {
          v14 = 0;
        }

        else
        {
          v22 = sub_10051F300(uint64, v27 + 4, -1, (v27 + 9));
          if (v22)
          {
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_10085F5C8();
            }

            v14 = v22;
          }

          else
          {
            v14 = 0;
            *(a1 + 104) = 1;
          }
        }
      }

      else
      {
        v14 = 1;
        while (1)
        {
          v15 = v13[4];
          if (v15[5] == v7 && v15[7] == uint64 && v15[6] == v6)
          {
            break;
          }

          v16 = v13[1];
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
              v17 = v13[2];
              v18 = *v17 == v13;
              v13 = v17;
            }

            while (!v18);
          }

          v13 = v17;
          if (v17 == (a1 + 88))
          {
            goto LABEL_20;
          }
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 7;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v24 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v14);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v24);
    xpc_release(v24);
  }

  return sub_1000088CC(v28);
}

void sub_1006B5350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006B5374(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F5FC();
  }

  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 8);
  if (uint64)
  {
    v7 = *(a1 + 72);
    v8 = *(v7 + 40);
    asid = xpc_connection_get_asid(*(v7 + 16));
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      *&buf[4] = uint64;
      v23 = 1024;
      v24 = v8;
      v25 = 2048;
      v26 = asid;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "identifier mapping accessoryManagerID:%llx pid:%d asid:%llx", buf, 0x1Cu);
    }

    if (qword_100B50B88 != -1)
    {
      sub_10085EDB4();
    }

    if (sub_100618D34(qword_100B50B80, uint64, v8, asid))
    {
      v11 = *(a1 + 80);
      if (v11 == (a1 + 88))
      {
LABEL_18:
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085EEAC();
        }

        v16 = 0;
      }

      else
      {
        while (1)
        {
          v12 = v11[4];
          if (v12[5] == v6 && v12[7] == uint64)
          {
            break;
          }

          v13 = v11[1];
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
              v14 = v11[2];
              v15 = *v14 == v11;
              v11 = v14;
            }

            while (!v15);
          }

          v11 = v14;
          if (v14 == (a1 + 88))
          {
            goto LABEL_18;
          }
        }

        *buf = v11[4];
        if (*(a1 + 104) == 1)
        {
          v20 = sub_10051F3B4(uint64, v12 + 4);
          *(a1 + 104) = 0;
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }

        sub_100075DC4((a1 + 80), buf);
        free(*buf);
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 7;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v18 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v16);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v18);
    xpc_release(v18);
  }

  return sub_1000088CC(v21);
}

void sub_1006B564C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgClientType");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgData", &length);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F664();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_10051F44C(uint64, v7, v6, data, length);
    goto LABEL_6;
  }

  v9 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1006B5784(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgData", &length);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F6CC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051F6B0(uint64, v6, data, length);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B589C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  bzero(&v13 - v8, v7);
  v13 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F734();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v10 = sub_10051FB30(uint64, v6, v9, &v13, v7);
    goto LABEL_6;
  }

  v10 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    if (!v10)
    {
      xpc_dictionary_set_data(v12, "kCBMsgArgData", v9, v13);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1006B5A38(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgType");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgInterval");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F79C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_10051FCE4(uint64, v6, v7, v8);
    goto LABEL_6;
  }

  v9 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1006B5B5C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgType");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F804();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051FE28(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B5C60(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgValue");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgType");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F86C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_10051FF64(uint64, v6, v8, v7);
    goto LABEL_6;
  }

  v9 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1006B5D84(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F8D4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051EB24(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgDoubleTapAction", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B5E94(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(v4, "kCBMsgArgType");
  v8 = xpc_dictionary_get_uint64(v4, "kCBMsgArgSubType");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F93C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_1005201C4(uint64, v6, v7, v8, &value);
    goto LABEL_6;
  }

  v9 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgValue", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1006B5FDC(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  value = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085F9A4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051EC88(uint64, v6, &value + 1, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgDoubleTapActionLeft", HIDWORD(value));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgDoubleTapActionRight", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B6104(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FA0C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051D350(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgDoubleTapCapability", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B6214(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  value[0] = 0x300000003;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FA74();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051E250(uint64, v6, value + 1, value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgInEarStatusPrimary", HIDWORD(value[0]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgInEarStatusSecondary", LODWORD(value[0]));
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B6340(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(v4, "kCBMsgArgFeature");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FADC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051D4B8(uint64, v6, v7, &value);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgSupported", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B6468(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgDoubleTapAction");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FB44();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051CE28(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B656C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgDoubleTapActionLeft");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgDoubleTapActionRight");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FBAC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_10051D0A4(uint64, v6, v7, v8);
    goto LABEL_6;
  }

  v9 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1006B6690(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FC14();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100521494(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMSgArgFeatureBitMask", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B67A0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  bzero(&v13 - v8, v7);
  v13 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FC7C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v10 = sub_100521730(uint64, v6, v9, &v13, v7);
    goto LABEL_6;
  }

  v10 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    if (!v10)
    {
      xpc_dictionary_set_data(v12, "kCBMsgArgData", v9, v13);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1006B693C(uint64_t a1, xpc_object_t xdict)
{
  v34 = a1;
  v41 = xdict;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v3 = xpc_dictionary_get_uint64(value, "kCBMsgArgAddressStringBuffSize");
  v4 = xpc_dictionary_get_uint64(value, "kCBMsgArgNameBuffSize");
  v5 = xpc_dictionary_get_uint64(value, "kCBMsgArgManufacturerBuffSize");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgModelNumberBuffSize");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgSerialNumberBuffSize");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgFWVersionBuffSize");
  v9 = xpc_dictionary_get_uint64(value, "kCBMsgArgHWVersionBuffSize");
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v39 = v3;
  bzero(&v33 - v10, v3);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v38 = v4;
  bzero(&v33 - v13, v4);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v37 = v5;
  bzero(&v33 - v16, v5);
  __chkstk_darwin(v18);
  v20 = &v33 - v19;
  v36 = v6;
  bzero(&v33 - v19, v6);
  __chkstk_darwin(v21);
  v23 = &v33 - v22;
  v35 = v7;
  bzero(&v33 - v22, v7);
  __chkstk_darwin(v24);
  v26 = &v33 - v25;
  bzero(&v33 - v25, v8);
  __chkstk_darwin(v27);
  v29 = &v33 - v28;
  bzero(&v33 - v28, v9);
  *v11 = 0;
  *v14 = 0;
  *v17 = 0;
  *v20 = 0;
  *v23 = 0;
  *v26 = 0;
  *v29 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FCE4();
  }

  v30 = sub_100521E2C(uint64, v11, v39, v14, v38, v17, v37, v20, v36, v23, v35, v26, v8, v29, v9);
  reply = xpc_dictionary_create_reply(v41);
  if (reply)
  {
    v32 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v30);
    if (!v30)
    {
      xpc_dictionary_set_string(v32, "kCBMsgArgAddressString", v11);
      xpc_dictionary_set_string(v32, "kCBMsgArgName", v14);
      xpc_dictionary_set_string(v32, "kCBMsgArgManufacturer", v17);
      xpc_dictionary_set_string(v32, "kCBMsgArgModelNumber", v20);
      xpc_dictionary_set_string(v32, "kCBMsgArgSerialNumber", v23);
      xpc_dictionary_set_string(v32, "kCBMsgArgFWVersion", v26);
      xpc_dictionary_set_string(v32, "kCBMsgArgHWVersion", v29);
    }

    xpc_connection_send_message(*(*(v34 + 72) + 16), v32);
    xpc_release(v32);
  }
}

void sub_1006B6D38(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FD24();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100521EF8(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgColor", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B6E48(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FD8C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100525210(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgWSSpatial", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B6F58(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgSetupType");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgOPType");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgData", &length);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FDF4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v10 = sub_10051E3B8(uint64, v6, v7, v8, data, length);
    goto LABEL_6;
  }

  v10 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1006B70A8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgRelayMsgType");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgAddressBytes", &length);
  if (length == 6)
  {
    v9 = data;
    v15 = 0;
    v10 = xpc_dictionary_get_data(value, "kCBMsgArgData", &v15);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10085FE5C();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v11 = sub_10051E66C(uint64, v6, v9, v7, v10, v15);
LABEL_11:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v13 = reply;
      v14 = v11;
      goto LABEL_13;
    }

    v11 = 7;
    goto LABEL_11;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
  {
    sub_1008326E8();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v13 = reply;
    v14 = 8;
LABEL_13:
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v14);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_1006B7254(uint64_t a1, xpc_object_t xdict)
{
  v21 = a1;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v20 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v5 = xpc_dictionary_get_uint64(value, "kCBMsgArgCmdReqType");
  array = xpc_dictionary_get_array(value, "kCBMsgArgDeviceArray");
  count = xpc_array_get_count(array);
  v8 = count;
  v9 = count;
  __chkstk_darwin(count);
  v11 = &v20 - v10;
  bzero(&v20 - v10, v12);
  if (v9)
  {
    v13 = 0;
    v14 = v11;
    do
    {
      length = 0;
      data = xpc_array_get_data(array, v13, &length);
      if (length >= 6)
      {
        v16 = 6;
      }

      else
      {
        v16 = length;
      }

      memcpy(v14, data, v16);
      ++v13;
      v14 += 6;
    }

    while (v9 != v13);
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FEC4();
    if (uint64)
    {
      goto LABEL_9;
    }
  }

  else if (uint64)
  {
LABEL_9:
    v17 = sub_10051E8D0(uint64, v20, v5, v11, v8);
    goto LABEL_12;
  }

  v17 = 7;
LABEL_12:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v19 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v17);
    xpc_connection_send_message(*(*(v21 + 72) + 16), v19);
    xpc_release(v19);
  }
}

void sub_1006B7450(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCbMsgArgDeviceArrayMaxSize");
  if (v6 > 0x3E7)
  {
    v7 = 1000;
  }

  else
  {
    v6 = xpc_dictionary_get_uint64(value, "kCbMsgArgDeviceArrayMaxSize");
    v7 = v6;
  }

  v15 = 0;
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FF2C();
    if (uint64)
    {
      goto LABEL_6;
    }
  }

  else if (uint64)
  {
LABEL_6:
    v10 = sub_100522034(uint64, v9, &v15, v7);
    goto LABEL_9;
  }

  v10 = 7;
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    v13 = xpc_array_create(0, 0);
    if (v15)
    {
      for (i = 0; i < v15; ++i)
      {
        xpc_array_set_uint64(v13, 0xFFFFFFFFFFFFFFFFLL, *&v9[8 * i]);
      }
    }

    xpc_dictionary_set_value(v12, "kCBMsgArgDeviceArray", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v13);
    xpc_release(v12);
  }
}

void sub_1006B7638(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryGenericConfigMode");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FF94();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_1005234C8(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B773C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10085FFFC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052358C(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryGenericConfigMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B784C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860064();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_1005238F0(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryGenericConfigMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B795C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgAddressBytes", &length);
  if (length == 6)
  {
    v8 = data;
    v9 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryDeviceState");
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_1008600CC();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v10 = sub_100523C60(uint64, v6, v8, v9);
LABEL_11:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v12 = reply;
      v13 = v10;
      goto LABEL_13;
    }

    v10 = 7;
    goto LABEL_11;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
  {
    sub_1008326E8();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    v13 = 8;
LABEL_13:
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1006B7AE4(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860134();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100523EB0(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryGenericConfigMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B7BF4(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  LODWORD(value) = 0;
  if (v4)
  {
    v5 = v4;
    uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
    v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBTDevice");
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10086019C();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v8 = sub_1005245AC(uint64, v7, &value);
      goto LABEL_8;
    }

    v8 = 7;
  }

  else
  {
    v8 = 3;
  }

LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B7D10(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  LODWORD(value) = -1;
  if (v4)
  {
    v5 = v4;
    uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
    v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBTDevice");
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_100860204();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v8 = sub_1005246C4(uint64, v7, &value);
      goto LABEL_8;
    }

    v8 = 7;
  }

  else
  {
    v8 = 3;
  }

LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B7E30(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (value)
  {
    v5 = value;
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
    v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBTDevice");
    v8 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBool");
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10086026C();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v9 = sub_1005248B8(uint64, v7, v8);
      goto LABEL_8;
    }

    v9 = 7;
  }

  else
  {
    v9 = 3;
  }

LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1006B7F40(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  memset(v14, 0, 7);
  if (!value)
  {
    v9 = 0;
    v8 = 3;
    goto LABEL_11;
  }

  v5 = value;
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008602D4();
    if (uint64)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    v8 = 7;
    goto LABEL_11;
  }

  if (!uint64)
  {
    goto LABEL_10;
  }

LABEL_4:
  v8 = sub_100524178(uint64, v7, v14);
  v9 = v14[0];
  if (LOBYTE(v14[0]) == 1)
  {
    v11 = v14[0] | ((LOWORD(v14[1]) | (BYTE2(v14[1]) << 16)) << 32);
    v10 = (v14[0] >> 20) & 0xF0 | (v11 >> 24) & 0xF00 | (v11 >> 28) & 0xF000 | HIDWORD(v11) & 0xF0000 | 1;
    goto LABEL_12;
  }

  if (LOBYTE(v14[0]))
  {
    v10 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v10 = (v9 >> 4) & 0xF0 | (v9 >> 8) & 0xF00;
LABEL_12:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v13 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgCallManagementMessage", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_1006B80D8(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  value = 0;
  if (v4)
  {
    v5 = v4;
    uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
    v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBTDevice");
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10086033C();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v8 = sub_100524308(uint64, v7, &value);
      goto LABEL_8;
    }

    v8 = 7;
  }

  else
  {
    v8 = 3;
  }

LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgFeatureProxCardStatusMessage", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B81F4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (value)
  {
    v5 = value;
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
    v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgBTDevice");
    v8 = xpc_dictionary_get_uint64(v5, "kCBMsgArgFeatureProxCardStatusMessage");
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_1008603A4();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v9 = sub_1005244DC(uint64, v7, v8);
      goto LABEL_8;
    }

    v9 = 7;
  }

  else
  {
    v9 = 3;
  }

LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1006B8304(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  LODWORD(value) = 0;
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10086040C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100523FD8(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStereoHFPSupport", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B8414(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860474();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10051D5B4(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAnnounceMsgSupport", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B8524(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  bzero(&v13 - v8, v7);
  v13 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008604DC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v10 = sub_100521C70(uint64, v6, v9, &v13, v7);
    goto LABEL_6;
  }

  v10 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    if (!v10)
    {
      xpc_dictionary_set_data(v12, "kCBMsgArgData", v9, v13);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1006B86C0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAACPCapabilityInteger");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860544();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_100521D7C(uint64, v6, v7, &value);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgValue", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B87E8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008605AC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051DE80(uint64, v7, v6);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B88EC(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860614();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100524A68(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAnnounceCallsSupport", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B89FC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryGenericConfigMode");
  string = xpc_dictionary_get_string(value, "kCBMsgArgAccessoryBundleID");
  v9 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryHeadTrackingStatus");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10086067C();
    if (string)
    {
LABEL_3:
      if (uint64)
      {
        v10 = sub_100522C8C(uint64, v6, string, v7, v9);
      }

      else
      {
        v10 = 7;
      }

      goto LABEL_8;
    }
  }

  else if (string)
  {
    goto LABEL_3;
  }

  v10 = 3;
LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1006B8B44(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  string = xpc_dictionary_get_string(v4, "kCBMsgArgAccessoryBundleID");
  value[0] = 0xFFFFFFFFFFLL;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008606E4();
    if (string)
    {
LABEL_3:
      if (uint64)
      {
        v8 = sub_100523118(uint64, v6, string, value + 1, value);
      }

      else
      {
        v8 = 7;
      }

      goto LABEL_8;
    }
  }

  else if (string)
  {
    goto LABEL_3;
  }

  v8 = 3;
LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryGenericConfigMode", HIDWORD(value[0]));
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryHeadTrackingStatus", LODWORD(value[0]));
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B8C98(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryGenericConfigMode");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10086074C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_100522568(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B8DA0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008607D0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100522934(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryGenericConfigMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B8EB0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LOWORD(value) = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryJBL");
  v10 = v6;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860850();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100524BFC(uint64, &v10, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryJBL", value);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBTDevice", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B8FE8(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008608B8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_1005221B4(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryGenericConfigMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B90F8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860920();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10051F17C(uint64, v6, v7);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B91FC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  memset(length, 0, sizeof(length));
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860988();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100525044(uint64, v6, &length[1], length);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    if (!v7 && *&length[1])
    {
      xpc_dictionary_set_data(v9, "kCBMsgArgData", *&length[1], length[0]);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }

  if (*&length[1])
  {
    free(*&length[1]);
  }
}

void sub_1006B932C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008609F0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100524ED4(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgSensorStreamingFrequency", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B943C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgProductId");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  bzero(&v13 - v8, v7);
  v13 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860A58();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v6)
  {
LABEL_3:
    v10 = sub_100525384(v6, uint64, v9, &v13, v7);
    goto LABEL_6;
  }

  v10 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    if (!v10)
    {
      xpc_dictionary_set_data(v12, "kCBMsgArgData", v9, v13);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1006B95D8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = xpc_dictionary_get_value(value, "kCBMsgArgProductIds");
  count = xpc_array_get_count(v5);
  v7 = malloc_type_malloc(4 * count, 0x100004052888210uLL);
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v7[i] = xpc_array_get_uint64(v5, i);
    }
  }

  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v10 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  bzero(&v16 - v11, v10);
  v16 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860AC0();
    if (uint64)
    {
      goto LABEL_6;
    }
  }

  else if (uint64)
  {
LABEL_6:
    v13 = sub_1005256B8(uint64, v7, count, v12, &v16, v10);
    goto LABEL_9;
  }

  v13 = 7;
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v15 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v13);
    if (!v13)
    {
      xpc_dictionary_set_data(v15, "kCBMsgArgData", v12, v16);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v15);
    xpc_release(v15);
  }

  free(v7);
}

void sub_1006B97C8(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 3;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860B28();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100525A14(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    if (!v7)
    {
      xpc_dictionary_set_uint64(v9, "kCBMsgArgPrimarySide", value);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1006B98E0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(v4, "kCBMsgArgHeadphoneFeatureType");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860B90();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_100525BE8(uint64, v6, v7, &value);
    goto LABEL_6;
  }

  v8 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgHeadphoneFeatureValue", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1006B9A08(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgHeadphoneFeatureType");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgHeadphoneFeatureValue");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100860BF8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_100526120(uint64, v6, v7, v8);
    goto LABEL_6;
  }

  v9 = 7;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1006B9B2C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgAVMsgLen");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgData", &length);
  if (length == v7)
  {
    v9 = data;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_100860CC8();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v10 = sub_10051F910(uint64, v6, v7, v9);
      goto LABEL_10;
    }

    v10 = 7;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100860C60();
    }

    v10 = 3;
  }

LABEL_10:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1006B9C98(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAccessoryManagerID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgPMEMsgLen");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgData", &length);
  if (length == v7)
  {
    v9 = data;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_100860D98();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v10 = sub_10051FA20(uint64, v6, v7, v9);
      goto LABEL_10;
    }

    v10 = 7;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100860D30();
    }

    v10 = 3;
  }

LABEL_10:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

uint64_t sub_1006B9E04(uint64_t a1)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  v2 = *(a1 + 80);
  v3 = (a1 + 88);
  if (v2 != (a1 + 88))
  {
    do
    {
      v4 = v2[4];
      v13 = 0u;
      v14 = 0u;
      v5 = v4[1];
      v13 = *v4;
      v14 = v5;
      v6 = v4[2].i64[0];
      v12 = v6;
      v7 = v4[3].u64[1];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v13), vceqzq_s64(v5))))))
      {
        sub_10051BC64(v7, v13.i8);
      }

      else if (v6 && *(a1 + 104) == 1)
      {
        sub_10051F3B4(v7, &v12);
        *(a1 + 104) = 0;
      }

      free(v4);
      v8 = v2[1];
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
        do
        {
          v9 = v2[2];
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != v3);
  }

  sub_10000CEDC(a1 + 80, *(a1 + 88));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = v3;
  sub_1000088CC(v15);
  sub_10000CEDC(a1 + 80, *(a1 + 88));
  *a1 = &off_100AF7B80;
  sub_10007A068(a1 + 8);
  return a1;
}

void sub_1006B9F60(_Unwind_Exception *a1)
{
  sub_10000CEDC(v1 + 80, *(v1 + 88));
  *v1 = &off_100AF7B80;
  sub_10007A068(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1006B9FB0(uint64_t a1)
{
  sub_1006B9E04(a1);

  operator delete();
}

uint64_t sub_1006B9FE8(uint64_t a1)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  v2 = *(a1 + 80);
  v3 = (a1 + 88);
  if (v2 != (a1 + 88))
  {
    do
    {
      v4 = v2[4];
      v13 = 0u;
      v14 = 0u;
      v5 = v4[1];
      v13 = *v4;
      v14 = v5;
      v6 = v4[2].i64[0];
      v12 = v6;
      v7 = v4[3].u64[1];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v13), vceqzq_s64(v5))))) & 1) != 0 && *(a1 + 105) == 1)
      {
        sub_10051BC64(v7, v13.i8);
        *(a1 + 105) = 0;
      }

      else if (v6 && *(a1 + 104) == 1)
      {
        sub_10051F3B4(v7, &v12);
        *(a1 + 104) = 0;
      }

      free(v4);
      v8 = v2[1];
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
        do
        {
          v9 = v2[2];
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != v3);
  }

  sub_10000CEDC(a1 + 80, *(a1 + 88));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = v3;
  return sub_1000088CC(v15);
}

void sub_1006BA11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006BA130(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t **sub_1006BA258(void *a1, uint64_t a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_100059420(&v19, *a2, *(a2 + 8));
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_20;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    operator new();
  }

  v16 = a2;
  v14 = *a2;
  v15 = *(v16 + 8);
  while (1)
  {
    v17 = v13[1];
    if (v17 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v17 >= *&v8)
      {
        v17 %= *&v8;
      }
    }

    else
    {
      v17 &= *&v8 - 1;
    }

    if (v17 != v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (v13[3] != v15 || memcmp(v13[2], v14, v15))
  {
    goto LABEL_19;
  }

  return v13;
}

void sub_1006BA4D4()
{
  v0 = objc_autoreleasePoolPush();
  xmmword_100BCEAD8 = 0u;
  unk_100BCEAE8 = 0u;
  dword_100BCEAF8 = 1065353216;
  __cxa_atexit(sub_1006B1178, &xmmword_100BCEAD8, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1006BA540(uint64_t a1)
{
  *a1 = off_100B07488;
  *(a1 + 8) = off_100B074D8;
  *(a1 + 16) = &off_100B07508;
  sub_100044BBC((a1 + 32));
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 128) = 0;
  *(a1 + 96) = 0;
  *(a1 + 97) = 0;
  *(a1 + 101) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t sub_1006BA5F0(uint64_t a1)
{
  *a1 = off_100B07488;
  *(a1 + 8) = off_100B074D8;
  *(a1 + 16) = &off_100B07508;
  sub_10000CEDC(a1 + 104, *(a1 + 112));
  sub_10007A068(a1 + 32);
  return a1;
}

void sub_1006BA688(uint64_t a1)
{
  sub_1006BA5F0(a1);

  operator delete();
}

void sub_1006BA6C0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100860E00();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 8);
  sub_1006BA728(a1);
  v2 = sub_100017E6C();
  sub_1006BCC00(v2 + 984, a1 + 16);
  *(a1 + 24) = 0;
}

void sub_1006BA728(uint64_t a1)
{
  v2 = CFPreferencesCopyValue(@"enableGameControllerUSBBluetoothPairing", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 BOOLValue];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = qword_100BCE9F0;
    if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "void BT::SonyGamepadPairingManager::getSystemSettingForUSBBTPairing()";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: getSystemSettingForUSBBTPairing does not exist in plist; by default is ON", &v7, 0xCu);
    }

    v3 = 1;
  }

  *(a1 + 128) = v3;
  v5 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "not present";
    v8 = "void BT::SonyGamepadPairingManager::getSystemSettingForUSBBTPairing()";
    v7 = 136315650;
    if (v3)
    {
      v6 = "present";
    }

    v9 = 2080;
    v10 = v6;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Defaults write to enable Classic GC USB BT Pairing is %s and current setting is %d.", &v7, 0x1Cu);
  }
}

void sub_1006BA8E8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100860E00();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 8);
  v2 = sub_100017E6C() + 984;

  sub_1006BCEA0(v2, a1 + 16);
}

uint64_t sub_1006BA950(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 32);
  if ((*(a1 + 96) & 1) == 0)
  {
    *(a1 + 96) = 1;
    v4 = 0;
    v3 = 0;
    if (qword_100B50AA0 != -1)
    {
      sub_100860E14();
    }

    sub_10009BE34(off_100B50A98, &v3);
    *(a1 + 97) = v3;
    *(a1 + 101) = v4;
    sub_1006BA9FC(a1);
  }

  return sub_1000088CC(v5);
}

void sub_1006BA9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006BA9FC(IOHIDManagerRef *a1)
{
  v2 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting up USB Listener for USB Pairing", buf, 2u);
  }

  sub_1006BAF74(a1);
  valuePtr = 1356;
  v3 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
  v26 = 3302;
  v4 = CFNumberCreate(0, kCFNumberShortType, &v26);
  v25 = 3570;
  v5 = CFNumberCreate(0, kCFNumberShortType, &v25);
  v24 = 1476;
  v6 = CFNumberCreate(0, kCFNumberShortType, &v24);
  v23 = 2508;
  v7 = CFNumberCreate(0, kCFNumberShortType, &v23);
  if (!a1[3])
  {
    v8 = IOHIDManagerCreate(kCFAllocatorDefault, 0);
    a1[3] = v8;
    if (v8)
    {
      v19 = v5;
      v9 = v4;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v11 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v13 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v18 = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
      CFDictionaryAddValue(Mutable, @"Transport", @"USB");
      CFDictionaryAddValue(Mutable, @"VendorID", v3);
      v20 = v9;
      v14 = v9;
      v5 = v19;
      CFDictionaryAddValue(Mutable, @"ProductID", v14);
      CFDictionaryAddValue(v11, @"Transport", @"USB");
      CFDictionaryAddValue(v11, @"VendorID", v3);
      CFDictionaryAddValue(v11, @"ProductID", v19);
      CFDictionaryAddValue(v12, @"Transport", @"USB");
      CFDictionaryAddValue(v12, @"VendorID", v3);
      CFDictionaryAddValue(v12, @"ProductID", v6);
      CFDictionaryAddValue(v13, @"Transport", @"USB");
      CFDictionaryAddValue(v13, @"VendorID", v3);
      CFDictionaryAddValue(v13, @"ProductID", v7);
      cf = Mutable;
      CFArrayAppendValue(v18, Mutable);
      CFArrayAppendValue(v18, v11);
      CFArrayAppendValue(v18, v12);
      CFArrayAppendValue(v18, v13);
      IOHIDManagerSetDeviceMatchingMultiple(a1[3], v18);
      if (IOHIDManagerOpen(a1[3], 0))
      {
        if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
        {
          sub_100860E3C();
        }
      }

      else
      {
        IOHIDManagerRegisterDeviceMatchingCallback(a1[3], sub_1006BAFE0, a1);
        IOHIDManagerRegisterDeviceRemovalCallback(a1[3], sub_1006BB068, a1);
        v15 = a1[3];
        Main = CFRunLoopGetMain();
        IOHIDManagerScheduleWithRunLoop(v15, Main, kCFRunLoopCommonModes);
        v17 = qword_100BCE9F0;
        if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Created Sony HIDManager", v22, 2u);
        }
      }

      v4 = v20;
      if (v18)
      {
        CFRelease(v18);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    else if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
    {
      sub_10085CD08();
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t sub_1006BAE8C(uint64_t a1)
{
  v2 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SonyGamepadPairingManager::stackWillStop enter", buf, 2u);
  }

  *buf = 0;
  v7 = 0;
  sub_100007F88(buf, a1 + 32);
  *(a1 + 96) = 0;
  sub_1006BAF74(a1);
  v3 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SonyGamepadPairingManager::stackWillStop exit", v5, 2u);
  }

  return sub_1000088CC(buf);
}

void sub_1006BAF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006BAF74(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    Main = CFRunLoopGetMain();
    IOHIDManagerUnscheduleFromRunLoop(v1, Main, kCFRunLoopCommonModes);
    IOHIDManagerClose(*(a1 + 24), 0);
    CFRelease(*(a1 + 24));
    *(a1 + 24) = 0;
  }
}

void sub_1006BAFE0(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  v5 = CFRetain(cf);
  v7 = sub_100017F4C(v5, v6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006BCF78;
  v8[3] = &unk_100AE0860;
  v8[4] = a1;
  v8[5] = v5;
  sub_10000CA94(v7, v8);
}

void sub_1006BB068(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  v5 = CFRetain(cf);
  v7 = sub_100017F4C(v5, v6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006BD07C;
  v8[3] = &unk_100AE0860;
  v8[4] = a1;
  v8[5] = v5;
  sub_10000CA94(v7, v8);
}

void sub_1006BB0F0(uint64_t a1, uint64_t a2, __IOHIDDevice *a3)
{
  v5 = sub_1006BB29C(a1, a3);
  v6 = qword_100BCE9F0;
  v7 = os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      sub_1000DEEA4(v5, __p);
      v8 = v11 >= 0 ? __p : *__p;
      *buf = 136315138;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disconnecting USB device to initiate Bluetooth Connection to device %s", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(*__p);
      }
    }

    if (qword_100B50AC0 != -1)
    {
      sub_100860E78();
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006BB488;
    v9[3] = &unk_100ADF8F8;
    v9[4] = v5;
    sub_100592E70(off_100B50AB8, v9);
    *(v5 + 1360) = 0;
    sub_1006BB518(a1, v5);
  }

  else if (v7)
  {
    *__p = 134217984;
    *&__p[4] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Can't find device with ioHIDRef %p", __p, 0xCu);
  }
}