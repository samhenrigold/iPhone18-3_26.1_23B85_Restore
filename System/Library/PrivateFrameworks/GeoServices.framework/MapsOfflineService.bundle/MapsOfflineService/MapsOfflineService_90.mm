void sub_5B1F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_5B2058(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 4799) == 1)
  {
    if (*(a1 + 3264))
    {
LABEL_3:
      v3 = "";
      goto LABEL_6;
    }
  }

  else if (*(a1 + 3265))
  {
    goto LABEL_3;
  }

  v3 = "_Old";
LABEL_6:
  if (byte_279581F >= 0)
  {
    v4 = byte_279581F;
  }

  else
  {
    v4 = qword_2795810;
  }

  if (v4 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v5 = *(a1 + 8);
  if (v4 + 10 >= 0x17)
  {
    operator new();
  }

  *&v35.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v35.__r_.__value_.__s + 23) = v4 + 10;
  qmemcpy(&v35, "BannerHead", 10);
  if (v4)
  {
    if (byte_279581F >= 0)
    {
      v6 = &qword_2795808;
    }

    else
    {
      v6 = qword_2795808;
    }

    memmove(&v35.__r_.__value_.__r.__words[1] + 2, v6, v4);
  }

  *(&v35.__r_.__value_.__r.__words[1] + v4 + 2) = 0;
  v7 = strlen(v3);
  v8 = std::string::append(&v35, v3, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  *&v30 = *(&v8->__r_.__value_.__l + 2);
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = sub_9274F4(v5, __p);
  if (*(v10 + 23) < 0)
  {
    sub_325C(&v39, *v10, v10[1]);
  }

  else
  {
    v11 = *v10;
    v40 = v10[2];
    v39 = v11;
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_22:
  if (byte_279581F >= 0)
  {
    v12 = byte_279581F;
  }

  else
  {
    v12 = qword_2795810;
  }

  if (v12 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v13 = *(a1 + 8);
  if (v12 + 10 >= 0x17)
  {
    operator new();
  }

  *&v35.__r_.__value_.__r.__words[1] = 0x7964uLL;
  *(&v35.__r_.__value_.__s + 23) = v12 + 10;
  v35.__r_.__value_.__r.__words[0] = 0x6F4272656E6E6142;
  if (v12)
  {
    if (byte_279581F >= 0)
    {
      v14 = &qword_2795808;
    }

    else
    {
      v14 = qword_2795808;
    }

    memmove(&v35.__r_.__value_.__r.__words[1] + 2, v14, v12);
  }

  *(&v35.__r_.__value_.__r.__words[1] + v12 + 2) = 0;
  v15 = strlen(v3);
  v16 = std::string::append(&v35, v3, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  *&v30 = *(&v16->__r_.__value_.__l + 2);
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = sub_9274F4(v13, __p);
  if (*(v18 + 23) < 0)
  {
    sub_325C(&v37, *v18, v18[1]);
  }

  else
  {
    v19 = *v18;
    v38 = v18[2];
    v37 = v19;
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_40:
  if (byte_279581F >= 0)
  {
    v20 = byte_279581F;
  }

  else
  {
    v20 = qword_2795810;
  }

  if (v20 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v20 + 10 >= 0x17)
  {
    operator new();
  }

  *&v32.__r_.__value_.__r.__words[1] = 0x7472uLL;
  *(&v32.__r_.__value_.__s + 23) = v20 + 10;
  v32.__r_.__value_.__r.__words[0] = 0x656C416563696F56;
  if (v20)
  {
    if (byte_279581F >= 0)
    {
      v21 = &qword_2795808;
    }

    else
    {
      v21 = qword_2795808;
    }

    memmove(&v32.__r_.__value_.__r.__words[1] + 2, v21, v20);
  }

  *(&v32.__r_.__value_.__r.__words[1] + v20 + 2) = 0;
  v22 = strlen(v3);
  v23 = std::string::append(&v32, v3, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v34 = v23->__r_.__value_.__r.__words[2];
  *v33 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  *__p = 0u;
  v30 = 0u;
  v31 = 1065353216;
  sub_65F810(a1 + 24, v33, __p, *(a1 + 3261), &v35);
  v36 = v35;
  memset(&v35, 0, sizeof(v35));
  v25 = v30;
  if (v30)
  {
    do
    {
      v26 = *v25;
      sub_55F7FC((v25 + 2));
      operator delete(v25);
      v25 = v26;
    }

    while (v26);
  }

  v27 = __p[0];
  __p[0] = 0;
  if (v27)
  {
    operator delete(v27);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_57:
  sub_5CB7CC(a2, &v39, &v37, &v36);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
LABEL_59:
      if ((SHIBYTE(v40) & 0x80000000) == 0)
      {
        return;
      }

LABEL_67:
      operator delete(v39);
      return;
    }
  }

  else if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v37);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_67;
  }
}

void sub_5B25B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_5B2A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  if (*(v44 - 73) < 0)
  {
    operator delete(*(v44 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_5B2B08(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 4799) == 1)
  {
    if (*(a1 + 3264))
    {
LABEL_3:
      v3 = "";
      goto LABEL_6;
    }
  }

  else if (*(a1 + 3265))
  {
    goto LABEL_3;
  }

  v3 = "_Old";
LABEL_6:
  if (byte_2795837 >= 0)
  {
    v4 = byte_2795837;
  }

  else
  {
    v4 = qword_2795828;
  }

  if (v4 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v5 = *(a1 + 8);
  if (v4 + 10 >= 0x17)
  {
    operator new();
  }

  *&v35.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v35.__r_.__value_.__s + 23) = v4 + 10;
  qmemcpy(&v35, "BannerHead", 10);
  if (v4)
  {
    if (byte_2795837 >= 0)
    {
      v6 = &qword_2795820;
    }

    else
    {
      v6 = qword_2795820;
    }

    memmove(&v35.__r_.__value_.__r.__words[1] + 2, v6, v4);
  }

  *(&v35.__r_.__value_.__r.__words[1] + v4 + 2) = 0;
  v7 = strlen(v3);
  v8 = std::string::append(&v35, v3, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  *&v30 = *(&v8->__r_.__value_.__l + 2);
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = sub_9274F4(v5, __p);
  if (*(v10 + 23) < 0)
  {
    sub_325C(&v39, *v10, v10[1]);
  }

  else
  {
    v11 = *v10;
    v40 = v10[2];
    v39 = v11;
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_22:
  if (byte_2795837 >= 0)
  {
    v12 = byte_2795837;
  }

  else
  {
    v12 = qword_2795828;
  }

  if (v12 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v13 = *(a1 + 8);
  if (v12 + 10 >= 0x17)
  {
    operator new();
  }

  *&v35.__r_.__value_.__r.__words[1] = 0x7964uLL;
  *(&v35.__r_.__value_.__s + 23) = v12 + 10;
  v35.__r_.__value_.__r.__words[0] = 0x6F4272656E6E6142;
  if (v12)
  {
    if (byte_2795837 >= 0)
    {
      v14 = &qword_2795820;
    }

    else
    {
      v14 = qword_2795820;
    }

    memmove(&v35.__r_.__value_.__r.__words[1] + 2, v14, v12);
  }

  *(&v35.__r_.__value_.__r.__words[1] + v12 + 2) = 0;
  v15 = strlen(v3);
  v16 = std::string::append(&v35, v3, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  *&v30 = *(&v16->__r_.__value_.__l + 2);
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = sub_9274F4(v13, __p);
  if (*(v18 + 23) < 0)
  {
    sub_325C(&v37, *v18, v18[1]);
  }

  else
  {
    v19 = *v18;
    v38 = v18[2];
    v37 = v19;
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_40:
  if (byte_2795837 >= 0)
  {
    v20 = byte_2795837;
  }

  else
  {
    v20 = qword_2795828;
  }

  if (v20 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v20 + 10 >= 0x17)
  {
    operator new();
  }

  *&v32.__r_.__value_.__r.__words[1] = 0x7472uLL;
  *(&v32.__r_.__value_.__s + 23) = v20 + 10;
  v32.__r_.__value_.__r.__words[0] = 0x656C416563696F56;
  if (v20)
  {
    if (byte_2795837 >= 0)
    {
      v21 = &qword_2795820;
    }

    else
    {
      v21 = qword_2795820;
    }

    memmove(&v32.__r_.__value_.__r.__words[1] + 2, v21, v20);
  }

  *(&v32.__r_.__value_.__r.__words[1] + v20 + 2) = 0;
  v22 = strlen(v3);
  v23 = std::string::append(&v32, v3, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v34 = v23->__r_.__value_.__r.__words[2];
  *v33 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  *__p = 0u;
  v30 = 0u;
  v31 = 1065353216;
  sub_65F810(a1 + 24, v33, __p, *(a1 + 3261), &v35);
  v36 = v35;
  memset(&v35, 0, sizeof(v35));
  v25 = v30;
  if (v30)
  {
    do
    {
      v26 = *v25;
      sub_55F7FC((v25 + 2));
      operator delete(v25);
      v25 = v26;
    }

    while (v26);
  }

  v27 = __p[0];
  __p[0] = 0;
  if (v27)
  {
    operator delete(v27);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_57:
  sub_5CB7CC(a2, &v39, &v37, &v36);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
LABEL_59:
      if ((SHIBYTE(v40) & 0x80000000) == 0)
      {
        return;
      }

LABEL_67:
      operator delete(v39);
      return;
    }
  }

  else if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v37);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_67;
  }
}

void sub_5B3060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_5B3138(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BOOL4 a3@<W2>, uint64_t a4@<X8>)
{
  *v120 = 0u;
  v121 = 0u;
  v122 = 1065353216;
  *v117 = 0u;
  v118 = 0u;
  v119 = 1065353216;
  sub_65929C(a2, *(a1 + 3261), *(a1 + 3260), &v115);
  sub_659448(a2, *(a1 + 3260));
  if (*(v8 + 23) < 0)
  {
    sub_325C(v113, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    v114 = *(v8 + 2);
    *v113 = v9;
  }

  if (SHIBYTE(v116) < 0)
  {
    if (!*(&v115 + 1))
    {
      goto LABEL_36;
    }
  }

  else if (!HIBYTE(v116))
  {
    goto LABEL_36;
  }

  if (SHIBYTE(v114) < 0)
  {
    if (!v113[1])
    {
      goto LABEL_36;
    }
  }

  else if (!HIBYTE(v114))
  {
    goto LABEL_36;
  }

  *v94 = "{roadname}";
  v10 = sub_353894(v117, "{roadname}", &unk_229EB70, v94);
  v11 = (v10 + 5);
  if (v10 + 5 != &v115)
  {
    if (*(v10 + 63) < 0)
    {
      if (SHIBYTE(v116) >= 0)
      {
        v12 = &v115;
      }

      else
      {
        v12 = v115;
      }

      if (SHIBYTE(v116) >= 0)
      {
        v13 = HIBYTE(v116);
      }

      else
      {
        v13 = *(&v115 + 1);
      }

      sub_13B38(v11, v12, v13);
    }

    else if ((HIBYTE(v116) & 0x80) != 0)
    {
      sub_13A68(v11, v115, *(&v115 + 1));
    }

    else
    {
      *v11 = v115;
      v10[7] = v116;
    }
  }

  *v94 = "{roadname}";
  v14 = sub_353894(v120, "{roadname}", &unk_229EB70, v94);
  v15 = (v14 + 5);
  if (v14 + 5 != v113)
  {
    if (*(v14 + 63) < 0)
    {
      if (SHIBYTE(v114) >= 0)
      {
        v16 = v113;
      }

      else
      {
        v16 = v113[0];
      }

      if (SHIBYTE(v114) >= 0)
      {
        v17 = HIBYTE(v114);
      }

      else
      {
        v17 = v113[1];
      }

      sub_13B38(v15, v16, v17);
    }

    else if ((HIBYTE(v114) & 0x80) != 0)
    {
      sub_13A68(v15, v113[0], v113[1]);
    }

    else
    {
      *v15 = *v113;
      v14[7] = v114;
    }
  }

LABEL_36:
  v112 = 0uLL;
  __p = 0;
  memset(&v110, 0, sizeof(v110));
  v108 = 0;
  v109 = 0uLL;
  v18 = sub_38F744(a2);
  v92 = sub_38F768(a2);
  if ((sub_659844(a2, (a1 + 3272)) | v18))
  {
    v107 = 0x400000000000000;
    *v106 = *"_UGI";
  }

  else
  {
    HIBYTE(v107) = 0;
    LOBYTE(v106[0]) = 0;
  }

  if (v18)
  {
    v19 = 0x64616F525FLL;
  }

  else
  {
    v19 = 0x64616F526461425FLL;
  }

  if (v18)
  {
    v20 = &qword_2299AE0;
  }

  else
  {
    v20 = &unk_229A200;
  }

  if (v18)
  {
    v21 = 5;
  }

  else
  {
    v21 = 8;
  }

  v22 = 96;
  if (a2[232])
  {
    v22 = 228;
  }

  v23 = *&a2[v22];
  if (v23 > 4)
  {
    switch(v23)
    {
      case 5:
        v26 = a2[164];
        if ((v26 - 8) >= 2 && v26 != 6)
        {
          if (v26 != 4)
          {
            v105 = 0xC00000000000000;
            v24 = "_LaneClosure";
            goto LABEL_55;
          }

LABEL_54:
          v105 = 0x700000000000000;
          v24 = "_Hazard";
LABEL_55:
          *v104 = *v24;
          goto LABEL_71;
        }

        goto LABEL_67;
      case 13:
        v25 = "_Speed_Trap";
        break;
      case 15:
        v25 = "_Emergency_Vehicle";
        break;
      default:
LABEL_67:
        HIBYTE(v105) = 0;
        LOBYTE(v104[0]) = 0;
        goto LABEL_71;
    }
  }

  else if (v23)
  {
    if (v23 != 1)
    {
      if (v23 == 4)
      {
        goto LABEL_54;
      }

      goto LABEL_67;
    }

    v25 = "_Construction";
  }

  else if (*(a1 + 4792))
  {
    v25 = "_Crash";
  }

  else
  {
    v25 = "_Accident";
  }

  *v104 = *v25;
  v105 = *(v25 + 2);
LABEL_71:
  if (sub_3536DC(v117, "{roadname}"))
  {
    v100 = v19;
    v101 = 0;
    *v102 = *v20;
    *&v102[3] = *(v20 + 3);
    v103 = v21;
  }

  else
  {
    v103 = 0;
    LOBYTE(v100) = 0;
  }

  v93.__r_.__value_.__s.__data_[17] = 0;
  WORD1(v93.__r_.__value_.__r.__words[2]) = 116;
  HIDWORD(v93.__r_.__value_.__r.__words[2]) = 318767104;
  strcpy(&v93, "BannerHead_Incid");
  if (v107 >= 0)
  {
    v27 = v106;
  }

  else
  {
    v27 = v106[0];
  }

  if (v107 >= 0)
  {
    v28 = HIBYTE(v107);
  }

  else
  {
    v28 = v106[1];
  }

  v29 = std::string::append(&v93, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  *&v94[16] = *(&v29->__r_.__value_.__l + 2);
  *v94 = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  if (v105 >= 0)
  {
    v31 = v104;
  }

  else
  {
    v31 = v104[0];
  }

  if (v105 >= 0)
  {
    v32 = HIBYTE(v105);
  }

  else
  {
    v32 = v104[1];
  }

  v33 = std::string::append(v94, v31, v32);
  v34 = v33->__r_.__value_.__r.__words[0];
  v123.__r_.__value_.__r.__words[0] = v33->__r_.__value_.__l.__size_;
  *(v123.__r_.__value_.__r.__words + 7) = *(&v33->__r_.__value_.__r.__words[1] + 7);
  v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v112) < 0)
  {
    operator delete(__p);
  }

  __p = v34;
  *&v112 = v123.__r_.__value_.__r.__words[0];
  *(&v112 + 7) = *(v123.__r_.__value_.__r.__words + 7);
  HIBYTE(v112) = v35;
  if ((v94[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_90;
    }

LABEL_103:
    operator delete(v93.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_104;
  }

  operator delete(*v94);
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_103;
  }

LABEL_90:
  if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_91;
  }

LABEL_104:
  operator delete(v110.__r_.__value_.__l.__data_);
LABEL_91:
  strcpy(&v110, "BannerBody_Incident");
  v110.__r_.__value_.__s.__data_[20] = 0;
  *(&v110.__r_.__value_.__r.__words[2] + 5) = 0;
  *(&v110.__r_.__value_.__s + 23) = 19;
  if (v18)
  {
    if (v107 >= 0)
    {
      v36 = HIBYTE(v107);
    }

    else
    {
      v36 = v106[1];
    }

    if (v105 >= 0)
    {
      v37 = HIBYTE(v105);
    }

    else
    {
      v37 = v104[1];
    }

    if (v37 + v36 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v37 + v36 > 0x16)
    {
      operator new();
    }

    memset(v94, 0, 24);
    v94[23] = v37 + v36;
    if (v36)
    {
      if (v107 >= 0)
      {
        v39 = v106;
      }

      else
      {
        v39 = v106[0];
      }

      memmove(v94, v39, v36);
    }

    v40 = &v94[v36];
    if (v37)
    {
      if (v105 >= 0)
      {
        v41 = v104;
      }

      else
      {
        v41 = v104[0];
      }

      memmove(v40, v41, v37);
    }

    v40[v37] = 0;
    v38 = v94[23];
  }

  else
  {
    v38 = 0;
    v94[23] = 0;
    v94[0] = 0;
  }

  if ((v38 & 0x80u) == 0)
  {
    v42 = v94;
  }

  else
  {
    v42 = *v94;
  }

  if ((v38 & 0x80u) == 0)
  {
    v43 = v38;
  }

  else
  {
    v43 = *&v94[8];
  }

  std::string::append(&v110, v42, v43);
  if ((v94[23] & 0x80000000) != 0)
  {
    operator delete(*v94);
  }

  if (v92)
  {
    v44 = v104;
  }

  else
  {
    v44 = &v100;
  }

  v45 = &v103;
  if (v92)
  {
    v45 = &v105 + 7;
  }

  v46 = *v45;
  v47 = &v101;
  if (v92)
  {
    v47 = &v104[1];
  }

  v48 = *v47;
  if ((v46 & 0x80u) == 0)
  {
    v49 = v44;
  }

  else
  {
    v49 = *v44;
  }

  if ((v46 & 0x80u) == 0)
  {
    v50 = v46;
  }

  else
  {
    v50 = v48;
  }

  std::string::append(&v110, v49, v50);
  v123.__r_.__value_.__s.__data_[17] = 0;
  WORD1(v123.__r_.__value_.__r.__words[2]) = 116;
  HIDWORD(v123.__r_.__value_.__r.__words[2]) = 318767104;
  strcpy(&v123, "VoiceAlert_Incid");
  if (v107 >= 0)
  {
    v51 = v106;
  }

  else
  {
    v51 = v106[0];
  }

  if (v107 >= 0)
  {
    v52 = HIBYTE(v107);
  }

  else
  {
    v52 = v106[1];
  }

  v53 = std::string::append(&v123, v51, v52);
  v54 = *&v53->__r_.__value_.__l.__data_;
  v93.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
  *&v93.__r_.__value_.__l.__data_ = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  if (v105 >= 0)
  {
    v55 = v104;
  }

  else
  {
    v55 = v104[0];
  }

  if (v105 >= 0)
  {
    v56 = HIBYTE(v105);
  }

  else
  {
    v56 = v104[1];
  }

  v57 = std::string::append(&v93, v55, v56);
  v58 = *&v57->__r_.__value_.__l.__data_;
  *&v94[16] = *(&v57->__r_.__value_.__l + 2);
  *v94 = v58;
  v57->__r_.__value_.__l.__size_ = 0;
  v57->__r_.__value_.__r.__words[2] = 0;
  v57->__r_.__value_.__r.__words[0] = 0;
  if (v103 >= 0)
  {
    v59 = &v100;
  }

  else
  {
    v59 = v100;
  }

  if (v103 >= 0)
  {
    v60 = v103;
  }

  else
  {
    v60 = v101;
  }

  v61 = std::string::append(v94, v59, v60);
  v62 = v61->__r_.__value_.__r.__words[0];
  *&v124 = v61->__r_.__value_.__l.__size_;
  *(&v124 + 7) = *(&v61->__r_.__value_.__r.__words[1] + 7);
  v63 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
  v61->__r_.__value_.__l.__size_ = 0;
  v61->__r_.__value_.__r.__words[2] = 0;
  v61->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v109) < 0)
  {
    operator delete(v108);
  }

  v108 = v62;
  *&v109 = v124;
  *(&v109 + 7) = *(&v124 + 7);
  HIBYTE(v109) = v63;
  if ((v94[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

LABEL_163:
    operator delete(v93.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v123.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_164;
  }

  operator delete(*v94);
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_163;
  }

LABEL_159:
  if ((SHIBYTE(v123.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_160;
  }

LABEL_164:
  operator delete(v123.__r_.__value_.__l.__data_);
LABEL_160:
  v64 = sub_9274F4(*(a1 + 8), &__p);
  if (*(v64 + 23) < 0)
  {
    sub_325C(&v124, *v64, v64[1]);
  }

  else
  {
    v65 = *v64;
    v125 = v64[2];
    v124 = v65;
  }

  v66 = v103;
  if (v103 < 0)
  {
    v66 = v101;
  }

  if (v66 == 0 && v18)
  {
    HIBYTE(v99) = 0;
    LOBYTE(v98[0]) = 0;
  }

  else
  {
    v67 = sub_9274F4(*(a1 + 8), &v110);
    if (*(v67 + 23) < 0)
    {
      sub_325C(v98, *v67, v67[1]);
    }

    else
    {
      v68 = *v67;
      v99 = v67[2];
      *v98 = v68;
    }
  }

  memset(v94, 0, sizeof(v94));
  v95 = 1065353216;
  sub_65F810(a1 + 24, &v108, v94, *(a1 + 3261), &v93);
  v97 = v93;
  memset(&v93, 0, sizeof(v93));
  v69 = *&v94[16];
  if (*&v94[16])
  {
    do
    {
      v70 = *v69;
      sub_55F7FC((v69 + 2));
      operator delete(v69);
      v69 = v70;
    }

    while (v70);
  }

  v71 = *v94;
  *v94 = 0;
  if (v71)
  {
    operator delete(v71);
  }

  sub_5B9468(a2[164], a2[165], &v96);
  size = HIBYTE(v96.__r_.__value_.__r.__words[2]);
  if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v96.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    memset(v94, 0, sizeof(v94));
    v95 = 1065353216;
    sub_65F810(a1 + 24, &v96.__r_.__value_.__l.__data_, v94, *(a1 + 3261), &v93);
    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = &v93;
    }

    else
    {
      v73 = v93.__r_.__value_.__r.__words[0];
    }

    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v74 = v93.__r_.__value_.__l.__size_;
    }

    std::string::append(&v97, v73, v74);
    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    v75 = *&v94[16];
    if (*&v94[16])
    {
      do
      {
        v76 = *v75;
        sub_55F7FC((v75 + 2));
        operator delete(v75);
        v75 = v76;
      }

      while (v76);
    }

    v77 = *v94;
    *v94 = 0;
    if (v77)
    {
      operator delete(v77);
    }
  }

  if (a3 && !sub_38F744(a2))
  {
    strcpy(&v123, "VoiceAlert_BestTrailer");
    *(&v123.__r_.__value_.__s + 23) = 22;
    memset(v94, 0, sizeof(v94));
    v95 = 1065353216;
    sub_65F810(a1 + 24, &v123.__r_.__value_.__l.__data_, v94, *(a1 + 3261), &v93);
    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v78 = &v93;
    }

    else
    {
      v78 = v93.__r_.__value_.__r.__words[0];
    }

    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v79 = v93.__r_.__value_.__l.__size_;
    }

    std::string::append(&v97, v78, v79);
    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    v80 = *&v94[16];
    if (*&v94[16])
    {
      do
      {
        v81 = *v80;
        sub_55F7FC((v80 + 2));
        operator delete(v80);
        v80 = v81;
      }

      while (v81);
    }

    v82 = *v94;
    *v94 = 0;
    if (v82)
    {
      operator delete(v82);
    }

    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }
  }

  sub_6A56A4(&v124, v120);
  sub_6A56A4(v98, v120);
  sub_6A56A4(&v97, v117);
  sub_64BC20(v94, &v124);
  sub_64B998(&v93);
  v83 = v93.__r_.__value_.__l.__size_;
  if (v93.__r_.__value_.__l.__size_ >= v93.__r_.__value_.__r.__words[2])
  {
    v85 = sub_5C416C(&v93, v98);
  }

  else
  {
    if (SHIBYTE(v99) < 0)
    {
      sub_325C(v93.__r_.__value_.__l.__size_, v98[0], v98[1]);
    }

    else
    {
      v84 = *v98;
      *(v93.__r_.__value_.__l.__size_ + 16) = v99;
      *v83 = v84;
    }

    v85 = v83 + 24;
  }

  v93.__r_.__value_.__l.__size_ = v85;
  sub_64BC20(&v123, &v97);
  if (a2[472] != 1 || (sub_64E558(&v93, "{distance}", a2 + 58), (a2[472] & 1) == 0))
  {
    sub_4F0F0C();
  }

  sub_64E558(&v123, "{distance}", a2 + 58);
  sub_64E768(&v123, "{count}", a2[165]);
  sub_5CB500(a4, v94, &v93, &v123);
  sub_53A868(&v123);
  sub_53A868(&v93);
  sub_53A868(v94);
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_218:
      if ((SHIBYTE(v99) & 0x80000000) == 0)
      {
        goto LABEL_219;
      }

      goto LABEL_232;
    }
  }

  else if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_218;
  }

  operator delete(v97.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v99) & 0x80000000) == 0)
  {
LABEL_219:
    if ((SHIBYTE(v125) & 0x80000000) == 0)
    {
      goto LABEL_220;
    }

    goto LABEL_233;
  }

