void sub_296C44C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (*(v67 - 217) < 0)
  {
    operator delete(*(v67 - 240));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a67);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

uint64_t ***std::__hash_table<std::__hash_value_type<AudioServiceType,std::string>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::string>>>::find<AudioServiceType>(void *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 8) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void rtaid::handleRMSIssue(std::string *a1, uint64_t a2, uint64_t a3, const std::string *a4, char **a5)
{
  v8 = a1;
  v132 = *MEMORY[0x29EDCA608];
  memset(v121, 0, 24);
  memset(&v119, 0, sizeof(v119));
  if (!HIDWORD(a1[11].__r_.__value_.__r.__words[1]))
  {
    goto LABEL_29;
  }

  v9 = 0;
  v10 = &a1[12];
  do
  {
    v11 = v121[23];
    if (v121[23] < 0)
    {
      v11 = *&v121[8];
    }

    if (v11)
    {
      std::string::append(v121, ", ", 2uLL);
    }

    size = HIBYTE(v119.__r_.__value_.__r.__words[2]);
    if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v119.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::append(&v119, ", ", 2uLL);
    }

    std::to_string(&v118, *(v10 - 1));
    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v118;
    }

    else
    {
      v13 = v118.__r_.__value_.__r.__words[0];
    }

    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v118.__r_.__value_.__l.__size_;
    }

    std::string::append(v121, v13, v14);
    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v118.__r_.__value_.__l.__data_);
    }

    std::to_string(&v118, *v10);
    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v118;
    }

    else
    {
      v15 = v118.__r_.__value_.__r.__words[0];
    }

    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v118.__r_.__value_.__l.__size_;
    }

    a1 = std::string::append(&v119, v15, v16);
    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v118.__r_.__value_.__l.__data_);
    }

    ++v9;
    v10 += 2;
  }

  while (v9 < HIDWORD(v8[11].__r_.__value_.__r.__words[1]));
  if ((v121[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__str, *v121, *&v121[8]);
  }

  else
  {
LABEL_29:
    __str = *v121;
  }

  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v117, v119.__r_.__value_.__l.__data_, v119.__r_.__value_.__l.__size_);
    if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v119.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v117 = v119;
  }

  if ((v121[23] & 0x80000000) != 0)
  {
    operator delete(*v121);
  }

  v17 = a3;
  v18 = *(&v8[11].__r_.__value_.__r.__words[2] + 1);
  v19 = *&v8[12].__r_.__value_.__l.__data_;
  rtaid::GetClientUseCaseMap(a1);
  v20 = std::__hash_table<std::__hash_value_type<AudioServiceType,std::string>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::string>>>::find<AudioServiceType>(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap, 4u);
  if (!v20)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v21 = *(a5 + 23);
  v22 = a5;
  if (v21 >= 0)
  {
    v23 = a5;
  }

  else
  {
    v23 = *a5;
  }

  if (v21 < 0)
  {
    v21 = a5[1];
  }

  v26 = v20[3];
  v24 = v20 + 3;
  v25 = v26;
  v27 = *(v24 + 23);
  if (v27 >= 0)
  {
    v28 = v24;
  }

  else
  {
    v28 = v25;
  }

  if (v27 >= 0)
  {
    v29 = *(v24 + 23);
  }

  else
  {
    v29 = v24[1];
  }

  if (!v29)
  {
    goto LABEL_102;
  }

  if (v21 >= v29)
  {
    v44 = &v21[v23];
    v45 = *v28;
    v46 = v23;
    while (1)
    {
      v47 = &v21[-v29];
      if (v47 == -1)
      {
        goto LABEL_51;
      }

      v48 = memchr(v46, v45, (v47 + 1));
      if (!v48)
      {
        goto LABEL_51;
      }

      v49 = v48;
      if (!memcmp(v48, v28, v29))
      {
        break;
      }

      v46 = (v49 + 1);
      v21 = (v44 - (v49 + 1));
      if (v21 < v29)
      {
        goto LABEL_51;
      }
    }

    if (v49 != v44 && v49 - v23 != -1)
    {
LABEL_102:
      if (v18 > -55.0 || v18 <= -120.0)
      {
        *&v121[8] = 0;
        *&v121[16] = 0;
        *v121 = &v121[8];
        std::string::basic_string[abi:ne200100]<0>(&v119, "rtaid_client");
        v58 = a4;
        v118.__r_.__value_.__r.__words[0] = &v119;
        v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
        std::string::operator=((v67 + 7), a4);
        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        std::to_string(&v119, *&v8[20].__r_.__value_.__l.__size_);
        std::string::basic_string[abi:ne200100]<0>(&v118, "issue_detected_sample_time");
        __p[0] = &v118;
        v68 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v118, __p);
        v69 = v68;
        if (*(v68 + 79) < 0)
        {
          operator delete(v68[7]);
        }

        *(v69 + 7) = v119;
        *(&v119.__r_.__value_.__s + 23) = 0;
        v119.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
          if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v119.__r_.__value_.__l.__data_);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v119, "node");
        v118.__r_.__value_.__r.__words[0] = &v119;
        v70 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
        std::string::__assign_external((v70 + 7), v8);
        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v119, "alarms_rms");
        v118.__r_.__value_.__r.__words[0] = &v119;
        v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
        std::string::operator=((v71 + 7), &__str);
        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v119, "alarms_peak");
        v118.__r_.__value_.__r.__words[0] = &v119;
        v72 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
        std::string::operator=((v72 + 7), &v117);
        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v119, "report_type");
        v118.__r_.__value_.__r.__words[0] = &v119;
        v73 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
        if (*(v73 + 79) < 0)
        {
          v73[8] = 3;
          v74 = v73[7];
        }

        else
        {
          v74 = (v73 + 7);
          *(v73 + 79) = 3;
        }

        *v74 = 5459282;
        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        if ((*v17 & 1) == 0 && LODWORD(v8[10].__r_.__value_.__r.__words[2]) != 1)
        {
LABEL_144:
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&v121[8]);
          {
            rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
          }

          v76 = rtaid::get_log(void)::rtaid_os_log;
          if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v22 + 23) >= 0)
            {
              v77 = v22;
            }

            else
            {
              v77 = *v22;
            }

            if ((v58->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v78 = v58;
            }

            else
            {
              v78 = v58->__r_.__value_.__r.__words[0];
            }

            v79 = v8[20].__r_.__value_.__l.__size_;
            p_str = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v81 = &v117;
            }

            else
            {
              v81 = v117.__r_.__value_.__r.__words[0];
            }

            *v121 = 136316930;
            *&v121[4] = "IssueReporting.cpp";
            *&v121[12] = 1024;
            *&v121[14] = 433;
            *&v121[18] = 2080;
            *&v121[20] = v77;
            v122 = 2080;
            v123 = v78;
            v124 = 2080;
            v125 = v8;
            v126 = 2048;
            v127 = v79;
            v128 = 2080;
            v129 = p_str;
            v130 = 2080;
            v131 = v81;
            v82 = "%s:%-5d RTAID [ use_case=%s report_type=Alarms RMS Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ rms:[%s], peaks:[%s] ] ";
            goto LABEL_244;
          }

          goto LABEL_245;
        }

        v75 = *(**(v17 + 24) + 24);
      }

      else
      {
        *&v121[8] = 0;
        *&v121[16] = 0;
        *v121 = &v121[8];
        std::string::basic_string[abi:ne200100]<0>(&v119, "rtaid_client");
        v58 = a4;
        v118.__r_.__value_.__r.__words[0] = &v119;
        v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
        std::string::operator=((v59 + 7), a4);
        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        std::to_string(&v119, *&v8[20].__r_.__value_.__l.__size_);
        std::string::basic_string[abi:ne200100]<0>(&v118, "issue_detected_sample_time");
        __p[0] = &v118;
        v60 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v118, __p);
        v61 = v60;
        if (*(v60 + 79) < 0)
        {
          operator delete(v60[7]);
        }

        *(v61 + 7) = v119;
        *(&v119.__r_.__value_.__s + 23) = 0;
        v119.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
          if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v119.__r_.__value_.__l.__data_);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v119, "node");
        v118.__r_.__value_.__r.__words[0] = &v119;
        v62 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
        std::string::__assign_external((v62 + 7), v8);
        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v119, "alarms_rms");
        v118.__r_.__value_.__r.__words[0] = &v119;
        v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
        std::string::operator=((v63 + 7), &__str);
        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v119, "alarms_peak");
        v118.__r_.__value_.__r.__words[0] = &v119;
        v64 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
        std::string::operator=((v64 + 7), &v117);
        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v119, "issue_type");
        v118.__r_.__value_.__r.__words[0] = &v119;
        v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
        if (*(v65 + 79) < 0)
        {
          v65[8] = 6;
          v66 = v65[7];
        }

        else
        {
          v66 = (v65 + 7);
          *(v65 + 79) = 6;
        }

        strcpy(v66, "LowRMS");
        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        v75 = *(**(v17 + 24) + 24);
      }

      v75();
      goto LABEL_144;
    }
  }

LABEL_51:
  v30 = v8[13].__r_.__value_.__s.__data_[4];
  if (v8[13].__r_.__value_.__s.__data_[4])
  {
    v31 = &v8[18].__r_.__value_.__r.__words[2];
    do
    {
      v32 = *v31;
      v31 = (v31 + 2);
      if (v32 != 13)
      {
        goto LABEL_74;
      }

      --v30;
    }

    while (v30);
    if (v18 > -70.0 && v19 > -60.0)
    {
      *&v121[8] = 0;
      *&v121[16] = 0;
      *v121 = &v121[8];
      std::string::basic_string[abi:ne200100]<0>(&v119, "rtaid_client");
      v118.__r_.__value_.__r.__words[0] = &v119;
      v50 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
      std::string::operator=((v50 + 7), a4);
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      std::to_string(&v119, *&v8[20].__r_.__value_.__l.__size_);
      std::string::basic_string[abi:ne200100]<0>(&v118, "issue_detected_sample_time");
      __p[0] = &v118;
      v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v118, __p);
      v52 = v51;
      if (*(v51 + 79) < 0)
      {
        operator delete(v51[7]);
      }

      *(v52 + 7) = v119;
      *(&v119.__r_.__value_.__s + 23) = 0;
      v119.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v119, "node");
      v118.__r_.__value_.__r.__words[0] = &v119;
      v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
      std::string::__assign_external((v53 + 7), v8);
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v119, "systemSounds_rms");
      v118.__r_.__value_.__r.__words[0] = &v119;
      v54 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
      std::string::operator=((v54 + 7), &__str);
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v119, "systemSounds_peak");
      v118.__r_.__value_.__r.__words[0] = &v119;
      v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
      std::string::operator=((v55 + 7), &v117);
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v119, "report_type");
      v118.__r_.__value_.__r.__words[0] = &v119;
      v56 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
      if (*(v56 + 79) < 0)
      {
        v56[8] = 3;
        v57 = v56[7];
      }

      else
      {
        v57 = (v56 + 7);
        *(v56 + 79) = 3;
      }

      *v57 = 5459282;
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      if ((*v17 & 1) == 0 && LODWORD(v8[10].__r_.__value_.__r.__words[2]) != 1)
      {
LABEL_230:
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&v121[8]);
        {
          rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
        }

        v76 = rtaid::get_log(void)::rtaid_os_log;
        if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v22 + 23) >= 0)
          {
            v108 = v22;
          }

          else
          {
            v108 = *v22;
          }

          if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v109 = a4;
          }

          else
          {
            v109 = a4->__r_.__value_.__r.__words[0];
          }

          v110 = v8[20].__r_.__value_.__l.__size_;
          v111 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v111 = __str.__r_.__value_.__r.__words[0];
          }

          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v112 = &v117;
          }

          else
          {
            v112 = v117.__r_.__value_.__r.__words[0];
          }

          *v121 = 136316930;
          *&v121[4] = "IssueReporting.cpp";
          *&v121[12] = 1024;
          *&v121[14] = 463;
          *&v121[18] = 2080;
          *&v121[20] = v108;
          v122 = 2080;
          v123 = v109;
          v124 = 2080;
          v125 = v8;
          v126 = 2048;
          v127 = v110;
          v128 = 2080;
          v129 = v111;
          v130 = 2080;
          v131 = v112;
          v82 = "%s:%-5d RTAID [ use_case=%s report_type=System Sounds RMS Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ rms:[%s], peaks:[%s] ] ";
          goto LABEL_244;
        }

        goto LABEL_245;
      }

      v107 = *(**(v17 + 24) + 24);
    }

    else
    {
      *&v121[8] = 0;
      *&v121[16] = 0;
      *v121 = &v121[8];
      std::string::basic_string[abi:ne200100]<0>(&v119, "rtaid_client");
      v118.__r_.__value_.__r.__words[0] = &v119;
      v34 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
      std::string::operator=((v34 + 7), a4);
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      std::to_string(&v119, *&v8[20].__r_.__value_.__l.__size_);
      std::string::basic_string[abi:ne200100]<0>(&v118, "issue_detected_sample_time");
      __p[0] = &v118;
      v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v118, __p);
      v36 = v35;
      if (*(v35 + 79) < 0)
      {
        operator delete(v35[7]);
      }

      *(v36 + 7) = v119;
      *(&v119.__r_.__value_.__s + 23) = 0;
      v119.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v119, "node");
      v118.__r_.__value_.__r.__words[0] = &v119;
      v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
      std::string::__assign_external((v37 + 7), v8);
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v119, "systemSounds_rms");
      v118.__r_.__value_.__r.__words[0] = &v119;
      v38 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
      std::string::operator=((v38 + 7), &__str);
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v119, "systemSounds_peak");
      v118.__r_.__value_.__r.__words[0] = &v119;
      v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
      std::string::operator=((v39 + 7), &v117);
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v119, "issue_type");
      v118.__r_.__value_.__r.__words[0] = &v119;
      v40 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v121, &v119, &v118);
      if (*(v40 + 79) < 0)
      {
        v40[8] = 6;
        v41 = v40[7];
      }

      else
      {
        v41 = (v40 + 7);
        *(v40 + 79) = 6;
      }

      strcpy(v41, "LowRMS");
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      v107 = *(**(v17 + 24) + 24);
    }

    v107();
    goto LABEL_230;
  }

LABEL_74:
  if ((*v17 & 1) != 0 || LODWORD(v8[10].__r_.__value_.__r.__words[2]) == 1)
  {
    *&v119.__r_.__value_.__r.__words[1] = 0uLL;
    v119.__r_.__value_.__r.__words[0] = &v119.__r_.__value_.__l.__size_;
    std::string::basic_string[abi:ne200100]<0>(v121, "report_type");
    v118.__r_.__value_.__r.__words[0] = v121;
    v42 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v119, v121, &v118);
    if (*(v42 + 79) < 0)
    {
      v42[8] = 3;
      v43 = v42[7];
    }

    else
    {
      v43 = (v42 + 7);
      *(v42 + 79) = 3;
    }

    *v43 = 5459282;
    if ((v121[23] & 0x80000000) != 0)
    {
      operator delete(*v121);
    }

    std::string::basic_string[abi:ne200100]<0>(v121, "rtaid_client");
    v118.__r_.__value_.__r.__words[0] = v121;
    v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v119, v121, &v118);
    std::string::operator=((v83 + 7), a4);
    if ((v121[23] & 0x80000000) != 0)
    {
      operator delete(*v121);
    }

    std::to_string(v121, *&v8[20].__r_.__value_.__l.__size_);
    std::string::basic_string[abi:ne200100]<0>(&v118, "issue_detected_sample_time");
    __p[0] = &v118;
    v84 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v119, &v118, __p);
    v85 = v84;
    if (*(v84 + 79) < 0)
    {
      operator delete(v84[7]);
    }

    *(v85 + 7) = *v121;
    v85[9] = *&v121[16];
    v121[23] = 0;
    v121[0] = 0;
    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v118.__r_.__value_.__l.__data_);
      if ((v121[23] & 0x80000000) != 0)
      {
        operator delete(*v121);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v121, "node");
    v118.__r_.__value_.__r.__words[0] = v121;
    v86 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v119, v121, &v118);
    std::string::__assign_external((v86 + 7), v8);
    if ((v121[23] & 0x80000000) != 0)
    {
      operator delete(*v121);
    }

    std::string::basic_string[abi:ne200100]<0>(v121, "rms");
    v118.__r_.__value_.__r.__words[0] = v121;
    v87 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v119, v121, &v118);
    std::string::operator=((v87 + 7), &__str);
    if ((v121[23] & 0x80000000) != 0)
    {
      operator delete(*v121);
    }

    std::string::basic_string[abi:ne200100]<0>(v121, "peak");
    v118.__r_.__value_.__r.__words[0] = v121;
    v88 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v119, v121, &v118);
    std::string::operator=((v88 + 7), &v117);
    if ((v121[23] & 0x80000000) != 0)
    {
      operator delete(*v121);
    }

    (*(**(v17 + 24) + 24))(*(v17 + 24), a2, v8[13].__r_.__value_.__s.__data_[4], &v119, 1, 7);
    if (HIDWORD(v8[11].__r_.__value_.__r.__words[0]))
    {
      v89 = v8[11].__r_.__value_.__r.__words[1];
      *&v118.__r_.__value_.__r.__words[1] = 0uLL;
      v118.__r_.__value_.__r.__words[0] = &v118.__r_.__value_.__l.__size_;
      std::string::basic_string[abi:ne200100]<0>(v121, "issue_type");
      __p[0] = v121;
      v90 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, v121, __p);
      if (*(v90 + 79) < 0)
      {
        v90[8] = 2;
        v91 = v90[7];
      }

      else
      {
        v91 = (v90 + 7);
        *(v90 + 79) = 2;
      }

      strcpy(v91, "DC");
      if ((v121[23] & 0x80000000) != 0)
      {
        operator delete(*v121);
      }

      std::string::basic_string[abi:ne200100]<0>(v121, "rtaid_client");
      __p[0] = v121;
      v92 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, v121, __p);
      std::string::operator=((v92 + 7), a4);
      if ((v121[23] & 0x80000000) != 0)
      {
        operator delete(*v121);
      }

      std::to_string(v121, *&v8[20].__r_.__value_.__l.__size_);
      std::string::basic_string[abi:ne200100]<0>(__p, "issue_detected_sample_time");
      v120 = __p;
      v93 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, __p, &v120);
      v94 = v93;
      if (*(v93 + 79) < 0)
      {
        operator delete(v93[7]);
      }

      *(v94 + 7) = *v121;
      v94[9] = *&v121[16];
      v121[23] = 0;
      v121[0] = 0;
      if (v115 < 0)
      {
        operator delete(__p[0]);
        if ((v121[23] & 0x80000000) != 0)
        {
          operator delete(*v121);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(v121, "node");
      __p[0] = v121;
      v95 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, v121, __p);
      std::string::__assign_external((v95 + 7), v8);
      if ((v121[23] & 0x80000000) != 0)
      {
        operator delete(*v121);
      }

      std::to_string(v121, v89);
      std::string::basic_string[abi:ne200100]<0>(__p, "dc_consecutive_samples");
      v120 = __p;
      v96 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v118, __p, &v120);
      v97 = v96;
      if (*(v96 + 79) < 0)
      {
        operator delete(v96[7]);
      }

      *(v97 + 7) = *v121;
      v97[9] = *&v121[16];
      v121[23] = 0;
      v121[0] = 0;
      if (v115 < 0)
      {
        operator delete(__p[0]);
        if ((v121[23] & 0x80000000) != 0)
        {
          operator delete(*v121);
        }
      }

      (*(**(v17 + 24) + 24))(*(v17 + 24), a2, v8[13].__r_.__value_.__s.__data_[4], &v118, 1, 7);
      {
        rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
      }

      v98 = rtaid::get_log(void)::rtaid_os_log;
      if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v22 + 23) >= 0)
        {
          v99 = v22;
        }

        else
        {
          v99 = *v22;
        }

        if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v100 = a4;
        }

        else
        {
          v100 = a4->__r_.__value_.__r.__words[0];
        }

        v101 = v8[20].__r_.__value_.__l.__size_;
        *v121 = 136316674;
        *&v121[4] = "IssueReporting.cpp";
        *&v121[12] = 1024;
        *&v121[14] = 489;
        *&v121[18] = 2080;
        *&v121[20] = v99;
        v122 = 2080;
        v123 = v100;
        v124 = 2080;
        v125 = v8;
        v126 = 2048;
        v127 = v101;
        v128 = 1024;
        LODWORD(v129) = v89;
        _os_log_impl(&dword_296C34000, v98, OS_LOG_TYPE_DEFAULT, "%s:%-5d RTAID [ use_case=%s issue_type=DC Generic Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ %d ] ", v121, 0x40u);
      }

      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v118.__r_.__value_.__l.__size_);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v119.__r_.__value_.__l.__size_);
  }

  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v76 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v22 + 23) >= 0)
    {
      v102 = v22;
    }

    else
    {
      v102 = *v22;
    }

    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v103 = a4;
    }

    else
    {
      v103 = a4->__r_.__value_.__r.__words[0];
    }

    v104 = v8[20].__r_.__value_.__l.__size_;
    v105 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v105 = __str.__r_.__value_.__r.__words[0];
    }

    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v106 = &v117;
    }

    else
    {
      v106 = v117.__r_.__value_.__r.__words[0];
    }

    *v121 = 136316930;
    *&v121[4] = "IssueReporting.cpp";
    *&v121[12] = 1024;
    *&v121[14] = 492;
    *&v121[18] = 2080;
    *&v121[20] = v102;
    v122 = 2080;
    v123 = v103;
    v124 = 2080;
    v125 = v8;
    v126 = 2048;
    v127 = v104;
    v128 = 2080;
    v129 = v105;
    v130 = 2080;
    v131 = v106;
    v82 = "%s:%-5d RTAID [ use_case=%s report_type=RMS Generic Chain clientID=%s node=%s issue_detected_sample_time=%f ] -- [ rms:[%s], peaks:[%s] ] ";
