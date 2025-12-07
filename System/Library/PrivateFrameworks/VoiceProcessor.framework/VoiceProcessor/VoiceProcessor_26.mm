void vp::vx::io::Node_Socket::post_process_data_impl(_BYTE *a1, uint64_t a2, int a3)
{
  v4 = 24;
  if (!a3)
  {
    v4 = 0;
  }

  v5 = a2 + v4;
  v6 = *(a2 + v4 + 64);
  v7 = *(v5 + 72);
  v8 = (v5 + 64);
  if (v7 == v6)
  {
LABEL_7:
    *a1 = 0;
    a1[48] = 1;
  }

  else
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      (*(**(v6 + 16 * v9) + 16))(v11);
      if ((v14 & 1) == 0)
      {
        break;
      }

      v9 = v10;
      v6 = *v8;
      ++v10;
      if (v9 >= (v8[1] - *v8) >> 4)
      {
        goto LABEL_7;
      }
    }

    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v11);
    if ((v14 & 1) == 0 && SHIBYTE(v12) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v13, v11[2], v12 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }
}

uint64_t vp::vx::io::Node_Socket::reset(vp::vx::io::Node_Socket *this, uint64_t a2)
{
  v3 = 0;
  v24[1] = *MEMORY[0x277D85DE8];
  v24[0] = 0x100000000;
  v4 = a2 + 160;
  v5 = a2 + 112;
  v6 = 0uLL;
  do
  {
    if (*(v24 + v3))
    {
      v7 = 24;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v4 + v7);
    v9 = *(v4 + v7 + 8);
    while (v8 != v9)
    {
      v8[2] = v6;
      v8[3] = v6;
      *v8 = v6;
      v8[1] = v6;
      v8 += 4;
    }

    v10 = (v5 + v7);
    v11 = *v10;
    v12 = v10[1];
    if (*v10 != v12)
    {
      do
      {
        v13 = *v11;
        if (*v11)
        {
          v13 = *(v13 + 24) | 0x100000000;
        }

        if ((v13 & 0x100000000) != 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        vp::Audio_Buffer::prepare(v11, v14);
        if (*v11)
        {
          v15 = *(*v11 + 80);
        }

        else
        {
          v15 = 0;
        }

        vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v23, v15);
        if (*v11)
        {
          v16 = *(*v11 + 24);
        }

        else
        {
          v16 = 0;
        }

        if ((vp::for_each_buffer(*&v23[0], vp::fill, v16) & 1) == 0)
        {
          v20 = 0;
          memset(v23, 0, sizeof(v23));
          v18 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v19 = 3;
          }

          else
          {
            v19 = 2;
          }

          v21 = 134217984;
          v22 = 0;
          _os_log_send_and_compose_impl(v19, &v20, v23, 80, &dword_2724B4000, v18, 16, "assertion failure: for_each_buffer(make_ref(audio_buffer), fill, 0.0f, audio_buffer.get_size().value_or(0u)) -> %llu", &v21);
          _os_crash_msg();
          __break(1u);
        }

        ++v11;
        v6 = 0uLL;
      }

      while (v11 != v12);
    }

    v3 += 4;
  }

  while (v3 != 8);
  return (*(**a2 + 88))(0);
}

void sub_27267B964(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::cf::Notification_Listener::~Notification_Listener(vp::cf::Notification_Listener *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRetain(*(this + 1));
    }

    v29 = v3;
    v4 = *this;
    os_unfair_lock_lock((v2 + 16));
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v32 = v5;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (!v7)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v31 = &v5[6 * v6];
    boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_equal_range<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(v30, &v32, &v31, &v29);
    for (i = v30[0]; i != v30[1]; i += 6)
    {
      if (*(i + 2) == v4)
      {
        v9 = *(v2 + 32);
        if (v9 > i)
        {
          goto LABEL_53;
        }

        v10 = *(v2 + 40);
        if (v9)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10 == 0;
        }

        if (!v11)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v12 = (v9 + 48 * v10);
        if (i >= v12)
        {
LABEL_53:
          __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
        }

        v13 = (i + 6);
        while (v13 != v12)
        {
          v14 = i + 6;
          v13 = boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>::operator=(i, (i + 6)) + 12;
          i = v14;
        }

        std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100]((v12 - 4));
        v15 = *(v12 - 6);
        if (v15)
        {
          CFRelease(v15);
        }

        --*(v2 + 40);
        break;
      }
    }

    v16 = *(v2 + 32);
    v17 = *(v2 + 40);
    v30[0] = v16;
    if (v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17 == 0;
    }

    if (!v18)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(&v32, v30, &v16[6 * v17], &v29);
    v19 = *(v2 + 32);
    v20 = *(v2 + 40);
    if (!v19 && v20)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v21 = (v19 + 48 * v20);
    v22 = v32;
    if (v32 != v21)
    {
      if (!v32)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v3, v32) <= kCFCompareGreaterThan)
      {
        v21 = v22;
      }
    }

    v23 = *(v2 + 32);
    v24 = *(v2 + 40);
    if (!v23 && v24)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (v21 == (v23 + 48 * v24))
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterRemoveObserver(LocalCenter, *(v2 + 64), v3, 0);
    }

    os_unfair_lock_unlock((v2 + 16));
    if (v3)
    {
      CFRelease(v3);
    }

    v26 = *(this + 3);
    *(this + 2) = 0;
    *(this + 3) = 0;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  v27 = *(this + 3);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(this + 1);
  if (v28)
  {
    CFRelease(v28);
  }
}

void sub_27267BC70(void *a1)
{
  os_unfair_lock_unlock(v1 + 4);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27267BB18);
}

const __CFString ***boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_equal_range<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(const __CFString ***result, const __CFString ***a2, const __CFString ***a3, const __CFString **a4)
{
  v4 = result;
  v5 = *a2;
  if (*a3 == *a2)
  {
LABEL_11:
    *v4 = v5;
    v4[1] = v5;
    return result;
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((*a3 - *a2) >> 4);
  while (1)
  {
    v10 = *a2;
    if (v9 != 1 && !v10)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (!v10)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v11 = v9 >> 1;
    v12 = &v10[6 * (v9 >> 1)];
    result = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v12, a4);
    if (result < 2)
    {
      break;
    }

    *a2 = v12 + 6;
    v11 = v9 + ~v11;
LABEL_9:
    v9 = v11;
    if (!v11)
    {
      v5 = *a2;
      goto LABEL_11;
    }
  }

  result = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*a4, v12);
  if (result > 1)
  {
    goto LABEL_9;
  }

  v13 = *a2;
  *a3 = *a2;
  if (!v13)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  *a3 = &v13[6 * v9];
  v16 = *a2;
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(&v17, &v16, v12, a4);
  v14 = v12 + 6;
  if (*a3 != v12 + 6)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((*a3 - (v12 + 6)) >> 4);
    do
    {
      result = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*a4, &v14[6 * (v15 >> 1)]);
      if (result > 1)
      {
        v15 >>= 1;
      }

      else
      {
        v14 += 6 * (v15 >> 1) + 6;
        v15 += ~(v15 >> 1);
      }
    }

    while (v15);
  }

  *v4 = v17;
  v4[1] = v14;
  return result;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(void *result, uint64_t *a2, uint64_t a3, const __CFString **a4)
{
  v4 = result;
  v5 = *a2;
  if (*a2 != a3)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v5) >> 4);
    do
    {
      v9 = *a2;
      if (v8 != 1 && !v9)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v9)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v10 = v8 >> 1;
      v11 = (v9 + 48 * (v8 >> 1));
      result = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v11, a4);
      if (result >= 2)
      {
        *a2 = (v11 + 6);
        v10 = v8 + ~v10;
      }

      v8 = v10;
    }

    while (v10);
    v5 = *a2;
  }

  *v4 = v5;
  return result;
}

uint64_t *boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>::operator=(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v6 = a1 + 5;
  v5 = a1[5];
  *(v6 - 8) = *(a2 + 8);
  *v6 = 0;
  if (v5 == v6 - 3)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v7 = (a2 + 40);
  v8 = *(a2 + 40);
  if (v8)
  {
    if (v8 == a2 + 16)
    {
      *v6 = (v6 - 3);
      (*(**v7 + 24))(*v7, v6 - 3);
      return a1;
    }

    *v6 = v8;
  }

  else
  {
    v7 = v6;
  }

  *v7 = 0;
  return a1;
}

void vp::utility::Object_Registry<vp::cf::Notification_Center>::shared_registry()
{
  {
    vp::utility::Object_Registry<vp::cf::Notification_Center>::shared_registry(void)::s_registry = 0;
    std::__shared_mutex_base::__shared_mutex_base(&unk_28133BFE0);
    xmmword_28133C088 = 0u;
    *&qword_28133C098 = 0u;
    dword_28133C0A8 = 1065353216;
  }
}

void std::__shared_ptr_emplace<vp::cf::Notification_Center>::__on_zero_shared(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  vp::utility::Object_Registry<vp::cf::Notification_Center>::shared_registry();
  v2 = *(a1 + 88);
  std::__shared_mutex_base::lock(&unk_28133BFE0);
  v3 = *(&xmmword_28133C088 + 1);
  if (*(&xmmword_28133C088 + 1))
  {
    v4 = vcnt_s8(*(&xmmword_28133C088 + 8));
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v2;
      if (v2 >= *(&xmmword_28133C088 + 1))
      {
        v5 = v2 % *(&xmmword_28133C088 + 1);
      }
    }

    else
    {
      v5 = (*(&xmmword_28133C088 + 1) - 1) & v2;
    }

    v6 = *(xmmword_28133C088 + 8 * v5);
    if (v6)
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *(&xmmword_28133C088 + 1) - 1;
        do
        {
          v9 = v7[1];
          if (v9 == v2)
          {
            if (v7[2] == v2)
            {
              v10 = v7[1];
              if (v4.u32[0] > 1uLL)
              {
                if (v10 >= *(&xmmword_28133C088 + 1))
                {
                  v10 %= *(&xmmword_28133C088 + 1);
                }
              }

              else
              {
                v10 &= v8;
              }

              v11 = *(xmmword_28133C088 + 8 * v10);
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11 != v7);
              if (v12 == &qword_28133C098)
              {
                goto LABEL_36;
              }

              v13 = v12[1];
              if (v4.u32[0] > 1uLL)
              {
                if (v13 >= *(&xmmword_28133C088 + 1))
                {
                  v13 %= *(&xmmword_28133C088 + 1);
                }
              }

              else
              {
                v13 &= v8;
              }

              if (v13 != v10)
              {
LABEL_36:
                if (!*v7)
                {
                  goto LABEL_37;
                }

                v14 = *(*v7 + 8);
                if (v4.u32[0] > 1uLL)
                {
                  if (v14 >= *(&xmmword_28133C088 + 1))
                  {
                    v14 %= *(&xmmword_28133C088 + 1);
                  }
                }

                else
                {
                  v14 &= v8;
                }

                if (v14 != v10)
                {
LABEL_37:
                  *(xmmword_28133C088 + 8 * v10) = 0;
                }
              }

              v15 = *v7;
              if (*v7)
              {
                v16 = *(v15 + 8);
                if (v4.u32[0] > 1uLL)
                {
                  if (v16 >= v3)
                  {
                    v16 %= v3;
                  }
                }

                else
                {
                  v16 &= v8;
                }

                if (v16 != v10)
                {
                  *(xmmword_28133C088 + 8 * v16) = v12;
                  v15 = *v7;
                }
              }

              *v12 = v15;
              *v7 = 0;
              --qword_28133C0A0;
              operator delete(v7);
              break;
            }
          }

          else
          {
            if (v4.u32[0] > 1uLL)
            {
              if (v9 >= *(&xmmword_28133C088 + 1))
              {
                v9 %= *(&xmmword_28133C088 + 1);
              }
            }

            else
            {
              v9 &= v8;
            }

            if (v9 != v5)
            {
              break;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }

  std::__shared_mutex_base::unlock(&unk_28133BFE0);
  log = vp::get_log(v17);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, a1 + 24, "vp::cf::Notification_Center]", 27);
    v20 = v34;
    v21 = v34;
    v22 = __p[1];
    v23 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if (v21 >= 0)
      {
        v24 = v20;
      }

      else
      {
        v24 = v22;
      }

      v25 = __p[0];
      if (v21 >= 0)
      {
        v25 = __p;
      }

      if (v24)
      {
        v26 = " ";
      }

      else
      {
        v26 = "";
      }

      *buf = 136315394;
      v36 = v25;
      v37 = 2080;
      v38 = v26;
      _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v21) = v34;
    }

    if ((v21 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v27 = *(a1 + 80);
  if (v27)
  {
    dispatch_release(v27);
  }

  v28 = *(a1 + 64);
  if (v28)
  {
    v29 = *(a1 + 56) + 16;
    do
    {
      std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](v29);
      v30 = *(v29 - 16);
      if (v30)
      {
        CFRelease(v30);
      }

      v29 += 48;
      --v28;
    }

    while (v28);
  }

  v31 = *(a1 + 72);
  if (v31)
  {
    (*(**(a1 + 48) + 24))(*(a1 + 48), *(a1 + 56), 48 * v31, 8);
  }

  v32 = *(a1 + 32);
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }
}

void sub_27267C4B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vp::cf::Notification_Center>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B9C48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::cf::Notification_Manager::create_listener(uint64_t a1, uint64_t *a2, const __CFString *cf, uint64_t a4)
{
  v52[4] = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  name = cf;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v47, a4);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  os_unfair_lock_lock(a2 + 4);
  v8 = a2[4];
  v9 = a2[5];
  v48 = v8;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v46[0] = &v8[6 * v9];
  boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_equal_range<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(&cfa, &v48, v46, &name);
  v12 = cfa;
  v11 = v51;
  v13 = *(a2 + 5) + 1;
  *(a2 + 5) = v13;
  LODWORD(v48) = v13;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v49, v47);
  if (cf)
  {
    CFRetain(cf);
  }

  cfa = cf;
  LODWORD(v51) = v48;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v52, v49);
  v46[0] = &cfa;
  v46[1] = (a2 + 3);
  v14 = a2[4];
  if (v14 > v12)
  {
    goto LABEL_70;
  }

  v15 = a2[5];
  if (!v14 && v15)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v16 = (v14 + 48 * v15);
  if (v12 > v16)
  {
LABEL_70:
    v40 = "this->priv_in_range_or_end(hint)";
    v41 = 897;
    v42 = "flat_tree.hpp";
    v43 = "insert_equal";
    goto LABEL_75;
  }

  if (v12 != v16)
  {
    if (!v12)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v17 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v12, &cfa);
    v14 = a2[4];
    if (v17 > kCFCompareGreaterThan)
    {
      v18 = a2[5];
      if (!v14 && v18)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v19 = v14 + 48 * v18 - v12;
      if (v19)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
        v21 = v12;
        do
        {
          v22 = &v21[6 * (v20 >> 1)];
          v24 = *v22;
          v23 = (v22 + 6);
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v24, &cfa) <= kCFCompareGreaterThan)
          {
            v20 >>= 1;
          }

          else
          {
            v21 = v23;
            v20 += ~(v20 >> 1);
          }
        }

        while (v20);
        goto LABEL_40;
      }

LABEL_39:
      v21 = v12;
      goto LABEL_40;
    }
  }

  if (v12 == v14)
  {
    goto LABEL_39;
  }

  if (!v12)
  {
    __assert_rtn("operator[]", "vector.hpp", 164, "!!m_ptr");
  }

  v21 = v12;
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cfa, v12 - 6) >= 2)
  {
    v21 = a2[4];
    if (v12 != v21)
    {
      v25 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v21) >> 4);
      do
      {
        if (v25 != 1 && !v21)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (!v21)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cfa, &v21[6 * (v25 >> 1)]) > kCFCompareGreaterThan)
        {
          v25 >>= 1;
        }

        else
        {
          v21 += 6 * (v25 >> 1) + 6;
          v25 += ~(v25 >> 1);
        }
      }

      while (v25);
    }
  }

