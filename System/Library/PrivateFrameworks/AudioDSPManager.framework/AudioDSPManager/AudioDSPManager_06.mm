void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,audiodsputility_parametererror_s const&,char const*>(adm::util::RTLogLevel,char const*,unsigned int &,audiodsputility_parametererror_s const&,char const* &&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,tb_error_t &>(adm::util::RTLogLevel,char const*,unsigned int &,tb_error_t &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1, const char *a2)
{
  v3 = a1;
  adm::util::RTLogger::doLog<unsigned int &,tb_error_t &>(adm::util::RTLogLevel,char const*,unsigned int &,tb_error_t &)::{lambda(void)#1}::operator()(a1 + 24, a2);
  return caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(&v3);
}

void adm::util::RTLogger::doLog<unsigned int &,tb_error_t &>(adm::util::RTLogLevel,char const*,unsigned int &,tb_error_t &)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  caulk::make_string(&__p, *(a1 + 8), a2, *(a1 + 20), *(a1 + 24));
  v3 = *a1;
  adm_log_object = get_adm_log_object();
  v5 = adm_log_object;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_25;
    }

    if (v3 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

LABEL_25:
      v15 = *(a1 + 16);
      *buf = 136315394;
      v18 = p_p;
      v19 = 1024;
      v20 = v15;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v8, v9, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v10 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(a1 + 16);
      *buf = 136315394;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v6 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = __p.__r_.__value_.__r.__words[0];
        }

        v7 = *(a1 + 16);
        *buf = 136315394;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v8 = v5;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      v14 = *(a1 + 16);
      *buf = 136315394;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_debug_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,tb_error_t &>(adm::util::RTLogLevel,char const*,unsigned int &,tb_error_t &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1, const char *a2)
{
  v3 = a1;
  adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &)::{lambda(void)#1}::operator()(a1 + 24, a2);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &,unsigned char,unsigned long &>(adm::util::RTLogLevel,char const*,int &,unsigned char,unsigned long &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v3);
}

void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  caulk::make_string(&__p, *(a1 + 8), a2, *(a1 + 24), *(a1 + 32));
  v3 = *a1;
  adm_log_object = get_adm_log_object();
  v5 = adm_log_object;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_25;
    }

    if (v3 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

LABEL_25:
      v15 = *(a1 + 16);
      *buf = 136315394;
      v18 = p_p;
      v19 = 1024;
      v20 = v15;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v8, v9, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v10 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(a1 + 16);
      *buf = 136315394;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v6 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = __p.__r_.__value_.__r.__words[0];
        }

        v7 = *(a1 + 16);
        *buf = 136315394;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v8 = v5;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      v14 = *(a1 + 16);
      *buf = 136315394;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_debug_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl const*,unsigned int &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

uint64_t *adm::graph::ExclaveDSPControllerClientImpl::getOutputParameterIDs@<X0>(adm::graph::ExclaveDSPControllerClientImpl *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, *(this + 6), *(this + 7), (*(this + 7) - *(this + 6)) >> 2);
}

uint64_t *adm::graph::ExclaveDSPControllerClientImpl::getInputParameterIDs@<X0>(adm::graph::ExclaveDSPControllerClientImpl *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, *(this + 3), *(this + 4), (*(this + 4) - *(this + 3)) >> 2);
}

BOOL adm::graph::ExclaveDSPControllerClientImpl::hasOutputParameter(adm::graph::ExclaveDSPControllerClientImpl *this, int a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      if (++v2 == v3)
      {
        v2 = *(this + 7);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

BOOL adm::graph::ExclaveDSPControllerClientImpl::hasInputParameter(adm::graph::ExclaveDSPControllerClientImpl *this, int a2)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      if (++v2 == v3)
      {
        v2 = *(this + 4);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

uint64_t adm::graph::ExclaveDSPControllerClientImpl::ioStopped(adm::graph::ExclaveDSPControllerClientImpl *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *(this + 1))
    {
      adm_log_object = get_adm_log_object();
      if (os_signpost_enabled(adm_log_object))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_223B4A000, adm_log_object, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::IOStopped", &unk_223C17543, buf, 2u);
      }

      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      *buf = 0u;
      v13 = 0u;
      v5 = tb_client_connection_message_construct();
      if (!v5)
      {
        tb_message_precheck_encoding();
        tb_message_raw_encode_u64();
        tb_message_complete();
        v5 = tb_connection_send_query();
        tb_client_connection_message_destruct();
      }

      v6 = get_adm_log_object();
      if (os_signpost_enabled(v6))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::IOStopped", &unk_223C17543, buf, 2u);
      }

      v7 = get_adm_log_object();
      v8 = v7;
      if (v5)
      {
        v9 = 1970170734;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v5;
          _os_log_error_impl(&dword_223B4A000, v8, OS_LOG_TYPE_ERROR, "tb call to iostopped failed: %d", buf, 8u);
        }
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_223B4A000, v8, OS_LOG_TYPE_DEFAULT, "ioStopped() completed", buf, 2u);
        }

        v9 = 0;
      }

LABEL_17:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      return v9;
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = get_adm_log_object();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = this;
    _os_log_impl(&dword_223B4A000, v10, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) ioStopped: EK unavailable", buf, 0xCu);
  }

  v9 = 0;
  if (v3)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t adm::graph::ExclaveDSPControllerClientImpl::process(uint64_t a1, uint64_t a2)
{
  v48[13] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        if (a2)
        {
          if (!*(a1 + 72))
          {
LABEL_26:
            v18 = 1970170734;
            adm::util::RTLogger::log<>(a1 + 80, "copyDataFromABLToInboundBuffer failed.");
            goto LABEL_37;
          }

          v7 = *(a2 + 72);
          if (*v7)
          {
            v8 = 0;
            v9 = 0;
            v10 = v7 + 3;
            while (!exclaves_inbound_buffer_copyin())
            {
              v11 = *v10;
              v10 += 4;
              v9 += v11;
              if (++v8 >= *v7)
              {
                goto LABEL_10;
              }
            }

            goto LABEL_26;
          }

LABEL_10:
          v12 = (a2 + 64);
          if (*(a2 + 64) != *(a1 + 76))
          {
            v18 = 1970170734;
            adm::util::RTLogger::log<unsigned int const&,unsigned int &>((a1 + 80), "IO proc block size %u doesn't match the block size of the ExclaveDSPControllerClient %u", v12, (a1 + 76));
            goto LABEL_37;
          }

          if (*(v6 + 16) == 1)
          {
            audiodspcontrollerdebug_audiodspcontroldebug_sethosttime((v6 + 8), *(a2 + 8));
          }
        }

        v34 = 0;
        v35 = &v34;
        v36 = 0x3802000000;
        v37 = __Block_byref_object_copy__57;
        v38 = __Block_byref_object_dispose__58;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 0x40000000;
        v31 = ___ZN3adm5graph30ExclaveDSPControllerClientImpl7processEPKN4AMCP11Proc_StreamE_block_invoke;
        v32 = &unk_2784F0750;
        v33 = &v34;
        v47 = 0;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        memset(v48, 0, 104);
        v13 = tb_client_connection_message_construct();
        if (v13)
        {
          v14 = v13;
LABEL_29:
          v19 = *(a1 + 80);
          if (v19 >= 0x65)
          {
            if (std::chrono::system_clock::now().__d_.__rep_ - *(a1 + 88) <= 500999)
            {
              goto LABEL_34;
            }

            v19 = *(a1 + 80);
          }

          if (*MEMORY[0x277D7F098])
          {
            v20 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
            *(v20 + 16) = 0;
            *(v20 + 24) = 3;
            *(v20 + 32) = "tb call to process failed: tbError=%d";
            *(v20 + 40) = v19;
            *(v20 + 44) = v14;
            *v20 = &unk_28371B160;
            *(v20 + 8) = 0;
            caulk::concurrent::messenger::enqueue((a1 + 96), v20);
            *(a1 + 88) = std::chrono::system_clock::now();
LABEL_34:
            v18 = 1970170734;
            v21 = *(a1 + 80);
            if (v21 != -1)
            {
              *(a1 + 80) = v21 + 1;
            }

LABEL_36:
            _Block_object_dispose(&v34, 8);
            goto LABEL_37;
          }

LABEL_71:
          __break(1u);
        }

        tb_message_precheck_encoding();
        tb_message_raw_encode_u64();
        tb_message_complete();
        v41 = 0;
        v14 = tb_connection_send_query();
        if ((v14 & 0xFFFFFFF7) != 0)
        {
LABEL_28:
          tb_client_connection_message_destruct();
          goto LABEL_29;
        }

        if (!v41)
        {
          v14 = 4;
          goto LABEL_28;
        }

        v39 = 0;
        v40 = 0;
        tb_message_decode_u8();
        if (v39 != 1)
        {
          if (!v39)
          {
            v23 = v40;
            goto LABEL_51;
          }

LABEL_60:
          tb_client_connection_message_destruct();
          v14 = 7;
          goto LABEL_29;
        }

        tb_message_decode_u64();
        v23 = v40;
        if (v40 > 0xF0BC6BC4DC856BF3)
        {
          if (v40 == 0xF0BC6BC4DC856BF4)
          {
            goto LABEL_51;
          }

          v24 = 0x5C86F7F42A29C41BLL;
        }

        else
        {
          if (v40 == 0xB2C107004910703DLL)
          {
            goto LABEL_51;
          }

          v24 = 0xD0513AF3527449BDLL;
        }

        if (v40 != v24)
        {
          goto LABEL_60;
        }

LABEL_51:
        v31(v30, v39, v23);
        tb_client_connection_message_destruct();
        v25 = *(v35 + 40);
        if (v25 == 1)
        {
          v26 = v35 + 6;
        }

        else
        {
          v26 = 0;
        }

        if (v25 == 1)
        {
          v18 = 1634627437;
          v27 = *v26;
          if (*v26 != 0xB2C107004910703DLL)
          {
            if (v27 == 0x5C86F7F42A29C41BLL)
            {
              v28 = "PROCESSERROR_UNINITIALIZED";
            }

            else if (v27 == 0xD0513AF3527449BDLL)
            {
              v28 = "PROCESSERROR_FORMATNOTSUPPORTED";
            }

            else
            {
              v28 = v27 == 0xF0BC6BC4DC856BF4 ? "PROCESSERROR_UNKNOWN" : "<unknown>";
            }

            v48[0] = v28;
            adm::util::RTLogger::log<audiodsputility_processerror_s const&,char const*>((a1 + 80), v26, v48);
            v29 = *v26;
            if (*v26 != 0xB2C107004910703DLL)
            {
              if (v29 == 0xD0513AF3527449BDLL)
              {
                v18 = 1969646964;
              }

              else if (v29 == 0x5C86F7F42A29C41BLL)
              {
                v18 = 1768843636;
              }

              else
              {
                v18 = 1970170734;
              }
            }
          }
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = *(a1 + 80);
  if (v15 >= 0x65)
  {
    if (std::chrono::system_clock::now().__d_.__rep_ - *(a1 + 88) <= 500999)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 80);
  }

  if (!*MEMORY[0x277D7F098])
  {
    goto LABEL_71;
  }

  v16 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
  *(v16 + 16) = 0;
  *(v16 + 24) = 2;
  *(v16 + 32) = "ControllerClient(%p) process: EK unavailable";
  *(v16 + 40) = v15;
  *(v16 + 48) = a1;
  *v16 = &unk_28371B0B0;
  *(v16 + 8) = 0;
  caulk::concurrent::messenger::enqueue((a1 + 96), v16);
  *(a1 + 88) = std::chrono::system_clock::now();
LABEL_21:
  v17 = *(a1 + 80);
  if (v17 == -1)
  {
    v18 = 0;
    if (!v5)
    {
      return v18;
    }
  }

  else
  {
    v18 = 0;
    *(a1 + 80) = v17 + 1;
    if (!v5)
    {
      return v18;
    }
  }

LABEL_37:
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v18;
}

void sub_223BB67BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 __Block_byref_object_copy__57(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN3adm5graph30ExclaveDSPControllerClientImpl7processEPKN4AMCP11Proc_StreamE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<audiodsputility_processerror_s const&,char const*>(std::chrono::system_clock::time_point *a1, uint64_t *a2, uint64_t *a3)
{
  rep = a1->__d_.__rep_;
  if (LODWORD(a1->__d_.__rep_) >= 0x65)
  {
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (result.__d_.__rep_ - a1[1].__d_.__rep_ < 501000)
    {
      goto LABEL_6;
    }

    rep = a1->__d_.__rep_;
  }

  result.__d_.__rep_ = *MEMORY[0x277D7F098];
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
    return result;
  }

  v8 = *a3;
  v9 = *a2;
  v10 = caulk::rt_safe_memory_resource::rt_allocate(result.__d_.__rep_);
  *(v10 + 16) = 0;
  *(v10 + 24) = 3;
  *(v10 + 32) = "tb call to process failed: failure=%d, %s";
  *(v10 + 40) = rep;
  *(v10 + 48) = v9;
  *(v10 + 56) = v8;
  *v10 = &unk_28371B1B8;
  *(v10 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&a1[2], v10);
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[1].__d_.__rep_ = result.__d_.__rep_;
LABEL_6:
  if (LODWORD(a1->__d_.__rep_) != -1)
  {
    ++LODWORD(a1->__d_.__rep_);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<audiodsputility_processerror_s const&,char const*>(adm::util::RTLogLevel,char const*,audiodsputility_processerror_s const&,char const* &&)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1, const char *a2)
{
  v3 = a1;
  adm::util::RTLogger::doLog<audiodsputility_processerror_s const&,char const*>(adm::util::RTLogLevel,char const*,audiodsputility_processerror_s const&,char const* &&)::{lambda(void)#1}::operator()(a1 + 24, a2);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &,unsigned char,unsigned long &>(adm::util::RTLogLevel,char const*,int &,unsigned char,unsigned long &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v3);
}

void adm::util::RTLogger::doLog<audiodsputility_processerror_s const&,char const*>(adm::util::RTLogLevel,char const*,audiodsputility_processerror_s const&,char const* &&)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  caulk::make_string(&__p, *(a1 + 8), a2, *(a1 + 24), *(a1 + 32));
  v3 = *a1;
  adm_log_object = get_adm_log_object();
  v5 = adm_log_object;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_25;
    }

    if (v3 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

LABEL_25:
      v15 = *(a1 + 16);
      *buf = 136315394;
      v18 = p_p;
      v19 = 1024;
      v20 = v15;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v8, v9, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v10 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(a1 + 16);
      *buf = 136315394;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v6 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = __p.__r_.__value_.__r.__words[0];
        }

        v7 = *(a1 + 16);
        *buf = 136315394;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v8 = v5;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      v14 = *(a1 + 16);
      *buf = 136315394;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_debug_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<audiodsputility_processerror_s const&,char const*>(adm::util::RTLogLevel,char const*,audiodsputility_processerror_s const&,char const* &&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<tb_error_t &>(adm::util::RTLogLevel,char const*,tb_error_t &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1, const char *a2)
{
  v3 = a1;
  adm::util::RTLogger::doLog<tb_error_t &>(adm::util::RTLogLevel,char const*,tb_error_t &)::{lambda(void)#1}::operator()(a1 + 24, a2);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &>(adm::util::RTLogLevel,char const*,int &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v3);
}

void adm::util::RTLogger::doLog<tb_error_t &>(adm::util::RTLogLevel,char const*,tb_error_t &)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  caulk::make_string(&__p, *(a1 + 8), a2, *(a1 + 20));
  v3 = *a1;
  adm_log_object = get_adm_log_object();
  v5 = adm_log_object;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_25;
    }

    if (v3 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

LABEL_25:
      v15 = *(a1 + 16);
      *buf = 136315394;
      v18 = p_p;
      v19 = 1024;
      v20 = v15;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v8, v9, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v10 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(a1 + 16);
      *buf = 136315394;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v6 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = __p.__r_.__value_.__r.__words[0];
        }

        v7 = *(a1 + 16);
        *buf = 136315394;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v8 = v5;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      v14 = *(a1 + 16);
      *buf = 136315394;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_debug_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<tb_error_t &>(adm::util::RTLogLevel,char const*,tb_error_t &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl *>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl * &&)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1, const char *a2)
{
  v3 = a1;
  adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl *>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl * &&)::{lambda(void)#1}::operator()(a1 + 24, a2);
  return caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(&v3);
}

void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl *>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl * &&)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  caulk::make_string(&__p, *(a1 + 8), a2, *(a1 + 24));
  v3 = *a1;
  adm_log_object = get_adm_log_object();
  v5 = adm_log_object;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_25;
    }

    if (v3 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

LABEL_25:
      v15 = *(a1 + 16);
      *buf = 136315394;
      v18 = p_p;
      v19 = 1024;
      v20 = v15;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v8, v9, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v10 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(a1 + 16);
      *buf = 136315394;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v6 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = __p.__r_.__value_.__r.__words[0];
        }

        v7 = *(a1 + 16);
        *buf = 136315394;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v8 = v5;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      v14 = *(a1 + 16);
      *buf = 136315394;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_debug_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl *>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl * &&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

uint64_t adm::graph::ExclaveDSPControllerClientImpl::ioStarting(adm::graph::ExclaveDSPControllerClientImpl *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *(this + 1))
    {
      adm_log_object = get_adm_log_object();
      if (os_signpost_enabled(adm_log_object))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_223B4A000, adm_log_object, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::IOStarting", &unk_223C17543, buf, 2u);
      }

      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      *buf = 0u;
      v13 = 0u;
      v5 = tb_client_connection_message_construct();
      if (!v5)
      {
        tb_message_precheck_encoding();
        tb_message_raw_encode_u64();
        tb_message_complete();
        v5 = tb_connection_send_query();
        tb_client_connection_message_destruct();
      }

      v6 = get_adm_log_object();
      if (os_signpost_enabled(v6))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::IOStarting", &unk_223C17543, buf, 2u);
      }

      v7 = get_adm_log_object();
      v8 = v7;
      if (v5)
      {
        v9 = 1970170734;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v5;
          _os_log_error_impl(&dword_223B4A000, v8, OS_LOG_TYPE_ERROR, "tb call to iostarting failed: %d", buf, 8u);
        }
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_223B4A000, v8, OS_LOG_TYPE_DEFAULT, "ioStarting() completed", buf, 2u);
        }

        v9 = 0;
      }

LABEL_17:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      return v9;
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = get_adm_log_object();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = this;
    _os_log_impl(&dword_223B4A000, v10, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) ioStarting: EK unavailable", buf, 0xCu);
  }

  v9 = 0;
  if (v3)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t adm::graph::ExclaveDSPControllerClientImpl::configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a3;
    v6 = std::__shared_weak_count::lock(v4);
    if (v6 && *(a1 + 8))
    {
      v34 = adm::exclaves::utility::convert_to<std::optional<audiodsputility_outputport_s>,adm::exclaves::OutputPort>(v5);
      v35 = v7;
      if ((v7 & 1) == 0)
      {
        v12 = 1651536493;
        adm_log_object = get_adm_log_object();
        if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "failed to convert output port", &buf, 2u);
        }

        goto LABEL_35;
      }

      v29 = 0;
      v30 = &v29;
      v31 = 0x3802000000;
      v32 = __Block_byref_object_copy__50;
      v33 = __Block_byref_object_dispose__51;
      v8 = get_adm_log_object();
      if (os_signpost_enabled(v8))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", &unk_223C17543, &buf, 2u);
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 0x40000000;
      v26 = ___ZN3adm5graph30ExclaveDSPControllerClientImpl9configureEjNS_8exclaves10OutputPortE_block_invoke;
      v27 = &unk_2784F0728;
      v28 = &v29;
      v40 = 0;
      memset(v39, 0, sizeof(v39));
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      buf = 0u;
      v42 = 0u;
      v9 = tb_client_connection_message_construct();
      if (!v9)
      {
        tb_message_precheck_encoding();
        tb_message_raw_encode_u64();
        tb_message_raw_encode_u32();
        audiodsputility_outputport__raw_encode(v39, &v34);
        tb_message_complete();
        v38 = 0;
        v10 = tb_connection_send_query();
        if ((v10 & 0xFFFFFFF7) != 0)
        {
          v9 = v10;
LABEL_10:
          tb_client_connection_message_destruct();
          goto LABEL_11;
        }

        if (v38)
        {
          v36 = 0;
          v37 = 0;
          tb_message_decode_u8();
          if (v36 == 1)
          {
            tb_message_decode_u64();
            v9 = 7;
            v21 = v37;
            if (v37 <= 0x721C3F2F787AA9CLL)
            {
              if (v37 == 0xA79E13CA15F5775CLL || v37 == 0xAD6FFC2BEEE2EB53)
              {
                goto LABEL_67;
              }

              v22 = 0xF9A9592E1248F97ALL;
            }

            else if (v37 > 0x33D96A0AB5A284C1)
            {
              if (v37 == 0x7F9919C7ACD04D39)
              {
                goto LABEL_67;
              }

              v22 = 0x33D96A0AB5A284C2;
            }

            else
            {
              if (v37 == 0x721C3F2F787AA9DLL)
              {
                goto LABEL_67;
              }

              v22 = 0xB6B27F51290F905;
            }

            if (v37 != v22)
            {
              goto LABEL_10;
            }
          }

          else
          {
            if (v36)
            {
              v9 = 7;
              goto LABEL_10;
            }

            v21 = v37;
          }

LABEL_67:
          v26(v25, v36, v21);
          v9 = 0;
          goto LABEL_10;
        }

        tb_client_connection_message_destruct();
        v9 = 4;
      }

LABEL_11:
      v11 = get_adm_log_object();
      if (os_signpost_enabled(v11))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", &unk_223C17543, &buf, 2u);
      }

      if (v9)
      {
        v12 = 1970170734;
        v13 = get_adm_log_object();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v9;
          _os_log_error_impl(&dword_223B4A000, v13, OS_LOG_TYPE_ERROR, "tb call to configure failed: tbError=%d", &buf, 8u);
        }

        goto LABEL_34;
      }

      v16 = *(v30 + 40);
      if (v16 == 1)
      {
        v17 = v30 + 6;
      }

      else
      {
        v17 = 0;
      }

      if (v16 != 1)
      {
        v12 = 0;
LABEL_34:
        _Block_object_dispose(&v29, 8);
LABEL_35:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return v12;
      }

      v18 = get_adm_log_object();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_29:
        v19 = *v17;
        if (*v17 > 0x721C3F2F787AA9CLL)
        {
          switch(v19)
          {
            case 0x721C3F2F787AA9DLL:
              v12 = 1684498798;
              goto LABEL_34;
            case 0xB6B27F51290F905:
              v12 = 1684496757;
              goto LABEL_34;
            case 0x33D96A0AB5A284C2:
              v12 = 1684500595;
              goto LABEL_34;
          }
        }

        else
        {
          switch(v19)
          {
            case 0xA79E13CA15F5775CLL:
              v12 = 1684497264;
              goto LABEL_34;
            case 0xAD6FFC2BEEE2EB53:
              v12 = 1970431354;
              goto LABEL_34;
            case 0xF9A9592E1248F97ALL:
              v12 = 1969646964;
              goto LABEL_34;
          }
        }

        v12 = 1970170734;
        goto LABEL_34;
      }

      v23 = *v17;
      if (*v17 > 0x721C3F2F787AA9CLL)
      {
        switch(v23)
        {
          case 0x721C3F2F787AA9DLL:
            v24 = "SETUPERROR_INITIALIZING";
            goto LABEL_79;
          case 0xB6B27F51290F905:
            v24 = "SETUPERROR_SETTINGAUSTRIP";
            goto LABEL_79;
          case 0x33D96A0AB5A284C2:
            v24 = "SETUPERROR_SETTINGPROPSTRIP";
            goto LABEL_79;
        }
      }

      else
      {
        switch(v23)
        {
          case 0xA79E13CA15F5775CLL:
            v24 = "SETUPERROR_COMPILINGGRAPH";
            goto LABEL_79;
          case 0xAD6FFC2BEEE2EB53:
            v24 = "SETUPERROR_PARSINGDATABASE";
            goto LABEL_79;
          case 0xF9A9592E1248F97ALL:
            v24 = "SETUPERROR_FORMATNOTSUPPORTED";
LABEL_79:
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v24;
            _os_log_error_impl(&dword_223B4A000, v18, OS_LOG_TYPE_ERROR, "tb call to configure failed: failure=%s", &buf, 0xCu);
            goto LABEL_29;
        }
      }

      if (v23 == 0x7F9919C7ACD04D39)
      {
        v24 = "SETUPERROR_UNKNOWN";
      }

      else
      {
        v24 = "<unknown>";
      }

      goto LABEL_79;
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = get_adm_log_object();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_223B4A000, v14, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) configure: EK unavailable", &buf, 0xCu);
  }

  v12 = 1970431354;
  if (v6)
  {
    goto LABEL_35;
  }

  return v12;
}

