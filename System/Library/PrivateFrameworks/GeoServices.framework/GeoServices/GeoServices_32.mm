void sub_1868C4BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  __p = &a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

BOOL addr_obj::Formatting::verifyFormattedAddressInStructuredAddress(uint64_t a1, uint64_t a2)
{
  memset(&v86, 0, sizeof(v86));
  v4 = *(a2 + 244);
  if ((v4 & 0x800) != 0)
  {
    v5 = *(a2 + 104);
    if ((*(v5 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v5 + 8))
      {
LABEL_4:
        std::vector<std::string>::push_back[abi:ne200100](&v86, v5);
        v4 = *(a2 + 244);
        if ((v4 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }
    }

    else if (*(v5 + 23))
    {
      goto LABEL_4;
    }
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v6 = *(a2 + 16);
  if ((*(v6 + 23) & 0x8000000000000000) == 0)
  {
    if (*(v6 + 23))
    {
      goto LABEL_10;
    }

LABEL_13:
    if ((v4 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (!*(v6 + 8))
  {
    goto LABEL_13;
  }

LABEL_10:
  std::vector<std::string>::push_back[abi:ne200100](&v86, v6);
  v4 = *(a2 + 244);
  if ((v4 & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  v7 = *(a2 + 32);
  if ((*(v7 + 23) & 0x8000000000000000) != 0)
  {
    if (*(v7 + 8))
    {
LABEL_16:
      std::vector<std::string>::push_back[abi:ne200100](&v86, v7);
      v4 = *(a2 + 244);
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }
  }

  else if (*(v7 + 23))
  {
    goto LABEL_16;
  }

LABEL_19:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  v8 = *(a2 + 48);
  if ((*(v8 + 23) & 0x8000000000000000) == 0)
  {
    if (*(v8 + 23))
    {
      goto LABEL_22;
    }

LABEL_25:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (!*(v8 + 8))
  {
    goto LABEL_25;
  }

LABEL_22:
  std::vector<std::string>::push_back[abi:ne200100](&v86, v8);
  v4 = *(a2 + 244);
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  v9 = *(a2 + 56);
  if ((*(v9 + 23) & 0x8000000000000000) != 0)
  {
    if (*(v9 + 8))
    {
LABEL_28:
      std::vector<std::string>::push_back[abi:ne200100](&v86, v9);
      v4 = *(a2 + 244);
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  else if (*(v9 + 23))
  {
    goto LABEL_28;
  }

LABEL_31:
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  v10 = *(a2 + 72);
  if ((*(v10 + 23) & 0x8000000000000000) == 0)
  {
    if (*(v10 + 23))
    {
      goto LABEL_34;
    }

LABEL_37:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  if (!*(v10 + 8))
  {
    goto LABEL_37;
  }

LABEL_34:
  std::vector<std::string>::push_back[abi:ne200100](&v86, v10);
  v4 = *(a2 + 244);
  if ((v4 & 0x4000) == 0)
  {
    goto LABEL_43;
  }

LABEL_38:
  v11 = *(a2 + 144);
  if ((*(v11 + 23) & 0x8000000000000000) != 0)
  {
    if (*(v11 + 8))
    {
LABEL_40:
      std::vector<std::string>::push_back[abi:ne200100](&v86, v11);
      v4 = *(a2 + 244);
      if ((v4 & 0x8000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_44;
    }
  }

  else if (*(v11 + 23))
  {
    goto LABEL_40;
  }

LABEL_43:
  if ((v4 & 0x8000) == 0)
  {
    goto LABEL_49;
  }

LABEL_44:
  v12 = *(a2 + 152);
  if ((*(v12 + 23) & 0x8000000000000000) == 0)
  {
    if (*(v12 + 23))
    {
      goto LABEL_46;
    }

LABEL_49:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

  if (!*(v12 + 8))
  {
    goto LABEL_49;
  }

LABEL_46:
  std::vector<std::string>::push_back[abi:ne200100](&v86, v12);
  v4 = *(a2 + 244);
  if ((v4 & 0x100) == 0)
  {
    goto LABEL_55;
  }

LABEL_50:
  v13 = *(a2 + 80);
  if ((*(v13 + 23) & 0x8000000000000000) != 0)
  {
    if (*(v13 + 8))
    {
LABEL_52:
      std::vector<std::string>::push_back[abi:ne200100](&v86, v13);
      v4 = *(a2 + 244);
      if ((v4 & 0x20000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_56;
    }
  }

  else if (*(v13 + 23))
  {
    goto LABEL_52;
  }

LABEL_55:
  if ((v4 & 0x20000) == 0)
  {
    goto LABEL_61;
  }

LABEL_56:
  v14 = *(a2 + 184);
  if ((*(v14 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v14 + 8))
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  if (*(v14 + 23))
  {
LABEL_60:
    std::vector<std::string>::push_back[abi:ne200100](&v86, v14);
    v4 = *(a2 + 244);
  }

LABEL_61:
  if ((~v4 & 0x1040) != 0)
  {
    goto LABEL_92;
  }

  v15 = *(a2 + 112);
  if ((*(v15 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v15 + 8))
    {
      goto LABEL_92;
    }

LABEL_66:
    v16 = *(a2 + 64);
    v17 = *(v16 + 23);
    if (v17 < 0)
    {
      if (!v16[1])
      {
        goto LABEL_92;
      }
    }

    else if (!*(v16 + 23))
    {
      goto LABEL_92;
    }

    if (v17 >= 0)
    {
      v18 = *(v16 + 23);
    }

    else
    {
      v18 = v16[1];
    }

    std::string::basic_string[abi:ne200100](&v88, v18 + 1);
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v88;
    }

    else
    {
      v19 = v88.__r_.__value_.__r.__words[0];
    }

    if (v18)
    {
      if (*(v16 + 23) >= 0)
      {
        v20 = v16;
      }

      else
      {
        v20 = *v16;
      }

      memmove(v19, v20, v18);
    }

    *(&v19->__r_.__value_.__l.__data_ + v18) = 45;
    v21 = *(a2 + 112);
    v22 = *(v21 + 23);
    if (v22 >= 0)
    {
      v23 = *(a2 + 112);
    }

    else
    {
      v23 = *v21;
    }

    if (v22 >= 0)
    {
      v24 = *(v21 + 23);
    }

    else
    {
      v24 = *(v21 + 8);
    }

    v25 = std::string::append(&v88, v23, v24);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v89.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v89.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v86, &v89);
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    v4 = *(a2 + 244);
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_93;
  }

  if (*(v15 + 23))
  {
    goto LABEL_66;
  }

LABEL_92:
  if ((v4 & 0x80000) == 0)
  {
    goto LABEL_95;
  }

LABEL_93:
  v27 = *(a2 + 216);
  if ((*(v27 + 23) & 0x8000000000000000) == 0)
  {
    if (!*(v27 + 23))
    {
      goto LABEL_95;
    }

LABEL_98:
    std::vector<std::string>::push_back[abi:ne200100](&v86, v27);
    v4 = *(a2 + 244);
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

  if (*(v27 + 8))
  {
    goto LABEL_98;
  }

LABEL_95:
  if ((v4 & 0x1000) == 0)
  {
    goto LABEL_104;
  }

LABEL_99:
  v28 = *(a2 + 112);
  if ((*(v28 + 23) & 0x8000000000000000) != 0)
  {
    if (*(v28 + 8))
    {
LABEL_101:
      std::vector<std::string>::push_back[abi:ne200100](&v86, v28);
      v4 = *(a2 + 244);
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_105;
    }
  }

  else if (*(v28 + 23))
  {
    goto LABEL_101;
  }

LABEL_104:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_110;
  }

LABEL_105:
  v29 = *(a2 + 64);
  if ((*(v29 + 23) & 0x8000000000000000) == 0)
  {
    if (*(v29 + 23))
    {
      goto LABEL_107;
    }

LABEL_110:
    if ((v4 & 2) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_111;
  }

  if (!*(v29 + 8))
  {
    goto LABEL_110;
  }

LABEL_107:
  std::vector<std::string>::push_back[abi:ne200100](&v86, v29);
  v4 = *(a2 + 244);
  if ((v4 & 2) == 0)
  {
    goto LABEL_116;
  }

LABEL_111:
  v30 = *(a2 + 24);
  if ((*(v30 + 23) & 0x8000000000000000) != 0)
  {
    if (*(v30 + 8))
    {
LABEL_113:
      std::vector<std::string>::push_back[abi:ne200100](&v86, v30);
      if ((*(a2 + 244) & 8) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_117;
    }
  }

  else if (*(v30 + 23))
  {
    goto LABEL_113;
  }

LABEL_116:
  if ((v4 & 8) == 0)
  {
    goto LABEL_122;
  }

LABEL_117:
  v31 = *(a2 + 40);
  if ((*(v31 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v31 + 8))
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  if (*(v31 + 23))
  {
LABEL_121:
    std::vector<std::string>::push_back[abi:ne200100](&v86, v31);
  }

LABEL_122:
  v83 = a1;
  std::vector<std::string>::__insert_with_size[abi:ne200100]<AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>,AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>>(&v86, v86.__end_, *(a2 + 120), (*(a2 + 120) + 8 * *(a2 + 128)), *(a2 + 128));
  v32 = std::vector<std::string>::__insert_with_size[abi:ne200100]<AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>,AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>>(&v86, v86.__end_, *(a2 + 160), (*(a2 + 160) + 8 * *(a2 + 168)), *(a2 + 168));
  v84 = a2;
  v34 = *(a2 + 200);
  if (v34)
  {
    v35 = *(a2 + 192);
    v36 = &v35[v34];
    do
    {
      v37 = *v35;
      v38 = *(*v35 + 24);
      v39 = addr_obj::geo3::StructuredAddress_SubPremise_SubPremiseType_descriptor(v32);
      v40 = AddrObjGoogle::protobuf::internal::NameOfEnum(v39, v38);
      if (*(v40 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v89, *v40, v40[1]);
      }

      else
      {
        v41 = *v40;
        v89.__r_.__value_.__r.__words[2] = v40[2];
        *&v89.__r_.__value_.__l.__data_ = v41;
      }

      v42 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
      v43 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
      size = v89.__r_.__value_.__l.__size_;
      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = &v89 + HIBYTE(v89.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = (v89.__r_.__value_.__r.__words[0] + v89.__r_.__value_.__l.__size_);
      }

      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v46 = (v89.__r_.__value_.__r.__words[0] + 1);
      }

      else
      {
        v46 = &v89.__r_.__value_.__s.__data_[1];
      }

      if (v46 != v45)
      {
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = &v89;
        }

        else
        {
          v47 = v89.__r_.__value_.__r.__words[0];
        }

        v48 = &v47->__r_.__value_.__s.__data_[1];
        do
        {
          *v48++ = __tolower(*v46++);
        }

        while (v46 != v45);
        v42 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
        size = v89.__r_.__value_.__l.__size_;
        v43 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
      }

      if (v43 >= 0)
      {
        v49 = v42;
      }

      else
      {
        v49 = size;
      }

      std::string::basic_string[abi:ne200100](&v87, v49 + 1);
      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v87;
      }

      else
      {
        v50 = v87.__r_.__value_.__r.__words[0];
      }

      if (v49)
      {
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = &v89;
        }

        else
        {
          v51 = v89.__r_.__value_.__r.__words[0];
        }

        memmove(v50, v51, v49);
      }

      *(&v50->__r_.__value_.__l.__data_ + v49) = 32;
      v52 = *(v37 + 16);
      v53 = *(v52 + 23);
      if (v53 >= 0)
      {
        v54 = *(v37 + 16);
      }

      else
      {
        v54 = *v52;
      }

      if (v53 >= 0)
      {
        v55 = *(v52 + 23);
      }

      else
      {
        v55 = *(v52 + 8);
      }

      v56 = std::string::append(&v87, v54, v55);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::push_back[abi:ne200100](&v86, &v88);
      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      ++v35;
    }

    while (v35 != v36);
  }

  v58 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v86.__end_ - v86.__begin_) >> 3));
  if (v86.__end_ == v86.__begin_)
  {
    v59 = 0;
  }

  else
  {
    v59 = v58;
  }

  sub_186841BAC(v86.__begin_, v86.__end_, v59, 1, v33);
  addr_obj::Formatting::stripComponents(v83, &v86, &v89);
  v60 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v61 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v61 = v89.__r_.__value_.__l.__size_;
  }

  if (v61)
  {
    v62 = *(v84 + 24);
    v63 = *(v62 + 23);
    if (v63 < 0)
    {
      if (v62[1] != 2)
      {
        goto LABEL_177;
      }

      v62 = *v62;
    }

    else if (v63 != 2)
    {
      goto LABEL_177;
    }

    if (*v62 != 20554)
    {
      goto LABEL_177;
    }

    v66 = *(v84 + 56);
    v67 = SHIBYTE(v66->__r_.__value_.__r.__words[2]);
    if (v67 < 0)
    {
      v67 = v66->__r_.__value_.__l.__size_;
      if (!v67)
      {
        goto LABEL_177;
      }

      v68 = v66->__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v66->__r_.__value_.__s + 23))
      {
        goto LABEL_177;
      }

      v68 = *(v84 + 56);
    }

    if (v67 >= 2)
    {
      v69 = &v68[v67];
      v70 = v68;
      do
      {
        v71 = memchr(v70, 44, v67 - 1);
        if (!v71)
        {
          break;
        }

        if (*v71 == 8236)
        {
          if (v71 != v69)
          {
            v72 = v71 - v68;
            if (v72 != -1)
            {
              std::string::basic_string(&v88, v66, 0, v72, &v87);
              std::string::basic_string(&v87, *(v84 + 56), v72 + 2, 0xFFFFFFFFFFFFFFFFLL, &v85);
              begin = v86.__begin_;
              end = v86.__end_;
              if (v86.__begin_ != v86.__end_)
              {
                v75 = *(v84 + 56);
                v76 = *(v75 + 23);
                if (v76 >= 0)
                {
                  v77 = *(v75 + 23);
                }

                else
                {
                  v77 = *(v75 + 8);
                }

                if (v76 >= 0)
                {
                  v78 = *(v84 + 56);
                }

                else
                {
                  v78 = *v75;
                }

                while (1)
                {
                  v79 = HIBYTE(begin->__r_.__value_.__r.__words[2]);
                  v80 = v79;
                  if ((v79 & 0x80u) != 0)
                  {
                    v79 = begin->__r_.__value_.__l.__size_;
                  }

                  if (v79 == v77)
                  {
                    v81 = v80 >= 0 ? begin : begin->__r_.__value_.__r.__words[0];
                    if (!memcmp(v81, v78, v77))
                    {
                      break;
                    }
                  }

                  if (++begin == end)
                  {
                    goto LABEL_216;
                  }
                }
              }

              if (begin != end)
              {
                std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v87.__r_.__value_.__l.__data_, &v88.__r_.__value_.__l.__data_, &v85);
                if (SHIBYTE(begin->__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(begin->__r_.__value_.__l.__data_);
                }

                v82 = *&v85.__r_.__value_.__l.__data_;
                begin->__r_.__value_.__r.__words[2] = v85.__r_.__value_.__r.__words[2];
                *&begin->__r_.__value_.__l.__data_ = v82;
                addr_obj::Formatting::stripComponents(v83, &v86, &v85);
                if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v89.__r_.__value_.__l.__data_);
                }

                v89 = v85;
              }

LABEL_216:
              if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v87.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v88.__r_.__value_.__l.__data_);
              }

              v60 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
            }
          }

          break;
        }

        v70 = v71 + 1;
        v67 = v69 - v70;
      }

      while (v69 - v70 >= 2);
    }
  }

LABEL_177:
  if ((v60 & 0x80) != 0)
  {
    v64 = v89.__r_.__value_.__l.__size_ == 0;
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  else
  {
    v64 = v60 == 0;
  }

  v89.__r_.__value_.__r.__words[0] = &v86;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v89);
  return v64;
}

void sub_1868C5654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  a24 = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

std::vector<std::string>::iterator std::vector<std::string>::erase(std::vector<std::string> *this, std::vector<std::string>::const_iterator __first, std::vector<std::string>::const_iterator __last)
{
  if (__last.__i_ != __first.__i_)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v10, __last.__i_, this->__end_, __first.__i_);
    v6 = v5;
    end = this->__end_;
    if (end != v5)
    {
      do
      {
        v8 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
        --end;
        if (v8 < 0)
        {
          operator delete(end->__r_.__value_.__l.__data_);
        }
      }

      while (end != v6);
    }

    this->__end_ = v6;
  }

  return __first.__i_;
}

void addr_obj::Formatting::removeMultipleWhitespaces(uint64_t a1, std::string *this)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    std::string::push_back(this, *v4);
    v6 = v5 - 1;
    if (v5 != 1)
    {
      v7 = v4 + 1;
      v8 = MEMORY[0x1E69E9830];
      while (1)
      {
        v9 = *v4;
        v10 = *v7;
        if ((v9 & 0x80000000) != 0)
        {
          if (!__maskrune(v9, 0x4000uLL))
          {
            goto LABEL_20;
          }
        }

        else if ((*(v8 + 4 * v9 + 60) & 0x4000) == 0)
        {
          goto LABEL_20;
        }

        if ((v10 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v8 + 4 * v10 + 60) & 0x4000) == 0)
        {
          goto LABEL_20;
        }

LABEL_21:
        ++v7;
        if (!--v6)
        {
          return;
        }
      }

      if (__maskrune(v10, 0x4000uLL))
      {
        goto LABEL_21;
      }

LABEL_20:
      std::string::push_back(this, *v7);
      v4 = v7;
      goto LABEL_21;
    }
  }
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>,AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1868C5920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>,AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>,std::string*>(uint64_t a1, __int128 **a2, __int128 **a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      if (*(*v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v7, *(v7 + 1));
        v4 = v13;
      }

      else
      {
        v8 = *v7;
        v4->__r_.__value_.__r.__words[2] = *(v7 + 2);
        *&v4->__r_.__value_.__l.__data_ = v8;
      }

      ++v6;
      v13 = ++v4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v7 = __from_s + end - __to;
  v8 = end;
  if (v7 < __from_e)
  {
    v9 = v7;
    v8 = this->__end_;
    do
    {
      v10 = *v9;
      v8->__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v8->__r_.__value_.__l.__data_ = v10;
      ++v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < __from_e);
  }

  this->__end_ = v8;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v11, __from_s, v7, end);
}