LABEL_244:
    _os_log_impl(&dword_296C34000, v76, OS_LOG_TYPE_DEFAULT, v82, v121, 0x4Eu);
  }

LABEL_245:
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_296C466B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, void *a42, int a43, __int16 a44, char a45, char a46)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a42);
  std::pair<std::string,std::string>::~pair(&a18);
  _Unwind_Resume(a1);
}

void rtaid::GetClientUseCaseMap(rtaid *this)
{
  {
    rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap = 0u;
    *&qword_2A18A5040 = 0u;
    dword_2A18A5050 = 1065353216;
  }

  if (rtaid::GetClientUseCaseMap(void)::onceToken != -1)
  {

    dispatch_once(&rtaid::GetClientUseCaseMap(void)::onceToken, &__block_literal_global_13);
  }
}

uint64_t **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, void *a2, _OWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v3 + 4) & 0x80) == 0)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
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

void rtaid::AudioStatisticsSPIImplementation::SendMessage(uint64_t a1, uint64_t *a2, unsigned int a3, const UInt8 **a4, unsigned int a5, unsigned int a6)
{
  v55 = 0;
  v56 = 0uLL;
  v9 = a4[2];
  if (v9)
  {
    if (!(v9 >> 60))
    {
      v63 = &v55;
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v9);
    }

    std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
  }

  v11 = a4 + 1;
  v10 = *a4;
  v12 = v56;
  if (*a4 != (a4 + 1))
  {
    do
    {
      if (v12 >= *(&v56 + 1))
      {
        v13 = (v12 - v55) >> 4;
        if ((v13 + 1) >> 60)
        {
          std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
        }

        v14 = (*(&v56 + 1) - v55) >> 3;
        if (v14 <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        if (*(&v56 + 1) - v55 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v63 = &v55;
        if (v15)
        {
          std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v15);
        }

        keys = 0;
        v61 = 16 * v13;
        v62 = (16 * v13);
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>((16 * v13), v10 + 32, (v10 + 56));
        *&v62 = v62 + 16;
        v16 = &v55[v61 - v56];
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&v55, v55, v56, v16);
        v17 = v55;
        v18 = *(&v56 + 1);
        v55 = v16;
        v53 = v62;
        v56 = v62;
        *&v62 = v17;
        *(&v62 + 1) = v18;
        keys = v17;
        v61 = v17;
        std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&keys);
        v12 = v53;
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(v12, v10 + 32, (v10 + 56));
        v12 += 2;
      }

      *&v56 = v12;
      v19 = *(v10 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v10 + 2);
          v21 = *v20 == v10;
          v10 = v20;
        }

        while (!v21);
      }

      v10 = v20;
    }

    while (v20 != v11);
  }

  v22 = (v12 - v55) >> 4;
  keys = 0;
  v61 = 0;
  *&v62 = 0;
  std::vector<void const*>::reserve(&keys, v22);
  v50 = a2;
  v51 = a6;
  values = 0;
  v58 = 0;
  v59 = 0;
  std::vector<void const*>::reserve(&values, v22);
  v23 = v55;
  v24 = keys;
  v25 = values;
  v54 = v56;
  if (v55 != v56)
  {
    v49 = v22;
    v27 = v61;
    v26 = v62;
    v29 = v58;
    v28 = v59;
    do
    {
      v30 = *v23;
      if (!*v23 || !*(v23 + 1))
      {
        keys = v24;
        values = v25;
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C260B30](exception, "Could not construct");
      }

      if (v27 >= v26)
      {
        v31 = v27 - v24;
        v32 = (v27 - v24) >> 3;
        v33 = v32 + 1;
        if ((v32 + 1) >> 61)
        {
          keys = v24;
          values = v25;
          std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
        }

        if ((v26 - v24) >> 2 > v33)
        {
          v33 = (v26 - v24) >> 2;
        }

        if (v26 - v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v34 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v34);
        }

        v35 = (8 * v32);
        v26 = 0;
        *v35 = v30;
        v27 = (v35 + 1);
        memcpy(0, v24, v31);
        if (v24)
        {
          operator delete(v24);
        }

        v24 = 0;
      }

      else
      {
        *v27 = v30;
        v27 += 8;
      }

      v36 = *(v23 + 1);
      if (v29 >= v28)
      {
        v37 = v29 - v25;
        v38 = (v29 - v25) >> 3;
        v39 = v38 + 1;
        if ((v38 + 1) >> 61)
        {
          keys = v24;
          values = v25;
          std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
        }

        if ((v28 - v25) >> 2 > v39)
        {
          v39 = (v28 - v25) >> 2;
        }

        if (v28 - v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v40 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v39;
        }

        if (v40)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v40);
        }

        v41 = (8 * v38);
        v28 = 0;
        *v41 = v36;
        v29 = (v41 + 1);
        memcpy(0, v25, v37);
        if (v25)
        {
          operator delete(v25);
        }

        v25 = 0;
      }

      else
      {
        *v29 = v36;
        v29 += 8;
      }

      v23 += 16;
    }

    while (v23 != v54);
    v61 = v27;
    *&v62 = v26;
    v59 = v28;
    keys = v24;
    values = v25;
    v58 = v29;
    v22 = v49;
  }

  v42 = v50;
  v43 = CFDictionaryCreate(0, v24, v25, v22, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v43)
  {
    v48 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C260B30](v48, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  keys = &v55;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&keys);
  if (a3)
  {
    v44 = a3;
    do
    {
      v46 = *v42++;
      v45 = v46;
      if (v46)
      {
        if (AudioStatisticsLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_218);
        }

        if (AudioStatisticsLibraryLoader(void)::libSym)
        {
          AudioStatisticsLibraryLoader(void)::libSym(v45, v43, a5, v51);
        }
      }

      --v44;
    }

    while (v44);
  }

  else
  {
    if (AudioStatisticsLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_218);
    }

    if (AudioStatisticsLibraryLoader(void)::libSym)
    {
      AudioStatisticsLibraryLoader(void)::libSym(v43, a5, v51);
    }
  }

  CFRelease(v43);
}

void std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(CFStringRef *a1, const UInt8 *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C260B30](exception, "Could not construct");
  }

  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
  a1[1] = v11;
  if (!v11)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C260B30](v14, "Could not construct");
  }

  return a1;
}

void sub_296C47328(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5);
      v5 += 2;
    }

    while (v5 != a3);
  }
}

void std::vector<void const*>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
  }
}

void std::allocator<void const*>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

void rtaid::ConfigurationManager::addSiriConfiguration(rtaid::ConfigurationManager *this, const rtaid::Detector *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(this) & 1) == 0)
  {
    rtaid::Detector::GetNodeIDs(&v10, a2);
    v4 = v10;
    v5 = v11;
    if (v10 != v11)
    {
      v6 = v10;
      do
      {
        v7 = *v6;
        v8 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(*(a2 + 1), *(a2 + 2), *v6);
        if (!v8 || !*(v8[3] + 188))
        {
          v12[0] = 2;
          v12[1] = v7;
          std::map<rtaid::AnalyzerType,unsigned int>::map[abi:ne200100](v9, v12, 1);
          std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__emplace_unique_key_args<std::map<rtaid::AnalyzerType,unsigned int>,std::map<rtaid::AnalyzerType,unsigned int> const&>(this + 24, v9, v9);
          std::__tree<ADAM::EndPointBitMask>::destroy(v9[1]);
        }

        ++v6;
      }

      while (v6 != v5);
    }

    if (v4)
    {
      operator delete(v4);
    }
  }
}

void std::allocator<rtaid::TelephonyResetDetector>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void rtaid::Detector::GetNodeIDs(rtaid::Detector *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    if (!(v2 >> 62))
    {
      std::allocator<rtaid::TelephonyResetDetector>::allocate_at_least[abi:ne200100](v2);
    }

    std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
  }

  if (*(a2 + 24))
  {
    std::allocator<rtaid::TelephonyResetDetector>::allocate_at_least[abi:ne200100](1uLL);
  }
}

void sub_296C478E4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(rtaid::ConfigurationManager *this)
{
  v11 = *MEMORY[0x29EDCA608];
  {
    rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection = CFPreferencesGetAppBooleanValue(@"DisableAudio", @"com.apple.audio.virtualaudio", 0) != 0;
  }

  if (rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection == 1)
  {
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
    }

    v1 = rtaid::get_log(void)::rtaid_os_log;
    v2 = os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT);
    v3 = rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection;
    if (v2)
    {
      v5 = 136315650;
      v6 = "ConfigurationManager.cpp";
      v7 = 1024;
      v8 = 409;
      v9 = 1024;
      v10 = rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection;
      _os_log_impl(&dword_296C34000, v1, OS_LOG_TYPE_DEFAULT, "%s:%-5d Defaults write for DisableAudio set to %d - silence detection will be bypassed", &v5, 0x18u);
      v3 = rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void ADAM::session_lock_exclusive::session_lock_exclusive(ADAM::session_lock_exclusive *this)
{
  ADAM::session_lock_exclusive::shared_cnt(this);
  ADAM::session_lock_exclusive::exclusive_flag(v1);
  v3 = 0;
  atomic_compare_exchange_strong(&ADAM::session_lock_exclusive::exclusive_flag(void)::_f, &v3, 1u);
  if (v3)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong(&ADAM::session_lock_exclusive::exclusive_flag(void)::_f, &v4, 1u);
      v5 = v4 == v3;
      LOBYTE(v3) = v4;
    }

    while (!v5);
  }

    ;
  }

  ADAM::session_lock::lock_inst(v2);

  JUMPOUT(0x29C260D10);
}

void AudioDataAnalysisManagerCreate(ADAM::AudioDataAnalysisManager *a1, uint64_t a2)
{
  v2 = a1;
  v10 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  ADAM::session_lock_exclusive::session_lock_exclusive(v3);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v4 = *ADAM::ADAMLogScope(void)::scope;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    buf[0] = 136315394;
    *&buf[1] = "AudioDataAnalysisManager.cpp";
    v8 = 1024;
    LODWORD(v9) = 84;
    _os_log_impl(&dword_296C34000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d createSessionManager: Exclusive lock acquired", buf, 0x12u);
  }

  do
  {
LABEL_10:
    v6 = rand();
  }

  while (std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, (v2 << 24) | v6 & 0xFFFFFF));
  operator new();
}

void sub_296C482CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,void *>>>>::~unique_ptr[abi:ne200100](va1);
  v4 = std::unique_ptr<ADAM::ClientSessionManager>::~unique_ptr[abi:ne200100](va);
  ADAM::session_lock_exclusive::~session_lock_exclusive(v4);
  _Unwind_Resume(a1);
}

