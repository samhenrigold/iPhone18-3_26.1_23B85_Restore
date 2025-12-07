uint64_t std::vector<CA::ADMBlockFormat>::__emplace_back_slow_path<CA::ADMBlockFormat>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x88888888888888)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 5);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 5) >= 0x44444444444444)
  {
    v5 = 0x88888888888888;
  }

  else
  {
    v5 = v3;
  }

  v18 = a1;
  if (v5)
  {
    std::allocator<CA::ADMBlockFormat>::allocate_at_least[abi:ne200100](v5);
  }

  v6 = 480 * v2;
  std::allocator_traits<std::allocator<CA::ADMBlockFormat>>::construct[abi:ne200100]<CA::ADMBlockFormat,CA::ADMBlockFormat,void,0>(v6, a2);
  v17 = (v6 + 480);
  v7 = *a1;
  v8 = a1[1];
  v9 = v6 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = v9;
    do
    {
      std::allocator_traits<std::allocator<CA::ADMBlockFormat>>::construct[abi:ne200100]<CA::ADMBlockFormat,CA::ADMBlockFormat,void,0>(v11, v10);
      v10 += 30;
      v11 += 480;
    }

    while (v10 != v8);
    do
    {
      CA::ADMBlockFormat::~ADMBlockFormat(v7);
      v7 += 60;
    }

    while (v7 != v8);
  }

  v12 = *a1;
  *a1 = v9;
  v13 = a1[2];
  v15 = v17;
  *(a1 + 1) = v17;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v16[0] = v12;
  v16[1] = v12;
  std::__split_buffer<CA::ADMBlockFormat>::~__split_buffer(v16);
  return v15;
}

void std::allocator<CA::ADMBlockFormat>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x88888888888889)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<CA::ADMBlockFormat>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 480;
    CA::ADMBlockFormat::~ADMBlockFormat((i - 480));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<CA::ADMChannelFormat>::__on_zero_shared(uint64_t a1)
{
  v3 = (a1 + 168);
  std::vector<CA::ADMBlockFormat>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void std::vector<CA::ADMBlockFormat>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        CA::ADMBlockFormat::~ADMBlockFormat(v4 - 60);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<CA::ADMChannelFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0330DA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void anonymous namespace::format(std::string *__return_ptr a1@<X8>, _anonymous_namespace_ *this@<X0>, const char *a3@<X1>, ...)
{
  va_start(va, a3);
  v5 = vsnprintf(0, 0, this, va) + 1;
  std::string::basic_string[abi:ne200100](a1, v5);
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1->__r_.__value_.__r.__words[0];
  }

  v7 = vsnprintf(v6, v5, this, va);
  std::string::resize(a1, v7, 0);
}

void sub_18F6C2E0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void CA::ADMBuilder::Impl::resolve_track_format_reference(void *a1, int8x8_t *a2, uint64_t a3)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a3);
  v7 = a2[126];
  if (v7)
  {
    v8 = v6;
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *&v7)
      {
        v11 = v6 % *&v7;
      }
    }

    else
    {
      v11 = (*&v7 - 1) & v6;
    }

    v12 = *(*&a2[125] + 8 * v11);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, a3))
            {
              v28 = v13[6];
              *a1 = v13[5];
              a1[1] = v28;
              if (v28)
              {
                atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
              }

              return;
            }
          }

          else
          {
            if (v10 > 1)
            {
              if (v14 >= *&v7)
              {
                v14 %= *&v7;
              }
            }

            else
            {
              v14 &= *&v7 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v15 = *(a3 + 23);
  if (v15 < 0)
  {
    if (*(a3 + 8) != 14)
    {
      goto LABEL_46;
    }

    v16 = *a3;
  }

  else
  {
    v16 = a3;
    if (v15 != 14)
    {
      goto LABEL_46;
    }
  }

  if (*(v16 + 7) != 48)
  {
    goto LABEL_46;
  }

  if (!std::string::starts_with[abi:ne200100](a3, "AT_0001"))
  {
    if (!std::string::starts_with[abi:ne200100](a3, "AT_0005"))
    {
      goto LABEL_46;
    }

    std::string::basic_string(&__p, a3, 7uLL, 4uLL, &v30);
    v20 = 0;
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v23 = CA::ADMCommonFormats::channel_formats_binaural;
    v24 = *&__p.__r_.__value_.__l.__data_;
    while (1)
    {
      if (v20 == 2)
      {
        if ((v22 & 0x80) != 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_46;
      }

      v25 = strlen(*v23);
      v26 = v25;
      if (v22 < 0)
      {
        if (v25 != *(&v24 + 1))
        {
          goto LABEL_36;
        }

        p_p = v24;
        if (*(&v24 + 1) == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else
      {
        if (v25 != v21)
        {
          goto LABEL_36;
        }

        p_p = &__p;
      }

      if (!memcmp(p_p, *v23, v26))
      {
        CA::ADMBuilder::Impl::build_common_track_format(a1, a2, 5uLL, v20);
      }

LABEL_36:
      ++v20;
      v23 += 2;
    }
  }

  std::string::basic_string(&__p, a3, 8uLL, 3uLL, &v30);
  v19 = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v19 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if ((v17 & 1) == 0)
  {
    goto LABEL_46;
  }

  if (v18 && v18 < 0x29)
  {
    CA::ADMBuilder::Impl::build_common_track_format(a1, a2, 1uLL, v18 - 1);
  }

LABEL_46:
  *a1 = 0;
  a1[1] = 0;
}

void sub_18F6C30CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t CA::ADMBuilder::Impl::resolve_pack_format_reference(CA::ADMBuilder::Impl *a1, int8x8_t *a2, uint64_t a3)
{
  v3 = a3;
  result = std::__string_hash<char>::operator()[abi:ne200100](a3);
  v7 = a2[111];
  if (v7)
  {
    v8 = result;
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = result;
      if (result >= *&v7)
      {
        v11 = result % *&v7;
      }
    }

    else
    {
      v11 = (*&v7 - 1) & result;
    }

    v12 = *(*&a2[110] + 8 * v11);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            result = std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, v3);
            if (result)
            {
              v23 = v13[6];
              *a1 = v13[5];
              *(a1 + 1) = v23;
              if (v23)
              {
                atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
              }

              return result;
            }
          }

          else
          {
            if (v10 > 1)
            {
              if (v14 >= *&v7)
              {
                v14 %= *&v7;
              }
            }

            else
            {
              v14 &= *&v7 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  v18 = CA::ADMCommonFormats::pack_formats;
  while (v17 != 347)
  {
    result = strcmp(v3, *v18);
    if (result)
    {
      if (v16)
      {
        v19 = a1;
        v20 = a2;
        v21 = v15;
        v22 = v17;
        goto LABEL_29;
      }
    }

    else if ((v16 & 1) == 0)
    {
      v15 = v17;
      v16 = 1;
    }

    ++v17;
    v18 += 6;
  }

  if (v16)
  {
    v19 = a1;
    v20 = a2;
    v21 = v15;
    v22 = 347;
LABEL_29:

    CA::ADMBuilder::Impl::build_common_pack_format(v19, v20, v21, v22);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  return result;
}

void sub_18F6C3864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>>>>::~unique_ptr[abi:ne200100](&a21);
  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<CA::ADMPackFormat>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 320) == 1 && *(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  v2 = *(a1 + 288);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 272);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v5 = (a1 + 240);
  std::vector<std::weak_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (a1 + 216);
  std::vector<std::weak_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (a1 + 184);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (a1 + 160);
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

void std::vector<std::weak_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<CA::ADMPackFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0330D68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F6C4300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  _Unwind_Resume(a1);
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void CA::ADMBuilder::Impl::resolve_stream_format_reference(std::string **a1, int8x8_t *a2, uint64_t a3)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a3);
  v7 = a2[121];
  if (v7)
  {
    v8 = v6;
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *&v7)
      {
        v11 = v6 % *&v7;
      }
    }

    else
    {
      v11 = (*&v7 - 1) & v6;
    }

    v12 = *(*&a2[120] + 8 * v11);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, a3))
            {
              v28 = v13[6];
              *a1 = v13[5];
              a1[1] = v28;
              if (v28)
              {
                atomic_fetch_add_explicit(&v28->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
              }

              return;
            }
          }

          else
          {
            if (v10 > 1)
            {
              if (v14 >= *&v7)
              {
                v14 %= *&v7;
              }
            }

            else
            {
              v14 &= *&v7 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v15 = *(a3 + 23);
  if (v15 < 0)
  {
    if (*(a3 + 8) != 11)
    {
      goto LABEL_46;
    }

    v16 = *a3;
  }

  else
  {
    v16 = a3;
    if (v15 != 11)
    {
      goto LABEL_46;
    }
  }

  if (*(v16 + 7) != 48)
  {
    goto LABEL_46;
  }

  if (!std::string::starts_with[abi:ne200100](a3, "AS_0001"))
  {
    if (!std::string::starts_with[abi:ne200100](a3, "AS_0005"))
    {
      goto LABEL_46;
    }

    std::string::basic_string(&__p, a3, 7uLL, 4uLL, &v30);
    v20 = 0;
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v23 = CA::ADMCommonFormats::channel_formats_binaural;
    v24 = *&__p.__r_.__value_.__l.__data_;
    while (1)
    {
      if (v20 == 2)
      {
        if ((v22 & 0x80) != 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_46;
      }

      v25 = strlen(*v23);
      v26 = v25;
      if (v22 < 0)
      {
        if (v25 != *(&v24 + 1))
        {
          goto LABEL_36;
        }

        p_p = v24;
        if (*(&v24 + 1) == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else
      {
        if (v25 != v21)
        {
          goto LABEL_36;
        }

        p_p = &__p;
      }

      if (!memcmp(p_p, *v23, v26))
      {
        CA::ADMBuilder::Impl::build_common_stream_format(a1, a2, 5, v20);
      }

LABEL_36:
      ++v20;
      v23 += 2;
    }
  }

  std::string::basic_string(&__p, a3, 8uLL, 3uLL, &v30);
  v19 = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v19 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if ((v17 & 1) == 0)
  {
    goto LABEL_46;
  }

  if (v18 && v18 < 0x29)
  {
    CA::ADMBuilder::Impl::build_common_stream_format(a1, a2, 1, v18 - 1);
  }

LABEL_46:
  *a1 = 0;
  a1[1] = 0;
}

void sub_18F6C46B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F6C5038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 105) < 0)
  {
    operator delete(*(v37 - 128));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  _Unwind_Resume(a1);
}

const void **std::vector<std::shared_ptr<CA::ADMTrackFormat>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<unsigned char []>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

void std::__shared_ptr_emplace<CA::ADMStreamFormat>::__on_zero_shared(uint64_t a1)
{
  v5 = (a1 + 184);
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<CA::ADMStreamFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0330E10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__shared_ptr_emplace<CA::ADMTrackFormat>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<CA::ADMTrackFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0330DD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::vector<std::weak_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = (16 * v6);
    v11 = *a2;
    *a2 = 0uLL;
    v12 = *a1;
    v13 = a1[1] - *a1;
    v14 = (16 * v6 - v13);
    *v10 = v11;
    v5 = v10 + 1;
    memcpy(v10 - v13, v12, v13);
    *a1 = v14;
    a1[1] = v5;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 16;
    *a2 = 0uLL;
  }

  a1[1] = v5;
}

BOOL std::operator==[abi:ne200100]<std::string,std::string>(void *a1, _BYTE *a2)
{
  if (a2[24] != 1)
  {
    return 0;
  }

  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = a2[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t anonymous namespace::object_reachable(uint64_t *a1, uint64_t a2)
{
  v2 = *(*a2 + 168);
  v3 = *(*a2 + 176);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = *a1;
  {
    v2 += 2;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return 1;
}

void std::__shared_ptr_emplace<CA::ADMTrackUID>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 200);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(a1 + 168) == 1)
  {
    if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v5 = *(a1 + 24);

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<CA::ADMTrackUID>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0330E48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t CA::ADMBuilder::Impl::parse_bound(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 3)
    {
      goto LABEL_14;
    }

    a2 = *a2;
  }

  else if (v2 != 3)
  {
    goto LABEL_14;
  }

  if (*a2 == 26989 && *(a2 + 2) == 110)
  {
    v6 = 0;
    v5 = 0x100000000;
    return v6 | v5;
  }

  if (*a2 == 24941 && *(a2 + 2) == 120)
  {
    v5 = 0x100000000;
    v6 = 1;
    return v6 | v5;
  }

LABEL_14:
  v5 = 0;
  v6 = 0;
  *(a1 + 632) = -66596;
  return v6 | v5;
}

uint64_t CA::ADMBuilder::Impl::parse_coordinate(uint64_t a1, uint64_t **a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v2 = *(a2 + 23);
    if (v2 <= 7)
    {
      if (v2 != 1)
      {
        if (v2 != 7)
        {
          goto LABEL_48;
        }

        if (*a2 != 1835629153 || *(a2 + 3) != 1752462701)
        {
          goto LABEL_48;
        }

        goto LABEL_19;
      }

      v10 = *a2;
      goto LABEL_39;
    }

    if (v2 != 8)
    {
      if (v2 != 9)
      {
        goto LABEL_48;
      }

      if (*a2 != 0x6F69746176656C65 || *(a2 + 8) != 110)
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    v11 = *a2;
    goto LABEL_43;
  }

  v4 = a2[1];
  if (v4 > 7)
  {
    if (v4 != 8)
    {
      if (v4 != 9)
      {
        goto LABEL_48;
      }

      if (**a2 != 0x6F69746176656C65 || *(*a2 + 8) != 110)
      {
        goto LABEL_48;
      }

LABEL_35:
      v7 = 0x100000000;
      v6 = 1;
      return v6 | v7;
    }

    v11 = **a2;
LABEL_43:
    if (v11 == 0x65636E6174736964)
    {
      v7 = 0x100000000;
      v6 = 2;
      return v6 | v7;
    }

    goto LABEL_48;
  }

  if (v4 == 1)
  {
    v10 = **a2;
LABEL_39:
    switch(v10)
    {
      case 'X':
        v7 = 0x100000000;
        v6 = 3;
        return v6 | v7;
      case 'Y':
        v7 = 0x100000000;
        v6 = 4;
        return v6 | v7;
      case 'Z':
        v7 = 0x100000000;
        v6 = 5;
        return v6 | v7;
    }

LABEL_48:
    v7 = 0;
    v6 = 0;
    *(a1 + 632) = -66593;
    return v6 | v7;
  }

  if (v4 != 7)
  {
    goto LABEL_48;
  }

  if (**a2 != 1835629153 || *(*a2 + 3) != 1752462701)
  {
    goto LABEL_48;
  }

LABEL_19:
  v6 = 0;
  v7 = 0x100000000;
  return v6 | v7;
}

uint64_t CA::ADMBuilder::Impl::parse_gain_unit(uint64_t a1, unsigned __int16 *a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v2 = *(a2 + 23);
    if (v2 != 2)
    {
      if (v2 != 6)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    v6 = *a2;
    goto LABEL_16;
  }

  v3 = *(a2 + 1);
  if (v3 == 2)
  {
    v6 = **a2;
LABEL_16:
    if (v6 == 16996)
    {
      v5 = 1;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v3 == 6)
  {
    a2 = *a2;
LABEL_8:
    if (*a2 != 1701734764 || a2[2] != 29281)
    {
      goto LABEL_17;
    }

    v5 = 0;
LABEL_19:
    v7 = 1;
    return v5 | (v7 << 8);
  }

LABEL_17:
  v5 = 0;
  v7 = 0;
  *(a1 + 632) = -66594;
  return v5 | (v7 << 8);
}

void CA::ADMBuilder::Impl::parse_interaction(CA::ADMBuilder::Impl *this, const unsigned __int8 **a2, const char **a3)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 56) = 0;
  *(this + 60) = 0;
  *(this + 64) = 0;
  *(this + 68) = 0;
  *(this + 72) = 0;
  *(this + 76) = 0;
  *(this + 40) = 0;
  *this = 0;
  *(this + 2) = 0;
  if (a3)
  {
    v4 = *a3;
    if (*a3)
    {
      v6 = 0;
      v11 = 0;
      v7 = 0;
      v8 = a3 + 2;
      while (1)
      {
        v9 = *(v8 - 1);
        if (!strcmp(v4, "onOffInteract"))
        {
          break;
        }

        if (!strcmp(v4, "gainInteract"))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, v9);
          v6 = CA::ADMBuilder::Impl::parse_BOOL(a2, __p);
LABEL_10:
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_12;
        }

        if (!strcmp(v4, "positionInteract"))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, v9);
          v11 = CA::ADMBuilder::Impl::parse_BOOL(a2, __p);
          goto LABEL_10;
        }

LABEL_12:
        v10 = *v8;
        v8 += 2;
        v4 = v10;
        if (!v10)
        {
          *(this + 2) = v11;
          *(this + 1) = v6;
          goto LABEL_15;
        }
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v9);
      v7 = CA::ADMBuilder::Impl::parse_BOOL(a2, __p);
      goto LABEL_10;
    }

    v7 = 0;
LABEL_15:
    *this = v7;
  }
}

uint64_t CA::ADMBuilder::Impl::parse_interaction_subelement(uint64_t a1, uint64_t a2, uint64_t a3, char *__s1, const char **a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v10 = strcmp(__s1, "gainInteractionRange");
  if (v10)
  {
    v11 = strcmp(__s1, "positionInteractionRange");
    if (v11)
    {
      return 1;
    }

    v58 = a2;
    memset(&v62, 0, sizeof(v62));
    memset(&v61, 0, sizeof(v61));
    if (a5 && (v12 = *a5) != 0)
    {
      v13 = 0;
      v57 = 0;
      v14 = 0;
      LODWORD(v15) = 0;
      while (2)
      {
        a5 += 2;
        while (1)
        {
          v16 = *(a5 - 1);
          if (!strcmp(v12, "bound"))
          {
            break;
          }

          v11 = strcmp(v12, "coordinate");
          if (!v11)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, v16);
            v17 = CA::ADMBuilder::Impl::parse_coordinate(a1, __p);
            v15 = v17;
            if (SBYTE3(v67) < 0)
            {
              operator delete(*__p);
            }

            if (!(v15 >> 32))
            {
              v39 = CA::ADMBuilder::Impl::log(v17);
              v11 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
              if (v11)
              {
                std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v60, v58, "");
                v40 = (v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v60 : v60.__r_.__value_.__r.__words[0];
                *__p = 136315650;
                *&__p[4] = "ADMBuilder.cpp";
                v64 = 1024;
                v65 = 757;
                v66 = 2080;
                v67 = v40;
                _os_log_impl(&dword_18F5DF000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown coordinate for position interaction range of object '%s'", __p, 0x1Cu);
                if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v60.__r_.__value_.__l.__data_);
                }
              }

              if ((v13 & 1) == 0)
              {
                goto LABEL_120;
              }

              goto LABEL_77;
            }

            v11 = std::string::__assign_external(&v61, v16);
            v14 = 1;
          }

          v18 = *a5;
          a5 += 2;
          v12 = v18;
          if (!v18)
          {
            if ((v13 & 1) == 0)
            {
              goto LABEL_120;
            }

            goto LABEL_41;
          }
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v16);
        v19 = CA::ADMBuilder::Impl::parse_bound(a1, __p);
        v20 = v19;
        if (SBYTE3(v67) < 0)
        {
          operator delete(*__p);
        }

        if (!(v20 >> 32))
        {
          v53 = CA::ADMBuilder::Impl::log(v19);
          v11 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
          if (v11)
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v60, v58, "");
            v54 = (v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v60 : v60.__r_.__value_.__r.__words[0];
            *__p = 136315650;
            *&__p[4] = "ADMBuilder.cpp";
            v64 = 1024;
            v65 = 747;
            v66 = 2080;
            v67 = v54;
            _os_log_impl(&dword_18F5DF000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown bound for position interaction range of object '%s'", __p, 0x1Cu);
            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v60.__r_.__value_.__l.__data_);
            }
          }

          *(a1 + 632) = -66596;
          goto LABEL_120;
        }

        v57 = v20;
        v11 = std::string::__assign_external(&v62, v16);
        v12 = *a5;
        v13 = 1;
        if (*a5)
        {
          continue;
        }

        break;
      }

