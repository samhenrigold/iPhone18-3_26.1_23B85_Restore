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
  v4 = MEMORY[0x29C26CE60](*a2);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 != MEMORY[0x29EDCAA00])
  {
    v6 = *(this + 13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "Failed to get input!", &buf, 2u);
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

  if (size && MEMORY[0x29C26CE60](*a2) == v5)
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
        if (MEMORY[0x29C26CE60](xdict.__r_.__value_.__r.__words[0]) == v5)
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
                if (MEMORY[0x29C26CE60](object) == v5)
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
                    if (MEMORY[0x29C26CE60](object) == v5)
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
                    if (MEMORY[0x29C26CE60](object) == v5)
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
                            if (xdict.__r_.__value_.__r.__words[0] && MEMORY[0x29C26CE60](xdict.__r_.__value_.__r.__words[0]) == v5)
                            {
                              xpc_retain(v71);
                            }

                            else
                            {
                              object = xpc_null_create();
                            }

                            if (MEMORY[0x29C26CE60]() != v5)
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

void sub_297149F7C(_Unwind_Exception *a1)
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
  if (!xmmword_2A18B7520)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v23.__r_.__value_.__r.__words[0] = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E26558;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v7;
    *(&xmmword_2A18B7520 + 1) = v6;
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

  v6 = *(&xmmword_2A18B7520 + 1);
  v7 = xmmword_2A18B7520;
  v22 = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
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
    _os_log_error_impl(&dword_296FF7000, v19, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29714A8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

void sub_29714A97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AntennaModule::setPreference_sync<int>(uint64_t a1, const void **a2, int a3)
{
  v30 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p[0] = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E26558;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v7;
    *(&xmmword_2A18B7520 + 1) = v6;
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

  v6 = *(&xmmword_2A18B7520 + 1);
  v7 = xmmword_2A18B7520;
  *buf = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
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
    MEMORY[0x29C26B130](v27);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v21 = 0;
    MEMORY[0x29C26B130](v27);
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
    _os_log_error_impl(&dword_296FF7000, v23, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29714AD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_29714ADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  JUMPOUT(0x29714ADACLL);
}

void AntennaModule::setPreference_sync<unsigned int>(uint64_t a1, const void **a2, unsigned int a3)
{
  v25 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p[0] = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E26558;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v7;
    *(&xmmword_2A18B7520 + 1) = v6;
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

  v6 = *(&xmmword_2A18B7520 + 1);
  v7 = xmmword_2A18B7520;
  *buf = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
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
  MEMORY[0x29C26B130](&v23);
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
    _os_log_error_impl(&dword_296FF7000, v19, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29714B124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
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

void sub_29714B380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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
    if (!xmmword_2A18B7520)
    {
      v19 = operator new(0x18uLL);
      MEMORY[0x29C26B190](v19, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
      *&v341[0] = v19;
      v18 = operator new(0x20uLL);
      *v18 = &unk_2A1E26558;
      v18[1] = 0;
      v18[2] = 0;
      v18[3] = v19;
      v29 = *(&xmmword_2A18B7520 + 1);
      *&xmmword_2A18B7520 = v19;
      *(&xmmword_2A18B7520 + 1) = v18;
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

    v18 = *(&xmmword_2A18B7520 + 1);
    v19 = xmmword_2A18B7520;
    __p = xmmword_2A18B7520;
    if (!*(&xmmword_2A18B7520 + 1))
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
        MEMORY[0x29C26B130](&value);
        if ((SBYTE7(v341[1]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v48 = 0;
        MEMORY[0x29C26B130](&value);
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
          if (MEMORY[0x29C26CE60](v50) == v12)
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
          if (MEMORY[0x29C26CE60](v78) == v12)
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
    if (!xmmword_2A18B7520)
    {
      v28 = operator new(0x18uLL);
      MEMORY[0x29C26B190](v28, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
      *&v341[0] = v28;
      v27 = operator new(0x20uLL);
      *v27 = &unk_2A1E26558;
      v27[1] = 0;
      v27[2] = 0;
      v27[3] = v28;
      v38 = *(&xmmword_2A18B7520 + 1);
      *&xmmword_2A18B7520 = v28;
      *(&xmmword_2A18B7520 + 1) = v27;
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

    v27 = *(&xmmword_2A18B7520 + 1);
    v28 = xmmword_2A18B7520;
    __p = xmmword_2A18B7520;
    if (!*(&xmmword_2A18B7520 + 1))
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
        MEMORY[0x29C26B130](&value);
        if ((SBYTE7(v341[1]) & 0x80000000) == 0)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v70 = 0;
        MEMORY[0x29C26B130](&value);
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
          if (MEMORY[0x29C26CE60](v72) == v12)
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
      if (!xmmword_2A18B7520)
      {
        v32 = operator new(0x18uLL);
        MEMORY[0x29C26B190](v32, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
        *&v341[0] = v32;
        v31 = operator new(0x20uLL);
        *v31 = &unk_2A1E26558;
        v31[1] = 0;
        v31[2] = 0;
        v31[3] = v32;
        v60 = *(&xmmword_2A18B7520 + 1);
        *&xmmword_2A18B7520 = v32;
        *(&xmmword_2A18B7520 + 1) = v31;
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

      v31 = *(&xmmword_2A18B7520 + 1);
      v32 = xmmword_2A18B7520;
      __p = xmmword_2A18B7520;
      if (!*(&xmmword_2A18B7520 + 1))
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
          MEMORY[0x29C26B130](&value);
          if ((SBYTE7(v341[1]) & 0x80000000) == 0)
          {
            goto LABEL_199;
          }
        }

        else
        {
          v101 = 0;
          MEMORY[0x29C26B130](&value);
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
          if (MEMORY[0x29C26CE60](v103) == v12)
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
          if (MEMORY[0x29C26CE60](v137) == v12)
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
      if (!xmmword_2A18B7520)
      {
        v54 = operator new(0x18uLL);
        MEMORY[0x29C26B190](v54, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
        *&v341[0] = v54;
        v53 = operator new(0x20uLL);
        *v53 = &unk_2A1E26558;
        v53[1] = 0;
        v53[2] = 0;
        v53[3] = v54;
        v91 = *(&xmmword_2A18B7520 + 1);
        *&xmmword_2A18B7520 = v54;
        *(&xmmword_2A18B7520 + 1) = v53;
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

      v53 = *(&xmmword_2A18B7520 + 1);
      v54 = xmmword_2A18B7520;
      __p = xmmword_2A18B7520;
      if (!*(&xmmword_2A18B7520 + 1))
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
          MEMORY[0x29C26B130](&value);
          if ((SBYTE7(v341[1]) & 0x80000000) == 0)
          {
            goto LABEL_258;
          }
        }

        else
        {
          v129 = 0;
          MEMORY[0x29C26B130](&value);
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
          if (MEMORY[0x29C26CE60](v131) == v12)
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
          if (MEMORY[0x29C26CE60](v170) == v12)
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
      if (!xmmword_2A18B7520)
      {
        v85 = operator new(0x18uLL);
        MEMORY[0x29C26B190](v85, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
        *&v341[0] = v85;
        v84 = operator new(0x20uLL);
        *v84 = &unk_2A1E26558;
        v84[1] = 0;
        v84[2] = 0;
        v84[3] = v85;
        v119 = *(&xmmword_2A18B7520 + 1);
        *&xmmword_2A18B7520 = v85;
        *(&xmmword_2A18B7520 + 1) = v84;
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

      v84 = *(&xmmword_2A18B7520 + 1);
      v85 = xmmword_2A18B7520;
      __p = xmmword_2A18B7520;
      if (!*(&xmmword_2A18B7520 + 1))
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

        MEMORY[0x29C26B130](&value);
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
          if (MEMORY[0x29C26CE60](v164) == v12)
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
          if (MEMORY[0x29C26CE60](v222) == v12)
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
      if (MEMORY[0x29C26CE60](v113) == v12)
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
    v192 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(v341);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
      v192 = xmmword_2A18B7520;
    }

    v193 = *(&xmmword_2A18B7520 + 1);
    *&__p = v192;
    *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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

    MEMORY[0x29C26B130](&value);
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
    v205 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(v341);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
      v205 = xmmword_2A18B7520;
    }

    v206 = *(&xmmword_2A18B7520 + 1);
    *&__p = v205;
    *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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

        MEMORY[0x29C26B130](&value);
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
    v142 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(v341);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
      v142 = xmmword_2A18B7520;
    }

    v143 = *(&xmmword_2A18B7520 + 1);
    *&__p = v142;
    *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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

    MEMORY[0x29C26B130](&value);
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

    if (MEMORY[0x29C26CE60](v187) == v12)
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
    v179 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(v341);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
      v179 = xmmword_2A18B7520;
    }

    *&__p = v179;
    *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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

    if (MEMORY[0x29C26CE60](v182) == v12)
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
    v229 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(v341);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
      v229 = xmmword_2A18B7520;
    }

    *&__p = v229;
    *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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

    if (MEMORY[0x29C26CE60](v232) == v12)
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
    v238 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(v341);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
      v238 = xmmword_2A18B7520;
    }

    *&__p = v238;
    *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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

    if (MEMORY[0x29C26CE60](v241) == v12)
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
        v265 = xmmword_2A18B7520;
        if (!xmmword_2A18B7520)
        {
          ABMProperties::create_default_global(v341);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
          v265 = xmmword_2A18B7520;
        }

        *&__p = v265;
        *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
        if (*(&xmmword_2A18B7520 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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
        v268 = xmmword_2A18B7520;
        if (!xmmword_2A18B7520)
        {
          ABMProperties::create_default_global(v341);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
          v268 = xmmword_2A18B7520;
        }

        *&__p = v268;
        *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
        if (*(&xmmword_2A18B7520 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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
        v271 = xmmword_2A18B7520;
        if (!xmmword_2A18B7520)
        {
          ABMProperties::create_default_global(v341);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
          v271 = xmmword_2A18B7520;
        }

        *&__p = v271;
        *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
        if (*(&xmmword_2A18B7520 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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
        v274 = xmmword_2A18B7520;
        if (!xmmword_2A18B7520)
        {
          ABMProperties::create_default_global(v341);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
          v274 = xmmword_2A18B7520;
        }

        *&__p = v274;
        *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
        if (*(&xmmword_2A18B7520 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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
  v233 = xmmword_2A18B7520;
  if (!xmmword_2A18B7520)
  {
    ABMProperties::create_default_global(v341);
    std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v341);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v341);
    v233 = xmmword_2A18B7520;
  }

  *&__p = v233;
  *(&__p + 1) = *(&xmmword_2A18B7520 + 1);
  if (*(&xmmword_2A18B7520 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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

    if (MEMORY[0x29C26CE60](v236) == v12)
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

    if (MEMORY[0x29C26CE60](v278) == v12)
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
    v282 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v282 = xmmword_2A18B7520;
    }

    value = v282;
    v309 = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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
    v286 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v286 = xmmword_2A18B7520;
    }

    value = v286;
    v309 = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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
    v289 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v289 = xmmword_2A18B7520;
    }

    value = v289;
    v309 = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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
    v292 = xmmword_2A18B7520;
    if (!xmmword_2A18B7520)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v292 = xmmword_2A18B7520;
    }

    value = v292;
    v309 = *(&xmmword_2A18B7520 + 1);
    if (*(&xmmword_2A18B7520 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18B7520 + 1) + 8), 1uLL, memory_order_relaxed);
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
  if (MEMORY[0x29C26CE60](v345[0]) == v12)
  {
    v257 = **(a1 + 120);
    if (v257)
    {
      antenna::Service::Internal::antennaSetProperty(v257, v345);
    }
  }

  xpc_release(v345[0]);
}

void sub_29714E5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, xpc_object_t object)
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

  MEMORY[0x29C26B130](&v7);
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

void sub_29714F388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, const void *a19)
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

void sub_29714F684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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
  *v4 = &unk_2A1E2C358;
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

void sub_29714F8C0(void *a1)
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
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
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
  aBlock[3] = &__block_descriptor_tmp_44_1;
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
  *v12 = &unk_2A1E2C3D8;
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

void sub_2971504BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
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

void sub_2971504CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
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

void sub_29715054C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x297150554);
  }

  JUMPOUT(0x2971506C8);
}

void sub_2971506D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
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
      JUMPOUT(0x29715069CLL);
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

uint64_t dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(uint64_t a1)
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
  if (v2 != 0x800000029722CA17)
  {
    if (((v2 & 0x800000029722CA17 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722CA17))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722CA17 & 0x7FFFFFFFFFFFFFFFLL));
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
  block[3] = &unk_2A1E2C420;
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

void sub_297150C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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

void sub_297150D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1 + 1);
  v5 = 3760250880;
  if (MEMORY[0x29C26CE60](*v4) == MEMORY[0x29EDCAA00])
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
        _os_log_debug_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEBUG, "#D Received Audio State: %s", buf, 0xCu);
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

void sub_297150F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object)
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
  if (MEMORY[0x29C26CE60]((*a1)[1]) == MEMORY[0x29EDCAA00])
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

void sub_297151160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(v12);
  _ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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
  if (MEMORY[0x29C26CE60](*v4) == MEMORY[0x29EDCAA00])
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

void sub_297151348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
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
  if (MEMORY[0x29C26CE60](v2[1]) == MEMORY[0x29EDCAA00])
  {
    v5 = *(v3 + 120);
    if (v5)
    {
      antenna::Service::antennaGetProperty(&object, v5, v2 + 1);
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

void sub_297151514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a14, uint64_t a15)
{
  xpc_release(v13);
  _ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
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
  *result = &unk_2A1E2C460;
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
  *a1 = &unk_2A1E2C460;
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
  *result = &unk_2A1E2C460;
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
  *a2 = &unk_2A1E2C460;
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
  *result = &unk_2A1E2C4E0;
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
  *a1 = &unk_2A1E2C4E0;
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
  *result = &unk_2A1E2C4E0;
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
  *a2 = &unk_2A1E2C4E0;
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
  *result = &unk_2A1E2C560;
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
  *a1 = &unk_2A1E2C560;
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
  *result = &unk_2A1E2C560;
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
  *a2 = &unk_2A1E2C560;
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
      if (!a1[2] || MEMORY[0x29C26CE60](v5) != MEMORY[0x29EDCAA00])
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

void sub_297152318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_297152734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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
  *result = &unk_2A1E2C5E0;
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
  *a1 = &unk_2A1E2C5E0;
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
  *result = &unk_2A1E2C5E0;
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
  *a2 = &unk_2A1E2C5E0;
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
    if (MEMORY[0x29C26CE60](v2[2]) == MEMORY[0x29EDCAA00])
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
        _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, v5, buf, 2u);
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

void sub_297152DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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

void sub_2971530AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<AntennaModule::initializeProperty(void)::$_0,std::default_delete<AntennaModule::initializeProperty(void)::$_0>>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<AntennaModule::initializeProperty(void)::$_0,std::default_delete<AntennaModule::initializeProperty(void)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *ABMProperties::create_default_global(ABMProperties *this)
{
  v2 = operator new(0x18uLL);
  MEMORY[0x29C26B190](v2, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
  *this = v2;
  result = operator new(0x20uLL);
  *result = &unk_2A1E26558;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  *(this + 1) = result;
  return result;
}

void sub_297153190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
  v2 = *(&xmmword_2A18B7520 + 1);
  xmmword_2A18B7520 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __cxx_global_var_init_22()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_23()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void *PowerManager::PowerManager(void *a1, uint64_t *a2)
{
  *a1 = &unk_2A1E2C660;
  v3 = (a1 + 1);
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v6, v3);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  PowerManager::State::init(*v3);
  return a1;
}

{
  *a1 = &unk_2A1E2C660;
  v3 = (a1 + 1);
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v6, v3);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  PowerManager::State::init(*v3);
  return a1;
}

void sub_297153360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_weak(a10);
  _Unwind_Resume(exception_object);
}

void PowerManager::State::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0xE0uLL);
  v5 = v4;
  v6 = a1[1];
  v7 = *a1;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::State(v4, &v7);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<PowerManager::State>::shared_ptr[abi:ne200100]<PowerManager::State,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1},0>(a2, v5);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_29715340C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v10);
  _Unwind_Resume(exception_object);
}

void PowerManager::State::init(PowerManager::State *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN12PowerManager5State4initEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_21_4;
  v9[4] = this;
  v9[5] = v3;
  v10 = v5;
  v11 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN12PowerManager5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_23;
  block[4] = this;
  block[5] = &v11;
  v7 = *(this + 2);
  if (!*(this + 3))
  {
    dispatch_sync(v7, block);
    v8 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v7, block);
  v8 = v10;
  if (v10)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_297153640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_weak(a10);
  _Unwind_Resume(exception_object);
}

void PowerManager::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *v4 = &unk_2A1E2C660;
  v8 = (v4 + 1);
  v10 = v6;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v10, v4 + 1);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  PowerManager::State::init(*v8);
  *a2 = v5;
  v9 = operator new(0x20uLL);
  *v9 = &unk_2A1E2CA08;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = v5;
  a2[1] = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_297153744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 48))(v10, a2, a3, a4, a5, a6, a7, a8);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  _Unwind_Resume(a1);
}

