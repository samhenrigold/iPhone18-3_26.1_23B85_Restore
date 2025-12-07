void sub_101237500(uint64_t a1, const sms::MTSmsDetails *a2, uint64_t a3)
{
  if (subscriber::isValidSimSlot())
  {
    (*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
    operator new();
  }
}

void sub_101237E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10123802C(uint64_t *a1, uint64_t a2)
{
  if (*a2 == *(a2 + 8))
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v3[0] = 0;
    v3[1] = 0;
    ctu::TextConverter::TextConverter(v3);
    ctu::TextConverter::pushConversion();
    ctu::TextConverter::setSource(v3, *a2, *(a2 + 8) - *a2);
    ctu::TextConverter::readChars(v3, 0x7FFFFFFFuLL);
    ctu::TextConverter::~TextConverter(v3);
  }
}

void sub_1012380D0(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MTSmsDetailsSerialized::MTSmsDetailsSerialized();
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  __src = 0u;
  v19 = 0u;
  v20 = 0u;
  sub_10000D518(&v19);
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::text_oarchive_impl(v17, &v19, 0);
  *&v17[0] = &off_101F1F548;
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::init(v17);
  sub_10124C910();
  boost::archive::detail::basic_oarchive::save_object(v17, v10, qword_101FCA698);
  __dst = 0;
  v15 = 0;
  v16 = 0;
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v5 = v25;
    if (v25 < *(&__src + 1))
    {
      *&v25 = *(&__src + 1);
      v5 = *(&__src + 1);
    }

    v6 = __src;
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v4 = 0;
      goto LABEL_16;
    }

    v6 = *(&v20 + 1);
    v5 = *(&v21 + 1);
  }

  v4 = v5 - v6;
  if ((v5 - v6) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v16) = v5 - v6;
  if (v4)
  {
    memmove(&__dst, v6, v4);
  }

LABEL_16:
  *(&__dst + v4) = 0;
  v7 = SHIBYTE(v16);
  if ((SHIBYTE(v16) & 0x8000000000000000) != 0)
  {
    p_dst = __dst;
    v7 = v15;
  }

  else
  {
    p_dst = &__dst;
  }

  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_100837690(&__p, p_dst, &p_dst[v7], v7);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst);
  }

  boost::archive::detail::basic_oarchive::~basic_oarchive(v17);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v18);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(*(&v23 + 1));
  }

  std::locale::~locale(&v20);
  std::ostream::~ostream();
  std::ios::~ios();
  MTSmsDetailsSerialized::~MTSmsDetailsSerialized(v10);
  if (a3)
  {
    sub_100004A34(a3);
  }
}

void sub_101238414(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, char a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  if (SHIBYTE(a23) < 0)
  {
    operator delete(a21);
  }

  boost::archive::detail::basic_oarchive::~basic_oarchive(&a24);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(&a30);
  std::ios::~ios();
  if (a2 == 2 || a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1012383E0);
  }

  MTSmsDetailsSerialized::~MTSmsDetailsSerialized(&a12);
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012384EC(uint64_t a1)
{
  sub_10124FD90(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_101238530(uint64_t a1, unsigned int **a2)
{
  v4 = (*(**a2 + 328))(*a2);
  v5 = *a2;
  if (v4)
  {
    v169 = a1;
    if ((*(*v5 + 248))(v5) == 2)
    {
      (*(**a2 + 416))(&buf);
      v6 = buf.__r_.__value_.__r.__words[0];
      if (buf.__r_.__value_.__l.__size_)
      {
        sub_100004A34(buf.__r_.__value_.__l.__size_);
      }

      if (v6)
      {
        v7 = *a2;
        v8 = a2[1];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v179 = 0;
        v180 = 0;
        (*(*v7 + 416))(&v179, v7);
        v164 = v7;
        v177 = v7[2];
        v9 = (*(**(a1 + 48) + 16))(*(a1 + 48));
        v10 = v179;
        v167 = v9;
        v11 = *v9;
        v12 = os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          v165 = v8;
          if (v12)
          {
            v13 = *(v10 + 80);
            LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v13 >> 4;
            LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 2) = v13 & 0xF;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I concatenated CB message (part %d/%d)", &buf, 0xEu);
          }

          for (i = 0; ; i = v16 + 1)
          {
            v172.__r_.__value_.__r.__words[0] = &v177;
            v15 = sub_1002D750C(a1 + 2560, &v177, &unk_101802C98, &v172);
            v16 = i;
            if (i >= ((*(v15[5] + 304) - *(v15[5] + 296)) >> 4))
            {
              v69 = 0;
              v8 = v165;
              goto LABEL_131;
            }

            v172.__r_.__value_.__r.__words[0] = &v177;
            v17 = **(*(sub_1002D750C(a1 + 2560, &v177, &unk_101802C98, &v172)[5] + 296) + 16 * i);
            v172.__r_.__value_.__r.__words[0] = &v177;
            v18 = *(*(*(sub_1002D750C(a1 + 2560, &v177, &unk_101802C98, &v172)[5] + 296) + 16 * i) + 4);
            v172.__r_.__value_.__r.__words[0] = &v177;
            v19 = *(*(*(sub_1002D750C(a1 + 2560, &v177, &unk_101802C98, &v172)[5] + 296) + 16 * i) + 8);
            v172.__r_.__value_.__r.__words[0] = &v177;
            v20 = *(*(*(sub_1002D750C(a1 + 2560, &v177, &unk_101802C98, &v172)[5] + 296) + 16 * i) + 12);
            v21 = *(v179 + 72);
            v22 = *(v179 + 144);
            v175 = v179;
            v176 = v180;
            if (v180)
            {
              atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v172.__r_.__value_.__r.__words[0] = &v177;
            v23 = sub_1002D750C(v169 + 2560, &v177, &unk_101802C98, &v172)[5];
            MCC::MCC(&buf, (v23 + 26));
            MCC::MCC(v186, (v23 + 28));
            *v189 = v23[30];
            *&v189[9] = *(v23 + 489);
            v24 = sub_100DAA68C(&v175, &buf);
            v25 = *(v179 + 148);
            if (v188 < 0)
            {
              operator delete(v186[1]);
            }

            if (v185 < 0)
            {
              operator delete(buf.__r_.__value_.__l.__size_);
            }

            if (v176)
            {
              sub_100004A34(v176);
            }

            v172.__r_.__value_.__r.__words[0] = __PAIR64__(v18, v17);
            *&v172.__r_.__value_.__r.__words[1] = __PAIR64__(v20, v19);
            v173 = 0;
            __dst.__r_.__value_.__r.__words[0] = __PAIR64__(v22, v21);
            *&__dst.__r_.__value_.__r.__words[1] = __PAIR64__(v25, v24);
            v182 = 0;
            v26 = sub_100DAAD54(&v172, &__dst);
            a1 = v169;
            if (v26 == 1)
            {
              v8 = v165;
              (*(*v169 + 152))(v169);
              v78 = *v167;
              if (os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v172.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I Received replacement CB message, discarding incomplete", &v172, 2u);
              }

              v172.__r_.__value_.__r.__words[0] = &v177;
              v79 = sub_1002D750C(v169 + 2560, &v177, &unk_101802C98, &v172)[5];
              v172.__r_.__value_.__r.__words[0] = &v177;
              v80 = *(sub_1002D750C(v169 + 2560, &v177, &unk_101802C98, &v172)[5] + 296) + 16 * v16;
              v81 = sub_10124CB1C((v80 + 16), *(v79 + 304), v80);
              for (j = *(v79 + 304); j != v81; j -= 16)
              {
                v83 = *(j - 8);
                if (v83)
                {
                  sub_100004A34(v83);
                }
              }

              v69 = 0;
              *(v79 + 304) = v81;
LABEL_131:
              v88 = *v167;
              if (os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v172.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#I First sequence of concatenated CB message", &v172, 2u);
              }

              if ((*(v179 + 80) & 0xF) != 0)
              {
                operator new();
              }

              (*(*a1 + 152))(a1);
              v90 = *v167;
              if (os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v172.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "#I invalid CB PDU: concatenated element count is 0", &v172, 2u);
              }

              v87 = v69;
              goto LABEL_198;
            }

            if (v26 == -1)
            {
              break;
            }

            if (v26 == -2)
            {
              v84 = *v167;
              v8 = v165;
              if (os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v172.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#I Found partial CB message", &v172, 2u);
              }

              v172.__r_.__value_.__r.__words[0] = &v177;
              v85 = (*(sub_1002D750C(v169 + 2560, &v177, &unk_101802C98, &v172)[5] + 296) + 16 * v16);
              v86 = *v85;
              v69 = v85[1];
              if (v69)
              {
                atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v87 = v69;
              if (!v86)
              {
                goto LABEL_131;
              }

              v92 = *(v179 + 80) >> 4;
              if (v92 > *(v86 + 16))
              {
                (*(*v169 + 152))(v169);
                v93 = *v167;
                if (os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
                  v94 = "#I Concatenated cbs segment address out of bounds, discarding";
                  v95 = v93;
                  v96 = 2;
                  goto LABEL_197;
                }

                goto LABEL_198;
              }

              v97 = *(v86 + 24);
              v98 = v97 + 24 * (*(v179 + 80) >> 4);
              if (*(v98 - 1) < 0)
              {
                if (!*(v98 - 16))
                {
                  goto LABEL_153;
                }

LABEL_150:
                (*(*v169 + 152))(v169);
                v99 = *v167;
                if (!os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_198;
                }

                v100 = *(v179 + 80) >> 4;
                LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
                HIDWORD(__dst.__r_.__value_.__r.__words[0]) = v100;
                v94 = "#I Received duplicated cbs part %d";
                v95 = v99;
                v96 = 8;
              }

              else
              {
                if (*(v98 - 1))
                {
                  goto LABEL_150;
                }

LABEL_153:
                if (*(v179 + 111) < 0)
                {
                  sub_100005F2C(&__dst, *(v179 + 88), *(v179 + 96));
                  v97 = *(v86 + 24);
                  v92 = *(v179 + 80) >> 4;
                }

                else
                {
                  __dst = *(v179 + 88);
                }

                v113 = v97 + 24 * v92;
                v114 = v113 - 24;
                if (*(v113 - 1) < 0)
                {
                  operator delete(*v114);
                }

                v115 = *&__dst.__r_.__value_.__l.__data_;
                *(v114 + 16) = *(&__dst.__r_.__value_.__l + 2);
                *v114 = v115;
                v116 = *(v86 + 16);
                v117 = *(v86 + 20) + 1;
                *(v86 + 20) = v117;
                v118 = *v167;
                v119 = os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT);
                if (v117 == v116)
                {
                  if (v119)
                  {
                    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
                    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I cbs message is complete", &__dst, 2u);
                  }

                  memset(&__dst, 0, sizeof(__dst));
                  if (*(v86 + 16))
                  {
                    v120 = 0;
                    v121 = 0;
                    do
                    {
                      v122 = *(v86 + 24) + v120;
                      v123 = *(v122 + 23);
                      if (v123 >= 0)
                      {
                        v124 = (*(v86 + 24) + v120);
                      }

                      else
                      {
                        v124 = *v122;
                      }

                      if (v123 >= 0)
                      {
                        v125 = *(v122 + 23);
                      }

                      else
                      {
                        v125 = *(v122 + 8);
                      }

                      std::string::append(&__dst, v124, v125);
                      ++v121;
                      v120 += 24;
                    }

                    while (v121 < *(v86 + 16));
                  }

                  (*(*v164 + 136))(v164, &__dst, 8);
                  (*(*v164 + 360))(v164);
                  v171[0] = v164;
                  v171[1] = v165;
                  if (v165)
                  {
                    atomic_fetch_add_explicit(&v165->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  sub_1012312A8(v169, v171);
                  if (v165)
                  {
                    sub_100004A34(v165);
                  }

                  v178 = &v177;
                  v126 = sub_1002D750C(v169 + 2560, &v177, &unk_101802C98, &v178)[5];
                  v178 = &v177;
                  v127 = *(sub_1002D750C(v169 + 2560, &v177, &unk_101802C98, &v178)[5] + 296) + 16 * v16;
                  v128 = sub_10124CB1C((v127 + 16), *(v126 + 304), v127);
                  for (k = *(v126 + 304); k != v128; k -= 16)
                  {
                    v130 = *(k - 8);
                    if (v130)
                    {
                      sub_100004A34(v130);
                    }
                  }

                  *(v126 + 304) = v128;
                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__dst.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_198;
                }

                if (!v119)
                {
LABEL_198:
                  if (v87)
                  {
                    sub_100004A34(v87);
                  }

                  goto LABEL_200;
                }

                LODWORD(__dst.__r_.__value_.__l.__data_) = 67109376;
                HIDWORD(__dst.__r_.__value_.__r.__words[0]) = v117;
                LOWORD(__dst.__r_.__value_.__r.__words[1]) = 1024;
                *(&__dst.__r_.__value_.__r.__words[1] + 2) = v116;
                v94 = "#I cbs message have %d out of %d parts of this message";
                v95 = v118;
                v96 = 14;
              }

LABEL_197:
              _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, v94, &__dst, v96);
              goto LABEL_198;
            }
          }

          v8 = v165;
          (*(*v169 + 152))(v169);
          v89 = *v167;
          if (!os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_200;
          }

          LOWORD(v172.__r_.__value_.__l.__data_) = 0;
          v39 = "#I Old CB message, discarding";
          p_buf = &v172;
          v41 = v89;
        }

        else
        {
          if (!v12)
          {
            goto LABEL_200;
          }

          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          v39 = "#I CB PDU Decoder is invalid";
          p_buf = &buf;
          v41 = v11;
        }

        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v39, p_buf, 2u);
LABEL_200:
        v77 = v180;
        if (!v180)
        {
          goto LABEL_202;
        }

        goto LABEL_201;
      }
    }

    v28 = *a2;
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v175) = -1;
    LODWORD(v174) = 0;
    LODWORD(v171[0]) = 0;
    LODWORD(v178) = v28[2];
    v168 = (*(**(a1 + 48) + 16))(*(a1 + 48), v178);
    if ((subscriber::isValidSimSlot() & 1) == 0)
    {
      goto LABEL_202;
    }

    v166 = v8;
    if ((*(*v28 + 248))(v28) != 2)
    {
      goto LABEL_81;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v30 = ServiceMap;
    if ((v31 & 0x8000000000000000) != 0)
    {
      v32 = (v31 & 0x7FFFFFFFFFFFFFFFLL);
      v33 = 5381;
      do
      {
        v31 = v33;
        v34 = *v32++;
        v33 = (33 * v33) ^ v34;
      }

      while (v34);
    }

    std::mutex::lock(ServiceMap);
    buf.__r_.__value_.__r.__words[0] = v31;
    v35 = sub_100009510(&v30[1].__m_.__sig, &buf);
    if (v35)
    {
      v37 = v35[3];
      v36 = v35[4];
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v30);
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v36);
        v38 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      v37 = 0;
    }

    std::mutex::unlock(v30);
    v36 = 0;
    v38 = 1;
LABEL_45:
    v42 = (*(*v37 + 88))(v37);
    if ((v38 & 1) == 0)
    {
      sub_100004A34(v36);
    }

    buf.__r_.__value_.__r.__words[0] = &v178;
    v43 = *sub_1002D750C(a1 + 2560, &v178, &unk_101802C98, &buf)[5];
    buf.__r_.__value_.__r.__words[0] = &v178;
    v44 = *(sub_1002D750C(a1 + 2560, &v178, &unk_101802C98, &buf)[5] + 8);
    v45 = v178;
    v46 = *(a1 + 2584);
    v47 = *(a1 + 2592);
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v43 == v44)
    {
      goto LABEL_78;
    }

    while (1)
    {
      v48 = *v43;
      v49 = v43[1];
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*(v48 + 208) || (*(*v46 + 200))(v46, v45, v42))
      {
        break;
      }

      v50 = 1;
      if (v49)
      {
        goto LABEL_55;
      }

LABEL_56:
      if (v50)
      {
        a1 = v169;
        if (v43 != v44)
        {
          for (m = v43 + 2; ; m += 2)
          {
            if (m == v44)
            {
              goto LABEL_78;
            }

            v52 = *m;
            v53 = m[1];
            if (v53)
            {
              atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (!*(v52 + 208) || (*(*v46 + 200))(v46, v45, v42))
            {
              break;
            }

            v54 = 1;
            if (v53)
            {
              goto LABEL_69;
            }

LABEL_70:
            if (v54)
            {
              a1 = v169;
            }

            else
            {
              v55 = *m;
              *m = 0;
              m[1] = 0;
              v56 = v43[1];
              *v43 = v55;
              a1 = v169;
              if (v56)
              {
                sub_100004A34(v56);
              }

              v43 += 2;
            }
          }

          v54 = 0;
          if (!v53)
          {
            goto LABEL_70;
          }

LABEL_69:
          sub_100004A34(v53);
          goto LABEL_70;
        }

LABEL_78:
        if (v47)
        {
          sub_100004A34(v47);
          sub_100004A34(v47);
        }

        buf.__r_.__value_.__r.__words[0] = &v178;
        v8 = v166;
        v57 = sub_1002D750C(a1 + 2560, &v178, &unk_101802C98, &buf)[5];
        buf.__r_.__value_.__r.__words[0] = &v178;
        v58 = sub_1002D750C(a1 + 2560, &v178, &unk_101802C98, &buf);
        sub_101231234(v57, v43, *(v58[5] + 8));
LABEL_81:
        (*(*v28 + 336))(v28, &v175, &v174, v171);
        v59 = *v168;
        if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v174;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I Received concatenated message segment (index %d)", &buf, 8u);
        }

        for (n = 0; ; ++n)
        {
          buf.__r_.__value_.__r.__words[0] = &v178;
          v61 = sub_1002D750C(a1 + 2560, &v178, &unk_101802C98, &buf);
          v62 = n;
          if (n >= ((*(v61[5] + 8) - *v61[5]) >> 4))
          {
            goto LABEL_100;
          }

          buf.__r_.__value_.__r.__words[0] = &v178;
          v63 = sub_1002D750C(a1 + 2560, &v178, &unk_101802C98, &buf);
          if (*(*(*v63[5] + 16 * n) + 4) == v175)
          {
            buf.__r_.__value_.__r.__words[0] = &v178;
            sub_1002D750C(a1 + 2560, &v178, &unk_101802C98, &buf);
            (*(*v28 + 256))(&v172, v28);
            CSIPhoneNumber::CSIPhoneNumber();
            v64 = CSIPhoneNumber::operator==();
            if (v193 < 0)
            {
              operator delete(v192[0]);
            }

            if (v191 < 0)
            {
              operator delete(v190);
            }

            if ((v189[23] & 0x80000000) != 0)
            {
              operator delete(*v189);
            }

            if (v187 < 0)
            {
              operator delete(v186[0]);
            }

            if (v185 < 0)
            {
              operator delete(buf.__r_.__value_.__l.__size_);
            }

            if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v172.__r_.__value_.__l.__data_);
            }

            if (v64)
            {
              break;
            }
          }
        }

        buf.__r_.__value_.__r.__words[0] = &v178;
        v65 = (*sub_1002D750C(a1 + 2560, &v178, &unk_101802C98, &buf)[5] + 16 * n);
        v66 = *v65;
        v67 = v65[1];
        if (v67)
        {
          atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v68 = v67;
        if (!v66)
        {
LABEL_100:
          operator new();
        }

        v70 = v174;
        if (v174 < v66[2])
        {
          v71 = *(v66 + 23) + 32 * v174;
          v72 = *(v71 + 23);
          if ((v72 & 0x80u) != 0)
          {
            v72 = *(v71 + 8);
          }

          if (v72 || *(v71 + 24) | *(v71 + 26))
          {
            v73 = *v168;
            if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
              HIDWORD(buf.__r_.__value_.__r.__words[0]) = v70;
              v74 = "#I Warning: Received duplicate segment (index %d), ignoring";
              goto LABEL_115;
            }

            goto LABEL_117;
          }

          if (!v174)
          {
            v66[3] = (*(*v28 + 48))(v28);
            v66[4] = (*(*v28 + 64))(v28);
          }

          (*(*v28 + 192))(&v172, v28);
          v91 = (*(*v28 + 96))(v28);
          if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&buf, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
          }

          else
          {
            buf = v172;
          }

          v184 = v91;
          v101 = *(v66 + 23) + 32 * v174;
          if (*(v101 + 23) < 0)
          {
            operator delete(*v101);
          }

          v102 = *&buf.__r_.__value_.__l.__data_;
          *(v101 + 16) = *(&buf.__r_.__value_.__l + 2);
          *v101 = v102;
          *(&buf.__r_.__value_.__s + 23) = 0;
          buf.__r_.__value_.__s.__data_[0] = 0;
          *(v101 + 24) = v184;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v172.__r_.__value_.__l.__data_);
          }

          ++*v66;
          if ((*(*v28 + 248))(v28) != 2)
          {
            v66[52] = 0;
            goto LABEL_209;
          }

          v103 = Registry::getServiceMap(*(a1 + 80));
          v104 = v103;
          if ((v105 & 0x8000000000000000) != 0)
          {
            v106 = (v105 & 0x7FFFFFFFFFFFFFFFLL);
            v107 = 5381;
            do
            {
              v105 = v107;
              v108 = *v106++;
              v107 = (33 * v107) ^ v108;
            }

            while (v108);
          }

          std::mutex::lock(v103);
          buf.__r_.__value_.__r.__words[0] = v105;
          v109 = sub_100009510(&v104[1].__m_.__sig, &buf);
          if (v109)
          {
            v110 = v109[3];
            v111 = v109[4];
            if (v111)
            {
              atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v104);
              atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v111);
              v112 = 0;