LABEL_40:
  v26 = a2[4];
  if (v26 > v21)
  {
    v40 = "this->priv_in_range_or_end(position)";
    v41 = 1862;
    v42 = "vector.hpp";
    v43 = "emplace";
    goto LABEL_75;
  }

  v27 = a2[5];
  if (!v26 && v27)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v28 = v26 + 48 * v27;
  if (v21 > v28)
  {
    v40 = "this->priv_in_range_or_end(position)";
    v41 = 1862;
    v42 = "vector.hpp";
    v43 = "emplace";
LABEL_75:
    __assert_rtn(v43, v42, v41, v40);
  }

  v29 = a2[6];
  if (v29 < v27)
  {
    v40 = "this->m_holder.capacity() >= this->m_holder.m_size";
    v41 = 2821;
    v42 = "vector.hpp";
    v43 = "priv_insert_forward_range";
    goto LABEL_75;
  }

  v30 = v11;
  if (v29 == v27)
  {
    boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>,boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>(&v45, a2 + 24, v21, &cfa);
  }

  else
  {
    if (v28 == v21)
    {
      *v28 = cfa;
      cfa = 0;
      *(v28 + 8) = v51;
      std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v28 + 16, v52);
      ++a2[5];
    }

    else
    {
      v31 = (v28 - 48);
      *v28 = *(v28 - 48);
      *(v28 - 48) = 0;
      *(v28 + 8) = *(v28 - 40);
      std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v28 + 16, v28 - 32);
      ++a2[5];
      for (; v31 != v21; v31 -= 6)
      {
        boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>::operator=(v31, (v31 - 6));
      }

      boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>::operator=(v21, &cfa);
    }

    v45 = v21;
  }

  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](v52);
  if (cfa)
  {
    CFRelease(cfa);
  }

  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](v49);
  if (v12 == v30)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    v32 = name;
    CFNotificationCenterAddObserver(LocalCenter, a2[8], vp::cf::Notification_Center::notify_listener, name, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    v32 = name;
  }

  *a1 = *(a2 + 5);
  v34 = *(a1 + 8);
  *(a1 + 8) = v32;
  if (v32)
  {
    CFRetain(v32);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  v35 = a2[1];
  if (!v35 || (v36 = *a2, (v37 = std::__shared_weak_count::lock(v35)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *&v38 = v36;
  *(&v38 + 1) = v37;
  v39 = *(a1 + 24);
  *(a1 + 16) = v38;
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  os_unfair_lock_unlock(a2 + 4);
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](v47);
  if (v32)
  {
    CFRelease(v32);
  }
}

void sub_27267CB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void vp::cf::Notification_Center::notify_listener(vp::cf::Notification_Center *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  vp::utility::Object_Registry<vp::cf::Notification_Center>::shared_registry();
  std::__shared_mutex_base::lock_shared(&unk_28133BFE0);
  if (std::__hash_table<std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>>>::find<unsigned long long>(a2))
  {
    if (a3)
    {
      CFRetain(a3);
      v9 = CFGetTypeID(a3);
      if (v9 != CFStringGetTypeID())
      {
        CFRelease(a3);
      }
    }

    if (a5)
    {
      CFRetain(a5);
      v10 = CFGetTypeID(a5);
      if (v10 != CFDictionaryGetTypeID())
      {
        CFRelease(a5);
      }
    }

    operator new();
  }

  std::__shared_mutex_base::unlock_shared(&unk_28133BFE0);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>>>::find<unsigned long long>(unint64_t a1)
{
  if (!*(&xmmword_28133C088 + 1))
  {
    return 0;
  }

  v1 = vcnt_s8(*(&xmmword_28133C088 + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&xmmword_28133C088 + 1) <= a1)
    {
      v2 = a1 % *(&xmmword_28133C088 + 1);
    }
  }

  else
  {
    v2 = (*(&xmmword_28133C088 + 1) - 1) & a1;
  }

  i = *(xmmword_28133C088 + 8 * v2);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v4 = i[1];
      if (v4 == a1)
      {
        if (i[2] == a1)
        {
          return i;
        }
      }

      else
      {
        if (v1.u32[0] > 1uLL)
        {
          if (v4 >= *(&xmmword_28133C088 + 1))
          {
            v4 %= *(&xmmword_28133C088 + 1);
          }
        }

        else
        {
          v4 &= *(&xmmword_28133C088 + 1) - 1;
        }

        if (v4 != v2)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t *std::unique_ptr<vp::cf::Notification_Center::notify_listener(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::{lambda(void)#1}::operator() const(void)::{lambda(vp::cf::Notification_Center&)#1}::operator() const(vp::cf::Notification_Center&)::{lambda(void)#1},std::default_delete<vp::cf::Notification_Center::notify_listener(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::{lambda(void)#1}::operator() const(void)::{lambda(vp::cf::Notification_Center&)#1}::operator() const(vp::cf::Notification_Center&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRelease(v3);
    }

    if (*v2)
    {
      CFRelease(*v2);
    }

    MEMORY[0x2743CBFA0](v2, 0x1060C4033AEC38CLL);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<vp::cf::Notification_Center::notify_listener(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::{lambda(void)#1}::operator() const(void)::{lambda(vp::cf::Notification_Center&)#1}::operator() const(vp::cf::Notification_Center&)::{lambda(void)#1}>(dispatch_queue_s *,vp::cf::Notification_Center::notify_listener(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::{lambda(void)#1}::operator() const(void)::{lambda(vp::cf::Notification_Center&)#1}::operator() const(vp::cf::Notification_Center&)::{lambda(void)#1} &&)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v14 = a1;
  vp::utility::Object_Registry<vp::cf::Notification_Center>::shared_registry();
  v2 = *(a1 + 16);
  std::__shared_mutex_base::lock_shared(&unk_28133BFE0);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,vp::cf::Notification_Center *>>>::find<unsigned long long>(v2);
  if (v3)
  {
    v4 = v3[3];
    v5 = *a1;
    if (*a1)
    {
      CFRetain(*a1);
    }

    v15 = v5;
    os_unfair_lock_lock((v4 + 16));
    v6 = *(v4 + 32);
    v7 = *(v4 + 40);
    v19 = v6;
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (!v8)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v18 = &v6[6 * v7];
    boost::container::dtl::flat_tree<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,boost::container::dtl::select1st<applesauce::CF::StringRef>,std::less<applesauce::CF::StringRef>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::priv_equal_range<boost::container::vec_iterator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,false>,applesauce::CF::StringRef>(&cf, &v19, &v18, &v15);
    v9 = cf;
    v10 = v17;
    if (cf != v17)
    {
      do
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          CFRetain(*(a1 + 8));
        }

        cf = v11;
        v12 = v9[5];
        if (!v12)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v12 + 48))(v12, &cf);
        if (cf)
        {
          CFRelease(cf);
        }

        v9 += 6;
      }

      while (v9 != v10);
      v5 = v15;
    }

    os_unfair_lock_unlock((v4 + 16));
    if (v5)
    {
      CFRelease(v5);
    }
  }

  std::__shared_mutex_base::unlock_shared(&unk_28133BFE0);
  return std::unique_ptr<vp::cf::Notification_Center::notify_listener(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::{lambda(void)#1}::operator() const(void)::{lambda(vp::cf::Notification_Center&)#1}::operator() const(vp::cf::Notification_Center&)::{lambda(void)#1},std::default_delete<vp::cf::Notification_Center::notify_listener(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::{lambda(void)#1}::operator() const(void)::{lambda(vp::cf::Notification_Center&)#1}::operator() const(vp::cf::Notification_Center&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v14);
}

CFTypeRef **boost::container::dtl::value_destructor<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>,boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>::~value_destructor(CFTypeRef **a1)
{
  v2 = *a1;
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100]((*a1 + 2));
  if (*v2)
  {
    CFRelease(*v2);
  }

  return a1;
}

uint64_t boost::container::vector<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>,vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>,boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>*,boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x555555555555555)
  {
    goto LABEL_30;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0x555555555555555)
  {
    v6 = 0x555555555555555;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0x555555555555555)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v12 = *(a2 + 1);
  v13 = (*(**a2 + 16))(*a2, 48 * v8, 8);
  v14 = v13;
  v30[1] = a2;
  v30[2] = v8;
  v15 = *(a2 + 1);
  v16 = v15 + 48 * *(a2 + 2);
  v17 = v13;
  if (v15 != a3)
  {
    v18 = v15 + 16;
    v17 = v13;
    do
    {
      *v17 = *(v18 - 16);
      *(v18 - 16) = 0;
      *(v17 + 8) = *(v18 - 8);
      std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v17 + 16, v18);
      v17 += 48;
      v19 = v18 + 32;
      v18 += 48;
    }

    while (v19 != a3);
  }

  *v17 = *a4;
  *a4 = 0;
  *(v17 + 8) = *(a4 + 8);
  std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v17 + 16, a4 + 16);
  if (v16 != a3)
  {
    v20 = a3 + 16;
    v21 = v17 + 64;
    do
    {
      *(v21 - 16) = *(v20 - 16);
      *(v20 - 16) = 0;
      *(v21 - 8) = *(v20 - 8);
      v22 = std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::__value_func[abi:ne200100](v21, v20);
      v23 = v20 + 32;
      v20 += 48;
      v21 = v22 + 48;
    }

    while (v23 != v16);
  }

  v30[0] = 0;
  if (v15)
  {
    v24 = *(a2 + 2);
    if (v24)
    {
      v25 = v15 + 16;
      do
      {
        std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](v25);
        v26 = *(v25 - 16);
        if (v26)
        {
          CFRelease(v26);
        }

        v25 += 48;
        --v24;
      }

      while (v24);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 48 * *(a2 + 3), 8);
  }

  v27 = *(a2 + 2) + 1;
  *(a2 + 1) = v14;
  *(a2 + 2) = v27;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::~scoped_array_deallocator(v30);
  *a1 = *(a2 + 1) + a3 - v12;
  return result;
}

void sub_27267D300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<applesauce::CF::StringRef,vp::cf::Notification_Center::Listener>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 48 * *(a1 + 16), 8);
  }

  return a1;
}

uint64_t vp::vx::database::v1::syntax::get_log_context_info(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "[", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "vp::vx::database::v1::syntax::Rule]", 34);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ":", 1);
  *(v19 + *(v16 - 24)) = 4;
  v4 = MEMORY[0x2743CBB60](&v16, *(a2 + 8));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "", 0);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ":", 1);
  v7 = MEMORY[0x2743CBAF0](v6, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "]", 1);
  if ((v24 & 0x10) != 0)
  {
    v9 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v9 = v20;
    }

    v10 = v19[3];
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v8 = 0;
      HIBYTE(v14) = 0;
      goto LABEL_14;
    }

    v10 = v19[0];
    v9 = v19[2];
  }

  v8 = v9 - v10;
  if (v9 - v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v9 - v10;
  if (v8)
  {
    memmove(&v13, v10, v8);
  }

LABEL_14:
  *(&v13 + v8) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v13;
  *(a1 + 16) = v14;
  v15[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v11;
  v17 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v25);
}

void sub_27267D688(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27267D664);
}

uint64_t vp::vx::io::Object::Log_Context::get_description(vp::vx::io::Object::Log_Context *this, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  vp::vx::io::Object::Log_Context::get_description(a2, &v7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](this, v6);
  v6[0] = *MEMORY[0x277D82818];
  v4 = *(MEMORY[0x277D82818] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v7 = v4;
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v11);
}

void sub_27267D84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *vp::vx::io::Object::Log_Context::get_description(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9[0] = &unk_2881B9C80;
  v9[1] = &v8;
  v9[2] = a2;
  v10 = v9;
  vp::vx::io::Object::Log_Context::for_each_parent(a1, v9);
  result = v10;
  if (v10 == v9)
  {
    result = (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    result = (*(*v10 + 40))();
  }

  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    if (!*(a1 + 8))
    {
      return result;
    }
  }

  else if (!*(a1 + 23))
  {
    return result;
  }

  if (v8 == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ":", 1);
    LOBYTE(v5) = *(a1 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v6, v7);
}

void vp::vx::io::Object::Log_Context::for_each_parent(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    vp::vx::io::Object::Log_Context::for_each_parent(v4, a2);
    v5 = *(a2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, v4);
  }

  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_27267DA60(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27267DA20);
}

void *std::__function::__func<vp::vx::io::Object::Log_Context::get_description(std::ostream &)::$_0,std::allocator<vp::vx::io::Object::Log_Context::get_description(std::ostream &)::$_0>,void ()(vp::vx::io::Object::Log_Context const&)>::operator()(void *result, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v4 = result;
    v5 = result[1];
    if (*v5 == 1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result[2], ":", 1);
    }

    else
    {
      *v5 = 1;
    }

    v6 = v4[2];
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  }

  return result;
}

__n128 std::__function::__func<vp::vx::io::Object::Log_Context::get_description(std::ostream &)::$_0,std::allocator<vp::vx::io::Object::Log_Context::get_description(std::ostream &)::$_0>,void ()(vp::vx::io::Object::Log_Context const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881B9C80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void vp::vx::io::get_log_context_info(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "[", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, a3, a4);
  if (v9)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, ":", 1);
    vp::vx::io::Object::Log_Context::get_description(v9, &v15);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, ":", 1);
  v10 = MEMORY[0x2743CBAF0](&v15, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "]", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v12, v14);
  *a1 = v12;
  a1[2] = v13;
  v14[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v15 = v11;
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](&v19);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_27267DE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27267DE50);
}

void vp::rpb::Object::add_user_info(id *a1, CFDictionaryRef *a2)
{
  v4 = [*a1 userInfo];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v18, *a2);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v12, *a2);
  v13 = (v15 - v14) >> 3;
  while (1)
  {
    if (v18 && v19 != (v21 - v20) >> 3)
    {
      v6 = v12;
      goto LABEL_10;
    }

    v6 = v12;
    if (!v12 || v13 == (v15 - v14) >> 3)
    {
      break;
    }

LABEL_10:
    if (v18 == v6 && v19 == v13)
    {
      break;
    }

    applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::dereference(v11, &v18);
    v7 = v11[1];
    v8 = v11[0];
    [v5 setObject:v7 forKey:v8];

    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    ++v19;
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  v9 = *a1;
  v10 = [v5 copy];
  [v9 setUserInfo:v10 error:0];
}

void vp::rpb::Object::add_user_info(id *a1, void *a2, void *a3)
{
  v10 = [*a1 userInfo];
  v6 = [v10 mutableCopy];

  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = v7;
  [v7 setObject:*a3 forKey:*a2];
  v8 = *a1;
  v9 = [v11 copy];
  [v8 setUserInfo:v9 error:0];
}

int *vp::vx::Voice_Processor_State_Manager::create_state<CAOrientation>(uint64_t a1, __n128 *a2, _DWORD *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 3, v11);
  LODWORD(a2) = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(v11);
  *a1 = a2;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

int *caulk::inplace_function_detail::vtable<void,CAOrientation>::vtable<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>(caulk::inplace_function_detail::wrapper<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  return vp::vx::data_flow::State<void>::~State(a1);
}

int *caulk::inplace_function_detail::vtable<void,CAOrientation>::vtable<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>(caulk::inplace_function_detail::wrapper<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>)::{lambda(void *,void *)#2}::__invoke(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  return vp::vx::data_flow::State<void>::~State(a2);
}

void caulk::inplace_function_detail::vtable<void,CAOrientation>::vtable<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>(caulk::inplace_function_detail::wrapper<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>)::{lambda(void *,void *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  vp::vx::data_flow::State<void>::State(a1, a2);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void caulk::inplace_function_detail::vtable<void,CAOrientation>::vtable<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>(caulk::inplace_function_detail::wrapper<vp::vx::anonymous namespace::make_listener_for (vp::vx::data_flow::Variable<CAOrientation>,applesauce::dispatch::v1::queue)::$_0>)::{lambda(void *,CAOrientation&&)#1}::__invoke(dispatch_object_t *a1, int *a2)
{
  v3 = *a2;
  v4 = a1[3];
  if (v4)
  {
    dispatch_retain(a1[3]);
  }

  v6[0] = std::pmr::get_default_resource(a1);
  v6[1] = 0;
  v6[2] = &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v6) = v3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3002000000;
  v12 = __Block_byref_object_copy__10569;
  v13 = __Block_byref_object_dispose__10570;
  v14.__ptr_ = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN2vp2vx9data_flow5StateIvE9set_valueEONS1_5ValueEN10applesauce8dispatch2v15queueE_block_invoke;
  block[3] = &unk_279E4A410;
  block[5] = a1;
  block[6] = v6;
  block[4] = &v9;
  dispatch_sync(v4, block);
  if (v10[5].__ptr_)
  {
    std::exception_ptr::exception_ptr(&v7, v10 + 5);
    v5.__ptr_ = &v7;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    _Block_object_dispose(&v9, 8);
    std::exception_ptr::~exception_ptr(&v14);
    if (v4)
    {
      dispatch_release(v4);
    }

    vp::vx::data_flow::Value::~Value(v6);
  }
}

void sub_27267E45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::exception_ptr a13)
{
  std::exception_ptr::~exception_ptr(&a13);
  _Block_object_dispose((v15 - 80), 8);
  std::exception_ptr::~exception_ptr(v14 + 5);
  if (v13)
  {
    dispatch_release(v13);
  }

  vp::vx::data_flow::Value::~Value(&a10);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<CAOrientation>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t **vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_decision@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  memset(v45, 0, sizeof(v45));
  default_resource = std::pmr::get_default_resource(a1);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(v7 + 8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = *(v7 + 8);
  }

  if (v8 == 1)
  {
    v36 = a3;
    vp::xml::Node::children(v40, a2);
    v42[0] = v40;
    v42[1] = 0;
    v43 = 0;
    v44 = 0;
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v38, v42, v9);
    v10 = 0;
    while (v38)
    {
      v11 = vp::xml::Node::name(v38, v39);
      v14 = vp::vx::database::v1::syntax::constexpr_hash(v11, v12, v13);
      if (v14 == 0x689FBD93802B31EBLL)
      {
        vp::xml::Node::children(v54, &v38);
        v47 = v54;
        v49 = 0uLL;
        v48 = 0;
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v52, &v47, v21);
        while (v52)
        {
          vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist(&v51, a1, &v52);
          v22 = v51;
          if (v51)
          {
            goto LABEL_32;
          }

          std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v52, v15);
        }

        v22 = 0;
LABEL_32:
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        if (v49.n128_u8[8] == 1 && v49.n128_u64[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49.n128_u64[0]);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        v10 = v22;
      }

      else if (v14 == 0xE741FF19055EDBB8)
      {
        vp::xml::Node::children(v54, &v38);
        v47 = v54;
        v49 = 0uLL;
        v48 = 0;
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v52, &v47, v16);
        while (v52)
        {
          v17 = a1[1];
          v18 = vp::xml::Node::content(v52, v53);
          vp::vx::database::v1::runtime::String_Pool::intern(&v51, v17, v18, v19);
          v20 = v51;
          if (v51)
          {
            goto LABEL_24;
          }

          std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v52, v15);
        }

        v20 = 0;
LABEL_24:
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        if (v49.n128_u8[8] == 1 && v49.n128_u64[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49.n128_u64[0]);
        }

        v23 = *&v45[8];
        if (*&v45[8] >= *&v45[16])
        {
          v25 = *v45;
          v26 = (*&v45[8] - *v45) >> 3;
          v27 = v26 + 1;
          if ((v26 + 1) >> 61)
          {
            std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
          }

          v28 = *&v45[16] - *v45;
          if ((*&v45[16] - *v45) >> 2 > v27)
          {
            v27 = v28 >> 2;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          p_default_resource = &default_resource;
          if (v29)
          {
            v30 = std::pmr::polymorphic_allocator<applesauce::CF::StringRef>::allocate[abi:ne200100](default_resource, v29);
            v23 = *&v45[8];
            v25 = *v45;
          }

          else
          {
            v30 = 0;
          }

          v31 = &v30[v26];
          v47 = v30;
          v48 = v31;
          v49.n128_u64[1] = &v30[v29];
          v32 = &v31[-((*&v45[8] - *v45) >> 3)];
          *v31 = v20;
          v49.n128_u64[0] = (v31 + 1);
          std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<applesauce::CF::StringRef>,applesauce::CF::StringRef*>(&default_resource, v25, v23, v32);
          v33 = *v45;
          v34 = *&v45[16];
          *v45 = v32;
          v37 = v49;
          *&v45[8] = v49;
          v49.n128_u64[0] = v33;
          v49.n128_u64[1] = v34;
          v47 = v33;
          v48 = v33;
          std::__split_buffer<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef> &>::~__split_buffer(&v47);
          v15 = v37;
          v24 = v37.n128_u64[0];
        }

        else
        {
          **&v45[8] = v20;
          v24 = v23 + 1;
        }

        *&v45[8] = v24;
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v38, v15);
    }

    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    a3 = v36;
    if (v44 == 1 && v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (v10)
    {
      operator new();
    }
  }

  *a3 = 0;
  v47 = v45;
  return std::vector<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v47);
}

uint64_t **std::vector<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    v5 = *result;
    if (v3 != v2)
    {
      v6 = result;
      do
      {
        v7 = *(v3 - 8);
        v3 -= 8;
        std::pmr::polymorphic_allocator<applesauce::CF::StringRef>::destroy[abi:ne200100]<applesauce::CF::StringRef>(v7);
      }

      while (v3 != v2);
      v5 = *v6;
      v4 = **v6;
    }

    v1[1] = v2;
    v8 = v5[3];
    v9 = (v5[2] - v4) >> 3;

    return std::allocator_traits<vp::Allocator<applesauce::CF::StringRef>>::deallocate[abi:ne200100](v8, v4, v9);
  }

  return result;
}