void ADAM::AudioDataAnalysisManager::instance(ADAM::AudioDataAnalysisManager *this)
{
  {
    if (v1)
    {
      ADAM::AudioDataAnalysisManager::AudioDataAnalysisManager(v1);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (result[2] == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= *&v2)
        {
          v7 %= *&v2;
        }
      }

      else
      {
        v7 &= *&v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **std::__tree<std::__value_type<rtaid::AnalyzerType,unsigned int>,std::__map_value_compare<rtaid::AnalyzerType,std::__value_type<rtaid::AnalyzerType,unsigned int>,std::less<rtaid::AnalyzerType>,true>,std::allocator<std::__value_type<rtaid::AnalyzerType,unsigned int>>>::__emplace_hint_unique_key_args<rtaid::AnalyzerType,std::pair<rtaid::AnalyzerType const,unsigned int> const&>(uint64_t **result, uint64_t *a2, unsigned int a3, void *a4)
{
  v4 = (result + 1);
  if (result + 1 == a2 || (v5 = *(a2 + 7), v5 > a3))
  {
    v6 = *a2;
    if (*result == a2)
    {
      v8 = a2;
LABEL_16:
      if (v6)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a2;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (*(v8 + 7) < a3)
    {
      goto LABEL_16;
    }

    v14 = *v4;
    if (*v4)
    {
      while (1)
      {
        while (1)
        {
          v15 = v14;
          v16 = *(v14 + 28);
          if (v16 <= a3)
          {
            break;
          }

          v14 = *v15;
          v4 = v15;
          if (!*v15)
          {
            goto LABEL_38;
          }
        }

        if (v16 >= a3)
        {
          break;
        }

        v4 = v15 + 1;
        v14 = v15[1];
        if (!v14)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v9 = v4;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v5 >= a3)
  {
    return result;
  }

  v9 = a2 + 1;
  v10 = a2[1];
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a2;
    do
    {
      v17 = v11;
      v11 = v11[2];
    }

    while (*v11 != v17);
  }

  if (v11 != v4 && *(v11 + 7) <= a3)
  {
    for (i = *v4; i; i = v19[1])
    {
      while (1)
      {
        v19 = i;
        v20 = *(i + 28);
        if (v20 <= a3)
        {
          break;
        }

        i = *v19;
        v4 = v19;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        goto LABEL_39;
      }

      v4 = v19 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v9)
  {
    goto LABEL_38;
  }

  return result;
}

void sub_296C48850(_Unwind_Exception *a1)
{
  std::__tree<ADAM::EndPointBitMask>::destroy(v2[5]);
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::map<rtaid::AnalyzerType,unsigned int>,void *>>>::operator()[abi:ne200100](0, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__emplace_unique_key_args<std::map<rtaid::AnalyzerType,unsigned int>,std::map<rtaid::AnalyzerType,unsigned int> const&>(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_8:
    std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__construct_node<std::map<rtaid::AnalyzerType,unsigned int> const&>(v11, a1, a3);
  }

  v6 = a2 + 1;
  v7 = *a2;
  while (1)
  {
    while (1)
    {
      v8 = v5;
      v9 = v5[4];
      if ((_ZNSt3__145__lexicographical_compare_three_way_slow_pathB8ne200100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN5rtaid12AnalyzerTypeEjEEPNS_11__tree_nodeIS6_PvEElEEEESC_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESD_SD_SG_SG_RT1_(v7, v6, v9, v5 + 5) & 0x80) == 0)
      {
        break;
      }

      v5 = *v8;
      if (!*v8)
      {
        goto LABEL_8;
      }
    }

    result = _ZNSt3__145__lexicographical_compare_three_way_slow_pathB8ne200100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN5rtaid12AnalyzerTypeEjEEPNS_11__tree_nodeIS6_PvEElEEEESC_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESD_SD_SG_SG_RT1_(v9, v8 + 5, v7, v6);
    if ((result & 0x80) == 0)
    {
      return result;
    }

    v5 = v8[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }
}

uint64_t **std::map<rtaid::AnalyzerType,unsigned int>::map[abi:ne200100](uint64_t **a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<rtaid::AnalyzerType,unsigned int>,std::__map_value_compare<rtaid::AnalyzerType,std::__value_type<rtaid::AnalyzerType,unsigned int>,std::less<rtaid::AnalyzerType>,true>,std::allocator<std::__value_type<rtaid::AnalyzerType,unsigned int>>>::__emplace_hint_unique_key_args<rtaid::AnalyzerType,std::pair<rtaid::AnalyzerType const,unsigned int> const&>(a1, v4, *a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::allocator<AudioServiceType>::allocate_at_least[abi:ne200100](uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t _ZNSt3__145__lexicographical_compare_three_way_slow_pathB8ne200100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN5rtaid12AnalyzerTypeEjEEPNS_11__tree_nodeIS6_PvEElEEEESC_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESD_SD_SG_SG_RT1_(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a3 == a4;
  v5 = a1 == a2;
  if (a1 == a2 || a3 == a4)
  {
LABEL_17:
    if (v5)
    {
      return (v4 - 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    while (1)
    {
      v6 = *(a1 + 7);
      v7 = *(a3 + 7);
      v8 = v6 >= v7;
      if (v6 != v7)
      {
        break;
      }

      v9 = *(a1 + 8);
      v10 = *(a3 + 8);
      v8 = v9 >= v10;
      if (v9 != v10)
      {
        break;
      }

      v11 = a1[1];
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
          v12 = a1[2];
          v13 = *v12 == a1;
          a1 = v12;
        }

        while (!v13);
      }

      v14 = a3[1];
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
          v15 = a3[2];
          v13 = *v15 == a3;
          a3 = v15;
        }

        while (!v13);
      }

      v4 = v15 == a4;
      v5 = v12 == a2;
      if (v12 != a2)
      {
        a1 = v12;
        a3 = v15;
        if (v15 != a4)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }
}

void AudioIssueDetectorDispose(unint64_t a1)
{
  if (AudioDSPAnalysisEnabled())
  {
    RealTimeAudioIssueDetectorDispose();
  }

  SingletonManagerInstance();
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  atomic_fetch_add(&dword_2A18A5398, 1u);
  v2 = qword_2A18A5370;
  if (qword_2A18A5370)
  {
    v3 = vcnt_s8(qword_2A18A5370);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a1;
      if (qword_2A18A5370 <= a1)
      {
        v4 = a1 % qword_2A18A5370;
      }
    }

    else
    {
      v4 = (qword_2A18A5370 - 1) & a1;
    }

    v5 = *(qword_2A18A5368 + 8 * v4);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = qword_2A18A5370 - 1;
        do
        {
          v8 = v6[1];
          if (v8 == a1)
          {
            if (v6[2] == a1)
            {
              v9 = v6[1];
              if (v3.u32[0] > 1uLL)
              {
                if (v9 >= qword_2A18A5370)
                {
                  v9 %= qword_2A18A5370;
                }
              }

              else
              {
                v9 &= v7;
              }

              v10 = *(qword_2A18A5368 + 8 * v9);
              do
              {
                v11 = v10;
                v10 = *v10;
              }

              while (v10 != v6);
              if (v11 == &qword_2A18A5378)
              {
                goto LABEL_38;
              }

              v12 = v11[1];
              if (v3.u32[0] > 1uLL)
              {
                if (v12 >= qword_2A18A5370)
                {
                  v12 %= qword_2A18A5370;
                }
              }

              else
              {
                v12 &= v7;
              }

              if (v12 != v9)
              {
LABEL_38:
                if (!*v6)
                {
                  goto LABEL_39;
                }

                v13 = *(*v6 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v13 >= qword_2A18A5370)
                  {
                    v13 %= qword_2A18A5370;
                  }
                }

                else
                {
                  v13 &= v7;
                }

                if (v13 != v9)
                {
LABEL_39:
                  *(qword_2A18A5368 + 8 * v9) = 0;
                }
              }

              v14 = *v6;
              if (*v6)
              {
                v15 = *(v14 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v15 >= v2)
                  {
                    v15 %= v2;
                  }
                }

                else
                {
                  v15 &= v7;
                }

                if (v15 != v9)
                {
                  *(qword_2A18A5368 + 8 * v15) = v11;
                  v14 = *v6;
                }
              }

              *v11 = v14;
              *v6 = 0;
              --qword_2A18A5380;
              std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,void *>>>::operator()[abi:ne200100](1, v6);
              break;
            }
          }

          else
          {
            if (v3.u32[0] > 1uLL)
            {
              if (v8 >= qword_2A18A5370)
              {
                v8 %= qword_2A18A5370;
              }
            }

            else
            {
              v8 &= v7;
            }

            if (v8 != v4)
            {
              break;
            }
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }

  atomic_fetch_add(&dword_2A18A5398, 0xFFFFFFFF);

  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void rtaid::Detector::~Detector(std::__shared_weak_count **this)
{
  v20 = *MEMORY[0x29EDCA608];
  for (i = this + 3; ; rtaid::Detector::checkAndResetAnalyzers(this, i + 3))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v3 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
  {
    v10 = 136316162;
    v11 = "Detector.cpp";
    v12 = 1024;
    v13 = 34;
    v14 = 1040;
    v15 = 15;
    v16 = 2080;
    v17 = "rtaid::Detector]";
    v18 = 2048;
    v19 = this;
    _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] destroyed", &v10, 0x2Cu);
  }

  v4 = this[81];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[77];
  if (v5)
  {
    this[78] = v5;
    operator delete(v5);
  }

  v6 = this[74];
  if (v6)
  {
    this[75] = v6;
    operator delete(v6);
  }

  std::__function::__value_func<void ()(rtaid::IssueDictionary)>::~__value_func[abi:ne200100]((this + 8));
  v7 = this[3];
  if (v7)
  {
    do
    {
      v8 = v7->__vftable;
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,rtaid::Detector::NodeBook>,0>(&v7->__shared_weak_owners_);
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = this[1];
  this[1] = 0;
  if (v9)
  {
    operator delete(v9);
  }
}

void sub_296C48FD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

std::__shared_weak_count **std::__shared_ptr_pointer<rtaid::Detector  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    rtaid::Detector::~Detector(result);

    JUMPOUT(0x29C260F00);
  }

  return result;
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void ADAM::session_lock_exclusive::~session_lock_exclusive(ADAM::session_lock_exclusive *this)
{
  ADAM::session_lock::lock_inst(this);
  v1 = MEMORY[0x29C260D20](&ADAM::session_lock::lock_inst(void)::_m);
  ADAM::session_lock_exclusive::exclusive_flag(v1);
  atomic_store(0, &ADAM::session_lock_exclusive::exclusive_flag(void)::_f);
}

uint64_t *std::unique_ptr<ADAM::ClientSessionManager>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(v2 + 248);
    if (v4)
    {
      if ((*(v2 + 280) & 4) != 0)
      {
        Copy = @"Codec";
      }

      else
      {
        Copy = CFStringCreateCopy(0, v4);
      }
    }

    else
    {
      Copy = 0;
    }

    v6 = *(v2 + 280);
    v7 = [MEMORY[0x29EDC1528] sharedInstance];
    [v7 deviceSessionDestroyed:Copy isWired:(v6 >> 1) & 1];

    objc_autoreleasePoolPop(v3);
    ADAM::releaseADAMDeviceInfo(v2 + 248);
    std::deque<std::shared_ptr<ADAM::BufferNodeMsg>>::~deque[abi:ne200100](v2 + 384);
    std::mutex::~mutex((v2 + 320));
    v8 = *(v2 + 296);
    if (v8)
    {
      *(v2 + 304) = v8;
      operator delete(v8);
    }

    std::mutex::~mutex((v2 + 184));
    std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::~__hash_table(v2 + 144);
    v10 = (v2 + 120);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
    std::mutex::~mutex((v2 + 56));
    std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>>>::~__hash_table(v2 + 16);
    MEMORY[0x29C260F00](v2, 0x10E0C40934A0773);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<ADAM::ClientSessionManager>::~unique_ptr[abi:ne200100](v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

void ADAM::ClientSessionManager::updateReportingSessions(uint64_t a1, uint64_t **a2)
{
  v45 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (!ADAM::ADAMLogScope(void)::scope)
  {
    v3 = MEMORY[0x29EDCA988];
    v4 = MEMORY[0x29EDCA988];
    goto LABEL_7;
  }

  v3 = *ADAM::ADAMLogScope(void)::scope;
  if (v3)
  {
LABEL_7:
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = a2[1] - *a2;
      *buf = 136315650;
      *&buf[4] = "ADAMClientSessionManager.cpp";
      buf_12 = 1024;
      buf_14 = 65;
      v43 = 2048;
      v44 = v5;
      _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d updating reporting sessions with %lu keys", buf, 0x1Cu);
    }
  }

  v6 = a2[1];
  v7 = *a2;
  if (v6 == *a2)
  {
    return;
  }

  v38[0] = 0;
  v38[1] = 0;
  v8 = &rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
  v37 = v38;
  do
  {
    v9 = *v7;
    if (AudioStatisticsLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_1204);
      v8 = &rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
    }

    if (*(v8 + 23))
    {
      v10 = (*(v8 + 23))(v9);
    }

    else
    {
      v10 = 0;
    }

    theDict[0] = v10;
    LOWORD(theDict[1]) = 1;
    if (CFDictionaryContainsKey(v10, @"HostApplicationDisplayID"))
    {
      if (theDict[0])
      {
        Value = CFDictionaryGetValue(theDict[0], @"HostApplicationDisplayID");
        v12 = Value;
        if (Value)
        {
          v13 = CFGetTypeID(Value);
          if (v13 == CFStringGetTypeID())
          {
            if (ADAM::ADAMLogScope(void)::once != -1)
            {
              dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
            }

            if (ADAM::ADAMLogScope(void)::scope)
            {
              v14 = *ADAM::ADAMLogScope(void)::scope;
              if (!v14)
              {
LABEL_50:
                v15 = v12;
                v21 = v15;
                v22 = [v15 UTF8String];
                v23 = strlen(v22);
                if (v23 >= 0x7FFFFFFFFFFFFFF8)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v24 = v23;
                if (v23 >= 0x17)
                {
                  operator new();
                }

                BYTE3(v44) = v23;
                if (v23)
                {
                  memmove(buf, v22, v23);
                }

                buf[v24] = 0;
                v25 = v38[0];
                if (!v38[0])
                {
LABEL_62:
                  operator new();
                }

                while (1)
                {
                  while (1)
                  {
                    v26 = v25;
                    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, v25 + 4) & 0x80) == 0)
                    {
                      break;
                    }

                    v25 = *v26;
                    if (!*v26)
                    {
                      goto LABEL_62;
                    }
                  }

                  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v26 + 4, buf) & 0x80) == 0)
                  {
                    break;
                  }

                  v25 = *(v26 + 1);
                  if (!v25)
                  {
                    goto LABEL_62;
                  }
                }

                if (SBYTE3(v44) < 0)
                {
                  operator delete(*buf);
                }

                goto LABEL_43;
              }
            }

            else
            {
              v14 = MEMORY[0x29EDCA988];
              v20 = MEMORY[0x29EDCA988];
            }

            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              *&buf[4] = "ADAMClientSessionManager.cpp";
              buf_12 = 1024;
              buf_14 = 85;
              v43 = 2112;
              v44 = v12;
              _os_log_impl(&dword_296C34000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d updating bundleID: %@", buf, 0x1Cu);
            }

            goto LABEL_50;
          }
        }
      }

      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (!ADAM::ADAMLogScope(void)::scope)
      {
        v15 = MEMORY[0x29EDCA988];
        v16 = MEMORY[0x29EDCA988];
LABEL_37:
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "ADAMClientSessionManager.cpp";
          buf_12 = 1024;
          buf_14 = 91;
          v43 = 2048;
          v44 = v9;
          v17 = v15;
          v18 = "%25s:%-5d Missing HostApplicationDisplayID for CAReporterID %llu";
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v15 = *ADAM::ADAMLogScope(void)::scope;
      if (v15)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (!ADAM::ADAMLogScope(void)::scope)
      {
        v15 = MEMORY[0x29EDCA988];
        v19 = MEMORY[0x29EDCA988];
LABEL_40:
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "ADAMClientSessionManager.cpp";
          buf_12 = 1024;
          buf_14 = 79;
          v43 = 2112;
          v44 = theDict[0];
          v17 = v15;
          v18 = "%25s:%-5d Configuration has no key 'HostApplicationDisplayID', %@";
LABEL_42:
          _os_log_impl(&dword_296C34000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0x1Cu);
        }

LABEL_43:

        goto LABEL_44;
      }

      v15 = *ADAM::ADAMLogScope(void)::scope;
      if (v15)
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    CACFDictionary::~CACFDictionary(theDict);
    ++v7;
    v8 = &rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap;
  }

  while (v7 != v6);
  std::mutex::lock((a1 + 184));
  theDict[1] = 0;
  v36 = 0;
  theDict[0] = 0;
  if (v37 != v38)
  {
    v27 = 0;
    v28 = v37;
    do
    {
      v29 = v27;
      v30 = v28[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v28[2];
          v32 = *v31 == v28;
          v28 = v31;
        }

        while (!v32);
      }

      ++v27;
      v28 = v31;
    }

    while (v31 != v38);
    v38[2] = theDict;
    v39 = 0;
    if (v29 < 0xAAAAAAAAAAAAAAALL)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v27);
    }

    std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
  }

  std::vector<std::string>::__vdeallocate((a1 + 120));
  *(a1 + 120) = *theDict;
  *(a1 + 136) = v36;
  theDict[1] = 0;
  v36 = 0;
  theDict[0] = 0;
  *buf = theDict;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  for (i = *(a1 + 160); i; i = *i)
  {
    *(i + 20) = 1;
  }

  std::mutex::unlock((a1 + 184));
  std::__tree<std::string>::destroy(v38[0]);
}

void CACFDictionary::~CACFDictionary(CACFDictionary *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
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

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t AudioDataAnalysisManagerCreateNodePCM(ADAM::AudioDataAnalysisManager *a1, unsigned int a2, uint64_t a3, __int128 *a4, int a5, char a6)
{
  v18 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  if (ADAM::isSpeechAnalysisEnabled(void)::once != -1)
  {
    dispatch_once(&ADAM::isSpeechAnalysisEnabled(void)::once, &__block_literal_global_33);
  }

  if ((ADAM::isSpeechAnalysisEnabled(void)::ans & 1) == 0)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      result = *ADAM::ADAMLogScope(void)::scope;
      v11 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v11 = MEMORY[0x29EDCA988];
      v12 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      buf = 136315394;
      buf_4 = "AudioDataAnalysisManager.cpp";
      buf_12 = 1024;
      buf_14 = 182;
      _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d speech analysis is disabled", &buf, 0x12u);
    }

    goto LABEL_19;
  }

  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (!ClientSessionMananger)
  {
    return 561211748;
  }

  v9 = ClientSessionMananger;
  if (ADAM::hasEntitlementForSensorkitSiri(void)::once != -1)
  {
    dispatch_once(&ADAM::hasEntitlementForSensorkitSiri(void)::once, &__block_literal_global_74);
  }

  if (ADAM::hasEntitlementForSensorkitSiri(void)::ans)
  {
    goto LABEL_8;
  }

  if (ADAM::hasEntitlementForSensorkitTelephony(void)::once != -1)
  {
    dispatch_once(&ADAM::hasEntitlementForSensorkitTelephony(void)::once, &__block_literal_global_79);
  }

  if (ADAM::hasEntitlementForSensorkitTelephony(void)::ans == 1)
  {
    if ((*(v9 + 433) & 1) == 0)
    {
LABEL_29:
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        result = *ADAM::ADAMLogScope(void)::scope;
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v11 = MEMORY[0x29EDCA988];
        v13 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        buf = 136315394;
        buf_4 = "ADAMClientSessionManager.cpp";
        buf_12 = 1024;
        buf_14 = 359;
        _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d speech analysis is not monitoring", &buf, 0x12u);
      }

LABEL_19:

      return 0;
    }
  }

  else
  {
    if (ADAM::isXCTest(void)::once != -1)
    {
      dispatch_once(&ADAM::isXCTest(void)::once, &__block_literal_global_61);
    }

    if ((ADAM::isXCTest(void)::isXCTest & 1) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_8:
  if (!std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v9 + 16), a2))
  {
    operator new();
  }

  return 1852400673;
}

void sub_296C4A800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  operator delete(v15);
  if (a13)
  {
    operator delete(a13);
  }

  std::mutex::unlock(v13 + 5);
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

uint64_t ADAM::AudioDataAnalysisManager::getClientSessionMananger(ADAM::AudioDataAnalysisManager *this, unint64_t a2)
{
  ADAM::session_lock::lock_inst(this);
  MEMORY[0x29C260CF0](&ADAM::session_lock::lock_inst(void)::_m);
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(this, a2);
  if (v4)
  {
    v5 = *(v4 + 3);
  }

  else
  {
    v5 = 0;
  }

  ADAM::session_lock_shared::~session_lock_shared(v4);
  return v5;
}

void *std::vector<ADAM::BufferNodeMsg>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<ADAMAudioDataAnalysisType>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_296C4AA30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ADAM::Parameters::GetParamValue<BOOL>(unsigned int a1)
{
  if (a1 >= ((qword_2A18A5310 - ADAM::Parameters::instance(void)::gParams) >> 4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v6, a1);
    v5 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v7, "unknown ADAMParameterType ", &v6);
    MEMORY[0x29C260B10](exception, &v7, v5);
  }

  v2 = std::any_cast[abi:ne200100]<BOOL>((*(ADAM::Parameters::instance(void)::gParams + 16 * a1) + 16));
  if (!v2)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v2;
}

void sub_296C4AB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v22 - 33) < 0)
  {
    operator delete(*(v22 - 56));
  }

  if (a20 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_296C4AD08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v26 & 1) == 0)
    {
LABEL_12:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v27);
  goto LABEL_12;
}

void sub_296C4AE0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v14);
  __cxa_end_catch();
  JUMPOUT(0x296C4AE34);
}

uint64_t ADAM::BufferNodeBase::getEndPointBitMask(void *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v31 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    v8 = a1[1];
    if (v8 > 13)
    {
      if (v8 == 14)
      {
        v3 = *a1;
LABEL_46:
        if (*v3 == 0x532D747365544358 && *(v3 + 6) == 0x65646F4E4C50532DLL)
        {
          v2 = a2 | 0x20;
          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v16 = *ADAM::ADAMLogScope(void)::scope;
            if (!v16)
            {
              return v2;
            }
          }

          else
          {
            v16 = MEMORY[0x29EDCA988];
            v23 = MEMORY[0x29EDCA988];
          }

          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_66;
          }

          v25 = 136315394;
          v26 = "ADAMBufferNodes.cpp";
          v27 = 1024;
          v28 = 96;
          v20 = "%25s:%-5d ADAM enable csv file for XCTest";
          v21 = v16;
          v22 = 18;
          goto LABEL_65;
        }

        return v2;
      }

      if (v8 != 16)
      {
        return v2;
      }

      v9 = *(*a1 + 8);
      v10 = **a1 == 0x6365722D63767661;
      v11 = 0x657565755164726FLL;
    }

    else
    {
      if (v8 == 5)
      {
        if (**a1 != 1970237541 || *(*a1 + 4) != 116)
        {
          return v2;
        }

LABEL_39:
        ADAM::Parameters::instance(a1);
        if (!ADAM::Parameters::GetParamValue<BOOL>(0))
        {
          return v2;
        }

        v2 |= 8uLL;
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v16 = *ADAM::ADAMLogScope(void)::scope;
          if (!v16)
          {
            return v2;
          }
        }

        else
        {
          v16 = MEMORY[0x29EDCA988];
          v18 = MEMORY[0x29EDCA988];
        }

        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
LABEL_66:

          return v2;
        }

        if (*(v3 + 23) >= 0)
        {
          v19 = v3;
        }

        else
        {
          v19 = *v3;
        }

        v25 = 136315650;
        v26 = "ADAMBufferNodes.cpp";
        v27 = 1024;
        v28 = 92;
        v29 = 2080;
        v30 = v19;
        v20 = "%25s:%-5d ADAM enable dumping audio file for %s";
        v21 = v16;
        v22 = 28;
LABEL_65:
        _os_log_impl(&dword_296C34000, v21, OS_LOG_TYPE_DEFAULT, v20, &v25, v22);
        goto LABEL_66;
      }

      if (v8 != 11)
      {
        return v2;
      }

      v9 = *(*a1 + 3);
      v10 = **a1 == 0x4E2D747365544358;
      v11 = 0x65646F4E2D747365;
    }

    if (!v10 || v9 != v11)
    {
      return v2;
    }

    goto LABEL_39;
  }

  v4 = *(a1 + 23);
  if (v4 > 0xD)
  {
    if (v4 != 14)
    {
      if (v4 != 16)
      {
        return v2;
      }

      v5 = a1[1];
      v6 = *a1 == 0x6365722D63767661;
      v7 = 0x657565755164726FLL;
      goto LABEL_13;
    }

    goto LABEL_46;
  }

  if (v4 != 5)
  {
    if (v4 != 11)
    {
      return v2;
    }

    v5 = *(a1 + 3);
    v6 = *a1 == 0x4E2D747365544358;
    v7 = 0x65646F4E2D747365;
LABEL_13:
    if (!v6 || v5 != v7)
    {
      return v2;
    }

    goto LABEL_39;
  }

  if (*a1 == 1970237541 && *(a1 + 4) == 116)
  {
    goto LABEL_39;
  }

  return v2;
}

uint64_t (**std::any_cast[abi:ne200100]<BOOL>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<BOOL>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ADAM::Parameters::instance(ADAM::Parameters *this)
{
  {
    if (v1)
    {
      ADAM::Parameters::Parameters(v1);
    }
  }
}

uint64_t std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<BOOL>::__id && a4 == 0;
  v6 = a2 + 8;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void ADAM::allocAudioBufferList(ADAM *this, AudioBufferList **a2, const AudioStreamBasicDescription *a3, int a4)
{
  v5 = a3;
  if ((*(a2 + 3) & 0x20) != 0)
  {
    v8 = *(a2 + 7);
  }

  else
  {
    v8 = 1;
  }

  v9 = 16 * (v8 - 1);
  v10 = malloc_type_malloc(v9 + 24, 0x5221892AuLL);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  bzero(v10, v9 + 24);
  *this = v11;
  *v11 = v8;
  if (v8 == 1)
  {
    v12 = *(a2 + 7);
  }

  else
  {
    v12 = 1;
  }

  if (v8)
  {
    v13 = 0;
    v14 = (*(a2 + 6) * a4 * v5);
    while (1)
    {
      v15 = *this + v13;
      *(v15 + 8) = v12;
      *(v15 + 12) = 0;
      v16 = malloc_type_malloc(v14, 0x47F368E1uLL);
      v17 = v16;
      if (v14)
      {
        if (!v16)
        {
          break;
        }
      }

      bzero(v16, v14);
      *(*this + v13 + 16) = v17;
      v13 += 16;
      if (16 * v8 == v13)
      {
        return;
      }
    }

LABEL_14:
    exception = __cxa_allocate_exception(8uLL);
    v19 = std::bad_alloc::bad_alloc(exception);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::allocator<std::__state<char> *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ADAM::AudioDataAnalysisManager::signal(unint64_t *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = qword_2A18A51E0[0];
    atomic_store(qword_2A18A51E0[0], a1);
    v2 = v1;
    atomic_compare_exchange_strong(qword_2A18A51E0, &v2, a1);
    if (v2 != v1)
    {
      v3 = v2;
      do
      {
        atomic_store(v2, a1);
        atomic_compare_exchange_strong(qword_2A18A51E0, &v3, a1);
        v4 = v3 == v2;
        v2 = v3;
      }

      while (!v4);
    }
  }

  else
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v5 = *ADAM::ADAMLogScope(void)::scope;
      if (!v5)
      {
        return caulk::semaphore::signal(&unk_2A18A51C8);
      }
    }

    else
    {
      v5 = MEMORY[0x29EDCA988];
      v6 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "AudioDataAnalysisManager.cpp";
      v10 = 1024;
      v11 = 582;
      _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d *****SEVER ERROR: A NULL msg is received", &v8, 0x12u);
    }
  }

  return caulk::semaphore::signal(&unk_2A18A51C8);
}