LABEL_207:
              v66[52] = (*(*v110 + 88))(v110);
              v8 = v166;
              if ((v112 & 1) == 0)
              {
                sub_100004A34(v111);
              }

LABEL_209:
              v131 = *v66;
              v132 = v66[2];
              v133 = *v168;
              v134 = os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT);
              if (v131 == v132)
              {
                if (v134)
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "#I All segments for this message have arrived, reassembling...", &buf, 2u);
                }

                memset(&v172, 0, sizeof(v172));
                v135 = v169;
                if (v66[2] >= 1)
                {
                  v136 = 0;
                  v137 = 0;
                  v138 = *(v66 + 23);
                  v139 = 23;
                  do
                  {
                    v140 = *v168;
                    if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
                    {
                      v141 = *(v138 + v139);
                      if ((v141 & 0x8000000000000000) != 0)
                      {
                        v141 = *(v138 + v139 - 15);
                      }

                      LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
                      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v136;
                      LOWORD(buf.__r_.__value_.__r.__words[1]) = 2048;
                      *(&buf.__r_.__value_.__r.__words[1] + 2) = v141;
                      _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "#I Adding Part %d : size: %ld", &buf, 0x12u);
                      v138 = *(v66 + 23);
                    }

                    v135 = v169;
                    if (v137)
                    {
                      v142 = *(v138 + v139 + 3);
                      if (*(v138 + v139 + 3))
                      {
                        v143 = *v168;
                        if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
                        {
                          LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
                          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v137;
                          LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
                          *(&buf.__r_.__value_.__r.__words[1] + 2) = v142;
                          _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "#I Appending boundary split surrogate (high: %x low: %x) to message body", &buf, 0xEu);
                        }

                        memset(&buf, 0, sizeof(buf));
                        ctu::hex((v142 | (v137 << 16)), v144);
                        v135 = v169;
                        v179 = 0;
                        v180 = 0;
                        ctu::TextConverter::TextConverter(&v179);
                        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v145 = &buf;
                        }

                        else
                        {
                          v145 = buf.__r_.__value_.__r.__words[0];
                        }

                        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          size = buf.__r_.__value_.__l.__size_;
                        }

                        ctu::TextConverter::setSource(&v179, v145, size);
                        ctu::TextConverter::pushConversion();
                        ctu::TextConverter::pushConversion();
                        ctu::TextConverter::pushConversion();
                        ctu::TextConverter::readChars(&v179, 0x7FFFFFFFuLL);
                        ctu::TextConverter::~TextConverter(&v179);
                        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(buf.__r_.__value_.__l.__data_);
                        }

                        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          p_dst = &__dst;
                        }

                        else
                        {
                          p_dst = __dst.__r_.__value_.__r.__words[0];
                        }

                        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v148 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v148 = __dst.__r_.__value_.__l.__size_;
                        }

                        std::string::append(&v172, p_dst, v148);
                        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__dst.__r_.__value_.__l.__data_);
                        }

                        v138 = *(v66 + 23);
                      }

                      v149 = *(v138 + v139);
                      if (v149 >= 0)
                      {
                        v150 = (v138 + v139 - 23);
                      }

                      else
                      {
                        v150 = *(v138 + v139 - 23);
                      }

                      if (v149 >= 0)
                      {
                        v151 = *(v138 + v139);
                      }

                      else
                      {
                        v151 = *(v138 + v139 - 15);
                      }
                    }

                    else
                    {
                      v152 = *(v138 + v139);
                      if (v152 >= 0)
                      {
                        v150 = (v138 + v139 - 23);
                      }

                      else
                      {
                        v150 = *(v138 + v139 - 23);
                      }

                      if (v152 >= 0)
                      {
                        v151 = *(v138 + v139);
                      }

                      else
                      {
                        v151 = *(v138 + v139 - 15);
                      }
                    }

                    std::string::append(&v172, v150, v151);
                    v138 = *(v66 + 23);
                    v137 = *(v138 + v139 + 1);
                    ++v136;
                    v139 += 32;
                  }

                  while (v136 < v66[2]);
                }

                v153 = *v168;
                if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "#I Concatenated message successfully reassembled", &buf, 2u);
                }

                v8 = v166;
                if ((*(*v28 + 200))(v28) == 4)
                {
                  v154 = 4;
                }

                else
                {
                  v154 = 8;
                }

                (*(*v28 + 136))(v28, &v172, v154);
                (*(*v28 + 56))(v28, v66[3]);
                (*(*v28 + 72))(v28, v66[4]);
                v155 = *v168;
                if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*v28 + 192))(&buf, v28);
                  v156 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                  v157 = buf.__r_.__value_.__l.__size_;
                  v158 = (*(*v28 + 200))(v28);
                  v159 = (v156 & 0x80u) == 0 ? v156 : v157;
                  LODWORD(__dst.__r_.__value_.__l.__data_) = 134218240;
                  *(__dst.__r_.__value_.__r.__words + 4) = v159;
                  WORD2(__dst.__r_.__value_.__r.__words[1]) = 1024;
                  *(&__dst.__r_.__value_.__r.__words[1] + 6) = v158;
                  _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "#I Full Message Length: %lu (final encoding: %u)", &__dst, 0x12u);
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf.__r_.__value_.__l.__data_);
                  }
                }

                (*(*v28 + 360))(v28);
                buf.__r_.__value_.__r.__words[0] = v28;
                buf.__r_.__value_.__l.__size_ = v166;
                if (v166)
                {
                  atomic_fetch_add_explicit(&v166->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_1012312A8(v135, &buf);
                if (v166)
                {
                  sub_100004A34(v166);
                }

                __dst.__r_.__value_.__r.__words[0] = &v178;
                v160 = sub_1002D750C(v135 + 2560, &v178, &unk_101802C98, &__dst);
                if (v62 >= (*(v160[5] + 8) - *v160[5]) >> 4)
                {
                  v163 = *v168;
                  if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
                    _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "#I reassembleConcatenatedPdu - index to erase not within bounds of partial messages, leaving partials untouched", &__dst, 2u);
                  }
                }

                else
                {
                  __dst.__r_.__value_.__r.__words[0] = &v178;
                  v161 = sub_1002D750C(v135 + 2560, &v178, &unk_101802C98, &__dst)[5];
                  __dst.__r_.__value_.__r.__words[0] = &v178;
                  v162 = sub_1002D750C(v135 + 2560, &v178, &unk_101802C98, &__dst);
                  sub_101233798(v161, *v162[5] + 16 * v62);
                }

                if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v172.__r_.__value_.__l.__data_);
                }

                goto LABEL_117;
              }

              if (!v134)
              {
LABEL_117:
                if (!v68)
                {
                  goto LABEL_202;
                }

                v77 = v68;
LABEL_201:
                sub_100004A34(v77);
LABEL_202:
                if (v8)
                {
                  sub_100004A34(v8);
                }

                return;
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
              HIDWORD(buf.__r_.__value_.__r.__words[0]) = v131;
              LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
              *(&buf.__r_.__value_.__r.__words[1] + 2) = v132;
              v74 = "#I Now have %d out of %d segments for this message";
              v75 = v133;
              v76 = 14;
LABEL_116:
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, v74, &buf, v76);
              goto LABEL_117;
            }
          }

          else
          {
            v110 = 0;
          }

          std::mutex::unlock(v104);
          v111 = 0;
          v112 = 1;
          goto LABEL_207;
        }

        v73 = *v168;
        if (!os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_117;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v70;
        v74 = "#I Warning: Discarding out of bounds segment (index %d)";
LABEL_115:
        v75 = v73;
        v76 = 8;
        goto LABEL_116;
      }

      v43 += 2;
      if (v43 == v44)
      {
        v43 = v44;
        a1 = v169;
        goto LABEL_78;
      }
    }

    v50 = 0;
    if (!v49)
    {
      goto LABEL_56;
    }

LABEL_55:
    sub_100004A34(v49);
    goto LABEL_56;
  }

  v27 = a2[1];
  v170[0] = v5;
  v170[1] = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
  }

  sub_1012312A8(a1, v170);
  if (v27)
  {

    sub_100004A34(v27);
  }
}

void sub_10123A7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, void *a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, void *a53, int a54, __int16 a55, char a56, char a57, int a58, __int16 a59, char a60, char a61)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v61)
  {
    sub_100004A34(v61);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10123AABC(uint64_t a1, uint64_t a2, int a3)
{
  if (subscriber::isValidSimSlot())
  {
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      if (!v7)
      {
        return;
      }

      v11 = 0;
      v8 = "#I SMS Driver is ready";
      v9 = &v11;
    }

    else
    {
      if (!v7)
      {
        return;
      }

      v10 = 0;
      v8 = "#I SMS Driver is not ready";
      v9 = &v10;
    }

    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
  }
}

BOOL sub_10123AB8C(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      return *(a1 + 2728) != 0.0;
    }

    v4 = *(a1 + 32) == 0;
  }

  else
  {
    v4 = 1;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_101257DA4;
  v8[3] = &unk_101F1F8A0;
  v8[4] = a1 + 8;
  v8[5] = &v7;
  v9 = v8;
  v5 = *(a1 + 24);
  v15 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v4)
  {
    v11 = sub_1000593F4;
    v12 = &unk_101F1DB80;
    v13 = &v15;
    v14 = &v9;
    dispatch_sync(v5, block);
  }

  else
  {
    v11 = sub_10006A350;
    v12 = &unk_101F1DBA0;
    v13 = &v15;
    v14 = &v9;
    dispatch_async_and_wait(v5, block);
  }

  return v15;
}

void sub_10123ACFC(void *result, void *a2)
{
  if (result[31] == a2[2])
  {
    v3 = result[29];
    if (v3 == result + 30)
    {
      return;
    }

    v4 = *a2;
    while (1)
    {
      v5 = *(v3 + 7) == *(v4 + 7) && *(v3 + 8) == *(v4 + 8);
      if (!v5)
      {
        break;
      }

      v6 = v3[1];
      v7 = v3;
      if (v6)
      {
        do
        {
          v3 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v3 = v7[2];
          v5 = *v3 == v7;
          v7 = v3;
        }

        while (!v5);
      }

      v8 = v4[1];
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
          v9 = v4[2];
          v5 = *v9 == v4;
          v4 = v9;
        }

        while (!v5);
      }

      v4 = v9;
      if (v3 == result + 30)
      {
        return;
      }
    }
  }

  subscriber::makeSimSlotRange();
  v10 = v12;
  if (v12 != v13)
  {
    do
    {
      if (v14(*v10))
      {
        break;
      }

      ++v10;
    }

    while (v10 != v13);
    while (v10 != v13)
    {
      v11 = *v10++;
      sub_10123AE44(result, v11);
      while (v10 != v13 && (v14(*v10) & 1) == 0)
      {
        ++v10;
      }
    }
  }
}

void sub_10123AE44(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  *v51 = &v46;
  v3 = *(sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51)[5] + 244);
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), v46);
  *v51 = &v46;
  if (*(sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51)[5] + 42) == 1 && (sub_10123BB40(a1, v46) & 1) == 0)
  {
    v20 = v46;
    v21 = *(a1 + 80);
    theDict = 0;
    v47 = 0;
    ServiceMap = Registry::getServiceMap(v21);
    v23 = ServiceMap;
    if (v24 < 0)
    {
      v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
      v26 = 5381;
      do
      {
        v24 = v26;
        v27 = *v25++;
        v26 = (33 * v26) ^ v27;
      }

      while (v27);
    }

    std::mutex::lock(ServiceMap);
    *v51 = v24;
    v28 = sub_100009510(&v23[1].__m_.__sig, v51);
    if (v28)
    {
      v30 = v28[3];
      v29 = v28[4];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v23);
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v29);
        v32 = 0;
        if (!v30)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v30 = 0;
    }

    std::mutex::unlock(v23);
    v29 = 0;
    v32 = 1;
    if (!v30)
    {
LABEL_26:
      if ((v32 & 1) == 0)
      {
        sub_100004A34(v29);
      }

      sub_10001021C(&theDict);
      if (v47)
      {
        theDict = CFDictionaryGetValue(v47, @"PacketFormat");
        sub_1002AF4F0(v51, &theDict);
        if (*v51)
        {
          LODWORD(Value) = 0;
          ctu::cf::assign(&Value, *v51, v35);
          if ((Value - 1) >= 2)
          {
            v5 = 0;
          }

          else
          {
            v5 = Value;
          }
        }

        else
        {
          v5 = 1;
        }

        sub_100029A48(v51);
      }

      else
      {
        v5 = 1;
      }

      sub_10001021C(&v47);
      *v51 = &v46;
      v36 = sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51);
      goto LABEL_52;
    }

LABEL_24:
    SMSCarrierBundleString = sms::Model::getSMSCarrierBundleString(v31);
    (*(*v30 + 96))(&v48, v30, v20, 1, SMSCarrierBundleString, 0, 0);
    sub_100010180(&Value, &v48);
    v34 = theDict;
    theDict = Value;
    *v51 = v34;
    Value = 0;
    sub_10001021C(v51);
    sub_10001021C(&Value);
    sub_10000A1EC(&v48);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"MessageFormat");
      *v51 = 0;
      sub_100010180(v51, &Value);
      v47 = *v51;
      *v51 = 0;
      sub_10001021C(v51);
    }

    goto LABEL_26;
  }

  *v51 = &v46;
  if ((*(sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51)[5] + 240) & 8) != 0)
  {
    *v51 = &v46;
    v19 = sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51) + 5;
    v5 = 2;
  }

  else
  {
    *v51 = &v46;
    if ((*(sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51)[5] + 240) & 4) == 0)
    {
      *v51 = &v46;
      if ((*(sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51)[5] + 240) & 0xE0) == 0)
      {
        *v51 = &v46;
        v36 = sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51);
        v5 = 0;
LABEL_52:
        v19 = v36 + 5;
        goto LABEL_53;
      }

      v5 = sub_101235500(*(a1 + 80), v46, 1);
      v6 = v46;
      v7 = *(a1 + 80);
      theDict = 0;
      v8 = Registry::getServiceMap(v7);
      v9 = v8;
      if (v10 < 0)
      {
        v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
        v12 = 5381;
        do
        {
          v10 = v12;
          v13 = *v11++;
          v12 = (33 * v12) ^ v13;
        }

        while (v13);
      }

      std::mutex::lock(v8);
      *v51 = v10;
      v14 = sub_100009510(&v9[1].__m_.__sig, v51);
      if (v14)
      {
        v16 = v14[3];
        v15 = v14[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v9);
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v15);
          v18 = 0;
          goto LABEL_40;
        }
      }

      else
      {
        v16 = 0;
      }

      std::mutex::unlock(v9);
      v15 = 0;
      v18 = 1;
LABEL_40:
      if (v16)
      {
        v37 = sms::Model::getSMSCarrierBundleString(v17);
        (*(*v16 + 80))(&v48, v16, v6, 2, v37, 0, 0);
        sub_100010180(&Value, &v48);
        v38 = theDict;
        theDict = Value;
        *v51 = v38;
        Value = 0;
        sub_10001021C(v51);
        sub_10001021C(&Value);
        sub_10000A1EC(&v48);
        if (theDict)
        {
          *v51 = 0;
          Value = CFDictionaryGetValue(theDict, @"MessageFormat");
          sub_100010180(v51, &Value);
          if (*v51)
          {
            v48 = CFDictionaryGetValue(*v51, @"CSFBFormat");
            sub_1002AF4F0(&Value, &v48);
            if (Value)
            {
              LODWORD(v47) = 0;
              ctu::cf::assign(&v47, Value, v39);
              if ((v47 - 1) >= 2)
              {
                v5 = 0;
              }

              else
              {
                v5 = v47;
              }
            }

            sub_100029A48(&Value);
          }

          sub_10001021C(v51);
        }
      }

      if ((v18 & 1) == 0)
      {
        sub_100004A34(v15);
      }

      sub_10001021C(&theDict);
      *v51 = &v46;
      v36 = sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51);
      goto LABEL_52;
    }

    *v51 = &v46;
    v19 = sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51) + 5;
    v5 = 1;
  }

LABEL_53:
  *(*v19 + 244) = v5;
  *v51 = &v46;
  if (v3 != *(sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51)[5] + 244))
  {
    v40 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = &v46;
      sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51);
      v41 = sms::asString();
      *v51 = 136315138;
      *&v51[4] = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Using %s Encoder", v51, 0xCu);
    }

    (*(**(a1 + 2544) + 136))(*(a1 + 2544));
    sub_10123BFE4(a1, v46);
  }

  if (!v3)
  {
    *v51 = &v46;
    if (*(sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51)[5] + 244))
    {
      v42 = *v4;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v51 = &v46;
        sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51);
        v43 = sms::asString();
        *v51 = 136315138;
        *&v51[4] = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Now have valid encoder %s, sending pending messages", v51, 0xCu);
      }

      *v51 = &v46;
      v44 = sub_1002D750C(a1 + 2560, &v46, &unk_101802C98, v51)[5];
      v45 = *(v44 + 320);
      *(v44 + 320) = 0;
      if (v45)
      {
        (*(*v45 + 8))(v45);
      }

      sub_10122EA90(a1, v46);
    }
  }
}

void sub_10123B670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v14 = va_arg(va2, const void *);
  sub_100029A48(va);
  sub_10001021C(va2);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_10123B748(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && *(a1 + 200) == 1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Purging MO messages due to airplane mode", v4, 2u);
    }

    sub_10123032C(a1, 1);
  }
}

