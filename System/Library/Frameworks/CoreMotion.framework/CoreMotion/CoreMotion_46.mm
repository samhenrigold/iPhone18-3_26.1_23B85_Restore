char *sub_19B68B7E8(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_19B4C5138(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    result = sub_19B4C5138(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(v3 + 10) = *(a2 + 80);
    *(v3 + 4) = v5;
  }

  if (*(a2 + 111) < 0)
  {
    return sub_19B4C5138(v3 + 88, *(a2 + 88), *(a2 + 96));
  }

  v6 = *(a2 + 88);
  *(v3 + 13) = *(a2 + 104);
  *(v3 + 88) = v6;
  return result;
}

void sub_19B68B884(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B68B8B8(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

uint64_t sub_19B68B920(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v75 = a1 + 40;
  (*(v2 + 16))(a1 + 40);
  v76 = 256;
  v6 = sub_19B740A34(a1, v4, v5);
  if (*(a1 + 79) < 0)
  {
    sub_19B4C5138(&__dst, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __dst = *(a1 + 56);
    v74 = *(a1 + 72);
  }

  if (*(a1 + 103) < 0)
  {
    sub_19B4C5138(&v71, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    v71 = *(a1 + 80);
    v72 = *(a1 + 96);
  }

  if (*(a1 + 216))
  {
    syslog(5, "%s,%s,dumping internal buffer\n", "NOTICE", "CLLog");
    sub_19B740964(a1, &v77);
    if ((v77.st_gid & 0x80000000) == 0)
    {
      v7 = &v77;
    }

    else
    {
      v7 = *&v77.st_dev;
    }

    v8 = fopen(v7, "a");
    v9 = v8;
    if (SHIBYTE(v77.st_gid) < 0)
    {
      operator delete(*&v77.st_dev);
      if (v9)
      {
        goto LABEL_13;
      }
    }

    else if (v8)
    {
LABEL_13:
      sub_19B68E894(*(a1 + 216), v9);
      fclose(v9);
      v10 = 1;
      goto LABEL_16;
    }
  }

  v10 = 0;
LABEL_16:
  if (v74 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (!stat(p_dst, &v77))
  {
    v12 = HIBYTE(v74);
    if (v74 >= 0)
    {
      v13 = &__dst;
    }

    else
    {
      v13 = __dst;
    }

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3321888768;
    v66[2] = sub_19B68C4F8;
    v66[3] = &unk_1F0E2A7C0;
    v66[4] = a1;
    if (SHIBYTE(v72) < 0)
    {
      sub_19B4C5138(&v67, v71, *(&v71 + 1));
      v12 = HIBYTE(v74);
    }

    else
    {
      v67 = v71;
      v68 = v72;
    }

    if (v12 < 0)
    {
      sub_19B4C5138(&__p, __dst, *(&__dst + 1));
    }

    else
    {
      __p = __dst;
      v70 = v74;
    }

    sub_19B6A2184(v13, v66);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v68) < 0)
    {
      operator delete(v67);
    }
  }

  sub_19B68B2AC(a1);
  v14 = (a1 + 128);
  v15 = (a1 + 128);
  if (*(a1 + 151) < 0)
  {
    v15 = *v14;
  }

  if (!stat(v15, &v77))
  {
    sub_19B740964(a1, &v77);
    v17 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v17 = *v14;
    }

    if ((v77.st_gid & 0x80000000) == 0)
    {
      v18 = &v77;
    }

    else
    {
      v18 = *&v77.st_dev;
    }

    rename(v17, v18, v16);
    if ((v77.st_gid & 0x80000000) == 0)
    {
      v19 = &v77;
    }

    else
    {
      v19 = *&v77.st_dev;
    }

    sub_19B5E323C(v19);
    if (*(a1 + 151) < 0)
    {
      v14 = *v14;
    }

    sub_19B68AC64(a1, v14);
    if (SHIBYTE(v77.st_gid) < 0)
    {
      operator delete(*&v77.st_dev);
    }

    v10 = 1;
  }

  v65 = 0;
  sub_19B5FC534(&v77);
  if (sub_19B438CCC(*&v77.st_dev, "LogNatalimetry", &v65, 0xFFFFFFFFLL))
  {
    v20 = 1;
  }

  else
  {
    sub_19B5FC534(v63);
    v20 = sub_19B438CCC(v63[0], "LogCalorimetry", &v65, 0xFFFFFFFFLL);
    if (v63[1])
    {
      sub_19B41FFEC(v63[1]);
    }
  }

  if (v77.st_ino)
  {
    sub_19B41FFEC(v77.st_ino);
  }

  if (v20)
  {
    if (v65)
    {
      sub_19B5FCC64(0, &v62);
      v21 = std::string::append(&v62, "userinfo", 8uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      *&v77.st_uid = *(&v21->__r_.__value_.__l + 2);
      *&v77.st_dev = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v23 = std::string::append(&v77, ".plist", 6uLL);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v64 = v23->__r_.__value_.__r.__words[2];
      *v63 = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v77.st_gid) < 0)
      {
        operator delete(*&v77.st_dev);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (v64 >= 0)
      {
        v25 = v63;
      }

      else
      {
        v25 = v63[0];
      }

      if (!stat(v25, &v77))
      {
        sub_19B74041C(&v60);
        v26 = std::string::append(&v60, "/", 1uLL);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = std::string::append(&v61, "userinfo", 8uLL);
        v29 = *&v28->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        v30 = std::string::append(&v62, ".log", 4uLL);
        v31 = *&v30->__r_.__value_.__l.__data_;
        *&v77.st_uid = *(&v30->__r_.__value_.__l + 2);
        *&v77.st_dev = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (v64 >= 0)
        {
          v32 = v63;
        }

        else
        {
          v32 = v63[0];
        }

        if ((v77.st_gid & 0x80000000) == 0)
        {
          v33 = &v77;
        }

        else
        {
          v33 = *&v77.st_dev;
        }

        sub_19B5E338C(v32, v33);
        if ((v77.st_gid & 0x80000000) == 0)
        {
          v34 = &v77;
        }

        else
        {
          v34 = *&v77.st_dev;
        }

        sub_19B5E323C(v34);
        if (SHIBYTE(v77.st_gid) < 0)
        {
          operator delete(*&v77.st_dev);
        }
      }

      sub_19B5FCC64(0, &v61);
      v35 = std::string::append(&v61, "cache", 5uLL);
      v36 = *&v35->__r_.__value_.__l.__data_;
      *&v77.st_uid = *(&v35->__r_.__value_.__l + 2);
      *&v77.st_dev = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v37 = std::string::append(&v77, ".plist", 6uLL);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v62.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v62.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v77.st_gid) < 0)
      {
        operator delete(*&v77.st_dev);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v62;
      }

      else
      {
        v39 = v62.__r_.__value_.__r.__words[0];
      }

      if (!stat(v39, &v77))
      {
        sub_19B74041C(&v59);
        v40 = std::string::append(&v59, "/", 1uLL);
        v41 = *&v40->__r_.__value_.__l.__data_;
        v60.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
        *&v60.__r_.__value_.__l.__data_ = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        v42 = std::string::append(&v60, "cache", 5uLL);
        v43 = *&v42->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        v44 = std::string::append(&v61, ".log", 4uLL);
        v45 = *&v44->__r_.__value_.__l.__data_;
        *&v77.st_uid = *(&v44->__r_.__value_.__l + 2);
        *&v77.st_dev = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v62;
        }

        else
        {
          v46 = v62.__r_.__value_.__r.__words[0];
        }

        if ((v77.st_gid & 0x80000000) == 0)
        {
          v47 = &v77;
        }

        else
        {
          v47 = *&v77.st_dev;
        }

        sub_19B5E338C(v46, v47);
        if ((v77.st_gid & 0x80000000) == 0)
        {
          v48 = &v77;
        }

        else
        {
          v48 = *&v77.st_dev;
        }

        sub_19B5E323C(v48);
        if (SHIBYTE(v77.st_gid) < 0)
        {
          operator delete(*&v77.st_dev);
        }
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64) < 0)
      {
        operator delete(v63[0]);
      }
    }
  }

  else
  {
    v65 = 0;
  }

  sub_19B740244(&v61);
  v49 = std::string::append(&v61, "/", 1uLL);
  v50 = *&v49->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = v50;
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  v51 = std::string::append(&v62, "com.apple.timed", 0xFuLL);
  v52 = *&v51->__r_.__value_.__l.__data_;
  *&v77.st_uid = *(&v51->__r_.__value_.__l + 2);
  *&v77.st_dev = v52;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  v53 = std::string::append(&v77, ".plist", 6uLL);
  v54 = *&v53->__r_.__value_.__l.__data_;
  v64 = v53->__r_.__value_.__r.__words[2];
  *v63 = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v77.st_gid) < 0)
  {
    operator delete(*&v77.st_dev);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v64 >= 0)
  {
    v55 = v63;
  }

  else
  {
    v55 = v63[0];
  }

  if (stat(v55, &v77))
  {
    goto LABEL_137;
  }

  sub_19B740144(&v62);
  sub_19B428B50(&v61, "com.apple.timed");
  sub_19B428B50(&v60, ".plist.log");
  sub_19B7405F4(&v62.__r_.__value_.__l.__data_, &v61, &v60, v6, &v77);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v64 >= 0)
  {
    v56 = v63;
  }

  else
  {
    v56 = v63[0];
  }

  if ((v77.st_gid & 0x80000000) == 0)
  {
    v57 = &v77;
  }

  else
  {
    v57 = *&v77.st_dev;
  }

  if (sub_19B5E338C(v56, v57) == 1)
  {
    syslog(5, "%s,%s,could not copy %s log\n", "WARNING", "CLLog", "com.apple.timed");
  }

  if ((SHIBYTE(v77.st_gid) & 0x80000000) == 0)
  {
LABEL_137:
    if (v10)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

  operator delete(*&v77.st_dev);
  if ((v10 & 1) == 0)
  {
LABEL_138:
    syslog(5, "%s,%s,could not dump log file\n", "WARNING", "CLLog");
  }

LABEL_139:
  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(__dst);
  }

  return (*(*v3 + 24))(v3);
}

void sub_19B68C25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (*(v63 - 233) < 0)
  {
    operator delete(*(v63 - 256));
  }

  sub_19B5C6074(v63 - 232);
  _Unwind_Resume(a1);
}

uint64_t sub_19B68C4F8(uint64_t a1, char *a2)
{
  v4 = *(a1 + 32);
  sub_19B428B50(&v33, a2);
  if (*(a1 + 63) >= 0)
  {
    v5 = *(a1 + 63);
  }

  else
  {
    v5 = *(a1 + 48);
  }

  v6 = &v32;
  sub_19B50FF5C(&v32, v5 + 1);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v32.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a1 + 63) >= 0)
    {
      v7 = (a1 + 40);
    }

    else
    {
      v7 = *(a1 + 40);
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 95;
  if (sub_19B740A40(v4, &v33, &v32))
  {
    sub_19B428B50(&v31, a2);
    sub_19B428B50(v29, ".log.bz2");
    if (sub_19B740B0C(v4, &v31, v29))
    {
      v8 = 1;
    }

    else
    {
      sub_19B428B50(v27, a2);
      sub_19B428B50(__p, ".log");
      v8 = sub_19B740B0C(v4, v27, __p);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
    if (!v8)
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  sub_19B74041C(&v31);
  v9 = std::string::append(&v31, "/", 1uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = strlen(a2);
  v12 = std::string::append(&v32, a2, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v34 = v12->__r_.__value_.__r.__words[2];
  v33 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 87) >= 0)
  {
    v14 = *(a1 + 87);
  }

  else
  {
    v14 = *(a1 + 72);
  }

  v15 = &v31;
  sub_19B50FF5C(&v31, v14 + 1);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v31.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if (*(a1 + 87) >= 0)
    {
      v16 = (a1 + 64);
    }

    else
    {
      v16 = *(a1 + 64);
    }

    memmove(v15, v16, v14);
  }

  *(&v15->__r_.__value_.__l.__data_ + v14) = 47;
  v17 = strlen(a2);
  v18 = std::string::append(&v31, a2, v17);
  v32 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v20 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  v21 = v32.__r_.__value_.__r.__words[0];
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v32;
  }

  else
  {
    v22 = v32.__r_.__value_.__r.__words[0];
  }

  if (v34 >= 0)
  {
    v23 = &v33;
  }

  else
  {
    v23 = v33;
  }

  rename(v22, v23, v19);
  sub_19B5E323C(v23);
  if (v20 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  return 1;
}

void sub_19B68C814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  _Unwind_Resume(exception_object);
}

char *sub_19B68C8E4(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_19B4C5138(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    return sub_19B4C5138(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  v5 = *(a2 + 64);
  *(v3 + 10) = *(a2 + 80);
  *(v3 + 4) = v5;
  return result;
}

void sub_19B68C958(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B68C974(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

os_log_t sub_19B68C9CC()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED71C7F0 = result;
  return result;
}

FILE ***sub_19B68C9FC(FILE ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_19B68E50C(v2);
    MEMORY[0x19EAE76F0](v3, 0x10B0C403E4C181ELL);
  }

  return a1;
}

void sub_19B68CA48(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

FILE **sub_19B68CA80(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_19B68E50C(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

uint64_t sub_19B68CAC4(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E349F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_19B68CB08(uint64_t a1)
{
  sub_19B60DA60(a1);

  JUMPOUT(0x19EAE76F0);
}

BOOL sub_19B68CB44(uint64_t a1, const __CFString *a2, const void *a3)
{
  sub_19B60F5FC(a1, a2, a3);

  return sub_19B432E80(a1);
}

os_log_t sub_19B68D2E8()
{
  result = os_log_create("com.apple.locationd.Motion", "Altimeter");
  qword_1EAFE2870 = result;
  return result;
}

void sub_19B68D3F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B68D554(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3AB60);
  }

  v14 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v21 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3AB60);
    }

    v19[0] = 67240192;
    v19[1] = v13;
    LODWORD(v18) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "Failed with CMError code %{public}d", v19, v18);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometerSuitabilityManagerProxy _startDaemonConnection]_block_invoke", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

void sub_19B68D77C(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3AB60);
    }

    v6 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v22 = v5;
      v23 = 1024;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMOdometerSuitability client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3AB60);
      }

      v10 = off_1ED71C838;
      v11 = getpid();
      v12 = *(a1 + 32);
      v15 = 138412802;
      v16 = v5;
      v17 = 1024;
      v18 = v11;
      v19 = 2048;
      v20 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 1, "CMOdometerSuitability client connection interrupt, %@, %d, %p", &v15, 28);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometerSuitabilityManagerProxy _startDaemonConnection]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

void sub_19B68DB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v22)
  {
    sub_19B41FFEC(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B68DB58(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 32);
  if (v4)
  {
    v6 = objc_msgSend_copy(v4, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
    if (*a2)
    {
      DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12);
      if (DictionaryOfClasses)
      {
        v15 = DictionaryOfClasses;
        v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMOdometerSuitabilityObject");
        v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMErrorMessage");
        if (v18)
        {
          v19 = *(*(a1 + 32) + 16);
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = sub_19B68DE6C;
          v29[3] = &unk_1E7532B90;
          v29[4] = v18;
          v29[5] = v6;
          v20 = v29;
          v21 = v19;
        }

        else
        {
          if (!v16)
          {
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E3AB60);
            }

            v22 = off_1ED71C838;
            if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageOdometerSuitabilityUpdate message!", buf, 2u);
            }

            v23 = sub_19B420058();
            if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C830 != -1)
              {
                dispatch_once(&qword_1ED71C830, &unk_1F0E3AB60);
              }

              v27[0] = 0;
              LODWORD(v26) = 2;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "Unable to parse kCLConnectionMessageOdometerSuitabilityUpdate message!", v27, v26);
              v25 = v24;
              sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometerSuitabilityManagerProxy _startOdometerSuitabilityUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v24);
              if (v25 != buf)
              {
                free(v25);
              }
            }

            goto LABEL_9;
          }

          v21 = *(*(a1 + 32) + 16);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_19B68DF00;
          block[3] = &unk_1E7532B68;
          block[4] = v16;
          block[5] = v6;
          v20 = block;
        }

        dispatch_async(v21, v20);
      }
    }

LABEL_9:
  }
}

void sub_19B68DE6C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v7 = objc_msgSend_integerValue(*(a1 + 32), v5, v6);
  v9 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v8, @"CMErrorDomain", v7, 0);
  (*(v4 + 16))(v4, 0, v9);

  objc_autoreleasePoolPop(v2);
}

void sub_19B68DF00(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [CMOdometerSuitability alloc];
  started = objc_msgSend_startDate(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_suitableForRunning(*(a1 + 32), v7, v8);
  v12 = objc_msgSend_suitableForWalking(*(a1 + 32), v10, v11);
  v14 = objc_msgSend_initWithStartDate_suitableForRunning_suitableForWalking_(v3, v13, started, v9, v12);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_19B68E0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    sub_19B41FFEC(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B68E344(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_odometerSuitabilityManagerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startOdometerSuitabilityUpdatesWithHandler_, v5);
}

uint64_t sub_19B68E400(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_odometerSuitabilityManagerProxy(*(a1 + 32), a2, a3);

  return objc_msgSend__stopOdometerSuitabilityUpdates(v3, v4, v5);
}

void sub_19B68E4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

FILE **sub_19B68E50C(FILE **a1)
{
  sub_19B68E540(a1);
  sub_19B5F4684((a1 + 4));
  return a1;
}

uint64_t sub_19B68E540(FILE **a1)
{
  v2 = a1 + 4;
  (*&a1[4]->_flags)(a1 + 4);
  v3 = *a1;
  if (*a1)
  {
    *a1 = 0;
    fclose(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    free(v4);
    a1[1] = 0;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  sub_19B68E81C(a1);
  (*(*v2 + 24))(v2);
  return v5;
}

void sub_19B68E60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B5C6074(va);
  _Unwind_Resume(a1);
}

FILE *sub_19B68E620(FILE **a1)
{
  v2 = a1 + 4;
  (*&a1[4]->_flags)(a1 + 4);
  if (!*a1)
  {
    v3 = malloc_type_malloc(*(a1 + 4), 0x100004077774924uLL);
    a1[1] = v3;
    if (v3)
    {
      *a1 = funopen(a1, 0, sub_19B68E734, 0, sub_19B68E818);
      sub_19B68E81C(a1);
    }
  }

  v4 = *a1;
  (a1[4]->_bf._base)(v2);
  return v4;
}

void sub_19B68E71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B5C6074(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B68E734(uint64_t a1, const void *a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v7 = *(v6 - 24);
  if (v7)
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16) - v8;
    if (v9 >= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = v9;
    }

    memcpy((v7 + v8), a2, v3);
    v10 = *(a1 + 16);
    v11 = (*(a1 + 20) + v3) % v10;
    if (*(a1 + 24) + v3 < v10)
    {
      v10 = *(a1 + 24) + v3;
    }

    *(a1 + 20) = v11;
    *(a1 + 24) = v10;
  }

  else
  {
    v3 = 0;
  }

  (*(*v6 + 24))(v6);
  return v3;
}

uint64_t sub_19B68E81C(uint64_t a1)
{
  v1 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  *(v1 - 12) = 0;
  return (*(*v1 + 24))(v1);
}

uint64_t sub_19B68E894(uint64_t a1, FILE *a2)
{
  v4 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v5 = *(v4 - 24);
  if (v5)
  {
    if (*a1)
    {
      fflush(*a1);
      v5 = *(a1 + 8);
    }

    v6 = *(a1 + 24);
    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      v8 = v5 + v7;
      v9 = *(v8 - 1);
      *(v8 - 1) = 0;
      fputs((*(a1 + 8) + *(a1 + 20)), a2);
      fputc(v9, a2);
      v5 = *(a1 + 8);
    }

    *(v5 + *(a1 + 20)) = 0;
    fputs(*(a1 + 8), a2);
    sub_19B68E81C(a1);
  }

  else
  {
    v6 = 0;
  }

  (*(*v4 + 24))(v4);
  return v6;
}

void sub_19B68E9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B5C6074(va);
  _Unwind_Resume(a1);
}

void sub_19B68EF3C(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  *(a1 + 48) = 0;
  *a1 = 0u;
  v4 = a1 + 14644;
  *(a1 + 15) = 0;
  v5 = a1 + 5332;
  *(a1 + 56) = a3;
  *(a1 + 60) = 257;
  *(a1 + 62) = 0;
  *(a1 + 66) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  sub_19B41E130((a1 + 92), 0);
  *(a1 + 108) = 0;
  *(a1 + 116) = 0x3200000000;
  *(a1 + 724) = 1;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0x3200000000;
  *(a1 + 960) = 0x6400000000;
  *(a1 + 2168) = 0x6400000000;
  *(a1 + 3776) = 0x6400000000;
  *(a1 + 4584) = 0x3200000000;
  *(a1 + 5192) = 0;
  *(a1 + 5200) = 0;
  *(a1 + 5208) = 0x3F80000000000000;
  *(a1 + 5216) = 0;
  *(a1 + 5221) = 0;
  *(a1 + 5232) = 0u;
  *(a1 + 5248) = 0u;
  *(a1 + 5264) = 0u;
  *(a1 + 5280) = 0u;
  *(a1 + 5296) = 0u;
  *(a1 + 5312) = 0;
  *(a1 + 5316) = 973279855;
  v6 = vdup_n_s32(0x3A03126Fu);
  *(a1 + 5320) = v6;
  *(a1 + 5328) = 0;
  *v5 = xmmword_19B7BB860;
  *(a1 + 5348) = 1065353216;
  sub_19B41E130((a1 + 5336), xmmword_19B7BB860);
  *(a1 + 5352) = 0u;
  *(a1 + 5368) = 0u;
  *(a1 + 5384) = 0x3A03126F00000000;
  *(a1 + 5392) = v6;
  *(a1 + 5400) = 0;
  *(v5 + 72) = xmmword_19B7BB860;
  *(a1 + 5420) = 1065353216;
  sub_19B41E130((a1 + 5408), xmmword_19B7BB860);
  *(a1 + 5424) = 0u;
  *(a1 + 5440) = 0x200000000;
  *(v5 + 124) = 1;
  *(a1 + 5468) = 0u;
  *(a1 + 5484) = 0x4B00000000;
  *(a1 + 5792) = 0u;
  *(a1 + 5808) = 0;
  bzero((a1 + 5816), 0x2778uLL);
  *(a1 + 5860) = 100;
  *(a1 + 7068) = 100;
  *(v5 + 2940) = 1;
  *(a1 + 8284) = 0u;
  *(a1 + 8304) = 100;
  *(v5 + 3376) = 1;
  *(a1 + 8720) = 0u;
  *(a1 + 8740) = 100;
  *(a1 + 9148) = 40;
  *(a1 + 9632) = 0u;
  *(a1 + 9648) = 0u;
  *(a1 + 9664) = 0;
  *(a1 + 9676) = 200;
  *(a1 + 12200) = 0;
  *(a1 + 12208) = 0u;
  *(a1 + 12224) = 0;
  *(a1 + 12176) = 0;
  *(a1 + 12160) = 0u;
  *(a1 + 12144) = 0u;
  *(a1 + 12128) = 0u;
  *(a1 + 12112) = 0u;
  *(a1 + 12096) = 0u;
  *(a1 + 12080) = 0u;
  *(a1 + 12240) = 200;
  *v4 = 1;
  *(a1 + 14656) = 0u;
  *(a1 + 14676) = 40;
  *(a1 + 14852) = 0u;
  *(v4 + 196) = 1;
  *(a1 + 14872) = 40;
  *(v4 + 392) = 1;
  *(a1 + 15048) = 0u;
  *(a1 + 15068) = 200;
  *(a1 + 15888) = 0;
  *(a1 + 15896) = 0;
  *(a1 + 15872) = 0u;
  __asm { FMOV            V0.2S, #5.0 }

  *(a1 + 15920) = _D0;
  *(a1 + 15928) = 0u;
  *(a1 + 15944) = 0;
  *(a1 + 15952) = 1065353216;
  sub_19B41E130((a1 + 15940), _D0);
  *(v4 + 1312) = 0;
  *(a1 + 15960) = 0;
  *(a1 + 15968) = 0u;
  *(a1 + 15984) = 0u;
  *(a1 + 16000) = 0u;
  *(a1 + 16016) = 0u;
  *(a1 + 16032) = 1065353216;
  sub_19B41E130((a1 + 16020), 0);
  *(v4 + 1392) = 0;
  *(a1 + 16040) = 0;
  *(a1 + 16048) = 0;
  *(v4 + 1408) = 0;
  *(a1 + 16056) = 0;
  *(v4 + 1416) = 0;
  *(v4 + 1420) = 0;
  *(a1 + 16072) = 0;
  *(a1 + 16080) = 1;
  *(v4 + 1440) = 1;
  *(v4 + 1442) = 0;
  sub_19B600060(a1 + 16088);
  *(a1 + 27000) = xmmword_19B7B7E30;
  _Q0 = sub_19B41E130((a1 + 27000), xmmword_19B7B7E30);
  *(a1 + 27048) = 0;
  *(a1 + 27016) = 0u;
  *(a1 + 27032) = 0u;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 27052) = _Q0.i64[0];
  *(a1 + 27060) = 1065353216;
  _Q0.i64[0] = 0x500000000;
  *(a1 + 27064) = 0x500000000;
  *(a1 + 27136) = 0u;
  *(a1 + 27152) = 0;
  *(a1 + 27160) = 0u;
  *(a1 + 27176) = 0u;
  *(a1 + 27192) = 0;
  *(a1 + 27196) = 1065353216;
  sub_19B41E130((a1 + 27184), _Q0);
  *(a1 + 27200) = xmmword_19B7B7E30;
  sub_19B41E130((a1 + 27200), xmmword_19B7B7E30);
  *(a1 + 27216) = 0xA00000000;
  *(a1 + 27544) = 0;
  *(a1 + 27552) = 0;
  sub_19B6AD648(a1 + 27560);
  *(a1 + 27752) = 0;
  *(a1 + 27764) = 0;
  *(a1 + 27768) = 0;
  *(a1 + 27776) = 0;
  sub_19B5B9DCC(a1 + 27784);
}