void std::__split_buffer<std::string>::__construct_at_end_with_size<std::__wrap_iter<std::string*>>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3)
  {
    v6 = &v4[a3];
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        v4->__r_.__value_.__r.__words[2] = *(a2 + 2);
        *&v4->__r_.__value_.__l.__data_ = v8;
      }

      ++v4;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(a1 + 16) = v4;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

std::string *std::vector<std::string>::__insert_with_size[abi:ne200100]<AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>,AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>>(std::vector<std::string> *a1, std::vector<std::string>::pointer __from_s, const std::string **a3, __int128 **a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        std::vector<std::string>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v20 = &v7[a5];
        v21 = v5;
        do
        {
          v22 = *v7++;
          std::string::operator=(v21++, v22);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = &a3[0xAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)];
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>,AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>,std::string*>(a1, v17, a4, a1->__end_);
        if (v16 >= 1)
        {
          std::vector<std::string>::__move_range(a1, v5, end, &v5[a5]);
          v18 = v5;
          do
          {
            v19 = *v7++;
            std::string::operator=(v18++, v19);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      begin = a1->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v31.__end_cap_.__value_ = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v15);
      }

      v31.__first_ = 0;
      v31.__begin_ = (8 * (v13 >> 3));
      v31.__end_ = v31.__begin_;
      v31.__end_cap_.__value_ = 0;
      std::__split_buffer<std::string>::__construct_at_end_with_size<AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>>(&v31, a3, a5);
      v23 = v31.__begin_;
      memcpy(v31.__end_, v5, a1->__end_ - v5);
      v24 = a1->__begin_;
      v25 = v31.__begin_;
      v31.__end_ = (v31.__end_ + a1->__end_ - v5);
      a1->__end_ = v5;
      v26 = v5 - v24;
      v27 = (v25 - (v5 - v24));
      memcpy(v27, v24, v26);
      v28 = a1->__begin_;
      a1->__begin_ = v27;
      v29 = a1->__end_cap_.__value_;
      *&a1->__end_ = *&v31.__end_;
      v31.__end_ = v28;
      v31.__end_cap_.__value_ = v29;
      v31.__first_ = v28;
      v31.__begin_ = v28;
      std::__split_buffer<std::string>::~__split_buffer(&v31);
      return v23;
    }
  }

  return v5;
}

void std::__split_buffer<std::string>::__construct_at_end_with_size<AddrObjGoogle::protobuf::internal::RepeatedPtrIterator<std::string const>>(uint64_t a1, __int128 **a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3)
  {
    v6 = &v4[a3];
    v7 = 24 * a3;
    do
    {
      v8 = *a2;
      if (*(*a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        v4->__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v4->__r_.__value_.__l.__data_ = v9;
      }

      ++v4;
      ++a2;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(a1 + 16) = v4;
}

void *addr_obj::operator<<(void *a1, unsigned __int8 *a2)
{
  memset(&v9, 0, sizeof(v9));
  addr_obj::Base64::encodeString(a2, &v9);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "SerializedAddress: <", 20);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v9;
  }

  else
  {
    v4 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, size);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ">", 1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v7;
}

{
  memset(&v9, 0, sizeof(v9));
  addr_obj::Base64::encodeString(a2, &v9);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "SerializedStructuredAddress: <", 30);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v9;
  }

  else
  {
    v4 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, size);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ">", 1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v7;
}

float addr_obj::venue::Field::Field(addr_obj::venue::Field *this, const addr_obj::VenueFieldProto *a2)
{
  v2 = *(a2 + 2);
  *&v3 = v2;
  *(&v3 + 1) = HIDWORD(v2);
  *this = v3;
  return *&v2;
}

void *addr_obj::venue::Field::Field(void *this, const unint64_t *a2, const unint64_t *a3)
{
  *this = *a2;
  this[1] = *a3;
  return this;
}

int32x2_t addr_obj::venue::Field::toProto(int64x2_t *this, int32x2_t *a2)
{
  a2[3].i32[1] |= 3u;
  result = vmovn_s64(*this);
  a2[2] = result;
  return result;
}

uint64_t addr_obj::venue::operator<<(void *a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "fieldId: ", 9);
  v4 = MEMORY[0x18CFD1C60](v3, *a2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", decorator: ", 13);
  return MEMORY[0x18CFD1C60](v5, a2[1]);
}

uint64_t *addr_obj::venue::Template::Template(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<addr_obj::venue::Field>::__init_with_size[abi:ne200100]<addr_obj::venue::Field*,addr_obj::venue::Field*>(a1 + 6, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 4);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  std::vector<addr_obj::venue::Decorator>::__init_with_size[abi:ne200100]<addr_obj::venue::Decorator*,addr_obj::venue::Decorator*>(a1 + 9, *a5, *(a5 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 8) - *a5) >> 5));
  addr_obj::venue::Template::validate(a1);
  return a1;
}

void sub_1868C65BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](va);
  v7 = *v5;
  if (*v5)
  {
    *(v3 + 56) = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    *(v3 + 32) = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void *addr_obj::venue::Template::validate(void *this)
{
  v2 = this[6];
  v1 = this[7];
  if (v2 != v1)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((this[10] - this[9]) >> 5);
    do
    {
      if (v2[1] >= v3)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v26);
        v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "there is no decorator for field ", 32);
        v5 = addr_obj::venue::operator<<(v4, v2);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " listed in order_;", 18);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " only ", 6);
        v8 = MEMORY[0x18CFD1C60](v7, v3);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " are defined", 12);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; library version: ", 19);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "11.3.0", 6);
        if (addr_obj::Logger::isInitialized(v11))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](v25);
          std::stringbuf::str();
          if ((v24 & 0x80u) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          if ((v24 & 0x80u) == 0)
          {
            v13 = v24;
          }

          else
          {
            v13 = __p[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v12, v13);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Template.cpp");
          std::string::basic_string[abi:ne200100]<0>(v21, "validate");
          std::stringbuf::str();
          std::string::basic_string[abi:ne200100]<0>(v18, "");
          addr_obj::Logger::log(16, __p, 95, v21, &v20, v18);
          if (v19 < 0)
          {
            operator delete(v18[0]);
          }

          if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v20.__r_.__value_.__l.__data_);
          }

          if (v22 < 0)
          {
            operator delete(v21[0]);
          }

          if (v24 < 0)
          {
            operator delete(__p[0]);
          }

          std::ostringstream::~ostringstream(v25);
        }

        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "; at ", 5);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Template.cpp", 88);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ":", 1);
        MEMORY[0x18CFD1C40](v16, 95);
        exception = __cxa_allocate_exception(0x28uLL);
        std::string::basic_string[abi:ne200100]<0>(v25, "DataError");
        std::stringbuf::str();
        addr_obj::Exception<std::runtime_error>::Exception(exception, v25, __p);
      }

      v2 += 2;
    }

    while (v2 != v1);
  }

  return this;
}

void sub_1868C6BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      std::ostringstream::~ostringstream(&v32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

addr_obj::venue::Template *addr_obj::venue::Template::Template(addr_obj::venue::Template *this, const addr_obj::VenueTemplateProto *a2)
{
  *(this + 3) = 0u;
  v4 = (this + 48);
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  v5 = (this + 72);
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  sub_186843984(this, a2 + 2);
  sub_186843984(this + 3, a2 + 4);
  if (*(a2 + 14) >= 1)
  {
    v6 = 0;
    do
    {
      addr_obj::venue::Field::Field(&v21, *(*(a2 + 6) + 8 * v6));
      v8 = *(this + 7);
      v7 = *(this + 8);
      if (v8 >= v7)
      {
        v10 = (v8 - *v4) >> 4;
        v11 = v10 + 1;
        if ((v10 + 1) >> 60)
        {
          std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
        }

        v12 = v7 - *v4;
        if (v12 >> 3 > v11)
        {
          v11 = v12 >> 3;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::Field>>(v4, v13);
        }

        v14 = (16 * v10);
        *v14 = *&v21.__r_.__value_.__l.__data_;
        v9 = 16 * v10 + 16;
        v15 = *(this + 6);
        v16 = *(this + 7) - v15;
        v17 = 16 * v10 - v16;
        memcpy(v14 - v16, v15, v16);
        v18 = *(this + 6);
        *(this + 6) = v17;
        *(this + 7) = v9;
        *(this + 8) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v8 = *&v21.__r_.__value_.__l.__data_;
        v9 = (v8 + 1);
      }

      *(this + 7) = v9;
      ++v6;
    }

    while (v6 < *(a2 + 14));
  }

  if (*(a2 + 20) >= 1)
  {
    v19 = 0;
    do
    {
      addr_obj::venue::Decorator::Decorator(&v21, *(*(a2 + 9) + 8 * v19));
      std::vector<addr_obj::venue::Decorator>::push_back[abi:ne200100](v5, &v21);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      ++v19;
    }

    while (v19 < *(a2 + 20));
  }

  addr_obj::venue::Template::validate(this);
  return this;
}

void sub_1868C6E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 56) = v12;
    operator delete(v12);
  }

  v13 = *(v9 + 24);
  if (v13)
  {
    *(v9 + 32) = v13;
    operator delete(v13);
  }

  v14 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<addr_obj::venue::Decorator>::push_back[abi:ne200100](unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<addr_obj::venue::Decorator>::__emplace_back_slow_path<addr_obj::venue::Decorator>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v5;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v6 = a2[3];
    *(v3 + 64) = *(a2 + 8);
    *(v3 + 48) = v6;
    *(a2 + 56) = 0uLL;
    *(a2 + 6) = 0;
    v7 = *(a2 + 72);
    *(v3 + 88) = *(a2 + 11);
    *(v3 + 72) = v7;
    *(a2 + 72) = 0uLL;
    *(a2 + 11) = 0;
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void addr_obj::venue::Template::toProto(int **this, addr_obj::VenueTemplateProto *a2)
{
  v4 = (a2 + 32);
  (*(*a2 + 32))(a2);
  sub_1868439EC(this, a2 + 2);
  sub_1868439EC(this + 3, v4);
  for (i = this[6]; i != this[7]; ++i)
  {
    v6 = *(a2 + 15);
    v7 = *(a2 + 14);
    if (v7 >= v6)
    {
      if (v6 == *(a2 + 16))
      {
        AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 12, v6 + 1);
        v6 = *(a2 + 15);
      }

      *(a2 + 15) = v6 + 1;
      AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::VenueFieldProto>::New();
    }

    v8 = *(a2 + 6);
    *(a2 + 14) = v7 + 1;
    addr_obj::venue::Field::toProto(i, *(v8 + 8 * v7));
  }

  for (j = this[9]; j != this[10]; j += 4)
  {
    v10 = *(a2 + 21);
    v11 = *(a2 + 20);
    if (v11 >= v10)
    {
      if (v10 == *(a2 + 22))
      {
        AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 18, v10 + 1);
        v10 = *(a2 + 21);
      }

      *(a2 + 21) = v10 + 1;
      AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::VenueDecoratorProto>::New();
    }

    v12 = *(a2 + 9);
    *(a2 + 20) = v11 + 1;
    addr_obj::venue::Decorator::toProto(j, *(v12 + 8 * v11));
  }
}

uint64_t addr_obj::venue::Template::getDecorator(addr_obj::venue::Template *this, const addr_obj::venue::Field *a2)
{
  v2 = *(a2 + 1);
  v3 = *(this + 9);
  if (v2 >= 0xAAAAAAAAAAAAAAABLL * ((*(this + 10) - v3) >> 5))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v33);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "the decorator index <", 21);
    v8 = MEMORY[0x18CFD1C60](v7, *(a2 + 1));
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "> is out of range; ", 19);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "only [0-", 8);
    v11 = MEMORY[0x18CFD1C60](v10, 0xAAAAAAAAAAAAAAABLL * ((*(this + 10) - *(this + 9)) >> 5));
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") are available; ", 17);
    addr_obj::venue::Template::str(this);
    if ((v32 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v32 & 0x80u) == 0)
    {
      v14 = v32;
    }

    else
    {
      v14 = __p[1];
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "; library version: ", 19);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "11.3.0", 6);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    if (addr_obj::Logger::isInitialized(v17))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](__p);
      std::stringbuf::str();
      if ((v30 & 0x80u) == 0)
      {
        v18 = v29;
      }

      else
      {
        v18 = v29[0];
      }

      if ((v30 & 0x80u) == 0)
      {
        v19 = v30;
      }

      else
      {
        v19 = v29[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v18, v19);
      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v29, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Template.cpp");
      std::string::basic_string[abi:ne200100]<0>(v27, "getDecorator");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v24, "");
      addr_obj::Logger::log(16, v29, 82, v27, &v26, v24);
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      std::ostringstream::~ostringstream(__p);
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "; at ", 5);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/venue_Template.cpp", 88);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ":", 1);
    MEMORY[0x18CFD1C40](v22, 82);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "LogicError");
    std::stringbuf::str();
    addr_obj::Exception<std::logic_error>::Exception(exception, __p, v29);
  }

  return v3 + 96 * v2;
}

void sub_1868C7710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      std::ostringstream::~ostringstream(&v32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

uint64_t *addr_obj::venue::Template::str(uint64_t **this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "venue::Template: required: [", 28);
  v4 = *this;
  v25 = this[1];
  v26 = v4;
  v5 = addr_obj::stream_container<std::__wrap_iter<unsigned long const*>>(v3, &v26, &v25);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "]", 1);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "; excluded: [", 13);
  v8 = this[3];
  v25 = this[4];
  v26 = v8;
  v9 = addr_obj::stream_container<std::__wrap_iter<unsigned long const*>>(v7, &v26, &v25);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "]", 1);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "; order: [", 10);
  v12 = this[6];
  v25 = this[7];
  v26 = v12;
  v13 = addr_obj::stream_container<std::__wrap_iter<addr_obj::venue::Field const*>>(v11, &v26, &v25);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "]", 1);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "; decorators(", 13);
  v16 = MEMORY[0x18CFD1C60](v15, 0xAAAAAAAAAAAAAAABLL * ((this[10] - this[9]) >> 5));
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "): ", 3);
  v18 = this[9];
  v25 = this[10];
  v26 = v18;
  addr_obj::stream_container<std::__wrap_iter<addr_obj::venue::Decorator const*>>(v17, &v26, &v25);
  std::stringbuf::str();
  v20 = *MEMORY[0x1E69E54E8];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x18CFD1DA0](&v24);
}

