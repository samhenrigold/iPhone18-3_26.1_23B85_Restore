uint64_t HostInterpreter::ProcessJoin(HostInterpreter *this, unsigned __int8 a2, char **a3, uint64_t **a4)
{
  memset(&v48, 0, sizeof(v48));
  ot::Settings::Init((*(this + 28) + 200));
  memset(v47, 0, 7);
  memset(v51, 0, sizeof(v51));
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  if (*(a4 + 32) != 1)
  {
    goto LABEL_44;
  }

  *(&__p.__r_.__value_.__s + 23) = 11;
  strcpy(&__p, "NCP:Channel");
  v46.__r_.__value_.__r.__words[0] = &__p;
  v6 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, &v46);
  v7 = v6[7];
  if (v7)
  {
    v8 = (*(*v7 + 16))(v7);
  }

  else
  {
  }

  v9 = (v8[1] & 0x7FFFFFFFFFFFFFFFLL);
  v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
  if (v9 != (v10 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (v10 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    v46.__r_.__value_.__r.__words[0] = 0;
    std::bad_cast::bad_cast(&v46);
    v46.__r_.__value_.__r.__words[0] = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>(&v46);
  }

  WORD5(v55) = *(v6[7] + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    LOBYTE(v58) = 1;
    if ((*(a4 + 31) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    LOBYTE(v58) = 1;
    if ((*(a4 + 31) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "Network:PANID");
  v46.__r_.__value_.__r.__words[0] = &__p;
  v12 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, &v46);
  v13 = v12[7];
  if (v13)
  {
    v14 = (*((*(*v13 + 16))(v13) + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v14 == v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v14 == v11)
    {
      goto LABEL_16;
    }
  }

  if (strcmp(v14, v11))
  {
    v46.__r_.__value_.__r.__words[0] = 0;
    std::bad_cast::bad_cast(&v46);
    v46.__r_.__value_.__r.__words[0] = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>(&v46);
  }

LABEL_16:
  WORD4(v55) = *(v12[7] + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    HIBYTE(v57) = 1;
    if (*(a4 + 27))
    {
      goto LABEL_20;
    }

LABEL_44:
    v23 = 0;
    v24 = 0;
LABEL_45:
    v25 = 2;
    v26 = 7;
    goto LABEL_46;
  }

  HIBYTE(v57) = 1;
  if ((*(a4 + 27) & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_20:
  *(&v46.__r_.__value_.__s + 23) = 12;
  strcpy(&v46, "Network:Name");
  v49 = &v46;
  v15 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &v46.__r_.__value_.__l.__data_, &std::piecewise_construct, &v49);
  boost::any_cast<std::string>((v15 + 7), &__p);
  v48 = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v53 = 0uLL;
  LOBYTE(v54) = 0;
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v48;
  }

  else
  {
    v16 = v48.__r_.__value_.__r.__words[0];
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v48.__r_.__value_.__l.__size_;
  }

  memcpy(&v53, v16, size);
  BYTE11(v57) = 1;
  if ((*(a4 + 28) & 1) == 0)
  {
    goto LABEL_44;
  }

  *(&__p.__r_.__value_.__s + 23) = 14;
  strcpy(&__p, "Network:XPANID");
  v46.__r_.__value_.__r.__words[0] = &__p;
  v18 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, &v46);
  v19 = any_to_uint64(v18 + 7, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
      *(__p.__r_.__value_.__r.__words + 4) = v19;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "DatasetTest buf extpanid saved: %llx", &__p, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  *(&v54 + 5) = bswap32(v19);
  BYTE4(v54) = BYTE4(v19);
  BYTE3(v54) = BYTE5(v19);
  BYTE2(v54) = BYTE6(v19);
  BYTE1(v54) = HIBYTE(v19);
  BYTE12(v57) = 1;
  if (*(a4 + 26) != 1)
  {
    goto LABEL_44;
  }

  *(&v46.__r_.__value_.__s + 23) = 11;
  strcpy(&v46, "Network:Key");
  v49 = &v46;
  v21 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &v46.__r_.__value_.__l.__data_, &std::piecewise_construct, &v49);
  any_to_data(&__p, v21 + 7);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v22 = 2 * (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]);
  if (v22 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v22 >= 0x17)
  {
    operator new();
  }

  *(&v46.__r_.__value_.__s + 23) = 2 * (__p.__r_.__value_.__s.__data_[8] - __p.__r_.__value_.__s.__data_[0]);
  if (v22)
  {
    bzero(&v46, v22);
  }

  v46.__r_.__value_.__s.__data_[v22] = 0;
  std::string::reserve(&v46, (2 * (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0])) | 1);
  if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
  {
    v29 = 0;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v46;
  }

  else
  {
    v30 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = 22;
  }

  else
  {
    v31 = (v46.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  encode_data_into_string(v29, __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0], v30, v31, 0);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v46;
  }

  else
  {
    v32 = v46.__r_.__value_.__r.__words[0];
  }

  v26 = ot::Utils::CmdLineParser::ParseAsHexString(v32, &v52, 0x10);
  if (v26)
  {
    v33 = 6;
  }

  else
  {
    v33 = 0;
    BYTE10(v57) = 1;
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v33)
  {
    v23 = 0;
    v24 = 0;
    if (!v26)
    {
LABEL_75:
      v25 = 0;
      goto LABEL_46;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v46, "Network:NodeType");
    v49 = &v46;
    v34 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, &v46.__r_.__value_.__l.__data_, &std::piecewise_construct, &v49);
    boost::any_cast<std::string>((v34 + 7), &__p);
    v35 = __p.__r_.__value_.__l.__size_;
    v23 = __p.__r_.__value_.__r.__words[0];
    v47[0] = __p.__r_.__value_.__r.__words[2];
    *(v47 + 3) = *(&__p.__r_.__value_.__r.__words[2] + 3);
    v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (v24 < 0)
    {
      std::string::__init_copy_ctor_external(&v45, v23, v35);
    }

    else
    {
      v45.__r_.__value_.__r.__words[0] = v23;
      v45.__r_.__value_.__l.__size_ = v35;
      LODWORD(v45.__r_.__value_.__r.__words[2]) = v47[0];
      *(&v45.__r_.__value_.__r.__words[2] + 3) = *(v47 + 3);
      *(&v45.__r_.__value_.__s + 23) = v24;
    }

    v26 = HostInterpreter::DeviceModeConfig(this, &v45);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (!v26)
    {
      v26 = otDatasetSetActive(*(this + 28), v51);
      if (!v26)
      {
        v36 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v36)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Dataset commit active, Done", &__p, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        HostInterpreter::setExtendedMACAddressInDataSetIfAvailableinDB(this);
        otIp6SetSlaacEnabled(*(this + 28), 1);
        v26 = otIp6SetEnabled(*(this + 28), 1);
        if (!v26)
        {
          v37 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v37)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              LOWORD(__p.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Ifconfig up, Done", &__p, 2u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          v26 = otThreadSetEnabled(*(this + 28), 1);
          if (!v26)
          {
            LinkMode = otThreadGetLinkMode(*(this + 28));
            if ((~LinkMode & 6) == 0 && (LinkMode & 1) == 0)
            {
              otThreadBecomeLeader(*(this + 28), 0);
            }

            v41 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v41)
            {
              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
                *(__p.__r_.__value_.__r.__words + 4) = "ProcessJoin";
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s Thread start, Done", &__p, 0xCu);
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [PowerEventHandler_Rcp init:];
            }

            HostInterpreter::saveExtendedMACAddressIfNotAvailableinDB(this);
            isThreadSessionJoinEnabled = HostInterpreter::isThreadSessionJoinEnabled(v42);
            if (!isThreadSessionJoinEnabled)
            {
              v44 = log_get_logging_obg("com.apple.threadradiod", "default");
              if (v44)
              {
                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
                  *(__p.__r_.__value_.__r.__words + 4) = "ProcessJoin";
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s Thread Session Join THREAD_SESSION_ON", &__p, 0xCu);
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                [PowerEventHandler_Rcp init:];
              }

              HostInterpreter::persistThreadSessionJoin(this, 1);
            }

            HostInterpreter::transactionEnabled(isThreadSessionJoinEnabled, 1);
            v26 = 0;
            goto LABEL_75;
          }
        }
      }
    }
  }

  HIDWORD(v39) = v26 - 1;
  LODWORD(v39) = v26 - 1;
  v38 = v39 >> 1;
  if (v38 <= 2)
  {
    if (v38)
    {
      if (v38 == 2)
      {
        v25 = 9;
        v26 = 5;
        goto LABEL_46;
      }
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_107;
  }

  if (v38 != 6)
  {
    if (v38 == 3)
    {
      goto LABEL_45;
    }

LABEL_107:
    v25 = 1;
    goto LABEL_46;
  }

  v25 = 4;
  v26 = 13;
LABEL_46:
  v27 = a4[5];
  if (!v27)
  {
    std::runtime_error::runtime_error(&__p, "call to empty boost::function");
    __p.__r_.__value_.__r.__words[0] = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&__p);
  }

  (*((v27 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 6, v25);
  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  return v26;
}

void sub_10011D97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::bad_cast a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, std::runtime_error a32, int a33, __int16 a34, char a35, char a36)
{
  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::ProcessLeave(HostInterpreter *this, unsigned __int8 a2, char **a3, char *a4)
{
  Rcp2Vendor2Enabled = otPlatRadioGetRcp2Vendor2Enabled();
  if (Rcp2Vendor2Enabled)
  {
    byte_10052D769 = 0;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v8 = logging_obg;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LODWORD(v33[0]) = 136315138;
        *(v33 + 4) = "ProcessLeave";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Thread Stop Indication sent", v33, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    Rcp2Vendor2Enabled = otPlatVendorSetVendorThreadStartStop(*(this + 28), 0);
    v9 = Rcp2Vendor2Enabled;
    if (Rcp2Vendor2Enabled)
    {
      v10 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v10)
      {
        Rcp2Vendor2Enabled = syslog_is_the_mask_enabled(6);
        if (Rcp2Vendor2Enabled)
        {
          Rcp2Vendor2Enabled = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
          if (Rcp2Vendor2Enabled)
          {
            LODWORD(v33[0]) = 136315394;
            *(v33 + 4) = "ProcessLeave";
            WORD6(v33[0]) = 1024;
            *(v33 + 14) = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: otPlatVendorSetVendorThreadStartStop Error: %d", v33, 0x12u);
          }
        }
      }

      else
      {
        Rcp2Vendor2Enabled = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (Rcp2Vendor2Enabled)
        {
          [PowerEventHandler_Rcp init:];
        }
      }
    }
  }

  HostInterpreter::transactionEnabled(Rcp2Vendor2Enabled, 0);
  v11 = *(this + 30);
  *&v33[0] = _NSConcreteStackBlock;
  *(&v33[0] + 1) = 0x40000000;
  *&v33[1] = ___ZN15HostInterpreter38clearRcpSrpSignalMeshLocalAddressTimerEv_block_invoke;
  *(&v33[1] + 1) = &__block_descriptor_tmp_39;
  *&v34 = this;
  dispatch_async(v11, v33);
  if (!HostInterpreter::isThreadSessionJoinEnabled(v12))
  {
    goto LABEL_101;
  }

  v13 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v13)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(v33[0]) = 136315138;
      *(v33 + 4) = "ProcessLeave";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Thread Session Join THREAD_SESSION_OFF", v33, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  saveStringValue("threadSessionJoin", "OFF");
  wcm_notify(0, *(this + 184));
  v14 = HostInterpreter::detachIfWedConnectionInProgress(this);
  if (!v14)
  {
LABEL_101:
    HostInterpreter::clearRcpSrpAnycastServiceCovergenceTimer(this);
    HostInterpreter::clearSrpAdvertisedWithoutPrefixTimer(this);
    HostInterpreter::clearRcpSrpUnicastServiceCovergenceTimer(this);
    HostInterpreter::clearSrpPrefixCovergenceTimer(this);
    HostInterpreter::clearChildRoleDetectionTimer(this);
    HostInterpreter::clearRcpSrpServiceABCTimer(this);
    otIp6SetSlaacEnabled(*(this + 28), 0);
    v15 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v15)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LODWORD(v33[0]) = 136315138;
        *(v33 + 4) = "ProcessLeave";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: SLAAC Disabled, Done", v33, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v14 = otThreadSetEnabled(*(this + 28), 0);
    if (!v14)
    {
      v16 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v16)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LODWORD(v33[0]) = 136315138;
          *(v33 + 4) = "ProcessLeave";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: Thread stop, Done", v33, 0xCu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      v14 = otIp6SetEnabled(*(this + 28), 0);
      if (!v14)
      {
        v28 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v28)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            LODWORD(v33[0]) = 136315138;
            *(v33 + 4) = "ProcessLeave";
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s: Ifconfig down, Done", v33, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        if (otDatasetGetActive(*(this + 28), v33) != 23)
        {
          v29 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v29)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              LOWORD(v41.__vftable) = 0;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "OT Active Dataset present", &v41, 2u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          memset(v33, 0, sizeof(v33));
          v14 = otDatasetSetActive(*(this + 28), v33);
          if (v14)
          {
            goto LABEL_37;
          }

          v31 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v31)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              LOWORD(v41.__vftable) = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Deleted OT Active Dataset", &v41, 2u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }
        }

        if (otDatasetGetPending(*(this + 28), v33) != 23)
        {
          v30 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v30)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              LOWORD(v41.__vftable) = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "OT pending Dataset present", &v41, 2u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          memset(v33, 0, sizeof(v33));
          v14 = otDatasetSetPending(*(this + 28), v33);
          if (v14)
          {
            goto LABEL_37;
          }

          v32 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v32)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              LOWORD(v41.__vftable) = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Deleted OT pending Dataset", &v41, 2u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }
        }

        otLinkRegenerateExAddr(*(this + 28));
        otThreadResetRloc16(*(this + 28));
        otNetDataReset(*(this + 28));
        HostInterpreter::remove_all_address_prefix_route_entries(this, 1);
        v14 = 0;
        v19 = 0;
        v20 = *a4;
        if (*a4)
        {
          goto LABEL_42;
        }

LABEL_40:
        v21 = std::runtime_error::runtime_error(&v41, "call to empty boost::function");
        v41.__vftable = off_1004C1548;
        boost::throw_exception<boost::bad_function_call>(v21);
      }
    }
  }

LABEL_37:
  HostInterpreter::remove_all_address_prefix_route_entries(this, 1);
  HIDWORD(v18) = v14 - 1;
  LODWORD(v18) = v14 - 1;
  v17 = v18 >> 1;
  if (v17 > 6 || ((0x4Du >> v17) & 1) == 0)
  {
    v19 = 1;
    v20 = *a4;
    if (*a4)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v14 = dword_10044816C[v17];
  v19 = dword_100448188[v17];
  v20 = *a4;
  if (!*a4)
  {
    goto LABEL_40;
  }

LABEL_42:
  (*((v20 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 8, v19);
  v22 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v22)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LODWORD(v41.__vftable) = 136315138;
      *(&v41.__vftable + 4) = "ProcessLeave";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s: Closing settings fd", &v41, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  otPlatSettingsDeinit(*(this + 28));
  usleep(0x186A0u);
  v23 = otPlatVendorResetRCP() == 0;
  v24 = log_get_logging_obg("com.apple.threadradiod", "default");
  v25 = v24;
  if (!v23)
  {
    if (v24)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(v41.__vftable) = 0;
        v26 = "Failed to Reset RCP2 to sleep state";
LABEL_57:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, v26, &v41, 2u);
        goto LABEL_62;
      }

      goto LABEL_62;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

LABEL_61:
    [PowerEventHandler_Rcp init:];
    goto LABEL_62;
  }

  if (!v24)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    LOWORD(v41.__vftable) = 0;
    v26 = "Reset RCP2 to sleep state";
    goto LABEL_57;
  }

LABEL_62:
  power_assertion_n = 0;
  Thread_DeassertPower();
  return v14;
}

uint64_t HostInterpreter::ProcessNetScan(HostInterpreter *this, unsigned __int8 a2, char **a3, uint64_t **a4)
{
  v43 = 16;
  strcpy(__s1, "Scan:ChannelMask");
  v6 = a4[1];
  if (v6)
  {
    v7 = a4[1];
    do
    {
      v8 = *(v7 + 55);
      if (v8 >= 0)
      {
        v9 = *(v7 + 55);
      }

      else
      {
        v9 = v7[5];
      }

      if (v8 >= 0)
      {
        v10 = v7 + 4;
      }

      else
      {
        v10 = v7[4];
      }

      if (v9 >= 0x10)
      {
        v11 = 16;
      }

      else
      {
        v11 = v9;
      }

      v12 = memcmp(__s1, v10, v11);
      v13 = v12 < 0;
      if (!v12)
      {
        v13 = v9 > 0x10;
      }

      if (!v13)
      {
        v14 = memcmp(v10, __s1, v11);
        v15 = v9 < 0x10;
        if (v14)
        {
          v15 = v14 < 0;
        }

        if (!v15)
        {
          v43 = 16;
          strcpy(__s1, "Scan:ChannelMask");
          v41.__vftable = __s1;
          v17 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, __s1, &std::piecewise_construct, &v41);
          v18 = v17[7];
          if (v18)
          {
            v19 = (*(*v18 + 16))(v18);
          }

          else
          {
          }

          v20 = (v19[1] & 0x7FFFFFFFFFFFFFFFLL);
          if (v20 != v21 && strcmp(v20, v21))
          {
            v41.__vftable = 0;
            std::bad_cast::bad_cast(&v41);
            v41.__vftable = off_1004C1D50;
            boost::throw_exception<boost::bad_any_cast>(&v41);
          }

          v16 = *(v17[7] + 8);
          if (v43 < 0)
          {
            operator delete(*__s1);
          }

          v6 = a4[1];
          goto LABEL_29;
        }

        ++v7;
      }

      v7 = *v7;
    }

    while (v7);
  }

  v16 = 0;
LABEL_29:
  v43 = 11;
  strcpy(__s1, "Scan:Period");
  if (!v6)
  {
LABEL_48:
    v30 = 0;
    goto LABEL_49;
  }

  while (1)
  {
    v22 = *(v6 + 55);
    if (v22 >= 0)
    {
      v23 = *(v6 + 55);
    }

    else
    {
      v23 = v6[5];
    }

    if (v22 >= 0)
    {
      v24 = v6 + 4;
    }

    else
    {
      v24 = v6[4];
    }

    if (v23 >= 0xB)
    {
      v25 = 11;
    }

    else
    {
      v25 = v23;
    }

    v26 = memcmp(__s1, v24, v25);
    v27 = v26 < 0;
    if (!v26)
    {
      v27 = v23 > 0xB;
    }

    if (v27)
    {
      goto LABEL_31;
    }

    v28 = memcmp(v24, __s1, v25);
    v29 = v23 < 0xB;
    if (v28)
    {
      v29 = v28 < 0;
    }

    if (!v29)
    {
      break;
    }

    ++v6;
LABEL_31:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_48;
    }
  }

  v43 = 11;
  v41.__vftable = __s1;
  strcpy(__s1, "Scan:Period");
  v35 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, __s1, &std::piecewise_construct, &v41);
  v36 = v35[7];
  if (v36)
  {
    v37 = (*(*v36 + 16))(v36);
  }

  else
  {
  }

  v38 = (v37[1] & 0x7FFFFFFFFFFFFFFFLL);
  if (v38 != v39 && strcmp(v38, v39))
  {
    v41.__vftable = 0;
    std::bad_cast::bad_cast(&v41);
    v41.__vftable = off_1004C1D50;
    boost::throw_exception<boost::bad_any_cast>(&v41);
  }

  v30 = *(v35[7] + 8);
  if (v43 < 0)
  {
    v40 = *(v35[7] + 8);
    operator delete(*__s1);
    v30 = v40;
  }

LABEL_49:
  active = otLinkActiveScan(*(this + 28), v16, v30, HostInterpreter::HandleActiveScanResultFromBeacon, this);
  if (active)
  {
    v32 = a4[3];
    if (!v32)
    {
      std::runtime_error::runtime_error(__s1, "call to empty boost::function");
      *__s1 = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(__s1);
    }

    (*((v32 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 4, active);
    TaskQueueWrapper::pop_front(RcpHostContext::sRcpHostContext);
  }

  else
  {
    mNetScanCmdApiData = a4;
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *__s1 = 67109120;
      *&__s1[4] = active;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "HI:NetScan error = %d", __s1, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return active;
}

void sub_10011E968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::bad_cast a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::bad_cast::~bad_cast(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void HostInterpreter::ProcessPeekCmd(HostInterpreter *this, unsigned __int8 a2, char **a3, char *a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v6 = logging_obg;
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      HostInterpreter::ProcessPeekCmd();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v12 = 0;
  v7 = *(a4 + 2);
  if (v7 >= 0x400)
  {
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8)
    {
      if (syslog_is_the_mask_enabled(3))
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::ProcessPeekCmd();
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    operator new();
  }

  otPlatPeek(__src, &v12, *a4, v7);
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v10 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v10)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = __src[i];
          buf = 67109376;
          *buf_4 = i;
          *&buf_4[4] = 1024;
          *&buf_4[6] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Byte[%d]=%x", &buf, 0xEu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        buf = 136315394;
        *buf_4 = "com.apple.wpantund.ncp";
        *&buf_4[8] = 2080;
        v15 = "default";
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", &buf, 0x16u);
      }
    }

    if (v12)
    {
      operator new();
    }
  }

  operator new();
}

void sub_10011EE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::runtime_error a17)
{
  std::runtime_error::~runtime_error(&a17);
  (*(*v18 + 8))(v18);
  if (v17)
  {
    operator delete(v17);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HostInterpreter::ProcessPrefixAdd(uint64_t **this, unsigned __int8 a2, char **a3, const in6_addr *a4)
{
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v7 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a4[1].__u6_addr32[1];
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "OnMeshPrefixes: priority %d", buf, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  std::set<PrefixFlag>::set[abi:ne200100](v33, a4[2].__u6_addr8);
  v9 = OnMeshPrefixEntry::encode_flag_set(v33, a4[1].__u6_addr32[1]);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v33, v34);
  IPv6Prefix::IPv6Prefix(&v31, a4, a4[1].__u6_addr8[0]);
  v10 = a4[1].__u6_addr8[8];
  LODWORD(v29) = 2;
  WORD2(v29) = v9;
  BYTE6(v29) = v10;
  LOWORD(v30) = 0;
  IPv6Prefix::to_string(buf, &v31);
  if ((v39 & 0x80000000) == 0)
  {
    v11 = buf;
  }

  else
  {
    v11 = *buf;
  }

  v12 = ot::Utils::CmdLineParser::ParseAsIp6Prefix(v11, v35);
  v13 = v12;
  if (SBYTE3(v39) < 0)
  {
    operator delete(*buf);
    if (v13)
    {
LABEL_12:
      v14 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v14)
      {
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::ProcessPrefixAdd();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      goto LABEL_52;
    }
  }

  else if (v12)
  {
    goto LABEL_12;
  }

  if ((gSrpModeNetInfo & 1) == 0)
  {
    prefix_entry = HostInterpreter::find_prefix_entry(this, &v31, &v29);
    v19 = prefix_entry;
    if (this + 8 == prefix_entry)
    {
      *buf = v31;
      v38 = v32;
      v39 = v29;
      v40 = v30;
      operator new();
    }

    v20 = *(prefix_entry + 52) == v9;
    v21 = log_get_logging_obg("com.apple.threadradiod", "default");
    v22 = v21;
    if (v20)
    {
      if (v21)
      {
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::ProcessPrefixAdd();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      v13 = 0;
      v24 = 0;
      v25 = *&a4[3].__u6_addr32[2];
      if (v25)
      {
        goto LABEL_57;
      }

LABEL_55:
      std::runtime_error::runtime_error(buf, "call to empty boost::function");
      *buf = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(buf);
    }

    if (v21)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessPrefixAdd();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    *(v19 + 26) = v9;
  }

  v15 = (v9 >> 6) & 1;
  if ((~v9 & 0xC0) == 0)
  {
    LOWORD(v15) = 3;
  }

  if (a4[1].__u6_addr8[8])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  *(&v36 + 1) = (v9 >> 6) & 0x200 | (__rbit32(v9 & 0x3F) >> 24) | (v9 >> 4) & 0x400 | v16 | *(&v36 + 1) & 0xF800 | v15;
  v13 = otBorderRouterAddOnMeshPrefix(this[28], v35);
  if (v13)
  {
    v17 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v17)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessPrefixAdd();
      }

      goto LABEL_52;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

LABEL_51:
    [PowerEventHandler_Rcp init:];
    goto LABEL_52;
  }

  v13 = otBorderRouterRegister(this[28]);
  if (!v13)
  {
    v24 = 0;
    v25 = *&a4[3].__u6_addr32[2];
    if (v25)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  v23 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v23)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    HostInterpreter::ProcessPrefixAdd();
  }

LABEL_52:
  HIDWORD(v27) = v13 - 1;
  LODWORD(v27) = v13 - 1;
  v26 = v27 >> 1;
  if (v26 > 6 || ((0x4Du >> v26) & 1) == 0)
  {
    v24 = 1;
    v25 = *&a4[3].__u6_addr32[2];
    if (v25)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  v13 = dword_10044816C[v26];
  v24 = dword_100448188[v26];
  v25 = *&a4[3].__u6_addr32[2];
  if (!v25)
  {
    goto LABEL_55;
  }

LABEL_57:
  (*((v25 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 4, v24);
  return v13;
}

void sub_10011F5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::ProcessPrefixRemove(HostInterpreter *this, unsigned __int8 a2, char **a3, const in6_addr *a4)
{
  memset(v38, 0, sizeof(v38));
  std::set<PrefixFlag>::set[abi:ne200100](v36, a4[2].__u6_addr8);
  v6 = OnMeshPrefixEntry::encode_flag_set(v36, a4[1].__u6_addr32[1]);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v36, v37);
  IPv6Prefix::IPv6Prefix(&v35, a4, a4[1].__u6_addr8[0]);
  if ((gSrpModeNetInfo & 1) == 0)
  {
    v7 = a4[1].__u6_addr8[8];
    v31 = 2;
    v32 = v6;
    v33 = v7;
    v34 = 0;
    prefix_entry = HostInterpreter::find_prefix_entry(this, &v35, &v31);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    v10 = logging_obg;
    if ((this + 64) == prefix_entry)
    {
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          OnMeshPrefixEntry::get_description(&__p, &v31, &v35, 0);
          v12 = v30 >= 0 ? &__p : __p.__vftable;
          *buf = 136315138;
          v40 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "OnMeshPrefixes: [%s] Prefix not found", buf, 0xCu);
          if (v30 < 0)
          {
            operator delete(__p.__vftable);
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      v20 = 0;
      goto LABEL_57;
    }

    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        OnMeshPrefixEntry::get_description(&__p, &v31, &v35, 0);
        v11 = v30 >= 0 ? &__p : __p.__vftable;
        *buf = 136315138;
        v40 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "OnMeshPrefixes: Removing %s", buf, 0xCu);
        if (v30 < 0)
        {
          operator delete(__p.__vftable);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v13 = prefix_entry[1];
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
      v15 = prefix_entry;
      do
      {
        v14 = v15[2];
        v16 = *v14 == v15;
        v15 = v14;
      }

      while (!v16);
    }

    if (*(this + 7) == prefix_entry)
    {
      *(this + 7) = v14;
    }

    v17 = *(this + 8);
    --*(this + 9);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v17, prefix_entry);
    operator delete(prefix_entry);
  }

  IPv6Prefix::to_string(&__p, &v35);
  if (v30 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__vftable;
  }

  v19 = ot::Utils::CmdLineParser::ParseAsIp6Prefix(p_p, v38);
  v20 = v19;
  if (v30 < 0)
  {
    operator delete(__p.__vftable);
    if (v20)
    {
      goto LABEL_35;
    }
  }

  else if (v19)
  {
LABEL_35:
    v21 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v21)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessPrefixRemove();
      }

      goto LABEL_61;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

LABEL_60:
    [PowerEventHandler_Rcp init:];
    goto LABEL_61;
  }

  v20 = otBorderRouterRemoveOnMeshPrefix(*(this + 28), v38);
  if (!v20)
  {
    v20 = otBorderRouterRegister(*(this + 28));
    if (v20)
    {
      v23 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (!v23)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::ProcessPrefixRemove();
      }

      goto LABEL_61;
    }

LABEL_57:
    v24 = 0;
    v25 = *&a4[3].__u6_addr32[2];
    if (v25)
    {
      goto LABEL_66;
    }

LABEL_64:
    std::runtime_error::runtime_error(&__p, "call to empty boost::function");
    __p.__vftable = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&__p);
  }

  v22 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v22)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    HostInterpreter::ProcessPrefixRemove();
  }