void sub_19B68F560(_Unwind_Exception *a1)
{
  sub_19B69ACA4((v1 + v2));
  sub_19B69AD20(v1 + 24);
  _Unwind_Resume(a1);
}

void sub_19B68F590(uint64_t result, unsigned int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(result + 12) != a2)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      v5 = *(result + 12);
      *buf = 67109376;
      v20 = v5;
      v21 = 1024;
      v22 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[RelDMService] Client mode changed from %d to %d", buf, 0xEu);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v7 = *(result + 12);
      v15 = 67109376;
      v16 = v7;
      v17 = 1024;
      v18 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDMService] Client mode changed from %d to %d", &v15, 14);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setClientMode(const CMRelDM::ClientMode, const BOOL)", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    *(result + 12) = a2;
    if (a2 >= 5)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v11 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v20 = a2;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "[RelDMService] Received unexpected client type: %d. Defaulting behavior to kVideo.", buf, 8u);
      }

      v12 = sub_19B420058();
      if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || (LOBYTE(v10) = *(v12 + 152), v10))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v15 = 67109120;
        v16 = a2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] Received unexpected client type: %d. Defaulting behavior to kVideo.", &v15);
        v14 = v13;
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::setClientMode(const CMRelDM::ClientMode, const BOOL)", "CoreLocation: %s\n", v13);
        if (v14 != buf)
        {
          free(v14);
        }

        LOBYTE(v10) = 0;
      }
    }

    else
    {
      v10 = 0x1010100uLL >> (8 * a2);
    }

    sub_19B68F90C(result, v10);
  }
}

void sub_19B68F90C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v76 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 16082);
  v5 = *(a1 + 16);
  if (v5 == a2)
  {
    v6 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 16) && (*(a1 + 37697) & 1) != 0)
  {
    v7 = *v4;
    if (!a2 && v5 == 1)
    {
      v6 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *v4;
  }

  v6 = *(a1 + 16083) | v7;
LABEL_10:
  v8 = *(a1 + 17);
  if (v8 == (v6 & 1))
  {
LABEL_11:
    if ((*(a1 + 17) & 1) == 0 && *(a1 + 16) != v2)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v9 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 16);
        *buf = 67109376;
        v63 = v10;
        v64 = 1024;
        v65 = v2;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "[RelDMService] Tracking behavior changed from %d to %d", buf, 0xEu);
      }

      v11 = (v6 ^ 1) & v8;
      v12 = sub_19B420058();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v13 = *(a1 + 16);
        v56[0] = 67109376;
        v56[1] = v13;
        *v57 = 1024;
        *&v57[2] = v2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDMService] Tracking behavior changed from %d to %d", v56, 14);
        v15 = v14;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v14);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      *(a1 + 16) = v2;
      sub_19B5BA034((a1 + 27784), v2);
      sub_19B713D50(a1 + 15920, v2);
      sub_19B60FCC8(a1 + 5856, v2);
      if (v11 && *(a1 + 48))
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v16 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_INFO, "[RelDMService] Notifying delayed tracking behavior update callback subscribers.", buf, 2u);
        }

        v17 = sub_19B420058();
        if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          LOWORD(v56[0]) = 0;
          LODWORD(v55) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDMService] Notifying delayed tracking behavior update callback subscribers.", v56, v55);
          v19 = v18;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v18);
          if (v19 != buf)
          {
            free(v19);
          }
        }

        v20 = *(a1 + 48);
        if (!v20)
        {
          sub_19B69ADA0();
        }

        (*(*v20 + 48))(v20);
      }
    }

    return;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v21 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    v22 = *(a1 + 17);
    v23 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v24 = *(a1 + 37697);
    }

    else
    {
      v24 = 0;
    }

    v25 = v4[1];
    v26 = *v4;
    *buf = 67110656;
    v63 = v22;
    v64 = 1024;
    v65 = v6 & 1;
    v66 = 1024;
    v67 = v23;
    v68 = 1024;
    v69 = v2;
    v70 = 1024;
    v71 = v24;
    v72 = 1024;
    v73 = v25;
    v74 = 1024;
    v75 = v26;
    _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_INFO, "[RelDMService] fDelaySetTrackingBehaviorState changed from %d to %d, current fTrackingBehavior: %d, requested trackingBehavior %d, getInSteadyStatePedestrian: %d, fInComplexTransitionState: %d, fDisableTracking: %d.", buf, 0x2Cu);
  }

  v27 = sub_19B420058();
  if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v28 = *(a1 + 16);
    v29 = v4[1];
    v30 = *v4;
    *v57 = 1024;
    *&v57[2] = v6 & 1;
    LOWORD(v58) = HIWORD(v2);
    HIWORD(v58) = 1024;
    LOWORD(v60) = 1024;
    HIWORD(v60) = v29;
    v61 = v30;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDMService] fDelaySetTrackingBehaviorState changed from %d to %d, current fTrackingBehavior: %d, requested trackingBehavior %d, getInSteadyStatePedestrian: %d, fInComplexTransitionState: %d, fDisableTracking: %d.", v56, 44, 67110656, *v57, v28, v58, v60);
    v32 = v31;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v31);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  *(a1 + 17) = v6 & 1;
  if ((v6 & 1) == 0)
  {
    if (*(a1 + 16) != v2)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v36 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v37 = *(a1 + 16);
        if (*(a1 + 16))
        {
          v38 = *(a1 + 37697);
        }

        else
        {
          v38 = 0;
        }

        v47 = v4[1];
        v48 = *v4;
        *buf = 67110144;
        v63 = v37;
        v64 = 1024;
        v65 = v2;
        v66 = 1024;
        v67 = v38;
        v68 = 1024;
        v69 = v47;
        v70 = 1024;
        v71 = v48;
        _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_INFO, "[RelDMService] The previously delayed tracking behavior update from %d to %d will now occur, getInSteadyStatePedestrian: %d, inComplexTransitionState: %d, fDisableTracking: %d.", buf, 0x20u);
      }

      v49 = sub_19B420058();
      if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        if (*(a1 + 16))
        {
          v50 = *(a1 + 37697);
        }

        else
        {
          v50 = 0;
        }

        v51 = v4[1];
        v52 = *v4;
        *v57 = 1024;
        *&v57[2] = v2;
        LOWORD(v58) = HIWORD(v51);
        HIWORD(v58) = 1024;
        v59 = v52;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDMService] The previously delayed tracking behavior update from %d to %d will now occur, getInSteadyStatePedestrian: %d, inComplexTransitionState: %d, fDisableTracking: %d.", v56, 32, 67110144, *v57, v50);
        v54 = v53;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v53);
        if (v54 != buf)
        {
          free(v54);
        }
      }
    }

    goto LABEL_11;
  }

  *(a1 + 18) = v2;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v33 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    v34 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v35 = *(a1 + 37697);
    }

    else
    {
      v35 = 0;
    }

    v39 = v4[1];
    v40 = *v4;
    *buf = 67110144;
    v63 = v34;
    v64 = 1024;
    v65 = v2;
    v66 = 1024;
    v67 = v35;
    v68 = 1024;
    v69 = v39;
    v70 = 1024;
    v71 = v40;
    _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_INFO, "[RelDMService] Delaying tracking behavior update from %d to %d, getInSteadyStatePedestrian: %d, inComplexTransitionState: %d, fDisableTracking: %d.", buf, 0x20u);
  }

  v41 = sub_19B420058();
  if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    if (*(a1 + 16))
    {
      v42 = *(a1 + 37697);
    }

    else
    {
      v42 = 0;
    }

    v43 = v4[1];
    v44 = *v4;
    *v57 = 1024;
    *&v57[2] = v2;
    LOWORD(v58) = HIWORD(v43);
    HIWORD(v58) = 1024;
    v59 = v44;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDMService] Delaying tracking behavior update from %d to %d, getInSteadyStatePedestrian: %d, inComplexTransitionState: %d, fDisableTracking: %d.", v56, 32, 67110144, *v57, v42);
    v46 = v45;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v45);
    if (v46 != buf)
    {
      free(v46);
    }
  }
}

uint64_t sub_19B690328(uint64_t a1, uint64_t a2)
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[RelDMService] Overwriting existing fDelayedTrackingBehaviorUpdateCallback", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v15[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDMService] Overwriting existing fDelayedTrackingBehaviorUpdateCallback", v15, 2);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::subscribeDelayedTrackingBehaviorUpdateCallback(std::function<void ()>)", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      v14 = buf;
      (*(*v8 + 24))(v8, buf);
    }

    else
    {
      v14 = (*(*v8 + 16))(v8);
    }
  }

  else
  {
    v14 = 0;
  }

  v9 = a1 + 24;
  if (buf != (a1 + 24))
  {
    v10 = v14;
    v11 = *(a1 + 48);
    if (v14 == buf)
    {
      if (v11 == v9)
      {
        (*(*v14 + 24))();
        (*(*v14 + 32))(v14);
        v14 = 0;
        (*(**(a1 + 48) + 24))(*(a1 + 48), buf);
        (*(**(a1 + 48) + 32))(*(a1 + 48));
        *(a1 + 48) = 0;
        v14 = buf;
        (*(v15[0] + 24))(v15, a1 + 24);
        (*(v15[0] + 32))(v15);
      }

      else
      {
        (*(*v14 + 24))();
        (*(*v14 + 32))(v14);
        v14 = *(a1 + 48);
      }

      *(a1 + 48) = v9;
    }

    else if (v11 == v9)
    {
      (*(*v11 + 24))(*(a1 + 48), buf);
      (*(**(a1 + 48) + 32))(*(a1 + 48));
      *(a1 + 48) = v14;
      v14 = buf;
    }

    else
    {
      v14 = *(a1 + 48);
      *(a1 + 48) = v10;
    }
  }

  return sub_19B69AD20(buf);
}

void sub_19B690778(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_19B45E110(a1);
  }

  _Unwind_Resume(a1);
}

void sub_19B690784(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *(a1 + 5216) = 0;
    *(a1 + 5221) = 0;
    *(a1 + 5208) = 0x3C002D0000000000;
    *(a1 + 5192) = 0;
    *(a1 + 5200) = 0;
    *(a1 + 960) = 0;
    *(a1 + 2168) = 0;
    *(a1 + 3776) = 0;
    *(a1 + 116) = 0;
    *(a1 + 736) = 0u;
    *(a1 + 752) = 0;
    *(a1 + 5424) = 0u;
    *(a1 + 724) = 1;
    *(a1 + 4584) = 0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v3 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[RelDMService] Clearing src buffers.", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v7[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Clearing src buffers.", v7, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::clearAll(BOOL)", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  *(a1 + 5468) = 0u;
  *(a1 + 5440) = 0;
  *(a1 + 5484) = 0;
  *(a1 + 5456) = 1;
  sub_19B60FED8(a1 + 5856, 0);
  sub_19B5B9FB8((a1 + 27784));
}

void sub_19B690DB4(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 68) = 0;
  *(a1 + 73) = 0;
  *(a1 + 108) = 1;
  *(a1 + 112) = 1065749138;
  *(a1 + 176) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (a2)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    *buf = 0u;
    *&buf[12] = 1065353216;
    sub_19B41E130(buf, 0);
    v10 = xmmword_19B7B7E30;
    sub_19B41E130(&v10, xmmword_19B7B7E30);
    v11 = 0uLL;
    *(a1 + 48) = 0;
    v3 = v10;
    *a1 = *buf;
    *(a1 + 16) = v3;
    *(a1 + 32) = v11;
    *(a1 + 108) = 0;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v4 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[PerceptualFilter] resetting", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v8[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[PerceptualFilter] resetting", v8, 2);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::reset(BOOL)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }
}

void sub_19B690FE4(_DWORD *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1[14] != a2)
  {
    a1[14] = a2;
    if (!a2)
    {
      a1[6616] = 0;
      a1[6622] = 0;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v3 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[14];
      *buf = 67240192;
      v11 = v4;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[RelDMService] Setting scheme to %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v6 = a1[14];
      v9[0] = 67240192;
      v9[1] = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Setting scheme to %{public}d", v9, 8);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setScheme(TrackingScheme)", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }
}

void sub_19B6911D0(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 37656) != a2)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 37656))
      {
        v5 = "true";
      }

      else
      {
        v5 = "false";
      }

      if (a2)
      {
        v6 = "true";
      }

      else
      {
        v6 = "false";
      }

      *buf = 136315394;
      v18 = v5;
      v19 = 2080;
      v20 = v6;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[RelDMService] Online headToHeadsetTransformationEstimation changed from: %s  to:%s", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      if (*(a1 + 37656))
      {
        v9 = "true";
      }

      else
      {
        v9 = "false";
      }

      if (a2)
      {
        v10 = "true";
      }

      else
      {
        v10 = "false";
      }

      v13 = 136315394;
      v14 = v9;
      v15 = 2080;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Online headToHeadsetTransformationEstimation changed from: %s  to:%s", &v13, 22);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::enableOnlineHeadToHeadsetTransformationEstimator(BOOL)", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    *(a1 + 37656) = a2;
    if ((a2 & 1) == 0)
    {
      sub_19B78F14C(a1 + 33904, v8);
    }
  }
}

void sub_19B69141C(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 16082) & 1) == 0)
  {
    *(a1 + 16082) = 1;
    sub_19B690B4C(a1, 1);
  }
}

void sub_19B6915DC(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16082) == 1)
  {
    *(a1 + 16082) = 0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v1 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "[RelDMService] Tracking is re-enabled.", buf, 2u);
    }

    v2 = sub_19B420058();
    if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v5[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Tracking is re-enabled.", v5, 2);
      v4 = v3;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::enableTracking()", "CoreLocation: %s\n", v3);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }
}

BOOL sub_19B691794(uint64_t a1, unint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 16082) & 1) == 0)
  {
    v7 = 0;
    *(a1 + 5272) = 0;
    return v7;
  }

  if (*(a1 + 724) == 1)
  {
    sub_19B5BE7E0(a1 + 724);
  }

  v4 = *(a1 + 732);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  if (v4 >= 0.00005)
  {
    *(a1 + 5272) = a2;
    v5 = a2;
    if (a2)
    {
      goto LABEL_8;
    }

LABEL_11:
    v6 = 3.4028e38;
    goto LABEL_12;
  }

  v5 = *(a1 + 5272);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_8:
  v6 = (a2 - v5) * 0.000001;
LABEL_12:
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v8 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_19B7399E4(a1 + 5232, a2);
    if (*(a1 + 724) == 1)
    {
      sub_19B5BE7E0(a1 + 724);
    }

    v10 = *(a1 + 732);
    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    *buf = 134218496;
    v27 = v9;
    v28 = 2048;
    v29 = v10;
    v30 = 2048;
    v31 = v6;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "[RelDMService] moveDuration, %.3f, var, %.4f, timeSinceAccelNonStatic, %.3f", buf, 0x20u);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v12 = off_1EAFE29A0;
    v13 = sub_19B7399E4(a1 + 5232, a2);
    if (*(a1 + 724) == 1)
    {
      sub_19B5BE7E0(a1 + 724);
    }

    v14 = *(a1 + 732);
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    v20 = 134218496;
    v21 = v13;
    v22 = 2048;
    v23 = v14;
    v24 = 2048;
    v25 = v6;
    LODWORD(v19) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v12, 2, "[RelDMService] moveDuration, %.3f, var, %.4f, timeSinceAccelNonStatic, %.3f", COERCE_DOUBLE(&v20), v19);
    v16 = v15;
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::isSrcInMovingStateWhenTrackingDisabled(uint64_t)", "CoreLocation: %s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  return sub_19B7399E4(a1 + 5232, a2) >= 0.4 && v6 <= 0.4;
}

uint64_t sub_19B691AC8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v76 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 5800);
  if (v8)
  {
    v9 = v8 >= a3;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v10 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v11 = 0;
      v12 = *(a1 + 5800);
      v13 = 0.0;
      do
      {
        v13 = v13 + (*(a2 + v11) * *(a2 + v11));
        v11 += 4;
      }

      while (v11 != 12);
      v14 = *(a2 + 48);
      *buf = 134219008;
      v67 = v12;
      v68 = 2048;
      v69 = a3;
      v70 = 2048;
      v71 = (sqrtf(v13) * 57.296);
      v72 = 1024;
      v73 = v14;
      v74 = 2048;
      v75 = ((a3 - *&v12) / 1000000.0);
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "[RelDMService] ReEnable/SitStandFSM: ts, %llu, inputTS, %llu, rot, %.3f, qMode, %d, staticDuration, %.3f", buf, 0x30u);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v16 = 0;
      v17 = *(a1 + 5800);
      v18 = 0.0;
      do
      {
        v18 = v18 + (*(a2 + v16) * *(a2 + v16));
        v16 += 4;
      }

      while (v16 != 12);
      v19 = *(a2 + 48);
      *v59 = 134219008;
      *&v59[4] = v17;
      *&v59[12] = 2048;
      *&v59[14] = a3;
      v60 = 2048;
      v61 = (sqrtf(v18) * 57.296);
      v62 = 1024;
      v63 = v19;
      v64 = 2048;
      v65 = ((a3 - v17) / 1000000.0);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDMService] ReEnable/SitStandFSM: ts, %llu, inputTS, %llu, rot, %.3f, qMode, %d, staticDuration, %.3f", v59, 48);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::isAuxInStaticState(const IMUData &, const uint64_t, const uint64_t)", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  v22 = *(a1 + 5792);
  if (v22)
  {
    v23 = v22 + 1000000 >= a3;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    *(a1 + 5800) = 0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v24 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v25 = ((a3 - *(a1 + 5792)) / 1000000.0);
      *buf = 134217984;
      v67 = v25;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEBUG, "[RelDMService] large gap in aux data, %.3f", buf, 0xCu);
    }

    v26 = sub_19B420058();
    if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v27 = ((a3 - *(a1 + 5792)) / 1000000.0);
      *v59 = 134217984;
      *&v59[4] = v27;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDMService] large gap in aux data, %.3f", COERCE_DOUBLE(v59));
      v29 = v28;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::isAuxInStaticState(const IMUData &, const uint64_t, const uint64_t)", "CoreLocation: %s\n", v28);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }

  v30 = 0;
  v31 = *(a1 + 5792);
  *(a1 + 5792) = a3;
  v32 = 0.0;
  do
  {
    v32 = v32 + (*(a2 + v30) * *(a2 + v30));
    v30 += 4;
  }

  while (v30 != 12);
  if (a3 <= v31 || v31 == 0)
  {
    v34 = 0;
  }

  else
  {
    v34 = a3 - v31;
  }

  if (sqrtf(v32) > 0.34907)
  {
    ++*(a1 + 5808);
  }

  v35 = *(a2 + 48);
  if (!v35 || *(a1 + 5808) >= 3u)
  {
    if (*(a1 + 16082) == 1 && *(a1 + 5800))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v36 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_DEBUG, "[RelDMService] ReEnable/SitStandFSM: movement terminated static period.", buf, 2u);
      }

      v37 = sub_19B420058();
      if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        *v59 = 0;
        LODWORD(v58) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDMService] ReEnable/SitStandFSM: movement terminated static period.", v59, v58);
        v39 = v38;
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::isAuxInStaticState(const IMUData &, const uint64_t, const uint64_t)", "CoreLocation: %s\n", v38);
        if (v39 != buf)
        {
          free(v39);
        }
      }
    }

    result = 0;
    *(a1 + 5800) = 0;
    *(a1 + 5808) = 0;
    return result;
  }

  v41 = *(a1 + 5800);
  if (v41)
  {
    if (v35 == 2)
    {
      v41 += v34;
      *(a1 + 5800) = v41;
    }

    if (v41 + a4 < a3)
    {
      if (*(a1 + 16082) == 1)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v42 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          v43 = ((a3 - *(a1 + 5800)) / 0xF4240);
          *buf = 134349056;
          v67 = v43;
          _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_DEFAULT, "[RelDMService] ReEnable: reached staticDuration, %{public}.3f", buf, 0xCu);
        }

        v44 = sub_19B420058();
        if (*(v44 + 160) <= 1 && *(v44 + 164) <= 1 && *(v44 + 168) <= 1 && !*(v44 + 152))
        {
          goto LABEL_107;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v45 = ((a3 - *(a1 + 5800)) / 0xF4240);
        *v59 = 134349056;
        *&v59[4] = v45;
        LODWORD(v58) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] ReEnable: reached staticDuration, %{public}.3f", v59, v58, *v59, *&v59[8]);
      }

      else
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v53 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v54 = (a3 - *(a1 + 5800)) / 0xF4240;
          *buf = 134349056;
          v67 = v54;
          _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_DEBUG, "[RelDMService] SitStandFSM: reached staticDuration, %{public}.3f", buf, 0xCu);
        }

        v55 = sub_19B420058();
        if (*(v55 + 160) <= 1 && *(v55 + 164) <= 1 && *(v55 + 168) <= 1 && !*(v55 + 152))
        {
          goto LABEL_107;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v56 = ((a3 - *(a1 + 5800)) / 0xF4240);
        *v59 = 134349056;
        *&v59[4] = v56;
        LODWORD(v58) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDMService] SitStandFSM: reached staticDuration, %{public}.3f", v59, v58, *v59, *&v59[8]);
      }

      v57 = v46;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::isAuxInStaticState(const IMUData &, const uint64_t, const uint64_t)", "CoreLocation: %s\n", v46);
      if (v57 != buf)
      {
        free(v57);
      }