__n128 __Block_byref_object_copy__50(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN3adm5graph30ExclaveDSPControllerClientImpl9configureEjNS_8exclaves10OutputPortE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t adm::graph::ExclaveDSPControllerClientImpl::configure(uint64_t a1, uint64_t a2, int a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6 && *(a1 + 8))
    {
      if (a3 != 1886216809)
      {
        v11 = 1651536493;
        adm_log_object = get_adm_log_object();
        if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "failed to convert input port", &buf, 2u);
        }

        goto LABEL_35;
      }

      v28 = 0;
      v29 = &v28;
      v30 = 0x3802000000;
      v31 = __Block_byref_object_copy__46;
      v32 = __Block_byref_object_dispose__47;
      v7 = get_adm_log_object();
      if (os_signpost_enabled(v7))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", &unk_223C17543, &buf, 2u);
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 0x40000000;
      v25 = ___ZN3adm5graph30ExclaveDSPControllerClientImpl9configureEjNS_8exclaves9InputPortE_block_invoke;
      v26 = &unk_2784F0700;
      v27 = &v28;
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      buf = 0u;
      v43 = 0u;
      v8 = tb_client_connection_message_construct();
      if (!v8)
      {
        tb_message_precheck_encoding();
        tb_message_raw_encode_u64();
        tb_message_raw_encode_u32();
        tb_message_raw_encode_u64();
        tb_message_complete();
        v35 = 0;
        v9 = tb_connection_send_query();
        if ((v9 & 0xFFFFFFF7) != 0)
        {
          v8 = v9;
LABEL_10:
          tb_client_connection_message_destruct();
          goto LABEL_11;
        }

        if (v35)
        {
          v33 = 0;
          v34 = 0;
          tb_message_decode_u8();
          if (v33 == 1)
          {
            tb_message_decode_u64();
            v8 = 7;
            v20 = v34;
            if (v34 <= 0x721C3F2F787AA9CLL)
            {
              if (v34 == 0xA79E13CA15F5775CLL || v34 == 0xAD6FFC2BEEE2EB53)
              {
                goto LABEL_67;
              }

              v21 = 0xF9A9592E1248F97ALL;
            }

            else if (v34 > 0x33D96A0AB5A284C1)
            {
              if (v34 == 0x7F9919C7ACD04D39)
              {
                goto LABEL_67;
              }

              v21 = 0x33D96A0AB5A284C2;
            }

            else
            {
              if (v34 == 0x721C3F2F787AA9DLL)
              {
                goto LABEL_67;
              }

              v21 = 0xB6B27F51290F905;
            }

            if (v34 != v21)
            {
              goto LABEL_10;
            }
          }

          else
          {
            if (v33)
            {
              v8 = 7;
              goto LABEL_10;
            }

            v20 = v34;
          }

LABEL_67:
          v25(v24, v33, v20);
          v8 = 0;
          goto LABEL_10;
        }

        tb_client_connection_message_destruct();
        v8 = 4;
      }

LABEL_11:
      v10 = get_adm_log_object();
      if (os_signpost_enabled(v10))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", &unk_223C17543, &buf, 2u);
      }

      if (v8)
      {
        v11 = 1970170734;
        v12 = get_adm_log_object();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v8;
          _os_log_error_impl(&dword_223B4A000, v12, OS_LOG_TYPE_ERROR, "tb call to configure failed: tbError=%d", &buf, 8u);
        }

        goto LABEL_34;
      }

      v15 = *(v29 + 40);
      if (v15 == 1)
      {
        v16 = v29 + 6;
      }

      else
      {
        v16 = 0;
      }

      if (v15 != 1)
      {
        v11 = 0;
LABEL_34:
        _Block_object_dispose(&v28, 8);
LABEL_35:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return v11;
      }

      v17 = get_adm_log_object();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_29:
        v18 = *v16;
        if (*v16 > 0x721C3F2F787AA9CLL)
        {
          switch(v18)
          {
            case 0x721C3F2F787AA9DLL:
              v11 = 1684498798;
              goto LABEL_34;
            case 0xB6B27F51290F905:
              v11 = 1684496757;
              goto LABEL_34;
            case 0x33D96A0AB5A284C2:
              v11 = 1684500595;
              goto LABEL_34;
          }
        }

        else
        {
          switch(v18)
          {
            case 0xA79E13CA15F5775CLL:
              v11 = 1684497264;
              goto LABEL_34;
            case 0xAD6FFC2BEEE2EB53:
              v11 = 1970431354;
              goto LABEL_34;
            case 0xF9A9592E1248F97ALL:
              v11 = 1969646964;
              goto LABEL_34;
          }
        }

        v11 = 1970170734;
        goto LABEL_34;
      }

      v22 = *v16;
      if (*v16 > 0x721C3F2F787AA9CLL)
      {
        switch(v22)
        {
          case 0x721C3F2F787AA9DLL:
            v23 = "SETUPERROR_INITIALIZING";
            goto LABEL_79;
          case 0xB6B27F51290F905:
            v23 = "SETUPERROR_SETTINGAUSTRIP";
            goto LABEL_79;
          case 0x33D96A0AB5A284C2:
            v23 = "SETUPERROR_SETTINGPROPSTRIP";
            goto LABEL_79;
        }
      }

      else
      {
        switch(v22)
        {
          case 0xA79E13CA15F5775CLL:
            v23 = "SETUPERROR_COMPILINGGRAPH";
            goto LABEL_79;
          case 0xAD6FFC2BEEE2EB53:
            v23 = "SETUPERROR_PARSINGDATABASE";
            goto LABEL_79;
          case 0xF9A9592E1248F97ALL:
            v23 = "SETUPERROR_FORMATNOTSUPPORTED";
LABEL_79:
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v23;
            _os_log_error_impl(&dword_223B4A000, v17, OS_LOG_TYPE_ERROR, "tb call to configure failed: failure=%s", &buf, 0xCu);
            goto LABEL_29;
        }
      }

      if (v22 == 0x7F9919C7ACD04D39)
      {
        v23 = "SETUPERROR_UNKNOWN";
      }

      else
      {
        v23 = "<unknown>";
      }

      goto LABEL_79;
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = get_adm_log_object();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_223B4A000, v13, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) configure: EK unavailable", &buf, 0xCu);
  }

  v11 = 1970431354;
  if (v6)
  {
    goto LABEL_35;
  }

  return v11;
}

__n128 __Block_byref_object_copy__46(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN3adm5graph30ExclaveDSPControllerClientImpl9configureEjNS_8exclaves9InputPortE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t adm::graph::ExclaveDSPControllerClientImpl::configure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v57 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a8;
    v17 = std::__shared_weak_count::lock(v9);
    if (v17)
    {
      v18 = *(a1 + 8);
      if (v18)
      {
        *(a1 + 76) = a5;
        adm::exclaves::utility::convert_to<std::optional<audiodsptypes_streamdescription_s>,CA::StreamDescription>(v49, a2);
        adm::exclaves::utility::convert_to<std::optional<audiodsptypes_streamdescription_s>,CA::StreamDescription>(v47, a3);
        adm::exclaves::utility::convert_to<std::optional<audiodsptypes_streamdescription_s>,CA::StreamDescription>(v45, a4);
        if (a6 == 1)
        {
          v19 = 0x3DF307DCB5382200;
          v20 = 243;
        }

        else
        {
          if (a6)
          {
            v19 = 0;
            v24 = 0;
            v20 = 0;
LABEL_16:
            v43 = v20 | v19;
            v44 = v24;
            v25 = 0x29D9165411843273;
            if (a7 != 1886216809)
            {
              v25 = 0;
            }

            v41 = v25;
            v42 = a7 == 1886216809;
            v39 = adm::exclaves::utility::convert_to<std::optional<audiodsputility_outputport_s>,adm::exclaves::OutputPort>(v10);
            v40 = v26;
            if (v50)
            {
              if (v48)
              {
                if (v46)
                {
                  if (a7 == 1886216809)
                  {
                    if (v26)
                    {
                      if (v24)
                      {
                        if (*(a1 + 72))
                        {
                          *&buf = 0;
                          *(&buf + 1) = &buf;
                          v54 = 0x3802000000;
                          v55 = __Block_byref_object_copy__42;
                          v56 = __Block_byref_object_dispose__43;
                          adm::ScopedSignpostTBCallPrepareForIO::ScopedSignpostTBCallPrepareForIO(v38);
                          v37[0] = MEMORY[0x277D85DD0];
                          v37[1] = 0x40000000;
                          v37[2] = ___ZN3adm5graph30ExclaveDSPControllerClientImpl9configureERKN2CA17StreamDescriptionES5_S5_jNS_8exclaves17MicRefLatencyTypeENS6_9InputPortENS6_10OutputPortE_block_invoke;
                          v37[3] = &unk_2784F06D8;
                          v37[4] = &buf;
                          v27 = audiodspcontroller_audiodspcontrol_prepareforio(v18, a5, v49, v47, v45, &v43, &v41, &v39, v37);
                          adm::ScopedSignpostTBCallPrepareForIO::closeNow(v38);
                          if (v27)
                          {
                            v22 = 1970170734;
                            adm_log_object = get_adm_log_object();
                            if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
                            {
                              *v51 = 67109120;
                              LODWORD(v52) = v27;
                              _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "tb call to configure failed: tbError=%d", v51, 8u);
                            }

                            goto LABEL_54;
                          }

                          v31 = *(*(&buf + 1) + 40);
                          if (v31 == 1)
                          {
                            v32 = (*(&buf + 1) + 48);
                          }

                          else
                          {
                            v32 = 0;
                          }

                          if (v31 != 1)
                          {
                            v22 = 0;
LABEL_54:
                            adm::ScopedSignpostTBCallPrepareForIO::~ScopedSignpostTBCallPrepareForIO(v38);
                            _Block_object_dispose(&buf, 8);
                            goto LABEL_11;
                          }

                          v33 = get_adm_log_object();
                          if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                          {
LABEL_49:
                            v34 = *v32;
                            if (*v32 > 0x721C3F2F787AA9CLL)
                            {
                              switch(v34)
                              {
                                case 0x721C3F2F787AA9DLL:
                                  v22 = 1684498798;
                                  goto LABEL_54;
                                case 0xB6B27F51290F905:
                                  v22 = 1684496757;
                                  goto LABEL_54;
                                case 0x33D96A0AB5A284C2:
                                  v22 = 1684500595;
                                  goto LABEL_54;
                              }
                            }

                            else
                            {
                              switch(v34)
                              {
                                case 0xA79E13CA15F5775CLL:
                                  v22 = 1684497264;
                                  goto LABEL_54;
                                case 0xAD6FFC2BEEE2EB53:
                                  v22 = 1970431354;
                                  goto LABEL_54;
                                case 0xF9A9592E1248F97ALL:
                                  v22 = 1969646964;
                                  goto LABEL_54;
                              }
                            }

                            v22 = 1970170734;
                            goto LABEL_54;
                          }

                          v35 = *v32;
                          if (*v32 > 0x721C3F2F787AA9CLL)
                          {
                            switch(v35)
                            {
                              case 0x721C3F2F787AA9DLL:
                                v36 = "SETUPERROR_INITIALIZING";
                                goto LABEL_80;
                              case 0xB6B27F51290F905:
                                v36 = "SETUPERROR_SETTINGAUSTRIP";
                                goto LABEL_80;
                              case 0x33D96A0AB5A284C2:
                                v36 = "SETUPERROR_SETTINGPROPSTRIP";
                                goto LABEL_80;
                            }
                          }

                          else
                          {
                            switch(v35)
                            {
                              case 0xA79E13CA15F5775CLL:
                                v36 = "SETUPERROR_COMPILINGGRAPH";
                                goto LABEL_80;
                              case 0xAD6FFC2BEEE2EB53:
                                v36 = "SETUPERROR_PARSINGDATABASE";
                                goto LABEL_80;
                              case 0xF9A9592E1248F97ALL:
                                v36 = "SETUPERROR_FORMATNOTSUPPORTED";
LABEL_80:
                                *v51 = 136315138;
                                v52 = v36;
                                _os_log_error_impl(&dword_223B4A000, v33, OS_LOG_TYPE_ERROR, "tb call to configure failed: failure=%s", v51, 0xCu);
                                goto LABEL_49;
                            }
                          }

                          if (v35 == 0x7F9919C7ACD04D39)
                          {
                            v36 = "SETUPERROR_UNKNOWN";
                          }

                          else
                          {
                            v36 = "<unknown>";
                          }

                          goto LABEL_80;
                        }

                        v22 = 1768843636;
                        v29 = get_adm_log_object();
                        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(buf) = 0;
                          v30 = "failed to create refStreamInboundBuffer";
                          goto LABEL_42;
                        }

LABEL_11:
                        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
                        return v22;
                      }

                      v22 = 1651536493;
                      v29 = get_adm_log_object();
                      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_11;
                      }

                      LOWORD(buf) = 0;
                      v30 = "failed to convert latency";
                    }

                    else
                    {
                      v22 = 1651536493;
                      v29 = get_adm_log_object();
                      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_11;
                      }

                      LOWORD(buf) = 0;
                      v30 = "failed to convert output port";
                    }
                  }

                  else
                  {
                    v22 = 1651536493;
                    v29 = get_adm_log_object();
                    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_11;
                    }

                    LOWORD(buf) = 0;
                    v30 = "failed to convert input port";
                  }
                }

                else
                {
                  v22 = 1651536493;
                  v29 = get_adm_log_object();
                  if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_11;
                  }

                  LOWORD(buf) = 0;
                  v30 = "failed to convert out format";
                }
              }

              else
              {
                v22 = 1651536493;
                v29 = get_adm_log_object();
                if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_11;
                }

                LOWORD(buf) = 0;
                v30 = "failed to convert ref format";
              }
            }

            else
            {
              v22 = 1651536493;
              v29 = get_adm_log_object();
              if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_11;
              }

              LOWORD(buf) = 0;
              v30 = "failed to convert mic format";
            }

LABEL_42:
            _os_log_error_impl(&dword_223B4A000, v29, OS_LOG_TYPE_ERROR, v30, &buf, 2u);
            goto LABEL_11;
          }

          v19 = 0x8C3BC6B79890B00;
          v20 = 133;
        }

        v24 = 1;
        goto LABEL_16;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = get_adm_log_object();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_223B4A000, v21, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) configure: EK unavailable", &buf, 0xCu);
  }

  v22 = 1970431354;
  if (v17)
  {
    goto LABEL_11;
  }

  return v22;
}

__n128 __Block_byref_object_copy__42(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t adm::ScopedSignpostTBCallPrepareForIO::ScopedSignpostTBCallPrepareForIO(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  adm_log_object = get_adm_log_object();
  if (os_signpost_enabled(adm_log_object))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_223B4A000, adm_log_object, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", &unk_223C17543, v4, 2u);
  }

  return a1;
}

uint64_t ___ZN3adm5graph30ExclaveDSPControllerClientImpl9configureERKN2CA17StreamDescriptionES5_S5_jNS_8exclaves17MicRefLatencyTypeENS6_9InputPortENS6_10OutputPortE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

void adm::ScopedSignpostTBCallPrepareForIO::closeNow(adm::ScopedSignpostTBCallPrepareForIO *this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*this == 1)
  {
    *this = 0;
    v2 = *(this + 16);
    adm_log_object = get_adm_log_object();
    v4 = os_signpost_enabled(adm_log_object);
    if (v2)
    {
      if (!v4)
      {
        return;
      }

      v5 = *(this + 1);
      v9 = 136315138;
      v10 = v5;
      v6 = "%s";
      v7 = adm_log_object;
      v8 = 12;
    }

    else
    {
      if (!v4)
      {
        return;
      }

      LOWORD(v9) = 0;
      v6 = &unk_223C17543;
      v7 = adm_log_object;
      v8 = 2;
    }

    _os_signpost_emit_with_name_impl(&dword_223B4A000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", v6, &v9, v8);
  }
}

void adm::ScopedSignpostTBCallPrepareForIO::~ScopedSignpostTBCallPrepareForIO(adm::ScopedSignpostTBCallPrepareForIO *this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*this == 1)
  {
    *this = 0;
    v2 = *(this + 16);
    adm_log_object = get_adm_log_object();
    v4 = os_signpost_enabled(adm_log_object);
    if (v2)
    {
      if (!v4)
      {
        return;
      }

      v5 = *(this + 1);
      v9 = 136315138;
      v10 = v5;
      v6 = "%s";
      v7 = adm_log_object;
      v8 = 12;
    }

    else
    {
      if (!v4)
      {
        return;
      }

      LOWORD(v9) = 0;
      v6 = &unk_223C17543;
      v7 = adm_log_object;
      v8 = 2;
    }

    _os_signpost_emit_with_name_impl(&dword_223B4A000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::PrepareForIO", v6, &v9, v8);
  }
}

void adm::graph::ExclaveDSPControllerClientImpl::~ExclaveDSPControllerClientImpl(adm::graph::ExclaveDSPControllerClientImpl *this)
{
  adm::graph::ExclaveDSPControllerClientImpl::~ExclaveDSPControllerClientImpl(this);

  JUMPOUT(0x223DF43A0);
}

{
  v48 = *MEMORY[0x277D85DE8];
  *this = &unk_28371B008;
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = this;
    _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) destroyed", &buf, 0xCu);
  }

  v3 = *(this + 2);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4 && *(this + 1))
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x3802000000;
      v30 = __Block_byref_object_copy_;
      v31 = __Block_byref_object_dispose_;
      v5 = get_adm_log_object();
      if (os_signpost_enabled(v5))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::Unconfigure", &unk_223C17543, &buf, 2u);
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 0x40000000;
      v24 = ___ZN3adm5graph30ExclaveDSPControllerClientImpl11unconfigureEv_block_invoke;
      v25 = &unk_2784F06B0;
      v26 = &v27;
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      buf = 0u;
      v42 = 0u;
      v6 = tb_client_connection_message_construct();
      if (!v6)
      {
        tb_message_precheck_encoding();
        tb_message_raw_encode_u64();
        tb_message_complete();
        v34 = 0;
        v7 = tb_connection_send_query();
        if ((v7 & 0xFFFFFFF7) != 0)
        {
          v6 = v7;
LABEL_11:
          tb_client_connection_message_destruct();
          goto LABEL_12;
        }

        if (v34)
        {
          v32 = 0;
          v33 = 0;
          tb_message_decode_u8();
          if (v32 == 1)
          {
            tb_message_decode_u64();
            v6 = 7;
            v18 = v33;
            if (v33 <= 0x721C3F2F787AA9CLL)
            {
              if (v33 == 0xA79E13CA15F5775CLL || v33 == 0xAD6FFC2BEEE2EB53)
              {
                goto LABEL_45;
              }

              v19 = 0xF9A9592E1248F97ALL;
            }

            else if (v33 > 0x33D96A0AB5A284C1)
            {
              if (v33 == 0x7F9919C7ACD04D39)
              {
                goto LABEL_45;
              }

              v19 = 0x33D96A0AB5A284C2;
            }

            else
            {
              if (v33 == 0x721C3F2F787AA9DLL)
              {
                goto LABEL_45;
              }

              v19 = 0xB6B27F51290F905;
            }

            if (v33 != v19)
            {
              goto LABEL_11;
            }
          }

          else
          {
            if (v32)
            {
              v6 = 7;
              goto LABEL_11;
            }

            v18 = v33;
          }

LABEL_45:
          v24(v23, v32, v18);
          v6 = 0;
          goto LABEL_11;
        }

        tb_client_connection_message_destruct();
        v6 = 4;
      }

LABEL_12:
      v8 = get_adm_log_object();
      if (os_signpost_enabled(v8))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_223B4A000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::TBCall::Unconfigure", &unk_223C17543, &buf, 2u);
      }

      if (v6)
      {
        v9 = get_adm_log_object();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
LABEL_59:
          _Block_object_dispose(&v27, 8);
LABEL_60:
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          goto LABEL_61;
        }

        LODWORD(buf) = 67109120;
        DWORD1(buf) = v6;
        v10 = "tb call to unconfigure failed: tbError=%d";
        v11 = v9;
        v12 = 8;
LABEL_58:
        _os_log_error_impl(&dword_223B4A000, v11, OS_LOG_TYPE_ERROR, v10, &buf, v12);
        goto LABEL_59;
      }

      v14 = v28;
      if (*(v28 + 40) != 1)
      {
        goto LABEL_59;
      }

      v15 = get_adm_log_object();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_59;
      }

      v16 = v14[6];
      if (v16 > 0x721C3F2F787AA9CLL)
      {
        switch(v16)
        {
          case 0x721C3F2F787AA9DLL:
            v17 = "SETUPERROR_INITIALIZING";
            goto LABEL_57;
          case 0xB6B27F51290F905:
            v17 = "SETUPERROR_SETTINGAUSTRIP";
            goto LABEL_57;
          case 0x33D96A0AB5A284C2:
            v17 = "SETUPERROR_SETTINGPROPSTRIP";
            goto LABEL_57;
        }
      }

      else
      {
        switch(v16)
        {
          case 0xA79E13CA15F5775CLL:
            v17 = "SETUPERROR_COMPILINGGRAPH";
            goto LABEL_57;
          case 0xAD6FFC2BEEE2EB53:
            v17 = "SETUPERROR_PARSINGDATABASE";
            goto LABEL_57;
          case 0xF9A9592E1248F97ALL:
            v17 = "SETUPERROR_FORMATNOTSUPPORTED";
LABEL_57:
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v17;
            v10 = "tb call to unconfigure failed: failure=%s";
            v11 = v15;
            v12 = 12;
            goto LABEL_58;
        }
      }

      if (v16 == 0x7F9919C7ACD04D39)
      {
        v17 = "SETUPERROR_UNKNOWN";
      }

      else
      {
        v17 = "<unknown>";
      }

      goto LABEL_57;
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = get_adm_log_object();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = this;
    _os_log_impl(&dword_223B4A000, v13, OS_LOG_TYPE_DEFAULT, "ControllerClient(%p) unconfigure: EK unavailable", &buf, 0xCu);
  }

  if (v4)
  {
    goto LABEL_60;
  }