void sub_10123B7CC(uint64_t a1)
{
  subscriber::makeSimSlotRange();
  v2 = v4;
  if (v4 != v5)
  {
    do
    {
      if (v6(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v5);
    while (v2 != v5)
    {
      v3 = *v2++;
      sub_10123AE44(a1, v3);
      while (v2 != v5 && (v6(*v2) & 1) == 0)
      {
        ++v2;
      }
    }
  }
}

void sub_10123B870(uint64_t a1, uint64_t a2)
{
  subscriber::makeSimSlotRange();
  v4 = v24;
  v5 = v25;
  if (v24 != v25)
  {
    v6 = v26;
    do
    {
      if (v26(*v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != v25);
    v7 = v25;
    if (v4 != v25)
    {
      v8 = (a2 + 8);
      while (1)
      {
        v23 = *v4;
        v9 = (*(**(a1 + 48) + 16))(*(a1 + 48));
        v21 = 0;
        v22[0] = 0;
        v22[1] = 0;
        sub_101257DBC(&v21, a1 + 432);
        v10 = v22[0];
        if (!v22[0])
        {
          goto LABEL_27;
        }

        v11 = v23;
        v12 = v22;
        v13 = v22[0];
        do
        {
          if (*(v13 + 8) >= v23)
          {
            v12 = v13;
          }

          v13 = v13[*(v13 + 8) < v23];
        }

        while (v13);
        if (v12 == v22 || v23 < *(v12 + 8))
        {
          goto LABEL_27;
        }

        if (!*v8)
        {
          goto LABEL_23;
        }

        v14 = (a2 + 8);
        v15 = *v8;
        do
        {
          if (*(v15 + 8) >= v23)
          {
            v14 = v15;
          }

          v15 = v15[*(v15 + 8) < v23];
        }

        while (v15);
        if (v14 == v8 || v23 < *(v14 + 8))
        {
          goto LABEL_23;
        }

        sub_10000BA08(*v8, v23);
        sub_10000BA08(v22[0], v23);
        if (rest::operator!=())
        {
          break;
        }

LABEL_27:
        sub_100170380(&v21, v22[0]);
        do
        {
          ++v4;
        }

        while (v4 != v5 && (v6(*v4) & 1) == 0);
        if (v4 == v7)
        {
          return;
        }
      }

      v10 = v22[0];
      v11 = v23;
LABEL_23:
      v16 = sub_10000BA08(v10, v11);
      *buf = &v23;
      v17 = sub_1002D750C(a1 + 2560, &v23, &unk_101802C98, buf);
      std::string::operator=((v17[5] + 48), v16);
      v18 = *v9;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v27 = &v23;
        v19 = sub_1002D750C(a1 + 2560, &v23, &unk_101802C98, &v27)[5];
        v20 = (v19 + 48);
        if (*(v19 + 71) < 0)
        {
          v20 = *v20;
        }

        *buf = 136315138;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Phone number updated:%s", buf, 0xCu);
      }

      goto LABEL_27;
    }
  }
}

uint64_t sub_10123BB40(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    v16 = *v4;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid slot context for ignore IMS Registration", &__p, 2u);
    }

    return 0;
  }

  v5 = *(a1 + 208);
  if (v5 == (a1 + 216))
  {
    return 0;
  }

  while (1)
  {
    PersonalityIdFromSlotId();
    v6 = *(v5 + 55);
    if (v6 >= 0)
    {
      v7 = *(v5 + 55);
    }

    else
    {
      v7 = v5[5];
    }

    v8 = HIBYTE(v40);
    v9 = SHIBYTE(v40);
    if (v40 < 0)
    {
      v8 = *(&__p + 1);
    }

    if (v7 == v8)
    {
      if (v6 >= 0)
      {
        v10 = v5 + 4;
      }

      else
      {
        v10 = v5[4];
      }

      if (v40 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v12 = memcmp(v10, p_p, v7) != 0;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_18:
        if (v12)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v12 = 1;
      if ((SHIBYTE(v40) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    operator delete(__p);
    if (v12)
    {
      goto LABEL_23;
    }

LABEL_21:
    if (*(v5 + 56) == 1 && *(v5 + 58) == 1)
    {
      break;
    }

LABEL_23:
    v13 = v5[1];
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
        v14 = v5[2];
        v15 = *v14 == v5;
        v5 = v14;
      }

      while (!v15);
    }

    v5 = v14;
    if (v14 == (a1 + 216))
    {
      return 0;
    }
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v20 = ServiceMap;
  if (v21 < 0)
  {
    v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
    v23 = 5381;
    do
    {
      v21 = v23;
      v24 = *v22++;
      v23 = (33 * v23) ^ v24;
    }

    while (v24);
  }

  std::mutex::lock(ServiceMap);
  *&__p = v21;
  v25 = sub_100009510(&v20[1].__m_.__sig, &__p);
  if (v25)
  {
    v27 = v25[3];
    v26 = v25[4];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v20);
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v26);
      v28 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    v27 = 0;
  }

  std::mutex::unlock(v20);
  v26 = 0;
  v28 = 1;
LABEL_42:
  if (v27)
  {
    v37 = 0;
    v38[0] = @"SMSSettings";
    v38[1] = @"UseIMSDuringCSCall";
    __p = 0uLL;
    v40 = 0;
    sub_10005B328(&__p, v38, &__p, 2uLL);
    (*(*v27 + 88))(&v36, v27, a2, 1, &__p, 0, 0);
    sub_10002FE1C(&v37, &v36);
    sub_10000A1EC(&v36);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (v37)
    {
      LOBYTE(__p) = 0;
      ctu::cf::assign(&__p, v37, v29);
      v30 = __p;
      v31 = *v4;
      v32 = os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT);
      v17 = v30 ^ 1u;
      if (v32)
      {
        v33 = CSIBOOLAsString(v30 ^ 1u);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Ignore IMS Registration during CS call (carrier pref): %s", &__p, 0xCu);
      }

      sub_100045C8C(&v37);
      if ((v28 & 1) == 0)
      {
        sub_100004A34(v26);
      }

      return v17;
    }

    sub_100045C8C(&v37);
  }

  else
  {
    v34 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to get carrier interface", &__p, 2u);
    }
  }

  if ((v28 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  v35 = *v4;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Ignoring IMS Registration during active CS call", &__p, 2u);
  }

  return 1;
}

void sub_10123BF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  sub_100045C8C(&a10);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(a1);
}

void sub_10123BFE4(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  *buf = &v15;
  if (!*(sub_1002D750C(a1 + 2560, &v15, &unk_101802C98, buf)[5] + 244))
  {
    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#I BB not ready since Encoder unknown";
      goto LABEL_16;
    }

LABEL_17:
    v7 = 0;
    goto LABEL_19;
  }

  *buf = &v15;
  if (!*(sub_1002D750C(a1 + 2560, &v15, &unk_101802C98, buf)[5] + 285))
  {
    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#I BB not ready since service state = not ready";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *buf = &v15;
  if (*(sub_1002D750C(a1 + 2560, &v15, &unk_101802C98, buf)[5] + 244) == 2)
  {
    *buf = &v15;
    if (*(sub_1002D750C(a1 + 2560, &v15, &unk_101802C98, buf)[5] + 285) == 1)
    {
      v5 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "#I BB not ready since encoder is 3GPP2 and only 3GPP SMS service is up";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  *buf = &v15;
  if (*(sub_1002D750C(a1 + 2560, &v15, &unk_101802C98, buf)[5] + 244) == 1)
  {
    *buf = &v15;
    if (*(sub_1002D750C(a1 + 2560, &v15, &unk_101802C98, buf)[5] + 285) == 2)
    {
      v5 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "#I BB not ready since encoder is 3GPP and only 3GPP2 SMS service is up";
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  v7 = 1;
LABEL_19:
  *buf = &v15;
  if (*(sub_1002D750C(a1 + 2560, &v15, &unk_101802C98, buf)[5] + 292) != v7)
  {
    *buf = &v15;
    *(sub_1002D750C(a1 + 2560, &v15, &unk_101802C98, buf)[5] + 292) = v7;
    v8 = *v4;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = &v15;
      if (*(sub_1002D750C(a1 + 2560, &v15, &unk_101802C98, buf)[5] + 292))
      {
        v9 = "up";
      }

      else
      {
        v9 = "down";
      }

      *buf = &v15;
      sub_1002D750C(a1 + 2560, &v15, &unk_101802C98, buf);
      v10 = sms::asString();
      *buf = &v15;
      v11 = sub_1002D750C(a1 + 2560, &v15, &unk_101802C98, buf);
      v12 = sms::asString(*(v11[5] + 285));
      v13 = sub_10122AA78(a1, v15);
      v14 = CSIBOOLAsString(v13);
      *buf = 136315906;
      *&buf[4] = v9;
      v17 = 2080;
      v18 = v10;
      v19 = 2080;
      v20 = v12;
      v21 = 2080;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I SMS Baseband service is: %s for encoder: %s service state: %s baseband activated: %s", buf, 0x2Au);
    }

    sub_101240EA4(a1, v15);
  }
}

uint64_t sub_10123C3F8(uint64_t a1)
{
  result = subscriber::makeSimSlotRange();
  v3 = v16;
  v4 = v17;
  if (v16 != v17)
  {
    v5 = v18;
    do
    {
      result = v18(*v3);
      if (result)
      {
        break;
      }

      ++v3;
    }

    while (v3 != v17);
    v6 = v17;
    if (v3 != v17)
    {
      v7 = (a1 + 296);
      do
      {
        v8 = *v3;
        v15 = *v3;
        v9 = *v7;
        if (!*v7)
        {
          goto LABEL_15;
        }

        v10 = (a1 + 296);
        v11 = *v7;
        do
        {
          if (*(v11 + 7) >= v8)
          {
            v10 = v11;
          }

          v11 = v11[*(v11 + 7) < v8];
        }

        while (v11);
        if (v10 == v7 || (v12 = *(v10 + 7), v8 < v12) || v12 == *(a1 + 324))
        {
LABEL_15:
          result = rest::operator==();
          if (result)
          {
            goto LABEL_27;
          }

          v9 = *v7;
          v8 = v15;
        }

        if (!v9)
        {
LABEL_31:
          sub_1000A58E4("map::at:  key not found");
        }

        while (1)
        {
          while (1)
          {
            v13 = *(v9 + 7);
            if (v13 <= v8)
            {
              break;
            }

            v9 = *v9;
            if (!v9)
            {
              goto LABEL_31;
            }
          }

          if (v13 >= v8)
          {
            break;
          }

          v9 = v9[1];
          if (!v9)
          {
            goto LABEL_31;
          }
        }

        v14 = *(v9 + 8);
        result = subscriber::isValidSimSlot();
        if (!result)
        {
          return result;
        }

        v19 = &v15;
        result = sub_1002D750C(a1 + 2560, &v15, &unk_101802C98, &v19);
        *(*(result + 40) + 248) = v14;
        do
        {
LABEL_27:
          if (++v3 == v4)
          {
            break;
          }

          result = v5(*v3);
        }

        while ((result & 1) == 0);
      }

      while (v3 != v6);
    }
  }

  return result;
}

uint64_t sub_10123C598(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v29 = v2;
    v30 = v3;
    v4 = result;
    if (*(result + 2616) == 1)
    {
      result = subscriber::makeSimSlotRange();
      v5 = v24;
      v6 = v25;
      if (v24 != v25)
      {
        v7 = v26;
        do
        {
          result = v26(*v5);
          if (result)
          {
            break;
          }

          ++v5;
        }

        while (v5 != v25);
        v8 = v25;
        if (v5 != v25)
        {
          v22 = v25;
          do
          {
            v23 = *v5;
            result = (***(v4 + 2584))(*(v4 + 2584));
            if (result)
            {
              v9 = *(*(**(v4 + 48) + 16))(*(v4 + 48), v23);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Invalidating all Cell Broadcast Messages", buf, 2u);
              }

              *buf = &v23;
              v10 = *sub_1002D750C(v4 + 2560, &v23, &unk_101802C98, buf)[5];
              *buf = &v23;
              v11 = *(sub_1002D750C(v4 + 2560, &v23, &unk_101802C98, buf)[5] + 8);
              if (v10 != v11)
              {
                while (1)
                {
                  v12 = v10[1];
                  *buf = *v10;
                  v28 = v12;
                  if (v12)
                  {
                    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                    v13 = sub_10124CC48(buf);
                    sub_100004A34(v12);
                    if (v13)
                    {
                      break;
                    }

                    goto LABEL_17;
                  }

                  if (sub_10124CC48(buf))
                  {
                    break;
                  }

LABEL_17:
                  v10 += 2;
                  if (v10 == v11)
                  {
                    v10 = v11;
                    goto LABEL_30;
                  }
                }

                if (v10 != v11)
                {
                  for (i = v10 + 2; i != v11; i += 2)
                  {
                    *buf = *i;
                    v15 = i[1];
                    v28 = v15;
                    if (v15)
                    {
                      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
                      v16 = sub_10124CC48(buf);
                      sub_100004A34(v15);
                      if (v16)
                      {
                        continue;
                      }
                    }

                    else if (sub_10124CC48(buf))
                    {
                      continue;
                    }

                    v17 = *i;
                    *i = 0;
                    i[1] = 0;
                    v18 = v10[1];
                    *v10 = v17;
                    if (v18)
                    {
                      sub_100004A34(v18);
                    }

                    v10 += 2;
                  }
                }
              }

LABEL_30:
              *buf = &v23;
              v19 = sub_1002D750C(v4 + 2560, &v23, &unk_101802C98, buf)[5];
              *buf = &v23;
              v20 = sub_1002D750C(v4 + 2560, &v23, &unk_101802C98, buf);
              sub_101231234(v19, v10, *(v20[5] + 8));
              *buf = &v23;
              v21 = sub_1002D750C(v4 + 2560, &v23, &unk_101802C98, buf);
              sub_100021348((v21[5] + 296));
              *buf = &v23;
              result = sub_1002D750C(v4 + 2560, &v23, &unk_101802C98, buf);
              *(*(result + 40) + 592) = *(*(result + 40) + 584);
              v8 = v22;
            }

            do
            {
              if (++v5 == v6)
              {
                break;
              }

              result = v7(*v5);
            }

            while ((result & 1) == 0);
          }

          while (v5 != v8);
        }
      }
    }
  }

  return result;
}

void sub_10123C8D8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) == 0 && *(a1 + 260) == 1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Purging MO messages due to reset", v4, 2u);
    }

    sub_10123032C(a1, 1);
  }
}

void sub_10123C95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (subscriber::isValidSimSlot())
  {
    ServiceMap = Registry::getServiceMap(*(a2 + 80));
    v7 = ServiceMap;
    if (v8 < 0)
    {
      v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v10 = 5381;
      do
      {
        v8 = v10;
        v11 = *v9++;
        v10 = (33 * v10) ^ v11;
      }

      while (v11);
    }

    std::mutex::lock(ServiceMap);
    *buf = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, buf);
    if (v12)
    {
      v14 = v12[3];
      v13 = v12[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_13:
        v17 = (*(**(a2 + 48) + 16))(*(a2 + 48), a3);
        v18 = v17;
        if (v14)
        {
          *buf = 0;
          v24 = 0;
          (*(*v14 + 8))(buf, v14, a3);
          if (*buf)
          {
            if (*(*buf + 47) < 0)
            {
              sub_100005F2C(a1, *(*buf + 24), *(*buf + 32));
            }

            else
            {
              v19 = *(*buf + 24);
              *(a1 + 16) = *(*buf + 40);
              *a1 = v19;
            }
          }

          else
          {
            v21 = *v18;
            if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
            {
              *v22 = 0;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to get Personality Info. Not updating TPMR", v22, 2u);
            }

            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
          }

          if (v24)
          {
            sub_100004A34(v24);
          }
        }

        else
        {
          v20 = *v17;
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to get Personality Shop. Not updating TPMR", buf, 2u);
          }

          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
        }

        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        return;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_13;
  }

  v16 = *(a2 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid slot for account ID", buf, 2u);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void sub_10123CBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10123CC14(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v37 = 0;
  v38 = 0;
  v39 = 0;
  sub_10123C95C(&v37, a1, a2);
  v9 = HIBYTE(v39);
  if (v39 < 0)
  {
    v9 = v38;
  }

  if (v9)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v11 = ServiceMap;
    if (v12 < 0)
    {
      v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(ServiceMap);
    *buf = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, buf);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
        if (!v18)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
LABEL_10:
      v20 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to get Personal Wallet. Not updating TPMR", buf, 2u);
      }

LABEL_35:
      if ((v19 & 1) == 0)
      {
        sub_100004A34(v17);
      }

      goto LABEL_37;
    }

LABEL_14:
    v40 = 0;
    *buf = a3;
    v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
    if (v21)
    {
      v22 = v40;
      v40 = v21;
      *buf = v22;
      sub_100029A48(buf);
    }

    v36 = v40;
    v40 = 0;
    sub_100029A48(&v40);
    (*(*v18 + 16))(v18, &v37, @"TPMR", v36, @"SMSControllerWalletDomain", 0, 1, 0);
    sub_100029A48(&v36);
    v23 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Cached TPMR : %u", buf, 8u);
    }

    if (!a4)
    {
      goto LABEL_35;
    }

    v24 = Registry::getServiceMap(*(a1 + 80));
    v25 = v24;
    if (v26 < 0)
    {
      v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
      v28 = 5381;
      do
      {
        v26 = v28;
        v29 = *v27++;
        v28 = (33 * v28) ^ v29;
      }

      while (v29);
    }

    std::mutex::lock(v24);
    *buf = v26;
    v30 = sub_100009510(&v25[1].__m_.__sig, buf);
    if (v30)
    {
      v32 = v30[3];
      v31 = v30[4];
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v25);
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v31);
        if (v32)
        {
          goto LABEL_30;
        }

LABEL_28:
        v33 = *v8;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to get Subscriber Interface. Not updating TPMR in sim.", buf, 2u);
        }

LABEL_30:
        LOBYTE(v40) = a3;
        v44 = 0;
        v45 = 0;
        *buf = 0;
        sub_1000DCF88(buf, &v40, &v40 + 1, 1);
        sub_100004AA0(&v40, (a1 + 8));
        v34 = v41;
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v34);
        }

        memset(__p, 0, sizeof(__p));
        sub_100034C50(__p, *buf, v44, v44 - *buf);
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = 0;
        operator new();
      }
    }

    else
    {
      v32 = 0;
    }

    std::mutex::unlock(v25);
    if (v32)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_37:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
  }
}

void sub_10123D0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  sub_10000FF50(&a22);
  if (__p)
  {
    operator delete(__p);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
    if (v30)
    {
LABEL_7:
      if (v31)
      {
LABEL_12:
        if (a19 < 0)
        {
          operator delete(a14);
        }

        _Unwind_Resume(a1);
      }

LABEL_11:
      sub_100004A34(v27);
      goto LABEL_12;
    }
  }

  else if (v30)
  {
    goto LABEL_7;
  }

  sub_100004A34(v29);
  if (v31)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t sub_10123D1E0(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_10123C95C(&__p, a1, a2);
  v5 = HIBYTE(v24);
  if (v24 < 0)
  {
    v5 = v23;
  }

  if (!v5)
  {
    v17 = 0;
    goto LABEL_24;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      if (!v14)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (!v14)
  {
LABEL_10:
    v16 = *v4;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to get Personal Wallet", buf, 2u);
    }

    v17 = 0;
    if (v15)
    {
      goto LABEL_24;
    }

LABEL_23:
    sub_100004A34(v13);
    goto LABEL_24;
  }

LABEL_17:
  *buf = 0;
  (*(*v14 + 24))(&v21, v14, &__p, @"TPMR", @"SMSControllerWalletDomain", 0, 1);
  sub_10010B240(buf, &v21);
  sub_10000A1EC(&v21);
  if (*buf)
  {
    LOBYTE(v21) = 0;
    ctu::cf::assign(&v21, *buf, v18);
    v17 = v21 + 1;
  }

  else
  {
    v19 = *v4;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to read TPMR value", &v21, 2u);
    }

    v17 = 0;
  }

  sub_100029A48(buf);
  if ((v15 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  return v17;
}

void sub_10123D454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16)
{
  sub_100029A48(&a16);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10123D4A8(void *a1)
{
  v1 = a1[49];
  v2 = a1[48];
  if (v2 != v1)
  {
    v4 = a1 + 43;
    do
    {
      v5 = *v2;
      if (subscriber::isValidSimSlot())
      {
        v7 = *(v2 + 16);
        v6 = *(v2 + 24);
        if (v7 == v6)
        {
          v10 = 0;
        }

        else
        {
          v8 = v7 + 4;
          do
          {
            v9 = *(v8 - 4) - 1;
            v10 = v9 < 2;
            v11 = v9 < 2 || v8 == v6;
            v8 += 4;
          }

          while (!v11);
        }

        v17 = v5;
        if (subscriber::isValidSimSlot())
        {
          v12 = *v4;
          if (*v4)
          {
            v13 = v4;
            do
            {
              if (*(v12 + 32) >= v5)
              {
                v13 = v12;
              }

              v12 = *(v12 + 8 * (*(v12 + 32) < v5));
            }

            while (v12);
            if (v13 != v4)
            {
              v14 = !v10;
              if (*(v13 + 8) > v5)
              {
                v14 = 1;
              }

              if ((v14 & 1) == 0)
              {
                v15 = *(v13 + 41);
                if (subscriber::isSimAbsent())
                {
                  if (v15 == 1)
                  {
                    v18 = &v17;
                    v16 = sub_1002D750C((a1 + 320), &v17, &unk_101802C98, &v18);
                    sub_100021348(v16[5]);
                  }
                }
              }
            }
          }
        }
      }

      v2 += 168;
    }

    while (v2 != v1);
  }
}

void sub_10123D5FC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 2320);
  v3 = (result + 2328);
  if (v2 != (result + 2328))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      v7 = *(v2 + 7);
      if (!*v5)
      {
        goto LABEL_12;
      }

      v8 = v5;
      do
      {
        if (*(v6 + 28) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 28) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 7))
      {
        goto LABEL_12;
      }

      if ((InHomeCountryStatus::operator==() & 1) == 0)
      {
        break;
      }