uint64_t AudioDataAnalysisManagerInitialize(ADAM::AudioDataAnalysisManager *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  ADAM::AudioDataAnalysisManager::initialize(v2);
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (!ClientSessionMananger)
  {
    return 561211748;
  }

  v4 = ClientSessionMananger;
  std::vector<ADAM::BufferNodeMsg>::vector[abi:ne200100](v13, *(ClientSessionMananger + 40));
  v5 = *(v4 + 296);
  if (v5)
  {
    *(v4 + 304) = v5;
    operator delete(v5);
  }

  *(v4 + 296) = *v13;
  *(v4 + 312) = *&v13[16];
  for (i = *(v4 + 32); i; i = *i)
  {
    v7 = *(i + 4);
    *v13 = i + 2;
    *(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v4 + 144), v7, v13) + 20) = 0;
    (**i[3])(i[3]);
  }

  *(v4 + 432) = 1;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    result = *ADAM::ADAMLogScope(void)::scope;
    v9 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(v4 + 40);
    v12 = *(v4 + 8);
    *v13 = 136315906;
    *&v13[4] = "ADAMClientSessionManager.cpp";
    *&v13[12] = 1024;
    *&v13[14] = 325;
    *&v13[18] = 2048;
    *&v13[20] = v11;
    v14 = 2048;
    v15 = v12;
    _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created %lu buffers for session: %llx", v13, 0x26u);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void ADAM::BufferNodePCM::initialize(ADAM::BufferNodePCM *this)
{
  v11 = *MEMORY[0x29EDCA608];
  if ((*(this + 8) & 1) == 0)
  {
    ADAM::AudioDataAnalysisManager::instance(this);
    ADAM::Dispatcher::addWriter(qword_2A18A5230, *(this + 2), *(this + 12));
    *(this + 8) = 1;
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v2 = *ADAM::ADAMLogScope(void)::scope;
      if (!v2)
      {
        return;
      }
    }

    else
    {
      v2 = MEMORY[0x29EDCA988];
      v3 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(this + 2);
      v5 = 136315650;
      v6 = "ADAMBufferNodes.cpp";
      v7 = 1024;
      v8 = 35;
      v9 = 2048;
      v10 = v4;
      _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session: %llx initialized", &v5, 0x1Cu);
    }
  }
}

void ADAM::AudioDataAnalysisManager::initialize(ADAM::AudioDataAnalysisManager *this)
{
  v18 = *MEMORY[0x29EDCA608];
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &ADAM::AudioDataAnalysisManager::initialize(void)::sLock, &dword_296C34000);
  }

  std::mutex::lock(&ADAM::AudioDataAnalysisManager::initialize(void)::sLock);
  if (byte_2A18A51D8)
  {
    goto LABEL_44;
  }

  if (ADAM::isXCTest(void)::once != -1)
  {
    dispatch_once(&ADAM::isXCTest(void)::once, &__block_literal_global_61);
  }

  if (ADAM::isXCTest(void)::isXCTest)
  {
    goto LABEL_24;
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (!ADAM::ADAMLogScope(void)::scope)
  {
    v1 = MEMORY[0x29EDCA988];
    v2 = MEMORY[0x29EDCA988];
    goto LABEL_12;
  }

  v1 = *ADAM::ADAMLogScope(void)::scope;
  if (v1)
  {
LABEL_12:
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AudioDataAnalysisManager.cpp";
      v16 = 1024;
      v17 = 801;
      _os_log_impl(&dword_296C34000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting ADAM XPC Service Listeners...", buf, 0x12u);
    }
  }

  v3 = [objc_alloc(MEMORY[0x29EDBA180]) initWithMachServiceName:@"com.apple.audio.adam.xpc"];
  v4 = *(qword_2A18A5240 + 8);
  *(qword_2A18A5240 + 8) = v3;

  v5 = objc_alloc_init(ADAMServiceListenerDelegate);
  v6 = *qword_2A18A5240;
  *qword_2A18A5240 = v5;

  [*(qword_2A18A5240 + 8) setDelegate:*qword_2A18A5240];
  [*(qword_2A18A5240 + 8) resume];
  [MEMORY[0x29EDC1530] startNotificationCenterServer];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v7 = *ADAM::ADAMLogScope(void)::scope;
    if (!v7)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AudioDataAnalysisManager.cpp";
    v16 = 1024;
    v17 = 809;
    _os_log_impl(&dword_296C34000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ADAM XPC Services Started...", buf, 0x12u);
  }

LABEL_24:
  v13 = qword_2A18A5238;
  if (atomic_load_explicit(&ADAM::Sequencer::init(void)::mOnce, memory_order_acquire) != -1)
  {
    *buf = &v13;
    v14 = buf;
    std::__call_once(&ADAM::Sequencer::init(void)::mOnce, &v14, std::__call_once_proxy[abi:ne200100]<std::tuple<ADAM::Sequencer::init(void)::$_0 &&>>);
  }

  *(qword_2A18A5228 + 112) = 1;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (!ADAM::ADAMLogScope(void)::scope)
  {
    v9 = MEMORY[0x29EDCA988];
    v10 = MEMORY[0x29EDCA988];
    goto LABEL_32;
  }

  v9 = *ADAM::ADAMLogScope(void)::scope;
  if (v9)
  {
LABEL_32:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "ADAMAnalyzerManager.cpp";
      v16 = 1024;
      v17 = 55;
      _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d AnalyzerManager initialized", buf, 0x12u);
    }
  }

  byte_2A18A51D8 = 1;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v11 = *ADAM::ADAMLogScope(void)::scope;
    if (!v11)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v11 = MEMORY[0x29EDCA988];
    v12 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AudioDataAnalysisManager.cpp";
    v16 = 1024;
    v17 = 73;
    _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ADAM Initialized", buf, 0x12u);
  }

LABEL_44:
  std::mutex::unlock(&ADAM::AudioDataAnalysisManager::initialize(void)::sLock);
}

void ADAM::Dispatcher::addWriter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  buf[7] = *MEMORY[0x29EDCA608];
  v76 = a2;
  std::mutex::lock(a1);
  v59 = a1;
  v7 = (a1 + 72);
  v6 = *(a1 + 72);
  v60 = a1 + 64;
  if (!v6)
  {
    *v81 = a2;
    *&v81[16] = 0;
    *&v81[24] = 0;
    memset(&v80, 0, sizeof(v80));
LABEL_17:
    operator new();
  }

  v8 = (a1 + 72);
  v9 = *(a1 + 72);
  do
  {
    v10 = v9[4];
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v8 = v9;
    }

    v9 = v9[v12];
  }

  while (v9);
  if (v8 == v7 || v8[4] > a2)
  {
    *v81 = a2;
    *&v81[16] = 0;
    *&v81[24] = 0;
    memset(&v80, 0, sizeof(v80));
    while (1)
    {
      while (1)
      {
        v13 = v6;
        v14 = v6[4];
        if (v14 <= a2)
        {
          break;
        }

        v6 = *v13;
        if (!*v13)
        {
          goto LABEL_17;
        }
      }

      if (v14 >= a2)
      {
        break;
      }

      v6 = v13[1];
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    buf[0] = &v81[8];
    std::vector<std::unique_ptr<ADAM::Writer>>::__destroy_vector::operator()[abi:ne200100](buf);
    buf[0] = &v80;
    std::vector<std::unique_ptr<ADAM::Writer>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v70 = v7;
  v15 = ADAM::unpackEndPoints(&v74, a3);
  v16 = v74;
  if (v74 != v75)
  {
    v68 = *(MEMORY[0x29EDC9528] + 24);
    v69 = *(MEMORY[0x29EDC9528] + 16);
    v67 = *(MEMORY[0x29EDC9528] + 32);
    v66 = *(MEMORY[0x29EDC9528] + 40);
    v64 = *(MEMORY[0x29EDC9528] + 8);
    v65 = *(MEMORY[0x29EDC9528] + 48);
    v63 = *MEMORY[0x29EDC9528];
    v61 = *(MEMORY[0x29EDC9528] + 72);
    v62 = *(MEMORY[0x29EDC9528] + 64);
    do
    {
      v17 = *v70;
      if (!*v70)
      {
LABEL_132:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }

      v18 = v16[4];
      while (1)
      {
        while (1)
        {
          v19 = v17[4];
          if (v19 <= a2)
          {
            break;
          }

          v17 = *v17;
          if (!v17)
          {
            goto LABEL_132;
          }
        }

        if (v19 >= a2)
        {
          break;
        }

        v17 = v17[1];
        if (!v17)
        {
          goto LABEL_132;
        }
      }

      v21 = v17[5];
      v20 = v17[6];
      if (v21 != v20)
      {
        v22 = v21 + 8;
        do
        {
          v23 = *(*(v22 - 8) + 40);
          v24 = v23 == v18 || v22 == v20;
          v22 += 8;
        }

        while (!v24);
        if (v23 == v18)
        {
          goto LABEL_116;
        }
      }

      __val = v16[4];
      v79 = a2;
      ADAM::AudioDataAnalysisManager::instance(v15);
      NodeDescriptor = ADAM::AudioDataAnalysisManager::getNodeDescriptor(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a2);
      v90[6] = 0;
      v25 = MEMORY[0x29EDC9590] + 104;
      v90[0] = MEMORY[0x29EDC9590] + 104;
      v26 = MEMORY[0x29EDC9590] + 64;
      *&v81[16] = MEMORY[0x29EDC9590] + 64;
      *v81 = v69;
      *&v81[*(v69 - 24)] = v68;
      *&v81[8] = 0;
      v27 = &v81[*(*v81 - 24)];
      std::ios_base::init(v27, &v81[24]);
      v28 = MEMORY[0x29EDC9590] + 24;
      v27[1].__vftable = 0;
      v27[1].__fmtflags_ = -1;
      *&v81[16] = v67;
      *&v81[*(v67 - 24) + 16] = v66;
      *v81 = v64;
      *&v81[*(v64 - 24)] = v65;
      v90[0] = v25;
      *v81 = v28;
      v29 = MEMORY[0x29EDC9568] + 16;
      *&v81[16] = v26;
      *&v81[24] = MEMORY[0x29EDC9568] + 16;
      MEMORY[0x29C260DE0](&v81[32]);
      v86 = 0u;
      v85 = 0u;
      v30 = MEMORY[0x29EDC9570] + 16;
      memset(&__p, 0, sizeof(__p));
      v89 = 24;
      p_p = &__p;
      *&v81[24] = MEMORY[0x29EDC9570] + 16;
      v83 = &__p;
      v84 = &__p;
      *&v85 = &__p;
      std::string::resize(&__p, 0x16uLL, 0);
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      *(&v85 + 1) = &__p;
      *&v86 = &__p;
      *(&v86 + 1) = &__p + size;
      v32 = NodeDescriptor + 8;
      v33 = *(NodeDescriptor + 31);
      v71 = (NodeDescriptor + 8);
      if (__val == 2)
      {
        if ((v33 & 0x80) != 0)
        {
          v35 = *(NodeDescriptor + 16);
          if (v35 == 5)
          {
            if (**v32 == 1970237541 && *(*v32 + 4) == 116)
            {
LABEL_104:
              v39 = "TelephonyUplink";
              v40 = 15;
              goto LABEL_63;
            }
          }

          else if (v35 == 16)
          {
            v34 = *v32;
LABEL_47:
            v37 = *v34;
            v36 = v34[1];
            if (v37 == 0x6365722D63767661 && v36 == 0x657565755164726FLL)
            {
              v39 = "SiriUplink";
              v40 = 10;
              goto LABEL_63;
            }
          }
        }

        else if (v33 == 5)
        {
          if (*v32 == 1970237541 && *(NodeDescriptor + 12) == 116)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v34 = (NodeDescriptor + 8);
          if (v33 == 16)
          {
            goto LABEL_47;
          }
        }
      }

      if ((v33 & 0x80u) == 0)
      {
        v39 = (NodeDescriptor + 8);
      }

      else
      {
        v39 = *(NodeDescriptor + 8);
      }

      if ((v33 & 0x80u) == 0)
      {
        v40 = *(NodeDescriptor + 31);
      }

      else
      {
        v40 = *(NodeDescriptor + 16);
      }

LABEL_63:
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81[16], v39, v40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "-", 1);
      *&v81[*(*&v81[16] - 24) + 24] = *&v81[*(*&v81[16] - 24) + 24] & 0xFFFFFFB5 | 8;
      MEMORY[0x29C260CA0]();
      if ((v89 & 0x10) != 0)
      {
        v44 = p_p;
        if (p_p < v86)
        {
          p_p = v86;
          v44 = v86;
        }

        v45 = *(&v85 + 1);
      }

      else
      {
        if ((v89 & 8) == 0)
        {
          v43 = 0;
          v78 = 0;
          goto LABEL_76;
        }

        v45 = v83;
        v44 = v85;
      }

      v43 = v44 - v45;
      if ((v44 - v45) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v43 >= 0x17)
      {
        operator new();
      }

      v78 = v44 - v45;
      if (v43)
      {
        memmove(&__dst, v45, v43);
      }

LABEL_76:
      *(&__dst + v43) = 0;
      *v81 = v63;
      *&v81[*(v63 - 24)] = v62;
      *&v81[16] = v61;
      *&v81[24] = v30;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *&v81[24] = v29;
      std::locale::~locale(&v81[32]);
      std::iostream::~basic_iostream();
      MEMORY[0x29C260E40](v90);
      if (__val <= 15)
      {
        switch(__val)
        {
          case 1:
            *v81 = &v79;
            std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v60, v79, v81);
            operator new();
          case 2:
            *v81 = &v79;
            std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v60, v79, v81);
            operator new();
          case 8:
            *v81 = &v79;
            std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v60, v79, v81);
            operator new();
        }
      }

      else if (__val > 63)
      {
        if (__val == 64)
        {
          *v81 = &v79;
          std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v60, v79, v81);
          operator new();
        }

        if (__val == 256)
        {
          *v81 = &v79;
          std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v60, v79, v81);
          operator new();
        }
      }

      else
      {
        if (__val == 16)
        {
          *v81 = &v79;
          std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v60, v79, v81);
          operator new();
        }

        if (__val == 32)
        {
          *v81 = &v79;
          std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v60, v79, v81);
          operator new();
        }
      }

      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (!ADAM::ADAMLogScope(void)::scope)
      {
        v47 = MEMORY[0x29EDCA988];
        v48 = MEMORY[0x29EDCA988];
        v15 = v47;
LABEL_106:
        v49 = v15;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          if (*(NodeDescriptor + 31) < 0)
          {
            v71 = *v71;
          }

          v50 = v79;
          ADAM::getEndPointName(&v80, __val);
          v51 = &v80;
          if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v51 = v80.__r_.__value_.__r.__words[0];
          }

          *v81 = 136316162;
          *&v81[4] = "ADAMDispatcher.cpp";
          *&v81[12] = 1024;
          *&v81[14] = 206;
          *&v81[18] = 2048;
          *&v81[20] = v50;
          *&v81[28] = 2080;
          *&v81[30] = v71;
          v82 = 2080;
          v83 = v51;
          _os_log_impl(&dword_296C34000, v49, OS_LOG_TYPE_INFO, "%25s:%-5d Session %llx, No writer exists for node %s, endPoint: %s", v81, 0x30u);
          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v80.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_114;
      }

      v15 = *ADAM::ADAMLogScope(void)::scope;
      if (v15)
      {
        goto LABEL_106;
      }

LABEL_114:
      if (v78 < 0)
      {
        operator delete(__dst);
      }

LABEL_116:
      v52 = v16[1];
      if (v52)
      {
        do
        {
          v53 = v52;
          v52 = *v52;
        }

        while (v52);
      }

      else
      {
        do
        {
          v53 = v16[2];
          v24 = *v53 == v16;
          v16 = v53;
        }

        while (!v24);
      }

      v16 = v53;
    }

    while (v53 != v75);
  }

  std::__tree<ADAM::EndPointBitMask>::destroy(v75[0]);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v54 = *ADAM::ADAMLogScope(void)::scope;
    if (!v54)
    {
      goto LABEL_131;
    }
  }

  else
  {
    v54 = MEMORY[0x29EDCA988];
    v55 = MEMORY[0x29EDCA988];
  }

  v56 = v54;
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    v80.__r_.__value_.__r.__words[0] = &v76;
    v57 = std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v60, v76, &v80);
    v58 = (v57[6] - v57[5]) >> 3;
    *v81 = 136315906;
    *&v81[4] = "ADAMDispatcher.cpp";
    *&v81[12] = 1024;
    *&v81[14] = 58;
    *&v81[18] = 2048;
    *&v81[20] = a2;
    *&v81[28] = 2048;
    *&v81[30] = v58;
    _os_log_impl(&dword_296C34000, v56, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session %llx: size of writers: %lu", v81, 0x26u);
  }

LABEL_131:
  std::mutex::unlock(v59);
}

uint64_t *ADAM::unpackEndPoints(uint64_t *result, uint64_t a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = (result + 1);
  if (a2)
  {
    operator new();
  }

  return result;
}

uint64_t AudioIssueDetectorReset(unint64_t a1)
{
  if (AudioDSPAnalysisEnabled())
  {
    RealTimeAudioIssueDetectorReset();
  }

  SingletonManagerInstance();
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  v2 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
  if (v2)
  {
    v3 = v2;
    v4 = v2[3];
    v5 = v3[4];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      rtaid::Detector::checkAndFlushState(v4, 1);
      v6 = 0;
      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v6 = 0xFFFFFFFFLL;
    if (v5)
    {
LABEL_11:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

LABEL_12:
  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  return v6;
}

void sub_296C4E96C(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<ADAM::Writer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 40))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t ADAM::AudioDataAnalysisManager::getNodeDescriptor(ADAM::AudioDataAnalysisManager *this, unint64_t a2)
{
  v2 = a2;
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(this, HIDWORD(a2));
  if (!ClientSessionMananger)
  {
    return 0;
  }

  v4 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((ClientSessionMananger + 16), v2);
  if (!v4)
  {
    return 0;
  }

  v5 = *(*v4[3] + 40);

  return v5();
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C260C60](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C260C70](v20);
  return a1;
}

void sub_296C4ED60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C260C70](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x296C4ED34);
}

void *std::__tree<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<std::unique_ptr<ADAM::Writer>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t a2, uint64_t **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

id **std::unique_ptr<ADAM::SensorKitWriter::SensorKitWriterInternalState>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x29C260F00);
  }

  return result;
}