LABEL_107:
      *(a1 + 5808) = 0;
      return 1;
    }
  }

  else
  {
    *(a1 + 5800) = a3;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v47 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    v48 = *(a1 + 5800);
    *buf = 134217984;
    v67 = v48;
    _os_log_impl(&dword_19B41C000, v47, OS_LOG_TYPE_DEBUG, "[RelDMService] ReEnable/SitStandFSM: gettingStatic, ts, %llu", buf, 0xCu);
  }

  v49 = sub_19B420058();
  if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v50 = *(a1 + 5800);
    *v59 = 134217984;
    *&v59[4] = v50;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDMService] ReEnable/SitStandFSM: gettingStatic, ts, %llu", v59);
    v52 = v51;
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::isAuxInStaticState(const IMUData &, const uint64_t, const uint64_t)", "CoreLocation: %s\n", v51);
    if (v52 != buf)
    {
      free(v52);
    }
  }

  return 0;
}

uint64_t sub_19B6925D4(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  if (!*(a1 + 3778))
  {
    return 1;
  }

  v5 = a1 + 3784;
  v6 = *(a1 + 3778) + *(a1 + 3776) - 1;
  v7 = *(a1 + 3780);
  if (v6 < v7)
  {
    v7 = 0;
  }

  v8 = *(v5 + 8 * (v6 - v7));
  if (v8 >= a2)
  {
    if (v8 - a2 <= 0x9C3)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v21 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(a1 + 3776) + *(a1 + 3778) - 1;
        v23 = *(a1 + 3780);
        if (v22 < v23)
        {
          v23 = 0;
        }

        v24 = *(v5 + 8 * (v22 - v23));
        *buf = 134349312;
        v54 = a2;
        v55 = 2050;
        v56 = v24;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEBUG, "[RelDMService] Src IMU timestamp went backwards. curr=%{public}llu, last=%{public}llu", buf, 0x16u);
      }

      v25 = sub_19B420058();
      if (*(v25 + 160) <= 1 && *(v25 + 164) <= 1 && *(v25 + 168) <= 1 && !*(v25 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v26 = *(a1 + 3776) + *(a1 + 3778) - 1;
      v27 = *(a1 + 3780);
      if (v26 < v27)
      {
        v27 = 0;
      }

      v28 = *(v5 + 8 * (v26 - v27));
      *v50 = 134349312;
      *&v50[4] = a2;
      *&v50[12] = 2050;
      *&v50[14] = v28;
      v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDMService] Src IMU timestamp went backwards. curr=%{public}llu, last=%{public}llu", v50, 22);
      v31 = v30;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::checkSrcIMUTimestamp(uint64_t, BOOL &) const", "CoreLocation: %s\n", v29);
      goto LABEL_69;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v32 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 3776) + *(a1 + 3778) - 1;
      v34 = *(a1 + 3780);
      if (v33 < v34)
      {
        v34 = 0;
      }

      v35 = *(v5 + 8 * (v33 - v34));
      *buf = 134349312;
      v54 = a2;
      v55 = 2050;
      v56 = v35;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_ERROR, "[RelDMService] Src IMU sample time went backwards. curr=%{public}llu, last=%{public}llu", buf, 0x16u);
    }

    v36 = sub_19B420058();
    if ((*(v36 + 160) & 0x80000000) != 0 && (*(v36 + 164) & 0x80000000) != 0 && (*(v36 + 168) & 0x80000000) != 0 && !*(v36 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v37 = *(a1 + 3776) + *(a1 + 3778) - 1;
    v38 = *(a1 + 3780);
    if (v37 < v38)
    {
      v38 = 0;
    }

    v39 = *(v5 + 8 * (v37 - v38));
    *v50 = 134349312;
    *&v50[4] = a2;
    *&v50[12] = 2050;
    *&v50[14] = v39;
    v41 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] Src IMU sample time went backwards. curr=%{public}llu, last=%{public}llu", v50, 22, *v50, *&v50[8], v51);
LABEL_68:
    v31 = v40;
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMRelDMService::checkSrcIMUTimestamp(uint64_t, BOOL &) const", "CoreLocation: %s\n", v41);
LABEL_69:
    if (v31 != buf)
    {
      free(v31);
    }

    return 0;
  }

  v9 = a2 - v8;
  if (a2 - v8 < 0x1D4D)
  {
    return 1;
  }

  if (v9 <= 0x4E20)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v10 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 3776) + *(a1 + 3778) - 1;
      v12 = *(a1 + 3780);
      if (v11 < v12)
      {
        v12 = 0;
      }

      v13 = *(v5 + 8 * (v11 - v12));
      *buf = 134350080;
      v54 = v13;
      v55 = 2050;
      v56 = a2;
      v57 = 1026;
      v58 = 7500;
      v59 = 2050;
      v60 = v9;
      v61 = 1026;
      v62 = 20000;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "[RelDMService] Src IMU sample time interval is large. last=%{public}llu, new=%{public}llu, %{public}u < dt=%{public}llu <= %{public}u", buf, 0x2Cu);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v15 = *(a1 + 3776) + *(a1 + 3778) - 1;
      v16 = *(a1 + 3780);
      if (v15 < v16)
      {
        v16 = 0;
      }

      v17 = *(v5 + 8 * (v15 - v16));
      *v50 = 134350080;
      *&v50[4] = v17;
      *&v50[12] = 2050;
      *&v50[14] = a2;
      *&v50[22] = 1026;
      LODWORD(v51) = 7500;
      WORD2(v51) = 2050;
      *(&v51 + 6) = v9;
      HIWORD(v51) = 1026;
      v52 = 20000;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDMService] Src IMU sample time interval is large. last=%{public}llu, new=%{public}llu, %{public}u < dt=%{public}llu <= %{public}u", v50, 44);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::checkSrcIMUTimestamp(uint64_t, BOOL &) const", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    return 1;
  }

  *a3 = 1;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v42 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
  {
    v43 = *(a1 + 3776) + *(a1 + 3778) - 1;
    v44 = *(a1 + 3780);
    if (v43 < v44)
    {
      v44 = 0;
    }

    v45 = *(v5 + 8 * (v43 - v44));
    *buf = 134349824;
    v54 = v45;
    v55 = 2050;
    v56 = a2;
    v57 = 1026;
    v58 = 7500;
    v59 = 2050;
    v60 = v9;
    _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_ERROR, "[RelDMService] Src IMU sample time interval is unexpectedly large. last=%{public}lluus , new=%{public}lluus, %{public}u < dt=%{public}lluus", buf, 0x26u);
  }

  v46 = sub_19B420058();
  if ((*(v46 + 160) & 0x80000000) == 0 || (*(v46 + 164) & 0x80000000) == 0 || (*(v46 + 168) & 0x80000000) == 0 || *(v46 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v47 = *(a1 + 3776) + *(a1 + 3778) - 1;
    v48 = *(a1 + 3780);
    if (v47 < v48)
    {
      v48 = 0;
    }

    v49 = *(v5 + 8 * (v47 - v48));
    *v50 = 134349824;
    *&v50[4] = v49;
    *&v50[12] = 2050;
    *&v50[14] = a2;
    *&v50[22] = 1026;
    LODWORD(v51) = 7500;
    WORD2(v51) = 2050;
    *(&v51 + 6) = v9;
    v41 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] Src IMU sample time interval is unexpectedly large. last=%{public}lluus , new=%{public}lluus, %{public}u < dt=%{public}lluus", v50, 38, *v50, *&v50[8], v51);
    goto LABEL_68;
  }

  return 0;
}

uint64_t sub_19B692DB8(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16088) == 1)
  {
    v3 = *(a1 + 5424);
    if (v3)
    {
      if ((v3 + 1000000.0) < a2)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v5 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          v6 = *(a1 + 5424);
          *buf = 134349568;
          v19 = a2;
          v20 = 2050;
          v21 = v6;
          v22 = 2050;
          v23 = (a2 - v6) * 0.000001;
          _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "[RelDMService] Unexpectedly large time interval since last aux IMU sample, resetting. timestamp, %{public}llu, fLastAuxGyroTimestamp, %{public}llu, dt, %{public}f s", buf, 0x20u);
        }

        v7 = sub_19B420058();
        if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v8 = *(a1 + 5424);
          v12 = 134349568;
          v13 = a2;
          v14 = 2050;
          v15 = v8;
          v16 = 2050;
          v17 = (a2 - v8) * 0.000001;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] Unexpectedly large time interval since last aux IMU sample, resetting. timestamp, %{public}llu, fLastAuxGyroTimestamp, %{public}llu, dt, %{public}f s", &v12, 32);
          v10 = v9;
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMRelDMService::checkForLargeAuxDataGap(const uint64_t)", "CoreLocation: %s\n", v9);
          if (v10 != buf)
          {
            free(v10);
          }
        }

        sub_19B690B4C(a1, 1);
      }
    }
  }

  return 0;
}

void sub_19B693044(float32x2_t *a1, _OWORD *a2, float32x2_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  sub_19B739578(&a1[654], a6);
  sub_19B692DB8(a1, a6);
  v23 = 0;
  if (sub_19B6925D4(a1, a6, &v23))
  {
    sub_19B6931F4(a1 + 651, a3);
    v12 = a1[649].i32[0];
    if ((v12 & 1) == 0)
    {
      sub_19B5BE720(&a1[14] + 2, a3);
      v13 = 0;
      v14 = 0.0;
      do
      {
        v14 = v14 + (a3->f32[v13] * a3->f32[v13]);
        ++v13;
      }

      while (v13 != 3);
      v22 = sqrtf(v14);
      sub_19B5BC034(&a1[90] + 4, &v22);
      sub_19B5BE720(&a1[573], a5);
      v12 = 0;
    }

    a1[649].i32[0] = v12 + 1;
    sub_19B5BE720(&a1[120], a4);
    sub_19B6932D8(&a1[271], a2);
    v15 = a1[472].u16[1];
    v16 = a1[472].u32[1];
    v17 = a1[472].u16[0];
    if (v17 + v15 >= v16)
    {
      v18 = a1[472].u32[1];
    }

    else
    {
      v18 = 0;
    }

    a1[v17 + v15 - v18 + 473] = a6;
    if (v16 <= v15)
    {
      v19 = v17 + 1;
      if (v19 >= v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = 0;
      }

      a1[472].i16[0] = v19 - v20;
    }

    else
    {
      LOWORD(v15) = v15 + 1;
      a1[472].i16[1] = v15;
      LODWORD(v15) = v15;
    }

    v21 = a1[650];
    if (v21)
    {
      if (v16 == v15)
      {
        a1[650] = (*&v21 - 1);
      }
    }
  }

  else if (v23 == 1)
  {

    sub_19B690784(a1, 1);
  }
}

float32x2_t *sub_19B6931F4(float32x2_t *result, float32x2_t *a2)
{
  v2 = result->i32[0];
  v3 = result->i32[0] + 1;
  result->i32[0] = v3;
  if (result[2].i8[4] == 1)
  {
    v4 = 1.0 / v3;
    if (!v3)
    {
      v4 = 1.0;
    }

    if (v4 <= result->f32[1])
    {
      v4 = result->f32[1];
    }

    v5 = result[2].f32[0];
    v6 = v4 * (v5 - a2[1].f32[0]);
    result[1] = vsub_f32(result[1], vmul_n_f32(vsub_f32(result[1], *a2), v4));
    v7 = v5 - v6;
  }

  else
  {
    v8 = a2[1].f32[0];
    if (v2 > 2)
    {
      v10 = result->f32[1];
      v11 = result[2].f32[0];
      result[1] = vsub_f32(result[1], vmul_n_f32(vsub_f32(result[1], *a2), v10));
      v7 = v11 - (v10 * (v11 - v8));
    }

    else
    {
      v9 = 1.0 / v3;
      v7 = v9 * ((result[2].f32[0] * v2) + v8);
      result[1] = vmul_n_f32(vadd_f32(vmul_n_f32(result[1], v2), *a2), v9);
    }
  }

  result[2].f32[0] = v7;
  return result;
}

unsigned __int16 *sub_19B6932D8(unsigned __int16 *result, _OWORD *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  *&result[8 * (v3 - v2) + 4] = *a2;
  v4 = result[1];
  v5 = *(result + 1);
  if (v5 <= v4)
  {
    v6 = *result + 1;
    if (v6 < v5)
    {
      LOWORD(v5) = 0;
    }

    *result = v6 - v5;
  }

  else
  {
    result[1] = v4 + 1;
  }

  return result;
}

void sub_19B693338(uint64_t a1, float32x2_t *a2, float *a3, int a4, unint64_t a5, __n128 a6)
{
  v6 = a5;
  v8 = a6.n128_f32[0];
  v238 = *MEMORY[0x1E69E9840];
  v11 = (a1 + 33824);
  v12 = a1 + 15956;
  if (*(a1 + 37656) == 1 && *(a1 + 33920) == 1)
  {
    v13 = a4;
    a6.n128_u32[0] = 1127481344;
    v15 = sub_19B78FE84(a1 + 33904, a2, a5, a6);
    v16 = sub_19B651B48((a1 + 33904), v15);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    *&v175 = __PAIR64__(LODWORD(v17), LODWORD(v16));
    *(&v175 + 1) = __PAIR64__(LODWORD(v21), LODWORD(v19));
    v23 = sub_19B606534(a1 + 80);
    v25.f32[0] = sub_19B66BFF4(v23, v24);
    v187 = v25.f32[0];
    *v188 = v26;
    *&v188[4] = v27;
    *&v188[8] = v28;
    *buf = sub_19B66BF70(&v175, &v187, v25);
    *&buf[4] = v29;
    *&buf[8] = v30;
    *&buf[12] = v31;
    v32 = sub_19B66C31C(buf);
    v33 = 0;
    v184.i64[0] = __PAIR64__(v34, LODWORD(v32));
    v184.i32[2] = v35;
    v36 = 0.0;
    do
    {
      v36 = v36 + (v184.f32[v33] * v184.f32[v33]);
      ++v33;
    }

    while (v33 != 3);
    v173 = sqrtf(v36);
    if (v173 > 0.017453)
    {
      v37 = sub_19B66C070((a1 + 37640));
      v39 = v38;
      v170 = v41;
      v171 = v40;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v42 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v167 = *sub_19B606534(a1 + 80);
        v165 = *(sub_19B606534(a1 + 80) + 4);
        v160 = *(sub_19B606534(a1 + 80) + 8);
        v43 = *(sub_19B606534(a1 + 80) + 12);
        v159 = v37;
        v161 = v39;
        v162 = v171;
        *v44.i64 = v173;
        v163 = v170;
        v164 = v173;
        v45 = sub_19B7900DC((a1 + 33904), v44);
        *buf = 134352384;
        *&buf[4] = v167;
        *&buf[12] = 2050;
        *&buf[14] = v165;
        v214 = 2050;
        v215 = v160;
        v216 = 2050;
        v217 = v43;
        v218 = 2050;
        v219 = v16;
        v220 = 2050;
        v221 = v18;
        v222 = 2050;
        v223 = v20;
        v224 = 2050;
        v225 = v22;
        v226 = 2050;
        v227 = v37;
        v228 = 2050;
        v229 = v39;
        v230 = 2050;
        v231 = v171;
        v232 = 2050;
        v233 = v170;
        v234 = 2050;
        v235 = v173;
        v236 = 2050;
        v237 = v45;
        _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_DEBUG, "[RelDMService] Head to Headset attitude updated. Previous q_bf: %{public}.6f %{public}.6f %{public}.6f %{public}.6f , New q_bf: %{public}.6f %{public}.6f %{public}.6f %{public}.6f, Default q_bf: %{public}.6f %{public}.6f %{public}.6f %{public}.6f, angle between previous: %{public}.2f deg, angle between default: %{public}.2f deg", buf, 0x8Eu);
      }

      v46 = sub_19B420058();
      if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
      {
        bzero(buf, 0x65CuLL);
        v169 = v8;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v47 = off_1EAFE29A0;
        v168 = *sub_19B606534(a1 + 80);
        v166 = *(sub_19B606534(a1 + 80) + 4);
        v164 = *(sub_19B606534(a1 + 80) + 8);
        v48 = *(sub_19B606534(a1 + 80) + 12);
        v49 = *&v175;
        v50 = *(&v175 + 1);
        v51 = *(&v175 + 2);
        v52 = *(&v175 + 3);
        *v53.i64 = v173;
        v54 = sub_19B7900DC((a1 + 33904), v53);
        v187 = 3.9137e-34;
        *v188 = v168;
        *&v188[8] = 2050;
        *&v188[10] = v166;
        v189 = 2050;
        v190 = v164;
        v191 = 2050;
        v192 = v48;
        v193 = 2050;
        v194 = v49;
        v195 = 2050;
        v196 = v50;
        v197 = 2050;
        v198 = v51;
        v199 = 2050;
        v200 = v52;
        v201 = 2050;
        v202 = v37;
        v203 = 2050;
        v204 = v39;
        v205 = 2050;
        v206 = v171;
        v207 = 2050;
        v208 = v170;
        v209 = 2050;
        v210 = v173;
        v211 = 2050;
        v212 = v54;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v47, 2, "[RelDMService] Head to Headset attitude updated. Previous q_bf: %{public}.6f %{public}.6f %{public}.6f %{public}.6f , New q_bf: %{public}.6f %{public}.6f %{public}.6f %{public}.6f, Default q_bf: %{public}.6f %{public}.6f %{public}.6f %{public}.6f, angle between previous: %{public}.2f deg, angle between default: %{public}.2f deg", &v187, 142);
        v56 = v55;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v55);
        if (v56 != buf)
        {
          free(v56);
        }

        v8 = v169;
      }
    }

    v57 = v175;
    *(a1 + 92) = v175;
    *(a1 + 108) = 1;
    *(a1 + 15940) = v57;
    *v12 = 1;
    *(a1 + 27000) = v57;
    v6 = a5;
    a4 = v13;
  }

  if (*(v12 + 126) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v58 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v58, OS_LOG_TYPE_INFO, "[RelDMService] Tracking will be re-enabled from getting anchor.", buf, 2u);
    }

    v59 = sub_19B420058();
    if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v187) = 0;
      LODWORD(v157) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDMService] Tracking will be re-enabled from getting anchor.", &v187, *&v157);
      v61 = v60;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v60);
      if (v61 != buf)
      {
        free(v61);
      }
    }

    *(v12 + 130) = 1;
    return;
  }

  if (!*(a1 + 56) || *(a1 + 108) != 1)
  {
    return;
  }

  v174 = a4;
  if (sub_19B6137FC((a1 + 5856)))
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v62 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v6;
      _os_log_impl(&dword_19B41C000, v62, OS_LOG_TYPE_DEFAULT, "[RelDMService][feedAnchor] anchor is SKIPPED, timestamp: %llu", buf, 0xCu);
    }

    v63 = sub_19B420058();
    if (*(v63 + 160) > 1 || *(v63 + 164) > 1 || *(v63 + 168) > 1 || *(v63 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v187 = 3.852e-34;
      *v188 = v6;
      v65 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService][feedAnchor] anchor is SKIPPED, timestamp: %llu", &v187);
LABEL_48:
      v66 = v64;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v65);