LABEL_61:
  HIDWORD(v27) = v20 - 1;
  LODWORD(v27) = v20 - 1;
  v26 = v27 >> 1;
  if (v26 > 6 || ((0x4Du >> v26) & 1) == 0)
  {
    v24 = 1;
    v25 = *&a4[3].__u6_addr32[2];
    if (v25)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v20 = dword_10044816C[v26];
  v24 = dword_100448188[v26];
  v25 = *&a4[3].__u6_addr32[2];
  if (!v25)
  {
    goto LABEL_64;
  }

LABEL_66:
  (*((v25 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 4, v24);
  return v20;
}

void sub_10011FB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HostInterpreter::ProcessPropertyGet(HostInterpreter *this, unsigned __int8 a2, char **a3, void *a4)
{
  v4 = __chkstk_darwin(this);
  v6 = v5;
  v422 = v4;
  v7 = *(v5 + 23);
  *&__s1 = v5;
  if ((v7 & 0x80000000) == 0)
  {
    if (strcmp(v5, "Thread:NetworkData"))
    {
      if (strcmp(v6, "NCP:Channel"))
      {
        if (strcmp(v6, "nm:trigger:devicedata:interval"))
        {
          if (strcmp(v6, "NCP:ChannelMask"))
          {
            if (strcmp(v6, "NCP:TXPower"))
            {
              if (strcmp(v6, "Network:NodeType"))
              {
                if (strcmp(v6, "Network:Role"))
                {
                  if (strcmp(v6, "Network:LastRole"))
                  {
                    if (strcmp(v6, "Network:PartitionId"))
                    {
                      if (strcmp(v6, "Thread:RLOC16"))
                      {
                        if (strcmp(v6, "isPrimaryResident"))
                        {
                          if (strcmp(v6, "wasPrimaryResident"))
                          {
                            if (strcmp(v6, "Network:PSKc"))
                            {
                              if (strcmp(v6, "NCP:ExtendedAddress"))
                              {
                                if (strcmp(v6, "Thread:NeighborMeshLocalAddress"))
                                {
                                  if (strcmp(v6, "Thread:EmacId"))
                                  {
                                    if (strcmp(v6, "NCP:WedExtendedAddress"))
                                    {
                                      if (strcmp(v6, "NCP:WedMleId"))
                                      {
                                        if (strcmp(v6, "wasDeviceEverAChildInCurrentNetwork"))
                                        {
                                          if (strcmp(v6, "Config:TUN:InterfaceName"))
                                          {
                                            if (strcmp(v6, "IPv6:Routes"))
                                            {
                                              if (strcmp(__s1, "thread_version"))
                                              {
                                                if (strcmp(__s1, "cametrics_triggerbased_stability_data"))
                                                {
                                                  if (strcmp(__s1, "cametrics_periodic_stability_data"))
                                                  {
                                                    if (strcmp(__s1, "primary_resident_data"))
                                                    {
                                                      if (strcmp(__s1, "homeThreadInfoData"))
                                                      {
                                                        if (strcmp(__s1, "numOnMeshPrefixes"))
                                                        {
                                                          if (strcmp(__s1, "numRouters"))
                                                          {
                                                            if (strcmp(__s1, "numOffMeshRoutes"))
                                                            {
                                                              if (strcmp(__s1, "Thread:OnMeshPrefixes"))
                                                              {
                                                                if (strcmp(__s1, "Thread:OffMeshRoutes"))
                                                                {
                                                                  if (strcmp(__s1, "nm:networkdata"))
                                                                  {
                                                                    if (strcmp(__s1, "Thread:Services"))
                                                                    {
                                                                      if (strcmp(__s1, "NCP:State"))
                                                                      {
                                                                        if (strcmp(__s1, "Network:Name"))
                                                                        {
                                                                          if (strcmp(__s1, "Network:XPANID"))
                                                                          {
                                                                            if (strcmp(__s1, "Network:PANID"))
                                                                            {
                                                                              if (strcmp(__s1, "NCP:HardwareSerialNumber"))
                                                                              {
                                                                                if (strcmp(__s1, "vendor:assigned:hw:mac"))
                                                                                {
                                                                                  if (strcmp(__s1, "NCP:HardwareAddress"))
                                                                                  {
                                                                                    if (strcmp(__s1, "IPv6:AllAddresses"))
                                                                                    {
                                                                                      if (strcmp(__s1, "Thread:Leader:RouterID"))
                                                                                      {
                                                                                        if (strcmp(__s1, "Thread:Leader:ExtendedAddress"))
                                                                                        {
                                                                                          if (strcmp(__s1, "ChannelUtilizationMonitor:State"))
                                                                                          {
                                                                                            if (strcmp(__s1, "Network:Key"))
                                                                                            {
                                                                                              if (strcmp(__s1, "Network:KeyIndex"))
                                                                                              {
                                                                                                if (strcmp(__s1, "Thread:ActiveDataset:Bytes"))
                                                                                                {
                                                                                                  if (strcmp(__s1, "vendor:assert"))
                                                                                                  {
                                                                                                    if (strcmp(__s1, "vendor:hard:fault"))
                                                                                                    {
                                                                                                      if (strcmp(__s1, "vendor:stack:overflow"))
                                                                                                      {
                                                                                                        if (strcmp(__s1, "Leader:Reelect:Counters"))
                                                                                                        {
                                                                                                          if (strcmp(__s1, "vendor:neighbor:count:histogram") && strcmp(__s1, "vendor:neighbor:count:histogram:AsValMap"))
                                                                                                          {
                                                                                                            if (strcmp(__s1, "vendor:bbr:counters") && strcmp(__s1, "vendor:bbr:counters:AsValMap"))
                                                                                                            {
                                                                                                              if (strcmp(__s1, "vendor:linkloss:counters") && strcmp(__s1, "vendor:linkloss:counters:AsValMap"))
                                                                                                              {
                                                                                                                if (strcmp(__s1, "NCP:Counter:Thread:Mle") && strcmp(__s1, "NCP:Counter:Thread:Mle:AsValMap"))
                                                                                                                {
                                                                                                                  if (strcmp(__s1, "NCP:Counter:Thread:Neighbor:TriggerBased"))
                                                                                                                  {
                                                                                                                    if (strcmp(__s1, "NCP:Counter:AllIPv6") && strcmp(__s1, "NCP:Counter:AllIPv6:AsValMap"))
                                                                                                                    {
                                                                                                                      if (strcmp(__s1, "NCP:Matter:Subscription:Histogram") && strcmp(__s1, "NCP:Matter:Subscription:Histogram:AsValMap"))
                                                                                                                      {
                                                                                                                        if (strcmp(__s1, "NCP:Counter:AllMac") && strcmp(__s1, "NCP:Counter:AllMac:AsValMap"))
                                                                                                                        {
                                                                                                                          if (strcmp(__s1, "vendor:mle:adv:tx:num"))
                                                                                                                          {
                                                                                                                            if (strcmp(__s1, "vendor:min:mac:interframedelay"))
                                                                                                                            {
                                                                                                                              if (strcmp(__s1, "vendor:csl:tx:schedframe:reqahead:timeinus"))
                                                                                                                              {
                                                                                                                                if (strcmp(__s1, "vendor:radio:counters") && strcmp(__s1, "vendor:radio:counters:asvalmap"))
                                                                                                                                {
                                                                                                                                  if (strcmp(__s1, "vendor:joiner:RSSIHistogram") && strcmp(__s1, "vendor:joiner:RSSIHistogram:AsValMap"))
                                                                                                                                  {
                                                                                                                                    if (strcmp(__s1, "Daemon:Version"))
                                                                                                                                    {
                                                                                                                                      if (strcmp(__s1, "DaemonMorty:Version"))
                                                                                                                                      {
                                                                                                                                        if (strcmp(__s1, "vendor:version"))
                                                                                                                                        {
                                                                                                                                          if (strcmp(__s1, "Current:Srp:NetdataMode"))
                                                                                                                                          {
                                                                                                                                            if (strcmp(__s1, "Srp:NetdataMode"))
                                                                                                                                            {
                                                                                                                                              if (strcmp(__s1, "vendor:last:host:wake:reason"))
                                                                                                                                              {
                                                                                                                                                if (strcmp(__s1, "vendor:deepsleep:region:loglevels"))
                                                                                                                                                {
                                                                                                                                                  if (strcmp(__s1, "vendor:deepsleep:loglevel"))
                                                                                                                                                  {
                                                                                                                                                    if (strcmp(__s1, "vendor:deepsleep:filter:list"))
                                                                                                                                                    {
                                                                                                                                                      if (strcmp(__s1, "vendor:MAC:packet:SizeHistogram") && strcmp(__s1, "vendor:MAC:packet:SizeHistogram:AsValMap"))
                                                                                                                                                      {
                                                                                                                                                        if (strcmp(__s1, "vendor:MAC:packet:ErrorHistogram") && strcmp(__s1, "vendor:MAC:packet:ErrorHistogram:AsValMap"))
                                                                                                                                                        {
                                                                                                                                                          if (strcmp(__s1, "vendor:MAC:packet:LQIHistogram") && strcmp(__s1, "vendor:MAC:packet:LQIHistogram:AsValMap"))
                                                                                                                                                          {
                                                                                                                                                            if (strcmp(__s1, "vendor:MAC:packet:RSSIHistogram") && strcmp(__s1, "vendor:MAC:packet:RSSIHistogram:AsValMap"))
                                                                                                                                                            {
                                                                                                                                                              if (strcmp(__s1, "NCP:MacRetryHistogram") && strcmp(__s1, "NCP:MacRetryHistogram:AsValMap"))
                                                                                                                                                              {
                                                                                                                                                                if (strcmp(__s1, "vendor:openthread:radio:counters") && strcmp(__s1, "vendor:openthread:radio:counters:AsValMap"))
                                                                                                                                                                {
                                                                                                                                                                  if (strcmp(__s1, "IPv6:MeshLocalPrefix"))
                                                                                                                                                                  {
                                                                                                                                                                    if (strcmp(__s1, "IPv6:MeshLocalAddress"))
                                                                                                                                                                    {
                                                                                                                                                                      if (strcmp(__s1, "vendor:ncp:state:dump"))
                                                                                                                                                                      {
                                                                                                                                                                        if (strcmp(__s1, "Thread:RouterTable"))
                                                                                                                                                                        {
                                                                                                                                                                          if (strcmp(__s1, "Thread:EidCache"))
                                                                                                                                                                          {
                                                                                                                                                                            if (strcmp(__s1, "Thread:MessageBufferStats"))
                                                                                                                                                                            {
                                                                                                                                                                              if (strcmp(__s1, "is_threadsession_on"))
                                                                                                                                                                              {
                                                                                                                                                                                if (strcmp(__s1, "vendor:power"))
                                                                                                                                                                                {
                                                                                                                                                                                  v8 = strcmp(__s1, "vendor:power:table");
                                                                                                                                                                                  if (v8)
                                                                                                                                                                                  {
                                                                                                                                                                                    if (strcmp(__s1, "vendor:coex:radioload"))
                                                                                                                                                                                    {
                                                                                                                                                                                      if (strcmp(__s1, "vendor:coex:preferredAntenna"))
                                                                                                                                                                                      {
                                                                                                                                                                                        if (strcmp(__s1, "vendor:coex:scanFreqTable"))
                                                                                                                                                                                        {
                                                                                                                                                                                          if (strcmp(__s1, "vendor:coex:CoTxPowerCap"))
                                                                                                                                                                                          {
                                                                                                                                                                                            if (strcmp(__s1, "is_bt_audioCall_on"))
                                                                                                                                                                                            {
                                                                                                                                                                                              if (strcmp(__s1, "vendor:coex:rcp2:counters"))
                                                                                                                                                                                              {
                                                                                                                                                                                                if (strcmp(__s1, "rcp2PcapState"))
                                                                                                                                                                                                {
                                                                                                                                                                                                  if (strcmp(__s1, "Daemon:VirtualInterface:ReadBufferSize"))
                                                                                                                                                                                                  {
                                                                                                                                                                                                    if (strcmp(__s1, "vendor:power:limit:table"))
                                                                                                                                                                                                    {
                                                                                                                                                                                                      if (strcmp(__s1, "vendor:power:limit:table:active:id"))
                                                                                                                                                                                                      {
                                                                                                                                                                                                        if (strcmp(__s1, "vendor:fem:enabled"))
                                                                                                                                                                                                        {
                                                                                                                                                                                                          if (strcmp(__s1, "NCP:PcapEnabled"))
                                                                                                                                                                                                          {
                                                                                                                                                                                                            if (strcmp(__s1, "Daemon:PromiscuousPcap"))
                                                                                                                                                                                                            {
                                                                                                                                                                                                              if (strcmp(__s1, "vendor:ifs:ackdata"))
                                                                                                                                                                                                              {
                                                                                                                                                                                                                if (strcmp(__s1, "ca:reporting:enabled"))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  if (strcmp(__s1, "streamRawRespTimeHist"))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    if (strcmp(__s1, "coex:rcp2:coex:counters:asvalmap"))
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      if (strcmp(__s1, "coex:rcp2:btwifi:load"))
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        if (strcmp(__s1, "Thread:Health:Metrics"))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          if (strcmp(__s1, "ThreadStartMetrics"))
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v9 = __s1;
LABEL_249:
                                                                                                                                                                                                                            if (!strcmp(v9, "NetdataFull:NoUnicastService"))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                              if (logging_obg)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v344 = logging_obg;
                                                                                                                                                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v344, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v345 = __s1;
                                                                                                                                                                                                                                  v346 = *(__s1 + 56);
                                                                                                                                                                                                                                  if (*(__s1 + 23) < 0)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v345 = *__s1;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109378;
                                                                                                                                                                                                                                  HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = v346;
                                                                                                                                                                                                                                  LOWORD(v436[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                                                                                                                                                                                  *(&v436[0].__r_.__value_.__r.__words[1] + 2) = v345;
                                                                                                                                                                                                                                  _os_log_impl(&_mh_execute_header, v344, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v436, 0x12u);
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              *v452 = 0;
                                                                                                                                                                                                                              if (*(v422[28] + 143816) >= 0xF1u)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                HostInterpreter::get_srp_service_advertised_info(v422, v456, __s, v452, v458);
                                                                                                                                                                                                                                if (!*v452)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v413 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                                  if (v413)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v413, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      HostInterpreter::ProcessPropertyGet();
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              operator new();
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            v10 = strcmp(v9, "LeaderOverride");
                                                                                                                                                                                                                            v11 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                            v12 = v11;
                                                                                                                                                                                                                            if (v10)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              if (v11)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v13 = __s1;
                                                                                                                                                                                                                                  if (*(__s1 + 23) < 0)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v13 = *__s1;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315394;
                                                                                                                                                                                                                                  *(v436[0].__r_.__value_.__r.__words + 4) = v13;
                                                                                                                                                                                                                                  WORD2(v436[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                                                                                                                                                                                  *(&v436[0].__r_.__value_.__r.__words[1] + 6) = "Prop NotFound";
                                                                                                                                                                                                                                  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "HI:PG0:%s=%s", v436, 0x16u);
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              std::string::basic_string[abi:ne200100]<0>(v436, "Property Not Found");
                                                                                                                                                                                                                              operator new();
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            if (v11)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v347 = __s1;
                                                                                                                                                                                                                                v348 = *(__s1 + 56);
                                                                                                                                                                                                                                if (*(__s1 + 23) < 0)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v347 = *__s1;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109378;
                                                                                                                                                                                                                                HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = v348;
                                                                                                                                                                                                                                LOWORD(v436[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                                                                                                                                                                                *(&v436[0].__r_.__value_.__r.__words[1] + 2) = v347;
                                                                                                                                                                                                                                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v436, 0x12u);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            gettimeofday(v452, v456);
                                                                                                                                                                                                                            std::string::basic_string[abi:ne200100]<0>(v436, "is_primary_resident");
                                                                                                                                                                                                                            *v458 = v436;
                                                                                                                                                                                                                            v407 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v436[0].__r_.__value_.__l.__data_, &std::piecewise_construct, v458);
                                                                                                                                                                                                                            v408 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v407 + 7, "1");
                                                                                                                                                                                                                            if (SHIBYTE(v436[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              operator delete(v436[0].__r_.__value_.__l.__data_);
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            v409 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                            if (v409)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v409, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v410 = v422[39];
                                                                                                                                                                                                                                LODWORD(v436[0].__r_.__value_.__l.__data_) = 134218496;
                                                                                                                                                                                                                                *(v436[0].__r_.__value_.__r.__words + 4) = *v452;
                                                                                                                                                                                                                                WORD2(v436[0].__r_.__value_.__r.__words[1]) = 2048;
                                                                                                                                                                                                                                *(&v436[0].__r_.__value_.__r.__words[1] + 6) = v410;
                                                                                                                                                                                                                                HIWORD(v436[0].__r_.__value_.__r.__words[2]) = 1024;
                                                                                                                                                                                                                                LODWORD(v436[1].__r_.__value_.__l.__data_) = v408;
                                                                                                                                                                                                                                _os_log_impl(&_mh_execute_header, v409, OS_LOG_TYPE_INFO, "Leader re-election attempt(Event) CurrTimeSec[%ld] LastTriggerTime[%ld] Primary[%d]", v436, 0x1Cu);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            ++*(RcpHostContext::sRcpHostContext + 6128);
                                                                                                                                                                                                                            if (otThreadBecomeLeader(v422[28], 1))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v414 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                              if (v414)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v414, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  HostInterpreter::ProcessPropertyGet();
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v422[39] = *v452;
                                                                                                                                                                                                                              v415 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                              if (v415)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v415, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  HostInterpreter::ProcessPropertyGet();
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              ++*(RcpHostContext::sRcpHostContext + 6132);
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            if ((*(__s1 + 56) & 1) == 0)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              operator new();
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            return 0;
                                                                                                                                                                                                                          }

LABEL_1139:
                                                                                                                                                                                                                          v339 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                                          if (v339)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v340 = v339;
                                                                                                                                                                                                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v340, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v341 = __s1;
                                                                                                                                                                                                                              v342 = *(__s1 + 56);
                                                                                                                                                                                                                              if (*(__s1 + 23) < 0)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v341 = *__s1;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109378;
                                                                                                                                                                                                                              HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = v342;
                                                                                                                                                                                                                              LOWORD(v436[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                                                                                                                                                                              *(&v436[0].__r_.__value_.__r.__words[1] + 2) = v341;
                                                                                                                                                                                                                              _os_log_impl(&_mh_execute_header, v340, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v436, 0x12u);
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          v436[0].__r_.__value_.__r.__words[0] = v436;
                                                                                                                                                                                                                          v436[0].__r_.__value_.__l.__size_ = v436;
                                                                                                                                                                                                                          v436[0].__r_.__value_.__r.__words[2] = 0;
                                                                                                                                                                                                                          RcpHostContext::GetThreadStartMetrics(RcpHostContext::sRcpHostContext, v436);
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        goto LABEL_1133;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      goto LABEL_1127;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    goto LABEL_1121;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  goto LABEL_1115;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                goto LABEL_1109;
                                                                                                                                                                                                              }

LABEL_1103:
                                                                                                                                                                                                              v319 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                              if (v319)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v320 = v319;
                                                                                                                                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v320, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v321 = __s1;
                                                                                                                                                                                                                  if (*(__s1 + 23) < 0)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v321 = *__s1;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                                                                                                  *(v436[0].__r_.__value_.__r.__words + 4) = v321;
                                                                                                                                                                                                                  _os_log_impl(&_mh_execute_header, v320, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }

                                                                                                                                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                              {
                                                                                                                                                                                                                [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                              }

                                                                                                                                                                                                              v456[0].__r_.__value_.__s.__data_[0] = 0;
                                                                                                                                                                                                              IfsAckDataPerNeighbor = otPlatVendorGetIfsAckDataPerNeighbor(v436, v456);
                                                                                                                                                                                                              if (!IfsAckDataPerNeighbor)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                HostInterpreter::GetIfsAckDataPerNeighborAsString(v436, v456[0].__r_.__value_.__s.__data_[0], v452);
                                                                                                                                                                                                                boost::any::any<std::string &>(v458, v452);
                                                                                                                                                                                                              }

                                                                                                                                                                                                              goto LABEL_299;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            goto LABEL_1102;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          goto LABEL_1098;
                                                                                                                                                                                                        }

LABEL_1094:
                                                                                                                                                                                                        v452[0] = 0;
                                                                                                                                                                                                        v313 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                        if (v313)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v314 = v313;
                                                                                                                                                                                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v314, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                          {
                                                                                                                                                                                                            LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                                                                                            *(v436[0].__r_.__value_.__r.__words + 4) = "vendor:fem:enabled";
                                                                                                                                                                                                            _os_log_impl(&_mh_execute_header, v314, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                                                                                                                                          }
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                        {
                                                                                                                                                                                                          [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                        }

                                                                                                                                                                                                        IfsAckDataPerNeighbor = otPlatVendorGetFemEnabled(v422[28], v452);
                                                                                                                                                                                                        if (!IfsAckDataPerNeighbor)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          operator new();
                                                                                                                                                                                                        }

                                                                                                                                                                                                        goto LABEL_299;
                                                                                                                                                                                                      }

LABEL_1090:
                                                                                                                                                                                                      v452[0] = 0;
                                                                                                                                                                                                      v311 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                      if (v311)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v312 = v311;
                                                                                                                                                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v312, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                        {
                                                                                                                                                                                                          LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                                                                                          *(v436[0].__r_.__value_.__r.__words + 4) = "vendor:power:limit:table:active:id";
                                                                                                                                                                                                          _os_log_impl(&_mh_execute_header, v312, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                      {
                                                                                                                                                                                                        [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                      }

                                                                                                                                                                                                      IfsAckDataPerNeighbor = otPlatVendorGetPowerLimitTableActiveId(v422[28], v452);
                                                                                                                                                                                                      if (!IfsAckDataPerNeighbor)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        operator new();
                                                                                                                                                                                                      }

                                                                                                                                                                                                      goto LABEL_299;
                                                                                                                                                                                                    }

LABEL_1085:
                                                                                                                                                                                                    IfsAckDataPerNeighbor = otPlatVendorGetPowerLimitTable(v422[28], v436);
                                                                                                                                                                                                    if (!IfsAckDataPerNeighbor)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v310 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                      if (v310)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v310, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                        {
                                                                                                                                                                                                          *v452 = 136315138;
                                                                                                                                                                                                          *&v452[4] = "vendor:power:limit:table";
                                                                                                                                                                                                          _os_log_impl(&_mh_execute_header, v310, OS_LOG_TYPE_INFO, "HI:PG0:%s", v452, 0xCu);
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                      {
                                                                                                                                                                                                        [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                      }

                                                                                                                                                                                                      HostInterpreter::GetPowerLimitTableAsString(v436, v452);
                                                                                                                                                                                                      boost::any::any<std::string &>(v458, v452);
                                                                                                                                                                                                    }

                                                                                                                                                                                                    goto LABEL_299;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  goto LABEL_1079;
                                                                                                                                                                                                }

LABEL_1073:
                                                                                                                                                                                                PcapStateTable = otLinkGetPcapStateTable(v422[28]);
                                                                                                                                                                                                v304 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                if (v304)
                                                                                                                                                                                                {
                                                                                                                                                                                                  v305 = v304;
                                                                                                                                                                                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v305, OS_LOG_TYPE_INFO))
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v306 = __s1;
                                                                                                                                                                                                    if (*(__s1 + 23) < 0)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v306 = *__s1;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                                                                                    *(v436[0].__r_.__value_.__r.__words + 4) = v306;
                                                                                                                                                                                                    _os_log_impl(&_mh_execute_header, v305, OS_LOG_TYPE_INFO, "HI:PG0:%s ", v436, 0xCu);
                                                                                                                                                                                                  }
                                                                                                                                                                                                }

                                                                                                                                                                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                {
                                                                                                                                                                                                  [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                }

                                                                                                                                                                                                if (PcapStateTable)
                                                                                                                                                                                                {
                                                                                                                                                                                                  *&v436[0].__r_.__value_.__r.__words[1] = 0uLL;
                                                                                                                                                                                                  v436[0].__r_.__value_.__r.__words[0] = &v436[0].__r_.__value_.__l.__size_;
                                                                                                                                                                                                  memset(v452, 0, 24);
                                                                                                                                                                                                  v377 = __s1;
                                                                                                                                                                                                  if (*(__s1 + 23) < 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v377 = *__s1;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  std::string::basic_string[abi:ne200100]<0>(__s, v377);
                                                                                                                                                                                                  std::string::basic_string[abi:ne200100]<0>(v457, "[");
                                                                                                                                                                                                  if ((v457[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v378 = v457;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v378 = v457[0].__r_.__value_.__r.__words[0];
                                                                                                                                                                                                  }

                                                                                                                                                                                                  if ((v457[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    size = HIBYTE(v457[0].__r_.__value_.__r.__words[2]);
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    size = v457[0].__r_.__value_.__l.__size_;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  v380 = std::string::append(__s, v378, size);
                                                                                                                                                                                                  v381 = *&v380->__r_.__value_.__l.__data_;
                                                                                                                                                                                                  v456[0].__r_.__value_.__r.__words[2] = v380->__r_.__value_.__r.__words[2];
                                                                                                                                                                                                  *&v456[0].__r_.__value_.__l.__data_ = v381;
                                                                                                                                                                                                  v380->__r_.__value_.__l.__size_ = 0;
                                                                                                                                                                                                  v380->__r_.__value_.__r.__words[2] = 0;
                                                                                                                                                                                                  v380->__r_.__value_.__r.__words[0] = 0;
                                                                                                                                                                                                  std::to_string(&v455, 0);
                                                                                                                                                                                                  if ((v455.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v382 = &v455;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v382 = v455.__r_.__value_.__r.__words[0];
                                                                                                                                                                                                  }

                                                                                                                                                                                                  if ((v455.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v383 = HIBYTE(v455.__r_.__value_.__r.__words[2]);
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v383 = v455.__r_.__value_.__l.__size_;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  v384 = std::string::append(v456, v382, v383);
                                                                                                                                                                                                  v385 = *&v384->__r_.__value_.__l.__data_;
                                                                                                                                                                                                  *&v458[16] = *(&v384->__r_.__value_.__l + 2);
                                                                                                                                                                                                  *v458 = v385;
                                                                                                                                                                                                  v384->__r_.__value_.__l.__size_ = 0;
                                                                                                                                                                                                  v384->__r_.__value_.__r.__words[2] = 0;
                                                                                                                                                                                                  v384->__r_.__value_.__r.__words[0] = 0;
                                                                                                                                                                                                  std::string::basic_string[abi:ne200100]<0>(&buf, "]");
                                                                                                                                                                                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    p_buf = &buf;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    p_buf = buf.__r_.__value_.__r.__words[0];
                                                                                                                                                                                                  }

                                                                                                                                                                                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v387 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v387 = buf.__r_.__value_.__l.__size_;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  v388 = std::string::append(v458, p_buf, v387);
                                                                                                                                                                                                  v389 = v388->__r_.__value_.__r.__words[0];
                                                                                                                                                                                                  v465.__r_.__value_.__r.__words[0] = v388->__r_.__value_.__l.__size_;
                                                                                                                                                                                                  *(v465.__r_.__value_.__r.__words + 7) = *(&v388->__r_.__value_.__r.__words[1] + 7);
                                                                                                                                                                                                  v390 = HIBYTE(v388->__r_.__value_.__r.__words[2]);
                                                                                                                                                                                                  v388->__r_.__value_.__l.__size_ = 0;
                                                                                                                                                                                                  v388->__r_.__value_.__r.__words[2] = 0;
                                                                                                                                                                                                  v388->__r_.__value_.__r.__words[0] = 0;
                                                                                                                                                                                                  if ((v452[23] & 0x80000000) != 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    operator delete(*v452);
                                                                                                                                                                                                  }

                                                                                                                                                                                                  *v452 = v389;
                                                                                                                                                                                                  *&v452[8] = v465.__r_.__value_.__r.__words[0];
                                                                                                                                                                                                  *&v452[15] = *(v465.__r_.__value_.__r.__words + 7);
                                                                                                                                                                                                  v452[23] = v390;
                                                                                                                                                                                                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    operator delete(buf.__r_.__value_.__l.__data_);
                                                                                                                                                                                                    if ((v458[23] & 0x80000000) != 0)
                                                                                                                                                                                                    {
LABEL_1328:
                                                                                                                                                                                                      operator delete(*v458);
                                                                                                                                                                                                      if ((SHIBYTE(v455.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        goto LABEL_1329;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      goto LABEL_1336;
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else if ((v458[23] & 0x80000000) != 0)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    goto LABEL_1328;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  if ((SHIBYTE(v455.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                                                                                                  {
LABEL_1329:
                                                                                                                                                                                                    if (SHIBYTE(v456[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      goto LABEL_1330;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    goto LABEL_1337;
                                                                                                                                                                                                  }

LABEL_1336:
                                                                                                                                                                                                  operator delete(v455.__r_.__value_.__l.__data_);
                                                                                                                                                                                                  if (SHIBYTE(v456[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                                                                                                  {
LABEL_1330:
                                                                                                                                                                                                    operator delete(v456[0].__r_.__value_.__l.__data_);
                                                                                                                                                                                                    if ((SHIBYTE(v457[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      goto LABEL_1331;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    goto LABEL_1338;
                                                                                                                                                                                                  }

LABEL_1337:
                                                                                                                                                                                                  if ((SHIBYTE(v457[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                                                                                                  {
LABEL_1331:
                                                                                                                                                                                                    if ((SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      goto LABEL_1333;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    goto LABEL_1332;
                                                                                                                                                                                                  }

LABEL_1338:
                                                                                                                                                                                                  operator delete(v457[0].__r_.__value_.__l.__data_);
                                                                                                                                                                                                  if ((SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                                                                                                  {
LABEL_1333:
                                                                                                                                                                                                    *v458 = v452;
                                                                                                                                                                                                    v391 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v436, v452, &std::piecewise_construct, v458);
                                                                                                                                                                                                    boost::any::operator=<unsigned short &>(v391 + 7, PcapStateTable);
                                                                                                                                                                                                  }

LABEL_1332:
                                                                                                                                                                                                  operator delete(__s[0].__r_.__value_.__l.__data_);
                                                                                                                                                                                                  goto LABEL_1333;
                                                                                                                                                                                                }

                                                                                                                                                                                                v412 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                                if (v412)
                                                                                                                                                                                                {
                                                                                                                                                                                                  if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v412, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                  {
                                                                                                                                                                                                    HostInterpreter::ProcessPropertyGet();
                                                                                                                                                                                                  }
                                                                                                                                                                                                }

                                                                                                                                                                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                {
                                                                                                                                                                                                  [PowerEventHandler_Rcp init:];
                                                                                                                                                                                                }

                                                                                                                                                                                                goto LABEL_300;
                                                                                                                                                                                              }

                                                                                                                                                                                              goto LABEL_1067;
                                                                                                                                                                                            }

                                                                                                                                                                                            goto LABEL_1063;
                                                                                                                                                                                          }

                                                                                                                                                                                          goto LABEL_1058;
                                                                                                                                                                                        }

LABEL_1050:
                                                                                                                                                                                        v456[0].__r_.__value_.__s.__data_[0] = 0;
                                                                                                                                                                                        MWSFrequencyTable = otPlatVendorGetMWSFrequencyTable(v422[28], v456, v452);
                                                                                                                                                                                        if (!MWSFrequencyTable)
                                                                                                                                                                                        {
                                                                                                                                                                                          snprintf(v436, 1uLL, "%d", v456[0].__r_.__value_.__s.__data_[0]);
                                                                                                                                                                                          if (v456[0].__r_.__value_.__s.__data_[0])
                                                                                                                                                                                          {
                                                                                                                                                                                            v292 = 0;
                                                                                                                                                                                            v293 = &v436[0].__r_.__value_.__s.__data_[1];
                                                                                                                                                                                            do
                                                                                                                                                                                            {
                                                                                                                                                                                              snprintf(v293, 2uLL, "%02x", v452[2 * v292++]);
                                                                                                                                                                                              v293 += 2;
                                                                                                                                                                                            }

                                                                                                                                                                                            while (v292 < 2 * v456[0].__r_.__value_.__s.__data_[0]);
                                                                                                                                                                                          }

                                                                                                                                                                                          v294 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                          if (v294)
                                                                                                                                                                                          {
                                                                                                                                                                                            if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v294, OS_LOG_TYPE_DEBUG))
                                                                                                                                                                                            {
                                                                                                                                                                                              HostInterpreter::ProcessPropertyGet();
                                                                                                                                                                                            }
                                                                                                                                                                                          }

                                                                                                                                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                          {
                                                                                                                                                                                            [PowerEventHandler_Rcp init:];
                                                                                                                                                                                          }

                                                                                                                                                                                          operator new();
                                                                                                                                                                                        }

                                                                                                                                                                                        IfsAckDataPerNeighbor = MWSFrequencyTable;
                                                                                                                                                                                        goto LABEL_299;
                                                                                                                                                                                      }

LABEL_1045:
                                                                                                                                                                                      v452[0] = 0;
                                                                                                                                                                                      IfsAckDataPerNeighbor = otPlatVendorGetAntenna(v422[28], v452);
                                                                                                                                                                                      if (!IfsAckDataPerNeighbor)
                                                                                                                                                                                      {
                                                                                                                                                                                        v290 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                        if (v290)
                                                                                                                                                                                        {
                                                                                                                                                                                          if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v290, OS_LOG_TYPE_DEBUG))
                                                                                                                                                                                          {
                                                                                                                                                                                            HostInterpreter::ProcessPropertyGet();
                                                                                                                                                                                          }
                                                                                                                                                                                        }

                                                                                                                                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                        {
                                                                                                                                                                                          [PowerEventHandler_Rcp init:];
                                                                                                                                                                                        }

                                                                                                                                                                                        operator new();
                                                                                                                                                                                      }

                                                                                                                                                                                      goto LABEL_299;
                                                                                                                                                                                    }

                                                                                                                                                                                    goto LABEL_1044;
                                                                                                                                                                                  }

LABEL_1039:
                                                                                                                                                                                  *v452 = 1300;
                                                                                                                                                                                  __chkstk_darwin(v8);
                                                                                                                                                                                  PTB = otPlatVendorGetPTB(v422[28], &v416, v452);
                                                                                                                                                                                  if (!PTB)
                                                                                                                                                                                  {
                                                                                                                                                                                    v289 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                    if (v289)
                                                                                                                                                                                    {
                                                                                                                                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v289, OS_LOG_TYPE_INFO))
                                                                                                                                                                                      {
                                                                                                                                                                                        LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109120;
                                                                                                                                                                                        HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = *v452;
                                                                                                                                                                                        _os_log_impl(&_mh_execute_header, v289, OS_LOG_TYPE_INFO, "HI:PG0:Get RCP2 PTB file:PTB Read data response,Size=%d", v436, 8u);
                                                                                                                                                                                      }
                                                                                                                                                                                    }

                                                                                                                                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                    {
                                                                                                                                                                                      [PowerEventHandler_Rcp init:];
                                                                                                                                                                                    }

                                                                                                                                                                                    operator new();
                                                                                                                                                                                  }

                                                                                                                                                                                  goto LABEL_1283;
                                                                                                                                                                                }

LABEL_1034:
                                                                                                                                                                                v452[0] = 0;
                                                                                                                                                                                IfsAckDataPerNeighbor = otPlatVendorGetPower(v422[28], v452);
                                                                                                                                                                                if (!IfsAckDataPerNeighbor)
                                                                                                                                                                                {
                                                                                                                                                                                  v287 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                                  if (v287)
                                                                                                                                                                                  {
                                                                                                                                                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v287, OS_LOG_TYPE_INFO))
                                                                                                                                                                                    {
                                                                                                                                                                                      LODWORD(v436[0].__r_.__value_.__l.__data_) = 134217984;
                                                                                                                                                                                      *(v436[0].__r_.__value_.__r.__words + 4) = vcvtd_n_f64_s32(v452[0], 2uLL);
                                                                                                                                                                                      _os_log_impl(&_mh_execute_header, v287, OS_LOG_TYPE_INFO, "HI:PG0:VendorPower=%f dBm", v436, 0xCu);
                                                                                                                                                                                    }
                                                                                                                                                                                  }

                                                                                                                                                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                  {
                                                                                                                                                                                    [PowerEventHandler_Rcp init:];
                                                                                                                                                                                  }

                                                                                                                                                                                  operator new();
                                                                                                                                                                                }

                                                                                                                                                                                goto LABEL_299;
                                                                                                                                                                              }

                                                                                                                                                                              goto LABEL_1030;
                                                                                                                                                                            }

                                                                                                                                                                            goto LABEL_1017;
                                                                                                                                                                          }

                                                                                                                                                                          goto LABEL_1005;
                                                                                                                                                                        }

                                                                                                                                                                        goto LABEL_1001;
                                                                                                                                                                      }

                                                                                                                                                                      goto LABEL_995;
                                                                                                                                                                    }

LABEL_984:
                                                                                                                                                                    otThreadGetMeshLocalEid(v422[28]);
                                                                                                                                                                    if (v255)
                                                                                                                                                                    {
                                                                                                                                                                      otIp6AddressToString(v255, v436, 40);
                                                                                                                                                                      v256 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                      if (v256)
                                                                                                                                                                      {
                                                                                                                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v256, OS_LOG_TYPE_INFO))
                                                                                                                                                                        {
                                                                                                                                                                          v257 = __s1;
                                                                                                                                                                          if (*(__s1 + 23) < 0)
                                                                                                                                                                          {
                                                                                                                                                                            v257 = *__s1;
                                                                                                                                                                          }

                                                                                                                                                                          std::string::basic_string[abi:ne200100]<0>(v452, v436);
                                                                                                                                                                          if (v452[23] >= 0)
                                                                                                                                                                          {
                                                                                                                                                                            v258 = v452;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v258 = *v452;
                                                                                                                                                                          }

                                                                                                                                                                          *v458 = 136315394;
                                                                                                                                                                          *&v458[4] = v257;
                                                                                                                                                                          *&v458[12] = 2080;
                                                                                                                                                                          *&v458[14] = v258;
                                                                                                                                                                          _os_log_impl(&_mh_execute_header, v256, OS_LOG_TYPE_INFO, "HI:PG0:%s,mleAddr:%s", v458, 0x16u);
                                                                                                                                                                          if ((v452[23] & 0x80000000) != 0)
                                                                                                                                                                          {
                                                                                                                                                                            operator delete(*v452);
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                      {
                                                                                                                                                                        [PowerEventHandler_Rcp init:];
                                                                                                                                                                      }

                                                                                                                                                                      std::string::basic_string[abi:ne200100]<0>(v452, v436);
                                                                                                                                                                      operator new();
                                                                                                                                                                    }

                                                                                                                                                                    v373 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                                    if (v373)
                                                                                                                                                                    {
                                                                                                                                                                      v374 = v373;
                                                                                                                                                                      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v374, OS_LOG_TYPE_ERROR))
                                                                                                                                                                      {
                                                                                                                                                                        HostInterpreter::ProcessPropertyGet();
                                                                                                                                                                      }
                                                                                                                                                                    }

                                                                                                                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                                    {
                                                                                                                                                                      [PowerEventHandler_Rcp init:];
                                                                                                                                                                    }

                                                                                                                                                                    IfsAckDataPerNeighbor = 1;
                                                                                                                                                                    goto LABEL_299;
                                                                                                                                                                  }

                                                                                                                                                                  goto LABEL_983;
                                                                                                                                                                }

LABEL_981:
                                                                                                                                                                IfsAckDataPerNeighbor = otPlatVendorGetOpenThreadRadioCounters(v422[28], v436);
                                                                                                                                                                if (!IfsAckDataPerNeighbor)
                                                                                                                                                                {
                                                                                                                                                                  HostInterpreter::GetVendorOpenThreadRadioCountersAsValMap(v452);
                                                                                                                                                                }

                                                                                                                                                                goto LABEL_299;
                                                                                                                                                              }

                                                                                                                                                              goto LABEL_980;
                                                                                                                                                            }

                                                                                                                                                            goto LABEL_979;
                                                                                                                                                          }

                                                                                                                                                          goto LABEL_978;
                                                                                                                                                        }

                                                                                                                                                        goto LABEL_977;
                                                                                                                                                      }

                                                                                                                                                      goto LABEL_976;
                                                                                                                                                    }

                                                                                                                                                    goto LABEL_970;
                                                                                                                                                  }

LABEL_964:
                                                                                                                                                  v248 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                                  if (v248)
                                                                                                                                                  {
                                                                                                                                                    v249 = v248;
                                                                                                                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v249, OS_LOG_TYPE_INFO))
                                                                                                                                                    {
                                                                                                                                                      v250 = __s1;
                                                                                                                                                      if (*(__s1 + 23) < 0)
                                                                                                                                                      {
                                                                                                                                                        v250 = *__s1;
                                                                                                                                                      }

                                                                                                                                                      LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                                      *(v436[0].__r_.__value_.__r.__words + 4) = v250;
                                                                                                                                                      _os_log_impl(&_mh_execute_header, v249, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                                  {
                                                                                                                                                    [PowerEventHandler_Rcp init:];
                                                                                                                                                  }

                                                                                                                                                  v452[0] = 0;
                                                                                                                                                  IfsAckDataPerNeighbor = otPlatVendorGetDeepSleepLogLevel(v422[28], v452);
                                                                                                                                                  if (!IfsAckDataPerNeighbor)
                                                                                                                                                  {
                                                                                                                                                    operator new();
                                                                                                                                                  }

                                                                                                                                                  goto LABEL_299;
                                                                                                                                                }

                                                                                                                                                goto LABEL_958;
                                                                                                                                              }

LABEL_952:
                                                                                                                                              v242 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                              if (v242)
                                                                                                                                              {
                                                                                                                                                v243 = v242;
                                                                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v243, OS_LOG_TYPE_INFO))
                                                                                                                                                {
                                                                                                                                                  v244 = __s1;
                                                                                                                                                  if (*(__s1 + 23) < 0)
                                                                                                                                                  {
                                                                                                                                                    v244 = *__s1;
                                                                                                                                                  }

                                                                                                                                                  LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                                  *(v436[0].__r_.__value_.__r.__words + 4) = v244;
                                                                                                                                                  _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                              {
                                                                                                                                                [PowerEventHandler_Rcp init:];
                                                                                                                                              }

                                                                                                                                              *v452 = 0;
                                                                                                                                              IfsAckDataPerNeighbor = otPlatVendorGetHostWakeReason(v422[28], v452);
                                                                                                                                              if (!IfsAckDataPerNeighbor)
                                                                                                                                              {
                                                                                                                                                operator new();
                                                                                                                                              }

                                                                                                                                              goto LABEL_299;
                                                                                                                                            }

                                                                                                                                            goto LABEL_946;
                                                                                                                                          }

                                                                                                                                          goto LABEL_940;
                                                                                                                                        }

                                                                                                                                        goto LABEL_934;
                                                                                                                                      }

LABEL_928:
                                                                                                                                      v230 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                                      if (v230)
                                                                                                                                      {
                                                                                                                                        v231 = v230;
                                                                                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v231, OS_LOG_TYPE_INFO))
                                                                                                                                        {
                                                                                                                                          v232 = __s1;
                                                                                                                                          if (*(__s1 + 23) < 0)
                                                                                                                                          {
                                                                                                                                            v232 = *__s1;
                                                                                                                                          }

                                                                                                                                          LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                          *(v436[0].__r_.__value_.__r.__words + 4) = v232;
                                                                                                                                          _os_log_impl(&_mh_execute_header, v231, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                                      {
                                                                                                                                        [PowerEventHandler_Rcp init:];
                                                                                                                                      }

                                                                                                                                      if (*(RcpHostContext::sRcpHostContext + 5679) < 0)
                                                                                                                                      {
                                                                                                                                        std::string::__init_copy_ctor_external(v436, *(RcpHostContext::sRcpHostContext + 5656), *(RcpHostContext::sRcpHostContext + 5664));
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v436[0] = *(RcpHostContext::sRcpHostContext + 5656);
                                                                                                                                      }

                                                                                                                                      v411 = HIBYTE(v436[0].__r_.__value_.__r.__words[2]);
                                                                                                                                      v229 = HIBYTE(v436[0].__r_.__value_.__r.__words[2]);
                                                                                                                                      if ((v436[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                                                                                                                      {
                                                                                                                                        v411 = v436[0].__r_.__value_.__l.__size_;
                                                                                                                                      }

                                                                                                                                      if (v411)
                                                                                                                                      {
                                                                                                                                        boost::any::any<std::string &>(v452, v436);
                                                                                                                                      }

LABEL_1432:
                                                                                                                                      IfsAckDataPerNeighbor = 1;
                                                                                                                                      if (v229 < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(v436[0].__r_.__value_.__l.__data_);
                                                                                                                                      }

                                                                                                                                      goto LABEL_299;
                                                                                                                                    }

                                                                                                                                    goto LABEL_924;
                                                                                                                                  }

                                                                                                                                  goto LABEL_920;
                                                                                                                                }

LABEL_915:
                                                                                                                                IfsAckDataPerNeighbor = otPlatVendorGetRadioCounters(v422[28], v452);
                                                                                                                                if (!IfsAckDataPerNeighbor)
                                                                                                                                {
                                                                                                                                  HostInterpreter::GetVendorRadioCountersAsValMap(v436);
                                                                                                                                }

                                                                                                                                goto LABEL_299;
                                                                                                                              }

                                                                                                                              goto LABEL_911;
                                                                                                                            }

LABEL_906:
                                                                                                                            *v452 = 0;
                                                                                                                            IfsAckDataPerNeighbor = otPlatRadioGetMinInterframeDelay(v422[28], v452);
                                                                                                                            if (!IfsAckDataPerNeighbor)
                                                                                                                            {
                                                                                                                              v224 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                              if (v224)
                                                                                                                              {
                                                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
                                                                                                                                {
                                                                                                                                  LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                                  *(v436[0].__r_.__value_.__r.__words + 4) = "vendor:min:mac:interframedelay";
                                                                                                                                  _os_log_impl(&_mh_execute_header, v224, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v436, 0xCu);
                                                                                                                                }
                                                                                                                              }

                                                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                              {
                                                                                                                                [PowerEventHandler_Rcp init:];
                                                                                                                              }

                                                                                                                              operator new();
                                                                                                                            }

                                                                                                                            goto LABEL_299;
                                                                                                                          }

                                                                                                                          goto LABEL_902;
                                                                                                                        }

                                                                                                                        goto LABEL_901;
                                                                                                                      }

                                                                                                                      goto LABEL_900;
                                                                                                                    }

                                                                                                                    goto LABEL_898;
                                                                                                                  }

                                                                                                                  goto LABEL_899;
                                                                                                                }

                                                                                                                goto LABEL_897;
                                                                                                              }

                                                                                                              goto LABEL_896;
                                                                                                            }

                                                                                                            goto LABEL_889;
                                                                                                          }

                                                                                                          goto LABEL_880;
                                                                                                        }

                                                                                                        goto LABEL_881;
                                                                                                      }

                                                                                                      goto LABEL_878;
                                                                                                    }

                                                                                                    goto LABEL_869;
                                                                                                  }

LABEL_861:
                                                                                                  *v452 = 0;
                                                                                                  IfsAckDataPerNeighbor = otPlatVendorGenerateAssert(v422[28], v452);
                                                                                                  if (!IfsAckDataPerNeighbor)
                                                                                                  {
                                                                                                    v213 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                    if (v213)
                                                                                                    {
                                                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v213, OS_LOG_TYPE_INFO))
                                                                                                      {
                                                                                                        LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109120;
                                                                                                        HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = *v452;
                                                                                                        _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_INFO, "VendorAssert = %u", v436, 8u);
                                                                                                      }
                                                                                                    }

                                                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                    {
                                                                                                      [PowerEventHandler_Rcp init:];
                                                                                                    }

                                                                                                    operator new();
                                                                                                  }

                                                                                                  goto LABEL_299;
                                                                                                }

                                                                                                goto LABEL_854;
                                                                                              }

LABEL_842:
                                                                                              v209 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                              if (v209)
                                                                                              {
                                                                                                v210 = v209;
                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v210, OS_LOG_TYPE_INFO))
                                                                                                {
                                                                                                  LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                  *(v436[0].__r_.__value_.__r.__words + 4) = "Network:KeyIndex";
                                                                                                  _os_log_impl(&_mh_execute_header, v210, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                                }
                                                                                              }

                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                              {
                                                                                                [PowerEventHandler_Rcp init:];
                                                                                              }

                                                                                              otThreadGetKeySequenceCounter(v422[28]);
                                                                                              operator new();
                                                                                            }

LABEL_828:
                                                                                            v205 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                            if (v205)
                                                                                            {
                                                                                              v206 = v205;
                                                                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
                                                                                              {
                                                                                                LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                *(v436[0].__r_.__value_.__r.__words + 4) = "Network:Key";
                                                                                                _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                              }
                                                                                            }

                                                                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                            {
                                                                                              [PowerEventHandler_Rcp init:];
                                                                                            }

                                                                                            otThreadGetNetworkKey(v422[28], v452);
                                                                                            nl::Data::Data(v436, v452, 0x10uLL);
                                                                                            boost::any::any<nl::Data &>(v458, v436);
                                                                                          }

LABEL_819:
                                                                                          std::string::basic_string[abi:ne200100]<0>(v452, "not-implemented");
                                                                                          v202 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                          if (v202)
                                                                                          {
                                                                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v202, OS_LOG_TYPE_INFO))
                                                                                            {
                                                                                              v203 = *(__s1 + 56);
                                                                                              v204 = v452;
                                                                                              if (v452[23] < 0)
                                                                                              {
                                                                                                v204 = *v452;
                                                                                              }

                                                                                              LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109634;
                                                                                              HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = v203;
                                                                                              LOWORD(v436[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                                              *(&v436[0].__r_.__value_.__r.__words[1] + 2) = "ChannelUtilizationMonitor:State";
                                                                                              WORD1(v436[0].__r_.__value_.__r.__words[2]) = 2080;
                                                                                              *(&v436[0].__r_.__value_.__r.__words[2] + 4) = v204;
                                                                                              _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_INFO, "HI:PG%d:%s=%s", v436, 0x1Cu);
                                                                                            }
                                                                                          }

                                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                          {
                                                                                            [PowerEventHandler_Rcp init:];
                                                                                          }

                                                                                          if (*(__s1 + 56))
                                                                                          {
                                                                                            std::string::basic_string[abi:ne200100]<0>(v436, "ChannelUtilizationMonitor:State");
                                                                                            boost::any::any<std::string &>(v458, v452);
                                                                                          }

                                                                                          boost::any::any<std::string &>(v436, v452);
                                                                                        }

LABEL_810:
                                                                                        v199 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                        if (v199)
                                                                                        {
                                                                                          v200 = v199;
                                                                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
                                                                                          {
                                                                                            LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                            *(v436[0].__r_.__value_.__r.__words + 4) = "Thread:Leader:ExtendedAddress";
                                                                                            _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v436, 0xCu);
                                                                                          }
                                                                                        }

                                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                        {
                                                                                          [PowerEventHandler_Rcp init:];
                                                                                        }

                                                                                        HostInterpreter::ProcessUpdateLeaderInfo(v422);
                                                                                        *v458 = -1;
                                                                                        nl::Data::Data(v436, v458, 8uLL);
                                                                                        v207 = *(v422 + 76);
                                                                                        if (v207 == (otThreadGetLeaderRouterId(v422[28]) & 0x3F) << 10)
                                                                                        {
                                                                                          nl::Data::Data(v452, v422 + 154, 8uLL);
                                                                                          if (v436[0].__r_.__value_.__r.__words[0])
                                                                                          {
                                                                                            v436[0].__r_.__value_.__l.__size_ = v436[0].__r_.__value_.__r.__words[0];
                                                                                            operator delete(v436[0].__r_.__value_.__l.__data_);
                                                                                          }

                                                                                          v436[0] = *v452;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v208 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                          if (v208)
                                                                                          {
                                                                                            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
                                                                                            {
                                                                                              HostInterpreter::ProcessPropertyGet();
                                                                                            }
                                                                                          }

                                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                          {
                                                                                            [PowerEventHandler_Rcp init:];
                                                                                          }
                                                                                        }

                                                                                        boost::any::any<nl::Data &>(v452, v436);
                                                                                      }

LABEL_802:
                                                                                      LeaderRouterId = otThreadGetLeaderRouterId(v422[28]);
                                                                                      v197 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                      if (v197)
                                                                                      {
                                                                                        v198 = v197;
                                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v198, OS_LOG_TYPE_INFO))
                                                                                        {
                                                                                          LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315394;
                                                                                          *(v436[0].__r_.__value_.__r.__words + 4) = "Thread:Leader:RouterID";
                                                                                          WORD2(v436[0].__r_.__value_.__r.__words[1]) = 1024;
                                                                                          *(&v436[0].__r_.__value_.__r.__words[1] + 6) = LeaderRouterId;
                                                                                          _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_INFO, "HI:PG0:%s=%d", v436, 0x12u);
                                                                                        }
                                                                                      }

                                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                      {
                                                                                        [PowerEventHandler_Rcp init:];
                                                                                      }

                                                                                      operator new();
                                                                                    }

LABEL_795:
                                                                                    *v452 = v452;
                                                                                    *&v452[8] = v452;
                                                                                    *&v452[16] = 0;
                                                                                    v195 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                    if (v195)
                                                                                    {
                                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
                                                                                      {
                                                                                        *v458 = 136315138;
                                                                                        *&v458[4] = "IPv6:AllAddresses";
                                                                                        _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_INFO, "HI:PG0: %s", v458, 0xCu);
                                                                                      }
                                                                                    }

                                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                    {
                                                                                      [PowerEventHandler_Rcp init:];
                                                                                    }

                                                                                    UnicastAddresses = otIp6GetUnicastAddresses(v422[28]);
                                                                                    if (UnicastAddresses)
                                                                                    {
                                                                                      otIp6AddressToString(UnicastAddresses, v436, 40);
                                                                                      std::string::basic_string[abi:ne200100]<0>(v458, v436);
                                                                                      operator new();
                                                                                    }

                                                                                    boost::any::any<std::list<std::string> &>(v458, v452);
                                                                                  }

LABEL_788:
                                                                                  v193 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                  if (v193)
                                                                                  {
                                                                                    v194 = v193;
                                                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v194, OS_LOG_TYPE_INFO))
                                                                                    {
                                                                                      LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                      *(v436[0].__r_.__value_.__r.__words + 4) = "NCP:HardwareAddress";
                                                                                      _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                    }
                                                                                  }

                                                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                  {
                                                                                    [PowerEventHandler_Rcp init:];
                                                                                  }

                                                                                  *v452 = 0;
                                                                                  otPlatVendorGetAssignedHwMac(v422[28], v452);
                                                                                  nl::Data::Data(v436, v452, 8uLL);
                                                                                  boost::any::any<nl::Data &>(v458, v436);
                                                                                }

LABEL_781:
                                                                                *v458 = 0;
                                                                                otPlatVendorGetAssignedHwMac(v422[28], v458);
                                                                                snprintf(v436, 0xC8uLL, "%02X%02X%02X%02X%02X%02X%02X%02X", v458[0], v458[1], v458[2], v458[3], v458[4], v458[5], v458[6], v458[7]);
                                                                                v192 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                if (v192)
                                                                                {
                                                                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v192, OS_LOG_TYPE_INFO))
                                                                                  {
                                                                                    *v452 = 136315394;
                                                                                    *&v452[4] = "vendor:assigned:hw:mac";
                                                                                    *&v452[12] = 2080;
                                                                                    *&v452[14] = v436;
                                                                                    _os_log_impl(&_mh_execute_header, v192, OS_LOG_TYPE_INFO, "HI:PG0:%s=%s", v452, 0x16u);
                                                                                  }
                                                                                }

                                                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                {
                                                                                  [PowerEventHandler_Rcp init:];
                                                                                }

                                                                                std::string::basic_string[abi:ne200100]<0>(v452, v436);
                                                                                operator new();
                                                                              }

LABEL_772:
                                                                              otPlatVendorGetDeviceId(v422[28], v456);
                                                                              snprintf(v436, 0x1EuLL, "%02X%02X%02X%02X%02X%02X%02X%02X", v456[0].__r_.__value_.__s.__data_[0], v456[0].__r_.__value_.__s.__data_[1], v456[0].__r_.__value_.__s.__data_[2], v456[0].__r_.__value_.__s.__data_[3], v456[0].__r_.__value_.__s.__data_[4], v456[0].__r_.__value_.__s.__data_[5], v456[0].__r_.__value_.__s.__data_[6], v456[0].__r_.__value_.__s.__data_[7]);
                                                                              std::string::basic_string[abi:ne200100]<0>(v452, v436);
                                                                              v189 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                              if (v189)
                                                                              {
                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v189, OS_LOG_TYPE_INFO))
                                                                                {
                                                                                  v190 = v452;
                                                                                  if (v452[23] < 0)
                                                                                  {
                                                                                    v190 = *v452;
                                                                                  }

                                                                                  *v458 = 136315394;
                                                                                  *&v458[4] = "NCP:HardwareSerialNumber";
                                                                                  *&v458[12] = 2080;
                                                                                  *&v458[14] = v190;
                                                                                  _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_INFO, "HI:PG0:%s=%s", v458, 0x16u);
                                                                                }
                                                                              }

                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                              {
                                                                                [PowerEventHandler_Rcp init:];
                                                                              }

                                                                              boost::any::any<std::string &>(v458, v452);
                                                                            }

LABEL_708:
                                                                            PanId = otLinkGetPanId(v422[28]);
                                                                            v172 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                            if (v172)
                                                                            {
                                                                              v173 = v172;
                                                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v173, OS_LOG_TYPE_INFO))
                                                                              {
                                                                                LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315394;
                                                                                *(v436[0].__r_.__value_.__r.__words + 4) = "Network:PANID";
                                                                                WORD2(v436[0].__r_.__value_.__r.__words[1]) = 1024;
                                                                                *(&v436[0].__r_.__value_.__r.__words[1] + 6) = PanId;
                                                                                _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_INFO, "HI:PG0:%s=0x%x6", v436, 0x12u);
                                                                              }
                                                                            }

                                                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                            {
                                                                              [PowerEventHandler_Rcp init:];
                                                                            }

                                                                            operator new();
                                                                          }

LABEL_701:
                                                                          v169 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                          if (v169)
                                                                          {
                                                                            v170 = v169;
                                                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
                                                                            {
                                                                              LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                              *(v436[0].__r_.__value_.__r.__words + 4) = "Network:XPANID";
                                                                              _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                            }
                                                                          }

                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                          {
                                                                            [PowerEventHandler_Rcp init:];
                                                                          }

                                                                          otThreadGetExtendedPanId(v422[28]);
                                                                          nl::Data::Data(v436, v191, 8uLL);
                                                                          boost::any::any<nl::Data &>(v452, v436);
                                                                        }

LABEL_684:
                                                                        otThreadGetNetworkName(v422[28]);
                                                                        std::string::basic_string[abi:ne200100]<0>(v436, v163);
                                                                        v164 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                        if (v164)
                                                                        {
                                                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
                                                                          {
                                                                            v165 = v436;
                                                                            if ((v436[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                                                            {
                                                                              v165 = v436[0].__r_.__value_.__r.__words[0];
                                                                            }

                                                                            *v452 = 136315394;
                                                                            *&v452[4] = "Network:Name";
                                                                            *&v452[12] = 2080;
                                                                            *&v452[14] = v165;
                                                                            _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_INFO, "HI:PG0:%s=%s", v452, 0x16u);
                                                                          }
                                                                        }

                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                        {
                                                                          [PowerEventHandler_Rcp init:];
                                                                        }

                                                                        boost::any::any<std::string &>(v452, v436);
                                                                      }

LABEL_628:
                                                                      RcpHostContext::get_rcp_state(v436, RcpHostContext::sRcpHostContext);
                                                                      v148 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                      if (v148)
                                                                      {
                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
                                                                        {
                                                                          v149 = v436;
                                                                          if ((v436[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                                                          {
                                                                            v149 = v436[0].__r_.__value_.__r.__words[0];
                                                                          }

                                                                          *v452 = 136315394;
                                                                          *&v452[4] = "NCP:State";
                                                                          *&v452[12] = 2080;
                                                                          *&v452[14] = v149;
                                                                          _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_INFO, "HI:PG0:%s=%s", v452, 0x16u);
                                                                        }
                                                                      }

                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                      {
                                                                        [PowerEventHandler_Rcp init:];
                                                                      }

                                                                      boost::any::any<std::string &>(v452, v436);
                                                                    }

LABEL_623:
                                                                    LODWORD(v465.__r_.__value_.__l.__data_) = 0;
                                                                    v142 = v422[1];
                                                                    v143 = v422[2];
                                                                    v144 = (v422 + 1);
                                                                    memset(v458, 0, 24);
                                                                    std::vector<ServiceEntry>::__init_with_size[abi:ne200100]<ServiceEntry*,ServiceEntry*>(v458, v142, v143, 0xCCCCCCCCCCCCCCCDLL * ((v143 - v142) >> 4));
                                                                    v456[0].__r_.__value_.__r.__words[0] = v456;
                                                                    v456[0].__r_.__value_.__l.__size_ = v456;
                                                                    v456[0].__r_.__value_.__r.__words[2] = 0;
                                                                    v145 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                    if (v145)
                                                                    {
                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
                                                                      {
                                                                        v147 = *(__s1 + 56);
                                                                        *v452 = 67109378;
                                                                        *&v452[4] = v147;
                                                                        *&v452[8] = 2080;
                                                                        *&v452[10] = "Thread:Services";
                                                                        _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v452, 0x12u);
                                                                      }
                                                                    }

                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                    {
                                                                      [PowerEventHandler_Rcp init:];
                                                                    }

                                                                    if ((*(__s1 + 56) & 1) == 0)
                                                                    {
                                                                      v167 = v422[1];
                                                                      if (v167 != v422[2])
                                                                      {
                                                                        *&v146 = 136315394;
                                                                        *v420 = v146;
                                                                        *&v452[8] = 0;
                                                                        *&v452[16] = 0;
                                                                        *v452 = &v452[8];
                                                                        LODWORD(v455.__r_.__value_.__l.__data_) = *(v167 + 3);
                                                                        std::string::basic_string[abi:ne200100]<0>(__s, "EnterpriseNumber");
                                                                        v457[0].__r_.__value_.__r.__words[0] = __s;
                                                                        v168 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v452, &__s[0].__r_.__value_.__l.__data_, &std::piecewise_construct, v457);
                                                                        boost::any::operator=<unsigned int &>(v168 + 7, &v455);
                                                                      }

                                                                      boost::any::any<std::list<std::map<std::string,boost::any>> &>(v452, v456);
                                                                    }

                                                                    LODWORD(v419) = *(v422[28] + 143816);
                                                                    update_netdata_maxlength_metric(v419);
                                                                    if (v419 < 0xF1)
                                                                    {
                                                                      goto LABEL_720;
                                                                    }

                                                                    update_netdata_full_metric(1);
                                                                    v166 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                    if (v166)
                                                                    {
                                                                      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
                                                                      {
                                                                        HostInterpreter::ProcessPropertyGet();
                                                                      }
                                                                    }

                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                    {
                                                                      [PowerEventHandler_Rcp init:];
                                                                    }

                                                                    v174 = RcpHostContext::sRcpHostContext;
                                                                    std::string::basic_string[abi:ne200100]<0>(v427, "Stability");
                                                                    std::string::basic_string[abi:ne200100]<0>(v425, "Network Data Health");
                                                                    std::string::basic_string[abi:ne200100]<0>(v423, "Network Data full");
                                                                    RcpHostContext::captureABC(v174, v427, v425, v423, 0, 1);
                                                                    if (v424 < 0)
                                                                    {
                                                                      operator delete(v423[0]);
                                                                      if ((v426 & 0x80000000) == 0)
                                                                      {
LABEL_719:
                                                                        if ((v428 & 0x80000000) == 0)
                                                                        {
LABEL_720:
                                                                          v175 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                          if (v175)
                                                                          {
                                                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
                                                                            {
                                                                              *v452 = 67109120;
                                                                              *&v452[4] = v419;
                                                                              _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_INFO, "NETDATA_LEN = %d", v452, 8u);
                                                                            }
                                                                          }

                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                          {
                                                                            [PowerEventHandler_Rcp init:];
                                                                          }

                                                                          v177 = 0;
                                                                          *&v176 = 136315394;
                                                                          v418 = v176;
                                                                          *&v176 = 67109120;
                                                                          __s1 = v176;
                                                                          *&v176 = 136315138;
                                                                          *v420 = v176;
                                                                          while (1)
                                                                          {
                                                                            if (otNetDataGetNextService(v422[28], &v465, v436))
                                                                            {
                                                                              v185 = *v458;
                                                                              for (i = *&v458[8]; v185 != i; v185 += 80)
                                                                              {
                                                                                if (!*(v185 + 8))
                                                                                {
                                                                                  v187 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                  if (v187)
                                                                                  {
                                                                                    is_the_mask_enabled = syslog_is_the_mask_enabled(6);
                                                                                    if (is_the_mask_enabled)
                                                                                    {
                                                                                      is_the_mask_enabled = os_log_type_enabled(v187, OS_LOG_TYPE_INFO);
                                                                                      if (is_the_mask_enabled)
                                                                                      {
                                                                                        *v452 = 0;
                                                                                        _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_INFO, "Find and erase NCP entry from mServiceEntries", v452, 2u);
                                                                                      }
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    is_the_mask_enabled = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                                                                                    if (is_the_mask_enabled)
                                                                                    {
                                                                                      *v452 = v418;
                                                                                      *&v452[4] = "com.apple.wpantund.ncp";
                                                                                      *&v452[12] = 2080;
                                                                                      *&v452[14] = "default";
                                                                                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v452, 0x16u);
                                                                                    }
                                                                                  }

                                                                                  HostInterpreter::find_and_erase_service_entry(is_the_mask_enabled, 0, *(v185 + 12), v185 + 16, v185 + 48, *(v185 + 72), v144);
                                                                                  i = *&v458[8];
                                                                                }
                                                                              }

                                                                              HostInterpreter::signal_service_list_change(v422);
                                                                              if (v419 >= 0xF1 && !v177)
                                                                              {
                                                                                HostInterpreter::force_leader_reelection(v422);
                                                                              }

                                                                              std::list<std::map<std::string,boost::any>>::~list(v456);
                                                                              std::vector<ServiceEntry>::~vector[abi:ne200100](v458);
                                                                              return 0;
                                                                            }

                                                                            nl::Data::Data(__s, &v436[0].__r_.__value_.__s.__data_[9], v436[0].__r_.__value_.__s.__data_[8]);
                                                                            if (v436[0].__r_.__value_.__s.__data_[8] == 1 && v436[0].__r_.__value_.__s.__data_[9] == 93)
                                                                            {
                                                                              v178 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                              ++v177;
                                                                              if (v178)
                                                                              {
                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
                                                                                {
                                                                                  *v452 = __s1;
                                                                                  *&v452[4] = v177;
                                                                                  _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_INFO, "unicast_service_count = %d", v452, 8u);
                                                                                }
                                                                              }

                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                              {
                                                                                *v452 = v418;
                                                                                *&v452[4] = "com.apple.wpantund.ncp";
                                                                                *&v452[12] = 2080;
                                                                                *&v452[14] = "default";
                                                                                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v452, 0x16u);
                                                                              }
                                                                            }

                                                                            nl::Data::Data(v457, v450, v449);
                                                                            v179 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                            if (v179)
                                                                            {
                                                                              v180 = syslog_is_the_mask_enabled(6);
                                                                              if (v180)
                                                                              {
                                                                                v180 = os_log_type_enabled(v179, OS_LOG_TYPE_INFO);
                                                                                if (v180)
                                                                                {
                                                                                  *v452 = 0;
                                                                                  _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_INFO, "Find and erase NCP entry from local entries", v452, 2u);
                                                                                }
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v180 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                                                                              if (v180)
                                                                              {
                                                                                *v452 = v418;
                                                                                *&v452[4] = "com.apple.wpantund.ncp";
                                                                                *&v452[12] = 2080;
                                                                                *&v452[14] = "default";
                                                                                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v452, 0x16u);
                                                                              }
                                                                            }

                                                                            HostInterpreter::find_and_erase_service_entry(v180, 0, SHIDWORD(v436[0].__r_.__value_.__r.__words[0]), __s, v457, v451, v458);
                                                                            v181 = ServiceEntry::ServiceEntry(v452, 0, HIDWORD(v436[0].__r_.__value_.__r.__words[0]), __s, v448 & 1, v457);
                                                                            v182 = v451;
                                                                            if ((HostInterpreter::find_service_entry(v181, 0, SHIDWORD(v436[0].__r_.__value_.__r.__words[0]), __s, v457, v451, v144) & 1) == 0)
                                                                            {
                                                                              WORD4(v453) = v182;
                                                                              BYTE10(v453) = v436[0].__r_.__value_.__s.__data_[0];
                                                                              std::vector<ServiceEntry>::emplace_back<ServiceEntry const&>(v144, v452);
                                                                              v183 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                              if (v183)
                                                                              {
                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
                                                                                {
                                                                                  ServiceEntry::get_description(v452);
                                                                                }
                                                                              }

                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                              {
                                                                                LODWORD(v455.__r_.__value_.__l.__data_) = v418;
                                                                                *(v455.__r_.__value_.__r.__words + 4) = "com.apple.wpantund.ncp";
                                                                                WORD2(v455.__r_.__value_.__r.__words[1]) = 2080;
                                                                                *(&v455.__r_.__value_.__r.__words[1] + 6) = "default";
                                                                                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", &v455, 0x16u);
                                                                                ServiceEntry::~ServiceEntry(v452);
                                                                                v184 = v457[0].__r_.__value_.__r.__words[0];
                                                                                if (!v457[0].__r_.__value_.__r.__words[0])
                                                                                {
                                                                                  goto LABEL_750;
                                                                                }

LABEL_749:
                                                                                v457[0].__r_.__value_.__l.__size_ = v184;
                                                                                operator delete(v184);
                                                                                goto LABEL_750;
                                                                              }
                                                                            }

                                                                            ServiceEntry::~ServiceEntry(v452);
                                                                            v184 = v457[0].__r_.__value_.__r.__words[0];
                                                                            if (v457[0].__r_.__value_.__r.__words[0])
                                                                            {
                                                                              goto LABEL_749;
                                                                            }

LABEL_750:
                                                                            if (__s[0].__r_.__value_.__r.__words[0])
                                                                            {
                                                                              __s[0].__r_.__value_.__l.__size_ = __s[0].__r_.__value_.__r.__words[0];
                                                                              operator delete(__s[0].__r_.__value_.__l.__data_);
                                                                            }
                                                                          }
                                                                        }

LABEL_771:
                                                                        operator delete(v427[0]);
                                                                        goto LABEL_720;
                                                                      }
                                                                    }

                                                                    else if ((v426 & 0x80000000) == 0)
                                                                    {
                                                                      goto LABEL_719;
                                                                    }

                                                                    operator delete(v425[0]);
                                                                    if ((v428 & 0x80000000) == 0)
                                                                    {
                                                                      goto LABEL_720;
                                                                    }

                                                                    goto LABEL_771;
                                                                  }

LABEL_619:
                                                                  LODWORD(v457[0].__r_.__value_.__l.__data_) = 0;
                                                                  Rloc16 = otThreadGetRloc16(v422[28]);
                                                                  memset(v452, 0, sizeof(v452));
                                                                  v453 = 0u;
                                                                  memset(v454, 0, 20);
                                                                  v140 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                  if (v140)
                                                                  {
                                                                    v141 = v140;
                                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
                                                                    {
                                                                      *v458 = 136315138;
                                                                      *&v458[4] = "nm:networkdata";
                                                                      _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_INFO, "HI:PG1:%s", v458, 0xCu);
                                                                    }
                                                                  }

                                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                  {
                                                                    [PowerEventHandler_Rcp init:];
                                                                  }

                                                                  otThreadGetPartitionId(v422[28]);
                                                                  if (otNetDataGetNextService(v422[28], v457, v436))
                                                                  {
                                                                    v150 = 0;
                                                                    v151 = 0;
                                                                    v152 = 0;
                                                                  }

                                                                  else
                                                                  {
                                                                    v153 = 0;
                                                                    v150 = 0;
                                                                    v151 = 0;
                                                                    v152 = 0;
                                                                    do
                                                                    {
                                                                      nl::Data::Data(v458, &v436[0].__r_.__value_.__s.__data_[9], v436[0].__r_.__value_.__s.__data_[8]);
                                                                      if (v436[0].__r_.__value_.__s.__data_[8] == 1 && v436[0].__r_.__value_.__s.__data_[9] == 93)
                                                                      {
                                                                        ++v151;
                                                                      }

                                                                      else if (v436[0].__r_.__value_.__s.__data_[8] == 2 && v436[0].__r_.__value_.__s.__data_[9] == 92)
                                                                      {
                                                                        ++v150;
                                                                        if (v153)
                                                                        {
                                                                          v154 = v153;
                                                                          v155 = v452;
                                                                          v156 = v153;
                                                                          while (1)
                                                                          {
                                                                            v157 = *v155++;
                                                                            if (v157 == v436[0].__r_.__value_.__s.__data_[10])
                                                                            {
                                                                              break;
                                                                            }

                                                                            if (!--v156)
                                                                            {
                                                                              goto LABEL_650;
                                                                            }
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v154 = 0;
LABEL_650:
                                                                          v452[v154] = v436[0].__r_.__value_.__s.__data_[10];
                                                                          ++v153;
                                                                          ++v152;
                                                                        }
                                                                      }

                                                                      if (*v458)
                                                                      {
                                                                        *&v458[8] = *v458;
                                                                        operator delete(*v458);
                                                                      }
                                                                    }

                                                                    while (!otNetDataGetNextService(v422[28], v457, v436));
                                                                    if (v152 >= 2u)
                                                                    {
                                                                      HostInterpreter::setRcpSrpAnycastServiceCovergenceTimer(v422);
                                                                      goto LABEL_657;
                                                                    }
                                                                  }

                                                                  HostInterpreter::clearRcpSrpAnycastServiceCovergenceTimer(v422);
LABEL_657:
                                                                  if (v151 < 2u)
                                                                  {
                                                                    HostInterpreter::clearRcpSrpUnicastServiceCovergenceTimer(v422);
                                                                  }

                                                                  else if ((*(RcpHostContext::sRcpHostContext + 5966) & 1) == 0)
                                                                  {
                                                                    HostInterpreter::setRcpSrpUnicastServiceCovergenceTimer(v422);
                                                                  }

                                                                  LODWORD(v457[0].__r_.__value_.__l.__data_) = 0;
                                                                  v158 = 0;
                                                                  v159 = 0;
                                                                  if (otNetDataGetNextOnMeshPrefix(v422[28], v457, v456))
                                                                  {
                                                                    goto LABEL_666;
                                                                  }

                                                                  do
                                                                  {
                                                                    ++v159;
                                                                    LOBYTE(v158) = (Rloc16 == WORD2(v456[0].__r_.__value_.__r.__words[2])) | v158;
                                                                  }

                                                                  while (!otNetDataGetNextOnMeshPrefix(v422[28], v457, v456));
                                                                  v158 &= 1u;
                                                                  if (v159 < 2u)
                                                                  {
LABEL_666:
                                                                    HostInterpreter::clearSrpPrefixCovergenceTimer(v422);
                                                                  }

                                                                  else if ((*(RcpHostContext::sRcpHostContext + 5965) & 1) == 0)
                                                                  {
                                                                    HostInterpreter::setSrpPrefixCovergenceTimer(v422);
                                                                  }

                                                                  if (*(v422 + 81) != v151 || *(v422 + 82) != v150 || *(v422 + 83) != v159)
                                                                  {
                                                                    v160 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                    if (v160)
                                                                    {
                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v160, OS_LOG_TYPE_INFO))
                                                                      {
                                                                        *v458 = 67110144;
                                                                        *&v458[8] = 1024;
                                                                        *&v458[10] = v150;
                                                                        *&v458[14] = 1024;
                                                                        *&v458[4] = v151;
                                                                        *&v458[16] = v159;
                                                                        *&v458[20] = 1024;
                                                                        *&v458[22] = v152;
                                                                        v459 = 1024;
                                                                        v460 = v158;
                                                                        _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_INFO, "NetData: numUnicastServices = %d, numAnycastServices = %d, numOnmeshPrefixes = %d, numAnycastServicesUniqueSeq = %d, myOnmeshPrefixAdvertised = %d", v458, 0x20u);
                                                                      }
                                                                    }

                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                    {
                                                                      [PowerEventHandler_Rcp init:];
                                                                    }

                                                                    v161 = v422;
                                                                    *(v422 + 81) = v151;
                                                                    *(v161 + 82) = v150;
                                                                    *(v161 + 83) = v159;
                                                                  }

                                                                  if (!(v152 | v151) || v159)
                                                                  {
                                                                    HostInterpreter::clearSrpAdvertisedWithoutPrefixTimer(v422);
                                                                  }

                                                                  else
                                                                  {
                                                                    HostInterpreter::setSrpAdvertisedWithoutPrefixTimer(v422);
                                                                  }

                                                                  std::string::basic_string[abi:ne200100]<0>(v458, "is_primary_resident");
                                                                  __s[0].__r_.__value_.__r.__words[0] = v458;
                                                                  v162 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, v458, &std::piecewise_construct, __s);
                                                                  std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v162 + 7, "1");
                                                                  if ((v458[23] & 0x80000000) != 0)
                                                                  {
                                                                    operator delete(*v458);
                                                                  }

                                                                  operator new();
                                                                }

LABEL_616:
                                                                v436[0].__r_.__value_.__r.__words[0] = v436;
                                                                v436[0].__r_.__value_.__l.__size_ = v436;
                                                                v436[0].__r_.__value_.__r.__words[2] = 0;
                                                                v137 = v422[10];
                                                                if (v137 != (v422 + 11))
                                                                {
                                                                  *&v452[8] = 0;
                                                                  *&v452[16] = 0;
                                                                  *v452 = &v452[8];
                                                                  IPv6Prefix::to_string(v458, (v137 + 28));
                                                                  std::string::basic_string[abi:ne200100]<0>(v456, "address");
                                                                  __s[0].__r_.__value_.__r.__words[0] = v456;
                                                                  v138 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v452, &v456[0].__r_.__value_.__l.__data_, &std::piecewise_construct, __s);
                                                                  boost::any::operator=<std::string>(v138 + 7, v458);
                                                                }

                                                                boost::any::any<std::list<std::map<std::string,boost::any>> &>(v452, v436);
                                                              }

LABEL_613:
                                                              v436[0].__r_.__value_.__r.__words[0] = v436;
                                                              v436[0].__r_.__value_.__l.__size_ = v436;
                                                              v436[0].__r_.__value_.__r.__words[2] = 0;
                                                              v136 = v422[7];
                                                              if (v136 != (v422 + 8))
                                                              {
                                                                OnMeshPrefixEntry::get_description(v452, (v136 + 48), (v136 + 28), 1);
                                                                operator new();
                                                              }

                                                              boost::any::any<std::list<std::string> &>(v452, v436);
                                                            }

LABEL_612:
                                                            HostInterpreter::get_num_unique_off_mesh_routes(v422);
                                                            operator new();
                                                          }

LABEL_611:
                                                          HostInterpreter::get_num_routers(v422);
                                                          operator new();
                                                        }

LABEL_610:
                                                        HostInterpreter::get_num_unique_on_mesh_prefixes(v422);
                                                        operator new();
                                                      }

LABEL_609:
                                                      *&v436[0].__r_.__value_.__r.__words[1] = 0uLL;
                                                      v436[0].__r_.__value_.__r.__words[0] = &v436[0].__r_.__value_.__l.__size_;
                                                      LODWORD(v456[0].__r_.__value_.__l.__data_) = getIntValue("numResidentsInHome");
                                                      std::string::basic_string[abi:ne200100]<0>(v452, "numResidentsInHome");
                                                      *v458 = v452;
                                                      v135 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v436, v452, &std::piecewise_construct, v458);
                                                      boost::any::operator=<unsigned int &>(v135 + 7, v456);
                                                    }

LABEL_599:
                                                    *&v452[16] = 0;
                                                    *&v452[8] = 0;
                                                    *v452 = &v452[8];
                                                    memset(v458, 0, 24);
                                                    memset(v456, 0, 24);
                                                    memset(__s, 0, 24);
                                                    StringValue = getStringValue("is_primary_resident");
                                                    if (StringValue)
                                                    {
                                                      v129 = StringValue;
                                                    }

                                                    else
                                                    {
                                                      v129 = "0";
                                                    }

                                                    std::string::assign(v458, v129);
                                                    v130 = getStringValue("is_primary_resident_thread_capable");
                                                    if (v130)
                                                    {
                                                      v131 = v130;
                                                    }

                                                    else
                                                    {
                                                      v131 = "0";
                                                    }

                                                    std::string::assign(v456, v131);
                                                    v132 = getStringValue("primary_resident_info");
                                                    if (v132)
                                                    {
                                                      v133 = v132;
                                                    }

                                                    else
                                                    {
                                                      v133 = "0";
                                                    }

                                                    std::string::assign(__s, v133);
                                                    std::string::basic_string[abi:ne200100]<0>(v436, "is_primary_resident");
                                                    v457[0].__r_.__value_.__r.__words[0] = v436;
                                                    v134 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v452, &v436[0].__r_.__value_.__l.__data_, &std::piecewise_construct, v457);
                                                    boost::any::operator=<std::string &>(v134 + 7, v458);
                                                  }

LABEL_589:
                                                  *&v436[0].__r_.__value_.__r.__words[1] = 0uLL;
                                                  v436[0].__r_.__value_.__r.__words[0] = &v436[0].__r_.__value_.__l.__size_;
                                                  memset(v452, 0, 24);
                                                  memset(v458, 0, 24);
                                                  memset(v456, 0, 24);
                                                  v121 = getStringValue("num_daemon_restart_due_to_reboots");
                                                  if (v121)
                                                  {
                                                    v122 = v121;
                                                  }

                                                  else
                                                  {
                                                    v122 = "0";
                                                  }

                                                  std::string::assign(v452, v122);
                                                  v123 = getStringValue("num_daemon_restart_due_to_crashes_or_jetsams");
                                                  if (v123)
                                                  {
                                                    v124 = v123;
                                                  }

                                                  else
                                                  {
                                                    v124 = "0";
                                                  }

                                                  std::string::assign(v458, v124);
                                                  v125 = getStringValue("num_firmware_resets");
                                                  if (v125)
                                                  {
                                                    v126 = v125;
                                                  }

                                                  else
                                                  {
                                                    v126 = "0";
                                                  }

                                                  std::string::assign(v456, v126);
                                                  std::string::basic_string[abi:ne200100]<0>(__s, "num_daemon_restart_due_to_reboots");
                                                  v457[0].__r_.__value_.__r.__words[0] = __s;
                                                  v127 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v436, &__s[0].__r_.__value_.__l.__data_, &std::piecewise_construct, v457);
                                                  boost::any::operator=<std::string &>(v127 + 7, v452);
                                                }

LABEL_567:
                                                *&v436[0].__r_.__value_.__r.__words[1] = 0uLL;
                                                v436[0].__r_.__value_.__r.__words[0] = &v436[0].__r_.__value_.__l.__size_;
                                                memset(v452, 0, 24);
                                                memset(v458, 0, 24);
                                                memset(v456, 0, 24);
                                                v111 = getStringValue("ca_trigger_based_counters_num_daemon_restart_due_to_reboots");
                                                if (v111)
                                                {
                                                  v112 = v111;
                                                }

                                                else
                                                {
                                                  v112 = "0";
                                                }

                                                std::string::assign(v452, v112);
                                                v113 = getStringValue("ca_trigger_based_counters_num_daemon_restart_due_to_crashes_or_jetsams");
                                                if (v113)
                                                {
                                                  v114 = v113;
                                                }

                                                else
                                                {
                                                  v114 = "0";
                                                }

                                                std::string::assign(v458, v114);
                                                v115 = getStringValue("ca_trigger_based_counters_num_firmware_resets");
                                                if (v115)
                                                {
                                                  v116 = v115;
                                                }

                                                else
                                                {
                                                  v116 = "0";
                                                }

                                                std::string::assign(v456, v116);
                                                std::string::basic_string[abi:ne200100]<0>(__s, "ca_trigger_based_counters_num_daemon_restart_due_to_reboots");
                                                v457[0].__r_.__value_.__r.__words[0] = __s;
                                                v117 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v436, &__s[0].__r_.__value_.__l.__data_, &std::piecewise_construct, v457);
                                                boost::any::operator=<std::string &>(v117 + 7, v452);
                                              }

LABEL_530:
                                              operator new();
                                            }

                                            goto LABEL_508;
                                          }

LABEL_491:
                                          ThreadNetifName = otSysGetThreadNetifName();
                                          std::string::basic_string[abi:ne200100]<0>(v452, ThreadNetifName);
                                          v90 = log_get_logging_obg("com.apple.threadradiod", "default");
                                          if (v90)
                                          {
                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                                            {
                                              v91 = *(__s1 + 56);
                                              v92 = v452;
                                              if (v452[23] < 0)
                                              {
                                                v92 = *v452;
                                              }

                                              LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109634;
                                              HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = v91;
                                              LOWORD(v436[0].__r_.__value_.__r.__words[1]) = 2080;
                                              *(&v436[0].__r_.__value_.__r.__words[1] + 2) = "Config:TUN:InterfaceName";
                                              WORD1(v436[0].__r_.__value_.__r.__words[2]) = 2080;
                                              *(&v436[0].__r_.__value_.__r.__words[2] + 4) = v92;
                                              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "HI:PG%d:%s=[%s]", v436, 0x1Cu);
                                            }
                                          }

                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                          {
                                            [PowerEventHandler_Rcp init:];
                                          }

                                          if (*(__s1 + 56))
                                          {
                                            std::string::basic_string[abi:ne200100]<0>(v436, "Config:TUN:InterfaceName");
                                            boost::any::any<std::string &>(v458, v452);
                                          }

                                          boost::any::any<std::string &>(v436, v452);
                                        }

LABEL_480:
                                        otThreadGetWasChild(v422[28]);
                                        operator new();
                                      }

LABEL_465:
                                      memset(v436, 0, 40);
                                      std::string::basic_string[abi:ne200100]<0>(v458, "");
                                      std::string::basic_string[abi:ne200100]<0>(v456, "");
                                      v85 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v85)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                                        {
                                          v86 = *(v6 + 56);
                                          *v452 = 136315650;
                                          *&v452[4] = "ProcessPropertyGet";
                                          *&v452[12] = 1024;
                                          *&v452[14] = v86;
                                          *&v452[18] = 2080;
                                          *&v452[20] = "NCP:WedMleId";
                                          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(%d)]: %s] otThreadGetCslPeripheralMleID", v452, 0x1Cu);
                                        }
                                      }

                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        [PowerEventHandler_Rcp init:];
                                      }

                                      LinkMode = otThreadGetLinkMode(v422[28]);
                                      if (~LinkMode & 6) != 0 || (LinkMode)
                                      {
                                        v94 = log_get_logging_obg("com.apple.threadradiod", "default");
                                        if (v94)
                                        {
                                          v6 = __s1;
                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
                                          {
                                            v95 = otThreadGetLinkMode(v422[28]);
                                            *v452 = 136315394;
                                            *&v452[4] = "ProcessPropertyGet";
                                            *&v452[12] = 1024;
                                            *&v452[14] = ((~v95 & 6) == 0) & (v95 ^ 1);
                                            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "%s: isSleepyRouter=[%d]", v452, 0x12u);
                                            v6 = __s1;
                                          }
                                        }

                                        else
                                        {
                                          v6 = __s1;
                                          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                          {
                                            [PowerEventHandler_Rcp init:];
                                          }
                                        }
                                      }

                                      else
                                      {
                                        otThreadGetCslPeripheralMleID(v422[28], v436, 40);
                                      }

                                      if (v436[0].__r_.__value_.__s.__data_[0])
                                      {
                                        std::string::assign(v458, v436);
                                        v99 = log_get_logging_obg("com.apple.threadradiod", "default");
                                        if (v99)
                                        {
                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
                                          {
                                            v100 = *(v6 + 56);
                                            v101 = v458;
                                            if (v458[23] < 0)
                                            {
                                              v101 = *v458;
                                            }

                                            *v452 = 136315906;
                                            *&v452[4] = "ProcessPropertyGet";
                                            *&v452[12] = 1024;
                                            *&v452[14] = v100;
                                            *&v452[18] = 2080;
                                            *&v452[20] = "NCP:WedMleId";
                                            *&v452[28] = 2080;
                                            *&v452[30] = v101;
                                            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(%d)]: %s wedMleIdStr = %s", v452, 0x26u);
                                          }

                                          goto LABEL_538;
                                        }

                                        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                        {
                                          goto LABEL_538;
                                        }
                                      }

                                      else
                                      {
                                        v102 = log_get_logging_obg("com.apple.threadradiod", "default");
                                        if (v102)
                                        {
                                          v6 = __s1;
                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
                                          {
                                            v103 = *(__s1 + 56);
                                            *v452 = 136315650;
                                            *&v452[4] = "ProcessPropertyGet";
                                            *&v452[12] = 1024;
                                            *&v452[14] = v103;
                                            *&v452[18] = 2080;
                                            *&v452[20] = "NCP:WedMleId";
                                            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(%d)]: %s wedMleIdStr empty", v452, 0x1Cu);
                                          }

LABEL_538:
                                          if ((*(v6 + 56) & 1) == 0)
                                          {
                                            v105 = log_get_logging_obg("com.apple.threadradiod", "default");
                                            if (v105)
                                            {
                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
                                              {
                                                *v452 = 136315394;
                                                *&v452[4] = "ProcessPropertyGet";
                                                *&v452[12] = 2080;
                                                *&v452[14] = "NCP:WedMleId";
                                                _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(0)]: %s] Events Off", v452, 0x16u);
                                              }
                                            }

                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                            {
                                              [PowerEventHandler_Rcp init:];
                                            }

                                            boost::any::any<std::string &>(v452, v458);
                                          }

                                          v104 = log_get_logging_obg("com.apple.threadradiod", "default");
                                          if (v104)
                                          {
                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
                                            {
                                              *v452 = 136315394;
                                              *&v452[4] = "ProcessPropertyGet";
                                              *&v452[12] = 2080;
                                              *&v452[14] = "NCP:WedMleId";
                                              _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(1)]: %s] Events On", v452, 0x16u);
                                            }
                                          }

                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                          {
                                            [PowerEventHandler_Rcp init:];
                                          }

                                          v106 = v458[23];
                                          if (v458[23] < 0)
                                          {
                                            v106 = *&v458[8];
                                          }

                                          if (v106)
                                          {
                                            CslPeripheralAddr = otThreadGetCslPeripheralAddr(v422[28]);
                                            if (!CslPeripheralAddr)
                                            {
                                              goto LABEL_588;
                                            }

                                            std::string::assign(v456, CslPeripheralAddr);
                                            v108 = log_get_logging_obg("com.apple.threadradiod", "default");
                                            if (v108)
                                            {
                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
                                              {
                                                v109 = v456;
                                                if ((v456[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                                {
                                                  v109 = v456[0].__r_.__value_.__r.__words[0];
                                                }

                                                *v452 = 136315394;
                                                *&v452[4] = "ProcessPropertyGet";
                                                *&v452[12] = 2080;
                                                *&v452[14] = v109;
                                                v110 = "%s: Found Wed Address: %s";
                                                goto LABEL_563;
                                              }

                                              goto LABEL_588;
                                            }

                                            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                            {
                                              goto LABEL_588;
                                            }
                                          }

                                          else
                                          {
                                            v108 = log_get_logging_obg("com.apple.threadradiod", "default");
                                            if (v108)
                                            {
                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
                                              {
                                                *v452 = 136315394;
                                                *&v452[4] = "ProcessPropertyGet";
                                                *&v452[12] = 2080;
                                                *&v452[14] = "WakeOnDeviceConnectionStatus";
                                                v110 = "%s: no WED Found, Empty Signal: %s";
LABEL_563:
                                                _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_INFO, v110, v452, 0x16u);
                                              }

LABEL_588:
                                              *&v452[16] = 0;
                                              *&v452[8] = 0;
                                              *v452 = &v452[8];
                                              std::string::basic_string[abi:ne200100]<0>(__s, "mleid");
                                              v457[0].__r_.__value_.__r.__words[0] = __s;
                                              v120 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v452, &__s[0].__r_.__value_.__l.__data_, &std::piecewise_construct, v457);
                                              boost::any::operator=<std::string &>(v120 + 7, v458);
                                            }

                                            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                            {
                                              goto LABEL_588;
                                            }
                                          }

                                          [PowerEventHandler_Rcp init:];
                                          goto LABEL_588;
                                        }

                                        v6 = __s1;
                                        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                        {
                                          goto LABEL_538;
                                        }
                                      }

                                      [PowerEventHandler_Rcp init:];
                                      goto LABEL_538;
                                    }

LABEL_434:
                                    v73 = otThreadGetCslPeripheralAddr(v422[28]);
                                    std::string::basic_string[abi:ne200100]<0>(v436, "");
                                    if (v73)
                                    {
                                      std::string::assign(v436, v73);
                                      v74 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v74)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
                                        {
                                          v75 = v436;
                                          if ((v436[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                          {
                                            v75 = v436[0].__r_.__value_.__r.__words[0];
                                          }

                                          *v452 = 136315394;
                                          *&v452[4] = "NCP:WedExtendedAddress";
                                          *&v452[12] = 2080;
                                          *&v452[14] = v75;
                                          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "HI:PG0:%s wedAddrStr = %s", v452, 0x16u);
                                        }

                                        goto LABEL_514;
                                      }

                                      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        goto LABEL_514;
                                      }
                                    }

                                    else
                                    {
                                      v88 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v88)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
                                        {
                                          *v452 = 136315138;
                                          *&v452[4] = "NCP:WedExtendedAddress";
                                          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "HI:PG0:%s wedAddrStr empty", v452, 0xCu);
                                        }

LABEL_514:
                                        boost::any::any<std::string &>(v452, v436);
                                      }

                                      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        goto LABEL_514;
                                      }
                                    }

                                    [PowerEventHandler_Rcp init:];
                                    goto LABEL_514;
                                  }

LABEL_425:
                                  PairingDeviceExtAddr = otLinkGetPairingDeviceExtAddr(v422[28]);
                                  memset(v452, 0, 24);
                                  snprintf(v436, 0xC8uLL, "%02X%02X%02X%02X%02X%02X%02X%02X", *PairingDeviceExtAddr, PairingDeviceExtAddr[1], PairingDeviceExtAddr[2], PairingDeviceExtAddr[3], PairingDeviceExtAddr[4], PairingDeviceExtAddr[5], PairingDeviceExtAddr[6], PairingDeviceExtAddr[7]);
                                  std::string::assign(v452, v436);
                                  v71 = log_get_logging_obg("com.apple.threadradiod", "default");
                                  if (v71)
                                  {
                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                                    {
                                      v72 = v452;
                                      if (v452[23] < 0)
                                      {
                                        v72 = *v452;
                                      }

                                      *v458 = 136315394;
                                      *&v458[4] = "Thread:EmacId";
                                      *&v458[12] = 2080;
                                      *&v458[14] = v72;
                                      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "HI:PG0:%s extAddr = %s", v458, 0x16u);
                                    }
                                  }

                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                  {
                                    [PowerEventHandler_Rcp init:];
                                  }

                                  boost::any::any<std::string &>(v458, v452);
                                }

LABEL_418:
                                v67 = log_get_logging_obg("com.apple.threadradiod", "default");
                                if (v67)
                                {
                                  v68 = v67;
                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                                  {
                                    v69 = *(v6 + 56);
                                    LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315650;
                                    *(v436[0].__r_.__value_.__r.__words + 4) = "ProcessPropertyGet";
                                    WORD2(v436[0].__r_.__value_.__r.__words[1]) = 1024;
                                    *(&v436[0].__r_.__value_.__r.__words[1] + 6) = v69;
                                    WORD1(v436[0].__r_.__value_.__r.__words[2]) = 2080;
                                    *(&v436[0].__r_.__value_.__r.__words[2] + 4) = "Thread:NeighborMeshLocalAddress";
                                    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(%d)]: %s] ProcessDiagGetSingleHopPeerMeshLocalIPAddr", v436, 0x1Cu);
                                  }
                                }

                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                {
                                  [PowerEventHandler_Rcp init:];
                                }

                                v76 = otThreadGetLinkMode(v422[28]);
                                if ((~v76 & 6) != 0 || (v76) && !v422[32])
                                {
                                  SingleHopPeerMeshLocalIPAddr = HostInterpreter::ProcessDiagGetSingleHopPeerMeshLocalIPAddr(v422);
                                }

                                else
                                {
                                  v77 = log_get_logging_obg("com.apple.threadradiod", "default");
                                  if (v77)
                                  {
                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                                    {
                                      v78 = otThreadGetLinkMode(v422[28]);
                                      v79 = v422[32];
                                      *(v436[0].__r_.__value_.__r.__words + 4) = "ProcessPropertyGet";
                                      LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315650;
                                      if (v79)
                                      {
                                        v80 = "True";
                                      }

                                      else
                                      {
                                        v80 = "False";
                                      }

                                      WORD2(v436[0].__r_.__value_.__r.__words[1]) = 1024;
                                      *(&v436[0].__r_.__value_.__r.__words[1] + 6) = ((~v78 & 6) == 0) & (v78 ^ 1);
                                      WORD1(v436[0].__r_.__value_.__r.__words[2]) = 2080;
                                      *(&v436[0].__r_.__value_.__r.__words[2] + 4) = v80;
                                      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "%s: isSleepyRouter=%d, rcpSrpMeshLocalAddressTimer started = %s", v436, 0x1Cu);
                                    }
                                  }

                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                  {
                                    [PowerEventHandler_Rcp init:];
                                  }

                                  SingleHopPeerMeshLocalIPAddr = 23;
                                }

                                v82 = *(v6 + 56) == 0;
                                v83 = log_get_logging_obg("com.apple.threadradiod", "default");
                                v84 = v83;
                                if (v82)
                                {
                                  if (v83)
                                  {
                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
                                    {
                                      LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315394;
                                      *(v436[0].__r_.__value_.__r.__words + 4) = "ProcessPropertyGet";
                                      WORD2(v436[0].__r_.__value_.__r.__words[1]) = 2080;
                                      *(&v436[0].__r_.__value_.__r.__words[1] + 6) = "Thread:NeighborMeshLocalAddress";
                                      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(0)]: %s] Events Off", v436, 0x16u);
                                    }
                                  }

                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                  {
                                    [PowerEventHandler_Rcp init:];
                                  }

                                  operator new();
                                }

                                if (v83)
                                {
                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
                                  {
                                    LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315394;
                                    *(v436[0].__r_.__value_.__r.__words + 4) = "ProcessPropertyGet";
                                    WORD2(v436[0].__r_.__value_.__r.__words[1]) = 2080;
                                    *(&v436[0].__r_.__value_.__r.__words[1] + 6) = "Thread:NeighborMeshLocalAddress";
                                    _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "%s: HostInterpreter::ProcessPropertyGet[E(1)]: %s] Events On", v436, 0x16u);
                                  }
                                }

                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                {
                                  [PowerEventHandler_Rcp init:];
                                }

                                if (SingleHopPeerMeshLocalIPAddr)
                                {
                                  v87 = log_get_logging_obg("com.apple.threadradiod", "default");
                                  if (v87)
                                  {
                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                                    {
                                      LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315394;
                                      *(v436[0].__r_.__value_.__r.__words + 4) = "ProcessPropertyGet";
                                      WORD2(v436[0].__r_.__value_.__r.__words[1]) = 2080;
                                      *(&v436[0].__r_.__value_.__r.__words[1] + 6) = "ThreadNeighborMeshLocalAddress";
                                      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "%s: no Neighbor Found, Empty Signal: %s", v436, 0x16u);
                                    }
                                  }

                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                  {
                                    [PowerEventHandler_Rcp init:];
                                  }

                                  v436[0].__r_.__value_.__r.__words[0] = v436;
                                  v436[0].__r_.__value_.__l.__size_ = v436;
                                  v436[0].__r_.__value_.__r.__words[2] = 0;
                                  std::string::basic_string[abi:ne200100]<0>(v452, "ThreadNeighborMeshLocalAddress");
                                  boost::any::any<std::list<std::string> &>(v458, v436);
                                }

                                return 0;
                              }