LABEL_41:
      if ((v14 & 1) == 0)
      {
LABEL_77:
        if (*(a1 + 632))
        {
          goto LABEL_129;
        }

        v41 = CA::ADMBuilder::Impl::log(v11);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v60, v58, "");
          v42 = (v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v60 : v60.__r_.__value_.__r.__words[0];
          *__p = 136315650;
          *&__p[4] = "ADMBuilder.cpp";
          v64 = 1024;
          v65 = 775;
          v66 = 2080;
          v67 = v42;
          _os_log_impl(&dword_18F5DF000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing coordinate for position interaction range of object '%s'", __p, 0x1Cu);
          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v60.__r_.__value_.__l.__data_);
          }
        }

        v43 = -66592;
        goto LABEL_128;
      }

      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v62.__r_.__value_.__l.__data_, &v61.__r_.__value_.__l.__data_);
      v29 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>((a1 + 800), __p, __p);
      v30 = v29;
      if (SBYTE3(v67) < 0)
      {
        operator delete(*__p);
      }

      if (v30)
      {
        v31 = v15 - 3;
        if (*(a3 + 81) == 1)
        {
          if (*(a3 + 80) != v31 < 3)
          {
            v32 = CA::ADMBuilder::Impl::log(v29);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v60, v58, "");
              v33 = (v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v60 : v60.__r_.__value_.__r.__words[0];
              *__p = 136315650;
              *&__p[4] = "ADMBuilder.cpp";
              v64 = 1024;
              v65 = 789;
              v66 = 2080;
              v67 = v33;
              _os_log_impl(&dword_18F5DF000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d Conflicting coordinate systems for position interaction range of object '%s'", __p, 0x1Cu);
              if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v60.__r_.__value_.__l.__data_);
              }
            }

            *(a1 + 632) = -66603;
          }
        }

        else
        {
          if (v31 >= 3)
          {
            v48 = 256;
          }

          else
          {
            v48 = 257;
          }

          *(a3 + 80) = v48;
        }

        if (v57 == 1)
        {
          if (v15 <= 5)
          {
            v51 = qword_18F9021D8[v15];
            v52 = (a3 + qword_18F9021A8[v15]);
            *v52 = 0;
            *(a3 + v51) = 1;
            *(a1 + 608) = v52;
          }

          operator new();
        }

        if (!v57)
        {
          if (v15 <= 5)
          {
            v49 = qword_18F902178[v15];
            v50 = (a3 + qword_18F902148[v15]);
            *v50 = 0;
            *(a3 + v49) = 1;
            *(a1 + 608) = v50;
          }

          operator new();
        }

        goto LABEL_129;
      }

      v46 = CA::ADMBuilder::Impl::log(v29);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v60, v58, "");
        v47 = (v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v60 : v60.__r_.__value_.__r.__words[0];
        *__p = 136315650;
        *&__p[4] = "ADMBuilder.cpp";
        v64 = 1024;
        v65 = 867;
        v66 = 2080;
        v67 = v47;
        _os_log_impl(&dword_18F5DF000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d Multiple coordinates for position interaction range of object '%s'", __p, 0x1Cu);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      v43 = -66589;
    }

    else
    {
LABEL_120:
      if (*(a1 + 632))
      {
LABEL_129:
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        return 1;
      }

      v55 = CA::ADMBuilder::Impl::log(v11);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v60, v58, "");
        v56 = (v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v60 : v60.__r_.__value_.__r.__words[0];
        *__p = 136315650;
        *&__p[4] = "ADMBuilder.cpp";
        v64 = 1024;
        v65 = 768;
        v66 = 2080;
        v67 = v56;
        _os_log_impl(&dword_18F5DF000, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing bound for position interaction range of object '%s'", __p, 0x1Cu);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      v43 = -66595;
    }

LABEL_128:
    *(a1 + 632) = v43;
    goto LABEL_129;
  }

  if (!a5 || (v21 = *a5) == 0)
  {
LABEL_61:
    if (!*(a1 + 632))
    {
      v36 = CA::ADMBuilder::Impl::log(v10);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v62, a2, "");
        v37 = (v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v62 : v62.__r_.__value_.__r.__words[0];
        *__p = 136315650;
        *&__p[4] = "ADMBuilder.cpp";
        v64 = 1024;
        v65 = 731;
        v66 = 2080;
        v67 = v37;
        _os_log_impl(&dword_18F5DF000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing bound for gain interaction range of object '%s'", __p, 0x1Cu);
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }
      }

      *(a1 + 632) = -66595;
    }

    return 1;
  }

  v59 = a2;
  LOBYTE(v22) = 0;
  LODWORD(v23) = 0;
  v24 = 0;
  v25 = a5 + 2;
  while (1)
  {
    v26 = *(v25 - 1);
    if (!strcmp(v21, "bound"))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, v26);
      v10 = CA::ADMBuilder::Impl::parse_bound(a1, __p);
      v23 = v10;
      if (SBYTE3(v67) < 0)
      {
        operator delete(*__p);
      }

      if ((v23 & 0x100000000) == 0)
      {
        v34 = CA::ADMBuilder::Impl::log(v10);
        v10 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
        if (v10)
        {
          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v62, v59, "");
          v35 = (v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v62 : v62.__r_.__value_.__r.__words[0];
          *__p = 136315650;
          *&__p[4] = "ADMBuilder.cpp";
          v64 = 1024;
          v65 = 693;
          v66 = 2080;
          v67 = v35;
          _os_log_impl(&dword_18F5DF000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown bound for gain interaction range of object '%s'", __p, 0x1Cu);
          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }
        }

        *(a1 + 632) = -66596;
        a2 = v59;
        goto LABEL_61;
      }

      v22 = HIDWORD(v23) & 1;
      goto LABEL_33;
    }

    v10 = strcmp(v21, "gainUnit");
    if (!v10)
    {
      break;
    }

LABEL_33:
    v28 = *v25;
    v25 += 2;
    v21 = v28;
    if (!v28)
    {
      goto LABEL_34;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v26);
  v10 = CA::ADMBuilder::Impl::parse_gain_unit(a1, __p);
  v27 = v10;
  if (SBYTE3(v67) < 0)
  {
    operator delete(*__p);
  }

  if (v27 > 0xFFu)
  {
    v24 = v27;
    goto LABEL_33;
  }

  v44 = CA::ADMBuilder::Impl::log(v10);
  v10 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v62, v59, "");
    v45 = (v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v62 : v62.__r_.__value_.__r.__words[0];
    *__p = 136315650;
    *&__p[4] = "ADMBuilder.cpp";
    v64 = 1024;
    v65 = 704;
    v66 = 2080;
    v67 = v45;
    _os_log_impl(&dword_18F5DF000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown unit for gain interaction range of object '%s'", __p, 0x1Cu);
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }
  }

LABEL_34:
  a2 = v59;
  if ((v22 & 1) == 0)
  {
    goto LABEL_61;
  }

  if (v23 == 1)
  {
    if ((*(a3 + 28) & 1) == 0)
    {
      *(a3 + 28) = 1;
    }

    *(a3 + 20) = 0;
    *(a3 + 24) = v24;
    *(a1 + 608) = a3 + 20;
    operator new();
  }

  if (!v23)
  {
    if ((*(a3 + 16) & 1) == 0)
    {
      *(a3 + 16) = 1;
    }

    *(a3 + 8) = 0;
    *(a3 + 12) = v24;
    *(a1 + 608) = a3 + 8;
    operator new();
  }

  return 1;
}