void *addr_obj::venue::operator<<(void *a1, uint64_t **this)
{
  addr_obj::venue::Template::str(this);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void std::allocator_traits<std::allocator<addr_obj::venue::Decorator>>::destroy[abi:ne200100]<addr_obj::venue::Decorator,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void std::vector<unsigned long>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(result, a2 - v2);
  }
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t std::vector<addr_obj::venue::Decorator>::__emplace_back_slow_path<addr_obj::venue::Decorator>(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::Decorator>>(a1, v6);
  }

  v7 = 96 * v2;
  v18 = 0;
  v19 = v7;
  *(&v20 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = a2[3];
  *(v7 + 64) = *(a2 + 8);
  *(v7 + 48) = v10;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v11 = *(a2 + 72);
  *(v7 + 88) = *(a2 + 11);
  *(v7 + 72) = v11;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *&v20 = 96 * v2 + 96;
  v12 = a1[1];
  v13 = 96 * v2 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<addr_obj::venue::Decorator>,addr_obj::venue::Decorator*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<addr_obj::venue::Decorator>::~__split_buffer(&v18);
  return v17;
}

void sub_1868C7E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<addr_obj::venue::Decorator>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<addr_obj::venue::Decorator>,addr_obj::venue::Decorator*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      v11 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v11;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v7 += 96;
      a4 += 96;
    }

    while (v7 != a3);
    v16 = a4;
    v14 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<addr_obj::venue::Decorator>>::destroy[abi:ne200100]<addr_obj::venue::Decorator,0>(a1, v5);
      v5 += 96;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::venue::Decorator>,addr_obj::venue::Decorator*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__split_buffer<addr_obj::venue::Decorator>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<addr_obj::venue::Decorator>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<addr_obj::venue::Decorator>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    std::allocator_traits<std::allocator<addr_obj::venue::Decorator>>::destroy[abi:ne200100]<addr_obj::venue::Decorator,0>(v5, v4 - 96);
  }
}

_DWORD *AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

void *addr_obj::stream_container<std::__wrap_iter<unsigned long const*>>(void *a1, uint64_t **a2, uint64_t **a3)
{
  v4 = *a2;
  if (*a3 != *a2)
  {
    v7 = *v4;
    v6 = v4 + 1;
    MEMORY[0x18CFD1C60](a1, v7);
    while (v6 != *a3)
    {
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
      v9 = *v6++;
      MEMORY[0x18CFD1C60](v8, v9);
    }
  }

  return a1;
}

void *addr_obj::stream_container<std::__wrap_iter<addr_obj::venue::Field const*>>(void *a1, void **a2, void *a3)
{
  v4 = *a2;
  if (*a3 != *a2)
  {
    addr_obj::venue::operator<<(a1, *a2);
    for (i = (v4 + 16); i != *a3; i += 2)
    {
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
      addr_obj::venue::operator<<(v7, i);
    }
  }

  return a1;
}

void *addr_obj::stream_container<std::__wrap_iter<addr_obj::venue::Decorator const*>>(void *a1, addr_obj::venue::Decorator **a2, addr_obj::venue::Decorator **a3)
{
  v4 = *a2;
  if (*a3 != *a2)
  {
    addr_obj::venue::operator<<(a1, *a2);
    for (i = (v4 + 96); i != *a3; i = (i + 96))
    {
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
      addr_obj::venue::operator<<(v7, i);
    }
  }

  return a1;
}

uint64_t addr_obj::buildVCard(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t **a5, uint64_t **a6)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v65);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "BEGIN:VCARD", 11);
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(&v70, MEMORY[0x1E69E5318]);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v70);
  std::ostream::put();
  std::ostream::flush();
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "VERSION:3.0", 11);
  std::ios_base::getloc((v15 + *(*v15 - 24)));
  v16 = std::locale::use_facet(&v70, MEMORY[0x1E69E5318]);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(&v70);
  std::ostream::put();
  std::ostream::flush();
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "N:;", 3);
  v18 = *(a1 + 23);
  if (v18 >= 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = *a1;
  }

  if (v18 >= 0)
  {
    v20 = *(a1 + 23);
  }

  else
  {
    v20 = a1[1];
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ";;;", 3);
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v70, MEMORY[0x1E69E5318]);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v70);
  std::ostream::put();
  std::ostream::flush();
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "FN: ", 4);
  v25 = *(a1 + 23);
  if (v25 >= 0)
  {
    v26 = a1;
  }

  else
  {
    v26 = *a1;
  }

  if (v25 >= 0)
  {
    v27 = *(a1 + 23);
  }

  else
  {
    v27 = a1[1];
  }

  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "   ", 3);
  std::ios_base::getloc((v29 + *(*v29 - 24)));
  v30 = std::locale::use_facet(&v70, MEMORY[0x1E69E5318]);
  (v30->__vftable[2].~facet_0)(v30, 10);
  std::locale::~locale(&v70);
  std::ostream::put();
  std::ostream::flush();
  v31 = *(a2 + 23);
  if ((v31 & 0x80u) != 0)
  {
    v31 = a2[1];
  }

  if (v31)
  {
    goto LABEL_28;
  }

  v32 = *(a3 + 23);
  if ((v32 & 0x80u) != 0)
  {
    v32 = a3[1];
  }

  if (v32)
  {
    goto LABEL_28;
  }

  v33 = *(a4 + 23);
  if ((v33 & 0x80u) != 0)
  {
    v33 = a4[1];
  }

  if (v33)
  {
    goto LABEL_28;
  }

  v34 = *(a5 + 23);
  if ((v34 & 0x80u) != 0)
  {
    v34 = a5[1];
  }

  if (v34)
  {
    goto LABEL_28;
  }

  v35 = *(a6 + 23);
  if ((v35 & 0x80u) != 0)
  {
    v35 = a6[1];
  }

  if (v35)
  {
LABEL_28:
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "ADR;type=pref:;;", 16);
    v37 = *(a2 + 23);
    if (v37 >= 0)
    {
      v38 = a2;
    }

    else
    {
      v38 = *a2;
    }

    if (v37 >= 0)
    {
      v39 = *(a2 + 23);
    }

    else
    {
      v39 = a2[1];
    }

    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v38, v39);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ";", 1);
    v42 = *(a3 + 23);
    if (v42 >= 0)
    {
      v43 = a3;
    }

    else
    {
      v43 = *a3;
    }

    if (v42 >= 0)
    {
      v44 = *(a3 + 23);
    }

    else
    {
      v44 = a3[1];
    }

    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ";", 1);
    v47 = *(a4 + 23);
    if (v47 >= 0)
    {
      v48 = a4;
    }

    else
    {
      v48 = *a4;
    }

    if (v47 >= 0)
    {
      v49 = *(a4 + 23);
    }

    else
    {
      v49 = a4[1];
    }

    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, v49);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, ";", 1);
    v52 = *(a5 + 23);
    if (v52 >= 0)
    {
      v53 = a5;
    }

    else
    {
      v53 = *a5;
    }

    if (v52 >= 0)
    {
      v54 = *(a5 + 23);
    }

    else
    {
      v54 = a5[1];
    }

    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v53, v54);
    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ";", 1);
    v57 = *(a6 + 23);
    if (v57 >= 0)
    {
      v58 = a6;
    }

    else
    {
      v58 = *a6;
    }

    if (v57 >= 0)
    {
      v59 = *(a6 + 23);
    }

    else
    {
      v59 = a6[1];
    }

    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v58, v59);
    std::ios_base::getloc((v60 + *(*v60 - 24)));
    v61 = std::locale::use_facet(&v70, MEMORY[0x1E69E5318]);
    (v61->__vftable[2].~facet_0)(v61, 10);
    std::locale::~locale(&v70);
    std::ostream::put();
    std::ostream::flush();
  }

  v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "END:VCARD", 9);
  std::ios_base::getloc((v62 + *(*v62 - 24)));
  v63 = std::locale::use_facet(&v70, MEMORY[0x1E69E5318]);
  (v63->__vftable[2].~facet_0)(v63, 10);
  std::locale::~locale(&v70);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v65 = *MEMORY[0x1E69E54E8];
  *(&v65 + *(v65 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v66 = MEMORY[0x1E69E5548] + 16;
  if (v68 < 0)
  {
    operator delete(v67[7].__locale_);
  }

  v66 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v67);
  std::ostream::~ostream();
  return MEMORY[0x18CFD1DA0](&v69);
}

void sub_1868C8954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 88));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::parse(addr_obj::Localization *a1, uint64_t a2)
{
  addr_obj::Localization::getDisplayLanguage(a1);
  if ((AddrObjGoogle::protobuf::MessageLite::ParseFromString(a2, v4) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v24);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "parsing failed for geo3::Address from ", 38);
    v7 = addr_obj::operator<<(v6, a1);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "; library version: ", 19);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v9))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v23);
      std::stringbuf::str();
      if ((v22 & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v11 = v22;
      }

      else
      {
        v11 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v10, v11);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/helpers.cpp");
      std::string::basic_string[abi:ne200100]<0>(v19, "parse");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v16, "");
      addr_obj::Logger::log(16, __p, 45, v19, &v18, v16);
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v23);
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "; at ", 5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/helpers.cpp", 81);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ":", 1);
    MEMORY[0x18CFD1C40](v14, 45);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v23, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, v23, __p);
  }

  return a2;
}

{
  addr_obj::Localization::getDisplayLanguage(a1);
  if ((AddrObjGoogle::protobuf::MessageLite::ParseFromString(a2, v4) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v24);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "parsing failed for geo3::StructuredAddress from ", 48);
    v7 = addr_obj::operator<<(v6, a1);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "; library version: ", 19);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v9))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v23);
      std::stringbuf::str();
      if ((v22 & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v11 = v22;
      }

      else
      {
        v11 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v10, v11);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/helpers.cpp");
      std::string::basic_string[abi:ne200100]<0>(v19, "parse");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v16, "");
      addr_obj::Logger::log(16, __p, 50, v19, &v18, v16);
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v23);
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "; at ", 5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/helpers.cpp", 81);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ":", 1);
    MEMORY[0x18CFD1C40](v14, 50);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v23, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, v23, __p);
  }

  return a2;
}

void sub_1868C8F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      std::ostringstream::~ostringstream(&v32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

void sub_1868C9520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      std::ostringstream::~ostringstream(&v32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

void addr_obj::serialize(addr_obj *this@<X0>, const addr_obj::geo3::Address *a2@<X1>, std::string *a3@<X8>)
{
  v33 = 0uLL;
  v34 = 0;
  if ((AddrObjGoogle::protobuf::MessageLite::SerializeToString(this, &v33) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v32);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "failed SerializeToString() on ", 30);
    AddrObjGoogle::protobuf::Message::DebugString(v27, this);
    if ((v28 & 0x80u) == 0)
    {
      v7 = v27;
    }

    else
    {
      v7 = v27[0];
    }

    if ((v28 & 0x80u) == 0)
    {
      v8 = v28;
    }

    else
    {
      v8 = v27[1];
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " for ", 5);
    (*(*a2 + 200))(&__p, a2);
    if ((v31 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v31 & 0x80u) == 0)
    {
      v12 = v31;
    }

    else
    {
      v12 = v30;
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, p_p, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "; library version: ", 19);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "11.3.0", 6);
    if (v31 < 0)
    {
      operator delete(__p);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (addr_obj::Logger::isInitialized(v15))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v27);
      std::stringbuf::str();
      if ((v31 & 0x80u) == 0)
      {
        v16 = &__p;
      }

      else
      {
        v16 = __p;
      }

      if ((v31 & 0x80u) == 0)
      {
        v17 = v31;
      }

      else
      {
        v17 = v30;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v16, v17);
      if (v31 < 0)
      {
        operator delete(__p);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/helpers.cpp");
      std::string::basic_string[abi:ne200100]<0>(v25, "serialize");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v22, "");
      addr_obj::Logger::log(16, &__p, 74, v25, &v24, v22);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (v31 < 0)
      {
        operator delete(__p);
      }

      std::ostringstream::~ostringstream(v27);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "; at ", 5);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/helpers.cpp", 81);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ":", 1);
    MEMORY[0x18CFD1C40](v20, 74);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v27, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, v27, &__p);
  }

  addr_obj::SerializedAddress::SerializedAddress(a3, &v33);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }
}

void sub_1868C9C00(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    if ((v61 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v61)
  {
LABEL_8:
    std::ostringstream::~ostringstream(&v62);
    JUMPOUT(0x1868C9CC0);
  }

  __cxa_free_exception(v60);
  goto LABEL_8;
}

void addr_obj::serialize(addr_obj *this@<X0>, const addr_obj::geo3::StructuredAddress *a2@<X1>, std::string *a3@<X8>)
{
  v33 = 0uLL;
  v34 = 0;
  if ((AddrObjGoogle::protobuf::MessageLite::SerializeToString(this, &v33) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v32);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "failed SerializeToString() on ", 30);
    AddrObjGoogle::protobuf::Message::DebugString(v27, this);
    if ((v28 & 0x80u) == 0)
    {
      v7 = v27;
    }

    else
    {
      v7 = v27[0];
    }

    if ((v28 & 0x80u) == 0)
    {
      v8 = v28;
    }

    else
    {
      v8 = v27[1];
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " for ", 5);
    (*(*a2 + 200))(&__p, a2);
    if ((v31 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v31 & 0x80u) == 0)
    {
      v12 = v31;
    }

    else
    {
      v12 = v30;
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, p_p, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "; library version: ", 19);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "11.3.0", 6);
    if (v31 < 0)
    {
      operator delete(__p);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (addr_obj::Logger::isInitialized(v15))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v27);
      std::stringbuf::str();
      if ((v31 & 0x80u) == 0)
      {
        v16 = &__p;
      }

      else
      {
        v16 = __p;
      }

      if ((v31 & 0x80u) == 0)
      {
        v17 = v31;
      }

      else
      {
        v17 = v30;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v16, v17);
      if (v31 < 0)
      {
        operator delete(__p);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/helpers.cpp");
      std::string::basic_string[abi:ne200100]<0>(v25, "serialize");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v22, "");
      addr_obj::Logger::log(16, &__p, 87, v25, &v24, v22);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (v31 < 0)
      {
        operator delete(__p);
      }

      std::ostringstream::~ostringstream(v27);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "; at ", 5);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/helpers.cpp", 81);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ":", 1);
    MEMORY[0x18CFD1C40](v20, 87);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v27, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, v27, &__p);
  }

  addr_obj::SerializedAddress::SerializedAddress(a3, &v33);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }
}

void sub_1868CA334(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    if ((v61 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v61)
  {
LABEL_8:
    std::ostringstream::~ostringstream(&v62);
    JUMPOUT(0x1868CA3F4);
  }

  __cxa_free_exception(v60);
  goto LABEL_8;
}

void addr_obj::leftBracket(uint64_t a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      *a3 = *a1;
      return;
    }

    goto LABEL_5;
  }

  if (*(a1 + 8))
  {
LABEL_5:
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a2, a1, a3);
    return;
  }

  std::string::__init_copy_ctor_external(a3, *a1, 0);
}

_BYTE *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(char a1@<W0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v5 + 1);
  if (result[23] >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  *v7 = a1;
  v8 = v7 + 1;
  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  *(v8 + v5) = 0;
  return result;
}