void std::pmr::polymorphic_allocator<applesauce::CF::StringRef>::destroy[abi:ne200100]<applesauce::CF::StringRef>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t vp::vx::database::v1::syntax::decisions::Override_Property_List::evaluate(vp::vx::database::v1::syntax::decisions::Override_Property_List *this, const vp::vx::database::v1::Request *a2, CFPropertyListRef *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(this + 2);
  for (i = *(this + 3); v3 != i; ++v3)
  {
    if (*v3)
    {
      Length = CFStringGetLength(*v3);
      v8 = Length;
      if (Length)
      {
        MEMORY[0x28223BE20](Length);
        bzero(v11 - ((v8 + 16) & 0xFFFFFFFFFFFFFFF0), (v8 + 1));
        if (CFStringGetCString(*v3, v11 - ((v8 + 16) & 0xFFFFFFFFFFFFFFF0), (v8 + 1), 0x8000100u))
        {
          v8 = v11 - ((v8 + 16) & 0xFFFFFFFFFFFFFFF0);
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = *(this + 6);
    if (v9)
    {
      CFRetain(*(this + 6));
      vp::vx::database::v1::Response::set(a3, v8, v9, 0);
      CFRelease(v9);
    }

    else
    {
      vp::vx::database::v1::Response::set(a3, v8, 0, 0);
    }
  }

  return 1;
}

void sub_27267EB58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::vx::database::v1::syntax::decisions::Override_Property_List::build(CFTypeRef *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v4 = v34;
  default_resource = std::pmr::get_default_resource(this);
  v32 = v34;
  v33 = xmmword_272756790;
  v6 = this[2];
  v7 = this[3];
  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    do
    {
      v8 = vp::vx::database::v1::fbs::BuildString(a2, v6, v5);
      v30 = v8;
      v9 = v33;
      v5 = (v32 + 4 * v33);
      if (v33 == *(&v33 + 1))
      {
        boost::container::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>*,apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(&v35, &default_resource, v5, &v30);
        boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String> *,false>::operator*(v35);
      }

      else
      {
        *v5 = v8;
        *&v33 = v9 + 1;
      }

      ++v6;
    }

    while (v6 != v7);
    v4 = v32;
    v10 = v33;
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a2, v10, 4uLL);
  if (v10)
  {
    v11 = v4 - 4;
    v12 = v10;
    do
    {
      v13 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a2, *&v11[4 * v12]);
      apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(a2, v13);
      --v12;
    }

    while (v12);
  }

  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a2, v10);
  v16 = vp::vx::database::v1::fbs::BuildPropertyList(a2, this + 6, v15);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v17 = v16;
  *(a2 + 70) = 1;
  v18 = *(a2 + 8);
  v19 = *(a2 + 12);
  v20 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 6, v17);
  if (v14)
  {
    v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a2, v14);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a2, 4, v21);
  }

  v22 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v18 - v19 + v20);
  v23 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v24 = v22;
  *(a2 + 70) = 1;
  v25 = *(a2 + 8);
  v26 = *(a2 + 12);
  v27 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v24);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v23);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 3);
  v28 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v25 - v26 + v27);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v28);
  if (*(&v33 + 1))
  {
    boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>::deallocate(&default_resource, v32);
  }

  return v28;
}

_DWORD *boost::container::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>*,apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(void *a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v4 = *(a2 + 24);
  if (v4 != *(a2 + 16))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x3FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v9 = *(a2 + 8);
  if (!(v4 >> 61))
  {
    if (v4 + 1 > 8 * v4 / 5)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = 8 * v4 / 5;
    }

    goto LABEL_16;
  }

  if (v4 >> 61 > 4)
  {
    v11 = -1;
  }

  else
  {
    v11 = 8 * v4;
  }

  v12 = v4 + 1;
  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  v10 = v12 > v11 ? v4 + 1 : v11;
  if (v12 >> 62)
  {
LABEL_26:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

LABEL_16:
  result = (*(**a2 + 16))();
  v14 = result;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = result;
  if (v15)
  {
    v17 = result;
    if (v15 != a3)
    {
      result = memmove(result, *(a2 + 8), a3 - v15);
      v17 = v14 + a3 - v15;
    }
  }

  *v17 = *a4;
  if (a3)
  {
    v18 = &v15[4 * v16];
    if (v18 != a3)
    {
      result = memmove(v17 + 4, a3, v18 - a3);
    }
  }

  if (v15)
  {
    result = boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 8));
  }

  v19 = *(a2 + 16) + 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v10;
  *a1 = &a3[v14 - v9];
  return result;
}

uint64_t boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String> *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

void *boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void vp::vx::database::v1::syntax::decisions::Override_Property_List::~Override_Property_List(vp::vx::database::v1::syntax::decisions::Override_Property_List *this)
{
  *this = &unk_2881B9D18;
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = (this + 16);
  std::vector<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v3);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B9D18;
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = (this + 16);
  std::vector<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist(vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser *this, const vp::xml::Node *a2, vp::xml::Node **a3)
{
  v6 = vp::xml::Node::name(*a3, a3[1]);
  v9 = vp::vx::database::v1::syntax::constexpr_hash(v6, v7, v8);
  if (v9 <= 0x104D579BAD9D5091)
  {
    if (v9 > 0x8C1783A7271CA55ELL)
    {
      if (v9 == 0x8C1783A7271CA55FLL)
      {
        v54 = *MEMORY[0x277CBED28];
        if (*MEMORY[0x277CBED28])
        {
          CFRetain(*MEMORY[0x277CBED28]);
          *this = v54;
          CFRelease(v54);
          return;
        }
      }

      else if (v9 == 0xB58C869978AEB01BLL)
      {
        vp::xml::Node::children(&v77, a3);
        cf = &v77;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v27 = std::ranges::__distance::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>>(&cf, v26);
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], v27 / 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v84 == 1 && v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        if (v78)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v78);
        }

        vp::xml::Node::children(&valuePtr, a3);
        cf = &valuePtr;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        if (v80)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v80);
        }

        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&__dst, &cf, v29);
        v30 = 0;
        while (__dst.__r_.__value_.__r.__words[0])
        {
          v31 = vp::xml::Node::name(__dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          if (vp::vx::database::v1::syntax::constexpr_hash(v31, v32, v33) == 0x5819D4D75CBDC104)
          {
            if (v30)
            {
              goto LABEL_104;
            }

            vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist_string(value, a2, &__dst);
            v30 = value[0];
          }

          else
          {
            if (!v30 || (vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist(value, a2, &__dst), !value[0]))
            {
LABEL_104:
              value[0] = 0;
              if (__dst.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__dst.__r_.__value_.__l.__size_);
              }

              if (v84 == 1 && v83)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v83);
                if (!v30)
                {
                  goto LABEL_138;
                }

                goto LABEL_137;
              }

LABEL_136:
              if (!v30)
              {
                goto LABEL_138;
              }

              goto LABEL_137;
            }

            CFDictionarySetValue(Mutable, v30, value[0]);
            CFRelease(v30);
            if (value[0])
            {
              CFRelease(value[0]);
            }

            v30 = 0;
          }

          std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&__dst, v34);
        }

        if (__dst.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__dst.__r_.__value_.__l.__size_);
        }

        if (v84 == 1 && v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        if (Mutable)
        {
          CFRetain(Mutable);
          value[0] = Mutable;
          v64 = CFGetTypeID(Mutable);
          if (v64 != CFDictionaryGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          goto LABEL_136;
        }

        value[0] = 0;
        if (v30)
        {
LABEL_137:
          CFRelease(v30);
        }

LABEL_138:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v65 = value[0];
        if (value[0])
        {
          CFRetain(value[0]);
          *this = v65;
          CFRelease(v65);
          return;
        }
      }
    }

    else if (v9 == 0x80EB68B1F909C988)
    {
      vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist_string(&cf, a2, a3);
      v47 = cf;
      if (cf)
      {
        CFRetain(cf);
        *this = v47;
        CFRelease(v47);
        return;
      }
    }

    else if (v9 == 0x895073F30609C3C7)
    {
      vp::xml::Node::children(&valuePtr, a3);
      cf = &valuePtr;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      if (v80)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v80);
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v77, &cf, v10);
      if (v77.__vftable)
      {
        v11 = vp::xml::Node::content(v77.__vftable, v78);
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v13 = v12;
        if (v12 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v12;
        if (v12)
        {
          memmove(&__dst, v11, v12);
        }

        __dst.__r_.__value_.__s.__data_[v13] = 0;
        v56 = std::stod(&__dst, 0);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v57 = v56;
        if (v56 == v57)
        {
          *&__dst.__r_.__value_.__l.__data_ = v56;
          v58 = CFNumberCreate(0, kCFNumberFloatType, &__dst);
          value[0] = v58;
          if (!v58)
          {
            v59 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v59, "Could not construct");
          }
        }

        else
        {
          *&__dst.__r_.__value_.__l.__data_ = v56;
          v58 = CFNumberCreate(0, kCFNumberDoubleType, &__dst);
          value[0] = v58;
          if (!v58)
          {
            v72 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v72, "Could not construct");
          }
        }
      }

      else
      {
        v58 = 0;
      }

      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }

      if (v84 == 1)
      {
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }
      }

      if (v58)
      {
        CFRetain(v58);
        *this = v58;
        CFRelease(v58);
        return;
      }
    }

    goto LABEL_176;
  }

  if (v9 <= 0x7208C663866326E7)
  {
    if (v9 == 0x104D579BAD9D5092)
    {
      vp::xml::Node::children(&v77, a3);
      cf = &v77;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v49 = std::ranges::__distance::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>>(&cf, v48);
      v50 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], v49, MEMORY[0x277CBF128]);
      if (v84 == 1 && v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }

      vp::xml::Node::children(&valuePtr, a3);
      cf = &valuePtr;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      if (v80)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v80);
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&__dst, &cf, v51);
      while (__dst.__r_.__value_.__r.__words[0])
      {
        vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist(value, a2, &__dst);
        v52 = value[0];
        if (!value[0])
        {
          v75 = 0;
          if (__dst.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__dst.__r_.__value_.__l.__size_);
          }

          if (v84 == 1 && v83)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v83);
          }

          if (!v50)
          {
            goto LABEL_176;
          }

          v62 = 0;
          goto LABEL_126;
        }

        CFArrayAppendValue(v50, value[0]);
        CFRelease(v52);
        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&__dst, v53);
      }

      if (__dst.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__dst.__r_.__value_.__l.__size_);
      }

      if (v84 == 1 && v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      if (!v50)
      {
        goto LABEL_176;
      }

      CFRetain(v50);
      v75 = v50;
      v61 = CFGetTypeID(v50);
      v62 = v50;
      if (v61 != CFArrayGetTypeID())
      {
        v63 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v63, "Could not construct");
      }

LABEL_126:
      CFRelease(v50);
      if (!v62)
      {
        goto LABEL_176;
      }

      CFRetain(v62);
      *this = v62;
      if (v75)
      {
        CFRelease(v75);
      }
    }

    else
    {
      if (v9 != 0x3D7C2357A576C67FLL)
      {
        goto LABEL_176;
      }

      vp::xml::Node::children(&valuePtr, a3);
      cf = &valuePtr;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      if (v80)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v80);
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&__dst, &cf, v14);
      if (__dst.__r_.__value_.__r.__words[0])
      {
        v15 = vp::xml::Node::content(__dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        if (v16)
        {
          v17 = v15;
          LOBYTE(v18) = 0;
          v19 = 0;
          LOBYTE(v20) = 0;
          v21 = 8;
          while (1)
          {
            if (!v19)
            {
              v22 = *v17;
              if (v22 < 0 || (v18 = boost::archive::iterators::detail::to_6_bit<char>::operator()(char)const::lookup_table[v22], v18 == 255))
              {
                v77.__vftable = &unk_2881B4A18;
                LODWORD(v78) = 1;
                boost::serialization::throw_exception<boost::archive::iterators::dataflow_exception>(&v77);
              }

              ++v17;
              v19 = 6;
            }

            v23 = v19;
            if (v19 >= v21)
            {
              v24 = v21;
            }

            else
            {
              v24 = v19;
            }

            v19 -= v24;
            v20 = (v20 << v24) | (v18 >> v19) & ~(-1 << v24);
            v25 = v21 > v23;
            v21 -= v24;
            if (!v25)
            {
              operator new();
            }
          }
        }

        *value = 0uLL;
        v68 = CFDataCreate(0, 0, 0);
        v67 = v68;
        if (!v68)
        {
          v70 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v70, "Could not construct");
        }

        v77.__vftable = v68;
        v69 = CFGetTypeID(v68);
        if (v69 != CFDataGetTypeID())
        {
          v71 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v71, "Could not construct");
        }
      }

      else
      {
        v67 = 0;
      }

      if (__dst.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__dst.__r_.__value_.__l.__size_);
      }

      if (v84 == 1 && v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      if (!v67)
      {
        goto LABEL_176;
      }

      CFRetain(v67);
      *this = v67;
      CFRelease(v67);
    }

    return;
  }

  if (v9 == 0x7208C663866326E8)
  {
    v55 = *MEMORY[0x277CBED10];
    if (*MEMORY[0x277CBED10])
    {
      CFRetain(*MEMORY[0x277CBED10]);
      *this = v55;
      CFRelease(v55);
      return;
    }

    goto LABEL_176;
  }

  if (v9 != 0x7E29DF81098DA67FLL)
  {
    goto LABEL_176;
  }

  vp::xml::Node::children(&v77, a3);
  cf = &v77;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  if (v78)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v78);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&__dst, &cf, v35);
  while (1)
  {
    if (!__dst.__r_.__value_.__r.__words[0])
    {
      v60 = 0;
      goto LABEL_158;
    }

    v36 = vp::xml::Node::content(__dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    v39 = v37 && *v36 == 45;
    v40 = &v36[v37];
    v41 = v39;
    v42 = &v36[v39];
    if (v37 == v39)
    {
      v43 = &v36[v39];
    }

    else
    {
      v46 = v37 - v39;
      v43 = v42;
      while (*v43 == 48)
      {
        ++v43;
        if (!--v46)
        {
          goto LABEL_78;
        }
      }
    }

    if (v43 == v40)
    {
      break;
    }

    if (*v43 - 48 >= 0xA)
    {
      v40 = v43;
      break;
    }

    v44 = std::__itoa::__traits<unsigned long long>::__read[abi:ne200100](v43, v40, &valuePtr, value);
    if ((v44 == v40 || *v44 - 48 > 9) && !__CFADD__(valuePtr, value[0]))
    {
      v45 = value[0] + valuePtr;
      if (v41)
      {
        if (v45 <= 0x8000000000000000)
        {
          goto LABEL_143;
        }
      }

      else if ((v45 & 0x8000000000000000) == 0)
      {
        goto LABEL_144;
      }
    }

LABEL_79:
    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&__dst, v38);
  }

LABEL_78:
  if (v40 == v42)
  {
    goto LABEL_79;
  }

  v45 = 0;
  if ((v41 & 1) == 0)
  {
    goto LABEL_145;
  }

LABEL_143:
  v45 = -v45;
LABEL_144:
  if (v45 == v45)
  {
LABEL_145:
    LODWORD(valuePtr) = v45;
    v60 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    value[0] = v60;
    if (!v60)
    {
      v66 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v66, "Could not construct");
    }

    goto LABEL_158;
  }

  valuePtr = v45;
  v60 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  value[0] = v60;
  if (!v60)
  {
    v74 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v74, "Could not construct");
  }

LABEL_158:
  if (__dst.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__dst.__r_.__value_.__l.__size_);
  }

  if (v84 == 1 && v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if (v60)
  {
    CFRetain(v60);
    *this = v60;
    CFRelease(v60);
    return;
  }

LABEL_176:
  *this = 0;
}

void sub_27267FE1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser::parse_plist_string(vp::vx::database::v1::syntax::decisions::Override_Property_List::Parser *this, const vp::xml::Node *a2, uint64_t *a3)
{
  *this = 0;
  vp::xml::Node::children(v14, a3);
  v16[0] = v14;
  v16[1] = 0;
  v17 = 0;
  v18 = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v12, v16, v5);
  while (v12)
  {
    v6 = *(a2 + 1);
    v7 = vp::xml::Node::content(v12, v13);
    vp::vx::database::v1::runtime::String_Pool::intern(&v11, v6, v7, v8);
    v10 = v11;
    if (v11)
    {
      goto LABEL_8;
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v12, v9);
  }

  v10 = 0;
LABEL_8:
  *this = v10;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v18 == 1)
  {
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }
}

uint64_t std::ranges::__distance::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>>(uint64_t **a1, __n128 a2)
{
  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v5, a1, a2);
  if (v5)
  {
    v3 = 0;
    do
    {
      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v5, v2);
      ++v3;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

uint64_t std::pmr::polymorphic_allocator<applesauce::CF::StringRef>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *(*a1 + 16);

  return v3();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<applesauce::CF::StringRef>,applesauce::CF::StringRef*>(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    do
    {
      v7 = *v5++;
      std::pmr::polymorphic_allocator<applesauce::CF::StringRef>::destroy[abi:ne200100]<applesauce::CF::StringRef>(v7);
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::pmr::polymorphic_allocator<applesauce::CF::StringRef>::destroy[abi:ne200100]<applesauce::CF::StringRef>(v4);
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<applesauce::CF::StringRef>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 3);
  }

  return a1;
}

uint64_t vp::vx::io::Parameter_Controller_Delegate::process(uint64_t a1, uint64_t a2, uint64_t (***a3)(void))
{
  result = (**a3)(a3);
  if (result)
  {
    v6 = *(*a1 + 48);

    return v6(a1, a2, result);
  }

  return result;
}