LABEL_61:
  MEMORY[0x223DF3E50](this + 96);
  caulk::mach::mach_port::~mach_port(this + 18);
  v20 = *(this + 6);
  if (v20)
  {
    *(this + 7) = v20;
    operator delete(v20);
  }

  v21 = *(this + 3);
  if (v21)
  {
    *(this + 4) = v21;
    operator delete(v21);
  }

  v22 = *(this + 2);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN3adm5graph30ExclaveDSPControllerClientImpl11unconfigureEv_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::ControllerContext *,anonymous namespace::getControllerEK(unsigned long long,anonymous namespace::ServiceNames const&)::$_0,std::allocator<anonymous namespace::ControllerContext>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN12_GLOBAL__N_115getControllerEKEyRKNS_12ServiceNamesEE3$_0"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<anonymous namespace::ControllerContext *,anonymous namespace::getControllerEK(unsigned long long,anonymous namespace::ServiceNames const&)::$_0,std::allocator<anonymous namespace::ControllerContext>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DF43A0);
}

void non-virtual thunk toadm::graph::ExclaveKernel::getOutputPropertyIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void non-virtual thunk toadm::graph::ExclaveKernel::getInputPropertyIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void non-virtual thunk toadm::graph::ExclaveKernel::setProperty(uint64_t a1@<X8>)
{
  *a1 = 1853122148;
  *(a1 + 16) = 0;
}

void non-virtual thunk toadm::graph::ExclaveKernel::getProperty(void *a1@<X4>, uint64_t a2@<X8>)
{
  *a1 = 0;
  *a2 = 1853122148;
  *(a2 + 16) = 0;
}

uint64_t non-virtual thunk toadm::graph::ExclaveKernel::setParameter@<X0>(adm::graph::ExclaveKernel *this@<X0>, float a2@<S0>, uint64_t a3@<X8>)
{
  result = (*(**(this + 43) + 104))(*(this + 43), a2);
  if (result)
  {
    v5 = 0;
    *a3 = result;
  }

  else
  {
    v5 = 1;
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t adm::graph::ExclaveKernel::setParameter@<X0>(adm::graph::ExclaveKernel *this@<X0>, float a2@<S0>, uint64_t a3@<X8>)
{
  result = (*(**(this + 46) + 104))(*(this + 46), a2);
  if (result)
  {
    v5 = 0;
    *a3 = result;
  }

  else
  {
    v5 = 1;
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t adm::graph::ExclaveKernel::hasParameter(adm::graph::ExclaveKernel *this)
{
  if ((*(**(this + 46) + 64))(*(this + 46)))
  {
    return 1;
  }

  v3 = *(**(this + 46) + 72);

  return v3();
}

void non-virtual thunk toadm::graph::ExclaveKernel::~ExclaveKernel(adm::graph::ExclaveKernel *this)
{
  adm::graph::ExclaveKernel::~ExclaveKernel((this - 24));

  JUMPOUT(0x223DF43A0);
}

{
  adm::graph::ExclaveKernel::~ExclaveKernel((this - 24));
}

void adm::graph::ExclaveKernel::~ExclaveKernel(adm::graph::ExclaveKernel *this)
{
  v2 = *(this + 46);
  *(this + 46) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  adm::graph::KernelConfiguration::~KernelConfiguration((this + 184));
  *this = &unk_28371D0B8;
  *(this + 3) = &unk_28371D188;
  adm::graph::AudioIssueDetectorClient::IDOwner::clear((this + 168));
  MEMORY[0x223DF3E50](this + 144);
  v3 = (this + 104);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 80);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 56);
  std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 32);
  std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_28371D218;
  adm::utility::synchronized_pointer<adm::graph::KernelHostInterface>::~synchronized_pointer(this + 1);
}

{
  adm::graph::ExclaveKernel::~ExclaveKernel(this);

  JUMPOUT(0x223DF43A0);
}

void adm::graph::ExclaveKernel::getOutputPropertyIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void adm::graph::ExclaveKernel::getInputPropertyIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void adm::graph::ExclaveKernel::setProperty(uint64_t a1@<X8>)
{
  *a1 = 1853122148;
  *(a1 + 16) = 0;
}

void adm::graph::ExclaveKernel::getProperty(void *a1@<X4>, uint64_t a2@<X8>)
{
  *a1 = 0;
  *a2 = 1853122148;
  *(a2 + 16) = 0;
}

void adm::graph::ExclaveKernel::doEndProcessing(adm::graph::ExclaveKernel *this)
{
  (*(**(this + 46) + 56))(*(this + 46));

  adm::graph::DSPKernel::doEndProcessing(this);
}

uint64_t adm::graph::ExclaveKernel::doClientIO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 384) == 1)
  {
    adm::graph::AudioIssueDetectorClient::performDetection((a1 + 160), 1, a5 + 80 * *(a1 + 376), 1, a3, (a1 + 128));
  }

  v6 = *(**(a1 + 368) + 48);

  return v6();
}

unint64_t adm::graph::ExclaveKernel::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    result = adm::graph::KernelConfiguration::operator==(a1 + 184, result + 184);
    if (result)
    {
      if (*(a1 + 336) != v4[336])
      {
        return 0;
      }

      v5 = *(a1 + 344);
      v6 = v4[344];
      if (v5 == v6 && v5 != 0)
      {
        v5 = *(a1 + 340);
        v6 = *(v4 + 85);
      }

      if (v5 != v6)
      {
        return 0;
      }

      v8 = *(a1 + 352);
      v9 = v4[352];
      if (v8 == v9 && v8 != 0)
      {
        v8 = *(a1 + 348);
        v9 = *(v4 + 87);
      }

      if (v8 != v9)
      {
        return 0;
      }

      v11 = *(a1 + 360);
      v12 = v4[360];
      if (v11 == v12 && *(a1 + 360))
      {
        v11 = *(a1 + 356);
        v12 = *(v4 + 89);
      }

      return v11 == v12 && *(a1 + 364) == *(v4 + 91) && *(a1 + 368) == *(v4 + 46);
    }
  }

  return result;
}

BOOL adm::graph::KernelConfiguration::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v5 = *a2;
    if (!*a2)
    {
      v6 = kCFCompareGreaterThan;
LABEL_9:
      CFRelease(v4);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *a2;
    if (!*a2)
    {
      goto LABEL_11;
    }
  }

  CFRetain(v5);
  if (v4)
  {
    v6 = CFStringCompare(v4, v5, 0);
  }

  else
  {
    v6 = kCFCompareLessThan;
  }

  CFRelease(v5);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v6)
  {
    return 0;
  }

LABEL_11:
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a2 + 8);
  if (v7 - v8 != *(a2 + 16) - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    if (*v8 != *v9 || *(v8 + 8) != *(v9 + 8) || *(v8 + 12) != *(v9 + 12) || *(v8 + 16) != *(v9 + 16) || *(v8 + 20) != *(v9 + 20) || *(v8 + 24) != *(v9 + 24) || *(v8 + 28) != *(v9 + 28) || *(v8 + 32) != *(v9 + 32))
    {
      return 0;
    }

    v8 += 40;
    v9 += 40;
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a2 + 32);
  if (v10 - v11 != *(a2 + 40) - v12)
  {
    return 0;
  }

  while (v11 != v10)
  {
    if (*v11 != *v12 || *(v11 + 8) != *(v12 + 8) || *(v11 + 12) != *(v12 + 12) || *(v11 + 16) != *(v12 + 16) || *(v11 + 20) != *(v12 + 20) || *(v11 + 24) != *(v12 + 24) || *(v11 + 28) != *(v12 + 28) || *(v11 + 32) != *(v12 + 32))
    {
      return 0;
    }

    v11 += 40;
    v12 += 40;
  }

  v14 = *(a1 + 56);
  v13 = *(a1 + 64);
  v15 = *(a2 + 56);
  if (v13 - v14 != *(a2 + 64) - v15)
  {
    return 0;
  }

  while (v14 != v13)
  {
    if (*v14 != *v15)
    {
      return 0;
    }

    v14 += 8;
    v15 += 2;
  }

  v17 = *(a1 + 80);
  v16 = *(a1 + 88);
  v18 = *(a2 + 80);
  if (v16 - v17 != *(a2 + 88) - v18)
  {
    return 0;
  }

  while (v17 != v16)
  {
    if (*v17 != *v18)
    {
      return 0;
    }

    v17 += 8;
    v18 += 2;
  }

  v20 = *(a1 + 104);
  v19 = *(a1 + 112);
  v21 = *(a2 + 104);
  if (v19 - v20 != *(a2 + 112) - v21)
  {
    return 0;
  }

  while (v20 != v19)
  {
    if (*v20 != *v21 || *(v20 + 4) != *(v21 + 4))
    {
      return 0;
    }

    v20 += 8;
    v21 += 8;
  }

  v24 = *(a1 + 128);
  v23 = *(a1 + 136);
  v25 = *(a2 + 128);
  if (v23 - v24 != *(a2 + 136) - v25)
  {
    return 0;
  }

  if (v24 == v23)
  {
    return 1;
  }

  v26 = v24 + 16;
  do
  {
    v27 = *v25;
    v25 += 2;
    result = *(v26 - 16) == v27;
    v29 = *(v26 - 16) != v27 || v26 == v23;
    v26 += 16;
  }

  while (!v29);
  return result;
}

uint64_t anonymous namespace::getReferenceTerminalIndex(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    while (1)
    {
      v5 = *v2;
      if (adm::graph::SemanticSet::contains(&v5, 1))
      {
        break;
      }

      if (++v2 == v3)
      {
        v2 = v3;
        break;
      }
    }

    v3 = a1[1];
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return v2 - *a1;
  }
}

void adm::graph::ExclaveKernelConfiguration::~ExclaveKernelConfiguration(adm::graph::ExclaveKernelConfiguration *this)
{
  v2 = *(this + 23);
  *(this + 23) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  adm::graph::KernelConfiguration::~KernelConfiguration(this);
}

const void **adm::dsp::v2::Graph::connect(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  RemoteProcessingBlockHost = CADSPGraphCreateRemoteProcessingBlockHost();
  if (RemoteProcessingBlockHost)
  {
    v10 = 0;
    cf = RemoteProcessingBlockHost;
    v7 = 1;
    CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(&v10);
    CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted((a1 + 40));
    v4 = cf;
    *(a1 + 40) = cf;
    CFRetain(v4);
    RPBServerGetSharedInstance();
    RPBServerAddHost();
    if (v7)
    {
      return CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(&cf);
    }
  }

  else
  {
    v9 = CADSPErrorCreate();
    v8 = 0;
    v10 = 0;
    cf = v9;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v10);
    v7 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v8);
  }

  return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&cf);
}

const void **CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **adm::dsp::v2::Graph::getLatencyInSamples@<X0>(adm::dsp::v2::Graph *this@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v14 = 0;
  v4 = 0;
  if (CADSPGraphGetLatency())
  {
    v5 = 0;
  }

  else
  {
    v5 = v14 == 0;
  }

  if (v5)
  {
    v4 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v14 = v4;
  }

  v13 = v4;
  if (v4)
  {
    v13 = 0;
    v12 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v13);
    v11 = 0;
    v15 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v15);
    v10 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    v9 = 0;
    v15 = v4;
    LOBYTE(v16) = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *a2 = 1685287015;
    *(a2 + 16) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v15);
  }

  else
  {
    v6 = v16;
    v12 = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v13);
    v9 = v6;
    v10 = 1;
    CA::DSP::Graph::GetModel(&v15, *(this + 1));
    v7 = vcvtpd_s64_f64(*&v6 * (MEMORY[0x223DF3910](v15) >> 32));
    result = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v15);
    *a2 = v7;
    *(a2 + 16) = 1;
  }

  return result;
}

void sub_223BBA38C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const void **CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::Graph::GetModel(CA::DSP::Graph *this, uint64_t a2)
{
  Model = CADSPGraphGetModel();
  v4 = Model;
  if (Model)
  {
    CFRetain(Model);
  }

  v6 = 0;
  *this = v4;
  return CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v6);
}

const void **CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **adm::dsp::v2::Graph::setProperty@<X0>(void *a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  result = CA::DSP::Graph::SetProperty(&v7, *(a2 + 8), a1, a3, a5);
  if (v8)
  {
    *(a4 + 16) = 1;
  }

  else
  {
    *a4 = 1685287015;
    *(a4 + 16) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  return result;
}

const void **CA::DSP::Graph::SetProperty(CA::DSP::Graph *this, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v6 = 0;
  if (!CADSPGraphSetProperty())
  {
    v6 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v11 = v6;
  }

  v10 = v6;
  if (v6)
  {
    v10 = 0;
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v8 = 0;
    v11 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  else
  {
    v9 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *(this + 8) = 1;
  }

  return result;
}

const void **adm::dsp::v2::Graph::getProperty@<X0>(uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v13 = a3[1];
  v11 = 0;
  v7 = 0;
  if (CADSPGraphGetProperty())
  {
    v8 = 0;
  }

  else
  {
    v8 = v11 == 0;
  }

  if (v8)
  {
    v7 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v11 = v7;
  }

  v16 = v7;
  if (v7)
  {
    v16 = 0;
    v15 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16);
    v14 = 0;
    v16 = 0;
    v11 = v7;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16);
    v12 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v14);
    *a4 = 1685287015;
    *(a4 + 16) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
  }

  else
  {
    v15 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16);
    v12 = 1;
    v10 = v13;
    *a3 = v6;
    a3[1] = v10;
    *(a4 + 16) = 1;
  }

  return result;
}

const void **adm::dsp::v2::Graph::getPropertyInfo@<X0>(uint64_t a3@<X8>)
{
  v17 = 0;
  v15 = 0;
  v4 = 0;
  if (CADSPGraphGetPropertyInfo())
  {
    v5 = 0;
  }

  else
  {
    v5 = v15 == 0;
  }

  if (v5)
  {
    v4 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v15 = v4;
  }

  v14 = v4;
  if (v4)
  {
    v14 = 0;
    v13 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v14);
    v12 = 0;
    v16 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16);
    v10 = v4;
    v11 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v7 = 0;
    v9 = 1685287015;
  }

  else
  {
    v6 = v17;
    v7 = 1;
    v13 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v14);
    v10 = v6;
    v11 = 1;
    v9 = HIDWORD(v6);
    *(a3 + 8) = (v6 & 2) != 0;
  }

  *a3 = v9;
  *(a3 + 16) = v7;
  return result;
}

BOOL adm::dsp::v2::Graph::hasProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) == 0 || a3)
  {
    if ((a3 & 0x100000000) == 0 || a3 != 1)
    {
      return CADSPGraphHasProperty() != 0;
    }

    CA::DSP::Graph::GetPropertyDirection(&v7, *(a1 + 8), a2);
    v3 = v8;
    v4 = v7 == 1;
  }

  else
  {
    CA::DSP::Graph::GetPropertyDirection(&v7, *(a1 + 8), a2);
    v3 = v8;
    v4 = v7 == 0;
  }

  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  return v5;
}

const void **CA::DSP::Graph::GetPropertyDirection(CA::DSP::Graph *this, uint64_t a2, uint64_t a3)
{
  result = CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int,CADSPDirection *,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int &,CA::DSP::C::API::Tags::Result<CADSPDirection> const&>(&v7, MEMORY[0x277CEFA60], a2, a3);
  v5 = v8;
  if (v8 == 1)
  {
    *this = v7;
    *(this + 8) = v5;
  }

  else
  {
    v6 = v7;
    v7 = 0;
    v9 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *(this + 8) = v5;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  return result;
}

const void **CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int,CADSPDirection *,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int &,CA::DSP::C::API::Tags::Result<CADSPDirection> const&>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *, const void **), uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v11 = 0;
  v5 = a2(a3, a4, &v12, &v11);
  v6 = v11;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v11 == 0;
  }

  if (v7)
  {
    v6 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v11 = v6;
  }

  v10 = v6;
  if (v6)
  {
    v8 = 0;
    v10 = 0;
    *a1 = v6;
  }

  else
  {
    *a1 = v12;
    v8 = 1;
  }

  *(a1 + 8) = v8;
  return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
}

uint64_t adm::dsp::v2::Graph::getPropertyIDs@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = a2 != 0;
  v4[0] = a1;
  v4[1] = &v5;
  v4[2] = a3;
  v6 = MEMORY[0x277D85DD0];
  v7 = 0x40000000;
  v8 = ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK3adm3dsp2v25Graph14getPropertyIDsENS4_9DirectionEE3__0EEvOT__block_invoke;
  v9 = &__block_descriptor_tmp_26;
  v10 = v4;
  CADSPGraphEnumerateProperties();
  return std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
}

uint64_t ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK3adm3dsp2v25Graph14getPropertyIDsENS4_9DirectionEE3__0EEvOT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  CA::DSP::Graph::GetPropertyDirection(&v17, *(*v3 + 8), a2);
  if (v17 == **(v3 + 8))
  {
    v4 = v18;
  }

  else
  {
    v4 = 0;
  }

  if ((v18 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v17);
  }

  if (v4)
  {
    v5 = *(v3 + 16);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = v7 - *v5;
      v11 = v10 >> 2;
      v12 = (v10 >> 2) + 1;
      if (v12 >> 62)
      {
        std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
      }

      v13 = v6 - v9;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::allocator<float>::allocate_at_least[abi:ne200100](v14);
      }

      *(4 * v11) = v2;
      v8 = 4 * v11 + 4;
      memcpy(0, v9, v10);
      v15 = *v5;
      *v5 = 0;
      *(v5 + 8) = v8;
      *(v5 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v7 = v2;
      v8 = (v7 + 1);
    }

    *(v5 + 8) = v8;
  }

  return 0;
}

const void **adm::dsp::v2::Graph::setParameter@<X0>(adm::dsp::v2::Graph *this@<X0>, float a2@<S0>, uint64_t a3@<X8>, uint64_t a4@<X1>)
{
  result = CA::DSP::Graph::SetParameter(&v7, *(this + 1), a2, a4);
  v6 = v8;
  if (v8 != 1)
  {
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
    v6 = 0;
    *a3 = 1685287015;
  }

  *(a3 + 16) = v6;
  return result;
}

const void **CA::DSP::Graph::SetParameter(CA::DSP::Graph *this, uint64_t a2, float a3, uint64_t a4)
{
  v10 = 0;
  v5 = 0;
  if (!CADSPGraphSetParameter())
  {
    v5 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v10 = v5;
  }

  v9 = v5;
  if (v5)
  {
    v9 = 0;
    v8 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    v7 = 0;
    v10 = 0;
    *this = v5;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  else
  {
    v8 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *(this + 8) = 1;
  }

  return result;
}

const void **adm::dsp::v2::Graph::getParameter@<X0>(uint64_t a3@<X8>)
{
  v18 = 0;
  v16 = 0;
  Parameter = CADSPGraphGetParameter();
  v5 = 0;
  if (Parameter)
  {
    v6 = 0;
  }

  else
  {
    v6 = v16 == 0;
  }

  if (v6)
  {
    v5 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v16 = v5;
  }

  v15 = v5;
  if (v5)
  {
    v15 = 0;
    v13 = v5;
    v14 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v15);
    v10 = v13;
    v13 = 0;
    v17 = 0;
    v11 = v10;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v17);
    v12 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v13);
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    v8 = 0;
    *a3 = 1685287015;
  }

  else
  {
    v7 = v18;
    LODWORD(v13) = v18;
    v8 = 1;
    v14 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v15);
    LODWORD(v11) = v7;
    v12 = 1;
    *a3 = v7;
  }

  *(a3 + 16) = v8;
  return result;
}

uint64_t adm::dsp::v2::Graph::hasParameter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!CADSPGraphHasParameter())
  {
    return 0;
  }

  if ((a3 & 0x100000000) == 0)
  {
    return 1;
  }

  if (a3 == 1)
  {
    CA::DSP::Graph::GetParameterDirection(&v10, *(a1 + 8), a2);
    v6 = v11;
    v7 = v10 == 1;
    goto LABEL_9;
  }

  if (a3)
  {
    return 1;
  }

  CA::DSP::Graph::GetParameterDirection(&v10, *(a1 + 8), a2);
  v6 = v11;
  v7 = v10 == 0;
LABEL_9:
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if ((v6 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
  }

  return v8;
}

const void **CA::DSP::Graph::GetParameterDirection(CA::DSP::Graph *this, uint64_t a2, uint64_t a3)
{
  result = CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int,CADSPDirection *,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int &,CA::DSP::C::API::Tags::Result<CADSPDirection> const&>(&v7, MEMORY[0x277CEFA50], a2, a3);
  v5 = v8;
  if (v8 == 1)
  {
    *this = v7;
    *(this + 8) = v5;
  }

  else
  {
    v6 = v7;
    v7 = 0;
    v9 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *(this + 8) = v5;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  return result;
}

uint64_t adm::dsp::v2::Graph::getParameterIDs@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = a2 != 0;
  v4[0] = a1;
  v4[1] = &v5;
  v4[2] = a3;
  v6 = MEMORY[0x277D85DD0];
  v7 = 0x40000000;
  v8 = ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK3adm3dsp2v25Graph15getParameterIDsENS4_9DirectionEE3__0EEvOT__block_invoke;
  v9 = &__block_descriptor_tmp_516;
  v10 = v4;
  CADSPGraphEnumerateParameters();
  return std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
}

uint64_t ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK3adm3dsp2v25Graph15getParameterIDsENS4_9DirectionEE3__0EEvOT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  CA::DSP::Graph::GetParameterDirection(&v17, *(*v3 + 8), a2);
  if (v17 == **(v3 + 8))
  {
    v4 = v18;
  }

  else
  {
    v4 = 0;
  }

  if ((v18 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v17);
  }

  if (v4)
  {
    v5 = *(v3 + 16);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = v7 - *v5;
      v11 = v10 >> 2;
      v12 = (v10 >> 2) + 1;
      if (v12 >> 62)
      {
        std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
      }

      v13 = v6 - v9;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::allocator<float>::allocate_at_least[abi:ne200100](v14);
      }

      *(4 * v11) = v2;
      v8 = 4 * v11 + 4;
      memcpy(0, v9, v10);
      v15 = *v5;
      *v5 = 0;
      *(v5 + 8) = v8;
      *(v5 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v7 = v2;
      v8 = (v7 + 1);
    }

    *(v5 + 8) = v8;
  }

  return 0;
}