LABEL_411:
                              ExtendedAddress = otLinkGetExtendedAddress(v422[28]);
                              nl::Data::Data(v436, ExtendedAddress, 8uLL);
                              v66 = log_get_logging_obg("com.apple.threadradiod", "default");
                              if (v66)
                              {
                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                                {
                                  *v452 = 136315138;
                                  *&v452[4] = "NCP:ExtendedAddress";
                                  _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v452, 0xCu);
                                }
                              }

                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                              {
                                [PowerEventHandler_Rcp init:];
                              }

                              boost::any::any<nl::Data &>(v452, v436);
                            }

LABEL_404:
                            otThreadGetPskc(v422[28], v452);
                            nl::Data::Data(v436, v452, 0x10uLL);
                            v64 = log_get_logging_obg("com.apple.threadradiod", "default");
                            if (v64)
                            {
                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                              {
                                *v458 = 136315138;
                                *&v458[4] = "Network:PSKc";
                                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v458, 0xCu);
                              }
                            }

                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                            {
                              [PowerEventHandler_Rcp init:];
                            }

                            boost::any::any<nl::Data &>(v458, v436);
                          }

LABEL_395:
                          std::string::basic_string[abi:ne200100]<0>(v436, "wasPrimaryResident");
                          *v452 = v436;
                          v61 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v436[0].__r_.__value_.__l.__data_, &std::piecewise_construct, v452);
                          v62 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v61 + 7, "1");
                          if (SHIBYTE(v436[0].__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v436[0].__r_.__value_.__l.__data_);
                          }

                          v63 = log_get_logging_obg("com.apple.threadradiod", "default");
                          if (v63)
                          {
                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                            {
                              LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315394;
                              *(v436[0].__r_.__value_.__r.__words + 4) = "wasPrimaryResident";
                              WORD2(v436[0].__r_.__value_.__r.__words[1]) = 1024;
                              *(&v436[0].__r_.__value_.__r.__words[1] + 6) = v62;
                              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "HI:PG0:%s[%d]]", v436, 0x12u);
                            }
                          }

                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                          {
                            [PowerEventHandler_Rcp init:];
                          }

                          operator new();
                        }