LABEL_232:
  operator delete(v98[0]);
  if ((SHIBYTE(v125) & 0x80000000) == 0)
  {
LABEL_220:
    if ((v103 & 0x80000000) == 0)
    {
      goto LABEL_221;
    }

    goto LABEL_234;
  }

LABEL_233:
  operator delete(v124);
  if ((v103 & 0x80000000) == 0)
  {
LABEL_221:
    if ((SHIBYTE(v105) & 0x80000000) == 0)
    {
      goto LABEL_222;
    }

    goto LABEL_235;
  }

LABEL_234:
  operator delete(v100);
  if ((SHIBYTE(v105) & 0x80000000) == 0)
  {
LABEL_222:
    if ((SHIBYTE(v107) & 0x80000000) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_236;
  }

LABEL_235:
  operator delete(v104[0]);
  if ((SHIBYTE(v107) & 0x80000000) == 0)
  {
LABEL_223:
    if ((SHIBYTE(v109) & 0x80000000) == 0)
    {
      goto LABEL_224;
    }

    goto LABEL_237;
  }

LABEL_236:
  operator delete(v106[0]);
  if ((SHIBYTE(v109) & 0x80000000) == 0)
  {
LABEL_224:
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_225;
    }

    goto LABEL_238;
  }

LABEL_237:
  operator delete(v108);
  if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_225:
    if ((SHIBYTE(v112) & 0x80000000) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_239;
  }