void PowerManager::registerForPowerEvents(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (*a2)
  {
    v3 = _Block_copy(*a2);
  }

  else
  {
    v3 = 0;
  }

  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1174405120;
  v5[2] = ___ZN12PowerManager5State22registerForPowerEventsEN8dispatch5blockIU13block_pointerFv10PowerStateNS1_13group_sessionEEEE_block_invoke;
  v5[3] = &__block_descriptor_tmp_30_0;
  v5[4] = v2;
  if (!v3)
  {
    aBlock = 0;
    ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v2, v5);
    v4 = aBlock;
    if (!aBlock)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  aBlock = _Block_copy(v3);
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v2, v5);
  v4 = aBlock;
  if (aBlock)
  {
LABEL_8:
    _Block_release(v4);
  }

LABEL_9:
  if (v3)
  {
    _Block_release(v3);
  }
}

void PowerManager::createPowerAssertion(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject **a4@<X8>)
{
  v6 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v7 = dispatch_group_create();
  *a4 = v7;
  v18 = v6;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v17;
  }

  v20 = a3;
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    if (group)
    {
      dispatch_group_enter(group);
    }
  }

  v8 = v6[1];
  if (!v8 || (v9 = *v6, (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x30uLL);
  *v12 = v18;
  v13 = (v12 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v13->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v12[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v14 = group;
  v12[4] = v20;
  v12[5] = v14;
  group = 0;
  v15 = v6[2];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v12;
  v16[1] = v9;
  v16[2] = v11;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>(PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(v17.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }
}

void sub_297153AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    dispatch_release(v14);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void PowerManager::releasePowerAssertion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
    v12 = v2;
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    goto LABEL_6;
  }

  v11 = *a2;
  v12 = v2;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  __p = v11;
LABEL_6:
  v3 = v2[1];
  if (!v3 || (v4 = *v2, (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x20uLL);
  *v7 = v12;
  v8 = (v7 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v7[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v9 = v2[2];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v7;
  v10[1] = v4;
  v10[2] = v6;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>(PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1},std::default_delete<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_13:
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_17:
      operator delete(v11.__r_.__value_.__l.__data_);
      return;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_17;
  }
}

void sub_297153CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PowerManager::initialize(PowerManager *this)
{
  v1 = *(this + 1);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN12PowerManager5State10initializeEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_52_1;
  v2[4] = v1;
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v1, v2);
}

void PowerManager::shutdown(PowerManager *this)
{
  v1 = *(this + 1);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN12PowerManager5State8shutdownEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_53_0;
  v2[4] = v1;
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v1, v2);
}

void PowerManager::~PowerManager(PowerManager *this)
{
  *this = &unk_2A1E2C660;
  v1 = *(this + 2);
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
  *this = &unk_2A1E2C660;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void *std::shared_ptr<PowerManager::State>::shared_ptr[abi:ne200100]<PowerManager::State,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E2C6D0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = a2[1];
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
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
  *a2 = a2;
  a2[1] = v4;
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

void sub_297154010(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1}::operator() const(PowerManager::State*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<PowerManager::State *,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State *)#1},std::allocator<PowerManager::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<PowerManager::State *,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State *)#1},std::allocator<PowerManager::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1}::operator() const(PowerManager::State*)::{lambda(void *)#1}::__invoke(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1[12];
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
    v3 = a1[12];
    a1[12] = 0;
    if (v3)
    {
      _Block_release(v3);
    }
  }

  v4 = a1[4];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Gone!", v15, 2u);
  }

  v5 = a1[27];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(a1[24]);
  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(a1[21]);
  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(a1[18]);
  v6 = a1[16];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[14];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = a1[12];
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = a1[12];
  if (v8)
  {
LABEL_15:
    _Block_release(v8);
  }

LABEL_16:
  v9 = a1[11];
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = a1[10];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = a1[6];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  MEMORY[0x29C26B020](a1 + 4);
  v12 = a1[3];
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = a1[2];
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = a1[1];
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  operator delete(a1);
}

void std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(a1 + 7);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v4 = a1;
    }

    else
    {
      v4 = a1;
    }

    operator delete(v4);
  }
}