void ADAM::Sequencer::run_impl(ADAM::Sequencer *this)
{
  v213 = *MEMORY[0x29EDCA608];
  while (1)
  {
LABEL_2:
    caulk::semaphore::timed_wait((*(this + 5) + 144), -1.0);
    v2 = *(this + 5);
    v3 = *(v2 + 232);
    if (v3)
    {
      goto LABEL_7;
    }

    v4 = atomic_exchange_explicit((v2 + 168), 0, memory_order_acquire);
    if (v4)
    {
      v3 = 0;
      do
      {
        v5 = v3;
        v3 = v4;
        v4 = atomic_load(v4);
        atomic_store(v5, v3);
      }

      while (v4);
      *(v2 + 232) = v3;
LABEL_7:
      v6 = atomic_load(v3);
      *(v2 + 232) = v6;
      goto LABEL_8;
    }

    v3 = 0;
LABEL_8:
    v7 = *(v3 + 4);
    if (v7 <= 1)
    {
      break;
    }

    switch(v7)
    {
      case 2:
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v27 = *ADAM::ADAMLogScope(void)::scope;
          if (!v27)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v27 = MEMORY[0x29EDCA988];
          v36 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v3[1];
          *buf = 136315650;
          *&buf[4] = "ADAMSequencer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 126;
          *&buf[18] = 2048;
          *&buf[20] = v37;
          _os_log_impl(&dword_296C34000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sequencer got Dispose Signal for ClientSession: %llx", buf, 0x1Cu);
        }

LABEL_76:
        v38 = v3[1];
        NodeDescriptor = ADAM::AudioDataAnalysisManager::getNodeDescriptor(*(this + 5), v38);
        v40 = *(NodeDescriptor + 4);
        v41 = *(*(this + 5) + 240);
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v42 = *ADAM::ADAMLogScope(void)::scope;
          if (!v42)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v42 = MEMORY[0x29EDCA988];
          v65 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "ADAMAnalyzerManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 183;
          *&buf[18] = 2048;
          *&buf[20] = v38;
          _os_log_impl(&dword_296C34000, v42, OS_LOG_TYPE_INFO, "%25s:%-5d Session %llx: disposing analyzers", buf, 0x1Cu);
        }

LABEL_112:
        v67 = *v41;
        v66 = *(v41 + 8);
        while (v67 != v66)
        {
          if ((*(NodeDescriptor + 4) & *(*v67 + 16)) != 0)
          {
            (*(**v67 + 16))(*v67);
          }

          ++v67;
        }

        ADAM::AudioDataAnalysisManager::dispatch(*(*(this + 5) + 248), v38, NodeDescriptor);
        v68 = *(*(this + 5) + 248);
        std::mutex::lock(v68);
        v69 = *(v68 + 72);
        if (!v69)
        {
          goto LABEL_125;
        }

        v70 = (v68 + 72);
        do
        {
          v71 = v69[4];
          v14 = v71 >= v38;
          v72 = v71 < v38;
          if (v14)
          {
            v70 = v69;
          }

          v69 = v69[v72];
        }

        while (v69);
        if (v70 == (v68 + 72) || v70[4] > v38)
        {
LABEL_125:
          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v73 = *ADAM::ADAMLogScope(void)::scope;
            if (!v73)
            {
              goto LABEL_139;
            }
          }

          else
          {
            v73 = MEMORY[0x29EDCA988];
            v75 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "ADAMDispatcher.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 234;
            *&buf[18] = 2048;
            *&buf[20] = v38;
            v76 = v73;
            v77 = OS_LOG_TYPE_DEFAULT;
            v78 = "%25s:%-5d Session %llx: failed to dispose writer, writer already disposed?";
            goto LABEL_137;
          }

          goto LABEL_138;
        }

        v90 = v70[5];
        v89 = v70[6];
        while (v90 != v89)
        {
          (*(**v90 + 24))(*v90, v90);
          ++v90;
        }

        v91 = v70[1];
        v92 = v70;
        if (v91)
        {
          do
          {
            v93 = v91;
            v91 = *v91;
          }

          while (v91);
        }

        else
        {
          do
          {
            v93 = v92[2];
            v142 = *v93 == v92;
            v92 = v93;
          }

          while (!v142);
        }

        if (*(v68 + 64) == v70)
        {
          *(v68 + 64) = v93;
        }

        v94 = *(v68 + 72);
        --*(v68 + 80);
        v95 = *v70;
        v96 = v70;
        if (*v70)
        {
          v97 = v70[1];
          if (!v97)
          {
            v96 = v70;
LABEL_237:
            v99 = 0;
            v98 = v96[2];
            *(v95 + 16) = v98;
            goto LABEL_238;
          }

          do
          {
            v96 = v97;
            v97 = *v97;
          }

          while (v97);
        }

        v95 = v96[1];
        if (v95)
        {
          goto LABEL_237;
        }

        v98 = v96[2];
        v99 = 1;
LABEL_238:
        v121 = *v98;
        if (*v98 == v96)
        {
          *v98 = v95;
          if (v96 == v94)
          {
            v121 = 0;
            v94 = v95;
          }

          else
          {
            v121 = v98[1];
          }
        }

        else
        {
          v98[1] = v95;
        }

        v125 = *(v96 + 24);
        if (v96 != v70)
        {
          v126 = v70[2];
          v96[2] = v126;
          v126[*v126 != v70] = v96;
          v127 = *v70;
          *v96 = *v70;
          *(v127 + 16) = v96;
          v128 = v70[1];
          v96[1] = v128;
          if (v128)
          {
            *(v128 + 16) = v96;
          }

          *(v96 + 24) = *(v70 + 24);
          if (v94 == v70)
          {
            v94 = v96;
          }
        }

        if (!v94 || !v125)
        {
          goto LABEL_409;
        }

        if (!v99)
        {
          *(v95 + 24) = 1;
          goto LABEL_409;
        }

        while (1)
        {
          v129 = v121[2];
          v130 = *v129;
          if (*v129 == v121)
          {
            break;
          }

          if ((v121[3] & 1) == 0)
          {
            *(v121 + 24) = 1;
            *(v129 + 24) = 0;
            v131 = v129[1];
            v132 = *v131;
            v129[1] = *v131;
            if (v132)
            {
              *(v132 + 16) = v129;
            }

            v133 = v129[2];
            v131[2] = v133;
            v133[*v133 != v129] = v131;
            *v131 = v129;
            v129[2] = v131;
            if (v94 == *v121)
            {
              v94 = v121;
            }

            v121 = *(*v121 + 8);
          }

          v134 = *v121;
          if (*v121 && *(v134 + 24) != 1)
          {
            v135 = v121[1];
            if (v135 && (v135[3] & 1) == 0)
            {
LABEL_349:
              v134 = v121;
            }

            else
            {
              *(v134 + 24) = 1;
              *(v121 + 24) = 0;
              v158 = v134[1];
              *v121 = v158;
              if (v158)
              {
                *(v158 + 16) = v121;
              }

              v159 = v121[2];
              v134[2] = v159;
              v159[*v159 != v121] = v134;
              v134[1] = v121;
              v121[2] = v134;
              v135 = v121;
            }

            v160 = v134[2];
            *(v134 + 24) = *(v160 + 24);
            *(v160 + 24) = 1;
            *(v135 + 24) = 1;
            v161 = *(v160 + 8);
            v162 = *v161;
            *(v160 + 8) = *v161;
            if (v162)
            {
              *(v162 + 16) = v160;
            }

            v163 = *(v160 + 16);
            v161[2] = v163;
            v163[*v163 != v160] = v161;
            *v161 = v160;
            goto LABEL_408;
          }

          v135 = v121[1];
          if (v135 && *(v135 + 24) != 1)
          {
            goto LABEL_349;
          }

          *(v121 + 24) = 0;
          v136 = v121[2];
          if (v136 == v94 || (v136[24] & 1) == 0)
          {
            goto LABEL_289;
          }

LABEL_287:
          v121 = *(*(v136 + 2) + 8 * (**(v136 + 2) == v136));
        }

        if ((v121[3] & 1) == 0)
        {
          *(v121 + 24) = 1;
          *(v129 + 24) = 0;
          v137 = v130[1];
          *v129 = v137;
          if (v137)
          {
            *(v137 + 16) = v129;
          }

          v138 = v129[2];
          v130[2] = v138;
          v138[*v138 != v129] = v130;
          v130[1] = v129;
          v129[2] = v130;
          v139 = v121[1];
          if (v94 == v139)
          {
            v94 = v121;
          }

          v121 = *v139;
        }

        v140 = *v121;
        if (*v121 && *(v140 + 24) != 1)
        {
          goto LABEL_404;
        }

        v141 = v121[1];
        if (!v141 || *(v141 + 24) == 1)
        {
          *(v121 + 24) = 0;
          v136 = v121[2];
          v142 = v136[24] != 1 || v136 == v94;
          if (v142)
          {
LABEL_289:
            v136[24] = 1;
            goto LABEL_409;
          }

          goto LABEL_287;
        }

        if (v140 && (v140[3] & 1) == 0)
        {
LABEL_404:
          v141 = v121;
          goto LABEL_405;
        }

        *(v141 + 24) = 1;
        *(v121 + 24) = 0;
        v187 = *v141;
        v121[1] = *v141;
        if (v187)
        {
          *(v187 + 16) = v121;
        }

        v188 = v121[2];
        v141[2] = v188;
        v188[*v188 != v121] = v141;
        *v141 = v121;
        v121[2] = v141;
        v140 = v121;
LABEL_405:
        v160 = v141[2];
        *(v141 + 24) = *(v160 + 24);
        *(v160 + 24) = 1;
        *(v140 + 24) = 1;
        v161 = *v160;
        v189 = *(*v160 + 8);
        *v160 = v189;
        if (v189)
        {
          *(v189 + 16) = v160;
        }

        v190 = *(v160 + 16);
        v161[2] = v190;
        v190[*v190 != v160] = v161;
        v161[1] = v160;
LABEL_408:
        *(v160 + 16) = v161;
LABEL_409:
        *buf = v70 + 5;
        std::vector<std::unique_ptr<ADAM::Writer>>::__destroy_vector::operator()[abi:ne200100](buf);
        operator delete(v70);
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (!ADAM::ADAMLogScope(void)::scope)
        {
          v73 = MEMORY[0x29EDCA988];
          v191 = MEMORY[0x29EDCA988];
LABEL_415:
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "ADAMDispatcher.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 243;
            *&buf[18] = 2048;
            *&buf[20] = v38;
            v76 = v73;
            v77 = OS_LOG_TYPE_DEBUG;
            v78 = "%25s:%-5d Session %llx: writers detached";
LABEL_137:
            _os_log_impl(&dword_296C34000, v76, v77, v78, buf, 0x1Cu);
          }

LABEL_138:

          goto LABEL_139;
        }

        v73 = *ADAM::ADAMLogScope(void)::scope;
        if (v73)
        {
          goto LABEL_415;
        }

LABEL_139:
        std::mutex::unlock(v68);
        v79 = *(this + 5);
        ADAM::session_lock::lock_inst(v80);
        MEMORY[0x29C260CF0](&ADAM::session_lock::lock_inst(void)::_m);
        v81 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(v79, HIDWORD(v38));
        if (!v81)
        {
          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v81 = *ADAM::ADAMLogScope(void)::scope;
            v87 = v81;
            if (!v81)
            {
LABEL_189:
              ADAM::session_lock_shared::~session_lock_shared(v81);
              v86 = 0;
              goto LABEL_190;
            }
          }

          else
          {
            v87 = MEMORY[0x29EDCA988];
            v105 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "AudioDataAnalysisManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 137;
            *&buf[18] = 2048;
            *&buf[20] = HIDWORD(v38);
            _os_log_impl(&dword_296C34000, v87, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sessiion %llx already disposed?", buf, 0x1Cu);
          }

          goto LABEL_189;
        }

        isa = v81[3].isa;
        if ((*(isa + 432) & 1) == 0)
        {
          goto LABEL_189;
        }

        std::mutex::lock((isa + 56));
        if (std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(isa + 2, v38))
        {
          std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>>>::__erase_unique<unsigned int>(isa + 2, v38);
        }

        v83 = *(isa + 5);
        std::mutex::unlock((isa + 56));
        ADAM::session_lock_shared::~session_lock_shared(v84);
        if (v83)
        {
          v86 = 0;
          goto LABEL_190;
        }

        ADAM::session_lock_exclusive::session_lock_exclusive(v85);
        v112 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(v79, HIDWORD(v38));
        if (v112)
        {
          v113 = v79[1];
          v114 = v112[1];
          v115 = vcnt_s8(v113);
          v115.i16[0] = vaddlv_u8(v115);
          if (v115.u32[0] > 1uLL)
          {
            if (v114 >= *&v113)
            {
              v114 %= *&v113;
            }
          }

          else
          {
            v114 &= *&v113 - 1;
          }

          v122 = *(*v79 + 8 * v114);
          do
          {
            v123 = v122;
            v122 = *v122;
          }

          while (v122 != v112);
          if (v123 == v79 + 2)
          {
            goto LABEL_298;
          }

          v124 = v123[1];
          if (v115.u32[0] > 1uLL)
          {
            if (v124 >= *&v113)
            {
              v124 %= *&v113;
            }
          }

          else
          {
            v124 &= *&v113 - 1;
          }

          if (v124 != v114)
          {
LABEL_298:
            if (!*v112)
            {
              goto LABEL_299;
            }

            v143 = *(*v112 + 8);
            if (v115.u32[0] > 1uLL)
            {
              if (v143 >= *&v113)
              {
                v143 %= *&v113;
              }
            }

            else
            {
              v143 &= *&v113 - 1;
            }

            if (v143 != v114)
            {
LABEL_299:
              *(*v79 + 8 * v114) = 0;
            }
          }

          v144 = *v112;
          if (*v112)
          {
            v145 = *(v144 + 8);
            if (v115.u32[0] > 1uLL)
            {
              if (v145 >= *&v113)
              {
                v145 %= *&v113;
              }
            }

            else
            {
              v145 &= *&v113 - 1;
            }

            if (v145 != v114)
            {
              *(*v79 + 8 * v145) = v123;
              v144 = *v112;
            }
          }

          *v123 = v144;
          *v112 = 0;
          --v79[3];
          *buf = v112;
          *&buf[8] = v79;
          buf[16] = 1;
          *&buf[17] = 0;
          *&buf[20] = 0;
          std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
        }

        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v146 = *ADAM::ADAMLogScope(void)::scope;
          v147 = v146;
          if (!v146)
          {
            goto LABEL_317;
          }
        }

        else
        {
          v147 = MEMORY[0x29EDCA988];
          v148 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "AudioDataAnalysisManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 150;
          *&buf[18] = 2048;
          *&buf[20] = HIDWORD(v38);
          _os_log_impl(&dword_296C34000, v147, OS_LOG_TYPE_INFO, "%25s:%-5d Session %llx dispose * Finished *", buf, 0x1Cu);
        }

LABEL_317:
        ADAM::session_lock_exclusive::~session_lock_exclusive(v146);
        v86 = 1;
LABEL_190:
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (!v86)
        {
          if (ADAM::ADAMLogScope(void)::scope)
          {
            v30 = *ADAM::ADAMLogScope(void)::scope;
            if (!v30)
            {
              continue;
            }
          }

          else
          {
            v30 = MEMORY[0x29EDCA988];
            v111 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "ADAMSequencer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 147;
            *&buf[18] = 2048;
            *&buf[20] = v38;
            _os_log_impl(&dword_296C34000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sequencer Not ready to reset analyzers for %llx", buf, 0x1Cu);
          }

LABEL_211:

          continue;
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v106 = *ADAM::ADAMLogScope(void)::scope;
          if (!v106)
          {
            goto LABEL_203;
          }
        }

        else
        {
          v106 = MEMORY[0x29EDCA988];
          v107 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "ADAMSequencer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 142;
          *&buf[18] = 2048;
          *&buf[20] = v38;
          _os_log_impl(&dword_296C34000, v106, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sequencer hard reset analyzers for %llx", buf, 0x1Cu);
        }

LABEL_203:
        v108 = *(*(this + 5) + 240);
        v109 = *v108;
        v110 = *(v108 + 8);
        while (v109 != v110)
        {
          if ((*(*v109 + 16) & v40) != 0)
          {
            (*(**v109 + 48))(*v109);
          }

          ++v109;
        }

        break;
      case 3:
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (!ADAM::ADAMLogScope(void)::scope)
        {
          v28 = MEMORY[0x29EDCA988];
          v43 = MEMORY[0x29EDCA988];
LABEL_82:
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v44 = v3[1];
            *buf = 136315650;
            *&buf[4] = "ADAMSequencer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 153;
            *&buf[18] = 2048;
            *&buf[20] = v44;
            _os_log_impl(&dword_296C34000, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sequencer Configure action: %llx", buf, 0x1Cu);
          }

          goto LABEL_85;
        }

        v28 = *ADAM::ADAMLogScope(void)::scope;
        if (v28)
        {
          goto LABEL_82;
        }

LABEL_85:
        v45 = *(this + 5);
        v46 = v3[1];
        v47 = ADAM::AudioDataAnalysisManager::getNodeDescriptor(v45, v46);
        v48 = *(v45 + 30);
        v49 = *v48;
        v50 = *(v48 + 8);
        if (*v48 != v50)
        {
          v51 = v47;
          do
          {
            if ((*(v51 + 32) & *(*v49 + 16)) != 0)
            {
              (*(**v49 + 24))(*v49, v46, v51);
            }

            ++v49;
          }

          while (v49 != v50);
        }

        v52 = v3[1];
        ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(*(this + 5), HIDWORD(v52));
        v54 = ClientSessionMananger;
        if (ClientSessionMananger)
        {
          std::mutex::lock(ClientSessionMananger + 5);
          if (*&v54[6].__m_.__opaque[32])
          {
            v55 = *&v54[6].__m_.__opaque[24];
            v56 = *(*v54[6].__m_.__opaque + ((v55 >> 5) & 0x7FFFFFFFFFFFFF8));
            v57 = (v56 + 16 * v55);
            v59 = *v57;
            v58 = v57[1];
            if (v58)
            {
              atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
              v55 = *&v54[6].__m_.__opaque[24];
              v60 = v55;
              v56 = *(*v54[6].__m_.__opaque + ((v55 >> 5) & 0x7FFFFFFFFFFFFF8));
            }

            else
            {
              v60 = *&v54[6].__m_.__opaque[24];
            }

            v100 = *(v56 + 16 * v60 + 8);
            if (v100)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v100);
              v55 = *&v54[6].__m_.__opaque[24];
            }

            v101 = *&v54[6].__m_.__opaque[32] - 1;
            v102 = v55 + 1;
            *&v54[6].__m_.__opaque[24] = v102;
            *&v54[6].__m_.__opaque[32] = v101;
            if (v102 >= 0x200)
            {
              operator delete(**v54[6].__m_.__opaque);
              *v54[6].__m_.__opaque += 8;
              *&v54[6].__m_.__opaque[24] -= 256;
            }

            if (*(v59 + 8) != v52)
            {
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v103 = *ADAM::ADAMLogScope(void)::scope;
                if (!v103)
                {
                  goto LABEL_233;
                }
              }

              else
              {
                v103 = MEMORY[0x29EDCA988];
                v119 = MEMORY[0x29EDCA988];
              }

              if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
              {
                v120 = *(v59 + 8);
                *buf = 136315906;
                *&buf[4] = "ADAMClientSessionManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 341;
                *&buf[18] = 2048;
                *&buf[20] = v120;
                v208 = 1024;
                LODWORD(v209) = v52;
                _os_log_impl(&dword_296C34000, v103, OS_LOG_TYPE_ERROR, "%25s:%-5d unexpected node id: expected: %llx, actual:%x", buf, 0x22u);
              }
            }

LABEL_233:
            if (v58)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v58);
            }