LABEL_238:
  operator delete(v110.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v112) & 0x80000000) == 0)
  {
LABEL_226:
    if ((SHIBYTE(v114) & 0x80000000) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_240;
  }

LABEL_239:
  operator delete(__p);
  if ((SHIBYTE(v114) & 0x80000000) == 0)
  {
LABEL_227:
    if ((SHIBYTE(v116) & 0x80000000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_241;
  }

LABEL_240:
  operator delete(v113[0]);
  if (SHIBYTE(v116) < 0)
  {
LABEL_241:
    operator delete(v115);
    v86 = v118;
    if (!v118)
    {
      goto LABEL_248;
    }

    while (1)
    {
LABEL_245:
      v87 = *v86;
      if (v86[63] < 0)
      {
        operator delete(*(v86 + 5));
        if ((v86[39] & 0x80000000) == 0)
        {
          goto LABEL_244;
        }

LABEL_247:
        operator delete(*(v86 + 2));
        operator delete(v86);
        v86 = v87;
        if (!v87)
        {
          goto LABEL_248;
        }
      }

      else
      {
        if (v86[39] < 0)
        {
          goto LABEL_247;
        }

LABEL_244:
        operator delete(v86);
        v86 = v87;
        if (!v87)
        {
          goto LABEL_248;
        }
      }
    }
  }

LABEL_228:
  v86 = v118;
  if (v118)
  {
    goto LABEL_245;
  }

LABEL_248:
  v88 = v117[0];
  v117[0] = 0;
  if (v88)
  {
    operator delete(v88);
  }

  v89 = v121;
  if (v121)
  {
    while (1)
    {
      v90 = *v89;
      if (v89[63] < 0)
      {
        operator delete(*(v89 + 5));
        if ((v89[39] & 0x80000000) == 0)
        {
          goto LABEL_253;
        }

LABEL_256:
        operator delete(*(v89 + 2));
        operator delete(v89);
        v89 = v90;
        if (!v90)
        {
          break;
        }
      }

      else
      {
        if (v89[39] < 0)
        {
          goto LABEL_256;
        }

LABEL_253:
        operator delete(v89);
        v89 = v90;
        if (!v90)
        {
          break;
        }
      }
    }
  }

  v91 = v120[0];
  v120[0] = 0;
  if (v91)
  {
    operator delete(v91);
  }
}

void sub_5B3F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  sub_53A868(&a11);
  sub_53A868(&a31);
  if (a57 < 0)
  {
    operator delete(__p);
    if (a63 < 0)
    {
      goto LABEL_8;
    }
  }

  else if (a63 < 0)
  {
LABEL_8:
    operator delete(a58);
    if ((a66 & 0x80000000) == 0)
    {
LABEL_9:
      if ((*(v73 - 105) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_4:
    operator delete(a65);
    if ((*(v73 - 105) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    operator delete(*(v73 - 128));
LABEL_11:
    if (a68 < 0)
    {
      operator delete(a67);
      if ((a70 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((a70 & 0x80000000) == 0)
    {
LABEL_13:
      if (a72 < 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }

    operator delete(a69);
    if (a72 < 0)
    {
LABEL_14:
      operator delete(a71);
      if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

LABEL_22:
    if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
    {
LABEL_15:
      if (SLOBYTE(STACK[0x227]) < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

LABEL_23:
    operator delete(a73);
    if (SLOBYTE(STACK[0x227]) < 0)
    {
LABEL_16:
      operator delete(STACK[0x210]);
      if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

LABEL_24:
    if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
    {
LABEL_17:
      if (SLOBYTE(STACK[0x257]) < 0)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

LABEL_25:
    operator delete(STACK[0x228]);
    if (SLOBYTE(STACK[0x257]) < 0)
    {
LABEL_18:
      operator delete(STACK[0x240]);
      if ((SLOBYTE(STACK[0x26F]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }

LABEL_26:
    if ((SLOBYTE(STACK[0x26F]) & 0x80000000) == 0)
    {
LABEL_19:
      sub_2CD04(&STACK[0x270]);
      sub_2CD04(&STACK[0x2A0]);
      _Unwind_Resume(a1);
    }

LABEL_27:
    operator delete(STACK[0x258]);
    sub_2CD04(&STACK[0x270]);
    sub_2CD04(&STACK[0x2A0]);
    _Unwind_Resume(a1);
  }

  if ((a66 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_4;
}

void sub_5B42F8(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v111 = 0u;
  v110 = 0u;
  v112 = 1065353216;
  v108 = 0u;
  v107 = 0u;
  v109 = 1065353216;
  sub_65929C(a2, *(a1 + 3261), *(a1 + 3260), &v105);
  sub_659448(a2, *(a1 + 3260));
  if (*(v8 + 23) < 0)
  {
    sub_325C(&v103, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    v104 = *(v8 + 2);
    v103 = v9;
  }

  if (SHIBYTE(v106) < 0)
  {
    if (!*(&v105 + 1))
    {
      goto LABEL_36;
    }
  }

  else if (!HIBYTE(v106))
  {
    goto LABEL_36;
  }

  if (SHIBYTE(v104) < 0)
  {
    if (!*(&v103 + 1))
    {
      goto LABEL_36;
    }
  }

  else if (!HIBYTE(v104))
  {
    goto LABEL_36;
  }

  *v114 = "{roadname}";
  v10 = sub_353894(&v107, "{roadname}", &unk_229EB70, v114);
  v11 = (v10 + 5);
  if (v10 + 5 != &v105)
  {
    if (*(v10 + 63) < 0)
    {
      if (SHIBYTE(v106) >= 0)
      {
        v12 = &v105;
      }

      else
      {
        v12 = v105;
      }

      if (SHIBYTE(v106) >= 0)
      {
        v13 = HIBYTE(v106);
      }

      else
      {
        v13 = *(&v105 + 1);
      }

      sub_13B38(v11, v12, v13);
    }

    else if ((HIBYTE(v106) & 0x80) != 0)
    {
      sub_13A68(v11, v105, *(&v105 + 1));
    }

    else
    {
      *v11 = v105;
      v10[7] = v106;
    }
  }

  *v114 = "{roadname}";
  v14 = sub_353894(&v110, "{roadname}", &unk_229EB70, v114);
  v15 = (v14 + 5);
  if (v14 + 5 != &v103)
  {
    if (*(v14 + 63) < 0)
    {
      if (SHIBYTE(v104) >= 0)
      {
        v16 = &v103;
      }

      else
      {
        v16 = v103;
      }

      if (SHIBYTE(v104) >= 0)
      {
        v17 = HIBYTE(v104);
      }

      else
      {
        v17 = *(&v103 + 1);
      }

      sub_13B38(v15, v16, v17);
    }

    else if ((HIBYTE(v104) & 0x80) != 0)
    {
      sub_13A68(v15, v103, *(&v103 + 1));
    }

    else
    {
      *v15 = v103;
      v14[7] = v104;
    }
  }

LABEL_36:
  __p = 0;
  v102 = 0uLL;
  v99 = 0;
  v100 = 0uLL;
  v97 = 0;
  v98 = 0uLL;
  v95 = 0uLL;
  v96 = 0;
  v18 = 96;
  if (a2[232])
  {
    v18 = 228;
  }

  v19 = *&a2[v18];
  if (v19 > 4)
  {
    switch(v19)
    {
      case 5:
        v22 = a2[164];
        if ((v22 - 8) >= 2 && v22 != 6)
        {
          if (v22 != 4)
          {
            v94 = 0xC00000000000000;
            v20 = "_LaneClosure";
            goto LABEL_43;
          }

LABEL_42:
          v94 = 0x700000000000000;
          v20 = "_Hazard";
LABEL_43:
          v93 = *v20;
          goto LABEL_59;
        }

        goto LABEL_55;
      case 13:
        v21 = "_Speed_Trap";
        break;
      case 15:
        v21 = "_Emergency_Vehicle";
        break;
      default:
LABEL_55:
        HIBYTE(v94) = 0;
        LOBYTE(v93) = 0;
        goto LABEL_59;
    }
  }

  else if (v19)
  {
    if (v19 != 1)
    {
      if (v19 == 4)
      {
        goto LABEL_42;
      }

      goto LABEL_55;
    }

    v21 = "_Construction";
  }

  else if (*(a1 + 4792))
  {
    v21 = "_Crash";
  }

  else
  {
    v21 = "_Accident";
  }

  v93 = *v21;
  v94 = *(v21 + 2);
LABEL_59:
  v23 = sub_38F744(a2);
  v85 = a3;
  v24 = sub_38F768(a2);
  if (v23)
  {
    operator new();
  }

  if (!v24)
  {
    v114[17] = 0;
    strcpy(&v114[18], "t");
    *&v114[20] = 318767104;
    strcpy(v114, "BannerHead_Incid");
    if (v94 >= 0)
    {
      v26 = &v93;
    }

    else
    {
      v26 = v93;
    }

    if (v94 >= 0)
    {
      v27 = HIBYTE(v94);
    }

    else
    {
      v27 = *(&v93 + 1);
    }

    v28 = std::string::append(v114, v26, v27);
    v29 = v28->__r_.__value_.__r.__words[0];
    v113.__r_.__value_.__r.__words[0] = v28->__r_.__value_.__l.__size_;
    *(v113.__r_.__value_.__r.__words + 7) = *(&v28->__r_.__value_.__r.__words[1] + 7);
    v30 = HIBYTE(v28->__r_.__value_.__r.__words[2]);
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v102) < 0)
    {
      operator delete(__p);
    }

    __p = v29;
    *&v102 = v113.__r_.__value_.__r.__words[0];
    *(&v102 + 7) = *(v113.__r_.__value_.__r.__words + 7);
    HIBYTE(v102) = v30;
    if ((v114[23] & 0x80000000) != 0)
    {
      operator delete(*v114);
    }

    if (sub_3536DC(&v107, "{roadname}"))
    {
      *&v114[16] = 0x800000000000000;
      *v114 = *"_BadRoad";
      v31 = 8;
      if ((SHIBYTE(v96) & 0x80000000) == 0)
      {
LABEL_77:
        v95 = *v114;
        v96 = *&v114[16];
LABEL_100:
        v114[17] = 0;
        strcpy(&v114[18], "t");
        *&v114[20] = 318767104;
        strcpy(v114, "BannerBody_Incid");
        if (v96 >= 0)
        {
          v37 = &v95;
        }

        else
        {
          v37 = v95;
        }

        if (v96 >= 0)
        {
          v38 = HIBYTE(v96);
        }

        else
        {
          v38 = *(&v95 + 1);
        }

        goto LABEL_106;
      }
    }

    else
    {
      v31 = 0;
      v114[23] = 0;
      v114[0] = 0;
      if ((SHIBYTE(v96) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }
    }

    sub_13B38(&v95, v114, v31);
    if ((v114[23] & 0x80000000) != 0)
    {
      operator delete(*v114);
    }

    goto LABEL_100;
  }

  if (!sub_3536DC(&v107, "{roadname}"))
  {
    v25 = 0;
    v114[23] = 0;
    v114[0] = 0;
    if ((SHIBYTE(v96) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_79:
    sub_13B38(&v95, v114, v25);
    if ((v114[23] & 0x80000000) != 0)
    {
      operator delete(*v114);
    }

    goto LABEL_81;
  }

  *&v114[16] = 0x800000000000000;
  *v114 = *"_BadRoad";
  v25 = 8;
  if (SHIBYTE(v96) < 0)
  {
    goto LABEL_79;
  }

LABEL_64:
  v95 = *v114;
  v96 = *&v114[16];
LABEL_81:
  v114[17] = 0;
  strcpy(&v114[18], "t");
  *&v114[20] = 318767104;
  strcpy(v114, "BannerHead_Incid");
  if (v94 >= 0)
  {
    v32 = &v93;
  }

  else
  {
    v32 = v93;
  }

  if (v94 >= 0)
  {
    v33 = HIBYTE(v94);
  }

  else
  {
    v33 = *(&v93 + 1);
  }

  v34 = std::string::append(v114, v32, v33);
  v35 = v34->__r_.__value_.__r.__words[0];
  v113.__r_.__value_.__r.__words[0] = v34->__r_.__value_.__l.__size_;
  *(v113.__r_.__value_.__r.__words + 7) = *(&v34->__r_.__value_.__r.__words[1] + 7);
  v36 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v102) < 0)
  {
    operator delete(__p);
  }

  __p = v35;
  *&v102 = v113.__r_.__value_.__r.__words[0];
  *(&v102 + 7) = *(v113.__r_.__value_.__r.__words + 7);
  HIBYTE(v102) = v36;
  if ((v114[23] & 0x80000000) != 0)
  {
    operator delete(*v114);
  }

  v114[17] = 0;
  strcpy(&v114[18], "t");
  *&v114[20] = 318767104;
  strcpy(v114, "BannerBody_Incid");
  if (v94 >= 0)
  {
    v37 = &v93;
  }

  else
  {
    v37 = v93;
  }

  if (v94 >= 0)
  {
    v38 = HIBYTE(v94);
  }

  else
  {
    v38 = *(&v93 + 1);
  }

LABEL_106:
  v39 = std::string::append(v114, v37, v38);
  v40 = v39->__r_.__value_.__r.__words[0];
  v113.__r_.__value_.__r.__words[0] = v39->__r_.__value_.__l.__size_;
  *(v113.__r_.__value_.__r.__words + 7) = *(&v39->__r_.__value_.__r.__words[1] + 7);
  v41 = HIBYTE(v39->__r_.__value_.__r.__words[2]);
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v100) < 0)
  {
    operator delete(v99);
  }

  v99 = v40;
  *&v100 = v113.__r_.__value_.__r.__words[0];
  *(&v100 + 7) = *(v113.__r_.__value_.__r.__words + 7);
  HIBYTE(v100) = v41;
  if ((v114[23] & 0x80000000) != 0)
  {
    operator delete(*v114);
  }

  if (sub_38F720(a2))
  {
    v92 = 0x400000000000000;
    __s = *"_UGI";
    v42 = 4;
  }

  else
  {
    v42 = 0;
    HIBYTE(v92) = 0;
    LOBYTE(__s) = 0;
  }

  v86.__r_.__value_.__s.__data_[17] = 0;
  WORD1(v86.__r_.__value_.__r.__words[2]) = 116;
  HIDWORD(v86.__r_.__value_.__r.__words[2]) = 318767104;
  strcpy(&v86, "VoiceAlert_Incid");
  v43 = std::string::append(&v86, &__s, v42);
  v44 = *&v43->__r_.__value_.__l.__data_;
  v113.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
  *&v113.__r_.__value_.__l.__data_ = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  if (v94 >= 0)
  {
    v45 = &v93;
  }

  else
  {
    v45 = v93;
  }

  if (v94 >= 0)
  {
    v46 = HIBYTE(v94);
  }

  else
  {
    v46 = *(&v93 + 1);
  }

  v47 = std::string::append(&v113, v45, v46);
  v48 = *&v47->__r_.__value_.__l.__data_;
  *&v114[16] = *(&v47->__r_.__value_.__l + 2);
  *v114 = v48;
  v47->__r_.__value_.__l.__size_ = 0;
  v47->__r_.__value_.__r.__words[2] = 0;
  v47->__r_.__value_.__r.__words[0] = 0;
  if (v96 >= 0)
  {
    v49 = &v95;
  }

  else
  {
    v49 = v95;
  }

  if (v96 >= 0)
  {
    v50 = HIBYTE(v96);
  }

  else
  {
    v50 = *(&v95 + 1);
  }

  v51 = std::string::append(v114, v49, v50);
  v52 = v51->__r_.__value_.__r.__words[0];
  *&v116 = v51->__r_.__value_.__l.__size_;
  *(&v116 + 7) = *(&v51->__r_.__value_.__r.__words[1] + 7);
  v53 = HIBYTE(v51->__r_.__value_.__r.__words[2]);
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v98) < 0)
  {
    operator delete(v97);
  }

  v97 = v52;
  *&v98 = v116;
  *(&v98 + 7) = *(&v116 + 7);
  HIBYTE(v98) = v53;
  if ((v114[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_129;
    }

LABEL_133:
    operator delete(v113.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_134;
  }

  operator delete(*v114);
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_133;
  }

LABEL_129:
  if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_130;
  }

LABEL_134:
  operator delete(v86.__r_.__value_.__l.__data_);
LABEL_130:
  v54 = sub_9274F4(*(a1 + 8), &__p);
  if (*(v54 + 23) < 0)
  {
    sub_325C(&v116, *v54, v54[1]);
  }

  else
  {
    v55 = *v54;
    v117 = v54[2];
    v116 = v55;
  }

  __dst = 0uLL;
  v90 = 0;
  v56 = HIBYTE(v100);
  if (v100 < 0)
  {
    v56 = v100;
  }

  if (v56)
  {
    v57 = sub_9274F4(*(a1 + 8), &v99);
    if (&__dst != v57)
    {
      v58 = *(v57 + 23);
      if (SHIBYTE(v90) < 0)
      {
        if (v58 >= 0)
        {
          v60 = v57;
        }

        else
        {
          v60 = *v57;
        }

        if (v58 >= 0)
        {
          v61 = *(v57 + 23);
        }

        else
        {
          v61 = v57[1];
        }

        sub_13B38(&__dst, v60, v61);
      }

      else if ((*(v57 + 23) & 0x80) != 0)
      {
        sub_13A68(&__dst, *v57, v57[1]);
      }

      else
      {
        v59 = *v57;
        v90 = v57[2];
        __dst = v59;
      }
    }
  }

  memset(v114, 0, sizeof(v114));
  v115 = 1065353216;
  sub_65F810(a1 + 24, &v97, v114, *(a1 + 3261), &v113);
  v88 = v113;
  memset(&v113, 0, sizeof(v113));
  v62 = *&v114[16];
  if (*&v114[16])
  {
    do
    {
      v63 = *v62;
      sub_55F7FC((v62 + 2));
      operator delete(v62);
      v62 = v63;
    }

    while (v63);
  }

  v64 = *v114;
  *v114 = 0;
  if (v64)
  {
    operator delete(v64);
  }

  sub_5B9468(a2[164], a2[165], &v87);
  size = HIBYTE(v87.__r_.__value_.__r.__words[2]);
  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v87.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    memset(v114, 0, sizeof(v114));
    v115 = 1065353216;
    sub_65F810(a1 + 24, &v87.__r_.__value_.__l.__data_, v114, *(a1 + 3261), &v113);
    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = &v113;
    }

    else
    {
      v66 = v113.__r_.__value_.__r.__words[0];
    }

    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v67 = v113.__r_.__value_.__l.__size_;
    }

    std::string::append(&v88, v66, v67);
    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }

    v68 = *&v114[16];
    if (*&v114[16])
    {
      do
      {
        v69 = *v68;
        sub_55F7FC((v68 + 2));
        operator delete(v68);
        v68 = v69;
      }

      while (v69);
    }

    v70 = *v114;
    *v114 = 0;
    if (v70)
    {
      operator delete(v70);
    }
  }

  if (v85 && !sub_38F744(a2))
  {
    strcpy(&v86, "VoiceAlert_BestTrailer");
    *(&v86.__r_.__value_.__s + 23) = 22;
    memset(v114, 0, sizeof(v114));
    v115 = 1065353216;
    sub_65F810(a1 + 24, &v86.__r_.__value_.__l.__data_, v114, *(a1 + 3261), &v113);
    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = &v113;
    }

    else
    {
      v71 = v113.__r_.__value_.__r.__words[0];
    }

    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v72 = v113.__r_.__value_.__l.__size_;
    }

    std::string::append(&v88, v71, v72);
    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }

    v73 = *&v114[16];
    if (*&v114[16])
    {
      do
      {
        v74 = *v73;
        sub_55F7FC((v73 + 2));
        operator delete(v73);
        v73 = v74;
      }

      while (v74);
    }

    v75 = *v114;
    *v114 = 0;
    if (v75)
    {
      operator delete(v75);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }
  }

  sub_6A56A4(&v116, &v110);
  sub_6A56A4(&__dst, &v110);
  sub_6A56A4(&v88, &v107);
  sub_64BC20(v114, &v116);
  sub_64B998(&v113);
  v76 = v113.__r_.__value_.__l.__size_;
  if (v113.__r_.__value_.__l.__size_ >= v113.__r_.__value_.__r.__words[2])
  {
    v78 = sub_5C416C(&v113, &__dst);
  }

  else
  {
    if (SHIBYTE(v90) < 0)
    {
      sub_325C(v113.__r_.__value_.__l.__size_, __dst, *(&__dst + 1));
    }

    else
    {
      v77 = __dst;
      *(v113.__r_.__value_.__l.__size_ + 16) = v90;
      *v76 = v77;
    }

    v78 = v76 + 24;
  }

  v113.__r_.__value_.__l.__size_ = v78;
  sub_64BC20(&v86, &v88);
  if (a2[472] != 1 || (sub_64E558(&v113, "{distance}", a2 + 58), (a2[472] & 1) == 0))
  {
    sub_4F0F0C();
  }

  sub_64E558(&v86, "{distance}", a2 + 58);
  sub_64E768(&v86, "{count}", a2[165]);
  sub_5CB500(a4, v114, &v113, &v86);
  sub_53A868(&v86);
  sub_53A868(&v113);
  sub_53A868(v114);
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_196:
      if ((SHIBYTE(v90) & 0x80000000) == 0)
      {
        goto LABEL_197;
      }

      goto LABEL_210;
    }
  }

  else if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_196;
  }

  operator delete(v88.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v90) & 0x80000000) == 0)
  {
LABEL_197:
    if ((SHIBYTE(v117) & 0x80000000) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_211;
  }

LABEL_210:
  operator delete(__dst);
  if ((SHIBYTE(v117) & 0x80000000) == 0)
  {
LABEL_198:
    if ((SHIBYTE(v92) & 0x80000000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_212;
  }

LABEL_211:
  operator delete(v116);
  if ((SHIBYTE(v92) & 0x80000000) == 0)
  {
LABEL_199:
    if ((SHIBYTE(v94) & 0x80000000) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_213;
  }

LABEL_212:
  operator delete(__s);
  if ((SHIBYTE(v94) & 0x80000000) == 0)
  {
LABEL_200:
    if ((SHIBYTE(v96) & 0x80000000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_214;
  }

LABEL_213:
  operator delete(v93);
  if ((SHIBYTE(v96) & 0x80000000) == 0)
  {
LABEL_201:
    if ((SHIBYTE(v98) & 0x80000000) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_215;
  }

LABEL_214:
  operator delete(v95);
  if ((SHIBYTE(v98) & 0x80000000) == 0)
  {
LABEL_202:
    if ((SHIBYTE(v100) & 0x80000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_216;
  }

LABEL_215:
  operator delete(v97);
  if ((SHIBYTE(v100) & 0x80000000) == 0)
  {
LABEL_203:
    if ((SHIBYTE(v102) & 0x80000000) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_217;
  }

LABEL_216:
  operator delete(v99);
  if ((SHIBYTE(v102) & 0x80000000) == 0)
  {
LABEL_204:
    if ((SHIBYTE(v104) & 0x80000000) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_218;
  }

LABEL_217:
  operator delete(__p);
  if ((SHIBYTE(v104) & 0x80000000) == 0)
  {
LABEL_205:
    if ((SHIBYTE(v106) & 0x80000000) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_219;
  }

LABEL_218:
  operator delete(v103);
  if (SHIBYTE(v106) < 0)
  {
LABEL_219:
    operator delete(v105);
    v79 = v108;
    if (!v108)
    {
      goto LABEL_226;
    }

    while (1)
    {
LABEL_223:
      v80 = *v79;
      if (v79[63] < 0)
      {
        operator delete(*(v79 + 5));
        if ((v79[39] & 0x80000000) == 0)
        {
          goto LABEL_222;
        }

LABEL_225:
        operator delete(*(v79 + 2));
        operator delete(v79);
        v79 = v80;
        if (!v80)
        {
          goto LABEL_226;
        }
      }

      else
      {
        if (v79[39] < 0)
        {
          goto LABEL_225;
        }

LABEL_222:
        operator delete(v79);
        v79 = v80;
        if (!v80)
        {
          goto LABEL_226;
        }
      }
    }
  }

LABEL_206:
  v79 = v108;
  if (v108)
  {
    goto LABEL_223;
  }

LABEL_226:
  v81 = v107;
  *&v107 = 0;
  if (v81)
  {
    operator delete(v81);
  }

  v82 = v111;
  if (v111)
  {
    while (1)
    {
      v83 = *v82;
      if (v82[63] < 0)
      {
        operator delete(*(v82 + 5));
        if ((v82[39] & 0x80000000) == 0)
        {
          goto LABEL_231;
        }

LABEL_234:
        operator delete(*(v82 + 2));
        operator delete(v82);
        v82 = v83;
        if (!v83)
        {
          break;
        }
      }

      else
      {
        if (v82[39] < 0)
        {
          goto LABEL_234;
        }

LABEL_231:
        operator delete(v82);
        v82 = v83;
        if (!v83)
        {
          break;
        }
      }
    }
  }

  v84 = v110;
  *&v110 = 0;
  if (v84)
  {
    operator delete(v84);
  }
}

void sub_5B5418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  if (a58 < 0)
  {
    operator delete(a53);
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a65 & 0x80000000) == 0)
  {
LABEL_5:
    if (a67 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  operator delete(a60);
  if (a67 < 0)
  {
LABEL_6:
    operator delete(a66);
    if ((a69 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((a69 & 0x80000000) == 0)
  {
LABEL_7:
    if (a71 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a68);
  if (a71 < 0)
  {
LABEL_8:
    operator delete(a70);
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  if ((a73 & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x20F]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a72);
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
LABEL_10:
    operator delete(a74);
    sub_2CD04(&STACK[0x210]);
    sub_2CD04(&STACK[0x240]);
    _Unwind_Resume(a1);
  }

LABEL_17:
  sub_2CD04(&STACK[0x210]);
  sub_2CD04(&STACK[0x240]);
  _Unwind_Resume(a1);
}

uint64_t sub_5B57CC(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (sub_69B32C(a2) >= a5)
  {
    v15 = sub_69B32C(a2) - a5;
    if (a7 != 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = sub_69B32C(a2);
    a4 = *(a1 + 2760);
    goto LABEL_16;
  }

  v15 = 0;
  if (a7 == 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a6 < 1)
  {
    a4 = 0;
  }

  else
  {
    v16 = sub_69EBE0(a2, a3, a4, v14);
    if (v16 <= a6)
    {
      if (a3)
      {
        v18 = v16;
        --a3;
        do
        {
          if (v18 >= a6)
          {
            break;
          }

          v20 = sub_4D23F8(a2, a3, v17);
          v22 = sub_69EBE0(a2, a3, v20, v21);
          if (v22 + v18 > a6)
          {
            goto LABEL_6;
          }

          a4 += v20;
          --a3;
          v18 += v22;
        }

        while (a3 != -1);
      }
    }

    else
    {
      a4 = 0;
      v18 = 0;
LABEL_6:
      a4 += sub_69EDA0(a2, a3, a6 - v18, v17);
    }
  }

  result = sub_69B32C(a2);
LABEL_16:
  if (a4 + v15 < result)
  {
    return a4 + v15;
  }

  return result;
}

uint64_t sub_5B590C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v31 = sub_69B32C(a2);
  if (a7 == 1)
  {
    v14 = *(a1 + 2736);
  }

  else
  {
    v14 = 0;
    if (sub_4D1DC0(a2) <= a3 || a6 < 1)
    {
      goto LABEL_8;
    }

    v14 = sub_4D23F8(a2, a3, v15) - a4;
    v17 = sub_69EBE0(a2, a3, v14, v16);
    if (v17 <= a6)
    {
      v19 = v17;
      if (++a3 >= sub_4D1DC0(a2) || v19 >= a6)
      {
        goto LABEL_8;
      }

      v25 = -1;
      while (1)
      {
        v26 = sub_4D23F8(a2, a3, v24);
        v28 = v25 ? 0 : a4;
        v29 = v26 - v28;
        v30 = sub_69EBE0(a2, a3, v26 - v28, v27) + v19;
        if (v30 > a6)
        {
          break;
        }

        v14 += v29;
        if (++a3 < sub_4D1DC0(a2))
        {
          --v25;
          v19 = v30;
          if (v30 < a6)
          {
            continue;
          }
        }

        goto LABEL_8;
      }
    }

    else
    {
      v19 = 0;
      v14 = 0;
    }

    v14 += sub_69EDA0(a2, a3, a6 - v19, v18);
  }

LABEL_8:
  v20 = (v31 - a5) & ~((v31 - a5) >> 63);
  v21 = v20 < v14;
  v22 = v20 - v14;
  if (v21)
  {
    return 0;
  }

  else
  {
    return v22;
  }
}

void sub_5B629C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  sub_53A868(&a57);
  sub_53A868(&STACK[0x220]);
  if (*(v57 - 105) < 0)
  {
    operator delete(*(v57 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_5B6398()
{
  sub_53A868(&STACK[0x220]);
  if ((*(v0 - 105) & 0x80000000) == 0)
  {
    JUMPOUT(0x5B6390);
  }

  JUMPOUT(0x5B6388);
}

void sub_5B63B0()
{
  if ((*(v0 - 105) & 0x80000000) == 0)
  {
    JUMPOUT(0x5B6390);
  }

  JUMPOUT(0x5B6388);
}

void sub_5B63C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    JUMPOUT(0x5B638CLL);
  }

  JUMPOUT(0x5B6390);
}

void sub_5B63D4(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v8 = 0;
    goto LABEL_24;
  }

  v7 = v6 - v5 - 1120;
  if (v7 >= 0x460)
  {
    v10 = 0;
    v11 = 0;
    v12 = v7 / 0x460 + 1;
    v9 = v5 + 1120 * (v12 & 0x7FFFFFFFFFFFFELL);
    v13 = *a2;
    v14 = v12 & 0x7FFFFFFFFFFFFELL;
    do
    {
      if (*(v13 + 232))
      {
        v15 = 228;
      }

      else
      {
        v15 = 96;
      }

      if (*(v13 + 1352))
      {
        v16 = 228;
      }

      else
      {
        v16 = 96;
      }

      v17 = *(v13 + v16 + 1120);
      if (!*(v13 + v15))
      {
        ++v10;
      }

      if (!v17)
      {
        ++v11;
      }

      v13 += 2240;
      v14 -= 2;
    }

    while (v14);
    v8 = v11 + v10;
    if (v12 == (v12 & 0x7FFFFFFFFFFFFELL))
    {
LABEL_24:
      v19 = 0xAF8AF8AF8AF8AF8BLL * ((v6 - v5) >> 5);
      v20 = "_Hazard";
      if (v19 == v8)
      {
        v20 = "_Crash";
      }

      v33 = *v20;
      v34 = *(v20 + 2);
      sub_568F30(v19, &v33, *(a1 + 4240), v19 == v8, v31);
      if ((v32 & 0x80u) == 0)
      {
        v21 = v32;
      }

      else
      {
        v21 = v31[1];
      }

      if (v21 + 10 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 + 10 >= 0x17)
      {
        operator new();
      }

      __p[1] = &loc_6460 + 1;
      *&v28 = 0;
      BYTE7(v28) = v21 + 10;
      __p[0] = 0x654872656E6E6142;
      if (v21)
      {
        if ((v32 & 0x80u) == 0)
        {
          v22 = v31;
        }

        else
        {
          v22 = v31[0];
        }

        memmove(&__p[1] + 2, v22, v21);
      }

      *(&__p[1] + v21 + 2) = 0;
      v23 = SBYTE7(v28);
      if ((SBYTE7(v28) & 0x8000000000000000) != 0)
      {
        v23 = __p[1];
        v24 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v24 - __p[1] < 0x16)
        {
          if ((0x7FFFFFFFFFFFFFF7 - (v28 & 0x7FFFFFFFFFFFFFFFLL)) < __p[1] - v24 + 22)
          {
            sub_3244();
          }

LABEL_42:
          operator new();
        }

        v25 = __p[0];
      }

      else
      {
        if ((SBYTE7(v28) - 1) < 0x16)
        {
          goto LABEL_42;
        }

        v25 = __p;
      }

      qmemcpy(v23 + v25, "_Causing_Traffic_Delay", 22);
      v26 = v23 + 22;
      if (SBYTE7(v28) < 0)
      {
        __p[1] = v23 + 22;
      }

      else
      {
        BYTE7(v28) = v26 & 0x7F;
      }

      v26[v25] = 0;
      v29 = *__p;
      v30 = v28;
      operator new();
    }
  }

  else
  {
    v8 = 0;
    v9 = *a2;
  }

  do
  {
    if (*(v9 + 232))
    {
      v18 = 228;
    }

    else
    {
      v18 = 96;
    }

    if (!*(v9 + v18))
    {
      ++v8;
    }

    v9 += 1120;
  }

  while (v9 != v6);
  goto LABEL_24;
}

void sub_5B6D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  if (a43 < 0)
  {
    operator delete(__p);
    sub_540798(&a61);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if (SLOBYTE(STACK[0x227]) < 0)
      {
LABEL_8:
        operator delete(STACK[0x210]);
        if ((SLOBYTE(STACK[0x247]) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }

LABEL_12:
      if ((SLOBYTE(STACK[0x247]) & 0x80000000) == 0)
      {
LABEL_9:
        if (*(v61 - 217) < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

LABEL_13:
      operator delete(STACK[0x230]);
      if (*(v61 - 217) < 0)
      {
LABEL_10:
        operator delete(*(v61 - 240));
        if ((*(v61 - 185) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

LABEL_15:
        operator delete(*(v61 - 208));
LABEL_16:
        if (*(v61 - 161) < 0)
        {
          operator delete(*(v61 - 184));
        }

        if (*(v61 - 137) < 0)
        {
          operator delete(*(v61 - 160));
        }

        if (*(v61 - 113) < 0)
        {
          operator delete(*(v61 - 136));
          if ((*(v61 - 89) & 0x80000000) == 0)
          {
            goto LABEL_22;
          }
        }

        else if ((*(v61 - 89) & 0x80000000) == 0)
        {
LABEL_22:
          _Unwind_Resume(a1);
        }

        operator delete(*(v61 - 112));
        _Unwind_Resume(a1);
      }

LABEL_14:
      if ((*(v61 - 185) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_540798(&a61);
    if (a20 < 0)
    {
      goto LABEL_5;
    }
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_12;
}

void sub_5B72F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v50 - 240);
  if (*(v50 - 57) < 0)
  {
    operator delete(*(v50 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_5B73D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 4799) == 1)
  {
    if (*(a1 + 3264))
    {
LABEL_3:
      v4 = "";
      goto LABEL_6;
    }
  }

  else if (*(a1 + 3265))
  {
    goto LABEL_3;
  }

  v4 = "_Old";
LABEL_6:
  v5 = strlen(v4);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v32 = v5;
  if (v5)
  {
    memcpy(__dst, v4, v5);
  }

  *(__dst + v6) = 0;
  v7 = v32;
  if ((v32 & 0x80u) == 0)
  {
    v8 = v32;
  }

  else
  {
    v8 = __dst[1];
  }

  if (v8 + 37 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = *(a1 + 8);
  if (v8 + 37 > 0x16)
  {
    operator new();
  }

  qmemcpy(__p, "BannerHead_LPR_Offline_SAR_or_Reroute", sizeof(__p));
  if ((v32 & 0x80u) == 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  memmove(v22, v10, v8);
  v22[v8] = 0;
  v11 = sub_9274F4(v9, __p);
  if (*(v11 + 23) < 0)
  {
    sub_325C(&v29, *v11, v11[1]);
  }

  else
  {
    v12 = *v11;
    v30 = v11[2];
    v29 = v12;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v13 = *(a1 + 8);
  memset(__p, 0, 24);
  __p[23] = v8 + 37;
  qmemcpy(__p, "BannerBody_LPR_Offline_SAR_or_Reroute", sizeof(__p));
  if (v7 >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  memmove(v22, v14, v8);
  v22[v8] = 0;
  v15 = sub_9274F4(v13, __p);
  if (*(v15 + 23) < 0)
  {
    sub_325C(v27, *v15, v15[1]);
  }

  else
  {
    v16 = *v15;
    v28 = v15[2];
    *v27 = v16;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  memset(v23, 0, 24);
  HIBYTE(v23[2]) = v8 + 37;
  qmemcpy(v23, "VoiceAlert_LPR_Offline_SAR_or_Reroute", 37);
  if (v7 >= 0)
  {
    v17 = __dst;
  }

  else
  {
    v17 = __dst[0];
  }

  memmove(&v23[4] + 5, v17, v8);
  *(&v23[4] + v8 + 5) = 0;
  memset(__p, 0, 32);
  *&__p[32] = 1065353216;
  sub_65F810(a1 + 24, v23, __p, *(a1 + 3261), &v23[3]);
  *v25 = *&v23[3];
  v26 = v24;
  v24 = 0;
  *&v23[3] = 0uLL;
  v18 = *&__p[16];
  if (*&__p[16])
  {
    do
    {
      v19 = *v18;
      sub_55F7FC((v18 + 2));
      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v20 = *__p;
  *__p = 0;
  if (v20)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v23[2]) < 0)
  {
    operator delete(v23[0]);
  }

  sub_5CB7CC(a2, &v29, v27, v25);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
LABEL_45:
      if ((SHIBYTE(v30) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }
  }

  else if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v27[0]);
  if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
LABEL_46:
    if ((v32 & 0x80000000) == 0)
    {
      return;
    }

LABEL_51:
    operator delete(__dst[0]);
    return;
  }

LABEL_50:
  operator delete(v29);
  if (v32 < 0)
  {
    goto LABEL_51;
  }
}

void sub_5B7864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 - 105) < 0)
  {
    operator delete(*(v39 - 128));
  }

  if (*(v39 - 81) < 0)
  {
    operator delete(*(v39 - 104));
  }

  _Unwind_Resume(exception_object);
}

void sub_5B790C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_5C0A00(a4);
  if (*(a2 + 2096) != 1)
  {
    return;
  }

  *a4 = *a2;
  sub_5AA47C(v41, a2);
  *(a4 + 576) = sub_59F53C((a1 + 2728), v41);
  v8 = __p;
  if (__p)
  {
    v9 = v65;
    v10 = __p;
    if (v65 != __p)
    {
      do
      {
        v9 -= 2000;
        sub_5C0D2C(v9);
      }

      while (v9 != v8);
      v10 = __p;
    }

    v65 = v8;
    operator delete(v10);
  }

  v11 = v62;
  if (v62)
  {
    v12 = v63;
    v13 = v62;
    if (v63 != v62)
    {
      do
      {
        v12 -= 2000;
        sub_5C0D2C(v12);
      }

      while (v12 != v11);
      v13 = v62;
    }

    v63 = v11;
    operator delete(v13);
  }

  v14 = v60;
  if (v60)
  {
    v15 = v61;
    v16 = v60;
    if (v61 != v60)
    {
      do
      {
        v15 -= 2000;
        sub_5C0D2C(v15);
      }

      while (v15 != v14);
      v16 = v60;
    }

    v61 = v14;
    operator delete(v16);
  }

  if (v59 == 1)
  {
    if (v58 < 0)
    {
      operator delete(v57);
    }

    if (v56 == 1)
    {
      if (v55 < 0)
      {
        operator delete(v54);
      }

      v17 = v52;
      if (v52)
      {
        v18 = v53;
        v19 = v52;
        if (v53 != v52)
        {
          do
          {
            v20 = *(v18 - 1);
            v18 -= 3;
            if (v20 < 0)
            {
              operator delete(*v18);
            }
          }

          while (v18 != v17);
          v19 = v52;
        }

        v53 = v17;
        operator delete(v19);
      }

      if (v51 < 0)
      {
        operator delete(v50);
        if ((v49 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v47 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

LABEL_69:
          operator delete(v46);
          v21 = v44;
          if (v44)
          {
            goto LABEL_35;
          }

          goto LABEL_39;
        }
      }

      else if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(v48);
      if (v47 < 0)
      {
        goto LABEL_69;
      }
    }

LABEL_34:
    v21 = v44;
    if (v44)
    {
LABEL_35:
      v22 = v45;
      v23 = v21;
      if (v45 != v21)
      {
        do
        {
          v22 = sub_3A9518(v22 - 1120);
        }

        while (v22 != v21);
        v23 = v44;
      }

      v45 = v21;
      operator delete(v23);
    }

LABEL_39:
    sub_570440(&v43);
    if (v42[1120] == 1)
    {
      sub_3A9518(v42);
    }
  }

  sub_5B7D84(a1, a3, (a2 + 2016), v36);
  sub_5A0314((a4 + 120), v36);
  sub_53A868(&v40);
  sub_53A868(&v39);
  v24 = v37;
  if (v37)
  {
    v25 = v38;
    v26 = v37;
    if (v38 != v37)
    {
      do
      {
        v25 = sub_53A868(v25 - 160);
      }

      while (v25 != v24);
      v26 = v37;
    }

    v38 = v24;
    operator delete(v26);
  }

  v27 = v36[0];
  if (v36[0])
  {
    v28 = v36[1];
    v29 = v36[0];
    if (v36[1] != v36[0])
    {
      do
      {
        v28 = sub_53A868(v28 - 160);
      }

      while (v28 != v27);
      v29 = v36[0];
    }

    v36[1] = v27;
    operator delete(v29);
  }

  if ((*a4 - 39) <= 1)
  {
    v30 = *a3;
    v31 = a3[1];
    if (*a3 != v31)
    {
      while (!sub_68D7D8(v30) || sub_68D80C(v30))
      {
        v30 += 7808;
        if (v30 == v31)
        {
          v30 = v31;
          break;
        }
      }

      v31 = a3[1];
    }

    if (v30 != v31)
    {
      v32 = v30 - *a3;
      if (v32 != -7808)
      {
        v33 = sub_5B7F90(a3, 0x4FBCDA3AC10C9715 * (v32 >> 7));
        *(a4 + 584) = sub_68C850(v33);
      }
    }
  }

  v34 = sub_6A0C34(a3);
  if (v34 != -1)
  {
    v35 = sub_5B7F90(a3, v34);
    *(a4 + 580) = sub_68C850(v35);
  }

  sub_5A04B4(a1, a4);
}

void sub_5B7D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  sub_59F87C(va);
  sub_5C0F34(v54);
  _Unwind_Resume(a1);
}

void sub_5B7D84(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_6A0C34(a2);
  if (v8 == -1)
  {
    v10 = *a2;
    v11 = a2[1];
    if (*a2 != v11)
    {
      do
      {
        if (sub_68D7D8(v10) && !sub_68D80C(v10))
        {
          goto LABEL_19;
        }

        v10 += 7808;
      }

      while (v10 != v11);
      v10 = v11;
LABEL_19:
      v11 = a2[1];
    }

    if (v10 != v11)
    {
      v14 = v10 - *a2;
      if (v14 != -7808)
      {
        sub_5B7F90(a2, 0x4FBCDA3AC10C9715 * (v14 >> 7));
      }
    }

    sub_5BA7E8(a4);
  }

  v9 = sub_5B7F90(a2, v8);
  if (!sub_68D7D8(v9))
  {
    v12 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      do
      {
        if (sub_68D7D8(v12) && !sub_68D80C(v12))
        {
          goto LABEL_24;
        }

        v12 += 7808;
      }

      while (v12 != v13);
      v12 = v13;
LABEL_24:
      v13 = a2[1];
    }

    if (v12 == v13)
    {
      v15 = -1;
    }

    else
    {
      v15 = 0x4FBCDA3AC10C9715 * ((v12 - *a2) >> 7);
    }

    v16 = sub_5B7F90(a2, v15);

    sub_5BA200(a1, v16, a4);
  }

  sub_5B9C30(a1, v9, a3, a4);
}

unint64_t sub_5B7F90(void *a1, unint64_t a2)
{
  if (0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 7808 * a2;
}

void sub_5B80CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_5B81AC(uint64_t a1@<X0>, const void ***a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v5 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v6 = a2;
  if (v5 + 10 >= 0x17)
  {
    operator new();
  }

  *(&v41 + 1) = 25697;
  v42 = 0;
  HIBYTE(v42) = v5 + 10;
  *&v41 = 0x654872656E6E6142;
  if (v5)
  {
    if ((v4 & 0x80u) != 0)
    {
      a2 = *a2;
    }

    memmove(&v41 + 10, a2, v5);
  }

  *(&v41 + v5 + 10) = 0;
  v8 = SHIBYTE(v42);
  if ((SHIBYTE(v42) & 0x8000000000000000) != 0)
  {
    v8 = *(&v41 + 1);
    v9 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v9 - *(&v41 + 1)) < 6)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v42 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v41 + 1) + 6 - v9)
      {
        sub_3244();
      }

LABEL_16:
      operator new();
    }

    v10 = v41;
  }

  else
  {
    if ((SHIBYTE(v42) - 17) < 6)
    {
      goto LABEL_16;
    }

    v10 = &v41;
  }

  v11 = v10 + v8;
  *(v11 + 2) = 25701;
  *v11 = 1835619423;
  v12 = v8 + 6;
  if (SHIBYTE(v42) < 0)
  {
    *(&v41 + 1) = v8 + 6;
  }

  else
  {
    HIBYTE(v42) = v12 & 0x7F;
  }

  *(v10 + v12) = 0;
  v47 = v41;
  v48 = v42;
  v13 = *(v6 + 23);
  if (v13 >= 0)
  {
    v14 = *(v6 + 23);
  }

  else
  {
    v14 = v6[1];
  }

  if (v14 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v14 + 10 >= 0x17)
  {
    operator new();
  }

  *(&v41 + 1) = 31076;
  v42 = 0;
  HIBYTE(v42) = v14 + 10;
  *&v41 = 0x6F4272656E6E6142;
  if (v14)
  {
    if ((v13 & 0x80u) == 0)
    {
      v15 = v6;
    }

    else
    {
      v15 = *v6;
    }

    memmove(&v41 + 10, v15, v14);
  }

  *(&v41 + v14 + 10) = 0;
  v16 = SHIBYTE(v42);
  if ((SHIBYTE(v42) & 0x8000000000000000) != 0)
  {
    v16 = *(&v41 + 1);
    v17 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v17 - *(&v41 + 1)) < 6)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v42 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v41 + 1) + 6 - v17)
      {
        sub_3244();
      }

LABEL_38:
      operator new();
    }

    v18 = v41;
  }

  else
  {
    if ((SHIBYTE(v42) - 17) < 6)
    {
      goto LABEL_38;
    }

    v18 = &v41;
  }

  v19 = v18 + v16;
  *(v19 + 2) = 25701;
  *v19 = 1835619423;
  v20 = v16 + 6;
  if (SHIBYTE(v42) < 0)
  {
    *(&v41 + 1) = v16 + 6;
  }

  else
  {
    HIBYTE(v42) = v20 & 0x7F;
  }

  *(v18 + v20) = 0;
  v45 = v41;
  v46 = v42;
  v21 = *(v6 + 23);
  if (v21 >= 0)
  {
    v22 = *(v6 + 23);
  }

  else
  {
    v22 = v6[1];
  }

  if (v22 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v22 + 10 >= 0x17)
  {
    operator new();
  }

  *(&v41 + 1) = 29810;
  v42 = 0;
  HIBYTE(v42) = v22 + 10;
  *&v41 = 0x656C416563696F56;
  if (v22)
  {
    if ((v21 & 0x80u) == 0)
    {
      v23 = v6;
    }

    else
    {
      v23 = *v6;
    }

    memmove(&v41 + 10, v23, v22);
  }

  *(&v41 + v22 + 10) = 0;
  v24 = SHIBYTE(v42);
  if ((SHIBYTE(v42) & 0x8000000000000000) != 0)
  {
    v24 = *(&v41 + 1);
    v25 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v25 - *(&v41 + 1)) < 6)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v42 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v41 + 1) + 6 - v25)
      {
        sub_3244();
      }

LABEL_60:
      operator new();
    }

    v26 = v41;
  }

  else
  {
    if ((SHIBYTE(v42) - 17) < 6)
    {
      goto LABEL_60;
    }

    v26 = &v41;
  }

  v27 = v26 + v24;
  *(v27 + 2) = 25701;
  *v27 = 1835619423;
  v28 = v24 + 6;
  if (SHIBYTE(v42) < 0)
  {
    *(&v41 + 1) = v24 + 6;
  }

  else
  {
    HIBYTE(v42) = v28 & 0x7F;
  }

  *(v26 + v28) = 0;
  v43 = v41;
  v44 = v42;
  v29 = sub_9274F4(*(a1 + 8), &v47);
  sub_64BC20(&v41, v29);
  v30 = sub_9274F4(*(a1 + 8), &v45);
  sub_64BC20(v40, v30);
  *v34 = 0u;
  v35 = 0u;
  v36 = 1065353216;
  sub_65F810(a1 + 24, &v43, v34, *(a1 + 3261), __p);
  sub_64BC20(v39, __p);
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v31 = v35;
  if (v35)
  {
    do
    {
      v32 = *v31;
      sub_55F7FC((v31 + 2));
      operator delete(v31);
      v31 = v32;
    }

    while (v32);
  }

  v33 = v34[0];
  v34[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  sub_5CB500(a3, &v41, v40, v39);
  sub_53A868(v39);
  sub_53A868(v40);
  sub_53A868(&v41);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
LABEL_74:
      if ((SHIBYTE(v48) & 0x80000000) == 0)
      {
        return;
      }

LABEL_78:
      operator delete(v47);
      return;
    }
  }

  else if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_74;
  }

  operator delete(v45);
  if (SHIBYTE(v48) < 0)
  {
    goto LABEL_78;
  }
}

void sub_5B89C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
  }

  if (*(v64 - 121) < 0)
  {
    operator delete(*(v64 - 144));
  }

  if (*(v64 - 89) < 0)
  {
    operator delete(*(v64 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_5B8A98(uint64_t a1@<X0>, const void ***a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v6 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v8 = a2;
  if (v6 + 10 >= 0x17)
  {
    operator new();
  }

  v40 = 25697;
  v41 = 0;
  HIBYTE(v41) = v6 + 10;
  v39 = 0x654872656E6E6142;
  if (v6)
  {
    if ((v5 & 0x80u) != 0)
    {
      a2 = *a2;
    }

    memmove(&v40 + 2, a2, v6);
  }

  *(&v40 + v6 + 2) = 0;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = *(v8 + 23);
  }

  else
  {
    v11 = v8[1];
  }

  if (v11 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v11 + 10 >= 0x17)
  {
    operator new();
  }

  v37 = 31076;
  v38 = 0;
  HIBYTE(v38) = v11 + 10;
  v36 = 0x6F4272656E6E6142;
  if (v11)
  {
    if ((v10 & 0x80u) == 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = *v8;
    }

    memmove(&v37 + 2, v12, v11);
  }

  *(&v37 + v11 + 2) = 0;
  v13 = *(v8 + 23);
  if (v13 >= 0)
  {
    v14 = *(v8 + 23);
  }

  else
  {
    v14 = v8[1];
  }

  if (v14 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v14 + 10 >= 0x17)
  {
    operator new();
  }

  v34 = 29810;
  v35 = 0;
  HIBYTE(v35) = v14 + 10;
  v33 = 0x656C416563696F56;
  if (v14)
  {
    if ((v13 & 0x80u) == 0)
    {
      v15 = v8;
    }

    else
    {
      v15 = *v8;
    }

    memmove(&v34 + 2, v15, v14);
  }

  *(&v34 + v14 + 2) = 0;
  v16 = sub_9274F4(*(a1 + 8), &v39);
  sub_64BC20(v32, v16);
  v17 = sub_9274F4(*(a1 + 8), &v36);
  sub_64BC20(v31, v17);
  v30 = sub_570CBC(a3);
  if (v30 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = SHIBYTE(v35);
    if ((SHIBYTE(v35) & 0x8000000000000000) != 0)
    {
      v18 = v34;
      if ((v35 & 0x7FFFFFFFFFFFFFFFuLL) - 1 - v34 < 0xC)
      {
        if (0x7FFFFFFFFFFFFFF7 - (v35 & 0x7FFFFFFFFFFFFFFFuLL) < v34 + 12 - ((v35 & 0x7FFFFFFFFFFFFFFFuLL) - 1))
        {
          sub_3244();
        }

LABEL_39:
        operator new();
      }

      v19 = v33;
    }

    else
    {
      if ((SHIBYTE(v35) - 11) < 0xC)
      {
        goto LABEL_39;
      }

      v19 = &v33;
    }

    qmemcpy(v19 + v18, "_HasDistance", 12);
    v20 = v18 + 12;
    if (SHIBYTE(v35) < 0)
    {
      v34 = v18 + 12;
    }

    else
    {
      HIBYTE(v35) = v20 & 0x7F;
    }

    *(v19 + v20) = 0;
  }

  *v24 = 0u;
  v25 = 0u;
  v26 = 1065353216;
  sub_65F810(a1 + 24, &v33, v24, *(a1 + 3261), __p);
  sub_64BC20(v29, __p);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = v25;
  if (v25)
  {
    do
    {
      v22 = *v21;
      sub_55F7FC((v21 + 2));
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = v24[0];
  v24[0] = 0;
  if (v23)
  {
    operator delete(v23);
  }

  if (v30 != 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v24[0]) = 1;
    sub_64E428(v29, "{distance}", &v30, v24);
  }

  sub_5CB500(a4, v32, v31, v29);
  sub_53A868(v29);
  sub_53A868(v31);
  sub_53A868(v32);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
LABEL_56:
      if ((SHIBYTE(v41) & 0x80000000) == 0)
      {
        return;
      }

LABEL_60:
      operator delete(v39);
      return;
    }
  }

  else if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_56;
  }

  operator delete(v36);
  if (SHIBYTE(v41) < 0)
  {
    goto LABEL_60;
  }
}

void sub_5B9014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_53A868(&a22);
  sub_53A868(&a43);
  sub_53A868(&a63);
  if (*(v63 - 129) < 0)
  {
    operator delete(*(v63 - 152));
    if ((*(v63 - 105) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v63 - 105) & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v63 - 81) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  operator delete(*(v63 - 128));
  if (*(v63 - 81) < 0)
  {
LABEL_4:
    operator delete(*(v63 - 104));
    _Unwind_Resume(a1);
  }

LABEL_7:
  _Unwind_Resume(a1);
}

void sub_5B90E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if ((sub_4D20B0(a2, 4) & 1) != 0 || (sub_4D20B0(a2, 9) & 1) != 0 || (sub_4D20B0(a3, 4) & 1) == 0 && !sub_4D20B0(a3, 9))
  {
    return;
  }

  if ((a5 & 1) == 0)
  {
    v10 = a4[4];
    v11 = *(a1 + 8);
    strcpy(v31, "BannerBody_TollTrailer");
    HIBYTE(v31[2]) = 22;
    v12 = sub_9274F4(v11, v31);
    v13 = *(v10 - 152);
    if (v13 >= *(v10 - 144))
    {
      *(v10 - 152) = sub_1CEE8(v10 - 160, v12);
      if ((SHIBYTE(v31[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

    if (*(v12 + 23) < 0)
    {
      sub_325C(*(v10 - 152), *v12, v12[1]);
    }

    else
    {
      v14 = *v12;
      *(v13 + 16) = v12[2];
      *v13 = v14;
    }

    *(v10 - 152) = v13 + 24;
    *(v10 - 152) = v13 + 24;
    if (SHIBYTE(v31[2]) < 0)
    {
LABEL_34:
      operator delete(v31[0]);
    }
  }

LABEL_10:
  strcpy(v33, "VoiceAlert_TollTrailer");
  HIBYTE(v33[2]) = 22;
  memset(v31, 0, sizeof(v31));
  v32 = 1065353216;
  sub_65F810(a1 + 24, v33, v31, *(a1 + 3261), __p);
  v15 = a4[7];
  v16 = a4[8];
  if (v15 >= v16)
  {
    v19 = a4[6];
    v20 = v15 - v19;
    v21 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v19) >> 3);
    v22 = v21 + 1;
    if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v23 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v19) >> 3);
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 >= 0x555555555555555)
    {
      v24 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (v24 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v25 = 24 * v21;
    *v25 = *__p;
    *(v25 + 16) = v35;
    __p[1] = 0;
    v35 = 0;
    __p[0] = 0;
    v18 = 24 * v21 + 24;
    v26 = 24 * v21 - v20;
    memcpy((v25 - v20), v19, v20);
    a4[6] = v26;
    a4[7] = v18;
    a4[8] = 0;
    if (v19)
    {
      operator delete(v19);
      v27 = SHIBYTE(v35);
      a4[7] = v18;
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_25;
    }
  }

  else
  {
    v17 = *__p;
    *(v15 + 16) = v35;
    *v15 = v17;
    __p[1] = 0;
    v35 = 0;
    __p[0] = 0;
    v18 = v15 + 24;
  }

  a4[7] = v18;
LABEL_25:
  v28 = v31[2];
  if (v31[2])
  {
    do
    {
      v29 = *v28;
      sub_55F7FC((v28 + 2));
      operator delete(v28);
      v28 = v29;
    }

    while (v29);
  }

  v30 = v31[0];
  v31[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v33[2]) < 0)
  {
    operator delete(v33[0]);
  }
}

void sub_5B940C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  *(v29 - 152) = v28;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5B9468(int a1@<W1>, int a2@<W2>, std::string *a3@<X8>)
{
  if (a1 == 4)
  {
    operator new();
  }

  if (a1 == 6 || (a2 - 5) <= 0xFFFFFFFB)
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  v5 = "";
  if (a1 == 3)
  {
    v5 = "_R";
  }

  if (a1 == 1)
  {
    v6 = "_L";
  }

  else
  {
    v6 = v5;
  }

  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v21 = v7;
  if (v7)
  {
    memcpy(__dst, v6, v7);
  }

  *(__dst + v8) = 0;
  v18 = 0;
  v19 = 0x200000000000000;
  *__s = 0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v9 = 13151;
    }

    else
    {
      v9 = 13407;
    }
  }

  else if (a2 == 1)
  {
    v9 = 12639;
  }

  else
  {
    v9 = 12895;
  }

  *__s = v9;
  strcpy(&v15, "VoiceAlert_LaneTrailer");
  *(&v15.__r_.__value_.__s + 23) = 22;
  if ((v21 & 0x80u) == 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v11 = v21;
  }

  else
  {
    v11 = __dst[1];
  }

  v12 = std::string::append(&v15, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v16, __s, 2uLL);
  *a3 = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_33:
      if ((SHIBYTE(v19) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19) & 0x80000000) == 0)
  {
LABEL_34:
    if (v21 < 0)
    {
      goto LABEL_39;
    }

    return;
  }

LABEL_38:
  operator delete(*__s);
  if (v21 < 0)
  {
LABEL_39:
    operator delete(__dst[0]);
  }
}

void sub_5B9734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v28 - 49) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a23);
  if ((*(v28 - 49) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v28 - 72));
  _Unwind_Resume(exception_object);
}

void sub_5B97B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 23) = 15;
  strcpy(a4, "_Familiar_Route");
  v8 = sub_58BBC(a2);
  if (*v8 == v8[1])
  {
    HIBYTE(v18) = 0;
    LOBYTE(v17[0]) = 0;
  }

  else
  {
    v9 = sub_58BBC(a2);
    v10 = *v9;
    if (*(*v9 + 23) < 0)
    {
      sub_325C(v17, *v10, *(v10 + 1));
    }

    else
    {
      v11 = *v10;
      v18 = *(v10 + 2);
      *v17 = v11;
    }
  }

  v12 = HIBYTE(v18);
  if (v18 < 0)
  {
    v12 = v17[1];
  }

  if (v12)
  {
    std::string::append(a4, "_Named", 6uLL);
  }

  sub_5CDE28(a3, __p);
  if ((v16 & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v14 = v16;
  }

  else
  {
    v14 = __p[1];
  }

  std::string::append(a4, v13, v14);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_68D7D8(a2))
  {
    std::string::append(a4, "_Main", 5uLL);
  }

  if (*(a1 + 4836) == 1)
  {
    std::string::append(a4, "_EnRoute", 8uLL);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_5B9944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v21 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((*(v21 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v21);
  _Unwind_Resume(exception_object);
}

void sub_5B99BC(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  sub_5CDE28(a2, &v7);
  v5 = std::string::insert(&v7, 0, "_Familiar_Route", 0xFuLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&a3->__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
    if (*(a1 + 4836) != 1)
    {
      return;
    }

    goto LABEL_5;
  }

  if (*(a1 + 4836) == 1)
  {
LABEL_5:
    std::string::append(a3, "_EnRoute", 8uLL);
  }
}

void sub_5B9A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_5B9A9C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 23) = 10;
  strcpy(a2, "_FollowUp_");
  v4 = sub_68F890(a1);
  if (v4)
  {
    v5 = "Familiar_Route";
  }

  else
  {
    v5 = "Take_Alternate";
  }

  std::string::append(a2, v5, 0xEuLL);
  v6 = sub_58BBC(a1);
  if (*v6 == v6[1])
  {
    HIBYTE(v12) = 0;
    LOBYTE(__p[0]) = 0;
  }

  else
  {
    v7 = sub_58BBC(a1);
    v8 = *v7;
    if (*(*v7 + 23) < 0)
    {
      sub_325C(__p, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      v12 = *(v8 + 2);
      *__p = v9;
    }
  }

  v10 = HIBYTE(v12);
  if (v12 < 0)
  {
    v10 = __p[1];
  }

  if (v10)
  {
    std::string::append(a2, "_Named", 6uLL);
  }

  if (v4)
  {
    std::string::append(a2, "_TrafficUpdate", 0xEuLL);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_5B9BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v14 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v14 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v14);
  _Unwind_Resume(exception_object);
}

void sub_5B9C30(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_59E940(a1 + 3960);
  if (*v8 != v8[1] && **v8 != 0x7FFFFFFF)
  {

    sub_5BAD60(a2, a4);
  }

  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  sub_64B998(a4 + 48);
  sub_64B998(a4 + 208);
  v9 = *(a1 + 8);
  *(&__p[0].__r_.__value_.__s + 23) = 17;
  strcpy(__p, "BannerHead_Delays");
  v10 = sub_9274F4(v9, __p);
  v11 = *(a4 + 8);
  if (v11 >= *(a4 + 16))
  {
    v12 = sub_5C4594(a4, v10);
  }

  else
  {
    sub_64BC20(*(a4 + 8), v10);
    v12 = v11 + 160;
  }

  *(a4 + 8) = v12;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  __p[0].__r_.__value_.__s.__data_[15] = 0;
  __p[0].__r_.__value_.__r.__words[2] = 0xE00000000000000;
  strcpy(__p, "DEV:BannerBody");
  sub_5B97B0(a1, a2, a3, &v45);
  if ((SBYTE7(v46) & 0x80u) == 0)
  {
    v13 = &v45;
  }

  else
  {
    v13 = v45;
  }

  if ((SBYTE7(v46) & 0x80u) == 0)
  {
    v14 = BYTE7(v46);
  }

  else
  {
    v14 = *(&v45 + 1);
  }

  v15 = std::string::append(__p, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v49 = v15->__r_.__value_.__r.__words[2];
  v48 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v46) < 0)
  {
    operator delete(v45);
    if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__p[0].__r_.__value_.__l.__data_);
LABEL_16:
  v45 = 0u;
  v46 = 0u;
  v47 = 1065353216;
  v17 = sub_68EC68(a2);
  v18 = v17;
  v19 = *(v17 + 23);
  if (v19 < 0)
  {
    v19 = v17[1];
  }

  if (v19)
  {
    __p[0].__r_.__value_.__r.__words[0] = "{RouteName}";
    v20 = sub_353894(&v45, "{RouteName}", &unk_229EB70, __p);
    v21 = v20 + 5;
    if (v20 + 5 != v18)
    {
      v22 = *(v20 + 63);
      v23 = *(v18 + 23);
      if (v22 < 0)
      {
        if (v23 >= 0)
        {
          v25 = v18;
        }

        else
        {
          v25 = *v18;
        }

        if (v23 >= 0)
        {
          v26 = *(v18 + 23);
        }

        else
        {
          v26 = v18[1];
        }

        sub_13B38(v21, v25, v26);
      }

      else if ((*(v18 + 23) & 0x80) != 0)
      {
        sub_13A68(v21, *v18, v18[1]);
      }

      else
      {
        v24 = *v18;
        v21[2] = v18[2];
        *v21 = v24;
      }
    }
  }

  if (a3[1] - *a3 == 2000)
  {
    sub_570D48(*a3, __p);
    if ((v42 & 1) == 0)
    {
      sub_4F0F0C();
    }

    v43 = v40;
    v44 = v41;
    v41 = 0;
    v40 = 0uLL;
    sub_3A9518(__p);
    __p[0].__r_.__value_.__r.__words[0] = "{AreaIncident}";
    v27 = sub_353894(&v45, "{AreaIncident}", &unk_229EB70, __p);
    v28 = (v27 + 5);
    if (v27 + 5 != &v43)
    {
      if (*(v27 + 63) < 0)
      {
        if (SHIBYTE(v44) >= 0)
        {
          v29 = &v43;
        }

        else
        {
          v29 = v43;
        }

        if (SHIBYTE(v44) >= 0)
        {
          v30 = HIBYTE(v44);
        }

        else
        {
          v30 = *(&v43 + 1);
        }

        sub_13B38(v28, v29, v30);
      }

      else if ((HIBYTE(v44) & 0x80) != 0)
      {
        sub_13A68(v28, v43, *(&v43 + 1));
      }

      else
      {
        *v28 = v43;
        v27[7] = v44;
      }
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43);
    }
  }

  sub_6A5584(&v48, &v45, *(a1 + 8), 0, &v43);
  sub_64BC20(__p, &v43);
  v31 = sub_68C850(a2);
  if (v31 < 0)
  {
    v32 = 65236;
  }

  else
  {
    v32 = 300;
  }

  v33 = v32 + v31 % 600 + ((-9611 * (v32 + v31 % 600)) >> 16);
  sub_64EA58(__p, "{duration}", 600 * (v31 / 600 + (v33 >> 9) + ((v33 & 0x8000) >> 15)));
  v34 = *(a4 + 32);
  if (v34 >= *(a4 + 40))
  {
    v35 = sub_5C489C((a4 + 24), __p);
  }

  else
  {
    sub_55BD50(*(a4 + 32), __p);
    v35 = v34 + 160;
  }

  *(a4 + 32) = v35;
  sub_53A868(__p);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  v36 = v46;
  if (v46)
  {
    while (1)
    {
      v37 = *v36;
      if (v36[63] < 0)
      {
        operator delete(*(v36 + 5));
        if ((v36[39] & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_66:
        operator delete(*(v36 + 2));
        operator delete(v36);
        v36 = v37;
        if (!v37)
        {
          break;
        }
      }

      else
      {
        if (v36[39] < 0)
        {
          goto LABEL_66;
        }

LABEL_63:
        operator delete(v36);
        v36 = v37;
        if (!v37)
        {
          break;
        }
      }
    }
  }

  v38 = v45;
  *&v45 = 0;
  if (v38)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }
}