LABEL_49:
      if (v66 != buf)
      {
        free(v66);
      }

      return;
    }

    return;
  }

  v67 = *(v12 + 132);
  if (v67 == 1)
  {
    v68 = *(a1 + 5424);
    if (v68)
    {
      if (v68 + 250000 < v6)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v69 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          v70 = *(a1 + 5424);
          *buf = 134349312;
          *&buf[4] = v6;
          *&buf[12] = 2050;
          *&buf[14] = v70;
          _os_log_impl(&dword_19B41C000, v69, OS_LOG_TYPE_ERROR, "[RelDMService] anchor data is far ahead of IMU: anchor, %{public}llu, auxIMU, %{public}llu", buf, 0x16u);
        }

        v71 = sub_19B420058();
        if ((*(v71 + 160) & 0x80000000) == 0 || (*(v71 + 164) & 0x80000000) == 0 || (*(v71 + 168) & 0x80000000) == 0 || *(v71 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v72 = *(a1 + 5424);
          v187 = 3.9123e-34;
          *v188 = v6;
          *&v188[8] = 2050;
          *&v188[10] = v72;
          LODWORD(v157) = 22;
          v73 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] anchor data is far ahead of IMU: anchor, %{public}llu, auxIMU, %{public}llu", &v187, *&v157);
          v66 = v74;
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v73);
          goto LABEL_49;
        }

        return;
      }
    }
  }

  v172 = v12 + 132;
  if (*(v12 + 124) == 1 && *(a1 + 56) != 1)
  {
    *(v12 + 124) = 256;
    if (v67)
    {
      sub_19B604800(v172, a1 + 80, 1);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v75 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v75, OS_LOG_TYPE_DEFAULT, "[RelDMService] Entering 2-IMU with anchored tracking.", buf, 2u);
      }

      v76 = sub_19B420058();
      if (*(v76 + 160) > 1 || *(v76 + 164) > 1 || *(v76 + 168) > 1 || *(v76 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        LOWORD(v187) = 0;
        LODWORD(v157) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Entering 2-IMU with anchored tracking.", &v187, *&v157);
        v78 = v77;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v77);
        if (v78 != buf)
        {
          free(v78);
        }
      }
    }
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v79 = off_1EAFE29A0;
  v80 = v8;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    v81 = *a3;
    v82 = a3[1];
    v83 = a3[2];
    v84 = a2->f32[0];
    v85 = a2->f32[1];
    v86 = a2[1].f32[0];
    v87 = a2[1].f32[1];
    *buf = 134220032;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    v214 = 2048;
    v215 = v81;
    v216 = 2048;
    v217 = v82;
    v218 = 2048;
    v219 = v83;
    v220 = 2048;
    v221 = v84;
    v222 = 2048;
    v223 = v85;
    v224 = 2048;
    v225 = v86;
    v226 = 2048;
    v227 = v87;
    _os_log_impl(&dword_19B41C000, v79, OS_LOG_TYPE_DEFAULT, "[RelDMService][feedAnchor][AnchorBeforeTransform], timestamp: %llu, lidAngleDeg: %.1f, _r_fc: (%.2f, %.2f, %.2f), _q_cf: (%.3f, %.3f, %.3f, %.3f)", buf, 0x5Cu);
  }

  v88 = sub_19B420058();
  if (*(v88 + 160) > 1 || *(v88 + 164) > 1 || *(v88 + 168) > 1 || *(v88 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v89 = *a3;
    v90 = a3[1];
    v91 = a3[2];
    v92 = a2->f32[0];
    v93 = a2->f32[1];
    v94 = a2[1].f32[0];
    v95 = a2[1].f32[1];
    v187 = 3.8529e-34;
    *v188 = v6;
    *&v188[8] = 2048;
    *&v188[10] = v8;
    v189 = 2048;
    v190 = v89;
    v191 = 2048;
    v192 = v90;
    v193 = 2048;
    v194 = v91;
    v195 = 2048;
    v196 = v92;
    v197 = 2048;
    v198 = v93;
    v199 = 2048;
    v200 = v94;
    v201 = 2048;
    v202 = v95;
    LODWORD(v157) = 92;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService][feedAnchor][AnchorBeforeTransform], timestamp: %llu, lidAngleDeg: %.1f, _r_fc: (%.2f, %.2f, %.2f), _q_cf: (%.3f, %.3f, %.3f, %.3f)", &v187, v157, v158, v159, v160, v161, v162, v163, v164);
    v97 = v96;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v96);
    if (v97 != buf)
    {
      free(v97);
    }
  }

  v185 = -COERCE_DOUBLE(0x8000000080000000);
  v186 = 0;
  sub_19B66C264(&v184, &v185);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v98 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = v184.f32[0];
    *&buf[12] = 2048;
    *&buf[14] = v184.f32[1];
    v214 = 2048;
    v215 = v184.f32[2];
    v216 = 2048;
    v217 = v184.f32[3];
    _os_log_impl(&dword_19B41C000, v98, OS_LOG_TYPE_DEFAULT, "[SourceAnchorTransform] q_sc: [%.3f, %.3f, %.3f, %.3f] ", buf, 0x2Au);
  }

  v99 = sub_19B420058();
  if (*(v99 + 160) > 1 || *(v99 + 164) > 1 || *(v99 + 168) > 1 || *(v99 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v187 = 3.8523e-34;
    *v188 = v184.f32[0];
    *&v188[8] = 2048;
    *&v188[10] = v184.f32[1];
    v189 = 2048;
    v190 = v184.f32[2];
    v191 = 2048;
    v192 = v184.f32[3];
    LODWORD(v157) = 42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[SourceAnchorTransform] q_sc: [%.3f, %.3f, %.3f, %.3f] ", COERCE_DOUBLE(&v187), v157, v158, v159);
    v102 = v101;
    sub_19B6BB7CC("Generic", 1, 0, 2, "AnchorData CMRelDM::SourceAnchorTransform::transformAnchor(const CMVector3d &, const CMOQuaternion &, const BodyFaceTransform &, const float) const", "CoreLocation: %s\n", v101);
    if (v102 != buf)
    {
      free(v102);
    }
  }

  v187 = sub_19B66BF70(&v184, a2, v100);
  *v188 = v103;
  *&v188[4] = v104;
  *&v188[8] = v105;
  v106 = sub_19B606534(a1 + 80);
  v108.f32[0] = sub_19B66BFF4(v106, v107);
  *&v175 = __PAIR64__(v109, v108.u32[0]);
  *(&v175 + 1) = __PAIR64__(v111, v110);
  *buf = sub_19B66BF70(&v187, &v175, v108);
  *&buf[4] = v112;
  *&buf[8] = v113;
  *&buf[12] = v114;
  v115 = sub_19B66C1A4(v184.f32, *a3, a3[1], a3[2]);
  v117 = v116;
  v119 = v118;
  v120 = sub_19B606380(a1 + 80);
  v121.f32[0] = sub_19B66C1A4(buf, *v120, v120[1], v120[2]);
  v122 = v121.f32[0];
  v124 = v123;
  v126 = v125;
  v127 = sub_19B66BFF4(a2, v121);
  v128 = 0;
  v187 = v127;
  *v188 = v129;
  *&v188[4] = v130;
  *&v188[8] = v131;
  *&v175 = *a3;
  *(&v175 + 2) = a3[2];
  do
  {
    *(&v175 + v128) = -*(&v175 + v128);
    v128 += 4;
  }

  while (v128 != 12);
  v132 = sub_19B66C1A4(&v187, *&v175, *(&v175 + 1), *(&v175 + 2));
  v175 = *buf;
  v176 = 969384531;
  v177 = (v115 - v122) + 0.0;
  v178 = (v117 - v124) + 0.0;
  v179 = (v119 - v126) + 0.0;
  v180 = 961656599;
  v181 = v132;
  v182 = v133;
  v183 = v134;
  sub_19B5AF054(v11, &v175, v6);
  ++*a1;
  if ((*v11 & 1) == 0)
  {
    ++*(a1 + 4);
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v135 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    v136 = v11[4];
    *buf = 67109120;
    *&buf[4] = v136;
    _os_log_impl(&dword_19B41C000, v135, OS_LOG_TYPE_DEBUG, "[RelDMService][feedAnchor] Bypass anchor correspondence %d:", buf, 8u);
  }

  v137 = sub_19B420058();
  if (*(v137 + 160) > 1 || *(v137 + 164) > 1 || *(v137 + 168) > 1 || *(v137 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v138 = v11[4];
    v187 = 1.5047e-36;
    *v188 = v138;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDMService][feedAnchor] Bypass anchor correspondence %d:", &v187);
    v140 = v139;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v139);
    if (v140 != buf)
    {
      free(v140);
    }
  }

  if (*v11 & 1) != 0 || v174 < 2 || (v11[4])
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v141 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = v174;
      *&buf[8] = 1024;
      *&buf[10] = v174 == 1;
      _os_log_impl(&dword_19B41C000, v141, OS_LOG_TYPE_DEBUG, "[RelDMService][feedAnchor] Number of faces:  %d:, overwrite anchor correspondence ?: %d", buf, 0xEu);
    }

    v142 = sub_19B420058();
    if (*(v142 + 160) > 1 || *(v142 + 164) > 1 || *(v142 + 168) > 1 || *(v142 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v187 = 1.5047e-36;
      *v188 = v174;
      *&v188[4] = 1024;
      *&v188[6] = v174 == 1;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDMService][feedAnchor] Number of faces:  %d:, overwrite anchor correspondence ?: %d", &v187, 14);
      v144 = v143;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v143);
      if (v144 != buf)
      {
        free(v144);
      }
    }

    sub_19B6033A0(v172, &v175, *(a1 + 56), v6);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v145 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134220032;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v80;
      v214 = 2048;
      v215 = v177;
      v216 = 2048;
      v217 = v178;
      v218 = 2048;
      v219 = v179;
      v220 = 2048;
      v221 = *&v175;
      v222 = 2048;
      v223 = *(&v175 + 1);
      v224 = 2048;
      v225 = *(&v175 + 2);
      v226 = 2048;
      v227 = *(&v175 + 3);
      _os_log_impl(&dword_19B41C000, v145, OS_LOG_TYPE_DEFAULT, "[RelDMService][feedAnchor] timestamp: %llu, lidAngleDeg: %.1f, r_bs: (%.2f, %.2f, %.2f), q_sb: (%.3f, %.3f, %.3f, %.3f)", buf, 0x5Cu);
    }

    v146 = sub_19B420058();
    if (*(v146 + 160) > 1 || *(v146 + 164) > 1 || *(v146 + 168) > 1 || *(v146 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v187 = 3.8529e-34;
      *v188 = v6;
      *&v188[8] = 2048;
      *&v188[10] = v80;
      v189 = 2048;
      v190 = v177;
      v191 = 2048;
      v192 = v178;
      v193 = 2048;
      v194 = v179;
      v195 = 2048;
      v196 = *&v175;
      v197 = 2048;
      v198 = *(&v175 + 1);
      v199 = 2048;
      v200 = *(&v175 + 2);
      v201 = 2048;
      v202 = *(&v175 + 3);
      LODWORD(v157) = 92;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService][feedAnchor] timestamp: %llu, lidAngleDeg: %.1f, r_bs: (%.2f, %.2f, %.2f), q_sb: (%.3f, %.3f, %.3f, %.3f)", &v187, v157, v158, v159, v160, v161, v162, v163, v164);
      v148 = v147;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v147);
      if (v148 != buf)
      {
        free(v148);
      }
    }

    if (*(a1 + 26424) == v6)
    {
      *(a1 + 15984) = 0u;
      *(a1 + 15968) = 0u;
      *(a1 + 16072) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v149 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v6;
        _os_log_impl(&dword_19B41C000, v149, OS_LOG_TYPE_DEFAULT, "[RelDMService][feedAnchor] anchor is VALID, timestamp: %llu", buf, 0xCu);
      }

      v150 = sub_19B420058();
      if (*(v150 + 160) <= 1 && *(v150 + 164) <= 1 && *(v150 + 168) <= 1 && !*(v150 + 152))
      {
        goto LABEL_182;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v187 = 3.852e-34;
      *v188 = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService][feedAnchor] anchor is VALID, timestamp: %llu", &v187);
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v154 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v6;
        _os_log_impl(&dword_19B41C000, v154, OS_LOG_TYPE_DEFAULT, "[RelDMService][feedAnchor] anchor is NOT-VALID, timestamp: %llu", buf, 0xCu);
      }

      v155 = sub_19B420058();
      if (*(v155 + 160) <= 1 && *(v155 + 164) <= 1 && *(v155 + 168) <= 1 && !*(v155 + 152))
      {
        goto LABEL_182;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v187 = 3.852e-34;
      *v188 = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService][feedAnchor] anchor is NOT-VALID, timestamp: %llu", &v187);
    }

    v156 = v151;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAnchor(const CMOQuaternion &, const CMVector3d &, float, int32_t, const uint64_t)", "CoreLocation: %s\n", v151);
    if (v156 != buf)
    {
      free(v156);
    }

LABEL_182:
    *(a1 + 5824) = v6;
    return;
  }

  ++*(a1 + 8);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v152 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_19B41C000, v152, OS_LOG_TYPE_DEFAULT, "[RelDMService] [feedAnchor][AnchorMotionCorrespondence] anchor is IGNORED, timestamp: %llu", buf, 0xCu);
  }

  v153 = sub_19B420058();
  if (*(v153 + 160) > 1 || *(v153 + 164) > 1 || *(v153 + 168) > 1 || *(v153 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v187 = 3.852e-34;
    *v188 = v6;
    v65 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] [feedAnchor][AnchorMotionCorrespondence] anchor is IGNORED, timestamp: %llu", &v187);
    goto LABEL_48;
  }
}

void sub_19B694D14(uint64_t a1, unint64_t a2, float *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 108) == 1)
  {
    v6 = a1 + 24576;
    v7 = a1 + 5352;
    v8 = sub_19B447000((a1 + 5408));
    v10 = v9;
    v12 = v11;
    v13 = sub_19B606534(a1 + 80);
    *buf = sub_19B66BFF4(v13, v14);
    v38 = COERCE_DOUBLE(__PAIR64__(v16, v15));
    v39 = v17;
    v34[0] = sub_19B66C1A4(buf, v8, v10, v12);
    v34[1] = v18;
    v34[2] = v19;
    sub_19B6AD8EC(a1 + 27560, v34);
    v20 = 0;
    v21 = 0.0;
    do
    {
      v21 = v21 + (*(v7 + v20) * *(v7 + v20));
      v20 += 4;
    }

    while (v20 != 12);
    *(v6 + 3160) = sqrtf(v21);
    if (*(a1 + 56))
    {
      v22 = sub_19B606534(a1 + 80);
      sub_19B66C228(v22, *a3, a3[1], a3[2]);
      if (v23 <= 0.0)
      {
        v24 = -v23;
      }

      else
      {
        v24 = v23;
      }

      if (*(v6 + 3094))
      {
        if ((*(v6 + 3176) & 1) == 0 && v24 > 0.87266)
        {
          *(v6 + 3094) = 0;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v25 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134349056;
            v38 = (v24 * 57.296);
            _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEFAULT, "[RelDMService] Turn OFF convergingToAnchorMode in perceptualFilter. headRawDps %{public}.3f", buf, 0xCu);
          }

          v26 = sub_19B420058();
          if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            v35 = 134349056;
            v36 = (v24 * 57.296);
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Turn OFF convergingToAnchorMode in perceptualFilter. headRawDps %{public}.3f", &v35, 12);
LABEL_35:
            v33 = v27;
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::perceptualFilterUpdate(const uint64_t, const CMVector3d &)", "CoreLocation: %s\n", v27);
            if (v33 != buf)
            {
              free(v33);
            }
          }
        }
      }

      else
      {
        v28 = *(a1 + 26424);
        if (v28 && v28 + 250000 > a2)
        {
          *(v6 + 3094) = 1;
          *(v6 + 3084) = 0;
          *(v6 + 3088) = 0;
          *(a1 + 27628) = 0;
          *(a1 + 27633) = 0;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v29 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            v30 = ((a2 - *(a1 + 26424)) * 0.000001);
            *buf = 134349056;
            v38 = v30;
            _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_DEFAULT, "[RelDMService] Turn ON convergingToAnchorMode in perceptualFilter. timeSinceAnchorSeconds %{public}.2f", buf, 0xCu);
          }

          v31 = sub_19B420058();
          if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            v32 = ((a2 - *(a1 + 26424)) * 0.000001);
            v35 = 134349056;
            v36 = v32;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Turn ON convergingToAnchorMode in perceptualFilter. timeSinceAnchorSeconds %{public}.2f", &v35, 12);
            goto LABEL_35;
          }
        }
      }
    }
  }
}

void sub_19B695170(uint64_t a1, float32x2_t *a2, unint64_t a3, double a4, __n128 a5)
{
  v119 = *MEMORY[0x1E69E9840];
  v8 = (a1 + 37664);
  v9 = a1 + 26464;
  v10 = a1 + 16080;
  if (*(a1 + 56) != 1)
  {
    goto LABEL_51;
  }

  v11 = *(a1 + 60);
  if (v11)
  {
    v12 = *(a1 + 27752);
    if (*(a1 + 16082) == 1)
    {
      sub_19B741280(a1 + 27752, *(a1 + 5800), a3, *(a1 + 37696));
    }

    else
    {
      v17 = *(a1 + 26424);
      v18 = a3 <= v17 || v17 == 0;
      v19 = 3.4028e38;
      if (!v18)
      {
        v19 = (a3 - v17) * 0.000001;
      }

      v20 = *(a1 + 16072);
      sub_19B740BEC(a1 + 27752, a1 + 15920, *(a1 + 16088), a3, v20, v19);
    }

    if (v12 != *(v9 + 1288))
    {
      if (*(v9 + 1288))
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v21 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(v10 + 2);
          *buf = 67240192;
          *&buf[4] = v22;
          _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEFAULT, "[RelDMService] Started requesting anchor, in DV %{public}d.", buf, 8u);
        }

        v23 = sub_19B420058();
        if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v24 = *(v10 + 2);
          v111 = 67240192;
          LODWORD(v112) = v24;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Started requesting anchor, in DV %{public}d.", &v111, 8);
LABEL_49:
          v30 = v25;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::camControllerUpdate(const uint64_t)", "CoreLocation: %s\n", v25);
          if (v30 != buf)
          {
            free(v30);
          }
        }
      }

      else
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v26 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(v10 + 2);
          *buf = 67240192;
          *&buf[4] = v27;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEFAULT, "[RelDMService] Stopped requesting anchor, in DV %{public}d.", buf, 8u);
        }

        v28 = sub_19B420058();
        if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v29 = *(v10 + 2);
          v111 = 67240192;
          LODWORD(v112) = v29;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Stopped requesting anchor, in DV %{public}d.", &v111, 8);
          goto LABEL_49;
        }
      }
    }
  }

  else
  {
    *(a1 + 27752) = 0;
    if (v11 != *(a1 + 61))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v13 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[RelDMService] Stop requesting anchor if screen is locked or off.", buf, 2u);
      }

      v14 = sub_19B420058();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        LOWORD(v111) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Stop requesting anchor if screen is locked or off.", &v111, 2);
        v16 = v15;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::camControllerUpdate(const uint64_t)", "CoreLocation: %s\n", v15);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      *(a1 + 61) = *(a1 + 60);
    }
  }

LABEL_51:
  if (*(a1 + 3778))
  {
    if (*(a1 + 5432) && (v31 = *(a1 + 5424)) != 0)
    {
      v32 = a3 >= v31;
      v33 = a3 - v31;
      if (v33 != 0 && v32 && v33 > 0x9CE)
      {
        if (v33 < 0x75301)
        {
          v58 = *(a1 + 5200);
          if (sub_19B696264(a1, a3))
          {
            if (*(a1 + 5200) == v58)
            {
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
              }

              v60 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
              {
                *buf = 134349312;
                *&buf[4] = a3;
                *&buf[12] = 2050;
                *&buf[14] = v58;
                _os_log_impl(&dword_19B41C000, v60, OS_LOG_TYPE_ERROR, "[RelDMService] Unexpected. activeIndex unchanged. %{public}llu, last, %{public}lu", buf, 0x16u);
              }

              v61 = sub_19B420058();
              if ((*(v61 + 160) & 0x80000000) == 0 || (*(v61 + 164) & 0x80000000) == 0 || (*(v61 + 168) & 0x80000000) == 0 || *(v61 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                }

                v111 = 134349312;
                v112 = a3;
                v113 = 2050;
                v114 = *&v58;
                LODWORD(v106) = 22;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] Unexpected. activeIndex unchanged. %{public}llu, last, %{public}lu", &v111, v106);
                v63 = v62;
                sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::feedAuxIMU(const IMUData &, const uint64_t)", "CoreLocation: %s\n", v62);
                if (v63 != buf)
                {
                  free(v63);
                }
              }

              ++v8[2];
            }

            else
            {
              if ((*(v10 + 8) & 1) == 0)
              {
                sub_19B6969D8(a1, a2, v59);
              }

              v70.f32[0] = sub_19B66BFF4((a1 + 5408), v59);
              *buf = v70.i32[0];
              *&buf[4] = v71;
              *&buf[8] = v72;
              *&buf[12] = v73;
              v110.i32[0] = sub_19B66BF70(&a2[7], buf, v70);
              v110.i32[1] = v74;
              v110.i64[1] = __PAIR64__(v76, v75);
              *v77.i32 = (a3 - *(a1 + 5424));
              v107 = v77;
              v78.f32[0] = sub_19B66C31C(&v110);
              v79 = 0;
              v78.i32[1] = v81;
              v108 = vdiv_f32(vmul_f32(v78, vdup_n_s32(0x49742400u)), vdup_lane_s32(v107, 0));
              v109 = (v80 * 1000000.0) / *v107.i32;
              v82 = 0.0;
              do
              {
                v82 = v82 + (a2->f32[v79] * a2->f32[v79]);
                ++v79;
              }

              while (v79 != 3);
              v83 = 0;
              v84 = 0.0;
              do
              {
                v84 = v84 + (v108.f32[v83] * v108.f32[v83]);
                ++v83;
              }

              while (v83 != 3);
              v85 = (a1 + 5352);
              v86 = sqrtf(v82);
              if (v86 > 0.1)
              {
                v87 = sqrtf(v84);
                if (v87 > (v86 * 100.0))
                {
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                  }

                  v88 = off_1EAFE29A0;
                  v89 = v87;
                  v90 = v86;
                  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134349312;
                    *&buf[4] = v89;
                    *&buf[12] = 2050;
                    *&buf[14] = v90;
                    _os_log_impl(&dword_19B41C000, v88, OS_LOG_TYPE_DEFAULT, "[RelDMService] Unexpected large discrepency between avgAuxOmega and instAuxOmega. avg, %{public}.3f, inst, %{public}.3f", buf, 0x16u);
                  }

                  v91 = sub_19B420058();
                  if (*(v91 + 160) > 1 || *(v91 + 164) > 1 || *(v91 + 168) > 1 || *(v91 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE2998 != -1)
                    {
                      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                    }

                    v111 = 134349312;
                    v112 = *&v89;
                    v113 = 2050;
                    v114 = v90;
                    LODWORD(v106) = 22;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Unexpected large discrepency between avgAuxOmega and instAuxOmega. avg, %{public}.3f, inst, %{public}.3f", &v111, v106);
                    v93 = v92;
                    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAuxIMU(const IMUData &, const uint64_t)", "CoreLocation: %s\n", v92);
                    if (v93 != buf)
                    {
                      free(v93);
                    }
                  }
                }
              }

              v94 = *(a1 + 5400);
              v116 = *(a1 + 5384);
              v117 = v94;
              v118 = *(a1 + 5416);
              v95 = *(a1 + 5368);
              *buf = *v85;
              *&buf[16] = v95;
              *v85 = *a2->f32;
              v96 = *a2[2].f32;
              v97 = *a2[4].f32;
              v98 = *a2[6].f32;
              *(a1 + 5416) = a2[8];
              *(a1 + 5384) = v97;
              *(a1 + 5400) = v98;
              *(a1 + 5368) = v96;
              *(a1 + 5424) = a3;
              sub_19B694D14(a1, a3, &v108);
              if (*(v10 + 8))
              {
                goto LABEL_148;
              }

              v101 = *(a1 + 5432) + 1500000.0;
              v102 = *(a1 + 56);
              if (v101 <= a3 && v102 == 2)
              {
                v102 = 1;
                *(a1 + 56) = 1;
              }

              v104 = v102 != 1 || v101 > a3;
              v105 = !v104;
              if (!v102 || v105)
              {
LABEL_148:
                if ((*(v10 + 2) & 1) == 0)
                {
                  sub_19B696C1C(a1, buf, &v108, v58);
                  v100 = 24;
                  if (*v10)
                  {
                    v100 = 40;
                  }

                  sub_19B5E8F78(a1 + 27000, (a1 + 5352), (a1 + 16092 + v100), a3, v99);
                }
              }
            }
          }

          else
          {
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            v64 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
            {
              v65 = *(a1 + 5200);
              *buf = 134349312;
              *&buf[4] = a3;
              *&buf[12] = 2050;
              *&buf[14] = v65;
              _os_log_impl(&dword_19B41C000, v64, OS_LOG_TYPE_ERROR, "[RelDMService] failed to find new activeIdxSrc, %{public}llu, last, %{public}lu", buf, 0x16u);
            }

            v66 = sub_19B420058();
            if ((*(v66 + 160) & 0x80000000) == 0 || (*(v66 + 164) & 0x80000000) == 0 || (*(v66 + 168) & 0x80000000) == 0 || *(v66 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
              }

              v67 = *(a1 + 5200);
              v111 = 134349312;
              v112 = a3;
              v113 = 2050;
              v114 = v67;
              LODWORD(v106) = 22;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] failed to find new activeIdxSrc, %{public}llu, last, %{public}lu", &v111, v106);
              v69 = v68;
              sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::feedAuxIMU(const IMUData &, const uint64_t)", "CoreLocation: %s\n", v68);
              if (v69 != buf)
              {
                free(v69);
              }
            }

            ++v8[1];
          }
        }

        else
        {
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v48 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
          {
            v49 = *(a1 + 5424);
            *buf = 134349312;
            *&buf[4] = a3;
            *&buf[12] = 2050;
            *&buf[14] = v49;
            _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_ERROR, "[RelDMService] Aux data timestamp has large gap: current, %{public}llu, last, %{public}llu", buf, 0x16u);
          }

          v50 = sub_19B420058();
          if ((*(v50 + 160) & 0x80000000) == 0 || (*(v50 + 164) & 0x80000000) == 0 || (*(v50 + 168) & 0x80000000) == 0 || *(v50 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            v51 = *(a1 + 5424);
            v111 = 134349312;
            v112 = a3;
            v113 = 2050;
            v114 = v51;
            LODWORD(v106) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] Aux data timestamp has large gap: current, %{public}llu, last, %{public}llu", &v111, v106);
            v53 = v52;
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::feedAuxIMU(const IMUData &, const uint64_t)", "CoreLocation: %s\n", v52);
            if (v53 != buf)
            {
              free(v53);
            }
          }

          *(a1 + 5200) = 0;
          *(a1 + 5424) = 0;
          if (sub_19B696264(a1, a3))
          {
            v54 = *a2[2].f32;
            v55 = *a2[4].f32;
            v56 = *a2[6].f32;
            *(a1 + 5416) = a2[8];
            v57 = *a2->f32;
            *(a1 + 5384) = v55;
            *(a1 + 5400) = v56;
            *(a1 + 5352) = v57;
            *(a1 + 5368) = v54;
            *(a1 + 5424) = a3;
            *(a1 + 5432) = a3;
          }

          sub_19B60FED8(a1 + 5856, 0);
          *(a1 + 16152) = 0;
          *(v10 + 1360) = 0;
          *v9 = 0;
          *(v9 + 24) = 0;
          ++*v8;
        }
      }

      else
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v34 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v35 = *(a1 + 5424);
          *buf = 134349312;
          *&buf[4] = a3;
          *&buf[12] = 2050;
          *&buf[14] = v35;
          _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_DEBUG, "[RelDMService] Aux data timestamp stayed the same or went backwards: current, %{public}llu, last, %{public}llu", buf, 0x16u);
        }

        v36 = sub_19B420058();
        if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v37 = *(a1 + 5424);
          v111 = 134349312;
          v112 = a3;
          v113 = 2050;
          v114 = v37;
          LODWORD(v106) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDMService] Aux data timestamp stayed the same or went backwards: current, %{public}llu, last, %{public}llu", &v111, v106);
          v39 = v38;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedAuxIMU(const IMUData &, const uint64_t)", "CoreLocation: %s\n", v38);
          if (v39 != buf)
          {
            free(v39);
          }
        }
      }
    }

    else
    {
      *(a1 + 5200) = 0;
      *(a1 + 5424) = 0;
      if (sub_19B696264(a1, a3))
      {
        v40 = *a2[2].f32;
        v41 = *a2[4].f32;
        v42 = *a2[6].f32;
        *(a1 + 5416) = a2[8];
        v43 = *a2->f32;
        *(a1 + 5384) = v41;
        *(a1 + 5400) = v42;
        *(a1 + 5352) = v43;
        *(a1 + 5368) = v40;
        *(a1 + 5424) = a3;
        *(a1 + 5432) = a3;
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v44 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_ERROR, "[RelDMService] Source IMU data missing", buf, 2u);
    }

    v45 = sub_19B420058();
    if ((*(v45 + 160) & 0x80000000) == 0 || (*(v45 + 164) & 0x80000000) == 0 || (*(v45 + 168) & 0x80000000) == 0 || *(v45 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v111) = 0;
      LODWORD(v106) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] Source IMU data missing", &v111, v106);
      v47 = v46;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::feedAuxIMU(const IMUData &, const uint64_t)", "CoreLocation: %s\n", v46);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    ++v8[3];
  }
}