LABEL_381:
                        std::string::basic_string[abi:ne200100]<0>(v436, "is_primary_resident");
                        *v452 = v436;
                        v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v436[0].__r_.__value_.__l.__data_, &std::piecewise_construct, v452);
                        std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v59 + 7, "1");
                        if (SHIBYTE(v436[0].__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v436[0].__r_.__value_.__l.__data_);
                        }

                        v60 = log_get_logging_obg("com.apple.threadradiod", "default");
                        if (v60)
                        {
                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                          {
                            LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                            *(v436[0].__r_.__value_.__r.__words + 4) = "is_primary_resident";
                            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v436, 0xCu);
                          }
                        }

                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                        {
                          [PowerEventHandler_Rcp init:];
                        }

                        operator new();
                      }

LABEL_374:
                      otThreadGetRloc16(v422[28]);
                      v56 = log_get_logging_obg("com.apple.threadradiod", "default");
                      if (v56)
                      {
                        v57 = v56;
                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
                        {
                          LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                          *(v436[0].__r_.__value_.__r.__words + 4) = "Thread:RLOC16";
                          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v436, 0xCu);
                        }
                      }

                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        [PowerEventHandler_Rcp init:];
                      }

                      operator new();
                    }

LABEL_336:
                    PartitionId = otThreadGetPartitionId(v422[28]);
                    v48 = log_get_logging_obg("com.apple.threadradiod", "default");
                    if (v48)
                    {
                      v49 = v48;
                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                      {
                        v50 = *(v6 + 56);
                        LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109634;
                        HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = v50;
                        LOWORD(v436[0].__r_.__value_.__r.__words[1]) = 2080;
                        *(&v436[0].__r_.__value_.__r.__words[1] + 2) = "Network:PartitionId";
                        WORD1(v436[0].__r_.__value_.__r.__words[2]) = 1024;
                        HIDWORD(v436[0].__r_.__value_.__r.__words[2]) = PartitionId;
                        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "HI:PG%d:%s[%d]", v436, 0x18u);
                      }
                    }

                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      [PowerEventHandler_Rcp init:];
                    }

                    if (*(v6 + 56))
                    {
                      std::string::basic_string[abi:ne200100]<0>(v436, "Network:PartitionId");
                      operator new();
                    }

                    operator new();
                  }

LABEL_318:
                  v38 = log_get_logging_obg("com.apple.threadradiod", "default");
                  if (v38)
                  {
                    v39 = v38;
                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                    {
                      std::string::basic_string[abi:ne200100]<0>(v436, "Network:LastRole");
                      *v458 = v436;
                      v40 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v436[0].__r_.__value_.__l.__data_, &std::piecewise_construct, v458);
                      v41 = v40 + 7;
                      if (*(v40 + 79) < 0)
                      {
                        v41 = *v41;
                      }

                      *v452 = 136315394;
                      *&v452[4] = "Network:PartitionId";
                      *&v452[12] = 2080;
                      *&v452[14] = v41;
                      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "HI:PG0:%s[%s]", v452, 0x16u);
                      if (SHIBYTE(v436[0].__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v436[0].__r_.__value_.__l.__data_);
                      }
                    }
                  }

                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [PowerEventHandler_Rcp init:];
                  }

                  std::string::basic_string[abi:ne200100]<0>(v436, "Network:LastRole");
                  *v452 = v436;
                  v58 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v436[0].__r_.__value_.__l.__data_, &std::piecewise_construct, v452);
                  boost::any::any<std::string &>(v458, (v58 + 7));
                }

LABEL_313:
                DeviceRole = otThreadGetDeviceRole(v422[28]);
                memset(v452, 0, 24);
                if (DeviceRole >= 5)
                {
                  snprintf(v436, 0x10uLL, "(role-%u)", DeviceRole);
                  std::string::assign(v452, v436);
                }

                else
                {
                  std::string::assign(v452, off_1004C5228[DeviceRole]);
                }

                v42 = log_get_logging_obg("com.apple.threadradiod", "default");
                if (v42)
                {
                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                  {
                    v43 = *(v6 + 56);
                    v44 = v452;
                    if (v452[23] < 0)
                    {
                      v44 = *v452;
                    }

                    LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109634;
                    HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = v43;
                    LOWORD(v436[0].__r_.__value_.__r.__words[1]) = 2080;
                    *(&v436[0].__r_.__value_.__r.__words[1] + 2) = "Network:Role";
                    WORD1(v436[0].__r_.__value_.__r.__words[2]) = 2080;
                    *(&v436[0].__r_.__value_.__r.__words[2] + 4) = v44;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "HI:PG%d:%s=%s", v436, 0x1Cu);
                  }
                }

                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  [PowerEventHandler_Rcp init:];
                }

                if (*(v6 + 56))
                {
                  std::string::basic_string[abi:ne200100]<0>(v436, "Network:Role");
                  boost::any::any<std::string &>(v458, v452);
                }

                boost::any::any<std::string &>(v436, v452);
              }

LABEL_301:
              v29 = otThreadGetDeviceRole(v422[28]);
              v30 = otThreadGetLinkMode(v422[28]);
              v31 = v30;
              memset(v452, 0, 24);
              if (v29 <= 2)
              {
                if (v29 < 2)
                {
                  v32 = "unknown";
LABEL_359:
                  std::string::assign(v452, v32);
                  goto LABEL_360;
                }

                if (v29 == 2)
                {
                  std::string::assign(v452, "end-device");
                  if ((v31 & 2) == 0 && (v31 & 1) == 0)
                  {
                    IsCslEnabled = otLinkIsCslEnabled(v422[28]);
                    v36 = "sleepy-end-device";
                    v37 = "synchronized-sleepy-end-device";
                    v46 = !IsCslEnabled;
                    goto LABEL_356;
                  }

LABEL_360:
                  otInstanceGetUptimeAsString(v422[28], v458, 24);
                  v52 = log_get_logging_obg("com.apple.threadradiod", "default");
                  if (v52)
                  {
                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                    {
                      v53 = *(v6 + 56);
                      v54 = v452;
                      if (v452[23] < 0)
                      {
                        v54 = *v452;
                      }

                      LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315906;
                      *(v436[0].__r_.__value_.__r.__words + 4) = v458;
                      WORD2(v436[0].__r_.__value_.__r.__words[1]) = 1024;
                      *(&v436[0].__r_.__value_.__r.__words[1] + 6) = v53;
                      WORD1(v436[0].__r_.__value_.__r.__words[2]) = 2080;
                      *(&v436[0].__r_.__value_.__r.__words[2] + 4) = "Network:NodeType";
                      WORD2(v436[1].__r_.__value_.__r.__words[0]) = 2080;
                      *(v436[1].__r_.__value_.__r.__words + 6) = v54;
                      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "%s HI:PG%d:%s=%s", v436, 0x26u);
                    }
                  }

                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [PowerEventHandler_Rcp init:];
                  }

                  if (*(v6 + 56))
                  {
                    *(&v436[0].__r_.__value_.__s + 23) = 16;
                    strcpy(v436, "Network:NodeType");
                    operator new();
                  }

                  boost::any::any<std::string &>(v436, v452);
                }