const void **adm::dsp::v2::Graph::process@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X8>)
{
  v74[1] = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 32))(a1, 0);
  if (a3 != result || (v15 = result, result = (*(*a1 + 32))(a1, 1), a5 != result))
  {
    *a7 = 1970171760;
    *(a7 + 16) = 0;
    return result;
  }

  v16 = MEMORY[0x28223BE20](result);
  v18 = &v65[-v17];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v65[-v20];
  v22 = *(a1 + 28);
  v67 = v23;
  if (v22 == 2)
  {
    if (v15)
    {
      v42 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v43 = vdupq_n_s64(a3 - 1);
      v44 = v18 + 2;
      v45 = 1;
      do
      {
        v46 = vdupq_n_s64(v45 - 1);
        v47 = vmovn_s64(vcgeq_u64(v43, vorrq_s8(v46, xmmword_223BFC2E0)));
        if (vuzp1_s16(v47, *v43.i8).u8[0])
        {
          *(v44 - 2) = a6;
        }

        if (vuzp1_s16(v47, *&v43).i8[2])
        {
          *(v44 - 1) = a6;
        }

        if (vuzp1_s16(*&v43, vmovn_s64(vcgeq_u64(v43, vorrq_s8(v46, xmmword_223BFC2D0)))).i32[1])
        {
          *v44 = a6;
          v44[1] = a6;
        }

        v45 += 4;
        v44 += 4;
        v42 -= 4;
      }

      while (v42);
    }

    v66 = v19;
    v70 = a6 | (*(a1 + 32) << 32);
    v71 = 1;
    CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(&v72, MEMORY[0x277CEFA28], *(a1 + 8), v18, a3, v21, a5, &v70, 0);
  }

  else
  {
    if (v22 != 1)
    {
      if (!v22)
      {
        if (v15)
        {
          v24 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v25 = vdupq_n_s64(a3 - 1);
          v26 = v18 + 2;
          v27 = 1;
          do
          {
            v28 = vdupq_n_s64(v27 - 1);
            v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_223BFC2E0)));
            if (vuzp1_s16(v29, *v25.i8).u8[0])
            {
              *(v26 - 2) = a6;
            }

            if (vuzp1_s16(v29, *&v25).i8[2])
            {
              *(v26 - 1) = a6;
            }

            if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_223BFC2D0)))).i32[1])
            {
              *v26 = a6;
              v26[1] = a6;
            }

            v27 += 4;
            v26 += 4;
            v24 -= 4;
          }

          while (v24);
        }

        if (v19)
        {
          v30 = (a5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v31 = vdupq_n_s64(a5 - 1);
          v32 = v21 + 2;
          v33 = 1;
          do
          {
            v34 = vdupq_n_s64(v33 - 1);
            v35 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v34, xmmword_223BFC2E0)));
            if (vuzp1_s16(v35, *v31.i8).u8[0])
            {
              *(v32 - 2) = a6;
            }

            if (vuzp1_s16(v35, *&v31).i8[2])
            {
              *(v32 - 1) = a6;
            }

            if (vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v34, xmmword_223BFC2D0)))).i32[1])
            {
              *v32 = a6;
              v32[1] = a6;
            }

            v33 += 4;
            v32 += 4;
            v30 -= 4;
          }

          while (v30);
        }
      }

      goto LABEL_48;
    }

    if (v19)
    {
      v36 = (a5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v37 = vdupq_n_s64(a5 - 1);
      v38 = v21 + 2;
      v39 = 1;
      do
      {
        v40 = vdupq_n_s64(v39 - 1);
        v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_223BFC2E0)));
        if (vuzp1_s16(v41, *v37.i8).u8[0])
        {
          *(v38 - 2) = a6;
        }

        if (vuzp1_s16(v41, *&v37).i8[2])
        {
          *(v38 - 1) = a6;
        }

        if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_223BFC2D0)))).i32[1])
        {
          *v38 = a6;
          v38[1] = a6;
        }

        v39 += 4;
        v38 += 4;
        v36 -= 4;
      }

      while (v36);
    }

    v66 = v19;
    v70 = a6 | (*(a1 + 32) << 32);
    v71 = 1;
    CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(&v72, MEMORY[0x277CEFA38], *(a1 + 8), v18, a3, v21, a5, &v70, 0);
  }

  v48 = v73;
  if ((v73 & 1) == 0)
  {
    v64 = v72;
    v72 = 0;
    v74[0] = 0;
    v68 = v64;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v74);
    v69 = v48;
LABEL_62:
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v72);
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v68);
    v63 = 0;
    *a7 = 1685287015;
    goto LABEL_63;
  }

  v19 = v66;
LABEL_48:
  v49 = MEMORY[0x28223BE20](v19);
  if (v15)
  {
    v51 = &v65[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0) + 16];
    v52 = a3;
    do
    {
      v53 = *v18++;
      *v51 = v53;
      v54 = *a2;
      a2 = (a2 + 24);
      *(v51 - 1) = v54;
      v51 += 6;
      --v52;
    }

    while (v52);
  }

  if (MEMORY[0x28223BE20](v49))
  {
    v56 = &v65[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0) + 16];
    v57 = a5;
    do
    {
      v58 = *v21++;
      *v56 = v58;
      v59 = *a4;
      a4 = (a4 + 24);
      *(v56 - 1) = v59;
      v56 += 6;
      --v57;
    }

    while (v57);
  }

  v70 = 0;
  v60 = CADSPGraphProcessPCMData();
  v61 = v70;
  if (v60)
  {
    v62 = 0;
  }

  else
  {
    v62 = v70 == 0;
  }

  if (v62)
  {
    v61 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v70 = v61;
  }

  v74[0] = v61;
  if (v61)
  {
    v74[0] = 0;
    v73 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v74);
    v72 = 0;
    v70 = 0;
    v68 = v61;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v70);
    v69 = 0;
    goto LABEL_62;
  }

  v63 = 1;
  v73 = 1;
  result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v74);
LABEL_63:
  *(a7 + 16) = v63;
  return result;
}

void sub_223BBB6E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const void **CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, const void **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v16 = 0;
  v10 = a2(a3, a4, a5, a6, a7, a8, a9, &v16);
  v11 = v16;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v16 == 0;
  }

  if (v12)
  {
    v11 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v16 = v11;
  }

  v15 = v11;
  if (v11)
  {
    v13 = 0;
    v15 = 0;
    *a1 = v11;
  }

  else
  {
    v13 = 1;
  }

  *(a1 + 8) = v13;
  return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v15);
}

const void **adm::dsp::v2::Graph::reset@<X0>(uint64_t a2@<X8>)
{
  v7 = 0;
  v3 = 0;
  if (CADSPGraphReset())
  {
    v4 = 0;
  }

  else
  {
    v4 = v7 == 0;
  }

  if (v4)
  {
    v3 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v7 = v3;
  }

  v11 = v3;
  if (v3)
  {
    v11 = 0;
    v10 = 0;
    v6 = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    v9 = 0;
    v11 = 0;
    v7 = v3;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v6);
    v8 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *a2 = 1685287015;
    *(a2 + 16) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  else
  {
    v10 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    v8 = 1;
    *(a2 + 16) = 1;
  }

  return result;
}

const void **adm::dsp::v2::Graph::getExpectedOutputFrameCount@<X0>(adm::dsp::v2::Graph *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v39[1] = *MEMORY[0x277D85DE8];
  CA::DSP::Graph::GetModel(&v34, *(this + 1));
  CanVary = CADSPGraphModelGetSliceDurationCanVary();
  result = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v34);
  if (CanVary)
  {
    v8 = (*(*this + 32))(this, 0);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = &v31 - v10;
    v12 = v9;
    if (v9)
    {
      v13 = (v9 + 3) & 0x1FFFFFFFCLL;
      v14 = vdupq_n_s64(v9 - 1);
      v15 = v11 + 8;
      v16 = 1;
      do
      {
        v17 = vdupq_n_s64(v16 - 1);
        v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_223BFC2E0)));
        if (vuzp1_s16(v18, *v14.i8).u8[0])
        {
          *(v15 - 2) = a2;
        }

        if (vuzp1_s16(v18, *&v14).i8[2])
        {
          *(v15 - 1) = a2;
        }

        if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_223BFC2D0)))).i32[1])
        {
          *v15 = a2;
          v15[1] = a2;
        }

        v16 += 4;
        v15 += 4;
        v13 -= 4;
      }

      while (v13);
    }

    v19 = (*(*this + 32))(this, 1);
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (&v31 - v21);
    v23 = v20;
    v37 = a2 | (*(this + 8) << 32);
    v38 = 1;
    result = CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(&v35, MEMORY[0x277CEFA28], *(this + 1), v11, v12, &v31 - v21, v20, &v37, 0);
    v24 = v36;
    if (v36)
    {
      v25 = *v22;
      if (v23 != 1)
      {
        v26 = v22 + 1;
        v27 = 4 * v23 - 4;
        do
        {
          v29 = *v26++;
          v28 = v29;
          if (v29 < v25)
          {
            v25 = v28;
          }

          v27 -= 4;
        }

        while (v27);
      }

      *a3 = v25;
      *(a3 + 16) = 1;
    }

    else
    {
      v30 = v35;
      v35 = 0;
      v39[0] = 0;
      v32 = v30;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v39);
      v33 = v24;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v35);
      *a3 = 1685287015;
      *(a3 + 16) = 0;
      return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v32);
    }
  }

  else
  {
    *a3 = 1970171760;
    *(a3 + 16) = 0;
  }

  return result;
}

void sub_223BBBB7C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **adm::dsp::v2::Graph::getRequiredInputFrameCount@<X0>(adm::dsp::v2::Graph *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v38[1] = *MEMORY[0x277D85DE8];
  CA::DSP::Graph::GetModel(&v33, *(this + 1));
  CanVary = CADSPGraphModelGetSliceDurationCanVary();
  result = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v33);
  if (CanVary)
  {
    v8 = (*(*this + 32))(this, 0);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (&v30 - v10);
    v12 = v9;
    v13 = (*(*this + 32))(this, 1);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = &v30 - v15;
    if (v14)
    {
      v17 = (v14 + 3) & 0x1FFFFFFFCLL;
      v18 = vdupq_n_s64(v14 - 1);
      v19 = v16 + 8;
      v20 = 1;
      do
      {
        v21 = vdupq_n_s64(v20 - 1);
        v22 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_223BFC2E0)));
        if (vuzp1_s16(v22, *v18.i8).u8[0])
        {
          *(v19 - 2) = a2;
        }

        if (vuzp1_s16(v22, *&v18).i8[2])
        {
          *(v19 - 1) = a2;
        }

        if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_223BFC2D0)))).i32[1])
        {
          *v19 = a2;
          v19[1] = a2;
        }

        v20 += 4;
        v19 += 4;
        v17 -= 4;
      }

      while (v17);
    }

    v36 = a2 | (*(this + 8) << 32);
    v37 = 1;
    result = CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(&v34, MEMORY[0x277CEFA38], *(this + 1), v11, v12, v16, v14, &v36, 0);
    v23 = v35;
    if (v35)
    {
      v24 = *v11;
      if (v12 != 1)
      {
        v25 = v11 + 1;
        v26 = 4 * v12 - 4;
        do
        {
          v28 = *v25++;
          v27 = v28;
          if (v24 <= v28)
          {
            v24 = v27;
          }

          v26 -= 4;
        }

        while (v26);
      }

      *a3 = v24;
      *(a3 + 16) = 1;
    }

    else
    {
      v29 = v34;
      v34 = 0;
      v38[0] = 0;
      v31 = v29;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v38);
      v32 = v23;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v34);
      *a3 = 1685287015;
      *(a3 + 16) = 0;
      return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v31);
    }
  }

  else
  {
    *a3 = 1970171760;
    *(a3 + 16) = 0;
  }

  return result;
}

void sub_223BBBE70(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **adm::dsp::v2::Graph::getTerminalName@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v31[2] = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 32))(a1, a3);
  if (result <= a2)
  {
    *a4 = 1651536493;
    *(a4 + 24) = 0;
    return result;
  }

  CA::DSP::Graph::GetModel(&v29, a1[1]);
  v9 = CADSPGraphModelCopyPorts();
  v26[0] = 0;
  v30 = v9;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v26);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v29);
  ValueAtIndex = CFArrayGetValueAtIndex(v9, a2);
  v11 = ValueAtIndex;
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  v26[0] = 0;
  v24 = v11;
  CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(v26);
  v12 = CADSPPortModelCopyName();
  v25 = v12;
  v26[0] = 0;
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v26);
  if (!v12)
  {
LABEL_22:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  CFRetain(v12);
  v13 = CFGetTypeID(v12);
  if (v13 != CFStringGetTypeID())
  {
    CFRelease(v12);
    goto LABEL_22;
  }

  applesauce::CF::convert_as<std::string,0>(v26, v12);
  if (v4)
  {
    v15 = "output-%u";
  }

  else
  {
    v15 = "input-%u";
  }

  caulk::make_string(&__p, v15, v14, a2);
  v16 = v28;
  if (v28)
  {
    p_p = v26;
  }

  else
  {
    p_p = &__p;
  }

  v18 = p_p->__r_.__value_.__r.__words[0];
  v31[0] = p_p->__r_.__value_.__l.__size_;
  *(v31 + 7) = *(&p_p->__r_.__value_.__r.__words[1] + 7);
  v19 = &v27;
  if (!v28)
  {
    v19 = &__p.__r_.__value_.__r.__words[2] + 7;
  }

  v20 = *v19;
  p_p->__r_.__value_.__r.__words[0] = 0;
  p_p->__r_.__value_.__l.__size_ = 0;
  p_p->__r_.__value_.__r.__words[2] = 0;
  *(a4 + 15) = *(v31 + 7);
  v21 = v31[0];
  *a4 = v18;
  *(a4 + 8) = v21;
  *(a4 + 23) = v20;
  v31[0] = 0;
  *(v31 + 7) = 0;
  *(a4 + 24) = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  CFRelease(v12);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v25);
  CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v24);
  return CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v30);
}

void sub_223BBC0F0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void **CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

double applesauce::CF::convert_as<std::string,0>(uint64_t a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    return result;
  }

  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  v7 = CStringPtr;
  if (!CStringPtr)
  {
    Length = CFStringGetLength(a2);
    maxBufLen = 0;
    v16.location = 0;
    v16.length = Length;
    CFStringGetBytes(a2, v16, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    v11 = maxBufLen;
    if (maxBufLen <= 0x7FFFFFFFFFFFFFF7)
    {
      if (maxBufLen >= 0x17)
      {
        operator new();
      }

      HIBYTE(v14) = maxBufLen;
      if (maxBufLen)
      {
        bzero(&__dst, maxBufLen);
      }

      *(&__dst + v11) = 0;
      if (v14 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      v17.location = 0;
      v17.length = Length;
      CFStringGetBytes(a2, v17, 0x8000100u, 0, 0, p_dst, maxBufLen, &maxBufLen);
      goto LABEL_22;
    }

LABEL_23:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = strlen(CStringPtr);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_23;
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
  }

  *(&__dst + v9) = 0;
LABEL_22:
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = 1;
  return result;
}

uint64_t adm::dsp::v2::Graph::getTerminalFormat@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 <= 1)
  {
    result = CA::DSP::Graph::GetStreamDescription(v7, *(result + 8), a2, a3);
  }

  if (v9)
  {
    v5 = v7[1];
    *a4 = v7[0];
    *(a4 + 16) = v5;
    *(a4 + 32) = v8;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a4 = 1685287015;
  }

  *(a4 + 40) = v6;
  return result;
}

uint64_t CA::DSP::Graph::GetStreamDescription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CADSPGraphGetStreamDescription();
  if (result)
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = 0;
  }

  *(a1 + 40) = v6;
  return result;
}

void sub_223BBC52C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t adm::dsp::v2::Graph::getTerminalCount(uint64_t result, int a2)
{
  if (a2 == 1)
  {
    return *(result + 20);
  }

  if (!a2)
  {
    return *(result + 16);
  }

  return result;
}

void adm::dsp::v2::Graph::~Graph(adm::dsp::v2::Graph *this)
{
  adm::dsp::v2::Graph::~Graph(this);

  JUMPOUT(0x223DF43A0);
}

{
  *this = &unk_28371B768;
  v2 = (this + 40);
  if (*(this + 5))
  {
    RPBServerGetSharedInstance();
    RPBServerRemoveHost();
    CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(v2);
    *v2 = 0;
  }

  CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(v2);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 1);
}

const void **CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJN10applesauce2CF9StringRefENS_4__fs10filesystem4pathEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSK_OT0_E_JRNS0_6__baseILSI_1EJSA_SD_EEEOSS_EEEDcSK_DpT0_(__n128 **a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  if ((*a1)[1].n128_u32[2] == 1)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *a3;
    *(a2 + 16) = a3[1].n128_u64[0];
    *a2 = result;
    a3[1].n128_u8[7] = 0;
    a3->n128_u8[0] = 0;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::StringRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    result = *a3;
    v4[1].n128_u64[0] = a3[1].n128_u64[0];
    *v4 = result;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    v4[1].n128_u32[2] = 1;
  }

  return result;
}

uint64_t adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::empty(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_28371B850[v1])(&v4, a1);
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4 != -1)
  {
    v6 = a1;
    (off_28371B840[v4])(&v6, a2);
    *(a1 + 24) = v4;
  }

  return a1;
}

uint64_t std::vector<adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>>::__emplace_back_slow_path<adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 32 * v2;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](32 * v2, a2);
  v8 = 32 * v2 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v13, v12);
      v12 += 32;
      v13 = v14 + 32;
    }

    while (v12 != v10);
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9);
      v9 += 32;
    }

    while (v9 != v10);
  }

  v15 = *a1;
  *a1 = v11;
  *(a1 + 1) = v8;
  if (v15)
  {
    operator delete(v15);
  }

  return v8;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,applesauce::CF::DictionaryRef,std::__fs::filesystem::path> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,applesauce::CF::DictionaryRef,std::__fs::filesystem::path> &&>(void **result, void *a2)
{
  **result = *a2;
  *a2 = 0;
  return result;
}

BOOL _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF13DictionaryRefEE5emptyEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  return v2 == 0;
}