LABEL_235:
            std::mutex::unlock(v54 + 5);
            continue;
          }

          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v88 = *ADAM::ADAMLogScope(void)::scope;
            if (!v88)
            {
              goto LABEL_235;
            }
          }

          else
          {
            v88 = MEMORY[0x29EDCA988];
            v116 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADAMClientSessionManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 346;
            _os_log_impl(&dword_296C34000, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d config msg queue empty", buf, 0x12u);
          }

          goto LABEL_235;
        }

        break;
      case 4:
        v8 = v3[1];
        v9 = ADAM::AudioDataAnalysisManager::getNodeDescriptor(*(this + 5), v8);
        if (v9)
        {
          v10 = *(*(this + 5) + 248);
          std::mutex::lock(v10);
          v11 = *(v10 + 72);
          if (!v11)
          {
            goto LABEL_61;
          }

          v12 = (v10 + 72);
          do
          {
            v13 = v11[4];
            v14 = v13 >= v8;
            v15 = v13 < v8;
            if (v14)
            {
              v12 = v11;
            }

            v11 = v11[v15];
          }

          while (v11);
          if (v12 == (v10 + 72) || v12[4] > v8 || (v16 = v12[5], v17 = v12[6], v16 == v17))
          {
LABEL_61:
            std::mutex::unlock(v10);
            v22 = *(this + 5);
            goto LABEL_62;
          }

          v18 = v16 + 8;
          do
          {
            v19 = (*(**(v18 - 8) + 8))(*(v18 - 8));
            v20 = v19;
            if (v18 == v17)
            {
              v21 = 1;
            }

            else
            {
              v21 = v19;
            }

            v18 += 8;
          }

          while ((v21 & 1) == 0);
          std::mutex::unlock(v10);
          v22 = *(this + 5);
          if (v20)
          {
            v23 = *(v22 + 30);
            v24 = *(v9 + 40);
            *(v23 + 24) = 0u;
            v25 = (v23 + 24);
            *(v23 + 104) = 0;
            *(v23 + 88) = 0u;
            *(v23 + 72) = 0u;
            *(v23 + 56) = 0u;
            *(v23 + 40) = 0u;
            ADAM::AudioDataAnalysisManager::instance(v22);
            if (v24 == 2)
            {
              operator new();
            }

            if (v24 == 1)
            {
              operator new();
            }

            if (v24)
            {
              v150 = 1970168353;
              goto LABEL_360;
            }

            ADAM::allocAudioBufferList(v25, (v9 + 48), *(v9 + 88), 1);
            v149 = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, HIDWORD(v8));
            v150 = 1852400673;
            if (v149)
            {
              if (*(v149 + 432) == 1)
              {
                v151 = *v25;
                v152 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v149 + 16), v8);
                if (v152)
                {
                  v150 = (*(*v152[3] + 24))(v152[3], v151, v23 + 32);
                }
              }

              else
              {
                v150 = 1634625825;
              }
            }

            v153 = ADAM::AnalyzerManager::fetchData(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
            v154 = ++ADAM::AnalyzerManager::fetchData(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
            if (!v153 && v150)
            {
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v155 = *ADAM::ADAMLogScope(void)::scope;
                if (!v155)
                {
LABEL_357:
                  v168 = ADAM::AnalyzerManager::fetchData(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
                  if (ADAM::AnalyzerManager::fetchData(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt > 0xFFE)
                  {
                    v168 = 0;
                  }

                  ADAM::AnalyzerManager::fetchData(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt = v168;
LABEL_360:
                  v169 = ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
                  v170 = ++ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
                  if (v169)
                  {
                    v171 = &ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
                    goto LABEL_373;
                  }

                  if (ADAM::ADAMLogScope(void)::once != -1)
                  {
                    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
                  }

                  if (ADAM::ADAMLogScope(void)::scope)
                  {
                    v172 = *ADAM::ADAMLogScope(void)::scope;
                    if (!v172)
                    {
LABEL_371:
                      v171 = &ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
                      goto LABEL_372;
                    }
                  }

                  else
                  {
                    v172 = MEMORY[0x29EDCA988];
                    v173 = MEMORY[0x29EDCA988];
                  }

                  if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "ADAMAnalyzerManager.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 75;
                    *&buf[18] = 2048;
                    *&buf[20] = v8;
                    _os_log_impl(&dword_296C34000, v172, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: Failed to Fetch Data", buf, 0x1Cu);
                  }

                  goto LABEL_371;
                }
              }

              else
              {
                v164 = v150;
                v165 = MEMORY[0x29EDCA988];
                v166 = MEMORY[0x29EDCA988];
                v155 = v165;
                v150 = v164;
              }

              v167 = v155;
              if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
              {
                CAX4CCString::CAX4CCString(v212, v150);
                *buf = 136315906;
                *&buf[4] = "ADAMAnalyzerManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 175;
                *&buf[18] = 2048;
                *&buf[20] = v8;
                v208 = 2080;
                v209 = v212;
                _os_log_impl(&dword_296C34000, v167, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session %llx: faild to read buffer: %s", buf, 0x26u);
              }

              goto LABEL_357;
            }

            if (v154 > 0xFFE)
            {
              v154 = 0;
            }

            ADAM::AnalyzerManager::fetchData(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt = v154;
            if (v150)
            {
              goto LABEL_360;
            }

            v156 = *v23;
            v206 = *(v23 + 8);
            if (*v23 == v206)
            {
              ADAM::AnalyzerManager::releaseData(v23, v9);
LABEL_418:
              v192 = ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
              v170 = ++ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
              if (v192)
              {
                v171 = &ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
                v150 = 561476709;
LABEL_373:
                if (v170 > 0xFFE)
                {
                  v170 = 0;
                }

                *v171 = v170;
                v157 = v150;
LABEL_376:
                v174 = &ADAM::Sequencer::run_impl(void)::errCnt;
                v175 = ADAM::Sequencer::run_impl(void)::errCnt;
                v176 = ++ADAM::Sequencer::run_impl(void)::errCnt;
                if (v175)
                {
                  goto LABEL_377;
                }

                if (ADAM::ADAMLogScope(void)::once != -1)
                {
                  dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
                }

                if (ADAM::ADAMLogScope(void)::scope)
                {
                  v178 = *ADAM::ADAMLogScope(void)::scope;
                  if (!v178)
                  {
LABEL_389:
                    v177 = &ADAM::Sequencer::run_impl(void)::errCnt;
                    goto LABEL_390;
                  }
                }

                else
                {
                  v179 = MEMORY[0x29EDCA988];
                  v180 = MEMORY[0x29EDCA988];
                  v178 = v179;
                }

                v181 = v178;
                if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
                {
                  v182 = (v9 + 8);
                  if (*(v9 + 31) < 0)
                  {
                    v182 = *v182;
                  }

                  CAX4CCString::CAX4CCString(v212, v157);
                  *buf = 136316162;
                  *&buf[4] = "ADAMSequencer.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 181;
                  *&buf[18] = 2048;
                  *&buf[20] = v8;
                  v208 = 2080;
                  v209 = v182;
                  v210 = 2080;
                  v211 = v212;
                  _os_log_impl(&dword_296C34000, v181, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: Error Analyzing Data, nodeName: %s, err code: %s", buf, 0x30u);
                }

                goto LABEL_389;
              }

              v150 = 561476709;
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v193 = *ADAM::ADAMLogScope(void)::scope;
                if (!v193)
                {
                  goto LABEL_436;
                }
              }

              else
              {
                v193 = MEMORY[0x29EDCA988];
                v198 = MEMORY[0x29EDCA988];
              }

              if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
              {
                v199 = *(v9 + 32);
                *buf = 136315906;
                *&buf[4] = "ADAMAnalyzerManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 91;
                *&buf[18] = 2048;
                *&buf[20] = v8;
                v208 = 2048;
                v209 = v199;
                _os_log_impl(&dword_296C34000, v193, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: No Analyzer found, nodeEndPointMask: %llx", buf, 0x26u);
              }

LABEL_436:
              v171 = &ADAM::AnalyzerManager::analyze(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
LABEL_372:
              v170 = *v171;
              goto LABEL_373;
            }

            v157 = 561476709;
            do
            {
              if ((*(v9 + 32) & *(*v156 + 16)) != 0)
              {
                v157 = (*(**v156 + 32))(*v156, v8, *v25, v23 + 32);
                if (v157)
                {
                  break;
                }
              }

              ++v156;
            }

            while (v156 != v206);
            ADAM::AnalyzerManager::releaseData(v23, v9);
            if (v157)
            {
              if (v157 == 561476709)
              {
                goto LABEL_418;
              }

              goto LABEL_376;
            }

            v194 = ADAM::AudioDataAnalysisManager::dispatch(*(*(this + 5) + 248), v8, v9);
            v174 = &ADAM::Sequencer::run_impl(void)::errCnt;
            v195 = ADAM::Sequencer::run_impl(void)::errCnt;
            v176 = ++ADAM::Sequencer::run_impl(void)::errCnt;
            if (v195)
            {
LABEL_377:
              v177 = v174;
              goto LABEL_391;
            }

            v196 = v194;
            v177 = &ADAM::Sequencer::run_impl(void)::errCnt;
            if (v194)
            {
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v197 = *ADAM::ADAMLogScope(void)::scope;
                if (!v197)
                {
                  goto LABEL_443;
                }
              }

              else
              {
                v200 = MEMORY[0x29EDCA988];
                v201 = MEMORY[0x29EDCA988];
                v197 = v200;
              }

              v202 = v197;
              if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
              {
                v203 = (v9 + 8);
                if (*(v9 + 31) < 0)
                {
                  v203 = *v203;
                }

                CAX4CCString::CAX4CCString(v212, v196);
                *buf = 136316162;
                *&buf[4] = "ADAMSequencer.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 177;
                *&buf[18] = 2048;
                *&buf[20] = v8;
                v208 = 2080;
                v209 = v203;
                v210 = 2080;
                v211 = v212;
                _os_log_impl(&dword_296C34000, v202, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: Error Dispatch Data, nodeName: %s, err code: %s", buf, 0x30u);
              }

LABEL_443:
              v177 = &ADAM::Sequencer::run_impl(void)::errCnt;
LABEL_390:
              v176 = *v177;
            }

LABEL_391:
            if (v176 > 0xFFE)
            {
              v176 = 0;
            }

            *v177 = v176;
            v183 = *(*(this + 5) + 240);
            v184 = *v183;
            v185 = v183[1];
            while (v184 != v185)
            {
              v186 = *v184;
              if (*(*v184 + 112) == 1 && (*(v9 + 32) & v186[2]) != 0)
              {
                (*(*v186 + 40))(v186);
              }

              v184 += 8;
            }
          }

          else
          {
LABEL_62:
            v31 = ADAM::AudioDataAnalysisManager::getClientSessionMananger(v22, HIDWORD(v8));
            if (v31)
            {
              if (*(v31 + 432) == 1)
              {
                v32 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v31 + 16), v8);
                if (v32)
                {
                  (*(*v32[3] + 32))(v32[3]);
                }
              }
            }

            v33 = ADAM::Sequencer::run_impl(void)::errCnt;
            v34 = ++ADAM::Sequencer::run_impl(void)::errCnt;
            if (!v33)
            {
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v35 = *ADAM::ADAMLogScope(void)::scope;
                if (!v35)
                {
LABEL_225:
                  v34 = ADAM::Sequencer::run_impl(void)::errCnt;
                  goto LABEL_226;
                }
              }

              else
              {
                v35 = MEMORY[0x29EDCA988];
                v117 = MEMORY[0x29EDCA988];
              }

              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v118 = (v9 + 8);
                if (*(v9 + 31) < 0)
                {
                  v118 = *v118;
                }

                *buf = 136315906;
                *&buf[4] = "ADAMSequencer.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 191;
                *&buf[18] = 2048;
                *&buf[20] = v8;
                v208 = 2080;
                v209 = v118;
                _os_log_impl(&dword_296C34000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: end point not enabled, nodeName: %s, data discarded", buf, 0x26u);
              }

              goto LABEL_225;
            }

LABEL_226:
            if (v34 > 0xFFE)
            {
              v34 = 0;
            }

            ADAM::Sequencer::run_impl(void)::errCnt = v34;
          }
        }

        else
        {
          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v64 = *ADAM::ADAMLogScope(void)::scope;
            if (!v64)
            {
              continue;
            }
          }

          else
          {
            v64 = MEMORY[0x29EDCA988];
            v104 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "ADAMSequencer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 163;
            *&buf[18] = 2048;
            *&buf[20] = v8;
            _os_log_impl(&dword_296C34000, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: Sequencer getting a invalid node descriptor", buf, 0x1Cu);
          }
        }

        break;
      default:
        goto LABEL_55;
    }
  }

  if (v7)
  {
    if (v7 != 1)
    {
LABEL_55:
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v30 = *ADAM::ADAMLogScope(void)::scope;
        if (!v30)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v30 = MEMORY[0x29EDCA988];
        v62 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v63 = *(v3 + 4);
        *buf = 136315650;
        *&buf[4] = "ADAMSequencer.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 197;
        *&buf[18] = 1024;
        *&buf[20] = v63;
        _os_log_impl(&dword_296C34000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown Msg Action Type: %d", buf, 0x18u);
      }

      goto LABEL_211;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v26 = *ADAM::ADAMLogScope(void)::scope;
      if (!v26)
      {
LABEL_98:
        atomic_store(1u, this + 17);
        goto LABEL_2;
      }
    }

    else
    {
      v26 = MEMORY[0x29EDCA988];
      v61 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "ADAMSequencer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 121;
      _os_log_impl(&dword_296C34000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sequencer got Reset Signal", buf, 0x12u);
    }

    goto LABEL_98;
  }

  v29 = atomic_load(this + 16);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if ((v29 & 1) == 0)
  {
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v30 = *ADAM::ADAMLogScope(void)::scope;
      if (!v30)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v30 = MEMORY[0x29EDCA988];
      v74 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ADAMSequencer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 116;
      _os_log_impl(&dword_296C34000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Sequencer got Terminate Signal, but stop is not set", buf, 0x12u);
    }

    goto LABEL_211;
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v204 = *ADAM::ADAMLogScope(void)::scope;
    if (!v204)
    {
      return;
    }
  }

  else
  {
    v204 = MEMORY[0x29EDCA988];
    v205 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ADAMSequencer.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 114;
    _os_log_impl(&dword_296C34000, v204, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sequencer got Terminate Signal", buf, 0x12u);
  }
}

void ADAM::session_lock::lock_inst(ADAM::session_lock *this)
{
  {
    std::shared_timed_mutex::shared_timed_mutex(&ADAM::session_lock::lock_inst(void)::_m);
  }
}

void ADAM::Analyzer::PCMBuffer::configure(ADAM::Analyzer::PCMBuffer *this, unint64_t a2, const ADAM::BufferNodeDescriptorBase *a3)
{
  v38 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v6 = *ADAM::ADAMLogScope(void)::scope;
    v7 = v6;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v26 = 136315650;
    v27 = "PCMBuffer.cpp";
    v28 = 1024;
    v29 = 118;
    v30 = 2048;
    *v31 = a2;
    _os_log_impl(&dword_296C34000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Session %llx: Configuring PCM Buffer", &v26, 0x1Cu);
  }

LABEL_10:
  ADAM::AudioDataAnalysisManager::instance(v6);
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, HIDWORD(a2));
  if (ClientSessionMananger)
  {
    v10 = *ClientSessionMananger;
    ADAM::Parameters::instance(ClientSessionMananger);
    if (v10 == 3)
    {
      Param = ADAM::Parameters::GetParamValue<float>(0xDu);
      if (Param <= 1)
      {
        Param = 1;
      }

      v12 = Param < 240;
      v13 = 240;
      goto LABEL_19;
    }
  }

  else
  {
    ADAM::Parameters::instance(0);
  }

  Param = ADAM::Parameters::GetParamValue<float>(0xEu);
  if (Param <= 1)
  {
    Param = 1;
  }

  v12 = Param < 60;
  v13 = 60;
LABEL_19:
  if (v12)
  {
    v14 = Param;
  }

  else
  {
    v14 = v13;
  }

  v16 = *(a3 + 6);
  v15 = (a3 + 48);
  *(this + 43) = (v15[10] + v14 * v16) / v15[10];
  v18 = *v15;
  v17 = *(v15 + 1);
  *(this + 20) = *(v15 + 4);
  *(this + 8) = v18;
  *(this + 9) = v17;
  v19 = v15[10];
  *(this + 42) = (1.0 - (v19 - v14 * *(this + 16)));
  *(this + 44) = v19;
  *(this + 23) = a2;
  *(this + 192) = 1;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v20 = *ADAM::ADAMLogScope(void)::scope;
    if (!v20)
    {
      return;
    }
  }

  else
  {
    v20 = MEMORY[0x29EDCA988];
    v21 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(this + 43);
    v22 = *(this + 44);
    v24 = *(this + 42);
    v25 = *v15;
    v26 = 136316674;
    v27 = "PCMBuffer.cpp";
    v28 = 1024;
    v29 = 154;
    v30 = 1024;
    *v31 = v14;
    *&v31[4] = 1024;
    *&v31[6] = v23;
    v32 = 1024;
    v33 = v22;
    v34 = 1024;
    v35 = v24;
    v36 = 2048;
    v37 = v25;
    _os_log_impl(&dword_296C34000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PCM Buffer Configured: duration: %us numSlots: %u, maxFramesPerBlock %u, maxFrames: %u, sample rate: %.2lf", &v26, 0x34u);
  }
}

uint64_t (**std::any_cast[abi:ne200100]<float>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<float>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float ADAM::Parameters::GetParamValue<float>(unsigned int a1)
{
  if (a1 >= ((qword_2A18A5310 - ADAM::Parameters::instance(void)::gParams) >> 4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v6, a1);
    v5 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v7, "unknown ADAMParameterType ", &v6);
    MEMORY[0x29C260B10](exception, &v7, v5);
  }

  v2 = std::any_cast[abi:ne200100]<float>((*(ADAM::Parameters::instance(void)::gParams + 16 * a1) + 16));
  if (!v2)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v2;
}

void sub_296C51454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v22 - 33) < 0)
  {
    operator delete(*(v22 - 56));
  }

  if (a20 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_296C5163C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v26 & 1) == 0)
    {
LABEL_12:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v27);
  goto LABEL_12;
}

void sub_296C51740(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v14);
  __cxa_end_catch();
  JUMPOUT(0x296C51768);
}

float std::__any_imp::_SmallHandler<float>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = *(a2 + 8);
      *(a3 + 8) = result;
      *a3 = std::__any_imp::_SmallHandler<float>::__handle[abi:ne200100];
      return result;
    }