void sub_18F6C67DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = std::string::basic_string[abi:ne200100](a1, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

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

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, void *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

std::string *CA::ADMBuilder::Impl::label_from_attributes(std::string *this, std::string **a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  if (a2)
  {
    v2 = this;
    this = *a2;
    if (*a2)
    {
      v3 = a2 + 2;
      do
      {
        if (!strcmp(this, "language"))
        {
          std::optional<std::string>::operator=[abi:ne200100]<char const* const&,void>(v2, *(v3 - 1));
        }

        v4 = *v3;
        v3 += 2;
        this = v4;
      }

      while (v4);
    }
  }

  return this;
}

void CA::ADMLabel::~ADMLabel(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL Synchronously_ServicingMainRunLoop(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  if (Current == CFRunLoopGetMain())
  {
    context = *byte_1F0325DE0;
    {
      Synchronously_ServicingMainRunLoop::source = CFRunLoopSourceCreate(0, 0, &context);
    }

    CFRunLoopAddSource(Current, Synchronously_ServicingMainRunLoop::source, @"com.apple.coreaudio.synchronously");
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __Synchronously_ServicingMainRunLoop_block_invoke;
    v6[3] = &unk_1E72BA140;
    v6[4] = &v7;
    v6[5] = Current;
    (*(a1 + 16))(a1, v6);
    if ((v8[3] & 1) == 0)
    {
      v4 = *MEMORY[0x1E695E8E0];
      do
      {
        CFRunLoopRunInMode(v4, 20.0, 1u);
      }

      while (*(v8 + 24) != 1);
    }

    CFRunLoopRemoveSource(Current, Synchronously_ServicingMainRunLoop::source, @"com.apple.coreaudio.synchronously");
    v5 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
    return v5;
  }

  else
  {

    return Synchronously(a1);
  }
}

uint64_t BufferedSoundCheckAnalyzer::Finish(BufferedSoundCheckAnalyzer *this, CACFDictionary *a2)
{
  v4 = *(this + 22);
  v5 = *(v4 + 48);
  if (v5)
  {
    bzero((*(v4 + 24) + v5), (*(v4 + 16) - v5));
    (*v4)(*(v4 + 8), *(v4 + 24), *(v4 + 16));
  }

  SoundCheckAnalyzer::Finish(this, a2);
  return 0;
}

void BufferedSoundCheckAnalyzer::~BufferedSoundCheckAnalyzer(BufferedSoundCheckAnalyzer *this)
{
  BufferedSoundCheckAnalyzer::~BufferedSoundCheckAnalyzer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325E40;
  v2 = *(this + 14);
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  v3 = *(this + 22);
  *(this + 22) = 0;
  if (v3)
  {
    std::default_delete<BlockBufferer>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    MEMORY[0x193ADF220](v4, 0x1080C404ACF7207);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  SoundCheckAnalyzer::~SoundCheckAnalyzer(this);
}

void std::default_delete<BlockBufferer>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x193ADF220);
}

uint64_t BufferedSoundCheckAnalyzer::Start(int32x2_t *this, AudioStreamBasicDescription *a2, const AudioChannelLayout *a3, void *a4, int a5)
{
  LODWORD(v18.mSampleRate) = 0;
  if (CAStreamBasicDescription::IdentifyCommonPCMFormat(a2, &v18) && LODWORD(v18.mSampleRate) == 1 && (a2->mFormatFlags & 0x20) == 0)
  {
    v10 = this;
    v11 = a2;
    goto LABEL_15;
  }

  mChannelsPerFrame = a2->mChannelsPerFrame;
  v18.mSampleRate = a2->mSampleRate;
  *&v18.mFormatID = 0x96C70636DLL;
  v18.mBytesPerPacket = 4 * mChannelsPerFrame;
  v18.mFramesPerPacket = 1;
  v18.mBytesPerFrame = 4 * mChannelsPerFrame;
  v18.mChannelsPerFrame = mChannelsPerFrame;
  *&v18.mBitsPerChannel = 32;
  result = AudioConverterNewWithOptions(a2, &v18, 0, &this[14]);
  if (!result)
  {
    if (!a5 || (v14 = this[14], v22 = a5, v23 = 1684891491, v21 = a4, v19[0] = &v23, v19[1] = &v22, v19[2] = &v21, v20[0] = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>, v20[1] = v19, result = with_resolved(v14.i32[0], v20), !result))
    {
      if ((a2->mFormatFlags & 0x20) != 0)
      {
        v15 = (16 * a2->mChannelsPerFrame) | 8;
      }

      else
      {
        v15 = 24;
      }

      this[20].i32[0] = v15;
      v16 = operator new(v15);
      v17 = this[19];
      this[19] = v16;
      if (v17)
      {
        MEMORY[0x193ADF220](*&v17, 0x1080C404ACF7207);
      }

      v11 = &v18;
      v10 = this;
LABEL_15:
      SoundCheckAnalyzer::Start(v10, v11, a3);
      operator new();
    }
  }

  return result;
}

uint64_t CAStreamBasicDescription::IdentifyCommonPCMFormat(_DWORD *a1, int *a2)
{
  if (a1[2] != 1819304813)
  {
    return 0;
  }

  if (a1[5] != 1)
  {
    return 0;
  }

  v2 = a1[6];
  if (v2 != a1[4])
  {
    return 0;
  }

  v3 = a1[8];
  if (v2 < v3 >> 3)
  {
    return 0;
  }

  v4 = a1[7];
  if (!v4)
  {
    return 0;
  }

  v5 = a1[3];
  if ((v5 & 0x20) == 0)
  {
    v9 = v2 == v2 / v4 * v4;
    v2 /= v4;
    if (!v9)
    {
      return 0;
    }
  }

  v6 = 0;
  if ((v5 & 2) == 0 && 8 * v2 == v3)
  {
    if (v5)
    {
      if ((v5 & 0x1F84) != 0)
      {
        return 0;
      }

      if (v2 == 4)
      {
        v6 = 1;
      }

      else
      {
        v6 = 4 * (v2 == 8);
      }
    }

    else if ((v5 & 4) != 0)
    {
      v8 = (v5 >> 7) & 0x3F;
      if (v8 == 24 && v2 == 4)
      {
        v6 = 3;
      }

      else if (v8 || v2 != 4)
      {
        v9 = v2 == 2 && v8 == 0;
        if (v9)
        {
          v6 = 2;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = v6;
  return 1;
}

uint64_t BufferedSoundCheckAnalyzer::ReceiveBufferedBlock(BufferedSoundCheckAnalyzer *this, char *a2, const unsigned __int8 *a3)
{
  v3 = *(this + 10);
  v4 = a3 / v3;
  if ((a3 / v3) & 0x7FFF) != 0 && (*(this + 2))
  {
    return 4294967246;
  }

  if (v3 <= a3)
  {
    v7 = 0;
    do
    {
      if (v4 >= 0x8000)
      {
        v8 = 0x8000;
      }

      else
      {
        v8 = v4;
      }

      v29 = v8;
      v9 = *(this + 2);
      if ((v9 & 2) != 0)
      {
        v10 = *(this + 7);
        if (v10)
        {
          loudnessMeasurementGenerateBlocks(v10, v29, &a2[4 * v7]);
          v9 = *(this + 2);
        }
      }

      v28 = v7;
      if ((v9 & 4) != 0 && a2)
      {
        v11 = &a2[4 * v7];
        v12 = *(this + 8);
        v13 = *(this + 9);
        v14 = v13 - v12;
        if (v13 - v12 == 128)
        {
          TruePeak::Process(*(this + 8), v29, &a2[4 * v7]);
        }

        else
        {
          v15 = v14 >> 7;
          if ((v14 >> 7) <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = v14 >> 7;
          }

          v17 = v29;
          do
          {
            v18 = (*(this + 12) - *(this + 11)) >> 2;
            if (v17 >= v18)
            {
              v19 = v18;
            }

            else
            {
              v19 = v17;
            }

            if (v13 != v12)
            {
              v20 = 0;
              do
              {
                v21 = *(this + 11);
                v22 = v21;
                v23 = v19;
                v24 = v20;
                if (v19 >= 1)
                {
                  do
                  {
                    *v22++ = *&v11[4 * v24];
                    v24 += v15;
                    --v23;
                  }

                  while (v23);
                }

                TruePeak::Process((*(this + 8) + (v20++ << 7)), v19, v21);
              }

              while (v20 != v16);
            }

            v11 += 4 * v15 * v19;
            v25 = __OFSUB__(v17, v19);
            v17 -= v19;
          }

          while (!((v17 < 0) ^ v25 | (v17 == 0)));
        }
      }

      v7 = v28 + v29;
      v4 -= v29;
    }

    while (v4);
  }

  return 0;
}

uint64_t BufferedSoundCheckAnalyzer::ProcessBuffer(BufferedSoundCheckAnalyzer *this, int a2, const AudioBufferList *__src, AudioStreamPacketDescription *a4)
{
  if (*(this + 14))
  {
    v9 = *(this + 15);
    v10 = *(this + 16);
    v8 = (this + 120);
    if (v9 == v10)
    {
      v11 = (*(this + 10) << 15);
      if (v11)
      {
        std::vector<unsigned char>::__append(v8, v11);
      }
    }

    *(this + 36) = a2;
    memcpy(*(this + 19), __src, *(this + 40));
    *(this + 21) = a4;
    while (1)
    {
      ioOutputDataPacketSize = 0x8000;
      v12 = *(this + 10);
      v13 = *(this + 11);
      v20.mNumberBuffers = 1;
      v14 = *(this + 14);
      v20.mBuffers[0].mData = *(this + 15);
      v20.mBuffers[0].mNumberChannels = v13;
      v20.mBuffers[0].mDataByteSize = v12 << 15;
      v15 = AudioConverterFillComplexBuffer(v14, BufferedSoundCheckAnalyzer::ACInputProc, this, &ioOutputDataPacketSize, &v20, 0);
      if (ioOutputDataPacketSize)
      {
        if (BlockBufferer::AddInput(*(this + 22), *(this + 15), *(this + 10) * ioOutputDataPacketSize))
        {
          break;
        }
      }

      if (v15)
      {
        if (v15 == 5)
        {
          return 0;
        }

        return v15;
      }
    }

    return v15;
  }

  else
  {
    mData = __src->mBuffers[0].mData;
    v18 = *(this + 10);
    v19 = *(this + 22);

    return BlockBufferer::AddInput(v19, mData, v18 * a2);
  }
}

uint64_t BlockBufferer::AddInput(BlockBufferer *this, const unsigned __int8 *__src, unsigned int a3)
{
  v3 = a3;
  v4 = __src;
  v6 = *(this + 12);
  if (v6)
  {
    v7 = *(this + 4) - v6;
    if (v7 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = v7;
    }

    memcpy((*(this + 3) + v6), __src, v8);
    v9 = *(this + 12) + v8;
    *(this + 12) = v9;
    if (v9 < *(this + 4))
    {
      return 0;
    }

    result = (*this)(*(this + 1), *(this + 3));
    if (result)
    {
      return result;
    }

    v3 -= v8;
    v4 += v8;
  }

  v11 = *(this + 4);
  v12 = v3 % v11;
  if (v11 <= v3)
  {
    v13 = v3 - v12;
    result = (*this)(*(this + 1), v4, v13);
    if (result)
    {
      return result;
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v12)
  {
    memcpy(*(this + 3), &v4[v13], v12);
  }

  result = 0;
  *(this + 12) = v12;
  return result;
}

uint64_t BufferedSoundCheckAnalyzer::ACInputProc(BufferedSoundCheckAnalyzer *this, OpaqueAudioConverter *a2, unsigned int *__dst, AudioBufferList *a4, AudioStreamPacketDescription **a5, void *a6)
{
  v6 = *(a5 + 36);
  if (!v6)
  {
    return 5;
  }

  *a2 = v6;
  memcpy(__dst, a5[19], *(a5 + 40));
  if (a4)
  {
    *&a4->mNumberBuffers = a5[21];
  }

  result = 0;
  *(a5 + 36) = 0;
  return result;
}

uint64_t ID3TagBase::Init(ID3TagBase *this)
{
  if (*(this + 9) != 73 || *(this + 10) != 68 || *(this + 11) != 51)
  {
    return 0;
  }

  v1 = ((*(this + 15) & 0x7F) << 21) | ((*(this + 16) & 0x7F) << 14) | ((*(this + 17) & 0x7F) << 7) | *(this + 18) & 0x7F;
  v2 = *(this + 14);
  if ((v2 & 0x10) != 0)
  {
    v3 = v1 + 20;
    *(this + 15) = 10;
  }

  else
  {
    v3 = v1 + 10;
  }

  v4 = *(this + 12);
  *(this + 16) = v4;
  if (v2 < 0)
  {
    *(this + 68) = (v4 & 0xFE) == 2;
    *(this + 69) = v4 == 4;
  }

  v5 = v4 >= 3 ? 10 : 6;
  *(this + 13) = v3;
  *(this + 14) = v5;
  if (v3 < v5 + 11)
  {
    return 0;
  }

  v6 = 1;
  *(this + 8) = 1;
  return v6;
}

void ID3TagBase::~ID3TagBase(ID3TagBase *this)
{
  *this = &unk_1F0337350;
  std::__list_imp<ID3FrameInfo>::clear(this + 3);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0337350;
  std::__list_imp<ID3FrameInfo>::clear(this + 3);
}

uint64_t ID3ParserHandle::ID3API_GetProperty(ID3ParserHandle *this, unsigned int a2, unsigned int *a3, int a4, unsigned int *a5, int *a6)
{
  v6 = 1936292415;
  if (!a5)
  {
    return v6;
  }

  v6 = 1886548031;
  if (a4 <= 1718185573)
  {
    if (a4 == 1717792372)
    {
      v6 = 1936292415;
      if (*a5 < 4)
      {
        return v6;
      }

      *a5 = 0;
      v40 = *(this + 2);
      if (v40)
      {
        if ((*(v40 + 48) & 1) == 0)
        {
          do
          {
            v41 = ID3ParserHandle::CallReadProcForMoreFrames(this);
            if (v41)
            {
              v6 = v41;
              if (a6)
              {
                *a6 = 0;
              }

              *a5 = 0;
              return v6;
            }

            v40 = *(this + 2);
          }

          while (*(v40 + 48) != 1);
          *a5 = 4;
        }

        if (a6)
        {
          v6 = 0;
          *a6 = *(v40 + 40);
          return v6;
        }
      }

      else
      {
        cf = 0;
        LODWORD(__src) = 0;
        if (a6)
        {
          v6 = (*(this + 3))(*(this + 4), 0, 125, 2, &cf, &__src);
          if (v6)
          {
            return v6;
          }

          if (*cf || !*(cf + 1))
          {
            v42 = 6;
          }

          else
          {
            v42 = 7;
          }

          *a6 = v42;
          (*(this + 3))(*(this + 4), 1, 125, 2, &cf, &__src);
        }
      }

      return 0;
    }

    if (a4 != 1717854580)
    {
      return v6;
    }

    v6 = 1936746047;
    if (a2 < 4)
    {
      return v6;
    }

    if (!a3)
    {
      return v6;
    }

    v6 = 1936292415;
    if (*a5 < 8)
    {
      return v6;
    }

    v55 = 0;
    __src = 0;
    v13 = *(this + 2);
    v14 = *a3;
    if (!v13)
    {
      if (v14 == 97)
      {
        cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        LOWORD(v53) = 257;
        CACFDictionary::AddString(&cf, @"language", @"eng");
        CACFDictionary::AddString(&cf, @"identifier", &stru_1F0340B48);
        v45 = ID3ParserHandle::CopyV1String(this, *a3);
        if (v45)
        {
          CACFDictionary::AddString(&cf, @"text", v45);
          CFRelease(v45);
          if (cf)
          {
            CFRetain(cf);
            v46 = cf;
          }

          else
          {
            v46 = 0;
          }

          v6 = 0;
          *a6 = v46;
        }

        else
        {
          v6 = 2003334207;
        }

        CACFDictionary::~CACFDictionary(&cf);
      }

      else
      {
        v48 = ID3ParserHandle::CopyV1String(this, *a3);
        if (v48)
        {
          v6 = 0;
          *a6 = v48;
        }

        else
        {
          return 2003334207;
        }
      }

      return v6;
    }

    v15 = v13 + 24;
    v16 = v15;
    while (1)
    {
      v16 = *(v16 + 8);
      if (v16 == v15)
      {
        break;
      }

      if (*(v16 + 24) == v14)
      {
        v17 = *(v16 + 20);
        v6 = (*(this + 3))(*(this + 4), 0);
        if (!v6)
        {
          cf = 0;
          ID3TagBase::CopyFrameData(*(this + 2), __src, v55, *a3, &cf);
          if (cf)
          {
            v6 = 0;
            *a6 = cf;
            *a5 = 8;
          }

          else
          {
            v6 = 2003334207;
          }

          (*(this + 3))(*(this + 4), 1, *a3, v17, &__src, &v55);
        }

        return v6;
      }
    }

    return 1852794431;
  }

  if (a4 != 1718185574)
  {
    if (a4 == 1953916274)
    {
      v6 = 1936292415;
      if (*a5 < 4)
      {
        return v6;
      }

      *a5 = 4;
      if (a6)
      {
        v39 = *(this + 2);
        if (v39)
        {
          v12 = *(v39 + 64);
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_233;
      }
    }

    else
    {
      if (a4 != 1953720698)
      {
        return v6;
      }

      v6 = 1936292415;
      if (*a5 < 4)
      {
        return v6;
      }

      *a5 = 4;
      if (a6)
      {
        v11 = *(this + 2);
        if (v11)
        {
          v12 = *(v11 + 52);
        }

        else
        {
          v12 = 128;
        }

LABEL_233:
        v6 = 0;
        *a6 = v12;
        return v6;
      }
    }

    return 0;
  }

  v6 = 1936746047;
  if (a2 < 8)
  {
    return v6;
  }

  if (!a3)
  {
    return v6;
  }

  v6 = 1936292415;
  if (*a5 < 0xC)
  {
    return v6;
  }

  v18 = *(this + 2);
  v19 = *a3;
  if (v18)
  {
    if (v19 && a3[1] && !ID3TagBase::MultipleFramesAllowed(*(v18 + 64), v19))
    {
      return 1768321599;
    }

    v6 = 1852794431;
    *a5 = 12;
    while (1)
    {
      v20 = *(this + 2);
      v21 = *a3;
      v22 = a3[1];
      v23 = v20 + 24;
      v24 = *(v20 + 40);
      if (v24)
      {
        v25 = v24 - 1 >= v22;
      }

      else
      {
        v25 = 0;
      }

      v26 = !v25;
      if (v21)
      {
        if ((v26 & 1) == 0)
        {
          v27 = *(v20 + 64);
          if (v21 >> 24)
          {
            v28 = 0;
          }

          else
          {
            v28 = v27 >= 3;
          }

          if (v28)
          {
            LODWORD(v21) = ID3TagBase::TranslateV2IDToV3(v21);
            goto LABEL_62;
          }

          if (v21 >> 24)
          {
            v29 = v27 == 2;
          }

          else
          {
            v29 = 0;
          }

          if (!v29)
          {
            goto LABEL_62;
          }

          if (v21 > 1414091826)
          {
            if (v21 <= 1414550849)
            {
              if (v21 <= 1414483032)
              {
                if (v21 <= 1414284621)
                {
                  switch(v21)
                  {
                    case 0x54495433:
                      LODWORD(v21) = 5526579;
                      break;
                    case 0x544B4559:
                      LODWORD(v21) = 5524293;
                      break;
                    case 0x544C414E:
                      LODWORD(v21) = 5524545;
                      break;
                  }
                }

                else if (v21 > 1414480203)
                {
                  if (v21 == 1414480204)
                  {
                    LODWORD(v21) = 5525332;
                  }

                  else if (v21 == 1414481486)
                  {
                    LODWORD(v21) = 5525318;
                  }
                }

                else if (v21 == 1414284622)
                {
                  LODWORD(v21) = 5524549;
                }

                else if (v21 == 1414350148)
                {
                  LODWORD(v21) = 5524820;
                }
              }

              else if (v21 > 1414546737)
              {
                if (v21 > 1414546739)
                {
                  if (v21 == 1414546740)
                  {
                    LODWORD(v21) = 5525556;
                  }

                  else if (v21 == 1414549331)
                  {
                    LODWORD(v21) = 5525569;
                  }
                }

                else if (v21 == 1414546738)
                {
                  LODWORD(v21) = 5525554;
                }

                else
                {
                  LODWORD(v21) = 5525555;
                }
              }

              else if (v21 > 1414484568)
              {
                if (v21 == 1414484569)
                {
                  LODWORD(v21) = 5525330;
                }

                else if (v21 == 1414546737)
                {
                  LODWORD(v21) = 5525553;
                }
              }

              else if (v21 == 1414483033)
              {
                LODWORD(v21) = 5525324;
              }

              else if (v21 == 1414484037)
              {
                LODWORD(v21) = 5525313;
              }

              goto LABEL_62;
            }

            if (v21 > 1431522387)
            {
              if (v21 > 1464811857)
              {
                if (v21 <= 1464882497)
                {
                  if (v21 == 1464811858)
                  {
                    LODWORD(v21) = 5718354;
                  }

                  else if (v21 == 1464811859)
                  {
                    LODWORD(v21) = 5718355;
                  }

                  goto LABEL_62;
                }

                if (v21 == 1464882498)
                {
                  LODWORD(v21) = 5722178;
                  goto LABEL_62;
                }

                if (v21 != 1465407576)
                {
                  goto LABEL_62;
                }

                v37 = 22616;
              }

              else
              {
                if (v21 <= 1464029007)
                {
                  if (v21 == 1431522388)
                  {
                    LODWORD(v21) = 5590100;
                  }

                  else if (v21 == 1464029005)
                  {
                    LODWORD(v21) = 5718861;
                  }

                  goto LABEL_62;
                }

                if (v21 == 1464029008)
                {
                  LODWORD(v21) = 5718864;
                  goto LABEL_62;
                }

                if (v21 != 1464811846)
                {
                  goto LABEL_62;
                }

                v37 = 16710;
              }

              LODWORD(v21) = v37 | 0x570000;
              goto LABEL_62;
            }

            if (v21 <= 1414746690)
            {
              if (v21 > 1414677568)
              {
                if (v21 == 1414677569)
                {
                  LODWORD(v21) = 5526084;
                }

                else if (v21 == 1414744410)
                {
                  LODWORD(v21) = 5526345;
                }
              }

              else if (v21 == 1414550850)
              {
                LODWORD(v21) = 5525570;
              }

              else if (v21 == 1414677323)
              {
                LODWORD(v21) = 5526091;
              }

              goto LABEL_62;
            }

            if (v21 > 1415075927)
            {
              if (v21 == 1415075928)
              {
                LODWORD(v21) = 5527640;
              }

              else if (v21 == 1415136594)
              {
                LODWORD(v21) = 5527877;
              }

              goto LABEL_62;
            }

            if (v21 != 1414746691)
            {
              if (v21 != 1414746949)
              {
                goto LABEL_62;
              }

              v34 = 5526083;
              v35 = 272;
              goto LABEL_214;
            }

            v36 = 21059;
LABEL_191:
            LODWORD(v21) = v36 | 0x540000;
            goto LABEL_62;
          }

          if (v21 <= 1398361171)
          {
            if (v21 <= 1279872586)
            {
              if (v21 <= 1162958144)
              {
                switch(v21)
                {
                  case 0x41454E43:
                    LODWORD(v21) = 4411969;
                    break;
                  case 0x41504943:
                    LODWORD(v21) = 5261635;
                    break;
                  case 0x434F4D4D:
                    LODWORD(v21) = 4411213;
                    break;
                }
              }

              else if (v21 > 1195724609)
              {
                if (v21 == 1195724610)
                {
                  LODWORD(v21) = 4670799;
                }

                else if (v21 == 1229999187)
                {
                  LODWORD(v21) = 4804684;
                }
              }

              else if (v21 == 1162958145)
              {
                LODWORD(v21) = 4542805;
              }

              else if (v21 == 1163150159)
              {
                LODWORD(v21) = 4543555;
              }
            }

            else if (v21 > 1347375180)
            {
              if (v21 > 1381384515)
              {
                if (v21 == 1381384516)
                {
                  v38 = 22081;
                }

                else
                {
                  if (v21 != 1381388866)
                  {
                    goto LABEL_62;
                  }

                  v38 = 17750;
                }

                LODWORD(v21) = v38 | 0x520000;
              }

              else if (v21 == 1347375181)
              {
                LODWORD(v21) = 5263184;
              }

              else if (v21 == 1380078918)
              {
                LODWORD(v21) = 4347206;
              }
            }

            else if (v21 > 1296845907)
            {
              if (v21 == 1296845908)
              {
                LODWORD(v21) = 5065804;
              }

              else if (v21 == 1346588244)
              {
                LODWORD(v21) = 4410964;
              }
            }

            else if (v21 == 1279872587)
            {
              LODWORD(v21) = 5000779;
            }

            else if (v21 == 1296254025)
            {
              LODWORD(v21) = 5063497;
            }

LABEL_62:
            v30 = *(v20 + 32);
            if (v30 != v23)
            {
              v32 = 0;
              do
              {
                if (*(v30 + 16) == v21)
                {
                  if (v32 == v22)
                  {
                    goto LABEL_247;
                  }

                  ++v32;
                }

                v30 = *(v30 + 8);
              }

              while (v30 != v23);
            }

            goto LABEL_68;
          }

          if (v21 <= 1413759315)
          {
            if (v21 <= 1413632076)
            {
              if (v21 == 1398361172)
              {
                LODWORD(v21) = 5459028;
                goto LABEL_62;
              }

              if (v21 == 1398363203)
              {
                LODWORD(v21) = 5461059;
                goto LABEL_62;
              }

              if (v21 != 1413565506)
              {
                goto LABEL_62;
              }

              v36 = 16716;
              goto LABEL_191;
            }

            if (v21 > 1413697357)
            {
              if (v21 != 1413697358)
              {
                if (v21 == 1413697360)
                {
                  LODWORD(v21) = 5522258;
                }

                goto LABEL_62;
              }

              v34 = 5521740;
              v35 = 515;
            }

            else
            {
              if (v21 == 1413632077)
              {
                LODWORD(v21) = 5522000;
                goto LABEL_62;
              }

              if (v21 != 1413697357)
              {
                goto LABEL_62;
              }

              v34 = 5521740;
              v35 = 513;
            }
          }

          else if (v21 > 1413893203)
          {
            if (v21 > 1414091824)
            {
              if (v21 == 1414091825)
              {
                LODWORD(v21) = 5526577;
              }

              else
              {
                LODWORD(v21) = 5526578;
              }

              goto LABEL_62;
            }

            if (v21 == 1413893204)
            {
              LODWORD(v21) = 5523028;
              goto LABEL_62;
            }

            if (v21 != 1414090053)
            {
              goto LABEL_62;
            }

            v34 = 5521740;
            v35 = 2049;
          }

          else
          {
            if (v21 <= 1413828162)
            {
              if (v21 == 1413759316)
              {
                LODWORD(v21) = 5522497;
              }

              else if (v21 == 1413762137)
              {
                LODWORD(v21) = 5522521;
              }

              goto LABEL_62;
            }

            if (v21 != 1413828163)
            {
              if (v21 == 1413830740)
              {
                LODWORD(v21) = 5527636;
              }

              goto LABEL_62;
            }

            v34 = 5521740;
            v35 = 1026;
          }

LABEL_214:
          LODWORD(v21) = v34 | v35;
          goto LABEL_62;
        }
      }

      else if ((v26 & 1) == 0)
      {
        v30 = *(v20 + 32);
        if (v22)
        {
          v31 = v22 + 1;
          do
          {
            v30 = *(v30 + 8);
            --v31;
          }

          while (v31 > 1);
        }

        if (v30 != v23)
        {
LABEL_247:
          cf = *(v30 + 16);
          v53 = *(v30 + 24);
          v6 = 0;
          if (a6)
          {
            *a6 = cf;
            v47 = v53;
            goto LABEL_263;
          }

          return v6;
        }
      }

LABEL_68:
      if (*(v20 + 48))
      {
        return v6;
      }

      v33 = ID3ParserHandle::CallReadProcForMoreFrames(this);
      if (v33)
      {
        return v33;
      }
    }
  }

  if (!v19)
  {
    if (!a6)
    {
      return 0;
    }

    v49 = a3[1];
    if (v49 <= 6)
    {
      v6 = 0;
      v50 = dword_18F9026AC[v49];
      v51 = dword_18F9026C8[v49];
      v47 = dword_18F9026E4[v49];
      *a6 = v50;
      a6[1] = v51;
LABEL_263:
      a6[2] = v47;
      return v6;
    }

    return 1852794431;
  }

  if (a3[1])
  {
    return 1852794431;
  }

  if (!a6)
  {
    return 0;
  }

  v43 = *a3;

  return ID3ParserHandle::GetV1FrameInfoByID(v43, a6);
}

uint64_t ID3ParserHandle::CallReadProcForMoreFrames(ID3ParserHandle *this)
{
  v1 = 0;
  size = 0;
  v2 = *(this + 2);
  if (*(v2 + 48))
  {
    return v1;
  }

  v4 = *(v2 + 40);
  if (v4)
  {
    v5 = *(v2 + 32);
    v6 = (v4 - 1);
    if (v6)
    {
      v7 = v6 + 1;
      do
      {
        v5 = *(v5 + 8);
        --v7;
      }

      while (v7 > 1);
    }

    if (v5 == v2 + 24)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5 + 16;
    }

    v9 = (*(v8 + 4) + *(v8 + 8));
    if (v9 >= *(v2 + 52))
    {
      v1 = 0;
      *(v2 + 48) = 1;
      return v1;
    }
  }

  else
  {
    v9 = 10;
  }

  v1 = 0;
  if (v9 < 1)
  {
    return v1;
  }

  __src = 0;
  if (*(v2 + 68) == 1)
  {
    __dst = 0;
    v63 = 0;
    v64 = 0;
    v11 = v2 + 52;
    v10 = *(v2 + 52);
    size_4 = *(v11 + 4);
    v12 = v10 - v9;
    if (v12 >= 2 * size_4)
    {
      v13 = 2 * size_4;
    }

    else
    {
      v13 = v12;
    }

    v1 = (*(this + 3))(*(this + 4), 0, v9, v13, &__src, &size);
    if (!v1)
    {
      if (size >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = size;
      }

      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__dst, __src, __src + v14, v14);
    }

    (*(this + 3))(*(this + 4), 1, v9, v13, &__src, &size);
    v15 = __dst;
    if (!v1)
    {
      if (ResynchroniseBytes(__dst, v63 - __dst, *(*(this + 2) + 56), &size_4))
      {
        v61[1] = 0;
        ID3TagBase::GetFrameDataSize(*(this + 2), v15, *(*(this + 2) + 56), &v61[1], 0);
        v16 = v61[1];
        v61[0] = v61[1];
        v17 = size_4 + 2 * v61[1];
        v18 = *(*(this + 2) + 52) - v9;
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        v1 = (*(this + 3))(*(this + 4), 0, v9, v19, &__src, &size);
        if (!v1)
        {
          if (size >= v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = size;
          }

          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__dst, __src, __src + v20, v20);
        }

        (*(this + 3))(*(this + 4), 1, v9, v19, &__src, &size);
        v15 = __dst;
        if (!v1)
        {
          v21 = ResynchroniseBytes(__dst, v63 - __dst, *(*(this + 2) + 56) + v16, v61);
          v22 = *(this + 2);
          if (v21)
          {
            v23 = v61[0];
            ID3TagBase::SetFrameDataSize(v22, v15, *(v22 + 56), v61[0] - *(v22 + 56));
            v24 = *(this + 2);
            if ((*(v24 + 48) & 1) == 0 && *(v24 + 56) <= v23)
            {
              ID3TagBase::ProvideFrameData(v24, v15, v23, v9, v60, 0);
            }

            v1 = 0;
            if (!v15)
            {
              return v1;
            }
          }

          else
          {
            *(v22 + 48) = 1;
            if (!v15)
            {
              return v1;
            }
          }

LABEL_65:
          operator delete(v15);
          return v1;
        }
      }

      else
      {
        v1 = 0;
        *(*(this + 2) + 48) = 1;
      }
    }

    if (!v15)
    {
      return v1;
    }

    goto LABEL_65;
  }

  v25 = (*(this + 3))(*(this + 4), 0, v9, *(v2 + 56), &__src, &size);
  if (v25)
  {
    v1 = v25;
    (*(this + 3))(*(this + 4), 1, v9, *(*(this + 2) + 56), &__src, &size);
    return v1;
  }

  *v61 = 0;
  ID3TagBase::GetFrameDataSize(*(this + 2), __src, size, &v61[1], v61);
  v26 = *(this + 2);
  v27 = *(v26 + 64);
  v28 = v61[1];
  if (v27 == 4 && v61[1] >= 0x80)
  {
    v29 = v61[0];
    v30 = v61[0] - v61[1];
    if (v61[0] > v61[1])
    {
      v31 = *(v26 + 56);
      v32 = v61[0] + v9 + v31;
      if (v32 <= *(v26 + 52))
      {
        v33 = size;
        __dst = 0;
        CADeprecated::CAAutoFree<unsigned char>::allocBytes(&__dst, size, 1);
        v34 = __dst;
        if (!__dst)
        {
          return 2003334207;
        }

        memcpy(__dst, __src, v33);
        (*(this + 3))(*(this + 4), 1, v9, *(*(this + 2) + 56), &__src, &size);
        *v60 = 0;
        v59 = 0;
        v35 = v28 + v9;
        v1 = (*(this + 3))(*(this + 4), 0, (v35 + v31), *(*(this + 2) + 56), v60, &v59);
        if (v1)
        {
LABEL_83:
          free(v34);
          return v1;
        }

        v36 = *(this + 2);
        v37 = *v60;
        if (*v60 && v59 >= 4)
        {
          v38 = bswap32(**v60);
          if (*(v36 + 64) == 2)
          {
            v39 = v38 >> 8;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            v40 = 0;
            goto LABEL_77;
          }
        }

        else if (!v59)
        {
          v39 = 0;
          v40 = 1;
          goto LABEL_77;
        }

        v42 = v59 - 1;
        do
        {
          v39 = 0;
          v44 = *v37;
          v37 = (v37 + 1);
          v43 = v44;
          v40 = v44 == 0;
          v45 = v42-- != 0;
        }

        while (v45 && !v43);
LABEL_77:
        (*(this + 3))(*(this + 4), 1, v35, *(v36 + 56), v60, &v59);
        v46 = *(this + 2);
        if (ID3TagBase::IsValidFrameID(*(v46 + 64), v39))
        {
          if ((*(v46 + 48) & 1) == 0 && *(v46 + 56) <= v33)
          {
            ID3TagBase::ProvideFrameData(v46, v34, v33, v9, &size_4, 0);
          }

          v1 = 0;
          goto LABEL_82;
        }

        if ((*(v46 + 56) + v32) <= *(v46 + 52))
        {
          *v60 = 0;
          v59 = 0;
          v1 = (*(this + 3))(*(this + 4), 0, v32);
          v46 = *(this + 2);
          if (!v1)
          {
            v58 = 0;
            if (*v60 && v59 >= 4)
            {
              v51 = bswap32(**v60);
              if (*(v46 + 64) == 2)
              {
                v51 >>= 8;
              }

              v58 = v51;
            }

            (*(this + 3))(*(this + 4), 1, v32, *(v46 + 56), v60, &v59);
            v1 = 0;
            v46 = *(this + 2);
            v47 = v58;
LABEL_88:
            if (v47)
            {
              v48 = 0;
            }

            else
            {
              v48 = v40;
            }

            if (!v48)
            {
              if (v47 && !ID3TagBase::IsValidFrameID(*(v46 + 64), v47))
              {
                v1 = 2003334207;
              }

              else
              {
                *(v46 + 70) = 1;
                if ((*(v46 + 48) & 1) == 0 && *(v46 + 56) <= v33)
                {
                  ID3TagBase::ProvideFrameData(v46, v34, v33, v9, &size_4, 1);
                }
              }

LABEL_82:
              if (!v34)
              {
                return v1;
              }

              goto LABEL_83;
            }

            if ((*(v46 + 70) & 1) == 0)
            {
              if (v30 >= 0x1000)
              {
                v49 = 4096;
              }

              else
              {
                v49 = v30;
              }

              *v60 = 0;
              v59 = 0;
              v50 = (v32 - v49);
              v1 = (*(this + 3))(*(this + 4), 0, v50, v49, v60, &v59);
              if (v1)
              {
                v46 = *(this + 2);
              }

              else
              {
                if (!v59)
                {
                  goto LABEL_117;
                }

                v52 = *v60;
                v53 = v59 - 1;
                do
                {
                  v55 = *v52;
                  v52 = (v52 + 1);
                  v54 = v55;
                  v45 = v53-- != 0;
                }

                while (v45 && !v54);
                if (v54)
                {
                  v56 = 1;
                }

                else
                {
LABEL_117:
                  v56 = 0;
                }

                (*(this + 3))(*(this + 4), 1, v50, v49, v60, &v59);
                v1 = 0;
                v57 = 0;
                v46 = *(this + 2);
                if (!v56)
                {
LABEL_120:
                  if ((*(v46 + 48) & 1) == 0 && *(v46 + 56) <= v33)
                  {
                    ID3TagBase::ProvideFrameData(v46, v34, v33, v9, &size_4, v57);
                    v34 = __dst;
                  }

                  goto LABEL_82;
                }
              }
            }

            v57 = 1;
            *(v46 + 70) = 1;
            goto LABEL_120;
          }
        }

        else
        {
          v1 = 0;
        }

        v47 = 0;
        goto LABEL_88;
      }
    }

    goto LABEL_56;
  }

  if (v27 == 4)
  {
    v29 = v61[0];
LABEL_56:
    if (v61[1] >= 0x80 && v61[1] == v29)
    {
      *(v26 + 70) = 1;
    }
  }

  if ((*(v26 + 48) & 1) == 0 && *(v26 + 56) <= size)
  {
    ID3TagBase::ProvideFrameData(v26, __src, size, v9, &__dst, 0);
    v26 = *(this + 2);
  }

  (*(this + 3))(*(this + 4), 1, v9, *(v26 + 56), &__src, &size);
  return 0;
}

void sub_18F6C90EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    free(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ID3TagBase::MultipleFramesAllowed(ID3TagBase *this, int a2)
{
  v2 = this;
  if (this == 2)
  {
    v3 = 5527640;
  }

  else
  {
    v3 = 1415075928;
  }

  v4 = 5724248;
  if (this != 2)
  {
    v4 = 1465407576;
  }

  result = 1;
  if (v3 != a2 && v4 != a2)
  {
    if (v2 == 2)
    {
      result = 0;
      if ((a2 & 0xFFFF0000) == 0x540000 || (a2 & 0xFFFF0000) == 0x570000)
      {
        return result;
      }

LABEL_14:
      result = 0;
      if (a2 <= 1163150158)
      {
        if (a2 <= 5063496)
        {
          if (a2 <= 4542804)
          {
            if (a2 == 4347206)
            {
              return result;
            }

            v6 = 4410964;
          }

          else
          {
            if (a2 == 4542805 || a2 == 4543555)
            {
              return result;
            }

            v6 = 4804684;
          }
        }

        else if (a2 > 5396032)
        {
          if (a2 == 5396033 || a2 == 5461059)
          {
            return result;
          }

          v6 = 1162958145;
        }

        else
        {
          if (a2 == 5063497 || a2 == 5065804)
          {
            return result;
          }

          v6 = 5391702;
        }
      }

      else if (a2 > 1347375954)
      {
        if (a2 > 1381388865)
        {
          if (a2 == 1381388866 || a2 == 1398363203)
          {
            return result;
          }

          v6 = 1431520594;
        }

        else
        {
          if (a2 == 1347375955 || a2 == 1380078918)
          {
            return result;
          }

          v6 = 1381384516;
        }
      }

      else if (a2 > 1296845907)
      {
        if (a2 == 1296845908 || a2 == 1331121733)
        {
          return result;
        }

        v6 = 1346588244;
      }

      else
      {
        if (a2 == 1163150159 || a2 == 1229999187)
        {
          return result;
        }

        v6 = 1296254025;
      }

      if (a2 != v6)
      {
        return 1;
      }

      return result;
    }

    result = 0;
    if ((a2 & 0xFF000000) != 0x54000000 && (a2 & 0xFF000000) != 0x57000000)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t ID3ParserHandle::GetV1FrameInfoByID(int a1, uint64_t a2)
{
  v3 = 0x1E54495432;
  v4 = 3;
  result = 1852794431;
  if (a1 > 1129270604)
  {
    if (a1 > 1414091825)
    {
      if (a1 <= 1414677322)
      {
        if (a1 == 1414091826)
        {
LABEL_29:
          result = 0;
          *a2 = v3;
          *(a2 + 8) = v4;
          return result;
        }

        if (a1 != 1414546737)
        {
          return result;
        }

LABEL_11:
        v3 = 0x1E54504531;
        v4 = 33;
        goto LABEL_29;
      }

      if (a1 == 1414677323)
      {
        goto LABEL_26;
      }

      v7 = 1415136594;
LABEL_24:
      if (a1 != v7)
      {
        return result;
      }

      v3 = 0x454594552;
      v4 = 93;
      goto LABEL_29;
    }

    if (a1 != 1129270605)
    {
      if (a1 != 1413565506)
      {
        v6 = 1413697358;
        goto LABEL_18;
      }

LABEL_28:
      v3 = 0x1E54414C42;
      v4 = 63;
      goto LABEL_29;
    }

LABEL_27:
    v3 = 0x1E434F4D4DLL;
    v4 = 97;
    goto LABEL_29;
  }

  if (a1 <= 5525552)
  {
    if (a1 != 4411213)
    {
      if (a1 != 5521740)
      {
        v6 = 5522255;
LABEL_18:
        if (a1 != v6)
        {
          return result;
        }

        v3 = 0x154434F4ELL;
        v4 = 127;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (a1 > 5526577)
  {
    if (a1 == 5526578)
    {
      goto LABEL_29;
    }

    v7 = 5527877;
    goto LABEL_24;
  }

  if (a1 == 5525553)
  {
    goto LABEL_11;
  }

  if (a1 == 5526091)
  {
LABEL_26:
    v3 = 0x25452434BLL;
    v4 = 125;
    goto LABEL_29;
  }

  return result;
}

uint64_t ID3TagBase::CopyFrameData(ID3TagBase *this, char *__src, unsigned int a3, int a4, CFDataRef *a5)
{
  if (a5)
  {
    *a5 = 0;
    v7 = *(this + 14);
    if (v7 < a3)
    {
      v8 = __src;
      v9 = this + 24;
      do
      {
        v9 = *(v9 + 1);
        if (v9 == this + 24)
        {
          return 0xFFFFFFFFLL;
        }
      }

      while (*(v9 + 6) != a4);
      v10 = *(v9 + 5);
      if (v10 > a3)
      {
        return 0xFFFFFFFFLL;
      }

      v12 = *(v9 + 4);
      __p = 0;
      __dst = 0;
      v43 = 0;
      v13 = *(this + 16);
      if (v13 == 4)
      {
        v15 = __src[9];
        if ((v15 & 0xC) == 0 && (v15 & 3) != 1)
        {
          v14 = (v15 >> 1) & 1;
          goto LABEL_13;
        }
      }

      else if (v13 != 3 || __src[9] < 0x40u)
      {
        v14 = 0;
LABEL_13:
        if ((*(this + 68) & 1) == 0 && ((v14 | *(this + 69)) & 1) == 0)
        {
          result = 0;
          goto LABEL_36;
        }

        if (v13 == 4)
        {
          if (__src[9])
          {
            std::vector<unsigned char>::reserve(&__p, v10 - 4);
            std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, __p, v8, &v8[*(this + 14)], *(this + 14));
            std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, __dst, &v8[*(this + 14) + 4], &v8[*(v9 + 5)], *(v9 + 5) - (*(this + 14) + 4));
LABEL_23:
            result = __p;
            v16 = __dst - __p - v7;
            if (__dst - __p != v7)
            {
              v17 = __p + v7;
              v18 = &v17[v16];
              v19 = v17;
              v20 = v17;
              v21 = v17;
              do
              {
                v22 = *v20++;
                *v21++ = v22;
                if (v22 == 255 && v20 < v18)
                {
                  v20 = v19 + 2;
                  v24 = v19[1];
                  if (v24)
                  {
                    v21 = v17 + 2;
                    v17[1] = v24;
                  }

                  else
                  {
                    LODWORD(v16) = v16 - 1;
                  }
                }

                v17 = v21;
                v19 = v20;
              }

              while (v20 < v18);
              result = __p;
            }

            LODWORD(v10) = v16 + v7;
            v13 = *(this + 16);
            v8 = result;
LABEL_36:
            if (v13 == 2)
            {
              v26 = v12 & 0xFFFF0000;
              if ((v12 & 0xFFFF0000) == 0x540000)
              {
                v25 = 5527640;
LABEL_41:
                if (v25 != v12)
                {
                  TextFrameString = ID3TagBase::CreateTextFrameString(this, v8, v10);
                  goto LABEL_75;
                }

                if (v13 == 2)
                {
                  v27 = 5724248;
                }

                else
                {
                  v27 = 1465407576;
                }

                v28 = v27 == v12;
                v29 = v27 == v12;
                if (!v28 && v13 == 2)
                {
                  v26 = v12 & 0xFFFF0000;
                  goto LABEL_72;
                }

LABEL_53:
                v30 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v13 == 2)), 0x1FuLL)), xmmword_18F901790, xmmword_18F901780);
                v31 = vdupq_n_s32(v12);
                if (v13 == 2)
                {
                  v32 = 5590100;
                }

                else
                {
                  v32 = 1431522388;
                }

                v33 = vmaxv_u16(vmovn_s32(vceqq_s32(v30, v31)));
                if (v13 == 2)
                {
                  v34 = 4670799;
                }

                else
                {
                  v34 = 1195724610;
                }

                if ((v33 & 1) != 0 || v32 == v12 || v34 == v12 || v12 == 1347570006)
                {
                  if (v13 == 2)
                  {
                    v36 = 4411213;
                  }

                  else
                  {
                    v36 = 1129270605;
                  }

                  if (v36 == v12 || v32 == v12)
                  {
                    TextFrameString = ID3TagBase::CreateExtendedTextDictionary(this, v8, v10);
                  }

                  else if (v12 == 1347570006)
                  {
                    TextFrameString = ID3TagBase::CreatePRIVFrameDictionary(this, v8, v10);
                  }

                  else
                  {
                    if (v13 == 2)
                    {
                      v39 = 5261635;
                    }

                    else
                    {
                      v39 = 1095780675;
                    }

                    if (v39 == v12)
                    {
                      TextFrameString = ID3TagBase::CreatePictureFrameDictionary(this, v8, v10);
                    }

                    else if (v29)
                    {
                      TextFrameString = ID3TagBase::CreateWXXXFrameDictionary(this, v8, v10);
                    }

                    else
                    {
                      if (v13 == 2)
                      {
                        v40 = 5527640;
                      }

                      else
                      {
                        v40 = 1415075928;
                      }

                      if (v40 == v12)
                      {
                        TextFrameString = ID3TagBase::CreateTXXXFrameDictionary(this, v8, v10);
                      }

                      else
                      {
                        if (v34 != v12)
                        {
LABEL_76:
                          if (result)
                          {
                            operator delete(result);
                            return 0;
                          }

                          return result;
                        }

                        TextFrameString = ID3TagBase::CreateGEOBFrameDictionary(this, v8, v10);
                      }
                    }
                  }
                }

                else
                {
                  TextFrameString = CFDataCreate(*MEMORY[0x1E695E480], &v8[*(this + 14)], (v10 - *(this + 14)));
                }

LABEL_75:
                *a5 = TextFrameString;
                result = __p;
                goto LABEL_76;
              }

              if (v12 != 5724248)
              {
LABEL_72:
                if (v26 == 5701632)
                {
                  goto LABEL_73;
                }

LABEL_50:
                v29 = 0;
                goto LABEL_53;
              }
            }

            else
            {
              if ((v12 & 0xFF000000) == 0x54000000)
              {
                v25 = 1415075928;
                goto LABEL_41;
              }

              if (v12 != 1465407576)
              {
                if ((v12 & 0xFF000000) == 0x57000000)
                {
LABEL_73:
                  v37 = *(this + 14);
                  v38 = strnlen(&v8[v37], (v10 - v37));
                  TextFrameString = CFURLCreateWithBytes(*MEMORY[0x1E695E480], &v8[v37], v38, 0x201u, 0);
                  goto LABEL_75;
                }

                goto LABEL_50;
              }
            }

            v29 = 1;
            goto LABEL_53;
          }
        }

        else
        {
          v7 = 0;
        }

        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, __src, &__src[v10], v10);
        goto LABEL_23;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_18F6C99C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef ID3ParserHandle::CopyV1String(ID3ParserHandle *this, int a2)
{
  v3 = 0;
  bytes = 0;
  v16 = 0;
  if (a2 <= 92)
  {
    switch(a2)
    {
      case 3:
        if ((*(this + 3))(*(this + 4), 0, 3, 30, &bytes, &v16))
        {
          return 0;
        }

        if (!*bytes)
        {
          goto LABEL_42;
        }

        v9 = 0;
        v10 = 0;
        do
        {
          if (bytes[v9] == 32)
          {
            ++v10;
          }

          else
          {
            if (!bytes[v9])
            {
              break;
            }

            v10 = 0;
          }

          ++v9;
        }

        while (v9 != 30);
        if (v9 != v10)
        {
          v3 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, (v9 - v10), 0x201u, 0);
        }

        else
        {
LABEL_42:
          v3 = 0;
        }

        (*(this + 3))(*(this + 4), 1, 3, 30, &bytes, &v16);
        break;
      case 33:
        if ((*(this + 3))(*(this + 4), 0, 33, 30, &bytes, &v16))
        {
          return 0;
        }

        if (!*bytes)
        {
          goto LABEL_66;
        }

        v13 = 0;
        v14 = 0;
        do
        {
          if (bytes[v13] == 32)
          {
            ++v14;
          }

          else
          {
            if (!bytes[v13])
            {
              break;
            }

            v14 = 0;
          }

          ++v13;
        }

        while (v13 != 30);
        if (v13 != v14)
        {
          v3 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, (v13 - v14), 0x201u, 0);
        }

        else
        {
LABEL_66:
          v3 = 0;
        }

        (*(this + 3))(*(this + 4), 1, 33, 30, &bytes, &v16);
        break;
      case 63:
        if ((*(this + 3))(*(this + 4), 0, 63, 30, &bytes, &v16))
        {
          return 0;
        }

        if (!*bytes)
        {
          goto LABEL_27;
        }

        v6 = 0;
        v7 = 0;
        do
        {
          if (bytes[v6] == 32)
          {
            ++v7;
          }

          else
          {
            if (!bytes[v6])
            {
              break;
            }

            v7 = 0;
          }

          ++v6;
        }

        while (v6 != 30);
        if (v6 != v7)
        {
          v3 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, (v6 - v7), 0x201u, 0);
        }

        else
        {
LABEL_27:
          v3 = 0;
        }

        (*(this + 3))(*(this + 4), 1, 63, 30, &bytes, &v16);
        break;
      default:
        return v3;
    }
  }

  else
  {
    if (a2 > 124)
    {
      if (a2 == 125)
      {
        if (!(*(this + 3))(*(this + 4), 0, 125, 2, &bytes, &v16))
        {
          if (*bytes || !bytes[1])
          {
            v3 = 0;
          }

          else
          {
            v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", bytes[1]);
          }

          (*(this + 3))(*(this + 4), 1, 125, 2, &bytes, &v16);
          return v3;
        }
      }

      else
      {
        if (a2 != 127)
        {
          return v3;
        }

        if (!(*(this + 3))(*(this + 4), 0, 127, 1, &bytes, &v16))
        {
          v8 = *bytes;
          if (v8 > 0x93)
          {
            v3 = 0;
          }

          else
          {
            v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], kGenreTable[v8], 0x201u);
          }

          (*(this + 3))(*(this + 4), 1, 127, 1, &bytes, &v16);
          return v3;
        }
      }

      return 0;
    }

    if (a2 != 93)
    {
      if (a2 != 97)
      {
        return v3;
      }

      if (!(*(this + 3))(*(this + 4), 0, 97, 30, &bytes, &v16))
      {
        if (!*bytes)
        {
          goto LABEL_14;
        }

        v4 = 0;
        v5 = 0;
        do
        {
          if (bytes[v4] == 32)
          {
            ++v5;
          }

          else
          {
            if (!bytes[v4])
            {
              break;
            }

            v5 = 0;
          }

          ++v4;
        }

        while (v4 != 30);
        if (v4 != v5)
        {
          v3 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, (v4 - v5), 0x201u, 0);
        }

        else
        {
LABEL_14:
          v3 = 0;
        }

        (*(this + 3))(*(this + 4), 1, 97, 30, &bytes, &v16);
        return v3;
      }

      return 0;
    }

    if ((*(this + 3))(*(this + 4), 0, 93, 4, &bytes, &v16))
    {
      return 0;
    }

    if (!*bytes)
    {
      goto LABEL_52;
    }

    v11 = 0;
    v12 = 0;
    do
    {
      if (bytes[v11] == 32)
      {
        ++v12;
      }

      else
      {
        if (!bytes[v11])
        {
          break;
        }

        v12 = 0;
      }

      ++v11;
    }

    while (v11 != 4);
    if (v11 != v12)
    {
      v3 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, (v11 - v12), 0x201u, 0);
    }

    else
    {
LABEL_52:
      v3 = 0;
    }

    (*(this + 3))(*(this + 4), 1, 93, 4, &bytes, &v16);
  }

  return v3;
}