void *adm::dsp::GraphBuilder::setProperty(void *a1, int a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[28];
  v6 = a1[29];
  if (v5 >= v6)
  {
    v8 = a1[27];
    v9 = v5 - v8;
    v10 = (v5 - v8) >> 5;
    v11 = v10 + 1;
    if ((v10 + 1) >> 59)
    {
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    v12 = v6 - v8;
    if (v12 >> 4 > v11)
    {
      v11 = v12 >> 4;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = v10;
    v15 = 32 * v10;
    *v15 = a2;
    *(v15 + 8) = 0uLL;
    *(v15 + 24) = 0;
    v7 = 32 * v10 + 32;
    v16 = (v15 - 32 * v14);
    memcpy(v16, v8, v9);
    a1[27] = v16;
    a1[28] = v7;
    a1[29] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v5 = a2;
    *(v5 + 8) = 0uLL;
    v7 = v5 + 32;
    *(v5 + 24) = 0;
  }

  a1[28] = v7;
  return a1;
}

const void **adm::dsp::v2::GraphBuilder::build@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v261[1] = *MEMORY[0x277D85DE8];
  v239 = 0;
  v8 = *MEMORY[0x277CBECE8];
  buf[0].__r_.__value_.__r.__words[0] = 0;
  cf = CADSPGraphModelCreateMutable();
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  alloc = v8;
  v9 = CADSPLanguageV1InterpreterCreate();
  v212 = a4;
  v213 = a3;
  v218 = a1;
  buf[0].__r_.__value_.__r.__words[0] = 0;
  v237 = v9;
  CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  v258 = 0u;
  v257 = 0u;
  LODWORD(v259) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__rehash<true>(&v257, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v11 = std::__string_hash<char>::operator()[abi:ne200100]((i + 2));
    v12 = v11;
    v13 = *(&v257 + 1);
    if (!*(&v257 + 1))
    {
      goto LABEL_18;
    }

    v14 = vcnt_s8(*(&v257 + 8));
    v14.i16[0] = vaddlv_u8(v14);
    v15 = v14.u32[0];
    if (v14.u32[0] > 1uLL)
    {
      v16 = v11;
      if (v11 >= *(&v257 + 1))
      {
        v16 = v11 % *(&v257 + 1);
      }
    }

    else
    {
      v16 = (*(&v257 + 1) - 1) & v11;
    }

    v17 = *(v257 + 8 * v16);
    if (!v17 || (v18 = *v17) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v19 = v18[1];
      if (v19 == v12)
      {
        break;
      }

      if (v15 > 1)
      {
        if (v19 >= v13)
        {
          v19 %= v13;
        }
      }

      else
      {
        v19 &= v13 - 1;
      }

      if (v19 != v16)
      {
        goto LABEL_18;
      }

LABEL_17:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_18;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v18 + 2, i + 2))
    {
      goto LABEL_17;
    }
  }

  theArray = 0;
  v241 = 0uLL;
  v20 = v213;
  if (*(&v258 + 1))
  {
    if (!(*(&v258 + 1) >> 60))
    {
      buf[1].__r_.__value_.__l.__size_ = &theArray;
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](*(&v258 + 1));
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  v21 = v258;
  for (j = v241; v21; v21 = *v21)
  {
    if (j >= *(&v241 + 1))
    {
      v23 = (j - theArray) >> 4;
      if ((v23 + 1) >> 60)
      {
        std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
      }

      v24 = (*(&v241 + 1) - theArray) >> 3;
      if (v24 <= v23 + 1)
      {
        v24 = v23 + 1;
      }

      if (*(&v241 + 1) - theArray >= 0x7FFFFFFFFFFFFFF0uLL)
      {
        v25 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      buf[1].__r_.__value_.__l.__size_ = &theArray;
      if (v25)
      {
        std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v25);
      }

      buf[0].__r_.__value_.__r.__words[0] = 0;
      buf[0].__r_.__value_.__l.__size_ = 16 * v23;
      buf[0].__r_.__value_.__r.__words[2] = 16 * v23;
      buf[1].__r_.__value_.__r.__words[0] = 0;
      applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>((16 * v23), v21 + 16, (v21 + 40));
      buf[0].__r_.__value_.__r.__words[2] += 16;
      v26 = (theArray + buf[0].__r_.__value_.__l.__size_ - v241);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&theArray, theArray, v241, v26);
      v27 = theArray;
      v28 = *(&v241 + 1);
      theArray = v26;
      v215 = buf[0].__r_.__value_.__r.__words[2];
      v241 = *&buf[0].__r_.__value_.__r.__words[2];
      buf[0].__r_.__value_.__r.__words[2] = v27;
      buf[1].__r_.__value_.__r.__words[0] = v28;
      buf[0].__r_.__value_.__r.__words[0] = v27;
      buf[0].__r_.__value_.__l.__size_ = v27;
      std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(buf);
      j = v215;
    }

    else
    {
      applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(j, v21 + 16, (v21 + 40));
      j += 2;
    }

    *&v241 = j;
  }

  v29 = (j - theArray) >> 4;
  memset(buf, 0, 24);
  std::vector<void const*>::reserve(buf, v29);
  __p = 0uLL;
  *&v243 = 0;
  std::vector<void const*>::reserve(&__p, v29);
  v30 = theArray;
  v31 = buf[0].__r_.__value_.__r.__words[0];
  v32 = __p;
  v214 = v241;
  if (theArray != v241)
  {
    v211 = v29;
    v34 = buf[0].__r_.__value_.__r.__words[2];
    size = buf[0].__r_.__value_.__l.__size_;
    v35 = *(&__p + 1);
    v216 = v243;
    do
    {
      v36 = *v30;
      if (!*v30 || !*(v30 + 1))
      {
        buf[0].__r_.__value_.__l.__size_ = size;
        buf[0].__r_.__value_.__r.__words[2] = v34;
        buf[0].__r_.__value_.__r.__words[0] = v31;
        *(&__p + 1) = v35;
        *&v243 = v216;
        *&__p = v32;
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (size >= v34)
      {
        v37 = v32;
        v38 = size - v31;
        v39 = (size - v31) >> 3;
        v40 = v39 + 1;
        if ((v39 + 1) >> 61)
        {
          buf[0].__r_.__value_.__l.__size_ = size;
          buf[0].__r_.__value_.__r.__words[2] = v34;
          buf[0].__r_.__value_.__r.__words[0] = v31;
          *(&__p + 1) = v35;
          *&v243 = v216;
          *&__p = v32;
          std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
        }

        if ((v34 - v31) >> 2 > v40)
        {
          v40 = (v34 - v31) >> 2;
        }

        if (v34 - v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v41 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v40;
        }

        if (v41)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v41);
        }

        v34 = 0;
        *(8 * v39) = v36;
        size = (8 * v39 + 8);
        memcpy(0, v31, v38);
        if (v31)
        {
          operator delete(v31);
        }

        v31 = 0;
        v32 = v37;
      }

      else
      {
        *size = v36;
        size += 8;
      }

      v42 = *(v30 + 1);
      if (v35 >= v216)
      {
        v43 = v35 - v32;
        v44 = (v35 - v32) >> 3;
        v45 = v44 + 1;
        if ((v44 + 1) >> 61)
        {
          buf[0].__r_.__value_.__l.__size_ = size;
          buf[0].__r_.__value_.__r.__words[2] = v34;
          buf[0].__r_.__value_.__r.__words[0] = v31;
          *(&__p + 1) = v35;
          *&v243 = v216;
          *&__p = v32;
          std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
        }

        v46 = v32;
        if ((v216 - v32) >> 2 > v45)
        {
          v45 = (v216 - v32) >> 2;
        }

        if (v216 - v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          v47 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = v45;
        }

        if (v47)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v47);
        }

        v216 = 0;
        *(8 * v44) = v42;
        v35 = (8 * v44 + 8);
        memcpy(0, v32, v43);
        if (v46)
        {
          operator delete(v46);
        }

        v32 = 0;
      }

      else
      {
        *v35 = v42;
        v35 += 8;
      }

      v30 = (v30 + 16);
    }

    while (v30 != v214);
    buf[0].__r_.__value_.__l.__size_ = size;
    buf[0].__r_.__value_.__r.__words[2] = v34;
    buf[0].__r_.__value_.__r.__words[0] = v31;
    *(&__p + 1) = v35;
    *&v243 = v216;
    *&__p = v32;
    v20 = v213;
    v29 = v211;
  }

  v48 = CFDictionaryCreate(0, v31, v32, v29, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v48)
  {
    v197 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v197, "Could not construct");
    __cxa_throw(v197, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (buf[0].__r_.__value_.__r.__words[0])
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  buf[0].__r_.__value_.__r.__words[0] = &theArray;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](buf);
  CADSPLanguageV1InterpreterSetPreprocessorMacroDefinitions();
  CFRelease(v48);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v257);
  v236 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v235 = v237;
  if (v237)
  {
    CFRetain(v237);
  }

  v49 = *(v218 + 40);
  if (v49 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  buf[0].__r_.__value_.__r.__words[0] = &v257;
  (off_28371B8D8[v49])(&v256, buf, v218 + 16);
  v50 = v256;
  adm_log_object = get_adm_log_object();
  v52 = adm_log_object;
  if (!v50)
  {
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v52, OS_LOG_TYPE_ERROR, "failed to build DSP graph - graph file path and graph text are missing", buf, 2u);
    }

    v198 = __cxa_allocate_exception(0x20uLL);
    __cxa_throw(v198, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_223B4A000, v52, OS_LOG_TYPE_DEFAULT, "compiling text", buf, 2u);
  }

  v53 = get_adm_log_object();
  v54 = v218;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    if (!v256)
    {
      v208 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v208, "Could not construct");
      __cxa_throw(v208, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    applesauce::CF::convert_to<std::string,0>(&v257, v256);
    v55 = 0;
    v56 = 0;
    if ((SBYTE7(v258) & 0x80u) == 0)
    {
      v57 = &v257;
    }

    else
    {
      v57 = v257;
    }

    if ((SBYTE7(v258) & 0x80u) == 0)
    {
      v58 = BYTE7(v258);
    }

    else
    {
      v58 = *(&v257 + 1);
    }

    v59 = v58 + v57;
LABEL_90:
    if ((v58 - v56) >= 1)
    {
      v60 = v58 - v56;
      v61 = v57 + v56;
      do
      {
        v62 = memchr(v61, 10, v60);
        if (!v62)
        {
          break;
        }

        if (*v62 == 10)
        {
          if (v62 != v59)
          {
            v63 = v62 - v57;
            if (v62 - v57 != -1)
            {
              v64 = get_adm_log_object();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                v65 = v63 - v56;
                LODWORD(buf[0].__r_.__value_.__l.__data_) = 134218498;
                if (v58 - v56 < v63 - v56)
                {
                  v65 = v58 - v56;
                }

                *(buf[0].__r_.__value_.__r.__words + 4) = v55++;
                WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1040;
                *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v65;
                WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2080;
                *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v57 + v56;
                _os_log_debug_impl(&dword_223B4A000, v64, OS_LOG_TYPE_DEBUG, "compiling line %2lu - %.*s", buf, 0x1Cu);
              }

              v56 = v63 + 1;
              if (v63 < v58)
              {
                goto LABEL_90;
              }
            }
          }

          break;
        }

        v61 = v62 + 1;
        v60 = v59 - v61;
      }

      while (v59 - v61 >= 1);
    }

    if (SBYTE7(v258) < 0)
    {
      operator delete(v257);
    }

    v54 = v218;
    v20 = v213;
  }

  v255 = v236;
  if (v236)
  {
    CFRetain(v236);
  }

  *&__p = 0;
  v66 = CADSPLanguageV1InterpreterInterpretString();
  v67 = __p;
  if (!v66 && !__p)
  {
    v67 = CADSPErrorCreate();
    *&__p = v67;
  }

  theArray = v67;
  if (v67)
  {
    v68 = 0;
    theArray = 0;
    buf[0].__r_.__value_.__r.__words[0] = v67;
  }

  else
  {
    v68 = 1;
  }

  buf[0].__r_.__value_.__s.__data_[8] = v68;
  CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&theArray);
  v69 = buf[0].__r_.__value_.__s.__data_[8];
  if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    v199 = buf[0].__r_.__value_.__r.__words[0];
    buf[0].__r_.__value_.__r.__words[0] = 0;
    *&__p = 0;
    *&v257 = v199;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&__p);
    BYTE8(v257) = v69;
    if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
    }

    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v255);
    v200 = get_adm_log_object();
    if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 138412290;
      *(buf[0].__r_.__value_.__r.__words + 4) = v199;
      _os_log_error_impl(&dword_223B4A000, v200, OS_LOG_TYPE_ERROR, "failed to interpret DSP graph: %@", buf, 0xCu);
    }

    v201 = __cxa_allocate_exception(0x20uLL);
    __cxa_throw(v201, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  BYTE8(v257) = buf[0].__r_.__value_.__s.__data_[8];
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v255);
  if (v256)
  {
    CFRelease(v256);
  }

  CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&v235);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v236);
  v234 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (*(v54 + 8))
  {
    buf[0].__r_.__value_.__r.__words[0] = v234;
    if (v234)
    {
      CFRetain(v234);
    }

    CADSPGraphModelSetName();
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v234);
  v233 = cf;
  if (cf)
  {
    CFRetain(cf);
    v256 = v233;
    CFRetain(v233);
  }

  else
  {
    v256 = 0;
  }

  v70 = CADSPGraphModelCopyAudioStreamConfigurationNames();
  buf[0].__r_.__value_.__r.__words[0] = 0;
  theArray = v70;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v256);
  v71 = theArray;
  Count = CFArrayGetCount(theArray);
  v73 = theArray;
  if (v71 != theArray || Count)
  {
    v74 = 0;
    v75 = Count - 1;
    do
    {
      v76 = v74;
      ValueAtIndex = CFArrayGetValueAtIndex(v71, v74);
      v78 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      buf[0].__r_.__value_.__r.__words[0] = 0;
      v255 = v78;
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
      v254 = v233;
      if (v233)
      {
        CFRetain(v233);
      }

      if (CADSPGraphModelGetAudioStreamConfigurationForName())
      {
        *&buf[0].__r_.__value_.__l.__data_ = v257;
        *&buf[0].__r_.__value_.__r.__words[2] = v258;
        *&buf[1].__r_.__value_.__r.__words[1] = v259;
        v79 = 1;
      }

      else
      {
        v79 = 0;
        buf[0].__r_.__value_.__s.__data_[0] = 0;
      }

      buf[2].__r_.__value_.__s.__data_[0] = v79;
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v254);
      if (buf[2].__r_.__value_.__s.__data_[0] == 1)
      {
        v80 = v255;
        if (v255)
        {
          CFRetain(v255);
          v253 = v80;
          v81 = CFGetTypeID(v80);
          if (v81 != CFStringGetTypeID())
          {
            v196 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v196, "Could not construct");
            __cxa_throw(v196, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }
        }

        else
        {
          v253 = 0;
        }

        v243 = *&buf[0].__r_.__value_.__r.__words[2];
        v244 = buf[1].__r_.__value_.__l.__size_;
        __p = *&buf[0].__r_.__value_.__l.__data_;
        (*(*v20 + 16))(&v257, v20, &v253, &__p);
        *&buf[0].__r_.__value_.__l.__data_ = v257;
        *&buf[0].__r_.__value_.__r.__words[2] = v258;
        buf[1].__r_.__value_.__l.__size_ = v259;
        if (v253)
        {
          CFRelease(v253);
        }

        v252 = v233;
        if (v233)
        {
          CFRetain(v233);
        }

        CADSPGraphModelSetAudioStreamConfigurationForName();
        CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v252);
      }

      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v255);
      v74 = v76 + 1;
    }

    while (v71 != v73 || v75 != v76);
  }

  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&theArray);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v233);
  v232 = cf;
  if (cf)
  {
    CFRetain(cf);
    *&v257 = v232;
    CFRetain(v232);
  }

  else
  {
    *&v257 = 0;
  }

  memset(&buf[1], 0, 44);
  if (CADSPGraphGetAudioStreamConfigurationForPort())
  {
    v82 = *&buf[1].__r_.__value_.__l.__data_ | 0x100000000;
  }

  else
  {
    v82 = 0;
  }

  if ((v82 & 0x100000000) != 0)
  {
    v83 = v82;
  }

  else
  {
    v83 = 0;
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v257);
  theArray = v232;
  if (v232)
  {
    CFRetain(v232);
  }

  v84 = CADSPGraphModelCopyPorts();
  buf[0].__r_.__value_.__r.__words[0] = 0;
  *&__p = v84;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  v85 = CFArrayGetCount(__p);
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&__p);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&theArray);
  if (v85 >= 2)
  {
    v86 = v85 - 1;
    while (1)
    {
      v256 = v232;
      if (v232)
      {
        CFRetain(v232);
      }

      memset(&buf[1], 0, 44);
      v87 = CADSPGraphGetAudioStreamConfigurationForPort() ? *&buf[1].__r_.__value_.__l.__data_ | 0x100000000 : 0;
      v88 = (v87 & 0x100000000) != 0 ? v87 : 0;
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v256);
      if (v83 != v88)
      {
        break;
      }

      if (!--v86)
      {
        goto LABEL_172;
      }
    }

    v184 = get_adm_log_object();
    if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v184, OS_LOG_TYPE_ERROR, "failed to build DSP graph - all input bus sample rates must be equal", buf, 2u);
    }

    goto LABEL_436;
  }

LABEL_172:
  v255 = v232;
  if (v232)
  {
    CFRetain(v232);
  }

  memset(&buf[1], 0, 44);
  if (CADSPGraphGetAudioStreamConfigurationForPort())
  {
    v89 = *&buf[1].__r_.__value_.__l.__data_ | 0x100000000;
  }

  else
  {
    v89 = 0;
  }

  if ((v89 & 0x100000000) != 0)
  {
    v90 = v89;
  }

  else
  {
    v90 = 0;
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v255);
  v254 = v232;
  if (v232)
  {
    CFRetain(v232);
  }

  v91 = CADSPGraphModelCopyPorts();
  buf[0].__r_.__value_.__r.__words[0] = 0;
  *&__p = v91;
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  v92 = CFArrayGetCount(__p);
  CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&__p);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v254);
  if (v92 >= 2)
  {
    v93 = v92 - 1;
    while (1)
    {
      v253 = v232;
      if (v232)
      {
        CFRetain(v232);
      }

      memset(&buf[1], 0, 44);
      v94 = CADSPGraphGetAudioStreamConfigurationForPort() ? *&buf[1].__r_.__value_.__l.__data_ | 0x100000000 : 0;
      v95 = (v94 & 0x100000000) != 0 ? v94 : 0;
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v253);
      if (v90 != v95)
      {
        break;
      }

      if (!--v93)
      {
        goto LABEL_194;
      }
    }

    v185 = get_adm_log_object();
    if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v185, OS_LOG_TYPE_ERROR, "failed to build DSP graph - all output bus sample rates must be equal", buf, 2u);
    }

    goto LABEL_436;
  }

LABEL_194:
  if (!*(v218 + 184))
  {
    v202 = get_adm_log_object();
    if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v202, OS_LOG_TYPE_ERROR, "failed to build DSP graph - block size information is missing", buf, 2u);
    }

    v186 = __cxa_allocate_exception(0x20uLL);
LABEL_437:
    __cxa_throw(v186, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v96 = *(v218 + 188);
  if (v96 == 2)
  {
    v103 = get_adm_log_object();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v104 = *(v218 + 184);
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = v104;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = v83;
      _os_log_impl(&dword_223B4A000, v103, OS_LOG_TYPE_DEFAULT, "setting variable slice duration using block size %u and input sample rate %u", buf, 0xEu);
    }

    v249 = v232;
    if (v232)
    {
      CFRetain(v232);
    }

    CADSPGraphModelSetSliceDuration();
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v249);
    v248 = v232;
    if (v232)
    {
      CFRetain(v232);
    }

    CADSPGraphModelSetSliceDurationCanVary();
    p_appendedString = &v248;
  }

  else if (v96 == 1)
  {
    v101 = get_adm_log_object();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      v102 = *(v218 + 184);
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = v102;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = v90;
      _os_log_impl(&dword_223B4A000, v101, OS_LOG_TYPE_DEFAULT, "setting variable slice duration using block size %u and output sample rate %u", buf, 0xEu);
    }

    v250 = v232;
    if (v232)
    {
      CFRetain(v232);
    }

    CADSPGraphModelSetSliceDuration();
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v250);
    v261[0] = v232;
    if (v232)
    {
      CFRetain(v232);
    }

    CADSPGraphModelSetSliceDurationCanVary();
    p_appendedString = v261;
  }

  else
  {
    if (v96)
    {
      goto LABEL_221;
    }

    v97 = get_adm_log_object();
    v98 = v97;
    if (v83 != v90)
    {
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_223B4A000, v98, OS_LOG_TYPE_ERROR, "failed to build DSP graph - I/O bus sample rates of fixed block size graphs must be equal", buf, 2u);
      }

LABEL_436:
      v186 = __cxa_allocate_exception(0x20uLL);
      goto LABEL_437;
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v99 = *(v218 + 184);
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = v99;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = v83;
      _os_log_impl(&dword_223B4A000, v98, OS_LOG_TYPE_DEFAULT, "setting fixed slice duration using block size %u and sample rate %u", buf, 0xEu);
    }

    v252 = v232;
    if (v232)
    {
      CFRetain(v232);
    }

    CADSPGraphModelSetSliceDuration();
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v252);
    appendedString = v232;
    if (v232)
    {
      CFRetain(v232);
    }

    CADSPGraphModelSetSliceDurationCanVary();
    p_appendedString = &appendedString;
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(p_appendedString);
LABEL_221:
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v232);
  v231 = cf;
  if (cf)
  {
    CFRetain(cf);
    buf[0].__r_.__value_.__r.__words[0] = v231;
    v105 = v218;
    CFRetain(v231);
  }

  else
  {
    buf[0].__r_.__value_.__r.__words[0] = 0;
    v105 = v218;
  }

  MEMORY[0x223DF3900]();
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  *&v257 = v231;
  if (v231)
  {
    CFRetain(v231);
  }

  CADSPGraphModelSetOptions();
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v257);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v231);
  v230 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (*(v105 + 244) == 1)
  {
    v106 = get_adm_log_object();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v107 = *(v105 + 240);
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = v107;
      _os_log_impl(&dword_223B4A000, v106, OS_LOG_TYPE_DEFAULT, "setting sample rate conversion algorithm to %u", buf, 8u);
    }

    buf[0].__r_.__value_.__r.__words[0] = v230;
    if (v230)
    {
      CFRetain(v230);
    }

    CADSPGraphModelSetSampleRateConversionAlgorithm();
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  }

  if (*(v105 + 252) == 1)
  {
    v108 = get_adm_log_object();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v109 = *(v105 + 248);
      LODWORD(v257) = 67109120;
      DWORD1(v257) = v109;
      _os_log_impl(&dword_223B4A000, v108, OS_LOG_TYPE_DEFAULT, "setting sample rate conversion quality to %u", &v257, 8u);
    }

    *&v257 = v230;
    if (v230)
    {
      CFRetain(v230);
    }

    CADSPGraphModelSetSampleRateConversionQuality();
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v257);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v230);
  v229 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (*(v105 + 256) == 1 && *(v105 + 104) == 1)
  {
    v110 = v105 + 80;
    LODWORD(v257) = 0;
    *(&v257 + 1) = std::system_category();
    std::__fs::filesystem::__create_directories((v105 + 80), &v257);
    v111 = 0;
    v261[0] = 0x100000000;
    do
    {
      v248 = v229;
      if (v229)
      {
        CFRetain(v229);
      }

      v112 = CADSPGraphModelCopyPorts();
      v217 = v111;
      buf[0].__r_.__value_.__r.__words[0] = 0;
      v249 = v112;
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v248);
      v113 = v249;
      v114 = CFArrayGetCount(v249);
      v115 = v249;
      if (v113 != v249 || v114)
      {
        v116 = 0;
        v117 = v114 - 1;
        do
        {
          v118 = v116;
          v119 = CFArrayGetValueAtIndex(v113, v116);
          v120 = v119;
          if (v119)
          {
            CFRetain(v119);
          }

          buf[0].__r_.__value_.__r.__words[0] = 0;
          v247 = v120;
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
          v246 = v229;
          if (v229)
          {
            CFRetain(v229);
          }

          Mutable = CADSPRecorderTapPointModelCreateMutable();
          buf[0].__r_.__value_.__r.__words[0] = 0;
          v245 = Mutable;
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
          v256 = v245;
          if (v245)
          {
            CFRetain(v245);
          }

          v255 = v247;
          if (v247)
          {
            CFRetain(v247);
          }

          v122 = CADSPPortModelCopyName();
          buf[0].__r_.__value_.__r.__words[0] = 0;
          *&__p = v122;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
          CADSPRecorderTapPointModelSetBoxName();
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&__p);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v255);
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v256);
          v252 = v229;
          if (v229)
          {
            CFRetain(v229);
          }

          v123 = CADSPGraphModelCopyName();
          buf[0].__r_.__value_.__r.__words[0] = 0;
          v253 = v123;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
          v250 = v247;
          if (v247)
          {
            CFRetain(v247);
          }

          v124 = CADSPPortModelCopyName();
          buf[0].__r_.__value_.__r.__words[0] = 0;
          appendedString = v124;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
          v125 = CFStringCreateMutable(alloc, 256);
          *&__p = v125;
          if (*(v218 + 103) >= 0)
          {
            v126 = v110;
          }

          else
          {
            v126 = *(v218 + 80);
          }

          CFStringAppendFormat(v125, 0, @"%s/adm.", v126);
          memset(buf, 0, 64);
          v127 = localtime((v218 + 264));
          strftime(buf, 0x40uLL, "%Y%m%d.%H%M%S.", v127);
          CFStringAppendCString(__p, buf, 0x600u);
          if (v253)
          {
            if (CFStringGetLength(v253))
            {
              CFStringAppend(__p, v253);
              CFStringAppendCString(__p, ".", 0x600u);
            }

            if (v253 && CFStringGetLength(v253))
            {
              CFStringAppend(__p, appendedString);
              CFStringAppendCString(__p, ".", 0x600u);
            }
          }

          CFStringAppendCString(__p, "caf", 0x600u);
          v128 = __p;
          *&__p = 0;
          theArray = 0;
          v254 = v128;
          CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&theArray);
          CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&__p);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&appendedString);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v250);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v253);
          CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v252);
          buf[0].__r_.__value_.__r.__words[0] = v245;
          if (v245)
          {
            CFRetain(v245);
          }

          CADSPRecorderTapPointModelSetAudioFilePath();
          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v254);
          v129 = v245;
          v245 = 0;
          CADSPGraphModelAddRecorderTapPoint();
          if (v129)
          {
            CFRelease(v129);
          }

          CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v245);
          CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v246);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v247);
          v116 = v118 + 1;
        }

        while (v113 != v115 || v117 != v118);
      }

      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v249);
      v111 = v217 + 4;
      v105 = v218;
    }

    while (v217 != 4);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v229);
  v228 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *&__p = 0;
  v130 = CADSPGraphCreateWithModel();
  if (v130)
  {
    theArray = 0;
    *&v257 = 0;
    buf[0].__r_.__value_.__r.__words[0] = v130;
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v257);
    buf[0].__r_.__value_.__s.__data_[8] = 1;
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&theArray);
  }

  else
  {
    v182 = __p;
    if (!__p)
    {
      v182 = CADSPErrorCreate();
      *&__p = v182;
    }

    theArray = 0;
    *&v257 = 0;
    buf[0].__r_.__value_.__r.__words[0] = v182;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v257);
    buf[0].__r_.__value_.__s.__data_[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&theArray);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v228);
  if (buf[0].__r_.__value_.__s.__data_[8] != 1)
  {
    v203 = get_adm_log_object();
    if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v257) = 138412290;
      *(&v257 + 4) = buf[0].__r_.__value_.__r.__words[0];
      _os_log_error_impl(&dword_223B4A000, v203, OS_LOG_TYPE_ERROR, "failed to build DSP graph - compilation error: %@", &v257, 0xCu);
    }

    v204 = __cxa_allocate_exception(0x20uLL);
    __cxa_throw(v204, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v239);
  v131 = buf[0].__r_.__value_.__r.__words[0];
  buf[0].__r_.__value_.__r.__words[0] = 0;
  v239 = v131;
  if (buf[0].__r_.__value_.__s.__data_[8] == 1)
  {
    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  }

  else
  {
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
  }

  v227 = v239;
  if (v239)
  {
    CFRetain(v239);
    v132 = v227;
  }

  else
  {
    v132 = 0;
  }

  CA::DSP::Graph::GetStreamDescription(buf, v132, 0, 0);
  data = buf[0].__r_.__value_.__l.__data_;
  v134 = 1;
  while (1)
  {
    CA::DSP::Graph::GetModel(&__p, v227);
    v135 = CADSPGraphModelCopyPorts();
    buf[0].__r_.__value_.__r.__words[0] = 0;
    *&v257 = v135;
    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
    v136 = CFArrayGetCount(v257);
    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v257);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&__p);
    if (v136 <= v134)
    {
      break;
    }

    CA::DSP::Graph::GetStreamDescription(buf, v227, v134++, 0);
    if (*&data != *&buf[0].__r_.__value_.__l.__data_)
    {
      v137 = get_adm_log_object();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_223B4A000, v137, OS_LOG_TYPE_ERROR, "failed to validate DSP graph invariants - all input bus sample rates must be equal", buf, 2u);
      }

      goto LABEL_300;
    }
  }

  v138 = 1;
  CA::DSP::Graph::GetStreamDescription(buf, v227, 0, 1);
  v139 = buf[0].__r_.__value_.__l.__data_;
  while (1)
  {
    CA::DSP::Graph::GetModel(&theArray, v227);
    v140 = CADSPGraphModelCopyPorts();
    buf[0].__r_.__value_.__r.__words[0] = 0;
    *&v257 = v140;
    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
    v141 = CFArrayGetCount(v257);
    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v257);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&theArray);
    if (v141 <= v138)
    {
      break;
    }

    CA::DSP::Graph::GetStreamDescription(buf, v227, v138++, 1);
    if (*&v139 != *&buf[0].__r_.__value_.__l.__data_)
    {
      v142 = get_adm_log_object();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_223B4A000, v142, OS_LOG_TYPE_ERROR, "failed to validate DSP graph invariants - all output bus sample rates must be equal", buf, 2u);
      }