LABEL_7:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = *(a2 + 8);
    *(a3 + 8) = result;
    *a3 = std::__any_imp::_SmallHandler<float>::__handle[abi:ne200100];
    goto LABEL_7;
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<ADAM::Writer>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 40))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ADAM::getEndPointName(void *a1, int64_t __val)
{
  if (__val <= 15)
  {
    if (__val > 3)
    {
      if (__val == 4)
      {
        v3 = "EndPoint_EnvExposure";
        goto LABEL_22;
      }

      if (__val == 8)
      {
        v3 = "EndPoint_AudioFile";
        goto LABEL_22;
      }
    }

    else
    {
      if (__val == 1)
      {
        v3 = "EndPoint_HealthKit";
        goto LABEL_22;
      }

      if (__val == 2)
      {
        v3 = "EndPoint_SensorKit";
        goto LABEL_22;
      }
    }
  }

  else if (__val <= 63)
  {
    if (__val == 16)
    {
      v3 = "EndPoint_BinFile";
      goto LABEL_22;
    }

    if (__val == 32)
    {
      v3 = "EndPoint_CsvFile";
      goto LABEL_22;
    }
  }

  else
  {
    switch(__val)
    {
      case 64:
        v3 = "EndPoint_ADAFramework";
        goto LABEL_22;
      case 128:
        v3 = "EndPoint_EnvSoundClass";
        goto LABEL_22;
      case 256:
        v3 = "EndPoint_MicLevel";
LABEL_22:

        std::string::basic_string[abi:ne200100]<0>(a1, v3);
        return;
    }
  }

  std::to_string(&v6, __val);
  v4 = std::string::insert(&v6, 0, "EndPoint_Unknown:", 0x11uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  a1[2] = *(&v4->__r_.__value_.__l + 2);
  *a1 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_296C519D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDataAnalysisManagerIsSessionInitialized(ADAM::AudioDataAnalysisManager *a1, _BYTE *a2)
{
  ADAM::AudioDataAnalysisManager::instance(a1);
  if (a2)
  {
    *a2 = 0;
  }

  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (ClientSessionMananger)
  {
    result = 0;
  }

  else
  {
    result = 561211748;
  }

  if (a2)
  {
    if (ClientSessionMananger)
    {
      result = 0;
      *a2 = *(ClientSessionMananger + 432);
    }
  }

  return result;
}

uint64_t AudioDataAnalysisManagerDispose(ADAM::AudioDataAnalysisManager *a1)
{
  *&v22[5] = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
  if (!ClientSessionMananger)
  {
    return 0;
  }

  v3 = ClientSessionMananger;
  if (!*(ClientSessionMananger + 40))
  {
    return 0;
  }

  if (*(ClientSessionMananger + 432) == 1)
  {
    ADAM::AudioDataAnalysisManager::instance(ClientSessionMananger);
    v16 = *(v3 + 8);
    std::mutex::lock((v3 + 56));
    v4 = *(v3 + 32);
    if (v4)
    {
      v5 = 0;
      do
      {
        v6 = *(v3 + 296) + 24 * v5;
        *(v6 + 8) = *(v4 + 4) | (*(v3 + 8) << 32);
        *(v6 + 16) = 2;
        v7 = qword_2A18A51E0[0];
        atomic_store(qword_2A18A51E0[0], v6);
        v8 = v7;
        atomic_compare_exchange_strong(qword_2A18A51E0, &v8, v6);
        if (v8 != v7)
        {
          v9 = v8;
          do
          {
            atomic_store(v8, v6);
            atomic_compare_exchange_strong(qword_2A18A51E0, &v9, v6);
            v10 = v9 == v8;
            v8 = v9;
          }

          while (!v10);
        }

        caulk::semaphore::signal(&unk_2A18A51C8);
        ++v5;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    std::mutex::unlock((v3 + 56));
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v11 = *ADAM::ADAMLogScope(void)::scope;
      if (!v11)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v11 = MEMORY[0x29EDCA988];
      v12 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v18 = "ADAMClientSessionManager.cpp";
      v19 = 1024;
      v20 = 303;
      v21 = 1024;
      v22[0] = v5;
      LOWORD(v22[1]) = 2048;
      *(&v22[1] + 2) = v16;
      _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sent [ %u ] dispose signals for session: %llx", buf, 0x22u);
    }
  }

LABEL_22:
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v13 = *ADAM::ADAMLogScope(void)::scope;
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    v13 = MEMORY[0x29EDCA988];
    v14 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "AudioDataAnalysisManager.cpp";
    v19 = 1024;
    v20 = 113;
    v21 = 2048;
    *v22 = a1;
    _os_log_impl(&dword_296C34000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Session %llx dispose * Pending *", buf, 0x1Cu);
  }

  return 0;
}

void ADAM::Analyzer::PCMBuffer::flush(ADAM::Analyzer::PCMBuffer *this)
{
  v13 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v2 = *ADAM::ADAMLogScope(void)::scope;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = MEMORY[0x29EDCA988];
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(this + 23);
    v7 = 136315650;
    v8 = "PCMBuffer.cpp";
    v9 = 1024;
    v10 = 161;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Session %llx: flushing PCM Buffer", &v7, 0x1Cu);
  }

LABEL_10:
  if (!*(this + 24))
  {
    return;
  }

  *(this + 3) = *(this + 15);
  *(this + 13) = 1;
  *(this + 112) = 1;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v5 = *ADAM::ADAMLogScope(void)::scope;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "PCMBuffer.cpp";
    v9 = 1024;
    v10 = 168;
    _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d PCM Buffer will be flushed", &v7, 0x12u);
  }
}

uint64_t ADAM::AudioDataAnalysisManager::dispatch(ADAM::AudioDataAnalysisManager *this, unint64_t a2, const ADAM::BufferNodeDescriptorBase *a3)
{
  v58 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(this);
  v6 = *qword_2A18A5228;
  v7 = *(qword_2A18A5228 + 8);
  if (*qword_2A18A5228 == v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = (this + 72);
  v39 = *(qword_2A18A5228 + 8);
  v40 = a3;
  v42 = this;
  do
  {
    v10 = *v6;
    v11 = *(a3 + 4) & *(*v6 + 16);
    if (!v11 || *(v10 + 112) != 1)
    {
      goto LABEL_60;
    }

    v41 = v6;
    v12 = *(v10 + 24);
    ADAM::unpackEndPoints(&v45, v11);
    v13 = v45;
    v8 = 561476709;
    v14 = v42;
    if (v45 == v46)
    {
      goto LABEL_59;
    }

    do
    {
      v15 = v13[4];
      std::mutex::lock(v14);
      v16 = *v9;
      if (!*v9)
      {
        goto LABEL_21;
      }

      v17 = v9;
      do
      {
        v18 = v16[4];
        v19 = v18 >= a2;
        v20 = v18 < a2;
        if (v19)
        {
          v17 = v16;
        }

        v16 = v16[v20];
      }

      while (v16);
      if (v17 == v9 || v17[4] > a2 || (v22 = v17[5], v21 = v17[6], v21 == v22))
      {
LABEL_21:
        v24 = ADAM::Dispatcher::dispatch2EndPoint(unsigned long long,ADAM::EndPointBitMask,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
        v25 = ++ADAM::Dispatcher::dispatch2EndPoint(unsigned long long,ADAM::EndPointBitMask,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
        if (v24)
        {
LABEL_32:
          if (v25 > 0x3FE)
          {
            v25 = 0;
          }

          ADAM::Dispatcher::dispatch2EndPoint(unsigned long long,ADAM::EndPointBitMask,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt = v25;
          std::mutex::unlock(v14);
          v23 = 561476709;
LABEL_35:
          CAX4CCString::CAX4CCString(v57, v23);
          v28 = ADAM::Dispatcher::dispatch(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
          v29 = ++ADAM::Dispatcher::dispatch(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
          if (v28)
          {
LABEL_49:
            if (v29 > 0x1D)
            {
              v29 = 0;
            }

            ADAM::Dispatcher::dispatch(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt = v29;
            goto LABEL_52;
          }

          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v30 = *ADAM::ADAMLogScope(void)::scope;
            if (!v30)
            {
LABEL_48:
              v29 = ADAM::Dispatcher::dispatch(unsigned long long,ADAM::BufferNodeDescriptorBase const*)::errCnt;
              goto LABEL_49;
            }
          }

          else
          {
            v31 = MEMORY[0x29EDCA988];
            v32 = MEMORY[0x29EDCA988];
            v30 = v31;
          }

          v33 = v30;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            ADAM::getEndPointName(__p, v15);
            v34 = __p;
            if (v44 < 0)
            {
              v34 = __p[0];
            }

            *buf = 136316162;
            v48 = "ADAMDispatcher.cpp";
            v49 = 1024;
            v50 = 99;
            v51 = 2048;
            v52 = a2;
            v53 = 2080;
            v54 = v34;
            v55 = 2080;
            v56 = v57;
            _os_log_impl(&dword_296C34000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx: Failed to dispatch to endpoint: %s err: %s", buf, 0x30u);
            if (v44 < 0)
            {
              operator delete(__p[0]);
            }
          }

          goto LABEL_48;
        }

        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v26 = *ADAM::ADAMLogScope(void)::scope;
          if (!v26)
          {
LABEL_31:
            v25 = ADAM::Dispatcher::dispatch2EndPoint(unsigned long long,ADAM::EndPointBitMask,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
            v14 = v42;
            goto LABEL_32;
          }
        }

        else
        {
          v26 = MEMORY[0x29EDCA988];
          v27 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v48 = "ADAMDispatcher.cpp";
          v49 = 1024;
          v50 = 125;
          v51 = 2048;
          v52 = a2;
          _os_log_impl(&dword_296C34000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Session %llx, no writers exists", buf, 0x1Cu);
        }

        goto LABEL_31;
      }

      v23 = 561476709;
      do
      {
        if (*(*v22 + 40) == v15)
        {
          v23 = (***v22)(*v22, v12, v10 + 32);
        }

        ++v22;
      }

      while (v22 != v21);
      std::mutex::unlock(v42);
      if (v23)
      {
        goto LABEL_35;
      }

LABEL_52:
      v35 = v13[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v13[2];
          v37 = *v36 == v13;
          v13 = v36;
        }

        while (!v37);
      }

      v13 = v36;
      v14 = v42;
    }

    while (v36 != v46);
    v8 = 0;
LABEL_59:
    std::__tree<ADAM::EndPointBitMask>::destroy(v46[0]);
    a3 = v40;
    v6 = v41;
    v7 = v39;
LABEL_60:
    ++v6;
  }

  while (v6 != v7);
  return v8;
}

uint64_t AudioDataAnalysisManagerProcessAudio(unint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, _OWORD *a5)
{
  v25 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  if (ADAM::isSpeechAnalysisEnabled(void)::once != -1)
  {
    dispatch_once(&ADAM::isSpeechAnalysisEnabled(void)::once, &__block_literal_global_33);
  }

  if (ADAM::isSpeechAnalysisEnabled(void)::ans != 1)
  {
    return 0;
  }

  v10 = 1634625825;
  if (byte_2A18A51D8 != 1)
  {
    return v10;
  }

  ADAM::session_lock_exclusive::session_lock_exclusive_flag::session_lock_exclusive_flag(buf);
  if (buf[0] == 1)
  {
    v11 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ADAM::ClientSessionManager>>>>::find<unsigned long long>(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, a1);
    if (!v11 || (v12 = *(v11 + 3)) == 0)
    {
      v10 = 561211748;
      ADAM::session_lock_exclusive::shared_cnt(v11);
      atomic_fetch_add_explicit(&ADAM::session_lock_exclusive::shared_cnt(void)::_c, 0xFFFFFFFF, memory_order_relaxed);
      return v10;
    }

    ADAM::session_lock_exclusive::shared_cnt(v11);
    atomic_fetch_add_explicit(&ADAM::session_lock_exclusive::shared_cnt(void)::_c, 0xFFFFFFFF, memory_order_relaxed);
    if (*(v12 + 432) == 1)
    {
      if (ADAM::hasEntitlementForSensorkitSiri(void)::once != -1)
      {
        dispatch_once(&ADAM::hasEntitlementForSensorkitSiri(void)::once, &__block_literal_global_74);
      }

      if (ADAM::hasEntitlementForSensorkitSiri(void)::ans == 1)
      {
        if (+[ADAMSensorKitWriterFactory IsMonitoringSiri])
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (ADAM::hasEntitlementForSensorkitTelephony(void)::once != -1)
        {
          dispatch_once(&ADAM::hasEntitlementForSensorkitTelephony(void)::once, &__block_literal_global_79);
        }

        if (ADAM::hasEntitlementForSensorkitTelephony(void)::ans == 1)
        {
          if (*(v12 + 433))
          {
LABEL_13:
            v13 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v12 + 16), a2);
            if (!v13)
            {
              return 1852400673;
            }

            v14 = a5[3];
            v21 = a5[2];
            v22 = v14;
            v15 = a5[1];
            *buf = *a5;
            *&buf[16] = v15;
            v24 = 0;
            v23 = a4;
            return (*(*v13[3] + 16))(v13[3], a3, buf);
          }
        }

        else
        {
          if (ADAM::isXCTest(void)::once != -1)
          {
            dispatch_once(&ADAM::isXCTest(void)::once, &__block_literal_global_61);
          }

          if (ADAM::isXCTest(void)::isXCTest)
          {
            goto LABEL_13;
          }
        }
      }

      return 0;
    }
  }

  else
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    v10 = 1835102241;
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v16 = *ADAM::ADAMLogScope(void)::scope;
      if (!v16)
      {
        return v10;
      }
    }

    else
    {
      v16 = MEMORY[0x29EDCA988];
      v17 = MEMORY[0x29EDCA988];
    }

    v18 = v16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AudioDataAnalysisManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 281;
      *&buf[18] = 2048;
      *&buf[20] = a2 | (a1 << 32);
      _os_log_impl(&dword_296C34000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Session %llx, Map is mutating", buf, 0x1Cu);
    }
  }

  return v10;
}

void sub_296C52710(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int16 a10, __int16 a11, __int128 a12, uint64_t a13)
{
  if (a2)
  {
    v16 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v17 = ADAM::AudioDataAnalysisManager::processAudio(unsigned long long,unsigned int,AudioBufferList const&,unsigned int,AudioTimeStamp const&)::errCnt;
      v18 = ++ADAM::AudioDataAnalysisManager::processAudio(unsigned long long,unsigned int,AudioBufferList const&,unsigned int,AudioTimeStamp const&)::errCnt;
      if (!v17)
      {
        v19 = v16;
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        v20 = CALog::LogObjIfEnabled(ADAM::ADAMLogScope(void)::scope);
        v21 = v20;
        if (v20)
        {
          v22 = v20;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = (*(*v19 + 16))(v19);
            LODWORD(a9) = 136316162;
            *(&a9 + 4) = "AudioDataAnalysisManager.cpp";
            WORD6(a9) = 1024;
            *(&a9 + 14) = 285;
            a11 = 2048;
            WORD2(a12) = 2048;
            *(&a12 + 6) = v14 | (v13 << 32);
            HIWORD(a12) = 2080;
            a13 = v23;
            _os_log_impl(&dword_296C34000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Exception %p, session %llx, %s", &a9, 0x30u);
          }
        }

        v18 = ADAM::AudioDataAnalysisManager::processAudio(unsigned long long,unsigned int,AudioBufferList const&,unsigned int,AudioTimeStamp const&)::errCnt;
      }

      if (v18 > 0xBB7)
      {
        v18 = 0;
      }

      ADAM::AudioDataAnalysisManager::processAudio(unsigned long long,unsigned int,AudioBufferList const&,unsigned int,AudioTimeStamp const&)::errCnt = v18;
      __cxa_end_catch();
    }

    else
    {
      v24 = ADAM::AudioDataAnalysisManager::processAudio(unsigned long long,unsigned int,AudioBufferList const&,unsigned int,AudioTimeStamp const&)::errCnt;
      v25 = ++ADAM::AudioDataAnalysisManager::processAudio(unsigned long long,unsigned int,AudioBufferList const&,unsigned int,AudioTimeStamp const&)::errCnt;
      if (!v24)
      {
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        v26 = CALog::LogObjIfEnabled(ADAM::ADAMLogScope(void)::scope);
        v27 = v26;
        if (v26)
        {
          v28 = v26;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *(&a9 + 4) = "AudioDataAnalysisManager.cpp";
            WORD6(a9) = 1024;
            LODWORD(a9) = 136315906;
            *(&a9 + 14) = 287;
            a11 = 2048;
            WORD2(a12) = 2048;
            *(&a12 + 6) = v14 | (v13 << 32);
            _os_log_impl(&dword_296C34000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Exception %p, session %llx", &a9, 0x26u);
          }
        }

        v25 = ADAM::AudioDataAnalysisManager::processAudio(unsigned long long,unsigned int,AudioBufferList const&,unsigned int,AudioTimeStamp const&)::errCnt;
      }

      if (v25 > 0xBB7)
      {
        v25 = 0;
      }

      ADAM::AudioDataAnalysisManager::processAudio(unsigned long long,unsigned int,AudioBufferList const&,unsigned int,AudioTimeStamp const&)::errCnt = v25;
      __cxa_end_catch();
    }

    JUMPOUT(0x296C5262CLL);
  }

  _Unwind_Resume(a1);
}

void ADAM::Writer::detach(uint64_t a1, uint64_t *a2)
{
  if (*a2 == a1 && *(a1 + 80) == 1)
  {
    std::mutex::lock(&ADAM::Writer::getAsyncMutex(void)::sAsyncMutex);
    if (*(a1 + 81) == 1)
    {
      v4 = *a2;
      *a2 = 0;
      v5 = *(a1 + 72);
      *(a1 + 72) = v4;
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }
    }

    std::mutex::unlock(&ADAM::Writer::getAsyncMutex(void)::sAsyncMutex);
  }
}

ADAM::session_lock_exclusive::session_lock_exclusive_flag *ADAM::session_lock_exclusive::session_lock_exclusive_flag::session_lock_exclusive_flag(ADAM::session_lock_exclusive::session_lock_exclusive_flag *this)
{
  *this = 0;
  ADAM::session_lock_exclusive::shared_cnt(this);
  ADAM::session_lock_exclusive::exclusive_flag(v2);
  v4 = 0;
  atomic_compare_exchange_strong(&ADAM::session_lock_exclusive::exclusive_flag(void)::_f, &v4, 1u);
  if (!v4)
  {
    atomic_fetch_add_explicit(&ADAM::session_lock_exclusive::shared_cnt(void)::_c, 1u, memory_order_relaxed);
    *this = 1;
    ADAM::session_lock_exclusive::exclusive_flag(v3);
    atomic_store(0, &ADAM::session_lock_exclusive::exclusive_flag(void)::_f);
  }

  return this;
}

void ADAM::SensorKitWriter::~SensorKitWriter(ADAM::SensorKitWriter *this)
{
  ADAM::SensorKitWriter::~SensorKitWriter(this);

  JUMPOUT(0x29C260F00);
}

{
  v15 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1DEE520;
  v3 = (this + 88);
  v2 = *(this + 11);
  if (v2)
  {
    atomic_store(0, (v2 + 44));
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v4 = *ADAM::ADAMLogScope(void)::scope;
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (this + 16);
    if (*(this + 39) < 0)
    {
      v6 = *v6;
    }

    v7 = 136315906;
    v8 = "SensorKitWriter.mm";
    v9 = 1024;
    v10 = 260;
    v11 = 2080;
    v12 = v6;
    v13 = 2048;
    v14 = this;
    _os_log_impl(&dword_296C34000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SensorKit Writer [%s](%p) destroyed...", &v7, 0x26u);
  }

LABEL_14:
  std::mutex::~mutex((this + 96));
  std::unique_ptr<ADAM::SensorKitWriter::SensorKitWriterInternalState>::reset[abi:ne200100](v3, 0);
  ADAM::Writer::~Writer(this);
}

void ADAM::session_lock_exclusive::shared_cnt(ADAM::session_lock_exclusive *this)
{
  {
    ADAM::session_lock_exclusive::shared_cnt(void)::_c = 0;
  }
}

void ADAM::session_lock_exclusive::exclusive_flag(ADAM::session_lock_exclusive *this)
{
  {
    ADAM::session_lock_exclusive::exclusive_flag(void)::_f = 0;
  }
}

void std::__tree<std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,NSMutableArray * {__strong}>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,NSMutableArray * {__strong}>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,NSMutableArray * {__strong}>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void ADAM::Writer::~Writer(ADAM::Writer *this)
{
  *this = &unk_2A1DEE8D8;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 9) = 0;
    (*(*v2 + 40))(v2);
    v3 = *(this + 9);
    *(this + 9) = 0;
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }
  }

  v4 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>>>::__erase_unique<unsigned int>(void *a1, unsigned int a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,void *>>>::operator()[abi:ne200100](1, v3);
  }
}

void ADAM::BufferNodePCM::~BufferNodePCM(ADAM::BufferNodePCM *this, AudioBufferList **a2)
{
  *this = &unk_2A1DEE6C0;
  ADAM::releaseAudioBufferList(this + 20, a2);
  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  *(this + 8) = &unk_2A1DEEA98;
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  *this = &unk_2A1DEEA28;
  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }
}

{
  ADAM::BufferNodePCM::~BufferNodePCM(this, a2);

  JUMPOUT(0x29C260F00);
}

void ADAM::releaseAudioBufferList(unsigned int **this, AudioBufferList **a2)
{
  if (this)
  {
    v3 = *this;
    if (v3)
    {
      v4 = *v3;
      if (v4)
      {
        v5 = 0;
        v6 = 4;
        do
        {
          if (*&v3[v6])
          {
            free(*&v3[v6]);
            v3 = *this;
            v4 = **this;
          }

          ++v5;
          v6 += 4;
        }

        while (v5 < v4);
      }

      free(v3);
      *this = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 56))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::deque<std::shared_ptr<ADAM::BufferNodeMsg>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ADAM::releaseADAMDeviceInfo(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<ADAM::BufferNodeBase>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 56))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

double ADAM::Analyzer::PCMBuffer::hardReset(ADAM::Analyzer::PCMBuffer *this)
{
  v14 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v3 = *ADAM::ADAMLogScope(void)::scope;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 23);
    v8 = 136315650;
    v9 = "PCMBuffer.cpp";
    v10 = 1024;
    v11 = 187;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d hard reset pcm buffer for session %llx", &v8, 0x1Cu);
  }

LABEL_10:
  v6 = *(this + 15);
  *(this + 112) = 0;
  if (v6)
  {
    ADAM::releaseAudioBufferList(this + 15, v2);
  }

  *(this + 15) = 0;
  strcpy(this + 184, "don!dis!");
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 97) = 0u;
  return result;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<ADAM::Sequencer::init(void)::$_0 &&>>(ADAM::AudioDataAnalysisManager *a1)
{
  v1 = ***a1;
  ADAM::AudioDataAnalysisManager::instance(a1);
  *(v1 + 40) = &ADAM::AudioDataAnalysisManager::instance(void)::gAdam;
  atomic_store(0, (v1 + 16));
  *&v3 = ADAM::Sequencer::run;
  *(&v3 + 1) = 0;
  v2 = v1;
  std::thread::thread<void (ADAM::Sequencer::*)(void),ADAM::Sequencer*,0>(&v4.__t_, &v3, &v2);
}

void sub_296C538C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ADAM::Sequencer::generateRandomDataForWatch(ADAM::Sequencer *this, __n128 a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDCA988];
  a2.n128_u64[0] = 136315650;
  v13 = a2;
LABEL_2:
  ADAM::AudioDataAnalysisManager::instance(this);
  ADAM::AudioDataAnalysisManager::getServerDelegates(v14, 0x65766E64u);
  v4 = v14[0];
  v3 = v14[1];
  while (1)
  {
    if (v4 == v3)
    {
      sleep(2u);
      *buf = v14;
      std::vector<ADAMServerDelegate * {__weak}>::__destroy_vector::operator()[abi:ne200100](buf);
      goto LABEL_2;
    }

    WeakRetained = objc_loadWeakRetained(v4);
    v6 = [WeakRetained isActive:1702260324];

    if (v6)
    {
      break;
    }

LABEL_15:
    ++v4;
  }

  v7 = arc4random_uniform(0x59u);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  v8 = v7 + 33;
  if (ADAM::ADAMLogScope(void)::scope)
  {
    v9 = *ADAM::ADAMLogScope(void)::scope;
    if (!v9)
    {
LABEL_14:
      v11 = [MEMORY[0x29EDBA070] numberWithInt:{v8, *&v13}];
      v12 = objc_loadWeakRetained(v4);
      [v12 sendAudioSample:v11 withType:1702260324 metadata:0];

      goto LABEL_15;
    }
  }

  else
  {
    v10 = v2;
    v9 = v2;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = v13.n128_u32[0];
    *&buf[4] = "ADAMSequencer.cpp";
    v16 = 1024;
    v17 = 219;
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d ADAM generated a random number: %d", buf, 0x18u);
  }

  goto LABEL_14;
}