void sub_5BA0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 32) = v10;
  sub_53A868(&a9);
  if (*(v11 - 137) < 0)
  {
    operator delete(*(v11 - 160));
  }

  sub_2CD04(v11 - 128);
  if (*(v11 - 57) < 0)
  {
    operator delete(*(v11 - 80));
  }

  sub_5A0410(v9);
  _Unwind_Resume(a1);
}

void sub_5BA200(uint64_t a1@<X0>, uint64_t a3@<X2>, _OWORD *a5@<X8>)
{
  v7 = sub_59E940(a1 + 3960);
  if (*v7 == v7[1] || *(*v7 + 4) == 0x7FFFFFFF)
  {
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
    sub_64B998((a5 + 3));
    sub_64B998((a5 + 13));
    operator new();
  }

  sub_5BAD60(a3, a5);
}

void sub_5BA6AC(_Unwind_Exception *a1, void *__p, uint64_t a3, uint64_t a4, void *__pa, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *(v7 + 32) = v8;
  sub_53A868(va);
  if (*(v9 - 153) < 0)
  {
    operator delete(*(v9 - 176));
  }

  sub_2CD04(v9 - 144);
  if (*(v9 - 73) < 0)
  {
    operator delete(*(v9 - 96));
  }

  sub_5A0410(v7);
  _Unwind_Resume(a1);
}