LABEL_373:
                snprintf(v436, 0x10uLL, "(node-type-%u)", v29);
                std::string::assign(v452, v436);
                goto LABEL_360;
              }

              if (v29 == 3)
              {
                v36 = "sleepy-router";
                v37 = "router";
              }

              else
              {
                if (v29 != 4)
                {
                  goto LABEL_373;
                }

                v36 = "sleepy-router";
                v37 = "leader";
              }

              v46 = (v30 & 1) == 0;
LABEL_356:
              if (v46)
              {
                v32 = v36;
              }

              else
              {
                v32 = v37;
              }

              goto LABEL_359;
            }

LABEL_291:
            v458[0] = 0;
            IfsAckDataPerNeighbor = otPlatRadioGetTransmitPower(v422[28], v458);
            if (IfsAckDataPerNeighbor)
            {
              goto LABEL_299;
            }

            v28 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v28)
            {
              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315394;
                *(v436[0].__r_.__value_.__r.__words + 4) = "NCP:TXPower";
                WORD2(v436[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&v436[0].__r_.__value_.__r.__words[1] + 6) = v458[0];
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "HI:PG0:%s[%d]", v436, 0x12u);
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [PowerEventHandler_Rcp init:];
            }

            if (v458[0] < 8 || *(v422 + 336) != 3 && *(v422 + 336))
            {
LABEL_353:
              operator new();
            }

            v51 = RcpHostContext::sRcpHostContext;
            std::string::basic_string[abi:ne200100]<0>(v433, "Error");
            std::string::basic_string[abi:ne200100]<0>(v431, "Regulatory Error");
            std::string::basic_string[abi:ne200100]<0>(v429, "Power Level Exceeded for CN");
            RcpHostContext::captureABC(v51, v433, v431, v429, 0, 1);
            if (v430 < 0)
            {
              operator delete(v429[0]);
              if ((v432 & 0x80000000) == 0)
              {
LABEL_352:
                if ((v434 & 0x80000000) == 0)
                {
                  goto LABEL_353;
                }

LABEL_394:
                operator delete(v433[0]);
                goto LABEL_353;
              }
            }

            else if ((v432 & 0x80000000) == 0)
            {
              goto LABEL_352;
            }

            operator delete(v431[0]);
            if ((v434 & 0x80000000) == 0)
            {
              goto LABEL_353;
            }

            goto LABEL_394;
          }

LABEL_276:
          SupportedChannelMask = otLinkGetSupportedChannelMask(v422[28]);
          v24 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v24)
          {
            v25 = v24;
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = *(v6 + 56);
              LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109634;
              HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = v26;
              LOWORD(v436[0].__r_.__value_.__r.__words[1]) = 2080;
              *(&v436[0].__r_.__value_.__r.__words[1] + 2) = "NCP:ChannelMask";
              WORD1(v436[0].__r_.__value_.__r.__words[2]) = 1024;
              HIDWORD(v436[0].__r_.__value_.__r.__words[2]) = SupportedChannelMask;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "HI:PG:%d:%s[%u]", v436, 0x18u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          snprintf(v458, 0x10uLL, "0x%x", SupportedChannelMask);
          v33 = strlen(v458);
          if (v33 <= 0x7FFFFFFFFFFFFFF7)
          {
            v34 = v33;
            if (v33 < 0x17)
            {
              *(&v436[0].__r_.__value_.__s + 23) = v33;
              if (v33)
              {
                memcpy(v436, v458, v33);
              }

              v436[0].__r_.__value_.__s.__data_[v34] = 0;
              operator new();
            }

            operator new();
          }

          std::string::__throw_length_error[abi:ne200100]();
        }

LABEL_265:
        v20 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v20)
        {
          v21 = v20;
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
            *(v436[0].__r_.__value_.__r.__words + 4) = "nm:trigger:devicedata:interval";
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "HI:PG:%s", v436, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        operator new();
      }