uint64_t sub_19B696264(uint64_t a1, unint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 3778))
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v18 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_ERROR, "[RelDMService] calcActiveIndexSrc: srcBuffer is empty.", buf, 2u);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    *v47 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] calcActiveIndexSrc: srcBuffer is empty.", v47, 2, *v47, *&v47[8], v48, v49);
    goto LABEL_62;
  }

  v4 = *sub_19B607AFC((a1 + 3776), 0);
  v5 = a2 + 5000;
  v6 = *sub_19B607AFC((a1 + 3776), 0);
  if (v4 > a2 + 5000)
  {
    v7 = (v6 - v5);
    v8 = mach_absolute_time();
    v9 = sub_19B41E070(v8) * 1000000.0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v10 = v7 * 0.001;
    v11 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      v12 = *sub_19B607AFC((a1 + 3776), 0);
      *buf = 134349824;
      v51 = v9;
      v52 = 2050;
      v53 = v5;
      v54 = 2050;
      v55 = v12;
      v56 = 2050;
      v57 = v10;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "[RelDMService] calcActiveIndexSrc: Aux data is too old compared to source data. {current: %{public}llu aux: %{public}llu source: %{public}llu diffMS: %{public}f}", buf, 0x2Au);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v14 = off_1EAFE29A0;
    v15 = *sub_19B607AFC((a1 + 3776), 0);
    *v47 = 134349824;
    *&v47[4] = v9;
    *&v47[12] = 2050;
    *&v47[14] = v5;
    *&v47[22] = 2050;
    v48 = v15;
    LOWORD(v49) = 2050;
    *(&v49 + 2) = v10;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v14, 16, "[RelDMService] calcActiveIndexSrc: Aux data is too old compared to source data. {current: %{public}llu aux: %{public}llu source: %{public}llu diffMS: %{public}f}", v47, 42);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMRelDMService::calcActiveIndexSrc(const uint64_t)", "CoreLocation: %s\n", v16);
    if (v17 == buf)
    {
      return 0;
    }

    goto LABEL_63;
  }

  if (v6 < a2 || *sub_19B607AFC((a1 + 3776), 0) > v5)
  {
    v21 = a1 + 3784;
    v22 = *(a1 + 3778);
    v23 = *(a1 + 3776) + v22 - 1;
    v24 = *(a1 + 3780);
    if (v23 < v24)
    {
      v24 = 0;
    }

    v25 = *(v21 + 8 * (v23 - v24));
    if (v25 + 10000 >= a2)
    {
      v39 = *(a1 + 5200);
      while (v22 > v39)
      {
        if (*sub_19B607AFC((a1 + 3776), --v22) <= a2)
        {
          v40 = sub_19B607AFC((a1 + 3776), v22);
          if (v22 >= *(a1 + 3778) - 1 || (v41 = v22 + 1, v42 = a2 - *v40, *sub_19B607AFC((a1 + 3776), v22 + 1) - a2 >= v42))
          {
            v41 = v22;
          }

          *(a1 + 5200) = v41;
          return 1;
        }
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v44 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_ERROR, "[RelDMService] Should not end up here.", buf, 2u);
      }

      v45 = sub_19B420058();
      if ((*(v45 + 160) & 0x80000000) != 0 && (*(v45 + 164) & 0x80000000) != 0 && (*(v45 + 168) & 0x80000000) != 0 && !*(v45 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      *v47 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] Should not end up here.", v47, 2, *v47, *&v47[8], v48, v49);
    }

    else
    {
      v26 = (a2 - v25);
      v27 = mach_absolute_time();
      v28 = sub_19B41E070(v27) * 1000000.0;
      if (qword_1EAFE2998 != -1)
      {
        v46 = v28;
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        v28 = v46;
      }

      v29 = v26 * 0.001;
      v30 = v28;
      v31 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 3776) + *(a1 + 3778) - 1;
        v33 = *(a1 + 3780);
        if (v32 < v33)
        {
          v33 = 0;
        }

        v34 = *(v21 + 8 * (v32 - v33));
        *buf = 134349824;
        v51 = v30;
        v52 = 2050;
        v53 = a2;
        v54 = 2050;
        v55 = v34;
        v56 = 2050;
        v57 = v29;
        _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_ERROR, "[RelDMService] calcActiveIndexSrc: Unexpected Aux data is ahead of source IMU data. {current: %{public}llu aux: %{public}llu source: %{public}llu diffMS: %{public}f}", buf, 0x2Au);
      }

      v35 = sub_19B420058();
      if ((*(v35 + 160) & 0x80000000) != 0 && (*(v35 + 164) & 0x80000000) != 0 && (*(v35 + 168) & 0x80000000) != 0 && !*(v35 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v36 = *(a1 + 3776) + *(a1 + 3778) - 1;
      v37 = *(a1 + 3780);
      if (v36 < v37)
      {
        v37 = 0;
      }

      v38 = *(v21 + 8 * (v36 - v37));
      *v47 = 134349824;
      *&v47[4] = v30;
      *&v47[12] = 2050;
      *&v47[14] = a2;
      *&v47[22] = 2050;
      LOWORD(v49) = 2050;
      *(&v49 + 2) = v29;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] calcActiveIndexSrc: Unexpected Aux data is ahead of source IMU data. {current: %{public}llu aux: %{public}llu source: %{public}llu diffMS: %{public}f}", v47, 42, *v47, *&v47[8], v38, v49);
    }

LABEL_62:
    v17 = v20;
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMRelDMService::calcActiveIndexSrc(const uint64_t)", "CoreLocation: %s\n", v20);
    if (v17 == buf)
    {
      return 0;
    }

LABEL_63:
    free(v17);
    return 0;
  }

  *(a1 + 5200) = 0;
  return 1;
}

void sub_19B6969D8(uint64_t a1, float32x2_t *a2, float32x4_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16088) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v3 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_ERROR, "[RelDMService] Calling feed initCheckBuffers when tracking already initialized", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v18[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] Calling feed initCheckBuffers when tracking already initialized", v18, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::feedInitCheckBuffers(const IMUData &)", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    *buf = sub_19B66BFF4(a2 + 7, a3);
    v20 = v9;
    v21 = v10;
    v22 = v11;
    sub_19B66C1A4(buf, a2->f32[0], a2->f32[1], a2[1].f32[0]);
    v13 = -v12;
    if (v12 > 0.0)
    {
      v13 = v12;
    }

    v14 = *(a1 + 5442);
    v15 = *(a1 + 5444);
    v16 = *(a1 + 5440);
    if (v16 + v14 >= v15)
    {
      v17 = *(a1 + 5444);
    }

    else
    {
      v17 = 0;
    }

    *(a1 + 4 * (v16 + v14 - v17) + 5448) = v13;
    if (v15 <= v14)
    {
      if (v16 + 1 < v15)
      {
        LOWORD(v15) = 0;
      }

      *(a1 + 5440) = v16 + 1 - v15;
    }

    else
    {
      *(a1 + 5442) = v14 + 1;
    }

    *buf = v12;
    sub_19B5BC034(a1 + 5456, buf);
  }
}

unsigned __int16 *sub_19B696C1C(uint64_t a1, uint64_t a2, float32x2_t *a3, unint64_t a4)
{
  v7 = 0;
  v74 = *MEMORY[0x1E69E9840];
  v8 = (a1 + 33826);
  v60 = *a3;
  v61 = a3[1].i32[0];
  v9 = (*(a2 + 20) + *(a1 + 5372)) * -0.5;
  v62 = vmul_f32(vadd_f32(*(a2 + 12), *(a1 + 5364)), 0xBF000000BF000000);
  v63 = v9;
  *buf = *(a1 + 5376);
  *&buf[8] = *(a1 + 5384);
  do
  {
    *&buf[v7] = -*&buf[v7];
    v7 += 4;
  }

  while (v7 != 12);
  v64 = *buf;
  v65 = *&buf[8];
  v66 = *(a1 + 5388);
  v10 = *(a1 + 5400);
  v67 = *(a1 + 5396);
  v68 = v10;
  v69 = *(a1 + 5404);
  v70 = *(a1 + 5408);
  v11 = -1.0;
  if (*(a1 + 756) != *(a1 + 754) || (v12 = *(a1 + 5200), v12 < 0x30))
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v45 = (v12 >> 1) - 24;
  v46 = sub_19B5BE518(a1 + 724, v45, 0x19u);
  v47 = sub_19B613A10(a1 + 724, v45, 0x19u, v46);
  v48 = sub_19B5BE518(a1 + 724, v45, 0x19u) + -1.0;
  v49 = -v48;
  if (v48 > 0.0)
  {
    v49 = v48;
  }

  v11 = v47 + (v49 * v49);
  if (v47 < 0.000025 && v49 < 0.05)
  {
    v50 = *(a1 + 752) + *(a1 + 754) - 1;
    v51 = *(a1 + 756);
    if (v50 < v51)
    {
      v51 = 0;
    }

    v52 = *(a1 + 4 * (v50 - v51) + 760) + -1.0;
    if (v52 <= 0.0)
    {
      v52 = -v52;
    }

    if (v52 < 0.05)
    {
      v13 = 1;
      goto LABEL_6;
    }
  }

  v13 = 0;
  if (v47 < 0.01 && v49 < 0.1)
  {
    v53 = *(a1 + 752) + *(a1 + 754) - 1;
    v54 = *(a1 + 756);
    if (v53 < v54)
    {
      v54 = 0;
    }

    v55 = *(a1 + 4 * (v53 - v54) + 760) + -1.0;
    if (v55 <= 0.0)
    {
      v55 = -v55;
    }

    if (v55 < 0.1)
    {
      v13 = 2;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:
  v14 = 0;
  memset(v57, 0, 24);
  v15 = *(a1 + 5224);
  *buf = *(a1 + 5216);
  *&buf[8] = v15;
  do
  {
    *&buf[v14] = -*&buf[v14];
    v14 += 4;
  }

  while (v14 != 12);
  *&v57[24] = *buf;
  LODWORD(v58) = *&buf[8];
  *(&v58 + 4) = vdup_n_s32(0x3A03126Fu);
  HIDWORD(v58) = 973279855;
  *v59 = v13;
  *&v59[4] = v11;
  *&v59[8] = xmmword_19B7B7E30;
  sub_19B41E130(&v59[8], xmmword_19B7B7E30);
  v16 = a4 + 1;
  v17 = *(a1 + 5200);
  if (a4 + 1 <= v17)
  {
    do
    {
      v19 = v16;
      if (v16 == v17)
      {
        *&v20 = (a3[1].f32[0] + *(a1 + 5360)) * 0.5;
        v60 = vmul_f32(vadd_f32(*a3, *(a1 + 5352)), 0x3F0000003F000000);
        v61 = v20;
      }

      if (a4)
      {
        v21 = v16 >> 1;
        v27 = sub_19B697334((a1 + 116), v16 >> 1);
        v28 = 0;
        *buf = *v27;
        *&buf[8] = *(v27 + 2);
        do
        {
          *&buf[v28] = -*&buf[v28];
          v28 += 4;
        }

        while (v28 != 12);
        v25 = *buf;
        v26 = *&buf[8];
      }

      else
      {
        v21 = a4 >> 1;
        v22 = sub_19B697334((a1 + 116), a4 >> 1);
        if ((a4 >> 1) + 1 < *(a1 + 118) - 1)
        {
          v23 = v21 + 1;
        }

        else
        {
          v23 = *(a1 + 118) - 1;
        }

        v24 = sub_19B697334((a1 + 116), v23);
        v25 = vmul_f32(vadd_f32(*v22, *v24), 0xBF000000BF000000);
        v26 = (v22[1].f32[0] + v24[1].f32[0]) * -0.5;
      }

      *&v57[12] = v25;
      *&v57[20] = v26;
      v29 = sub_19B697334((a1 + 960), a4);
      v30 = sub_19B697334((a1 + 960), v19);
      v31 = (v29[1].f32[0] + v30[1].f32[0]) * 0.5;
      *v57 = vmul_f32(vadd_f32(*v29, *v30), 0x3F0000003F000000);
      *&v57[8] = v31;
      v32 = sub_19B697334((a1 + 4584), v21);
      v33 = *(v32 + 2);
      *(&v58 + 4) = *v32;
      HIDWORD(v58) = v33;
      *&v59[8] = *sub_19B69ADEC((a1 + 2168), v19);
      v34 = *&v57[16];
      *(a1 + 5280) = *v57;
      *(a1 + 5296) = v34;
      *(a1 + 5344) = *&v59[16];
      v35 = *v59;
      *(a1 + 5312) = v58;
      *(a1 + 5328) = v35;
      v36 = *sub_19B607AFC((a1 + 3776), v19);
      v37 = v36 - *sub_19B607AFC((a1 + 3776), a4);
      if (v37 >= 0x4E21)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v38 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          *&buf[4] = v37;
          _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_ERROR, "[RelDMService] Unexpected large IMU dt passed to EKF. dt=%{public}llu", buf, 0xCu);
        }

        v39 = sub_19B420058();
        if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v71 = 134349056;
          v72 = v37;
          LODWORD(v56) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDMService] Unexpected large IMU dt passed to EKF. dt=%{public}llu", &v71, v56);
          v41 = v40;
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CMRelDMService::processIMUData(const IMUData &, const CMVector3d &, const size_t)", "CoreLocation: %s\n", v40);
          if (v41 != buf)
          {
            free(v41);
          }
        }
      }

      v42 = v37 / 1000000.0;
      v43 = *sub_19B607AFC((a1 + 3776), v19);
      v44 = v42;
      sub_19B697518(a1, v57, &v60, v43, v44);
      if (v8[3830] == 1 && v8[94] == 1)
      {
        sub_19B78F638(a1 + 33904, v57, &v60, v43, v44);
      }

      if (*(a1 + 56) == 1)
      {
        *v8 = *(a1 + 27752);
        sub_19B5AE9DC(a1 + 33824, v57, &v60, v43, v44);
      }

      v16 = v19 + 1;
      v17 = *(a1 + 5200);
      a4 = v19;
    }

    while (v19 + 1 <= v17);
  }

  result = sub_19B607AFC((a1 + 3776), v17);
  *(a1 + 5816) = *result;
  return result;
}

unsigned __int16 *sub_19B697334(unsigned __int16 *a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1[1] <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3AB80);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v12 = a2;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: i < size(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 39,out of buffer range %zu.", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3AB80);
      }

      v9 = 134217984;
      v10 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < size(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 39,out of buffer range %zu.", &v9);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "Element &CMVectorBufferBase<float, 3>::operator[](const size_t) [T = float, N = 3]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return sub_19B5BEC4C(a1, a2);
}

void sub_19B697518(uint64_t a1, uint64_t a2, float32x2_t *a3, unint64_t a4, double a5)
{
  v178 = *MEMORY[0x1E69E9840];
  if (*(a1 + 17) == 1)
  {
    sub_19B68F90C(a1, *(a1 + 18));
  }

  if ((*(a1 + 108) & 1) == 0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v13 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[RelDMService] Missing BodyFace transform prevented feedEKFWithData.", buf, 2u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) <= 1 && *(v14 + 164) <= 1 && *(v14 + 168) <= 1 && !*(v14 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    LOWORD(v168) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Missing BodyFace transform prevented feedEKFWithData.", &v168, 2);
    goto LABEL_23;
  }

  v10 = (a1 + 12192);
  if (*(a1 + 16) == 1)
  {
    v11 = *(a1 + 37697);
    *(a1 + 37697) = 0;
    v12 = *(a1 + 5232);
    if (v12 <= 0x29 && ((1 << v12) & 0x20000000110) != 0 && (v12 == 8 || *(a1 + 5236) > 1) || sub_19B7399E4(a1 + 5232, a4) > 3.0 && *(a1 + 37696) == 1)
    {
      *(a1 + 37697) = 1;
      *(a1 + 37704) = a4;
    }

    else if (*(a1 + 37704) && sub_19B7397C0(a1 + 5232, a4) < 2.0 && *(a1 + 37704) + 10000000 > a4)
    {
      *(a1 + 37697) = 1;
    }

    if (*(a1 + 37697) == v11)
    {
      goto LABEL_57;
    }

    v17 = (a1 + 15920);
    if (*(a1 + 37697))
    {
      if (*v17 > 2.25)
      {
        sub_19B699D20(v17, 2.25);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v18 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "[RelDMService, Entering steadyStatePedestrian.", buf, 2u);
      }

      v19 = sub_19B420058();
      if (*(v19 + 160) <= 1 && *(v19 + 164) <= 1 && *(v19 + 168) <= 1 && !*(v19 + 152))
      {
        goto LABEL_57;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v168) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService, Entering steadyStatePedestrian.", &v168, 2);
    }

    else
    {
      sub_19B699D20(v17, *(a1 + 15924));
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v21 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEFAULT, "[RelDMService], Exiting steadyStatePedestrian.", buf, 2u);
      }

      v22 = sub_19B420058();
      if (*(v22 + 160) <= 1 && *(v22 + 164) <= 1 && *(v22 + 168) <= 1 && !*(v22 + 152))
      {
        goto LABEL_57;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v168) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService], Exiting steadyStatePedestrian.", &v168, 2);
    }

    v23 = v20;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::shortenBTZHorizonForMusic(const uint64_t)", "CoreLocation: %s\n", v20);
    if (v23 != buf)
    {
      free(v23);
    }

LABEL_57:
    if (*(a1 + 16) == 1)
    {
      *(a1 + 12232) = *(a1 + 37697);
    }
  }

  sub_19B60FF8C(a1 + 5856, a2, a3, (a1 + 16116), (a1 + 5232), *(a1 + 16072), a4, a5);
  if (*(a1 + 16080) == 1)
  {
    v25 = *(a1 + 12224) ^ 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = *v10;
  if (*v10)
  {
    v26 = *(a1 + 12232);
  }

  v24.i32[0] = *(a1 + 15872);
  sub_19B5BA304((a1 + 27784), a2, a3, v25 & 1, v26 & 1, (a1 + 12200), a4, v24, *(a1 + 12104));
  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 16072) <= 0.00499999989)
    {
      *(a1 + 37716) = 0;
    }

    else
    {
      v27 = *(a1 + 15976);
      if (v27 > 1.0)
      {
        v28 = v27 + *(a1 + 15968) * 2.0;
        *(a1 + 37720) = v28;
      }

      if (v27 == 0.0)
      {
        v29 = *(a1 + 37720);
        if (v29 > 0.0)
        {
          *(a1 + 37716) = v29 + *(a1 + 37716);
          *(a1 + 37720) = 0;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v30 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
          {
            v31 = *(a1 + 37716);
            *buf = 134217984;
            *&buf[4] = v31;
            _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_DEBUG, "[RelDMService], fAccumulatedShortQuiescenceSeconds, %.3f", buf, 0xCu);
          }

          v32 = sub_19B420058();
          if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            v33 = *(a1 + 37716);
            v168 = 134217984;
            v169 = v33;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDMService], fAccumulatedShortQuiescenceSeconds, %.3f", COERCE_DOUBLE(&v168));
            v35 = v34;
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::updateKeepBoresightCenteredState()", "CoreLocation: %s\n", v34);
            if (v35 != buf)
            {
              free(v35);
            }
          }
        }
      }
    }

    if (*(a1 + 37712))
    {
      if (*(a1 + 16072) < 0.00499999989 && ((*(a1 + 37697) & 1) != 0 || *(a1 + 15968) >= 1.0))
      {
        *(a1 + 37712) = 0;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v36 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_DEFAULT, "[RelDMService] keepBoresightCentered: Release boresight to normal tracking.", buf, 2u);
        }

        v37 = sub_19B420058();
        if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          LOWORD(v168) = 0;
          LODWORD(v164) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] keepBoresightCentered: Release boresight to normal tracking.", &v168, *&v164);
          v44 = v43;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::updateKeepBoresightCenteredState()", "CoreLocation: %s\n", v43);
          if (v44 != buf)
          {
            free(v44);
          }
        }
      }
    }

    else
    {
      v38 = *(a1 + 37716);
      if (v38 > 12.5)
      {
        v39 = 1;
      }

      else
      {
        v39 = *(a1 + 37697);
      }

      if (v39)
      {
        v40 = 50.0;
      }

      else
      {
        v40 = 25.0;
      }

      v41 = *(a1 + 16072);
      if (v41 > (v38 + v40) || (v41 > v40 ? (v42 = *(a1 + 37697) == 0) : (v42 = 1), !v42))
      {
        *(a1 + 37712) = 1;
        sub_19B690784(a1, 0);
      }
    }
  }

  if ((*(a1 + 56) & 0xFFFFFFFE) == 2)
  {
LABEL_113:
    v45 = *(a1 + 5824) + 210000;
    v46 = *(a1 + 56) & 0xFFFFFFFE;
    v47 = v46 != 2 || v45 < a4;
    if (v45 < a4 && v46 == 2)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v48 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v45 < a4;
        _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_DEFAULT, "[RelDMService] LongTimeSinceAnchor %d.", buf, 8u);
      }

      v49 = sub_19B420058();
      if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v168 = 67109120;
        LODWORD(v169) = v45 < a4;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] LongTimeSinceAnchor %d.", &v168);
        v51 = v50;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedEKFWithData(const IMUData &, const IMUData &, double, const uint64_t)", "CoreLocation: %s\n", v50);
        if (v51 != buf)
        {
          free(v51);
        }
      }
    }

    v52 = *(a1 + 56);
    if (v52 == 3)
    {
      a5 = 0.0;
    }

    if (v45 < a4 && v52 == 2)
    {
      v53 = 0;
      v54 = 0;
      do
      {
        *v54.i32 = *v54.i32 + (*(a2 + 12 + v53) * *(a2 + 12 + v53));
        v53 += 4;
      }

      while (v53 != 12);
      *v54.i32 = sqrtf(*v54.i32);
      v55 = vdiv_f32(*(a2 + 12), vdup_lane_s32(v54, 0));
      v56 = *(a2 + 20);
      *buf = 0;
      *&buf[8] = 0;
      *&buf[12] = v55;
      *&buf[20] = v56 / *v54.i32;
      *&buf[24] = *(a2 + 24);
      v173 = *(a2 + 32);
      v174 = *(a2 + 36);
      v175 = *(a2 + 44);
      v176 = 1;
      v177 = *(a2 + 56);
      v57 = a5;
      v58 = a1 + 16088;
      v59 = buf;
    }

    else
    {
      v57 = a5;
      v58 = a1 + 16088;
      v59 = a2;
    }

    sub_19B6051DC(v58, v59, a3, v47, v57);
    if (!*(a2 + 48) || (v69 = 0.0, !a3[6].i32[0]))
    {
      if (*(a1 + 56) == 2)
      {
        sub_19B612AE8(a1 + 5856, a2, a3, (a1 + 16116), a4);
      }

      else
      {
        v70 = sub_19B612DF8(a1 + 5856, a2, a3, a4, v68);
      }

      v69 = (v70 * 9.8067) * 9.8067;
    }

    sub_19B603EEC(a1 + 16088, a2, a3, *(a1 + 56), a4, a5, v69);
    if (*(a1 + 56) == 1 && *(a1 + 26424) == a4)
    {
      *(a1 + 15984) = 0u;
      *(a1 + 15968) = 0u;
LABEL_414:
      *(a1 + 16072) = 0;
      return;
    }

    return;
  }

  v60 = (a1 + 5456);
  *(a1 + 16081) = 0;
  if (*(a1 + 16088))
  {
    v61 = sub_19B606534(a1 + 80);
    v63 = sub_19B61313C(a1 + 5856, a2, a3, v61, *(a1 + 62), v62);
    v64 = *(a1 + 16083);
    v65 = *(a1 + 32836);
    *(a1 + 16083) = v65;
    v66 = *(a1 + 16);
    if (v66 == 1)
    {
      if (*v10 && *(a1 + 12232) == 1 && (!*(a1 + 27784) || (*(a1 + 33744) & 1) == 0))
      {
        v67 = *(a1 + 12224) ^ 1;
      }

      else
      {
        v67 = 1;
      }

      v65 &= v67;
      *(a1 + 16083) = v65;
    }

    if (v64 != v65)
    {
      if (v65)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v77 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v77, OS_LOG_TYPE_DEFAULT, "[RelDMService] Entering complex transition.", buf, 2u);
        }

        v78 = sub_19B420058();
        if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          LOWORD(v168) = 0;
          LODWORD(v164) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Entering complex transition.", &v168, *&v164);