void sub_5BA7E8(_OWORD *a4@<X8>)
{
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  sub_64B998((a4 + 3));
  sub_64B998((a4 + 13));
  operator new();
}

void sub_5BAC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_53A868(&a18);
  sub_2CD04(v24 - 176);
  if (*(v24 - 105) < 0)
  {
    operator delete(*(v24 - 128));
  }

  if (*(v24 - 73) < 0)
  {
    operator delete(*(v24 - 96));
  }

  sub_5A0410(v23);
  _Unwind_Resume(a1);
}

void sub_5BAD60(uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  sub_64B998((a3 + 3));
  sub_64B998((a3 + 13));
  sub_68F890(a2);
  operator new();
}

void sub_5BB120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  *(v38 + 32) = v39;
  sub_53A868(&a10);
  if (a38 < 0)
  {
    operator delete(__p);
    if ((*(v40 - 153) & 0x80000000) == 0)
    {
LABEL_3:
      sub_2CD04(v40 - 144);
      if ((*(v40 - 73) & 0x80000000) == 0)
      {
LABEL_8:
        sub_5A0410(v38);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(*(v40 - 96));
      goto LABEL_8;
    }
  }

  else if ((*(v40 - 153) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v40 - 176));
  sub_2CD04(v40 - 144);
  if ((*(v40 - 73) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t **sub_5BB284(uint64_t a1)
{
  v2 = *(a1 + 8);
  strcpy(v9, "Separator_After_Period");
  HIBYTE(v9[2]) = 22;
  if (sub_928074(v2, v9, 0))
  {
    v3 = *(a1 + 8);
    strcpy(__p, "Separator_After_Period");
    v8 = 22;
    result = sub_9274F4(v3, __p);
    if ((v8 & 0x80000000) == 0)
    {
      if ((SHIBYTE(v9[2]) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_8:
      v6 = result;
      operator delete(v9[0]);
      return v6;
    }

    v5 = result;
    operator delete(*__p);
    result = v5;
    if (SHIBYTE(v9[2]) < 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = &unk_229A3A0;
    if (SHIBYTE(v9[2]) < 0)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_5BB36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

void sub_5BB78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_2CD04(&a16);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_5BB7DC(void *a1, unint64_t a2)
{
  if (0x1CAC083126E978D5 * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0x1CAC083126E978D5 * ((a1[1] - *a1) >> 4));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 2000 * a2;
}

void sub_5BB918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_5BB9F8(uint64_t a1, void *a2)
{
  v4 = sub_45AC50(a1);
  sub_2B7A20(a2, *(v4 + 32) & 0xFFFFFFFFFFFFFFLL, &v8);
  sub_31BF20(&v8, v10);
  if (*(&v8 + 1))
  {
    v9 = *(&v8 + 1);
    operator delete(*(&v8 + 1));
  }

  v5 = sub_4D2138(a1);
  sub_2F4C8(v10, 0, &v8, v5 / -1000000000.0 + 1.0, 1.0);
  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  *v10 = v8;
  v11 = v9;
  v6 = *v8;
  v10[1] = v8;
  operator delete(v8);
  return v6;
}

void sub_5BBAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5BBAF8(uint64_t a1, void *a2)
{
  v4 = sub_4D1F60(a1);
  sub_2B7A20(a2, *(v4 + 32) & 0xFFFFFFFFFFFFFFLL, &v8);
  sub_31BF20(&v8, &v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v5 = sub_4D2140(a1);
  sub_2F4C8(&v10, 0, &v8, 0.0, v5 / 1000000000.0);
  if (v10)
  {
    *&v11 = v10;
    operator delete(v10);
  }

  v10 = v8;
  v11 = *__p;
  v6 = *(__p[0] - 12);
  if (v8)
  {
    *&v11 = v8;
    operator delete(v8);
  }

  return v6;
}

void sub_5BBBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5BBBF8(uint64_t a1, uint64_t a2)
{
  v4 = *a2 - 1;
  if (v4 <= 0x24)
  {
    sub_5CDB24(a2, *(a1 + 3072), *(a1 + qword_229A6D8[v4]));
  }

  if (sub_5CC010(a2) && sub_5CC024(a2))
  {
    if (sub_5CBD3C(*(a2 + 712)))
    {

      sub_5BBD64(a1, a2);
    }

    else
    {

      sub_5BBCB4(a1, a2);
    }
  }
}

void sub_5BBCB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 712);
  if (!sub_5CBD84(v4) && sub_5CBD54(v4) && sub_5CBD4C(v4))
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      sub_4F0F0C();
    }

    v5 = *(v4 + 24);
    if (v5 <= 0xF && ((0xFEFFu >> v5) & 1) != 0)
    {
      v6 = *(a1 + qword_229A800[v5]);
      v7 = *(a1 + 3108);

      sub_5CDB24(a2, v7, v6);
    }
  }
}

void sub_5BBD64(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 712);
  if (!sub_5CBD84(v4) && sub_5CBD54(v4) && sub_5CBD3C(v4))
  {
    v5 = *(v4 + 32) - 1;
    if (v5 <= 0x15)
    {
      v6 = *(a1 + 4 * v5 + 3168);
      v7 = *(a1 + 3108);

      sub_5CDB24(a2, v7, v6);
    }
  }
}

uint64_t sub_5BBDFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 712);
  result = sub_5CBD84(v4);
  if ((result & 1) == 0)
  {
    result = sub_5CBD54(v4);
    if (result)
    {
      result = sub_5CBD4C(v4);
      if (result)
      {
        if ((*(v4 + 28) & 1) == 0)
        {
          sub_4F0F0C();
        }

        v6 = *(v4 + 24);
        if (v6 <= 0xF && ((0xFEFFu >> v6) & 1) != 0)
        {
          v7 = *(a1 + qword_229A800[v6]);
          v8 = *(a1 + 3108);

          sub_5CDB34(a2, v8, v7);
        }
      }
    }
  }

  return result;
}

BOOL sub_5BBEAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 712);
  result = sub_5CBD84(v4);
  if (!result)
  {
    result = sub_5CBD54(v4);
    if (result)
    {
      result = sub_5CBD3C(v4);
      if (result)
      {
        v6 = *(v4 + 32) - 1;
        if (v6 <= 0x15)
        {
          v7 = *(a1 + 4 * v6 + 3168);
          v8 = *(a1 + 3108);

          sub_5CDB34(a2, v8, v7);
        }
      }
    }
  }

  return result;
}