void addr_obj::rightBracket(uint64_t a1@<X0>, std::string *a2@<X8>, uint64_t a3@<X1>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      *a2 = *a1;
      return;
    }

    goto LABEL_5;
  }

  if (*(a1 + 8))
  {
LABEL_5:
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, *(a3 + 1), a2);
    return;
  }

  std::string::__init_copy_ctor_external(a2, *a1, 0);
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v5 + 1);
  if (result[23] >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

void addr_obj::bothBrackets(uint64_t a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      *&a3->__r_.__value_.__l.__data_ = *a1;
      v5 = *(a1 + 16);
LABEL_6:
      a3->__r_.__value_.__r.__words[2] = v5;
      return;
    }

LABEL_5:
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a2, a1, &v7);
    std::string::push_back(&v7, a2[1]);
    *&a3->__r_.__value_.__l.__data_ = *&v7.__r_.__value_.__l.__data_;
    v5 = v7.__r_.__value_.__r.__words[2];
    goto LABEL_6;
  }

  if (*(a1 + 8))
  {
    goto LABEL_5;
  }

  v6 = *a1;

  std::string::__init_copy_ctor_external(a3, v6, 0);
}

void sub_1868CA660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *addr_obj::operator<<(void *a1, AddrObjGoogle::protobuf::Message *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "AddressObjectProto: ", 20);
  AddrObjGoogle::protobuf::Message::ShortDebugString(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1868CA708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *addr_obj::emptyString(addr_obj *this)
{
  if ((atomic_load_explicit(&qword_1EA905378, memory_order_acquire) & 1) == 0)
  {
    sub_186843A64();
  }

  return &xmmword_1EA905380;
}

BOOL addr_obj::sameCountry(addr_obj *this, const addr_obj::AddressObjectBase *a2, const addr_obj::AddressObjectBase *a3)
{
  (*(*this + 176))(v14);
  (*(*a2 + 176))(__p, a2);
  v4 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v5 = v15;
  }

  else
  {
    v5 = v14[1];
  }

  v6 = v13;
  if (v5 && ((v13 & 0x80u) == 0 ? (v7 = v13) : (v7 = __p[1]), v5 == v7))
  {
    if ((v15 & 0x80u) == 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = v14[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = memcmp(v8, v9, v5) == 0;
    if ((v6 & 0x80) != 0)
    {
LABEL_20:
      operator delete(__p[0]);
      if ((v15 & 0x80) != 0)
      {
        goto LABEL_21;
      }

      return v10;
    }
  }

  else
  {
    v10 = 0;
    if ((v13 & 0x80) != 0)
    {
      goto LABEL_20;
    }
  }

  if ((v4 & 0x80) != 0)
  {
LABEL_21:
    operator delete(v14[0]);
  }

  return v10;
}

void addr_obj::protobuf_AssignDesc_AddressObject_2eproto(addr_obj *this, uint64_t a2, uint64_t a3, const char *a4)
{
  addr_obj::protobuf_AddDesc_AddressObject_2eproto(this, a2, a3, a4);
  v5 = AddrObjGoogle::protobuf::DescriptorPool::generated_pool(v4);
  *(&__p[0].__r_.__value_.__s + 23) = 19;
  strcpy(__p, "AddressObject.proto");
  FileByName = AddrObjGoogle::protobuf::DescriptorPool::FindFileByName(v5, __p);
  v7 = FileByName;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (FileByName)
  {
    goto LABEL_6;
  }

  AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 73);
  v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: file != NULL: ");
  AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v9, v8);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
LABEL_6:
  qword_1EA905398 = *(v7 + 80);
  operator new();
}

uint64_t addr_obj::protobuf_ShutdownFile_AddressObject_2eproto(addr_obj *this)
{
  v1 = addr_obj::LocalizationProto::default_instance_(this);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  v2 = qword_1EA9053A0;
  if (qword_1EA9053A0)
  {
    v2 = (*(*qword_1EA9053A0 + 8))(qword_1EA9053A0);
  }

  v3 = addr_obj::FingerprintProto::default_instance_(v2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = qword_1EA9053B0;
  if (qword_1EA9053B0)
  {
    v4 = (*(*qword_1EA9053B0 + 8))(qword_1EA9053B0);
  }

  v5 = addr_obj::AddressObjectProto::default_instance_(v4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = qword_1EA9053C0;
  if (qword_1EA9053C0)
  {
    v6 = (*(*qword_1EA9053C0 + 8))(qword_1EA9053C0);
  }

  v7 = addr_obj::V0AddressObjectProto::default_instance_(v6);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = qword_1EA9053D0;
  if (qword_1EA9053D0)
  {
    v8 = (*(*qword_1EA9053D0 + 8))(qword_1EA9053D0);
  }

  v9 = addr_obj::V1AddressObjectProto::default_instance_(v8);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = qword_1EA9053E0;
  if (qword_1EA9053E0)
  {
    v10 = (*(*qword_1EA9053E0 + 8))(qword_1EA9053E0);
  }

  v11 = addr_obj::V2AddressObjectProto::default_instance_(v10);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = qword_1EA9053F0;
  if (qword_1EA9053F0)
  {
    v12 = (*(*qword_1EA9053F0 + 8))(qword_1EA9053F0);
  }

  v13 = addr_obj::VenueDecoratorProto::default_instance_(v12);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = qword_1EA905400;
  if (qword_1EA905400)
  {
    v14 = (*(*qword_1EA905400 + 8))(qword_1EA905400);
  }

  v15 = addr_obj::VenueFieldProto::default_instance_(v14);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = qword_1EA905410;
  if (qword_1EA905410)
  {
    v16 = (*(*qword_1EA905410 + 8))(qword_1EA905410);
  }

  v17 = addr_obj::VenueTemplateProto::default_instance_(v16);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = qword_1EA905420;
  if (qword_1EA905420)
  {
    v18 = (*(*qword_1EA905420 + 8))(qword_1EA905420);
  }

  v19 = addr_obj::VenueFormatterProto::default_instance_(v18);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = qword_1EA905430;
  if (qword_1EA905430)
  {
    v20 = (*(*qword_1EA905430 + 8))(qword_1EA905430);
  }

  v21 = addr_obj::VenueInfoProto::default_instance_(v20);
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = qword_1EA905440;
  if (qword_1EA905440)
  {
    v22 = (*(*qword_1EA905440 + 8))(qword_1EA905440);
  }

  v23 = addr_obj::V3AddressObjectProto::default_instance_(v22);
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = qword_1EA905458;
  if (qword_1EA905458)
  {
    v24 = (*(*qword_1EA905458 + 8))(qword_1EA905458);
  }

  v25 = addr_obj::V4AddressObjectProto::default_instance_(v24);
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  result = qword_1EA905468;
  if (qword_1EA905468)
  {
    v27 = *(*qword_1EA905468 + 8);

    return v27();
  }

  return result;
}

void addr_obj::LocalizationProto::MergeFrom(addr_obj::LocalizationProto *this, const addr_obj::LocalizationProto *a2)
{
  v3 = this;
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 773);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v12, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 2);
      *(v3 + 11) |= 1u;
      v7 = *(v3 + 2);
      if (v7 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      this = std::string::operator=(*(v3 + 2), v6);
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 3);
    *(v3 + 11) |= 2u;
    v9 = *(v3 + 3);
    if (v9 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(v3 + 3), v8);
    if ((*(a2 + 11) & 4) != 0)
    {
LABEL_16:
      v10 = *(a2 + 4);
      *(v3 + 11) |= 4u;
      v11 = *(v3 + 4);
      if (v11 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      std::string::operator=(*(v3 + 4), v10);
    }
  }

LABEL_19:
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((v3 + 8), (a2 + 8));
}

void sub_1868CB638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *addr_obj::LocalizationProto::Clear(uint64_t *this)
{
  v1 = this;
  if (*(this + 44))
  {
    if (*(this + 44))
    {
      v2 = this[2];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v2 != this)
      {
        v3 = v1[2];
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 44) & 2) != 0)
    {
      v4 = v1[3];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v4 != this)
      {
        v5 = v1[3];
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 44) & 4) != 0)
    {
      v6 = v1[4];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v6 != this)
      {
        v7 = v1[4];
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }
  }

  v9 = v1[1];
  v8 = v1 + 1;
  *(v8 + 9) = 0;
  if (v9)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v8);
  }

  return this;
}

uint64_t **addr_obj::LocalizationProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 11);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(2, *(v4 + 24), a2);
    if ((*(v4 + 44) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[2], a2);
  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 4) != 0)
  {
LABEL_4:
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(3, *(v4 + 32), a2);
  }

LABEL_5:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::LocalizationProto::SerializeWithCachedSizesToArray(addr_obj::LocalizationProto *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 11);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 10;
    v8 = a2 + 1;
    v9 = *(v7 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v7 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = v4 + 2;
    }

    v11 = *(v7 + 23);
    if (v11 >= 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    if (v11 >= 0)
    {
      v13 = *(v7 + 23);
    }

    else
    {
      v13 = *(v7 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
    v6 = *(this + 11);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(this + 3);
  *v4 = 18;
  v15 = *(v14 + 23);
  if ((v15 & 0x8000000000000000) != 0)
  {
    v15 = *(v14 + 8);
  }

  if (v15 > 0x7F)
  {
    v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v15;
    v16 = v4 + 2;
  }

  v17 = *(v14 + 23);
  if (v17 >= 0)
  {
    v18 = v14;
  }

  else
  {
    v18 = *v14;
  }

  if (v17 >= 0)
  {
    v19 = *(v14 + 23);
  }

  else
  {
    v19 = *(v14 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v18, v19, v16, a4);
  if ((*(this + 11) & 4) != 0)
  {
LABEL_29:
    v20 = *(this + 4);
    *v4 = 26;
    v21 = *(v20 + 23);
    if ((v21 & 0x8000000000000000) != 0)
    {
      v21 = *(v20 + 8);
    }

    if (v21 > 0x7F)
    {
      v22 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v21;
      v22 = v4 + 2;
    }

    v23 = *(v20 + 23);
    if (v23 >= 0)
    {
      v24 = v20;
    }

    else
    {
      v24 = *v20;
    }

    if (v23 >= 0)
    {
      v25 = *(v20 + 23);
    }

    else
    {
      v25 = *(v20 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v24, v25, v22, a4);
  }

LABEL_41:
  v28 = *(this + 1);
  v27 = (this + 8);
  v26 = v28;
  if (!v28 || *v26 == v26[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v27, v4, a3, a4);
}

uint64_t addr_obj::LocalizationProto::ByteSize(addr_obj::LocalizationProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_34;
  }

  if (*(this + 44))
  {
    v5 = *(this + 2);
    v6 = *(v5 + 23);
    v7 = v6;
    v8 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v9 = *(v5 + 23);
    }

    else
    {
      v9 = v8;
    }

    if (v9 >= 0x80)
    {
      v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v10 = v11 + 1;
      v3 = *(this + 11);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 2;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v4 = (v10 + v6);
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v4 = 0;
  if ((*(this + 44) & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 3);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(this + 11);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_24:
  if ((v3 & 4) != 0)
  {
    v18 = *(this + 4);
    v19 = *(v18 + 23);
    v20 = v19;
    v21 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v22 = *(v18 + 23);
    }

    else
    {
      v22 = v21;
    }

    if (v22 >= 0x80)
    {
      v23 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      v19 = *(v18 + 23);
      v21 = *(v18 + 8);
      v20 = *(v18 + 23);
    }

    else
    {
      v23 = 1;
    }

    if (v20 < 0)
    {
      v19 = v21;
    }

    v4 = (v4 + v23 + v19 + 1);
  }

LABEL_34:
  v24 = *(this + 1);
  if (v24 && *v24 != v24[1])
  {
    v4 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v4;
  }

  *(this + 10) = v4;
  return v4;
}

void addr_obj::LocalizationProto::MergeFrom(addr_obj::LocalizationProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 761);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::LocalizationProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868CBC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::LocalizationProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::LocalizationProto::GetMetadata(addr_obj::LocalizationProto *this)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905398;
}

void sub_1868CBD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void addr_obj::FingerprintProto::MergeFrom(addr_obj::FingerprintProto *this, const addr_obj::FingerprintProto *a2)
{
  v3 = this;
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 1146);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v13, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (!v5)
  {
    goto LABEL_21;
  }

  if ((*(a2 + 52) & 1) == 0)
  {
    if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v8 = *(a2 + 3);
    *(v3 + 13) |= 2u;
    *(v3 + 3) = v8;
    v5 = *(a2 + 13);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v6 = *(a2 + 2);
  *(v3 + 13) |= 1u;
  v7 = *(v3 + 2);
  if (v7 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 2), v6);
  v5 = *(a2 + 13);
  if ((v5 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_14:
  v9 = *(a2 + 4);
  *(v3 + 13) |= 4u;
  v10 = *(v3 + 4);
  if (v10 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 4), v9);
  if ((*(a2 + 13) & 8) != 0)
  {
LABEL_18:
    v11 = *(a2 + 5);
    *(v3 + 13) |= 8u;
    v12 = *(v3 + 5);
    if (v12 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    std::string::operator=(*(v3 + 5), v11);
  }

LABEL_21:
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((v3 + 8), (a2 + 8));
}

void sub_1868CBF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::FingerprintProto::default_instance(addr_obj::FingerprintProto *this)
{
  v1 = addr_obj::FingerprintProto::default_instance_(this);
  if (!v1)
  {
    addr_obj::protobuf_AddDesc_AddressObject_2eproto(0, v2, v3, v4);
  }

  return addr_obj::FingerprintProto::default_instance_(v1);
}

uint64_t *addr_obj::FingerprintProto::Clear(uint64_t *this)
{
  v1 = this;
  if (*(this + 52))
  {
    if (*(this + 52))
    {
      v2 = this[2];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v2 != this)
      {
        v3 = v1[2];
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    v1[3] = 0;
    if ((*(v1 + 52) & 4) != 0)
    {
      v4 = v1[4];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v4 != this)
      {
        v5 = v1[4];
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 52) & 8) != 0)
    {
      v6 = v1[5];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v6 != this)
      {
        v7 = v1[5];
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }
  }

  v9 = v1[1];
  v8 = v1 + 1;
  *(v8 + 11) = 0;
  if (v9)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v8);
  }

  return this;
}

uint64_t **addr_obj::FingerprintProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 13);
  if (v6)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[2], a2);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(3, *(v5 + 32), a2);
      if ((*(v5 + 52) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteSInt64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v6 & 8) != 0)
  {
LABEL_5:
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(4, *(v5 + 40), a2);
  }

LABEL_6:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::FingerprintProto::SerializeWithCachedSizesToArray(addr_obj::FingerprintProto *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 13);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 10;
    v8 = a2 + 1;
    v9 = *(v7 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v7 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = v4 + 2;
    }

    v11 = *(v7 + 23);
    if (v11 >= 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    if (v11 >= 0)
    {
      v13 = *(v7 + 23);
    }

    else
    {
      v13 = *(v7 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
    v6 = *(this + 13);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(this + 3);
  *v4 = 16;
  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray((2 * v14) ^ (v14 >> 63), v4 + 1, a3);
  v6 = *(this + 13);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_31;
  }

LABEL_19:
  v15 = *(this + 4);
  *v4 = 26;
  v16 = *(v15 + 23);
  if ((v16 & 0x8000000000000000) != 0)
  {
    v16 = *(v15 + 8);
  }

  if (v16 > 0x7F)
  {
    v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v16;
    v17 = v4 + 2;
  }

  v18 = *(v15 + 23);
  if (v18 >= 0)
  {
    v19 = v15;
  }

  else
  {
    v19 = *v15;
  }

  if (v18 >= 0)
  {
    v20 = *(v15 + 23);
  }

  else
  {
    v20 = *(v15 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v19, v20, v17, a4);
  if ((*(this + 13) & 8) != 0)
  {
LABEL_31:
    v21 = *(this + 5);
    *v4 = 34;
    v22 = *(v21 + 23);
    if ((v22 & 0x8000000000000000) != 0)
    {
      v22 = *(v21 + 8);
    }

    if (v22 > 0x7F)
    {
      v23 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v22;
      v23 = v4 + 2;
    }

    v24 = *(v21 + 23);
    if (v24 >= 0)
    {
      v25 = v21;
    }

    else
    {
      v25 = *v21;
    }

    if (v24 >= 0)
    {
      v26 = *(v21 + 23);
    }

    else
    {
      v26 = *(v21 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v25, v26, v23, a4);
  }

LABEL_43:
  v29 = *(this + 1);
  v28 = (this + 8);
  v27 = v29;
  if (!v29 || *v27 == v27[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v28, v4, a3, a4);
}

uint64_t addr_obj::FingerprintProto::ByteSize(addr_obj::FingerprintProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_37;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_15:
    v4 = v4 + AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64((2 * *(this + 3)) ^ (*(this + 3) >> 63)) + 1;
    v3 = *(this + 13);
    goto LABEL_16;
  }

  v5 = *(this + 2);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 13);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v12 = *(this + 4);
  v13 = *(v12 + 23);
  v14 = v13;
  v15 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v16 = *(v12 + 23);
  }

  else
  {
    v16 = v15;
  }

  if (v16 >= 0x80)
  {
    v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    v13 = *(v12 + 23);
    v15 = *(v12 + 8);
    v3 = *(this + 13);
    v14 = *(v12 + 23);
  }

  else
  {
    v17 = 1;
  }

  if (v14 < 0)
  {
    v13 = v15;
  }

  v4 = (v4 + v17 + v13 + 1);
  if ((v3 & 8) != 0)
  {
LABEL_28:
    v18 = *(this + 5);
    v19 = *(v18 + 23);
    v20 = v19;
    v21 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v22 = *(v18 + 23);
    }

    else
    {
      v22 = v21;
    }

    if (v22 >= 0x80)
    {
      v23 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      v19 = *(v18 + 23);
      v21 = *(v18 + 8);
      v20 = *(v18 + 23);
    }

    else
    {
      v23 = 1;
    }

    if (v20 < 0)
    {
      v19 = v21;
    }

    v4 = (v4 + v23 + v19 + 1);
  }

LABEL_37:
  v24 = *(this + 1);
  if (v24 && *v24 != v24[1])
  {
    v4 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v4;
  }

  *(this + 12) = v4;
  return v4;
}