uint64_t std::pair<std::string const,dispatch::group_session>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*(a1 + 8));
    v2 = *(a1 + 64);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        v3 = a1;

LABEL_7:
        operator delete(v3);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(a1 + 32));
    v3 = a1;

    goto LABEL_7;
  }
}

uint64_t PowerManager::State::State(uint64_t a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(v10, "com.apple.telephony.abm", "power.mgr");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v5 = dispatch_queue_create_with_target_V2("power.mgr", initially_inactive, 0);
  dispatch_set_qos_class_floor(v5, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v5);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    *(a1 + 24) = 0;
    dispatch_release(v5);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 32, v11);
  MEMORY[0x29C26B020](v11);
  ctu::OsLogContext::~OsLogContext(v10);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0x200000001;
  *(a1 + 64) = -536870144;
  v6 = operator new(0x88uLL);
  PowerStats::PowerStats(v6);
  *(a1 + 72) = v6;
  v10[0] = v6;
  v7 = operator new(0x20uLL);
  *v7 = &unk_2A1E2E768;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = v6;
  *(a1 + 80) = v7;
  *(a1 + 144) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = a1 + 144;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 208) = *a2;
  v8 = a2[1];
  *(a1 + 216) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_2971546B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<PowerStats>::~unique_ptr[abi:ne200100](va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v4);
  MEMORY[0x29C26B020](v3 + 4);
  ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(v3);
  _Unwind_Resume(a1);
}