void sub_5BBF44(uint64_t a1, void *a2)
{
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v3 = vnegq_f64(v2);
  *(a1 + 16) = v3;
  *(a1 + 32) = v3;
  *(a1 + 48) = v3;
  *a1 = v3;
  *(a1 + 64) = v3;
  *(a1 + 80) = 0x7FFFFFFFFFFFFFFFLL;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  *(a1 + 88) = v3;
  *(a1 + 104) = v3;
  *(a1 + 120) = v3;
  *(a1 + 136) = v3;
  *(a1 + 152) = v3;
  *(a1 + 168) = v3;
  *(a1 + 184) = v3;
  *(a1 + 200) = 0x8000000080000000;
  *(a1 + 208) = 0x7FFFFFFF;
  *(a1 + 344) = v2;
  *(a1 + 360) = v2;
  *(a1 + 376) = v2;
  *(a1 + 392) = v2;
  *(a1 + 408) = v2;
  *(a1 + 424) = v2;
  *(a1 + 440) = v2;
  *(a1 + 456) = v2;
  *(a1 + 472) = v2;
  *(a1 + 488) = v2;
  *(a1 + 504) = v2;
  *(a1 + 516) = v2;
  *(a1 + 536) = 0;
  *(a1 + 532) = 0;
  operator new();
}

void sub_5C0458(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_5C0544(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x5C053CLL);
}

uint64_t sub_5C0A00(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  sub_64B998(a1 + 168);
  sub_64B998(a1 + 328);
  *(a1 + 488) = 0x7FFFFFFF;
  *(a1 + 496) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0x7FFFFFFF;
  *(a1 + 536) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0x7FFFFFFF;
  *(a1 + 580) = xmmword_2299A90;
  *(a1 + 632) = 0;
  *(a1 + 640) = -1;
  *(a1 + 643) = -1;
  *(a1 + 647) = 0;
  *(a1 + 655) = 0u;
  *(a1 + 671) = 0;
  *(a1 + 704) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 748) = 0;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 736) = 0;
  *(a1 + 752) = 1;
  *(a1 + 772) = 0;
  *(a1 + 756) = 0u;
  *(a1 + 780) = 0xFFFFFFFF00000000;
  *(a1 + 788) = 0;
  *(a1 + 808) = 0;
  *(a1 + 792) = 0u;
  return a1;
}

void sub_5C0B34(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 168);
  sub_5C0ED8((v1 + 144));
  sub_5C0ED8((v1 + 120));
  sub_5C0B98(v2);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v3);
  _Unwind_Resume(a1);
}

uint64_t sub_5C0B98(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

char **sub_5C0BF4(char **a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[6];
    if (v3 != v2)
    {
      do
      {
        v3 -= 2000;
        sub_5C0D2C(v3);
      }

      while (v3 != v2);
      v4 = a1[6];
    }

    a1[7] = v2;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    v6 = a1[4];
    v7 = a1[3];
    if (v6 != v5)
    {
      do
      {
        v6 -= 2000;
        sub_5C0D2C(v6);
      }

      while (v6 != v5);
      v7 = a1[3];
    }

    a1[4] = v5;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = a1[1];
    v10 = *a1;
    if (v9 != v8)
    {
      do
      {
        v9 -= 2000;
        sub_5C0D2C(v9);
      }

      while (v9 != v8);
      v10 = *a1;
    }

    a1[1] = v8;
    operator delete(v10);
  }

  return a1;
}