void addr_obj::FingerprintProto::MergeFrom(addr_obj::FingerprintProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 1134);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::FingerprintProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868CC620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::FingerprintProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::FingerprintProto::GetMetadata(addr_obj::FingerprintProto *this)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9053A8;
}

void sub_1868CC760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void addr_obj::AddressObjectProto::MergeFrom(addr_obj::AddressObjectProto *this, const addr_obj::AddressObjectProto *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 1619);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v23, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
  }

  v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 8, *(a2 + 10) + *(this + 10));
  if (*(a2 + 10) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 4) + 8 * v6);
      v8 = *(this + 11);
      v9 = *(this + 10);
      if (v9 >= v8)
      {
        if (v8 == *(this + 12))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 8, v8 + 1);
          v8 = *(this + 11);
        }

        *(this + 11) = v8 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::FingerprintProto>::New();
      }

      v10 = *(this + 4);
      *(this + 10) = v9 + 1;
      addr_obj::FingerprintProto::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 10));
  }

  LOBYTE(v11) = *(a2 + 88);
  if (!v11)
  {
    goto LABEL_44;
  }

  if (*(a2 + 88))
  {
    v12 = *(a2 + 20);
    *(this + 22) |= 1u;
    *(this + 20) = v12;
    v11 = *(a2 + 22);
    if ((v11 & 2) == 0)
    {
LABEL_14:
      if ((v11 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a2 + 88) & 2) == 0)
  {
    goto LABEL_14;
  }

  v13 = *(a2 + 2);
  *(this + 22) |= 2u;
  v14 = *(this + 2);
  if (v14 == AddrObjGoogle::protobuf::internal::kEmptyString(v5))
  {
    operator new();
  }

  v5 = std::string::operator=(*(this + 2), v13);
  v11 = *(a2 + 22);
  if ((v11 & 4) == 0)
  {
LABEL_15:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_29:
    *(this + 22) |= 0x10u;
    v17 = *(this + 7);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 7);
    if (!v18)
    {
      v18 = *(addr_obj::AddressObjectProto::default_instance_(v5) + 56);
    }

    addr_obj::V0AddressObjectProto::MergeFrom(v17, v18);
    v11 = *(a2 + 22);
    if ((v11 & 0x20) == 0)
    {
LABEL_17:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_39;
    }

    goto LABEL_34;
  }

LABEL_24:
  *(this + 22) |= 4u;
  v15 = *(this + 3);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 3);
  if (!v16)
  {
    v16 = *(addr_obj::AddressObjectProto::default_instance_(v5) + 24);
  }

  addr_obj::LocalizationProto::MergeFrom(v15, v16);
  v11 = *(a2 + 22);
  if ((v11 & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_16:
  if ((v11 & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_34:
  *(this + 22) |= 0x20u;
  v19 = *(this + 8);
  if (!v19)
  {
    operator new();
  }

  v20 = *(a2 + 8);
  if (!v20)
  {
    v20 = *(addr_obj::AddressObjectProto::default_instance_(v5) + 64);
  }

  addr_obj::V1AddressObjectProto::MergeFrom(v19, v20);
  if ((*(a2 + 22) & 0x40) != 0)
  {
LABEL_39:
    *(this + 22) |= 0x40u;
    v21 = *(this + 9);
    if (!v21)
    {
      operator new();
    }

    v22 = *(a2 + 9);
    if (!v22)
    {
      v22 = *(addr_obj::AddressObjectProto::default_instance_(v5) + 72);
    }

    addr_obj::VenueInfoProto::MergeFrom(v21, v22);
  }

LABEL_44:
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

uint64_t addr_obj::AddressObjectProto::default_instance(addr_obj::AddressObjectProto *this)
{
  v1 = addr_obj::AddressObjectProto::default_instance_(this);
  if (!v1)
  {
    addr_obj::protobuf_AddDesc_AddressObject_2eproto(0, v2, v3, v4);
  }

  return addr_obj::AddressObjectProto::default_instance_(v1);
}

uint64_t *addr_obj::V0AddressObjectProto::Clear(uint64_t *this)
{
  v1 = this;
  if (*(this + 92))
  {
    if (*(this + 92))
    {
      v2 = this[2];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v2 != this)
      {
        v3 = v1[2];
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 92) & 2) != 0)
    {
      v4 = v1[3];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v4 != this)
      {
        v5 = v1[3];
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 92) & 4) != 0)
    {
      v6 = v1[4];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v6 != this)
      {
        v7 = v1[4];
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 92) & 8) != 0)
    {
      v8 = v1[5];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v8 != this)
      {
        v9 = v1[5];
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 92) & 0x10) != 0)
    {
      v10 = v1[6];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v10 != this)
      {
        v11 = v1[6];
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 8) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 92) & 0x20) != 0)
    {
      v12 = v1[7];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v12 != this)
      {
        v13 = v1[7];
        if (*(v13 + 23) < 0)
        {
          **v13 = 0;
          *(v13 + 8) = 0;
        }

        else
        {
          *v13 = 0;
          *(v13 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 92) & 0x40) != 0)
    {
      v14 = v1[8];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v14 != this)
      {
        v15 = v1[8];
        if (*(v15 + 23) < 0)
        {
          **v15 = 0;
          *(v15 + 8) = 0;
        }

        else
        {
          *v15 = 0;
          *(v15 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 92) & 0x80) != 0)
    {
      v16 = v1[9];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v16 != this)
      {
        v17 = v1[9];
        if (*(v17 + 23) < 0)
        {
          **v17 = 0;
          *(v17 + 8) = 0;
        }

        else
        {
          *v17 = 0;
          *(v17 + 23) = 0;
        }
      }
    }
  }

  if (*(v1 + 93))
  {
    v18 = v1[10];
    this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
    if (v18 != this)
    {
      v19 = v1[10];
      if (*(v19 + 23) < 0)
      {
        **v19 = 0;
        *(v19 + 8) = 0;
      }

      else
      {
        *v19 = 0;
        *(v19 + 23) = 0;
      }
    }
  }

  v21 = v1[1];
  v20 = v1 + 1;
  *(v20 + 21) = 0;
  if (v21)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v20);
  }

  return this;
}

AddrObjGoogle::protobuf::internal *addr_obj::V1AddressObjectProto::Clear(addr_obj::V1AddressObjectProto *this)
{
  result = AddrObjGoogle::protobuf::internal::ExtensionSet::Clear(this + 8);
  if (*(this + 100))
  {
    if (*(this + 100))
    {
      v3 = *(this + 5);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v3 != result)
      {
        v4 = *(this + 5);
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    v5 = *(this + 25);
    if ((v5 & 2) != 0)
    {
      result = *(this + 6);
      if (result)
      {
        result = addr_obj::geo3::Address::Clear(result);
        v5 = *(this + 25);
      }
    }

    if ((v5 & 4) != 0)
    {
      v6 = *(this + 7);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v6 != result)
      {
        v7 = *(this + 7);
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((*(this + 100) & 8) != 0)
    {
      v8 = *(this + 8);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v8 != result)
      {
        v9 = *(this + 8);
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    v10 = *(this + 25);
    if ((v10 & 0x10) != 0)
    {
      result = *(this + 9);
      if (result)
      {
        result = addr_obj::geo3::StructuredAddress::Clear(result);
        v10 = *(this + 25);
      }
    }

    if ((v10 & 0x20) != 0)
    {
      v11 = *(this + 10);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v11 != result)
      {
        v12 = *(this + 10);
        if (*(v12 + 23) < 0)
        {
          **v12 = 0;
          *(v12 + 8) = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 23) = 0;
        }
      }
    }

    if ((*(this + 100) & 0x40) != 0)
    {
      result = *(this + 11);
      if (result)
      {
        result = addr_obj::geo3::Address::Clear(result);
      }
    }
  }

  v14 = *(this + 4);
  v13 = this + 32;
  *(v13 + 17) = 0;
  if (v14)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v13);
  }

  return result;
}

uint64_t **addr_obj::VenueInfoProto::Clear(addr_obj::VenueInfoProto *this)
{
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 16);
  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 40);
  v4 = *(this + 1);
  v3 = this + 8;
  *(v3 + 15) = 0;
  if (v4)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t **addr_obj::AddressObjectProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 22);
  if (v6)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 20), a2, a4);
    v6 = *(v5 + 22);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(2, v5[2], a2);
  if ((v5[11] & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = v5[3];
  if (!v7)
  {
    v7 = *(addr_obj::AddressObjectProto::default_instance_(this) + 24);
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v7, a2);
LABEL_10:
  if (*(v5 + 10) >= 1)
  {
    v8 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v5[4][v8++], a2);
    }

    while (v8 < *(v5 + 10));
  }

  v9 = *(v5 + 22);
  if ((v9 & 0x40) != 0)
  {
    v10 = v5[9];
    if (!v10)
    {
      v10 = *(addr_obj::AddressObjectProto::default_instance_(this) + 72);
    }

    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v10, a2);
    v9 = *(v5 + 22);
    if ((v9 & 0x10) == 0)
    {
LABEL_15:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  else if ((v9 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  v11 = v5[7];
  if (!v11)
  {
    v11 = *(addr_obj::AddressObjectProto::default_instance_(this) + 56);
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(100, v11, a2);
  if ((v5[11] & 0x20) != 0)
  {
LABEL_23:
    v12 = v5[8];
    if (!v12)
    {
      v12 = *(addr_obj::AddressObjectProto::default_instance_(this) + 64);
    }

    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(101, v12, a2);
  }

LABEL_26:
  v15 = v5[1];
  v14 = v5 + 1;
  v13 = v15;
  if (v15 && *v13 != v13[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v14, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::AddressObjectProto::SerializeWithCachedSizesToArray(unint64_t this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v5 = this;
  if (*(this + 88))
  {
    this = *(this + 80);
    *a2 = 8;
    v6 = a2 + 1;
    if ((this & 0x80000000) != 0)
    {
      this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(this, v6, a3);
    }

    else
    {
      if (this <= 0x7F)
      {
        *(v4 + 1) = this;
        v4 = (v4 + 2);
        goto LABEL_8;
      }

      this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(this, v6, a3);
    }

    v4 = this;
  }

LABEL_8:
  v7 = *(v5 + 88);
  if ((v7 & 2) != 0)
  {
    v8 = *(v5 + 16);
    *v4 = 18;
    v9 = *(v8 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v8 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = v4 + 2;
    }

    v11 = *(v8 + 23);
    if (v11 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = *v8;
    }

    if (v11 >= 0)
    {
      v13 = *(v8 + 23);
    }

    else
    {
      v13 = *(v8 + 8);
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
    v4 = this;
    v7 = *(v5 + 88);
  }

  if ((v7 & 4) != 0)
  {
    v14 = *(v5 + 24);
    if (!v14)
    {
      v14 = *(addr_obj::AddressObjectProto::default_instance_(this) + 24);
    }

    *v4 = 26;
    v15 = v14[10];
    if (v15 > 0x7F)
    {
      v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v15;
      v16 = (v4 + 2);
    }

    this = addr_obj::LocalizationProto::SerializeWithCachedSizesToArray(v14, v16, a3, a4);
    v4 = this;
  }

  if (*(v5 + 40) >= 1)
  {
    v17 = 0;
    do
    {
      v18 = *(*(v5 + 32) + 8 * v17);
      *v4 = 34;
      v19 = v18[12];
      if (v19 > 0x7F)
      {
        v20 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v19;
        v20 = (v4 + 2);
      }

      this = addr_obj::FingerprintProto::SerializeWithCachedSizesToArray(v18, v20, a3, a4);
      v4 = this;
      ++v17;
    }

    while (v17 < *(v5 + 40));
  }

  v21 = *(v5 + 88);
  if ((v21 & 0x40) != 0)
  {
    v22 = *(v5 + 72);
    if (!v22)
    {
      v22 = *(addr_obj::AddressObjectProto::default_instance_(this) + 72);
    }

    *v4 = 42;
    v23 = v22[16];
    if (v23 > 0x7F)
    {
      v24 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v23;
      v24 = (v4 + 2);
    }

    this = addr_obj::VenueInfoProto::SerializeWithCachedSizesToArray(v22, v24, a3, a4);
    v4 = this;
    v21 = *(v5 + 88);
    if ((v21 & 0x10) == 0)
    {
LABEL_36:
      if ((v21 & 0x20) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_50;
    }
  }

  else if ((v21 & 0x10) == 0)
  {
    goto LABEL_36;
  }

  v25 = *(v5 + 56);
  if (!v25)
  {
    v25 = *(addr_obj::AddressObjectProto::default_instance_(this) + 56);
  }

  *v4 = 1698;
  v26 = v25[22];
  if (v26 > 0x7F)
  {
    v27 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v26;
    v27 = (v4 + 3);
  }

  this = addr_obj::V0AddressObjectProto::SerializeWithCachedSizesToArray(v25, v27, a3, a4);
  v4 = this;
  if ((*(v5 + 88) & 0x20) != 0)
  {
LABEL_50:
    v28 = *(v5 + 64);
    if (!v28)
    {
      v28 = *(addr_obj::AddressObjectProto::default_instance_(this) + 64);
    }

    *v4 = 1706;
    v29 = v28[24];
    if (v29 > 0x7F)
    {
      v30 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v29;
      v30 = v4 + 3;
    }

    v4 = addr_obj::V1AddressObjectProto::SerializeWithCachedSizesToArray(v28, v30, a3, a4);
  }

LABEL_56:
  v33 = *(v5 + 8);
  v32 = (v5 + 8);
  v31 = v33;
  if (!v33 || *v31 == v31[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v32, v4, a3, a4);
}

uint64_t addr_obj::AddressObjectProto::ByteSize(addr_obj::AddressObjectProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 88);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_51;
  }

  if (*(this + 88))
  {
    v5 = *(this + 20);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 22);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 88) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v6 = *(this + 2);
  v7 = *(v6 + 23);
  v8 = v7;
  v9 = *(v6 + 8);
  if ((v7 & 0x80u) == 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = v9;
  }

  if (v10 >= 0x80)
  {
    v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    v7 = *(v6 + 23);
    v9 = *(v6 + 8);
    v3 = *(this + 22);
    v8 = *(v6 + 23);
  }

  else
  {
    v11 = 1;
  }

  if (v8 < 0)
  {
    v7 = v9;
  }

  v4 += v11 + v7 + 1;
LABEL_22:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 3);
    if (!v12)
    {
      v12 = *(addr_obj::AddressObjectProto::default_instance_(0) + 24);
    }

    v13 = addr_obj::LocalizationProto::ByteSize(v12, a2);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v4 += v14 + v15 + 1;
    v3 = *(this + 22);
    if ((v3 & 0x10) == 0)
    {
LABEL_24:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_39;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_24;
  }

  v16 = *(this + 7);
  if (!v16)
  {
    v16 = *(addr_obj::AddressObjectProto::default_instance_(0) + 56);
  }

  v17 = addr_obj::V0AddressObjectProto::ByteSize(v16, a2);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
  }

  else
  {
    v19 = 1;
  }

  v4 += v18 + v19 + 2;
  v3 = *(this + 22);
  if ((v3 & 0x20) == 0)
  {
LABEL_25:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

LABEL_39:
  v20 = *(this + 8);
  if (!v20)
  {
    v20 = *(addr_obj::AddressObjectProto::default_instance_(0) + 64);
  }

  v21 = addr_obj::V1AddressObjectProto::ByteSize(v20, a2);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
  }

  else
  {
    v23 = 1;
  }

  v4 += v22 + v23 + 2;
  if ((*(this + 22) & 0x40) != 0)
  {
LABEL_45:
    v24 = *(this + 9);
    if (!v24)
    {
      v24 = *(addr_obj::AddressObjectProto::default_instance_(0) + 72);
    }

    v25 = addr_obj::VenueInfoProto::ByteSize(v24, a2);
    v26 = v25;
    if (v25 >= 0x80)
    {
      v27 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
    }

    else
    {
      v27 = 1;
    }

    v4 += v26 + v27 + 1;
  }

LABEL_51:
  v28 = *(this + 10);
  v29 = (v28 + v4);
  if (v28 >= 1)
  {
    v30 = 0;
    do
    {
      v31 = addr_obj::FingerprintProto::ByteSize(*(*(this + 4) + 8 * v30), a2);
      v32 = v31;
      if (v31 >= 0x80)
      {
        v33 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
      }

      else
      {
        v33 = 1;
      }

      v29 = (v32 + v29 + v33);
      ++v30;
    }

    while (v30 < *(this + 10));
  }

  v34 = *(this + 1);
  if (v34 && *v34 != v34[1])
  {
    v29 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v29;
  }

  *(this + 21) = v29;
  return v29;
}

void addr_obj::AddressObjectProto::MergeFrom(addr_obj::AddressObjectProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 1607);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::AddressObjectProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868CD774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void addr_obj::V0AddressObjectProto::MergeFrom(addr_obj::V0AddressObjectProto *this, const addr_obj::V0AddressObjectProto *a2)
{
  v3 = this;
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 2295);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v24, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 23);
  if (!v5)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    v6 = *(a2 + 2);
    *(v3 + 23) |= 1u;
    v7 = *(v3 + 2);
    if (v7 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(v3 + 2), v6);
    v5 = *(a2 + 23);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 3);
  *(v3 + 23) |= 2u;
  v9 = *(v3 + 3);
  if (v9 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 3), v8);
  v5 = *(a2 + 23);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_22:
  v10 = *(a2 + 4);
  *(v3 + 23) |= 4u;
  v11 = *(v3 + 4);
  if (v11 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 4), v10);
  v5 = *(a2 + 23);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_26:
  v12 = *(a2 + 5);
  *(v3 + 23) |= 8u;
  v13 = *(v3 + 5);
  if (v13 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 5), v12);
  v5 = *(a2 + 23);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_30:
  v14 = *(a2 + 6);
  *(v3 + 23) |= 0x10u;
  v15 = *(v3 + 6);
  if (v15 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 6), v14);
  v5 = *(a2 + 23);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_34:
  v16 = *(a2 + 7);
  *(v3 + 23) |= 0x20u;
  v17 = *(v3 + 7);
  if (v17 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 7), v16);
  v5 = *(a2 + 23);
  if ((v5 & 0x40) != 0)
  {
LABEL_38:
    v18 = *(a2 + 8);
    *(v3 + 23) |= 0x40u;
    v19 = *(v3 + 8);
    if (v19 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(v3 + 8), v18);
    v5 = *(a2 + 23);
    if ((v5 & 0x80) != 0)
    {
      goto LABEL_42;
    }

LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

LABEL_11:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_12;
  }