void ___ZN12PowerManager5State4initEv_block_invoke(uint64_t a1)
{
  v40.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v2;
  *&v40.__r_.__value_.__l.__data_ = v2;
  v38 = v2;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN12PowerManager5State4initEv_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp_40;
  v21 = *(a1 + 32);
  v36 = v21;
  v3 = *(a1 + 48);
  v37 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = _Block_copy(aBlock);
  v5 = *(v21 + 16);
  *&v38 = 1;
  *(&v38 + 1) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  if (v4)
  {
    v39 = _Block_copy(v4);
    v40.__r_.__value_.__r.__words[0] = 5063233;
    *(&v40.__r_.__value_.__s + 23) = 3;
    _Block_release(v4);
  }

  else
  {
    v39 = 0uLL;
    v40.__r_.__value_.__r.__words[0] = 5063233;
    *(&v40.__r_.__value_.__s + 23) = 3;
  }

  ctu::power::manager::get(buf, v5);
  v6 = *buf;
  buf[0] = 0;
  buf[1] = 0;
  v7 = *(v21 + 112);
  *(v21 + 104) = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = buf[1];
  if (buf[1] && !atomic_fetch_add((buf[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v30 = v38;
  if (*(&v38 + 1))
  {
    dispatch_retain(*(&v38 + 1));
  }

  v9 = v39;
  if (v39)
  {
    v9 = _Block_copy(v39);
  }

  v31 = v9;
  v10 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
    v10 = _Block_copy(*(&v39 + 1));
  }

  v32 = v10;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v40;
  }

  ctu::power::manager::registerListener();
  v11 = *buf;
  buf[0] = 0;
  buf[1] = 0;
  v12 = *(v21 + 128);
  *(v21 + 120) = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = buf[1];
  if (!buf[1] || atomic_fetch_add((buf[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
    v14 = v32;
    if (!v32)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  v14 = v32;
  if (v32)
  {
LABEL_33:
    _Block_release(v14);
  }

LABEL_34:
  if (v31)
  {
    _Block_release(v31);
  }

  if (*(&v30 + 1))
  {
    dispatch_release(*(&v30 + 1));
  }

  v15 = *(v21 + 32);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_296FF7000, v15, OS_LOG_TYPE_DEFAULT, "#I Registered power listener", buf, 2u);
  }

  buf[0] = 0xAAAAAAAAAAAAAAAALL;
  buf[1] = 0xAAAAAAAAAAAAAAAALL;
  abm::AWDHelperGetConnection(buf);
  if (buf[0])
  {
    v23 = MEMORY[0x29EDCA5F8];
    v24 = 1174405120;
    v25 = ___ZN12PowerManager5State4initEv_block_invoke_11;
    v26 = &__block_descriptor_tmp_18_3;
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v27 = v21;
    v28 = v17;
    v29 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    wis::WISServerConnection::RegisterQueriableMetricCallbackForIdentifier();
    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
      v18 = buf[1];
      if (!buf[1])
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v19 = *(v21 + 32);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_296FF7000, v19, OS_LOG_TYPE_ERROR, "AWD connection setup failed", v22, 2u);
      v18 = buf[1];
      if (!buf[1])
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }
  }

  v18 = buf[1];
  if (!buf[1])
  {
    goto LABEL_50;
  }

LABEL_48:
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_50:
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
    v20 = *(&v39 + 1);
    if (!*(&v39 + 1))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v20 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
LABEL_54:
    _Block_release(v20);
  }

LABEL_55:
  if (v39)
  {
    _Block_release(v39);
  }

  if (*(&v38 + 1))
  {
    dispatch_release(*(&v38 + 1));
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }
}

void sub_297154C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20, dispatch_object_t object, void *a22, void *aBlock, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a22)
  {
    _Block_release(a22);
  }

  if (object)
  {
    dispatch_release(object);
    ctu::power::manager::parameters::~parameters((v36 - 128));
    v38 = a36;
    if (!a36)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    ctu::power::manager::parameters::~parameters((v36 - 128));
    v38 = a36;
    if (!a36)
    {
      goto LABEL_7;
    }
  }

  std::__shared_weak_count::__release_weak(v38);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN12PowerManager5State4initEv_block_invoke_11(void *a1, int a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8[0] = MEMORY[0x29EDCA5F8];
        v8[1] = 0x40000000;
        v8[2] = ___ZN12PowerManager5State4initEv_block_invoke_2_12;
        v8[3] = &__block_descriptor_tmp_14_1;
        v8[4] = v5;
        v9 = a2;
        ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v5, v8);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void ___ZN12PowerManager5State4initEv_block_invoke_2_12(uint64_t result)
{
  if (*(result + 40) == 524466)
  {
    PowerStats::submitLowPowerStatsMetric_sync(*(*(result + 32) + 72));
  }
}