LABEL_13:
      v9 = v2[1];
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
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return;
      }
    }

    v7 = *(v2 + 7);
LABEL_12:
    sub_1012585EC(result, v7, v2 + 32);
    goto LABEL_13;
  }
}

void sub_10123D6CC(uint64_t result)
{
  if (*(result + 2620) == 1)
  {
    subscriber::makeSimSlotRange();
    v2 = v4;
    if (v4 != v5)
    {
      do
      {
        if (v6(*v2))
        {
          break;
        }

        ++v2;
      }

      while (v2 != v5);
      while (v2 != v5)
      {
        v3 = *v2++;
        sub_10123D780(result, v3);
        while (v2 != v5 && (v6(*v2) & 1) == 0)
        {
          ++v2;
        }
      }
    }
  }
}

void sub_10123D780(uint64_t a1, int a2)
{
  __p = 0;
  v20 = 0;
  v21 = 0;
  sms::Controller::getDynamicMessageModes_sync(a1, a2, &__p);
  v18[0] = 1;
  v18[1] = a1 + 2392;
  v4 = *(a1 + 2432);
  if (!v4)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *(v4 + 8);
      if (v6 <= a2)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (v6 >= a2)
    {
      break;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 + 5 != &__p)
  {
    v7 = v20;
    v8 = v20 - __p;
    v9 = v5[7];
    v10 = v5[5];
    if (v9 - v10 < (v20 - __p))
    {
      v11 = v8 >> 2;
      if (v10)
      {
        v5[6] = v10;
        operator delete(v10);
        v9 = 0;
        v5[5] = 0;
        v5[6] = 0;
        v5[7] = 0;
      }

      if (!(v11 >> 62))
      {
        v12 = v9 >> 1;
        if (v9 >> 1 <= v11)
        {
          v12 = v8 >> 2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (!(v13 >> 62))
        {
          sub_100016740((v5 + 5), v13);
        }
      }

      sub_1000CE3D4();
    }

    v14 = v5[6];
    v15 = v14 - v10;
    if (v14 - v10 >= v8)
    {
      if (v20 != __p)
      {
        memmove(v5[5], __p, v20 - __p);
      }

      v17 = &v10[v8];
    }

    else
    {
      v16 = __p + v15;
      if (v14 != v10)
      {
        memmove(v5[5], __p, v15);
        v14 = v5[6];
      }

      if (v7 != v16)
      {
        memmove(v14, v16, v7 - v16);
      }

      v17 = v14 + v7 - v16;
    }

    v5[6] = v17;
  }

  sub_10125CEC4(v18);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

void sub_10123D9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_10125CEC4(&a10);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10123D9C4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 2344);
  v3 = (result + 2352);
  if (v2 != (result + 2352))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v2 + 8);
      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8))
      {
        goto LABEL_15;
      }

      v9 = v2[5];
      v10 = v8[5];
      v11 = v8[6];
      if (v11 - v10 == v2[6] - v9)
      {
        while (v10 != v11)
        {
          if (!sub_100022D3C(&v17, v10, v9))
          {
            v7 = *(v2 + 8);
            goto LABEL_25;
          }

          v10 += 3;
          v9 += 3;
        }

        goto LABEL_17;
      }

LABEL_25:
      v13 = result;
      v12 = (v2 + 5);
LABEL_16:
      sub_1012586F4(v13, v7, v12);
LABEL_17:
      v14 = v2[1];
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
          v15 = v2[2];
          v16 = *v15 == v2;
          v2 = v15;
        }

        while (!v16);
      }

      v2 = v15;
      if (v15 == v3)
      {
        return;
      }
    }

    v7 = *(v2 + 8);
LABEL_15:
    v12 = (v2 + 5);
    v13 = result;
    goto LABEL_16;
  }
}

void sub_10123DAF4(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *&buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v15 = v14;
  if (v12)
  {
    v48 = 0;
    (*(*v12 + 96))(&buf, v12, a2, 1, @"PreventDetachAfterEmergencyCallTimer", 0, 0);
    sub_10010B240(&v48, &buf);
    v16 = sub_10000A1EC(&buf);
    if (!v48)
    {
      v24 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I PreventDetachAfterEmergencyCallTimer not set in the carrier bundle. Returning!", &buf, 2u);
      }

      goto LABEL_56;
    }

    LODWORD(buf) = 0;
    ctu::cf::assign(v16, v48, v17);
    v18 = buf;
    if (!buf)
    {
      v25 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "PreventDetachAfterEmergencyCallTimer set to 0. Returning", &buf, 2u);
      }

      goto LABEL_56;
    }

    if (!*(a1 + 2672))
    {
      sub_10000501C(&buf, "/cc/assertions/emergency_online");
      ctu::rest::AssertionHandle::create();
      if (v50 < 0)
      {
        operator delete(buf);
      }

      v26 = v47;
      v47 = 0uLL;
      v27 = *(a1 + 2680);
      *(a1 + 2672) = v26;
      if (v27)
      {
        sub_100004A34(v27);
        if (*(&v47 + 1))
        {
          sub_100004A34(*(&v47 + 1));
        }
      }
    }

    v19 = *(a1 + 2632);
    v20 = *v15;
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (!v21)
      {
        goto LABEL_30;
      }

      LODWORD(buf) = 134217984;
      *(&buf + 4) = v18;
      v22 = "#I Prevent Detach timer re-starting for %lld secs";
    }

    else
    {
      if (!v21)
      {
        goto LABEL_30;
      }

      LODWORD(buf) = 134217984;
      *(&buf + 4) = v18;
      v22 = "#I Prevent Detach timer starting for %lld secs";
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v22, &buf, 0xCu);
LABEL_30:
    v28 = *(a1 + 16);
    if (!v28 || (v29 = *(a1 + 8), (v30 = std::__shared_weak_count::lock(v28)) == 0))
    {
      sub_100013CC4();
    }

    v31 = v30;
    atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v30);
    Registry::getTimerService(&buf, *(a1 + 80));
    v32 = buf;
    sub_10000501C(__p, "PreventDetachTimer");
    v33 = *(a1 + 24);
    object = v33;
    if (v33)
    {
      dispatch_retain(v33);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_10123E1B4;
    aBlock[3] = &unk_101F1D588;
    aBlock[4] = a1;
    aBlock[5] = v29;
    v41 = v31;
    atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v42 = a2;
    v43 = _Block_copy(aBlock);
    sub_100D23364(v32, __p, 1, 1000000 * v18, &object, &v43);
    v34 = v47;
    *&v47 = 0;
    v35 = *(a1 + 2632);
    *(a1 + 2632) = v34;
    if (v35)
    {
      (*(*v35 + 8))(v35);
      v36 = v47;
      *&v47 = 0;
      if (v36)
      {
        (*(*v36 + 8))(v36);
      }
    }

    if (v43)
    {
      _Block_release(v43);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v46 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if (*(a1 + 2632))
    {
      v37 = *(a1 + 40);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v18;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Prevent detach timer is set to %lld secs", &buf, 0xCu);
      }

      if (*(a1 + 2720) != v18)
      {
        *(a1 + 2720) = v18;
        v38 = *(a1 + 2712);
        if (v38)
        {
          (*(*v38 + 48))(v38, a1 + 2720);
        }
      }

      v39 = *(a1 + 112);
      if (v39)
      {
        (*(*v39 + 152))(v39, a2);
      }
    }

    if (v41)
    {
      std::__shared_weak_count::__release_weak(v41);
    }

    std::__shared_weak_count::__release_weak(v31);
LABEL_56:
    sub_100029A48(&v48);
    goto LABEL_57;
  }

  v23 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unable to get Carrier Settings object.", &buf, 2u);
  }

LABEL_57:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10123E0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *aBlock, dispatch_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v26);
  sub_100029A48((v28 - 120));
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_10123E1B4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Prevent Detach timer expired, releasing emergency online assertion", __p, 2u);
        }

        if (*(v3 + 2672))
        {
          v7 = *(v3 + 40);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Emergency online timer expired, releasing emergency online assertion", __p, 2u);
          }

          v8 = *(v3 + 2680);
          *(v3 + 2672) = 0u;
          if (v8)
          {
            sub_100004A34(v8);
          }
        }

        v9 = *(v3 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Prevent detach timer is cleared", __p, 2u);
        }

        if (*(v3 + 2720) != 0.0)
        {
          *(v3 + 2720) = 0;
          v10 = *(v3 + 2712);
          if (v10)
          {
            (*(*v10 + 48))(v10, v3 + 2720);
          }
        }

        v11 = *(v3 + 2632);
        *(v3 + 2632) = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        v12 = *(v3 + 112);
        if (v12)
        {
          (*(*v12 + 152))(v12, *(a1 + 56));
        }

        v13 = (a1 + 56);
        __p[0] = v13;
        v14 = sub_1002D750C(v3 + 2560, v13, &unk_101802C98, __p)[5];
        sub_100009970(v14 + 560, *(v14 + 568));
        *(v14 + 560) = v14 + 568;
        *(v14 + 568) = 0u;
        v15 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v13;
          v16 = sub_1002D750C(v3 + 2560, v13, &unk_101802C98, &v20);
          sub_101166E24(v16[5], __p);
          if (v19 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          *buf = 136315138;
          v22 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Emergency Text Numbers %s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10123E4D8(uint64_t a1)
{
  subscriber::makeSimSlotRange();
  v1 = v39;
  v2 = v40;
  if (v39 != v40)
  {
    v3 = v41;
    do
    {
      if (v41(*v1))
      {
        break;
      }

      ++v1;
    }

    while (v1 != v40);
    v4 = v40;
    while (v1 != v4)
    {
      v38 = *v1;
      v5 = (*(**(a1 + 48) + 16))(*(a1 + 48));
      v6 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Dumping SMS Param", buf, 2u);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = CSIBOOLAsString(*(a1 + 200));
        *buf = &v38;
        v8 = sub_1002D750C(a1 + 2560, &v38, &unk_101802C98, buf);
        v9 = CSIBOOLAsString(*(v8[5] + 41));
        v10 = sub_10122AA78(a1, v38);
        v11 = CSIBOOLAsString(v10);
        *buf = 136315650;
        *&buf[4] = v7;
        v45 = 2080;
        v46 = v9;
        v47 = 2080;
        v48 = v11;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I fAirplaneMode: %s emergency callback mode: %s baseband activation status: %s", buf, 0x20u);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v12 = sub_1002D750C(a1 + 2560, &v38, &unk_101802C98, buf);
        WirelessTechnologyList::asString(buf, (v12[5] + 240));
        v13 = buf;
        if (v47 < 0)
        {
          v13 = *buf;
        }

        v42 = 136315138;
        v43 = v13;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Current Technologies: %s", &v42, 0xCu);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(*buf);
        }

        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        sub_1002D750C(a1 + 2560, &v38, &unk_101802C98, buf);
        v14 = sms::asString();
        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Current Encoder: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        if (*(sub_1002D750C(a1 + 2560, &v38, &unk_101802C98, buf)[5] + 42))
        {
          v15 = "";
        }

        else
        {
          v15 = " not";
        }

        *buf = &v38;
        v16 = sub_1002D750C(a1 + 2560, &v38, &unk_101802C98, buf);
        v17 = CSIBOOLAsString(*(v16[5] + 294));
        v18 = sub_10123EEF8(*(a1 + 80), v38);
        *buf = 136315650;
        v19 = " not";
        if (v18)
        {
          v19 = "";
        }

        *&buf[4] = v15;
        v45 = 2080;
        v46 = v17;
        v47 = 2080;
        v48 = v19;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I We are%s IMS registered, Over Wifi(%s), and we will%s fallback to signaling on IMS send failures", buf, 0x20u);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v20 = sub_1002D750C(a1 + 2560, &v38, &unk_101802C98, buf);
        v21 = " not";
        if (*(v20[5] + 72))
        {
          v21 = "";
        }

        *buf = 136315138;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Reply address is%s being used", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v22 = sub_10123005C(a1, v38);
        v23 = CSIBOOLAsString(v22);
        *buf = 136315138;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Rat change timer is running: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v38;
        isValidSimSlot = subscriber::isValidSimSlot();
        if (isValidSimSlot)
        {
          *buf = &v42;
          isValidSimSlot = *(sub_1002D750C(a1 + 2560, &v42, &unk_101802C98, buf)[5] + 328) != 0;
        }

        v25 = CSIBOOLAsString(isValidSimSlot);
        *buf = 136315138;
        *&buf[4] = v25;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Retry wait timer is running: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v26 = CSIBOOLAsString(*(a1 + 2656) != 0);
        *buf = 136315138;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I 2G hints timer is running: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v27 = *(sub_1002D750C(a1 + 2560, &v38, &unk_101802C98, buf)[5] + 336);
        *buf = 67109120;
        *&buf[4] = v27;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I VVM data connection usable: %d", buf, 8u);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v28 = sub_1002D750C(a1 + 2560, &v38, &unk_101802C98, buf);
        v29 = CSIBOOLAsString(*(v28[5] + 292));
        *buf = 136315138;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I BB service ready status: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v30 = sub_1002D750C(a1 + 2560, &v38, &unk_101802C98, buf);
        v31 = CSIBOOLAsString(*(v30[5] + 293));
        *buf = 136315138;
        *&buf[4] = v31;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I SMS ready status: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v32 = sub_1002D750C(a1 + 2560, &v38, &unk_101802C98, buf)[5];
        v33 = (v32 + 392);
        if (*(v32 + 415) < 0)
        {
          v33 = *v33;
        }

        *buf = 136315138;
        *&buf[4] = v33;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I VVM beacon SMSC address: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        sub_1012300C8(&__p, a1, v38);
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v34 = sub_1002D750C(a1 + 2560, &v38, &unk_101802C98, buf);
        sub_101166E24(v34[5], buf);
        v35 = buf;
        if (v47 < 0)
        {
          v35 = *buf;
        }

        v42 = 136446210;
        v43 = v35;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Emergency text numbers %{public}s", &v42, 0xCu);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(*buf);
        }
      }

      do
      {
        ++v1;
      }

      while (v1 != v2 && (v3(*v1) & 1) == 0);
    }
  }
}

void sub_10123EEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  operator delete(v30);
  _Unwind_Resume(a1);
}

uint64_t sub_10123EEF8(Registry *a1, uint64_t a2)
{
  v20 = 0;
  ServiceMap = Registry::getServiceMap(a1);
  v4 = ServiceMap;
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  __p = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &__p);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
LABEL_7:
    v13 = 1;
    goto LABEL_15;
  }

LABEL_10:
  v21[0] = @"SMSSettings";
  v21[1] = @"TransportFallback";
  v18 = 0;
  v19 = 0;
  __p = 0;
  sub_10005B328(&__p, v21, &v22, 2uLL);
  v21[0] = 0;
  (*(*v11 + 104))(&v16, v11, a2, 1, &__p, 0, 0);
  sub_10002FE1C(v21, &v16);
  sub_10000A1EC(&v16);
  if (v21[0])
  {
    LOBYTE(v16) = 0;
    ctu::cf::assign(&v16, v21[0], v14);
    v13 = v16;
  }

  else
  {
    v13 = 1;
  }

  sub_100045C8C(v21);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

LABEL_15:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_10001021C(&v20);
  return v13 & 1;
}

void sub_10123F0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13, const void *a14)
{
  sub_100045C8C(&a14);
  if (__p)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  sub_10001021C(&a13);
  _Unwind_Resume(a1);
}

void sub_10123F14C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Controller - intialize()", &buf, 2u);
  }

  (*(**(a1 + 2584) + 160))(*(a1 + 2584));
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_101240DB4;
  aBlock[3] = &unk_101F1D5B8;
  aBlock[4] = a1;
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v17 = *(a1 + 24);
      v7 = v17;
      v8 = _Block_copy(v3);
      v18 = v8;
      dispatch_retain(v7);
      buf = 0u;
      v27 = 0u;
      v19[0] = v7;
      v9 = _Block_copy(v8);
      v19[1] = v9;
      dispatch_retain(v7);
      v20[0] = v7;
      v10 = _Block_copy(v9);
      v20[1] = v10;
      dispatch_retain(v7);
      v21[0] = v7;
      v11 = _Block_copy(v10);
      v21[1] = v11;
      dispatch_retain(v7);
      __p[0] = 0;
      v22[0] = v7;
      v12 = _Block_copy(v11);
      v22[1] = v12;
      dispatch_retain(v7);
      v23[0] = v7;
      v13 = _Block_copy(v12);
      v23[1] = v13;
      dispatch_retain(v7);
      v24[0] = v7;
      v14 = _Block_copy(v13);
      v24[1] = v14;
      dispatch_retain(v7);
      v28[0] = v7;
      v15 = _Block_copy(v14);
      v28[1] = v15;
      dispatch_retain(v7);
      __p[1] = v7;
      __p[2] = _Block_copy(v15);
      dispatch_retain(v7);
      sub_101258904(v28);
      sub_101258904(v24);
      sub_101258904(v23);
      __p[0] = off_101F1F9C0;
      sub_101258904(v22);
      sub_101258904(v21);
      sub_1008F22A8(__p, &v27 + 1);
      sub_100084C48(__p);
      sub_101258904(v20);
      sub_101258904(v19);
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101240A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101240DB4(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  subscriber::makeSimSlotRange();
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    v6 = v12;
    do
    {
      if (v12(*v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != v11);
    v7 = v11;
    while (v4 != v7)
    {
      v8 = *v4++;
      v9 = v8;
      v13 = &v9;
      *(sub_1002D750C(v3 + 2560, &v9, &unk_101802C98, &v13)[5] + 41) = a2;
      sub_101240EA4(v3, v9);
      while (v4 != v5 && (v6(*v4) & 1) == 0)
      {
        ++v4;
      }
    }
  }
}

void sub_101240EA4(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (subscriber::isValidSimSlot())
  {
    v5 = *(a1 + 2504);
    if (v5)
    {
      v6 = a1 + 2504;
      do
      {
        if (*(v5 + 28) >= a2)
        {
          v6 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 28) < a2));
      }

      while (v5);
      if (v6 != a1 + 2504 && *(v6 + 28) <= a2 && *(v6 + 32) == 1)
      {
        v7 = *v4;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[not-ready]";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I SMS %s - Private network", buf, 0xCu);
        }

        sub_10124A0EC(a1, a2, 0);
        return;
      }
    }

    if (sub_10122AEE8(a1, a2))
    {
      v9 = *v4;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[ready]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I SMS %s - over IMS", buf, 0xCu);
      }

      sub_10124A0EC(a1, a2, 1);
      return;
    }

    if (sub_10122AA78(a1, a2))
    {
      *buf = &v41;
      if (*(sub_1002D750C(a1 + 2560, &v41, &unk_101802C98, buf)[5] + 292) == 1)
      {
        v10 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = &v41;
          sub_1002D750C(a1 + 2560, &v41, &unk_101802C98, buf);
          v11 = sms::asString();
          *buf = 136315394;
          *&buf[4] = "[ready]";
          *&buf[12] = 2080;
          *&buf[14] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I SMS %s - over BB, encoder: %s", buf, 0x16u);
        }

        sub_10124A0EC(a1, v41, 1);
        return;
      }

      if (sub_100A7F520())
      {
        v13 = v41;
        v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), v41);
        ServiceMap = Registry::getServiceMap(*(a1 + 80));
        v16 = ServiceMap;
        v17 = "18LASDQueryInterface";
        if (("18LASDQueryInterface" & 0x8000000000000000) != 0)
        {
          v18 = ("18LASDQueryInterface" & 0x7FFFFFFFFFFFFFFFLL);
          v19 = 5381;
          do
          {
            v17 = v19;
            v20 = *v18++;
            v19 = (33 * v19) ^ v20;
          }

          while (v20);
        }

        std::mutex::lock(ServiceMap);
        *buf = v17;
        v21 = sub_100009510(&v16[1].__m_.__sig, buf);
        if (v21)
        {
          v23 = v21[3];
          v22 = v21[4];
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v16);
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v22);
            goto LABEL_40;
          }
        }

        else
        {
          v23 = 0;
        }

        std::mutex::unlock(v16);