LABEL_220:
          v86 = v79;
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::determineBTZ(const IMUData &, const IMUData &, const double, const uint64_t)", "CoreLocation: %s\n", v79);
          if (v86 != buf)
          {
            free(v86);
          }
        }
      }

      else
      {
        if (v66 == 1)
        {
          sub_19B699D20((a1 + 15920), 1.0);
          *(a1 + 63) = 1;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v80 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v80, OS_LOG_TYPE_DEFAULT, "[RelDMService] Shorten Pedestrian BTZ horizon upon exiting complex transition.", buf, 2u);
          }

          v81 = sub_19B420058();
          if (*(v81 + 160) > 1 || *(v81 + 164) > 1 || *(v81 + 168) > 1 || *(v81 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            LOWORD(v168) = 0;
            LODWORD(v164) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Shorten Pedestrian BTZ horizon upon exiting complex transition.", &v168, *&v164);
            v83 = v82;
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::determineBTZ(const IMUData &, const IMUData &, const double, const uint64_t)", "CoreLocation: %s\n", v82);
            if (v83 != buf)
            {
              free(v83);
            }
          }
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v84 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v84, OS_LOG_TYPE_DEFAULT, "[RelDMService] Exiting complex transition.", buf, 2u);
        }

        v85 = sub_19B420058();
        if (*(v85 + 160) > 1 || *(v85 + 164) > 1 || *(v85 + 168) > 1 || *(v85 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          LOWORD(v168) = 0;
          LODWORD(v164) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Exiting complex transition.", &v168, *&v164);
          goto LABEL_220;
        }
      }
    }

    v87 = *v10;
    if (!*v10 || *(a1 + 12232) != 1)
    {
      *(a1 + 66) = 0;
      goto LABEL_257;
    }

    *&buf[8] = *(a1 + 16100);
    *buf = *(a1 + 16092);
    v88 = 24;
    if (*(a1 + 16080))
    {
      v88 = 40;
    }

    *&buf[12] = *(a1 + 16092 + v88);
    v165 = sub_19B604A8C(a1 + 80, buf, &buf[12]);
    v166 = v89;
    v167 = v90;
    v91 = sub_19B73888C(&v165);
    if (*(a1 + 66) == 1)
    {
      if ((*(a1 + 16083) & 1) == 0 && (*(a1 + 16064) & 1) == 0 && a4 - *(a1 + 72) <= 0x6ACFC0 && v91 >= 0.43633)
      {
        goto LABEL_256;
      }

      sub_19B699D20((a1 + 15920), 2.25);
      *(a1 + 66) = 0;
      *(a1 + 72) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v92 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v92, OS_LOG_TYPE_DEFAULT, "[RelDMService] Exit lengthened BTZ horizon.", buf, 2u);
      }

      v93 = sub_19B420058();
      if (*(v93 + 160) <= 1 && *(v93 + 164) <= 1 && *(v93 + 168) <= 1 && !*(v93 + 152))
      {
        goto LABEL_256;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v168) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Exit lengthened BTZ horizon.");
    }

    else
    {
      if (*(a1 + 12224))
      {
        v96 = 1;
      }

      else
      {
        v97 = *(a1 + 12208);
        v42 = v97 == 0;
        v98 = v97 + 2000000;
        v96 = v42 || v98 <= a4;
      }

      if (*(a1 + 63) & 1) != 0 || ((*(a1 + 16083) | *(a1 + 65) | v96))
      {
        goto LABEL_256;
      }

      v159 = *(a1 + 12216);
      if (v159 <= 0.0)
      {
        v159 = -v159;
      }

      if (v159 <= 0.43633 || v91 <= 0.7854)
      {
        goto LABEL_256;
      }

      sub_19B699D20((a1 + 15920), 5.0);
      *(a1 + 66) = 1;
      *(a1 + 72) = a4;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v160 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v161 = *(a1 + 12216);
        if (v161 <= 0.0)
        {
          v161 = -v161;
        }

        *buf = 134218240;
        *&buf[4] = (v161 * 57.296);
        *&buf[12] = 2048;
        *&buf[14] = (v91 * 57.296);
        _os_log_impl(&dword_19B41C000, v160, OS_LOG_TYPE_DEFAULT, "[RelDMService] Enter lengthened BTZ horizon. headYaw, %.2f, boreSightAngle, %.2f", buf, 0x16u);
      }

      v162 = sub_19B420058();
      if (*(v162 + 160) <= 1 && *(v162 + 164) <= 1 && *(v162 + 168) <= 1 && !*(v162 + 152))
      {
        goto LABEL_256;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v163 = *(a1 + 12216);
      if (v163 <= 0.0)
      {
        v163 = -v163;
      }

      v168 = 134218240;
      v169 = (v163 * 57.296);
      v170 = 2048;
      v171 = (v91 * 57.296);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Enter lengthened BTZ horizon. headYaw, %.2f, boreSightAngle, %.2f");
    }

    v95 = v94;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::updateBTZHorizonAfterPedestrianHeadTurn(uint64_t)", "CoreLocation: %s\n", v94);
    if (v95 != buf)
    {
      free(v95);
    }

LABEL_256:
    v87 = *v10;
LABEL_257:
    if (v87)
    {
      if ((*(a1 + 65) & 1) == 0)
      {
        if (*(a1 + 12233))
        {
          *(a1 + 65) = 1;
          sub_19B699D20((a1 + 15920), 1.0);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v104 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v104, OS_LOG_TYPE_DEFAULT, "[RelDMService] Enter ForceShortendBTZHorizon due to likelySlowBodyTurn.", buf, 2u);
          }

          v105 = sub_19B420058();
          if (*(v105 + 160) > 1 || *(v105 + 164) > 1 || *(v105 + 168) > 1 || *(v105 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            LOWORD(v168) = 0;
            LODWORD(v164) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Enter ForceShortendBTZHorizon due to likelySlowBodyTurn.", &v168, *&v164);
            goto LABEL_290;
          }
        }

LABEL_292:
        sub_19B714F7C(a1 + 15920, a2, a3, a1 + 16116, v63, *(a1 + 16083), a4, a5);
        if (*(a1 + 56) == 1)
        {
          v107 = *(a1 + 26424);
          v108 = a4 <= v107 || v107 == 0;
          v109 = (a4 - v107) * 0.000001;
          if (v108)
          {
            v109 = 3.4028e38;
          }

          v110 = *(a1 + 5832);
          if (v110 <= *(a1 + 5840))
          {
            v110 = *(a1 + 5840);
          }

          v111 = a4 <= v110 || v110 == 0;
          v112 = (a4 - v110) * 0.000001;
          if (v111)
          {
            v112 = 3.4028e38;
          }

          v113 = *(a1 + 5848);
          v114 = a4 <= v113 || v113 == 0;
          v115 = (a4 - v113) * 0.000001;
          if (v114)
          {
            v115 = 3.4028e38;
          }

          sub_19B714B8C(a1 + 15920, v109, v112, v115);
        }

        v116 = *(a1 + 16064);
        if (*(a1 + 15962) == 1)
        {
          v117 = *(a1 + 27752);
          *(a1 + 16064) = v117 ^ 1;
          if (v116 == (v117 ^ 1))
          {
            goto LABEL_398;
          }

          if ((v117 & 1) == 0)
          {
            if (*(a1 + 63) == 1 && (*(a1 + 64) & 1) == 0)
            {
              *(a1 + 64) = *(a1 + 16083) ^ 1;
            }

            *(a1 + 27660) = 0;
            *(a1 + 27664) = 0;
            *(a1 + 27628) = 0;
            *(a1 + 27633) = 0;
            *(a1 + 27668) = 1;
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            v118 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v118, OS_LOG_TYPE_DEFAULT, "[RelDMService] Entering BTZ.", buf, 2u);
            }

            v119 = sub_19B420058();
            if (*(v119 + 160) > 1 || *(v119 + 164) > 1 || *(v119 + 168) > 1 || *(v119 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
              }

              LOWORD(v168) = 0;
              LODWORD(v164) = 2;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Entering BTZ.", &v168, *&v164);
LABEL_396:
              v146 = v120;
              sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::determineBTZ(const IMUData &, const IMUData &, const double, const uint64_t)", "CoreLocation: %s\n", v120);
              if (v146 != buf)
              {
                free(v146);
              }

              goto LABEL_398;
            }

            goto LABEL_398;
          }
        }

        else
        {
          *(a1 + 16064) = 0;
          if (!v116)
          {
            goto LABEL_398;
          }
        }

        if (*(a1 + 64) == 1)
        {
          if ((*(a1 + 65) & 1) == 0)
          {
            if (*v10)
            {
              v121 = 5.0;
              if (*(a1 + 12232))
              {
                v121 = 2.25;
              }
            }

            else
            {
              v121 = 5.0;
            }

            sub_19B699D20((a1 + 15920), v121);
          }

          *(a1 + 63) = 0;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          v140 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v140, OS_LOG_TYPE_DEFAULT, "[RelDMService] Reset BTZ horizon upon first BTZ after shortened horizon due to CT.", buf, 2u);
          }

          v141 = sub_19B420058();
          if (*(v141 + 160) > 1 || *(v141 + 164) > 1 || *(v141 + 168) > 1 || *(v141 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
            }

            LOWORD(v168) = 0;
            LODWORD(v164) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Reset BTZ horizon upon first BTZ after shortened horizon due to CT.", &v168, *&v164);
            v143 = v142;
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::determineBTZ(const IMUData &, const IMUData &, const double, const uint64_t)", "CoreLocation: %s\n", v142);
            if (v143 != buf)
            {
              free(v143);
            }
          }
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v144 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v144, OS_LOG_TYPE_DEFAULT, "[RelDMService] Exiting BTZ.", buf, 2u);
        }

        v145 = sub_19B420058();
        if (*(v145 + 160) > 1 || *(v145 + 164) > 1 || *(v145 + 168) > 1 || *(v145 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
          }

          LOWORD(v168) = 0;
          LODWORD(v164) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Exiting BTZ.", &v168, *&v164);
          goto LABEL_396;
        }

LABEL_398:
        *(a1 + 16072) = *(a1 + 16072) + a5;
        sub_19B612470(a1 + 5856, a5, a2, a3);
        v147 = *(a1 + 12080);
        if (*(a1 + 16) == 1 && (*(a1 + 37712) & 1) != 0 || (*(a1 + 15960) & 1) != 0)
        {
          goto LABEL_412;
        }

        v148 = *(a1 + 16064);
        v149 = *(a1 + 62);
        if (v148 & 1) != 0 || (v149)
        {
          if (v147 >= a5 || ((v148 ^ 1 | v149) & 1) == 0)
          {
            goto LABEL_412;
          }

          *(a1 + 62) = 0;
          v150 = *(a1 + 15924);
        }

        else
        {
          if (*(a1 + 16072) < v147)
          {
            v147 = *(a1 + 16072);
          }

          if (v147 <= 15.0 || (*(a1 + 62) = 1, v150 = 3.0, *(a1 + 15924) <= 3.0))
          {
LABEL_412:
            if (*(a1 + 16064) == 1)
            {
              *buf = *(a1 + 16008);
              *&buf[12] = *(a1 + 16020);
              sub_19B6041DC(a1 + 16088, buf, a4);
              goto LABEL_414;
            }

            if (*(a1 + 56))
            {
              v151 = *(a1 + 26424);
              if (v151)
              {
                if (v151 + 250000 > a4)
                {
                  goto LABEL_113;
                }
              }
            }

            v152 = *(a1 + 5858);
            if (v152 == *(a1 + 7066))
            {
              if (v152 >= *(a1 + 9146))
              {
                v152 = *(a1 + 9146);
              }

              if (v152 >= 0x28)
              {
                if (sub_19B6137FC((a1 + 5856)))
                {
                  *(a1 + 5848) = a4;
                  if ((*(a1 + 16080) & 1) == 0)
                  {
                    *(a1 + 16080) = 257;
                    sub_19B6043EC(a1 + 16088);
                    if (qword_1EAFE2998 != -1)
                    {
                      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                    }

                    v153 = off_1EAFE29A0;
                    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19B41C000, v153, OS_LOG_TYPE_DEFAULT, "[RelDMService] Entering 1-IMU.", buf, 2u);
                    }

                    v154 = sub_19B420058();
                    if (*(v154 + 160) <= 1 && *(v154 + 164) <= 1 && *(v154 + 168) <= 1 && !*(v154 + 152))
                    {
                      goto LABEL_113;
                    }

                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE2998 != -1)
                    {
                      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                    }

                    LOWORD(v168) = 0;
                    LODWORD(v164) = 2;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Entering 1-IMU.", &v168, *&v164);
                    goto LABEL_449;
                  }
                }

                else if (*(a1 + 16080) == 1 && (sub_19B6132E8(a1 + 5856) & 1) != 0)
                {
                  *(a1 + 16080) = 256;
                  sub_19B604800(a1 + 16088, a1 + 80, 0);
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                  }

                  v156 = off_1EAFE29A0;
                  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19B41C000, v156, OS_LOG_TYPE_DEFAULT, "[RelDMService] Entering 2-IMU.", buf, 2u);
                  }

                  v157 = sub_19B420058();
                  if (*(v157 + 160) <= 1 && *(v157 + 164) <= 1 && *(v157 + 168) <= 1 && !*(v157 + 152))
                  {
                    goto LABEL_113;
                  }

                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
                  }

                  LOWORD(v168) = 0;
                  LODWORD(v164) = 2;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Entering 2-IMU.", &v168, *&v164);
LABEL_449:
                  v158 = v155;
                  sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedEKFWithData(const IMUData &, const IMUData &, double, const uint64_t)", "CoreLocation: %s\n", v155);
                  if (v158 != buf)
                  {
                    free(v158);
                  }

                  goto LABEL_113;
                }
              }
            }

            *(a1 + 16081) = 0;
            goto LABEL_113;
          }
        }

        sub_19B699D20((a1 + 15920), v150);
        goto LABEL_412;
      }

      if (*(a1 + 12233))
      {
        goto LABEL_292;
      }

      *(a1 + 65) = 0;
      if ((*(a1 + 63) & 1) == 0)
      {
        v100 = 5.0;
        if (*(a1 + 12232))
        {
          v100 = 2.25;
        }

LABEL_266:
        sub_19B699D20((a1 + 15920), v100);
      }
    }

    else
    {
      if ((*(a1 + 65) & 1) == 0)
      {
        goto LABEL_292;
      }

      *(a1 + 65) = 0;
      v100 = 5.0;
      if ((*(a1 + 63) & 1) == 0)
      {
        goto LABEL_266;
      }
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v101 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v101, OS_LOG_TYPE_DEFAULT, "[RelDMService] Exit ForceShortendBTZHorizon.", buf, 2u);
    }

    v102 = sub_19B420058();
    if (*(v102 + 160) > 1 || *(v102 + 164) > 1 || *(v102 + 168) > 1 || *(v102 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v168) = 0;
      LODWORD(v164) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Exit ForceShortendBTZHorizon.", &v168, *&v164);
LABEL_290:
      v106 = v103;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMRelDMService::determineBTZ(const IMUData &, const IMUData &, const double, const uint64_t)", "CoreLocation: %s\n", v103);
      if (v106 != buf)
      {
        free(v106);
      }

      goto LABEL_292;
    }

    goto LABEL_292;
  }

  if ((*(a1 + 16085) & 1) == 0)
  {
    if (*(a1 + 5444) == *(a1 + 5442))
    {
      goto LABEL_158;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v75 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v75, OS_LOG_TYPE_DEFAULT, "[RelDMService] Can't initialize due to accessory IMU buffers not being full.", buf, 2u);
    }

    v76 = sub_19B420058();
    if (*(v76 + 160) <= 1 && *(v76 + 164) <= 1 && *(v76 + 168) <= 1 && !*(v76 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    LOWORD(v168) = 0;
    LODWORD(v164) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Can't initialize due to accessory IMU buffers not being full.", &v168, *&v164);
LABEL_23:
    v16 = v15;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedEKFWithData(const IMUData &, const IMUData &, double, const uint64_t)", "CoreLocation: %s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }

    return;
  }

  if (*(a1 + 5488) != *(a1 + 5486))
  {
    return;
  }

LABEL_158:
  v71 = 0.0;
  for (i = 3; i != 6; ++i)
  {
    v71 = v71 + (a3->f32[i] * a3->f32[i]);
  }

  v73 = sqrtf(v71) + -1.0;
  if (v73 <= 0.0)
  {
    v73 = -v73;
  }

  if (v73 < 0.5)
  {
    if (*(a1 + 16085))
    {
      if (*v60 == 1)
      {
        sub_19B5BE7E0(a1 + 5456);
      }

      v74 = *(a1 + 5460) < 0.2618 && sub_19B5C0034((a1 + 5440), sub_19B5C024C, 0) < 0.5236;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v122 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        if (*v60 == 1)
        {
          sub_19B5BE7E0(a1 + 5456);
        }

        v123 = *(a1 + 5460);
        v124 = sub_19B5C0034((a1 + 5440), sub_19B5C024C, 0);
        *buf = 134218240;
        *&buf[4] = v123;
        *&buf[12] = 2048;
        *&buf[14] = v124;
        _os_log_impl(&dword_19B41C000, v122, OS_LOG_TYPE_DEBUG, "[RelDMService] fResetTrackingAfterAuxGap, mean %.3f, maxCurr %.3f", buf, 0x16u);
      }

      v125 = sub_19B420058();
      if (*(v125 + 160) > 1 || *(v125 + 164) > 1 || *(v125 + 168) > 1 || *(v125 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
        }

        v126 = off_1EAFE29A0;
        if (*v60 == 1)
        {
          sub_19B5BE7E0(a1 + 5456);
        }

        v127 = *(a1 + 5460);
        v128 = sub_19B5C0034((a1 + 5440), sub_19B5C024C, 0);
        v168 = 134218240;
        v169 = v127;
        v170 = 2048;
        v171 = v128;
        LODWORD(v164) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v126, 2, "[RelDMService] fResetTrackingAfterAuxGap, mean %.3f, maxCurr %.3f", COERCE_DOUBLE(&v168), v164);
        v130 = v129;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedEKFWithData(const IMUData &, const IMUData &, double, const uint64_t)", "CoreLocation: %s\n", v129);
        if (v130 != buf)
        {
          free(v130);
        }

        if (!v74)
        {
          return;
        }
      }

      else if (!v74)
      {
        return;
      }
    }

    else if (sub_19B5C0034((a1 + 5440), sub_19B5C024C, 0) >= 0.34907)
    {
      return;
    }

    *buf = sub_19B447000((a2 + 56));
    *&buf[4] = v131;
    *&buf[8] = v132;
    v133.f32[0] = sub_19B447000(&a3[7]);
    v165 = v133.f32[0];
    v166 = v134;
    v167 = v135;
    sub_19B714B04(a1 + 15920, buf, &v165, a1 + 16116, &v168, v133);
    sub_19B60307C(a1 + 16088, a2, a3, &v168, a4);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v136 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v136, OS_LOG_TYPE_DEFAULT, "[RelDMService] Initializing EKF.", buf, 2u);
    }

    v137 = sub_19B420058();
    if (*(v137 + 160) > 1 || *(v137 + 164) > 1 || *(v137 + 168) > 1 || *(v137 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      LOWORD(v165) = 0;
      LODWORD(v164) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Initializing EKF.", &v165, *&v164);
      v139 = v138;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::feedEKFWithData(const IMUData &, const IMUData &, double, const uint64_t)", "CoreLocation: %s\n", v138);
      if (v139 != buf)
      {
        free(v139);
      }
    }

    *(a1 + 16085) = 0;
  }
}

void sub_19B699D20(float *a1, float a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v3 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    *buf = 134217984;
    v12 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[CMBleedToZero] Setting BTZ horizon to %.2f seconds", buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v6 = *a1;
    v9 = 134217984;
    v10 = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMBleedToZero] Setting BTZ horizon to %.2f seconds", COERCE_DOUBLE(&v9));
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMBleedToZero::setMinRequiredQuiescentPeriod(float)", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }
}

void sub_19B699EF8(uint64_t a1, float32x2_t *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a1 + 108) == 1)
  {
    v4 = sub_19B606534(a1 + 80);
    if (*v4 != a2->f32[0] || v4[1] != a2->f32[1] || v4[2] != a2[1].f32[0] || v4[3] != a2[1].f32[1])
    {
      sub_19B690B4C(a1, 1);
    }
  }

  else
  {
    *(a1 + 92) = *a2->f32;
    *(a1 + 108) = 1;
    *(a1 + 15940) = *a2->f32;
    *(a1 + 15956) = 1;
    *(a1 + 27000) = *a2->f32;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a2->f32[0];
      v7 = a2->f32[1];
      v8 = a2[1].f32[0];
      v9 = a2[1].f32[1];
      *buf = 134284289;
      v27 = v6;
      v28 = 2049;
      v29 = v7;
      v30 = 2049;
      v31 = v8;
      v32 = 2049;
      v33 = v9;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[RelDMService] Headset orientation q_bf set to [%{private}f,%{private}f,%{private}f,%{private}f]", buf, 0x2Au);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v12 = a2->f32[0];
      v13 = a2->f32[1];
      v14 = a2[1].f32[0];
      v15 = a2[1].f32[1];
      v18 = 134284289;
      v19 = v12;
      v20 = 2049;
      v21 = v13;
      v22 = 2049;
      v23 = v14;
      v24 = 2049;
      v25 = v15;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDMService] Headset orientation q_bf set to [%{private}f,%{private}f,%{private}f,%{private}f]", &v18, 42);
      v17 = v16;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setFixedTransforms(const CMOQuaternion &)", "CoreLocation: %s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    if (*(a1 + 37656) == 1)
    {
      sub_19B78F384(a1 + 33904, a2, v11);
    }
  }
}