void vp::vx::io::Parameter_Controller_Delegate::get_property_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void vp::vx::io::Parameter_Controller_Command::set_node(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v4 = (***a2)(*a2);
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = v4;
  v7 = v5;
  (*(*a1 + 40))(a1, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void vp::vx::io::Parameter_Controller_Command::get_property_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void vp::vx::io::operator<<<char const(&)[47]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_27268044C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

double vp::vx::io::Parameter_Exchange::get_parameter(vp::vx::io::Parameter_Exchange *this, void *a2, const vp::vx::io::Parameter_Controller *a3, uint64_t a4)
{
  v6 = a2[1];
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a3;
      if (v6 <= a3)
      {
        v8 = a3 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & a3;
    }

    v9 = *(*a2 + 8 * v8);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == a3)
        {
          if (*(i + 4) == a3)
          {
            (*(*a4 + 24))(v16, a4, a3);
            if (v20)
            {
              LODWORD(result) = v16[0];
              *(i + 5) = v16[0];
              *this = 0;
              *(this + 48) = 1;
              return result;
            }

            result = _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIvEEv(this, v16);
            if ((v20 & 1) == 0 && SHIBYTE(v18) < 0)
            {
              v12 = v16[2];
              v14 = v18;
              v13 = v19;
LABEL_19:
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v13, v12, v14 & 0x7FFFFFFFFFFFFFFFLL);
            }

            return result;
          }
        }

        else
        {
          if (v7.u32[0] > 1uLL)
          {
            if (v11 >= v6)
            {
              v11 %= v6;
            }
          }

          else
          {
            v11 &= v6 - 1;
          }

          if (v11 != v8)
          {
            break;
          }
        }
      }
    }
  }

  v21[0] = 0x1300310000000ALL;
  v21[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Parameter_Exchange.cpp";
  v23 = 0;
  v24 = 0;
  v22 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v25);
  vp::vx::io::operator<<<char const(&)[47]>(v16, v21, "parameter exchange does not support parameter ");
  MEMORY[0x2743CBB40](&v17, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v16);
  *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v21).n128_u64[0];
  if (SHIBYTE(v24) < 0)
  {
    v12 = v22;
    v14 = v24;
    v13 = v25;
    goto LABEL_19;
  }

  return result;
}

void vp::vx::components::Parameter_Logger::configure(std::__shared_weak_count **this)
{
  v40 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__t, this, "vp::vx::components::Parameter_Logger]", 36);
    v4 = HIBYTE(v38);
    v5 = SHIBYTE(v38);
    v6 = v38;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      rep = __t.__d_.__rep_;
      if (v5 >= 0)
      {
        rep = &__t;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v34 = rep;
      v35 = 2080;
      v36 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v38);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__t.__d_.__rep_);
    }
  }

  v11 = this[29];
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    v13 = v12;
    if (v12)
    {
      v14 = this[28];
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        v15 = this[31];
        if (v15)
        {
          v16 = std::__shared_weak_count::lock(v15);
          if (v16)
          {
            v17 = this[30];
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              (v17->__get_deleter)(&__t, v17, 6);
              v30 = __t.__d_.__rep_;
              v31 = v38;
              v38 = 0uLL;
              vp::vx::data_flow::State<void>::~State(&__t);
              v18 = this[1];
              v28[0] = 0;
              v28[1] = v18;
              v29 = xmmword_2727565F0;
              v19 = (v18->__on_zero_shared)(v18, 96, 8);
              v20 = v19;
              *&v21 = v14;
              *(&v21 + 1) = v13;
              atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v22 = *(this + 13);
              v23 = this[27];
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              *v19 = &unk_2881BA018;
              *(v19 + 8) = v21;
              *(v19 + 24) = v22;
              *(v19 + 48) = 0;
              *(v19 + 56) = 0;
              *(v19 + 40) = 0;
              __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
              *(v20 + 64) = std::chrono::system_clock::to_time_t(&__t);
              *(v20 + 72) = 0;
              *(v20 + 80) = 0;
              *(v20 + 88) = 0;
              std::unique_ptr<vp::vx::components::Parameter_Logger::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Parameter_Logger::Node_Decorator_Factory>>::reset[abi:ne200100](v28, v20);
              v24 = v28[0];
              vp::vx::data_flow::State<void>::State(&v27, &v30);
              v26 = v24[1];
              v25 = v24[2];
              if (v25)
              {
                atomic_fetch_add_explicit(v25 + 2, 1uLL, memory_order_relaxed);
              }

              v32[0] = &unk_2881BA2C0;
              v32[1] = v26;
              v32[2] = v25;
              v32[3] = v32;
              std::__function::__value_func<void ()(unsigned int,BOOL const&)>::__value_func[abi:ne200100](buf, v32);
              v39 = 0;
              operator new();
            }
          }
        }

        _os_crash();
        __break(1u);
      }
    }
  }

  while (1)
  {
    _os_crash();
    __break(1u);
  }
}

void sub_272680A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void (***)(void));
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::unique_ptr<vp::vx::components::Parameter_Logger::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Parameter_Logger::Node_Decorator_Factory>>::reset[abi:ne200100](va, 0);
  vp::vx::data_flow::State<void>::~State(va1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  _Unwind_Resume(a1);
}

void (****std::unique_ptr<vp::vx::components::Parameter_Logger::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Parameter_Logger::Node_Decorator_Factory>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (**v2)(v2);
    return ((*v3[1])[3])(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t vp::vx::components::Parameter_Logger::set_time(uint64_t this, uint64_t a2)
{
  *(this + 256) = a2;
  v2 = *(this + 264);
  if (v2)
  {
    *(v2 + 64) = a2;
  }

  return this;
}

void vp::vx::components::Parameter_Logger::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 248);
  *(a1 + 240) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Parameter_Logger::set_state_observer(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 232);
  *(a1 + 224) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Parameter_Logger::set_messenger(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 216);
  *(a1 + 208) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::components::Parameter_Logger::~Parameter_Logger(std::__shared_weak_count **this)
{
  vp::vx::components::Parameter_Logger::~Parameter_Logger(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v20 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Parameter_Logger]", 36);
    v4 = v15;
    v5 = v15;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v15;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::vx::io::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::io::Node_Decorator_Factory>>::reset[abi:ne200100](this + 33, 0);
  v11 = this[31];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = this[29];
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = this[27];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  vp::Context::~Context((this + 2));
}

void virtual thunk tovp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator(vp::vx::components::Parameter_Logger::Node_Decorator *this)
{
  vp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator((this + *(*this - 24)));
}

void vp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator(vp::vx::components::Parameter_Logger::Node_Decorator *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B9EA0;
  *(this + 8) = &unk_2881B9FB0;
  *(this + 5) = &unk_2881B9F60;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, this + *(*this - 24), "vp::vx::components::Parameter_Logger::Node_Decorator]", 52);
    v3 = v14;
    v4 = v14;
    v5 = __p[1];
    v7 = vp::get_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v4 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      v9 = __p[0];
      if (v4 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v16 = v9;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v4) = v14;
    }

    if ((v4 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(this + 7);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *this = off_2881BA048;
  *(this + 8) = off_2881BA0E0;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 8) = &unk_2881C6630;
  v12 = *(this + 10);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

{
  vp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator(this);

  JUMPOUT(0x2743CBFA0);
}

void non-virtual thunk tovp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator(vp::vx::components::Parameter_Logger::Node_Decorator *this)
{
  vp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator((this - 40));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Parameter_Logger::Node_Decorator::~Node_Decorator((this - 40));
}

void vp::vx::components::Parameter_Logger::Node_Decorator::set_parameter(vp::vx::components::Parameter_Logger::Node_Decorator *this@<X0>, float a2@<S0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v18 = a3;
  v17 = a2;
  v8 = (***(this + 1))(*(this + 1));
  if (v8)
  {
    v9 = v8;
    v11[0] = std::chrono::system_clock::now().__d_.__rep_;
    (*(*v9 + 32))(v9, a3, a2);
    if (*(a4 + 48) == 1)
    {
      v16 = "set";
      vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::write(*(this + 6), v11, &v16, &v18, &v17);
    }
  }

  else
  {
    v11[0] = 0x1000620000000DLL;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/components/Parameter_Logger+Node_Decorator.cpp";
    v13 = 0;
    v14 = 0;
    v12 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v15);
    v10 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a4, v11);
    if (SHIBYTE(v14) < 0)
    {
      (*(*v15 + 24))(v15, v12, v14 & 0x7FFFFFFFFFFFFFFFLL, 1, v10);
    }
  }
}

void vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::write(void *result, uint64_t *a2, uint64_t *a3, int *a4, int *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = result[93];
  v11 = result[84];
  explicit = atomic_load_explicit(result + 92, memory_order_acquire);
  v13 = v10 - 1;
  v14 = v11 >= explicit;
  v15 = v11 - explicit;
  if (!v14)
  {
    v13 = -1;
  }

  if (v15 == v13)
  {
    vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::flush(result);
  }

  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  v19 = *a5;
  v20 = result[94];
  v21 = result[93];
  v22 = result[84];
  v23 = v22 + v21 + 1;
  do
  {
    v23 -= v21;
  }

  while (v23 >= v21);
  if (v23 == atomic_load_explicit(result + 92, memory_order_acquire))
  {
    goto LABEL_23;
  }

  v24 = v20 + 24 * v22;
  *v24 = v16;
  *(v24 + 8) = v17;
  *(v24 + 16) = v18;
  *(v24 + 20) = v19;
  atomic_store(v23, result + 84);
  v25 = result[93];
  v26 = result[84];
  v27 = atomic_load_explicit(result + 92, memory_order_acquire);
  if (v26 < v27)
  {
    v25 = 0;
  }

  if (v27 + ~v26 + v25 < result[81] >> 1)
  {
    v28 = result[82];
    if (v28)
    {
      v29 = *result;
      v30 = result[1];
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
      }

      if (*MEMORY[0x277D7F098])
      {
        v34 = v29;
        v31 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
        *(v31 + 16) = 0;
        *(v31 + 24) = v34;
        *v31 = &unk_2881BA270;
        *(v31 + 8) = 0;

        caulk::concurrent::messenger::enqueue(v28, v31);
        return;
      }

      __break(1u);
LABEL_23:
      v35 = 0;
      memset(v38, 0, sizeof(v38));
      v32 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v36 = 134217984;
      v37 = 0;
      _os_log_send_and_compose_impl(v33, &v35, v38, 80, &dword_2724B4000, v32, 16, "assertion failure: m_queue.push(std::forward_as_tuple(values...)) -> %llu", &v36);
      _os_crash_msg();
      __break(1u);
    }

    vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::flush(result);
  }
}

void sub_27268149C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::flush(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  v12 = a1;
  v2 = *(a1 + 752);
  v3 = *(a1 + 744);
  explicit = atomic_load_explicit((a1 + 672), memory_order_acquire);
  v5 = *(a1 + 736);
  v6 = explicit - v5;
  if (explicit >= v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7 + v6;
  if (v7 + v6)
  {
    v9 = v7 + explicit;
    v10 = v2 + 24 * v5;
    v11 = v7 + explicit - v3;
    if (v7 + explicit <= v3)
    {
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EPKcjfEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_S9_jfEE6Buffer5flushEvEUlRKT_E_EEvPSA_SK_SI_(v10, v10 + 24 * v8, &v12);
      if (v9 == v3)
      {
        v11 = 0;
      }

      else
      {
        v11 = v9;
      }
    }

    else
    {
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EPKcjfEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_S9_jfEE6Buffer5flushEvEUlRKT_E_EEvPSA_SK_SI_(v10, v2 + 24 * v3, &v12);
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EPKcjfEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_S9_jfEE6Buffer5flushEvEUlRKT_E_EEvPSA_SK_SI_(v2, v2 + 24 * (v5 - v3) + 24 * v8, &v12);
    }

    atomic_store(v11, (a1 + 736));
  }

  std::ostream::flush();

  std::mutex::unlock((a1 + 16));
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjfEE6Buffer5writeERKS6_RKS8_RKjRKfEUlT_E_JNSt3__18weak_ptrISA_EEEE7performEv(caulk::concurrent::message *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(a1 + 3);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v3)
      {
        vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::flush(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_weak(v2);
    v6 = *(a1 + 4);
    *a1 = &unk_2881BA298;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a1 = &unk_2881BA298;
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjfEE6Buffer5writeERKS6_RKS8_RKjRKfEUlT_E_JNSt3__18weak_ptrISA_EEEE7performEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (v3)
    {
      v4 = v3;
      if (v2)
      {
        vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::flush(v2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjfEE6Buffer5writeERKS6_RKS8_RKjRKfEUlT_E_JNSt3__18weak_ptrISA_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881BA298;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjfEE6Buffer5writeERKS6_RKS8_RKjRKfEUlT_E_JNSt3__18weak_ptrISA_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881BA298;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjfEE6Buffer5writeERKS6_RKS8_RKjRKfEUlT_E_JNSt3__18weak_ptrISA_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881BA298;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EPKcjfEE6Buffer5writeERKS6_RKS8_RKjRKfEUlT_E_JNSt3__18weak_ptrISA_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881BA298;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

uint64_t _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EPKcjfEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_S9_jfEE6Buffer5flushEvEUlRKT_E_EEvPSA_SK_SI_(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = MEMORY[0x277D82680];
    do
    {
      v7 = *a3;
      vp::utility::operator<<((*a3 + 80), *v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v7 + 80), ", ", 2);
      v8 = strlen(*(v5 + 8));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v7 + 80), *(v5 + 8), v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v7 + 80), ", ", 2);
      v9 = MEMORY[0x2743CBB40](v7 + 80, *(v5 + 16));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
      v10 = std::ostream::operator<<();
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v12, v6);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v12);
      std::ostream::put();
      result = std::ostream::flush();
      v5 += 24;
    }

    while (v5 != a2);
  }

  return result;
}

void vp::vx::components::Parameter_Logger::Node_Decorator::get_parameter(vp::vx::components::Parameter_Logger::Node_Decorator *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a2;
  v6 = (***(this + 1))(*(this + 1));
  if (v6)
  {
    v7 = v6;
    v9[0] = std::chrono::system_clock::now().__d_.__rep_;
    (*(*v7 + 24))(v7, a2);
    if (*(a3 + 48) == 1)
    {
      v14 = "get";
      vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::write(*(this + 6), v9, &v14, &v15, a3);
    }
  }

  else
  {
    v9[0] = 0x1000500000000DLL;
    v9[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/components/Parameter_Logger+Node_Decorator.cpp";
    v11 = 0;
    v12 = 0;
    v10 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v13);
    v8 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a3, v9);
    if (SHIBYTE(v12) < 0)
    {
      (*(*v13 + 24))(v13, v10, v12 & 0x7FFFFFFFFFFFFFFFLL, 1, v8);
    }
  }
}

double vp::vx::components::Parameter_Logger::Node_Decorator::get_parameter_ids@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = (***(a1 + 8))(*(a1 + 8));
  if (v3)
  {
    (*(*v3 + 16))(&v6);
    v5 = v7;
    result = *&v6;
    *a2 = v6;
    a2[2] = v5;
  }

  return result;
}

uint64_t non-virtual thunk tovp::vx::components::Parameter_Logger::Node_Decorator::has_parameter(uint64_t a1)
{
  result = (***(a1 - 32))(*(a1 - 32));
  if (result)
  {
    v2 = *(*result + 8);

    return v2();
  }

  return result;
}

uint64_t (***non-virtual thunk tovp::vx::components::Parameter_Logger::Node_Decorator::has_parameter(vp::vx::components::Parameter_Logger::Node_Decorator *this))(void)
{
  result = (***(this - 4))(*(this - 4));
  if (result)
  {
    v2 = **result;

    return v2();
  }

  return result;
}

uint64_t vp::vx::components::Parameter_Logger::Node_Decorator::has_parameter(uint64_t a1)
{
  result = (***(a1 + 8))(*(a1 + 8));
  if (result)
  {
    v2 = *(*result + 8);

    return v2();
  }

  return result;
}

uint64_t (***vp::vx::components::Parameter_Logger::Node_Decorator::has_parameter(vp::vx::components::Parameter_Logger::Node_Decorator *this))(void)
{
  result = (***(this + 1))(*(this + 1));
  if (result)
  {
    v2 = **result;

    return v2();
  }

  return result;
}

uint64_t vp::vx::components::Parameter_Logger::Node_Decorator::as_parameter_controller(vp::vx::components::Parameter_Logger::Node_Decorator *this)
{
  return this + 40;
}

{
  return this + 40;
}

__n128 vp::vx::components::Parameter_Logger::Node_Decorator_Factory::new_node_decorator@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    *&__src[8] = 0;
    *&v30 = 0;
    *__src = std::pmr::get_default_resource(a1);
    vp::vx::data_flow::State<void>::get_value((a1 + 40), __src);
    v8 = *vp::vx::data_flow::Value::view_storage(__src);
    vp::vx::data_flow::Value::~Value(__src);
    if (v8 == 1)
    {
      v9 = *a2 + *(**a2 - 24);
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10)
      {
        v31 = 0u;
        v32 = 0u;
        *__src = 0u;
        v30 = 0u;
        v24 = *(a1 + 64);
        v12 = localtime(&v24);
        strftime(__src, 0x40uLL, "%Y%m%d.%H%M%S", v12);
        if (*(a1 + 95) < 0)
        {
          std::string::__init_copy_ctor_external(&v23, *(a1 + 72), *(a1 + 80));
        }

        else
        {
          v23 = *(a1 + 72);
        }

        std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v23, "vp.");
        v13 = (&v28 + 7);
        do
        {
          v14 = v13->__r_.__value_.__s.__data_[1];
          v13 = (v13 + 1);
        }

        while (v14);
        std::string::append[abi:ne200100]<char const*,0>(&v23, __src, v13);
        std::string::append(&v23, ".", 1uLL);
        vp::vx::io::Object::Log_Context::get_description(&__p, v10);
        if (v27 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v27 >= 0)
        {
          v16 = HIBYTE(v27);
        }

        else
        {
          v16 = v27;
        }

        std::string::append(&v23, p_p, v16);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p);
        }

        std::string::append(&v23, ".Parameter.csv", 0xEuLL);
        v17 = (*(*a3 + 16))(a3, 88, 8);
        v18 = *a2;
        *a2 = 0;
        v27 = *(a2 + 1);
        v28 = a2[3];
        v19 = *(a1 + 24);
        v20 = *(a1 + 32);
        v25[0] = v19;
        v25[1] = v20;
        __p = v18;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
          vp::vx::components::Parameter_Logger::Node_Decorator::Node_Decorator(v17, &__p, v25, &v23);
        }

        vp::vx::components::Parameter_Logger::Node_Decorator::Node_Decorator(v17, &__p, v25, &v23);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  v21 = *a2;
  *a2 = 0;
  *a4 = v21;
  result = *(a2 + 1);
  *(a4 + 8) = result;
  *(a4 + 24) = a2[3];
  return result;
}

void sub_2726821AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    std::unique_ptr<vp::vx::components::Parameter_Logger::Node_Decorator,vp::Allocator_Delete<vp::vx::components::Parameter_Logger::Node_Decorator>>::reset[abi:ne200100](&a9, 0);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<vp::vx::components::Parameter_Logger::Node_Decorator,vp::Allocator_Delete<vp::vx::components::Parameter_Logger::Node_Decorator>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 112))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::vx::components::Parameter_Logger::Node_Decorator::Node_Decorator(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *MEMORY[0x277D85DE8];
  a1[8] = &unk_2881C6630;
  operator new();
}