LABEL_40:
        if (v23)
        {
          v29 = *(a1 + 16);
          if (v29)
          {
            v30 = *(a1 + 8);
            v31 = std::__shared_weak_count::lock(v29);
            if (v31)
            {
              v32 = v31;
              atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v31);
              Registry::getTimerService(&v47, *(a1 + 80));
              v33 = v47;
              sub_10000501C(__p, "2G Location hints timer");
              v34 = *(a1 + 24);
              object = v34;
              if (v34)
              {
                dispatch_retain(v34);
              }

              *buf = _NSConcreteStackBlock;
              *&buf[8] = 1174405120;
              *&buf[16] = sub_10124A698;
              v51 = &unk_101F1D758;
              *&v52 = a1;
              *(&v52 + 1) = v30;
              v53 = v32;
              atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v54 = v14;
              v55 = v13;
              aBlock = _Block_copy(buf);
              sub_100D23364(v33, __p, 0, 5000000, &object, &aBlock);
              v35 = v42;
              v42 = 0;
              v36 = *(a1 + 2656);
              *(a1 + 2656) = v35;
              if (v36)
              {
                (*(*v36 + 8))(v36);
                v37 = v42;
                v42 = 0;
                if (v37)
                {
                  (*(*v37 + 8))(v37);
                }
              }

              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (object)
              {
                dispatch_release(object);
              }

              if (v46 < 0)
              {
                operator delete(__p[0]);
              }

              v38 = v48;
              if (v48)
              {
                sub_100004A34(v48);
              }

              v39 = LASDQueryInterface::_2G(v38);
              sub_10010C9B4(&v42, v39);
              atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v49 = 0;
              operator new();
            }
          }

          sub_100013CC4();
        }

        v40 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to get LASDQuery", buf, 2u);
        }

        sub_10124A5AC(a1, v13, 1);
      }

      v24 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v25 = CSIBOOLAsString(0);
        *buf = &v41;
        v26 = sub_1002D750C(a1 + 2560, &v41, &unk_101802C98, buf);
        v27 = CSIBOOLAsString(*(v26[5] + 292));
        v28 = CSIBOOLAsString(1);
        *buf = 136315906;
        *&buf[4] = "[not-ready]";
        *&buf[12] = 2080;
        *&buf[14] = v25;
        *&buf[22] = 2080;
        v51 = v27;
        LOWORD(v52) = 2080;
        *(&v52 + 2) = v28;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I SMS %s - ims: %s, bb: %s, activation: %s", buf, 0x2Au);
      }

      sub_10124A0EC(a1, v41, 0);
    }

    else
    {
      v12 = *v4;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[not-ready]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I SMS %s - BB not activated", buf, 0xCu);
      }

      sub_10124A0EC(a1, a2, 0);
    }
  }

  else
  {
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid slot while calculating SMS ready.", buf, 2u);
    }
  }
}

void sub_10124164C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10124172C(uint64_t a1)
{
  result = subscriber::makeSimSlotRange();
  v3 = v5;
  if (v5 != v6)
  {
    do
    {
      result = v7(*v3);
      if (result)
      {
        break;
      }

      ++v3;
    }

    while (v3 != v6);
    while (v3 != v6)
    {
      v4 = *v3;
      v8[0] = off_101F20AF0;
      v8[1] = a1;
      v8[3] = v8;
      sub_101243698(a1, v4, v8);
      result = sub_100A6EFFC(v8);
      do
      {
        if (++v3 == v6)
        {
          break;
        }

        result = v7(*v3);
      }

      while ((result & 1) == 0);
    }
  }

  return result;
}

void sub_10124183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100A6EFFC(va);
  _Unwind_Resume(a1);
}

void sub_101241858(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 336);
  v3 = (a1 + 344);
  if (v2 != (a1 + 344))
  {
    v5 = (a2 + 8);
    do
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = *(v2 + 8);
        v8 = v5;
        do
        {
          if (*(v6 + 32) >= v7)
          {
            v8 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 32) < v7));
        }

        while (v6);
        if (v8 != v5 && v7 >= *(v8 + 8))
        {
          if (rest::operator==())
          {
            goto LABEL_24;
          }

          v9 = *(v2 + 8);
          *v14 = *(v2 + 20);
          if (*(v2 + 71) < 0)
          {
            sub_100005F2C(&v15, v2[6], v2[7]);
          }

          else
          {
            v15 = *(v2 + 3);
            v16 = v2[8];
          }

          if (*(v2 + 95) < 0)
          {
            sub_100005F2C(&v17, v2[9], v2[10]);
          }

          else
          {
            v17 = *(v2 + 9);
            v18 = v2[11];
          }

          sub_10125E3AC(a1, v9, v14);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(v17);
          }

          v10 = &v15;
          if ((SHIBYTE(v16) & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v7 = *(v2 + 8);
      }

      *v19 = *(v2 + 20);
      if (*(v2 + 71) < 0)
      {
        sub_100005F2C(&v20, v2[6], v2[7]);
      }

      else
      {
        v20 = *(v2 + 3);
        v21 = v2[8];
      }

      if (*(v2 + 95) < 0)
      {
        sub_100005F2C(&__p, v2[9], v2[10]);
      }

      else
      {
        __p = *(v2 + 9);
        v23 = v2[11];
      }

      sub_10125E3AC(a1, v7, v19);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }

      v10 = &v20;
      if ((SHIBYTE(v21) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(*v10);
LABEL_24:
      v11 = v2[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
    }

    while (v12 != v3);
  }
}

void sub_101241A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101241AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 360);
  v3 = (a1 + 368);
  if (v2 != (a1 + 368))
  {
    v5 = (a2 + 8);
    do
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = *(v2 + 8);
        v8 = v5;
        do
        {
          if (*(v6 + 32) >= v7)
          {
            v8 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 32) < v7));
        }

        while (v6);
        if (v8 != v5 && v7 >= *(v8 + 8))
        {
          if (rest::operator==())
          {
            goto LABEL_24;
          }

          v9 = *(v2 + 8);
          *v14 = *(v2 + 20);
          if (*(v2 + 71) < 0)
          {
            sub_100005F2C(&v15, v2[6], v2[7]);
          }

          else
          {
            v15 = *(v2 + 3);
            v16 = v2[8];
          }

          if (*(v2 + 95) < 0)
          {
            sub_100005F2C(&v17, v2[9], v2[10]);
          }

          else
          {
            v17 = *(v2 + 9);
            v18 = v2[11];
          }

          sub_10125DE44(a1, v9, v14);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(v17);
          }

          v10 = &v15;
          if ((SHIBYTE(v16) & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v7 = *(v2 + 8);
      }

      *v19 = *(v2 + 20);
      if (*(v2 + 71) < 0)
      {
        sub_100005F2C(&v20, v2[6], v2[7]);
      }

      else
      {
        v20 = *(v2 + 3);
        v21 = v2[8];
      }

      if (*(v2 + 95) < 0)
      {
        sub_100005F2C(&__p, v2[9], v2[10]);
      }

      else
      {
        __p = *(v2 + 9);
        v23 = v2[11];
      }

      sub_10125DE44(a1, v7, v19);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }

      v10 = &v20;
      if ((SHIBYTE(v21) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(*v10);
LABEL_24:
      v11 = v2[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
    }

    while (v12 != v3);
  }
}

void sub_101241CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101241D34(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 280))
  {
    v3 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v4 = *(a1 + 264);
    v5 = v4;
    while (1)
    {
      v6 = *(v3 + 7) == *(v5 + 7) && *(v3 + 8) == *(v5 + 8);
      if (!v6)
      {
        break;
      }

      v7 = v3[1];
      v8 = v3;
      if (v7)
      {
        do
        {
          v3 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v3 = v8[2];
          v6 = *v3 == v8;
          v8 = v3;
        }

        while (!v6);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v6 = *v10 == v5;
          v5 = v10;
        }

        while (!v6);
      }

      v5 = v10;
      if (v3 == a2 + 1)
      {
        return;
      }
    }
  }

  else
  {
    v4 = *(a1 + 264);
  }

  v42 = (a1 + 272);
  if (v4 != (a1 + 272))
  {
    v11 = a2 + 1;
    v41 = a2 + 1;
    while (1)
    {
      v12 = *v11;
      v13 = *(v4 + 7);
      if (!*v11)
      {
        break;
      }

      v14 = v11;
      do
      {
        if (*(v12 + 28) >= v13)
        {
          v14 = v12;
        }

        v12 = *(v12 + 8 * (*(v12 + 28) < v13));
      }

      while (v12);
      if (v14 == v11 || v13 < *(v14 + 7))
      {
        break;
      }

      v15 = (v4 + 4);
      if (*(v14 + 8) != *(v4 + 8))
      {
        goto LABEL_32;
      }

LABEL_58:
      v39 = v4[1];
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v40 = v4[2];
          v6 = *v40 == v4;
          v4 = v40;
        }

        while (!v6);
      }

      v4 = v40;
      if (v40 == v42)
      {
        return;
      }
    }

    v15 = (v4 + 4);
LABEL_32:
    v44 = *(v4 + 7);
    v16 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v17 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = asString();
      *buf = 136315138;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Handling RAT changed: %s", buf, 0xCu);
    }

    v19 = *v15;
    *buf = &v44;
    *(sub_1002D750C(a1 + 2560, &v44, &unk_101802C98, buf)[5] + 288) = v19;
    *buf = &v44;
    v20 = *(sub_1002D750C(a1 + 2560, &v44, &unk_101802C98, buf)[5] + 240) == 0;
    *buf = &v44;
    *(sub_1002D750C(a1 + 2560, &v44, &unk_101802C98, buf)[5] + 240) = 0;
    v21 = asWirelessTechnology();
    *buf = &v44;
    v22 = sub_1002D750C(a1 + 2560, &v44, &unk_101802C98, buf);
    *(v22[5] + 240) |= v21;
    *buf = &v44;
    if (*(sub_1002D750C(a1 + 2560, &v44, &unk_101802C98, buf)[5] + 240))
    {
      v23 = v20;
    }

    else
    {
      v23 = 0;
    }

    sub_10123AE44(a1, v44);
    sub_10123BFE4(a1, v44);
    sub_101240EA4(a1, v44);
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v25 = ServiceMap;
    if (v26 < 0)
    {
      v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
      v28 = 5381;
      do
      {
        v26 = v28;
        v29 = *v27++;
        v28 = (33 * v28) ^ v29;
      }

      while (v29);
    }

    std::mutex::lock(ServiceMap);
    *buf = v26;
    v30 = sub_100009510(&v25[1].__m_.__sig, buf);
    if (v30)
    {
      v31 = v30[3];
      v32 = v30[4];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v25);
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v32);
        v33 = 0;
LABEL_45:
        (*(*v31 + 96))(&cf, v31, v44, 1, @"SuppressVMResetOnTechSwitch", kCFBooleanFalse, 0);
        v34 = cf;
        buf[0] = 0;
        if (cf)
        {
          v35 = CFGetTypeID(cf);
          if (v35 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(buf, v34, v36);
            LOBYTE(v34) = buf[0];
          }

          else
          {
            LOBYTE(v34) = 0;
          }
        }

        sub_10000A1EC(&cf);
        if ((v33 & 1) == 0)
        {
          sub_100004A34(v32);
        }

        if (v34)
        {
          v37 = *v16;
          v11 = v41;
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Suppressing the VM reset on activation of a new RAT because of the SuppressVMResetOnTechSwitch carrier bundle key", buf, 2u);
          }
        }

        else
        {
          v11 = v41;
          if (v23)
          {
            *buf = &v44;
            if (*(sub_1002D750C(a1 + 2560, &v44, &unk_101802C98, buf)[5] + 24))
            {
              *buf = &v44;
              v38 = sub_1002D750C(a1 + 2560, &v44, &unk_101802C98, buf);
              (*(**(v38[5] + 24) + 136))(*(v38[5] + 24), v44);
            }
          }
        }

        goto LABEL_58;
      }
    }

    else
    {
      v31 = 0;
    }

    std::mutex::unlock(v25);
    v32 = 0;
    v33 = 1;
    goto LABEL_45;
  }
}

void sub_10124229C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012422E0(uint64_t result)
{
  v1 = *(result + 2096);
  v2 = (result + 2104);
  if (v1 != (result + 2104))
  {
    v3 = result;
    do
    {
      v4 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v1 + 7));
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = asString();
        *buf = 136315138;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband service provisioned state : %s", buf, 0xCu);
      }

      v6 = *(v1 + 7);
      v10[0] = off_101F20B70;
      v10[1] = v3;
      v10[3] = v10;
      sub_101243698(v3, v6, v10);
      result = sub_100A6EFFC(v10);
      v7 = v1[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v1[2];
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }

  return result;
}

void sub_10124245C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100A6EFFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101242478(uint64_t result, void *a2)
{
  v2 = result;
  if (a2[2] == *(result + 328))
  {
    v3 = a2 + 1;
    v4 = *a2;
    if (*a2 == a2 + 1)
    {
      return result;
    }

    v5 = *(result + 312);
    while (*(v4 + 7) == *(v5 + 7))
    {
      result = operator==();
      if (!result)
      {
        break;
      }

      v6 = v4[1];
      v7 = v4;
      if (v6)
      {
        do
        {
          v4 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v8 = *v4 == v7;
          v7 = v4;
        }

        while (!v8);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v8 = *v10 == v5;
          v5 = v10;
        }

        while (!v8);
      }

      v5 = v10;
      if (v4 == v3)
      {
        return result;
      }
    }
  }

  result = subscriber::makeSimSlotRange();
  v11 = v23;
  v12 = v24;
  if (v23 != v24)
  {
    v13 = v25;
    do
    {
      result = v25(*v11);
      if (result)
      {
        break;
      }

      ++v11;
    }

    while (v11 != v24);
    v14 = v24;
    if (v11 != v24)
    {
      v15 = (v2 + 320);
      do
      {
        v16 = *v11;
        v22 = *v11;
        v17 = *v15;
        if (*v15)
        {
          v18 = v2 + 320;
          v19 = *v15;
          do
          {
            if (*(v19 + 28) >= v16)
            {
              v18 = v19;
            }

            v19 = *(v19 + 8 * (*(v19 + 28) < v16));
          }

          while (v19);
          if (v18 != v15 && v16 >= *(v18 + 28))
          {
            while (1)
            {
              while (1)
              {
                v20 = *(v17 + 7);
                if (v20 <= v16)
                {
                  break;
                }

                v17 = *v17;
                if (!v17)
                {
                  goto LABEL_42;
                }
              }

              if (v20 >= v16)
              {
                break;
              }

              v17 = v17[1];
              if (!v17)
              {
LABEL_42:
                sub_1000A58E4("map::at:  key not found");
              }
            }

            v21 = ConnectionAvailabilityContainer::error();
            v26 = &v22;
            result = sub_1002D750C(v2 + 2560, &v22, &unk_101802C98, &v26);
            *(*(result + 40) + 336) = v21;
          }
        }

        do
        {
          if (++v11 == v12)
          {
            break;
          }

          result = v13(*v11);
        }

        while ((result & 1) == 0);
      }

      while (v11 != v14);
    }
  }

  return result;
}

void sub_101242690(void *a1, void *a2)
{
  v3 = a1[286];
  if (a1[288] == a2[2])
  {
    v4 = a1 + 287;
    if (v3 == a1 + 287)
    {
      return;
    }

    v5 = *a2;
    v6 = a1[286];
    while (*(v6 + 8) == *(v5 + 8))
    {
      v7 = *(v6 + 63);
      if (v7 >= 0)
      {
        v8 = *(v6 + 63);
      }

      else
      {
        v8 = v6[6];
      }

      v9 = *(v5 + 63);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = v5[6];
      }

      if (v8 != v9)
      {
        break;
      }

      v11 = v7 >= 0 ? v6 + 5 : v6[5];
      v12 = v10 >= 0 ? v5 + 5 : v5[5];
      if (memcmp(v11, v12, v8))
      {
        break;
      }

      v13 = v6[1];
      v14 = v6;
      if (v13)
      {
        do
        {
          v6 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v6 = v14[2];
          v15 = *v6 == v14;
          v14 = v6;
        }

        while (!v15);
      }

      v16 = v5[1];
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
          v17 = v5[2];
          v15 = *v17 == v5;
          v5 = v17;
        }

        while (!v15);
      }

      v5 = v17;
      if (v6 == v4)
      {
        return;
      }
    }
  }

  if (v3 != a1 + 287)
  {
    while (1)
    {
      memset(__p, 0, 32);
      LODWORD(__p[0]) = *(v3 + 8);
      if (*(v3 + 63) < 0)
      {
        sub_100005F2C(&__p[1], v3[5], v3[6]);
      }

      else
      {
        *&__p[1] = *(v3 + 5);
        __p[3] = *(v3 + 7);
      }

      if (subscriber::isValidSimSlot())
      {
        break;
      }

LABEL_59:
      if (SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      v31 = v3[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v3[2];
          v15 = *v32 == v3;
          v3 = v32;
        }

        while (!v15);
      }

      v3 = v32;
      if (v32 == a1 + 287)
      {
        return;
      }
    }

    *buf = __p;
    v18 = sub_1002D750C((a1 + 320), __p, &unk_101802C98, buf)[5];
    if ((*(v18 + 367) & 0x8000000000000000) != 0)
    {
      if (!*(v18 + 352))
      {
LABEL_39:
        *buf = __p;
        v19 = sub_1002D750C((a1 + 320), __p, &unk_101802C98, buf);
        std::string::operator=((v19[5] + 344), &__p[1]);
      }
    }

    else if (!*(v18 + 367))
    {
      goto LABEL_39;
    }

    v20 = HIBYTE(__p[3]);
    if (SHIBYTE(__p[3]) < 0)
    {
      v20 = __p[2];
    }

    if (v20)
    {
      *buf = __p;
      v21 = sub_1002D750C((a1 + 320), __p, &unk_101802C98, buf)[5];
      v22 = *(v21 + 367);
      if (v22 >= 0)
      {
        v23 = *(v21 + 367);
      }

      else
      {
        v23 = *(v21 + 352);
      }

      v24 = HIBYTE(__p[3]);
      if (SHIBYTE(__p[3]) < 0)
      {
        v24 = __p[2];
      }

      if (v23 != v24 || ((v25 = (v21 + 344), v26 = *(v21 + 344), v22 >= 0) ? (v27 = v25) : (v27 = v26), SHIBYTE(__p[3]) >= 0 ? (v28 = &__p[1]) : (v28 = __p[1]), memcmp(v27, v28, v23)))
      {
        *buf = __p;
        v29 = sub_1002D750C((a1 + 320), __p, &unk_101802C98, buf);
        std::string::operator=((v29[5] + 344), &__p[1]);
        sub_10122C574(a1, LODWORD(__p[0]));
        sub_10122AFDC(a1, LODWORD(__p[0]));
        v30 = a1[5];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Purging MO messages due to subscriber change", buf, 2u);
        }

        sub_10123032C(a1, 1);
      }
    }

    goto LABEL_59;
  }
}