void ctu::power::manager::parameters::~parameters(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    v2 = this[3];
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = this[3];
  if (v2)
  {
LABEL_5:
    _Block_release(v2);
  }

LABEL_6:
  v3 = this[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = this[1];
  if (v4)
  {
    dispatch_release(v4);
  }
}

void ___ZN12PowerManager5State22registerForPowerEventsEN8dispatch5blockIU13block_pointerFv10PowerStateNS1_13group_sessionEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 88);
  *(v2 + 88) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c73_ZTSN8dispatch5blockIU13block_pointerFv10PowerStateNS_13group_sessionEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c73_ZTSN8dispatch5blockIU13block_pointerFv10PowerStateNS_13group_sessionEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>(PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t ***a1)
{
  v176 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  v166 = 0xAAAAAAAAAAAAAAAALL;
  v167 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance);
  v3 = qword_2A18B7160;
  if (qword_2A18B7160)
  {
    goto LABEL_12;
  }

  v4 = operator new(0x38uLL);
  MEMORY[0x29C26B510]();
  v5 = operator new(0x20uLL);
  v5->__shared_owners_ = 0;
  p_shared_owners = &v5->__shared_owners_;
  v5->__vftable = &unk_2A1E2C878;
  v5->__shared_weak_owners_ = 0;
  v5[1].__vftable = v4;
  v7 = v4->~__shared_weak_count_0;
  if (v7)
  {
    if (v7->__shared_owners_ != -1)
    {
      goto LABEL_8;
    }

    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4->~__shared_weak_count = v4;
    v4->~__shared_weak_count_0 = v5;
    std::__shared_weak_count::__release_weak(v7);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4->~__shared_weak_count = v4;
    v4->~__shared_weak_count_0 = v5;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
LABEL_8:
  v8 = off_2A18B7168;
  qword_2A18B7160 = v4;
  off_2A18B7168 = v5;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v3 = qword_2A18B7160;
LABEL_12:
  v9 = off_2A18B7168;
  buf.__r_.__value_.__r.__words[0] = v3;
  buf.__r_.__value_.__l.__size_ = off_2A18B7168;
  if (off_2A18B7168)
  {
    atomic_fetch_add_explicit(off_2A18B7168 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance);
  v163 = (v1 + 1);
  ctu::power::assertion::createInternal();
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = v166;
    if (v166)
    {
      goto LABEL_17;
    }

LABEL_58:
    v32 = v2[4];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = v1 + 1;
      if (*(v1 + 31) < 0)
      {
        v33 = *v163;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v33;
      _os_log_error_impl(&dword_296FF7000, v32, OS_LOG_TYPE_ERROR, "Failed to create power assertion '%s'", &buf, 0xCu);
    }

    goto LABEL_331;
  }

  v10 = v166;
  if (!v166)
  {
    goto LABEL_58;
  }

LABEL_17:
  v157 = v10;
  v161 = v2;
  v13 = v2[18];
  v12 = (v2 + 18);
  v11 = v13;
  v159 = (v12 - 1);
  if (!v13)
  {
    v18 = v12;
    if (*(v12 - 1) == v12)
    {
      v34 = 0;
      v18 = v12;
      v35 = v12;
      if (*v12)
      {
        goto LABEL_134;
      }

      goto LABEL_122;
    }

    goto LABEL_71;
  }

  v14 = *(v1 + 31);
  v15 = v1[2];
  v153 = v1[1];
  if ((v14 & 0x80u) == 0)
  {
    v16 = (v1 + 1);
  }

  else
  {
    v16 = v1[1];
  }

  if ((v14 & 0x80u) == 0)
  {
    v17 = *(v1 + 31);
  }

  else
  {
    v17 = v1[2];
  }

  v18 = v12;
  v19 = v11;
  do
  {
    while (1)
    {
      v20 = *(v19 + 55);
      v21 = v20 >= 0 ? v19 + 4 : v19[4];
      v22 = v20 >= 0 ? *(v19 + 55) : v19[5];
      v23 = v17 >= v22 ? v22 : v17;
      v24 = memcmp(v21, v16, v23);
      if (v24)
      {
        break;
      }

      if (v22 >= v17)
      {
        goto LABEL_39;
      }

LABEL_25:
      v19 = v19[1];
      if (!v19)
      {
        goto LABEL_40;
      }
    }

    if (v24 < 0)
    {
      goto LABEL_25;
    }

LABEL_39:
    v18 = v19;
    v19 = *v19;
  }

  while (v19);
LABEL_40:
  if (v18 != v12)
  {
    v25 = *(v18 + 55);
    if (v25 >= 0)
    {
      v26 = (v18 + 4);
    }

    else
    {
      v26 = v18[4];
    }

    if (v25 >= 0)
    {
      v27 = *(v18 + 55);
    }

    else
    {
      v27 = v18[5];
    }

    if (v27 >= v17)
    {
      v28 = v17;
    }

    else
    {
      v28 = v27;
    }

    v29 = memcmp(v16, v26, v28);
    if (v29)
    {
      if ((v29 & 0x80000000) == 0)
      {
LABEL_52:
        v30 = v167;
        if (v167)
        {
          atomic_fetch_add_explicit((v167 + 8), 1uLL, memory_order_relaxed);
        }

        v31 = v18[8];
        v18[7] = v157;
        v18[8] = v30;
        if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }

        goto LABEL_134;
      }
    }

    else if (v17 >= v27)
    {
      goto LABEL_52;
    }
  }

  v34 = *v18;
  if (v159->__vftable == v18)
  {
    v35 = v18;
    if (v34)
    {
      v12 = v18 + 1;
    }

    else
    {
      v12 = v18;
    }

    if (*v12)
    {
      goto LABEL_134;
    }

LABEL_122:
    if (v34)
    {
      v46 = v35;
    }

    else
    {
      v46 = v18;
    }

    v53 = *(v1 + 31);
    goto LABEL_128;
  }

  if (!v34)
  {
LABEL_71:
    v35 = v18;
    do
    {
      v39 = v35;
      v35 = v35[2];
    }

    while (*v35 == v39);
    v34 = 0;
    v14 = *(v1 + 31);
    v38 = v1[1];
    v15 = v1[2];
    v37 = *(v1 + 31);
    goto LABEL_74;
  }

  v36 = *v18;
  do
  {
    v35 = v36;
    v36 = v36[1];
  }

  while (v36);
  v37 = v14;
  v38 = v153;