LABEL_261:
      Channel = otLinkGetChannel(v422[28]);
      v17 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v17)
      {
        v18 = v17;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = *(v6 + 56);
          LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109634;
          HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = v19;
          LOWORD(v436[0].__r_.__value_.__r.__words[1]) = 2080;
          *(&v436[0].__r_.__value_.__r.__words[1] + 2) = "NCP:Channel";
          WORD1(v436[0].__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(v436[0].__r_.__value_.__r.__words[2]) = Channel;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "HI:PG:%d:%s[%u]", v436, 0x18u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      if (*(v6 + 56))
      {
        *(&v436[0].__r_.__value_.__s + 23) = 11;
        strcpy(v436, "NCP:Channel");
        operator new();
      }

      operator new();
    }

LABEL_257:
    buf.__r_.__value_.__r.__words[0] = &buf;
    buf.__r_.__value_.__l.__size_ = &buf;
    buf.__r_.__value_.__r.__words[2] = 0;
    memset(&v465, 0, sizeof(v465));
    v435[0] = -1;
    v14 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v14)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(v6 + 56);
        LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109378;
        HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = v15;
        LOWORD(v436[0].__r_.__value_.__r.__words[1]) = 2080;
        *(&v436[0].__r_.__value_.__r.__words[1] + 2) = "Thread:NetworkData";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "HI:PG:%d:%s", v436, 0x12u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    if (otNetDataGet(v422[28], 0, v452, v435))
    {
      v22 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v22)
      {
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::ProcessPropertyGet();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      memset(v454, 0, 175);
      v453 = 0u;
      memset(v452, 0, sizeof(v452));
      v435[0] = 1;
    }

    otNetDataGetVersion(v422[28]);
    if (v435[0])
    {
      operator new();
    }

    *&v418 = 0;
    *(&v463 + 1) = 0;
    v464 = 0;
    *&v463 = &v463 + 8;
    std::string::assign(&v465, "RAW");
    operator new();
  }

  v9 = *v5;
  if (!strcmp(*v5, "Thread:NetworkData"))
  {
    goto LABEL_257;
  }

  if (!strcmp(v9, "NCP:Channel"))
  {
    goto LABEL_261;
  }

  if (!strcmp(v9, "nm:trigger:devicedata:interval"))
  {
    goto LABEL_265;
  }

  if (!strcmp(v9, "NCP:ChannelMask"))
  {
    goto LABEL_276;
  }

  if (!strcmp(v9, "NCP:TXPower"))
  {
    goto LABEL_291;
  }

  if (!strcmp(v9, "Network:NodeType"))
  {
    goto LABEL_301;
  }

  if (!strcmp(v9, "Network:Role"))
  {
    goto LABEL_313;
  }

  if (!strcmp(v9, "Network:LastRole"))
  {
    goto LABEL_318;
  }

  if (!strcmp(v9, "Network:PartitionId"))
  {
    goto LABEL_336;
  }

  if (!strcmp(v9, "Thread:RLOC16"))
  {
    goto LABEL_374;
  }

  if (!strcmp(v9, "isPrimaryResident"))
  {
    goto LABEL_381;
  }

  if (!strcmp(v9, "wasPrimaryResident"))
  {
    goto LABEL_395;
  }

  if (!strcmp(v9, "Network:PSKc"))
  {
    goto LABEL_404;
  }

  if (!strcmp(v9, "NCP:ExtendedAddress"))
  {
    goto LABEL_411;
  }

  if (!strcmp(v9, "Thread:NeighborMeshLocalAddress"))
  {
    goto LABEL_418;
  }

  if (!strcmp(v9, "Thread:EmacId"))
  {
    goto LABEL_425;
  }

  if (!strcmp(v9, "NCP:WedExtendedAddress"))
  {
    goto LABEL_434;
  }

  if (!strcmp(v9, "NCP:WedMleId"))
  {
    goto LABEL_465;
  }

  if (!strcmp(v9, "wasDeviceEverAChildInCurrentNetwork"))
  {
    goto LABEL_480;
  }

  if (!strcmp(v9, "Config:TUN:InterfaceName"))
  {
    goto LABEL_491;
  }

  if (!strcmp(v9, "IPv6:Routes"))
  {
LABEL_508:
    v96 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v96)
    {
      v97 = v96;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v98 = *(__s1 + 56);
        LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109378;
        HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = v98;
        LOWORD(v436[0].__r_.__value_.__r.__words[1]) = 2080;
        *(&v436[0].__r_.__value_.__r.__words[1] + 2) = "IPv6:Routes";
        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v436, 0x12u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v436[0].__r_.__value_.__r.__words[0] = v436;
    v436[0].__r_.__value_.__l.__size_ = v436;
    v436[0].__r_.__value_.__r.__words[2] = 0;
    if ((*(__s1 + 56) & 1) == 0)
    {
      v118 = v422[13];
      if (v118 != (v422 + 14))
      {
        *&v452[8] = 0;
        *&v452[16] = 0;
        *v452 = &v452[8];
        IPv6Prefix::to_string(v458, (v118 + 28));
        std::string::basic_string[abi:ne200100]<0>(v456, "Address");
        __s[0].__r_.__value_.__r.__words[0] = v456;
        v119 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v452, &v456[0].__r_.__value_.__l.__data_, &std::piecewise_construct, __s);
        boost::any::operator=<std::string>(v119 + 7, v458);
      }

      boost::any::any<std::list<std::map<std::string,boost::any>> &>(v452, v436);
    }

    HostInterpreter::update_on_mesh_prefixes(v422);
    HostInterpreter::update_off_mesh_routes(v422);
    HostInterpreter::refresh_routes_on_interface(v422);
    std::list<std::map<std::string,boost::any>>::~list(v436);
    return 0;
  }

  if (!strcmp(v9, "thread_version"))
  {
    goto LABEL_530;
  }

  if (!strcmp(v9, "cametrics_triggerbased_stability_data"))
  {
    goto LABEL_567;
  }

  if (!strcmp(v9, "cametrics_periodic_stability_data"))
  {
    goto LABEL_589;
  }

  if (!strcmp(v9, "primary_resident_data"))
  {
    goto LABEL_599;
  }

  if (!strcmp(v9, "homeThreadInfoData"))
  {
    goto LABEL_609;
  }

  if (!strcmp(v9, "numOnMeshPrefixes"))
  {
    goto LABEL_610;
  }

  if (!strcmp(v9, "numRouters"))
  {
    goto LABEL_611;
  }

  if (!strcmp(v9, "numOffMeshRoutes"))
  {
    goto LABEL_612;
  }

  if (!strcmp(v9, "Thread:OnMeshPrefixes"))
  {
    goto LABEL_613;
  }

  if (!strcmp(v9, "Thread:OffMeshRoutes"))
  {
    goto LABEL_616;
  }

  if (!strcmp(v9, "nm:networkdata"))
  {
    goto LABEL_619;
  }

  if (!strcmp(v9, "Thread:Services"))
  {
    goto LABEL_623;
  }

  if (!strcmp(v9, "NCP:State"))
  {
    goto LABEL_628;
  }

  if (!strcmp(v9, "Network:Name"))
  {
    goto LABEL_684;
  }

  if (!strcmp(v9, "Network:XPANID"))
  {
    goto LABEL_701;
  }

  if (!strcmp(v9, "Network:PANID"))
  {
    goto LABEL_708;
  }

  if (!strcmp(v9, "NCP:HardwareSerialNumber"))
  {
    goto LABEL_772;
  }

  if (!strcmp(v9, "vendor:assigned:hw:mac"))
  {
    goto LABEL_781;
  }

  if (!strcmp(v9, "NCP:HardwareAddress"))
  {
    goto LABEL_788;
  }

  if (!strcmp(v9, "IPv6:AllAddresses"))
  {
    goto LABEL_795;
  }

  if (!strcmp(v9, "Thread:Leader:RouterID"))
  {
    goto LABEL_802;
  }

  if (!strcmp(v9, "Thread:Leader:ExtendedAddress"))
  {
    goto LABEL_810;
  }

  if (!strcmp(v9, "ChannelUtilizationMonitor:State"))
  {
    goto LABEL_819;
  }

  if (!strcmp(v9, "Network:Key"))
  {
    goto LABEL_828;
  }

  if (!strcmp(v9, "Network:KeyIndex"))
  {
    goto LABEL_842;
  }

  if (strcmp(v9, "Thread:ActiveDataset:Bytes"))
  {
    if (strcmp(v9, "vendor:assert"))
    {
      if (strcmp(v9, "vendor:hard:fault"))
      {
        if (strcmp(v9, "vendor:stack:overflow"))
        {
          if (strcmp(v9, "Leader:Reelect:Counters"))
          {
            if (strcmp(v9, "vendor:neighbor:count:histogram") && strcmp(v9, "vendor:neighbor:count:histogram:AsValMap"))
            {
              if (strcmp(v9, "vendor:bbr:counters") && strcmp(v9, "vendor:bbr:counters:AsValMap"))
              {
                if (strcmp(v9, "vendor:linkloss:counters") && strcmp(v9, "vendor:linkloss:counters:AsValMap"))
                {
                  if (strcmp(v9, "NCP:Counter:Thread:Mle") && strcmp(v9, "NCP:Counter:Thread:Mle:AsValMap"))
                  {
                    if (strcmp(v9, "NCP:Counter:Thread:Neighbor:TriggerBased"))
                    {
                      if (strcmp(v9, "NCP:Counter:AllIPv6") && strcmp(v9, "NCP:Counter:AllIPv6:AsValMap"))
                      {
                        if (strcmp(v9, "NCP:Matter:Subscription:Histogram") && strcmp(v9, "NCP:Matter:Subscription:Histogram:AsValMap"))
                        {
                          if (strcmp(v9, "NCP:Counter:AllMac") && strcmp(v9, "NCP:Counter:AllMac:AsValMap"))
                          {
                            if (strcmp(v9, "vendor:mle:adv:tx:num"))
                            {
                              if (strcmp(v9, "vendor:min:mac:interframedelay"))
                              {
                                if (strcmp(v9, "vendor:csl:tx:schedframe:reqahead:timeinus"))
                                {
                                  if (strcmp(v9, "vendor:radio:counters") && strcmp(v9, "vendor:radio:counters:asvalmap"))
                                  {
                                    if (strcmp(v9, "vendor:joiner:RSSIHistogram") && strcmp(v9, "vendor:joiner:RSSIHistogram:AsValMap"))
                                    {
                                      if (strcmp(v9, "Daemon:Version"))
                                      {
                                        if (strcmp(v9, "DaemonMorty:Version"))
                                        {
                                          if (strcmp(v9, "vendor:version"))
                                          {
                                            if (strcmp(v9, "Current:Srp:NetdataMode"))
                                            {
                                              if (strcmp(v9, "Srp:NetdataMode"))
                                              {
                                                if (strcmp(v9, "vendor:last:host:wake:reason"))
                                                {
                                                  if (strcmp(v9, "vendor:deepsleep:region:loglevels"))
                                                  {
                                                    if (strcmp(v9, "vendor:deepsleep:loglevel"))
                                                    {
                                                      if (strcmp(v9, "vendor:deepsleep:filter:list"))
                                                      {
                                                        if (strcmp(v9, "vendor:MAC:packet:SizeHistogram") && strcmp(v9, "vendor:MAC:packet:SizeHistogram:AsValMap"))
                                                        {
                                                          if (strcmp(v9, "vendor:MAC:packet:ErrorHistogram") && strcmp(v9, "vendor:MAC:packet:ErrorHistogram:AsValMap"))
                                                          {
                                                            if (strcmp(v9, "vendor:MAC:packet:LQIHistogram") && strcmp(v9, "vendor:MAC:packet:LQIHistogram:AsValMap"))
                                                            {
                                                              if (strcmp(v9, "vendor:MAC:packet:RSSIHistogram") && strcmp(v9, "vendor:MAC:packet:RSSIHistogram:AsValMap"))
                                                              {
                                                                if (strcmp(v9, "NCP:MacRetryHistogram") && strcmp(v9, "NCP:MacRetryHistogram:AsValMap"))
                                                                {
                                                                  if (strcmp(v9, "vendor:openthread:radio:counters") && strcmp(v9, "vendor:openthread:radio:counters:AsValMap"))
                                                                  {
                                                                    if (strcmp(v9, "IPv6:MeshLocalPrefix"))
                                                                    {
                                                                      if (strcmp(v9, "IPv6:MeshLocalAddress"))
                                                                      {
                                                                        if (strcmp(v9, "vendor:ncp:state:dump"))
                                                                        {
                                                                          if (strcmp(v9, "Thread:RouterTable"))
                                                                          {
                                                                            if (strcmp(v9, "Thread:EidCache"))
                                                                            {
                                                                              if (strcmp(v9, "Thread:MessageBufferStats"))
                                                                              {
                                                                                if (strcmp(v9, "is_threadsession_on"))
                                                                                {
                                                                                  if (strcmp(v9, "vendor:power"))
                                                                                  {
                                                                                    v8 = strcmp(v9, "vendor:power:table");
                                                                                    if (v8)
                                                                                    {
                                                                                      if (strcmp(v9, "vendor:coex:radioload"))
                                                                                      {
                                                                                        if (strcmp(v9, "vendor:coex:preferredAntenna"))
                                                                                        {
                                                                                          if (strcmp(v9, "vendor:coex:scanFreqTable"))
                                                                                          {
                                                                                            if (strcmp(v9, "vendor:coex:CoTxPowerCap"))
                                                                                            {
                                                                                              if (strcmp(v9, "is_bt_audioCall_on"))
                                                                                              {
                                                                                                if (strcmp(v9, "vendor:coex:rcp2:counters"))
                                                                                                {
                                                                                                  if (strcmp(v9, "rcp2PcapState"))
                                                                                                  {
                                                                                                    if (strcmp(v9, "Daemon:VirtualInterface:ReadBufferSize"))
                                                                                                    {
                                                                                                      if (strcmp(v9, "vendor:power:limit:table"))
                                                                                                      {
                                                                                                        if (strcmp(v9, "vendor:power:limit:table:active:id"))
                                                                                                        {
                                                                                                          if (strcmp(v9, "vendor:fem:enabled"))
                                                                                                          {
                                                                                                            if (strcmp(v9, "NCP:PcapEnabled"))
                                                                                                            {
                                                                                                              if (strcmp(v9, "Daemon:PromiscuousPcap"))
                                                                                                              {
                                                                                                                if (strcmp(v9, "vendor:ifs:ackdata"))
                                                                                                                {
                                                                                                                  if (strcmp(v9, "ca:reporting:enabled"))
                                                                                                                  {
                                                                                                                    if (strcmp(v9, "streamRawRespTimeHist"))
                                                                                                                    {
                                                                                                                      if (strcmp(v9, "coex:rcp2:coex:counters:asvalmap"))
                                                                                                                      {
                                                                                                                        if (strcmp(v9, "coex:rcp2:btwifi:load"))
                                                                                                                        {
                                                                                                                          if (strcmp(v9, "Thread:Health:Metrics"))
                                                                                                                          {
                                                                                                                            if (strcmp(v9, "ThreadStartMetrics"))
                                                                                                                            {
                                                                                                                              goto LABEL_249;
                                                                                                                            }

                                                                                                                            goto LABEL_1139;
                                                                                                                          }

LABEL_1133:
                                                                                                                          v334 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                          if (v334)
                                                                                                                          {
                                                                                                                            v335 = v334;
                                                                                                                            v336 = syslog_is_the_mask_enabled(6);
                                                                                                                            if (v336)
                                                                                                                            {
                                                                                                                              v336 = os_log_type_enabled(v335, OS_LOG_TYPE_INFO);
                                                                                                                              if (v336)
                                                                                                                              {
                                                                                                                                v337 = __s1;
                                                                                                                                v338 = *(__s1 + 56);
                                                                                                                                if (*(__s1 + 23) < 0)
                                                                                                                                {
                                                                                                                                  v337 = *__s1;
                                                                                                                                }

                                                                                                                                LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109378;
                                                                                                                                HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = v338;
                                                                                                                                LOWORD(v436[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                                                                                *(&v436[0].__r_.__value_.__r.__words[1] + 2) = v337;
                                                                                                                                _os_log_impl(&_mh_execute_header, v335, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v436, 0x12u);
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v336 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                                                                                                                            if (v336)
                                                                                                                            {
                                                                                                                              [PowerEventHandler_Rcp init:];
                                                                                                                            }
                                                                                                                          }

                                                                                                                          v436[0].__r_.__value_.__r.__words[0] = v436;
                                                                                                                          v436[0].__r_.__value_.__l.__size_ = v436;
                                                                                                                          v436[0].__r_.__value_.__r.__words[2] = 0;
                                                                                                                          HostInterpreter::GetThreadHealthMetrics(v336, v436);
                                                                                                                        }

LABEL_1127:
                                                                                                                        v331 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                        if (v331)
                                                                                                                        {
                                                                                                                          v332 = v331;
                                                                                                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v332, OS_LOG_TYPE_INFO))
                                                                                                                          {
                                                                                                                            v333 = __s1;
                                                                                                                            if (*(__s1 + 23) < 0)
                                                                                                                            {
                                                                                                                              v333 = *__s1;
                                                                                                                            }

                                                                                                                            LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                            *(v436[0].__r_.__value_.__r.__words + 4) = v333;
                                                                                                                            _os_log_impl(&_mh_execute_header, v332, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                        {
                                                                                                                          [PowerEventHandler_Rcp init:];
                                                                                                                        }

                                                                                                                        *&v436[0].__r_.__value_.__r.__words[1] = 0uLL;
                                                                                                                        v436[0].__r_.__value_.__r.__words[0] = &v436[0].__r_.__value_.__l.__size_;
                                                                                                                        HostInterpreter::GetCoExRCP2BTWifiLoadAsValMap(v452);
                                                                                                                      }

LABEL_1121:
                                                                                                                      v328 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                      if (v328)
                                                                                                                      {
                                                                                                                        v329 = v328;
                                                                                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v329, OS_LOG_TYPE_INFO))
                                                                                                                        {
                                                                                                                          v330 = __s1;
                                                                                                                          if (*(__s1 + 23) < 0)
                                                                                                                          {
                                                                                                                            v330 = *__s1;
                                                                                                                          }

                                                                                                                          LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                          *(v436[0].__r_.__value_.__r.__words + 4) = v330;
                                                                                                                          _os_log_impl(&_mh_execute_header, v329, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                                                        }
                                                                                                                      }

                                                                                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                      {
                                                                                                                        [PowerEventHandler_Rcp init:];
                                                                                                                      }

                                                                                                                      HostInterpreter::GetCoExRCP2CountersAsValMap(v436);
                                                                                                                    }

LABEL_1115:
                                                                                                                    v325 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                    if (v325)
                                                                                                                    {
                                                                                                                      v326 = v325;
                                                                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v326, OS_LOG_TYPE_INFO))
                                                                                                                      {
                                                                                                                        v327 = __s1;
                                                                                                                        if (*(__s1 + 23) < 0)
                                                                                                                        {
                                                                                                                          v327 = *__s1;
                                                                                                                        }

                                                                                                                        LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                        *(v436[0].__r_.__value_.__r.__words + 4) = v327;
                                                                                                                        _os_log_impl(&_mh_execute_header, v326, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                    {
                                                                                                                      [PowerEventHandler_Rcp init:];
                                                                                                                    }

                                                                                                                    v446 = 0;
                                                                                                                    v444 = 0u;
                                                                                                                    v445 = 0u;
                                                                                                                    v442 = 0u;
                                                                                                                    v443 = 0u;
                                                                                                                    v440 = 0u;
                                                                                                                    v441 = 0u;
                                                                                                                    v438 = 0u;
                                                                                                                    v439 = 0u;
                                                                                                                    v437 = 0u;
                                                                                                                    memset(v436, 0, sizeof(v436));
                                                                                                                    otGetStreamRawResponseHistogram(v422[28], v436);
                                                                                                                    *&v452[16] = 0;
                                                                                                                    *&v452[8] = 0;
                                                                                                                    *v452 = &v452[8];
                                                                                                                    memset(v458, 0, 24);
                                                                                                                    v392 = __s1;
                                                                                                                    if (*(__s1 + 23) < 0)
                                                                                                                    {
                                                                                                                      v392 = *__s1;
                                                                                                                    }

                                                                                                                    std::string::basic_string[abi:ne200100]<0>(v457, v392);
                                                                                                                    std::string::basic_string[abi:ne200100]<0>(&v455, "[");
                                                                                                                    if ((v455.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                    {
                                                                                                                      v393 = &v455;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v393 = v455.__r_.__value_.__r.__words[0];
                                                                                                                    }

                                                                                                                    if ((v455.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                    {
                                                                                                                      v394 = HIBYTE(v455.__r_.__value_.__r.__words[2]);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v394 = v455.__r_.__value_.__l.__size_;
                                                                                                                    }

                                                                                                                    v395 = std::string::append(v457, v393, v394);
                                                                                                                    v396 = *&v395->__r_.__value_.__l.__data_;
                                                                                                                    __s[0].__r_.__value_.__r.__words[2] = v395->__r_.__value_.__r.__words[2];
                                                                                                                    *&__s[0].__r_.__value_.__l.__data_ = v396;
                                                                                                                    v395->__r_.__value_.__l.__size_ = 0;
                                                                                                                    v395->__r_.__value_.__r.__words[2] = 0;
                                                                                                                    v395->__r_.__value_.__r.__words[0] = 0;
                                                                                                                    std::to_string(&buf, 0);
                                                                                                                    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                    {
                                                                                                                      v397 = &buf;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v397 = buf.__r_.__value_.__r.__words[0];
                                                                                                                    }

                                                                                                                    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                    {
                                                                                                                      v398 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v398 = buf.__r_.__value_.__l.__size_;
                                                                                                                    }

                                                                                                                    v399 = std::string::append(__s, v397, v398);
                                                                                                                    v400 = *&v399->__r_.__value_.__l.__data_;
                                                                                                                    v456[0].__r_.__value_.__r.__words[2] = v399->__r_.__value_.__r.__words[2];
                                                                                                                    *&v456[0].__r_.__value_.__l.__data_ = v400;
                                                                                                                    v399->__r_.__value_.__l.__size_ = 0;
                                                                                                                    v399->__r_.__value_.__r.__words[2] = 0;
                                                                                                                    v399->__r_.__value_.__r.__words[0] = 0;
                                                                                                                    std::string::basic_string[abi:ne200100]<0>(&v465, "]");
                                                                                                                    if ((v465.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                    {
                                                                                                                      v401 = &v465;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v401 = v465.__r_.__value_.__r.__words[0];
                                                                                                                    }

                                                                                                                    if ((v465.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                                                                                    {
                                                                                                                      v402 = HIBYTE(v465.__r_.__value_.__r.__words[2]);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v402 = v465.__r_.__value_.__l.__size_;
                                                                                                                    }

                                                                                                                    v403 = std::string::append(v456, v401, v402);
                                                                                                                    v404 = v403->__r_.__value_.__r.__words[0];
                                                                                                                    *&v463 = v403->__r_.__value_.__l.__size_;
                                                                                                                    *(&v463 + 7) = *(&v403->__r_.__value_.__r.__words[1] + 7);
                                                                                                                    v405 = HIBYTE(v403->__r_.__value_.__r.__words[2]);
                                                                                                                    v403->__r_.__value_.__l.__size_ = 0;
                                                                                                                    v403->__r_.__value_.__r.__words[2] = 0;
                                                                                                                    v403->__r_.__value_.__r.__words[0] = 0;
                                                                                                                    if ((v458[23] & 0x80000000) != 0)
                                                                                                                    {
                                                                                                                      operator delete(*v458);
                                                                                                                    }

                                                                                                                    *v458 = v404;
                                                                                                                    *&v458[8] = v463;
                                                                                                                    *&v458[15] = *(&v463 + 7);
                                                                                                                    v458[23] = v405;
                                                                                                                    if (SHIBYTE(v465.__r_.__value_.__r.__words[2]) < 0)
                                                                                                                    {
                                                                                                                      operator delete(v465.__r_.__value_.__l.__data_);
                                                                                                                      if (SHIBYTE(v456[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                      {
LABEL_1390:
                                                                                                                        operator delete(v456[0].__r_.__value_.__l.__data_);
                                                                                                                        if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                        {
                                                                                                                          goto LABEL_1391;
                                                                                                                        }

                                                                                                                        goto LABEL_1398;
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else if (SHIBYTE(v456[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                    {
                                                                                                                      goto LABEL_1390;
                                                                                                                    }

                                                                                                                    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                    {
LABEL_1391:
                                                                                                                      if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                      {
                                                                                                                        goto LABEL_1392;
                                                                                                                      }

                                                                                                                      goto LABEL_1399;
                                                                                                                    }

LABEL_1398:
                                                                                                                    operator delete(buf.__r_.__value_.__l.__data_);
                                                                                                                    if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                                                    {
LABEL_1392:
                                                                                                                      operator delete(__s[0].__r_.__value_.__l.__data_);
                                                                                                                      if ((SHIBYTE(v455.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                      {
                                                                                                                        goto LABEL_1393;
                                                                                                                      }

                                                                                                                      goto LABEL_1400;
                                                                                                                    }

LABEL_1399:
                                                                                                                    if ((SHIBYTE(v455.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                    {
LABEL_1393:
                                                                                                                      if ((SHIBYTE(v457[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                      {
                                                                                                                        goto LABEL_1395;
                                                                                                                      }

                                                                                                                      goto LABEL_1394;
                                                                                                                    }

LABEL_1400:
                                                                                                                    operator delete(v455.__r_.__value_.__l.__data_);
                                                                                                                    if ((SHIBYTE(v457[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                                                                                    {
LABEL_1395:
                                                                                                                      v456[0].__r_.__value_.__r.__words[0] = v458;
                                                                                                                      v406 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v452, v458, &std::piecewise_construct, v456);
                                                                                                                      boost::any::operator=<unsigned int &>(v406 + 7, v436);
                                                                                                                    }

LABEL_1394:
                                                                                                                    operator delete(v457[0].__r_.__value_.__l.__data_);
                                                                                                                    goto LABEL_1395;
                                                                                                                  }

LABEL_1109:
                                                                                                                  v322 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                  if (v322)
                                                                                                                  {
                                                                                                                    v323 = v322;
                                                                                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v323, OS_LOG_TYPE_INFO))
                                                                                                                    {
                                                                                                                      v324 = __s1;
                                                                                                                      if (*(__s1 + 23) < 0)
                                                                                                                      {
                                                                                                                        v324 = *__s1;
                                                                                                                      }

                                                                                                                      LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                                      *(v436[0].__r_.__value_.__r.__words + 4) = v324;
                                                                                                                      _os_log_impl(&_mh_execute_header, v323, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                  {
                                                                                                                    [PowerEventHandler_Rcp init:];
                                                                                                                  }

                                                                                                                  operator new();
                                                                                                                }

                                                                                                                goto LABEL_1103;
                                                                                                              }

LABEL_1102:
                                                                                                              std::string::basic_string[abi:ne200100]<0>(v436, "Daemon:PromiscuousPcap");
                                                                                                              *v452 = v436;
                                                                                                              v318 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v436[0].__r_.__value_.__l.__data_, &std::piecewise_construct, v452);
                                                                                                              boost::any::any<std::string &>(v458, (v318 + 7));
                                                                                                            }

LABEL_1098:
                                                                                                            PcapEnabled = otPlatRadioGetPcapEnabled();
                                                                                                            v316 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                            if (v316)
                                                                                                            {
                                                                                                              v317 = v316;
                                                                                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v317, OS_LOG_TYPE_INFO))
                                                                                                              {
                                                                                                                LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315394;
                                                                                                                *(v436[0].__r_.__value_.__r.__words + 4) = "NCP:PcapEnabled";
                                                                                                                WORD2(v436[0].__r_.__value_.__r.__words[1]) = 1024;
                                                                                                                *(&v436[0].__r_.__value_.__r.__words[1] + 6) = PcapEnabled;
                                                                                                                _os_log_impl(&_mh_execute_header, v317, OS_LOG_TYPE_INFO, "HI:PG0:%s,isPcapEnable:%d", v436, 0x12u);
                                                                                                              }
                                                                                                            }

                                                                                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                            {
                                                                                                              [PowerEventHandler_Rcp init:];
                                                                                                            }

                                                                                                            operator new();
                                                                                                          }

                                                                                                          goto LABEL_1094;
                                                                                                        }

                                                                                                        goto LABEL_1090;
                                                                                                      }

                                                                                                      goto LABEL_1085;
                                                                                                    }

LABEL_1079:
                                                                                                    v307 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                    if (v307)
                                                                                                    {
                                                                                                      v308 = v307;
                                                                                                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v308, OS_LOG_TYPE_INFO))
                                                                                                      {
                                                                                                        v309 = __s1;
                                                                                                        if (*(__s1 + 23) < 0)
                                                                                                        {
                                                                                                          v309 = *__s1;
                                                                                                        }

                                                                                                        LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                        *(v436[0].__r_.__value_.__r.__words + 4) = v309;
                                                                                                        _os_log_impl(&_mh_execute_header, v308, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                                      }
                                                                                                    }

                                                                                                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                    {
                                                                                                      [PowerEventHandler_Rcp init:];
                                                                                                    }

                                                                                                    otSysGetThreadVirtualInterfaceReadBufferSize();
                                                                                                    operator new();
                                                                                                  }

                                                                                                  goto LABEL_1073;
                                                                                                }

LABEL_1067:
                                                                                                v300 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                if (v300)
                                                                                                {
                                                                                                  v301 = v300;
                                                                                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v301, OS_LOG_TYPE_INFO))
                                                                                                  {
                                                                                                    v302 = __s1;
                                                                                                    if (*(__s1 + 23) < 0)
                                                                                                    {
                                                                                                      v302 = *__s1;
                                                                                                    }

                                                                                                    LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                                    *(v436[0].__r_.__value_.__r.__words + 4) = v302;
                                                                                                    _os_log_impl(&_mh_execute_header, v301, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                                                                  }
                                                                                                }

                                                                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                {
                                                                                                  [PowerEventHandler_Rcp init:];
                                                                                                }

                                                                                                if (!HostInterpreter::CoexCounterUpdate(v422, coexCounters))
                                                                                                {
                                                                                                  operator new();
                                                                                                }

                                                                                                goto LABEL_300;
                                                                                              }

LABEL_1063:
                                                                                              v297 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                              if (v297)
                                                                                              {
                                                                                                v298 = v297;
                                                                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v298, OS_LOG_TYPE_INFO))
                                                                                                {
                                                                                                  v299 = *(v422 + 184);
                                                                                                  LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315394;
                                                                                                  *(v436[0].__r_.__value_.__r.__words + 4) = "is_bt_audioCall_on";
                                                                                                  WORD2(v436[0].__r_.__value_.__r.__words[1]) = 1024;
                                                                                                  *(&v436[0].__r_.__value_.__r.__words[1] + 6) = v299;
                                                                                                  _os_log_impl(&_mh_execute_header, v298, OS_LOG_TYPE_INFO, "BT Load, Audio detection: HostInterpreter::ProcessPropertyGet[E(0)]: %s, BTAudioCallStatus is %d]", v436, 0x12u);
                                                                                                }
                                                                                              }

                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                              {
                                                                                                [PowerEventHandler_Rcp init:];
                                                                                              }

                                                                                              operator new();
                                                                                            }

LABEL_1058:
                                                                                            if (otPlatRadioGetRcp2Vendor2Enabled())
                                                                                            {
                                                                                              v295 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                              if (v295)
                                                                                              {
                                                                                                v296 = v295;
                                                                                                if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v296, OS_LOG_TYPE_DEBUG))
                                                                                                {
                                                                                                  HostInterpreter::ProcessPropertyGet();
                                                                                                }
                                                                                              }

                                                                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                              {
                                                                                                [PowerEventHandler_Rcp init:];
                                                                                              }

                                                                                              operator new();
                                                                                            }

                                                                                            return 0;
                                                                                          }

                                                                                          goto LABEL_1050;
                                                                                        }

                                                                                        goto LABEL_1045;
                                                                                      }

LABEL_1044:
                                                                                      operator new();
                                                                                    }

                                                                                    goto LABEL_1039;
                                                                                  }

                                                                                  goto LABEL_1034;
                                                                                }

LABEL_1030:
                                                                                RcpHostContext::isThreadSessionEnabled(RcpHostContext::sRcpHostContext);
                                                                                v285 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                if (v285)
                                                                                {
                                                                                  v286 = v285;
                                                                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v286, OS_LOG_TYPE_INFO))
                                                                                  {
                                                                                    LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                                                    *(v436[0].__r_.__value_.__r.__words + 4) = "is_threadsession_on";
                                                                                    _os_log_impl(&_mh_execute_header, v286, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v436, 0xCu);
                                                                                  }
                                                                                }

                                                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                {
                                                                                  [PowerEventHandler_Rcp init:];
                                                                                }

                                                                                operator new();
                                                                              }

LABEL_1017:
                                                                              *v452 = v452;
                                                                              *&v452[8] = v452;
                                                                              *&v452[16] = 0;
                                                                              std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v436);
                                                                              memset(v458, 0, 24);
                                                                              v275 = v422[28];
                                                                              if (*(v275 + 85220) == 1)
                                                                              {
                                                                                v276 = v275 + 65805;
                                                                                std::string::basic_string[abi:ne200100]<0>(v456, "");
                                                                                std::stringbuf::str();
                                                                                if (SHIBYTE(v456[0].__r_.__value_.__r.__words[2]) < 0)
                                                                                {
                                                                                  operator delete(v456[0].__r_.__value_.__l.__data_);
                                                                                }

                                                                                v277 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], "Buf", 3);
                                                                                *(v277 + *(*v277 - 24) + 24) = 3;
                                                                                v456[0].__r_.__value_.__s.__data_[0] = 48;
                                                                                std::operator<<[abi:ne200100]<std::char_traits<char>>(v277, v456);
                                                                                std::ostream::operator<<();
                                                                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], ":", 1);
                                                                                std::ostream::operator<<();
                                                                                if (*(v276 - 33))
                                                                                {
                                                                                  v278 = " (A), ";
                                                                                }

                                                                                else
                                                                                {
                                                                                  v278 = " (D), ";
                                                                                }

                                                                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], v278, 6);
                                                                                v279 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], "#A:", 3);
                                                                                *(v279 + *(*v279 - 24) + 24) = 10;
                                                                                v456[0].__r_.__value_.__s.__data_[0] = 48;
                                                                                std::operator<<[abi:ne200100]<std::char_traits<char>>(v279, v456);
                                                                                std::ostream::operator<<();
                                                                                v280 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], ", #D:", 5);
                                                                                *(v280 + *(*v280 - 24) + 24) = 10;
                                                                                v456[0].__r_.__value_.__s.__data_[0] = 48;
                                                                                std::operator<<[abi:ne200100]<std::char_traits<char>>(v280, v456);
                                                                                std::ostream::operator<<();
                                                                                if (*(v276 - 32))
                                                                                {
                                                                                  v281 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], ", LastAllocTimestamp: ", 22);
                                                                                  v282 = strlen(v276 - 32);
                                                                                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v281, (v276 - 32), v282);
                                                                                }

                                                                                if (*v276)
                                                                                {
                                                                                  v283 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], ", LastDeallocTimestamp: ", 24);
                                                                                  v284 = strlen(v276);
                                                                                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v283, v276, v284);
                                                                                }

                                                                                std::stringbuf::str();
                                                                                if ((v458[23] & 0x80000000) != 0)
                                                                                {
                                                                                  operator delete(*v458);
                                                                                }

                                                                                *v458 = v456[0];
                                                                                std::list<std::string>::push_back(v452, v458);
                                                                              }

                                                                              std::string::basic_string[abi:ne200100]<0>(v456, "");
                                                                              std::stringbuf::str();
                                                                              if (SHIBYTE(v456[0].__r_.__value_.__r.__words[2]) < 0)
                                                                              {
                                                                                operator delete(v456[0].__r_.__value_.__l.__data_);
                                                                              }

                                                                              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], "BufferStats is disabled.", 24);
                                                                              std::stringbuf::str();
                                                                              if ((v458[23] & 0x80000000) != 0)
                                                                              {
                                                                                operator delete(*v458);
                                                                              }

                                                                              *v458 = v456[0];
                                                                              std::list<std::string>::push_back(v452, v458);
                                                                            }

LABEL_1005:
                                                                            *&v457[0].__r_.__value_.__l.__data_ = 0uLL;
                                                                            v456[0].__r_.__value_.__r.__words[0] = v456;
                                                                            v456[0].__r_.__value_.__l.__size_ = v456;
                                                                            v456[0].__r_.__value_.__r.__words[2] = 0;
                                                                            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v436);
                                                                            memset(__s, 0, 24);
                                                                            if (!otThreadGetNextCacheEntry(v422[28], v458, v457))
                                                                            {
                                                                              std::string::basic_string[abi:ne200100]<0>(v452, "");
                                                                              std::stringbuf::str();
                                                                              if ((v452[23] & 0x80000000) != 0)
                                                                              {
                                                                                operator delete(*v452);
                                                                              }

                                                                              ot::Ip6::Address::ToString(v452, v458);
                                                                              v266 = strlen(&v452[12]);
                                                                              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], &v452[12], v266);
                                                                              v267 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], " ", 1);
                                                                              v452[0] = 48;
                                                                              v268 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v267, v452);
                                                                              v269 = *v268;
                                                                              *(v268 + *(*v268 - 24) + 24) = 4;
                                                                              *(v268 + *(v269 - 24) + 8) = *(v268 + *(v269 - 24) + 8) & 0xFFFFFFB5 | 8;
                                                                              std::ostream::operator<<();
                                                                              v270 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], " ", 1);
                                                                              v271 = strlen(HostInterpreter::ProcessPropertyGet(unsigned char,char **,void *)::kStateStrings[*&v458[20]]);
                                                                              v272 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v270, HostInterpreter::ProcessPropertyGet(unsigned char,char **,void *)::kStateStrings[*&v458[20]], v271);
                                                                              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v272, " canEvict=", 10);
                                                                              std::ostream::operator<<();
                                                                              if (*&v458[20])
                                                                              {
                                                                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], " timeout=", 9);
                                                                                std::ostream::operator<<();
                                                                              }

                                                                              else if ((v458[24] & 4) != 0)
                                                                              {
                                                                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], " transTime=", 11);
                                                                                std::ostream::operator<<();
                                                                                v273 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], " eid=", 5);
                                                                                ot::Ip6::Address::ToString(v452, &v461);
                                                                                v274 = strlen(&v452[12]);
                                                                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v273, &v452[12], v274);
                                                                              }

                                                                              if (*&v458[20] == 3)
                                                                              {
                                                                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2], " retryDelay=", 12);
                                                                                std::ostream::operator<<();
                                                                              }

                                                                              std::endl[abi:ne200100]<char,std::char_traits<char>>(&v436[0].__r_.__value_.__r.__words[2]);
                                                                              std::stringbuf::str();
                                                                              if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                                              {
                                                                                operator delete(__s[0].__r_.__value_.__l.__data_);
                                                                              }

                                                                              __s[0] = *v452;
                                                                              std::list<std::string>::push_back(v456, __s);
                                                                            }

                                                                            boost::any::any<std::list<std::string> &>(v452, v456);
                                                                          }

LABEL_1001:
                                                                          MaxRouterId = otThreadGetMaxRouterId();
                                                                          *v458 = v458;
                                                                          *&v458[8] = v458;
                                                                          *&v458[16] = 0;
                                                                          v264 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                          if (v264)
                                                                          {
                                                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v264, OS_LOG_TYPE_INFO))
                                                                            {
                                                                              *v452 = 0;
                                                                              _os_log_impl(&_mh_execute_header, v264, OS_LOG_TYPE_INFO, "| ID | RLOC16 | ExtendedAddress | NextHop  | PathCost | LQIn | LQOut | Age | Link", v452, 2u);
                                                                            }
                                                                          }

                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                          {
                                                                            [PowerEventHandler_Rcp init:];
                                                                          }

                                                                          v375 = 0;
                                                                          *&v265 = 136315394;
                                                                          *v420 = v265;
                                                                          *&v265 = 67112960;
                                                                          v419 = v265;
                                                                          while (otThreadGetRouterInfo(v422[28], v375, v456))
                                                                          {
                                                                            if (MaxRouterId < ++v375)
                                                                            {
                                                                              boost::any::any<std::list<std::string> &>(v452, v458);
                                                                            }
                                                                          }

                                                                          v376 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                          if (v376)
                                                                          {
                                                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v376, OS_LOG_TYPE_INFO))
                                                                            {
                                                                              *v452 = v419;
                                                                              *&v452[8] = 1024;
                                                                              *&v452[10] = LOWORD(v456[0].__r_.__value_.__r.__words[1]);
                                                                              *&v452[14] = 1024;
                                                                              *&v452[4] = v456[0].__r_.__value_.__s.__data_[10];
                                                                              *&v452[16] = v456[0].__r_.__value_.__s.__data_[0];
                                                                              *&v452[20] = 1024;
                                                                              *&v452[22] = v456[0].__r_.__value_.__s.__data_[1];
                                                                              *&v452[26] = 1024;
                                                                              *&v452[32] = 1024;
                                                                              *&v452[34] = v456[0].__r_.__value_.__s.__data_[3];
                                                                              *&v452[38] = 1024;
                                                                              *&v452[28] = v456[0].__r_.__value_.__s.__data_[2];
                                                                              *&v452[40] = v456[0].__r_.__value_.__s.__data_[4];
                                                                              *&v452[44] = 1024;
                                                                              *&v452[46] = v456[0].__r_.__value_.__s.__data_[5];
                                                                              *&v452[50] = 1024;
                                                                              *&v452[56] = 1024;
                                                                              *&v452[58] = v456[0].__r_.__value_.__s.__data_[7];
                                                                              *&v452[62] = 1024;
                                                                              *&v452[52] = v456[0].__r_.__value_.__s.__data_[6];
                                                                              LODWORD(v453) = v456[0].__r_.__value_.__s.__data_[11];
                                                                              WORD2(v453) = 1024;
                                                                              *(&v453 + 6) = v456[0].__r_.__value_.__s.__data_[12];
                                                                              WORD5(v453) = 1024;
                                                                              LOWORD(v454[0]) = 1024;
                                                                              *(v454 + 2) = v456[0].__r_.__value_.__s.__data_[14];
                                                                              WORD3(v454[0]) = 1024;
                                                                              HIDWORD(v453) = v456[0].__r_.__value_.__s.__data_[13];
                                                                              DWORD2(v454[0]) = v456[0].__r_.__value_.__s.__data_[15];
                                                                              WORD6(v454[0]) = 1024;
                                                                              *(v454 + 14) = (v456[0].__r_.__value_.__s.__data_[16] >> 1) & 1;
                                                                              _os_log_impl(&_mh_execute_header, v376, OS_LOG_TYPE_INFO, "| %2d| 0x%04x | %02X%02X%02X%02X%02X%02X%02X%02X | %8d | %8d | %9d | %3u | %3d |%2d", v452, 0x62u);
                                                                            }
                                                                          }

                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                          {
                                                                            *v452 = *v420;
                                                                            *&v452[4] = "com.apple.wpantund.ncp";
                                                                            *&v452[12] = 2080;
                                                                            *&v452[14] = "default";
                                                                            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v452, 0x16u);
                                                                          }

                                                                          snprintf(v436, 0x3E8uLL, "Router id = %u,RLOC16 = 0x%x,ExtendedAddress=%02X%02X%02X%02X%02X%02X%02X%02X,NextHop = %d,PathCost= %d, LQIn =%d, LQOut= %d, Age= %d, Link= %d", v456[0].__r_.__value_.__s.__data_[10], LOWORD(v456[0].__r_.__value_.__r.__words[1]), v456[0].__r_.__value_.__s.__data_[0], v456[0].__r_.__value_.__s.__data_[1], v456[0].__r_.__value_.__s.__data_[2], v456[0].__r_.__value_.__s.__data_[3], v456[0].__r_.__value_.__s.__data_[4], v456[0].__r_.__value_.__s.__data_[5], v456[0].__r_.__value_.__s.__data_[6], v456[0].__r_.__value_.__s.__data_[7], v456[0].__r_.__value_.__s.__data_[11], v456[0].__r_.__value_.__s.__data_[12], v456[0].__r_.__value_.__s.__data_[13], v456[0].__r_.__value_.__s.__data_[14], v456[0].__r_.__value_.__s.__data_[15], (v456[0].__r_.__value_.__s.__data_[16] >> 1) & 1);
                                                                          std::string::basic_string[abi:ne200100]<0>(v452, v436);
                                                                          operator new();
                                                                        }

LABEL_995:
                                                                        v259 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                        if (v259)
                                                                        {
                                                                          v260 = v259;
                                                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v260, OS_LOG_TYPE_INFO))
                                                                          {
                                                                            v261 = __s1;
                                                                            v262 = *(__s1 + 56);
                                                                            if (*(__s1 + 23) < 0)
                                                                            {
                                                                              v261 = *__s1;
                                                                            }

                                                                            LODWORD(v436[0].__r_.__value_.__l.__data_) = 67109378;
                                                                            HIDWORD(v436[0].__r_.__value_.__r.__words[0]) = v262;
                                                                            LOWORD(v436[0].__r_.__value_.__r.__words[1]) = 2080;
                                                                            *(&v436[0].__r_.__value_.__r.__words[1] + 2) = v261;
                                                                            _os_log_impl(&_mh_execute_header, v260, OS_LOG_TYPE_INFO, "HI:PG%d:%s", v436, 0x12u);
                                                                          }
                                                                        }

                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                        {
                                                                          [PowerEventHandler_Rcp init:];
                                                                        }

                                                                        v436[0].__r_.__value_.__r.__words[0] = v436;
                                                                        v436[0].__r_.__value_.__l.__size_ = v436;
                                                                        v436[0].__r_.__value_.__r.__words[2] = 0;
                                                                        HostInterpreter::GetRcpStateInfo(v422, v436);
                                                                      }

                                                                      goto LABEL_984;
                                                                    }

LABEL_983:
                                                                    MeshLocalPrefix = otThreadGetMeshLocalPrefix(v422[28]);
                                                                    snprintf(v436, 0xC8uLL, "%x:%x:%x:%x::/64", __rev16(*MeshLocalPrefix), __rev16(MeshLocalPrefix[1]), __rev16(MeshLocalPrefix[2]), __rev16(MeshLocalPrefix[3]));
                                                                    std::string::basic_string[abi:ne200100]<0>(v452, v436);
                                                                    operator new();
                                                                  }

                                                                  goto LABEL_981;
                                                                }

LABEL_980:
                                                                v458[0] = 0;
                                                                v456[0].__r_.__value_.__s.__data_[0] = 0;
                                                                otLinkGetTxDirectRetrySuccessHistogram(v422[28], v458);
                                                                otLinkGetTxIndirectRetrySuccessHistogram(v422[28], v456);
                                                                HostInterpreter::GetMacRetryHistogramAsValMap(v436, v458[0], v456[0].__r_.__value_.__s.__data_[0]);
                                                                boost::any::any<std::map<std::string,boost::any> &>(v452, v436);
                                                              }

LABEL_979:
                                                              v458[0] = 0;
                                                              v456[0].__r_.__value_.__s.__data_[0] = 0;
                                                              otLinkGetRouterRssiHistogram(v422[28], v458);
                                                              otLinkGetEndDeviceRssiHistogram(v422[28], v456);
                                                              HostInterpreter::GetNeighRSSIHistogramAsValMap(v436, v458[0], v456[0].__r_.__value_.__s.__data_[0]);
                                                              boost::any::any<std::map<std::string,boost::any> &>(v452, v436);
                                                            }

LABEL_978:
                                                            v458[0] = 0;
                                                            otLinkGetLqiHistogram(v422[28], v458);
                                                            HostInterpreter::GetMacPacketLQIHistogramAsValMap(v436, v458[0]);
                                                            boost::any::any<std::map<std::string,boost::any> &>(v452, v436);
                                                          }

LABEL_977:
                                                          v458[0] = 0;
                                                          v456[0].__r_.__value_.__s.__data_[0] = 0;
                                                          otLinkGetTxDirectErrorNoAckHistogram(v422[28], v458);
                                                          otLinkGetTxDirectErrorChannelAccessFailureHistogram(v422[28], v456);
                                                          HostInterpreter::GetMacPacketErrHistogramAsValMap(v436, v458[0], v456[0].__r_.__value_.__s.__data_[0]);
                                                          boost::any::any<std::map<std::string,boost::any> &>(v452, v436);
                                                        }

LABEL_976:
                                                        v458[0] = 0;
                                                        v456[0].__r_.__value_.__s.__data_[0] = 0;
                                                        otLinkGetTxPacketSizeHistogram(v422[28], v458);
                                                        otLinkGetRxPacketSizeHistogram(v422[28], v456);
                                                        HostInterpreter::GetMacPacketSizeHistogramAsValMap(v436, v458[0], v456[0].__r_.__value_.__s.__data_[0]);
                                                        boost::any::any<std::map<std::string,boost::any> &>(v452, v436);
                                                      }

LABEL_970:
                                                      v251 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                      if (v251)
                                                      {
                                                        v252 = v251;
                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v252, OS_LOG_TYPE_INFO))
                                                        {
                                                          v253 = __s1;
                                                          if (*(__s1 + 23) < 0)
                                                          {
                                                            v253 = *__s1;
                                                          }

                                                          LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                          *(v436[0].__r_.__value_.__r.__words + 4) = v253;
                                                          _os_log_impl(&_mh_execute_header, v252, OS_LOG_TYPE_INFO, "HI:PG0v:%s", v436, 0xCu);
                                                        }
                                                      }

                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                      {
                                                        [PowerEventHandler_Rcp init:];
                                                      }

                                                      *&v452[16] = 0;
                                                      *&v452[8] = 0;
                                                      *v452 = &v452[8];
                                                      v465.__r_.__value_.__s.__data_[0] = 0;
                                                      DeepSleepFilterList = otPlatVendorGetDeepSleepFilterList(v422[28], v436, &v465);
                                                      if (DeepSleepFilterList)
                                                      {
                                                        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v452, *&v452[8]);
                                                        IfsAckDataPerNeighbor = DeepSleepFilterList;
                                                        goto LABEL_299;
                                                      }

                                                      if (!v465.__r_.__value_.__s.__data_[0])
                                                      {
                                                        boost::any::any<std::map<std::string,boost::any> &>(v458, v452);
                                                      }

                                                      std::string::basic_string[abi:ne200100]<0>(v457, "[");
                                                      v362 = std::string::insert(v457, 0, "DeepSleepFilterList");
                                                      v363 = *&v362->__r_.__value_.__l.__data_;
                                                      __s[0].__r_.__value_.__r.__words[2] = v362->__r_.__value_.__r.__words[2];
                                                      *&__s[0].__r_.__value_.__l.__data_ = v363;
                                                      v362->__r_.__value_.__l.__size_ = 0;
                                                      v362->__r_.__value_.__r.__words[2] = 0;
                                                      v362->__r_.__value_.__r.__words[0] = 0;
                                                      std::to_string(&v455, 0);
                                                      if ((v455.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                      {
                                                        v364 = &v455;
                                                      }

                                                      else
                                                      {
                                                        v364 = v455.__r_.__value_.__r.__words[0];
                                                      }

                                                      if ((v455.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                      {
                                                        v365 = HIBYTE(v455.__r_.__value_.__r.__words[2]);
                                                      }

                                                      else
                                                      {
                                                        v365 = v455.__r_.__value_.__l.__size_;
                                                      }

                                                      v366 = std::string::append(__s, v364, v365);
                                                      v367 = *&v366->__r_.__value_.__l.__data_;
                                                      v456[0].__r_.__value_.__r.__words[2] = v366->__r_.__value_.__r.__words[2];
                                                      *&v456[0].__r_.__value_.__l.__data_ = v367;
                                                      v366->__r_.__value_.__l.__size_ = 0;
                                                      v366->__r_.__value_.__r.__words[2] = 0;
                                                      v366->__r_.__value_.__r.__words[0] = 0;
                                                      std::string::basic_string[abi:ne200100]<0>(&buf, "]");
                                                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                      {
                                                        v368 = &buf;
                                                      }

                                                      else
                                                      {
                                                        v368 = buf.__r_.__value_.__r.__words[0];
                                                      }

                                                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                      {
                                                        v369 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                      }

                                                      else
                                                      {
                                                        v369 = buf.__r_.__value_.__l.__size_;
                                                      }

                                                      v370 = std::string::append(v456, v368, v369);
                                                      v371 = *&v370->__r_.__value_.__l.__data_;
                                                      *&v458[16] = *(&v370->__r_.__value_.__l + 2);
                                                      *v458 = v371;
                                                      v370->__r_.__value_.__l.__size_ = 0;
                                                      v370->__r_.__value_.__r.__words[2] = 0;
                                                      v370->__r_.__value_.__r.__words[0] = 0;
                                                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                      {
                                                        operator delete(buf.__r_.__value_.__l.__data_);
                                                        if (SHIBYTE(v456[0].__r_.__value_.__r.__words[2]) < 0)
                                                        {
LABEL_1233:
                                                          operator delete(v456[0].__r_.__value_.__l.__data_);
                                                          if ((SHIBYTE(v455.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                          {
                                                            goto LABEL_1234;
                                                          }

                                                          goto LABEL_1239;
                                                        }
                                                      }

                                                      else if (SHIBYTE(v456[0].__r_.__value_.__r.__words[2]) < 0)
                                                      {
                                                        goto LABEL_1233;
                                                      }

                                                      if ((SHIBYTE(v455.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                      {
LABEL_1234:
                                                        if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                        {
                                                          goto LABEL_1235;
                                                        }

                                                        goto LABEL_1240;
                                                      }

LABEL_1239:
                                                      operator delete(v455.__r_.__value_.__l.__data_);
                                                      if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                      {
LABEL_1235:
                                                        operator delete(__s[0].__r_.__value_.__l.__data_);
                                                        if ((SHIBYTE(v457[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                        {
                                                          goto LABEL_1242;
                                                        }

LABEL_1241:
                                                        operator delete(v457[0].__r_.__value_.__l.__data_);
LABEL_1242:
                                                        v456[0].__r_.__value_.__r.__words[0] = v458;
                                                        v372 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v452, v458, &std::piecewise_construct, v456);
                                                        boost::any::operator=<unsigned char &>(v372 + 7, v436);
                                                      }

LABEL_1240:
                                                      if ((SHIBYTE(v457[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                      {
                                                        goto LABEL_1242;
                                                      }

                                                      goto LABEL_1241;
                                                    }

                                                    goto LABEL_964;
                                                  }

LABEL_958:
                                                  v245 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                  if (v245)
                                                  {
                                                    v246 = v245;
                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v246, OS_LOG_TYPE_INFO))
                                                    {
                                                      v247 = __s1;
                                                      if (*(__s1 + 23) < 0)
                                                      {
                                                        v247 = *__s1;
                                                      }

                                                      LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                      *(v436[0].__r_.__value_.__r.__words + 4) = v247;
                                                      _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                    }
                                                  }

                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                  {
                                                    [PowerEventHandler_Rcp init:];
                                                  }

                                                  *&v452[16] = 0;
                                                  *&v452[8] = 0;
                                                  *v452 = &v452[8];
                                                  v465.__r_.__value_.__s.__data_[0] = -12;
                                                  PTB = otPlatVendorGetDeepSleepRegionLogLevels(v422[28], v436, &v465);
                                                  if (PTB)
                                                  {
                                                    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v452, *&v452[8]);
LABEL_1283:
                                                    IfsAckDataPerNeighbor = PTB;
                                                    goto LABEL_299;
                                                  }

                                                  if (!v465.__r_.__value_.__s.__data_[0])
                                                  {
                                                    boost::any::any<std::map<std::string,boost::any> &>(v458, v452);
                                                  }

                                                  std::string::basic_string[abi:ne200100]<0>(v457, "[");
                                                  v350 = std::string::insert(v457, 0, "DeepSleepRegionLogLevel");
                                                  v351 = *&v350->__r_.__value_.__l.__data_;
                                                  __s[0].__r_.__value_.__r.__words[2] = v350->__r_.__value_.__r.__words[2];
                                                  *&__s[0].__r_.__value_.__l.__data_ = v351;
                                                  v350->__r_.__value_.__l.__size_ = 0;
                                                  v350->__r_.__value_.__r.__words[2] = 0;
                                                  v350->__r_.__value_.__r.__words[0] = 0;
                                                  std::to_string(&v455, 0);
                                                  if ((v455.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                  {
                                                    v352 = &v455;
                                                  }

                                                  else
                                                  {
                                                    v352 = v455.__r_.__value_.__r.__words[0];
                                                  }

                                                  if ((v455.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                  {
                                                    v353 = HIBYTE(v455.__r_.__value_.__r.__words[2]);
                                                  }

                                                  else
                                                  {
                                                    v353 = v455.__r_.__value_.__l.__size_;
                                                  }

                                                  v354 = std::string::append(__s, v352, v353);
                                                  v355 = *&v354->__r_.__value_.__l.__data_;
                                                  v456[0].__r_.__value_.__r.__words[2] = v354->__r_.__value_.__r.__words[2];
                                                  *&v456[0].__r_.__value_.__l.__data_ = v355;
                                                  v354->__r_.__value_.__l.__size_ = 0;
                                                  v354->__r_.__value_.__r.__words[2] = 0;
                                                  v354->__r_.__value_.__r.__words[0] = 0;
                                                  std::string::basic_string[abi:ne200100]<0>(&buf, "]");
                                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                  {
                                                    v356 = &buf;
                                                  }

                                                  else
                                                  {
                                                    v356 = buf.__r_.__value_.__r.__words[0];
                                                  }

                                                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                  {
                                                    v357 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                                                  }

                                                  else
                                                  {
                                                    v357 = buf.__r_.__value_.__l.__size_;
                                                  }

                                                  v358 = std::string::append(v456, v356, v357);
                                                  v359 = *&v358->__r_.__value_.__l.__data_;
                                                  *&v458[16] = *(&v358->__r_.__value_.__l + 2);
                                                  *v458 = v359;
                                                  v358->__r_.__value_.__l.__size_ = 0;
                                                  v358->__r_.__value_.__r.__words[2] = 0;
                                                  v358->__r_.__value_.__r.__words[0] = 0;
                                                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                  {
                                                    operator delete(buf.__r_.__value_.__l.__data_);
                                                    if (SHIBYTE(v456[0].__r_.__value_.__r.__words[2]) < 0)
                                                    {
LABEL_1199:
                                                      operator delete(v456[0].__r_.__value_.__l.__data_);
                                                      if ((SHIBYTE(v455.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                      {
                                                        goto LABEL_1200;
                                                      }

                                                      goto LABEL_1205;
                                                    }
                                                  }

                                                  else if (SHIBYTE(v456[0].__r_.__value_.__r.__words[2]) < 0)
                                                  {
                                                    goto LABEL_1199;
                                                  }

                                                  if ((SHIBYTE(v455.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                  {
LABEL_1200:
                                                    if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                    {
                                                      goto LABEL_1201;
                                                    }

                                                    goto LABEL_1206;
                                                  }

LABEL_1205:
                                                  operator delete(v455.__r_.__value_.__l.__data_);
                                                  if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
                                                  {
LABEL_1201:
                                                    operator delete(__s[0].__r_.__value_.__l.__data_);
                                                    if ((SHIBYTE(v457[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                    {
                                                      goto LABEL_1208;
                                                    }

LABEL_1207:
                                                    operator delete(v457[0].__r_.__value_.__l.__data_);
LABEL_1208:
                                                    v456[0].__r_.__value_.__r.__words[0] = v458;
                                                    v360 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v452, v458, &std::piecewise_construct, v456);
                                                    boost::any::operator=<unsigned char &>(v360 + 7, v436);
                                                  }

LABEL_1206:
                                                  if ((SHIBYTE(v457[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                                  {
                                                    goto LABEL_1208;
                                                  }

                                                  goto LABEL_1207;
                                                }

                                                goto LABEL_952;
                                              }

LABEL_946:
                                              v239 = log_get_logging_obg("com.apple.threadradiod", "default");
                                              if (v239)
                                              {
                                                v240 = v239;
                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v240, OS_LOG_TYPE_INFO))
                                                {
                                                  v241 = __s1;
                                                  if (*(__s1 + 23) < 0)
                                                  {
                                                    v241 = *__s1;
                                                  }

                                                  LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                  *(v436[0].__r_.__value_.__r.__words + 4) = v241;
                                                  _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                                }
                                              }

                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                              {
                                                [PowerEventHandler_Rcp init:];
                                              }

                                              std::string::basic_string[abi:ne200100]<0>(v436, "Srp:NetdataMode");
                                              *v452 = v436;
                                              v349 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v436[0].__r_.__value_.__l.__data_, &std::piecewise_construct, v452);
                                              boost::any::any<std::string &>(v458, (v349 + 7));
                                            }

LABEL_940:
                                            v236 = log_get_logging_obg("com.apple.threadradiod", "default");
                                            if (v236)
                                            {
                                              v237 = v236;
                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v237, OS_LOG_TYPE_INFO))
                                              {
                                                v238 = __s1;
                                                if (*(__s1 + 23) < 0)
                                                {
                                                  v238 = *__s1;
                                                }

                                                LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                                *(v436[0].__r_.__value_.__r.__words + 4) = v238;
                                                _os_log_impl(&_mh_execute_header, v237, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                              }
                                            }

                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                            {
                                              [PowerEventHandler_Rcp init:];
                                            }

                                            operator new();
                                          }

LABEL_934:
                                          v233 = log_get_logging_obg("com.apple.threadradiod", "default");
                                          if (v233)
                                          {
                                            v234 = v233;
                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v234, OS_LOG_TYPE_INFO))
                                            {
                                              v235 = __s1;
                                              if (*(__s1 + 23) < 0)
                                              {
                                                v235 = *__s1;
                                              }

                                              LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                              *(v436[0].__r_.__value_.__r.__words + 4) = v235;
                                              _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
                                            }
                                          }

                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                          {
                                            [PowerEventHandler_Rcp init:];
                                          }

                                          if (!otPlatVendorGetVersion(v422[28], v436, 500))
                                          {
                                            std::string::basic_string[abi:ne200100]<0>(v452, v436);
                                            if ((v452[23] & 0x80000000) != 0)
                                            {
                                              if (!*&v452[8])
                                              {
                                                IfsAckDataPerNeighbor = 1;
                                                operator delete(*v452);
                                                goto LABEL_299;
                                              }
                                            }

                                            else if (!v452[23])
                                            {
                                              goto LABEL_300;
                                            }

                                            boost::any::any<std::string &>(v458, v452);
                                          }

LABEL_300:
                                          operator new();
                                        }

                                        goto LABEL_928;
                                      }

LABEL_924:
                                      VersionString = otGetVersionString();
                                      std::string::basic_string[abi:ne200100]<0>(v436, VersionString);
                                      v228 = HIBYTE(v436[0].__r_.__value_.__r.__words[2]);
                                      v229 = HIBYTE(v436[0].__r_.__value_.__r.__words[2]);
                                      if ((v436[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                      {
                                        v228 = v436[0].__r_.__value_.__l.__size_;
                                      }

                                      if (v228)
                                      {
                                        boost::any::any<std::string &>(v452, v436);
                                      }

                                      goto LABEL_1432;
                                    }

LABEL_920:
                                    v458[0] = 0;
                                    otLinkGetJoinerRssiHistogram(v422[28], v458);
                                    HostInterpreter::GetJoinerRssiHistogramAsValMap(v436, v458[0]);
                                    boost::any::any<std::map<std::string,boost::any> &>(v452, v436);
                                  }

                                  goto LABEL_915;
                                }

LABEL_911:
                                otLinkGetCslRequestAhead(v422[28]);
                                v225 = log_get_logging_obg("com.apple.threadradiod", "default");
                                if (v225)
                                {
                                  v226 = v225;
                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v226, OS_LOG_TYPE_INFO))
                                  {
                                    LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                    *(v436[0].__r_.__value_.__r.__words + 4) = "vendor:csl:tx:schedframe:reqahead:timeinus";
                                    _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v436, 0xCu);
                                  }
                                }

                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                {
                                  [PowerEventHandler_Rcp init:];
                                }

                                operator new();
                              }

                              goto LABEL_906;
                            }

LABEL_902:
                            otLinkGetMleAdvTxNum(v422[28]);
                            v222 = log_get_logging_obg("com.apple.threadradiod", "default");
                            if (v222)
                            {
                              v223 = v222;
                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v223, OS_LOG_TYPE_INFO))
                              {
                                LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
                                *(v436[0].__r_.__value_.__r.__words + 4) = "vendor:mle:adv:tx:num";
                                _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_INFO, "HI:PG0:%s]", v436, 0xCu);
                              }
                            }

                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                            {
                              [PowerEventHandler_Rcp init:];
                            }

                            operator new();
                          }

LABEL_901:
                          otLinkGetCounters(v422[28]);
                          HostInterpreter::GetMacCountersAsValMap(v436);
                        }

LABEL_900:
                        otAppGetCounters(v422[28]);
                        otAppUpdateMatterSubscriptionCountHistogram(v422[28]);
                        HostInterpreter::GetMatterSubscriptionHistogramsAsValMap(v436);
                      }

LABEL_898:
                      otThreadGetIp6Counters(v422[28]);
                      otAppGetCounters(v422[28]);
                      HostInterpreter::GetOtIpCountersAsValMap(v436);
                    }

LABEL_899:
                    v436[0].__r_.__value_.__r.__words[0] = v436;
                    v436[0].__r_.__value_.__l.__size_ = v436;
                    v436[0].__r_.__value_.__r.__words[2] = 0;
                    HostInterpreter::GetNeighborTriggerBasedCounters(v422, v436);
                    boost::any::any<std::list<std::map<std::string,boost::any>> &>(v452, v436);
                  }

LABEL_897:
                  otThreadGetMleCounters(v422[28]);
                  HostInterpreter::GetMleOtCountersAsValMap(v436);
                }

LABEL_896:
                MleLinkLossCounters = otThreadGetMleLinkLossCounters(v422[28]);
                *&v436[0].__r_.__value_.__r.__words[1] = 0uLL;
                v436[0].__r_.__value_.__r.__words[0] = &v436[0].__r_.__value_.__l.__size_;
                std::string::basic_string[abi:ne200100]<0>(v452, "link_loss_nbr_child_count");
                *v458 = v452;
                v221 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v436, v452, &std::piecewise_construct, v458);
                boost::any::operator=<unsigned short &>(v221 + 7, MleLinkLossCounters);
              }

LABEL_889:
              BbrCounters = otThreadGetBbrCounters(v422[28]);
              *&v436[0].__r_.__value_.__r.__words[1] = 0uLL;
              v436[0].__r_.__value_.__r.__words[0] = &v436[0].__r_.__value_.__l.__size_;
              std::string::basic_string[abi:ne200100]<0>(v452, "bbr_primary_count");
              *v458 = v452;
              v219 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v436, v452, &std::piecewise_construct, v458);
              boost::any::operator=<unsigned short &>(v219 + 7, BbrCounters);
            }

LABEL_880:
            v458[0] = 0;
            v456[0].__r_.__value_.__s.__data_[0] = 0;
            otThreadGetConnectedChildNodesHistogram(v422[28], v458);
            otThreadGetConnectedRouterNodesHistogram(v422[28], v456);
            HostInterpreter::GetNeighborsCountAsValMap(v436, v458[0], v456[0].__r_.__value_.__s.__data_[0]);
            boost::any::any<std::map<std::string,boost::any> &>(v452, v436);
          }