void sub_101242A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101242A20(uint64_t a1, uint64_t *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_101243980;
  v6[3] = &unk_101F1D5D8;
  v4 = *a2;
  v6[4] = a1;
  v6[5] = v4;
  sub_1000AE428(&v7, (a2 + 1));
  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_100034C50(&__p, a2[21], a2[22], a2[22] - a2[21]);
  v21 = *(a2 + 96);
  v24 = 0;
  v25 = 0;
  sub_100004AA0(&v24, (a1 + 8));
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10124E2F8;
  block[3] = &unk_101F1DB30;
  block[5] = v24;
  v23 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }
}

void sub_101242BD8(uint64_t a1, uint64_t a2, int a3)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_101242CC0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 456);
  v3 = (result + 464);
  if (v2 != (result + 464))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v2 + 8);
      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8))
      {
        goto LABEL_12;
      }

      if ((rest::operator==() & 1) == 0)
      {
        break;
      }

LABEL_13:
      v9 = v2[1];
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
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return;
      }
    }

    v7 = *(v2 + 8);
LABEL_12:
    sub_10125DA88(result, v7, (v2 + 5));
    goto LABEL_13;
  }
}

void sub_101242D90(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = *(a1 + 96);
    if (v3 && sms::Model::getTextToEmergencyFlag(v3))
    {
      v4 = *(*(a1 + 96) + 8);
      v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Emergency ready", v20, 2u);
      }

      if (!sub_100A7F520())
      {
        goto LABEL_17;
      }

      v6 = *(a1 + 2328);
      if (v6)
      {
        v7 = a1 + 2328;
        do
        {
          if (*(v6 + 28) >= v4)
          {
            v7 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 28) < v4));
        }

        while (v6);
        if (v7 != a1 + 2328 && *(v7 + 28) <= v4 && *(v7 + 32) == 1)
        {
          v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Emergency Text: In home country", buf, 2u);
          }

LABEL_17:
          sub_10123DAF4(a1, v4);
          sub_101230BE4(a1);
          return;
        }
      }

      v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Starting home country determination timer", buf, 2u);
      }

      v11 = *(a1 + 16);
      if (!v11 || (v12 = *(a1 + 8), (v13 = std::__shared_weak_count::lock(v11)) == 0))
      {
        sub_100013CC4();
      }

      v14 = v13;
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      Registry::getTimerService(buf, *(a1 + 80));
      v15 = *buf;
      sub_10000501C(__p, "Home country determination");
      v16 = *(a1 + 24);
      object = v16;
      if (v16)
      {
        dispatch_retain(v16);
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 1174405120;
      v20[2] = sub_101243B44;
      v20[3] = &unk_101F1D608;
      v20[4] = a1;
      v20[5] = v12;
      v21 = v14;
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v22 = v4;
      aBlock = _Block_copy(v20);
      sub_100D23364(v15, __p, 0, 10000000, &object, &aBlock);
      v17 = v29;
      v29 = 0;
      v18 = *(a1 + 2664);
      *(a1 + 2664) = v17;
      if (v18)
      {
        (*(*v18 + 8))(v18);
        v19 = v29;
        v29 = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28)
      {
        sub_100004A34(v28);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
      }

      std::__shared_weak_count::__release_weak(v14);
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Emergency ready not successful", v20, 2u);
    }
  }
}

void sub_10124316C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, void *aBlock, dispatch_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 72);
  if (v28)
  {
    sub_100004A34(v28);
  }

  std::__shared_weak_count::__release_weak(v25);
  _Unwind_Resume(a1);
}

void sub_1012431D8(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/baseband_activated");
  v5[0] = off_101F205E0;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10124328C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1012432B8(uint64_t *result, uint64_t a2)
{
  v2 = result[320];
  v3 = result + 321;
  if (v2 != result + 321)
  {
    v5 = result;
    v6 = (a2 + 8);
    do
    {
      v7 = *(v2 + 8);
      v14 = v7;
      v8 = *v6;
      if (*v6)
      {
        v9 = v6;
        do
        {
          if (*(v8 + 28) >= v7)
          {
            v9 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 28) < v7));
        }

        while (v8);
        if (v9 != v6 && v7 >= *(v9 + 7))
        {
          v10 = *sub_1000A8C4C(a2, &v14);
          v15 = &v14;
          result = sub_1002D750C((v5 + 320), &v14, &unk_101802C98, &v15);
          *(result[5] + 608) = v10;
        }
      }

      v11 = v2[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
    }

    while (v12 != v3);
  }

  return result;
}

uint64_t *sub_1012433C8(uint64_t *result, uint64_t a2)
{
  v2 = result[320];
  v3 = result + 321;
  if (v2 != result + 321)
  {
    v5 = result;
    v6 = (a2 + 8);
    do
    {
      v7 = *(v2 + 8);
      v14 = v7;
      v8 = *v6;
      if (*v6)
      {
        v9 = v6;
        do
        {
          if (*(v8 + 28) >= v7)
          {
            v9 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 28) < v7));
        }

        while (v8);
        if (v9 != v6 && v7 >= *(v9 + 7))
        {
          v10 = *sub_1000A8C4C(a2, &v14);
          v15 = &v14;
          result = sub_1002D750C((v5 + 320), &v14, &unk_101802C98, &v15);
          *(result[5] + 612) = v10;
        }
      }

      v11 = v2[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
    }

    while (v12 != v3);
  }

  return result;
}

void sub_1012434D8(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/private_network_sims_active");
  v5[0] = off_101F20760;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10124358C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1012435B8(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/prevent_detach_expiry_time");
  v5[0] = off_101F20960;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10124366C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_101243698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  v19 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v19);
  if (!v13)
  {
    v15 = 0;
    goto LABEL_8;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
LABEL_8:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
LABEL_9:
  if ((subscriber::isValidSimSlot() & 1) == 0 && (v17 = *v6, os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR)))
  {
    LOWORD(v19) = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid slot while handling Customer Ready", &v19, 2u);
    if (v15)
    {
LABEL_12:
      v20 = v4;
      v21 = a1;
      sub_100A72FF4(v22, a3);
      v22[7] = 0;
      operator new();
    }
  }

  else if (v15)
  {
    goto LABEL_12;
  }

  v18 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v19) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to get activation interface while handling Customer Ready", &v19, 2u);
    if (v16)
    {
      return;
    }
  }

  else if (v16)
  {
    return;
  }

  sub_100004A34(v14);
}

void sub_101243934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10000FF50(va);
  sub_100A6EFFC(v16 + 16);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(a1);
}

void sub_101243980(uint64_t a1)
{
  v2 = *(a1 + 32);
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  sub_1001E0090(__p, *(a1 + 208), *(a1 + 216), *(a1 + 216) - *(a1 + 208));
  (*(*v2 + 472))(v2, *(a1 + 40), *(a1 + 44), a1 + 48, __p, a1 + 232, a1 + 233);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101243A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_101243A40(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  sub_1000AE428(a1 + 48, a2 + 48);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  result = sub_100034C50((a1 + 208), *(a2 + 208), *(a2 + 216), *(a2 + 216) - *(a2 + 208));
  *(a1 + 232) = *(a2 + 232);
  return result;
}

void sub_101243AAC(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    v3 = *(a1 + 56);

    operator delete(v3);
  }
}

void sub_101243B44(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(a1 + 56));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v8) = 0;
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Home country determination timeout", &v8, 2u);
        }

        v8 = 0uLL;
        sub_10123051C(v3, *(a1 + 56), 1, &v8);
        v7 = *(v3 + 2664);
        *(v3 + 2664) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_101243C68(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v8[0] = a1;
  v8[1] = &v9;
  if (!*(a1 + 32))
  {
    v5 = 1;
LABEL_9:
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_10125E568;
    v10[3] = &unk_101F20D40;
    v10[4] = a1 + 8;
    v10[5] = v8;
    v11 = v10;
    v6 = *(a1 + 24);
    v18 = 0;
    *buf = _NSConcreteStackBlock;
    v13 = 0x40000000;
    if (v5)
    {
      v14 = sub_1000593F4;
      v15 = &unk_101F1DB80;
      v16 = &v18;
      v17 = &v11;
      dispatch_sync(v6, buf);
    }

    else
    {
      v14 = sub_10006A350;
      v15 = &unk_101F1DBA0;
      v16 = &v18;
      v17 = &v11;
      dispatch_async_and_wait(v6, buf);
    }

    LOBYTE(isValidSimSlot) = v18;
    return isValidSimSlot & 1;
  }

  if ((dispatch_workloop_is_current() & 1) == 0)
  {
    v5 = *(a1 + 32) == 0;
    goto LABEL_9;
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (isValidSimSlot)
  {
    v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v9);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received a call to check if Service Center Address is Available", buf, 2u);
    }

    LOBYTE(isValidSimSlot) = sub_101243E5C(a1, v9);
  }

  return isValidSimSlot & 1;
}

BOOL sub_101243E5C(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  if (!subscriber::isValidSimSlot())
  {
    return 0;
  }

  *buf = &v7;
  v3 = sub_1002D750C(a1 + 2560, &v7, &unk_101802C98, buf);
  CSIPhoneNumber::getFullNumber(buf, (v3[5] + 80));
  if (v10 < 0)
  {
    v4 = v9 != 0;
    operator delete(*buf);
  }

  else
  {
    v4 = v10 != 0;
  }

  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Service Center Address availability %d", buf, 8u);
  }

  return v4;
}

void sub_101243F98(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1012440A8;
  v4[3] = &unk_101F1D638;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10124E2F8;
  block[3] = &unk_101F1DB30;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1012440A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (subscriber::isValidSimSlot())
  {
    v3 = *(a1 + 40);
    v11 = v3;
    if (subscriber::isValidSimSlot())
    {
      v4 = *(v2 + 112);
      if (v4 && ((*(*v4 + 80))(v4, v3) & 1) == 0)
      {
        v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v8) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Service Center address fetch failed", &v8, 2u);
        }

        sub_10075C19C(&v8, 50);
        v7 = sub_100974768(&unk_101FCB970);
        sub_1009747AC(v7, &v8);
        if (__p)
        {
          v10 = __p;
          operator delete(__p);
        }

        v8 = 1;
        __p = (v2 + 2232);
        v12 = &v11;
        *(sub_100051AD8(v2 + 2264, &v11, &unk_101802C98, &v12) + 32) = 1;
        sub_10125E628(&v8);
      }

      else
      {
        v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v8) = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Service Center Address fetch action completed", &v8, 2u);
        }
      }
    }
  }
}

uint64_t sub_1012442A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v44 = a2;
  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  result = subscriber::isValidSimSlot();
  if (!result)
  {
    return result;
  }

  if (a3)
  {
    *&__p.var0 = &v44;
    v9 = sub_1002D750C(a1 + 2560, &v44, &unk_101802C98, &__p)[5];
    *(v9 + 80) = *a4;
    std::string::operator=((v9 + 88), (a4 + 8));
    std::string::operator=((v9 + 112), (a4 + 32));
    v10 = *(a4 + 56);
    *(v9 + 140) = *(a4 + 60);
    *(v9 + 136) = v10;
    std::string::operator=((v9 + 144), (a4 + 64));
    v11 = *(a4 + 88);
    *(v9 + 176) = *(a4 + 96);
    *(v9 + 168) = v11;
    std::string::operator=((v9 + 184), (a4 + 104));
    std::string::operator=((v9 + 208), (a4 + 128));
    *(v9 + 232) = *(a4 + 152);
    v12 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v45 = &v44;
      v13 = sub_1002D750C(a1 + 2560, &v44, &unk_101802C98, &v45);
      p_p = &__p;
      CSIPhoneNumber::getFullNumber(&__p.var0, (v13[5] + 80));
      if (__p.var2.__rep_.__s.__data_[15] < 0)
      {
        p_p = *&__p.var0;
      }

      v45 = &v44;
      v15 = sub_1002D750C(a1 + 2560, &v44, &unk_101802C98, &v45);
      TypeOfAddress = CSIPhoneNumber::getTypeOfAddress((v15[5] + 80));
      *buf = 136315394;
      *&buf[4] = p_p;
      v47 = 1024;
      v48 = TypeOfAddress;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Received Service Center Address %s with type %d", buf, 0x12u);
      if (__p.var2.__rep_.__s.__data_[15] < 0)
      {
        operator delete(*&__p.var0);
      }
    }

    if (v44 == 2)
    {
      sub_10075C19C(&__p, 49);
      v24 = sub_100974768(&unk_101FCB970);
      sub_1009747AC(v24, &__p);
    }

    else
    {
      if (v44 != 1)
      {
LABEL_37:
        v25 = *(a1 + 2544);
        v26 = v44;
        *&__p.var0 = &v44;
        v27 = sub_1002D750C(a1 + 2560, &v44, &unk_101802C98, &__p);
        CSIPhoneNumber::getFullNumber(v42, (v27[5] + 80));
        (*(*v25 + 152))(v25, v26, v42);
        if (v43 < 0)
        {
          operator delete(v42[0]);
        }

        *&__p.var0 = 1;
        __p.var2.__rep_.__l.__data_ = (a1 + 2120);
        *buf = &v44;
        *(sub_100051AD8(a1 + 2152, &v44, &unk_101802C98, buf) + 32) = 1;
        return sub_10125E690(&__p);
      }

      sub_10075C19C(&__p, 48);
      v17 = sub_100974768(&unk_101FCB970);
      sub_1009747AC(v17, &__p);
    }

    if (__p.var2.__rep_.__l.__data_)
    {
      __p.var2.__rep_.__l.__size_ = __p.var2.__rep_.__l.__data_;
      operator delete(__p.var2.__rep_.__l.__data_);
    }

    goto LABEL_37;
  }

  v18 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.var0) = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I SMSC Fetch error", &__p, 2u);
  }

  CSIPhoneNumber::CSIPhoneNumber(&__p);
  *buf = &v44;
  v19 = sub_1002D750C(a1 + 2560, &v44, &unk_101802C98, buf)[5];
  *(v19 + 80) = *&__p.var0;
  if (*(v19 + 111) < 0)
  {
    operator delete(*(v19 + 88));
  }

  *(v19 + 88) = __p.var2;
  *(&__p.var2.__rep_.__l + 23) = 0;
  __p.var2.__rep_.__s.__data_[0] = 0;
  if (*(v19 + 135) < 0)
  {
    operator delete(*(v19 + 112));
  }

  *(v19 + 112) = v29;
  *(v19 + 128) = v30;
  HIBYTE(v30) = 0;
  LOBYTE(v29) = 0;
  *(v19 + 136) = v31;
  *(v19 + 140) = v32;
  if (*(v19 + 167) < 0)
  {
    operator delete(*(v19 + 144));
  }

  *(v19 + 144) = v33;
  v20 = v34;
  HIBYTE(v34) = 0;
  LOBYTE(v33) = 0;
  v21 = v35;
  *(v19 + 160) = v20;
  *(v19 + 168) = v21;
  *(v19 + 176) = v36;
  if (*(v19 + 207) < 0)
  {
    operator delete(*(v19 + 184));
  }

  *(v19 + 184) = v37;
  *(v19 + 200) = v38;
  HIBYTE(v38) = 0;
  LOBYTE(v37) = 0;
  if (*(v19 + 231) < 0)
  {
    operator delete(*(v19 + 208));
    v22 = SHIBYTE(v38);
    *(v19 + 208) = v39;
    *(v19 + 224) = v40;
    HIBYTE(v40) = 0;
    LOBYTE(v39) = 0;
    *(v19 + 232) = v41;
    if (v22 < 0)
    {
      operator delete(v37);
    }
  }

  else
  {
    *(v19 + 208) = v39;
    *(v19 + 224) = v40;
    HIBYTE(v40) = 0;
    LOBYTE(v39) = 0;
    *(v19 + 232) = v41;
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if (*(&__p.var2.__rep_.__l + 23) < 0)
  {
    operator delete(__p.var2.__rep_.__l.__data_);
  }

  sub_10075C19C(&__p, 50);
  v23 = sub_100974768(&unk_101FCB970);
  sub_1009747AC(v23, &__p);
  if (__p.var2.__rep_.__l.__data_)
  {
    __p.var2.__rep_.__l.__size_ = __p.var2.__rep_.__l.__data_;
    operator delete(__p.var2.__rep_.__l.__data_);
  }

  *&__p.var0 = 1;
  __p.var2.__rep_.__l.__data_ = (a1 + 2232);
  *buf = &v44;
  *(sub_100051AD8(a1 + 2264, &v44, &unk_101802C98, buf) + 32) = 1;
  return sub_10125E628(&__p);
}

void sub_101244830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012448B4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v10 = a3;
  v9[0] = a1;
  v9[1] = &v10;
  v9[2] = a2;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      isValidSimSlot = subscriber::isValidSimSlot();
      if (isValidSimSlot)
      {
        LOBYTE(isValidSimSlot) = sub_101244A4C(a1, a2, v10);
      }

      return isValidSimSlot & 1;
    }

    v6 = *(a1 + 32) == 0;
  }

  else
  {
    v6 = 1;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_10125E6F8;
  v11[3] = &unk_101F20D60;
  v11[4] = a1 + 8;
  v11[5] = v9;
  v12 = v11;
  v7 = *(a1 + 24);
  v18 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v6)
  {
    v14 = sub_1000593F4;
    v15 = &unk_101F1DB80;
    v16 = &v18;
    v17 = &v12;
    dispatch_sync(v7, block);
  }

  else
  {
    v14 = sub_10006A350;
    v15 = &unk_101F1DBA0;
    v16 = &v18;
    v17 = &v12;
    dispatch_async_and_wait(v7, block);
  }

  LOBYTE(isValidSimSlot) = v18;
  return isValidSimSlot & 1;
}

uint64_t sub_101244A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  result = subscriber::isValidSimSlot();
  if (result)
  {
    v15 = &v14;
    v6 = sub_1002D750C(a1 + 2560, &v14, &unk_101802C98, &v15);
    CSIPhoneNumber::getFullNumber(v12, (v6[5] + 80));
    if (v13 < 0)
    {
      v10 = v12[1];
      operator delete(v12[0]);
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else if (v13)
    {
LABEL_4:
      v12[0] = &v14;
      v7 = sub_1002D750C(a1 + 2560, &v14, &unk_101802C98, v12)[5];
      *a2 = *(v7 + 80);
      std::string::operator=((a2 + 8), (v7 + 88));
      std::string::operator=((a2 + 32), (v7 + 112));
      v8 = *(v7 + 140);
      *(a2 + 56) = *(v7 + 136);
      *(a2 + 60) = v8;
      std::string::operator=((a2 + 64), (v7 + 144));
      v9 = *(v7 + 176);
      *(a2 + 88) = *(v7 + 168);
      *(a2 + 96) = v9;
      std::string::operator=((a2 + 104), (v7 + 184));
      std::string::operator=((a2 + 128), (v7 + 208));
      *(a2 + 152) = *(v7 + 232);
      return 1;
    }

    v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v14);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(v12[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "SMSC Address is not available", v12, 2u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_101244BEC(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      if (subscriber::isValidSimSlot())
      {
        return sub_101244D7C(a1, v7);
      }

      else
      {
        return 300;
      }
    }

    v4 = *(a1 + 32) == 0;
  }

  else
  {
    v4 = 1;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10125E754;
  v8[3] = &unk_101F20D80;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v4)
  {
    v11 = sub_10125E7B4;
    v12 = &unk_101F20DA0;
    v13 = &v15;
    v14 = &v9;
    v15 = 0;
    dispatch_sync(v5, block);
  }

  else
  {
    v11 = sub_10125E7F0;
    v12 = &unk_101F20DC0;
    v13 = &v15;
    v14 = &v9;
    v15 = 0;
    dispatch_async_and_wait(v5, block);
  }

  return v15;
}

uint64_t sub_101244D7C(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v15 = 1;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v15 = 0;
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_10:
  SMSCarrierBundleString = sms::Model::getSMSCarrierBundleString(v14);
  (*(*v13 + 96))(&v26, v13, a2, 1, SMSCarrierBundleString, 0, 0);
  sub_100010180(&v27, &v26);
  v17 = theDict;
  theDict = v27;
  *buf = v17;
  v27 = 0;
  sub_10001021C(buf);
  sub_10001021C(&v27);
  sub_10000A1EC(&v26);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"EmergencyModeTimerForTextToEmergency");
    v19 = Value;
    v20 = 300;
    *buf = 300;
    if (!Value)
    {
      goto LABEL_17;
    }

    v21 = CFGetTypeID(Value);
    if (v21 == CFNumberGetTypeID())
    {
      ctu::cf::assign(buf, v19, v22);
      v20 = *buf;
      goto LABEL_17;
    }
  }

  else
  {
    v23 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to get Carrier interface for Text To Emergency Timer reading", buf, 2u);
    }
  }