void std::vector<unsigned char>::reserve(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
{
  if (__len < 1)
  {
    return;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v31 = (__dst - v11);
    memcpy(v13, __src, __len);
    v32 = &v13[__len];
    v33 = v10 - __dst;
    memcpy(v32, __dst, v10 - __dst);
    *(a1 + 8) = __dst;
    v34 = &v13[v11 - __dst];
    memcpy(v34, v11, v31);
    *a1 = v34;
    *(a1 + 8) = &v32[v33];
    *(a1 + 16) = 0;
    if (v11)
    {

      operator delete(v11);
    }

    return;
  }

  v16 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v27 = &__dst[__len];
    v28 = &v10[-__len];
    v29 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 != v10);
    }

    *(a1 + 8) = v29;
    if (v10 != v27)
    {
      memmove(&__dst[__len], __dst, v10 - v27);
    }

    v24 = __dst;
    v25 = __src;
    v26 = __len;
    goto LABEL_27;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = &v10[v18];
  *(a1 + 8) = &v10[v18];
  if (v16 >= 1)
  {
    v20 = &__dst[__len];
    v21 = &v10[v18];
    if (&v19[-__len] < v10)
    {
      v22 = __dst - &__src[__len];
      v23 = __dst - __src;
      do
      {
        a4[v23++] = a4[v22++];
      }

      while (&a4[v22] < v10);
      v21 = &a4[v23];
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&__dst[__len], __dst, v19 - v20);
    }

    v24 = __dst;
    v25 = __src;
    v26 = v10 - __dst;
LABEL_27:

    memmove(v24, v25, v26);
  }
}

CFStringRef ID3TagBase::CreateTextFrameString(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v5 = (*(this + 14) + 1);
  v6 = (a3 - v5);
  if (a3 < v5)
  {
    return 0;
  }

  EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
  v9 = &a2[v5];
  v10 = ID3TagBase::StringSizeInBytes(v9, v6, EncodingFromFrame);
  if (v10)
  {
    v11 = a2 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || a3 < 4)
  {
    if (!a2)
    {
      return 0;
    }

LABEL_28:
    v21 = v10;
    if ((EncodingFromFrame - 1) > 2u)
    {
      v22 = 513;
    }

    else
    {
      v22 = dword_18F9026A0[(EncodingFromFrame - 1)];
    }

    if (v10 >= 2 && (EncodingFromFrame - 1) <= 1)
    {
      v23 = *v9;
      if (v23 == 254)
      {
        if (v9[1] == 255)
        {
LABEL_36:
          v24 = 1;
LABEL_39:
          v25 = *MEMORY[0x1E695E480];

          return CFStringCreateWithBytes(v25, &a2[v5], v21, v22, v24);
        }
      }

      else if (v23 == 255 && v9[1] == 254)
      {
        goto LABEL_36;
      }
    }

    v24 = 0;
    goto LABEL_39;
  }

  v14 = bswap32(*a2);
  if (*(this + 16) == 2)
  {
    v14 >>= 8;
    v15 = 5522255;
  }

  else
  {
    v15 = 1413697358;
  }

  if (v15 != v14 || *v9 != 40)
  {
    goto LABEL_28;
  }

  if (v10 == 1)
  {
    return 0;
  }

  v16 = 0;
  v17 = &a2[v5 + 1];
  v18 = 1;
  do
  {
    v20 = *v17++;
    v19 = v20;
    if (v20 == 40)
    {
      ++v18;
    }

    else
    {
      if ((v19 - 48) > 9)
      {
        break;
      }

      ++v16;
    }

    --v10;
  }

  while (v10 > 1);
  if (!v16)
  {
    return 0;
  }

  return CreateCFStringFromV1GenreFrame(&a2[v5], v18, v16);
}