float sub_19B69A31C(float32x2_t *a1, float32x4_t a2)
{
  v8[0] = sub_19B66BFF4(a1 + 667, a2);
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  sub_19B66C1A4(v8, a1[660].f32[0], a1[660].f32[1], a1[661].f32[0]);
  return v6;
}

float sub_19B69A370(float32x2_t *a1, float32x4_t a2)
{
  v8[0] = sub_19B66BFF4(a1 + 676, a2);
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  sub_19B66C1A4(v8, a1[669].f32[0], a1[669].f32[1], a1[670].f32[0]);
  return v6;
}

void sub_19B69A3C4(uint64_t a1, uint64_t a2, float *a3, void *a4, void *a5)
{
  v10 = (a1 + 16080);
  if (*(a1 + 16))
  {
    v11 = *(a1 + 37712);
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 16088) != 1 || (v11 & 1) != 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0x3F80000000000000;
    v26 = sub_19B69A550();
    *a3 = *&v26;
    *(a3 + 1) = v27;
    *(a3 + 2) = v28;
    v29 = *(a1 + 3778);
    if (*(a1 + 3778))
    {
      v30 = v29 + *(a1 + 3776) - 1;
      v31 = *(a1 + 3780);
      if (v30 < v31)
      {
        v31 = 0;
      }

      v29 = *(a1 + 8 * (v30 - v31) + 3784);
    }

    *a5 = v29;
    if (((v10[2] | v11) & 1) == 0)
    {
      v29 = 0;
    }

    *a4 = v29;
  }

  else
  {
    v33 = *(a1 + 16100);
    v32 = *(a1 + 16092);
    v12 = 24;
    if (*v10)
    {
      v12 = 40;
    }

    v34 = *(a1 + 16092 + v12);
    v13 = sub_19B606534(a1 + 80);
    v15.f32[0] = sub_19B66BF70(&v34, v13, v14);
    v35 = __PAIR64__(v16, v15.u32[0]);
    v36 = v17;
    v37 = v18;
    *a2 = sub_19B66BFF4(&v35, v15);
    *(a2 + 4) = v19;
    *(a2 + 8) = v20;
    *(a2 + 12) = v21;
    *a3 = sub_19B604A8C(a1 + 80, &v32, &v34);
    *(a3 + 1) = v22;
    *(a3 + 2) = v23;
    *a4 = *(a1 + 5816);
    v24 = *(a1 + 3776) + *(a1 + 3778) - 1;
    v25 = *(a1 + 3780);
    if (v24 < v25)
    {
      v25 = 0;
    }

    *a5 = *(a1 + 8 * (v24 - v25) + 3784);
  }
}

double sub_19B69A550()
{
  if ((atomic_load_explicit(&qword_1EAFE31A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EAFE31A0))
  {
    sub_19B421798();
    v1 = sub_19B4426E4();
    v2 = -0.34907;
    if (!v1)
    {
      v2 = 0.0;
    }

    dword_1EAFE3198 = LODWORD(v2);
    __cxa_guard_release(&qword_1EAFE31A0);
  }

  __sincosf_stret(*&dword_1EAFE3198);
  return 0.0;
}

void sub_19B69A5F4(_BYTE *a1, unint64_t *a2, uint64_t a3, float *a4, unint64_t *a5, uint64_t *a6, _BYTE *a7)
{
  if (a1[16084] != 1 || *a2 == 0)
  {
    *a7 = 0;
    v18 = 0;
    v19 = 0x3F80000000000000;
    sub_19B69A3C4(a1, a3, a4, a5, a6);
LABEL_14:
    v17 = *a5;
    *a2 = *a5;
    goto LABEL_15;
  }

  if (a1[16] == 1 && (a1[37712] & 1) != 0 || (a1[16082] & 1) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = a1[16081] ^ 1;
  }

  *a7 = v13 & 1;
  v18 = 0;
  v19 = 0x3F80000000000000;
  sub_19B69A3C4(a1, a3, a4, a5, a6);
  if ((v13 & 1) == 0)
  {
    goto LABEL_14;
  }

  LODWORD(v18) = sub_19B5E9814((a1 + 27000), a2);
  HIDWORD(v18) = v14;
  v19 = __PAIR64__(v16, v15);
  v17 = *a2;
LABEL_15:
  sub_19B6ADB58((a1 + 27560), a4, &v18, v17, *a6);
}

void sub_19B69A71C(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    if (*(a1 + 37712) == 1)
    {
      *(a1 + 37712) = 0;
      sub_19B690B4C(a1, 1);
    }
  }
}

void sub_19B69A8E4(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *(a1 + 5832) = a2;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v3 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v10 = a2;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[RelDMService], walk or step detected. timestamp %llu", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v7 = 134217984;
    v8 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDMService], walk or step detected. timestamp %llu", &v7);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTimestampAuxLastDetectedWalking(uint64_t)", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }
}

void sub_19B69AAAC(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *(a1 + 5840) = a2;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v3 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v10 = a2;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[RelDMService], sit->stand detected. timestamp %llu", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v7 = 134217984;
    v8 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDMService], sit->stand detected. timestamp %llu", &v7);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTimestampAuxLastDetectedSitToStand(uint64_t)", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }
}

os_log_t sub_19B69AC74()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void **sub_19B69ACA4(void **a1)
{
  v3 = a1 + 647;
  sub_19B5BE5A4(&v3);
  v3 = a1 + 644;
  sub_19B5BE5A4(&v3);
  v3 = a1 + 641;
  sub_19B5BE5A4(&v3);
  v3 = a1 + 638;
  sub_19B5BE5A4(&v3);
  return a1;
}

uint64_t sub_19B69AD20(uint64_t a1)
{
  v2 = *(a1 + 24);
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

void sub_19B69ADA0()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

unsigned __int16 *sub_19B69ADEC(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3AB80);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3AB80);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMOQuaternion>::operator[](const size_t) const [T = CMOQuaternion]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[8 * (v4 - v5) + 4];
}

void sub_19B69B478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

os_log_t sub_19B69B4CC()
{
  result = os_log_create("com.apple.locationd.Motion", "PredictedWalkDistance");
  qword_1EAFE2A20 = result;
  return result;
}

void sub_19B69B728(uint64_t a1, const char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMFlickGestureManager, a2, a3))
  {
    qword_1ED71D360 = objc_alloc_init(CMFlickGestureManager);
  }

  else
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v4 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_FAULT))
    {
      v5 = NSStringFromClass(*(a1 + 32));
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "%@ is not supported on this platform!", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v7 = off_1EAFE2970;
      v8 = NSStringFromClass(*(a1 + 32));
      v11 = 138412290;
      v12 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v7, 17, "%@ is not supported on this platform!", &v11, 12);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMFlickGestureManager sharedManager]_block_invoke", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }
}

void sub_19B69B9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B69BB88(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v22, v21, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B69BBB8(uint64_t a1, CLConnectionMessage **a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
    v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
  }

  else
  {
    DictionaryOfClasses = 0;
    v10 = objc_msgSend_objectForKeyedSubscript_(0, v7, @"CMErrorMessage");
  }

  if (!DictionaryOfClasses || !v10)
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v18 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_ERROR, "Invalid service response.", buf, 2u);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      LOWORD(v28) = 0;
      LODWORD(v27) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 16, "Invalid service response.", &v28, v27, v28);
      goto LABEL_29;
    }

    return;
  }

  v13 = objc_msgSend_integerValue(v10, v11, v12);
  v14 = v13;
  if (v13 > 108)
  {
    if (v13 == 110)
    {
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v25 = off_1EAFE2970;
      if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "Not entitled to manage the AOP service.", buf, 2u);
      }

      v26 = sub_19B420058();
      if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2968 != -1)
        {
          dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
        }

        LOWORD(v28) = 0;
        LODWORD(v27) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 16, "Not entitled to manage the AOP service.", &v28, v27, v28);
        goto LABEL_29;
      }

      return;
    }

    if (v13 == 109)
    {
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v21 = off_1EAFE2970;
      if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "Service is not available!", buf, 2u);
      }

      v22 = sub_19B420058();
      if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2968 != -1)
        {
          dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
        }

        LOWORD(v28) = 0;
        LODWORD(v27) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 16, "Service is not available!", &v28, v27, v28);
        goto LABEL_29;
      }

      return;
    }
  }

  else
  {
    if (v13 == 100)
    {
      return;
    }

    if (v13 == 108)
    {
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v15 = off_1EAFE2970;
      if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Unable to communicate with the AOP service!", buf, 2u);
      }

      v16 = sub_19B420058();
      if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2968 != -1)
        {
          dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
        }

        LOWORD(v28) = 0;
        LODWORD(v27) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 16, "Unable to communicate with the AOP service!", &v28, v27, v28);
LABEL_29:
        v20 = v17;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMFlickGestureManager connect]_block_invoke", "CoreLocation: %s\n", v17);
        if (v20 != buf)
        {
          free(v20);
        }

        return;
      }

      return;
    }
  }

  if (qword_1EAFE2968 != -1)
  {
    dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
  }

  v23 = off_1EAFE2970;
  if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v30 = v14;
    _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "Service request failed! error,%{public}ld", buf, 0xCu);
  }

  v24 = sub_19B420058();
  if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    LODWORD(v28) = 134349056;
    *(&v28 + 4) = v14;
    LODWORD(v27) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 16, "Service request failed! error,%{public}ld", &v28, v27, v28);
    goto LABEL_29;
  }
}

void sub_19B69C1C0(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 40) == 1)
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v2 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Connection interrupted! Resending service request.", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v9[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 1, "Connection interrupted! Resending service request.", v9, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager connect]_block_invoke", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    *(*(a1 + 32) + 40) = 0;
    v6 = sub_19B420D84();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B69C3E0;
    v7[3] = &unk_1E7532A00;
    v8 = *(a1 + 32);
    sub_19B421668(v6, v7);
  }
}

void *sub_19B69C3E0(void *result, const char *a2, uint64_t a3)
{
  v3 = *(result + 4);
  if ((*(v3 + 40) & 1) == 0)
  {
    *(v3 + 40) = 1;
    return objc_msgSend_sendServiceRequestPrivate(*(result + 5), a2, a3);
  }

  return result;
}

void sub_19B69C504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B69C5AC(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  if (*(v1 + 40))
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v2 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Service already started.", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v13[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 1, "Service already started.", v13, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager startService]_block_invoke", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  else
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v7 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "Start service called.", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v13[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 0, "Start service called.", v13, 2);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager startService]_block_invoke", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    *(v1 + 40) = 1;
    objc_msgSend_sendServiceRequestPrivate(*(a1 + 32), v9, v10);
  }
}

void sub_19B69C940(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  if (*(v1 + 40) == 1)
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v3 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stop service called.", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v13[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 0, "Stop service called.", v13, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager stopService]_block_invoke", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    *(v1 + 40) = 0;
    objc_msgSend_sendServiceRequestPrivate(*(a1 + 32), v5, v6);
  }

  else
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v9 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "Service already stopped (or service has not been started yet).", buf, 2u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v13[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 1, "Service already stopped (or service has not been started yet).", v13, 2);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager stopService]_block_invoke", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }
}

uint64_t sub_19B69DE6C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1[4] + 8);
  *(v3 + 56) = a1[5];
  *(v3 + 48) = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel_sendEventToClientPrivate, a3);
}

void sub_19B69E070()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = sub_19B420D84();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  buf[0] = 0;
  v3 = sub_19B438CCC(v1, "EnableFlickGestureOnUnsupportedHardware", buf, 0xFFFFFFFFLL);
  byte_1ED71D350 = v3 & buf[0];
  if (v2)
  {
    sub_19B41FFEC(v2);
    if ((byte_1ED71D350 & 1) == 0)
    {
      return;
    }
  }

  else if ((v3 & buf[0]) == 0)
  {
    return;
  }

  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3ABC0);
  }

  v4 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Default to flick gesture manager on unsupported hardware is enabled!", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3ABC0);
    }

    v8[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2828, 0, "Default to flick gesture manager on unsupported hardware is enabled!", v8, 2);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL isFlickGestureAvailablePrivate()_block_invoke", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }
}

os_log_t sub_19B69E298()
{
  result = os_log_create("com.apple.locationd.Motion", "Eclipse");
  off_1EAFE2828 = result;
  return result;
}

os_log_t sub_19B69E2C8()
{
  result = os_log_create("com.apple.locationd.Motion", "Flick");
  off_1EAFE2970 = result;
  return result;
}

void sub_19B69E2FC(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B69E940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  sub_19B41FFEC(v16);
  _Unwind_Resume(a1);
}

void sub_19B69EC30(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 16);
  v3[2] = sub_19B69ECA8;
  v3[3] = &unk_1E7532A00;
  v4 = v1;
  dispatch_async(v2, v3);
}

uint64_t sub_19B69ECA8(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 24), *(a1 + 40));
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v5 = *(a1 + 32);
  if (Weak)
  {

    return objc_msgSend__connect(v5, v2, v3);
  }

  else
  {

    return objc_msgSend__disconnect(v5, v2, v3);
  }
}

void sub_19B69EF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  sub_19B41FFEC(v29);
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B69EFEC(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v4 = Weak;
    if (objc_loadWeak(Weak + 3))
    {
      v6 = a2[1];
      v7 = *a2;
      v8 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      objc_msgSend__handleMessage_(v4, v5, &v7);
      if (v8)
      {
        sub_19B41FFEC(v8);
      }
    }
  }
}

void sub_19B69F060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B69F3CC(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](Weak, sel_manager_didUpdateEvent_, v3);
}

uint64_t sub_19B69F40C(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](Weak, sel_manager_didUpdateMeasurement_, v3);
}

uint64_t sub_19B69F44C(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](Weak, sel_manager_didUpdateTemperature_, v3);
}

uint64_t sub_19B69F48C(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](Weak, sel_manager_errorOccurred_, v3);
}

void sub_19B69F82C()
{
  v0 = sub_19B420D84();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B438CCC(v1, "ForceAnomalyDetectionAvailable", &byte_1ED71D370, 0xFFFFFFFFLL);
  if (v2)
  {

    sub_19B41FFEC(v2);
  }
}

void sub_19B69F8A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B41FFEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B69FA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B69FAE4(uint64_t a1, CLConnectionMessage **a2)
{
  v163 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*a2)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v7 = objc_msgSend_setWithObject_(v4, v6, v5);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v2, v7);
    if (DictionaryOfClasses)
    {
      v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMAnomalyDetectorEvent");
      if (qword_1EAFE29A8 != -1)
      {
        dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
      }

      v11 = qword_1EAFE29B0;
      if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_msgSend_identifier(v10, v12, v13);
        objc_msgSend_absoluteTimestamp(v10, v15, v16);
        v18 = v17;
        objc_msgSend_updateTimestamp(v10, v19, v20);
        *buf = 68290819;
        v147 = 2082;
        v146 = 0;
        v148 = "";
        v149 = 2050;
        v150 = v14;
        v151 = 2049;
        v152 = v18;
        v153 = 2049;
        v154 = v29;
        v155 = 2049;
        v156 = objc_msgSend_state(v10, v21, v22);
        v157 = 2049;
        v158 = objc_msgSend_response(v10, v23, v24);
        v159 = 2049;
        v160 = objc_msgSend_resolution(v10, v25, v26);
        v161 = 2049;
        v162 = objc_msgSend_sosState(v10, v27, v28);
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CMAnomalyManager received event notification, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}", buf, 0x58u);
      }

      v30 = objc_msgSend_identifier(v10, v12, v13);
      if (v30 == objc_msgSend_identifier(*(*(a1 + 32) + 40), v31, v32) && objc_msgSend_state(*(*(a1 + 32) + 40), v33, v34) == 2 && objc_msgSend_state(v10, v33, v34) == 1)
      {
        if (qword_1EAFE29A8 != -1)
        {
          dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
        }

        v35 = qword_1EAFE29B0;
        if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
        {
          v38 = objc_msgSend_identifier(v10, v36, v37);
          *buf = 68289282;
          v146 = 0;
          v147 = 2082;
          v148 = "";
          v149 = 2050;
          v150 = v38;
          _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received same event identifier but state went from recovered to detected, identifier:%{public}llu}", buf, 0x1Cu);
          if (qword_1EAFE29A8 != -1)
          {
            dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
          }
        }

        v39 = qword_1EAFE29B0;
        if (!os_signpost_enabled(qword_1EAFE29B0))
        {
          goto LABEL_46;
        }

        v42 = objc_msgSend_identifier(v10, v40, v41);
        *buf = 68289282;
        v146 = 0;
        v147 = 2082;
        v148 = "";
        v149 = 2050;
        v150 = v42;
        v43 = "Received same event identifier but state went from recovered to detected";
        v44 = "{msg%{public}.0s:Received same event identifier but state went from recovered to detected, identifier:%{public}llu}";
      }

      else
      {
        if (objc_msgSend_state(v10, v33, v34) >= 1 && objc_msgSend_state(v10, v45, v46) < 4)
        {
          if (objc_msgSend_identifier(v10, v47, v48))
          {
            v58 = objc_msgSend_identifier(v10, v56, v57);
            if (v58 == objc_msgSend_identifier(*(*(a1 + 32) + 40), v59, v60) && (v63 = objc_msgSend_state(v10, v61, v62), v63 == objc_msgSend_state(*(*(a1 + 32) + 40), v64, v65)))
            {
              if (qword_1EAFE29A8 != -1)
              {
                dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
              }

              v66 = qword_1EAFE29B0;
              if (!os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_46;
              }

              v69 = objc_msgSend_identifier(v10, v67, v68);
              objc_msgSend_absoluteTimestamp(v10, v70, v71);
              v73 = v72;
              objc_msgSend_updateTimestamp(v10, v74, v75);
              v77 = v76;
              v80 = objc_msgSend_state(v10, v78, v79);
              v83 = objc_msgSend_response(v10, v81, v82);
              v86 = objc_msgSend_resolution(v10, v84, v85);
              v89 = objc_msgSend_sosState(v10, v87, v88);
              *buf = 68290819;
              v147 = 2082;
              v146 = 0;
              v148 = "";
              v149 = 2050;
              v150 = v69;
              v151 = 2049;
              v152 = v73;
              v153 = 2049;
              v154 = v77;
              v155 = 2049;
              v156 = v80;
              v157 = 2049;
              v158 = v83;
              v159 = 2049;
              v160 = v86;
              v161 = 2049;
              v162 = v89;
              v90 = "{msg%{public}.0s:CMAnomalyManager dispatch avoided, this event state has already been dispatched before, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}";
            }

            else
            {
              if (!objc_msgSend_resolution(v10, v61, v62))
              {
                v140 = *(a1 + 32);
                v141 = *(v140 + 16);
                v144[0] = MEMORY[0x1E69E9820];
                v144[1] = 3221225472;
                v144[2] = sub_19B6A0370;
                v144[3] = &unk_1E7532A00;
                v144[4] = v140;
                v144[5] = v10;
                dispatch_async(v141, v144);
                goto LABEL_46;
              }

              if (qword_1EAFE29A8 != -1)
              {
                dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
              }

              v66 = qword_1EAFE29B0;
              if (!os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_46;
              }

              v93 = objc_msgSend_identifier(v10, v91, v92);
              objc_msgSend_absoluteTimestamp(v10, v94, v95);
              v97 = v96;
              objc_msgSend_updateTimestamp(v10, v98, v99);
              v101 = v100;
              v104 = objc_msgSend_state(v10, v102, v103);
              v107 = objc_msgSend_response(v10, v105, v106);
              v110 = objc_msgSend_resolution(v10, v108, v109);
              v113 = objc_msgSend_sosState(v10, v111, v112);
              *buf = 68290819;
              v147 = 2082;
              v146 = 0;
              v148 = "";
              v149 = 2050;
              v150 = v93;
              v151 = 2049;
              v152 = v97;
              v153 = 2049;
              v154 = v101;
              v155 = 2049;
              v156 = v104;
              v157 = 2049;
              v158 = v107;
              v159 = 2049;
              v160 = v110;
              v161 = 2049;
              v162 = v113;
              v90 = "{msg%{public}.0s:CMAnomalyManager dispatch avoided, this event state is already resolved, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}";
            }

            v114 = v66;
            v115 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1EAFE29A8 != -1)
            {
              dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
            }

            v116 = qword_1EAFE29B0;
            if (!os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_46;
            }

            v119 = objc_msgSend_identifier(v10, v117, v118);
            objc_msgSend_absoluteTimestamp(v10, v120, v121);
            v123 = v122;
            objc_msgSend_updateTimestamp(v10, v124, v125);
            v127 = v126;
            v130 = objc_msgSend_state(v10, v128, v129);
            v133 = objc_msgSend_response(v10, v131, v132);
            v136 = objc_msgSend_resolution(v10, v134, v135);
            v139 = objc_msgSend_sosState(v10, v137, v138);
            *buf = 68290819;
            v147 = 2082;
            v146 = 0;
            v148 = "";
            v149 = 2050;
            v150 = v119;
            v151 = 2049;
            v152 = v123;
            v153 = 2049;
            v154 = v127;
            v155 = 2049;
            v156 = v130;
            v157 = 2049;
            v158 = v133;
            v159 = 2049;
            v160 = v136;
            v161 = 2049;
            v162 = v139;
            v90 = "{msg%{public}.0s:CMAnomalyManager dispatch avoided, this event is non event, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}";
            v114 = v116;
            v115 = OS_LOG_TYPE_DEBUG;
          }

          _os_log_impl(&dword_19B41C000, v114, v115, v90, buf, 0x58u);
LABEL_46:

          *(*(a1 + 32) + 32) = objc_msgSend_copy(v10, v142, v143);
          return;
        }

        if (qword_1EAFE29A8 != -1)
        {
          dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
        }

        v49 = qword_1EAFE29B0;
        if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
        {
          v52 = objc_msgSend_state(v10, v50, v51);
          *buf = 68289282;
          v146 = 0;
          v147 = 2082;
          v148 = "";
          v149 = 2050;
          v150 = v52;
          _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid event state, state:%{public}ld}", buf, 0x1Cu);
          if (qword_1EAFE29A8 != -1)
          {
            dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
          }
        }

        v39 = qword_1EAFE29B0;
        if (!os_signpost_enabled(qword_1EAFE29B0))
        {
          goto LABEL_46;
        }

        v55 = objc_msgSend_state(v10, v53, v54);
        *buf = 68289282;
        v146 = 0;
        v147 = 2082;
        v148 = "";
        v149 = 2050;
        v150 = v55;
        v43 = "Invalid event state";
        v44 = "{msg%{public}.0s:Invalid event state, state:%{public}ld}";
      }

      _os_signpost_emit_with_name_impl(&dword_19B41C000, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v43, v44, buf, 0x1Cu);
      goto LABEL_46;
    }
  }
}