LABEL_74:
  v40 = *(v35 + 55);
  if (v40 >= 0)
  {
    v41 = (v35 + 4);
  }

  else
  {
    v41 = v35[4];
  }

  if (v40 >= 0)
  {
    v42 = *(v35 + 55);
  }

  else
  {
    v42 = v35[5];
  }

  v155 = v37;
  if (v37 >= 0)
  {
    v43 = (v1 + 1);
  }

  else
  {
    v43 = v38;
  }

  if (v37 < 0)
  {
    v14 = v15;
  }

  if (v14 >= v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = v14;
  }

  v45 = memcmp(v41, v43, v44);
  if (!v45)
  {
    if (v42 >= v14)
    {
      goto LABEL_90;
    }

    goto LABEL_113;
  }

  if (v45 < 0)
  {
LABEL_113:
    if (v34)
    {
      v12 = v35 + 1;
    }

    else
    {
      v12 = v18;
    }

    if (*v12)
    {
      goto LABEL_134;
    }

    goto LABEL_122;
  }

LABEL_90:
  if (!v11)
  {
    v46 = v12;
    goto LABEL_127;
  }

  while (2)
  {
    while (2)
    {
      v46 = v11;
      v47 = *(v11 + 55);
      if (v47 >= 0)
      {
        v48 = v11 + 4;
      }

      else
      {
        v48 = v11[4];
      }

      if (v47 >= 0)
      {
        v49 = *(v11 + 55);
      }

      else
      {
        v49 = v11[5];
      }

      if (v49 >= v14)
      {
        v50 = v14;
      }

      else
      {
        v50 = v49;
      }

      v51 = memcmp(v43, v48, v50);
      if (v51)
      {
        if (v51 < 0)
        {
          break;
        }

        goto LABEL_106;
      }

      if (v14 >= v49)
      {
LABEL_106:
        v52 = memcmp(v48, v43, v50);
        if (v52)
        {
          if ((v52 & 0x80000000) == 0)
          {
            goto LABEL_134;
          }
        }

        else if (v49 >= v14)
        {
          goto LABEL_134;
        }

        v11 = v46[1];
        if (!v11)
        {
          v12 = v46 + 1;
          goto LABEL_127;
        }

        continue;
      }

      break;
    }

    v11 = *v46;
    if (*v46)
    {
      continue;
    }

    break;
  }

  v12 = v46;
LABEL_127:
  v53 = v155;
LABEL_128:
  v54 = operator new(0x48uLL);
  v55 = v54;
  buf.__r_.__value_.__r.__words[0] = v54;
  *&buf.__r_.__value_.__r.__words[1] = v159;
  if (v53 < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 32), v1[1], v1[2]);
    v57 = v167;
    v55[7] = v166;
    v55[8] = v57;
    if (v57)
    {
LABEL_130:
      atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v56 = *v163;
    *(v54 + 6) = v1[3];
    *(v54 + 2) = v56;
    v57 = v167;
    *(v54 + 7) = v157;
    *(v54 + 8) = v57;
    if (v57)
    {
      goto LABEL_130;
    }
  }

  *v55 = 0;
  v55[1] = 0;
  v55[2] = v46;
  *v12 = v55;
  v58 = v159->~__shared_weak_count;
  if (v58)
  {
    v159->__vftable = v58;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v161[18], v55);
  ++v161[19];
LABEL_134:
  v59 = *(v166 + 32);
  v60 = *(v161 + 14);
  v61 = v161[4];
  v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
  if (!v60)
  {
    if (!v62)
    {
LABEL_149:
      v70 = v161[12];
      if (v70)
      {
        (*(v70 + 16))(v70, 1);
        v71 = v161[12];
        v161[12] = 0;
        if (v71)
        {
          _Block_release(v71);
        }

        v72 = v161[4];
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          v59 = 2;
          _os_log_impl(&dword_296FF7000, v72, OS_LOG_TYPE_DEFAULT, "#I Assertion held, but action will be deferred; acknowledging previous notification", &buf, 2u);
          v65 = v161[9];
          if (*(v1 + 31) < 0)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v59 = 2;
          v65 = v161[9];
          if (*(v1 + 31) < 0)
          {
            goto LABEL_139;
          }
        }

        goto LABEL_157;
      }

      v59 = 2;
      goto LABEL_156;
    }

    v66 = (v1 + 1);
    if (*(v1 + 31) < 0)
    {
      v66 = *v163;
      v67 = v1[4];
      v68 = *(v161 + 15);
      if (v68 <= 2)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v67 = v1[4];
      v68 = *(v161 + 15);
      if (v68 <= 2)
      {
LABEL_143:
        v69 = off_29EE64A20[v68];
LABEL_148:
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = v66;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v67;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        *group = v59;
        *&group[4] = 1024;
        *&group[6] = 2;
        *&group[10] = 2080;
        *&group[12] = v69;
        _os_log_impl(&dword_296FF7000, v61, OS_LOG_TYPE_DEFAULT, "#I Power assertion created for '%s' during sleep; Timeout (millisec): %llu, Status = %d, Override = %d; Sleep state: %s", &buf, 0x2Cu);
        goto LABEL_149;
      }
    }

    v69 = "Unknown";
    goto LABEL_148;
  }

  if (!v62)
  {
LABEL_156:
    v65 = v161[9];
    if (*(v1 + 31) < 0)
    {
      goto LABEL_139;
    }

    goto LABEL_157;
  }

  v63 = (v1 + 1);
  if (*(v1 + 31) < 0)
  {
    v63 = *v163;
  }

  v64 = v1[4];
  LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
  *(buf.__r_.__value_.__r.__words + 4) = v63;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v64;
  HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
  *group = v59;
  _os_log_impl(&dword_296FF7000, v61, OS_LOG_TYPE_DEFAULT, "#I Power assertion created for '%s'; Timeout (millisec): %llu, Status = %d", &buf, 0x1Cu);
  v65 = v161[9];
  if (*(v1 + 31) < 0)
  {
LABEL_139:
    std::string::__init_copy_ctor_external(&v165, v1[1], v1[2]);
    goto LABEL_158;
  }