void sub_272682A94(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    std::ostream::~ostream();
    MEMORY[0x2743CBE30](v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer,std::allocator<vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer>>::__on_zero_shared(uint64_t a1)
{
  vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer::flush(a1 + 24);
  v2 = *(a1 + 768);
  explicit = atomic_load_explicit((a1 + 696), memory_order_acquire);
  v4 = *(a1 + 760);
  v5 = v4 - explicit;
  if (v4 <= explicit)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  if (v6 != v5)
  {
    v7 = v6 + explicit;
    v8 = v7 >= v2;
    v9 = v7 - v2;
    if (!v9)
    {
      v7 = 0;
    }

    if (v9 == 0 || !v8)
    {
      v9 = v7;
    }

    atomic_store(v9, (a1 + 760));
  }

  v10 = *(a1 + 776);
  if (v10)
  {
    free(*(v10 - 8));
  }

  v11 = *(a1 + 688);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = MEMORY[0x277D82810];
  v13 = *MEMORY[0x277D82810];
  *(a1 + 104) = *MEMORY[0x277D82810];
  *(a1 + 104 + *(v13 - 24)) = *(v12 + 24);
  MEMORY[0x2743CBA00](a1 + 112);
  std::ostream::~ostream();
  MEMORY[0x2743CBE30](a1 + 520);
  std::mutex::~mutex((a1 + 40));
  v14 = *(a1 + 32);
  if (v14)
  {

    std::__shared_weak_count::__release_weak(v14);
  }
}

void std::__shared_ptr_emplace<vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer,std::allocator<vp::utility::CSV_Log<vp::utility::ISO_8601,char const*,unsigned int,float>::Buffer>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881BA238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::Parameter_Logger::Node_Decorator_Factory::~Node_Decorator_Factory(void **this)
{
  *this = &unk_2881BA018;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  vp::vx::data_flow::State<void>::~State(this + 10);
  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BA018;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  vp::vx::data_flow::State<void>::~State(this + 10);
  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__function::__func<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      if (*(a1 + 8))
      {
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void std::__function::__func<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881BA2C0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BA2C0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::components::Parameter_Logger::Node_Decorator_Factory::set_should_enable_parameter_loggers(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BA2C0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::vector<vp::vx::database::v1::syntax::Flag>::__emplace_back_slow_path<vp::vx::database::v1::syntax::Flag>(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  v17 = a1;
  if (v9)
  {
    std::allocator<vp::vx::database::v1::syntax::Flag>::allocate_at_least[abi:ne200100](v9);
  }

  v14 = 0;
  v15 = (16 * v5);
  *(&v16 + 1) = 0;
  *v15 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v16 = 16 * v5 + 16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vp::vx::database::v1::syntax::Flag>,vp::vx::database::v1::syntax::Flag*>(a1, v3, v4, 0);
  v10 = *a1;
  *a1 = 0;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<vp::vx::database::v1::syntax::Flag>::~__split_buffer(&v14);
  return v13;
}

void vp::vx::database::v1::syntax::Flag::~Flag(vp::vx::database::v1::syntax::Flag *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

uint64_t *std::vector<vp::vx::database::v1::syntax::Rule>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    std::allocator<vp::vx::database::v1::syntax::Rule>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

void sub_2726832BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<vp::vx::database::v1::syntax::Rule>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void vp::vx::database::v1::fbs::Parser::parse_rule(uint64_t a1, uint64_t *a2, int *a3)
{
  *a1 = &unk_2881BA308;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  v6 = (a1 + 16);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v7 = (a3 - *a3);
  v8 = *v7;
  if (v8 <= 4)
  {
    v10 = *a2;
  }

  else
  {
    v9 = v7[2];
    if (v7[2])
    {
      LODWORD(v9) = *(a3 + v9);
    }

    *(a1 + 8) = v9;
    v10 = *a2;
  }

  (*(*v10 + 16))(&v74);
  v11 = v74;
  v74 = 0;
  v12 = *v6;
  *v6 = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
    v13 = v74;
    v74 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  v14 = (a3 - *a3);
  if (*v14 >= 9u)
  {
    v15 = v14[4];
    if (v14[4])
    {
      v16 = *(a3 + v15);
      v17 = (a3 + v15 + v16);
      v18 = (v17 - *v17);
      if (*v18 >= 5u)
      {
        if (v18[2])
        {
          (*(*a2[2] + 16))(&v73);
          v19 = v73;
          v73 = 0;
          v20 = *(a1 + 24);
          *(a1 + 24) = v19;
          if (v20)
          {
            (*(*v20 + 8))(v20);
            v21 = v73;
            v73 = 0;
            if (v21)
            {
              (*(*v21 + 8))(v21);
            }
          }
        }
      }

      v22 = (v17 - *v17);
      if (*v22 >= 7u)
      {
        v23 = v22[3];
        if (v22[3])
        {
          v24 = (v17 + v23);
          v25 = *v24;
          v71 = 0uLL;
          v72 = 0;
          std::vector<vp::vx::database::v1::syntax::Rule>::reserve(&v71, *(v24 + v25));
          v26 = *(v24 + v25);
          if (v26)
          {
            v27 = 4 * v26;
            v28 = (a3 + v16 + v15 + v25 + v23 + 4);
            do
            {
              vp::vx::database::v1::fbs::Parser::parse_rule(&v65, a2, (v28 + *v28));
              v29 = *(&v71 + 1);
              if (*(&v71 + 1) >= v72)
              {
                v32 = std::vector<vp::vx::database::v1::syntax::Rule>::__emplace_back_slow_path<vp::vx::database::v1::syntax::Rule>(&v71, &v65);
              }

              else
              {
                *(*(&v71 + 1) + 8) = v66;
                *v29 = &unk_2881BA308;
                v30 = v67;
                v67 = 0u;
                *(v29 + 16) = v30;
                *(v29 + 40) = 0;
                *(v29 + 48) = 0u;
                *(v29 + 64) = 0u;
                v31 = *v68;
                *v68 = 0;
                *(v29 + 32) = v31;
                *(v29 + 48) = *&v68[16];
                memset(&v68[8], 0, 24);
                *(v29 + 80) = 0;
                *(v29 + 64) = v69;
                *(v29 + 80) = v70;
                v69 = 0u;
                v70 = 0;
                v32 = v29 + 88;
              }

              *(&v71 + 1) = v32;
              v65 = &unk_2881BA308;
              v75[0] = &v69;
              std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](v75);
              v75[0] = &v68[8];
              std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](v75);
              v33 = *v68;
              *v68 = 0;
              if (v33)
              {
                (*(*v33 + 8))(v33);
              }

              v34 = *(&v67 + 1);
              *(&v67 + 1) = 0;
              if (v34)
              {
                (*(*v34 + 8))(v34);
              }

              v35 = v67;
              *&v67 = 0;
              if (v35)
              {
                (*(*v35 + 8))(v35);
              }

              ++v28;
              v27 -= 4;
            }

            while (v27);
          }

          v60 = v71;
          v36 = v72;
          v72 = 0;
          v71 = 0uLL;
          std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate((a1 + 40));
          *(a1 + 40) = v60;
          *(a1 + 56) = v36;
          memset(v64, 0, sizeof(v64));
          v65 = v64;
          std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v65);
          v65 = &v71;
          std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v65);
        }
      }
    }
  }

  v37 = (a3 - *a3);
  if (*v37 >= 0xBu)
  {
    v38 = v37[5];
    if (v37[5])
    {
      v39 = *(a3 + v38);
      v40 = (a3 + v38 + v39);
      v41 = (v40 - *v40);
      if (*v41 >= 5u)
      {
        if (v41[2])
        {
          (*(*a2[2] + 16))(&v63);
          v42 = v63;
          v63 = 0;
          v43 = *(a1 + 32);
          *(a1 + 32) = v42;
          if (v43)
          {
            (*(*v43 + 8))(v43);
            v44 = v63;
            v63 = 0;
            if (v44)
            {
              (*(*v44 + 8))(v44);
            }
          }
        }
      }

      v45 = (v40 - *v40);
      if (*v45 >= 7u)
      {
        v46 = v45[3];
        if (v45[3])
        {
          v47 = (v40 + v46);
          v48 = *v47;
          v71 = 0uLL;
          v72 = 0;
          std::vector<vp::vx::database::v1::syntax::Rule>::reserve(&v71, *(v47 + v48));
          v49 = *(v47 + v48);
          if (v49)
          {
            v50 = 4 * v49;
            v51 = (a3 + v39 + v38 + v48 + v46 + 4);
            do
            {
              vp::vx::database::v1::fbs::Parser::parse_rule(&v65, a2, (v51 + *v51));
              v52 = *(&v71 + 1);
              if (*(&v71 + 1) >= v72)
              {
                v55 = std::vector<vp::vx::database::v1::syntax::Rule>::__emplace_back_slow_path<vp::vx::database::v1::syntax::Rule>(&v71, &v65);
              }

              else
              {
                *(*(&v71 + 1) + 8) = v66;
                *v52 = &unk_2881BA308;
                v53 = v67;
                v67 = 0u;
                *(v52 + 16) = v53;
                *(v52 + 40) = 0;
                *(v52 + 48) = 0u;
                *(v52 + 64) = 0u;
                v54 = *v68;
                *v68 = 0;
                *(v52 + 32) = v54;
                *(v52 + 48) = *&v68[16];
                memset(&v68[8], 0, 24);
                *(v52 + 80) = 0;
                *(v52 + 64) = v69;
                *(v52 + 80) = v70;
                v69 = 0u;
                v70 = 0;
                v55 = v52 + 88;
              }

              *(&v71 + 1) = v55;
              v65 = &unk_2881BA308;
              v75[0] = &v69;
              std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](v75);
              v75[0] = &v68[8];
              std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](v75);
              v56 = *v68;
              *v68 = 0;
              if (v56)
              {
                (*(*v56 + 8))(v56);
              }

              v57 = *(&v67 + 1);
              *(&v67 + 1) = 0;
              if (v57)
              {
                (*(*v57 + 8))(v57);
              }

              v58 = v67;
              *&v67 = 0;
              if (v58)
              {
                (*(*v58 + 8))(v58);
              }

              ++v51;
              v50 -= 4;
            }

            while (v50);
          }

          v61 = v71;
          v59 = v72;
          v72 = 0;
          v71 = 0uLL;
          std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate((a1 + 64));
          *(a1 + 64) = v61;
          *(a1 + 80) = v59;
          memset(v62, 0, sizeof(v62));
          v65 = v62;
          std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v65);
          v65 = &v71;
          std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v65);
        }
      }
    }
  }
}

uint64_t std::vector<vp::vx::database::v1::syntax::Rule>::__emplace_back_slow_path<vp::vx::database::v1::syntax::Rule>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::allocator<vp::vx::database::v1::syntax::Rule>::allocate_at_least[abi:ne200100](v5);
  }

  v12 = 0;
  v13 = 88 * v2;
  vp::vx::database::v1::syntax::Rule::Rule(88 * v2, a2);
  v14 = (88 * v2 + 88);
  v6 = a1[1];
  v7 = 88 * v2 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vp::vx::database::v1::syntax::Rule>,vp::vx::database::v1::syntax::Rule*>(*a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<vp::vx::database::v1::syntax::Rule>::~__split_buffer(&v12);
  return v11;
}

void sub_272683BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<vp::vx::database::v1::syntax::Rule>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void vp::vx::database::v1::syntax::Rule::~Rule(vp::vx::database::v1::syntax::Rule *this)
{
  *this = &unk_2881BA308;
  v5 = (this + 64);
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 40);
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  *this = &unk_2881BA308;
  v5 = (this + 64);
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 40);
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BA308;
  v5 = (this + 64);
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 40);
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

void std::allocator<vp::vx::database::v1::syntax::Rule>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 vp::vx::database::v1::syntax::Rule::Rule(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *a1 = &unk_2881BA308;
  v2 = *(a2 + 16);
  *(a2 + 16) = 0u;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0u;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a2 + 64) = 0u;
  return result;
}

uint64_t (***std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vp::vx::database::v1::syntax::Rule>,vp::vx::database::v1::syntax::Rule*>(uint64_t (***result)(void, __n128), uint64_t (***a2)(void, __n128), uint64_t a3))(void, __n128)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      v7 = vp::vx::database::v1::syntax::Rule::Rule(a3, v6);
      v6 += 11;
      a3 += 88;
    }

    while (v6 != a2);
    v8 = v5;
    v9 = v5;
    do
    {
      v10 = *v9;
      v9 += 11;
      result = (*v10)(v5, v7);
      v8 += 11;
      v5 = v9;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<vp::vx::database::v1::syntax::Rule>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 88);
    *(a1 + 16) = i - 88;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator<vp::vx::database::v1::syntax::Flag>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vp::vx::database::v1::syntax::Flag>,vp::vx::database::v1::syntax::Flag*>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v6 += 16;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<vp::vx::database::v1::syntax::Flag>>::destroy[abi:ne200100]<vp::vx::database::v1::syntax::Flag,void,0>(v5);
      v5 += 16;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<vp::vx::database::v1::syntax::Flag>::~__split_buffer(uint64_t a1)
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
    std::allocator_traits<std::allocator<vp::vx::database::v1::syntax::Flag>>::destroy[abi:ne200100]<vp::vx::database::v1::syntax::Flag,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<vp::vx::database::v1::syntax::Flag>>::destroy[abi:ne200100]<vp::vx::database::v1::syntax::Flag,void,0>(uint64_t a1)
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

void vp::vx::database::v1::xml::Parser::parse_database_rules(vp::vx::database::v1::xml::Parser *this, const vp::xml::Node *a2, uint64_t *a3)
{
  vp::xml::Node::children(v51, a3);
  v37 = v51;
  v38 = 0;
  v39 = 0uLL;
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v64, &v37, v5);
  v6 = 0;
  while (v64)
  {
    v7 = vp::xml::Node::name(v64, v65);
    if (vp::vx::database::v1::syntax::constexpr_hash(v7, v8, v9) == 0x6712426A28513DA9)
    {
      ++v6;
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v64, v10);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  if (BYTE8(v39) == 1 && v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<vp::vx::database::v1::syntax::Rule>::reserve(this, v6);
  vp::xml::Node::children(v46, a3);
  v48[0] = v46;
  v48[1] = 0;
  v49 = 0;
  v50 = 0;
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v44, v48, v11);
  while (v44)
  {
    v12 = vp::xml::Node::name(v44, v45);
    if (vp::vx::database::v1::syntax::constexpr_hash(v12, v13, v14) != 0x6712426A28513DA9)
    {
      goto LABEL_60;
    }

    v64 = &unk_2881BA308;
    v65 = 0;
    v66 = 0u;
    memset(v67, 0, sizeof(v67));
    v68 = 0u;
    v69 = 0;
    v17 = v44;
    v16 = v45;
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *(v17 + 56);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v18 = *(v44 + 56);
    }

    LOWORD(v65) = v18;
    vp::xml::Node::children(v59, &v44);
    v61[0] = v59;
    v62 = 0;
    v63 = 0;
    v61[1] = 0;
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v57, v61, v19);
    while (v57)
    {
      v20 = vp::xml::Node::name(v57, v58);
      v23 = vp::vx::database::v1::syntax::constexpr_hash(v20, v21, v22);
      if (v23 <= 0x373E6888939862DALL)
      {
        if (v23 == 0xB6C4DFAE12A62C99)
        {
          vp::vx::database::v1::xml::Parser::parse_database_rules(&v53, a2);
          std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate(&v68);
          v68 = v53;
          v69 = v54;
          v70 = &v53;
          v54 = 0;
          v53 = 0uLL;
          goto LABEL_36;
        }

        if (v23 == 0xEAFC51725DBE15E2)
        {
          v70 = &unk_2881BEBD0;
          vp::vx::database::v1::syntax::decisions::Then::Parser::parse_decision();
        }
      }

      else
      {
        switch(v23)
        {
          case 0x373E6888939862DBLL:
            v70 = &unk_2881C6360;
            vp::vx::database::v1::syntax::conditions::When::Parser::parse_condition();
          case 0x49A657AD5F6DD890:
            v70 = &unk_2881BEBD0;
            vp::vx::database::v1::syntax::decisions::Then::Parser::parse_decision();
          case 0x7246B771ECB80737:
            vp::vx::database::v1::xml::Parser::parse_database_rules(&v55, a2);
            std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate(v67 + 1);
            *(v67 + 8) = v55;
            *(&v67[1] + 1) = v56;
            v56 = 0;
            v55 = 0uLL;
            v70 = &v55;
LABEL_36:
            std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v70);
            break;
        }
      }

      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v57, v24);
    }

    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    if (v63 == 1 && v62)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    }

    LOWORD(v38) = v65;
    v37 = &unk_2881BA308;
    v25 = v66;
    v66 = 0u;
    v39 = v25;
    *v40 = v67[0];
    *&v40[16] = v67[1];
    v41 = v68;
    v42 = v69;
    v69 = 0;
    v68 = 0u;
    v43 = 1;
    memset(v67, 0, sizeof(v67));
    v64 = &unk_2881BA308;
    v61[0] = &v68;
    std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](v61);
    v61[0] = v67 + 1;
    std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](v61);
    v26 = *&v67[0];
    *&v67[0] = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = *(&v66 + 1);
    *(&v66 + 1) = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = v66;
    *&v66 = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    if (v43 == 1)
    {
      v29 = *(this + 1);
      if (v29 >= *(this + 2))
      {
        v32 = std::vector<vp::vx::database::v1::syntax::Rule>::__emplace_back_slow_path<vp::vx::database::v1::syntax::Rule>(this, &v37);
      }

      else
      {
        *(v29 + 8) = v38;
        *v29 = &unk_2881BA308;
        v30 = v39;
        v39 = 0u;
        *(v29 + 16) = v30;
        *(v29 + 40) = 0;
        *(v29 + 48) = 0u;
        *(v29 + 64) = 0u;
        v31 = *v40;
        *v40 = 0;
        *(v29 + 32) = v31;
        *(v29 + 48) = *&v40[16];
        memset(&v40[8], 0, 24);
        *(v29 + 80) = 0;
        v15 = v41;
        *(v29 + 64) = v41;
        *(v29 + 80) = v42;
        v41 = 0u;
        v42 = 0;
        v32 = v29 + 88;
      }

      *(this + 1) = v32;
      if (v43)
      {
        v37 = &unk_2881BA308;
        v64 = &v41;
        std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v64);
        v64 = &v40[8];
        std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v64);
        v33 = *v40;
        *v40 = 0;
        if (v33)
        {
          (*(*v33 + 8))(v33);
        }

        v34 = *(&v39 + 1);
        *(&v39 + 1) = 0;
        if (v34)
        {
          (*(*v34 + 8))(v34);
        }

        v35 = v39;
        *&v39 = 0;
        if (v35)
        {
          (*(*v35 + 8))(v35);
        }
      }
    }