void sub_19B6A0370(uint64_t a1, const char *a2, uint64_t a3)
{
  v201 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_delegate(*(a1 + 32), a2, a3))
  {
    objc_msgSend_delegate(*(a1 + 32), v4, v5);
    if (objc_opt_respondsToSelector())
    {
      if (qword_1EAFE29A8 != -1)
      {
        dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
      }

      v8 = qword_1EAFE29B0;
      if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_msgSend_identifier(*(a1 + 40), v9, v10);
        objc_msgSend_absoluteTimestamp(*(a1 + 40), v12, v13);
        v15 = v14;
        objc_msgSend_updateTimestamp(*(a1 + 40), v16, v17);
        v19 = v18;
        v22 = objc_msgSend_state(*(a1 + 40), v20, v21);
        v25 = objc_msgSend_response(*(a1 + 40), v23, v24);
        v28 = objc_msgSend_resolution(*(a1 + 40), v26, v27);
        v31 = objc_msgSend_sosState(*(a1 + 40), v29, v30);
        v184 = 68290819;
        v185 = 2082;
        v186 = "";
        v187 = 2050;
        v188 = v11;
        v189 = 2049;
        v190 = v15;
        v191 = 2049;
        v192 = v19;
        v193 = 2049;
        v194 = v22;
        v195 = 2049;
        v196 = v25;
        v197 = 2049;
        v198 = v28;
        v199 = 2049;
        v200 = v31;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CMAnomalyManager dispatches event through onAnomalyEvent, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}", &v184, 0x58u);
      }

      *(*(a1 + 32) + 40) = objc_msgSend_copy(*(a1 + 40), v32, v33);
      objc_msgSend_setAcknowledgement_(*(*(a1 + 32) + 40), v34, 1);
      objc_msgSend__sendRegistrationForAnomalyEvent_(*(a1 + 32), v35, *(*(a1 + 32) + 40));
      v38 = objc_msgSend_delegate(*(a1 + 32), v36, v37);
      objc_msgSend_anomalyManager_onAnomalyEvent_(v38, v39, *(a1 + 32), *(a1 + 40));
      return;
    }

    objc_msgSend_delegate(*(a1 + 32), v6, v7);
    if (objc_opt_respondsToSelector())
    {
      if (qword_1EAFE29A8 != -1)
      {
        dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
      }

      v90 = qword_1EAFE29B0;
      if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
      {
        v93 = objc_msgSend_identifier(*(a1 + 40), v91, v92);
        objc_msgSend_absoluteTimestamp(*(a1 + 40), v94, v95);
        v97 = v96;
        objc_msgSend_updateTimestamp(*(a1 + 40), v98, v99);
        v101 = v100;
        v104 = objc_msgSend_state(*(a1 + 40), v102, v103);
        v107 = objc_msgSend_response(*(a1 + 40), v105, v106);
        v110 = objc_msgSend_resolution(*(a1 + 40), v108, v109);
        v113 = objc_msgSend_sosState(*(a1 + 40), v111, v112);
        v184 = 68290819;
        v185 = 2082;
        v186 = "";
        v187 = 2050;
        v188 = v93;
        v189 = 2049;
        v190 = v97;
        v191 = 2049;
        v192 = v101;
        v193 = 2049;
        v194 = v104;
        v195 = 2049;
        v196 = v107;
        v197 = 2049;
        v198 = v110;
        v199 = 2049;
        v200 = v113;
        _os_log_impl(&dword_19B41C000, v90, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CMAnomalyManager did not dispatch event through didDetectAnomalyEvent, function was deprecated, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}", &v184, 0x58u);
        if (qword_1EAFE29A8 != -1)
        {
          dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
        }
      }

      v64 = qword_1EAFE29B0;
      if (os_signpost_enabled(qword_1EAFE29B0))
      {
        v116 = objc_msgSend_identifier(*(a1 + 40), v114, v115);
        objc_msgSend_absoluteTimestamp(*(a1 + 40), v117, v118);
        v120 = v119;
        objc_msgSend_updateTimestamp(*(a1 + 40), v121, v122);
        v124 = v123;
        v127 = objc_msgSend_state(*(a1 + 40), v125, v126);
        v130 = objc_msgSend_response(*(a1 + 40), v128, v129);
        v133 = objc_msgSend_resolution(*(a1 + 40), v131, v132);
        v136 = objc_msgSend_sosState(*(a1 + 40), v134, v135);
        v184 = 68290819;
        v185 = 2082;
        v186 = "";
        v187 = 2050;
        v188 = v116;
        v189 = 2049;
        v190 = v120;
        v191 = 2049;
        v192 = v124;
        v193 = 2049;
        v194 = v127;
        v195 = 2049;
        v196 = v130;
        v197 = 2049;
        v198 = v133;
        v199 = 2049;
        v200 = v136;
        v88 = "CMAnomalyManager did not dispatch event through didDetectAnomalyEvent, function was deprecated";
        v89 = "{msg%{public}.0s:CMAnomalyManager did not dispatch event through didDetectAnomalyEvent, function was deprecated, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}";
        goto LABEL_30;
      }
    }

    else
    {
      if (qword_1EAFE29A8 != -1)
      {
        dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
      }

      v137 = qword_1EAFE29B0;
      if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
      {
        v140 = objc_msgSend_identifier(*(a1 + 40), v138, v139);
        objc_msgSend_absoluteTimestamp(*(a1 + 40), v141, v142);
        v144 = v143;
        objc_msgSend_updateTimestamp(*(a1 + 40), v145, v146);
        v148 = v147;
        v151 = objc_msgSend_state(*(a1 + 40), v149, v150);
        v154 = objc_msgSend_response(*(a1 + 40), v152, v153);
        v157 = objc_msgSend_resolution(*(a1 + 40), v155, v156);
        v160 = objc_msgSend_sosState(*(a1 + 40), v158, v159);
        v184 = 68290819;
        v185 = 2082;
        v186 = "";
        v187 = 2050;
        v188 = v140;
        v189 = 2049;
        v190 = v144;
        v191 = 2049;
        v192 = v148;
        v193 = 2049;
        v194 = v151;
        v195 = 2049;
        v196 = v154;
        v197 = 2049;
        v198 = v157;
        v199 = 2049;
        v200 = v160;
        _os_log_impl(&dword_19B41C000, v137, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CMAnomalyManager did not dispatch event - no suitable selector, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}", &v184, 0x58u);
        if (qword_1EAFE29A8 != -1)
        {
          dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
        }
      }

      v64 = qword_1EAFE29B0;
      if (os_signpost_enabled(qword_1EAFE29B0))
      {
        v163 = objc_msgSend_identifier(*(a1 + 40), v161, v162);
        objc_msgSend_absoluteTimestamp(*(a1 + 40), v164, v165);
        v167 = v166;
        objc_msgSend_updateTimestamp(*(a1 + 40), v168, v169);
        v171 = v170;
        v174 = objc_msgSend_state(*(a1 + 40), v172, v173);
        v177 = objc_msgSend_response(*(a1 + 40), v175, v176);
        v180 = objc_msgSend_resolution(*(a1 + 40), v178, v179);
        v183 = objc_msgSend_sosState(*(a1 + 40), v181, v182);
        v184 = 68290819;
        v185 = 2082;
        v186 = "";
        v187 = 2050;
        v188 = v163;
        v189 = 2049;
        v190 = v167;
        v191 = 2049;
        v192 = v171;
        v193 = 2049;
        v194 = v174;
        v195 = 2049;
        v196 = v177;
        v197 = 2049;
        v198 = v180;
        v199 = 2049;
        v200 = v183;
        v88 = "CMAnomalyManager did not dispatch event - no suitable selector";
        v89 = "{msg%{public}.0s:CMAnomalyManager did not dispatch event - no suitable selector, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}";
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (qword_1EAFE29A8 != -1)
    {
      dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
    }

    v40 = qword_1EAFE29B0;
    if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
    {
      v43 = objc_msgSend_identifier(*(a1 + 40), v41, v42);
      objc_msgSend_absoluteTimestamp(*(a1 + 40), v44, v45);
      v47 = v46;
      objc_msgSend_updateTimestamp(*(a1 + 40), v48, v49);
      v51 = v50;
      v54 = objc_msgSend_state(*(a1 + 40), v52, v53);
      v57 = objc_msgSend_response(*(a1 + 40), v55, v56);
      v60 = objc_msgSend_resolution(*(a1 + 40), v58, v59);
      v63 = objc_msgSend_sosState(*(a1 + 40), v61, v62);
      v184 = 68290819;
      v185 = 2082;
      v186 = "";
      v187 = 2050;
      v188 = v43;
      v189 = 2049;
      v190 = v47;
      v191 = 2049;
      v192 = v51;
      v193 = 2049;
      v194 = v54;
      v195 = 2049;
      v196 = v57;
      v197 = 2049;
      v198 = v60;
      v199 = 2049;
      v200 = v63;
      _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CMAnomalyManager did not dispatch event - registered delegate was released, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}", &v184, 0x58u);
      if (qword_1EAFE29A8 != -1)
      {
        dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
      }
    }

    v64 = qword_1EAFE29B0;
    if (os_signpost_enabled(qword_1EAFE29B0))
    {
      v67 = objc_msgSend_identifier(*(a1 + 40), v65, v66);
      objc_msgSend_absoluteTimestamp(*(a1 + 40), v68, v69);
      v71 = v70;
      objc_msgSend_updateTimestamp(*(a1 + 40), v72, v73);
      v75 = v74;
      v78 = objc_msgSend_state(*(a1 + 40), v76, v77);
      v81 = objc_msgSend_response(*(a1 + 40), v79, v80);
      v84 = objc_msgSend_resolution(*(a1 + 40), v82, v83);
      v87 = objc_msgSend_sosState(*(a1 + 40), v85, v86);
      v184 = 68290819;
      v185 = 2082;
      v186 = "";
      v187 = 2050;
      v188 = v67;
      v189 = 2049;
      v190 = v71;
      v191 = 2049;
      v192 = v75;
      v193 = 2049;
      v194 = v78;
      v195 = 2049;
      v196 = v81;
      v197 = 2049;
      v198 = v84;
      v199 = 2049;
      v200 = v87;
      v88 = "CMAnomalyManager did not dispatch event - registered delegate was released";
      v89 = "{msg%{public}.0s:CMAnomalyManager did not dispatch event - registered delegate was released, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}";
LABEL_30:
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v64, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v88, v89, &v184, 0x58u);
    }
  }
}

void sub_19B6A0BDC(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE29A8 != -1)
    {
      dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
    }

    v6 = qword_1EAFE29B0;
    if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_UTF8String(v5, v7, v8);
      v10 = getpid();
      v11 = *(a1 + 32);
      v12 = 68289795;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = v9;
      v17 = 2050;
      v18 = v10;
      v19 = 2049;
      v20 = v11;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CMAnomalyManager client connection interrupt, path:%{public, location:escape_only}s, pid:%{public}llu, self:%{private}p}", &v12, 0x30u);
    }
  }
}

void sub_19B6A0DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6A15F8(uint64_t a1, const char *a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    v7[0] = @"kCLConnectionMessageSubscribeKey";
    v4 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, *(v2 + 48));
    v7[1] = @"CMAnomalyDetectorEvent";
    v5 = *(a1 + 40);
    v8[0] = v4;
    v8[1] = v5;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v8, v7, 2);
    sub_19B6A2040();
  }
}

void sub_19B6A1704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B6A2010()
{
  result = os_log_create("com.apple.locationd.Motion", "Fall");
  qword_1EAFE29B0 = result;
  return result;
}

void *sub_19B6A20B4(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6A2110((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6A2110(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6A2168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6A2184(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, a1);
  v8 = objc_msgSend_contentsOfDirectoryAtPath_error_(v4, v7, v6, 0);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = objc_msgSend_reverseObjectEnumerator(v8, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v24, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v21;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v21 != v17)
      {
        objc_enumerationMutation(v11);
      }

      v19 = objc_msgSend_UTF8String(*(*(&v20 + 1) + 8 * v18), v14, v15);
      if (!(*(a2 + 16))(a2, v19))
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v20, v24, 16);
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

uint64_t sub_19B6A22F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel_onAudioAccessoryActivity_, result);
  }

  return result;
}

void sub_19B6A2674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6A268C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_initPrivate(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B6A285C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unsigned __int16 *sub_19B6A6B1C(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3AE00);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3AE00);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMResampleAccessoryDeviceMotion::InputData>::operator[](const size_t) const [T = CMResampleAccessoryDeviceMotion::InputData]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[32 * (v4 - v5) + 4];
}

uint64_t sub_19B6A733C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], a2, *(a1 + 40));
  LODWORD(v5) = *(a1 + 44);
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v6, v7, v5);
  v9 = *(v3 + 16);

  return v9(v3, v4, v8);
}

uint64_t sub_19B6A7B60(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], a2, *(a1 + 48));
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v5, *(a1 + 40));
  v7 = *(v3 + 16);

  return v7(v3, v4, v6);
}

os_log_t sub_19B6A7C00()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

os_log_t sub_19B6A7C30()
{
  result = os_log_create("com.apple.locationd.Motion", "InertialOdometry");
  qword_1EAFE2A90 = result;
  return result;
}

void sub_19B6A7C64(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7CAC(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7CF4(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7D3C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7D84(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7DCC(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7E14(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7E5C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7EA4(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7EE8(double *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1 >= 0.0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29840);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = objc_msgSend_UTF8String(a2, v6, v7);
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "[CMMediaSessionAnalyticsTracker] Metric %s: Calling start when we've already started.", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29840);
      }

      v11 = off_1EAFE29A0;
      v14 = 136315138;
      v15 = objc_msgSend_UTF8String(a2, v9, v10);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 16, "[CMMediaSessionAnalyticsTracker] Metric %s: Calling start when we've already started.", &v14);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMCoreAnalyticsUtil::AccumulatedEvent::start(const NSString *)", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  else
  {
    v3 = mach_continuous_time();
    *a1 = sub_19B41E070(v3);
  }
}

void sub_19B6A80D8(double *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1 <= 0.0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29840);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = objc_msgSend_UTF8String(a2, v6, v7);
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "[CMMediaSessionAnalyticsTracker] Metric %s: Calling stop when we haven't started.", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29840);
      }

      v11 = off_1EAFE29A0;
      v14 = 136315138;
      v15 = objc_msgSend_UTF8String(a2, v9, v10);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 16, "[CMMediaSessionAnalyticsTracker] Metric %s: Calling stop when we haven't started.", &v14);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMCoreAnalyticsUtil::AccumulatedEvent::stop(const NSString *)", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  else
  {
    v3 = mach_continuous_time();
    a1[1] = a1[1] + sub_19B41E070(v3) - *a1;
    *a1 = -1.0;
  }
}

os_log_t sub_19B6A82DC()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void sub_19B6A83D4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B6A8514(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19B6A8534(uint64_t a1, CLConnectionMessage **a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    Dictionary = CLConnectionMessage::getDictionary(*a2);
    if (objc_msgSend_objectForKeyedSubscript_(Dictionary, v3, @"CMErrorMessage"))
    {
      v5 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v4, @"CMErrorMessage");
      v6 = MEMORY[0x1E696ABC0];
      v9 = objc_msgSend_integerValue(v5, v7, v8);
      v11 = objc_msgSend_errorWithDomain_code_userInfo_(v6, v10, @"CMErrorDomain", v9, 0);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v12 = qword_1EAFE27C0;
      if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v11;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Failed with error %{public}@", buf, 0xCu);
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2788 != -1)
        {
          dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
        }

        LODWORD(v18) = 138543362;
        *(&v18 + 4) = v11;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C0, 16, "Failed with error %{public}@", &v18, 12, v18);
LABEL_23:
        v17 = v14;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager connect]_block_invoke", "CoreLocation: %s\n", v14);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v15 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Failed with unknown internal error.", buf, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      LOWORD(v18) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C0, 16, "Failed with unknown internal error.", &v18, 2, v18);
      goto LABEL_23;
    }
  }
}

void sub_19B6A883C(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  v3 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v4, v3);
  if (ExecutablePathFromPid)
  {
    v8 = ExecutablePathFromPid;
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v9 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_INFO))
    {
      *buf = 136446722;
      v26 = objc_msgSend_UTF8String(v8, v10, v11);
      v27 = 1026;
      v28 = getpid();
      v29 = 2050;
      v30 = Weak;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "Client connection interrupt, %{public}s, %{public}d, %{public}p", buf, 0x1Cu);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v15 = qword_1EAFE27C0;
      v19 = 136446722;
      v20 = objc_msgSend_UTF8String(v8, v13, v14);
      v21 = 1026;
      v22 = getpid();
      v23 = 2050;
      v24 = Weak;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v15, 1, "Client connection interrupt, %{public}s, %{public}d, %{public}p", &v19, 28);
      v17 = v16;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMVO2MaxRetrocomputeManager connect]_block_invoke", "CoreLocation: %s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  if (*(*(a1 + 32) + 24) == 1 && Weak != 0)
  {
    objc_msgSend_startRetrocomputeStatusUpdates(Weak, v6, v7);
  }
}

void sub_19B6A8E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6A8E60(uint64_t a1, CLConnectionMessage **a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v4, v6, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0)
  {
    v10 = DictionaryOfClasses;
    v11 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
    if (v11)
    {
      v13 = v11;
      v14 = v11;
      v15 = v31;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_19B6A93A0;
      v31[3] = &unk_1E7534178;
      v31[4] = v13;
      v32 = *(a1 + 32);
    }

    else
    {
      v20 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"CMVO2MaxRetrocomputeRecord");
      if (v20)
      {
        v21 = v20;
        v22 = v20;
        v15 = v28;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = sub_19B6A9654;
        v28[3] = &unk_1E7532B90;
        v23 = *(a1 + 32);
        v28[4] = v21;
        v28[5] = v23;
      }

      else
      {
        if (qword_1EAFE2788 != -1)
        {
          dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
        }

        v24 = qword_1EAFE27C0;
        if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "Error in retrocomputeStatusWithHandler: Unable to parse query response", buf, 2u);
        }

        v25 = sub_19B420058();
        if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2788 != -1)
          {
            dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
          }

          v35[0] = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C0, 16, "Error in retrocomputeStatusWithHandler: Unable to parse query response", v35, 2);
          v27 = v26;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStatusWithHandler:]_block_invoke", "CoreLocation: %s\n", v26);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        v15 = v29;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = sub_19B6A95CC;
        v29[3] = &unk_1E7534150;
        v30 = *(a1 + 32);
      }
    }
  }

  else
  {
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v16 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "Response invalid for retrocomputeStatusWithHandler. Internal error occured.", buf, 2u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v35[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C0, 16, "Response invalid for retrocomputeStatusWithHandler. Internal error occured.", v35, 2);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStatusWithHandler:]_block_invoke", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v15 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6A9318;
    block[3] = &unk_1E7534150;
    v34 = *(a1 + 32);
  }

  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

void sub_19B6A9318(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  (*(v3 + 16))(v3, v4, 0, 0, v5);
  v6 = *(a1 + 32);
}

void sub_19B6A93A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v4, v6, @"CMErrorDomain", v5, 0);
  if (qword_1EAFE2788 != -1)
  {
    dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
  }

  v8 = qword_1EAFE27C0;
  if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Received error for retrocomputeStatusWithHandler: %{public}@", buf, 0xCu);
  }

  v9 = sub_19B420058();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v12 = 138543362;
    v13 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C0, 16, "Received error for retrocomputeStatusWithHandler: %{public}@", &v12, 12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStatusWithHandler:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_19B6A95CC(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  (*(v3 + 16))(v3, v4, 0, 0, v5);
  v6 = *(a1 + 32);
}

void sub_19B6A9654(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = objc_msgSend_status(*(a1 + 32), a2, a3);
  started = objc_msgSend_startDate(*(a1 + 32), v6, v7);
  v11 = objc_msgSend_endDate(*(a1 + 32), v9, v10);
  (*(v4 + 16))(v4, v5, started, v11, 0);

  v12 = *(a1 + 40);
}

void sub_19B6A9A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  if (a22)
  {
    sub_19B41FFEC(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6A9A5C(uint64_t a1, CLConnectionMessage **a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v4, v6, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0)
  {
    v10 = DictionaryOfClasses;
    v11 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
    if (v11)
    {
      v13 = v11;
      v14 = v11;
      v15 = v31;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_19B6A9F7C;
      v31[3] = &unk_1E7532B68;
      v16 = *(a1 + 32);
      v31[4] = v13;
      v31[5] = v16;
    }

    else
    {
      v21 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"CMVO2MaxRetrocomputeRecord");
      if (v21)
      {
        v22 = v21;
        v23 = v21;
        v15 = v29;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = sub_19B6AA20C;
        v29[3] = &unk_1E7532B90;
        v24 = *(a1 + 32);
        v29[4] = v22;
        v29[5] = v24;
      }

      else
      {
        if (qword_1EAFE2788 != -1)
        {
          dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
        }

        v25 = qword_1EAFE27C0;
        if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "Error in retrocomputeStateWithHandler: Unable to parse query response", buf, 2u);
        }

        v26 = sub_19B420058();
        if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2788 != -1)
          {
            dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
          }

          v33[0] = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C0, 16, "Error in retrocomputeStateWithHandler: Unable to parse query response", v33, 2);
          v28 = v27;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStateWithHandler:]_block_invoke", "CoreLocation: %s\n", v27);
          if (v28 != buf)
          {
            free(v28);
          }
        }

        v15 = v30;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = sub_19B6AA19C;
        v30[3] = &unk_1E7532B40;
        v30[4] = *(a1 + 32);
      }
    }
  }

  else
  {
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v17 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Response invalid for retrocomputeStateWithHandler. Internal error occured.", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v33[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C0, 16, "Response invalid for retrocomputeStateWithHandler. Internal error occured.", v33, 2);
      v20 = v19;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStateWithHandler:]_block_invoke", "CoreLocation: %s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    v15 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6A9F0C;
    block[3] = &unk_1E7532B40;
    block[4] = *(a1 + 32);
  }

  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

void sub_19B6A9F0C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  (*(v3 + 16))(v3, 0, v4);
  v5 = *(a1 + 32);
}

void sub_19B6A9F7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v4, v6, @"CMErrorDomain", v5, 0);
  if (qword_1EAFE2788 != -1)
  {
    dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
  }

  v8 = qword_1EAFE27C0;
  if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Received error for retrocomputeStateWithHandler: %{public}@", buf, 0xCu);
  }

  v9 = sub_19B420058();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v12 = 138543362;
    v13 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C0, 16, "Received error for retrocomputeStateWithHandler: %{public}@", &v12, 12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStateWithHandler:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_19B6AA19C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  (*(v3 + 16))(v3, 0, v4);
  v5 = *(a1 + 32);
}

void sub_19B6AA20C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();

  v2 = *(a1 + 40);
}

void sub_19B6AA4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  if (a22)
  {
    sub_19B41FFEC(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6AA528(uint64_t a1, CLConnectionMessage **a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    Dictionary = CLConnectionMessage::getDictionary(*a2);
    if (!objc_msgSend_objectForKeyedSubscript_(Dictionary, v4, @"CMErrorMessage"))
    {
      v12 = 0;
      goto LABEL_26;
    }

    v6 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v5, @"CMErrorMessage");
    v7 = MEMORY[0x1E696ABC0];
    v10 = objc_msgSend_integerValue(v6, v8, v9);
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(v7, v11, @"CMErrorDomain", v10, 0);
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v13 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v12;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_ERROR, "Received error for triggerVO2MaxRetrocompute: %{public}@", buf, 0xCu);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v22 = 138543362;
      v23 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C0, 16, "Received error for triggerVO2MaxRetrocompute: %{public}@", &v22, 12);
LABEL_23:
      v18 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager triggerRetrocomputeWithHandler:]_block_invoke", "CoreLocation: %s\n", v15);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  else
  {
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v16 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "Response invalid for triggerVO2MaxRetrocompute.  Internal error occured.", buf, 2u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      LOWORD(v22) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C0, 16, "Response invalid for triggerVO2MaxRetrocompute.  Internal error occured.", &v22, 2);
      goto LABEL_23;
    }
  }

LABEL_26:
  v19 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6AA8C8;
  block[3] = &unk_1E7532B90;
  v20 = *(a1 + 32);
  block[4] = v12;
  block[5] = v20;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}