LABEL_157:
  v73 = *v163;
  v165.__r_.__value_.__r.__words[2] = v1[3];
  *&v165.__r_.__value_.__l.__data_ = v73;
LABEL_158:
  PowerStats::gotAssertion(v65, &v165, v59);
  if ((SHIBYTE(v165.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v59 == 2)
    {
      goto LABEL_160;
    }

LABEL_163:
    if (v1[4] < 1)
    {
      goto LABEL_331;
    }

    v75 = v161[1];
    if (!v75 || (v76 = *v161, (v77 = std::__shared_weak_count::lock(v75)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v78 = v77;
    p_shared_weak_owners = &v77->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v77->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v77->__on_zero_shared)(v77);
      std::__shared_weak_count::__release_weak(v78);
    }

    buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    buf.__r_.__value_.__l.__size_ = 1174405120;
    buf.__r_.__value_.__r.__words[2] = ___ZZN12PowerManager5State20createPowerAssertionENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_6chrono8durationIxNS1_5ratioILl1ELl1000EEEEEENKUlvE_clEv_block_invoke;
    *group = &__block_descriptor_tmp_31_1;
    *&group[8] = v161;
    *&group[16] = v76;
    v173 = v78;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v160 = v78;
    if (*(v1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v1[1], v1[2]);
    }

    else
    {
      v80 = *v163;
      __p.__r_.__value_.__r.__words[2] = v1[3];
      *&__p.__r_.__value_.__l.__data_ = v80;
    }

    v175 = v1[4];
    v100 = operator new(0x10uLL);
    v101 = _Block_copy(&buf);
    *v100 = "Watchdog timed out";
    TelephonyBasebandWatchdogStart();
    v156 = v100;
    v164 = v100;
    if (v101)
    {
      _Block_release(v101);
    }

    v102 = (v161 + 21);
    v103 = v161[21];
    v158 = (v161 + 20);
    if (!v103)
    {
      v108 = (v161 + 21);
      if (v161[20] == v102)
      {
        v122 = 0;
        v108 = (v161 + 21);
        v123 = v161 + 21;
        goto LABEL_308;
      }

      goto LABEL_264;
    }

    v104 = *(v1 + 31);
    v105 = v1[2];
    v152 = v1[1];
    if ((v104 & 0x80u) == 0)
    {
      v106 = (v1 + 1);
    }

    else
    {
      v106 = v1[1];
    }

    if ((v104 & 0x80u) == 0)
    {
      v107 = *(v1 + 31);
    }

    else
    {
      v107 = v1[2];
    }

    v108 = (v161 + 21);
    v109 = v161[21];
    while (1)
    {
      v110 = *(v109 + 55);
      if (v110 >= 0)
      {
        v111 = v109 + 4;
      }

      else
      {
        v111 = v109[4];
      }

      if (v110 >= 0)
      {
        v112 = *(v109 + 55);
      }

      else
      {
        v112 = v109[5];
      }

      if (v107 >= v112)
      {
        v113 = v112;
      }

      else
      {
        v113 = v107;
      }

      v114 = memcmp(v111, v106, v113);
      if (v114)
      {
        if (v114 < 0)
        {
          goto LABEL_226;
        }
      }

      else if (v112 < v107)
      {
LABEL_226:
        v109 = v109[1];
        if (!v109)
        {
          goto LABEL_241;
        }

        continue;
      }

      v108 = v109;
      v109 = *v109;
      if (!v109)
      {
LABEL_241:
        if (v108 != v102)
        {
          v115 = *(v108 + 55);
          if (v115 >= 0)
          {
            v116 = (v108 + 4);
          }

          else
          {
            v116 = v108[4];
          }

          if (v115 >= 0)
          {
            v117 = *(v108 + 55);
          }

          else
          {
            v117 = v108[5];
          }

          if (v117 >= v107)
          {
            v118 = v107;
          }

          else
          {
            v118 = v117;
          }

          v119 = memcmp(v106, v116, v118);
          if (v119)
          {
            if ((v119 & 0x80000000) == 0)
            {
LABEL_253:
              v120 = operator new(0x20uLL);
              *v120 = &unk_2A1E2C8C8;
              v120[1] = 0;
              v120[2] = 0;
              v120[3] = v156;
              v164 = 0;
              v121 = v108[8];
              v108[7] = v156;
              v108[8] = v120;
              if (v121 && !atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v121->__on_zero_shared)(v121);
                std::__shared_weak_count::__release_weak(v121);
              }

              goto LABEL_324;
            }
          }

          else if (v107 >= v117)
          {
            goto LABEL_253;
          }
        }

        v122 = *v108;
        if (*v158 == v108)
        {
          v123 = v108;
          goto LABEL_308;
        }

        if (v122)
        {
          v124 = *v108;
          do
          {
            v123 = v124;
            v124 = v124[1];
          }

          while (v124);
          v125 = v104;
          v126 = v152;
LABEL_267:
          v128 = *(v123 + 55);
          if (v128 >= 0)
          {
            v129 = v123 + 4;
          }

          else
          {
            v129 = v123[4];
          }

          if (v128 >= 0)
          {
            v130 = *(v123 + 55);
          }

          else
          {
            v130 = v123[5];
          }

          v154 = v125;
          if (v125 >= 0)
          {
            v131 = (v1 + 1);
          }

          else
          {
            v131 = v126;
          }

          if (v125 >= 0)
          {
            v105 = v104;
          }

          if (v105 >= v130)
          {
            v132 = v130;
          }

          else
          {
            v132 = v105;
          }

          v133 = memcmp(v129, v131, v132);
          if (v133)
          {
            if (v133 < 0)
            {
              goto LABEL_308;
            }

LABEL_285:
            v134 = (v161 + 21);
            v135 = v161;
            if (!v103)
            {
LABEL_315:
              v142 = *(v1 + 31);
              goto LABEL_318;
            }

            while (1)
            {
              v134 = v103;
              v136 = *(v103 + 55);
              if (v136 >= 0)
              {
                v137 = v103 + 4;
              }

              else
              {
                v137 = v103[4];
              }

              if (v136 >= 0)
              {
                v138 = *(v103 + 55);
              }

              else
              {
                v138 = v103[5];
              }

              if (v138 >= v105)
              {
                v139 = v105;
              }

              else
              {
                v139 = v138;
              }

              v140 = memcmp(v131, v137, v139);
              if (v140)
              {
                if ((v140 & 0x80000000) == 0)
                {
                  goto LABEL_301;
                }
              }

              else if (v105 >= v138)
              {
LABEL_301:
                v141 = memcmp(v137, v131, v139);
                if (v141)
                {
                  if ((v141 & 0x80000000) == 0)
                  {
                    goto LABEL_324;
                  }
                }

                else if (v138 >= v105)
                {
                  goto LABEL_324;
                }

                v103 = v134[1];
                if (!v103)
                {
                  v102 = v134 + 1;
                  goto LABEL_317;
                }

                continue;
              }

              v103 = *v134;
              if (!*v134)
              {
                v102 = v134;
LABEL_317:
                v142 = v154;
LABEL_318:
                v143 = operator new(0x48uLL);
                v144 = v143;
                v168 = v143;
                v169 = v161 + 20;
                v170 = 0;
                if (v142 < 0)
                {
                  std::string::__init_copy_ctor_external((v143 + 32), v1[1], v1[2]);
                }

                else
                {
                  v145 = *v163;
                  *(v143 + 6) = v1[3];
                  *(v143 + 2) = v145;
                }

                v144[7] = v156;
                v146 = operator new(0x20uLL);
                *v146 = &unk_2A1E2C8C8;
                v146[1] = 0;
                v146[2] = 0;
                v146[3] = v156;
                v144[8] = v146;
                v164 = 0;
                *v144 = 0;
                v144[1] = 0;
                v144[2] = v134;
                *v102 = v144;
                v147 = **v158;
                if (v147)
                {
                  *v158 = v147;
                }

                std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v135[21], v144);
                ++v135[22];
LABEL_324:
                if (v164)
                {
                  TelephonyBasebandWatchdogStop();
                  operator delete(v164);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v173)
                {
                  std::__shared_weak_count::__release_weak(v173);
                }

                std::__shared_weak_count::__release_weak(v160);
                goto LABEL_331;
              }
            }
          }

          if (v130 >= v105)
          {
            goto LABEL_285;
          }

LABEL_308:
          if (v122)
          {
            v134 = v123;
          }

          else
          {
            v134 = v108;
          }

          if (v122)
          {
            v102 = (v123 + 1);
          }

          else
          {
            v102 = v108;
          }

          v135 = v161;
          if (*v102)
          {
            goto LABEL_324;
          }

          goto LABEL_315;
        }

LABEL_264:
        v123 = v108;
        do
        {
          v127 = v123;
          v123 = v123[2];
        }

        while (*v123 == v127);
        v122 = 0;
        v104 = *(v1 + 31);
        v126 = v1[1];
        v105 = v1[2];
        v125 = *(v1 + 31);
        goto LABEL_267;
      }
    }
  }

  operator delete(v165.__r_.__value_.__l.__data_);
  if (v59 != 2)
  {
    goto LABEL_163;
  }