LABEL_60:
    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::element_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v44, v15);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v50 == 1 && v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }
}

void sub_272684914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, void **a14)
{
  a14 = a12;
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t std::optional<vp::vx::database::v1::syntax::Rule>::~optional(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    *a1 = &unk_2881BA308;
    v6 = (a1 + 64);
    std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v6);
    v6 = (a1 + 40);
    std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v6);
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  return a1;
}

uint64_t std::optional<vp::vx::database::v1::syntax::Flag>::~optional(uint64_t a1)
{
  if (*(a1 + 16) == 1)
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

  return a1;
}

void vp::vx::components::Phone_Proximity_Detector::get_dsp_property_override(std::pmr *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *(a3 + 24) = 0;
  if (a2 == 1700885107)
  {
    v14 = 0;
    v15 = 0;
    default_resource = std::pmr::get_default_resource(a1);
    vp::vx::data_flow::State<void>::get_value(a1 + 30, &default_resource);
    v5 = vp::vx::data_flow::Value::view_storage(&default_resource);
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    vp::vx::data_flow::Value::~Value(&default_resource);
    if (v8)
    {
      v9 = (std::chrono::system_clock::now().__d_.__rep_ - v7 < 3000001) | v6 & 1;
    }

    else
    {
      v9 = 0;
    }

    v12 = v9;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int>(&v16, "UInt32", &v12);
    default_resource = &v16;
    v14 = 1;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&default_resource);
    if (*(a3 + 24) == 1)
    {
      v11 = *a3;
      *a3 = CFDictionaryRef;
      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a3);
      *(a3 + 24) = 1;
      *a3 = CFDictionaryRef;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }
}

void sub_272684C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2881BA720[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN10applesauce2CF13DictionaryRefEN2vp2vx9data_flow5StateISB_EEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSI_1EJS8_SB_SG_EEEEEEDcSK_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<vp::vx::components::Phone_Proximity_Detector::State>>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  result = **a3;
  v3[1].n128_u64[0] = (*a3)[1].n128_u64[0];
  *v3 = result;
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<vp::vx::components::Phone_Proximity_Detector::State>>::copy_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  result = **a3;
  v3[1].n128_u64[0] = (*a3)[1].n128_u64[0];
  *v3 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<vp::vx::components::Phone_Proximity_Detector::State>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<vp::vx::components::Phone_Proximity_Detector::State>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 24, 8);
  *a2 = result;
  return result;
}

void vp::vx::components::Phone_Proximity_Detector::configure(vp::vx::components::Phone_Proximity_Detector *this)
{
  v25 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Phone_Proximity_Detector]", 44);
    v4 = v20;
    v5 = v20;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v22 = v9;
      v23 = 2080;
      v24 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = v20;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(this + 2);
  if (v11 && (v12 = std::__shared_weak_count::lock(v11)) != 0 && (v13 = *(this + 1), atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), v13))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    v14 = *(this + 4);
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      if (v15)
      {
        v16 = *(this + 3);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          v17 = (*(**(this + 5) + 16))(*(this + 5));
          vp::vx::Voice_Processor_State_Manager::create_state_for_darwin_notification(&v18, v13, v17);
        }
      }
    }
  }

  else
  {
    _os_crash();
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void sub_272685334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalINS3_10components24Phone_Proximity_Detector5StateEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateINS8_13State_TrackerEJbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v4 = *a3;
  v5 = *vp::vx::data_flow::Value::view_storage(**a2);
  if ((v5 & 1) != 0 || *(a1 + 24) == 1)
  {
    v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v7 = *(a1 + 24);
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    if ((v7 & 1) == 0)
    {
      *(a1 + 24) = 1;
    }
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 24);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::optional<vp::vx::components::Phone_Proximity_Detector::State>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  result = v11;
  *storage = v11;
  *(storage + 16) = v12;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalINS3_10components24Phone_Proximity_Detector5StateEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateINS8_13State_TrackerEJbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881BA680;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components24Phone_Proximity_Detector9configureEvE3__2JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EEclEOSW_OSX_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  if (*vp::vx::data_flow::Value::view_storage(**a2))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components24Phone_Proximity_Detector9configureEvE3__2JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BA638;
  *(a2 + 8) = *(result + 8);
  return result;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components24Phone_Proximity_Detector9configureEvE3__1JbNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = (*vp::vx::data_flow::Value::view_storage(v3[1]) == 5) & *v6;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v7;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components24Phone_Proximity_Detector9configureEvE3__1JbNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BA5F0;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components24Phone_Proximity_Detector9configureEvE3__0JNS4_12Time_StampedIyEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSE_EEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = vp::vx::data_flow::Value::view_storage(**a2);
  v6 = *v5;
  v7 = *(a1 + 8);
  log = vp::get_log(v5);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, v7, "vp::vx::components::Phone_Proximity_Detector]", 44);
    v10 = v21;
    v11 = v21;
    v12 = __p[1];
    v13 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (v11 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = __p[0];
      if (v11 >= 0)
      {
        v15 = __p;
      }

      if (v14)
      {
        v16 = " ";
      }

      else
      {
        v16 = "";
      }

      *buf = 136315650;
      v23 = v15;
      v24 = 2080;
      v25 = v16;
      if (v6)
      {
        v17 = "close";
      }

      else
      {
        v17 = "not close";
      }

      v26 = 2080;
      v27 = v17;
      _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEFAULT, "%s%sphone is %s to ear", buf, 0x20u);
      LOBYTE(v11) = v21;
    }

    if ((v11 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v18);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v6 != 0;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components24Phone_Proximity_Detector9configureEvE3__0JNS4_12Time_StampedIyEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSE_EEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BA478;
  a2[1] = v2;
  return result;
}

void vp::vx::components::Phone_Proximity_Detector::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Phone_Proximity_Detector::set_state_manager(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Phone_Proximity_Detector::~Phone_Proximity_Detector(std::__shared_weak_count **this)
{
  vp::vx::components::Phone_Proximity_Detector::~Phone_Proximity_Detector(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v21 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Phone_Proximity_Detector]", 44);
    v4 = v16;
    v5 = v16;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v18 = v9;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v16;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 30);
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(this + 8);
  this[12] = &unk_2881C6630;
  v11 = this[14];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = this[6];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = this[4];
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = this[2];
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

void *vp::objc::ID::ID(void *a1, id *a2)
{
  *a1 = *a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *a2;
  *a2 = 0;

  objc_autoreleasePoolPop(v4);
  return a1;
}

id *vp::objc::ID::operator=(id *a1, id *a2)
{
  v4 = objc_autoreleasePoolPush();
  objc_storeStrong(a1, *a2);
  objc_autoreleasePoolPop(v4);
  return a1;
}

{
  v4 = objc_autoreleasePoolPush();
  objc_storeStrong(a1, *a2);
  v5 = *a2;
  *a2 = 0;

  objc_autoreleasePoolPop(v4);
  return a1;
}

void vp::objc::ID::~ID(id *this)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *this;
  *this = 0;

  objc_autoreleasePoolPop(v2);
}

void **vp::objc::ID::operator=(void **a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *a1;
  *a1 = 0;

  objc_autoreleasePoolPop(v2);
  return a1;
}

uint64_t vp::vx::io::Input_Port::get_terminal(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return 0;
  }

  return result;
}

void vp::vx::io::Input_Port::process(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (!a2)
  {
    LOBYTE(v10[0]) = 0;
    v14 = 1;
LABEL_3:
    vp::vx::io::validate_nonnull(v10, *a4, a4[1], *(a4 + 4));
    if (v14)
    {
      (*(*a1 + 112))(a1, a3, *a4, a4[1], *(a4 + 4));
    }

    else
    {
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v10);
      if ((v14 & 1) == 0 && SHIBYTE(v12) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v13, v11, v12 & 0x7FFFFFFFFFFFFFFFLL);
      }
    }

    return;
  }

  v15[0] = 0x18001400000004;
  v15[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Port.cpp";
  v17 = 0;
  v18 = 0;
  v16 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v19);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v10, v15);
  if (SHIBYTE(v18) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v19, v16, v18 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v14)
  {
    goto LABEL_3;
  }

  v9 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v10);
  if ((v14 & 1) == 0 && SHIBYTE(v12) < 0)
  {
    (*(*v13 + 24))(v13, v11, v12 & 0x7FFFFFFFFFFFFFFFLL, 1, v9);
  }
}

void vp::vx::io::Input_Port::get_time(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    LOBYTE(v8[0]) = 0;
    v12 = 1;
LABEL_3:
    (*(*a1 + 56))(a1, a3);
    *(a4 + 64) = 1;
    return;
  }

  v13[0] = 0x18001400000004;
  v13[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Port.cpp";
  v15 = 0;
  v16 = 0;
  v14 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v17);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v8, v13);
  if (SHIBYTE(v16) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v17, v14, v16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v12)
  {
    goto LABEL_3;
  }

  v7 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEI14AudioTimeStampEEv(a4, v8);
  if ((v12 & 1) == 0 && SHIBYTE(v10) < 0)
  {
    (*(*v11 + 24))(v11, v9, v10 & 0x7FFFFFFFFFFFFFFFLL, 1, v7);
  }
}

__n128 _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEI14AudioTimeStampEEv(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 5);
  result = *(a2 + 6);
  v6 = *(a2 + 2);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 2) = 0;
  *a1 = v2;
  *(a1 + 4) = v3;
  *(a1 + 8) = v6;
  *(a1 + 24) = result;
  *(a1 + 40) = v4;
  *(a1 + 64) = 0;
  return result;
}

void vp::vx::io::Input_Port::get_format(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    LOBYTE(v6[0]) = 0;
    v10 = 1;
LABEL_3:
    (*(*a1 + 48))(a1);
    *(a3 + 48) = 1;
    return;
  }

  v11[0] = 0x18001400000004;
  v11[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Port.cpp";
  v13 = 0;
  v14 = 0;
  v12 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v15);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v6, v11);
  if (SHIBYTE(v14) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v15, v12, v14 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v10)
  {
    goto LABEL_3;
  }

  v5 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a3, v6);
  if ((v10 & 1) == 0 && SHIBYTE(v8) < 0)
  {
    (*(*v9 + 24))(v9, v7, v8 & 0x7FFFFFFFFFFFFFFFLL, 1, v5);
  }
}

uint64_t vp::vx::io::Output_Port::get_terminal(uint64_t a1, int a2)
{
  if (a2 != 1)
  {
    return 0;
  }

  return result;
}

void vp::vx::io::Output_Port::process(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 == 1)
  {
    LOBYTE(v10[0]) = 0;
    v14 = 1;
LABEL_3:
    vp::vx::io::validate_nonnull(v10, *a4, a4[1], *(a4 + 4));
    if (v14)
    {
      (*(*a1 + 112))(a1, a3, *a4, a4[1], *(a4 + 4));
    }

    else
    {
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v10);
      if ((v14 & 1) == 0 && SHIBYTE(v12) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v13, v11, v12 & 0x7FFFFFFFFFFFFFFFLL);
      }
    }

    return;
  }

  v15[0] = 0x18001400000004;
  v15[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Port.cpp";
  v17 = 0;
  v18 = 0;
  v16 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v19);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v10, v15);
  if (SHIBYTE(v18) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v19, v16, v18 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v14)
  {
    goto LABEL_3;
  }

  v9 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v10);
  if ((v14 & 1) == 0 && SHIBYTE(v12) < 0)
  {
    (*(*v13 + 24))(v13, v11, v12 & 0x7FFFFFFFFFFFFFFFLL, 1, v9);
  }
}

void vp::vx::io::Output_Port::get_time(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == 1)
  {
    LOBYTE(v8[0]) = 0;
    v12 = 1;
LABEL_3:
    (*(*a1 + 56))(a1, a3);
    *(a4 + 64) = 1;
    return;
  }

  v13[0] = 0x18001400000004;
  v13[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Port.cpp";
  v15 = 0;
  v16 = 0;
  v14 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v17);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v8, v13);
  if (SHIBYTE(v16) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v17, v14, v16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v12)
  {
    goto LABEL_3;
  }

  v7 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEI14AudioTimeStampEEv(a4, v8);
  if ((v12 & 1) == 0 && SHIBYTE(v10) < 0)
  {
    (*(*v11 + 24))(v11, v9, v10 & 0x7FFFFFFFFFFFFFFFLL, 1, v7);
  }
}

void vp::vx::io::Output_Port::get_format(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    LOBYTE(v6[0]) = 0;
    v10 = 1;
LABEL_3:
    (*(*a1 + 48))(a1);
    *(a3 + 48) = 1;
    return;
  }

  v11[0] = 0x18001400000004;
  v11[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Port.cpp";
  v13 = 0;
  v14 = 0;
  v12 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v15);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v6, v11);
  if (SHIBYTE(v14) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v15, v12, v14 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v10)
  {
    goto LABEL_3;
  }

  v5 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a3, v6);
  if ((v10 & 1) == 0 && SHIBYTE(v8) < 0)
  {
    (*(*v9 + 24))(v9, v7, v8 & 0x7FFFFFFFFFFFFFFFLL, 1, v5);
  }
}

uint64_t vp::vx::components::Power_Log::as_io_node_delegate_factory(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0;
  }
}

void vp::vx::components::Power_Log::configure(vp::vx::components::Power_Log *this)
{
  v22 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__p, this, "vp::vx::components::Power_Log]", 29);
    v4 = BYTE7(v17);
    v5 = SBYTE7(v17);
    v6 = v16;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      p_p = __p;
      if (v5 >= 0)
      {
        p_p = &__p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v19 = p_p;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = BYTE7(v17);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 2) && *(this + 4))
  {
    v11 = *(this + 1);
    __p = 0;
    v16 = v11;
    v17 = xmmword_272756720;
    v12 = (*(*v11 + 16))(v11, 72, 8);
    v13 = *(this + 1);
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(this + 2);
    if (*(&v14 + 1))
    {
      atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    *(v12 + 48) = &unk_2881C6630;
    operator new();
  }
}