LABEL_42:
  v20 = *(a2 + 9);
  *(v3 + 23) |= 0x80u;
  v21 = *(v3 + 9);
  if (v21 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 9), v20);
  if ((*(a2 + 23) & 0x100) != 0)
  {
LABEL_46:
    v22 = *(a2 + 10);
    *(v3 + 23) |= 0x100u;
    v23 = *(v3 + 10);
    if (v23 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    std::string::operator=(*(v3 + 10), v22);
  }

LABEL_49:
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((v3 + 8), (a2 + 8));
}

void sub_1868CDB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void addr_obj::V1AddressObjectProto::MergeFrom(addr_obj::V1AddressObjectProto *this, const addr_obj::V1AddressObjectProto *a2)
{
  v3 = this;
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 2850);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v20, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 100);
  if (!v5)
  {
    goto LABEL_42;
  }

  if (*(a2 + 100))
  {
    v6 = *(a2 + 5);
    *(v3 + 25) |= 1u;
    v7 = *(v3 + 5);
    if (v7 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(v3 + 5), v6);
    v5 = *(a2 + 25);
  }

  if ((v5 & 2) != 0)
  {
    *(v3 + 25) |= 2u;
    v8 = *(v3 + 6);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 6);
    if (!v9)
    {
      v9 = *(addr_obj::V1AddressObjectProto::default_instance_(this) + 48);
    }

    addr_obj::geo3::Address::MergeFrom(v8, v9);
    v5 = *(a2 + 25);
  }

  if ((v5 & 4) != 0)
  {
    v10 = *(a2 + 7);
    *(v3 + 25) |= 4u;
    v11 = *(v3 + 7);
    if (v11 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(v3 + 7), v10);
    v5 = *(a2 + 25);
    if ((v5 & 8) == 0)
    {
LABEL_16:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_17;
      }

LABEL_28:
      *(v3 + 25) |= 0x10u;
      v14 = *(v3 + 9);
      if (!v14)
      {
        operator new();
      }

      v15 = *(a2 + 9);
      if (!v15)
      {
        v15 = *(addr_obj::V1AddressObjectProto::default_instance_(this) + 72);
      }

      addr_obj::geo3::StructuredAddress::MergeFrom(v14, v15);
      v5 = *(a2 + 25);
      if ((v5 & 0x20) == 0)
      {
LABEL_18:
        if ((v5 & 0x40) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_37;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_16;
  }

  v12 = *(a2 + 8);
  *(v3 + 25) |= 8u;
  v13 = *(v3 + 8);
  if (v13 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 8), v12);
  v5 = *(a2 + 25);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_18;
  }

LABEL_33:
  v16 = *(a2 + 10);
  *(v3 + 25) |= 0x20u;
  v17 = *(v3 + 10);
  if (v17 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 10), v16);
  if ((*(a2 + 25) & 0x40) != 0)
  {
LABEL_37:
    *(v3 + 25) |= 0x40u;
    v18 = *(v3 + 11);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 11);
    if (!v19)
    {
      v19 = *(addr_obj::V1AddressObjectProto::default_instance_(this) + 88);
    }

    addr_obj::geo3::Address::MergeFrom(v18, v19);
  }

LABEL_42:
  AddrObjGoogle::protobuf::internal::ExtensionSet::MergeFrom((v3 + 8), a2 + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((v3 + 32), (a2 + 32));
}

void addr_obj::VenueInfoProto::MergeFrom(addr_obj::VenueInfoProto *this, const addr_obj::VenueInfoProto *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 5244);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v16, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, *(a2 + 6) + *(this + 6));
  if (*(a2 + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 2) + 8 * v6);
      v8 = *(this + 7);
      v9 = *(this + 6);
      if (v9 >= v8)
      {
        if (v8 == *(this + 8))
        {
          v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v8 + 1);
          v8 = *(this + 7);
        }

        *(this + 7) = v8 + 1;
        AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(v5);
      }

      v10 = *(this + 2);
      *(this + 6) = v9 + 1;
      v5 = std::string::operator=(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 6));
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, *(a2 + 12) + *(this + 12));
  if (*(a2 + 12) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(a2 + 5) + 8 * v11);
      v13 = *(this + 13);
      v14 = *(this + 12);
      if (v14 >= v13)
      {
        if (v13 == *(this + 14))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, v13 + 1);
          v13 = *(this + 13);
        }

        *(this + 13) = v13 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::VenueFormatterProto>::New();
      }

      v15 = *(this + 5);
      *(this + 12) = v14 + 1;
      addr_obj::VenueFormatterProto::MergeFrom(*(v15 + 8 * v14), v12);
      ++v11;
    }

    while (v11 < *(a2 + 12));
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_1868CE074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::AddressObjectProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

void addr_obj::AddressObjectProto::CopyFrom(AddrObjGoogle::protobuf::UnknownFieldSet *this, const addr_obj::AddressObjectProto *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    addr_obj::AddressObjectProto::MergeFrom(this, a2);
  }
}

uint64_t addr_obj::AddressObjectProto::GetMetadata(addr_obj::AddressObjectProto *this)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9053B8;
}

void sub_1868CE218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

addr_obj::V0AddressObjectProto *addr_obj::V0AddressObjectProto::V0AddressObjectProto(addr_obj::V0AddressObjectProto *this, const addr_obj::V0AddressObjectProto *a2)
{
  *this = &unk_1EF7DFF90;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  addr_obj::V0AddressObjectProto::SharedCtor(this);
  addr_obj::V0AddressObjectProto::MergeFrom(this, a2);
  return this;
}

void addr_obj::V0AddressObjectProto::~V0AddressObjectProto(addr_obj::V0AddressObjectProto *this)
{
  *this = &unk_1EF7DFF90;
  addr_obj::V0AddressObjectProto::SharedDtor(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::V0AddressObjectProto::~V0AddressObjectProto(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t addr_obj::V0AddressObjectProto::SharedDtor(addr_obj::V0AddressObjectProto *this)
{
  v2 = *(this + 2);
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  if (v2 != v3)
  {
    v4 = *(this + 2);
    if (v4)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v3 = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
    }
  }

  v5 = *(this + 3);
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  if (v5 != v6)
  {
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v6 = MEMORY[0x18CFD1E40](v7, 0x1012C40EC159624);
    }
  }

  v8 = *(this + 4);
  v9 = AddrObjGoogle::protobuf::internal::kEmptyString(v6);
  if (v8 != v9)
  {
    v10 = *(this + 4);
    if (v10)
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v9 = MEMORY[0x18CFD1E40](v10, 0x1012C40EC159624);
    }
  }

  v11 = *(this + 5);
  v12 = AddrObjGoogle::protobuf::internal::kEmptyString(v9);
  if (v11 != v12)
  {
    v13 = *(this + 5);
    if (v13)
    {
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      v12 = MEMORY[0x18CFD1E40](v13, 0x1012C40EC159624);
    }
  }

  v14 = *(this + 6);
  v15 = AddrObjGoogle::protobuf::internal::kEmptyString(v12);
  if (v14 != v15)
  {
    v16 = *(this + 6);
    if (v16)
    {
      if (*(v16 + 23) < 0)
      {
        operator delete(*v16);
      }

      v15 = MEMORY[0x18CFD1E40](v16, 0x1012C40EC159624);
    }
  }

  v17 = *(this + 7);
  v18 = AddrObjGoogle::protobuf::internal::kEmptyString(v15);
  if (v17 != v18)
  {
    v19 = *(this + 7);
    if (v19)
    {
      if (*(v19 + 23) < 0)
      {
        operator delete(*v19);
      }

      v18 = MEMORY[0x18CFD1E40](v19, 0x1012C40EC159624);
    }
  }

  v20 = *(this + 8);
  v21 = AddrObjGoogle::protobuf::internal::kEmptyString(v18);
  if (v20 != v21)
  {
    v22 = *(this + 8);
    if (v22)
    {
      if (*(v22 + 23) < 0)
      {
        operator delete(*v22);
      }

      v21 = MEMORY[0x18CFD1E40](v22, 0x1012C40EC159624);
    }
  }

  v23 = *(this + 9);
  v24 = AddrObjGoogle::protobuf::internal::kEmptyString(v21);
  if (v23 != v24)
  {
    v25 = *(this + 9);
    if (v25)
    {
      if (*(v25 + 23) < 0)
      {
        operator delete(*v25);
      }

      v24 = MEMORY[0x18CFD1E40](v25, 0x1012C40EC159624);
    }
  }

  v26 = *(this + 10);
  v27 = AddrObjGoogle::protobuf::internal::kEmptyString(v24);
  if (v26 != v27)
  {
    v28 = *(this + 10);
    if (v28)
    {
      if (*(v28 + 23) < 0)
      {
        operator delete(*v28);
      }

      v27 = MEMORY[0x18CFD1E40](v28, 0x1012C40EC159624);
    }
  }

  return addr_obj::V0AddressObjectProto::default_instance_(v27);
}

uint64_t addr_obj::V0AddressObjectProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(a2 + 1);
          if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
          {
            this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            v7 = this;
            *(a2 + 8) = this;
            if (!this)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = v7;
            *(a2 + 1) = v6 + 1;
            if (!v7)
            {
              return 1;
            }
          }

          v8 = v7 >> 3;
          v9 = v7 & 7;
          if (v7 >> 3 > 4)
          {
            break;
          }

          if (v7 >> 3 > 2)
          {
            if (v8 != 3)
            {
              if (v8 != 4 || v9 != 2)
              {
                goto LABEL_37;
              }

              goto LABEL_59;
            }

            if (v9 != 2)
            {
              goto LABEL_37;
            }

LABEL_52:
            *(v5 + 92) |= 4u;
            v14 = *(v5 + 32);
            if (v14 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
            {
              operator new();
            }

            this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 32));
            if (!this)
            {
              return this;
            }

            v15 = *(a2 + 1);
            if (v15 < *(a2 + 2) && *v15 == 34)
            {
              *(a2 + 1) = v15 + 1;
LABEL_59:
              *(v5 + 92) |= 8u;
              v16 = *(v5 + 40);
              if (v16 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
              {
                operator new();
              }

              this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 40));
              if (!this)
              {
                return this;
              }

              v17 = *(a2 + 1);
              if (v17 < *(a2 + 2) && *v17 == 42)
              {
                *(a2 + 1) = v17 + 1;
                goto LABEL_66;
              }
            }
          }

          else
          {
            if (v8 != 1)
            {
              if (v8 != 2 || v9 != 2)
              {
                goto LABEL_37;
              }

              goto LABEL_45;
            }

            if (v9 != 2)
            {
              goto LABEL_37;
            }

            *(v5 + 92) |= 1u;
            v10 = *(v5 + 16);
            if (v10 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
            {
              operator new();
            }

            this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 16));
            if (!this)
            {
              return this;
            }

            v11 = *(a2 + 1);
            if (v11 < *(a2 + 2) && *v11 == 18)
            {
              *(a2 + 1) = v11 + 1;
LABEL_45:
              *(v5 + 92) |= 2u;
              v12 = *(v5 + 24);
              if (v12 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
              {
                operator new();
              }

              this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 24));
              if (!this)
              {
                return this;
              }

              v13 = *(a2 + 1);
              if (v13 < *(a2 + 2) && *v13 == 26)
              {
                *(a2 + 1) = v13 + 1;
                goto LABEL_52;
              }
            }
          }
        }

        if (v7 >> 3 > 6)
        {
          break;
        }

        if (v8 != 5)
        {
          if (v8 != 6 || v9 != 2)
          {
            goto LABEL_37;
          }

          goto LABEL_73;
        }

        if (v9 != 2)
        {
          goto LABEL_37;
        }