LABEL_300:
      v143 = __cxa_allocate_exception(0x20uLL);
      __cxa_throw(v143, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v227);
  v226 = v239;
  if (v239)
  {
    CFRetain(v239);
  }

  v144 = 0;
  *&__p = 0;
  if (*(v105 + 72) == 1)
  {
    if (*(v105 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v105 + 48), *(v105 + 56));
    }

    else
    {
      buf[0] = *(v105 + 48);
    }

    v145 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v146 = buf;
    }

    else
    {
      v146 = buf[0].__r_.__value_.__r.__words[0];
    }

    if (v146)
    {
      if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v147 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v147 = buf[0].__r_.__value_.__l.__size_;
      }

      v144 = CFStringCreateWithBytes(0, v146, v147, 0x8000100u, 0);
      *&v257 = v144;
      if (!v144)
      {
        v209 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v209, "Could not construct");
        __cxa_throw(v209, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v145 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v144 = 0;
    }

    *&__p = v144;
    if (v145 < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }
  }

  v149 = *(v105 + 136);
  for (k = *(v105 + 144); v149 != k; v149 += 32)
  {
    adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::load(&theArray, v149);
    v150 = theArray;
    v151 = get_adm_log_object();
    v152 = v151;
    if (v150)
    {
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
      {
        adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(buf, v149);
        v153 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
        LODWORD(v257) = 136315138;
        *(&v257 + 4) = v153;
        _os_log_impl(&dword_223B4A000, v152, OS_LOG_TYPE_DEFAULT, "setting %s", &v257, 0xCu);
        if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }
      }

      CA::DSP::Graph::LoadStripWithResourcePath(buf, v226, theArray, v144);
      if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
      {
        v187 = get_adm_log_object();
        if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v257) = 138412290;
          *(&v257 + 4) = buf[0].__r_.__value_.__r.__words[0];
          _os_log_error_impl(&dword_223B4A000, v187, OS_LOG_TYPE_ERROR, "failed to set property strip on DSP graph: %@", &v257, 0xCu);
        }

        v189 = __cxa_allocate_exception(0x20uLL);
        __cxa_throw(v189, MEMORY[0x277D82718], MEMORY[0x277D82650]);
      }
    }

    else if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
    {
      adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(buf, v149);
      v154 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
      LODWORD(v257) = 136315138;
      *(&v257 + 4) = v154;
      _os_log_error_impl(&dword_223B4A000, v152, OS_LOG_TYPE_ERROR, "failed to load %s", &v257, 0xCu);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  if (v144)
  {
    CFRelease(v144);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v226);
  v225 = v239;
  if (v239)
  {
    CFRetain(v239);
  }

  v156 = *(v218 + 112);
  for (m = *(v218 + 120); v156 != m; v156 += 32)
  {
    adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::load(&v256, v156);
    v157 = v256;
    v158 = get_adm_log_object();
    v159 = v158;
    if (v157)
    {
      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
      {
        adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(buf, v156);
        v160 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
        LODWORD(v257) = 136315138;
        *(&v257 + 4) = v160;
        _os_log_impl(&dword_223B4A000, v159, OS_LOG_TYPE_DEFAULT, "setting %s", &v257, 0xCu);
        if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }
      }

      *&__p = 0;
      Strip = CADSPGraphLoadStrip();
      v162 = __p;
      if (!Strip && !__p)
      {
        v162 = CADSPErrorCreate();
        *&__p = v162;
      }

      theArray = v162;
      if (v162)
      {
        v163 = 0;
        theArray = 0;
        buf[0].__r_.__value_.__r.__words[0] = v162;
      }

      else
      {
        v163 = 1;
      }

      buf[0].__r_.__value_.__s.__data_[8] = v163;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&theArray);
      v164 = buf[0].__r_.__value_.__s.__data_[8];
      if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
      {
        v190 = buf[0].__r_.__value_.__r.__words[0];
        buf[0].__r_.__value_.__r.__words[0] = 0;
        *&__p = 0;
        *&v257 = v190;
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&__p);
        BYTE8(v257) = v164;
        if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
        }

        v191 = get_adm_log_object();
        if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 138412290;
          *(buf[0].__r_.__value_.__r.__words + 4) = v190;
          _os_log_error_impl(&dword_223B4A000, v191, OS_LOG_TYPE_ERROR, "failed to set AU strip on DSP graph: %@", buf, 0xCu);
        }

        v192 = __cxa_allocate_exception(0x20uLL);
        __cxa_throw(v192, MEMORY[0x277D82718], MEMORY[0x277D82650]);
      }
    }

    else if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
    {
      adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(buf, v156);
      v165 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
      LODWORD(v257) = 136315138;
      *(&v257 + 4) = v165;
      _os_log_error_impl(&dword_223B4A000, v159, OS_LOG_TYPE_ERROR, "failed to load %s", &v257, 0xCu);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }
    }

    if (v256)
    {
      CFRelease(v256);
    }
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v225);
  v224 = v239;
  if (v239)
  {
    CFRetain(v239);
  }

  v166 = 0;
  *&__p = 0;
  if (*(v218 + 72) == 1)
  {
    if (*(v218 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(v218 + 48), *(v218 + 56));
    }

    else
    {
      buf[0] = *(v218 + 48);
    }

    v167 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v168 = buf;
    }

    else
    {
      v168 = buf[0].__r_.__value_.__r.__words[0];
    }

    if (v168)
    {
      if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v169 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v169 = buf[0].__r_.__value_.__l.__size_;
      }

      v166 = CFStringCreateWithBytes(0, v168, v169, 0x8000100u, 0);
      *&v257 = v166;
      if (!v166)
      {
        v210 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v210, "Could not construct");
        __cxa_throw(v210, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v167 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v166 = 0;
    }

    *&__p = v166;
    if (v167 < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }
  }

  v171 = *(v218 + 160);
  for (n = *(v218 + 168); v171 != n; v171 += 32)
  {
    adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::load(&theArray, v171);
    v172 = theArray;
    v173 = get_adm_log_object();
    v174 = v173;
    if (v172)
    {
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
      {
        adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(buf, v171);
        v175 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
        LODWORD(v257) = 136315138;
        *(&v257 + 4) = v175;
        _os_log_impl(&dword_223B4A000, v174, OS_LOG_TYPE_DEFAULT, "setting %s", &v257, 0xCu);
        if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }
      }

      CA::DSP::Graph::LoadStripWithResourcePath(buf, v224, theArray, v166);
      if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
      {
        v193 = get_adm_log_object();
        if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v257) = 138412290;
          *(&v257 + 4) = buf[0].__r_.__value_.__r.__words[0];
          _os_log_error_impl(&dword_223B4A000, v193, OS_LOG_TYPE_ERROR, "failed to set property strip override on DSP graph: %@", &v257, 0xCu);
        }

        v195 = __cxa_allocate_exception(0x20uLL);
        __cxa_throw(v195, MEMORY[0x277D82718], MEMORY[0x277D82650]);
      }
    }

    else if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
    {
      adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(buf, v171);
      v176 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
      LODWORD(v257) = 136315138;
      *(&v257 + 4) = v176;
      _os_log_error_impl(&dword_223B4A000, v174, OS_LOG_TYPE_ERROR, "failed to load %s", &v257, 0xCu);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  if (v166)
  {
    CFRelease(v166);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v224);
  v223 = v239;
  if (v239)
  {
    CFRetain(v239);
  }

  *&v257 = &v223;
  *(&v257 + 1) = v218;
  buf[0].__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
  buf[0].__r_.__value_.__l.__size_ = 0x40000000;
  buf[0].__r_.__value_.__r.__words[2] = ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK3adm3dsp2v212GraphBuilder20doSetParameterValuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke;
  buf[1].__r_.__value_.__r.__words[0] = &__block_descriptor_tmp_555;
  buf[1].__r_.__value_.__l.__size_ = &v257;
  CADSPGraphEnumerateParameters();
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v223);
  v222 = v239;
  if (v239)
  {
    CFRetain(v239);
  }

  *&v257 = &v222;
  *(&v257 + 1) = v218;
  buf[0].__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
  buf[0].__r_.__value_.__l.__size_ = 0x40000000;
  buf[0].__r_.__value_.__r.__words[2] = ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK3adm3dsp2v212GraphBuilder19doSetPropertyValuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke;
  buf[1].__r_.__value_.__r.__words[0] = &__block_descriptor_tmp_28;
  buf[1].__r_.__value_.__l.__size_ = &v257;
  CADSPGraphEnumerateProperties();
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v222);
  v221 = v239;
  if (v239)
  {
    CFRetain(v239);
  }

  *&__p = 0;
  v177 = CADSPGraphInitialize();
  v178 = __p;
  if (!v177 && !__p)
  {
    v178 = CADSPErrorCreate();
    *&__p = v178;
  }

  theArray = v178;
  if (v178)
  {
    v179 = 0;
    theArray = 0;
    buf[0].__r_.__value_.__r.__words[0] = v178;
  }

  else
  {
    v179 = 1;
  }

  buf[0].__r_.__value_.__s.__data_[8] = v179;
  CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&theArray);
  v180 = buf[0].__r_.__value_.__s.__data_[8];
  if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    v205 = buf[0].__r_.__value_.__r.__words[0];
    buf[0].__r_.__value_.__r.__words[0] = 0;
    *&__p = 0;
    *&v257 = v205;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&__p);
    BYTE8(v257) = v180;
    if ((buf[0].__r_.__value_.__s.__data_[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&buf[0].__r_.__value_.__l.__data_);
    }

    v206 = get_adm_log_object();
    if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 138412290;
      *(buf[0].__r_.__value_.__r.__words + 4) = v205;
      _os_log_error_impl(&dword_223B4A000, v206, OS_LOG_TYPE_ERROR, "failed to initialize DSP graph: %@", buf, 0xCu);
    }

    v207 = __cxa_allocate_exception(0x20uLL);
    __cxa_throw(v207, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v221);
  v220 = v239;
  if (v239)
  {
    CFRetain(v239);
    if (*(v218 + 188) <= 2u)
    {
      operator new();
    }
  }

  *v212 = 0;
  *(v212 + 16) = 1;
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v220);
  CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&v237);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&cf);
  return CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v239);
}

void sub_223BBF47C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
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
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
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
    std::runtime_error::runtime_error(v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_223BBFD3C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
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

const void **CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **std::expected<CA::DSP::Reference<CA::DSP::Graph>,CA::DSP::Reference<CA::DSP::Error>>::~expected[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    return CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(a1);
  }

  else
  {
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(a1);
  }
}

uint64_t ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK3adm3dsp2v212GraphBuilder19doSetPropertyValuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  CA::DSP::Graph::GetPropertyDirection(&v16, **v3, a2);
  if (LODWORD(v16.__r_.__value_.__l.__data_))
  {
    v5 = 0;
  }

  else
  {
    v5 = v16.__r_.__value_.__s.__data_[8];
  }

  if ((v16.__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    for (i = *(v4 + 216); i != *(v4 + 224); i += 8)
    {
      if (*i == v2)
      {
        adm_log_object = get_adm_log_object();
        if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *i;
          v9 = bswap32(*i);
          *&buf[1] = v9;
          if ((v9 - 32) > 0x5E || ((v9 >> 8) - 32) > 0x5E || ((v9 << 8 >> 24) - 32) > 0x5E || ((v9 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v16, v8);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v16, buf);
          }

          v10 = &v16;
          if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = v16.__r_.__value_.__r.__words[0];
          }

          *buf = 136315138;
          *&buf[4] = v10;
          _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "setting property %s", buf, 0xCu);
          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }
        }

        CA::DSP::Graph::SetProperty(buf, **v3, *i, *(i + 1), i[4] - *(i + 1));
        if ((buf[8] & 1) == 0)
        {
          v11 = get_adm_log_object();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v13 = *i;
            v14 = bswap32(*i);
            *&v17[1] = v14;
            if ((v14 - 32) > 0x5E || ((v14 >> 8) - 32) > 0x5E || ((v14 << 8 >> 24) - 32) > 0x5E || ((v14 >> 24) - 32) > 0x5E)
            {
              std::to_string(&v16, v13);
            }

            else
            {
              strcpy(&v17[5], "'");
              v17[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&v16, v17);
            }

            v15 = &v16;
            if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v15 = v16.__r_.__value_.__r.__words[0];
            }

            *v17 = 136315138;
            *&v17[4] = v15;
            _os_log_error_impl(&dword_223B4A000, v11, OS_LOG_TYPE_ERROR, "failed to set property %s", v17, 0xCu);
            if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v16.__r_.__value_.__l.__data_);
            }
          }

          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
        }

        return 0;
      }
    }
  }

  return 0;
}

void sub_223BC014C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK3adm3dsp2v212GraphBuilder20doSetParameterValuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  CA::DSP::Graph::GetParameterDirection(&v17, **v3, a2);
  if (LODWORD(v17.__r_.__value_.__l.__data_))
  {
    v5 = 0;
  }

  else
  {
    v5 = v17.__r_.__value_.__s.__data_[8];
  }

  if ((v17.__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v17.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    for (i = *(v4 + 192); i != *(v4 + 200); i += 8)
    {
      if (*i == a2)
      {
        v7 = *(i + 4);
        adm_log_object = get_adm_log_object();
        if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
        {
          v9 = bswap32(a2);
          *&buf[1] = v9;
          if ((v9 - 32) > 0x5E || ((v9 >> 8) - 32) > 0x5E || ((v9 << 8 >> 24) - 32) > 0x5E || ((v9 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v17, a2);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v17, buf);
          }

          v10 = &v17;
          if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = v17.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = v10;
          v19 = 2048;
          v20 = v7;
          _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "setting parameter %s to %f", buf, 0x16u);
          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v17.__r_.__value_.__l.__data_);
          }
        }

        CA::DSP::Graph::SetParameter(&v15, **v3, v7, a2);
        if ((v16 & 1) == 0)
        {
          v11 = get_adm_log_object();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v13 = bswap32(a2);
            *&buf[1] = v13;
            if ((v13 - 32) > 0x5E || ((v13 >> 8) - 32) > 0x5E || ((v13 << 8 >> 24) - 32) > 0x5E || ((v13 >> 24) - 32) > 0x5E)
            {
              std::to_string(&v17, a2);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&v17, buf);
            }

            v14 = &v17;
            if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v14 = v17.__r_.__value_.__r.__words[0];
            }

            *buf = 136315394;
            *&buf[4] = v14;
            v19 = 2048;
            v20 = v7;
            _os_log_error_impl(&dword_223B4A000, v11, OS_LOG_TYPE_ERROR, "failed to set parameter %s to %f", buf, 0x16u);
            if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v17.__r_.__value_.__l.__data_);
            }
          }

          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v15);
        }

        return 0;
      }
    }
  }

  return 0;
}

void sub_223BC0424(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::load(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_28371B8E8[v2])(&v5);
}

uint64_t adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>::str(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (*(&off_28371B8F8 + v2))(&v5);
}

const void **CA::DSP::Graph::LoadStripWithResourcePath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v5 = 0;
  if (!CADSPGraphLoadStripWithResourcePath())
  {
    v5 = CADSPErrorCreate();
    v10 = v5;
  }

  v9 = v5;
  if (v5)
  {
    v9 = 0;
    v8 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v9);
    v7 = 0;
    v10 = 0;
    *a1 = v5;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v10);
    *(a1 + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v7);
  }

  else
  {
    v8 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v9);
    *(a1 + 8) = 1;
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF13DictionaryRefEE3strEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_(const char *a1@<X1>, std::string *a2@<X8>)
{
  if (a1[23] >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  caulk::make_string(a2, "%s", a1, v2);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF13DictionaryRefEE3strEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_(CFDictionaryRef *a1@<X1>, std::string *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    Count = CFDictionaryGetCount(*a1);
    caulk::make_string(a2, "[dictionary at %p, size %lu]", v5, v3, Count);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "(null)");
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF13DictionaryRefEE4loadEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_(char *a1@<X1>, applesauce::CF *a2@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a1);
  applesauce::CF::make_DataRef(&cf, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  applesauce::CF::make_DictionaryRef(a2, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_223BC0728(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::DataRef::~DataRef(&a9);
  __cxa_begin_catch(a1);
  *v15 = 0;
  __cxa_end_catch();
  JUMPOUT(0x223BC0714);
}

uint64_t applesauce::CF::make_DataRef(CFDataRef *a1, uint64_t a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "rb");
  v10[0] = &unk_28371CAC0;
  v10[1] = MEMORY[0x277D85E28];
  v10[3] = v10;
  __stream = v4;
  v12[3] = v12;
  std::__function::__func<int (*)(__sFILE *),std::allocator<int (*)(__sFILE *)>,int ()(__sFILE *)>::__clone(v10, v12);
  std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](v10);
  if (!__stream)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  fseek(__stream, 0, 2);
  v5 = MEMORY[0x223DF46B0](__stream);
  if (v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  fseek(__stream, 0, 0);
  fread(0, 1uLL, 0, __stream);
  v6 = CFDataCreate(0, 0, 0);
  *a1 = v6;
  if (!v6)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
    __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::unique_ptr<__sFILE,std::function<int ()(__sFILE*)>>::reset[abi:ne200100](&__stream);
  return std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](v12);
}

void sub_223BC0974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v10);
  if (v11)
  {
    operator delete(v11);
  }

  std::unique_ptr<__sFILE,std::function<int ()(__sFILE*)>>::reset[abi:ne200100](va);
  std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

CFTypeID applesauce::CF::make_DictionaryRef(applesauce::CF *this, const applesauce::CF::DataRef *a2)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v3 = CFPropertyListCreateWithData(0, a2, 0, 0, 0);
  if (!v3)
  {
    result = CFDictionaryGetTypeID();
    if (!result)
    {
      *this = 0;
      return result;
    }

LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFDictionaryGetTypeID())
  {
    CFRelease(v4);
    goto LABEL_10;
  }

  *this = v4;
  v6 = CFGetTypeID(v4);
  result = CFDictionaryGetTypeID();
  if (v6 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_223BC0AD0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<int ()(__sFILE *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::unique_ptr<__sFILE,std::function<int ()(__sFILE*)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = v1;
    v2 = result[4];
    if (!v2)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v2 + 48))(v2, &v3);
  }

  return result;
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__function::__func<int (*)(__sFILE *),std::allocator<int (*)(__sFILE *)>,int ()(__sFILE *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "PFiP7__sFILEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<int (*)(__sFILE *),std::allocator<int (*)(__sFILE *)>,int ()(__sFILE *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28371CAC0;
  a2[1] = v2;
  return result;
}

CFTypeRef _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF13DictionaryRefEE4loadEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_@<X0>(CFTypeRef *a1@<X1>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    result = CFRetain(*a1);
  }

  *a2 = v3;
  return result;
}

const void **CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

FILE *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF9StringRefEE4loadEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_@<X0>(uint64_t a1@<X1>, CFStringRef *a2@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  result = fopen(v3, "rb");
  v5 = result;
  if (result)
  {
    fseek(result, 0, 2);
    MEMORY[0x223DF46B0](v5);
    operator new[]();
  }

  *a2 = 0;
  return result;
}

void sub_223BC0F7C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  fclose(v17);
  __cxa_begin_catch(a1);
  *v16 = 0;

  __cxa_end_catch();
}

CFTypeRef _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZNK3adm3dsp10GraphAssetIN10applesauce2CF9StringRefEE4loadEvEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJSD_NS_4__fs10filesystem4pathEEEEEEEDcSF_DpT0_@<X0>(CFTypeRef *a1@<X1>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    result = CFRetain(*a1);
  }

  *a2 = v3;
  return result;
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

void std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

void adm::dsp::v2::GraphBuilder::~GraphBuilder(adm::dsp::v2::GraphBuilder *this)
{
  adm::dsp::GraphBuilder::~GraphBuilder(this);

  JUMPOUT(0x223DF43A0);
}

void adm::dsp::GraphBuilder::~GraphBuilder(adm::dsp::GraphBuilder *this)
{
  *this = &unk_28371B8C0;
  v2 = *(this + 27);
  if (v2)
  {
    v3 = *(this + 28);
    v4 = *(this + 27);
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

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(this + 27);
    }

    *(this + 28) = v2;
    operator delete(v4);
  }

  v6 = *(this + 24);
  if (v6)
  {
    *(this + 25) = v6;
    operator delete(v6);
  }

  v8 = (this + 160);
  std::vector<adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 136);
  std::vector<adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 112);
  std::vector<adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 72) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::StringRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 16);
  v7 = *(this + 1);
  if (v7)
  {
    CFRelease(v7);
  }
}