LABEL_881:
          HostInterpreter::GetLeaderReelectCountersAsValMap(v436);
        }

LABEL_878:
        if (!otPlatVendorGenerateStackOverflow())
        {
          v216 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v216)
          {
            v217 = v216;
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v217, OS_LOG_TYPE_INFO))
            {
              LOWORD(v436[0].__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_INFO, "StackOverflow", v436, 2u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }

          std::string::basic_string[abi:ne200100]<0>(v436, "StackOverflow triggered");
          operator new();
        }

        goto LABEL_300;
      }

LABEL_869:
      if (!otPlatVendorGenerateHardFault())
      {
        v214 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v214)
        {
          v215 = v214;
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v215, OS_LOG_TYPE_INFO))
          {
            LOWORD(v436[0].__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_INFO, "HardFault", v436, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        std::string::basic_string[abi:ne200100]<0>(v436, "Hard fault triggered");
        operator new();
      }

      goto LABEL_300;
    }

    goto LABEL_861;
  }

LABEL_854:
  v211 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v211)
  {
    v212 = v211;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v212, OS_LOG_TYPE_INFO))
    {
      LODWORD(v436[0].__r_.__value_.__l.__data_) = 136315138;
      *(v436[0].__r_.__value_.__r.__words + 4) = "Thread:ActiveDataset:Bytes";
      _os_log_impl(&_mh_execute_header, v212, OS_LOG_TYPE_INFO, "HI:PG0:%s", v436, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  IfsAckDataPerNeighbor = otDatasetGetActiveTlvs(v422[28], v436);
  if (!IfsAckDataPerNeighbor)
  {
    nl::Data::Data(v452, v436, v447);
    boost::any::any<nl::Data &>(v458, v452);
  }

LABEL_299:
  if (IfsAckDataPerNeighbor)
  {
    goto LABEL_300;
  }

  return IfsAckDataPerNeighbor;
}

void sub_10012F0A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 560))
  {
    awdmetricsclient_convert_ValMap_to_xpc_object();
  }

  _Unwind_Resume(exception_object);
}

void sub_100131544()
{
  if (*(v0 + 495) < 0)
  {
    JUMPOUT(0x100131554);
  }

  JUMPOUT(0x100131580);
}

void sub_10013155C()
{
  if (*(v0 + 12359) < 0)
  {
    JUMPOUT(0x100131574);
  }

  JUMPOUT(0x1001315A0);
}

void sub_1001315CC(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v2 - 176, *(v2 - 168));
  v4 = *(v1 + 48);
  if (v4)
  {
    operator delete(v4);
    if (*(v2 - 129) < 0)
    {
LABEL_3:
      operator delete(*(v2 - 152));
      std::list<std::map<std::string,boost::any>>::~list((v2 - 128));
      _Unwind_Resume(a1);
    }
  }

  else if (*(v2 - 129) < 0)
  {
    goto LABEL_3;
  }

  std::list<std::map<std::string,boost::any>>::~list((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t HostInterpreter::ProcessPropertySet(HostInterpreter *this, unsigned __int8 a2, char **a3, char *a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v7 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a4;
      if (a4[23] < 0)
      {
        v8 = *a4;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "HI:PS:%s", &buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if ((a4[23] & 0x80000000) == 0)
  {
    if (strcmp(a4, "OpenThread:LogTimestampBase"))
    {
      if (strcmp(a4, "Network:PSKc"))
      {
        if (strcmp(a4, "Network:NodeType"))
        {
          if (strcmp(a4, "vendor:coex:preferredAntenna"))
          {
            if (strcmp(a4, "vendor:coex:scanFreqTable"))
            {
              if (strcmp(a4, "vendor:coex:CoTxPowerCap"))
              {
                if (strcmp(a4, "vendor:coex:radioload"))
                {
                  if (strcmp(a4, "vendor:coex:rcp2:state:collection"))
                  {
                    if (strcmp(a4, "vendor:coex:rcp2:state:table:reset"))
                    {
                      if (strcmp(a4, "vendor:power"))
                      {
                        if (strcmp(a4, "Thread:Pairing:Status"))
                        {
                          if (strcmp(a4, "Thread:FWUpdate"))
                          {
                            if (strcmp(a4, "Thread:EmacId"))
                            {
                              if (strcmp(a4, "StartCurrentNetworkDiscoveryScan"))
                              {
                                if (strcmp(a4, "NCP:TXPower"))
                                {
                                  if (strcmp(a4, "Thread:ActiveDataset:Bytes"))
                                  {
                                    if (strcmp(a4, "Interface:Up"))
                                    {
                                      if (strcmp(a4, "vendor:power:limit:table:active:id"))
                                      {
                                        if (strcmp(a4, "vendor:assert"))
                                        {
                                          if (strcmp(a4, "vendor:hard:reset:test"))
                                          {
                                            if (strcmp(a4, "vendor:mle:adv:tx:num"))
                                            {
                                              if (strcmp(a4, "Daemon:VirtualInterface:ReadBufferSize"))
                                              {
                                                if (strcmp(a4, "vendor:min:mac:interframedelay"))
                                                {
                                                  if (strcmp(a4, "vendor:csl:tx:schedframe:reqahead:timeinus"))
                                                  {
                                                    if (strcmp(a4, "vendor:neighbor:count:histogram"))
                                                    {
                                                      if (strcmp(a4, "vendor:bbr:counters"))
                                                      {
                                                        if (strcmp(a4, "vendor:linkloss:counters"))
                                                        {
                                                          if (strcmp(a4, "NCP:Counter:Thread:Mle"))
                                                          {
                                                            if (strcmp(a4, "NCP:Counter:AllIPv6"))
                                                            {
                                                              if (strcmp(a4, "NCP:Matter:Subscription:Histogram"))
                                                              {
                                                                if (strcmp(a4, "ca:reporting:enabled"))
                                                                {
                                                                  if (strcmp(a4, "streamRawRespTimeHistReset"))
                                                                  {
                                                                    if (strcmp(a4, "rcp2PcapStateReset"))
                                                                    {
                                                                      if (strcmp(a4, "NCP:Counter:AllMac"))
                                                                      {
                                                                        if (strcmp(a4, "vendor:radio:stats"))
                                                                        {
                                                                          if (strcmp(a4, "vendor:radio:counters"))
                                                                          {
                                                                            if (strcmp(a4, "vendor:joiner:RSSIHistogram"))
                                                                            {
                                                                              if (strcmp(a4, "vendor:deepsleep:filter:list"))
                                                                              {
                                                                                if (strcmp(a4, "vendor:deepsleep:loglevel"))
                                                                                {
                                                                                  if (strcmp(a4, "vendor:deepsleep:region:loglevels"))
                                                                                  {
                                                                                    if (strcmp(a4, "vendor:last:host:wake:reason"))
                                                                                    {
                                                                                      if (strcmp(a4, "vendor:MAC:packet:SizeHistogram"))
                                                                                      {
                                                                                        if (strcmp(a4, "vendor:MAC:packet:ErrorHistogram"))
                                                                                        {
                                                                                          if (strcmp(a4, "vendor:MAC:packet:LQIHistogram"))
                                                                                          {
                                                                                            if (strcmp(a4, "vendor:MAC:packet:RSSIHistogram"))
                                                                                            {
                                                                                              if (strcmp(a4, "NCP:MacRetryHistogram"))
                                                                                              {
                                                                                                if (strcmp(a4, "ResetAppAndRouteMetricsHistograms"))
                                                                                                {
                                                                                                  if (strcmp(a4, "UpdateAppAndRouteMetricsHistograms"))
                                                                                                  {
                                                                                                    if (strcmp(a4, "vendor:openthread:radio:counters"))
                                                                                                    {
                                                                                                      if (strcmp(a4, "vendor:cntr:stats:reset"))
                                                                                                      {
                                                                                                        if (strcmp(a4, "NCP:HostPowerState"))
                                                                                                        {
                                                                                                          if (strcmp(a4, "NCP:PcapEnabled"))
                                                                                                          {
                                                                                                            if (strcmp(a4, "Daemon:PromiscuousPcap"))
                                                                                                            {
                                                                                                              if (strcmp(a4, "Srp:NetdataMode"))
                                                                                                              {
                                                                                                                if (strcmp(a4, "UpdateLeaderInfo"))
                                                                                                                {
                                                                                                                  if (strcmp(a4, "NCP:Counter:Thread:Neighbor:TriggerBased"))
                                                                                                                  {
                                                                                                                    v9 = strcmp(a4, "Thread:Health:Metrics");
                                                                                                                    if (v9)
                                                                                                                    {
                                                                                                                      if (strcmp(a4, "Leader:Reelect:Counters"))
                                                                                                                      {
                                                                                                                        v10 = a4;
                                                                                                                        if (strcmp(a4, "bt_state_change"))
                                                                                                                        {
LABEL_69:
                                                                                                                          if (!strcmp(v10, "ap_state"))
                                                                                                                          {
                                                                                                                            any_to_BOOL(a4 + 3);
                                                                                                                            std::string::basic_string[abi:ne200100]<0>(&buf, "ap_state");
                                                                                                                            operator new();
                                                                                                                          }

                                                                                                                          v11 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                                          if (v11)
                                                                                                                          {
                                                                                                                            if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                                                                                                                            {
                                                                                                                              HostInterpreter::ProcessPropertySet();
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                                          {
                                                                                                                            [PowerEventHandler_Rcp init:];
                                                                                                                          }

                                                                                                                          goto LABEL_558;
                                                                                                                        }

LABEL_133:
                                                                                                                        any_to_BOOL(a4 + 3);
                                                                                                                        std::string::basic_string[abi:ne200100]<0>(&buf, "bt_state_change");
                                                                                                                        operator new();
                                                                                                                      }

                                                                                                                      goto LABEL_590;
                                                                                                                    }

                                                                                                                    goto LABEL_589;
                                                                                                                  }

LABEL_577:
                                                                                                                  for (LOWORD(v135.__r_.__value_.__l.__data_) = 0; !otThreadGetNextNeighborInfo(*(this + 28), &v135, &buf); v142 = 0u)
                                                                                                                  {
                                                                                                                    v145 = 0u;
                                                                                                                    v144 = 0u;
                                                                                                                    v143 = 0u;
                                                                                                                  }

LABEL_347:
                                                                                                                  boost::function1<void,int>::operator()(a4 + 4);
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                goto LABEL_570;
                                                                                                              }

                                                                                                              goto LABEL_563;
                                                                                                            }

                                                                                                            goto LABEL_550;
                                                                                                          }

                                                                                                          goto LABEL_545;
                                                                                                        }

LABEL_541:
                                                                                                        v115 = any_to_int(a4 + 3);
                                                                                                        v116 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                                                        if (v116)
                                                                                                        {
                                                                                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
                                                                                                          {
                                                                                                            LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                                                                                            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v115;
                                                                                                            _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_INFO, "Set PowerState:%u", &buf, 8u);
                                                                                                          }
                                                                                                        }

                                                                                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                                                        {
                                                                                                          [PowerEventHandler_Rcp init:];
                                                                                                        }

                                                                                                        BufferSize = otPlatRadioSetHostPowerState(*(this + 28), v115);
                                                                                                        if (!BufferSize)
                                                                                                        {
                                                                                                          goto LABEL_558;
                                                                                                        }

                                                                                                        goto LABEL_255;
                                                                                                      }

                                                                                                      goto LABEL_539;
                                                                                                    }

                                                                                                    goto LABEL_537;
                                                                                                  }

LABEL_536:
                                                                                                  CoreAnalyticsHistogramMetricsHelper::ProcessAppAndRouteMetricsHistograms((this + 328));
                                                                                                  goto LABEL_558;
                                                                                                }

LABEL_535:
                                                                                                otAppResetAppAndRoutingMetricsHistograms(*(this + 28));
                                                                                                boost::function1<void,int>::operator()(a4 + 4);
                                                                                                return 0;
                                                                                              }

LABEL_534:
                                                                                              otLinkResetTxRetrySuccessHistogram(*(this + 28));
                                                                                              boost::function1<void,int>::operator()(a4 + 4);
                                                                                              return 0;
                                                                                            }

LABEL_533:
                                                                                            otLinkResetNeighborRssiHistogram(*(this + 28));
                                                                                            boost::function1<void,int>::operator()(a4 + 4);
                                                                                            return 0;
                                                                                          }

LABEL_532:
                                                                                          otLinkResetLqiHistogram(*(this + 28));
                                                                                          boost::function1<void,int>::operator()(a4 + 4);
                                                                                          return 0;
                                                                                        }

LABEL_531:
                                                                                        otLinkResetTxErrorHistogram(*(this + 28));
                                                                                        boost::function1<void,int>::operator()(a4 + 4);
                                                                                        return 0;
                                                                                      }

LABEL_530:
                                                                                      otLinkResetPacketSizeHistogram(*(this + 28));
                                                                                      boost::function1<void,int>::operator()(a4 + 4);
                                                                                      return 0;
                                                                                    }

                                                                                    goto LABEL_528;
                                                                                  }

                                                                                  goto LABEL_525;
                                                                                }

                                                                                goto LABEL_523;
                                                                              }

                                                                              goto LABEL_521;
                                                                            }

LABEL_520:
                                                                            otLinkResetJoinerRssiHistogram(*(this + 28));
                                                                            boost::function1<void,int>::operator()(a4 + 4);
                                                                            return 0;
                                                                          }

                                                                          goto LABEL_517;
                                                                        }

                                                                        goto LABEL_513;
                                                                      }

LABEL_511:
                                                                      otLinkResetCounters(*(this + 28));
                                                                      *(RcpHostContext::sRcpHostContext + 216 * (*(RcpHostContext::sRcpHostContext + 6136) & 3) + 6155) = 1;
                                                                      boost::function1<void,int>::operator()(a4 + 4);
                                                                      return 0;
                                                                    }

LABEL_496:
                                                                    otLinkResetPcapStateTable(*(this + 28));
                                                                    boost::function1<void,int>::operator()(a4 + 4);
                                                                    return 0;
                                                                  }

LABEL_494:
                                                                  BufferSize = otResetStreamRawResponseHistogram();
                                                                  if (BufferSize)
                                                                  {
                                                                    goto LABEL_255;
                                                                  }

LABEL_558:
                                                                  boost::function1<void,int>::operator()(a4 + 4);
                                                                  return 0;
                                                                }

LABEL_492:
                                                                v108 = any_to_uint64(a4 + 3, 0);
                                                                if (v108)
                                                                {
                                                                  *(RcpHostContext::sRcpHostContext + 5972) = 1;
                                                                  std::string::basic_string[abi:ne200100]<0>(&buf, "ca:reporting:enabled");
                                                                  v135.__r_.__value_.__r.__words[0] = &buf;
                                                                  v109 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_, &std::piecewise_construct, &v135);
                                                                  std::string::assign((v109 + 7), "1");
                                                                }

                                                                else
                                                                {
                                                                  *(RcpHostContext::sRcpHostContext + 5972) = 0;
                                                                  std::string::basic_string[abi:ne200100]<0>(&buf, "ca:reporting:enabled");
                                                                  v135.__r_.__value_.__r.__words[0] = &buf;
                                                                  v110 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_, &std::piecewise_construct, &v135);
                                                                  std::string::assign((v110 + 7), "0");
                                                                }

                                                                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                                {
                                                                  operator delete(buf.__r_.__value_.__l.__data_);
                                                                }

                                                                std::string::basic_string[abi:ne200100]<0>(&buf, "ca:reporting:enabled");
                                                                v135.__r_.__value_.__r.__words[0] = &buf;
                                                                v111 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_, &std::piecewise_construct, &v135);
                                                                v112 = (v111 + 7);
                                                                if (*(v111 + 79) < 0)
                                                                {
                                                                  v112 = *v112;
                                                                }

                                                                saveStringValue("ca:reporting:enabled", v112);
                                                                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                                {
                                                                  operator delete(buf.__r_.__value_.__l.__data_);
                                                                }

                                                                v113 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                                if (v113)
                                                                {
                                                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
                                                                  {
                                                                    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                                                    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v108;
                                                                    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "mEnableCaReporting=%d", &buf, 8u);
                                                                  }
                                                                }

                                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                                {
                                                                  [PowerEventHandler_Rcp init:];
                                                                }

                                                                goto LABEL_347;
                                                              }

LABEL_490:
                                                              otAppResetMatterSubscriptionCounts(*(this + 28));
                                                              boost::function1<void,int>::operator()(a4 + 4);
                                                              return 0;
                                                            }

LABEL_488:
                                                            otThreadResetIp6Counters(*(this + 28));
                                                            otThreadResetAppCounters(*(this + 28));
                                                            *(RcpHostContext::sRcpHostContext + 216 * (*(RcpHostContext::sRcpHostContext + 6136) & 3) + 6154) = 1;
                                                            boost::function1<void,int>::operator()(a4 + 4);
                                                            return 0;
                                                          }

LABEL_484:
                                                          otThreadResetMleCounters(*(this + 28));
                                                          boost::function1<void,int>::operator()(a4 + 4);
                                                          return 0;
                                                        }

LABEL_483:
                                                        otThreadResetMleLinkLossCounters(*(this + 28));
                                                        boost::function1<void,int>::operator()(a4 + 4);
                                                        return 0;
                                                      }

LABEL_475:
                                                      otThreadResetBbrCounters(*(this + 28));
                                                      v107 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                      if (v107)
                                                      {
                                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                                                        {
                                                          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                                                          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "ResetBBR counters", &buf, 2u);
                                                        }
                                                      }

                                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                      {
                                                        [PowerEventHandler_Rcp init:];
                                                      }

                                                      goto LABEL_558;
                                                    }

LABEL_470:
                                                    otThreadResetConnectedChildNodesHistogram(*(this + 28));
                                                    otThreadResetConnectedRouterNodesHistogram(*(this + 28));
                                                    boost::function1<void,int>::operator()(a4 + 4);
                                                    return 0;
                                                  }

LABEL_456:
                                                  v104 = any_to_uint64(a4 + 3, 0);
                                                  v105 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                  if (v105)
                                                  {
                                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
                                                    {
                                                      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                                      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v104;
                                                      _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_INFO, "csl:tx:schedframe:reqahead:timeinus %d", &buf, 8u);
                                                    }
                                                  }

                                                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                  {
                                                    [PowerEventHandler_Rcp init:];
                                                  }

                                                  BufferSize = otLinkSetCslRequestAhead(*(this + 28), v104);
                                                  if (!BufferSize)
                                                  {
                                                    persist_csl_request_ahead(v104);
                                                  }

                                                  goto LABEL_255;
                                                }

LABEL_448:
                                                v102 = any_to_uint64(a4 + 3, 0);
                                                v103 = log_get_logging_obg("com.apple.threadradiod", "default");
                                                if (v103)
                                                {
                                                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
                                                  {
                                                    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                                    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v102;
                                                    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "vendor:min:mac:interframedelay %d", &buf, 8u);
                                                  }
                                                }

                                                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                                {
                                                  [PowerEventHandler_Rcp init:];
                                                }

                                                BufferSize = otPlatRadioSetMinInterframeDelay(*(this + 28), v102);
                                                if (!BufferSize)
                                                {
                                                  boost::function1<void,int>::operator()(a4 + 4);
                                                  persist_interframe_delay(v102);
                                                }

                                                goto LABEL_255;
                                              }

LABEL_420:
                                              v97 = any_to_uint64(a4 + 3, 0);
                                              v98 = log_get_logging_obg("com.apple.threadradiod", "default");
                                              if (v98)
                                              {
                                                if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
                                                {
                                                  LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                                  HIDWORD(buf.__r_.__value_.__r.__words[0]) = v97;
                                                  _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "Daemon:VirtualInterface:ReadBufferSize %d", &buf, 8u);
                                                }
                                              }

                                              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                              {
                                                [PowerEventHandler_Rcp init:];
                                              }

                                              BufferSize = otSysSetThreadirtualInterfaceReadBufferSize(v97);
                                              if (!BufferSize)
                                              {
                                                persist_virtual_interface_readbuffersize(v97);
                                              }

                                              goto LABEL_255;
                                            }

LABEL_412:
                                            v95 = any_to_uint64(a4 + 3, 0);
                                            v96 = log_get_logging_obg("com.apple.threadradiod", "default");
                                            if (v96)
                                            {
                                              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
                                              {
                                                LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                                HIDWORD(buf.__r_.__value_.__r.__words[0]) = v95;
                                                _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, "mle:adv:tx:num %d", &buf, 8u);
                                              }
                                            }

                                            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                            {
                                              [PowerEventHandler_Rcp init:];
                                            }

                                            BufferSize = otLinkSetMleAdvTxNum(*(this + 28), v95);
                                            if (!BufferSize)
                                            {
                                              persist_num_mle_adv(v95);
                                            }

                                            goto LABEL_255;
                                          }

LABEL_393:
                                          v90 = any_to_uint64(a4 + 3, 0);
                                          v91 = log_get_logging_obg("com.apple.threadradiod", "default");
                                          if (v91)
                                          {
                                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
                                            {
                                              LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                              HIDWORD(buf.__r_.__value_.__r.__words[0]) = v90;
                                              _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "Set hardResetTestMode:%u", &buf, 8u);
                                            }
                                          }

                                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                          {
                                            [PowerEventHandler_Rcp init:];
                                          }

                                          BufferSize = otPlatVendorSetHardResetTest(*(this + 28), v90);
                                          if (!BufferSize)
                                          {
                                            goto LABEL_558;
                                          }

                                          goto LABEL_255;
                                        }

LABEL_369:
                                        v84 = any_to_uint64(a4 + 3, 0);
                                        v85 = log_get_logging_obg("com.apple.threadradiod", "default");
                                        if (v85)
                                        {
                                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                                          {
                                            LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v84;
                                            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "vendor:assert %d", &buf, 8u);
                                          }
                                        }

                                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                        {
                                          [PowerEventHandler_Rcp init:];
                                        }

                                        BufferSize = otPlatVendorSetAssert(*(this + 28), v84);
                                        if (!BufferSize)
                                        {
                                          goto LABEL_558;
                                        }

                                        goto LABEL_255;
                                      }

LABEL_363:
                                      *(this + 336) = any_to_int(a4 + 3);
                                      v82 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v82)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
                                        {
                                          v83 = *(this + 336);
                                          LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                                          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v83;
                                          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "vendor:power:limit:table:active:id==activeId[%d]", &buf, 8u);
                                        }
                                      }

                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        [PowerEventHandler_Rcp init:];
                                      }

                                      BufferSize = otPlatVendorSetPowerLimitTableActiveId(*(this + 28), *(this + 336));
                                      if (!BufferSize)
                                      {
                                        goto LABEL_558;
                                      }

                                      goto LABEL_255;
                                    }

LABEL_357:
                                    v78 = any_to_BOOL(a4 + 3);
                                    RcpHostContext::get_rcp_state(&buf, RcpHostContext::sRcpHostContext);
                                    v79 = log_get_logging_obg("com.apple.threadradiod", "default");
                                    if (v79)
                                    {
                                      is_the_mask_enabled = syslog_is_the_mask_enabled(6);
                                      if (is_the_mask_enabled)
                                      {
                                        is_the_mask_enabled = os_log_type_enabled(v79, OS_LOG_TYPE_INFO);
                                        if (is_the_mask_enabled)
                                        {
                                          p_buf = &buf;
                                          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                          {
                                            p_buf = buf.__r_.__value_.__r.__words[0];
                                          }

                                          LODWORD(v135.__r_.__value_.__l.__data_) = 136315138;
                                          *(v135.__r_.__value_.__r.__words + 4) = p_buf;
                                          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "CurrentRCPState = %s", &v135, 0xCu);
                                        }
                                      }
                                    }

                                    else
                                    {
                                      is_the_mask_enabled = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                                      if (is_the_mask_enabled)
                                      {
                                        [PowerEventHandler_Rcp init:];
                                      }
                                    }

                                    if (v78)
                                    {
                                      RcpHostContext::init_threadstart_radio_start(RcpHostContext::sRcpHostContext);
                                      otIp6SetSlaacEnabled(*(this + 28), 1);
                                      BufferSize = otIp6SetEnabled(*(this + 28), 1);
                                      if (BufferSize)
                                      {
                                        goto LABEL_251;
                                      }

                                      v86 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v86)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
                                        {
                                          v135.__r_.__value_.__r.__words[0] = 0x104000100;
                                          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "SetProp interfaceUp = %d", &v135, 8u);
                                        }
                                      }

                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        [PowerEventHandler_Rcp init:];
                                      }

                                      BufferSize = otThreadSetEnabled(*(this + 28), 1);
                                      if (BufferSize)
                                      {
                                        goto LABEL_251;
                                      }

                                      LinkMode = otThreadGetLinkMode(*(this + 28));
                                      if ((~LinkMode & 6) == 0 && (LinkMode & 1) == 0)
                                      {
                                        otThreadBecomeLeader(*(this + 28), 0);
                                      }

                                      v100 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v100)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
                                        {
                                          LOWORD(v135.__r_.__value_.__l.__data_) = 0;
                                          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_INFO, "HI:ThreadStart,Done", &v135, 2u);
                                        }
                                      }

                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        [PowerEventHandler_Rcp init:];
                                      }

                                      HostInterpreter::saveExtendedMACAddressIfNotAvailableinDB(this);
                                      HostInterpreter::transactionEnabled(v106, 1);
                                    }

                                    else
                                    {
                                      HostInterpreter::transactionEnabled(is_the_mask_enabled, 0);
                                      otIp6SetSlaacEnabled(*(this + 28), 0);
                                      BufferSize = otThreadSetEnabled(*(this + 28), 0);
                                      if (BufferSize)
                                      {
                                        goto LABEL_251;
                                      }

                                      v87 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v87)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                                        {
                                          LOWORD(v135.__r_.__value_.__l.__data_) = 0;
                                          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "HI:ThreadStop,Done", &v135, 2u);
                                        }
                                      }

                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        [PowerEventHandler_Rcp init:];
                                      }

                                      BufferSize = otIp6SetEnabled(*(this + 28), 0);
                                      if (BufferSize)
                                      {
                                        goto LABEL_251;
                                      }

                                      v101 = log_get_logging_obg("com.apple.threadradiod", "default");
                                      if (v101)
                                      {
                                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
                                        {
                                          v135.__r_.__value_.__r.__words[0] = 67109120;
                                          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "SetProp interfaceUp=%d", &v135, 8u);
                                        }
                                      }

                                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        [PowerEventHandler_Rcp init:];
                                      }
                                    }

                                    goto LABEL_469;
                                  }

                                  goto LABEL_349;
                                }

LABEL_314:
                                v135.__r_.__value_.__s.__data_[0] = 0;
                                any_to_string(&buf, a4 + 3);
                                if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                {
                                  v73 = &buf;
                                }

                                else
                                {
                                  v73 = buf.__r_.__value_.__r.__words[0];
                                }

                                BufferSize = ot::Utils::CmdLineParser::ParseAsInt8(v73, &v135, v72);
                                if (!BufferSize)
                                {
                                  BufferSize = otPlatRadioSetTransmitPower(*(this + 28), v135.__r_.__value_.__s.__data_[0]);
                                  if (!BufferSize)
                                  {
                                    persist_tx_power(v135.__r_.__value_.__s.__data_[0]);
                                  }
                                }

                                goto LABEL_251;
                              }

LABEL_308:
                              any_to_string(&buf, a4 + 3);
                              if (otPlatRadioGetRcp2Vendor2Enabled())
                              {
                                v71 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "quick-scan");
                              }

                              else
                              {
                                v71 = 0;
                              }

                              BufferSize = HostInterpreter::ProcessDiscoverScanForCurrentNetwork(this, v71);
                              if (!BufferSize)
                              {
                                boost::function1<void,int>::operator()(a4 + 4);
                              }

                              goto LABEL_251;
                            }

LABEL_302:
                            any_to_string(&buf, a4 + 3);
                            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                            {
                              if (buf.__r_.__value_.__l.__size_)
                              {
                                v70 = buf.__r_.__value_.__r.__words[0];
LABEL_322:
                                BufferSize = ot::Utils::CmdLineParser::ParseAsHexString(v70, &v137, 8);
                                if (!BufferSize)
                                {
                                  otLinkSetPairingDeviceExtAddr(*(this + 28), &v137);
                                  v74 = log_get_logging_obg("com.apple.threadradiod", "default");
                                  if (v74)
                                  {
                                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
                                    {
                                      v75 = &buf;
                                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                      {
                                        v75 = buf.__r_.__value_.__r.__words[0];
                                      }

                                      LODWORD(v135.__r_.__value_.__l.__data_) = 136315138;
                                      *(v135.__r_.__value_.__r.__words + 4) = v75;
                                      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "HI:PropThreadEmacId:%s", &v135, 0xCu);
                                    }

                                    goto LABEL_469;
                                  }

                                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                  {
                                    goto LABEL_355;
                                  }

                                  goto LABEL_469;
                                }

LABEL_251:
                                if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                {
                                  goto LABEL_254;
                                }

                                v23 = buf.__r_.__value_.__r.__words[0];
                                goto LABEL_253;
                              }
                            }

                            else if (*(&buf.__r_.__value_.__s + 23))
                            {
                              v70 = &buf;
                              goto LABEL_322;
                            }

                            otLinkSetPairingDeviceExtAddr(*(this + 28), 0);
                            goto LABEL_469;
                          }

LABEL_293:
                          *(this + 171) = any_to_BOOL(a4 + 3);
                          v67 = log_get_logging_obg("com.apple.threadradiod", "default");
                          if (v67)
                          {
                            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                            {
                              v68 = *(this + 171);
                              LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                              HIDWORD(buf.__r_.__value_.__r.__words[0]) = v68;
                              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "HI:kWPANTUNDProperty_ThreadFWUpdate fwUpdate=[%d]", &buf, 8u);
                            }
                          }

                          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                          {
                            [PowerEventHandler_Rcp init:];
                          }

                          BufferSize = otThreadSetFirmwareUpdate(*(this + 28), *(this + 171));
                          if (!BufferSize)
                          {
                            goto LABEL_558;
                          }

                          goto LABEL_255;
                        }

LABEL_267:
                        *(this + 170) = any_to_BOOL(a4 + 3);
                        v61 = log_get_logging_obg("com.apple.threadradiod", "default");
                        if (v61)
                        {
                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                          {
                            v62 = *(this + 170);
                            LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v62;
                            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "HI:kWPANTUNDProperty_ThreadPairingStatus pairingStatus=[%d]", &buf, 8u);
                          }
                        }

                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                        {
                          [PowerEventHandler_Rcp init:];
                        }

                        goto LABEL_558;
                      }

LABEL_258:
                      v137.__r_.__value_.__s.__data_[0] = 0;
                      any_to_string(&buf, a4 + 3);
                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v59 = &buf;
                      }

                      else
                      {
                        v59 = buf.__r_.__value_.__r.__words[0];
                      }

                      BufferSize = ot::Utils::CmdLineParser::ParseAsInt8(v59, &v137, v58);
                      if (BufferSize)
                      {
                        goto LABEL_251;
                      }

                      BufferSize = otPlatVendorSetPower(*(this + 28), &v137);
                      if (BufferSize)
                      {
                        goto LABEL_251;
                      }

                      v60 = log_get_logging_obg("com.apple.threadradiod", "default");
                      if (v60)
                      {
                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                        {
                          LODWORD(v135.__r_.__value_.__l.__data_) = 134217984;
                          *(v135.__r_.__value_.__r.__words + 4) = vcvtd_n_f64_s32(v137.__r_.__value_.__s.__data_[0], 2uLL);
                          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "HI:PropSetVendorPower=%f dBm", &v135, 0xCu);
                        }

                        goto LABEL_469;
                      }

                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
LABEL_355:
                        [PowerEventHandler_Rcp init:];
                      }

LABEL_469:
                      boost::function1<void,int>::operator()(a4 + 4);
                      BufferSize = 0;
                      goto LABEL_251;
                    }