LABEL_66:
        *(v5 + 92) |= 0x10u;
        v18 = *(v5 + 48);
        if (v18 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 48));
        if (!this)
        {
          return this;
        }

        v19 = *(a2 + 1);
        if (v19 < *(a2 + 2) && *v19 == 50)
        {
          *(a2 + 1) = v19 + 1;
LABEL_73:
          *(v5 + 92) |= 0x20u;
          v20 = *(v5 + 56);
          if (v20 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 56));
          if (!this)
          {
            return this;
          }

          v21 = *(a2 + 1);
          if (v21 < *(a2 + 2) && *v21 == 58)
          {
            *(a2 + 1) = v21 + 1;
LABEL_80:
            *(v5 + 92) |= 0x40u;
            v22 = *(v5 + 64);
            if (v22 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
            {
              operator new();
            }

            this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 64));
            if (!this)
            {
              return this;
            }

            v23 = *(a2 + 1);
            if (v23 < *(a2 + 2) && *v23 == 66)
            {
              *(a2 + 1) = v23 + 1;
              goto LABEL_87;
            }
          }
        }
      }

      if (v8 == 7)
      {
        if (v9 != 2)
        {
          goto LABEL_37;
        }

        goto LABEL_80;
      }

      if (v8 != 8)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_37;
      }

LABEL_87:
      *(v5 + 92) |= 0x80u;
      v24 = *(v5 + 72);
      if (v24 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 72));
      if (!this)
      {
        return this;
      }

      v25 = *(a2 + 1);
      if (v25 < *(a2 + 2) && *v25 == 74)
      {
        *(a2 + 1) = v25 + 1;
LABEL_94:
        *(v5 + 92) |= 0x100u;
        v26 = *(v5 + 80);
        if (v26 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 80));
        if (!this)
        {
          return this;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          this = 1;
          *(a2 + 36) = 1;
          return this;
        }
      }
    }

    if (v8 == 9 && v9 == 2)
    {
      goto LABEL_94;
    }

LABEL_37:
    if (v9 == 4)
    {
      return 1;
    }

    this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t **addr_obj::V0AddressObjectProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 23);
  if (v5)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[2], a2);
    v5 = *(v4 + 92);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(2, *(v4 + 24), a2);
  v5 = *(v4 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(3, *(v4 + 32), a2);
  v5 = *(v4 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(4, *(v4 + 40), a2);
  v5 = *(v4 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(5, *(v4 + 48), a2);
  v5 = *(v4 + 92);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(6, *(v4 + 56), a2);
  v5 = *(v4 + 92);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_24:
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(8, *(v4 + 72), a2);
    if ((*(v4 + 92) & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_23:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(7, *(v4 + 64), a2);
  v5 = *(v4 + 92);
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  if ((v5 & 0x100) != 0)
  {
LABEL_10:
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(9, *(v4 + 80), a2);
  }

LABEL_11:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::V0AddressObjectProto::SerializeWithCachedSizesToArray(addr_obj::V0AddressObjectProto *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 23);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 10;
    v8 = a2 + 1;
    v9 = *(v7 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v7 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = v4 + 2;
    }

    v11 = *(v7 + 23);
    if (v11 >= 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    if (v11 >= 0)
    {
      v13 = *(v7 + 23);
    }

    else
    {
      v13 = *(v7 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
    v6 = *(this + 23);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(this + 3);
  *v4 = 18;
  v15 = *(v14 + 23);
  if ((v15 & 0x8000000000000000) != 0)
  {
    v15 = *(v14 + 8);
  }

  if (v15 > 0x7F)
  {
    v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v15;
    v16 = v4 + 2;
  }

  v17 = *(v14 + 23);
  if (v17 >= 0)
  {
    v18 = v14;
  }

  else
  {
    v18 = *v14;
  }

  if (v17 >= 0)
  {
    v19 = *(v14 + 23);
  }

  else
  {
    v19 = *(v14 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v18, v19, v16, a4);
  v6 = *(this + 23);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

LABEL_35:
  v20 = *(this + 4);
  *v4 = 26;
  v21 = *(v20 + 23);
  if ((v21 & 0x8000000000000000) != 0)
  {
    v21 = *(v20 + 8);
  }

  if (v21 > 0x7F)
  {
    v22 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v21;
    v22 = v4 + 2;
  }

  v23 = *(v20 + 23);
  if (v23 >= 0)
  {
    v24 = v20;
  }

  else
  {
    v24 = *v20;
  }

  if (v23 >= 0)
  {
    v25 = *(v20 + 23);
  }

  else
  {
    v25 = *(v20 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v24, v25, v22, a4);
  v6 = *(this + 23);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_59;
  }

LABEL_47:
  v26 = *(this + 5);
  *v4 = 34;
  v27 = *(v26 + 23);
  if ((v27 & 0x8000000000000000) != 0)
  {
    v27 = *(v26 + 8);
  }

  if (v27 > 0x7F)
  {
    v28 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v27;
    v28 = v4 + 2;
  }

  v29 = *(v26 + 23);
  if (v29 >= 0)
  {
    v30 = v26;
  }

  else
  {
    v30 = *v26;
  }

  if (v29 >= 0)
  {
    v31 = *(v26 + 23);
  }

  else
  {
    v31 = *(v26 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v30, v31, v28, a4);
  v6 = *(this + 23);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_59:
  v32 = *(this + 6);
  *v4 = 42;
  v33 = *(v32 + 23);
  if ((v33 & 0x8000000000000000) != 0)
  {
    v33 = *(v32 + 8);
  }

  if (v33 > 0x7F)
  {
    v34 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v33;
    v34 = v4 + 2;
  }

  v35 = *(v32 + 23);
  if (v35 >= 0)
  {
    v36 = v32;
  }

  else
  {
    v36 = *v32;
  }

  if (v35 >= 0)
  {
    v37 = *(v32 + 23);
  }

  else
  {
    v37 = *(v32 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v36, v37, v34, a4);
  v6 = *(this + 23);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_83;
  }

LABEL_71:
  v38 = *(this + 7);
  *v4 = 50;
  v39 = *(v38 + 23);
  if ((v39 & 0x8000000000000000) != 0)
  {
    v39 = *(v38 + 8);
  }

  if (v39 > 0x7F)
  {
    v40 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v39, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v39;
    v40 = v4 + 2;
  }

  v41 = *(v38 + 23);
  if (v41 >= 0)
  {
    v42 = v38;
  }

  else
  {
    v42 = *v38;
  }

  if (v41 >= 0)
  {
    v43 = *(v38 + 23);
  }

  else
  {
    v43 = *(v38 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v42, v43, v40, a4);
  v6 = *(this + 23);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_95;
  }

LABEL_83:
  v44 = *(this + 8);
  *v4 = 58;
  v45 = *(v44 + 23);
  if ((v45 & 0x8000000000000000) != 0)
  {
    v45 = *(v44 + 8);
  }

  if (v45 > 0x7F)
  {
    v46 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v45, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v45;
    v46 = v4 + 2;
  }

  v47 = *(v44 + 23);
  if (v47 >= 0)
  {
    v48 = v44;
  }

  else
  {
    v48 = *v44;
  }

  if (v47 >= 0)
  {
    v49 = *(v44 + 23);
  }

  else
  {
    v49 = *(v44 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v48, v49, v46, a4);
  v6 = *(this + 23);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_107;
  }

LABEL_95:
  v50 = *(this + 9);
  *v4 = 66;
  v51 = *(v50 + 23);
  if ((v51 & 0x8000000000000000) != 0)
  {
    v51 = *(v50 + 8);
  }

  if (v51 > 0x7F)
  {
    v52 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v51, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v51;
    v52 = v4 + 2;
  }

  v53 = *(v50 + 23);
  if (v53 >= 0)
  {
    v54 = v50;
  }

  else
  {
    v54 = *v50;
  }

  if (v53 >= 0)
  {
    v55 = *(v50 + 23);
  }

  else
  {
    v55 = *(v50 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v54, v55, v52, a4);
  if ((*(this + 23) & 0x100) != 0)
  {
LABEL_107:
    v56 = *(this + 10);
    *v4 = 74;
    v57 = *(v56 + 23);
    if ((v57 & 0x8000000000000000) != 0)
    {
      v57 = *(v56 + 8);
    }

    if (v57 > 0x7F)
    {
      v58 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v57, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v57;
      v58 = v4 + 2;
    }

    v59 = *(v56 + 23);
    if (v59 >= 0)
    {
      v60 = v56;
    }

    else
    {
      v60 = *v56;
    }

    if (v59 >= 0)
    {
      v61 = *(v56 + 23);
    }

    else
    {
      v61 = *(v56 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v60, v61, v58, a4);
  }

LABEL_119:
  v64 = *(this + 1);
  v63 = (this + 8);
  v62 = v64;
  if (!v64 || *v62 == v62[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v63, v4, a3, a4);
}

uint64_t addr_obj::V0AddressObjectProto::ByteSize(addr_obj::V0AddressObjectProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 23);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_87;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v5 = *(this + 2);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 23);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
  {
LABEL_16:
    v12 = *(this + 3);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(this + 23);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_25:
  if ((v3 & 4) != 0)
  {
    v18 = *(this + 4);
    v19 = *(v18 + 23);
    v20 = v19;
    v21 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v22 = *(v18 + 23);
    }

    else
    {
      v22 = v21;
    }

    if (v22 >= 0x80)
    {
      v23 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      v19 = *(v18 + 23);
      v21 = *(v18 + 8);
      v3 = *(this + 23);
      v20 = *(v18 + 23);
    }

    else
    {
      v23 = 1;
    }

    if (v20 < 0)
    {
      v19 = v21;
    }

    v4 = (v4 + v23 + v19 + 1);
    if ((v3 & 8) == 0)
    {
LABEL_27:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_51;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_27;
  }

  v24 = *(this + 5);
  v25 = *(v24 + 23);
  v26 = v25;
  v27 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v28 = *(v24 + 23);
  }

  else
  {
    v28 = v27;
  }

  if (v28 >= 0x80)
  {
    v29 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
    v25 = *(v24 + 23);
    v27 = *(v24 + 8);
    v3 = *(this + 23);
    v26 = *(v24 + 23);
  }

  else
  {
    v29 = 1;
  }

  if (v26 < 0)
  {
    v25 = v27;
  }

  v4 = (v4 + v29 + v25 + 1);
  if ((v3 & 0x10) == 0)
  {
LABEL_28:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_51:
  v30 = *(this + 6);
  v31 = *(v30 + 23);
  v32 = v31;
  v33 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v34 = *(v30 + 23);
  }

  else
  {
    v34 = v33;
  }

  if (v34 >= 0x80)
  {
    v35 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
    v31 = *(v30 + 23);
    v33 = *(v30 + 8);
    v3 = *(this + 23);
    v32 = *(v30 + 23);
  }

  else
  {
    v35 = 1;
  }

  if (v32 < 0)
  {
    v31 = v33;
  }

  v4 = (v4 + v35 + v31 + 1);
  if ((v3 & 0x20) == 0)
  {
LABEL_29:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_60:
  v36 = *(this + 7);
  v37 = *(v36 + 23);
  v38 = v37;
  v39 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v40 = *(v36 + 23);
  }

  else
  {
    v40 = v39;
  }

  if (v40 >= 0x80)
  {
    v41 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
    v37 = *(v36 + 23);
    v39 = *(v36 + 8);
    v3 = *(this + 23);
    v38 = *(v36 + 23);
  }

  else
  {
    v41 = 1;
  }

  if (v38 < 0)
  {
    v37 = v39;
  }

  v4 = (v4 + v41 + v37 + 1);
  if ((v3 & 0x40) == 0)
  {
LABEL_30:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_78;
  }

LABEL_69:
  v42 = *(this + 8);
  v43 = *(v42 + 23);
  v44 = v43;
  v45 = *(v42 + 8);
  if ((v43 & 0x80u) == 0)
  {
    v46 = *(v42 + 23);
  }

  else
  {
    v46 = v45;
  }

  if (v46 >= 0x80)
  {
    v47 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
    v43 = *(v42 + 23);
    v45 = *(v42 + 8);
    v3 = *(this + 23);
    v44 = *(v42 + 23);
  }

  else
  {
    v47 = 1;
  }

  if (v44 < 0)
  {
    v43 = v45;
  }

  v4 = (v4 + v47 + v43 + 1);
  if ((v3 & 0x80) == 0)
  {
LABEL_31:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_87;
  }

LABEL_78:
  v48 = *(this + 9);
  v49 = *(v48 + 23);
  v50 = v49;
  v51 = *(v48 + 8);
  if ((v49 & 0x80u) == 0)
  {
    v52 = *(v48 + 23);
  }

  else
  {
    v52 = v51;
  }

  if (v52 >= 0x80)
  {
    v53 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52);
    v49 = *(v48 + 23);
    v51 = *(v48 + 8);
    v3 = *(this + 23);
    v50 = *(v48 + 23);
  }

  else
  {
    v53 = 1;
  }

  if (v50 < 0)
  {
    v49 = v51;
  }

  v4 = (v4 + v53 + v49 + 1);
  if ((v3 & 0x100) != 0)
  {
LABEL_87:
    v54 = *(this + 10);
    v55 = *(v54 + 23);
    v56 = v55;
    v57 = *(v54 + 8);
    if ((v55 & 0x80u) == 0)
    {
      v58 = *(v54 + 23);
    }

    else
    {
      v58 = v57;
    }

    if (v58 >= 0x80)
    {
      v59 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58);
      v55 = *(v54 + 23);
      v57 = *(v54 + 8);
      v56 = *(v54 + 23);
    }

    else
    {
      v59 = 1;
    }

    if (v56 < 0)
    {
      v55 = v57;
    }

    v4 = (v4 + v59 + v55 + 1);
  }

LABEL_96:
  v60 = *(this + 1);
  if (v60 && *v60 != v60[1])
  {
    v4 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v4;
  }

  *(this + 22) = v4;
  return v4;
}

void addr_obj::V0AddressObjectProto::MergeFrom(addr_obj::V0AddressObjectProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 2283);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::V0AddressObjectProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868CF504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::V0AddressObjectProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::V0AddressObjectProto::GetMetadata(addr_obj::V0AddressObjectProto *this)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9053C8;
}

void sub_1868CF644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void addr_obj::V1AddressObjectProto::SerializeWithCachedSizes(const void ***this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 25);
  if (v4)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[5], a2);
    v4 = *(v3 + 25);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 6);
  if (!v5)
  {
    v5 = *(addr_obj::V1AddressObjectProto::default_instance_(this) + 48);
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v5, a2);
  v4 = *(v3 + 25);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(3, *(v3 + 7), a2);
  v4 = *(v3 + 25);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(4, *(v3 + 8), a2);
  v4 = *(v3 + 25);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_18:
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(6, *(v3 + 10), a2);
    if ((*(v3 + 25) & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_15:
  v6 = *(v3 + 9);
  if (!v6)
  {
    v6 = *(addr_obj::V1AddressObjectProto::default_instance_(this) + 72);
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v6, a2);
  v4 = *(v3 + 25);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_7:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v7 = *(v3 + 11);
  if (!v7)
  {
    v7 = *(addr_obj::V1AddressObjectProto::default_instance_(this) + 88);
  }

  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v7, a2);
LABEL_22:
  AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizes(v3 + 8, 100, 200, a2);
  v11 = *(v3 + 4);
  v10 = (v3 + 32);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, v8);
  }
}

const AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::V1AddressObjectProto::SerializeWithCachedSizesToArray(addr_obj::V1AddressObjectProto *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 25);
  if (v6)
  {
    v7 = *(this + 5);
    *a2 = 10;
    v8 = a2 + 1;
    v9 = *(v7 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v7 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      v4[1] = v9;
      v10 = v4 + 2;
    }

    v11 = *(v7 + 23);
    if (v11 >= 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    if (v11 >= 0)
    {
      v13 = *(v7 + 23);
    }

    else
    {
      v13 = *(v7 + 8);
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
    v4 = this;
    v6 = *(v5 + 25);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(v5 + 6);
  if (!v14)
  {
    v14 = *(addr_obj::V1AddressObjectProto::default_instance_(this) + 48);
  }

  *v4 = 18;
  v15 = v14[13];
  if (v15 > 0x7F)
  {
    v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
  }

  else
  {
    v4[1] = v15;
    v16 = (v4 + 2);
  }

  this = addr_obj::geo3::Address::SerializeWithCachedSizesToArray(v14, v16, a3, a4);
  v4 = this;
  v6 = *(v5 + 25);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_27:
  v17 = *(v5 + 7);
  *v4 = 26;
  v18 = *(v17 + 23);
  if ((v18 & 0x8000000000000000) != 0)
  {
    v18 = *(v17 + 8);
  }

  if (v18 > 0x7F)
  {
    v19 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
  }

  else
  {
    v4[1] = v18;
    v19 = v4 + 2;
  }

  v20 = *(v17 + 23);
  if (v20 >= 0)
  {
    v21 = v17;
  }

  else
  {
    v21 = *v17;
  }

  if (v20 >= 0)
  {
    v22 = *(v17 + 23);
  }

  else
  {
    v22 = *(v17 + 8);
  }

  this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v21, v22, v19, a4);
  v4 = this;
  v6 = *(v5 + 25);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_39:
  v23 = *(v5 + 8);
  *v4 = 34;
  v24 = *(v23 + 23);
  if ((v24 & 0x8000000000000000) != 0)
  {
    v24 = *(v23 + 8);
  }

  if (v24 > 0x7F)
  {
    v25 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v4 + 1, a3);
  }

  else
  {
    v4[1] = v24;
    v25 = v4 + 2;
  }

  v26 = *(v23 + 23);
  if (v26 >= 0)
  {
    v27 = v23;
  }

  else
  {
    v27 = *v23;
  }

  if (v26 >= 0)
  {
    v28 = *(v23 + 23);
  }

  else
  {
    v28 = *(v23 + 8);
  }

  this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v27, v28, v25, a4);
  v4 = this;
  v6 = *(v5 + 25);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_51:
  v29 = *(v5 + 9);
  if (!v29)
  {
    v29 = *(addr_obj::V1AddressObjectProto::default_instance_(this) + 72);
  }

  *v4 = 42;
  v30 = v29[60];
  if (v30 > 0x7F)
  {
    v31 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v30, v4 + 1, a3);
  }

  else
  {
    v4[1] = v30;
    v31 = (v4 + 2);
  }

  this = addr_obj::geo3::StructuredAddress::SerializeWithCachedSizesToArray(v29, v31, a3, a4);
  v4 = this;
  v6 = *(v5 + 25);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_69;
  }

LABEL_57:
  v32 = *(v5 + 10);
  *v4 = 50;
  v33 = *(v32 + 23);
  if ((v33 & 0x8000000000000000) != 0)
  {
    v33 = *(v32 + 8);
  }

  if (v33 > 0x7F)
  {
    v34 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, v4 + 1, a3);
  }

  else
  {
    v4[1] = v33;
    v34 = v4 + 2;
  }

  v35 = *(v32 + 23);
  if (v35 >= 0)
  {
    v36 = v32;
  }

  else
  {
    v36 = *v32;
  }

  if (v35 >= 0)
  {
    v37 = *(v32 + 23);
  }

  else
  {
    v37 = *(v32 + 8);
  }

  this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v36, v37, v34, a4);
  v4 = this;
  if ((*(v5 + 25) & 0x40) != 0)
  {
LABEL_69:
    v38 = *(v5 + 11);
    if (!v38)
    {
      v38 = *(addr_obj::V1AddressObjectProto::default_instance_(this) + 88);
    }

    *v4 = 58;
    v39 = v38[13];
    if (v39 > 0x7F)
    {
      v40 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v39, v4 + 1, a3);
    }

    else
    {
      v4[1] = v39;
      v40 = (v4 + 2);
    }

    v4 = addr_obj::geo3::Address::SerializeWithCachedSizesToArray(v38, v40, a3, a4);
  }