char **sub_5C0CC8(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 2000;
        sub_5C0D2C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5C0D2C(uint64_t a1)
{
  if (*(a1 + 1999) < 0)
  {
    operator delete(*(a1 + 1976));
    if (*(a1 + 1968) != 1)
    {
LABEL_3:
      v2 = *(a1 + 1752);
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (*(a1 + 1968) != 1)
  {
    goto LABEL_3;
  }

  sub_52A624(a1 + 1800);
  v2 = *(a1 + 1752);
  if (!v2)
  {
LABEL_4:
    result = sub_570440(a1 + 1136);
    if (*(a1 + 1128) != 1)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_10:
  v4 = *(a1 + 1760);
  v5 = v2;
  if (v4 != v2)
  {
    do
    {
      v4 = sub_3A9518(v4 - 1120);
    }

    while (v4 != v2);
    v5 = *(a1 + 1752);
  }

  *(a1 + 1760) = v2;
  operator delete(v5);
  result = sub_570440(a1 + 1136);
  if (*(a1 + 1128) == 1)
  {
LABEL_5:

    return sub_3A9518(a1 + 8);
  }

  return result;
}

uint64_t sub_5C0E04(uint64_t a1)
{
  if (*(a1 + 2000) != 1)
  {
    return a1;
  }

  if (*(a1 + 1999) < 0)
  {
    operator delete(*(a1 + 1976));
    if (*(a1 + 1968) != 1)
    {
LABEL_4:
      v2 = *(a1 + 1752);
      if (!v2)
      {
        goto LABEL_5;
      }

LABEL_10:
      v4 = *(a1 + 1760);
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_3A9518(v4 - 1120);
        }

        while (v4 != v2);
        v5 = *(a1 + 1752);
      }

      *(a1 + 1760) = v2;
      operator delete(v5);
      sub_570440(a1 + 1136);
      if (*(a1 + 1128) == 1)
      {
        goto LABEL_6;
      }

      return a1;
    }
  }

  else if (*(a1 + 1968) != 1)
  {
    goto LABEL_4;
  }

  sub_52A624(a1 + 1800);
  v2 = *(a1 + 1752);
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_570440(a1 + 1136);
  if (*(a1 + 1128) == 1)
  {
LABEL_6:
    sub_3A9518(a1 + 8);
  }

  return a1;
}

void **sub_5C0ED8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5C0F34(uint64_t a1)
{
  if (*(a1 + 815) < 0)
  {
    operator delete(*(a1 + 792));
  }

  v2 = *(a1 + 760);
  if (v2)
  {
    v3 = *(a1 + 768);
    v4 = *(a1 + 760);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 168);
      }

      while (v3 != v2);
      v4 = *(a1 + 760);
    }

    *(a1 + 768) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 712);
  if (v5)
  {
    v6 = *(a1 + 720);
    v7 = *(a1 + 712);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 41);
        v6 -= 8;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(a1 + 712);
    }

    *(a1 + 720) = v5;
    operator delete(v7);
  }

  if ((*(a1 + 703) & 0x80000000) == 0)
  {
    if ((*(a1 + 671) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(*(a1 + 648));
    v9 = *(a1 + 632);
    if (v9 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  operator delete(*(a1 + 680));
  if (*(a1 + 671) < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v9 = *(a1 + 632);
  if (v9 != -1)
  {
LABEL_22:
    (off_266B860[v9])(&v21, a1 + 600);
  }

LABEL_23:
  *(a1 + 632) = -1;
  sub_53A868(a1 + 328);
  sub_53A868(a1 + 168);
  v10 = *(a1 + 144);
  if (v10)
  {
    v11 = *(a1 + 152);
    v12 = *(a1 + 144);
    if (v11 != v10)
    {
      do
      {
        v11 = sub_53A868(v11 - 160);
      }

      while (v11 != v10);
      v12 = *(a1 + 144);
    }

    *(a1 + 152) = v10;
    operator delete(v12);
  }

  v13 = *(a1 + 120);
  if (v13)
  {
    v14 = *(a1 + 128);
    v15 = *(a1 + 120);
    if (v14 != v13)
    {
      do
      {
        v14 = sub_53A868(v14 - 160);
      }

      while (v14 != v13);
      v15 = *(a1 + 120);
    }

    *(a1 + 128) = v13;
    operator delete(v15);
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    *(a1 + 104) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    do
    {
      v18 = *v17;
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_5C1158(uint64_t a1)
{
  v2 = *(a1 + 7784);
  if (v2)
  {
    v3 = *(a1 + 7792);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = *(a1 + 7784);
    }

    *(a1 + 7792) = v2;
    operator delete(v4);
  }

  sub_53A868(a1 + 7624);
  v5 = *(a1 + 7592);
  if (v5)
  {
    v6 = *(a1 + 7600);
    v7 = *(a1 + 7592);
    if (v6 != v5)
    {
      do
      {
        v8 = v6 - 1128;
        v9 = *(v6 - 8);
        if (v9 != -1)
        {
          (off_266B888[v9])(&v45, v6 - 1128);
        }

        *(v6 - 8) = -1;
        v6 -= 1128;
      }

      while (v8 != v5);
      v7 = *(a1 + 7592);
    }

    *(a1 + 7600) = v5;
    operator delete(v7);
  }

  v10 = *(a1 + 7568);
  if (v10)
  {
    v11 = *(a1 + 7576);
    v12 = *(a1 + 7568);
    if (v11 != v10)
    {
      do
      {
        v13 = v11 - 1128;
        v14 = *(v11 - 8);
        if (v14 != -1)
        {
          (off_266B888[v14])(&v46, v11 - 1128);
        }

        *(v11 - 8) = -1;
        v11 -= 1128;
      }

      while (v13 != v10);
      v12 = *(a1 + 7568);
    }

    *(a1 + 7576) = v10;
    operator delete(v12);
  }

  v15 = *(a1 + 7544);
  if (v15)
  {
    v16 = *(a1 + 7552);
    v17 = *(a1 + 7544);
    if (v16 != v15)
    {
      do
      {
        v16 = sub_3A9518(v16 - 1120);
      }

      while (v16 != v15);
      v17 = *(a1 + 7544);
    }

    *(a1 + 7552) = v15;
    operator delete(v17);
  }

  v18 = *(a1 + 7520);
  if (v18)
  {
    v19 = *(a1 + 7528);
    v20 = *(a1 + 7520);
    if (v19 != v18)
    {
      do
      {
        v19 = sub_3A9518(v19 - 1120);
      }

      while (v19 != v18);
      v20 = *(a1 + 7520);
    }

    *(a1 + 7528) = v18;
    operator delete(v20);
  }

  v21 = *(a1 + 7496);
  if (v21)
  {
    *(a1 + 7504) = v21;
    operator delete(v21);
  }

  if (*(a1 + 7495) < 0)
  {
    operator delete(*(a1 + 7472));
    if ((*(a1 + 7471) & 0x80000000) == 0)
    {
LABEL_36:
      if ((*(a1 + 7447) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_45;
    }
  }

  else if ((*(a1 + 7471) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(*(a1 + 7448));
  if ((*(a1 + 7447) & 0x80000000) == 0)
  {
LABEL_37:
    v22 = *(a1 + 7400);
    if (!v22)
    {
      goto LABEL_38;
    }

LABEL_46:
    v25 = *(a1 + 7408);
    if (v25 == v22)
    {
      *(a1 + 7408) = v22;
      operator delete(v22);
      v23 = *(a1 + 7376);
      if (v23)
      {
        goto LABEL_53;
      }
    }

    else
    {
      do
      {
        if (*(v25 - 1) < 0)
        {
          operator delete(*(v25 - 3));
        }

        v25 -= 5;
      }

      while (v25 != v22);
      v26 = *(a1 + 7400);
      *(a1 + 7408) = v22;
      operator delete(v26);
      v23 = *(a1 + 7376);
      if (v23)
      {
        goto LABEL_53;
      }
    }

LABEL_39:
    if ((*(a1 + 7367) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_57;
  }

LABEL_45:
  operator delete(*(a1 + 7424));
  v22 = *(a1 + 7400);
  if (v22)
  {
    goto LABEL_46;
  }

LABEL_38:
  v23 = *(a1 + 7376);
  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_53:
  v27 = *(a1 + 7384);
  v28 = v23;
  if (v27 != v23)
  {
    do
    {
      v27 = sub_5C0F34(v27 - 816);
    }

    while (v27 != v23);
    v28 = *(a1 + 7376);
  }

  *(a1 + 7384) = v23;
  operator delete(v28);
  if ((*(a1 + 7367) & 0x80000000) == 0)
  {
LABEL_40:
    if ((*(a1 + 7335) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_58:
    operator delete(*(a1 + 7312));
    v24 = *(a1 + 7296);
    if (v24 == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_57:
  operator delete(*(a1 + 7344));
  if (*(a1 + 7335) < 0)
  {
    goto LABEL_58;
  }

LABEL_41:
  v24 = *(a1 + 7296);
  if (v24 != -1)
  {
LABEL_59:
    (off_266B860[v24])(&v47, a1 + 7264);
  }

LABEL_60:
  *(a1 + 7296) = -1;
  if (*(a1 + 7263) < 0)
  {
    operator delete(*(a1 + 7240));
    if ((*(a1 + 7239) & 0x80000000) == 0)
    {
LABEL_62:
      v29 = *(a1 + 7176);
      if (!v29)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }
  }

  else if ((*(a1 + 7239) & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  operator delete(*(a1 + 7216));
  v29 = *(a1 + 7176);
  if (v29)
  {
LABEL_63:
    *(a1 + 7184) = v29;
    operator delete(v29);
  }

LABEL_64:
  sub_5C1688(a1 + 2376);
  sub_559E70((a1 + 1288));
  if ((*(a1 + 1271) & 0x80000000) == 0)
  {
    if ((*(a1 + 1239) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_72:
    operator delete(*(a1 + 1216));
    v30 = *(a1 + 1200);
    if (v30 == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  operator delete(*(a1 + 1248));
  if (*(a1 + 1239) < 0)
  {
    goto LABEL_72;
  }

LABEL_66:
  v30 = *(a1 + 1200);
  if (v30 != -1)
  {
LABEL_73:
    (off_266B860[v30])(&v48, a1 + 1168);
  }

LABEL_74:
  *(a1 + 1200) = -1;
  sub_53A868(a1 + 1000);
  v31 = *(a1 + 976);
  if (v31)
  {
    v32 = *(a1 + 984);
    v33 = *(a1 + 976);
    if (v32 != v31)
    {
      do
      {
        v34 = *(v32 - 1);
        v32 -= 3;
        if (v34 < 0)
        {
          operator delete(*v32);
        }
      }

      while (v32 != v31);
      v33 = *(a1 + 976);
    }

    *(a1 + 984) = v31;
    operator delete(v33);
  }

  sub_53A868(a1 + 816);
  sub_53A868(a1 + 656);
  sub_53A868(a1 + 496);
  sub_53A868(a1 + 336);
  sub_53A868(a1 + 176);
  v35 = *(a1 + 136);
  if (v35)
  {
    v36 = *(a1 + 144);
    v37 = *(a1 + 136);
    if (v36 != v35)
    {
      do
      {
        if (*(v36 - 32) == 1)
        {
          sub_3A9518(v36 - 1152);
        }

        v36 -= 1168;
      }

      while (v36 != v35);
      v37 = *(a1 + 136);
    }

    *(a1 + 144) = v35;
    operator delete(v37);
  }

  v38 = *(a1 + 24);
  if (v38)
  {
    v39 = *(a1 + 32);
    v40 = *(a1 + 24);
    if (v39 != v38)
    {
      do
      {
        v39 -= 176;
        sub_5C17B4(v39);
      }

      while (v39 != v38);
      v40 = *(a1 + 24);
    }

    *(a1 + 32) = v38;
    operator delete(v40);
  }

  v41 = *a1;
  if (*a1)
  {
    v42 = *(a1 + 8);
    v43 = *a1;
    if (v42 != v41)
    {
      do
      {
        v42 = sub_5C186C(v42 - 12656);
      }

      while (v42 != v41);
      v43 = *a1;
    }

    *(a1 + 8) = v41;
    operator delete(v43);
  }

  return a1;
}

uint64_t sub_5C1688(uint64_t a1)
{
  sub_53A868(a1 + 4640);
  sub_53A868(a1 + 4480);
  sub_53A868(a1 + 4320);
  sub_53A868(a1 + 4160);
  sub_53A868(a1 + 4000);
  sub_53A868(a1 + 3840);
  sub_53A868(a1 + 3680);
  sub_53A868(a1 + 3520);
  sub_53A868(a1 + 3360);
  sub_53A868(a1 + 3200);
  sub_53A868(a1 + 3040);
  sub_53A868(a1 + 2880);
  sub_53A868(a1 + 2720);
  sub_53A868(a1 + 2560);
  sub_53A868(a1 + 2400);
  sub_53A868(a1 + 2240);
  sub_53A868(a1 + 2080);
  sub_53A868(a1 + 1920);
  sub_53A868(a1 + 1760);
  sub_53A868(a1 + 1600);
  sub_53A868(a1 + 1440);
  sub_53A868(a1 + 1280);
  sub_53A868(a1 + 1120);
  sub_53A868(a1 + 960);
  sub_53A868(a1 + 800);
  sub_53A868(a1 + 640);
  sub_53A868(a1 + 480);
  sub_53A868(a1 + 320);
  sub_53A868(a1 + 160);

  return sub_53A868(a1);
}

void sub_5C17B4(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  operator delete(*(a1 + 72));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return;
  }

LABEL_13:
  v3 = *a1;

  operator delete(v3);
}

uint64_t sub_5C186C(uint64_t a1)
{
  v2 = *(a1 + 12624);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 12600);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 12584);
  *(a1 + 12584) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = (a1 + 11791);
  v7 = *(a1 + 12560);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(a1 + 12544);
  *(a1 + 12544) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  *(a1 + 12504) = off_26696C8;
  if (*(a1 + 12535) < 0)
  {
    operator delete(*(a1 + 12512));
    *(a1 + 12464) = off_26696C8;
    if ((*(a1 + 12495) & 0x80000000) == 0)
    {
LABEL_13:
      v10 = *(a1 + 12440);
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  else
  {
    *(a1 + 12464) = off_26696C8;
    if ((*(a1 + 12495) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  operator delete(*(a1 + 12472));
  v10 = *(a1 + 12440);
  if (!v10)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_23:
    v15 = *v10;
    v16 = v10[4];
    if (v16)
    {
      v10[5] = v16;
      operator delete(v16);
    }

    operator delete(v10);
    v10 = v15;
  }

  while (v15);
LABEL_17:
  v11 = *(a1 + 12424);
  *(a1 + 12424) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 12400);
  if (v12)
  {
    v13 = *(a1 + 12408);
    v14 = *(a1 + 12400);
    if (v13 != v12)
    {
      do
      {
        v17 = *(v13 - 40);
        if (v17)
        {
          *(v13 - 32) = v17;
          operator delete(v17);
        }

        v13 -= 48;
      }

      while (v13 != v12);
      v14 = *(a1 + 12400);
    }

    *(a1 + 12408) = v12;
    operator delete(v14);
  }

  v18 = *(a1 + 12376);
  if (v18)
  {
    *(a1 + 12384) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 12344);
  if (v19)
  {
    *(a1 + 12352) = v19;
    operator delete(v19);
  }

  if (*(a1 + 12343) < 0)
  {
    operator delete(*(a1 + 12320));
  }

  v20 = *(a1 + 12296);
  if (v20)
  {
    v21 = *(a1 + 12304);
    v22 = *(a1 + 12296);
    if (v21 != v20)
    {
      do
      {
        if (*(v21 - 1) < 0)
        {
          operator delete(*(v21 - 24));
        }

        v21 -= 40;
      }

      while (v21 != v20);
      v22 = *(a1 + 12296);
    }

    *(a1 + 12304) = v20;
    operator delete(v22);
  }

  v23 = *(a1 + 12272);
  if (v23)
  {
    v24 = *(a1 + 12280);
    v25 = *(a1 + 12272);
    if (v24 != v23)
    {
      do
      {
        v24 -= 616;
        sub_5C2320(v24);
      }

      while (v24 != v23);
      v25 = *(a1 + 12272);
    }

    *(a1 + 12280) = v23;
    operator delete(v25);
  }

  v26 = *(a1 + 12240);
  if (v26)
  {
    *(a1 + 12248) = v26;
    operator delete(v26);
  }

  sub_53A868(a1 + 12080);
  v27 = *(a1 + 12056);
  if (v27)
  {
    v28 = *(a1 + 12064);
    v29 = *(a1 + 12056);
    if (v28 != v27)
    {
      do
      {
        v30 = v28 - 176;
        sub_53A868(v28 - 160);
        v28 = v30;
      }

      while (v30 != v27);
      v29 = *(a1 + 12056);
    }

    *(a1 + 12064) = v27;
    operator delete(v29);
  }

  v31 = *(a1 + 12024);
  if (v31)
  {
    *(a1 + 12032) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 11984);
  if (v32)
  {
    *(a1 + 11992) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 11952);
  if (v33)
  {
    *(a1 + 11960) = v33;
    operator delete(v33);
  }

  sub_5C23C8((a1 + 11856));
  v34 = *(a1 + 11832);
  if (v34)
  {
    *(a1 + 11840) = v34;
    operator delete(v34);
  }

  if ((*(a1 + 11823) & 0x80000000) == 0)
  {
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_69:
    operator delete(*(a1 + 11768));
    v35 = *(a1 + 11752);
    if (v35 == -1)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  operator delete(*(a1 + 11800));
  if (*v6 < 0)
  {
    goto LABEL_69;
  }

LABEL_66:
  v35 = *(a1 + 11752);
  if (v35 != -1)
  {
LABEL_70:
    (off_266B860[v35])(&v115, a1 + 11720);
  }

LABEL_71:
  v36 = (a1 + 7463);
  *(a1 + 11752) = -1;
  sub_53A868(a1 + 11560);
  v37 = *(a1 + 11528);
  if (v37)
  {
    *(a1 + 11536) = v37;
    operator delete(v37);
  }

  sub_44FDEC(a1 + 11088);
  if ((*(a1 + 11079) & 0x80000000) == 0)
  {
    if ((*(a1 + 11047) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_78:
    operator delete(*(a1 + 11024));
    v38 = *(a1 + 11008);
    if (v38 == -1)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  operator delete(*(a1 + 11056));
  if (*(a1 + 11047) < 0)
  {
    goto LABEL_78;
  }

LABEL_75:
  v38 = *(a1 + 11008);
  if (v38 != -1)
  {
LABEL_79:
    (off_266B860[v38])(&v116, a1 + 10976);
  }

LABEL_80:
  *(a1 + 11008) = -1;
  sub_53A868(a1 + 10816);
  v39 = *(a1 + 10784);
  if (v39)
  {
    *(a1 + 10792) = v39;
    operator delete(v39);
  }

  sub_44FDEC(a1 + 10344);
  v40 = *(a1 + 10320);
  if (v40)
  {
    v41 = *(a1 + 10328);
    v42 = *(a1 + 10320);
    if (v41 != v40)
    {
      do
      {
        v41 -= 104;
        sub_5C24CC(v41);
      }

      while (v41 != v40);
      v42 = *(a1 + 10320);
    }

    *(a1 + 10328) = v40;
    operator delete(v42);
  }

  v43 = *(a1 + 10288);
  if (v43)
  {
    v44 = *(a1 + 10296);
    v45 = *(a1 + 10288);
    if (v44 != v43)
    {
      do
      {
        v47 = *(v44 - 48);
        if (v47)
        {
          v48 = *(v44 - 40);
          v46 = *(v44 - 48);
          if (v48 != v47)
          {
            v49 = *(v44 - 40);
            do
            {
              v51 = *(v49 - 24);
              v49 -= 24;
              v50 = v51;
              if (v51)
              {
                *(v48 - 16) = v50;
                operator delete(v50);
              }

              v48 = v49;
            }

            while (v49 != v47);
            v46 = *(v44 - 48);
          }

          *(v44 - 40) = v47;
          operator delete(v46);
        }

        v44 -= 64;
      }

      while (v44 != v43);
      v45 = *(a1 + 10288);
    }

    *(a1 + 10296) = v43;
    operator delete(v45);
  }

  v52 = *(a1 + 10264);
  if (v52)
  {
    *(a1 + 10272) = v52;
    operator delete(v52);
  }

  if (*(a1 + 10247) < 0)
  {
    operator delete(*(a1 + 10224));
  }

  v53 = *(a1 + 10200);
  if (v53)
  {
    v54 = *(a1 + 10208);
    v55 = *(a1 + 10200);
    if (v54 != v53)
    {
      do
      {
        v54 = sub_570440(v54 - 616);
      }

      while (v54 != v53);
      v55 = *(a1 + 10200);
    }

    *(a1 + 10208) = v53;
    operator delete(v55);
  }

  v56 = *(a1 + 10176);
  if (v56)
  {
    v57 = *(a1 + 10184);
    v58 = *(a1 + 10176);
    if (v57 != v56)
    {
      do
      {
        v57 = sub_570440(v57 - 616);
      }

      while (v57 != v56);
      v58 = *(a1 + 10176);
    }

    *(a1 + 10184) = v56;
    operator delete(v58);
  }

  v59 = *(a1 + 10152);
  if (v59)
  {
    v60 = *(a1 + 10160);
    v61 = *(a1 + 10152);
    if (v60 != v59)
    {
      do
      {
        v60 = sub_570440(v60 - 616);
      }

      while (v60 != v59);
      v61 = *(a1 + 10152);
    }

    *(a1 + 10160) = v59;
    operator delete(v61);
  }

  v62 = *(a1 + 10128);
  if (v62)
  {
    v63 = *(a1 + 10136);
    v64 = *(a1 + 10128);
    if (v63 != v62)
    {
      v65 = *(a1 + 10136);
      do
      {
        v67 = *(v65 - 40);
        v65 -= 40;
        v66 = v67;
        if (v67)
        {
          *(v63 - 32) = v66;
          operator delete(v66);
        }

        v63 = v65;
      }

      while (v65 != v62);
      v64 = *(a1 + 10128);
    }

    *(a1 + 10136) = v62;
    operator delete(v64);
  }

  v68 = *(a1 + 10096);
  if (v68)
  {
    v69 = *(a1 + 10104);
    v70 = *(a1 + 10096);
    if (v69 != v68)
    {
      do
      {
        v71 = *(v69 - 208);
        if (v71)
        {
          *(v69 - 200) = v71;
          operator delete(v71);
        }

        v72 = v69 - 248;
        v73 = *(v69 - 248);
        if (v73)
        {
          *(v69 - 240) = v73;
          operator delete(v73);
        }

        v69 -= 248;
      }

      while (v72 != v68);
      v70 = *(a1 + 10096);
    }

    *(a1 + 10104) = v68;
    operator delete(v70);
  }

  sub_53A868(a1 + 9936);
  sub_53A868(a1 + 9776);
  sub_53A868(a1 + 9616);
  sub_53A868(a1 + 9456);
  sub_53A868(a1 + 9296);
  sub_5936E4((a1 + 8440));
  sub_5936E4((a1 + 7584));
  v74 = *(a1 + 7560);
  if (v74)
  {
    v75 = *(a1 + 7568);
    v76 = *(a1 + 7560);
    if (v75 != v74)
    {
      do
      {
        v75 = sub_5936E4(v75 - 107);
      }

      while (v75 != v74);
      v76 = *(a1 + 7560);
    }

    *(a1 + 7568) = v74;
    operator delete(v76);
  }

  v77 = *(a1 + 7536);
  if (v77)
  {
    v78 = *(a1 + 7544);
    v79 = *(a1 + 7536);
    if (v78 != v77)
    {
      do
      {
        v80 = *(v78 - 6);
        if (v80)
        {
          *(v78 - 5) = v80;
          operator delete(v80);
        }

        v78 -= 56;
        sub_55D550(v78);
      }

      while (v78 != v77);
      v79 = *(a1 + 7536);
    }

    *(a1 + 7544) = v77;
    operator delete(v79);
  }

  v81 = *(a1 + 7512);
  if (v81)
  {
    v82 = *(a1 + 7520);
    v83 = *(a1 + 7512);
    if (v82 != v81)
    {
      do
      {
        v82 = sub_5938B0((v82 - 140));
      }

      while (v82 != v81);
      v83 = *(a1 + 7512);
    }

    *(a1 + 7520) = v81;
    operator delete(v83);
  }

  v84 = *(a1 + 7488);
  if (v84)
  {
    v85 = *(a1 + 7496);
    v86 = *(a1 + 7488);
    if (v85 != v84)
    {
      do
      {
        v87 = *(v85 - 1);
        v85 -= 3;
        if (v87 < 0)
        {
          operator delete(*v85);
        }
      }

      while (v85 != v84);
      v86 = *(a1 + 7488);
    }

    *(a1 + 7496) = v84;
    operator delete(v86);
  }

  if (*(a1 + 7487) < 0)
  {
    operator delete(*(a1 + 7464));
    if ((*v36 & 0x80000000) == 0)
    {
LABEL_166:
      v88 = *(a1 + 7416);
      if (!v88)
      {
        goto LABEL_167;
      }

      goto LABEL_207;
    }
  }

  else if ((*v36 & 0x80000000) == 0)
  {
    goto LABEL_166;
  }

  operator delete(*(a1 + 7440));
  v88 = *(a1 + 7416);
  if (!v88)
  {
LABEL_167:
    v89 = *(a1 + 7392);
    if (!v89)
    {
      goto LABEL_169;
    }

    goto LABEL_168;
  }

LABEL_207:
  v110 = *(a1 + 7424);
  v111 = v88;
  if (v110 != v88)
  {
    do
    {
      v110 = sub_3A9518(v110 - 1120);
    }

    while (v110 != v88);
    v111 = *(a1 + 7416);
  }

  *(a1 + 7424) = v88;
  operator delete(v111);
  v89 = *(a1 + 7392);
  if (v89)
  {
LABEL_168:
    *(a1 + 7400) = v89;
    operator delete(v89);
  }

LABEL_169:
  sub_53A868(a1 + 7232);
  v90 = *(a1 + 7208);
  if (v90)
  {
    v91 = *(a1 + 7216);
    v92 = *(a1 + 7208);
    if (v91 != v90)
    {
      do
      {
        v93 = *(v91 - 1);
        v91 -= 3;
        if (v93 < 0)
        {
          operator delete(*v91);
        }
      }

      while (v91 != v90);
      v92 = *(a1 + 7208);
    }

    *(a1 + 7216) = v90;
    operator delete(v92);
  }

  sub_5C1688(a1 + 2408);
  sub_559E70((a1 + 1320));
  if (*(a1 + 1319) < 0)
  {
    operator delete(*(a1 + 1296));
    if ((*(a1 + 1295) & 0x80000000) == 0)
    {
LABEL_179:
      v94 = *(a1 + 1248);
      if (!v94)
      {
        goto LABEL_180;
      }

      goto LABEL_214;
    }
  }

  else if ((*(a1 + 1295) & 0x80000000) == 0)
  {
    goto LABEL_179;
  }

  operator delete(*(a1 + 1272));
  v94 = *(a1 + 1248);
  if (!v94)
  {
LABEL_180:
    v95 = *(a1 + 1224);
    if (!v95)
    {
      goto LABEL_182;
    }

    goto LABEL_181;
  }

LABEL_214:
  v112 = *(a1 + 1256);
  if (v112 == v94)
  {
    *(a1 + 1256) = v94;
    operator delete(v94);
    v95 = *(a1 + 1224);
    if (!v95)
    {
      goto LABEL_182;
    }

LABEL_181:
    *(a1 + 1232) = v95;
    operator delete(v95);
    goto LABEL_182;
  }

  do
  {
    if (*(v112 - 9) < 0)
    {
      operator delete(*(v112 - 4));
      if ((*(v112 - 41) & 0x80000000) == 0)
      {
LABEL_220:
        if ((*(v112 - 65) & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_226;
      }
    }

    else if ((*(v112 - 41) & 0x80000000) == 0)
    {
      goto LABEL_220;
    }

    operator delete(*(v112 - 8));
    if ((*(v112 - 65) & 0x80000000) == 0)
    {
LABEL_221:
      if (*(v112 - 105) < 0)
      {
        goto LABEL_227;
      }

      goto LABEL_222;
    }

LABEL_226:
    operator delete(*(v112 - 11));
    if (*(v112 - 105) < 0)
    {
LABEL_227:
      operator delete(*(v112 - 16));
      v113 = v112 - 20;
      if ((*(v112 - 137) & 0x80000000) == 0)
      {
        goto LABEL_217;
      }

      goto LABEL_228;
    }

LABEL_222:
    v113 = v112 - 20;
    if ((*(v112 - 137) & 0x80000000) == 0)
    {
      goto LABEL_217;
    }

LABEL_228:
    operator delete(*v113);
LABEL_217:
    v112 = v113;
  }

  while (v113 != v94);
  v114 = *(a1 + 1248);
  *(a1 + 1256) = v94;
  operator delete(v114);
  v95 = *(a1 + 1224);
  if (v95)
  {
    goto LABEL_181;
  }

LABEL_182:
  v96 = *(a1 + 1200);
  if (v96)
  {
    *(a1 + 1208) = v96;
    operator delete(v96);
  }

  v97 = *(a1 + 1176);
  if (v97)
  {
    v98 = *(a1 + 1184);
    v99 = *(a1 + 1176);
    if (v98 != v97)
    {
      do
      {
        v98 -= 176;
        sub_5C17B4(v98);
      }

      while (v98 != v97);
      v99 = *(a1 + 1176);
    }

    *(a1 + 1184) = v97;
    operator delete(v99);
  }

  v100 = *(a1 + 1152);
  if (v100)
  {
    v101 = *(a1 + 1160);
    v102 = *(a1 + 1152);
    if (v101 != v100)
    {
      do
      {
        v101 -= 176;
        sub_5C17B4(v101);
      }

      while (v101 != v100);
      v102 = *(a1 + 1152);
    }

    *(a1 + 1160) = v100;
    operator delete(v102);
  }

  v103 = *(a1 + 1128);
  if (v103)
  {
    v104 = *(a1 + 1136);
    v105 = *(a1 + 1128);
    if (v104 != v103)
    {
      do
      {
        v104 = sub_5C25A8(v104 - 2616);
      }

      while (v104 != v103);
      v105 = *(a1 + 1128);
    }

    *(a1 + 1136) = v103;
    operator delete(v105);
  }

  v106 = *(a1 + 1104);
  if (v106)
  {
    v107 = *(a1 + 1112);
    v108 = *(a1 + 1104);
    if (v107 != v106)
    {
      do
      {
        v107 = sub_5C25A8(v107 - 2616);
      }

      while (v107 != v106);
      v108 = *(a1 + 1104);
    }

    *(a1 + 1112) = v106;
    operator delete(v108);
  }

  return sub_3EEA68(a1);
}

void sub_5C2320(uint64_t a1)
{
  sub_53A868(a1 + 456);
  sub_53A868(a1 + 296);
  sub_53A868(a1 + 136);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 48);
      if (v2 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 64));
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
LABEL_7:
    (off_266B860[v2])(&v3, a1 + 16);
  }

LABEL_8:
  *(a1 + 48) = -1;
}

void **sub_5C23C8(void **a1)
{
  v2 = a1[9];
  if (v2)
  {
    v3 = a1[10];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_52A624(v3 - 168);
      }

      while (v3 != v2);
      v4 = a1[9];
    }

    a1[10] = v2;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = a1[7];
    v7 = a1[6];
    if (v6 != v5)
    {
      do
      {
        v6 = sub_52A624(v6 - 168);
      }

      while (v6 != v5);
      v7 = a1[6];
    }

    a1[7] = v5;
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_52A624(v9 - 168);
      }

      while (v9 != v8);
      v10 = a1[3];
    }

    a1[4] = v8;
    operator delete(v10);
  }

  v11 = *a1;
  if (*a1)
  {
    v12 = a1[1];
    v13 = *a1;
    if (v12 != v11)
    {
      do
      {
        v12 = sub_52A624(v12 - 168);
      }

      while (v12 != v11);
      v13 = *a1;
    }

    a1[1] = v11;
    operator delete(v13);
  }

  return a1;
}

void sub_5C24CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v3 == v1)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 32));
      if (*(v3 - 41) < 0)
      {
LABEL_10:
        operator delete(*(v3 - 64));
        v5 = *(v3 - 80);
        if (v5 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266B860[v5])(&v6, v3 - 112);
        goto LABEL_4;
      }
    }

    else if (*(v3 - 41) < 0)
    {
      goto LABEL_10;
    }

    v5 = *(v3 - 80);
    if (v5 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v3 - 80) = -1;
    v3 -= 184;
  }

  while (v3 != v1);
  v4 = *(a1 + 32);
LABEL_13:
  *(a1 + 40) = v1;
  operator delete(v4);
}

uint64_t sub_5C25A8(uint64_t a1)
{
  v2 = *(a1 + 2512);
  if (v2)
  {
    *(a1 + 2520) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 2488);
  if (v3)
  {
    *(a1 + 2496) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 2424);
  if (v4)
  {
    *(a1 + 2432) = v4;
    operator delete(v4);
  }

  *(a1 + 2320) = off_266B8A8;
  if (*(a1 + 2415) < 0)
  {
    operator delete(*(a1 + 2392));
    if ((*(a1 + 2383) & 0x80000000) == 0)
    {
LABEL_9:
      *(a1 + 2320) = off_26696C8;
      if ((*(a1 + 2351) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_44;
    }
  }

  else if ((*(a1 + 2383) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*(a1 + 2360));
  *(a1 + 2320) = off_26696C8;
  if ((*(a1 + 2351) & 0x80000000) == 0)
  {
LABEL_10:
    *(a1 + 2280) = off_26696C8;
    if ((*(a1 + 2311) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  operator delete(*(a1 + 2328));
  *(a1 + 2280) = off_26696C8;
  if ((*(a1 + 2311) & 0x80000000) == 0)
  {
LABEL_11:
    *(a1 + 2232) = off_26696C8;
    if ((*(a1 + 2263) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  operator delete(*(a1 + 2288));
  *(a1 + 2232) = off_26696C8;
  if ((*(a1 + 2263) & 0x80000000) == 0)
  {
LABEL_12:
    sub_5940E0((a1 + 2064));
    v5 = *(a1 + 2032);
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  operator delete(*(a1 + 2240));
  sub_5940E0((a1 + 2064));
  v5 = *(a1 + 2032);
  if (!v5)
  {
LABEL_13:
    v6 = *(a1 + 2008);
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_47:
  v20 = *(a1 + 2040);
  v21 = v5;
  if (v20 != v5)
  {
    do
    {
      v20 -= 272;
      sub_513694(v20);
    }

    while (v20 != v5);
    v21 = *(a1 + 2032);
  }

  *(a1 + 2040) = v5;
  operator delete(v21);
  v6 = *(a1 + 2008);
  if (!v6)
  {
LABEL_14:
    v7 = *(a1 + 1984);
    if (!v7)
    {
      goto LABEL_15;
    }

LABEL_55:
    v24 = *(a1 + 1992);
    if (v24 == v7)
    {
      *(a1 + 1992) = v7;
      operator delete(v7);
      v8 = *(a1 + 1960);
      if (v8)
      {
        goto LABEL_62;
      }
    }

    else
    {
      do
      {
        v25 = *(v24 - 17);
        v24 -= 5;
        if (v25 < 0)
        {
          operator delete(*v24);
        }
      }

      while (v24 != v7);
      v26 = *(a1 + 1984);
      *(a1 + 1992) = v7;
      operator delete(v26);
      v8 = *(a1 + 1960);
      if (v8)
      {
        goto LABEL_62;
      }
    }

LABEL_16:
    v9 = *(a1 + 1936);
    if (!v9)
    {
      goto LABEL_17;
    }

    goto LABEL_69;
  }

LABEL_51:
  v22 = *(a1 + 2016);
  v23 = v6;
  if (v22 != v6)
  {
    do
    {
      v22 = sub_5C3168(v22 - 360);
    }

    while (v22 != v6);
    v23 = *(a1 + 2008);
  }

  *(a1 + 2016) = v6;
  operator delete(v23);
  v7 = *(a1 + 1984);
  if (v7)
  {
    goto LABEL_55;
  }

LABEL_15:
  v8 = *(a1 + 1960);
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_62:
  v27 = *(a1 + 1968);
  v28 = v8;
  if (v27 != v8)
  {
    v29 = *(a1 + 1968);
    do
    {
      v31 = *(v29 - 5);
      v29 -= 40;
      v30 = v31;
      if (v31)
      {
        *(v27 - 4) = v30;
        operator delete(v30);
      }

      v27 = v29;
    }

    while (v29 != v8);
    v28 = *(a1 + 1960);
  }

  *(a1 + 1968) = v8;
  operator delete(v28);
  v9 = *(a1 + 1936);
  if (!v9)
  {
LABEL_17:
    v10 = *(a1 + 1912);
    if (!v10)
    {
      goto LABEL_18;
    }

LABEL_73:
    v34 = *(a1 + 1920);
    if (v34 == v10)
    {
      *(a1 + 1920) = v10;
      operator delete(v10);
      v11 = *(a1 + 1888);
      if (v11)
      {
        goto LABEL_80;
      }
    }

    else
    {
      do
      {
        v35 = *(v34 - 6);
        if (v35)
        {
          *(v34 - 5) = v35;
          operator delete(v35);
        }

        v34 -= 56;
        sub_55D550(v34);
      }

      while (v34 != v10);
      v36 = *(a1 + 1912);
      *(a1 + 1920) = v10;
      operator delete(v36);
      v11 = *(a1 + 1888);
      if (v11)
      {
        goto LABEL_80;
      }
    }

LABEL_19:
    sub_5936E4((a1 + 1032));
    if ((*(a1 + 999) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_84;
  }

LABEL_69:
  v32 = *(a1 + 1944);
  v33 = v9;
  if (v32 != v9)
  {
    do
    {
      v32 = sub_5C3378((v32 - 88));
    }

    while (v32 != v9);
    v33 = *(a1 + 1936);
  }

  *(a1 + 1944) = v9;
  operator delete(v33);
  v10 = *(a1 + 1912);
  if (v10)
  {
    goto LABEL_73;
  }

LABEL_18:
  v11 = *(a1 + 1888);
  if (!v11)
  {
    goto LABEL_19;
  }

LABEL_80:
  v37 = *(a1 + 1896);
  v38 = v11;
  if (v37 != v11)
  {
    do
    {
      v37 = sub_5938B0((v37 - 140));
    }

    while (v37 != v11);
    v38 = *(a1 + 1888);
  }

  *(a1 + 1896) = v11;
  operator delete(v38);
  sub_5936E4((a1 + 1032));
  if ((*(a1 + 999) & 0x80000000) == 0)
  {
LABEL_20:
    if ((*(a1 + 967) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_85;
  }

LABEL_84:
  operator delete(*(a1 + 976));
  if ((*(a1 + 967) & 0x80000000) == 0)
  {
LABEL_21:
    if ((*(a1 + 943) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_86;
  }

LABEL_85:
  operator delete(*(a1 + 944));
  if ((*(a1 + 943) & 0x80000000) == 0)
  {
LABEL_22:
    if ((*(a1 + 903) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_87;
  }

LABEL_86:
  operator delete(*(a1 + 920));
  if ((*(a1 + 903) & 0x80000000) == 0)
  {
LABEL_23:
    if ((*(a1 + 871) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_88:
    operator delete(*(a1 + 848));
    v12 = *(a1 + 824);
    if (!v12)
    {
LABEL_25:
      v13 = *(a1 + 792);
      if (v13)
      {
        goto LABEL_105;
      }

      goto LABEL_26;
    }

    goto LABEL_89;
  }

LABEL_87:
  operator delete(*(a1 + 880));
  if (*(a1 + 871) < 0)
  {
    goto LABEL_88;
  }

LABEL_24:
  v12 = *(a1 + 824);
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_89:
  v39 = *(a1 + 832);
  if (v39 == v12)
  {
    *(a1 + 832) = v12;
    operator delete(v12);
    v13 = *(a1 + 792);
    if (v13)
    {
      goto LABEL_105;
    }

LABEL_26:
    v14 = *(a1 + 760);
    if (!v14)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  do
  {
    if (*(v39 - 9) < 0)
    {
      operator delete(*(v39 - 4));
      if ((*(v39 - 41) & 0x80000000) == 0)
      {
LABEL_95:
        if ((*(v39 - 65) & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_101;
      }
    }

    else if ((*(v39 - 41) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    operator delete(*(v39 - 8));
    if ((*(v39 - 65) & 0x80000000) == 0)
    {
LABEL_96:
      if (*(v39 - 105) < 0)
      {
        goto LABEL_102;
      }

      goto LABEL_97;
    }

LABEL_101:
    operator delete(*(v39 - 11));
    if (*(v39 - 105) < 0)
    {
LABEL_102:
      operator delete(*(v39 - 16));
      v40 = v39 - 20;
      if ((*(v39 - 137) & 0x80000000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_103;
    }

LABEL_97:
    v40 = v39 - 20;
    if ((*(v39 - 137) & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

LABEL_103:
    operator delete(*v40);
LABEL_92:
    v39 = v40;
  }

  while (v40 != v12);
  v41 = *(a1 + 824);
  *(a1 + 832) = v12;
  operator delete(v41);
  v13 = *(a1 + 792);
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_105:
  v42 = *(a1 + 800);
  if (v42 == v13)
  {
    *(a1 + 800) = v13;
    operator delete(v13);
    v14 = *(a1 + 760);
    if (!v14)
    {
      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 768) = v14;
    operator delete(v14);
    goto LABEL_28;
  }

  do
  {
    if (*(v42 - 1) < 0)
    {
      operator delete(*(v42 - 3));
    }

    v42 -= 5;
  }

  while (v42 != v13);
  v43 = *(a1 + 792);
  *(a1 + 800) = v13;
  operator delete(v43);
  v14 = *(a1 + 760);
  if (v14)
  {
    goto LABEL_27;
  }

LABEL_28:
  v15 = *(a1 + 736);
  if (v15)
  {
    *(a1 + 744) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 712);
  if (v16)
  {
    *(a1 + 720) = v16;
    operator delete(v16);
  }

  if (*(a1 + 615) < 0)
  {
    operator delete(*(a1 + 592));
    if (*(a1 + 583) < 0)
    {
      goto LABEL_114;
    }

LABEL_34:
    if ((*(a1 + 559) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_115:
    operator delete(*(a1 + 536));
    if (*(a1 + 519) < 0)
    {
      goto LABEL_116;
    }

LABEL_36:
    if (*(a1 + 487) < 0)
    {
LABEL_117:
      operator delete(*(a1 + 464));
    }
  }

  else
  {
    if ((*(a1 + 583) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_114:
    operator delete(*(a1 + 560));
    if (*(a1 + 559) < 0)
    {
      goto LABEL_115;
    }

LABEL_35:
    if ((*(a1 + 519) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_116:
    operator delete(*(a1 + 496));
    if (*(a1 + 487) < 0)
    {
      goto LABEL_117;
    }
  }

  sub_593FC8((a1 + 440));
  sub_593FC8((a1 + 416));
  sub_593FC8((a1 + 392));
  v17 = *(a1 + 176);
  if (v17)
  {
    *(a1 + 184) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 136);
  if (v18)
  {
    *(a1 + 144) = v18;
    operator delete(v18);
  }

  return a1;
}

void sub_5C2F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_5C2FB0(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_5C3168(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    v3 = *(a1 + 240);
    v4 = *(a1 + 232);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 48);
        if (v6)
        {
          *(v3 - 40) = v6;
          operator delete(v6);
        }

        v3 -= 64;
      }

      while (v3 != v2);
      v4 = *(a1 + 232);
    }

    *(a1 + 240) = v2;
    operator delete(v4);
  }

  v7 = *(a1 + 192);
  if (v7)
  {
    v8 = *(a1 + 200);
    v9 = *(a1 + 192);
    if (v8 != v7)
    {
      v10 = *(a1 + 200);
      do
      {
        v12 = *(v10 - 24);
        v10 -= 24;
        v11 = v12;
        if (v12)
        {
          *(v8 - 16) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(a1 + 192);
    }

    *(a1 + 200) = v7;
    operator delete(v9);
  }

  v13 = *(a1 + 168);
  if (v13)
  {
    v14 = *(a1 + 176);
    v15 = *(a1 + 168);
    if (v14 != v13)
    {
      v16 = *(a1 + 176);
      do
      {
        v18 = *(v16 - 24);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v14 - 16) = v17;
          operator delete(v17);
        }

        v14 = v16;
      }

      while (v16 != v13);
      v15 = *(a1 + 168);
    }

    *(a1 + 176) = v13;
    operator delete(v15);
  }

  v19 = *(a1 + 136);
  if (v19)
  {
    do
    {
      v20 = *v19;
      operator delete(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *(a1 + 96);
  if (v22)
  {
    do
    {
      v23 = *v22;
      operator delete(v22);
      v22 = v23;
    }

    while (v23);
  }

  v24 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v24)
  {
    operator delete(v24);
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    do
    {
      v32 = *v25;
      v33 = v25[3];
      if (v33)
      {
        v34 = v25[4];
        v31 = v25[3];
        if (v34 != v33)
        {
          do
          {
            v35 = *(v34 - 1);
            v34 -= 3;
            if (v35 < 0)
            {
              operator delete(*v34);
            }
          }

          while (v34 != v33);
          v31 = v25[3];
        }

        v25[4] = v33;
        operator delete(v31);
      }

      operator delete(v25);
      v25 = v32;
    }

    while (v32);
  }

  v26 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v26)
  {
    operator delete(v26);
  }

  v27 = *(a1 + 16);
  if (v27)
  {
    do
    {
      v28 = *v27;
      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v29 = *a1;
  *a1 = 0;
  if (v29)
  {
    operator delete(v29);
  }

  return a1;
}

void *sub_5C3378(uint64_t a1)
{
  v2 = *(a1 + 680);
  if (v2)
  {
    *(a1 + 688) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 656);
  if (v3)
  {
    do
    {
      v11 = *v3;
      v12 = *(v3 + 6);
      if (v12)
      {
        *(v3 + 7) = v12;
        operator delete(v12);
      }

      if (v3[39] < 0)
      {
        operator delete(*(v3 + 2));
      }

      operator delete(v3);
      v3 = v11;
    }

    while (v11);
  }

  v4 = *(a1 + 640);
  *(a1 + 640) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 608);
  if (v5)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(a1 + 592);
  *(a1 + 592) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 568);
  if (v8)
  {
    v9 = *(a1 + 576);
    v10 = *(a1 + 568);
    if (v9 != v8)
    {
      do
      {
        v13 = *(v9 - 1);
        v9 -= 3;
        if (v13 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = *(a1 + 568);
    }

    *(a1 + 576) = v8;
    operator delete(v10);
  }

  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  sub_53A868(a1 + 384);

  return sub_55D550(a1);
}

void sub_5C34A8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x20C49BA5E353F8)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5C3590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = v11 - 2000;
    v15 = -v12;
    do
    {
      sub_5C0D2C(v14);
      v14 -= 2000;
      v15 += 2000;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_5C35C8(&a9);
  _Unwind_Resume(a1);
}

void ***sub_5C35C8(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 2000;
          sub_5C0D2C(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_5C3640(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 1128) = 0;
  if (*(a2 + 1128) == 1)
  {
    sub_52B7D8(a1 + 8, a2 + 8);
    *(a1 + 1128) = 1;
  }

  sub_571154(a1 + 1136, (a2 + 1136));
  *(a1 + 1768) = 0;
  *(a1 + 1752) = 0u;
  sub_5713F4(a1 + 1752, *(a2 + 1752), *(a2 + 1760), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1760) - *(a2 + 1752)) >> 5));
  v4 = *(a2 + 1776);
  *(a1 + 1792) = *(a2 + 1792);
  *(a1 + 1776) = v4;
  *(a1 + 1800) = 0;
  *(a1 + 1968) = 0;
  if (*(a2 + 1968) == 1)
  {
    sub_52A464(a1 + 1800, a2 + 1800);
    *(a1 + 1968) = 1;
  }

  v5 = (a1 + 1976);
  if (*(a2 + 1999) < 0)
  {
    sub_325C(v5, *(a2 + 1976), *(a2 + 1984));
  }

  else
  {
    v6 = *(a2 + 1976);
    *(a1 + 1992) = *(a2 + 1992);
    *v5 = v6;
  }

  return a1;
}