LABEL_227:
                    if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 || (BufferSize = otPlatVendorResetOrStopCoexCollection(*(this + 28), 1), !BufferSize))
                    {
                      v50 = log_get_logging_obg("com.apple.threadradiod", "default");
                      if (v50)
                      {
                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                        {
                          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Clear coex counters but continue the data collection", &buf, 2u);
                        }
                      }

                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        [PowerEventHandler_Rcp init:];
                      }

                      goto LABEL_558;
                    }

                    goto LABEL_255;
                  }

LABEL_222:
                  v47 = any_to_BOOL(a4 + 3);
                  v48 = log_get_logging_obg("com.apple.threadradiod", "default");
                  v49 = v48;
                  if (v47)
                  {
                    if (v48)
                    {
                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                        *(buf.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
                        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "%s Clear the counters and start coex counter collection.", &buf, 0xCu);
                      }
                    }

                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      [PowerEventHandler_Rcp init:];
                    }

                    if (otPlatRadioGetRcp2Vendor2Enabled())
                    {
                      goto LABEL_558;
                    }

                    v66 = otPlatVendorResetOrStopCoexCollection(*(this + 28), 1);
                  }

                  else
                  {
                    if (v48)
                    {
                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                        *(buf.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
                        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "%s Stop coex counter collection.", &buf, 0xCu);
                      }
                    }

                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      [PowerEventHandler_Rcp init:];
                    }

                    if (otPlatRadioGetRcp2Vendor2Enabled())
                    {
                      goto LABEL_558;
                    }

                    v66 = otPlatVendorResetOrStopCoexCollection(*(this + 28), 0);
                  }

                  BufferSize = v66;
                  if (v66)
                  {
                    goto LABEL_255;
                  }

                  goto LABEL_558;
                }

LABEL_183:
                v32 = any_to_uint64(a4 + 3, 0);
                v33 = log_get_logging_obg("com.apple.threadradiod", "default");
                if (v33)
                {
                  if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                  {
                    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
                    *(buf.__r_.__value_.__r.__words + 4) = v32;
                    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "BT Load: Vendor:coex:RadioLoad is 0x%llx", &buf, 0xCu);
                  }
                }

                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  [PowerEventHandler_Rcp init:];
                }

                isCoexLoadSimulationEnabled = RcpHostContext::isCoexLoadSimulationEnabled(RcpHostContext::sRcpHostContext);
                if (isCoexLoadSimulationEnabled)
                {
                  isCoexLoadSimulationEnabled = HostInterpreter::isSimulatedCoexLoad(isCoexLoadSimulationEnabled, v32);
                  if (!isCoexLoadSimulationEnabled)
                  {
                    return 0;
                  }
                }

                *(this + 22) = v32;
                HostInterpreter::generateBTWIFIAudioLoadCAEventToTNM(isCoexLoadSimulationEnabled, v32);
                isAudioNoThreadFeatureEnabled = RcpHostContext::isAudioNoThreadFeatureEnabled(RcpHostContext::sRcpHostContext);
                if (isAudioNoThreadFeatureEnabled)
                {
                  *(this + 184) = HostInterpreter::isAudioEscoLeaScoAos(isAudioNoThreadFeatureEnabled, v32);
                  v53 = log_get_logging_obg("com.apple.threadradiod", "default");
                  if (v53)
                  {
                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                    {
                      v54 = *(this + 184);
                      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                      *(buf.__r_.__value_.__r.__words + 4) = "otError HostInterpreter::ProcessPropertySet(uint8_t, char **, void *)";
                      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
                      *(&buf.__r_.__value_.__r.__words[1] + 6) = v54;
                      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "%s, BT Load, Audio detection: BTAudioCallStatus is %d", &buf, 0x12u);
                    }
                  }

                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [PowerEventHandler_Rcp init:];
                  }

                  if ((*(this + 170) & 1) == 0)
                  {
                    v63 = *(this + 184);
                    v64 = HostInterpreter::anyThreadSessionEnabled(this);
                    if (v63)
                    {
                      if (v64)
                      {
                        v65 = log_get_logging_obg("com.apple.threadradiod", "default");
                        if (v65)
                        {
                          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                          {
                            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                            *(buf.__r_.__value_.__r.__words + 4) = "otError HostInterpreter::ProcessPropertySet(uint8_t, char **, void *)";
                            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "%s, BT Load, Audio detection: Thread is ON and eSCO is happening, stop thread and notify HK", &buf, 0xCu);
                          }
                        }

                        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                        {
                          [PowerEventHandler_Rcp init:];
                        }

                        std::string::basic_string[abi:ne200100]<0>(&buf, "bt_airpod_esco");
                        operator new();
                      }
                    }

                    else if (!v64)
                    {
                      v69 = log_get_logging_obg("com.apple.threadradiod", "default");
                      if (v69)
                      {
                        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                        {
                          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                          *(buf.__r_.__value_.__r.__words + 4) = "otError HostInterpreter::ProcessPropertySet(uint8_t, char **, void *)";
                          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "%s, BT Load, Audio detection: eSCO is done, notify HK", &buf, 0xCu);
                        }
                      }

                      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        [PowerEventHandler_Rcp init:];
                      }

                      std::string::basic_string[abi:ne200100]<0>(&buf, "bt_airpod_esco");
                      operator new();
                    }
                  }
                }

                otLinkSetCoexLoadMap(*(this + 28), v32);
                if (!HostInterpreter::anyThreadSessionEnabled(this))
                {
                  v76 = log_get_logging_obg("com.apple.threadradiod", "default");
                  if (v76)
                  {
                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
                    {
                      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                      *(buf.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
                      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "BT Load: %s Receive coex load value when Thread is offline.", &buf, 0xCu);
                    }
                  }

                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [PowerEventHandler_Rcp init:];
                  }
                }

                goto LABEL_347;
              }

LABEL_180:
              if (otPlatRadioGetRcp2Vendor2Enabled())
              {
                any_to_string(&buf, a4 + 3);
                boost::function1<void,int>::operator()(a4 + 4);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              return 0;
            }

LABEL_167:
            strcpy(v133, "d");
            any_to_string(&v137, a4 + 3);
            v27 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v27)
            {
              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v29 = &v137;
                if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v29 = v137.__r_.__value_.__r.__words[0];
                }

                LODWORD(v135.__r_.__value_.__l.__data_) = 136315650;
                *(v135.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
                WORD2(v135.__r_.__value_.__r.__words[1]) = 2080;
                *(&v135.__r_.__value_.__r.__words[1] + 6) = v29;
                HIWORD(v135.__r_.__value_.__r.__words[2]) = 1024;
                v136 = 0;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s WRM Notified Scan Table : %s,  error[%d]", &v135, 0x1Cu);
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [PowerEventHandler_Rcp init:];
            }

            if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v34 = &v137;
            }

            else
            {
              v34 = v137.__r_.__value_.__r.__words[0];
            }

            BufferSize = ot::Utils::CmdLineParser::ParseAsHexString(v34, v133, &buf, v28);
            v35 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v35)
            {
              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                LODWORD(v135.__r_.__value_.__l.__data_) = 136315650;
                *(v135.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
                WORD2(v135.__r_.__value_.__r.__words[1]) = 1024;
                *(&v135.__r_.__value_.__r.__words[1] + 6) = *v133;
                WORD1(v135.__r_.__value_.__r.__words[2]) = 1024;
                HIDWORD(v135.__r_.__value_.__r.__words[2]) = buf.__r_.__value_.__s.__data_[0];
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s parse scan table : %d, [%x] ", &v135, 0x18u);
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [PowerEventHandler_Rcp init:];
            }

            v36 = buf.__r_.__value_.__s.__data_[0];
            if (((2 * buf.__r_.__value_.__s.__data_[0]) | 1) != *v133)
            {
              *v133 = buf.__r_.__value_.__s.__data_[0];
              if (buf.__r_.__value_.__s.__data_[0])
              {
                v132 = this;
                v37 = 0;
                v38 = &buf.__r_.__value_.__s.__data_[2];
                do
                {
                  v39 = __rev16(*(v38 - 1));
                  v139[v37] = v39;
                  v40 = log_get_logging_obg("com.apple.threadradiod", "default");
                  if (v40)
                  {
                    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                    {
                      LODWORD(v135.__r_.__value_.__l.__data_) = 136315650;
                      *(v135.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
                      WORD2(v135.__r_.__value_.__r.__words[1]) = 1024;
                      *(&v135.__r_.__value_.__r.__words[1] + 6) = v37;
                      WORD1(v135.__r_.__value_.__r.__words[2]) = 1024;
                      HIDWORD(v135.__r_.__value_.__r.__words[2]) = v39;
                      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s scanLow : %d, [%d] ", &v135, 0x18u);
                    }
                  }

                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v135.__r_.__value_.__l.__data_) = 136315394;
                    *(v135.__r_.__value_.__r.__words + 4) = "com.apple.wpantund.ncp";
                    WORD2(v135.__r_.__value_.__r.__words[1]) = 2080;
                    *(&v135.__r_.__value_.__r.__words[1] + 6) = "default";
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", &v135, 0x16u);
                  }

                  v38 += 2;
                  ++v37;
                  v36 = v133[0];
                }

                while (v37 < *v133);
                if (*v133)
                {
                  v41 = 0;
                  v42 = &buf.__r_.__value_.__s.__data_[2 * (v133[0] & 0x7F) + 2];
                  do
                  {
                    v43 = __rev16(*(v42 - 1));
                    v138[v41] = v43;
                    v44 = log_get_logging_obg("com.apple.threadradiod", "default");
                    if (v44)
                    {
                      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(v135.__r_.__value_.__l.__data_) = 136315650;
                        *(v135.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
                        WORD2(v135.__r_.__value_.__r.__words[1]) = 1024;
                        *(&v135.__r_.__value_.__r.__words[1] + 6) = v41;
                        WORD1(v135.__r_.__value_.__r.__words[2]) = 1024;
                        HIDWORD(v135.__r_.__value_.__r.__words[2]) = v43;
                        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s scanHigh : %d, [%d] ", &v135, 0x18u);
                      }
                    }

                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v135.__r_.__value_.__l.__data_) = 136315394;
                      *(v135.__r_.__value_.__r.__words + 4) = "com.apple.wpantund.ncp";
                      WORD2(v135.__r_.__value_.__r.__words[1]) = 2080;
                      *(&v135.__r_.__value_.__r.__words[1] + 6) = "default";
                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", &v135, 0x16u);
                    }

                    v42 += 2;
                    ++v41;
                    v36 = v133[0];
                  }

                  while (v41 < *v133);
                }

                this = v132;
              }

              v45 = otPlatVendorSetMWSFrequencyTable(*(this + 28), v36, v139, v138);
              v46 = *(a4 + 4);
              if (!v46)
              {
                std::runtime_error::runtime_error(&v135, "call to empty boost::function");
                v135.__r_.__value_.__r.__words[0] = off_1004C1548;
                boost::throw_exception<boost::bad_function_call>(&v135);
              }

              BufferSize = v45;
              (*((v46 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 40, 0);
            }

            if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_254:
              if (!BufferSize)
              {
                return BufferSize;
              }

              goto LABEL_255;
            }

            v23 = v137.__r_.__value_.__r.__words[0];
LABEL_253:
            operator delete(v23);
            goto LABEL_254;
          }

LABEL_158:
          any_to_string(&buf, a4 + 3);
          LOWORD(v137.__r_.__value_.__l.__data_) = 0;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &buf;
          }

          else
          {
            v25 = buf.__r_.__value_.__r.__words[0];
          }

          BufferSize = ot::Utils::CmdLineParser::ParseAsUint16(v25, &v137, v24);
          if (!BufferSize)
          {
            if (getCoreBTState())
            {
              goto LABEL_249;
            }

            v26 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v26)
            {
              if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                LODWORD(v135.__r_.__value_.__l.__data_) = 136315394;
                *(v135.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
                WORD2(v135.__r_.__value_.__r.__words[1]) = 1024;
                *(&v135.__r_.__value_.__r.__words[1] + 6) = LOWORD(v137.__r_.__value_.__l.__data_);
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s WRM notifies to switch Preferred Antenna :%d ", &v135, 0x12u);
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [PowerEventHandler_Rcp init:];
            }

            BufferSize = otPlatVendorSetPreferredAntenna(*(this + 28), v137.__r_.__value_.__l.__data_);
            if (!BufferSize)
            {
LABEL_249:
              v55 = *(a4 + 4);
              if (!v55)
              {
                std::runtime_error::runtime_error(&v135, "call to empty boost::function");
                v135.__r_.__value_.__r.__words[0] = off_1004C1548;
                boost::throw_exception<boost::bad_function_call>(&v135);
              }

              (*((v55 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 40, 0);
              BufferSize = 0;
            }
          }

          goto LABEL_251;
        }

LABEL_150:
        any_to_string(&buf, a4 + 3);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v134, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
        }

        else
        {
          v134 = buf;
        }

        v30 = HostInterpreter::DeviceModeConfig(this, &v134);
        BufferSize = v30;
        if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v134.__r_.__value_.__l.__data_);
          if (BufferSize)
          {
            goto LABEL_251;
          }
        }

        else if (v30)
        {
          goto LABEL_251;
        }

        v31 = *(a4 + 4);
        if (!v31)
        {
          std::runtime_error::runtime_error(&v135, "call to empty boost::function");
          v135.__r_.__value_.__r.__words[0] = off_1004C1548;
          boost::throw_exception<boost::bad_function_call>(&v135);
        }

        (*((v31 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 40, 0);
        goto LABEL_251;
      }

LABEL_143:
      any_to_string(&buf, a4 + 3);
      v139[0] = 16;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &buf;
      }

      else
      {
        v18 = buf.__r_.__value_.__r.__words[0];
      }

      BufferSize = ot::Utils::CmdLineParser::ParseAsHexString(v18, v139, &v137, v17);
      if (!BufferSize)
      {
        BufferSize = otThreadSetPskc(*(this + 28), &v137);
        if (!BufferSize)
        {
          v20 = *(a4 + 4);
          if (!v20)
          {
            std::runtime_error::runtime_error(&v135, "call to empty boost::function");
            v135.__r_.__value_.__r.__words[0] = off_1004C1548;
            boost::throw_exception<boost::bad_function_call>(&v135);
          }

          (*((v20 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 40, 0);
          BufferSize = 0;
        }
      }

      goto LABEL_251;
    }

LABEL_134:
    v137.__r_.__value_.__r.__words[0] = 0;
    any_to_string(&v135, a4 + 3);
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v135;
    }

    else
    {
      v13 = v135.__r_.__value_.__r.__words[0];
    }

    v14 = ot::Utils::CmdLineParser::ParseAsUint64(v13, &v137, v12);
    v15 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v15)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = &v135;
        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v16 = v135.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = v16;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v137.__r_.__value_.__r.__words[0];
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        v141 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "LogTimestampBase:%s,[%llu],err:%d", &buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v21 = otPlatVendorSetLogTimestampBase(v137.__r_.__value_.__l.__data_);
    v22 = *(a4 + 4);
    if (!v22)
    {
      std::runtime_error::runtime_error(&buf, "call to empty boost::function");
      buf.__r_.__value_.__r.__words[0] = off_1004C1548;
      boost::throw_exception<boost::bad_function_call>(&buf);
    }

    BufferSize = v21;
    (*((v22 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 40, 0);
    goto LABEL_156;
  }

  v10 = *a4;
  if (!strcmp(*a4, "OpenThread:LogTimestampBase"))
  {
    goto LABEL_134;
  }

  if (!strcmp(v10, "Network:PSKc"))
  {
    goto LABEL_143;
  }

  if (!strcmp(v10, "Network:NodeType"))
  {
    goto LABEL_150;
  }

  if (!strcmp(v10, "vendor:coex:preferredAntenna"))
  {
    goto LABEL_158;
  }

  if (!strcmp(v10, "vendor:coex:scanFreqTable"))
  {
    goto LABEL_167;
  }

  if (!strcmp(v10, "vendor:coex:CoTxPowerCap"))
  {
    goto LABEL_180;
  }

  if (!strcmp(v10, "vendor:coex:radioload"))
  {
    goto LABEL_183;
  }

  if (!strcmp(v10, "vendor:coex:rcp2:state:collection"))
  {
    goto LABEL_222;
  }

  if (!strcmp(v10, "vendor:coex:rcp2:state:table:reset"))
  {
    goto LABEL_227;
  }

  if (!strcmp(v10, "vendor:power"))
  {
    goto LABEL_258;
  }

  if (!strcmp(v10, "Thread:Pairing:Status"))
  {
    goto LABEL_267;
  }

  if (!strcmp(v10, "Thread:FWUpdate"))
  {
    goto LABEL_293;
  }

  if (!strcmp(v10, "Thread:EmacId"))
  {
    goto LABEL_302;
  }

  if (!strcmp(v10, "StartCurrentNetworkDiscoveryScan"))
  {
    goto LABEL_308;
  }

  if (!strcmp(v10, "NCP:TXPower"))
  {
    goto LABEL_314;
  }

  if (!strcmp(v10, "Thread:ActiveDataset:Bytes"))
  {
LABEL_349:
    if (otPlatRadioGetRcp2Vendor2Enabled())
    {
      v77 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v77)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "%s:Thread Start Indication sent", &buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      started = otPlatVendorSetVendorThreadStartStop(*(this + 28), 1);
      if (started)
      {
        v89 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v89)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = "ProcessPropertySet";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = started;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "%s:otPlatVendorSetVendorThreadStartStop Err: %d", &buf, 0x12u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }
      }
    }

    any_to_string(&v135, a4 + 3);
    LOWORD(v137.__r_.__value_.__l.__data_) = 254;
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v93 = &v135;
    }

    else
    {
      v93 = v135.__r_.__value_.__r.__words[0];
    }

    BufferSize = ot::Utils::CmdLineParser::ParseAsHexString(v93, &v137, &buf, v92);
    if (!BufferSize)
    {
      v146 = v137.__r_.__value_.__s.__data_[0];
      BufferSize = otDatasetSetActiveTlvs(*(this + 28), &buf);
      if (!BufferSize)
      {
        v94 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v94)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
          {
            v139[0] = 0;
            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "Dataset commit active TLVs,Done", v139, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        HostInterpreter::setExtendedMACAddressInDataSetIfAvailableinDB(this);
        boost::function1<void,int>::operator()(a4 + 4);
        BufferSize = 0;
      }
    }

LABEL_156:
    if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_254;
    }

    v23 = v135.__r_.__value_.__r.__words[0];
    goto LABEL_253;
  }

  if (!strcmp(v10, "Interface:Up"))
  {
    goto LABEL_357;
  }

  if (!strcmp(v10, "vendor:power:limit:table:active:id"))
  {
    goto LABEL_363;
  }

  if (!strcmp(v10, "vendor:assert"))
  {
    goto LABEL_369;
  }

  if (!strcmp(v10, "vendor:hard:reset:test"))
  {
    goto LABEL_393;
  }

  if (!strcmp(v10, "vendor:mle:adv:tx:num"))
  {
    goto LABEL_412;
  }

  if (!strcmp(v10, "Daemon:VirtualInterface:ReadBufferSize"))
  {
    goto LABEL_420;
  }

  if (!strcmp(v10, "vendor:min:mac:interframedelay"))
  {
    goto LABEL_448;
  }

  if (!strcmp(v10, "vendor:csl:tx:schedframe:reqahead:timeinus"))
  {
    goto LABEL_456;
  }

  if (!strcmp(v10, "vendor:neighbor:count:histogram"))
  {
    goto LABEL_470;
  }

  if (!strcmp(v10, "vendor:bbr:counters"))
  {
    goto LABEL_475;
  }

  if (!strcmp(v10, "vendor:linkloss:counters"))
  {
    goto LABEL_483;
  }

  if (!strcmp(v10, "NCP:Counter:Thread:Mle"))
  {
    goto LABEL_484;
  }

  if (!strcmp(v10, "NCP:Counter:AllIPv6"))
  {
    goto LABEL_488;
  }

  if (!strcmp(v10, "NCP:Matter:Subscription:Histogram"))
  {
    goto LABEL_490;
  }

  if (!strcmp(v10, "ca:reporting:enabled"))
  {
    goto LABEL_492;
  }

  if (!strcmp(v10, "streamRawRespTimeHistReset"))
  {
    goto LABEL_494;
  }

  if (!strcmp(v10, "rcp2PcapStateReset"))
  {
    goto LABEL_496;
  }

  if (!strcmp(v10, "NCP:Counter:AllMac"))
  {
    goto LABEL_511;
  }

  if (!strcmp(v10, "vendor:radio:stats"))
  {
LABEL_513:
    BufferSize = otPlatVendorResetRadioStats();
    if (BufferSize)
    {
      goto LABEL_255;
    }

    goto LABEL_558;
  }

  if (!strcmp(v10, "vendor:radio:counters"))
  {
LABEL_517:
    BufferSize = otPlatVendorResetRadioCounters();
    if (BufferSize)
    {
      goto LABEL_255;
    }

    goto LABEL_558;
  }

  if (!strcmp(v10, "vendor:joiner:RSSIHistogram"))
  {
    goto LABEL_520;
  }

  if (!strcmp(v10, "vendor:deepsleep:filter:list"))
  {
LABEL_521:
    v135.__r_.__value_.__s.__data_[0] = 0;
    BufferSize = otPlatVendorSetDeepSleepFilterList(*(this + 28), &buf, &v135);
    if (!BufferSize)
    {
      boost::function1<void,int>::operator()(a4 + 4);
    }

    goto LABEL_254;
  }

  if (!strcmp(v10, "vendor:deepsleep:loglevel"))
  {
LABEL_523:
    v114 = any_to_uint64(a4 + 3, 0);
    BufferSize = otPlatVendorSetDeepSleepLogLevel(*(this + 28), v114);
    if (BufferSize)
    {
      goto LABEL_255;
    }

    goto LABEL_558;
  }

  if (!strcmp(v10, "vendor:deepsleep:region:loglevels"))
  {
LABEL_525:
    v135.__r_.__value_.__s.__data_[0] = -12;
    BufferSize = otPlatVendorSetDeepSleepRegionLogLevels(*(this + 28), &buf, &v135);
    if (!BufferSize)
    {
      boost::function1<void,int>::operator()(a4 + 4);
    }

    goto LABEL_254;
  }

  if (!strcmp(v10, "vendor:last:host:wake:reason"))
  {
LABEL_528:
    BufferSize = otPlatVendorSetHostWakeReason();
    if (BufferSize)
    {
      goto LABEL_255;
    }

    goto LABEL_558;
  }

  if (!strcmp(v10, "vendor:MAC:packet:SizeHistogram"))
  {
    goto LABEL_530;
  }

  if (!strcmp(v10, "vendor:MAC:packet:ErrorHistogram"))
  {
    goto LABEL_531;
  }

  if (!strcmp(v10, "vendor:MAC:packet:LQIHistogram"))
  {
    goto LABEL_532;
  }

  if (!strcmp(v10, "vendor:MAC:packet:RSSIHistogram"))
  {
    goto LABEL_533;
  }

  if (!strcmp(v10, "NCP:MacRetryHistogram"))
  {
    goto LABEL_534;
  }

  if (!strcmp(v10, "ResetAppAndRouteMetricsHistograms"))
  {
    goto LABEL_535;
  }

  if (!strcmp(v10, "UpdateAppAndRouteMetricsHistograms"))
  {
    goto LABEL_536;
  }

  if (!strcmp(v10, "vendor:openthread:radio:counters"))
  {
LABEL_537:
    BufferSize = otPlatVendorResetOpenThreadRadioCounters();
    if (BufferSize)
    {
      goto LABEL_255;
    }

    goto LABEL_558;
  }

  if (strcmp(v10, "vendor:cntr:stats:reset"))
  {
    if (strcmp(v10, "NCP:HostPowerState"))
    {
      if (strcmp(v10, "NCP:PcapEnabled"))
      {
        if (strcmp(v10, "Daemon:PromiscuousPcap"))
        {
          if (strcmp(v10, "Srp:NetdataMode"))
          {
            if (strcmp(v10, "UpdateLeaderInfo"))
            {
              if (strcmp(v10, "NCP:Counter:Thread:Neighbor:TriggerBased"))
              {
                v9 = strcmp(v10, "Thread:Health:Metrics");
                if (v9)
                {
                  if (strcmp(v10, "Leader:Reelect:Counters"))
                  {
                    if (strcmp(v10, "bt_state_change"))
                    {
                      goto LABEL_69;
                    }

                    goto LABEL_133;
                  }

LABEL_590:
                  RcpHostContext::clear_leader_reelect_counters(RcpHostContext::sRcpHostContext);
                  boost::function1<void,int>::operator()(a4 + 4);
                  return 0;
                }

LABEL_589:
                buf.__r_.__value_.__r.__words[0] = &buf;
                buf.__r_.__value_.__l.__size_ = &buf;
                buf.__r_.__value_.__r.__words[2] = 0;
                HostInterpreter::ClearThreadHealthMetrics(v9);
              }

              goto LABEL_577;
            }

LABEL_570:
            HostInterpreter::ProcessUpdateLeaderInfo(this);
            boost::function1<void,int>::operator()(a4 + 4);
            return 0;
          }

LABEL_563:
          v125 = any_to_int(a4 + 3);
          v126 = v125;
          if (v125 << 24)
          {
            std::string::basic_string[abi:ne200100]<0>(&buf, "Srp:NetdataMode");
            v135.__r_.__value_.__r.__words[0] = &buf;
            v127 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_, &std::piecewise_construct, &v135);
            std::string::assign((v127 + 7), "1");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&buf, "Srp:NetdataMode");
            v135.__r_.__value_.__r.__words[0] = &buf;
            v131 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_, &std::piecewise_construct, &v135);
            std::string::assign((v131 + 7), "0");
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          persist_srp_netdatamode(v126);
        }

LABEL_550:
        v121 = any_to_BOOL(a4 + 3);
        v122 = log_get_logging_obg("com.apple.threadradiod", "default");
        v123 = v122;
        if (v121)
        {
          if (v122)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
            {
              buf.__r_.__value_.__r.__words[0] = 0x210B04000100;
              v124 = "HI:%d:Start promiscuous pcap capture";
LABEL_569:
              _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_INFO, v124, &buf, 8u);
              goto LABEL_588;
            }

            goto LABEL_588;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_588;
          }
        }

        else
        {
          if (v122)
          {
            if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
            {
              buf.__r_.__value_.__r.__words[0] = 0x210D04000100;
              v124 = "HI:%d:Stop promiscuous pcap capture";
              goto LABEL_569;
            }

LABEL_588:
            persist_promiscuous_pcap_enabled(v121);
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_588;
          }
        }

        [PowerEventHandler_Rcp init:];
        goto LABEL_588;
      }

LABEL_545:
      v117 = any_to_BOOL(a4 + 3);
      v118 = log_get_logging_obg("com.apple.threadradiod", "default");
      v119 = v118;
      if (v117)
      {
        if (v118)
        {
          v120 = syslog_is_the_mask_enabled(6);
          if (v120)
          {
            v120 = os_log_type_enabled(v119, OS_LOG_TYPE_INFO);
            if (v120)
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
              *(buf.__r_.__value_.__r.__words + 4) = "otError HostInterpreter::ProcessPropertySet(uint8_t, char **, void *)";
              WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = 8408;
              _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_INFO, "%s:%d:Start pcap capture", &buf, 0x12u);
            }
          }
        }

        else
        {
          v120 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v120)
          {
            [PowerEventHandler_Rcp init:];
          }
        }

        PcapManagerInstance = PcapManager::getPcapManagerInstance(v120);
        PcapManager::start_pcap_capture(PcapManagerInstance);
        std::string::basic_string[abi:ne200100]<0>(&buf, "Daemon:PromiscuousPcap");
        v135.__r_.__value_.__r.__words[0] = &buf;
        v129 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_, &std::piecewise_construct, &v135);
        boost::any::any<std::string &>(&v137, (v129 + 7));
      }

      if (v118)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
        {
          buf.__r_.__value_.__r.__words[0] = 0x20E504000100;
          _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_INFO, "HI:%d:Stop pcap capture", &buf, 8u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      std::string::basic_string[abi:ne200100]<0>(&buf, "Daemon:PromiscuousPcap");
      v135.__r_.__value_.__r.__words[0] = &buf;
      v130 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &buf.__r_.__value_.__l.__data_, &std::piecewise_construct, &v135);
      boost::any::any<std::string &>(&v137, (v130 + 7));
    }

    goto LABEL_541;
  }

LABEL_539:
  BufferSize = otPlatVendorCntrStatsReset();
  if (!BufferSize)
  {
    goto LABEL_558;
  }

LABEL_255:
  v56 = *(a4 + 4);
  if (!v56)
  {
    std::runtime_error::runtime_error(&buf, "call to empty boost::function");
    buf.__r_.__value_.__r.__words[0] = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(&buf);
  }

  (*((v56 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 40, 1);
  return BufferSize;
}

void sub_1001350B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::runtime_error a44, int a45, __int16 a46, char a47, char a48)
{
  if (__p)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object();
    v48 = &a44;
  }

  if (a48 < 0)
  {
    operator delete(v48->__vftable);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HostInterpreter::ProcessRcpInit(HostInterpreter *this, unsigned __int8 a2, char **a3, void *a4)
{
  HIBYTE(v6) = 11;
  strcpy(buf, "NCP:TXPower");
  *v4 = buf;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, buf, &std::piecewise_construct, v4);
  operator new();
}

void sub_10013694C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a15)
  {
    (*(*a15 + 8))(a15, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a17)
  {
    (*(*a17 + 8))(a17, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a18)
  {
    (*(*a18 + 8))(a18, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a19)
  {
    (*(*a19 + 8))(a19, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a20)
  {
    (*(*a20 + 8))(a20, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a22)
  {
    (*(*a22 + 8))(a22, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a23)
  {
    (*(*a23 + 8))(a23, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a24)
  {
    (*(*a24 + 8))(a24, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a25)
  {
    (*(*a25 + 8))(a25, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a26)
  {
    (*(*a26 + 8))(a26, a2, a3, a4, a5, a6, a7, a8);
  }

  if (!a27)
  {
    _Unwind_Resume(exception_object);
  }

  (*(*a27 + 8))(a27, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(exception_object);
}

void HostInterpreter::ProcessRcpReportCrashInfo(HostInterpreter *this, unsigned __int8 a2, char **a3, _BYTE *a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v6 = logging_obg;
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      HostInterpreter::ProcessRcpReportCrashInfo();
      if (*a4 != 1)
      {
LABEL_15:
        DWORD1(xmmword_1004E5778) = 0;
        *(&xmmword_1004E5778 + 1) = *(&xmmword_1004E5768 + 1);
        v11 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v11)
        {
          v12 = v11;
          if (syslog_is_the_mask_enabled(7))
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              HostInterpreter::ProcessRcpReportCrashInfo();
            }
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        v15[0] = xmmword_1004E5778;
        v15[1] = xmmword_1004E5788;
        AWDMetricsClient_update_StabilityData(v15);
        HostInterpreter::persist_awd_stability_counters(v13);
      }

LABEL_8:
      v7 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v7)
      {
        v8 = v7;
        is_the_mask_enabled = syslog_is_the_mask_enabled(7);
        if (is_the_mask_enabled)
        {
          is_the_mask_enabled = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
          if (is_the_mask_enabled)
          {
            HostInterpreter::ProcessRcpReportCrashInfo();
            HostInterpreter::clearHealthInfoMetrics(v10);
          }
        }
      }

      else
      {
        is_the_mask_enabled = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (is_the_mask_enabled)
        {
          [PowerEventHandler_Rcp init:];
          HostInterpreter::clearHealthInfoMetrics(v14);
        }
      }

      HostInterpreter::clearHealthInfoMetrics(is_the_mask_enabled);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
    if (*a4 != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (*a4 != 1)
  {
    goto LABEL_15;
  }

  goto LABEL_8;
}

uint64_t HostInterpreter::ProcessReconnectThread(HostInterpreter *this, unsigned __int8 a2, char **a3, void *a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v5 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "ProcessReconnectThread";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Invoked", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return 0;
}

uint64_t HostInterpreter::ProcessReset(HostInterpreter *this, unsigned __int8 a2, char **a3, char *a4)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v7 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "HI:Reset (Soft)", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  v8 = otThreadSetEnabled(*(this + 28), 0);
  if (!v8)
  {
    v9 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v9)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = "ProcessReset";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Soft Reset: Thread STOP, Done", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v8 = otIp6SetEnabled(*(this + 28), 0);
    if (!v8)
    {
      v16 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v16)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Soft Reset: Ifconfig DOWN, Done", buf, 2u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      HostInterpreter::remove_all_address_prefix_route_entries(this, 1);
      if (dskeychainRcp::FindAndGetDataSet(0, buf))
      {
        v8 = otDatasetSetActive(*(this + 28), buf);
        if (v8)
        {
          goto LABEL_15;
        }

        if (dskeychainRcp::FindAndGetDataSet(1, v21))
        {
          v8 = otDatasetSetPending(*(this + 28), v21);
          if (v8)
          {
            goto LABEL_15;
          }
        }

        v8 = otIp6SetEnabled(*(this + 28), 1);
        if (v8)
        {
          goto LABEL_15;
        }

        v17 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v17)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            LOWORD(v24.__vftable) = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Ifconfig UP, Done", &v24, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        v8 = otThreadSetEnabled(*(this + 28), 1);
        if (v8)
        {
          goto LABEL_15;
        }

        LinkMode = otThreadGetLinkMode(*(this + 28));
        if ((~LinkMode & 6) == 0 && (LinkMode & 1) == 0)
        {
          otThreadBecomeLeader(*(this + 28), 0);
        }

        v20 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v20)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            LODWORD(v24.__vftable) = 136315138;
            *(&v24.__vftable + 4) = "ProcessReset";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Thread START, Done", &v24, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }
      }

      else
      {
        v18 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v18)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Active Dataset not present", v21, 2u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }
      }

      v8 = 0;
      v12 = 0;
      v13 = *a4;
      if (*a4)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

LABEL_15:
  HIDWORD(v11) = v8 - 1;
  LODWORD(v11) = v8 - 1;
  v10 = v11 >> 1;
  if (v10 > 6 || ((0x4Du >> v10) & 1) == 0)
  {
    v12 = 1;
    v13 = *a4;
    if (*a4)
    {
      goto LABEL_20;
    }

LABEL_18:
    v14 = std::runtime_error::runtime_error(&v24, "call to empty boost::function");
    v24.__vftable = off_1004C1548;
    boost::throw_exception<boost::bad_function_call>(v14);
  }

  v8 = dword_10044816C[v10];
  v12 = dword_100448188[v10];
  v13 = *a4;
  if (!*a4)
  {
    goto LABEL_18;
  }

LABEL_20:
  (*((v13 & 0xFFFFFFFFFFFFFFFELL) + 8))(a4 + 8, v12);
  return v8;
}