void sub_27268684C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<vp::vx::components::Power_Log::Node_Delegate_Factory,vp::Allocator_Delete<vp::vx::components::Power_Log::Node_Delegate_Factory>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<vp::vx::io::Node_Delegate_Factory,vp::Allocator_Delete<vp::vx::io::Node_Delegate_Factory>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 8))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *std::unique_ptr<vp::vx::components::Power_Log::Node_Delegate_Factory,vp::Allocator_Delete<vp::vx::components::Power_Log::Node_Delegate_Factory>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    v4 = v2[4];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = v2[2];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v2[6] = &unk_2881C6630;
    v6 = v2[8];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::vx::components::Power_Log::set_messenger(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::components::Power_Log::~Power_Log(std::__shared_weak_count **this)
{
  vp::vx::components::Power_Log::~Power_Log(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v19 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Power_Log]", 29);
    v4 = v14;
    v5 = v14;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v16 = v9;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v14;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::vx::io::Node_Delegate_Factory,vp::Allocator_Delete<vp::vx::io::Node_Delegate_Factory>>::reset[abi:ne200100](this + 6, 0);
  v11 = this[5];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = this[3];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void virtual thunk tovp::vx::components::Power_Log::Node_Delegate::~Node_Delegate(vp::vx::components::Power_Log::Node_Delegate *this)
{
  vp::vx::components::Power_Log::Node_Delegate::~Node_Delegate((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Power_Log::Node_Delegate::~Node_Delegate((this + *(*this - 24)));
}

void vp::vx::components::Power_Log::Node_Delegate::~Node_Delegate(caulk::concurrent::messenger **this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = caulk::concurrent::messenger::drain(this[1]);
  log = vp::get_log(v2);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    vp::vx::io::get_log_context_info(__p, (this + 9), "vp::vx::components::Power_Log::Node_Delegate]", 44);
    v4 = v16;
    v5 = v16;
    v6 = __p[1];
    v8 = vp::get_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = v6;
      }

      v10 = __p[0];
      if (v5 >= 0)
      {
        v10 = __p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v18 = v10;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v16;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = this[4];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = this[2];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  this[9] = &unk_2881C6630;
  v14 = this[11];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

{
  vp::vx::components::Power_Log::Node_Delegate::~Node_Delegate(this);

  JUMPOUT(0x2743CBFA0);
}

void sub_272686D28(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::components::Power_Log::Node_Delegate::process(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    if (*(a1 + 64))
    {
      v5 = mach_absolute_time();
      v6 = *(a1 + 64);
      v7 = (v5 - v6) * 0.0000000416666667;
      v8 = *(a1 + 40);
      if (v7 >= v8)
      {
        __y = 0.0;
        modf(v7 / v8, &__y);
        *(a1 + 64) = v6 + (v8 * __y * 24000000.0);
        v9 = 1;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      *(a1 + 64) = mach_absolute_time();
    }

    if (*(a1 + 48))
    {
      v10 = (*(*a3 + 8))(a3);
      if (v10)
      {
        (*(*v10 + 24))(&__y);
        v11 = v22;
        if (v22)
        {
          caulk::expected<float,vp::vx::io::Error>::value(&__y);
          *(a1 + 52) = *&__y + *(a1 + 52);
          *(a1 + 48) += 2;
          v11 = v22;
          if (v22)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v23 = 0x1001880000000DLL;
        *&v24 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
        v25 = 0uLL;
        *(&v24 + 1) = 0;
        vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v26);
        v11 = 0;
        __y = *&v23;
        v19 = v24;
        v20 = v25;
        v21 = v26;
        v22 = 0;
      }

      v12 = *(&v19 + 1);
      v13 = *(&v20 + 1);
      v20 = 0uLL;
      *(&v19 + 1) = 0;
      if (v13 < 0)
      {
        (*(*v21 + 24))(v21, v12, v13 & 0x7FFFFFFFFFFFFFFFLL, 1);
        v11 = v22;
      }

      if ((v11 & 1) == 0 && SHIBYTE(v20) < 0)
      {
        (*(*v21 + 24))(v21, *(&v19 + 1), *(&v20 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
      }
    }

LABEL_18:
    if (*(a1 + 56))
    {
      v14 = (*(*a3 + 8))(a3);
      if (v14)
      {
        (*(*v14 + 24))(&__y);
        v15 = v22;
        if (v22)
        {
          caulk::expected<float,vp::vx::io::Error>::value(&__y);
          *(a1 + 60) = *&__y + *(a1 + 60);
          *(a1 + 56) += 2;
          v15 = v22;
          if (v22)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v23 = 0x1001880000000DLL;
        *&v24 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Node.hpp";
        v25 = 0uLL;
        *(&v24 + 1) = 0;
        vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v26);
        v15 = 0;
        __y = *&v23;
        v19 = v24;
        v20 = v25;
        v21 = v26;
        v22 = 0;
      }

      v16 = *(&v19 + 1);
      v17 = *(&v20 + 1);
      v20 = 0uLL;
      *(&v19 + 1) = 0;
      if (v17 < 0)
      {
        (*(*v21 + 24))(v21, v16, v17 & 0x7FFFFFFFFFFFFFFFLL, 1);
        v15 = v22;
      }

      if ((v15 & 1) == 0 && SHIBYTE(v20) < 0)
      {
        (*(*v21 + 24))(v21, *(&v19 + 1), *(&v20 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
      }
    }

LABEL_29:
    if (v9)
    {
      vp::vx::components::Power_Log::Node_Delegate::log_power_data(a1);
    }
  }
}

caulk::rt_safe_memory_resource *vp::vx::components::Power_Log::Node_Delegate::log_power_data(vp::vx::components::Power_Log::Node_Delegate *this)
{
  v2 = 0;
  v3 = *(this + 12);
  v4 = 0;
  if (v3 >= 2 && (v3 & 1) != 0)
  {
    *&v5 = *(this + 13) / (v3 >> 1);
    *(this + 12) &= 1u;
    *(this + 13) = 0;
    v4 = v5;
    v2 = 0x100000000;
  }

  v6 = 0;
  v7 = *(this + 14);
  v8 = 0;
  if (v7 >= 2 && (v7 & 1) != 0)
  {
    *&v9 = *(this + 15) / (v7 >> 1);
    *(this + 14) &= 1u;
    *(this + 15) = 0;
    v8 = v9;
    v6 = 0x100000000;
  }

  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {
    v11 = *(this + 1);
    v12 = v8 | v6;
    v13 = v4 | v2;
    v14 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v14 + 16) = 0;
    *v14 = &unk_2881BA988;
    *(v14 + 8) = 0;
    *(v14 + 20) = v13;
    *(v14 + 28) = v12;
    v16 = *(this + 3);
    v15 = *(this + 4);
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    *(v14 + 40) = v16;
    *(v14 + 48) = v15;
    *v14 = &unk_2881BA960;

    return caulk::concurrent::messenger::enqueue(v11, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<vp::vx::components::Power_Log::Node_Delegate::log_power_data(void)::$_0::operator() const(void)::{lambda(std::shared_ptr<vp::services::Power_Log> const&)#1},std::shared_ptr<vp::services::Power_Log>&>::perform(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 20), *(a1 + 28));
  *a1 = &unk_2881BA988;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<vp::vx::components::Power_Log::Node_Delegate::log_power_data(void)::$_0::operator() const(void)::{lambda(std::shared_ptr<vp::services::Power_Log> const&)#1},std::shared_ptr<vp::services::Power_Log>&>::~rt_message_call(caulk::concurrent::message *this)
{
  *this = &unk_2881BA988;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BA988;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::message_call<vp::vx::components::Power_Log::Node_Delegate::log_power_data(void)::$_0::operator() const(void)::{lambda(std::shared_ptr<vp::services::Power_Log> const&)#1},std::shared_ptr<vp::services::Power_Log>&>::~message_call(caulk::concurrent::message *this)
{
  *this = &unk_2881BA988;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881BA988;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

uint64_t vp::vx::components::Power_Log::Node_Delegate::notify(uint64_t this, int a2, uint64_t a3)
{
  v3 = this;
  if (a2 == 1)
  {
    vp::vx::components::Power_Log::Node_Delegate::log_power_data(this);

    return vp::vx::components::Power_Log::Node_Delegate::log_power_data(v3);
  }

  else if (!a2)
  {
    v5 = (*(*a3 + 8))(a3);
    if (v5)
    {
      LODWORD(v5) = (*(*v5 + 8))(v5, 1936552816, 1);
    }

    *(v3 + 12) = *(v3 + 12) & 0xFFFFFFFE | v5;
    this = (*(*a3 + 8))(a3);
    if (this)
    {
      this = (*(*this + 8))(this, 1936548976, 1);
    }

    *(v3 + 14) = *(v3 + 14) & 0xFFFFFFFE | this;
  }

  return this;
}

void vp::vx::components::Power_Log::Node_Delegate::get_property_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t *vp::vx::components::Power_Log::Node_Delegate::get_parameter_ids@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = 0x736D6470736D7370;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &v4, 2uLL);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_2726876DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void virtual thunk tovp::vx::components::Power_Log::Node_Delegate_Factory::~Node_Delegate_Factory(vp::vx::components::Power_Log::Node_Delegate_Factory *this)
{
  v1 = (this + *(*this - 24));
  v2 = v1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v1[6] = &unk_2881C6630;
  v4 = v1[8];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  v2 = v1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v1[6] = &unk_2881C6630;
  v4 = v1[8];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::components::Power_Log::Node_Delegate_Factory::~Node_Delegate_Factory(vp::vx::components::Power_Log::Node_Delegate_Factory *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 6) = &unk_2881C6630;
  v4 = *(this + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 6) = &unk_2881C6630;
  v4 = *(this + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t vp::vx::components::Power_Log::Node_Delegate_Factory::new_node_delegate(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t *), void (*a5)(void, uint64_t *))
{
  v8 = (*(*a2 + 8))(a2);
  if (v8 && ((*(*v8 + 8))(v8, 1936552816, 1) & 1) != 0 || (result = (*(*a2 + 8))(a2)) != 0 && (result = (*(*result + 8))(result, 1936548976, 1), result))
  {
    v10 = (*(*a3 + 16))(a3, 96, 8);
    v11 = *(a1 + 8);
    if (*(&v11 + 1))
    {
      atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 24);
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    *(v10 + 72) = &unk_2881C6630;
    operator new();
  }

  return result;
}

void sub_272687CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a2)
  {
    std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>::reset[abi:ne200100](&a19);
    std::unique_ptr<vp::vx::components::Power_Log::Node_Delegate,vp::Allocator_Delete<vp::vx::components::Power_Log::Node_Delegate>>::reset[abi:ne200100](&a15, 0);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272687C58);
  }

  _Unwind_Resume(exception_object);
}

caulk::concurrent::messenger ***std::unique_ptr<vp::vx::components::Power_Log::Node_Delegate,vp::Allocator_Delete<vp::vx::components::Power_Log::Node_Delegate>>::reset[abi:ne200100](caulk::concurrent::messenger ***result, caulk::concurrent::messenger **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Power_Log::Node_Delegate::~Node_Delegate(v2);
    return (*(*v3[1] + 3))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::cf::Predicate::create(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:a2 length:a3 encoding:1 freeWhenDone:0];
  applesauce::CF::StringRef::from_ns(&cf, v4);
  vp::cf::Predicate::create(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void applesauce::CF::StringRef::from_ns(applesauce::CF::StringRef *this, NSString *a2)
{
  v3 = a2;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *this = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFStringGetTypeID();
    v3 = cf;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }
}

void sub_272687EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v10);

  _Unwind_Resume(a1);
}

void vp::cf::Predicate::create(id *a1, uint64_t a2)
{
  *a1 = 0;
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:a2];
  v4 = v3;
  vp::objc::ID::operator=(a1, &v4);
  vp::objc::ID::~ID(&v4);
}

void sub_272687F50(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272687F40);
}

uint64_t vp::cf::Predicate::evaluate(id *this, const applesauce::CF::TypeRef *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*this evaluateWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_272687FAC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272687F9CLL);
}

void vp::vx::Property::read(vp::vx::Property *this, const vp::vx::data_flow::State_Transaction *a2, int *a3)
{
  default_resource = std::pmr::get_default_resource(this);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = default_resource;
  if (*(a3 + 1) && (v7 = *(a2 + 1)) != 0 && (v8 = *a3, v17 = *a2, v16 = v8, v11 = 0, v12 = &v11, v13 = v7, v14 = &v17, v15 = &v16, vp::vx::data_flow::Engine::do_with_shared_state_lock(v7, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::has_state_value(unsigned int,unsigned int)::$_0>, &v12), v11 == 1))
  {
    v9 = *(a2 + 1);
    if (v9)
    {
      v10 = *a3;
      v17 = *a2;
      v16 = v10;
      v12 = v9;
      v13 = &v17;
      v14 = &v16;
      v15 = this;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(v9, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,unsigned int,vp::vx::data_flow::Value &)::$_0>, &v12);
    }
  }

  else
  {
    vp::vx::data_flow::State<void>::get_value(a2, this);
  }
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0,std::allocator<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::__function::__func<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0,std::allocator<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0,std::allocator<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BA9B0;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0,std::allocator<vp::vx::Property::register_listener(std::function<void ()(void)>)::$_0>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881BA9B0;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t vp::vx::io::Property_Controller_Delegate::process(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a3 + 16))(a3);
  if (result)
  {
    v6 = *(*a1 + 48);

    return v6(a1, a2, result);
  }

  return result;
}

void vp::vx::io::Property_Controller_Delegate::get_parameter_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void vp::vx::io::Property_Controller_Command::set_node(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v4 = (*(**a2 + 16))(*a2);
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = v4;
  v7 = v5;
  (*(*a1 + 40))(a1, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void vp::vx::io::Property_Controller_Command::get_parameter_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t std::__hash_node_destructor<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::pair<std::vector<unsigned char,vp::Allocator<unsigned char>>,unsigned long>>,void *>>>::operator()[abi:ne200100](uint64_t **a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = a2[3];
    if (v4)
    {
      a2[4] = v4;
      std::allocator_traits<vp::Allocator<unsigned char>>::deallocate[abi:ne200100](a2[6], v4, a2[5] - v4);
    }
  }

  v5 = **a1;

  return std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::pair<std::vector<unsigned char,vp::Allocator<unsigned char>>,unsigned long>>,void *>>>::deallocate[abi:ne200100](v5, a2);
}

uint64_t std::__exception_guard_exceptions<std::vector<unsigned char,vp::Allocator<unsigned char>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v2[1] = v3;
      std::allocator_traits<vp::Allocator<unsigned char>>::deallocate[abi:ne200100](v2[3], v3, v2[2] - v3);
    }
  }

  return a1;
}

double vp::vx::io::Property_Exchange::get_property(vp::vx::io::Property_Exchange *this, void *a2, const vp::vx::io::Property_Controller *a3, uint64_t a4)
{
  v6 = a2[1];
  if (v6)
  {
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = a3;
      if (v6 <= a3)
      {
        v9 = a3 % v6;
      }
    }

    else
    {
      v9 = (v6 - 1) & a3;
    }

    v10 = *(*a2 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a3)
        {
          if (*(i + 4) == a3)
          {
            vp::Mutable_Blob::Mutable_Blob(v22, i[3], i[4] - i[3]);
            (*(*a4 + 32))(v17, a4, a3, v22);
            if (v21)
            {
              i[7] = v23;
              *this = 0;
              *(this + 48) = 1;
              return result;
            }

            *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v17).n128_u64[0];
            if ((v21 & 1) == 0 && SHIBYTE(v19) < 0)
            {
              v13 = v17[2];
              v15 = v19;
              v14 = v20;
LABEL_19:
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v14, v13, v15 & 0x7FFFFFFFFFFFFFFFLL);
            }

            return result;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v12 >= v6)
            {
              v12 %= v6;
            }
          }

          else
          {
            v12 &= v6 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v22[0] = 0x1300380000000ALL;
  v22[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Property_Exchange.cpp";
  v24 = 0;
  v25 = 0;
  v23 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v26);
  vp::vx::io::operator<<<char const(&)[45]>(v17, v22, "property exchange does not support property ");
  MEMORY[0x2743CBB40](&v18, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v17);
  *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v22).n128_u64[0];
  if (SHIBYTE(v25) < 0)
  {
    v13 = v23;
    v15 = v25;
    v14 = v26;
    goto LABEL_19;
  }

  return result;
}

void *vp::Mutable_Blob::Mutable_Blob(void *this, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *this = a2;
  this[1] = a3;
  this[2] = 0;
  if (!a2)
  {
    v7 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    v3 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v8 = 134217984;
    v9 = 0;
    _os_log_send_and_compose_impl(v4, &v7, &v10, 80, &dword_2724B4000, v3, 16, "assertion failure: m_data != nullptr -> %llu", &v8);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v7 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    v5 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v8 = 134217984;
    v9 = 0;
    _os_log_send_and_compose_impl(v6, &v7, &v10, 80, &dword_2724B4000, v5, 16, "assertion failure: m_capacity != 0 -> %llu", &v8);
    _os_crash_msg();
    __break(1u);
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  return this;
}

void sub_272688AA0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::sim::converters::CSV_Converter<float>::to_property_list(CFStringRef *a1, float **a2)
{
  v2 = a1;
  v38 = *MEMORY[0x277D85DE8];
  memset(&v26, 0, sizeof(v26));
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    goto LABEL_30;
  }

  v5 = (MEMORY[0x277D82868] + 16);
  v25 = v34;
  do
  {
    v6 = *v3;
    memset(&v27, 0, sizeof(v27));
    __sb.__vftable = v5;
    memset(v29, 0, 96);
    MEMORY[0x2743CBDC0](v29);
    memset(&v29[1], 0, 80);
    v7 = (MEMORY[0x277D82878] + 16);
    __sb.__vftable = (MEMORY[0x277D82878] + 16);
    LODWORD(v29[11].__locale_) = 24;
    std::stringbuf::__init_buf_ptrs[abi:ne200100](&__sb);
    memset(&v29[1], 0, 24);
    __sb.__vftable = &unk_2881BA9F8;
    v30.__loc_ = 0;
    v29[12].__locale_ = (MEMORY[0x277D82850] + 24);
    v30.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v30, &__sb);
    v31 = 0;
    v32 = -1;
    v36 = &v33;
    v37 = v35;
    if (fabsf(v6) == INFINITY)
    {
      v8 = &v33;
      if ((LODWORD(v6) & 0x80000000) != 0)
      {
        v33 = 45;
        v8 = v25;
      }

      v8[2] = 102;
      *v8 = 28265;
      v9 = v8 + 3;
      v37 = v8 + 3;
      v10 = &v33;
LABEL_8:
      std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(&v27, v10, v9, v9 - v10);
      v11 = 1;
      goto LABEL_10;
    }

    v9 = &v34[sprintf(&v33, "%.*g", 9, v6) - 1];
    v37 = v9;
    v10 = v36;
    if (v9 > v36)
    {
      goto LABEL_8;
    }

    v11 = 0;
LABEL_10:
    std::ostream::~ostream();
    __sb.__vftable = v7;
    if (SHIBYTE(v29[9].__locale_) < 0)
    {
      operator delete(v29[7].__locale_);
    }

    __sb.__vftable = v5;
    std::locale::~locale(v29);
    if ((v11 & 1) == 0)
    {
      std::bad_cast::bad_cast(&__sb);
      __sb.__vftable = &unk_2881BABA0;
      boost::throw_exception<boost::bad_lexical_cast>();
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v27;
    }

    else
    {
      v12 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    std::string::append(&v26, v12, size);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    std::string::append(&v26, ", ", 2uLL);
    ++v3;
  }

  while (v3 != v4);
  v2 = a1;
  if (*a2 != a2[1])
  {
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v15 = v26.__r_.__value_.__r.__words[0];
      v14 = --v26.__r_.__value_.__l.__size_;
    }

    else
    {
      v14 = SHIBYTE(v26.__r_.__value_.__r.__words[2]) - 1;
      *(&v26.__r_.__value_.__s + 23) = v14 & 0x7F;
      v15 = &v26;
    }

    v15->__r_.__value_.__s.__data_[v14] = 0;
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v17 = v26.__r_.__value_.__r.__words[0];
      v16 = --v26.__r_.__value_.__l.__size_;
    }

    else
    {
      v16 = SHIBYTE(v26.__r_.__value_.__r.__words[2]) - 1;
      *(&v26.__r_.__value_.__s + 23) = v16 & 0x7F;
      v17 = &v26;
    }

    v17->__r_.__value_.__s.__data_[v16] = 0;
  }

LABEL_30:
  v18 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v26;
  }

  else
  {
    v19 = v26.__r_.__value_.__r.__words[0];
  }

  if (v19)
  {
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v26.__r_.__value_.__l.__size_;
    }

    v21 = CFStringCreateWithBytes(0, v19, v20, 0x8000100u, 0);
    *v2 = v21;
    if (!v21)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if ((*(&v26.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_39:
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v2 = 0;
    if (v18 < 0)
    {
      goto LABEL_39;
    }
  }
}

void sub_272688EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v40);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::~lexical_istream_limited_src(uint64_t a1)
{
  std::ostream::~ostream();
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void boost::throw_exception<boost::bad_lexical_cast>()
{
  exception = __cxa_allocate_exception(0x38uLL);
  exception[4] = 0;
  exception[5] = 0;
  *(exception + 12) = -1;
  *exception = &unk_2881BAAF8;
  exception[1] = &unk_2881BAB28;
  exception[2] = &unk_2881BAB50;
  exception[3] = 0;
}

std::exception *boost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(std::exception *a1)
{
  a1[2].__vftable = &unk_2881BABC8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a1[3]);
  std::exception::~exception(a1 + 1);
  return a1;
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

void non-virtual thunk toboost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(void *a1)
{
  *a1 = &unk_2881BABC8;
  v1 = (a1 - 1);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x2743CBFA0);
}

{
  *a1 = &unk_2881BABC8;
  v1 = (a1 - 1);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 8) = &unk_2881BABC8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 16));
  std::exception::~exception(a1);

  JUMPOUT(0x2743CBFA0);
}

{
  *(a1 + 8) = &unk_2881BABC8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 16));

  std::exception::~exception(a1);
}

void boost::wrapexcept<boost::bad_lexical_cast>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_2881BABC8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

void boost::wrapexcept<boost::bad_lexical_cast>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_lexical_cast>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881BAB70;
  *(a1 + 8) = &unk_2881BABA0;
  v4 = *(a2 + 24);
  *(a1 + 16) = &unk_2881BABC8;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_2881BAAF8;
  *(a1 + 8) = &unk_2881BAB28;
  *(a1 + 16) = &unk_2881BAB50;
  return a1;
}