LABEL_160:
  if (*(v1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v1[1], v1[2]);
  }

  else
  {
    v74 = *v163;
    buf.__r_.__value_.__r.__words[2] = v1[3];
    *&buf.__r_.__value_.__l.__data_ = v74;
  }

  v81 = v1[5];
  *group = v81;
  if (v81)
  {
    dispatch_retain(v81);
    if (*group)
    {
      dispatch_group_enter(*group);
    }
  }

  v82 = v161[24];
  if (!v82)
  {
    v85 = (v161 + 24);
    v86 = (v161 + 24);
    goto LABEL_202;
  }

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
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  do
  {
    while (2)
    {
      v86 = v82;
      v89 = v82[4];
      v87 = v82 + 4;
      v88 = v89;
      v90 = *(v87 + 23);
      if (v90 >= 0)
      {
        v91 = v87;
      }

      else
      {
        v91 = v88;
      }

      if (v90 >= 0)
      {
        v92 = *(v87 + 23);
      }

      else
      {
        v92 = v87[1];
      }

      if (v92 >= size)
      {
        v93 = size;
      }

      else
      {
        v93 = v92;
      }

      v94 = memcmp(p_buf, v91, v93);
      if (v94)
      {
        if (v94 < 0)
        {
          goto LABEL_181;
        }
      }

      else if (size < v92)
      {
LABEL_181:
        v82 = *v86;
        v85 = v86;
        if (!*v86)
        {
          goto LABEL_202;
        }

        continue;
      }

      break;
    }

    v95 = memcmp(v91, p_buf, v93);
    if (v95)
    {
      if ((v95 & 0x80000000) == 0)
      {
        goto LABEL_208;
      }
    }

    else if (v92 >= size)
    {
      goto LABEL_208;
    }

    v82 = v86[1];
  }

  while (v82);
  v85 = v86 + 1;
LABEL_202:
  v96 = operator new(0x40uLL);
  v97 = v96;
  v98 = (v161 + 23);
  v168 = v96;
  v169 = v161 + 23;
  v170 = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v96 + 32), buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v96 + 32) = buf;
  }

  v97[7] = *group;
  *group = 0;
  *v97 = 0;
  v97[1] = 0;
  v97[2] = v86;
  *v85 = v97;
  v99 = **v98;
  if (v99)
  {
    *v98 = v99;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v161[24], v97);
  ++v161[25];
LABEL_208:
  if (*group)
  {
    dispatch_group_leave(*group);
    if (*group)
    {
      dispatch_release(*group);
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_331:
  v148 = v167;
  if (v167 && !atomic_fetch_add((v167 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v148->__on_zero_shared)(v148);
    std::__shared_weak_count::__release_weak(v148);
  }

  v149 = v1[5];
  if (v149)
  {
    dispatch_group_leave(v149);
    v150 = v1[5];
    if (v150)
    {
      dispatch_release(v150);
    }
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v163);
  }

  operator delete(v1);
  v151 = a1[2];
  if (v151 && !atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v151->__on_zero_shared)(v151);
    std::__shared_weak_count::__release_weak(v151);
  }

  operator delete(a1);
}