LABEL_16:
  v20 = 300;
LABEL_17:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  v24 = *v4;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Emergency Text timer value %d", buf, 8u);
  }

  sub_10001021C(&theDict);
  return v20;
}

void sub_101245050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if ((v8 & 1) == 0)
  {
    sub_100004A34(v7);
  }

  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1012450A8(uint64_t a1, uint64_t a2, int a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012451B8;
  v5[3] = &unk_101F1D658;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3;
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10124E2F8;
  block[3] = &unk_101F1DB30;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1012451B8(uint64_t a1)
{
  *v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  *v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  sub_1000AE428(v13, *(a1 + 40));
  if (subscriber::isValidSimSlot())
  {
    v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 48));
    v4 = *(v2 + 112);
    if (v4 && ((*(*v4 + 88))(v4, *(a1 + 48), v13) & 1) == 0)
    {
      v8 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Call to set SMSC has failed", &v10, 2u);
      }

      sub_10075C19C(&v10, 52);
      v9 = sub_100974768(&unk_101FCB970);
      sub_1009747AC(v9, &v10);
      v7 = __p;
      if (__p)
      {
        v12 = __p;
        goto LABEL_14;
      }
    }

    else
    {
      v5 = *v3;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        CSIPhoneNumber::getFullNumber(&v10, *(a1 + 40));
        v6 = SHIBYTE(v12) >= 0 ? &v10 : v10;
        *buf = 136315138;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Sent Set SMSC Address request to baseband with number %s", buf, 0xCu);
        if (SHIBYTE(v12) < 0)
        {
          v7 = v10;
LABEL_14:
          operator delete(v7);
        }
      }
    }
  }

  if (SBYTE7(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  if (SBYTE7(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (SBYTE7(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }
}

void sub_1012453E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_10034F8E8(va);
  _Unwind_Resume(a1);
}

void sub_101245428(uint64_t a1, int a2, uint64_t a3)
{
  (*(**(a1 + 48) + 16))(*(a1 + 48), a3);
  if (subscriber::isValidSimSlot())
  {
    if (a2)
    {
      sub_10075C19C(&v5, 51);
    }

    else
    {
      sub_10075C19C(&v5, 52);
    }

    v4 = sub_100974768(&unk_101FCB970);
    sub_1009747AC(v4, &v5);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }
}

void sub_1012454F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101245518(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v9 = *v8;
  v10 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    *v30 = 136315394;
    *&v30[4] = CSIBOOLAsString(a3);
    v31 = 1024;
    v32 = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Received voicemail Info isWaiting: %s num: %d", v30, 0x12u);
  }

  v11 = *(a1 + 392);
  v12 = *(a1 + 384);
  if (v12 == v11)
  {
    v26 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *v30 = 0;
    v27 = "sims is empty. Dropping voicemail Indication...";
LABEL_26:
    _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v27, v30, 2u);
    return;
  }

  v13 = 0;
  do
  {
    v15 = *v12 == a2 && v12[2] == 5;
    v13 |= v15;
    v12 += 42;
  }

  while (v12 != v11);
  if ((v13 & 1) == 0)
  {
    v26 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *v30 = 0;
    v27 = "sim slot not in ready state. Dropping voicemail Indication...";
    goto LABEL_26;
  }

  if (capabilities::ct::supportsVoiceCall(v10))
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v17 = ServiceMap;
    if (v18 < 0)
    {
      v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    std::mutex::lock(ServiceMap);
    *v30 = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, v30);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
        if (!v24)
        {
LABEL_35:
          if ((v25 & 1) == 0)
          {
            sub_100004A34(v23);
          }

          return;
        }

LABEL_31:
        if (a4 <= 0)
        {
          v29 = 0xFFFFFFFFLL;
        }

        else
        {
          v29 = a4;
        }

        (*(*v24 + 16))(v24, a2, a3, a4 > 0, v29, 0);
        goto LABEL_35;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
    if (!v24)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  v28 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I handleVoicemailNotification_sync: Device does not support Voicecalls, ignoring Voicemail Indication", v30, 2u);
  }
}

void sub_101245808(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_101245838(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v13 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v13);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_10:
    (*(*v11 + 24))(v11, a2);
  }

LABEL_11:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_101245948(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_101245964(uint64_t a1, uint64_t a2, char a3, int a4, char a5)
{
  v23 = a2;
  if (subscriber::isValidSimSlot())
  {
    v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    *buf = &v23;
    if (*(sub_1002D750C(a1 + 2560, &v23, &unk_101802C98, buf)[5] + 42) == 1 && (a3 & 1) == 0 && ((*buf = &v23, v11 = sub_1002D750C(a1 + 2560, &v23, &unk_101802C98, buf), !a4) && *(v11[5] + 24) == *(a1 + 128) || (*buf = &v23, v12 = sub_1002D750C(a1 + 2560, &v23, &unk_101802C98, buf), a4 == 1) && *(v12[5] + 24) == *(a1 + 112)))
    {
      v13 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        if (a4 == 1)
        {
          v14 = "Agent";
        }

        else
        {
          v14 = "Baseband";
        }

        *buf = &v23;
        if (*(sub_1002D750C(a1 + 2560, &v23, &unk_101802C98, buf)[5] + 24) == *(a1 + 128))
        {
          v15 = "Agent";
        }

        else
        {
          v15 = "Baseband";
        }

        *buf = 136315394;
        *&buf[4] = v14;
        v25 = 2080;
        v26 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Ignoring Registration status from wrong transport [%s] as we are currently IMS Registered on [%s]", buf, 0x16u);
      }
    }

    else
    {
      *buf = &v23;
      *(sub_1002D750C(a1 + 2560, &v23, &unk_101802C98, buf)[5] + 42) = a3;
      *buf = &v23;
      v16 = sub_1002D750C(a1 + 2560, &v23, &unk_101802C98, buf);
      if (a4 == 1 && (*(v16[5] + 42) & 1) != 0)
      {
        *buf = &v23;
        *(sub_1002D750C(a1 + 2560, &v23, &unk_101802C98, buf)[5] + 294) = a5;
      }

      sub_101229274(a1, v23);
      sub_10123AE44(a1, v23);
      v17 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v23;
        v18 = sub_1002D750C(a1 + 2560, &v23, &unk_101802C98, buf);
        v19 = CSIBOOLAsString(*(v18[5] + 42));
        *buf = &v23;
        v20 = sub_1002D750C(a1 + 2560, &v23, &unk_101802C98, buf);
        v21 = CSIBOOLAsString(*(v20[5] + 294));
        *buf = 136315394;
        *&buf[4] = v19;
        v25 = 2080;
        v26 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I IMS registered: %s, Over Wifi: %s", buf, 0x16u);
      }

      sub_101240EA4(a1, v23);
      v22 = v23;
      if (sub_101245CF8(a1, v23))
      {
        sub_10122EA90(a1, v22);
      }
    }
  }
}

BOOL sub_101245CF8(uint64_t a1, int a2)
{
  v8 = a2;
  v3 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  *buf = &v8;
  v4 = sub_1002D750C(a1 + 2560, &v8, &unk_101802C98, buf);
  if (*(v4[5] + 512) == *(v4[5] + 520) || *(a1 + 2376) != 2)
  {
    return 0;
  }

  v5 = sub_101245E20(a1);
  v6 = *v3;
  result = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Active Call. Emergency text held.", buf, 2u);
    return 0;
  }

  if (result)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Pending messages in queue will be released.", buf, 2u);
  }

  return 1;
}

uint64_t sub_101245E20(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1 == (a1 + 216))
  {
    return 0;
  }

  while (*(v1 + 57) != 1 || (v1[7] & 1) == 0)
  {
    v2 = v1[1];
    if (v2)
    {
      do
      {
        v3 = v2;
        v2 = *v2;
      }

      while (v2);
    }

    else
    {
      do
      {
        v3 = v1[2];
        v4 = *v3 == v1;
        v1 = v3;
      }

      while (!v4);
    }

    v1 = v3;
    if (v3 == (a1 + 216))
    {
      return 0;
    }
  }

  return 1;
}

void sub_101245E8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  if (subscriber::isValidSimSlot())
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_101245FBC;
    v7[3] = &unk_101F1D678;
    v7[4] = a1;
    v8 = v4;
    v9 = a3;
    v12 = 0;
    v13 = 0;
    sub_100004AA0(&v12, (a1 + 8));
    v6 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_10124E2F8;
    block[3] = &unk_101F1DB30;
    block[5] = v12;
    v11 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v7;
    dispatch_async(v6, block);
    if (v11)
    {
      sub_100004A34(v11);
    }

    if (v13)
    {
      sub_100004A34(v13);
    }
  }
}

void sub_101245FBC(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(a1 + 40));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sms::asString(*(a1 + 44));
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I BB service ready received: %s", buf, 0xCu);
  }

  *buf = v2;
  v6 = *(sub_1002D750C(v3 + 2560, v2, &unk_101802C98, buf)[5] + 285);
  v7 = *(a1 + 44);
  if (v6 != v7)
  {
    *buf = v2;
    *(sub_1002D750C(v3 + 2560, v2, &unk_101802C98, buf)[5] + 285) = v7;
    sub_10122C860(v3, *v2);
    sub_10123BFE4(v3, *v2);
    sms::Controller::setupBasebandForCellBroadcast_sync(v3, *v2);
    sub_1012461C0(v3, *v2);
  }

  *buf = v2;
  if (*(sub_1002D750C(v3 + 2560, v2, &unk_101802C98, buf)[5] + 285))
  {
    sub_101229274(v3, *v2);
    v8 = *v2;
    if (sub_101245CF8(v3, *v2))
    {
      sub_10122EA90(v3, v8);
    }
  }

  if (!v6)
  {
    *buf = v2;
    if (*(sub_1002D750C(v3 + 2560, v2, &unk_101802C98, buf)[5] + 293) == 1)
    {
      sub_10122EA90(v3, *v2);
    }
  }
}

void sub_1012461C0(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_101249B78;
  v4[3] = &unk_101F1D708;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10124E2F8;
  block[3] = &unk_101F1DB30;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1012462D0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (subscriber::isValidSimSlot())
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_1012463F0;
    v5[3] = &unk_101F1D698;
    v5[4] = a1;
    v6 = v2;
    v9 = 0;
    v10 = 0;
    sub_100004AA0(&v9, (a1 + 8));
    v4 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_10124E2F8;
    block[3] = &unk_101F1DB30;
    block[5] = v9;
    v8 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v5;
    dispatch_async(v4, block);
    if (v8)
    {
      sub_100004A34(v8);
    }

    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

uint64_t *sub_1012463F0(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 40));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I CellBroadcast service ready received", v5, 2u);
  }

  sms::Controller::setupBasebandForCellBroadcast_sync(v2, *v1);
  v6 = v1;
  result = sub_1002D750C(v2 + 2560, v1, &unk_101802C98, &v6);
  *(result[5] + 295) = 1;
  return result;
}

void sub_1012464C4(uint64_t a1, void *a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v12[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, v12);
  if (v9 && (v10 = v9[4]) != 0)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v4);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }

  else
  {
    std::mutex::unlock(v4);
  }

  CSIPhoneNumber::CSIPhoneNumber();
  CSIPhoneNumber::CSIPhoneNumber();
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12[4] = 0;
  operator new();
}

void sub_101246738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_100FF5034(v30 - 104);
  sub_10034F8E8(&a9);
  sub_10034F8E8(va);
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void sub_1012467A4(uint64_t a1, uint64_t a2, int a3, CSIPhoneNumber *a4, uint64_t a5, _BYTE *a6, _BYTE *a7)
{
  v29 = a2;
  if (subscriber::isValidSimSlot())
  {
    memset(&__str, 0, sizeof(__str));
    v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    CSIPhoneNumber::getFullNumber(&__p, a4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      operator delete(__p.__r_.__value_.__l.__data_);
      if (size)
      {
        goto LABEL_4;
      }
    }

    else if (*(&__p.__r_.__value_.__s + 23))
    {
LABEL_4:
      CSIPhoneNumber::getFullNumber(&__p, a4);
      goto LABEL_13;
    }

    v15 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      v26[0] = &v29;
      v16 = sub_1002D750C(a1 + 2560, &v29, &unk_101802C98, v26);
      CSIPhoneNumber::getFullNumber(&__p, (v16[5] + 80));
      v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I sendProactiveSms: Address not provided by SIM. Setting to Service Center Number (SMSC) - %s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    *&buf = &v29;
    v18 = sub_1002D750C(a1 + 2560, &v29, &unk_101802C98, &buf);
    CSIPhoneNumber::getFullNumber(&__p, (v18[5] + 80));
LABEL_13:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = __p;
    v19 = *(a5 + 23);
    if (v19 >= 0)
    {
      v20 = a5;
    }

    else
    {
      v20 = *a5;
    }

    if (v19 >= 0)
    {
      v21 = *(a5 + 23);
    }

    else
    {
      v21 = *(a5 + 8);
    }

    v35 = 0;
    buf = 0uLL;
    sub_1001E0D88(&buf, v20, &v20[v21], v21);
    v26[0] = 0;
    v26[1] = 0;
    v27 = 0;
    sub_10123802C(v26, &buf);
    v22 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v26;
      if (v27 < 0)
      {
        v23 = v26[0];
      }

      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      v25 = *a7;
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315906;
      *(__p.__r_.__value_.__r.__words + 4) = v23;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = p_str;
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
      v31 = a3;
      v32 = 1024;
      v33 = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Sending Proactive SMS %s to Address - %s session %d isPackingRequired %d", &__p, 0x22u);
    }

    operator new();
  }
}

void sub_101247200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (*(v31 - 113) < 0)
  {
    operator delete(*(v31 - 136));
  }

  sub_100004A34(v30);
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  v33 = *(v31 - 112);
  if (v33)
  {
    *(v31 - 104) = v33;
    operator delete(v33);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_101247394(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (subscriber::isValidSimSlot())
  {
    (*(**(a1 + 48) + 16))(*(a1 + 48), a3);
    operator new();
  }
}

void sub_101247688(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  sub_100004A34(v1);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_101247724(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 24))(v2, &v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v4 = **(a1 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Simulated SMS received", v5, 2u);
  }
}

void sub_1012477DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012477F4(uint64_t result, uint64_t a2)
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

void sub_101247810(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_101247820(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  v3 = *v2;
  if (a2)
  {
    if (!os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v21 = 0;
    v4 = "#I Successfully stored MWI info from SMS over IMS";
    v5 = &v21;
    v6 = v3;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    return;
  }

  v8 = *(a1 + 32);
  v9 = os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    *v23 = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to store MWI info from SMS over IMS. Set VM state anyway", v23, 2u);
  }

  if (!capabilities::ct::supportsVoiceCall(v9))
  {
    v20 = **(a1 + 40);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "#I Device does not support Voicecalls, ignoring Voicemail Indication";
    v5 = buf;
    v6 = v20;
    goto LABEL_16;
  }

  ServiceMap = Registry::getServiceMap(*(v8 + 80));
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v24 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v24);
  if (!v16)
  {
    v18 = 0;
LABEL_18:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
  if (v18)
  {
LABEL_19:
    (*(*v18 + 16))(v18, *(a1 + 48), *(a1 + 56));
  }

LABEL_20:
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }
}

void sub_101247A18(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101247A34(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a4;
  v9 = a2;
  v10 = a1;
  v77 = a2;
  v76 = 5;
  if (a3[23] >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 1);
  }

  v12 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v13 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Destination port is: %d", buf, 8u);
    v9 = v77;
  }

  cf[0] = @"SMSSettings";
  cf[1] = @"UseAlternateVVMPort";
  memset(buf, 0, 24);
  sub_10005B328(buf, cf, &v80, 2uLL);
  v68 = (v10 + 80);
  ServiceMap = Registry::getServiceMap(*(v10 + 80));
  v15 = ServiceMap;
  if (v16 < 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(ServiceMap);
  cf[0] = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, cf);
  if (v20)
  {
    v21 = v20[3];
    v22 = v20[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v23 = 0;
      if (!v21)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v15);
  v22 = 0;
  v23 = 1;
  if (!v21)
  {
LABEL_12:
    v24 = 5499;
    if (v23)
    {
      goto LABEL_24;
    }

LABEL_23:
    sub_100004A34(v22);
    goto LABEL_24;
  }

LABEL_16:
  (*(*v21 + 104))(cf, v21, v9, 1, buf, kCFBooleanFalse, 0);
  v25 = cf[0];
  LOBYTE(v73) = 0;
  if (cf[0] && (v26 = CFGetTypeID(cf[0]), v26 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v73, v25, v27);
    if (v73)
    {
      v24 = 5496;
    }

    else
    {
      v24 = 5499;
    }
  }

  else
  {
    v24 = 5499;
  }

  sub_10000A1EC(cf);
  if ((v23 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if ((v7 - 5497) < 2 || v24 == v7)
  {
    if (v11 >= 0x400)
    {
      v30 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = 1024;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Got a network notification of length: %lu, max: %lu", buf, 0x16u);
      }

      v29 = 3;
      goto LABEL_162;
    }

    v73 = 0;
    sub_101249A38(&v73, a3, 0);
    if (!v73)
    {
      v54 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Failed to convert SMS body to UTF8 string which is expected", buf, 2u);
      }

      v29 = 1;
      goto LABEL_106;
    }

    v83 = 0;
    memset(buf, 0, sizeof(buf));
    NetworkNotification::NetworkNotification(buf, v73);
    v32 = NetworkNotification::type(v31);
    v33 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v34 = asString();
      LODWORD(cf[0]) = 136315138;
      *(cf + 4) = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Handling SMS as %s", cf, 0xCu);
    }

    v29 = 0;
    if (v32 <= 1)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          (*(**(v10 + 2544) + 16))(*(v10 + 2544), v77, buf, a5);
          v29 = 0;
          v76 = 0;
        }
      }

      else
      {
        v29 = 2;
      }

      goto LABEL_105;
    }

    if (v32 == 2)
    {
      (*(**(v10 + 2544) + 88))(*(v10 + 2544), v77, buf);
      v29 = 0;
      v57 = 3;
    }

    else
    {
      if (v32 != 3)
      {
LABEL_105:
        NetworkNotification::~NetworkNotification(buf);
LABEL_106:
        sub_100005978(&v73);
        goto LABEL_162;
      }

      cf[0] = &v77;
      if (*(sub_1002D750C(v10 + 2560, &v77, &unk_101802C98, cf)[5] + 624) == 1)
      {
        cf[0] = &v77;
        v56 = sub_1002D750C(v10 + 2560, &v77, &unk_101802C98, cf)[5];
        *(v56 + 616) = 0;
        *(v56 + 624) = 0;
      }

      (*(**(v10 + 2544) + 24))(*(v10 + 2544), buf, v77);
      v29 = 0;
      v57 = 2;
    }

    v76 = v57;
    goto LABEL_105;
  }

  if (v7 == 7275)
  {
    v28 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Handled SUPL INIT MT SMS notification", buf, 2u);
    }

    (*(**(v10 + 2544) + 96))(*(v10 + 2544), v77, a3);
    v29 = 0;
    v76 = 4;
    goto LABEL_162;
  }

  shouldBlockCarrierMessaging = MessageCenterModel::shouldBlockCarrierMessaging(v68);
  v36 = shouldBlockCarrierMessaging;
  if (v7 == 2948)
  {
    v37 = a3[23];
    if (v37 >= 0)
    {
      v38 = a3;
    }

    else
    {
      v38 = *a3;
    }

    if (v37 >= 0)
    {
      v39 = *(a3 + 23);
    }

    else
    {
      v39 = *(a3 + 1);
    }

    v74 = 0;
    v75 = 0;
    v73 = 0;
    sub_1001E0D88(&v73, v38, &v38[v39], v39);
    __p = 0;
    v71 = 0;
    v72 = 0;
    sub_10123802C(&__p, &v73);
    v40 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      p_p = &__p;
      if (v72 < 0)
      {
        p_p = __p;
      }

      *buf = 136642819;
      *&buf[4] = p_p;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I WAP push (as hex str): %{sensitive}s", buf, 0xCu);
    }

    if ((v36 & 1) == 0 && (*(**(v10 + 2544) + 104))(*(v10 + 2544), v77, a3, a5))
    {
      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Handled WAP push as MMS notification", buf, 2u);
      }

      v29 = 0;
      v44 = 1;