void sub_2726897B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void boost::bad_lexical_cast::~bad_lexical_cast(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

double boost::detail::basic_pointerbuf<char,std::stringbuf>::seekpos@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

double boost::detail::basic_pointerbuf<char,std::stringbuf>::seekoff@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

void *boost::detail::basic_pointerbuf<char,std::stringbuf>::setbuf(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

void boost::detail::basic_unlockedbuf<std::stringbuf,char>::~basic_unlockedbuf(uint64_t a1)
{
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t boost::detail::basic_unlockedbuf<std::stringbuf,char>::~basic_unlockedbuf(uint64_t a1)
{
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t *std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_272689B64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::vector[abi:ne200100](int8x16_t **a1, const char *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_272689C14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void vp::sim::throw_exception(vp::sim *this, const char *a2, ...)
{
  va_start(va, a2);
  va_copy(v5, va);
  caulk::make_string(&v4, "failed to write %s to property list", a2, va);
  exception = __cxa_allocate_exception(0x10uLL);
  v3 = v4;
  memset(&v4, 0, sizeof(v4));
  std::logic_error::logic_error(exception, &v3);
  exception->__vftable = &unk_2881BB398;
}

void sub_272689CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void vp::sim::Exception::~Exception(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t *vp::sim::converters::Default_Converter<CA::StreamDescription>::to_property_list(CFStringRef *a1, uint64_t a2, const char *a3)
{
  vp::sim::throw_exception_if (*(a2 + 8) != 1819304813, "non-PCM audio formats are not supported", a3);
  vp::sim::throw_exception_if ((*(a2 + 12) & 0x1F81) != 1, "fixed-point audio formats are not supported", v5);
  v7 = "D";
  if ((*(a2 + 12) & 0x20) == 0)
  {
    v7 = "I";
  }

  return applesauce::CF::make_StringRef(a1, @"F%u@%.0f/%X,%u%s", v6, *(a2 + 32), *a2, *(a2 + 12), *(a2 + 28), v7);
}

uint64_t vp::sim::throw_exception_if (uint64_t this, caulk *a2, const char *a3, ...)
{
  va_start(va, a3);
  if (this)
  {
    va_copy(v6, va);
    caulk::make_string(&v5, a2, a2, va);
    exception = __cxa_allocate_exception(0x10uLL);
    v4 = v5;
    memset(&v5, 0, sizeof(v5));
    std::logic_error::logic_error(exception, &v4);
    exception->__vftable = &unk_2881BB398;
  }

  return this;
}

void sub_272689EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

CFIndex vp::sim::Key_Writer::count(vp::sim::Key_Writer **a1, const __CFString *a2, uint64_t a3)
{
  applesauce::CF::make_StringRef(&cf, @"%02u. %s", a2, a2, a3);
  v4 = vp::sim::Key_Writer::count(*a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

{
  applesauce::CF::make_StringRef(&cf, @"%02u. %s", a2, a2, a3);
  v4 = vp::sim::Key_Writer::count(*a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

CFIndex vp::sim::Key_Writer::count(vp::sim::Key_Writer *this, const applesauce::CF::StringRef *a2)
{
  Value = CFDictionaryGetValue(this, a2);
  v3 = Value;
  if (!Value)
  {
    return 0;
  }

  CFRetain(Value);
  v4 = CFGetTypeID(v3);
  if (v4 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 0;
  }

  CFRelease(v3);
  return Count;
}

void vp::sim::Key_Writer::set(CFDictionaryRef *a1, const __CFString *a2, uint64_t a3, const void **a4)
{
  applesauce::CF::make_StringRef(&cf, @"%02u. %s", a2, a2, a3);
  vp::sim::Key_Writer::set(a1, &cf, a4);
  if (cf)
  {
    CFRelease(cf);
  }
}

{
  applesauce::CF::make_StringRef(&cf, @"%02u. %s", a2, a2, a3);
  vp::sim::Key_Writer::set(a1, &cf, a4);
  if (cf)
  {
    CFRelease(cf);
  }
}

void vp::sim::Key_Writer::set(CFDictionaryRef *this, const void **a2, const void **a3)
{
  Value = CFDictionaryGetValue(*this, *a2);
  v7 = Value;
  if (!Value || (CFRetain(Value), v8 = CFGetTypeID(v7), v8 != CFArrayGetTypeID()))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
    if (v7)
    {
      CFRelease(v7);
    }

    CFDictionarySetValue(*this, *a2, Mutable);
    v7 = Mutable;
  }

  CFArrayAppendValue(v7, *a3);
  if (v7)
  {
    CFRelease(v7);
  }
}

const __CFArray *vp::sim::Property_List_Writer::size(const __CFArray *this)
{
  if (this)
  {
    return CFArrayGetCount(this);
  }

  return this;
}

const void *vp::sim::Property_List_Writer::find_writable_element(vp::sim::Property_List_Writer *this, CFArrayRef *a2, unint64_t a3)
{
  v6 = *MEMORY[0x277CBECE8];
  if (!*a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], a3 + 1, MEMORY[0x277CBF128]);
    v8 = *a2;
    *a2 = Mutable;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  while (1)
  {
    Count = CFArrayGetCount(*a2);
    v10 = *a2;
    if (Count > a3)
    {
      break;
    }

    v11 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFArrayAppendValue(v10, v11);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  result = CFArrayGetValueAtIndex(*a2, a3);
  v13 = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *this = v13;
  return result;
}

uint64_t vp::sim::Property_List_Writer::write_to(CFPropertyListRef *a1, uint64_t a2)
{
  if (vp::sim::Property_List_Writer::size(*a1))
  {
    Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], *a1, kCFPropertyListXMLFormat_v1_0, 0, 0);
    CFDataGetBytePtr(Data);
    CFDataGetLength(Data);
    std::ostream::write();
    if (Data)
    {
      CFRelease(Data);
    }
  }

  return 1;
}

void sub_27268A38C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27268A374);
}

uint64_t vp::utility::pretty_print_path(_BYTE *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  (*(*a2 + 24))(a2, &v8);
  if ((v15 & 0x10) != 0)
  {
    v5 = v14;
    if (v14 < v11)
    {
      v14 = v11;
      v5 = v11;
    }

    locale = v10[4].__locale_;
  }

  else
  {
    if ((v15 & 8) == 0)
    {
      v4 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v10[1].__locale_;
    v5 = v10[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, locale, v4);
  }

LABEL_14:
  a1[v4] = 0;
  v8 = *MEMORY[0x277D82828];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
  v9 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(__p);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x2743CBE30](&v16);
}

void sub_27268A5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  MEMORY[0x2743CBE30](v3 + 112);
  _Unwind_Resume(a1);
}

void *vp::utility::Property_List_Store::Property_List_Store(void *a1, const void *a2)
{
  *a1 = &unk_2881BABE8;
  if (a2)
  {
    CFRetain(a2);
  }

  a1[1] = a2;
  return a1;
}

uint64_t std::__shared_ptr_pointer<vp::utility::Property_List_Store  *>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::__shared_ptr_pointer<vp::utility::Property_List_Store  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

CFTypeRef vp::utility::Property_List_Store::parse@<X0>(CFTypeRef this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 1);
  if (v3)
  {
    this = CFRetain(*(this + 1));
  }

  *a2 = v3;
  return this;
}

void vp::utility::Property_List_Store::~Property_List_Store(vp::utility::Property_List_Store *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void vp::utility::Property_List_Parser::Property_List_Parser(void *a1, const void *a2)
{
  if (a2)
  {
    CFRetain(a2);
  }

  operator new();
}

void vp::utility::Property_List_Parser::operator[](__n128 *a1, unint64_t *a2, CFTypeRef cf)
{
  if (cf && (CFRetain(cf), v6 = CFGetTypeID(cf), v6 != CFStringGetTypeID()))
  {
    cfa = 0;
    CFRelease(cf);
  }

  else
  {
    cfa = cf;
  }

  vp::utility::Property_List_Parser::operator[](a1, *a2, a2[1], &cfa);
}

void sub_27268A9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void vp::utility::Property_List_Parser::operator[](__n128 *a1, unint64_t a2, unint64_t a3, const void **a4)
{
  a1->n128_u64[0] = a2;
  a1->n128_u64[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t std::default_delete<vp::utility::Property_List_String_Key_Lookup>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      CFRelease(v4);
    }

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::__shared_ptr_pointer<vp::utility::Property_List_String_Key_Lookup  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::utility::Property_List_String_Key_Lookup::pretty_print(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    (*(*v4 + 24))(v4, a2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "[", 1);
  v5 = *(a1 + 8);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  applesauce::CF::convert_to<std::string,0>(__p, v5);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "]", 1);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void vp::utility::Property_List_String_Key_Lookup::parse(vp::utility::Property_List_String_Key_Lookup *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {
    goto LABEL_15;
  }

  (*(**(this + 3) + 16))(&v19);
  if (!v19 || (v5 = CFGetTypeID(v19), v5 != CFDictionaryGetTypeID()))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vp::utility::pretty_print_path(cf, *(this + 3));
    if (v17 >= 0)
    {
      v10 = cf;
    }

    else
    {
      v10 = cf[0];
    }

    caulk::make_string(&v18, "expected dictionary at '%s'", v9, v10);
    MEMORY[0x2743CB8B0](exception, &v18);
  }

  applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v18, &v19);
  if (!v18.__r_.__value_.__r.__words[0])
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  cf[0] = 0;
  applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef const&>(&v15, v18.__r_.__value_.__l.__data_, *(this + 1), cf);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v18.__r_.__value_.__r.__words[0])
  {
    CFRelease(v18.__r_.__value_.__l.__data_);
  }

  v6 = v15;
  if (!v15)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    vp::utility::pretty_print_path(cf, this);
    if (v17 >= 0)
    {
      v14 = cf;
    }

    else
    {
      v14 = cf[0];
    }

    caulk::make_string(&v18, "missing object at '%s'", v13, v14);
    MEMORY[0x2743CB8B0](v12, &v18);
  }

  v7 = *(this + 2);
  *(this + 2) = v15;
  CFRetain(v6);
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v6);
  if (v19)
  {
    CFRelease(v19);
  }

  v3 = *(this + 2);
  if (v3)
  {
LABEL_15:
    CFRetain(v3);
  }

  *a2 = v3;
}

void sub_27268AF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      applesauce::CF::TypeRef::~TypeRef(&a11);
      applesauce::CF::TypeRef::~TypeRef((v25 - 40));
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef const&>(void *a1, CFDictionaryRef theDict, void *key, void *a4)
{
  if (key && (Value = CFDictionaryGetValue(theDict, key), (v7 = Value) != 0))
  {
    CFRetain(Value);
    CFRetain(v7);
    *a1 = v7;
    CFRelease(v7);
  }

  else
  {
    *a1 = *a4;
    *a4 = 0;
  }
}

void vp::utility::Property_List_String_Key_Lookup::~Property_List_String_Key_Lookup(vp::utility::Property_List_String_Key_Lookup *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
  }
}

void vp::utility::Property_List_Parser::path(vp::utility::Property_List_Parser *this, uint64_t a2)
{
  vp::utility::pretty_print_path(__p, a2);
  v3 = v9;
  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v4)
  {
    if ((v9 & 0x80u) == 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = CFStringCreateWithBytes(0, v4, v5, 0x8000100u, 0);
    *this = v6;
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if ((v9 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *this = 0;
    if ((v3 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }
}

void sub_27268B258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::utility::Property_List_Parser::operator BOOL(uint64_t a1)
{
  (*(*a1 + 16))(&cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return 1;
}

void sub_27268B2EC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27268B2DCLL);
}

void vp::utility::Property_List_Parser::for_each(uint64_t a1, std::__shared_weak_count *a2, const __CFArray *a3, const __CFArray *a4)
{
  theArray[1] = a3;
  theArray[2] = a4;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 16))(cf);
  applesauce::CF::TypeRef::operator applesauce::CF::ArrayRef(theArray, cf);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  v5 = theArray[0];
  if (theArray[0])
  {
    Count = CFArrayGetCount(theArray[0]);
    v7 = Count;
    v8 = theArray[0];
    if (theArray[0])
    {
      v9 = CFArrayGetCount(theArray[0]);
      if (!v7)
      {
LABEL_17:
        if (theArray[0])
        {
          CFRelease(theArray[0]);
        }

        return;
      }
    }

    else
    {
      v9 = 0;
      if (!Count)
      {
        goto LABEL_17;
      }
    }

    if (v5 != v8 || v9)
    {
      applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v13, v5, 0);
      v10 = v13;
      if (v13)
      {
        CFRetain(v13);
      }

      v11 = v10;
      vp::utility::Property_List_Parser::Property_List_Parser(&v12, &v11);
    }

    goto LABEL_17;
  }
}

void sub_27268B48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  applesauce::CF::TypeRef::~TypeRef(va);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

void vp::utility::Property_List_Parser::for_each(uint64_t a1, std::__shared_weak_count *a2, void (*a3)(uint64_t *, CFTypeRef *, __int128 *), const void *a4)
{
  v25[1] = a3;
  v25[2] = a4;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vp::utility::Property_List_Parser::Object::operator applesauce::CF::DictionaryRef<applesauce::CF::DictionaryRef>(v25, a1);
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v19, v25[0]);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v13, v25[0]);
  v14 = (v16 - v15) >> 3;
  if (!v19)
  {
    v5 = v13;
    if (!v13)
    {
      goto LABEL_18;
    }

LABEL_10:
    if (v14 == (v16 - v15) >> 3)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v5 = v13;
  if (v20 == (v22 - v21) >> 3)
  {
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

LABEL_11:
  if (v19 != v5 || v20 != v14)
  {
    applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::dereference(&cf, &v19);
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v10 = v6;
    v7 = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    v8 = v7;
    vp::utility::Property_List_Parser::Property_List_Parser(&v9, &v8);
  }

LABEL_18:
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v25[0])
  {
    CFRelease(v25[0]);
  }
}

void sub_27268B6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::database::v1::utility::replace(CFTypeRef *a1, __CFString **a2, __CFString **a3)
{
  v6 = CFGetTypeID(*a1);
  if (v6 == CFDictionaryGetTypeID())
  {
    v7 = *a1;
    if (v7)
    {
      CFRetain(v7);
    }

    v24 = v7;
    v8 = *a2;
    if (v8)
    {
      CFRetain(v8);
    }

    v23 = v8;
    v9 = *a3;
    if (v9)
    {
      CFRetain(v9);
    }

    v22 = v9;
    vp::vx::database::v1::utility::replace(&v24, &v23, &v22);
    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else if (v6 == CFArrayGetTypeID())
  {
    v10 = *a1;
    if (v10)
    {
      CFRetain(v10);
    }

    v21[3] = v10;
    v11 = *a2;
    if (v11)
    {
      CFRetain(v11);
    }

    v21[2] = v11;
    v12 = *a3;
    if (v12)
    {
      CFRetain(v12);
    }

    v13 = 0;
    v21[1] = v12;
    while (v13 < CFArrayGetCount(v10))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
      v15 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      v27 = v15;
      if (v11)
      {
        CFRetain(v11);
      }

      v26 = v11;
      if (v12)
      {
        CFRetain(v12);
      }

      v25 = v12;
      vp::vx::database::v1::utility::replace(&v27, &v26, &v25);
      if (v12)
      {
        CFRelease(v12);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      ++v13;
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else if (v6 == CFStringGetTypeID())
  {
    v16 = *a1;
    if (v16)
    {
      CFRetain(v16);
    }

    v21[0] = v16;
    v17 = *a2;
    if (v17)
    {
      CFRetain(v17);
    }

    v20 = v17;
    v18 = *a3;
    if (v18)
    {
      CFRetain(v18);
    }

    v19 = v18;
    vp::vx::database::v1::utility::replace(v21, &v20, &v19);
    if (v18)
    {
      CFRelease(v18);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }
}

void sub_27268B9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37, int a38, __int16 a39, char a40, char a41)
{
  applesauce::CF::StringRef::~StringRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  applesauce::CF::ObjectRef<__CFString *>::~ObjectRef(&a11);
  _Unwind_Resume(a1);
}

CFIndex vp::vx::database::v1::utility::replace(CFDictionaryRef *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  Count = CFDictionaryGetCount(*a1);
  MEMORY[0x28223BE20](Count);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v7 >= 0x200)
  {
    v9 = 512;
  }

  else
  {
    v9 = v7;
  }

  bzero(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  CFDictionaryGetKeysAndValues(*a1, 0, v8);
  for (i = 0; ; ++i)
  {
    result = CFDictionaryGetCount(*a1);
    if (i >= result)
    {
      break;
    }

    v12 = v8[i];
    if (v12)
    {
      CFRetain(v8[i]);
    }

    v17[0] = v12;
    v13 = *a2;
    if (*a2)
    {
      CFRetain(*a2);
    }

    v16 = v13;
    v14 = *a3;
    if (*a3)
    {
      CFRetain(*a3);
    }

    v15 = v14;
    vp::vx::database::v1::utility::replace(v17, &v16, &v15);
    if (v14)
    {
      CFRelease(v14);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  return result;
}

void sub_27268BC04(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::database::v1::utility::replace(__CFString **a1, CFStringRef *a2, const __CFString **a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(*a2);
  MEMORY[0x28223BE20](Length);
  v8 = v13 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0);
  CFStringGetCString(*a2, v8, v7 + 1, 0x8000100u);
  applesauce::CF::make_StringRef(v13, @"{%s}", v9, v8);
  v10 = *a1;
  v11 = v13[0];
  v12 = *a3;
  v14.length = CFStringGetLength(v10);
  v14.location = 0;
  CFStringFindAndReplace(v10, v11, v12, v14, 0);
  if (v13[0])
  {
    CFRelease(v13[0]);
  }
}

void sub_27268BD58(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **applesauce::CF::ObjectRef<__CFString *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::vx::components::Property_List_Writer::begin_read_signal(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2 && (*(a1 + 240) & 1) != 0)
  {
    vp::sim::utility::Audio_Time_Stamp_Tracker::track(&v9, (a1 + 424), a3);
    if (v11 == 1)
    {
      v5 = *(a1 + 376);
      v4 = *(a1 + 384);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!v5)
        {
LABEL_18:
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          return;
        }

        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = v4;
      }

      else
      {
        if (!v5)
        {
          return;
        }

        v6 = 0;
      }

      v7 = *(a1 + 248);
      if (v7)
      {
        if (!*MEMORY[0x277D7F098])
        {
          __break(1u);
          return;
        }

        v8 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
        *(v8 + 16) = 0;
        *v8 = &unk_2881BB4D8;
        *(v8 + 8) = 0;
        *(v8 + 24) = v5;
        *(v8 + 32) = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v8 + 40) = v9;
        *(v8 + 56) = v10;
        *v8 = &unk_2881BB4B0;
        caulk::concurrent::messenger::enqueue(v7, v8);
      }

      else
      {
        vp::vx::components::Property_List_Writer::report<(vp::sim::Times_Key)2>(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)::{lambda(vp::sim::utility::Audio_Time_Stamp_Tracker::Event const&)#1}::operator()(v5, &v9);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      if (v4)
      {
        goto LABEL_18;
      }
    }
  }
}