const __CFString *ID3TagBase::CreateExtendedTextDictionary(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) == 1)
  {
    v4 = *(this + 14);
    v5 = v4 + 4;
    if (a3 >= v4 + 4)
    {
      EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
      v8 = EncodingFromFrame - 1;
      v9 = (EncodingFromFrame - 1) >= 2 ? 1 : 2;
      v10 = v9 + v5;
      if (v9 + v5 <= a3)
      {
        v13 = EncodingFromFrame;
        v14 = (v4 + 1);
        cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v30 = 257;
        v15 = *MEMORY[0x1E695E480];
        v16 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], &a2[v14], 3, 0x201u, 0);
        if (!v16)
        {
          goto LABEL_38;
        }

        CACFDictionary::AddString(&cf, @"language", v16);
        CFRelease(v16);
        v17 = (a3 - v5);
        if (a3 <= v5)
        {
          goto LABEL_38;
        }

        v18 = &a2[v5];
        v19 = ID3TagBase::StringSizeInBytes(v18, v17, v13);
        if (v8 > 2u)
        {
          v20 = 513;
        }

        else
        {
          v20 = dword_18F9026A0[v8];
        }

        if (v19 >= 2 && v8 <= 1)
        {
          v21 = *v18;
          if (v21 == 254)
          {
            if (v18[1] == 255)
            {
LABEL_19:
              v22 = 1;
LABEL_22:
              v23 = CFStringCreateWithBytes(v15, v18, v19, v20, v22);
              if (!v23)
              {
                goto LABEL_38;
              }

              CACFDictionary::AddString(&cf, @"identifier", v23);
              CFRelease(v23);
              if (a3 <= v10 + v19)
              {
                goto LABEL_38;
              }

              v24 = &a2[(v10 + v19)];
              v25 = ID3TagBase::StringSizeInBytes(v24, (a3 - (v10 + v19)), v13);
              if (v8 > 2u)
              {
                v26 = 513;
              }

              else
              {
                v26 = dword_18F9026A0[v8];
              }

              if (v25 >= 2 && v8 <= 1)
              {
                v27 = *v24;
                if (v27 == 254)
                {
                  if (v24[1] == 255)
                  {
LABEL_32:
                    v28 = 1;
LABEL_35:
                    v11 = CFStringCreateWithBytes(v15, v24, v25, v26, v28);
                    if (!v11)
                    {
LABEL_39:
                      CACFDictionary::~CACFDictionary(&cf);
                      return v11;
                    }

                    CACFDictionary::AddString(&cf, @"text", v11);
                    CFRelease(v11);
                    if (cf)
                    {
                      CFRetain(cf);
                      v11 = cf;
                      goto LABEL_39;
                    }

LABEL_38:
                    v11 = 0;
                    goto LABEL_39;
                  }
                }

                else if (v27 == 255 && v24[1] == 254)
                {
                  goto LABEL_32;
                }
              }

              v28 = 0;
              goto LABEL_35;
            }
          }

          else if (v21 == 255 && v18[1] == 254)
          {
            goto LABEL_19;
          }
        }

        v22 = 0;
        goto LABEL_22;
      }
    }
  }

  return 0;
}

CFTypeRef ID3TagBase::CreatePRIVFrameDictionary(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v4 = 0;
  if (a2 && a3 >= 4)
  {
    if (*(this + 16) == 2 || *a2 != 1447645776)
    {
      return 0;
    }

    v7 = *(this + 14);
    if (v7 + 1 > a3)
    {
      return 0;
    }

    EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v20 = 257;
    v10 = ID3TagBase::StringSizeInBytes(&a2[v7], (a3 - v7), EncodingFromFrame);
    v11 = *MEMORY[0x1E695E480];
    v12 = v10;
    v13 = EncodingFromFrame - 1;
    if ((EncodingFromFrame - 1) > 2u)
    {
      v14 = 513;
    }

    else
    {
      v14 = dword_18F9026A0[(EncodingFromFrame - 1)];
    }

    v15 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], &a2[v7], v10, v14, 0);
    if (v15)
    {
      if (v13 >= 2)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      v17 = v16 + v7 + v12;
      if (a3 > v17 && (v18 = CFDataCreate(v11, &a2[v17], a3 - v17)) != 0)
      {
        CACFDictionary::AddString(&cf, @"identifier", v15);
        CFRelease(v15);
        CACFDictionary::AddData(&cf, @"data", v18);
        CFRelease(v18);
        if (cf)
        {
          CFRetain(cf);
          v4 = cf;
LABEL_25:
          CACFDictionary::~CACFDictionary(&cf);
          return v4;
        }
      }

      else
      {
        CFRelease(v15);
      }
    }

    v4 = 0;
    goto LABEL_25;
  }

  return v4;
}

CFTypeRef ID3TagBase::CreatePictureFrameDictionary(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v4 = 0;
  if (a2 && a3 >= 4)
  {
    v7 = bswap32(*a2);
    v8 = *(this + 16);
    if (v8 == 2)
    {
      v7 >>= 8;
      v9 = 5261635;
    }

    else
    {
      v9 = 1095780675;
    }

    if (v9 != v7)
    {
      return 0;
    }

    v10 = *(this + 14);
    v11 = v8 == 2 ? v10 + 5 : v10 + 3;
    if (v11 > a3)
    {
      return 0;
    }

    EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
    v14 = v10 + 1;
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v40 = 257;
    v15 = *(this + 14);
    v16 = EncodingFromFrame - 1;
    if (*(this + 16) == 2)
    {
      if (v16 >= 2)
      {
        v17 = 6;
      }

      else
      {
        v17 = 7;
      }

      if (v17 + v15 > a3)
      {
        goto LABEL_62;
      }

      v18 = *MEMORY[0x1E695E480];
      v19 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], &a2[v14], 3, 0x201u, 0);
      v20 = 1;
    }

    else
    {
      if (v16 >= 2)
      {
        v21 = 4;
      }

      else
      {
        v21 = 5;
      }

      if (v21 + v15 > a3)
      {
        goto LABEL_62;
      }

      v22 = &a2[v14];
      v23 = a3 - v14;
      if (a3 == v14)
      {
        LODWORD(v24) = 0;
      }

      else
      {
        v25 = 0;
        if (v23 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23;
        }

        while (v22[v25])
        {
          if (v24 == ++v25)
          {
            goto LABEL_33;
          }
        }

        LODWORD(v24) = v25;
      }

LABEL_33:
      v18 = *MEMORY[0x1E695E480];
      v19 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v22, v24, 0x201u, 0);
      v20 = v24 + 1;
    }

    if (!v19)
    {
      goto LABEL_62;
    }

    CACFDictionary::AddString(&cf, @"MIME", v19);
    CFRelease(v19);
    v26 = *(this + 16) == 2 ? v10 + 4 : v20 + v14;
    if (v26 >= a3)
    {
      goto LABEL_62;
    }

    v27 = a2[v26];
    if (v27 > 0x14)
    {
      v27 = 0;
    }

    v28 = CFStringCreateWithCString(v18, kPictureTypeTable[v27], 0x201u);
    if (!v28)
    {
      goto LABEL_62;
    }

    CACFDictionary::AddString(&cf, @"picturetype", v28);
    CFRelease(v28);
    v29 = v26 + 1;
    if (a3 <= v29)
    {
      goto LABEL_62;
    }

    v30 = &a2[v29];
    v31 = ID3TagBase::StringSizeInBytes(v30, (a3 - v29), EncodingFromFrame);
    if (v16 > 2u)
    {
      v32 = 513;
    }

    else
    {
      v32 = dword_18F9026A0[v16];
    }

    if (v31 >= 2 && v16 <= 1)
    {
      v33 = *v30;
      if (v33 == 254)
      {
        if (v30[1] == 255)
        {
LABEL_51:
          v34 = 1;
LABEL_54:
          v35 = CFStringCreateWithBytes(v18, &a2[v29], v31, v32, v34);
          if (v35)
          {
            CACFDictionary::AddString(&cf, @"identifier", v35);
            CFRelease(v35);
            v36 = v16 >= 2 ? 1 : 2;
            v37 = v29 + v36 + v31;
            if (a3 > v37)
            {
              v38 = CFDataCreate(v18, &a2[v37], a3 - v37);
              if (v38)
              {
                CACFDictionary::AddData(&cf, @"data", v38);
                CFRelease(v38);
                if (cf)
                {
                  CFRetain(cf);
                  v4 = cf;
LABEL_63:
                  CACFDictionary::~CACFDictionary(&cf);
                  return v4;
                }
              }
            }
          }

LABEL_62:
          v4 = 0;
          goto LABEL_63;
        }
      }

      else if (v33 == 255 && v30[1] == 254)
      {
        goto LABEL_51;
      }
    }

    v34 = 0;
    goto LABEL_54;
  }

  return v4;
}

CFTypeRef ID3TagBase::CreateWXXXFrameDictionary(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v4 = 0;
  if (a2 && a3 >= 4)
  {
    v6 = bswap32(*a2);
    if (*(this + 16) == 2)
    {
      v6 >>= 8;
      v7 = 5724248;
    }

    else
    {
      v7 = 1465407576;
    }

    if (v7 != v6)
    {
      return 0;
    }

    v8 = *(this + 14) + 1;
    v9 = (a3 - v8);
    if (a3 < v8)
    {
      return 0;
    }

    EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
    v11 = EncodingFromFrame - 1;
    v12 = (EncodingFromFrame - 1) >= 2 ? 1 : 2;
    v13 = v12 + v8;
    if (v12 + v8 > a3)
    {
      return 0;
    }

    v15 = EncodingFromFrame;
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v28 = 257;
    v16 = &a2[v8];
    v17 = ID3TagBase::StringSizeInBytes(v16, v9, v15);
    v18 = *MEMORY[0x1E695E480];
    v19 = v17;
    if (v11 > 2u)
    {
      v20 = 513;
    }

    else
    {
      v20 = dword_18F9026A0[v11];
    }

    if (v17 >= 2 && v11 <= 1)
    {
      v21 = *v16;
      if (v21 == 254)
      {
        if (v16[1] == 255)
        {
LABEL_23:
          v22 = 1;
          goto LABEL_26;
        }
      }

      else if (v21 == 255 && v16[1] == 254)
      {
        goto LABEL_23;
      }
    }

    v22 = 0;
LABEL_26:
    v23 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v16, v17, v20, v22);
    if (v23 && (CACFDictionary::AddString(&cf, @"identifier", v23), CFRelease(v23), a3 > v13 + v19) && (v24 = &a2[v13 + v19], v25 = strnlen(v24, a3 - (v13 + v19)), (v26 = CFURLCreateWithBytes(v18, v24, v25, 0x201u, 0)) != 0) && (CACFDictionary::AddURL(&cf, @"text", v26), CFRelease(v26), cf))
    {
      CFRetain(cf);
      v4 = cf;
    }

    else
    {
      v4 = 0;
    }

    CACFDictionary::~CACFDictionary(&cf);
  }

  return v4;
}

const __CFString *ID3TagBase::CreateTXXXFrameDictionary(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v4 = 0;
  if (a2 && a3 >= 4)
  {
    v6 = bswap32(*a2);
    if (*(this + 16) == 2)
    {
      v6 >>= 8;
      v7 = 5527640;
    }

    else
    {
      v7 = 1415075928;
    }

    if (v7 != v6)
    {
      return 0;
    }

    v8 = *(this + 14) + 1;
    if (a3 < v8)
    {
      return 0;
    }

    EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
    v10 = EncodingFromFrame - 1;
    v11 = (EncodingFromFrame - 1) >= 2 ? 1 : 2;
    v12 = v11 + v8;
    if (v11 + v8 > a3)
    {
      return 0;
    }

    v14 = EncodingFromFrame;
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v29 = 257;
    v15 = &a2[v8];
    v16 = ID3TagBase::StringSizeInBytes(v15, (a3 - v8), v14);
    v17 = *MEMORY[0x1E695E480];
    v18 = v16;
    if (v10 > 2u)
    {
      v19 = 513;
    }

    else
    {
      v19 = dword_18F9026A0[v10];
    }

    if (v16 >= 2 && v10 <= 1)
    {
      v20 = *v15;
      if (v20 == 254)
      {
        if (v15[1] == 255)
        {
LABEL_23:
          v21 = 1;
LABEL_26:
          v22 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v15, v16, v19, v21);
          if (!v22)
          {
            goto LABEL_42;
          }

          CACFDictionary::AddString(&cf, @"identifier", v22);
          CFRelease(v22);
          if (a3 <= v12 + v18)
          {
            goto LABEL_42;
          }

          v23 = &a2[v12 + v18];
          v24 = ID3TagBase::StringSizeInBytes(v23, (a3 - (v12 + v18)), v14);
          if (v10 > 2u)
          {
            v25 = 513;
          }

          else
          {
            v25 = dword_18F9026A0[v10];
          }

          if (v24 >= 2 && v10 <= 1)
          {
            v26 = *v23;
            if (v26 == 254)
            {
              if (v23[1] == 255)
              {
LABEL_36:
                v27 = 1;
LABEL_39:
                v4 = CFStringCreateWithBytes(v17, v23, v24, v25, v27);
                if (!v4)
                {
LABEL_43:
                  CACFDictionary::~CACFDictionary(&cf);
                  return v4;
                }

                CACFDictionary::AddString(&cf, @"text", v4);
                CFRelease(v4);
                if (cf)
                {
                  CFRetain(cf);
                  v4 = cf;
                  goto LABEL_43;
                }

LABEL_42:
                v4 = 0;
                goto LABEL_43;
              }
            }

            else if (v26 == 255 && v23[1] == 254)
            {
              goto LABEL_36;
            }
          }

          v27 = 0;
          goto LABEL_39;
        }
      }

      else if (v20 == 255 && v15[1] == 254)
      {
        goto LABEL_23;
      }
    }

    v21 = 0;
    goto LABEL_26;
  }

  return v4;
}

CFTypeRef ID3TagBase::CreateGEOBFrameDictionary(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v4 = 0;
  if (a2 && a3 >= 4)
  {
    v6 = bswap32(*a2);
    if (*(this + 16) == 2)
    {
      v6 >>= 8;
      v7 = 4670799;
    }

    else
    {
      v7 = 1195724610;
    }

    if (v7 != v6)
    {
      return 0;
    }

    v8 = *(this + 14);
    v9 = v8 + 1;
    if (a3 < v8 + 1)
    {
      return 0;
    }

    EncodingFromFrame = ID3TagBase::GetEncodingFromFrame(this, a2, a3);
    v11 = v8 + 2;
    v12 = EncodingFromFrame - 1;
    v13 = (EncodingFromFrame - 1) >= 2 ? 1 : 2;
    if (v11 + 2 * v13 > a3)
    {
      return 0;
    }

    v15 = EncodingFromFrame;
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v39 = 257;
    v16 = &a2[v9];
    v17 = a3 - v9;
    if (a3 == v9)
    {
      LODWORD(v18) = 0;
    }

    else
    {
      v19 = 0;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      while (v16[v19])
      {
        if (v18 == ++v19)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v18) = v19;
    }

LABEL_24:
    v20 = *MEMORY[0x1E695E480];
    v21 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v16, v18, 0x201u, 0);
    if (!v21)
    {
      goto LABEL_55;
    }

    CACFDictionary::AddString(&cf, @"MIME", v21);
    CFRelease(v21);
    v22 = v11 + v18;
    if (a3 <= v22)
    {
      goto LABEL_55;
    }

    v23 = &a2[v22];
    v24 = ID3TagBase::StringSizeInBytes(v23, (a3 - v22), v15);
    if (v12 > 2u)
    {
      v25 = 513;
    }

    else
    {
      v25 = dword_18F9026A0[v12];
    }

    if (v24 >= 2 && v12 <= 1)
    {
      v26 = *v23;
      if (v26 == 254)
      {
        if (v23[1] == 255)
        {
LABEL_34:
          v27 = 1;
LABEL_37:
          v28 = CFStringCreateWithBytes(v20, &a2[v22], v24, v25, v27);
          if (!v28)
          {
            goto LABEL_55;
          }

          CACFDictionary::AddString(&cf, @"filename", v28);
          CFRelease(v28);
          v29 = v22 + v13 + v24;
          if (a3 <= v29)
          {
            goto LABEL_55;
          }

          v30 = &a2[v29];
          v31 = ID3TagBase::StringSizeInBytes(v30, (a3 - v29), v15);
          if (v12 > 2u)
          {
            v32 = 513;
          }

          else
          {
            v32 = dword_18F9026A0[v12];
          }

          if (v31 >= 2 && v12 <= 1)
          {
            v33 = *v30;
            if (v33 == 254)
            {
              if (v30[1] == 255)
              {
LABEL_47:
                v34 = 1;
LABEL_50:
                v35 = CFStringCreateWithBytes(v20, &a2[v29], v31, v32, v34);
                if (v35)
                {
                  CACFDictionary::AddString(&cf, @"identifier", v35);
                  CFRelease(v35);
                  v36 = v29 + v13 + v31;
                  if (a3 > v36)
                  {
                    v37 = CFDataCreate(v20, &a2[v36], a3 - v36);
                    if (v37)
                    {
                      CACFDictionary::AddData(&cf, @"data", v37);
                      CFRelease(v37);
                      if (cf)
                      {
                        CFRetain(cf);
                        v4 = cf;
LABEL_56:
                        CACFDictionary::~CACFDictionary(&cf);
                        return v4;
                      }
                    }
                  }
                }

LABEL_55:
                v4 = 0;
                goto LABEL_56;
              }
            }

            else if (v33 == 255 && v30[1] == 254)
            {
              goto LABEL_47;
            }
          }

          v34 = 0;
          goto LABEL_50;
        }
      }

      else if (v26 == 255 && v23[1] == 254)
      {
        goto LABEL_34;
      }
    }

    v27 = 0;
    goto LABEL_37;
  }

  return v4;
}

uint64_t ID3TagBase::GetEncodingFromFrame(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3)
{
  if (a2 && a3 > 3)
  {
    v3 = bswap32(*a2);
    v4 = *(this + 16);
    if (v4 == 2)
    {
      v3 = v3 >> 8;
    }
  }

  else
  {
    v3 = 0;
    v4 = *(this + 16);
  }

  if (v4 == 2)
  {
    if (v3 == 5724248 || (v3 & 0xFFFF0000) == 0x540000)
    {
      goto LABEL_39;
    }

    if ((v3 & 0xFFFF0000) == 0x570000)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == 1465407576 || (v3 & 0xFF000000) == 0x54000000)
    {
      goto LABEL_39;
    }

    if ((v3 & 0xFF000000) == 0x57000000)
    {
      return 0;
    }
  }

  v5 = 0;
  if (v3 > 1129270604)
  {
    if (v3 > 1331121732)
    {
      if (v3 > 1415075927)
      {
        if (v3 == 1431522388)
        {
          goto LABEL_39;
        }

        v6 = 1415075928;
      }

      else
      {
        if (v3 == 1331121733)
        {
          goto LABEL_39;
        }

        v6 = 1398361172;
      }
    }

    else if (v3 > 1195724609)
    {
      if (v3 == 1195724610)
      {
        goto LABEL_39;
      }

      v6 = 1229999187;
    }

    else
    {
      if (v3 == 1129270605)
      {
        goto LABEL_39;
      }

      v6 = 1129270610;
    }
  }

  else if (v3 > 5459027)
  {
    if (v3 > 5590099)
    {
      if (v3 == 5590100)
      {
        goto LABEL_39;
      }

      v6 = 1095780675;
    }

    else
    {
      if (v3 == 5459028)
      {
        goto LABEL_39;
      }

      v6 = 5527640;
    }
  }

  else if (v3 > 4804683)
  {
    if (v3 == 4804684)
    {
      goto LABEL_39;
    }

    v6 = 5261635;
  }

  else
  {
    if (v3 == 4411213)
    {
      goto LABEL_39;
    }

    v6 = 4670799;
  }

  if (v3 == v6)
  {
LABEL_39:
    v7 = *(this + 14);
    if (v7 + 1 <= a3)
    {
      return a2[v7];
    }

    return 0;
  }

  return v5;
}

uint64_t ID3TagBase::StringSizeInBytes(ID3TagBase *this, unsigned __int8 *a2, int a3)
{
  if ((a3 - 1) >= 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a2)
  {
    v5 = 0;
    result = 0;
    while (1)
    {
      if ((a3 - 1) >= 2)
      {
        if (!*(this + v5))
        {
          return result;
        }

        v7 = 1;
      }

      else
      {
        if (v5 + 1 >= a2 || !*(this + v5) && !*(this + v5 + 1))
        {
          return result;
        }

        v7 = 2;
      }

      result = (result + v7);
      v5 += v3;
      if (v5 >= a2)
      {
        return result;
      }
    }
  }

  return 0;
}