LABEL_92:
      v76 = v44;
      v55 = 2;
      goto LABEL_151;
    }

    if ((*(**(v10 + 2544) + 112))(*(v10 + 2544), v77, a3))
    {
      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Handled WAP push as SUPL INIT notification", buf, 2u);
      }

      v29 = 0;
      v44 = 4;
      goto LABEL_92;
    }

    if (v36)
    {
      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Messages is not installed and no default carrier messaging app is selected, dropping incoming message.", buf, 2u);
      }

      v76 = 5;
      v55 = 2;
      v29 = 2;
LABEL_151:
      if (SHIBYTE(v72) < 0)
      {
        operator delete(__p);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (v55)
      {
        v64 = v55 == 2;
        v10 = v42;
        if (!v64)
        {
          return v40;
        }

        goto LABEL_162;
      }

      v10 = v42;
      if (v36)
      {
        goto LABEL_159;
      }

LABEL_162:
      LOBYTE(v40) = v76;
      sms::Controller::submitNetworkNotificationMetric(v10, v77, v7, v76, v29, v6, a3);
      return v40;
    }

    *v78 = 0;
    sub_101249A38(v78, a3, 0);
    if (!*v78)
    {
      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v55 = 2;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Failed to convert SMS body to UTF8 string which is expected", buf, 2u);
      }

      else
      {
        v55 = 2;
      }

      v29 = 2;
      goto LABEL_150;
    }

    v83 = 0;
    memset(buf, 0, sizeof(buf));
    NetworkNotification::NetworkNotification(buf, *v78);
    if (sub_101249AA4(v10, v77, buf, a5, &v76))
    {
      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf[0]) = 0;
        v55 = 2;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Wap push handled as either voicemail or PNR", cf, 2u);
        v29 = 0;
      }

      else
      {
        v29 = 0;
        v55 = 2;
      }

      goto LABEL_149;
    }

    if (v11 > 4)
    {
      sub_101249A38(v69, a3, 4uLL);
      cf[0] = *v78;
      *v78 = *v69;
      *v69 = 0;
      sub_100005978(cf);
      sub_100005978(v69);
      if (*v78)
      {
        v81 = 0;
        *cf = 0u;
        v80 = 0u;
        NetworkNotification::NetworkNotification(cf, *v78);
        if (sub_101249AA4(v10, v77, cf, a5, &v76))
        {
          v42 = v10;
          v43 = v12;
          v40 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
          {
            *v69 = 0;
            v55 = 2;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Wap push handled as either voicemail or PNR", v69, 2u);
            v29 = 0;
          }

          else
          {
            v29 = 0;
            v55 = 2;
          }
        }

        else
        {
          v43 = v12;
          v42 = v10;
          v55 = 0;
          v29 = 2;
        }

        NetworkNotification::~NetworkNotification(cf);
        goto LABEL_149;
      }

      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf[0]) = 0;
        v59 = "#I Failed to convert SMS body to UTF8 string which is expected";
        goto LABEL_130;
      }
    }

    else
    {
      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf[0]) = 0;
        v59 = "#I WAP push too small to handle carrier specific case";
LABEL_130:
        v55 = 2;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v59, cf, 2u);
LABEL_132:
        v29 = 2;
LABEL_149:
        NetworkNotification::~NetworkNotification(buf);
LABEL_150:
        sub_100005978(v78);
        goto LABEL_151;
      }
    }

    v55 = 2;
    goto LABEL_132;
  }

  v43 = v12;
  if (shouldBlockCarrierMessaging)
  {
LABEL_159:
    v65 = *v43;
    if (os_log_type_enabled(*v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I Messages is not installed and no default carrier messaging app is selected, dropping incoming message.", buf, 2u);
    }

    v76 = 5;
    v29 = 2;
    goto LABEL_162;
  }

  if (v7 != 37273)
  {
LABEL_146:
    v29 = 0;
    goto LABEL_162;
  }

  v45 = *(v10 + 2528);
  if (v45)
  {
    v46 = v10 + 2528;
    do
    {
      if (*(v45 + 28) >= v77)
      {
        v46 = v45;
      }

      v45 = *(v45 + 8 * (*(v45 + 28) < v77));
    }

    while (v45);
    if (v46 != v10 + 2528 && v77 >= *(v46 + 28) && (*sub_1000A8C4C(v10 + 2520, &v77) & 1) != 0)
    {
      cf[0] = 0;
      cf[1] = 0;
      sub_10124996C(cf, *v68);
      v47 = v10;
      v73 = 0;
      v74 = 0;
      if (cf[0] && ((*(*cf[0] + 16))(&v73), (v48 = v73) != 0))
      {
        if (v6 == 4)
        {
          __p = 0;
          v71 = 0;
          ctu::TextConverter::TextConverter(&__p);
          v49 = a3[23];
          if (v49 >= 0)
          {
            v50 = a3;
          }

          else
          {
            v50 = *a3;
          }

          if (v49 >= 0)
          {
            v51 = *(a3 + 23);
          }

          else
          {
            v51 = *(a3 + 1);
          }

          ctu::TextConverter::setSource(&__p, v50, v51);
          ctu::TextConverter::pushConversion();
          memset(buf, 0, 24);
          ctu::TextConverter::readChars(&__p, 0x7FFFFFFFuLL);
          v52 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
          {
            v53 = buf;
            if ((buf[23] & 0x80u) != 0)
            {
              v53 = *buf;
            }

            *v78 = 136315138;
            *&v78[4] = v53;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I Handling lazuli binary SMS: [%{senstive}s]", v78, 0xCu);
          }

          (*(v73->isa + 9))(v73, v77, buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          ctu::TextConverter::~TextConverter(&__p);
        }

        else
        {
          v61 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
          {
            v62 = *(a3 + 23);
            if ((v62 & 0x80u) == 0)
            {
              v63 = a3;
            }

            else
            {
              v63 = *a3;
            }

            if ((v62 & 0x80u) != 0)
            {
              v62 = *(a3 + 1);
            }

            *buf = 136315394;
            *&buf[4] = v63;
            *&buf[12] = 2048;
            *&buf[14] = v62;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I Handling lazuli SMS: [%{senstive}s] [%lu]", buf, 0x16u);
            v48 = v73;
          }

          (*(v48->isa + 9))(v48, v77, a3);
        }
      }

      else
      {
        v60 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Failed to find lazuli manager...", buf, 2u);
        }
      }

      if (v74)
      {
        sub_100004A34(v74);
      }

      v10 = v47;
      if (cf[1])
      {
        sub_100004A34(cf[1]);
      }

      goto LABEL_146;
    }
  }

  v58 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I Unhandled lazuli SMS: Feature not enabled", buf, 2u);
  }

  LOBYTE(v40) = 5;
  return v40;
}

void sub_1012488B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, std::__shared_weak_count *a27)
{
  if (*(v27 - 121) < 0)
  {
    operator delete(*(v27 - 144));
  }

  ctu::TextConverter::~TextConverter(&__p);
  if (a21)
  {
    sub_100004A34(a21);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1012489F8(uint64_t a1, int a2, uint64_t a3)
{
  v11 = a2;
  __p[0] = &v11;
  if (*(sub_1002D750C(a1 + 2560, &v11, &unk_101802C98, __p)[5] + 624) != 1)
  {
    return 0;
  }

  Registry::getTimerService(__p, *(a1 + 80));
  v4 = (**__p[0])(__p[0]);
  v10.__locale_ = &v11;
  v5 = v4 - *(sub_1002D750C(a1 + 2560, &v11, &unk_101802C98, &v10)[5] + 616);
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  v6 = v5 < 180000000000;
  v7 = v5 < 180000000000;
  if (v6)
  {
    sub_1001C7FB0(&v10, "^REG-RESP\\?v=[235];r=\\d+;n=\\+\\d+;s=[0-9A-Za-z]+$", 0);
  }

  __p[0] = &v11;
  v8 = sub_1002D750C(a1 + 2560, &v11, &unk_101802C98, __p)[5];
  *(v8 + 616) = 0;
  *(v8 + 624) = 0;
  return v7;
}

void sub_101248BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_1001C3924(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_101248BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v76 = a2;
  if (!subscriber::isValidSimSlot())
  {
    return 0;
  }

  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v12 = ServiceMap;
  v14 = v13;
  if (v13 < 0)
  {
    v15 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v16 = 5381;
    do
    {
      v14 = v16;
      v17 = *v15++;
      v16 = (33 * v16) ^ v17;
    }

    while (v17);
  }

  std::mutex::lock(ServiceMap);
  *buf = v14;
  v18 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (!v18)
  {
    v20 = 0;
    goto LABEL_10;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
LABEL_10:
    std::mutex::unlock(v12);
    v19 = 0;
    v21 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v21 = 0;
LABEL_11:
  *buf = &v76;
  if (!*(sub_1002D750C(a1 + 2560, &v76, &unk_101802C98, buf)[5] + 336) || (*buf = &v76, *(sub_1002D750C(a1 + 2560, &v76, &unk_101802C98, buf)[5] + 294) == 1))
  {
    valuePtr = -1;
    number = 0;
    if (!v20)
    {
      v73 = 0;
LABEL_46:
      sub_100005978(&v73);
      sub_100029A48(&number);
      goto LABEL_47;
    }

    (*(*v20 + 96))(&v73, v20, v76, 1, @"VMSMFilterProtocolID", 0, 0);
    sub_10010B240(__p, &v73);
    *buf = number;
    number = __p[0];
    __p[0] = 0;
    sub_100029A48(buf);
    sub_100029A48(__p);
    sub_10000A1EC(&v73);
    if (number && CFNumberGetValue(number, kCFNumberIntType, &valuePtr) && valuePtr == a5)
    {
      v69 = a3;
      v23 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Protocol identifier filter matched", buf, 2u);
      }

      goto LABEL_55;
    }

    v73 = 0;
    v24 = Registry::getServiceMap(*(a1 + 80));
    v25 = v24;
    v26 = v13;
    if (v13 < 0)
    {
      v27 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v28 = 5381;
      do
      {
        v26 = v28;
        v29 = *v27++;
        v28 = (33 * v28) ^ v29;
      }

      while (v29);
    }

    std::mutex::lock(v24);
    *buf = v26;
    v30 = sub_100009510(&v25[1].__m_.__sig, buf);
    if (v30)
    {
      v32 = v30[3];
      v31 = v30[4];
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v25);
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v31);
        v33 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v32 = 0;
    }

    std::mutex::unlock(v25);
    v31 = 0;
    v33 = 1;
LABEL_28:
    (*(*v32 + 96))(&v72, v32, v76, 1, @"VMSMFilterNumber", 0, 0);
    sub_100060DE8(__p, &v72);
    *buf = v73;
    v73 = __p[0];
    __p[0] = 0;
    sub_100005978(buf);
    sub_100005978(__p);
    sub_10000A1EC(&v72);
    if ((v33 & 1) == 0)
    {
      sub_100004A34(v31);
    }

    if (v73)
    {
      v69 = a3;
      memset(buf, 0, sizeof(buf));
      v78 = 0;
      ctu::cf::assign();
      v71 = v78;
      *__p = *buf;
      v34 = *(a4 + 23);
      if (v34 >= 0)
      {
        v35 = *(a4 + 23);
      }

      else
      {
        v35 = *(a4 + 8);
      }

      v36 = HIBYTE(v71);
      v37 = SHIBYTE(v71);
      if (v71 < 0)
      {
        v36 = __p[1];
      }

      if (v35 == v36)
      {
        v38 = v34 >= 0 ? a4 : *a4;
        v39 = __p[0];
        v40 = v71 >= 0 ? __p : __p[0];
        if (!memcmp(v38, v40, v35))
        {
          v42 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Address filter matched", buf, 2u);
          }

          if (v37 < 0)
          {
            operator delete(v39);
          }

          sub_100005978(&v73);
LABEL_55:
          sub_100029A48(&number);
          __p[0] = 0;
          v43 = Registry::getServiceMap(*(a1 + 80));
          v44 = v43;
          if (v13 < 0)
          {
            v45 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
            v46 = 5381;
            do
            {
              v13 = v46;
              v47 = *v45++;
              v46 = (33 * v46) ^ v47;
            }

            while (v47);
          }

          std::mutex::lock(v43);
          *buf = v13;
          v48 = sub_100009510(&v44[1].__m_.__sig, buf);
          if (v48)
          {
            v50 = v48[3];
            v49 = v48[4];
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v44);
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v49);
              v51 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v50 = 0;
          }

          std::mutex::unlock(v44);
          v49 = 0;
          v51 = 1;
LABEL_63:
          (*(*v50 + 96))(&v73, v50, v76, 1, @"VMSMFilterContents", 0, 0);
          sub_100060DE8(&number, &v73);
          *buf = __p[0];
          __p[0] = number;
          number = 0;
          sub_100005978(buf);
          sub_100005978(&number);
          sub_10000A1EC(&v73);
          if ((v51 & 1) == 0)
          {
            sub_100004A34(v49);
          }

          number = 0;
          if (*(v69 + 23) >= 0)
          {
            v52 = v69;
          }

          else
          {
            v52 = *v69;
          }

          v53 = CFStringCreateWithCString(kCFAllocatorDefault, v52, 0x8000100u);
          number = v53;
          if (v53)
          {
            if (!__p[0] || (*(v69 + 23) >= 0 ? (v54.length = *(v69 + 23)) : (v54.length = *(v69 + 8)), v54.location = 0, CFStringFindWithOptions(v53, __p[0], v54, 0, 0)))
            {
              v55 = v10;
              v56 = Registry::getServiceMap(*(a1 + 80));
              v57 = v56;
              if (v58 < 0)
              {
                v59 = (v58 & 0x7FFFFFFFFFFFFFFFLL);
                v60 = 5381;
                do
                {
                  v58 = v60;
                  v61 = *v59++;
                  v60 = (33 * v60) ^ v61;
                }

                while (v61);
              }

              std::mutex::lock(v56);
              *buf = v58;
              v62 = sub_100009510(&v57[1].__m_.__sig, buf);
              if (v62)
              {
                v64 = v62[3];
                v63 = v62[4];
                if (v63)
                {
                  atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
                  std::mutex::unlock(v57);
                  atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_100004A34(v63);
                  v65 = 0;
                  goto LABEL_84;
                }
              }

              else
              {
                v64 = 0;
              }

              std::mutex::unlock(v57);
              v63 = 0;
              v65 = 1;
LABEL_84:
              if (v64 && ((*(*v64 + 80))(v64, v76) & 1) != 0)
              {
                v22 = 1;
              }

              else
              {
                v68 = *v55;
                v22 = 0;
                if (os_log_type_enabled(*v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I VVM not supported", buf, 2u);
                  v22 = 0;
                }
              }

              if ((v65 & 1) == 0)
              {
                sub_100004A34(v63);
              }

LABEL_95:
              sub_100005978(&number);
              sub_100005978(__p);
              if (v21)
              {
                return v22;
              }

              goto LABEL_48;
            }

            v66 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v67 = "#I Content filter not matched";
              goto LABEL_93;
            }
          }

          else
          {
            v66 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v67 = "#I Failed to convert SMS body to UTF8 string which is expected";
LABEL_93:
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, v67, buf, 2u);
            }
          }

          v22 = 0;
          goto LABEL_95;
        }
      }

      if (v37 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_46;
  }

LABEL_47:
  v22 = 0;
  if ((v21 & 1) == 0)
  {
LABEL_48:
    sub_100004A34(v19);
  }

  return v22;
}

void sub_1012493E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, const void *a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  sub_100005978(&a21);
  sub_100005978(&a11);
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void sub_1012494DC()
{
  if (v0)
  {
    JUMPOUT(0x1012494D0);
  }

  JUMPOUT(0x1012494C8);
}

BOOL sub_1012494E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  sms::Controller::getDynamicMessageModes_sync(a1, a2, &v38);
  memset(&__p, 0, sizeof(__p));
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v7 = v6;
  v8 = v38;
  if (v38 != v39)
  {
    while (*v8 != 2)
    {
      if (++v8 == v39)
      {
        goto LABEL_16;
      }
    }
  }

  if (v8 == v39)
  {
LABEL_16:
    v19 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Device doesn't support restricted MT SMS mode", buf, 2u);
    }

    goto LABEL_18;
  }

  if (*(a1 + 2728) != 0.0)
  {
LABEL_18:
    v20 = 1;
    goto LABEL_19;
  }

  theArray = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
LABEL_26:
  (*(*v17 + 96))(v33, v17, a2, 1, @"CarrierOverridesSmsSupportWhitelist", 0, 0);
  sub_10006DD00(&theArray, v33);
  sub_10000A1EC(v33);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  v22 = theArray;
  if (theArray)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
LABEL_36:
        if (p_p->__r_.__value_.__s.__data_[0] == 43)
        {
          std::string::erase(&__p, 0, 1uLL);
          v22 = theArray;
        }
      }
    }

    else if (*(&__p.__r_.__value_.__s + 23))
    {
      p_p = &__p;
      goto LABEL_36;
    }

    Count = CFArrayGetCount(v22);
    if (Count >= 1)
    {
      v26 = 0;
      while (1)
      {
        v35 = 0;
        *buf = CFArrayGetValueAtIndex(theArray, v26);
        sub_100060DE8(&v35, buf);
        memset(buf, 0, sizeof(buf));
        v42 = 0;
        ctu::cf::assign();
        v34 = v42;
        *v33 = *buf;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v28 = HIBYTE(v34);
        v29 = SHIBYTE(v34);
        if (v34 < 0)
        {
          v28 = v33[1];
        }

        if (size == v28)
        {
          break;
        }

        v32 = 0;
        if (SHIBYTE(v34) < 0)
        {
          goto LABEL_55;
        }

LABEL_56:
        sub_100005978(&v35);
        if (v32)
        {
          goto LABEL_60;
        }

        if (Count == ++v26)
        {
          v26 = Count;
          goto LABEL_60;
        }
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &__p;
      }

      else
      {
        v30 = __p.__r_.__value_.__r.__words[0];
      }

      if (v34 >= 0)
      {
        v31 = v33;
      }

      else
      {
        v31 = v33[0];
      }

      v32 = memcmp(v30, v31, size) == 0;
      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_56;
      }

LABEL_55:
      operator delete(v33[0]);
      goto LABEL_56;
    }

    v26 = 0;
LABEL_60:
    v20 = v26 != Count;
    goto LABEL_61;
  }

  v24 = *v7;
  v20 = 0;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Key CarrierOverridesSmsSupportWhitelist absent in the bundle", buf, 2u);
    v20 = 0;
  }

LABEL_61:
  sub_100010250(&theArray);
LABEL_19:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  return v20;
}