void std::vector<adm::dsp::GraphAsset<applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 32;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,std::__fs::filesystem::path>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void adm::graph::GraphBuilder::buildGraph(adm::graph::GraphBuilder *this, const adm::ConfigurationChangeRequest *a2, uint64_t a3)
{
  v119 = *MEMORY[0x277D85DE8];
  if (!adm::config_policy::isExclaveUseCase(a3 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v106, "voice isolation conferencing");
    v21 = std::__tree<std::string>::find<std::string>(a3 + 8, &v106);
    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    if (a3 + 16 != v21)
    {
      goto LABEL_37;
    }

    if (adm::config_policy::isAirPodsMicOffloadUseCase(a3 + 8))
    {
      goto LABEL_39;
    }

    std::string::basic_string[abi:ne200100]<0>(&v106, "content creation recording");
    v57 = std::__tree<std::string>::find<std::string>(a3 + 8, &v106);
    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    if (v21 == v57 || (DeviceDescription = adm::config_policy::getDeviceDescription(a3, 1), v59 = adm::config_policy::getDeviceDescription(a3, 0), !adm::config_policy::contentCreationRequiresEC((a3 + 8), DeviceDescription, v59, v60)))
    {
LABEL_39:
      adm::graph::GraphBuilder::createDSPGraphAggNodeDesc(this, a2, a3);
    }

    else
    {
LABEL_37:
      adm::graph::GraphBuilder::createVPAggNodeDesc(this, a2, a3);
    }

    return;
  }

  if (*(a2 + 287) >= 0)
  {
    v6 = *(a2 + 287);
  }

  else
  {
    v6 = *(a2 + 34);
  }

  std::string::basic_string[abi:ne200100](&v100, v6 + 1);
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v100;
  }

  else
  {
    v7 = v100.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 287) >= 0)
    {
      v8 = a2 + 264;
    }

    else
    {
      v8 = *(a2 + 33);
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 95;
  v9 = *(a2 + 311);
  if (v9 >= 0)
  {
    v10 = a2 + 288;
  }

  else
  {
    v10 = *(a2 + 36);
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 311);
  }

  else
  {
    v11 = *(a2 + 37);
  }

  v12 = std::string::append(&v100, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  *&v115[16] = *(&v12->__r_.__value_.__l + 2);
  *v115 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(v115, "_", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v106.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v106.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
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

  v18 = std::string::append(&v106, p_p, size);
  v19 = v18->__r_.__value_.__l.__size_;
  __s = v18->__r_.__value_.__r.__words[0];
  v105[0] = v18->__r_.__value_.__r.__words[2];
  *(v105 + 3) = *(&v18->__r_.__value_.__r.__words[2] + 3);
  v20 = SHIBYTE(v18->__r_.__value_.__r.__words[2]);
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if ((v115[23] & 0x80000000) != 0)
  {
    operator delete(*v115);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
LABEL_33:
    v100.__r_.__value_.__r.__words[0] = __s;
    v100.__r_.__value_.__l.__size_ = v19;
    LODWORD(v100.__r_.__value_.__r.__words[2]) = v105[0];
    *(&v100.__r_.__value_.__r.__words[2] + 3) = *(v105 + 3);
    *(&v100.__r_.__value_.__s + 23) = v20;
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v100, __s, v19);
LABEL_42:
  if (*(a3 + 164))
  {
    v22 = *(a3 + 160);
  }

  else
  {
    v22 = 1024;
  }

  LODWORD(v101) = 1;
  HIDWORD(v101) = v22;
  std::string::basic_string[abi:ne200100]<0>(&v102, "");
  memset(&__p, 0, sizeof(__p));
  adm::config_policy::getActiveStreamInfo(&v98, a3);
  v86 = a2;
  v87 = this;
  v24 = v98;
  v23 = v99;
  v94 = a3;
  v88 = v98;
  if (v98 != v99)
  {
    v25 = 0;
    v92 = 0;
    v26 = 0;
    v27 = 0;
    v91 = 0;
    while (1)
    {
      std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v106, v24[1] + 32, "general");
      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v106.__r_.__value_.__l.__size_ == 7)
        {
          v30 = *v106.__r_.__value_.__l.__data_ != 1701733735 || *(v106.__r_.__value_.__r.__words[0] + 3) != 1818325605;
          operator delete(v106.__r_.__value_.__l.__data_);
          if (!v30)
          {
LABEL_63:
            v116.__r_.__value_.__r.__words[0] = 0;
            memset(v115, 0, sizeof(v115));
            v31 = *(v24 + 16);
            v32 = v24[1] + 64;
            if (*(v24 + 16))
            {
              v33 = *(v24[1] + 80);
              *v115 = *v32;
              *&v115[16] = v33;
              v116.__r_.__value_.__r.__words[0] = *(v32 + 32);
              if (*(a3 + 72))
              {
                v32 = a3 + 32;
              }
            }

            else
            {
              v40 = a3 + 80;
              if (!*(a3 + 120))
              {
                v40 = v24[1] + 64;
              }

              v41 = *(v40 + 16);
              *v115 = *v40;
              *&v115[16] = v41;
              v116.__r_.__value_.__r.__words[0] = *(v40 + 32);
            }

            v42 = *(v32 + 16);
            *&v116.__r_.__value_.__r.__words[1] = *v32;
            v117 = v42;
            v118 = *(v32 + 32);
            if (v27)
            {
              if ((v20 & 0x80000000) == 0)
              {
                goto LABEL_87;
              }

LABEL_101:
              std::string::__init_copy_ctor_external(&v106, __s, v19);
            }

            else
            {
              v43 = v31 == 0;
              if (!v31)
              {
                v26 = *v24;
              }

              v44 = v91;
              if (!v43)
              {
                v44 = *v24;
              }

              v91 = v44;
              if (v20 < 0)
              {
                std::string::__init_copy_ctor_external(&v106, __s, v19);
              }

              else
              {
                v106.__r_.__value_.__r.__words[0] = __s;
                v106.__r_.__value_.__l.__size_ = v19;
                LODWORD(v106.__r_.__value_.__r.__words[2]) = v105[0];
                *(&v106.__r_.__value_.__r.__words[2] + 3) = *(v105 + 3);
                *(&v106.__r_.__value_.__s + 23) = v20;
              }

              LODWORD(v107) = 1;
              v108 = *&v116.__r_.__value_.__r.__words[1];
              *v109 = v117;
              *&v109[16] = v118;
              *&v109[24] = 0;
              *v110 = v92;
              *&v110[4] = 1;
              v110[16] = 0;
              v111.__r_.__value_.__s.__data_[8] = 0;
              v111.__r_.__value_.__s.__data_[16] = 0;
              std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &v106);
              if (v111.__r_.__value_.__s.__data_[8] == 1 && v111.__r_.__value_.__s.__data_[7] < 0)
              {
                operator delete(*&v110[16]);
              }

              if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v106.__r_.__value_.__l.__data_);
              }

              ++v92;
              if (v20 < 0)
              {
                goto LABEL_101;
              }

LABEL_87:
              v106.__r_.__value_.__r.__words[0] = __s;
              v106.__r_.__value_.__l.__size_ = v19;
              LODWORD(v106.__r_.__value_.__r.__words[2]) = v105[0];
              *(&v106.__r_.__value_.__r.__words[2] + 3) = *(v105 + 3);
              *(&v106.__r_.__value_.__s + 23) = v20;
            }

            LODWORD(v107) = 0;
            v108 = *v115;
            *v109 = *&v115[16];
            *&v109[16] = v116.__r_.__value_.__r.__words[0];
            *&v109[24] = 0;
            *v110 = v25;
            *&v110[4] = 1;
            v110[16] = 0;
            v111.__r_.__value_.__s.__data_[8] = 0;
            v111.__r_.__value_.__s.__data_[16] = 0;
            std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &v106);
            if (v111.__r_.__value_.__s.__data_[8] == 1 && v111.__r_.__value_.__s.__data_[7] < 0)
            {
              operator delete(*&v110[16]);
            }

            if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v106.__r_.__value_.__l.__data_);
            }

            ++v27;
            goto LABEL_108;
          }
        }

        else
        {
          operator delete(v106.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) == 7 && LODWORD(v106.__r_.__value_.__l.__data_) == 1701733735 && *(v106.__r_.__value_.__r.__words + 3) == 1818325605)
      {
        goto LABEL_63;
      }

      if (std::operator==[abi:ne200100]<std::string,char [10]>(v24[1] + 32, "reference"))
      {
        v26 = *v24;
        if (v20 < 0)
        {
          std::string::__init_copy_ctor_external(&v106, __s, v19);
        }

        else
        {
          v106.__r_.__value_.__r.__words[0] = __s;
          v106.__r_.__value_.__l.__size_ = v19;
          LODWORD(v106.__r_.__value_.__r.__words[2]) = v105[0];
          *(&v106.__r_.__value_.__r.__words[2] + 3) = *(v105 + 3);
          *(&v106.__r_.__value_.__s + 23) = v20;
        }

        LODWORD(v107) = 0;
        v34 = v24[1];
        v36 = *(v34 + 64);
        v35 = *(v34 + 80);
        *&v109[16] = *(v34 + 96);
        v108 = v36;
        *v109 = v35;
        *v115 = 1;
        adm::graph::SemanticSet::SemanticSet(&v109[24], v115, 1);
        *v110 = v25;
        *&v110[4] = 1;
        v110[16] = 0;
        v111.__r_.__value_.__s.__data_[8] = 0;
        v111.__r_.__value_.__s.__data_[16] = 0;
        std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &v106);
      }

      else
      {
        if (v20 < 0)
        {
          std::string::__init_copy_ctor_external(&v106, __s, v19);
        }

        else
        {
          v106.__r_.__value_.__r.__words[0] = __s;
          v106.__r_.__value_.__l.__size_ = v19;
          LODWORD(v106.__r_.__value_.__r.__words[2]) = v105[0];
          *(&v106.__r_.__value_.__r.__words[2] + 3) = *(v105 + 3);
          *(&v106.__r_.__value_.__s + 23) = v20;
        }

        LODWORD(v107) = 0;
        v37 = v24[1];
        v39 = *(v37 + 64);
        v38 = *(v37 + 80);
        *&v109[16] = *(v37 + 96);
        v108 = v39;
        *v109 = v38;
        *v115 = 2;
        adm::graph::SemanticSet::SemanticSet(&v109[24], v115, 1);
        *v110 = v25;
        *&v110[4] = 1;
        v110[16] = 0;
        v111.__r_.__value_.__s.__data_[8] = 0;
        v111.__r_.__value_.__s.__data_[16] = 0;
        std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &v106);
      }

      if (v111.__r_.__value_.__s.__data_[8] == 1 && v111.__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(*&v110[16]);
      }

      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v106.__r_.__value_.__l.__data_);
      }

LABEL_108:
      ++v25;
      v24 += 3;
      if (v24 == v23)
      {
        goto LABEL_111;
      }
    }
  }

  v26 = 0;
  v91 = 0;
LABEL_111:
  std::string::basic_string[abi:ne200100]<0>(&v106, "isolated audio siri");
  v45 = a3;
  v46 = v26;
  v47 = std::__tree<std::string>::find<std::string>(a3 + 8, &v106);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (a3 + 16 != v47)
  {
    v48 = 0;
    v49 = 1;
    goto LABEL_150;
  }

  std::string::basic_string[abi:ne200100]<0>(&v106, "isolated audio muted talker detection");
  v50 = std::__tree<std::string>::find<std::string>(a3 + 8, &v106);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (v47 != v50)
  {
    v48 = 0;
    v49 = 0;
LABEL_149:
    v45 = v94;
    goto LABEL_150;
  }

  std::string::basic_string[abi:ne200100]<0>(&v106, "isolated audio sound analysis");
  v51 = std::__tree<std::string>::find<std::string>(v94 + 8, &v106);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (v47 != v51)
  {
    v48 = 0;
    v49 = 2;
    goto LABEL_149;
  }

  std::string::basic_string[abi:ne200100]<0>(&v106, "isolated audio perception");
  v52 = std::__tree<std::string>::find<std::string>(v94 + 8, &v106);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (v47 != v52)
  {
    v48 = 0;
    v49 = 3;
    goto LABEL_149;
  }

  std::string::basic_string[abi:ne200100]<0>(&v106, "isolated audio shared DSP");
  v53 = std::__tree<std::string>::find<std::string>(v94 + 8, &v106);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (v47 != v53)
  {
    v48 = 0;
    v49 = 4;
    goto LABEL_149;
  }

  std::string::basic_string[abi:ne200100]<0>(&v106, "isolated audio historical audio");
  v54 = std::__tree<std::string>::find<std::string>(v94 + 8, &v106);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (v47 != v54)
  {
    v48 = 0;
    v49 = 5;
    goto LABEL_149;
  }

  std::string::basic_string[abi:ne200100]<0>(&v106, "isolated audio audio pairing");
  v55 = std::__tree<std::string>::find<std::string>(v94 + 8, &v106);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (v47 != v55)
  {
    v48 = 0;
    v49 = 6;
    goto LABEL_149;
  }

  adm_log_object = get_adm_log_object();
  v45 = v94;
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v106.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "unsupported configuration: useCase", &v106, 2u);
  }

  v49 = 0;
  v48 = 1;
LABEL_150:
  v62 = adm::config_policy::exclaveUseCaseRequiresRefStream(v45 + 8);
  v63 = 1886216704;
  if (v91)
  {
    {
      v64 = 0x100000000;
      v63 = 1886216809;
      goto LABEL_158;
    }

    v65 = get_adm_log_object();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v106.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v65, OS_LOG_TYPE_ERROR, "unsupported configuration: inputPort", &v106, 2u);
    }
  }

  v64 = 0;
LABEL_158:
  v93 = v62;
  v95 = v49;
  v89 = v64;
  v90 = v63;
  if (v26)
  {
    v66 = *(v26 + 64);
    if (v66 <= 1651275108)
    {
      if (v66 == 1634300528)
      {
        v67 = 0;
        v68 = 0x100000000;
        v69 = 1885433856;
        v70 = 115;
        goto LABEL_185;
      }

      if (v66 != 1651271009)
      {
        if (v66 == 1651274862)
        {
          v69 = 1886613504;
          v71 = *(v26 + 72);
          {
            v67 = 0;
            v68 = 0x100000000;
            v70 = 107;
            goto LABEL_185;
          }

          if (v71 == 1751412846)
          {
            v67 = 0;
            v69 = 1885892608;
            v68 = 0x100000000;
            v70 = 119;
            goto LABEL_185;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v26, "Receiver"))
          {
            v67 = 0;
            v68 = 0x100000000;
            v69 = 1886545152;
            v70 = 99;
            goto LABEL_185;
          }
        }

        goto LABEL_182;
      }

      v67 = 0;
      v68 = 0x100000000;
      v69 = 1886151936;
    }

    else
    {
      if (v66 <= 1751412072)
      {
        if (v66 == 1651275109)
        {
          v67 = 0;
          v68 = 0x100000000;
          v70 = 66;
          v69 = 1885892608;
          goto LABEL_185;
        }

        if (v66 == 1685090932)
        {
          v67 = 0;
          v68 = 0x100000000;
          v69 = 1885631232;
          v70 = 112;
          goto LABEL_185;
        }

LABEL_182:
        v72 = get_adm_log_object();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v106.__r_.__value_.__l.__data_) = 0;
          _os_log_error_impl(&dword_223B4A000, v72, OS_LOG_TYPE_ERROR, "unsupported configuration: outputPort", &v106, 2u);
        }

        goto LABEL_184;
      }

      if (v66 == 1751412073)
      {
        v67 = 0;
        v69 = 1885889536;
        v68 = 0x100000000;
        v70 = 109;
        goto LABEL_185;
      }

      if (v66 != 1970496032)
      {
        goto LABEL_182;
      }

      v67 = 0;
      v68 = 0x100000000;
      v69 = 1886745344;
    }

    v70 = 111;
    goto LABEL_185;
  }

LABEL_184:
  v68 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 1;
LABEL_185:
  v73 = v69 | v70;
  if (v46)
  {
    if ((v67 & 1) == 0)
    {
      v75 = get_adm_log_object();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = v46;
        if (*(v46 + 23) < 0)
        {
          v76 = *v46;
        }

        v77 = (v46 + 24);
        if (*(v46 + 47) < 0)
        {
          v77 = *v77;
        }

        v78 = *(v46 + 64);
        v79 = bswap32(v78);
        *(&v106.__r_.__value_.__l.__data_ + 1) = v79;
        if ((v79 - 32) > 0x5E || ((v79 >> 8) - 32) > 0x5E || ((v79 << 8 >> 24) - 32) > 0x5E || ((v79 >> 24) - 32) > 0x5E)
        {
          std::to_string(v115, v78);
        }

        else
        {
          *(v106.__r_.__value_.__r.__words + 5) = 39;
          v106.__r_.__value_.__s.__data_[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(v115, &v106);
        }

        if (v115[23] >= 0)
        {
          v80 = v115;
        }

        else
        {
          v80 = *v115;
        }

        v81 = *(v46 + 72);
        v82 = bswap32(v73);
        *(&v106.__r_.__value_.__l.__data_ + 1) = v82;
        if ((v82 & 0x70) - 32 > 0x5E || BYTE1(v82) - 32 > 0x5E || BYTE2(v82) - 32 > 0x5E || HIBYTE(v82) - 32 > 0x5Eu)
        {
          std::to_string(&v97, v73);
        }

        else
        {
          *(v106.__r_.__value_.__r.__words + 5) = 39;
          v106.__r_.__value_.__s.__data_[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v97, &v106);
        }

        v83 = &v97;
        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v83 = v97.__r_.__value_.__r.__words[0];
        }

        LODWORD(v106.__r_.__value_.__l.__data_) = 136316162;
        *(v106.__r_.__value_.__r.__words + 4) = v76;
        WORD2(v106.__r_.__value_.__r.__words[1]) = 2080;
        *(&v106.__r_.__value_.__r.__words[1] + 6) = v77;
        HIWORD(v106.__r_.__value_.__r.__words[2]) = 2080;
        v107 = v80;
        LOWORD(v108) = 1024;
        *(&v108 + 2) = v81;
        WORD3(v108) = 2080;
        *(&v108 + 1) = v83;
        _os_log_impl(&dword_223B4A000, v75, OS_LOG_TYPE_DEFAULT, "mapped { deviceUID '%s', modelUID '%s', transportType %s, outputDataSource %d } -> output port type %s", &v106, 0x30u);
        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if ((v115[23] & 0x80000000) != 0)
        {
          operator delete(*v115);
          if (v48)
          {
            goto LABEL_213;
          }

LABEL_215:
          v115[0] = v93;
          *&v115[4] = v95;
          *&v115[8] = v89 | v90;
          v115[12] = (v89 | v90) >> 32;
          *&v115[16] = v73 | v68;
          v115[20] = (v73 | v68) >> 32;
          *&v115[24] = isHighLatencyRoute;
          v115[28] = 1;
          if (*(v86 + 255) < 0)
          {
            std::string::__init_copy_ctor_external(&v116, *(v86 + 29), *(v86 + 30));
          }

          else
          {
            v116 = *(v86 + 232);
          }

          LODWORD(v117) = *(v86 + 64);
          BYTE4(v117) = *(v86 + 260);
          *&v106.__r_.__value_.__l.__data_ = *&v100.__r_.__value_.__l.__data_;
          memset(&v100, 0, sizeof(v100));
          v106.__r_.__value_.__r.__words[2] = v100.__r_.__value_.__r.__words[2];
          v107 = v101;
          v108 = v102;
          v85 = v103;
          v102 = 0uLL;
          v103 = 0;
          *&v109[8] = __p;
          *v109 = v85;
          memset(&__p, 0, sizeof(__p));
          *&v110[13] = *&v115[13];
          *v110 = *v115;
          v111 = v116;
          memset(&v116, 0, sizeof(v116));
          v113 = BYTE4(v117);
          v112 = v117;
          v114 = 2;
          std::expected<adm::graph::GraphDescription,std::error_code>::expected[abi:ne200100]<adm::graph::GraphDescription>(v87, &v106);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v110);
          v97.__r_.__value_.__r.__words[0] = &v109[8];
          std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](&v97);
          v84 = v88;
          if ((v109[7] & 0x80000000) != 0)
          {
            operator delete(v108);
          }

          if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v106.__r_.__value_.__l.__data_);
          }

          goto LABEL_222;
        }
      }
    }
  }

  if (!v48)
  {
    goto LABEL_215;
  }

LABEL_213:
  v84 = v88;
  *v87 = 1969448551;
  *(v87 + 392) = 0;
LABEL_222:
  if (v84)
  {
    operator delete(v84);
  }

  v106.__r_.__value_.__r.__words[0] = &__p;
  std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](&v106);
  if (SHIBYTE(v103) < 0)
  {
    operator delete(v102);
  }

  if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v20 & 0x80000000) == 0)
    {
      return;
    }

LABEL_230:
    operator delete(__s);
    return;
  }

  operator delete(v100.__r_.__value_.__l.__data_);
  if (v20 < 0)
  {
    goto LABEL_230;
  }
}

void sub_223BC2448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  *(v47 - 208) = &a34;
  std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100]((v47 - 208));
  adm::graph::NodeDescription::~NodeDescription(&a24);
  if (v46 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void adm::graph::GraphBuilder::createVPAggNodeDesc(adm::graph::GraphBuilder *this, const adm::ConfigurationChangeRequest *a2, uint64_t a3)
{
  v64 = *MEMORY[0x277D85DE8];
  adm::config_policy::getActiveStreamInfo(&__p, a3);
  v6 = __p;
  v7 = v51 - __p;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v51 - __p) >> 3);
  v9 = v8 - 1;
  if (v8 > 1)
  {
    if (*(a2 + 287) >= 0)
    {
      v10 = *(a2 + 287);
    }

    else
    {
      v10 = *(a2 + 34);
    }

    std::string::basic_string[abi:ne200100](&v38, v10 + 1);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v38;
    }

    else
    {
      v11 = v38.__r_.__value_.__r.__words[0];
    }

    if (v10)
    {
      if (*(a2 + 287) >= 0)
      {
        v12 = a2 + 264;
      }

      else
      {
        v12 = *(a2 + 33);
      }

      memmove(v11, v12, v10);
    }

    *(&v11->__r_.__value_.__l.__data_ + v10) = 95;
    v13 = *(a2 + 311);
    if (v13 >= 0)
    {
      v14 = a2 + 288;
    }

    else
    {
      v14 = *(a2 + 36);
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 311);
    }

    else
    {
      v15 = *(a2 + 37);
    }

    v16 = std::string::append(&v38, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v39, "_", 1uLL);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v45;
    }

    else
    {
      v20 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v45.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v63, v20, size);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v52, "_VoiceProcessingUL", 0x12uLL);
    v25 = v24->__r_.__value_.__l.__size_;
    __s = v24->__r_.__value_.__r.__words[0];
    v49[0] = v24->__r_.__value_.__r.__words[2];
    *(v49 + 3) = *(&v24->__r_.__value_.__r.__words[2] + 3);
    v26 = SHIBYTE(v24->__r_.__value_.__r.__words[2]);
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((v26 & 0x80000000) == 0)
    {
LABEL_38:
      v45.__r_.__value_.__r.__words[0] = __s;
      v45.__r_.__value_.__l.__size_ = v25;
      LODWORD(v45.__r_.__value_.__r.__words[2]) = v49[0];
      *(&v45.__r_.__value_.__r.__words[2] + 3) = *(v49 + 3);
      *(&v45.__r_.__value_.__s + 23) = v26;
      goto LABEL_41;
    }

    std::string::__init_copy_ctor_external(&v45, __s, v25);
LABEL_41:
    if (*(a3 + 164))
    {
      v27 = *(a3 + 160);
    }

    else
    {
      v27 = 480;
    }

    v46 = 6;
    v47 = v27;
    std::string::basic_string[abi:ne200100]<0>(&v48, "");
    v43 = 0uLL;
    v44 = 0;
    v28 = v6[1] + 64;
    if (*(a3 + 72))
    {
      v28 = a3 + 32;
    }

    v29 = *(v28 + 16);
    v40 = *v28;
    v41 = v29;
    v42 = *(v28 + 32);
    if (v26 < 0)
    {
      std::string::__init_copy_ctor_external(&v52, __s, v25);
    }

    else
    {
      v52.__r_.__value_.__r.__words[0] = __s;
      v52.__r_.__value_.__l.__size_ = v25;
      LODWORD(v52.__r_.__value_.__r.__words[2]) = v49[0];
      *(&v52.__r_.__value_.__r.__words[2] + 3) = *(v49 + 3);
      *(&v52.__r_.__value_.__s + 23) = v26;
    }

    LODWORD(v53) = 1;
    *v54 = v40;
    v55 = v41;
    v56 = v42;
    v57 = 0;
    *v58 = 0x100000000;
    *&v58[8] = 0;
    LOBYTE(v59) = 0;
    v61 = 0;
    LOBYTE(v62) = 0;
    std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&v43, &v52);
    if (v61 == 1 && v60 < 0)
    {
      operator delete(v59);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (v7 != 24)
    {
      v30 = 0;
      v31 = 0;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      v32 = v6 + 1;
      do
      {
        v33 = *v32;
        v34 = *(*v32 + 92);
        if (v26 < 0)
        {
          std::string::__init_copy_ctor_external(&v52, __s, v25);
        }

        else
        {
          v52.__r_.__value_.__r.__words[0] = __s;
          v52.__r_.__value_.__l.__size_ = v25;
          LODWORD(v52.__r_.__value_.__r.__words[2]) = v49[0];
          *(&v52.__r_.__value_.__r.__words[2] + 3) = *(v49 + 3);
          *(&v52.__r_.__value_.__s + 23) = v26;
        }

        LODWORD(v53) = 0;
        v35 = *(v33 + 64);
        v36 = *(v33 + 80);
        v56 = *(v33 + 96);
        *v54 = v35;
        v55 = v36;
        v57 = 0;
        *v58 = v31;
        *&v58[4] = 1;
        LOBYTE(v59) = 0;
        v61 = 0;
        LOBYTE(v62) = 0;
        std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&v43, &v52);
        if (v61 == 1 && v60 < 0)
        {
          operator delete(v59);
        }

        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        v30 += v34;
        ++v31;
        v32 += 3;
      }

      while (v9 != v31);
    }

    operator new();
  }

  *this = 1969448551;
  *(this + 392) = 0;
  if (v6)
  {
    operator delete(v6);
  }
}