void sub_296C53AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15)
{
  a15 = &a12;
  std::vector<ADAMServerDelegate * {__weak}>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void std::vector<ADAMServerDelegate * {__weak}>::__destroy_vector::operator()[abi:ne200100](id ***a1)
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
        objc_destroyWeak(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void std::__throw_bad_any_cast[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  exception->__vftable = 0;
  v1 = std::bad_any_cast::bad_any_cast(exception);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, std::string *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

std::bad_cast *std::bad_any_cast::bad_any_cast(std::bad_any_cast *this)
{
  result = std::bad_cast::bad_cast(this);
  result->__vftable = (MEMORY[0x29EDC95C8] + 16);
  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (ADAM::Sequencer::*)(void),ADAM::Sequencer*>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x29C260F00](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x29C260CE0]();
    MEMORY[0x29C260F00](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (ADAM::Sequencer::*)(void),ADAM::Sequencer*>>(const void **a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (ADAM::Sequencer::*)(void),ADAM::Sequencer*>>::~unique_ptr[abi:ne200100](&v8);
  return 0;
}

void sub_296C53F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (ADAM::Sequencer::*)(void),ADAM::Sequencer*>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ADAM::Sequencer::run(ADAM::Sequencer *this)
{
  v8 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v2 = *ADAM::ADAMLogScope(void)::scope;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = MEMORY[0x29EDCA988];
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v5 = "ADAMSequencer.cpp";
    v6 = 1024;
    v7 = 87;
    _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Sequencer starts running", buf, 0x12u);
  }

LABEL_10:
  ADAM::Sequencer::run_impl(this);
}

void sub_296C54034(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::exception a10, __int128 buf, __int128 a12)
{
  if (a2 == 1)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x29EDC9610] + 16);
    __cxa_begin_catch(a1);
    if (*(v12 + 768) != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    v15 = CALog::LogObjIfEnabled(*(v13 + 760));
    v16 = v15;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = std::exception::what(&a10);
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "ADAMSequencer.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 91;
      WORD1(a12) = 2080;
      *(&a12 + 4) = v17;
      _os_log_impl(&dword_296C34000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ADAM analysis thread caught exception: %s", &buf, 0x1Cu);
    }

    std::exception::~exception(&a10);
    __cxa_end_catch();
    JUMPOUT(0x296C53FECLL);
  }

  _Unwind_Resume(a1);
}

id CALog::LogObjIfEnabled(id *a1)
{
  if (a1)
  {
    v1 = *a1;
  }

  else
  {
    v1 = MEMORY[0x29EDCA988];
    v2 = MEMORY[0x29EDCA988];
  }

  return v1;
}

void CAX4CCString::CAX4CCString(CAX4CCString *this, unsigned int a2)
{
  v4 = bswap32(a2);
  *(this + 1) = v4;
  v5 = MEMORY[0x29EDCA600];
  if ((v4 & 0x80) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(this + 2);
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v5 + 4 * v6 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v7 = *(this + 3);
  if ((v7 & 0x80000000) != 0)
  {
    if (!__maskrune(v7, 0x40000uLL))
    {
      goto LABEL_17;
    }

LABEL_13:
    v8 = *(this + 4);
    if ((v8 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x40000uLL))
      {
        goto LABEL_17;
      }
    }

    else if ((*(v5 + 4 * v8 + 60) & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    *(this + 5) = 39;
    *this = 39;
    return;
  }

  if ((*(v5 + 4 * v7 + 60) & 0x40000) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (a2 + 199999 > 0x61A7E)
  {
    snprintf(this, 0x10uLL, "0x%x");
  }

  else
  {
    snprintf(this, 0x10uLL, "%d");
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_296C54B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  v15 = v13;

  std::mutex::unlock((v14 + 24));
  objc_destroyWeak(&location);

  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_296C55578(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_296C56BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void ADAM::MediaExposureWriter::~MediaExposureWriter(ADAM::MediaExposureWriter *this)
{
  ADAM::MediaExposureWriter::~MediaExposureWriter(this);

  JUMPOUT(0x29C260F00);
}

{
  v11 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1DEDC80;
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(this + 13) + 8);
  if (v3)
  {
    [v3 finishWithCompletion:&__block_literal_global];
  }

  objc_autoreleasePoolPop(v2);
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v4 = *ADAM::ADAMLogScope(void)::scope;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "MediaExposureWriter.mm";
    v9 = 1024;
    v10 = 102;
    _os_log_impl(&dword_296C34000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d HAE writer destroyed", &v7, 0x12u);
  }

LABEL_12:
  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  std::unique_ptr<ADAM::MediaExposureWriter::HealthKitWriterInternalState>::reset[abi:ne200100](this + 13, 0);
  ADAM::Writer::~Writer(this);
}

void sub_296C56DFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

id **std::unique_ptr<ADAM::MediaExposureWriter::HealthKitWriterInternalState>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x29C260F00);
  }

  return result;
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t ADAM::MediaExposureWriter::write(uint64_t a1, float *a2, uint64_t a3)
{
  v79 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  SessionBundleIDs = ADAM::AudioDataAnalysisManager::fetchSessionBundleIDs(*(a1 + 8), (a1 + 48));
  if (SessionBundleIDs)
  {
    v7 = a2;
    v8 = a3;
    context = objc_autoreleasePoolPush();
    v9 = [objc_alloc(MEMORY[0x29EDBA050]) initWithString:&stru_2A1DEEE38];
    v10 = *(a1 + 48);
    if (*(a1 + 56) != v10)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:?];
        [v9 appendString:v13];

        v14 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 3);
        if (v14 - 1 > v12)
        {
          [v9 appendString:{@", "}];
          v14 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 3);
        }

        ++v12;
        v11 += 24;
      }

      while (v14 > v12);
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    a3 = v8;
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v15 = *ADAM::ADAMLogScope(void)::scope;
      a2 = v7;
      if (!v15)
      {
LABEL_16:
        [*(*(a1 + 104) + 24) setObject:v9 forKey:@"_HKPrivateMediaSourceBundleIdentifier"];

        objc_autoreleasePoolPop(context);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = MEMORY[0x29EDCA988];
      v16 = MEMORY[0x29EDCA988];
      a2 = v7;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "MediaExposureWriter.mm";
      v73 = 1024;
      v74 = 191;
      v75 = 2112;
      v76 = v9;
      _os_log_impl(&dword_296C34000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d HAE Updated bundleIDs: %@", buf, 0x1Cu);
    }

    goto LABEL_16;
  }

LABEL_17:
  if (*(*(a1 + 104) + 16))
  {
    goto LABEL_18;
  }

  ADAM::AudioDataAnalysisManager::instance(SessionBundleIDs);
  ClientSessionMananger = ADAM::AudioDataAnalysisManager::getClientSessionMananger(&ADAM::AudioDataAnalysisManager::instance(void)::gAdam, *(a1 + 12));
  if (ClientSessionMananger)
  {
    v42 = ClientSessionMananger + 248;
  }

  else
  {
    v42 = 0;
  }

  if (ClientSessionMananger && *v42)
  {
    if (objc_opt_class())
    {
      v43 = objc_autoreleasePoolPush();
      v44 = [objc_alloc(MEMORY[0x29EDBAB38]) initWithName:*v42 manufacturer:*(v42 + 8) model:*(v42 + 16) hardwareVersion:0 firmwareVersion:0 softwareVersion:0 localIdentifier:*(v42 + 24) UDIDeviceIdentifier:0];
      v45 = *(a1 + 104);
      v46 = *(v45 + 16);
      *(v45 + 16) = v44;

      if (*(v42 + 32))
      {
        v48 = 1;
      }

      else
      {
        v47 = [*(*(a1 + 104) + 16) manufacturer];
        v48 = [v47 isEqualToString:@"Apple Inc."];
      }

      *(*(a1 + 104) + 32) = v48;
      objc_autoreleasePoolPop(v43);
      if (*(*(a1 + 104) + 16))
      {
        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v56 = *ADAM::ADAMLogScope(void)::scope;
          if (!v56)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v56 = MEMORY[0x29EDCA988];
          v61 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v62 = *(*(a1 + 104) + 16);
          *buf = 136315650;
          *&buf[4] = "MediaExposureWriter.mm";
          v73 = 1024;
          v74 = 168;
          v75 = 2112;
          v76 = v62;
          _os_log_impl(&dword_296C34000, v56, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HAE HKDevice created: %@", buf, 0x1Cu);
        }

LABEL_18:
        v17 = *(a1 + 104);
        v18 = *(v17 + 48);
        if (!v18)
        {
          v19 = objc_alloc_init(MEMORY[0x29EDBFAC8]);
          v20 = [v19 getPreferenceFor:@"_ADAFPreferenceKeyHAENotificationIsMandatory"];
          v21 = *(a1 + 104);
          v22 = *(v21 + 48);
          *(v21 + 48) = v20;

          v23 = [*(*(a1 + 104) + 48) BOOLValue];
          if (v23)
          {
            ADAM::Parameters::instance(v23);
            CFPreferencesAppSynchronize(@"com.apple.coreaudio");
            (***(ADAM::Parameters::instance(void)::gParams + 176))(*(ADAM::Parameters::instance(void)::gParams + 176));
            if ([v19 shouldSufaceHAENotificationMigrationAlert])
            {
              dispatch_async(MEMORY[0x29EDCA578], &__block_literal_global_380);
            }
          }

          v17 = *(a1 + 104);
          v18 = *(v17 + 48);
        }

        if (ADAM::haeMeasurementEnabled(*(v17 + 32), [v18 BOOLValue]))
        {
          v24.n128_f32[0] = *a2;
          if (*a2 > 0.00000011921)
          {
            if (*(a1 + 112) || !objc_opt_class())
            {
              goto LABEL_63;
            }

            v25 = objc_autoreleasePoolPush();
            if (*(a3 + 8) <= ADAM::MediaExposureWriter::writeToHealthKit(ADAM::SPLData const*,ADAM::Metadata const&)::prevTimeStamp)
            {
              if (ADAM::ADAMLogScope(void)::once != -1)
              {
                dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
              }

              if (ADAM::ADAMLogScope(void)::scope)
              {
                v32 = *ADAM::ADAMLogScope(void)::scope;
                if (!v32)
                {
                  goto LABEL_115;
                }
              }

              else
              {
                v32 = MEMORY[0x29EDCA988];
                v64 = MEMORY[0x29EDCA988];
              }

              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v65 = *(a3 + 8);
                *buf = 136315906;
                *&buf[4] = "MediaExposureWriter.mm";
                v73 = 1024;
                v74 = 208;
                v75 = 2048;
                v76 = ADAM::MediaExposureWriter::writeToHealthKit(ADAM::SPLData const*,ADAM::Metadata const&)::prevTimeStamp;
                v77 = 2048;
                v78 = v65;
                _os_log_impl(&dword_296C34000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d A out of order timestamp received for HAE: %llu (p) vs. %llu (c)", buf, 0x26u);
              }

LABEL_114:

LABEL_115:
              objc_autoreleasePoolPop(v25);
LABEL_63:
              result = *(a1 + 72);
              if (result)
              {
                *(a1 + 72) = 0;
                (*(*result + 40))(result, v24);
                return 0;
              }

              return result;
            }

            ADAM::MediaExposureWriter::writeToHealthKit(ADAM::SPLData const*,ADAM::Metadata const&)::prevTimeStamp = *(a3 + 8);
            v26 = objc_alloc(MEMORY[0x29EDBAD00]);
            v27 = [MEMORY[0x29EDBA140] UUID];
            v28 = ADAM::getSampleDateInterval(*(a3 + 8), a2[4]);
            v29 = MEMORY[0x29EDBACF0];
            v30 = [MEMORY[0x29EDBAE58] unitFromString:@"dBASPL"];
            v31 = [v29 quantityWithUnit:v30 doubleValue:*a2];
            v32 = [v26 initWithIdentifier:v27 dateInterval:v28 quantity:v31 resumeContext:0];

            v33 = [*(*(a1 + 104) + 48) BOOLValue];
            if (v33)
            {
              ADAM::Parameters::instance(v33);
              Param = ADAM::Parameters::GetParamValue<BOOL>(0xBu);
              v35 = *(*(a1 + 104) + 24);
              v36 = [MEMORY[0x29EDBA070] numberWithBool:Param];
              [v35 setObject:v36 forKey:*MEMORY[0x29EDBAF20]];
            }

            if (ADAM::ADAMLogScope(void)::once != -1)
            {
              dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
            }

            if (ADAM::ADAMLogScope(void)::scope)
            {
              v37 = *ADAM::ADAMLogScope(void)::scope;
              if (!v37)
              {
LABEL_113:
                v68 = *(*(a1 + 104) + 8);
                *buf = v32;
                v69 = [MEMORY[0x29EDB8D80] arrayWithObjects:buf count:1];
                [v68 insertDatums:v69 device:*(*(a1 + 104) + 16) metadata:*(*(a1 + 104) + 24) completion:0];

                goto LABEL_114;
              }
            }

            else
            {
              v37 = MEMORY[0x29EDCA988];
              v66 = MEMORY[0x29EDCA988];
            }

            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v67 = *(*(a1 + 104) + 24);
              *buf = 136315906;
              *&buf[4] = "MediaExposureWriter.mm";
              v73 = 1024;
              v74 = 228;
              v75 = 2112;
              v76 = v32;
              v77 = 2112;
              v78 = v67;
              _os_log_impl(&dword_296C34000, v37, OS_LOG_TYPE_INFO, "%25s:%-5d %@, metadata: %@", buf, 0x26u);
            }

            goto LABEL_113;
          }
        }

        v38 = ADAM::MediaExposureWriter::write(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
        v39 = ++ADAM::MediaExposureWriter::write(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
        if (v38)
        {
LABEL_60:
          if (v39 > 0x13)
          {
            v39 = 0;
          }

          ADAM::MediaExposureWriter::write(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt = v39;
          goto LABEL_63;
        }

        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v40 = *ADAM::ADAMLogScope(void)::scope;
          if (!v40)
          {
LABEL_59:
            v39 = ADAM::MediaExposureWriter::write(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
            goto LABEL_60;
          }
        }

        else
        {
          v40 = MEMORY[0x29EDCA988];
          v52 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *&v53 = *a2;
          *buf = 136315650;
          *&buf[4] = "MediaExposureWriter.mm";
          v73 = 1024;
          v74 = 131;
          v75 = 2048;
          v76 = v53;
          _os_log_impl(&dword_296C34000, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HAE writing to healthkit disabled or zero-db value %f", buf, 0x1Cu);
        }

        goto LABEL_59;
      }

      v57 = ADAM::MediaExposureWriter::createHKDevice(void)::errCnt;
      v58 = ++ADAM::MediaExposureWriter::createHKDevice(void)::errCnt;
      if (v57)
      {
        goto LABEL_121;
      }

      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v59 = *ADAM::ADAMLogScope(void)::scope;
        if (!v59)
        {
LABEL_120:
          v58 = ADAM::MediaExposureWriter::createHKDevice(void)::errCnt;
LABEL_121:
          if (v58 > 0x1D)
          {
            v58 = 0;
          }

          ADAM::MediaExposureWriter::createHKDevice(void)::errCnt = v58;
          return 560232035;
        }
      }

      else
      {
        v59 = MEMORY[0x29EDCA988];
        v70 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "MediaExposureWriter.mm";
        v73 = 1024;
        v74 = 170;
        _os_log_impl(&dword_296C34000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d HAE Device failed to be created", buf, 0x12u);
      }

      goto LABEL_120;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v55 = *ADAM::ADAMLogScope(void)::scope;
      if (!v55)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v55 = MEMORY[0x29EDCA988];
      v63 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "MediaExposureWriter.mm";
      v73 = 1024;
      v74 = 148;
      _os_log_impl(&dword_296C34000, v55, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HAE HKDevice cannot be created: HealthKit is not available", buf, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  v49 = ADAM::MediaExposureWriter::createHKDevice(void)::errCnt;
  v50 = ++ADAM::MediaExposureWriter::createHKDevice(void)::errCnt;
  if (!v49)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v51 = *ADAM::ADAMLogScope(void)::scope;
      if (!v51)
      {
LABEL_87:
        v50 = ADAM::MediaExposureWriter::createHKDevice(void)::errCnt;
        goto LABEL_88;
      }
    }

    else
    {
      v51 = MEMORY[0x29EDCA988];
      v60 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "MediaExposureWriter.mm";
      v73 = 1024;
      v74 = 144;
      _os_log_impl(&dword_296C34000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d HAE Device information must be valid", buf, 0x12u);
    }

    goto LABEL_87;
  }

LABEL_88:
  if (v50 > 0x1D)
  {
    v50 = 0;
  }

  ADAM::MediaExposureWriter::createHKDevice(void)::errCnt = v50;
  return 560555629;
}

void ___ZNK4ADAM19MediaExposureWriter21surfaceMigrationAlertEv_block_invoke()
{
  v33[2] = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v0 = *ADAM::ADAMLogScope(void)::scope;
    if (!v0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
    v1 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "MediaExposureWriter.mm";
    v28 = 1024;
    v29 = 350;
    _os_log_impl(&dword_296C34000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d surfacing migration alert...", buf, 0x12u);
  }

LABEL_10:
  v2 = objc_alloc_init(MEMORY[0x29EDBFAC8]);
  [v2 didSurfaceMigrationAlert];

  v25 = 0;
  v4 = ADAM::LocalizationUtilityGetBundle(v3);
  v5 = [v4 localizedStringForKey:@"MigrationAlertTitle" value:&stru_2A1DEEE38 table:0];
  v6 = ADAM::LocalizationUtilityGetBundle(v5);
  v7 = [v6 localizedStringForKey:@"MigrationAlertMessage" value:&stru_2A1DEEE38 table:0];
  v8 = ADAM::LocalizationUtilityGetBundle(v7);
  v9 = [v8 localizedStringForKey:@"MigrationAlertButtonOK" value:&stru_2A1DEEE38 table:0];
  v10 = ADAM::LocalizationUtilityGetBundle(v9);
  CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, v5, v7, v9, [v10 localizedStringForKey:@"MigrationAlertButtonSettings" value:&stru_2A1DEEE38 table:0], 0, &v25);

  v11 = v25;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (!v11)
  {
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v13 = *ADAM::ADAMLogScope(void)::scope;
      if (!v13)
      {
        return;
      }
    }

    else
    {
      v13 = MEMORY[0x29EDCA988];
      v20 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "MediaExposureWriter.mm";
      v28 = 1024;
      v29 = 381;
      v21 = "%25s:%-5d Migration Alert -> OK";
LABEL_39:
      _os_log_impl(&dword_296C34000, v13, OS_LOG_TYPE_DEFAULT, v21, buf, 0x12u);
    }

LABEL_45:

    return;
  }

  if (v11 == 1)
  {
    if (ADAM::ADAMLogScope(void)::scope)
    {
      v12 = *ADAM::ADAMLogScope(void)::scope;
      if (!v12)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v12 = MEMORY[0x29EDCA988];
      v14 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "MediaExposureWriter.mm";
      v28 = 1024;
      v29 = 366;
      _os_log_impl(&dword_296C34000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Migration Alert -> Settings", buf, 0x12u);
    }

LABEL_27:
    v15 = *MEMORY[0x29EDC1190];
    v32[0] = *MEMORY[0x29EDC1198];
    v32[1] = v15;
    v33[0] = MEMORY[0x29EDB8EB0];
    v33[1] = MEMORY[0x29EDB8EB0];
    v13 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v16 = [MEMORY[0x29EDB8E70] URLWithString:*MEMORY[0x29EDC14F0]];
    v17 = [MEMORY[0x29EDB9400] defaultWorkspace];
    v24 = 0;
    [v17 openSensitiveURL:v16 withOptions:v13 error:&v24];
    v18 = v24;

    if (v18)
    {
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v19 = *ADAM::ADAMLogScope(void)::scope;
        if (!v19)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v19 = MEMORY[0x29EDCA988];
        v23 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v27 = "MediaExposureWriter.mm";
        v28 = 1024;
        v29 = 376;
        v30 = 2112;
        v31 = v18;
        _os_log_impl(&dword_296C34000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to open settings because %@", buf, 0x1Cu);
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  if (!ADAM::ADAMLogScope(void)::scope)
  {
    v13 = MEMORY[0x29EDCA988];
    v22 = MEMORY[0x29EDCA988];
LABEL_37:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "MediaExposureWriter.mm";
      v28 = 1024;
      v29 = 384;
      v21 = "%25s:%-5d Migration Alert -> Unknown";
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  v13 = *ADAM::ADAMLogScope(void)::scope;
  if (v13)
  {
    goto LABEL_37;
  }
}