CFStringRef CreateCFStringFromV1GenreFrame(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  pStr = a3;
  memcpy(v10, &a1[a2], a3);
  v3 = *MEMORY[0x1E695E480];
  v4 = CFStringCreateWithPascalString(*MEMORY[0x1E695E480], &pStr, 0x201u);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  IntValue = CFStringGetIntValue(v4);
  if (IntValue > 0x93)
  {
    v7 = 0;
  }

  else
  {
    v7 = CFStringCreateWithCString(v3, kGenreTable[IntValue], 0x201u);
  }

  CFRelease(v5);
  return v7;
}

uint64_t ID3TagBase::TranslateV2IDToV3(ID3TagBase *this)
{
  if (this <= 5524819)
  {
    if (this > 5459027)
    {
      if (this <= 5522496)
      {
        if (this <= 5521999)
        {
          v30 = 5459028;
          v31 = 1398361172;
          if (this == 5521740)
          {
            v34 = 1413565506;
          }

          else
          {
            v34 = this;
          }

          if (this == 5461059)
          {
            v33 = 1398363203;
          }

          else
          {
            v33 = v34;
          }

          goto LABEL_154;
        }

        v5 = 5522254;
        if (this == 5522258)
        {
          v24 = 1413697360;
        }

        else
        {
          v24 = this;
        }

        if (this == 5522255)
        {
          v7 = 1413697358;
        }

        else
        {
          v7 = v24;
        }

        v8 = 5522000;
        v9 = 1413632077;
        v10 = this == 5522253;
        v11 = 1413697357;
      }

      else if (this > 5523788)
      {
        v5 = 5524544;
        if (this == 5524549)
        {
          v29 = 1414284622;
        }

        else
        {
          v29 = this;
        }

        if (this == 5524545)
        {
          v7 = 1414283598;
        }

        else
        {
          v7 = v29;
        }

        v8 = 5523789;
        v9 = 1414090053;
        v10 = this == 5524293;
        v11 = 1414219097;
      }

      else
      {
        v5 = 5522765;
        if (this == 5523028)
        {
          v14 = 1413893204;
        }

        else
        {
          v14 = this;
        }

        if (this == 5522766)
        {
          v7 = 1413828163;
        }

        else
        {
          v7 = v14;
        }

        v8 = 5522497;
        v9 = 1413759316;
        v10 = this == 5522521;
        v11 = 1413762137;
      }
    }

    else
    {
      if (this <= 4804683)
      {
        v5 = 4411968;
        if (this == 4670799)
        {
          v19 = 1195724610;
        }

        else
        {
          v19 = this;
        }

        if (this == 4543555)
        {
          v20 = 1163150159;
        }

        else
        {
          v20 = v19;
        }

        if (this == 4542805)
        {
          v21 = 1162958145;
        }

        else
        {
          v21 = this;
        }

        if (this == 4411969)
        {
          v22 = 1095061059;
        }

        else
        {
          v22 = v21;
        }

        if (this <= 4543554)
        {
          v7 = v22;
        }

        else
        {
          v7 = v20;
        }

        v8 = 4347206;
        v9 = 1380078918;
        if (this == 4411213)
        {
          v23 = 1129270605;
        }

        else
        {
          v23 = this;
        }

        if (this == 4410964)
        {
          v11 = 1346588244;
        }

        else
        {
          v11 = v23;
        }

LABEL_136:
        if (this == v8)
        {
          v17 = v9;
        }

        else
        {
          v17 = v11;
        }

LABEL_139:
        if (this <= v5)
        {
          return v17;
        }

        else
        {
          return v7;
        }
      }

      if (this > 5261634)
      {
        v5 = 5391701;
        if (this == 5396033)
        {
          v28 = 1381384516;
        }

        else
        {
          v28 = this;
        }

        if (this == 5391702)
        {
          v7 = 1381388866;
        }

        else
        {
          v7 = v28;
        }

        v8 = 5261635;
        v9 = 1095780675;
        v10 = this == 5263184;
        v11 = 1347375181;
      }

      else
      {
        v5 = 5063496;
        if (this == 5065804)
        {
          v6 = 1296845908;
        }

        else
        {
          v6 = this;
        }

        if (this == 5063497)
        {
          v7 = 1296254025;
        }

        else
        {
          v7 = v6;
        }

        v8 = 4804684;
        v9 = 1229999187;
        v10 = this == 5000779;
        v11 = 1279872587;
      }
    }

LABEL_134:
    if (!v10)
    {
      v11 = this;
    }

    goto LABEL_136;
  }

  if (this > 5526344)
  {
    if (this > 5590099)
    {
      if (this > 5718860)
      {
        v5 = 5722177;
        if (this == 5724248)
        {
          v27 = 1465407576;
        }

        else
        {
          v27 = this;
        }

        if (this == 5722178)
        {
          v7 = 1464882498;
        }

        else
        {
          v7 = v27;
        }

        v8 = 5718861;
        v9 = 1464029005;
        v10 = this == 5718864;
        v11 = 1464029008;
      }

      else
      {
        v5 = 5718353;
        if (this == 5718355)
        {
          v15 = 1464811859;
        }

        else
        {
          v15 = this;
        }

        if (this == 5718354)
        {
          v7 = 1464811858;
        }

        else
        {
          v7 = v15;
        }

        v8 = 5590100;
        v9 = 1431522388;
        v10 = this == 5718342;
        v11 = 1464811846;
      }
    }

    else
    {
      if (this <= 5526578)
      {
        v1 = 5526576;
        if (this == 5526578)
        {
          v2 = 1414091826;
        }

        else
        {
          v2 = this;
        }

        if (this == 5526577)
        {
          v2 = 1414091825;
        }

        if (this == 5526355)
        {
          v3 = 1414746949;
        }

        else
        {
          v3 = this;
        }

        if (this == 5526345)
        {
          v4 = 1414744410;
        }

        else
        {
          v4 = v3;
        }

LABEL_38:
        if (this <= v1)
        {
          return v4;
        }

        else
        {
          return v2;
        }
      }

      v5 = 5527639;
      if (this == 5527877)
      {
        v26 = 1415136594;
      }

      else
      {
        v26 = this;
      }

      if (this == 5527640)
      {
        v7 = 1415075928;
      }

      else
      {
        v7 = v26;
      }

      v8 = 5526579;
      v9 = 1414091827;
      v10 = this == 5527636;
      v11 = 1413830740;
    }

    goto LABEL_134;
  }

  if (this > 5525553)
  {
    if (this <= 5525569)
    {
      v1 = 5525555;
      if (this == 5525569)
      {
        v2 = 1414549331;
      }

      else
      {
        v2 = this;
      }

      if (this == 5525556)
      {
        v2 = 1414546740;
      }

      v12 = 1414546739;
      if (this != 5525555)
      {
        v12 = this;
      }

      if (this == 5525554)
      {
        v4 = 1414546738;
      }

      else
      {
        v4 = v12;
      }

      goto LABEL_38;
    }

    v5 = 5526083;
    if (this == 5526091)
    {
      v25 = 1414677323;
    }

    else
    {
      v25 = this;
    }

    if (this == 5526084)
    {
      v7 = 1414677569;
    }

    else
    {
      v7 = v25;
    }

    v8 = 5525570;
    v9 = 1414550850;
    v10 = this == 5526083;
    v11 = 1414746691;
    goto LABEL_134;
  }

  if (this > 5525323)
  {
    v5 = 5525331;
    if (this == 5525553)
    {
      v16 = 1414546737;
    }

    else
    {
      v16 = this;
    }

    if (this == 5525332)
    {
      v7 = 1414480204;
    }

    else
    {
      v7 = v16;
    }

    v17 = 1414483033;
    if (this == 5525330)
    {
      v18 = 1414484569;
    }

    else
    {
      v18 = this;
    }

    if (this != 5525324)
    {
      v17 = v18;
    }

    goto LABEL_139;
  }

  v30 = 5524820;
  v31 = 1414350148;
  if (this == 5525318)
  {
    v32 = 1414481486;
  }

  else
  {
    v32 = this;
  }

  if (this == 5525313)
  {
    v33 = 1414484037;
  }

  else
  {
    v33 = v32;
  }

LABEL_154:
  if (this == v30)
  {
    return v31;
  }

  else
  {
    return v33;
  }
}

BOOL ResynchroniseBytes(unsigned __int8 *a1, int a2, unsigned int a3, unsigned int *a4)
{
  v4 = 0;
  v5 = 0;
  if (a3 && a2)
  {
    v5 = 0;
    v4 = 0;
    v6 = a1;
    v7 = &a1[a2];
    while (1)
    {
      v8 = v6 + 1;
      v9 = *v6;
      *a1 = v9;
      if (v9 != 255 || v8 >= v7)
      {
        goto LABEL_11;
      }

      v8 = v6 + 2;
      v11 = v6[1];
      if (v11)
      {
        break;
      }

      v5 += 2;
      v6 = v8;
      ++a1;
      ++v4;
LABEL_13:
      if (v4 >= a3 || v6 >= v7)
      {
        goto LABEL_15;
      }
    }

    if (v4 + 1 < a3)
    {
      a1[1] = v11;
      a1 += 2;
      v5 += 2;
      v4 += 2;
      v6 = v8;
      goto LABEL_13;
    }

LABEL_11:
    v6 = v8;
    ++a1;
    ++v4;
    ++v5;
    goto LABEL_13;
  }

LABEL_15:
  if (a4)
  {
    *a4 = v5;
  }

  return v4 == a3;
}

void ID3TagBase::GetFrameDataSize(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v15 = 136315394;
    v16 = "ID3Parser.cpp";
    v17 = 1024;
    v18 = 1237;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  inDataSize is 0";
    goto LABEL_21;
  }

  v7 = *(this + 16);
  if (v7 < 3)
  {
    if (a3 > 5)
    {
      v14 = *(a2 + 2) & 0xFFFFFF00;
      goto LABEL_24;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v15 = 136315394;
    v16 = "ID3Parser.cpp";
    v17 = 1024;
    v18 = 1258;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  inDataSize is too small for a v1 frame";
LABEL_21:
    _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, v13, &v15, 0x12u);
    goto LABEL_22;
  }

  if (v7 != 4)
  {
    if (a3 <= 7)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v15 = 136315394;
      v16 = "ID3Parser.cpp";
      v17 = 1024;
      v18 = 1250;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  inDataSize is too small for a v2 frame";
      goto LABEL_21;
    }

    v14 = *(a2 + 1);
LABEL_24:
    v11 = bswap32(v14);
    v9 = v11;
    goto LABEL_25;
  }

  if (a3 < 9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "ID3Parser.cpp";
      v17 = 1024;
      v18 = 1245;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  can't get v2.4 frame data size";
      goto LABEL_21;
    }

LABEL_22:
    v11 = 0;
    v9 = 0;
    goto LABEL_25;
  }

  v8 = *(a2 + 1);
  v9 = bswap32(v8);
  if (v9 >= 0x80 && (v8 & 0x80808080) == 0)
  {
    v11 = (*(a2 + 1) << 6) & 0x1FC000 | ((*(a2 + 1) & 0x7F) << 21) | (*(a2 + 1) >> 9) & 0x3F80 | HIBYTE(*(a2 + 1));
  }

  else
  {
    v11 = v9;
  }

LABEL_25:
  *a4 = v11;
  if (a5)
  {
    *a5 = v9;
  }
}

uint64_t ID3TagBase::SetFrameDataSize(uint64_t this, unsigned __int8 *a2, unsigned int a3, unsigned int a4)
{
  if (a2)
  {
    v4 = *(this + 64);
    if (v4 < 3)
    {
      if (a3 >= 6 && !HIBYTE(a4))
      {
        v7 = a2[2];
        *(a2 + 2) = bswap32(a4);
        a2[2] = v7;
      }
    }

    else
    {
      if (v4 == 4)
      {
        if (a4 >> 28)
        {
          return this;
        }

        v5 = bswap32(a4);
        v6 = v5 & 0xF | (((v5 >> 14) & 0x7F) << 16) & 0x80FF81FF | (((v5 >> 21) & 0x7F) << 24) | (((v5 >> 8) & 0x3F) << 9);
      }

      else
      {
        if (a3 < 8)
        {
          return this;
        }

        v6 = bswap32(a4);
      }

      *(a2 + 1) = v6;
    }
  }

  return this;
}