LABEL_75:
  result = AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray((v5 + 8), 100, 200, v4);
  v46 = *(v5 + 4);
  v45 = (v5 + 32);
  v44 = v46;
  if (v46 && *v44 != v44[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v45, result, v42, v43);
  }

  return result;
}

uint64_t addr_obj::V1AddressObjectProto::ByteSize(addr_obj::V1AddressObjectProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 100);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_66;
  }

  if ((*(this + 100) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 100) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(this + 5);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 25);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = v10 + v6;
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 6);
    if (!v12)
    {
      v12 = *(addr_obj::V1AddressObjectProto::default_instance_(0) + 48);
    }

    v13 = addr_obj::geo3::Address::ByteSize(v12, a2);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v4 += v14 + v15 + 1;
    v3 = *(this + 25);
  }

LABEL_21:
  if ((v3 & 4) != 0)
  {
    v16 = *(this + 7);
    v17 = *(v16 + 23);
    v18 = v17;
    v19 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v20 = *(v16 + 23);
    }

    else
    {
      v20 = v19;
    }

    if (v20 >= 0x80)
    {
      v21 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
      v17 = *(v16 + 23);
      v19 = *(v16 + 8);
      v3 = *(this + 25);
      v18 = *(v16 + 23);
    }

    else
    {
      v21 = 1;
    }

    if (v18 < 0)
    {
      v17 = v19;
    }

    v4 += v21 + v17 + 1;
    if ((v3 & 8) == 0)
    {
LABEL_23:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_45;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_23;
  }

  v22 = *(this + 8);
  v23 = *(v22 + 23);
  v24 = v23;
  v25 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v26 = *(v22 + 23);
  }

  else
  {
    v26 = v25;
  }

  if (v26 >= 0x80)
  {
    v27 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
    v23 = *(v22 + 23);
    v25 = *(v22 + 8);
    v3 = *(this + 25);
    v24 = *(v22 + 23);
  }

  else
  {
    v27 = 1;
  }

  if (v24 < 0)
  {
    v23 = v25;
  }

  v4 += v27 + v23 + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_24:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_45:
  v28 = *(this + 9);
  if (!v28)
  {
    v28 = *(addr_obj::V1AddressObjectProto::default_instance_(0) + 72);
  }

  v29 = addr_obj::geo3::StructuredAddress::ByteSize(v28, a2);
  v30 = v29;
  if (v29 >= 0x80)
  {
    v31 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
  }

  else
  {
    v31 = 1;
  }

  v4 += v30 + v31 + 1;
  v3 = *(this + 25);
  if ((v3 & 0x20) == 0)
  {
LABEL_25:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_60;
  }

LABEL_51:
  v32 = *(this + 10);
  v33 = *(v32 + 23);
  v34 = v33;
  v35 = *(v32 + 8);
  if ((v33 & 0x80u) == 0)
  {
    v36 = *(v32 + 23);
  }

  else
  {
    v36 = v35;
  }

  if (v36 >= 0x80)
  {
    v37 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
    v33 = *(v32 + 23);
    v35 = *(v32 + 8);
    v3 = *(this + 25);
    v34 = *(v32 + 23);
  }

  else
  {
    v37 = 1;
  }

  if (v34 < 0)
  {
    v33 = v35;
  }

  v4 += v37 + v33 + 1;
  if ((v3 & 0x40) != 0)
  {
LABEL_60:
    v38 = *(this + 11);
    if (!v38)
    {
      v38 = *(addr_obj::V1AddressObjectProto::default_instance_(0) + 88);
    }

    v39 = addr_obj::geo3::Address::ByteSize(v38, a2);
    v40 = v39;
    if (v39 >= 0x80)
    {
      v41 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
    }

    else
    {
      v41 = 1;
    }

    v4 += v40 + v41 + 1;
  }

LABEL_66:
  v43 = AddrObjGoogle::protobuf::internal::ExtensionSet::ByteSize(this + 1) + v4;
  v44 = *(this + 4);
  if (v44 && *v44 != v44[1])
  {
    v43 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 4, v42) + v43;
  }

  *(this + 24) = v43;
  return v43;
}

void addr_obj::V1AddressObjectProto::MergeFrom(addr_obj::V1AddressObjectProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 2838);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::V1AddressObjectProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868CFEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::V1AddressObjectProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::V1AddressObjectProto::GetMetadata(addr_obj::V1AddressObjectProto *this)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9053D8;
}

void sub_1868CFFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void addr_obj::V2AddressObjectProto::MergeFrom(addr_obj::V2AddressObjectProto *this, const addr_obj::V2AddressObjectProto *a2)
{
  v3 = this;
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v31, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 3715);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v31, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v30, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v31[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 35);
  if (!v5)
  {
    goto LABEL_44;
  }

  if (v5)
  {
    v6 = *(a2 + 5);
    *(v3 + 35) |= 1u;
    v7 = *(v3 + 5);
    if (v7 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(v3 + 5), v6);
    v5 = *(a2 + 35);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 6);
  *(v3 + 35) |= 2u;
  v9 = *(v3 + 6);
  if (v9 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 6), v8);
  v5 = *(a2 + 35);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_21:
  v10 = *(a2 + 7);
  *(v3 + 35) |= 4u;
  v11 = *(v3 + 7);
  if (v11 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 7), v10);
  v5 = *(a2 + 35);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_25:
  v12 = *(a2 + 8);
  *(v3 + 35) |= 8u;
  v13 = *(v3 + 8);
  if (v13 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 8), v12);
  v5 = *(a2 + 35);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_33:
    v16 = *(a2 + 10);
    *(v3 + 35) |= 0x20u;
    v17 = *(v3 + 10);
    if (v17 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(v3 + 10), v16);
    v5 = *(a2 + 35);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_29:
  v14 = *(a2 + 9);
  *(v3 + 35) |= 0x10u;
  v15 = *(v3 + 9);
  if (v15 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 9), v14);
  v5 = *(a2 + 35);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_37:
  v18 = *(a2 + 11);
  *(v3 + 35) |= 0x40u;
  v19 = *(v3 + 11);
  if (v19 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 11), v18);
  v5 = *(a2 + 35);
  if ((v5 & 0x80) != 0)
  {
LABEL_41:
    v20 = *(a2 + 12);
    *(v3 + 35) |= 0x80u;
    v21 = *(v3 + 12);
    if (v21 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(v3 + 12), v20);
    v5 = *(a2 + 35);
  }

LABEL_44:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_65;
  }

  if ((v5 & 0x100) != 0)
  {
    v22 = *(a2 + 13);
    *(v3 + 35) |= 0x100u;
    v23 = *(v3 + 13);
    if (v23 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(v3 + 13), v22);
    v5 = *(a2 + 35);
    if ((v5 & 0x200) == 0)
    {
LABEL_47:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_58;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_47;
  }

  v24 = *(a2 + 14);
  *(v3 + 35) |= 0x200u;
  v25 = *(v3 + 14);
  if (v25 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 14), v24);
  v5 = *(a2 + 35);
  if ((v5 & 0x400) == 0)
  {
LABEL_48:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

LABEL_58:
  v26 = *(a2 + 15);
  *(v3 + 35) |= 0x400u;
  v27 = *(v3 + 15);
  if (v27 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 15), v26);
  if ((*(a2 + 35) & 0x800) != 0)
  {
LABEL_62:
    v28 = *(a2 + 16);
    *(v3 + 35) |= 0x800u;
    v29 = *(v3 + 16);
    if (v29 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    std::string::operator=(*(v3 + 16), v28);
  }

LABEL_65:
  AddrObjGoogle::protobuf::internal::ExtensionSet::MergeFrom((v3 + 8), a2 + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((v3 + 32), (a2 + 32));
}

void sub_1868D04B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *addr_obj::V2AddressObjectProto::Clear(addr_obj::V2AddressObjectProto *this)
{
  result = AddrObjGoogle::protobuf::internal::ExtensionSet::Clear(this + 8);
  if (*(this + 140))
  {
    if (*(this + 140))
    {
      v3 = *(this + 5);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v3 != result)
      {
        v4 = *(this + 5);
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(this + 140) & 2) != 0)
    {
      v5 = *(this + 6);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v5 != result)
      {
        v6 = *(this + 6);
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    if ((*(this + 140) & 4) != 0)
    {
      v7 = *(this + 7);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v7 != result)
      {
        v8 = *(this + 7);
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    if ((*(this + 140) & 8) != 0)
    {
      v9 = *(this + 8);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v9 != result)
      {
        v10 = *(this + 8);
        if (*(v10 + 23) < 0)
        {
          **v10 = 0;
          *(v10 + 8) = 0;
        }

        else
        {
          *v10 = 0;
          *(v10 + 23) = 0;
        }
      }
    }

    if ((*(this + 140) & 0x10) != 0)
    {
      v11 = *(this + 9);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v11 != result)
      {
        v12 = *(this + 9);
        if (*(v12 + 23) < 0)
        {
          **v12 = 0;
          *(v12 + 8) = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 23) = 0;
        }
      }
    }

    if ((*(this + 140) & 0x20) != 0)
    {
      v13 = *(this + 10);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v13 != result)
      {
        v14 = *(this + 10);
        if (*(v14 + 23) < 0)
        {
          **v14 = 0;
          *(v14 + 8) = 0;
        }

        else
        {
          *v14 = 0;
          *(v14 + 23) = 0;
        }
      }
    }

    if ((*(this + 140) & 0x40) != 0)
    {
      v15 = *(this + 11);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v15 != result)
      {
        v16 = *(this + 11);
        if (*(v16 + 23) < 0)
        {
          **v16 = 0;
          *(v16 + 8) = 0;
        }

        else
        {
          *v16 = 0;
          *(v16 + 23) = 0;
        }
      }
    }

    if ((*(this + 140) & 0x80) != 0)
    {
      v17 = *(this + 12);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v17 != result)
      {
        v18 = *(this + 12);
        if (*(v18 + 23) < 0)
        {
          **v18 = 0;
          *(v18 + 8) = 0;
        }

        else
        {
          *v18 = 0;
          *(v18 + 23) = 0;
        }
      }
    }
  }

  v19 = *(this + 35);
  if ((v19 & 0xFF00) != 0)
  {
    if ((v19 & 0x100) != 0)
    {
      v20 = *(this + 13);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v20 != result)
      {
        v21 = *(this + 13);
        if (*(v21 + 23) < 0)
        {
          **v21 = 0;
          *(v21 + 8) = 0;
        }

        else
        {
          *v21 = 0;
          *(v21 + 23) = 0;
        }
      }
    }

    if ((*(this + 141) & 2) != 0)
    {
      v22 = *(this + 14);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v22 != result)
      {
        v23 = *(this + 14);
        if (*(v23 + 23) < 0)
        {
          **v23 = 0;
          *(v23 + 8) = 0;
        }

        else
        {
          *v23 = 0;
          *(v23 + 23) = 0;
        }
      }
    }

    if ((*(this + 141) & 4) != 0)
    {
      v24 = *(this + 15);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v24 != result)
      {
        v25 = *(this + 15);
        if (*(v25 + 23) < 0)
        {
          **v25 = 0;
          *(v25 + 8) = 0;
        }

        else
        {
          *v25 = 0;
          *(v25 + 23) = 0;
        }
      }
    }

    if ((*(this + 141) & 8) != 0)
    {
      v26 = *(this + 16);
      result = AddrObjGoogle::protobuf::internal::kEmptyString(result);
      if (v26 != result)
      {
        v27 = *(this + 16);
        if (*(v27 + 23) < 0)
        {
          **v27 = 0;
          *(v27 + 8) = 0;
        }

        else
        {
          *v27 = 0;
          *(v27 + 23) = 0;
        }
      }
    }
  }

  v29 = *(this + 4);
  v28 = this + 32;
  *(v28 + 27) = 0;
  if (v29)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v28);
  }

  return result;
}

void addr_obj::V2AddressObjectProto::SerializeWithCachedSizes(addr_obj::V2AddressObjectProto *this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2)
{
  v4 = *(this + 35);
  if (v4)
  {
    AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, *(this + 5), a2);
    v4 = *(this + 35);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(2, *(this + 6), a2);
  v4 = *(this + 35);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(3, *(this + 7), a2);
  v4 = *(this + 35);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(4, *(this + 8), a2);
  v4 = *(this + 35);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(5, *(this + 10), a2);
  v4 = *(this + 35);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(6, *(this + 11), a2);
  v4 = *(this + 35);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(7, *(this + 12), a2);
  v4 = *(this + 35);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(8, *(this + 9), a2);
  v4 = *(this + 35);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(9, *(this + 13), a2);
  v4 = *(this + 35);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(11, *(this + 15), a2);
    if ((*(this + 35) & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_29:
  AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(10, *(this + 14), a2);
  v4 = *(this + 35);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  if ((v4 & 0x800) != 0)
  {
LABEL_13:
    AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(12, *(this + 16), a2);
  }

LABEL_14:
  AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizes(this + 8, 100, 200, a2);
  v8 = *(this + 4);
  v7 = (this + 32);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, v5);
  }
}