void sub_223BC3B24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void adm::graph::GraphBuilder::createDSPGraphAggNodeDesc(adm::graph::GraphBuilder *this, const adm::ConfigurationChangeRequest *a2, uint64_t a3)
{
  v144 = *MEMORY[0x277D85DE8];
  if (*(a2 + 287) >= 0)
  {
    v5 = *(a2 + 287);
  }

  else
  {
    v5 = *(a2 + 34);
  }

  std::string::basic_string[abi:ne200100](&v99, v5 + 1);
  if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v99;
  }

  else
  {
    v6 = v99.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a2 + 287) >= 0)
    {
      v7 = a2 + 264;
    }

    else
    {
      v7 = *(a2 + 33);
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 95;
  v8 = *(a2 + 311);
  if (v8 >= 0)
  {
    v9 = a2 + 288;
  }

  else
  {
    v9 = *(a2 + 36);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 311);
  }

  else
  {
    v10 = *(a2 + 37);
  }

  v11 = std::string::append(&v99, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  *v131 = *(&v11->__r_.__value_.__l + 2);
  v130 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v130, "_", 1uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
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

  v17 = std::string::append(&__str, p_p, size);
  v18 = v17->__r_.__value_.__l.__size_;
  __s = v17->__r_.__value_.__r.__words[0];
  v104[0] = v17->__r_.__value_.__r.__words[2];
  *(v104 + 3) = *(&v17->__r_.__value_.__r.__words[2] + 3);
  v19 = SHIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if ((v131[7] & 0x80000000) != 0)
  {
    operator delete(v130);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
LABEL_32:
    v99.__r_.__value_.__r.__words[0] = __s;
    v99.__r_.__value_.__l.__size_ = v18;
    LODWORD(v99.__r_.__value_.__r.__words[2]) = v104[0];
    *(&v99.__r_.__value_.__r.__words[2] + 3) = *(v104 + 3);
    *(&v99.__r_.__value_.__s + 23) = v19;
    goto LABEL_35;
  }

  std::string::__init_copy_ctor_external(&v99, __s, v18);
LABEL_35:
  if (*(a3 + 164))
  {
    v20 = *(a3 + 160);
  }

  else
  {
    v20 = 1024;
  }

  LODWORD(v100) = 1;
  HIDWORD(v100) = v20;
  v88 = v19;
  std::string::basic_string[abi:ne200100]<0>(&v101, "");
  v87 = a2;
  memset(&__p, 0, sizeof(__p));
  adm::config_policy::getActiveStreamInfo(&v97, a3);
  v21 = v98;
  if (v97 != v98)
  {
    v22 = 0;
    v23 = 0;
    for (i = v97; i != v21; i += 3)
    {
      std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__str, i[1] + 32, "general");
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__str.__r_.__value_.__l.__size_ == 7)
        {
          v27 = *__str.__r_.__value_.__l.__data_ != 1701733735 || *(__str.__r_.__value_.__r.__words[0] + 3) != 1818325605;
          operator delete(__str.__r_.__value_.__l.__data_);
          if (!v27)
          {
LABEL_56:
            v130 = 0u;
            memset(v131, 0, 24);
            v28 = i[1] + 64;
            if (*(i + 16))
            {
              v29 = *(i[1] + 80);
              v130 = *v28;
              *v131 = v29;
              *&v131[16] = *(v28 + 32);
              if (*(a3 + 72))
              {
                v28 = a3 + 32;
              }
            }

            else
            {
              v33 = a3 + 80;
              if (!*(a3 + 120))
              {
                v33 = i[1] + 64;
              }

              v34 = *(v33 + 16);
              v130 = *v33;
              *v131 = v34;
              *&v131[16] = *(v33 + 32);
            }

            v35 = *(v28 + 16);
            *&v131[24] = *v28;
            *&v131[40] = v35;
            *&v132 = *(v28 + 32);
            if (v88 < 0)
            {
              std::string::__init_copy_ctor_external(&__str, __s, v18);
            }

            else
            {
              __str.__r_.__value_.__r.__words[0] = __s;
              __str.__r_.__value_.__l.__size_ = v18;
              LODWORD(__str.__r_.__value_.__r.__words[2]) = v104[0];
              *(&__str.__r_.__value_.__r.__words[2] + 3) = *(v104 + 3);
              *(&__str.__r_.__value_.__s + 23) = v88;
            }

            LODWORD(v107) = 1;
            *v108 = *&v131[24];
            *v109 = *&v131[40];
            *&v109[16] = v132;
            *&v109[24] = 0;
            LODWORD(v110) = v23;
            *(&v110 + 4) = 1;
            LOBYTE(v111) = 0;
            LOBYTE(v113) = 0;
            LOBYTE(v114) = 0;
            std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &__str);
            if (v113 == 1 && SHIBYTE(v112) < 0)
            {
              operator delete(v111);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
              if (v88 < 0)
              {
                goto LABEL_84;
              }

LABEL_82:
              __str.__r_.__value_.__r.__words[0] = __s;
              __str.__r_.__value_.__l.__size_ = v18;
              LODWORD(__str.__r_.__value_.__r.__words[2]) = v104[0];
              *(&__str.__r_.__value_.__r.__words[2] + 3) = *(v104 + 3);
              *(&__str.__r_.__value_.__s + 23) = v88;
            }

            else
            {
              if ((v88 & 0x80000000) == 0)
              {
                goto LABEL_82;
              }

LABEL_84:
              std::string::__init_copy_ctor_external(&__str, __s, v18);
            }

            LODWORD(v107) = 0;
            *v108 = v130;
            *v109 = *v131;
            *&v109[16] = *&v131[16];
            *&v109[24] = 0;
            LODWORD(v110) = v22;
            *(&v110 + 4) = 1;
            LOBYTE(v111) = 0;
            LOBYTE(v113) = 0;
            LOBYTE(v114) = 0;
            std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &__str);
            if (v113 == 1 && SHIBYTE(v112) < 0)
            {
              operator delete(v111);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            ++v23;
            goto LABEL_91;
          }
        }

        else
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 7 && LODWORD(__str.__r_.__value_.__l.__data_) == 1701733735 && *(__str.__r_.__value_.__r.__words + 3) == 1818325605)
      {
        goto LABEL_56;
      }

      if (!std::operator==[abi:ne200100]<std::string,char [10]>(i[1] + 32, "reference"))
      {
        continue;
      }

      if (v88 < 0)
      {
        std::string::__init_copy_ctor_external(&__str, __s, v18);
      }

      else
      {
        __str.__r_.__value_.__r.__words[0] = __s;
        __str.__r_.__value_.__l.__size_ = v18;
        LODWORD(__str.__r_.__value_.__r.__words[2]) = v104[0];
        *(&__str.__r_.__value_.__r.__words[2] + 3) = *(v104 + 3);
        *(&__str.__r_.__value_.__s + 23) = v88;
      }

      LODWORD(v107) = 0;
      v30 = i[1];
      v32 = *(v30 + 64);
      v31 = *(v30 + 80);
      *&v109[16] = *(v30 + 96);
      *v108 = v32;
      *v109 = v31;
      LODWORD(v130) = 1;
      adm::graph::SemanticSet::SemanticSet(&v109[24], &v130, 1);
      LODWORD(v110) = v22;
      *(&v110 + 4) = 1;
      LOBYTE(v111) = 0;
      LOBYTE(v113) = 0;
      LOBYTE(v114) = 0;
      std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &__str);
      if (v113 == 1 && SHIBYTE(v112) < 0)
      {
        operator delete(v111);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_91:
      ++v22;
    }
  }

  v36 = v87;
  if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::find<std::string>(v87 + 24, &v96))
  {
LABEL_94:
    v94 = 0uLL;
    v95 = 0;
    std::string::basic_string[abi:ne200100]<0>(&__str, "spatial playback");
    v37 = std::__tree<std::string>::find<std::string>(a3 + 8, &__str);
    v38 = a3 + 16;
    if (a3 + 16 == v37)
    {
      v44 = v37;
      std::string::basic_string[abi:ne200100]<0>(&v130, "spatial channel virtualization only");
      v39 = v44 != std::__tree<std::string>::find<std::string>(a3 + 8, &v130);
      if ((v131[7] & 0x80000000) != 0)
      {
        operator delete(v130);
      }
    }

    else
    {
      v39 = 1;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (!v39)
      {
        goto LABEL_109;
      }
    }

    else if (!v39)
    {
LABEL_109:
      std::string::basic_string[abi:ne200100]<0>(&__str, "content creation recording");
      v45 = std::__tree<std::string>::find<std::string>(a3 + 8, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v38 != v45 && *(a3 + 240) == 1 && *(a3 + 232) == 1 && *(a3 + 224))
      {
        operator new();
      }

      v46 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::find<std::string>(v87 + 24, &v96);
      if (!v46)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v47 = v46;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      std::string::basic_string[abi:ne200100]<0>(&__str, "spatial playback");
      if (v38 == std::__tree<std::string>::find<std::string>(a3 + 8, &__str))
      {
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

LABEL_128:
        std::string::basic_string[abi:ne200100]<0>(&__str, "spatial channel virtualization only");
        v51 = std::__tree<std::string>::find<std::string>(a3 + 8, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v38 != v51)
        {
          std::string::basic_string[abi:ne200100]<0>(&__str, "Channel Virtualization");
          std::vector<std::string>::push_back[abi:ne200100](&v91, &__str);
LABEL_132:
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = v91;
          v74 = v92;
          if (v91 != v92)
          {
            while (1)
            {
              if (*(v73 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v90, *v73, *(v73 + 1));
              }

              else
              {
                v75 = *v73;
                v90.__r_.__value_.__r.__words[2] = *(v73 + 2);
                *&v90.__r_.__value_.__l.__data_ = v75;
              }

              if (*(v36 + 128) == 1)
              {
                if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v76 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v76 = v90.__r_.__value_.__l.__size_;
                }

                std::string::basic_string[abi:ne200100](&__str, v76 + 8);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_str = &__str;
                }

                else
                {
                  p_str = __str.__r_.__value_.__r.__words[0];
                }

                if (v76)
                {
                  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v78 = &v90;
                  }

                  else
                  {
                    v78 = v90.__r_.__value_.__r.__words[0];
                  }

                  memmove(p_str, v78, v76);
                }

                strcpy(p_str + v76, " (Intel)");
                if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::find<std::string>(v47 + 5, &__str))
                {
                  std::string::operator=(&v90, &__str);
                }

                v36 = v87;
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }
              }

              if (_os_feature_enabled_impl())
              {
                if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v79 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v79 = v90.__r_.__value_.__l.__size_;
                }

                std::string::basic_string[abi:ne200100](&__str, v79 + 10);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v80 = &__str;
                }

                else
                {
                  v80 = __str.__r_.__value_.__r.__words[0];
                }

                if (v79)
                {
                  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v81 = &v90;
                  }

                  else
                  {
                    v81 = v90.__r_.__value_.__r.__words[0];
                  }

                  memmove(v80, v81, v79);
                }

                strcpy(v80 + v79, " (NNVADV2)");
                if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::find<std::string>(v47 + 5, &__str))
                {
                  std::string::operator=(&v90, &__str);
                }

                v36 = v87;
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }
              }

              v82 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::find<std::string>(v47 + 5, &v90);
              if (v82)
              {
                break;
              }

              if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v90.__r_.__value_.__l.__data_);
              }

              v73 = (v73 + 24);
              if (v73 == v74)
              {
                goto LABEL_238;
              }
            }

            adm::DSPGraphBasicConfiguration::DSPGraphBasicConfiguration(&v130, (v82 + 5));
            *&v142[8] = *(&v94 + 1);
            v83 = v94;
            *&v142[16] = v95;
            v95 = 0;
            v94 = 0uLL;
            v143[0] = 0;
            v143[4] = 0;
            v143[8] = 0;
            v143[12] = 0;
            *&__str.__r_.__value_.__l.__data_ = *&v99.__r_.__value_.__l.__data_;
            memset(&v99, 0, sizeof(v99));
            __str.__r_.__value_.__r.__words[2] = v99.__r_.__value_.__r.__words[2];
            v107 = v100;
            *v108 = v101;
            v84 = v102;
            v101 = 0uLL;
            v102 = 0;
            *&v109[8] = __p;
            *v109 = v84;
            memset(&__p, 0, sizeof(__p));
            v110 = v130;
            v130 = 0uLL;
            v112 = *&v131[8];
            v111 = *v131;
            v113 = *&v131[24];
            memset(v131, 0, sizeof(v131));
            v114 = *&v131[32];
            v115 = *&v131[48];
            v117 = v133;
            v116 = v132;
            v132 = 0uLL;
            v133 = 0;
            v119 = v135;
            v118 = *v134;
            v134[1] = 0;
            v134[0] = 0;
            v120 = v136;
            v121 = v137;
            v135 = 0;
            v137 = 0uLL;
            v85 = v138;
            v138 = 0;
            v122 = v85;
            v123 = 0;
            v124 = 0;
            v125 = 0;
            v140 = 0;
            v139 = 0;
            v141 = 0;
            v126 = v83;
            v127 = *&v142[8];
            memset(v142, 0, sizeof(v142));
            *(v128 + 5) = *&v143[5];
            v128[0] = *v143;
            v129 = 0;
            std::expected<adm::graph::GraphDescription,std::error_code>::expected[abi:ne200100]<adm::graph::GraphDescription>(this, &__str);
            std::__variant_detail::__dtor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v110);
            v105 = &v109[8];
            std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](&v105);
            if ((v109[7] & 0x80000000) != 0)
            {
              operator delete(v108[0]);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            __str.__r_.__value_.__r.__words[0] = v142;
            std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&__str);
            if (v139)
            {
              v140 = v139;
              operator delete(v139);
            }

            __str.__r_.__value_.__r.__words[0] = &v137;
            std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&__str);
            if (SHIBYTE(v135) < 0)
            {
              operator delete(v134[0]);
            }

            v55 = v88;
            if (SHIBYTE(v133) < 0)
            {
              operator delete(v132);
            }

            __str.__r_.__value_.__r.__words[0] = &v131[32];
            std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&__str);
            __str.__r_.__value_.__r.__words[0] = &v131[8];
            std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&__str);
            __str.__r_.__value_.__r.__words[0] = &v130;
            std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&__str);
            if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v90.__r_.__value_.__l.__data_);
            }

            __str.__r_.__value_.__r.__words[0] = &v91;
            std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&__str);
            goto LABEL_253;
          }

LABEL_238:
          __str.__r_.__value_.__r.__words[0] = &v91;
          std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&__str);
LABEL_239:
          *this = 1969448551;
          *(this + 392) = 0;
          v55 = v88;
LABEL_253:
          __str.__r_.__value_.__r.__words[0] = &v94;
          std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&__str);
          goto LABEL_254;
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "voice activity detection");
        v52 = std::__tree<std::string>::find<std::string>(a3 + 8, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v38 != v52)
        {
          std::string::basic_string[abi:ne200100]<0>(&v130, "Default");
          if (*(a3 + 176) - *(a3 + 168) == 24)
          {
            if ((v131[7] & 0x80000000) != 0)
            {
              *(&v130 + 1) = 5;
              v53 = v130;
            }

            else
            {
              v131[7] = 5;
              v53 = &v130;
            }

            strcpy(v53, "No EC");
          }

          else
          {
            DeviceDescription = adm::config_policy::getDeviceDescription(a3, 1);
            v66 = adm::config_policy::getDeviceDescription(a3, 0);
            {
              if ((v131[7] & 0x80000000) != 0)
              {
                *(&v130 + 1) = 15;
                v68 = v130;
              }

              else
              {
                v131[7] = 15;
                v68 = &v130;
              }

              strcpy(v68, "High HW Latency");
            }

            adm_log_object = get_adm_log_object();
            if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
            {
              v72 = &v130;
              if (v131[7] < 0)
              {
                v72 = v130;
              }

              LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
              *(__str.__r_.__value_.__r.__words + 4) = v72;
              _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "DSP selection is: %s", &__str, 0xCu);
            }
          }

          v108[0] = &v91;
          operator new();
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "content creation recording");
        if (v38 == std::__tree<std::string>::find<std::string>(a3 + 8, &__str))
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          isAirPodsMicOffloadUseCase = adm::config_policy::isAirPodsMicOffloadUseCase(a3 + 8);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (!isAirPodsMicOffloadUseCase)
          {
            if (*v87 == 3)
            {
              adm::getMacMicDriverConfigurationKey(&__str);
              v63 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              v64 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v63 = __str.__r_.__value_.__l.__size_;
              }

              if (v63)
              {
                std::vector<std::string>::emplace_back<std::string const&>(&v91, &__str);
                v64 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              if ((v64 & 0x80) == 0)
              {
                goto LABEL_287;
              }

LABEL_168:
              operator delete(__str.__r_.__value_.__l.__data_);
LABEL_287:
              std::string::basic_string[abi:ne200100]<0>(&__str, "Default");
              std::vector<std::string>::push_back[abi:ne200100](&v91, &__str);
              goto LABEL_132;
            }

            if (*(a3 + 240) != 1 || *(a3 + 232) != 1)
            {
              goto LABEL_287;
            }

            v70 = *(a3 + 200);
            if (v70 <= 1835230833)
            {
              switch(v70)
              {
                case 1835229798:
                  std::string::basic_string[abi:ne200100]<0>(&__str, "beamformed_mic_general");
                  std::vector<std::string>::push_back[abi:ne200100](&v91, &__str);
                  goto LABEL_286;
                case 1835229803:
                  std::string::basic_string[abi:ne200100]<0>(&__str, "back_mic_general");
                  std::vector<std::string>::push_back[abi:ne200100](&v91, &__str);
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  break;
                case 1835229812:
                  std::string::basic_string[abi:ne200100]<0>(&__str, "bottom_mic_general");
                  std::vector<std::string>::push_back[abi:ne200100](&v91, &__str);
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  break;
                default:
                  goto LABEL_287;
              }
            }

            else if (v70 > 1835233907)
            {
              if (v70 == 1835233908)
              {
                std::string::basic_string[abi:ne200100]<0>(&__str, "right_mic_general");
                std::vector<std::string>::push_back[abi:ne200100](&v91, &__str);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                if (v70 != 1835234416)
                {
                  goto LABEL_287;
                }

                std::string::basic_string[abi:ne200100]<0>(&__str, "top_mic_general");
                std::vector<std::string>::push_back[abi:ne200100](&v91, &__str);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }
              }
            }

            else if (v70 == 1835230834)
            {
              std::string::basic_string[abi:ne200100]<0>(&__str, "front_mic_general");
              std::vector<std::string>::push_back[abi:ne200100](&v91, &__str);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              if (v70 != 1835232358)
              {
                goto LABEL_287;
              }

              std::string::basic_string[abi:ne200100]<0>(&__str, "left_mic_general");
              std::vector<std::string>::push_back[abi:ne200100](&v91, &__str);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }
            }

            std::string::basic_string[abi:ne200100]<0>(&__str, "omni_mic_general");
            std::vector<std::string>::push_back[abi:ne200100](&v91, &__str);
LABEL_286:
            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_287;
            }

            goto LABEL_168;
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "Default");
        std::vector<std::string>::push_back[abi:ne200100](&v91, &__str);
        goto LABEL_132;
      }

      v48 = *(a3 + 152);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (!v48)
        {
          goto LABEL_128;
        }
      }

      else if (!*(a3 + 152))
      {
        goto LABEL_128;
      }

      v130 = 0uLL;
      *v131 = 0;
      if (**(a3 + 128) == 6619138)
      {
        BYTE8(v130) = 32;
        *&v130 = *"Stereo - ";
        v50 = 9;
      }

      else
      {
        v130 = *"Multi Channel - ";
        v50 = 16;
      }

      v131[7] = v50;
      v56 = adm::config_policy::getDeviceDescription(a3, 0);
      v57 = *(v56 + 16);
      if (v57 == 1651275109)
      {
        if (*(v56 + 19) == 1)
        {
          goto LABEL_154;
        }
      }

      else if (v57 == 1651274862)
      {
        v58 = *(v56 + 18);
        {
          v59 = "Built-in Speaker";
          v60 = 16;
LABEL_156:
          std::string::append(&v130, v59, v60);
          goto LABEL_157;
        }

        if (v58 != 1751412846)
        {
LABEL_157:
          v108[0] = &v91;
          operator new();
        }

LABEL_154:
        v59 = "Headphone";
        v60 = 9;
        goto LABEL_156;
      }

      v59 = "Default";
      v60 = 7;
      goto LABEL_156;
    }

    if (*(a3 + 152))
    {
      operator new();
    }

    v49 = get_adm_log_object();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v49, OS_LOG_TYPE_ERROR, "Failed to create DSP node due to missing channel layout", &__str, 2u);
    }

    goto LABEL_239;
  }

  v40 = get_adm_log_object();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v69 = &v96;
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v69 = v96.__r_.__value_.__r.__words[0];
    }

    LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
    *(__str.__r_.__value_.__r.__words + 4) = v69;
    _os_log_error_impl(&dword_223B4A000, v40, OS_LOG_TYPE_ERROR, "The IOContextSemantic %s is not found from the DSPG config of system config", &__str, 0xCu);
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "general");
  v41 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::find<std::string>(v87 + 24, &__str);
  v42 = v41;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v42)
    {
LABEL_99:
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        v96.__r_.__value_.__l.__size_ = 7;
        v43 = v96.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v96.__r_.__value_.__s + 23) = 7;
        v43 = &v96;
      }

      strcpy(v43, "general");
      v61 = get_adm_log_object();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
        *(__str.__r_.__value_.__r.__words + 4) = "general";
        _os_log_impl(&dword_223B4A000, v61, OS_LOG_TYPE_DEFAULT, "Fall back to DSP for IOContext Semantic %s", &__str, 0xCu);
      }

      goto LABEL_94;
    }
  }

  else if (v41)
  {
    goto LABEL_99;
  }

  v54 = get_adm_log_object();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
    *(__str.__r_.__value_.__r.__words + 4) = "general";
    _os_log_error_impl(&dword_223B4A000, v54, OS_LOG_TYPE_ERROR, "The fallback IOContextSemantic %s is not found from the DSPG config of system config", &__str, 0xCu);
  }

  *this = 1969448551;
  *(this + 392) = 0;
  v55 = v88;
LABEL_254:
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (v97)
  {
    operator delete(v97);
  }

  __str.__r_.__value_.__r.__words[0] = &__p;
  std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](&__str);
  if (SHIBYTE(v102) < 0)
  {
    operator delete(v101);
  }

  if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v55 & 0x80000000) == 0)
    {
      return;
    }

LABEL_264:
    operator delete(__s);
    return;
  }

  operator delete(v99.__r_.__value_.__l.__data_);
  if (v55 < 0)
  {
    goto LABEL_264;
  }
}