uint64_t ID3TagBase::ProvideFrameData(ID3TagBase *this, unsigned __int8 *a2, unsigned int a3, unsigned int a4, unsigned int *a5, int a6)
{
  if (*(this + 48))
  {
    return 0;
  }

  v34 = v6;
  v35 = v7;
  v11 = *(this + 14);
  if (v11 <= a3)
  {
    if (v11 + a4 > *(this + 13))
    {
LABEL_5:
      *(this + 48) = 1;
      return 0xFFFFFFFFLL;
    }

    v15 = this + 24;
    v16 = *(this + 10);
    if (!v16)
    {
      if (a4 != 10)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_24;
    }

    v17 = *(this + 4);
    v18 = (v16 - 1);
    if (v18)
    {
      v19 = v18 + 1;
      do
      {
        v17 = *(v17 + 8);
        --v19;
      }

      while (v19 > 1);
    }

    if (v17 == v15)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17 + 16;
    }

    v21 = *(v20 + 4) + *(v20 + 8);
    if (v21 > a4)
    {
      v22 = this + 24;
      while (1)
      {
        v22 = *(v22 + 1);
        if (v22 == v15)
        {
          break;
        }

        if (*(v22 + 6) == a4)
        {
          result = 0;
          if (a5)
          {
            *a5 = *(v22 + 5);
          }

          return result;
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (v21 >= a4)
    {
LABEL_24:
      *v31 = 0;
      ID3TagBase::GetFrameDataSize(this, a2, a3, &v31[1], v31);
      if (a6)
      {
        v23 = v31;
      }

      else
      {
        v23 = &v31[1];
      }

      v24 = *v23;
      v25 = *(this + 14);
      if (!__CFADD__(v25, *v23) && v24 <= v25 - a4 + *(this + 13))
      {
        if (v24 || (!a2 || a3 <= 3 ? (v28 = 0, v27 = *(this + 16)) : ((v26 = bswap32(*a2), v27 = *(this + 16), v27 != 2) ? (v28 = v26) : (v28 = v26 >> 8)), ID3TagBase::IsValidFrameID(v27, v28)))
        {
          v29 = 0;
          v30 = v24 + v25;
          if (a2 && a3 >= 4)
          {
            LODWORD(v29) = bswap32(*a2);
            if (*(this + 16) == 2)
            {
              v29 = v29 >> 8;
            }

            else
            {
              v29 = v29;
            }
          }

          v32 = v29 | (v30 << 32);
          v33 = a4;
          std::list<ID3FrameInfo>::push_back(this + 3, &v32);
        }
      }

      goto LABEL_5;
    }
  }

  return 0xFFFFFFFFLL;
}

BOOL ID3TagBase::IsValidFrameID(ID3TagBase *this, int a2)
{
  if (this == 4)
  {
    v7 = "CNEACNEA ARCCIPACIPA CIPIPSA        MMOCMMOC MOCRMOCRMOC    RCNERCNE MRC2UQEAUQE UQEOCTEOCTE CTEBOEGBOEG OEGDIRGDIRG    KNILKNIL KNLIDCMIDCM ICMTLLMTLLM LLMENWOENWO    TSCPTSCP SCPTNCPTNCP TNCMPOPMPOP POPSSOPSSOP    VIRPVIRP    FUBRFUBR FUB2AVRDAVR AVRBRVRBRVR VERKEES        NGIS        TLYSTLYS TLSCTYSCTYS CTSBLATBLAT LATMPBTMPBT PBTTACTTACT TCTPMCTPMCT PCTMOCTMOCT MCTNOCTNOCT OCTPOCTPOCT RCT    TADT ADTNEDT        SEDTSEDT SDTYLDTYLDT YDTRODT        CRDTREYT EYTLRDT        GTDT        CNETCNET NETTXETTXET TXTDEFTDEFT DFTTLFTTLFT TFTDIGTDIGT DIT    EMIT MITLPITSLPI LPI1TIT1TIT 1TT2TIT2TIT 2TT3TIT3TIT 3TTYEKTYEKT EKTDWKTDWKT WKTNALTNALT ALTNELTNELT ELTLCMT        DEMTDEMT TMTOOMT        LAOTLAOT TOTNFOTNFOT FOTYLOTYLOT LOTEPOTEPOT AOTLRDTYROT ROTNWOTNWOT    1EPT1EPT 1PT2EPT2EPT 2PT3EPT3EPT 3PT4EPT4EPT 4PTSOPTSOPT APTORPT        BUPTBUPT BPTKCRTKCRT KRT    ADRT DRTNSRTNSRT    OSRTOSRT        ZIST IST2OST2OST 2STAOST        COSTCOST CSTPOST        TOST        CRSTCRST CRTESSTESST SSTTSST        XXXTXXXT XXTDIFUDIFU IFURESURESU    TLSUTLSU TLUMOCWMOCW MCWPOCWPOCW PCWFAOWFAOW FAWRAOWRAOW RAWSAOWSAOW SAWSROWSROW    YAPWYAPW    BUPWBUPW BPWXXXWXXXW XXW";
    do
    {
      v9 = *v7;
      v7 += 12;
      v8 = v9;
      result = v9 != 0;
    }

    while (v9 != a2 && v8 != 0);
  }

  else if (this == 3)
  {
    v2 = "CNEA ARCCIPACIPA CIPIPSA        MMOCMMOC MOCRMOCRMOC    RCNERCNE MRC2UQEAUQE UQEOCTEOCTE CTEBOEGBOEG OEGDIRGDIRG    KNILKNIL KNLIDCMIDCM ICMTLLMTLLM LLMENWOENWO    TSCPTSCP SCPTNCPTNCP TNCMPOPMPOP POPSSOPSSOP    VIRPVIRP    FUBRFUBR FUB2AVRDAVR AVRBRVRBRVR VERKEES        NGIS        TLYSTLYS TLSCTYSCTYS CTSBLATBLAT LATMPBTMPBT PBTTACTTACT TCTPMCTPMCT PCTMOCTMOCT MCTNOCTNOCT OCTPOCTPOCT RCT    TADT ADTNEDT        SEDTSEDT SDTYLDTYLDT YDTRODT        CRDTREYT EYTLRDT        GTDT        CNETCNET NETTXETTXET TXTDEFTDEFT DFTTLFTTLFT TFTDIGTDIGT DIT    EMIT MITLPITSLPI LPI1TIT1TIT 1TT2TIT2TIT 2TT3TIT3TIT 3TTYEKTYEKT EKTDWKTDWKT WKTNALTNALT ALTNELTNELT ELTLCMT        DEMTDEMT TMTOOMT        LAOTLAOT TOTNFOTNFOT FOTYLOTYLOT LOTEPOTEPOT AOTLRDTYROT ROTNWOTNWOT    1EPT1EPT 1PT2EPT2EPT 2PT3EPT3EPT 3PT4EPT4EPT 4PTSOPTSOPT APTORPT        BUPTBUPT BPTKCRTKCRT KRT    ADRT DRTNSRTNSRT    OSRTOSRT        ZIST IST2OST2OST 2STAOST        COSTCOST CSTPOST        TOST        CRSTCRST CRTESSTESST SSTTSST        XXXTXXXT XXTDIFUDIFU IFURESURESU    TLSUTLSU TLUMOCWMOCW MCWPOCWPOCW PCWFAOWFAOW FAWRAOWRAOW RAWSAOWSAOW SAWSROWSROW    YAPWYAPW    BUPWBUPW BPWXXXWXXXW XXW";
    do
    {
      v4 = *v2;
      v2 += 12;
      v3 = v4;
      result = v4 != 0;
    }

    while (v4 != a2 && v3 != 0);
  }

  else
  {
    v11 = " ARCCIPACIPA CIPIPSA        MMOCMMOC MOCRMOCRMOC    RCNERCNE MRC2UQEAUQE UQEOCTEOCTE CTEBOEGBOEG OEGDIRGDIRG    KNILKNIL KNLIDCMIDCM ICMTLLMTLLM LLMENWOENWO    TSCPTSCP SCPTNCPTNCP TNCMPOPMPOP POPSSOPSSOP    VIRPVIRP    FUBRFUBR FUB2AVRDAVR AVRBRVRBRVR VERKEES        NGIS        TLYSTLYS TLSCTYSCTYS CTSBLATBLAT LATMPBTMPBT PBTTACTTACT TCTPMCTPMCT PCTMOCTMOCT MCTNOCTNOCT OCTPOCTPOCT RCT    TADT ADTNEDT        SEDTSEDT SDTYLDTYLDT YDTRODT        CRDTREYT EYTLRDT        GTDT        CNETCNET NETTXETTXET TXTDEFTDEFT DFTTLFTTLFT TFTDIGTDIGT DIT    EMIT MITLPITSLPI LPI1TIT1TIT 1TT2TIT2TIT 2TT3TIT3TIT 3TTYEKTYEKT EKTDWKTDWKT WKTNALTNALT ALTNELTNELT ELTLCMT        DEMTDEMT TMTOOMT        LAOTLAOT TOTNFOTNFOT FOTYLOTYLOT LOTEPOTEPOT AOTLRDTYROT ROTNWOTNWOT    1EPT1EPT 1PT2EPT2EPT 2PT3EPT3EPT 3PT4EPT4EPT 4PTSOPTSOPT APTORPT        BUPTBUPT BPTKCRTKCRT KRT    ADRT DRTNSRTNSRT    OSRTOSRT        ZIST IST2OST2OST 2STAOST        COSTCOST CSTPOST        TOST        CRSTCRST CRTESSTESST SSTTSST        XXXTXXXT XXTDIFUDIFU IFURESURESU    TLSUTLSU TLUMOCWMOCW MCWPOCWPOCW PCWFAOWFAOW FAWRAOWRAOW RAWSAOWSAOW SAWSROWSROW    YAPWYAPW    BUPWBUPW BPWXXXWXXXW XXW";
    do
    {
      v13 = *v11;
      v11 += 12;
      v12 = v13;
      result = v13 != 0;
    }

    while (v13 != a2 && v12 != 0);
  }

  return result;
}

void ID3ParserHandle::~ID3ParserHandle(ID3ParserHandle *this)
{
  ID3ParserHandle::~ID3ParserHandle(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325E68;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void FillInfoDictionaryFromID3Parser(CACFDictionary *a1, uint64_t a2)
{
  v2 = a2;
  v16 = *MEMORY[0x1E69E9840];
  theString = 0;
  v10 = 1413565506;
  v12 = 12;
  if (!ID3ParserGetProperty(a2, 8, &v10, 1718185574, &v12, v13))
  {
    v12 = 8;
    if (!ID3ParserGetProperty(v2, 4, v14, 1717854580, &v12, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"album", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v10) = 1414546737;
  v12 = 12;
  if (!ID3ParserGetProperty(v2, 8, &v10, 1718185574, &v12, v13))
  {
    v12 = 8;
    if (!ID3ParserGetProperty(v2, 4, v14, 1717854580, &v12, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"artist", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v10) = 1413632077;
  v12 = 12;
  if (!ID3ParserGetProperty(v2, 8, &v10, 1718185574, &v12, v13))
  {
    v12 = 8;
    if (!ID3ParserGetProperty(v2, 4, v14, 1717854580, &v12, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"tempo", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v10) = 1414219097;
  v12 = 12;
  if (!ID3ParserGetProperty(v2, 8, &v10, 1718185574, &v12, v13))
  {
    v12 = 8;
    if (!ID3ParserGetProperty(v2, 4, v14, 1717854580, &v12, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"key signature", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v10) = 1414677323;
  v12 = 12;
  if (!ID3ParserGetProperty(v2, 8, &v10, 1718185574, &v12, v13))
  {
    v12 = 8;
    if (!ID3ParserGetProperty(v2, 4, v14, 1717854580, &v12, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"track number", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v10) = 1415136594;
  v12 = 12;
  if (!ID3ParserGetProperty(v2, 8, &v10, 1718185574, &v12, v13))
  {
    v12 = 8;
    if (!ID3ParserGetProperty(v2, 4, v14, 1717854580, &v12, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"year", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v10) = 1413697357;
  v12 = 12;
  if (!ID3ParserGetProperty(v2, 8, &v10, 1718185574, &v12, v13))
  {
    v12 = 8;
    if (!ID3ParserGetProperty(v2, 4, v14, 1717854580, &v12, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"composer", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v10) = 1413830740;
  v12 = 12;
  if (!ID3ParserGetProperty(v2, 8, &v10, 1718185574, &v12, v13))
  {
    v12 = 8;
    if (!ID3ParserGetProperty(v2, 4, v14, 1717854580, &v12, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"lyricist", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v10) = 1414091826;
  v12 = 12;
  if (!ID3ParserGetProperty(v2, 8, &v10, 1718185574, &v12, v13))
  {
    v12 = 8;
    if (!ID3ParserGetProperty(v2, 4, v14, 1717854580, &v12, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"title", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v10) = 1413697360;
  v12 = 12;
  if (!ID3ParserGetProperty(v2, 8, &v10, 1718185574, &v12, v13))
  {
    v12 = 8;
    if (!ID3ParserGetProperty(v2, 4, v14, 1717854580, &v12, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"copyright", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v10) = 1413828163;
  v12 = 12;
  if (!ID3ParserGetProperty(v2, 8, &v10, 1718185574, &v12, v13))
  {
    v12 = 8;
    if (!ID3ParserGetProperty(v2, 4, v14, 1717854580, &v12, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"encoding application", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  LODWORD(v10) = 1413697358;
  v12 = 12;
  if (!ID3ParserGetProperty(v2, 8, &v10, 1718185574, &v12, v13))
  {
    v12 = 8;
    if (!ID3ParserGetProperty(v2, 4, v14, 1717854580, &v12, &theString))
    {
      if (CFStringGetLength(theString))
      {
        CACFDictionary::AddString(a1, @"genre", theString);
      }

      CFRelease(theString);
      theString = 0;
    }
  }

  v3 = 0;
  cf = 0;
  do
  {
    LODWORD(v10) = 1129270605;
    HIDWORD(v10) = v3;
    v12 = 12;
    if (ID3ParserGetProperty(v2, 8, &v10, 1718185574, &v12, v13))
    {
      break;
    }

    v12 = 8;
    if (ID3ParserGetProperty(v2, 4, v14, 1717854580, &v12, &cf))
    {
      break;
    }

    v6 = 0;
    v7 = cf;
    v8 = 0;
    CACFDictionary::GetString(&v7, @"identifier", &v6);
    if (v6)
    {
      CFStringGetCString(v6, buffer, 256, 0x600u);
      v4 = *buffer != 1853183081;
      if (*buffer != 1853183081)
      {
        v6 = 0;
        CACFDictionary::GetString(&v7, @"text", &v6);
        if (v6)
        {
          if (CFStringGetLength(v6))
          {
            CACFDictionary::AddString(a1, @"comments", v6);
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      v4 = 0;
    }

    ++v3;
LABEL_71:
    CFRelease(cf);
    cf = 0;
    CACFDictionary::~CACFDictionary(&v7);
  }

  while (!v4);
}

void sub_18F6CCF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t ID3ParserGetProperty(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a5)
  {
    return 2003334207;
  }

  if (!a6)
  {
    return 2003334207;
  }

  v6 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v6)
  {
    return 2003334207;
  }

  v7 = *(*v6 + 32);

  return v7();
}

uint64_t ID3ParserOpen(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, uint64_t, unsigned __int8 **, unsigned int *), void *a3)
{
  if (a2 && a3)
  {
    operator new();
  }

  return 2003334207;
}

void sub_18F6CD204(void *a1)
{
  MEMORY[0x193ADF220](v1, 0x10A1C4085EB5FF6);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F6CD1C8);
}

uint64_t ID3ParserClose(unsigned int a1)
{
  v1 = BaseOpaqueObject::ResolveOpaqueRef();
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  return 0;
}

uint64_t ID3CreatorCallbackProc(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, void **a5, unsigned int *a6)
{
  *a5 = (a1[2] + a3);
  *a6 = *(a1 + 6) - a3;
  return 0;
}

void ID3Creator::ID3Creator(ID3Creator *this)
{
  *this = &unk_1F0325EA0;
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *(this + 28) = 0xA00000003;
  v2 = malloc_type_malloc(0xAuLL, 0x100004080B1215BuLL);
  if (!v2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_alloc::bad_alloc(exception);
  }

  *(this + 2) = v2;
  *(this + 6) = 10;
  v3 = *(this + 7);
  *v2 = 17481;
  v2[2] = 51;
  v2[3] = v3;
  *(v2 + 2) = 0;
  *(v2 + 6) = 167772160;
  *(this + 8) = 1;
}

uint64_t GetSoundCheckDictionaryFromID3(unsigned int a1, CACFDictionary *a2, _DWORD *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v17 = 2003334207;
  v23 = 0;
  v19 = 4;
  if (!ID3ParserGetProperty(a1, 0, 0, 1717792372, &v19, &v23) && v23)
  {
    v6 = 1;
    do
    {
      v20[0] = 1129270605;
      v20[1] = v6 - 1;
      v19 = 12;
      if (ID3ParserGetProperty(a1, 8, v20, 1718185574, &v19, v21))
      {
        goto LABEL_6;
      }

      theDict = 0;
      v19 = 8;
      if (ID3ParserGetProperty(a1, 4, &v22, 1717854580, &v19, &theDict))
      {
        goto LABEL_6;
      }

      if (a3)
      {
        *a3 = v22;
      }

      if (!a2)
      {
LABEL_6:
        v7 = 0;
      }

      else
      {
        Value = CFDictionaryGetValue(theDict, @"identifier");
        v11 = CFDictionaryGetValue(theDict, @"text");
        v7 = 0;
        if (Value)
        {
          v12 = v11;
          if (v11)
          {
            if (CFStringCompare(Value, @"iTunNORM", 0))
            {
              v7 = 0;
            }

            else
            {
              v30 = 0u;
              v31 = 0u;
              v28 = 0u;
              v29 = 0u;
              v26 = 0u;
              v27 = 0u;
              *buffer = 0u;
              v25 = 0u;
              if (CFStringGetCString(v12, buffer, 128, 0x201u))
              {
                v14 = ParseiTunesNORMData(buffer, a2, v13);
                v7 = v14 == 0;
                v15 = v17;
                if (!v14)
                {
                  v15 = 0;
                }

                v17 = v15;
              }

              else
              {
                v7 = 0;
              }
            }
          }
        }

        CFRelease(theDict);
      }
    }

    while (v6++ < v23 && !v7);
  }

  return v17;
}

void GetLIDFrameInfoFromID3(unsigned int a1, _DWORD *a2, _DWORD *a3)
{
  v15 = 0;
  v11 = 4;
  if (!ID3ParserGetProperty(a1, 0, 0, 1717792372, &v11, &v15) && v15)
  {
    for (i = 0; i < v15; ++i)
    {
      v12[0] = 1129270605;
      v12[1] = i;
      v11 = 12;
      if (!ID3ParserGetProperty(a1, 8, v12, 1718185574, &v11, v13))
      {
        theDict = 0;
        v11 = 8;
        if (!ID3ParserGetProperty(a1, 4, &v14, 1717854580, &v11, &theDict))
        {
          Value = CFDictionaryGetValue(theDict, @"identifier");
          v6 = CFDictionaryGetValue(theDict, @"text");
          if (Value)
          {
            v7 = v6;
            if (v6)
            {
              if (CFStringCompare(Value, @"iTunLOUD", 0) == kCFCompareEqualTo)
              {
                if (a2)
                {
                  *a2 = v14;
                }

                if (a3)
                {
                  *a3 = CFStringGetLength(v7) + 1;
                }
              }
            }
          }

          CFRelease(theDict);
        }
      }
    }
  }
}

uint64_t ID3Creator::AddCommentFrame(ID3Creator *this, const void *__src, size_t __n, void *a4, const char *a5)
{
  if (*(this + 8) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = __n;
  v9 = __n + 13;
  v10 = *(this + 9);
  if (v10)
  {
    v11 = *(this + 6);
    v12 = *(this + 2);
    v13 = *(this + 8) + v9;
    v14 = v10 - v13;
    if (v10 < v13)
    {
      v15 = v13 - v10;
      v12 = reallocf(v12, v13 - v10 + v11);
      v16 = *(this + 6);
      if (v12)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16 == -v15;
      }

      if (!v17)
      {
LABEL_28:
        exception = __cxa_allocate_exception(8uLL);
        v28 = std::bad_alloc::bad_alloc(exception);
      }

      v14 = 0;
      *(this + 2) = v12;
      *(this + 6) = v16 + v15;
    }

    v18 = &v12[v11 - v10];
    *(this + 9) = v14;
  }

  else
  {
    v20 = reallocf(*(this + 2), *(this + 6) + v9 + *(this + 8));
    v21 = *(this + 6);
    v22 = *(this + 8);
    if (!v20 && v22 + v21 != -13 - v6)
    {
      goto LABEL_28;
    }

    *(this + 2) = v20;
    v18 = &v20[v21];
    *(this + 6) = v21 + v9 + v22;
  }

  v18[2] = 77;
  *v18 = 20291;
  v23 = *(this + 7);
  if (v23 < 3)
  {
    v24 = v18 + 3;
  }

  else
  {
    v18[3] = 77;
    v24 = v18 + 4;
    v23 = *(this + 7);
  }

  if (v23 == 4)
  {
    v26 = bswap32(v9 & 0x7F | (((v9 >> 14) & 0x7F) << 16) & 0x80FF80FF | (((v9 >> 21) & 0x7F) << 24) | (((v9 >> 7) & 0x7F) << 8));
  }

  else
  {
    if (v23 != 3)
    {
      if (v23 == 2)
      {
        v25 = bswap32(v9);
        v24[2] = HIBYTE(v25);
        *v24 = v25 >> 8;
        v24 += 3;
      }

      goto LABEL_25;
    }

    v26 = bswap32(v9);
  }

  *v24 = v26;
  v24 += 4;
LABEL_25:
  if (*(this + 7) >= 3u)
  {
    *v24 = 0;
    v24 += 2;
  }

  *v24 = 0;
  *(v24 + 1) = 28261;
  v24[3] = 103;
  *(v24 + 4) = *a4;
  v24[12] = 0;
  memcpy(v24 + 13, __src, v6);
  result = 0;
  *(*(this + 2) + 6) = bswap32(*(this + 6) & 0x7F | (((*(this + 6) >> 14) & 0x7F) << 16) & 0x80FF80FF | (((*(this + 6) >> 21) & 0x7F) << 24) | (((*(this + 6) >> 7) & 0x7F) << 8));
  return result;
}

void GetPacketTableInfoFromID3(unsigned int a1, AudioFilePacketTableInfo *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  HIDWORD(v15) = 0;
  v12 = 4;
  if (!ID3ParserGetProperty(a1, 0, 0, 1717792372, &v12, &v15 + 4) && HIDWORD(v15))
  {
    v3 = 1;
    do
    {
      v13[0] = 1129270605;
      v13[1] = v3 - 1;
      v12 = 12;
      if (ID3ParserGetProperty(a1, 8, v13, 1718185574, &v12, v14) || (theDict = 0, v12 = 8, ID3ParserGetProperty(a1, 4, &v15, 1717854580, &v12, &theDict)))
      {
        v4 = 0;
      }

      else
      {
        Value = CFDictionaryGetValue(theDict, @"identifier");
        v8 = CFDictionaryGetValue(theDict, @"text");
        v4 = 0;
        if (Value)
        {
          v9 = v8;
          if (v8)
          {
            if (CFStringCompare(Value, @"iTunSMPB", 0) || (v22 = 0u, v23 = 0u, v20 = 0u, v21 = 0u, v18 = 0u, v19 = 0u, *buffer = 0u, v17 = 0u, !CFStringGetCString(v9, buffer, 128, 0x201u)))
            {
              v4 = 0;
            }

            else
            {
              if (!strcmp(buffer, " 00000000 00000000 00000000 0000000000000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000"))
              {
                return;
              }

              v4 = ParseiTunesSMPBData(&buffer[9], 119, a2) == 0;
            }
          }
        }

        CFRelease(theDict);
      }
    }

    while (v3++ < HIDWORD(v15) && !v4);
  }
}

uint64_t AAAnalysisBase::ComputeNumberOfAnalysisFramesForLength(uint64_t this, uint64_t a2)
{
  if (!a2)
  {
    *(this + 56) = 1;
  }

  return this;
}

void AAAnalysisBase::~AAAnalysisBase(AAAnalysisBase *this)
{
  *this = &unk_1F0325EC0;
  MEMORY[0x193ADE5D0](this + 48);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325EC0;
  MEMORY[0x193ADE5D0](this + 48);
}

uint64_t AAAnalysisBase::AAAnalysisBase(uint64_t a1, __int128 *a2, AudioChannelLayout *a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F0325EC0;
  v8 = *a2;
  v9 = a2[1];
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 24) = v9;
  *(a1 + 8) = v8;
  CAAudioChannelLayout::CAAudioChannelLayout((a1 + 48), a3);
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  (*(*a1 + 80))(a1, a4);
  return a1;
}

uint64_t AudioFormatProperty_ValidateChannelLayout(const AudioChannelLayout *a1, unsigned int a2)
{
  if (a2 < 0xC)
  {
    return 4294967246;
  }

  mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
  if (a2 == 12)
  {
    if (mNumberChannelDescriptions)
    {
      return 4294967246;
    }
  }

  if (20 * mNumberChannelDescriptions + 12 > a2)
  {
    return 4294967246;
  }

  v27 = 0;
  Property = AudioFormatProperty_NumberOfChannelsForLayout(a1, &v27);
  if (!Property)
  {
    v6 = mNumberChannelDescriptions;
    v7 = mNumberChannelDescriptions == v27 || mNumberChannelDescriptions == 0;
    Property = v7 ? 0 : 4294967246;
    if (mNumberChannelDescriptions && mNumberChannelDescriptions == v27)
    {
      mChannelLayoutTag = a1->mChannelLayoutTag;
      inSpecifier = mChannelLayoutTag;
      if (mChannelLayoutTag == 0x10000)
      {
        outPropertyDataSize = 0;
        PropertyInfo = AudioFormatGetPropertyInfo(0x636D7062u, 4u, &a1->mChannelBitmap, &outPropertyDataSize);
        if (PropertyInfo)
        {
          return PropertyInfo;
        }

        outPropertyData = 0;
        CADeprecated::CAAutoFree<unsigned char>::allocBytes(&outPropertyData, outPropertyDataSize, 1);
        v19 = outPropertyData;
        Property = AudioFormatGetProperty(0x636D7062u, 4u, &a1->mChannelBitmap, &outPropertyDataSize, outPropertyData);
        if (Property)
        {
LABEL_51:
          if (v19)
          {
            free(v19);
          }

          return Property;
        }

        v20 = a1->mNumberChannelDescriptions;
        if (v20)
        {
          v21 = 12;
          while (*(&a1->mChannelLayoutTag + v21) == *&v19[v21])
          {
            v21 += 20;
            if (!--v20)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_61;
        }
      }

      else
      {
        if (!mChannelLayoutTag)
        {
          mChannelDescriptions = a1->mChannelDescriptions;
          while (1)
          {
            mChannelLabel = mChannelDescriptions->mChannelLabel;
            ++mChannelDescriptions;
            v10 = mChannelLabel;
            if (mChannelLabel - 0x10000 < 0x40000)
            {
              goto LABEL_28;
            }

            if (v10 <= 50)
            {
              break;
            }

            if (v10 <= 199)
            {
              v15 = v10 - 51;
              v13 = v15 > 0x31;
              v14 = (1 << v15) & 0x200000000FFFFLL;
LABEL_24:
              if (v13 || v14 == 0)
              {
                return 560360820;
              }

              goto LABEL_28;
            }

            if (v10 > 300)
            {
              v17 = (v10 - 301) > 4 || v10 == 303;
              if (v17 && v10 != 500 && v10 != 400)
              {
                return 560360820;
              }
            }

            else if ((v10 - 200) >= 0xA)
            {
              return 560360820;
            }

LABEL_28:
            if (!--v6)
            {
              return 0;
            }
          }

          v12 = v10 + 1;
          v13 = v12 > 0x32;
          v14 = (1 << v12) & 0x47FFC000FFFFFLL;
          goto LABEL_24;
        }

        outPropertyDataSize = 0;
        PropertyInfo = AudioFormatGetPropertyInfo(0x636D706Cu, 4u, &inSpecifier, &outPropertyDataSize);
        if (PropertyInfo)
        {
          return PropertyInfo;
        }

        outPropertyData = 0;
        CADeprecated::CAAutoFree<unsigned char>::allocBytes(&outPropertyData, outPropertyDataSize, 1);
        v19 = outPropertyData;
        Property = AudioFormatGetProperty(0x636D706Cu, 4u, &inSpecifier, &outPropertyDataSize, outPropertyData);
        if (Property)
        {
          goto LABEL_51;
        }

        v22 = a1->mNumberChannelDescriptions;
        if (v22)
        {
          v23 = 12;
          while (*(&a1->mChannelLayoutTag + v23) == *&v19[v23])
          {
            v23 += 20;
            if (!--v22)
            {
              goto LABEL_59;
            }
          }

LABEL_61:
          free(v19);
          return 4294967246;
        }
      }

      if (v19)
      {
LABEL_59:
        free(v19);
      }

      return 0;
    }
  }

  return Property;
}

void sub_18F6CDFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFormatProperty_LayoutTagForBitmap(int a1)
{
  if (a1 > 58)
  {
    if (a1 > 262)
    {
      if (a1 > 270)
      {
        if (a1 == 271)
        {
          return 8978437;
        }

        if (a1 == 319)
        {
          return 8192007;
        }
      }

      else
      {
        if (a1 == 263)
        {
          return 7536644;
        }

        if (a1 == 267)
        {
          return 8781828;
        }
      }
    }

    else if (a1 > 254)
    {
      if (a1 == 255)
      {
        return 8257544;
      }

      if (a1 == 259)
      {
        return 8585219;
      }
    }

    else
    {
      if (a1 == 59)
      {
        return 8847365;
      }

      if (a1 == 63)
      {
        return 7929862;
      }
    }

    return 0x10000;
  }

  if (a1 > 10)
  {
    if (a1 > 50)
    {
      if (a1 == 51)
      {
        return 8650756;
      }

      if (a1 == 55)
      {
        return 7667717;
      }
    }

    else
    {
      if (a1 == 11)
      {
        return 8716291;
      }

      if (a1 == 15)
      {
        return 8912900;
      }
    }

    return 0x10000;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      return 6553601;
    }

    if (a1 == 7)
    {
      return 7405571;
    }

    return 0x10000;
  }

  return 6619138;
}

uint64_t AudioFormatProperty_BitmapForLayoutTag(int a1)
{
  if (a1 > 8257543)
  {
    if (a1 > 8781827)
    {
      if (a1 > 8912899)
      {
        if (a1 == 8912900)
        {
          return 15;
        }

        if (a1 == 8978437)
        {
          return 271;
        }
      }

      else
      {
        if (a1 == 8781828)
        {
          return 267;
        }

        if (a1 == 8847365)
        {
          return 59;
        }
      }
    }

    else if (a1 > 8650755)
    {
      if (a1 == 8650756)
      {
        return 51;
      }

      if (a1 == 8716291)
      {
        return 11;
      }
    }

    else
    {
      if (a1 == 8257544)
      {
        return 255;
      }

      if (a1 == 8585219)
      {
        return 259;
      }
    }

    return 0;
  }

  if (a1 > 7536643)
  {
    if (a1 > 7929861)
    {
      if (a1 == 7929862)
      {
        return 63;
      }

      if (a1 == 8192007)
      {
        return 319;
      }
    }

    else
    {
      if (a1 == 7536644)
      {
        return 263;
      }

      if (a1 == 7667717)
      {
        return 55;
      }
    }

    return 0;
  }

  if (a1 != 6553601)
  {
    if (a1 == 6619138)
    {
      return 3;
    }

    if (a1 == 7405571)
    {
      return 7;
    }

    return 0;
  }

  return 4;
}

uint64_t AudioFormatProperty_WAVEChannelMaskForChannelLayout(const AudioChannelLayout *inSpecifier, unsigned int *a2)
{
  mChannelLayoutTag = inSpecifier->mChannelLayoutTag;
  if (inSpecifier->mChannelLayoutTag > 8716290)
  {
    if (mChannelLayoutTag > 12124163)
    {
      if (mChannelLayoutTag <= 12255237)
      {
        if (mChannelLayoutTag == 12124164)
        {
          v4 = 51;
          goto LABEL_56;
        }

        if (mChannelLayoutTag == 12189701)
        {
          v4 = 55;
          goto LABEL_56;
        }
      }

      else
      {
        switch(mChannelLayoutTag)
        {
          case 12255238:
            v4 = 63;
            goto LABEL_56;
          case 12320775:
            v4 = 1807;
            goto LABEL_56;
          case 12386312:
            v4 = 1599;
            goto LABEL_56;
        }
      }
    }

    else if (mChannelLayoutTag <= 8847364)
    {
      if (mChannelLayoutTag == 8716291)
      {
        v4 = 11;
        goto LABEL_56;
      }

      if (mChannelLayoutTag == 8781828)
      {
        v4 = 267;
        goto LABEL_56;
      }
    }

    else
    {
      switch(mChannelLayoutTag)
      {
        case 8847365:
          v4 = 1547;
          goto LABEL_56;
        case 8912900:
          v4 = 15;
          goto LABEL_56;
        case 8978437:
          v4 = 271;
          goto LABEL_56;
      }
    }

    goto LABEL_58;
  }

  if (mChannelLayoutTag > 7536643)
  {
    if (mChannelLayoutTag <= 7929861)
    {
      if (mChannelLayoutTag == 7536644)
      {
        v4 = 263;
        goto LABEL_56;
      }

      if (mChannelLayoutTag == 7667717)
      {
        v4 = 1543;
        goto LABEL_56;
      }
    }

    else
    {
      switch(mChannelLayoutTag)
      {
        case 7929862:
          v4 = 1551;
          goto LABEL_56;
        case 8585219:
          v4 = 259;
          goto LABEL_56;
        case 8650756:
          v4 = 1539;
          goto LABEL_56;
      }
    }

    goto LABEL_58;
  }

  if (mChannelLayoutTag > 6553600)
  {
    switch(mChannelLayoutTag)
    {
      case 6553601:
        v4 = 4;
        goto LABEL_56;
      case 6619138:
        v4 = 3;
        goto LABEL_56;
      case 7405571:
        v4 = 7;
LABEL_56:
        result = 0;
        *a2 = v4;
        return result;
    }

    goto LABEL_58;
  }

  if (mChannelLayoutTag)
  {
    if (mChannelLayoutTag == 0x10000)
    {
      mChannelBitmap = inSpecifier->mChannelBitmap;
      if ((mChannelBitmap & 0x630) == 0)
      {
        v6 = inSpecifier->mChannelBitmap;
LABEL_63:
        if (v6)
        {
          mChannelBitmap = v6;
        }

        goto LABEL_65;
      }

      if ((mChannelBitmap & 0x7C0) == 0)
      {
        v6 = mChannelBitmap & 0xFFFFF80F | (((mChannelBitmap >> 4) & 3) << 9);
        goto LABEL_63;
      }

LABEL_65:
      *a2 = mChannelBitmap;
      if (mChannelBitmap)
      {
        return 0;
      }

      else
      {
        return 560360820;
      }
    }

LABEL_58:
    ioPropertyDataSize = 4;
    outPropertyData = 0;
    result = AudioFormatGetProperty(0x626D7467u, 4u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
    if (result)
    {
      return result;
    }

    mChannelBitmap = outPropertyData;
    goto LABEL_65;
  }

  mNumberChannelDescriptions = inSpecifier->mNumberChannelDescriptions;
  if (!mNumberChannelDescriptions)
  {
    mChannelBitmap = 0;
    goto LABEL_65;
  }

  v8 = 0;
  mChannelBitmap = 0;
  mChannelDescriptions = inSpecifier->mChannelDescriptions;
  while (1)
  {
    mChannelLabel = mChannelDescriptions->mChannelLabel;
    ++mChannelDescriptions;
    v11 = mChannelLabel - 1;
    if (mChannelLabel - 1 > 0x21)
    {
      return 560360820;
    }

    if (((0x30003F9FFuLL >> v11) & 1) == 0)
    {
      return 560360820;
    }

    v12 = dword_18F90290C[v11];
    if (v12 <= v8)
    {
      return 560360820;
    }

    mChannelBitmap |= v12;
    v8 = v12;
    if (!--mNumberChannelDescriptions)
    {
      goto LABEL_65;
    }
  }
}

uint64_t AudioFormatProperty_LayoutTagForWAVEChannelMask(unsigned int a1, unsigned int *a2)
{
  v3 = a1;
  *a2 = 0;
  if ((a1 & 0x630) == 0)
  {
    goto LABEL_9;
  }

  if ((a1 & 0x1F0) == 0)
  {
    v3 = (a1 >> 5) & 0x30 | a1 & 0xFFFFF80F;
LABEL_9:
    result = AudioFormatProperty_LayoutTagForBitmap(v3);
    if (result == 0x10000)
    {
      *a2 = v3;
    }

    return result;
  }

  if (a1 <= 62)
  {
    if (a1 == 51)
    {
      return 12124164;
    }

    if (a1 == 55)
    {
      return 12189701;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x3Fu:
        return 12255238;
      case 0x63Fu:
        return 12386312;
      case 0x70Fu:
        return 12320775;
    }
  }

  return 0;
}

uint64_t AudioFormatProperty_ChannelLayoutSizeForWAVEChannelMask(int a1, unsigned int a2, int8x8_t a3)
{
  v3 = a1 & 0x3FFFF;
  a3.i32[0] = v3;
  v4 = vcnt_s8(a3);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.i32[0];
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4.i32[0];
  }

  if (v4.i32[0] <= v6)
  {
    if (v4.i32[0] != v6)
    {
      return 20 * v6 + 12;
    }
  }

  else
  {
    do
    {
      v3 &= ~(0x80000000 >> __clz(v3));
      --v5;
    }

    while (v5 > v6);
  }

  if (AudioFormatProperty_LayoutTagForWAVEChannelMask(v3, &v8))
  {
    return 32;
  }

  return 20 * v6 + 12;
}

void AudioFormatProperty_ChannelLayoutForWAVEChannelMask(int a1, unsigned int a2, AudioChannelLayout *a3, int8x8_t a4)
{
  v5 = a1 & 0x3FFFF;
  a4.i32[0] = a1 & 0x3FFFF;
  v6 = vcnt_s8(a4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.i32[0];
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v6.u32[0];
  }

  if (v6.i32[0] <= v8)
  {
    v10 = v6.i32[0];
    if (v6.i32[0] != v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v6.i32[0];
    do
    {
      v5 &= ~(0x80000000 >> __clz(v5));
      --v9;
    }

    while (v9 > v8);
    v10 = v8;
  }

  v40 = 0;
  v11 = AudioFormatProperty_LayoutTagForWAVEChannelMask(v5, &v40);
  if (v11)
  {
    v12 = v40;
    a3->mChannelLayoutTag = v11;
    *&a3->mChannelBitmap = v12;
    return;
  }

LABEL_11:
  *&a3->mChannelLayoutTag = 0;
  a3->mNumberChannelDescriptions = v8;
  mChannelDescriptions = a3->mChannelDescriptions;
  bzero(a3->mChannelDescriptions, 20 * v8);
  v14 = 0;
  if (v5)
  {
    v14 = 1;
    mChannelDescriptions->mChannelLabel = 1;
    if ((v5 & 2) == 0)
    {
LABEL_13:
      if ((v5 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_47;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_13;
  }

  v24 = v14++;
  mChannelDescriptions[v24].mChannelLabel = 2;
  if ((v5 & 4) == 0)
  {
LABEL_14:
    if ((v5 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v25 = v14++;
  mChannelDescriptions[v25].mChannelLabel = 3;
  if ((v5 & 8) == 0)
  {
LABEL_15:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v26 = v14++;
  mChannelDescriptions[v26].mChannelLabel = 4;
  if ((v5 & 0x10) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  v27 = v14++;
  mChannelDescriptions[v27].mChannelLabel = 33;
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  v28 = v14++;
  mChannelDescriptions[v28].mChannelLabel = 34;
  if ((v5 & 0x40) == 0)
  {
LABEL_18:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v29 = v14++;
  mChannelDescriptions[v29].mChannelLabel = 7;
  if ((v5 & 0x80) == 0)
  {
LABEL_19:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v30 = v14++;
  mChannelDescriptions[v30].mChannelLabel = 8;
  if ((v5 & 0x100) == 0)
  {
LABEL_20:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v31 = v14++;
  mChannelDescriptions[v31].mChannelLabel = 9;
  if ((v5 & 0x200) == 0)
  {
LABEL_21:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  v32 = v14++;
  mChannelDescriptions[v32].mChannelLabel = 5;
  if ((v5 & 0x400) == 0)
  {
LABEL_22:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  v33 = v14++;
  mChannelDescriptions[v33].mChannelLabel = 6;
  if ((v5 & 0x800) == 0)
  {
LABEL_23:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  v34 = v14++;
  mChannelDescriptions[v34].mChannelLabel = 12;
  if ((v5 & 0x1000) == 0)
  {
LABEL_24:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  v35 = v14++;
  mChannelDescriptions[v35].mChannelLabel = 13;
  if ((v5 & 0x2000) == 0)
  {
LABEL_25:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  v36 = v14++;
  mChannelDescriptions[v36].mChannelLabel = 14;
  if ((v5 & 0x4000) == 0)
  {
LABEL_26:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  v37 = v14++;
  mChannelDescriptions[v37].mChannelLabel = 15;
  if ((v5 & 0x8000) == 0)
  {
LABEL_27:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

LABEL_61:
    v39 = v14++;
    mChannelDescriptions[v39].mChannelLabel = 17;
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_60:
  v38 = v14++;
  mChannelDescriptions[v38].mChannelLabel = 16;
  if ((v5 & 0x10000) != 0)
  {
    goto LABEL_61;
  }

LABEL_28:
  if ((v5 & 0x20000) != 0)
  {
LABEL_29:
    mChannelDescriptions[v14].mChannelLabel = 18;
  }

LABEL_30:
  if (v10 < v8)
  {
    v15 = 0;
    if (v8 >= v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = v8;
    }

    v17 = a3 + 20 * v16;
    v18 = ~v10 + v8;
    v19 = vdupq_n_s64(v18);
    v20 = (v18 + 4) & 0x1FFFFFFFCLL;
    v21 = v17 + 52;
    do
    {
      v22 = vdupq_n_s64(v15);
      v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_18F9016C0)));
      if (vuzp1_s16(v23, *v19.i8).u8[0])
      {
        *(v21 - 10) = 0;
      }

      if (vuzp1_s16(v23, *&v19).i8[2])
      {
        *(v21 - 5) = 0;
      }

      if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_18F9016B0)))).i32[1])
      {
        *v21 = 0;
        v21[5] = 0;
      }

      v15 += 4;
      v21 += 20;
    }

    while (v20 != v15);
  }

  if (v8)
  {
    do
    {
      SetDefaultChannelPosition(mChannelDescriptions++);
      --v8;
    }

    while (v8);
  }
}

int *AudioFormat_IsAmbisonicChannelLayout(int *result)
{
  if (result)
  {
    v1 = *result;
    if (*result && ((v2 = v1 & 0xFFFF0000, (v1 & 0xFFFF0000) == 0x6B0000) || v2 == 12517376 || v2 == 12451840))
    {
      return (*result != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void AudioFormatProperty_ChannelLayoutForBitmap(__int32 a1, AudioChannelLayout *a2, int8x8_t a3)
{
  *&a2->mChannelLayoutTag = 0;
  a3.i32[0] = a1;
  v5 = vcnt_s8(a3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  a2->mNumberChannelDescriptions = v5.i32[0];
  mChannelDescriptions = a2->mChannelDescriptions;
  bzero(a2->mChannelDescriptions, (20 * v5.i32[0]));
  v8 = 0;
  if (a1)
  {
    v8 = 1;
    mChannelDescriptions->mChannelLabel = 1;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v17 = v8++;
  mChannelDescriptions[v17].mChannelLabel = 2;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  v18 = v8++;
  mChannelDescriptions[v18].mChannelLabel = 3;
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  v19 = v8++;
  mChannelDescriptions[v19].mChannelLabel = 4;
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = v8++;
  mChannelDescriptions[v20].mChannelLabel = 5;
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  v21 = v8++;
  mChannelDescriptions[v21].mChannelLabel = 6;
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  v22 = v8++;
  mChannelDescriptions[v22].mChannelLabel = 7;
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  v23 = v8++;
  mChannelDescriptions[v23].mChannelLabel = 8;
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  v24 = v8++;
  mChannelDescriptions[v24].mChannelLabel = 9;
  if ((a1 & 0x200) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  v25 = v8++;
  mChannelDescriptions[v25].mChannelLabel = 10;
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  v26 = v8++;
  mChannelDescriptions[v26].mChannelLabel = 11;
  if ((a1 & 0x800) == 0)
  {
LABEL_13:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  v27 = v8++;
  mChannelDescriptions[v27].mChannelLabel = 12;
  if ((a1 & 0x1000) == 0)
  {
LABEL_14:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  v28 = v8++;
  mChannelDescriptions[v28].mChannelLabel = 13;
  if ((a1 & 0x2000) == 0)
  {
LABEL_15:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  v29 = v8++;
  mChannelDescriptions[v29].mChannelLabel = 14;
  if ((a1 & 0x4000) == 0)
  {
LABEL_16:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  v30 = v8++;
  mChannelDescriptions[v30].mChannelLabel = 15;
  if ((a1 & 0x8000) == 0)
  {
LABEL_17:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  v31 = v8++;
  mChannelDescriptions[v31].mChannelLabel = 16;
  if ((a1 & 0x10000) == 0)
  {
LABEL_18:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  v32 = v8++;
  mChannelDescriptions[v32].mChannelLabel = 17;
  if ((a1 & 0x20000) == 0)
  {
LABEL_19:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  v33 = v8++;
  mChannelDescriptions[v33].mChannelLabel = 18;
  if ((a1 & 0x200000) == 0)
  {
LABEL_20:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  v34 = v8++;
  mChannelDescriptions[v34].mChannelLabel = 49;
  if ((a1 & 0x800000) == 0)
  {
LABEL_21:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  v35 = v8++;
  mChannelDescriptions[v35].mChannelLabel = 51;
  if ((a1 & 0x1000000) == 0)
  {
LABEL_22:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  v36 = v8++;
  mChannelDescriptions[v36].mChannelLabel = 52;
  if ((a1 & 0x2000000) == 0)
  {
LABEL_23:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_61:
  v37 = v8++;
  mChannelDescriptions[v37].mChannelLabel = 53;
  if ((a1 & 0x4000000) != 0)
  {
LABEL_24:
    v9 = v8++;
    mChannelDescriptions[v9].mChannelLabel = 54;
  }

LABEL_25:
  if (v8 < v6)
  {
    v10 = 0;
    v11 = v6 - v8;
    v12 = vdupq_n_s64(v11 - 1);
    v13 = (a2 + 20 * v8 + 52);
    do
    {
      v14 = vdupq_n_s64(v10);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_18F9016C0)));
      if (vuzp1_s16(v15, *v12.i8).u8[0])
      {
        v13[-2].mChannelDescriptions[0].mCoordinates[1] = NAN;
      }

      if (vuzp1_s16(v15, *&v12).i8[2])
      {
        v13[-1].mChannelDescriptions[0].mChannelLabel = -1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_18F9016B0)))).i32[1])
      {
        v13->mChannelLayoutTag = -1;
        v13->mChannelDescriptions[0].mCoordinates[0] = NAN;
      }

      v10 += 4;
      v13 = (v13 + 80);
    }

    while (((v11 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  if (a1)
  {
    if (v6 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v6;
    }

    do
    {
      SetDefaultChannelPosition(mChannelDescriptions++);
      --v16;
    }

    while (v16);
  }
}

uint64_t AudioFormat_AreChannelLayoutsEquivalent(const AudioChannelLayout *a1, const AudioChannelLayout *a2, unsigned int *a3)
{
  *a3 = 0;
  v16 = 0;
  v17 = 0;
  FullChannelLayout = AudioFormat_GetFullChannelLayout(a1, &v17);
  if (FullChannelLayout)
  {
    v6 = FullChannelLayout;
    v7 = 0;
    v8 = v17;
  }

  else
  {
    v6 = AudioFormat_GetFullChannelLayout(a2, &v16);
    v7 = v16;
    v8 = v17;
    if (!v6)
    {
      mNumberChannelDescriptions = v17->mNumberChannelDescriptions;
      if (mNumberChannelDescriptions == v16->mNumberChannelDescriptions)
      {
        if (mNumberChannelDescriptions)
        {
          v10 = 0;
          v11 = 20 * mNumberChannelDescriptions;
          while (1)
          {
            mChannelLabel = v17->mChannelDescriptions[v10 / 0x14].mChannelLabel;
            if (mChannelLabel != v16->mChannelDescriptions[v10 / 0x14].mChannelLabel || mChannelLabel == 100 && (v17->mChannelDescriptions[v10 / 0x14].mChannelFlags != v16->mChannelDescriptions[v10 / 0x14].mChannelFlags || v17->mChannelDescriptions[v10 / 0x14].mCoordinates[0] != v16->mChannelDescriptions[v10 / 0x14].mCoordinates[0] || v17->mChannelDescriptions[v10 / 0x14].mCoordinates[1] != v16->mChannelDescriptions[v10 / 0x14].mCoordinates[1] || v17->mChannelDescriptions[v10 / 0x14].mCoordinates[2] != v16->mChannelDescriptions[v10 / 0x14].mCoordinates[2]))
            {
              break;
            }

            v10 += 20;
            if (v11 == v10)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          v13 = HIWORD(v17->mChannelLayoutTag) << 16;
          v14 = HIWORD(v16->mChannelLayoutTag) << 16;
          if ((v13 != 12451840 || v14 != 12517376) && (v13 != 12517376 || v14 != 12451840))
          {
            v6 = 0;
            *a3 = 1;
            goto LABEL_19;
          }
        }
      }

      v6 = 0;
    }
  }

LABEL_19:
  free(v8);
  free(v7);
  return v6;
}

uint64_t AudioFormat_GetFullChannelLayout(const AudioChannelLayout *a1, AudioChannelLayout **a2)
{
  v10 = 0;
  v4 = AudioFormatProperty_NumberOfChannelsForLayout(a1, &v10);
  if (!v4)
  {
    v5 = 20 * v10 + 12;
    v6 = malloc_type_malloc(v5, 0x1000040E0EAB150uLL);
    *a2 = v6;
    mChannelLayoutTag = a1->mChannelLayoutTag;
    if (a1->mChannelLayoutTag == 0x10000)
    {
      AudioFormatProperty_ChannelLayoutForBitmap(a1->mChannelBitmap, v6, v7);
      return 0;
    }

    if (!mChannelLayoutTag)
    {
      memcpy(v6, a1, v5);
      return 0;
    }

    v4 = AudioFormatProperty_ChannelLayoutForTag(mChannelLayoutTag, v6);
    if (v4)
    {
      free(*a2);
      *a2 = 0;
    }
  }

  return v4;
}